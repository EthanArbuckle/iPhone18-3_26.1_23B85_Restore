unint64_t sub_2393F0720(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v19 = 966;
  v3 = *(a1 + 8);
  v20[0] = *"g/sri";
  v20[1] = unk_2395C26A8;
  v21 = 0;
  if ((*(*v3 + 16))(v3, v20, v22, &v19))
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    sub_2393C5AAC(v20);
    sub_2393C5ADC(v20, v22, v19);
    v5 = sub_2393C7114(v20, 22, 256);
    v6 = v5;
    if (v5)
    {
      v7 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v18 = 0;
      v8 = sub_2393C6A2C(v20, &v18);
      if (!v8)
      {
        v10 = 0;
        v11 = a2 + 2;
        LODWORD(v8) = 11;
        while (1)
        {
          v12 = sub_2393C7114(v20, 21, 256);
          if (v12)
          {
            break;
          }

          if (v10 == 48)
          {
            v7 = 0x6800000000;
            goto LABEL_7;
          }

          v17 = 0;
          v12 = sub_2393C6A2C(v20, &v17);
          if (!v12)
          {
            v16 = 0;
            v13 = sub_2393C6FD0(v20, 1);
            if (v13 || (v13 = sub_2393C5ED0(v20, &v16), v13) || (v15 = 0, v13 = sub_2393C6FD0(v20, 2), v13) || (v13 = sub_2393C5F2C(v20, &v15), v13))
            {
              v8 = v13;
              goto LABEL_6;
            }

            v14 = v16;
            ++v10;
            *(v11 - 1) = v15;
            *v11 = v14;
            v11 += 16;
            v12 = sub_2393C6A98(v20, v17);
            if (!v12)
            {
              continue;
            }
          }

          goto LABEL_25;
        }

        if (v12 != 33)
        {
LABEL_25:
          v7 = v12 & 0xFFFFFFFF00000000;
          LODWORD(v8) = v12;
          goto LABEL_7;
        }

        v8 = sub_2393C6A98(v20, v18);
        if (!v8)
        {
          v8 = sub_2393C6AE0(v20);
          if (!v8)
          {
            v7 = 0;
            LODWORD(v8) = 0;
            *a2 = v10;
            goto LABEL_7;
          }
        }
      }

LABEL_6:
      v7 = v8 & 0xFFFFFFFF00000000;
LABEL_7:
      v6 = v8;
    }

    result = v6 | v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393F0968(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v13);
  sub_2393C7BB8(v13, v16, 0x13uLL);
  v12 = 0;
  v6 = sub_2393C8CE0(v13, 0x100uLL, 21, &v12);
  if (v6)
  {
    goto LABEL_7;
  }

  v6 = sub_2393C8140(v13, 1uLL, *(a3 + 8));
  if (v6)
  {
    goto LABEL_7;
  }

  v6 = sub_2393C8154(v13, 2uLL, *a3);
  if (v6)
  {
    goto LABEL_7;
  }

  v6 = sub_2393C8DE0(v13, v12);
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = v14;
  if (v14 >= 0x10000)
  {
    sub_239531C00();
  }

  v8 = *(a1 + 8);
  v17[sub_2393D54A8(a2, 16, v17)] = 0;
  sub_239296DA0("g/s/%s", v15, v17);
  v6 = (*(*v8 + 24))(v8, v15, v16, v7);
  if (v6)
  {
LABEL_7:
    v9 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v9 = 0;
    LODWORD(v6) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6 | v9;
}

unint64_t sub_2393F0ACC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 19;
  v4 = *(a1 + 8);
  v17[sub_2393D54A8(a2, 16, v17)] = 0;
  sub_239296DA0("g/s/%s", v16, v17);
  v5 = (*(*v4 + 16))(v4, v16, v17, &v15);
  v6 = v5;
  if (v5)
  {
    goto LABEL_6;
  }

  sub_2393C5AAC(v16);
  sub_2393C5ADC(v16, v17, v15);
  v5 = sub_2393C7114(v16, 21, 256);
  v6 = v5;
  if (v5)
  {
    goto LABEL_6;
  }

  v14 = 0;
  v5 = sub_2393C6A2C(v16, &v14);
  v6 = v5;
  if (v5 || (v13 = 0, v5 = sub_2393C6FD0(v16, 1), v6 = v5, v5) || (v5 = sub_2393C5ED0(v16, &v13), v6 = v5, v5))
  {
LABEL_6:
    v7 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v12 = 0;
    v10 = sub_2393C6FD0(v16, 2);
    if (v10 || (v10 = sub_2393C5F2C(v16, &v12), v10) || (v10 = sub_2393C6A98(v16, v14), v10) || (v10 = sub_2393C6AE0(v16), v10))
    {
      v7 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = 0;
      LODWORD(v10) = 0;
      v11 = v13;
      *a3 = v12;
      *(a3 + 8) = v11;
    }

    v6 = v10;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

uint64_t sub_2393F0C84(uint64_t a1, unsigned __int8 *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v6[sub_2393D54A8(a2, 16, v6)] = 0;
  sub_239296DA0("g/s/%s", v5, v6);
  result = (*(*v2 + 32))(v2, v5);
  if (!result)
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393F0D3C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v19);
  sub_2393C7BB8(v19, v24, 0x4AuLL);
  v18 = 0;
  v10 = sub_2393C8CE0(v19, 0x100uLL, 21, &v18);
  v11 = v10;
  if (v10 || (v10 = sub_2393C8364(v19, 3uLL, a3, 0x10uLL), v11 = v10, v10) || (sub_238DB6950(v21, a4, *(a4 + 32)), v10 = sub_2393C8364(v19, 4uLL, v21[0], v21[1]), v11 = v10, v10))
  {
    v12 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    v22 = *a5;
    v23 = *(a5 + 2);
    v15 = sub_2393C8364(v19, 5uLL, &v22, 0xCuLL);
    if (v15)
    {
      goto LABEL_10;
    }

    v15 = sub_2393C8DE0(v19, v18);
    if (v15)
    {
      goto LABEL_10;
    }

    v16 = v20;
    if (v20 >= 0x10000)
    {
      sub_239531CB0();
    }

    v17 = *(a1 + 8);
    sub_239296DA0("f/%x/s/%08X%08X", v21, *(a2 + 8), HIDWORD(*a2), *a2);
    v15 = (*(*v17 + 24))(v17, v21, v24, v16);
    if (v15)
    {
LABEL_10:
      v12 = v15 & 0xFFFFFFFF00000000;
    }

    else
    {
      v12 = 0;
      LODWORD(v15) = 0;
    }

    v11 = v15;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11 | v12;
}

unint64_t sub_2393F0EF8(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 74;
  v8 = *(a1 + 8);
  sub_239296DA0("f/%x/s/%08X%08X", v22, *(a2 + 8), HIDWORD(*a2), *a2);
  v9 = (*(*v8 + 16))(v8, v22, v23, &v21);
  v10 = v9;
  if (!v9)
  {
    sub_2393C5AAC(v22);
    sub_2393C5ADC(v22, v23, v21);
    v9 = sub_2393C7114(v22, 21, 256);
    v10 = v9;
    if (!v9)
    {
      v20 = 0;
      v9 = sub_2393C6A2C(v22, &v20);
      v10 = v9;
      if (!v9)
      {
        v19 = 0uLL;
        v14 = sub_2393C6FD0(v22, 3);
        if (!v14)
        {
          v14 = sub_2393C60CC(v22, &v19);
          if (!v14)
          {
            if (*(&v19 + 1) != 16)
            {
              v11 = 0xEE00000000;
              LODWORD(v14) = 16;
              goto LABEL_9;
            }

            *a3 = *v19;
            __src = 0uLL;
            v14 = sub_2393C6FD0(v22, 4);
            if (!v14)
            {
              v14 = sub_2393C60CC(v22, &__src);
              if (!v14)
              {
                v15 = *(&__src + 1);
                if (*(&__src + 1) > 0x20uLL)
                {
                  v11 = 0xF400000000;
                  LODWORD(v14) = 25;
                  goto LABEL_9;
                }

                memcpy(a4, __src, *(&__src + 1));
                a4[4] = v15;
                v17 = 0uLL;
                v14 = sub_2393C6FD0(v22, 5);
                if (!v14)
                {
                  v14 = sub_2393C60CC(v22, &v17);
                  if (!v14)
                  {
                    if (*(&v17 + 1) != 12)
                    {
                      v11 = 0xFC00000000;
                      LODWORD(v14) = 35;
                      goto LABEL_9;
                    }

                    v16 = *(v17 + 8);
                    *a5 = *v17;
                    *(a5 + 8) = v16;
                    v14 = sub_2393C6A98(v22, v20);
                    if (!v14)
                    {
                      v14 = sub_2393C6AE0(v22);
                      if (!v14)
                      {
                        LODWORD(v14) = 0;
                        v11 = 0;
                        goto LABEL_9;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v11 = v14 & 0xFFFFFFFF00000000;
LABEL_9:
        v10 = v14;
        goto LABEL_5;
      }
    }
  }

  v11 = v9 & 0xFFFFFFFF00000000;
LABEL_5:
  v12 = *MEMORY[0x277D85DE8];
  return v11 | v10;
}

uint64_t sub_2393F1158(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  sub_239296DA0("f/%x/s/%08X%08X", v5, *(a2 + 8), HIDWORD(*a2), *a2);
  result = (*(*v2 + 32))(v2, v5);
  if (!result)
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393F1230(uint64_t a1, uint64_t a2, uint64_t a3, _WORD **a4)
{
  result = 0x2600000003;
  if (*(a3 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a3 + 6) == 0;
  }

  if (v5 && *a3 == 64)
  {
    sub_238EA6DC0(a2, &v15);
    if ((*(*v15 + 16))(v15) == 2)
    {
      sub_23946FC58(v13);
      v12 = *a4;
      *a4 = 0;
      v7 = sub_23946FCAC(v13, &v12);
      if (v12)
      {
        sub_2393D96C8(v12);
      }

      v12 = 0;
      if (v7)
      {
        v8 = v7 & 0xFFFFFFFF00000000;
      }

      else
      {
        LODWORD(v7) = 0;
        if (v13[0])
        {
          v8 = 0;
        }

        else
        {
          v8 = 0;
          if (v13[3] == 3)
          {
            v9 = sub_2393D9044(5u);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *v11 = 0;
              _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Received CloseSession status message, closing session", v11, 2u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(5u, 2);
            }

            v10 = sub_239495304(v15);
            sub_239493268(v10);
            LODWORD(v7) = 0;
            v8 = 0;
          }
        }
      }

      if (v14)
      {
        sub_2393D96C8(v14);
      }

      v7 = v7;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    (*(*v15 + 32))(v15);
    return v8 | v7;
  }

  return result;
}

unint64_t sub_2393F1458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v6 = (*(*a1 + 184))(a1, v10, 8);
  if (v6 || a2 && (v6 = (*(*a1 + 184))(a1, a2, a3), v6))
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

double sub_2393F1544(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284BB8CE8;
  *(a1 + 113) = 0;
  *(a1 + 128) = a4;
  *(a1 + 136) = a3;
  *(a1 + 120) = a2;
  *(a1 + 208) = a1 + 144;
  *(a1 + 216) = a1 + 144 + (a4 >> 1);
  *(a1 + 224) = a1 + 176;
  *(a1 + 232) = a1 + 176 + (a4 >> 1);
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

unint64_t sub_2393F15A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 113))
  {
    (*(*a1 + 24))(a1);
  }

  v6 = (*(*a1 + 176))(a1);
  if (v6 || (v6 = (*(*a1 + 104))(a1, &unk_2395C26F5, 65, *(a1 + 8)), v6) || (v6 = (*(*a1 + 104))(a1, &unk_2395C2736, 65, *(a1 + 16)), v6) || (v6 = sub_2393F1458(a1, a2, a3), v6))
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 0;
    *(a1 + 113) = 1;
  }

  return v7 | v6;
}

unint64_t sub_2393F16DC(uint64_t a1)
{
  v2 = sub_2393F1458(a1, &unk_2395C26F5, 65);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v2 = sub_2393F1458(a1, &unk_2395C2736, 65);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (!v2)
    {
      LODWORD(v2) = 0;
      v3 = 0;
    }
  }

  return v3 | v2;
}

unint64_t sub_2393F1748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 113) == 1)
  {
    v15 = sub_2393F1458(a1, a4, a5);
    if (v15 || (v15 = sub_2393F1458(a1, a2, a3), v15) || (v15 = sub_2393F16DC(a1), v15) || (v15 = (*(*a1 + 72))(a1, a6, a7, *(a1 + 72)), v15) || (v15 = (*(*a1 + 104))(a1, a8, a9, *(a1 + 48)), v15))
    {
      v16 = v15 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v15) = 0;
      v16 = 0;
      *(a1 + 112) = 512;
    }
  }

  else
  {
    v16 = 0x14300000000;
    LODWORD(v15) = 172;
  }

  return v16 | v15;
}

unint64_t sub_2393F1874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 113) == 1)
  {
    v15 = sub_2393F1458(a1, a2, a3);
    if (v15 || (v15 = sub_2393F1458(a1, a4, a5), v15) || (v15 = sub_2393F16DC(a1), v15) || (v15 = (*(*a1 + 72))(a1, a6, a7, *(a1 + 72)), v15) || (v15 = (*(*a1 + 72))(a1, a8, a9, *(a1 + 80)), v15))
    {
      v16 = v15 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v15) = 0;
      v16 = 0;
      *(a1 + 112) = 513;
    }
  }

  else
  {
    v16 = 0x15400000000;
    LODWORD(v15) = 172;
  }

  return v16 | v15;
}

uint64_t sub_2393F1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a1 + 113) != 2)
  {
    result = 0x167000000ACLL;
    goto LABEL_5;
  }

  if (*a5 < *(a1 + 136))
  {
    result = 0x168000000ACLL;
LABEL_5:
    *a5 = *(a1 + 136);
    return result;
  }

  result = (*(*a1 + 88))(a1, *(a1 + 88));
  if (!result)
  {
    result = 0x176000000ACLL;
    if (*(a1 + 112) == 1)
    {
      v9 = 32;
      v10 = 8;
    }

    else
    {
      if (*(a1 + 112))
      {
        goto LABEL_5;
      }

      v9 = 40;
      v10 = 16;
    }

    if (*(a1 + v10))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        v12 = *(a1 + 72);
        result = (*(*a1 + 128))(a1, v11, *(a1 + 24), *(a1 + 88));
        if (!result)
        {
          result = (*(*a1 + 112))(a1, v11, a4, *a5);
          if (!result)
          {
            result = 0;
            *(a1 + 113) = 3;
          }
        }
      }

      else
      {
        result = 0x177000000ACLL;
      }
    }

    goto LABEL_5;
  }

  return result;
}

unint64_t sub_2393F1B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_238DB9BD8(v20, a4, *a5);
  if (*a5 < a1[16])
  {
    v9 = 0x18C000000ACLL;
    goto LABEL_30;
  }

  if (*(a1 + 113) != 3)
  {
    v9 = 0x18D000000ACLL;
    goto LABEL_30;
  }

  if (a1[17] != a3)
  {
    v9 = 0x18E000000ACLL;
    goto LABEL_30;
  }

  v9 = 0x1A4000000ACLL;
  if (!*(a1 + 112))
  {
    v10 = sub_2393F1458(a1, a2, a3);
    if (!v10)
    {
      v10 = (*(*a1 + 112))(a1, a1[5], v21, a1[17]);
      if (!v10)
      {
        v10 = sub_2393F1458(a1, v21, a1[17]);
        if (!v10)
        {
          v11 = 27;
          v12 = 4;
          v13 = 1;
          goto LABEL_18;
        }
      }
    }

LABEL_16:
    v9 = v10;
    goto LABEL_30;
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_30;
  }

  v10 = (*(*a1 + 112))(a1, a1[4], v21, a3);
  if (v10)
  {
    goto LABEL_16;
  }

  v10 = sub_2393F1458(a1, v21, a1[17]);
  if (v10)
  {
    goto LABEL_16;
  }

  v10 = sub_2393F1458(a1, a2, a3);
  if (v10)
  {
    goto LABEL_16;
  }

  v11 = 26;
  v12 = 5;
  v13 = 2;
LABEL_18:
  v14 = a1[v13];
  if (v14)
  {
    v15 = a1[v12];
    if (!v15)
    {
      v9 = 0x1A5000000ACLL;
      goto LABEL_30;
    }

    v16 = a1[v11];
    v9 = (*(*a1 + 104))(a1, a2, a3, v15);
    if (!v9)
    {
      v9 = (*(*a1 + 152))(a1, v15);
      if (!v9)
      {
        v9 = (*(*a1 + 96))(a1, a1[13], a1[11], a1[9]);
        if (!v9)
        {
          v9 = (*(*a1 + 136))(a1, v14);
          if (!v9)
          {
            v9 = (*(*a1 + 128))(a1, a1[7], v15, a1[11], v14, a1[13]);
            if (!v9)
            {
              v9 = (*(*a1 + 144))(a1, a1[7]);
              if (!v9)
              {
                if (*(a1 + 112))
                {
                  if (*(a1 + 112) != 1)
                  {
LABEL_34:
                    v9 = (*(*a1 + 144))(a1, a1[8]);
                    if (!v9)
                    {
                      v9 = (*(*a1 + 112))(a1, a1[7], v21, a1[17]);
                      if (!v9)
                      {
                        v9 = sub_2393F1458(a1, v21, a1[17]);
                        if (!v9)
                        {
                          v9 = (*(*a1 + 112))(a1, a1[8], v21, a1[17]);
                          if (!v9)
                          {
                            v9 = sub_2393F1458(a1, v21, a1[17]);
                            if (!v9)
                            {
                              v9 = (*(*a1 + 80))(a1, a1[9], v21, a1[15]);
                              if (!v9)
                              {
                                v9 = sub_2393F1458(a1, v21, a1[15]);
                                if (!v9)
                                {
                                  v9 = sub_2393F2124(a1);
                                  if (!v9)
                                  {
                                    v9 = (*(*a1 + 200))(a1, v16, a1[16] >> 1, a2, a3, v20);
                                    if (!v9)
                                    {
                                      if (v20[1] == a1[16])
                                      {
                                        v9 = 0;
                                        *(a1 + 113) = 4;
                                      }

                                      else
                                      {
                                        v9 = 0x1C5000000ACLL;
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

                    goto LABEL_30;
                  }

                  v9 = (*(*a1 + 96))(a1, a1[13], a1[10], a1[9]);
                  if (v9)
                  {
                    goto LABEL_30;
                  }

                  v17 = (*(*a1 + 128))(a1, a1[8], v15, a1[10], v14, a1[13]);
                }

                else
                {
                  v17 = (*(*a1 + 120))(a1, a1[8], a1[6], a1[11]);
                }

                v9 = v17;
                if (v17)
                {
                  goto LABEL_30;
                }

                goto LABEL_34;
              }
            }
          }
        }
      }
    }
  }

LABEL_30:
  *a5 = a1[16];
  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t sub_2393F2124(void *a1)
{
  sub_238DB9BD8(v5, (a1 + 22), 32);
  v2 = (*(*a1 + 192))(a1, v5);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v2 = (*(*a1 + 216))(a1, a1[28], a1[16] >> 1, 0, 0, "ConfirmationKeysGroupKey v1.0", 16, a1 + 18, a1[16]);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (!v2)
    {
      LODWORD(v2) = 0;
      v3 = 0;
    }
  }

  return v3 | v2;
}

unint64_t sub_2393F2200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 113) != 4)
  {
    v8 = 0x1E000000000;
LABEL_13:
    LODWORD(v11) = 172;
    goto LABEL_14;
  }

  if (*(a1 + 112) == 1)
  {
    v6 = 216;
    v7 = 32;
  }

  else
  {
    if (*(a1 + 112))
    {
LABEL_11:
      v8 = 0x1EC00000000;
      goto LABEL_13;
    }

    v6 = 208;
    v7 = 40;
  }

  if (!*(a1 + v7))
  {
    goto LABEL_11;
  }

  v9 = *(a1 + v6);
  if (!v9)
  {
    v8 = 0x1ED00000000;
    goto LABEL_13;
  }

  v10 = *(a1 + 136);
  v11 = (*(*a1 + 112))(a1);
  if (!v11)
  {
    v14 = (*(*a1 + 208))(a1, v9, *(a1 + 128) >> 1, a2, a3, v17, *(a1 + 136));
    v11 = v14;
    v8 = v14;
    if (v14 == 172)
    {
      v15 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Failed to verify peer's MAC. This can happen when setup code is incorrect.", v16, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0xBu, 1);
      }
    }

    else if (!v14)
    {
      LODWORD(v11) = 0;
      *(a1 + 113) = 5;
      goto LABEL_14;
    }
  }

  v8 = v11 & 0xFFFFFFFF00000000;
LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v11 | v8;
}

uint64_t sub_2393F23EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 113) != 5)
  {
    return 0x1FE000000ACLL;
  }

  v8[4] = v3;
  v8[5] = v4;
  sub_238DB6950(v8, *(a1 + 232), *(a1 + 128) >> 1);
  return (*(*a2 + 32))(a2, v8, a3);
}

unint64_t sub_2393F2480(uint64_t a1)
{
  v2 = sub_2393F7F38((a1 + 240));
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v2 = sub_2393F9B5C(a1);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (!v2)
    {
      LODWORD(v2) = 0;
      v3 = 0;
    }
  }

  return v3 | v2;
}

uint64_t sub_2393F24D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_238DB6950(&v5, a2, a3);
  result = sub_2393F7FF0((a1 + 240));
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2393F2520(uint64_t a1, uint64_t *a2)
{
  result = sub_2393F817C((a1 + 240), a2);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2393F2548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &unk_284BB9088;
  result = sub_2393F826C(&v10, a2, a3, a4, a5, a6, a7, a8, a9);
  if (!result)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2393F259C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*a1 + 72))(a1, a4, a5, a1[9]);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = (*(*a1 + 80))(a1, a1[9], a2, *a3);
    v9 = v8 & 0xFFFFFFFF00000000;
    if (!v8)
    {
      LODWORD(v8) = 0;
      v9 = 0;
    }
  }

  return v9 | v8;
}

uint64_t sub_2393F265C(uint64_t a1, void *a2)
{
  if (a2[1] < 0x61uLL)
  {
    v8 = 0x22B00000000;
    v9 = 47;
  }

  else
  {
    v2 = *a2;
    v3 = *(a1 + 16);
    *v2 = *a1;
    v2[1] = v3;
    v4 = *a2;
    v4[2] = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    v7 = *(a1 + 80);
    *(v4 + 96) = *(a1 + 96);
    v4[4] = v6;
    v4[5] = v7;
    v4[3] = v5;
    sub_238DB8498(a2, 0x61uLL);
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t sub_2393F26E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) < 0x61uLL)
  {
    v2 = 0x23700000000;
    v3 = 47;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = *(*a2 + 16);
    *a1 = **a2;
    *(a1 + 16) = v4;
    v5 = *a2;
    *(a1 + 32) = *(*a2 + 32);
    v6 = v5[3];
    v7 = v5[4];
    v8 = v5[5];
    *(a1 + 96) = *(v5 + 96);
    *(a1 + 64) = v7;
    *(a1 + 80) = v8;
    *(a1 + 48) = v6;
  }

  return v3 | v2;
}

unint64_t sub_2393F2748(uint64_t a1, unsigned int a2, uint64_t *a3, int a4)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(v28, 0, 80);
  v5 = sub_2393F2940(a2, a3, a4, v28, 0x50u);
  if (!v5)
  {
    v9 = 0;
    v19 = 0;
    v20 = vdupq_n_s64(0x20uLL);
    v21 = 65;
    v25[2] = &v22;
    v25[3] = &v23;
    v25[4] = &v24;
    v25[5] = v25;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v11 = &unk_284BB8F80;
    sub_2393F7EB0(v26);
    bzero(&v27, 0x400uLL);
    memset(v10, 0, sizeof(v10));
    v5 = sub_2393F15A8(&v11, v10, 32);
    if (!v5)
    {
      v9 = 32;
      v5 = sub_2393F259C(&v11, a1, &v9, v28, 40);
      if (!v5)
      {
        v9 = 65;
        v8 = sub_2393FA394(&v11, (a1 + 32), &v9, &v28[40], 0x28uLL);
        if (v8 == 0 && v9 != 65)
        {
          v5 = 0x254000000ACLL;
        }

        else
        {
          v5 = v8;
        }
      }
    }

    sub_2393F9D1C(&v11);
    v11 = &unk_284BB8F80;
    sub_2393F9D1C(&v11);
    sub_2393F7EB8(v26);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_2393F2940(unsigned int a1, uint64_t *a2, int a3, char *a4, unsigned int a5)
{
  v12 = &unk_284BB9100;
  v11 = a3;
  v6 = a2[1];
  if (v6 - 16 > 0x10)
  {
    v8 = 0x26300000000;
LABEL_6:
    v9 = 47;
    return v9 | v8;
  }

  if (a1 - 1000 > 0x182B8)
  {
    v8 = 0x26500000000;
    goto LABEL_6;
  }

  v7 = sub_2393F8608(&v12, &v11, 4uLL, *a2, v6, a1, a5, a4);
  v8 = v7 & 0xFFFFFFFF00000000;
  v9 = v7;
  return v9 | v8;
}

unint64_t sub_2393F29EC(void *a1, void *a2)
{
  *a2 = 0;
  v11 = 0;
  sub_2393D5964(a1, &v11);
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[4];
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else if (v11 < 0)
  {
    v7 = v11 & 0x7F;
    if ((v11 & 0x7Fu) - 1 > 7)
    {
      v6 = 0x27D00000000;
LABEL_9:
      LODWORD(v4) = 47;
    }

    else if (a1[2] >= v7)
    {
      v9 = 0;
      do
      {
        v10 = 0;
        sub_2393D5964(a1, &v10);
        if (*(a1 + 6))
        {
          break;
        }

        if (!v9 && !v10)
        {
          v6 = 0x28B00000000;
          goto LABEL_9;
        }

        *a2 = v10 | (*a2 << 8);
        ++v9;
      }

      while (v9 < v7);
      if (v7 == 1 && *a2 < 0x80uLL)
      {
        v6 = 0x29600000000;
        goto LABEL_9;
      }

      v6 = 0;
      LODWORD(v4) = 0;
    }

    else
    {
      v6 = 0x27E00000000;
      LODWORD(v4) = 25;
    }
  }

  else
  {
    v6 = 0;
    LODWORD(v4) = 0;
    *a2 = v11;
  }

  return v4 | v6;
}

uint64_t sub_2393F2B28(void *a1, uint64_t *a2, int a3)
{
  v3 = a1[1];
  if (v3)
  {
    v5 = a2[1];
    if (!v5)
    {
      v9 = 0x6A00000000;
LABEL_19:
      v10 = 47;
      return v9 | v10;
    }

    v20[0] = *a1;
    v20[1] = v20[0];
    v22 = 0;
    v23 = 0;
    v21 = v3;
    if (!v20[0])
    {
      v21 = 0;
    }

    v17 = *a2;
    v18 = v5;
    v19 = 0;
    if (!v17)
    {
      v18 = 0;
    }

    v16 = 0;
    while (v21)
    {
      sub_2393D5964(v20, &v16);
      v7 = v16;
      if (v22)
      {
        v8 = 0;
      }

      else
      {
        v8 = v16 == 0;
      }

      if (!v8)
      {
        goto LABEL_17;
      }
    }

    v7 = 0;
LABEL_17:
    v11 = v21 + (v7 >> 7);
    v12 = v11 + 1;
    if ((v11 + 1) > 0x7F)
    {
      v9 = 0x8500000000;
      goto LABEL_19;
    }

    if (a3)
    {
      sub_2393D5D3C(&v17, 2);
      sub_2393D5D3C(&v17, v12);
    }

    if ((v7 & 0x80) != 0)
    {
      sub_2393D5D3C(&v17, 0);
    }

    do
    {
      sub_2393D5D3C(&v17, v16);
      sub_2393D5964(v20, &v16);
    }

    while (!v22);
    if (v18 >= v19)
    {
      v14 = sub_2393E8774(a2, 0, v19);
      v10 = 0;
      v9 = 0;
      *a2 = v14;
      a2[1] = v15;
    }

    else
    {
      v9 = 0xA400000000;
      v10 = 25;
    }
  }

  else
  {
    v9 = 0x6A00000000;
    v10 = 47;
  }

  return v9 | v10;
}

unint64_t sub_2393F2CB8(unint64_t a1, void *a2, uint64_t *a3)
{
  if (!a1)
  {
    v8 = 0x2A800000000;
    LODWORD(v9) = 47;
    return v8 & 0xFFFFFFFF00000000 | v9;
  }

  v5 = a2[1];
  if (v5 != 2 * a1)
  {
    v8 = 0x2A900000000;
    goto LABEL_8;
  }

  v7 = a3[1];
  if (v7 >= v5 + 9)
  {
    v10 = *a3 + 3;
    v11 = v7 - 3;
    sub_238DB9BD8(&v22, v10, v7 - 3);
    v25 = sub_2393F2ED0(a2, 0, a1);
    v26 = v12;
    v9 = sub_2393F2B28(&v25, &v22, 1);
    if (v9)
    {
LABEL_10:
      v8 = v9;
      return v8 & 0xFFFFFFFF00000000 | v9;
    }

    v13 = v23;
    v14 = v11 >= v23;
    v15 = v11 - v23;
    if (!v14)
    {
      v8 = 0x2B600000000;
LABEL_13:
      LODWORD(v9) = 172;
      return v8 & 0xFFFFFFFF00000000 | v9;
    }

    sub_238DB9BD8(&v22, v10 + v23, v15);
    v25 = sub_2393F2ED0(a2, a1, a1);
    v26 = v17;
    v9 = sub_2393F2B28(&v25, &v22, 1);
    if (v9)
    {
      goto LABEL_10;
    }

    if (v23 > v15)
    {
      v8 = 0x2C100000000;
      goto LABEL_13;
    }

    v18 = v23 + v13;
    if (v23 + v13 <= 0xFF)
    {
      v19 = a3[1];
      v22 = *a3;
      v23 = v19;
      v24 = 0;
      if (!v22)
      {
        v23 = 0;
      }

      sub_2393D5D3C(&v22, 48);
      if (v18 >= 0x80)
      {
        sub_2393D5D3C(&v22, 129);
      }

      sub_2393D5D3C(&v22, v18);
      sub_2393D5CDC(&v22, (*a3 + 3), v18);
      if (v23 >= v24)
      {
        v20 = sub_2393E8774(a3, 0, v24);
        LODWORD(v9) = 0;
        v8 = 0;
        *a3 = v20;
        a3[1] = v21;
        return v8 & 0xFFFFFFFF00000000 | v9;
      }

      v8 = 0x2E200000000;
      goto LABEL_5;
    }

    v8 = 0x2C600000000;
LABEL_8:
    LODWORD(v9) = 47;
    return v8 & 0xFFFFFFFF00000000 | v9;
  }

  v8 = 0x2AA00000000;
LABEL_5:
  LODWORD(v9) = 25;
  return v8 & 0xFFFFFFFF00000000 | v9;
}

uint64_t sub_2393F2ED0(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    sub_239531374();
  }

  if (v5 < a3)
  {
    sub_2395312DC();
  }

  sub_238DB6950(&v7, *a1 + a2, a3);
  return v7;
}

unint64_t sub_2393F2F1C(uint64_t a1, void *a2, uint64_t *a3)
{
  if (!a1)
  {
    v8 = 0x2EA00000000;
    v9 = 47;
    return v8 | v9;
  }

  v5 = a2[1];
  if (v5 < 4)
  {
    v8 = 0x2EB00000000;
    v9 = 25;
    return v8 | v9;
  }

  v23 = v3;
  v24 = v4;
  if (a3[1] >= (2 * a1))
  {
    v19[0] = *a2;
    v19[1] = v19[0];
    v21 = 0;
    v22 = 0;
    v20 = v5;
    if (!v19[0])
    {
      v20 = 0;
    }

    v18 = 0;
    sub_2393D5964(v19, &v18);
    v10 = v21;
    if (v21)
    {
      goto LABEL_10;
    }

    if (v18 == 48)
    {
      v17 = 0;
      v10 = sub_2393F29EC(v19, &v17);
      if (v10)
      {
        goto LABEL_10;
      }

      if (v17 == v20)
      {
        v11 = *a3;
        sub_238DB9BD8(&v15, *a3, a1);
        v10 = sub_2393F30B0(v19, v15, v16);
        if (!v10)
        {
          sub_238DB9BD8(&v15, v11 + a1, a1);
          v10 = sub_2393F30B0(v19, v15, v16);
          if (!v10)
          {
            v12 = sub_2393E8774(a3, 0, 2 * a1);
            LODWORD(v10) = 0;
            v8 = 0;
            *a3 = v12;
            a3[1] = v13;
            goto LABEL_19;
          }
        }

LABEL_10:
        v8 = v10 & 0xFFFFFFFF00000000;
LABEL_19:
        v9 = v10;
        return v8 | v9;
      }

      v8 = 0x2FC00000000;
    }

    else
    {
      v8 = 0x2F500000000;
    }

    LODWORD(v10) = 47;
    goto LABEL_19;
  }

  v8 = 0x2EE00000000;
  v9 = 25;
  return v8 | v9;
}

unint64_t sub_2393F30B0(void *a1, char *a2, size_t a3)
{
  v14 = 0;
  sub_2393D5964(a1, &v14);
  v6 = a1[3];
  if (v6)
  {
    goto LABEL_2;
  }

  if (v14 != 2)
  {
    v8 = 0x4700000000;
    goto LABEL_9;
  }

  v13 = 0;
  v6 = sub_2393F29EC(a1, &v13);
  if (v6)
  {
    goto LABEL_3;
  }

  bzero(a2, a3);
  v9 = v13;
  if (v13 > a3 + 1)
  {
    v8 = 0x5200000000;
LABEL_9:
    LODWORD(v6) = 47;
    return v6 | v8;
  }

  if (v13 != a3 + 1)
  {
LABEL_16:
    v11 = sub_2393D5B20(a1, &a2[a3 - v9], v9);
    v6 = *(v11 + 24);
    v12 = *(v11 + 32);
    goto LABEL_3;
  }

  sub_2393D5964(a1, &v14);
  v6 = a1[3];
  if (!v6)
  {
    if (v14)
    {
      v8 = 0x5A00000000;
      goto LABEL_9;
    }

    --v9;
    goto LABEL_16;
  }

LABEL_2:
  v7 = a1[4];
LABEL_3:
  v8 = v6 & 0xFFFFFFFF00000000;
  return v6 | v8;
}

uint64_t sub_2393F31B4(char *a1, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6)
{
  v9 = *MEMORY[0x277D85DE8];
  result = sub_2393F7A34(a1, a2, 0, 0, a3, a4, a5, a6, v8, 16);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393F3224(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 4)
  {
    if (a3[1] < 8)
    {
      v5 = 0x31C00000000;
      v6 = 25;
    }

    else
    {
      v13[0] = bswap64(a2);
      v12 = *"CompressedFabricN4chip36PersistentStorageOperationalKeystoreE";
      v11 = &unk_284BB9088;
      sub_238DB6950(v10, a1 + 9, 64);
      v4 = sub_2393F826C(&v11, v10[0], v10[1], v13, 8, &v12, 16, *a3, 8);
      v5 = v4 & 0xFFFFFFFF00000000;
      v6 = v4;
      if (!v4)
      {
        *a3 = sub_2393E8774(a3, 0, 8uLL);
        a3[1] = v7;
      }
    }
  }

  else
  {
    v5 = 0x31B00000000;
    v6 = 47;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 | v5;
}

unint64_t sub_2393F3360(uint64_t a1, unint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8[0] = v9;
  v8[1] = 8;
  v4 = sub_2393F3224(a1, a2, v8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v4) = 0;
    v5 = 0;
    *a3 = bswap64(v9[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5 | v4;
}

unint64_t sub_2393F33F4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1[1] != 16)
  {
    v10 = 0x35E00000000;
LABEL_6:
    v11 = 47;
    return v11 | v10;
  }

  if (a3[1] < 0x10)
  {
    v10 = 0x35F00000000;
    goto LABEL_6;
  }

  v13[1] = v3;
  v13[2] = v4;
  v5 = *a1;
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v13[0] = &unk_284BB9088;
  v9 = sub_2393F826C(v13, v5, 16, v6, v7, "GroupKey v1.0", 13, v8, 16);
  v10 = v9 & 0xFFFFFFFF00000000;
  v11 = v9;
  return v11 | v10;
}

uint64_t sub_2393F34A0(uint64_t *a1, _WORD *a2)
{
  if (a1[1] != 16)
  {
    return 0x3700000002FLL;
  }

  v9[3] = v2;
  v9[4] = v3;
  v9[0] = &unk_284BB9088;
  v5 = sub_2393F826C(v9, *a1, 16, "", 0, "GroupKeyHashPrivacyKeyMvid:", 12, &v8, 2);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
    *a2 = bswap32(v8) >> 16;
  }

  return v6 | v5;
}

unint64_t sub_2393F3570(uint64_t *a1, uint64_t *a2)
{
  if (a1[1] != 16)
  {
    v7 = 0x38A00000000;
LABEL_6:
    v8 = 47;
    return v7 | v8;
  }

  if (a2[1] < 0x10)
  {
    v7 = 0x38B00000000;
    goto LABEL_6;
  }

  v10[1] = v2;
  v10[2] = v3;
  v4 = *a1;
  v5 = *a2;
  v10[0] = &unk_284BB9088;
  v6 = sub_2393F826C(v10, v4, 16, 0, 0, "PrivacyKeyMvid:", 10, v5, 16);
  v7 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
  return v7 | v8;
}

unint64_t sub_2393F3628(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a3 + 10;
  v10[0] = a3 + 10;
  v10[1] = 16;
  v9[0] = a3 + 26;
  v9[1] = 16;
  v5 = sub_2393F33F4(a1, a2, v10);
  if (v5 || (sub_238DB6950(v8, v4, 16), v5 = sub_2393F34A0(v8, (a3 + 8)), v5))
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_238DB6950(v8, v4, 16);
    v5 = sub_2393F3570(v8, v9);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

uint64_t sub_2393F36D0(int a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t *a5)
{
  if (a1 != 1)
  {
    return 0x3AA0000002FLL;
  }

  v21 = v5;
  v22 = v6;
  v11 = a5[1];
  v18 = *a5;
  v19 = v11;
  v20 = 0;
  if (!v18)
  {
    v19 = 0;
  }

  v12 = sub_2393D5D3C(&v18, 1);
  v13 = sub_2393D5CDC(v12, (a2 + 8), 0x41uLL);
  v14 = sub_2393D5DD0(v13, a3, 8);
  sub_2393D5DD0(v14, a4, 2);
  if (v19 >= v20)
  {
    sub_238DB8498(a5, v20);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = 0x3B600000000;
    v16 = 25;
  }

  return v16 | v15;
}

uint64_t sub_2393F37A8(char a1, uint64_t a2, uint64_t a3, const void **a4, uint64_t a5, uint64_t *a6)
{
  if (*(a2 + 8) != 32)
  {
    v20 = 0x3C400000000;
    v21 = 47;
    return v21 | v20;
  }

  v26 = v6;
  v27 = v7;
  if (*(a3 + 8) != 16 || !a4[1])
  {
    v20 = 0x3C400000000;
LABEL_11:
    v21 = 47;
    return v21 | v20;
  }

  if (*sub_2391F8558(a4, 0) != 1)
  {
    v20 = 0x3C800000000;
    goto LABEL_11;
  }

  v14 = a6[1];
  v23 = *a6;
  v24 = v14;
  v25 = 0;
  if (!v23)
  {
    v24 = 0;
  }

  v15 = sub_2393D5D3C(&v23, 1);
  v16 = sub_2393D5CDC(v15, *a2, *(a2 + 8));
  v17 = sub_2393D5CDC(v16, *a3, *(a3 + 8));
  v18 = sub_2393D5D3C(v17, a1);
  v19 = sub_2393D5CDC(v18, *a4, a4[1]);
  sub_2393D5CDC(v19, *a5, *(a5 + 8));
  if (v24 >= v25)
  {
    sub_238DB8498(a6, v25);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = 0x3D600000000;
    v21 = 25;
  }

  return v21 | v20;
}

unint64_t sub_2393F38E0(int a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a2[1];
    if (v4)
    {
      if ((a1 & 0xFFFFFFFE) == 2)
      {
        LOWORD(v15) = 0;
        if (v4 != 4)
        {
          v7 = 0x3E500000000;
          goto LABEL_16;
        }

        if (sub_2393D61F0(*a2, 4uLL, &v15) != 2)
        {
          v7 = 0x3E800000000;
          goto LABEL_16;
        }

        if (a1 == 2)
        {
          if (*a3)
          {
            v7 = 0x3ED00000000;
LABEL_16:
            LODWORD(v8) = 89;
            return v8 | v7;
          }

          v12 = v15;
          *a3 = 1;
          *(a3 + 2) = v12;
        }

        else
        {
          if (*(a3 + 4))
          {
            v7 = 0x3F300000000;
            goto LABEL_16;
          }

          *(a3 + 4) = 1;
          *(a3 + 6) = v15;
        }

        goto LABEL_13;
      }

      if (*a4 & 1) != 0 || (*(a4 + 4))
      {
LABEL_13:
        v7 = 0;
        LODWORD(v8) = 0;
        return v8 | v7;
      }

      v15 = *a2;
      if (*(&v15 + 1) >= 0x41uLL)
      {
        sub_2393F3AA0(&v15, 0x40uLL);
      }

      v14 = 0;
      v8 = sub_2393F3AC4(&v15, "Mvid:", &v14);
      if (v8 != 216)
      {
        if (v8)
        {
          goto LABEL_26;
        }

        v11 = v14;
        *a4 = 1;
        *(a4 + 2) = v11;
      }

      v13 = 0;
      v8 = sub_2393F3AC4(&v15, "Mpid:", &v13);
      if (v8 == 216)
      {
        goto LABEL_13;
      }

      if (!v8)
      {
        *(a4 + 4) = 1;
        *(a4 + 6) = v13;
        goto LABEL_13;
      }

LABEL_26:
      v7 = v8 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }

    v7 = 0x3E000000000;
    LODWORD(v8) = 47;
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
  }

  return v8 | v7;
}

uint64_t sub_2393F3AA0(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    sub_23953140C();
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2393F3AC4(uint64_t *a1, char *__s, _WORD *a3)
{
  v6 = strlen(__s);
  sub_238DB9BD8(&v19, __s, v6);
  v7 = a1[1];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = v19;
    v11 = v20;
    v17 = a3;
    v18 = -v20;
    v12 = 89;
LABEL_3:
    v13 = *a1;
    v14 = v7 - v9;
    do
    {
      if (v14 < v11)
      {
        break;
      }

      if (!memcmp((v13 + v9), v10, v11))
      {
        if (v18 + v7 - v9 < 4)
        {
          v15 = 0xEE00000000;
        }

        else
        {
          LODWORD(v19) = *(v13 + v11 + v9);
          if (sub_2393D61F0(&v19, 4uLL, v17))
          {
            v12 = 0;
            v15 = 0;
          }

          else
          {
            v7 = a1[1];
            ++v9;
            v15 = 0xEE00000000;
            v8 = 1;
            if (v9 < v7)
            {
              goto LABEL_3;
            }
          }
        }

        return v15 | v12;
      }

      ++v9;
      --v14;
    }

    while (v9 < v7);
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    v15 = 0xEE00000000;
    v12 = 89;
  }

  else
  {
LABEL_14:
    v15 = 0xEE00000000;
    v12 = 216;
  }

  return v15 | v12;
}

unint64_t sub_2393F3C24(uint64_t a1, uint64_t *a2)
{
  v21[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v7 = 0x46900000000;
    v8 = 47;
    goto LABEL_8;
  }

  v3 = a2[1];
  if (v3 < 0xFF)
  {
    v7 = 0x46A00000000;
    v8 = 25;
    goto LABEL_8;
  }

  v21[4] = 0;
  sub_2393F6DA8(v18, *a2, v3);
  v5 = (*(*a1 + 40))(a1);
  v6 = sub_2393F3F70(v18, v5);
  if (!v6)
  {
    if (sub_2393F6DCC(v18) > a2[1])
    {
      v7 = 0x48000000000;
      LODWORD(v6) = 172;
      goto LABEL_5;
    }

    v6 = (*(*a1 + 24))(a1, *a2);
    if (!v6)
    {
      sub_2393F6DA8(v18, *a2, a2[1]);
      v6 = sub_2393F77A4(v18, 0, 0x10u);
      if (v6 || (v11 = (*(*a1 + 40))(a1), sub_2393F3F70(v18, v11), v6 = sub_2393F77A4(v18, 0, 0x10u), v6) || (v6 = sub_2393F5C58(v18, 513), v6) || (v6 = sub_2393F77B0(v18), v6) || (v6 = sub_2393F7918(v18, 0, 3u, 1), v6) || (v6 = sub_2393F77A4(v18, 0, 0x10u), v6))
      {
LABEL_18:
        if (!v6)
        {
          v12 = sub_2393F6DCC(v18);
          sub_238DB8498(a2, v12);
        }

        goto LABEL_4;
      }

      v16 = v19;
      v17 = 33;
      sub_2393E99A4(&v13, v20);
      v14 = v13;
      v15 = 32;
      v6 = sub_2393F2B28(&v14, &v16, 0);
      if (!v6)
      {
        v6 = sub_2393F6EB4(v18, 0, 2u, 0, v16, v17);
        if (!v6)
        {
          v16 = v19;
          v17 = 33;
          sub_2393E99A4(&v13, v21);
          v14 = v13;
          v15 = 32;
          v6 = sub_2393F2B28(&v14, &v16, 0);
          if (!v6)
          {
            v6 = sub_2393F6EB4(v18, 0, 2u, 0, v16, v17);
            if (!v6)
            {
              v6 = sub_2393F77B0(v18);
              if (!v6)
              {
                v6 = sub_2393F77B0(v18);
                if (!v6)
                {
                  v6 = sub_2393F77B0(v18);
                }
              }

              goto LABEL_18;
            }
          }
        }
      }
    }
  }

LABEL_4:
  v7 = v6 & 0xFFFFFFFF00000000;
LABEL_5:
  sub_2393F9144(v20, 64);
  v8 = v6;
LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

uint64_t sub_2393F3F70(void *a1, uint64_t a2)
{
  result = sub_2393F77A4(a1, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F6DE8(a1, 0);
    if (!result)
    {
      result = sub_2393F77A4(a1, 0, 0x10u);
      if (!result)
      {
        result = sub_2393F77A4(a1, 0, 0x11u);
        if (!result)
        {
          result = sub_2393F77A4(a1, 0, 0x10u);
          if (!result)
          {
            result = sub_2393F5C58(a1, 776);
            if (!result)
            {
              result = sub_2393F714C(a1, 0xCu, "CSA", 3u);
              if (!result)
              {
                result = sub_2393F77B0(a1);
                if (!result)
                {
                  result = sub_2393F77B0(a1);
                  if (!result)
                  {
                    result = sub_2393F77B0(a1);
                    if (!result)
                    {
                      result = sub_2393F77A4(a1, 0, 0x10u);
                      if (!result)
                      {
                        result = sub_2393F77A4(a1, 0, 0x10u);
                        if (!result)
                        {
                          result = sub_2393F5C58(a1, 257);
                          if (!result)
                          {
                            result = sub_2393F5C58(a1, 1025);
                            if (!result)
                            {
                              result = sub_2393F77B0(a1);
                              if (!result)
                              {
                                result = sub_2393F7438(a1, 0, (a2 + 8), 0x41u);
                                if (!result)
                                {
                                  result = sub_2393F77B0(a1);
                                  if (!result)
                                  {
                                    result = sub_2393F77A4(a1, 128, 0);
                                    if (!result)
                                    {
                                      result = sub_2393F77A4(a1, 0, 0x10u);
                                      if (!result)
                                      {
                                        result = sub_2393F5C58(a1, 1286);
                                        if (!result)
                                        {
                                          result = sub_2393F77A4(a1, 0, 0x11u);
                                          if (!result)
                                          {
                                            result = sub_2393F77A4(a1, 0, 0x10u);
                                            if (!result)
                                            {
                                              result = sub_2393F77B0(a1);
                                              if (!result)
                                              {
                                                result = sub_2393F77B0(a1);
                                                if (!result)
                                                {
                                                  result = sub_2393F77B0(a1);
                                                  if (!result)
                                                  {
                                                    result = sub_2393F77B0(a1);
                                                    if (!result)
                                                    {

                                                      return sub_2393F77B0(a1);
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
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2393F4168(uint64_t a1, uint64_t a2)
{
  if ((a2 - 16) >> 4 > 0xFFE)
  {
    return 0x4D800000050;
  }

  v15 = v2;
  v16 = v3;
  v11[0] = a1;
  v11[1] = a1;
  v13 = 0;
  v14 = 0;
  v12 = a2;
  if (!a1)
  {
    v12 = 0;
  }

  v10 = 0;
  sub_2393D5964(v11, &v10);
  v5 = v13;
  if (v13)
  {
    v6 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v10 == 48)
    {
      v9 = 0;
      if (sub_2393F29EC(v11, &v9))
      {
        v6 = 0x4E200000000;
      }

      else
      {
        v8 = 3;
        if (v9 >= 0x100)
        {
          v8 = 4;
        }

        if (v9 < 0x80)
        {
          v8 = 2;
        }

        if (v8 + v9 == a2)
        {
          v6 = 0;
          v5 = 0;
          return v5 | v6;
        }

        v6 = 0x4E600000000;
      }
    }

    else
    {
      v6 = 0x4DF00000000;
    }

    v5 = 80;
  }

  return v5 | v6;
}

uint64_t sub_2393F4270(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2 == 2)
  {
    *(a1 + 56) = 0;
    **(a1 + 40) = 0;
    sub_2393D6EF4((a1 + 40), "-----END %.50s-----", *a1);
    v3 = 3;
  }

  else if (v2 == 1)
  {
    v4 = *(a1 + 32);
    if ((*(a1 + 16) - v4) >= 0x30)
    {
      v5 = 48;
    }

    else
    {
      v5 = *(a1 + 16) - v4;
    }

    v6 = sub_2393D54A8((*(a1 + 8) + v4), v5, __s);
    if (v6 >= 0x41)
    {
      sub_239531F5C();
    }

    __s[v6] = 0;
    v7 = *(a1 + 40);
    *(a1 + 56) = 0;
    *v7 = 0;
    sub_2393D5C64((a1 + 40), __s);
    v8 = *(a1 + 56);
    if (*(a1 + 48) < v8)
    {
      v8 = *(a1 + 48);
    }

    *(*(a1 + 40) + v8) = 0;
    v9 = *(a1 + 32) + v5;
    *(a1 + 32) = v9;
    if (v9 < *(a1 + 16))
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    if (v2)
    {
      *(a1 + 24) = 3;
      if (*(a1 + 48) >= *(a1 + 56))
      {
        result = 0;
        goto LABEL_21;
      }

LABEL_22:
      sub_239531FF4();
    }

    *(a1 + 56) = 0;
    **(a1 + 40) = 0;
    sub_2393D6EF4((a1 + 40), "-----BEGIN %.48s-----", *a1);
    if (*(a1 + 16))
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  *(a1 + 24) = v3;
  if (*(a1 + 48) < *(a1 + 56))
  {
    goto LABEL_22;
  }

  result = *(a1 + 40);
LABEL_21:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393F4404(uint64_t a1, const void *a2, size_t a3, void *__src, size_t __n)
{
  v14 = *MEMORY[0x277D85DE8];
  if (__n + a3 >= 0x62)
  {
    v13 = 0;
    v9 = 0x1470000002FLL;
  }

  else
  {
    v13 = __n + a3;
    memcpy(__dst, __src, __n);
    memcpy(&__dst[__n], a2, a3);
    v9 = (*(*a1 + 64))(a1, __dst);
  }

  sub_2393F9144(__dst, 97);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL sub_2393F4508(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if ((a2 - 1) > 0xFD || v2 == 0)
  {
    v4 = 0;
  }

  else if (*(a1 + 32) == 1 && *(a1 + 16) == a2 && *(a1 + 24))
  {
    v4 = 1;
  }

  else
  {
    v10 = 0;
    v7 = 109;
    sub_239296DA0("f/%x/o", v8, a2);
    v4 = (*(*v2 + 16))(v2, v8, v9, &v7) == 0;
    sub_2393F9144(v9, 109);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_2393F460C(uint64_t a1, int a2, uint64_t *a3)
{
  if (*(a1 + 8))
  {
    v3 = a2;
    if ((a2 - 1) > 0xFD)
    {
      v6 = 0xC900000000;
      goto LABEL_8;
    }

    if (*(a1 + 16) && *(a1 + 16) != a2)
    {
      v6 = 0xCD00000000;
LABEL_8:
      v7 = 113;
      return v6 | v7;
    }

    if (a3[1] < 0xFF)
    {
      v6 = 0xCF00000000;
      v7 = 25;
    }

    else
    {
      sub_238DCCA80(a1);
      v9 = sub_2393D52C4(0x260uLL);
      if (v9)
      {
        v10 = v9;
        bzero(v9 + 2, 0x250uLL);
        *v10 = &unk_284BB8F28;
        v10[1] = &unk_284BB9138;
        *(a1 + 24) = v10;
        (*(*v10 + 48))(v10, 1);
        v11 = *a3;
        v13 = a3[1];
        v12 = (*(**(a1 + 24) + 16))(*(a1 + 24), v11, &v13);
        v7 = v12;
        if (v12)
        {
          sub_238DCCA80(a1);
          v6 = v12 & 0xFFFFFFFF00000000;
        }

        else
        {
          sub_238DB8498(a3, v13);
          v6 = 0;
          *(a1 + 16) = v3;
        }
      }

      else
      {
        *(a1 + 24) = 0;
        v6 = 0xD500000000;
        v7 = 11;
      }
    }
  }

  else
  {
    v6 = 0xC800000000;
    v7 = 3;
  }

  return v6 | v7;
}

uint64_t sub_2393F47E4(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 8))
  {
    v7 = 0xE900000000;
    v8 = 3;
    return v8 | v7;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 0xEA00000000;
    goto LABEL_10;
  }

  if ((a2 - 1) > 0xFD || *(a1 + 16) != a2)
  {
    v7 = 0xEB00000000;
LABEL_10:
    v8 = 113;
    return v8 | v7;
  }

  v6 = (*(*v4 + 40))(v4);
  if (sub_23928F6C0(v6, a3))
  {
    v7 = 0;
    v8 = 0;
    *(a1 + 32) = 1;
  }

  else
  {
    v7 = 0xEE00000000;
    v8 = 197;
  }

  return v8 | v7;
}

unint64_t sub_2393F48C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v6 = 0xF700000000;
    LODWORD(v5) = 3;
    return v5 | v6;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    v6 = 0xF800000000;
    goto LABEL_11;
  }

  if ((a2 - 1) > 0xFDu || *(a1 + 16) != a2)
  {
    v6 = 0xF900000000;
LABEL_11:
    LODWORD(v5) = 113;
    return v5 | v6;
  }

  if (*(a1 + 32) == 1)
  {
    v5 = sub_2393F4994(a2, v2, v4);
    if (v5)
    {
      v6 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_238DCCA80(a1);
      v6 = 0;
      LODWORD(v5) = 0;
    }
  }

  else
  {
    v6 = 0xFA00000000;
    LODWORD(v5) = 3;
  }

  return v5 | v6;
}

uint64_t sub_2393F4994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a1 - 1;
  result = 0x3A0000002FLL;
  if (v4 <= 0xFD && a2 && a3)
  {
    v19 = 0;
    sub_2393C7B90(v14);
    sub_2393C7BB8(v14, v18, 0x6DuLL);
    v13 = 0;
    v8 = sub_2393C8CE0(v14, 0x100uLL, 21, &v13);
    if (!v8)
    {
      v8 = sub_2393C818C(v14, 0, 1u);
      if (!v8)
      {
        v17 = 0;
        v11 = (*(*a3 + 56))(a3, v16);
        LODWORD(v8) = v11;
        if (v11)
        {
          v9 = v11 & 0xFFFFFFFF00000000;
          sub_2393F9144(v16, 97);
          goto LABEL_7;
        }

        v8 = sub_2393C8364(v14, 1uLL, v16, v17);
        sub_2393F9144(v16, 97);
        if (!v8)
        {
          v8 = sub_2393C8DE0(v14, v13);
          if (!v8)
          {
            v12 = v15;
            if (HIWORD(v15))
            {
              v9 = 0x5200000000;
              LODWORD(v8) = 25;
              goto LABEL_7;
            }

            sub_239296DA0("f/%x/o", v16, a1);
            v8 = (*(*a2 + 24))(a2, v16, v18, v12);
            if (!v8)
            {
              v9 = 0;
              LODWORD(v8) = 0;
              goto LABEL_7;
            }
          }
        }
      }
    }

    v9 = v8 & 0xFFFFFFFF00000000;
LABEL_7:
    sub_2393F9144(v18, 109);
    result = v8 | v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393F4BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    return sub_2393F4BF4(a2, v3, a3);
  }

  else
  {
    return 0x10800000003;
  }
}

uint64_t sub_2393F4BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) > 0xFD)
  {
    result = 0x5D00000071;
    goto LABEL_11;
  }

  v18 = 0;
  v15 = 109;
  sub_239296DA0("f/%x/o", v16, a1);
  v5 = (*(*a2 + 16))(a2, v16, v17, &v15);
  v6 = v5;
  if (!v5)
  {
    if (v15 <= 0x6DuLL)
    {
      v18 = v15;
    }

    sub_2393C5AAC(v16);
    sub_2393C5ADC(v16, v17, v18);
    v5 = sub_2393C7114(v16, 21, 256);
    v6 = v5;
    if (!v5)
    {
      v14 = 0;
      v5 = sub_2393C6A2C(v16, &v14);
      v6 = v5;
      if (!v5)
      {
        v5 = sub_2393C6FD0(v16, 0);
        v6 = v5;
        if (!v5)
        {
          v13 = 0;
          v10 = sub_2393C5F70(v16, &v13);
          if (!v10)
          {
            if (v13 != 1)
            {
              v7 = 0x7400000000;
              LODWORD(v10) = 167;
              goto LABEL_14;
            }

            v10 = sub_2393C6FD0(v16, 1);
            if (!v10)
            {
              v12 = 0uLL;
              v10 = sub_2393C76AC(v16, &v12);
              if (!v10)
              {
                if (*(&v12 + 1) > 0x61uLL)
                {
                  v7 = 0x7C00000000;
                  LODWORD(v10) = 25;
                  goto LABEL_14;
                }

                v10 = sub_2393C6A98(v16, v14);
                if (!v10)
                {
                  v11 = *(&v12 + 1);
                  memcpy(a3, v12, *(&v12 + 1));
                  if (v11 <= 0x61)
                  {
                    a3[13] = v11;
                  }

                  LODWORD(v10) = 0;
                  v7 = 0;
                  goto LABEL_14;
                }
              }
            }
          }

          v7 = v10 & 0xFFFFFFFF00000000;
LABEL_14:
          v6 = v10;
          goto LABEL_9;
        }
      }
    }
  }

  v7 = v5 & 0xFFFFFFFF00000000;
LABEL_9:
  sub_2393F9144(v17, 109);
  result = v7 | v6;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393F4E1C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (v2)
  {
    if ((a2 - 1) > 0xFD)
    {
      v6 = 0x10F00000000;
    }

    else
    {
      if (*(a1 + 24) && *(a1 + 16) == a2)
      {
        (*(*a1 + 80))(a1);
        v2 = *(a1 + 8);
      }

      sub_239296DA0("f/%x/o", v9, a2);
      v5 = (*(*v2 + 32))(v2, v9);
      if (v5 != 160)
      {
        v6 = v5 & 0xFFFFFFFF00000000;
        goto LABEL_12;
      }

      v6 = 0x11A00000000;
    }

    LODWORD(v5) = 113;
  }

  else
  {
    v6 = 0x10E00000000;
    LODWORD(v5) = 3;
  }

LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
  return v5 | v6;
}

void sub_2393F4F54(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_238DCCA80(a1);
  }
}

unint64_t sub_2393F4F64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v18[14] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (v4)
  {
    if ((a2 - 1) > 0xFDu)
    {
      v10 = 0x12C00000000;
      LODWORD(v9) = 113;
    }

    else
    {
      if (*(a1 + 32) != 1 || *(a1 + 16) != a2)
      {
        v11 = sub_2393D52C4(0x260uLL);
        if (v11)
        {
          v12 = v11;
          bzero(v11 + 2, 0x250uLL);
          *v12 = &unk_284BB8F28;
          v12[1] = &unk_284BB9138;
          v18[13] = 0;
          if (sub_2393F4BF4(a2, v4, v18) == 160)
          {
            v13 = 0x9F00000000;
            v14 = 113;
          }

          else
          {
            v15 = (*(*v12 + 64))(v12, v18);
            v14 = v15;
            if (!v15)
            {
              v15 = (*(*v12 + 24))(v12, *a3, a3[1], a4);
              v14 = v15;
            }

            v13 = v15 & 0xFFFFFFFF00000000;
          }

          sub_2393F9144(v18, 97);
          (**v12)(v12);
          j__free(v12);
          v9 = v14 | v13;
        }

        else
        {
          v9 = 0x970000000BLL;
        }

        goto LABEL_18;
      }

      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = (*(*v8 + 24))(v8, *a3, a3[1], a4);
LABEL_18:
        v10 = v9 & 0xFFFFFFFF00000000;
        goto LABEL_19;
      }

      v10 = 0x13000000000;
      LODWORD(v9) = 172;
    }
  }

  else
  {
    v10 = 0x12B00000000;
    LODWORD(v9) = 3;
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

void *sub_2393F51E4()
{
  v0 = sub_2393D52C4(0x260uLL);
  v1 = v0;
  if (v0)
  {
    bzero(v0 + 2, 0x250uLL);
    *v1 = &unk_284BB8F28;
    v1[1] = &unk_284BB9138;
  }

  return v1;
}

void sub_2393F525C(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    (**a2)(a2);

    j__free(a2);
  }
}

unint64_t sub_2393F52C0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    if ((a2 - 1) <= 0xFDu)
    {
      v16 = 0;
      v6 = (*(*a1 + 24))(a1, a2);
      v7 = *a3;
      if (v6)
      {
        if (!(*(v7 + 24))(a3, a2) || (v8 = (*(*a3 + 72))(a3, a2), !v8))
        {
LABEL_6:
          LODWORD(v8) = 0;
          v9 = 0;
LABEL_11:
          sub_2393F9144(v15, 97);
          v10 = v8;
          goto LABEL_12;
        }
      }

      else
      {
        v8 = (*(v7 + 56))(a3, a2, v15);
        if (!v8)
        {
          v13 = sub_2393D52C4(0x260uLL);
          if (!v13)
          {
            v9 = 0x15700000000;
            LODWORD(v8) = 11;
            goto LABEL_11;
          }

          v14 = v13;
          bzero(v13 + 2, 0x250uLL);
          *v14 = &unk_284BB8F28;
          v14[1] = &unk_284BB9138;
          v8 = off_284BB8F68(v14, v15);
          if (v8 || (v8 = sub_2393F4994(a2, a1[1], v14), v8))
          {
            v9 = v8 & 0xFFFFFFFF00000000;
            (**v14)(v14);
            j__free(v14);
            goto LABEL_11;
          }

          v8 = (*(*a3 + 72))(a3, a2);
          (**v14)(v14);
          j__free(v14);
          if (!v8)
          {
            goto LABEL_6;
          }
        }
      }

      v9 = v8 & 0xFFFFFFFF00000000;
      goto LABEL_11;
    }

    v9 = 0x14B00000000;
    v10 = 113;
  }

  else
  {
    v9 = 0x14A00000000;
    v10 = 3;
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

void *sub_2393F55D0(void *a1)
{
  *a1 = &unk_284BB8DE8;
  if (a1[1])
  {
    sub_238DCCA80(a1);
    a1[1] = 0;
  }

  return a1;
}

void sub_2393F5624(void *a1)
{
  *a1 = &unk_284BB8DE8;
  if (a1[1])
  {
    sub_238DCCA80(a1);
    a1[1] = 0;
  }

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2393F56A8()
{
  v1 = 0;
  if (sub_2393F888C(&v1, 8uLL))
  {
    sub_239532114();
  }

  return v1;
}

uint64_t sub_2393F56E0()
{
  v1 = 0;
  if (sub_2393F888C(&v1, 4uLL))
  {
    sub_2395321B4();
  }

  return v1;
}

uint64_t sub_2393F5718()
{
  v1 = 0;
  if (sub_2393F888C(&v1, 2uLL))
  {
    sub_239532254();
  }

  return v1;
}

uint64_t sub_2393F5750()
{
  v1 = 0;
  if (sub_2393F888C(&v1, 1uLL))
  {
    sub_2395322F4();
  }

  return v1;
}

uint64_t sub_2393F57B0(int a1, uint64_t a2, void *__dst)
{
  v4 = *(a2 + 8);
  if (v4 > 0x20)
  {
    v6 = 0x3700000000;
    v7 = 25;
  }

  else
  {
    memcpy(__dst, *a2, v4);
    v6 = 0;
    v7 = 0;
    *(__dst + 32) = *(a2 + 8);
  }

  return v7 | v6;
}

uint64_t sub_2393F5818(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = *(a2 + 32);
  v8 = *a3;
  v7 = a3[1];
  v9 = *a4;
  v10 = a4[1];
  v12 = &unk_284BB9088;
  return sub_2393F826C(&v12, a2, v6, v8, v7, v9, v10, a5, 16);
}

uint64_t sub_2393F5878(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6, void *a7)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = &unk_284BB9088;
  result = sub_2393F826C(&v17, *a2, a2[1], *a3, a3[1], *a4, a4[1], v18, 48);
  if (!result)
  {
    v16[0] = v18;
    v16[1] = v18;
    v16[3] = 0;
    v16[4] = 0;
    v16[2] = 48;
    v11 = sub_2393D5B20(v16, a5, 0x10uLL);
    v12 = sub_2393D5B20(v11, a6, 0x10uLL);
    v13 = sub_2393D5B20(v12, a7, 0x10uLL);
    result = *(v13 + 24);
    v14 = *(v13 + 32);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393F5A20(uint64_t a1, uint64_t a2)
{
  result = sub_2393F9144(a2, 32);
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_2393F5A50(void *__s1, size_t __n)
{
  result = 0;
  if (__s1)
  {
    v4 = __n;
    if (__n)
    {
      v5 = 936;
      for (i = &word_278A76740; *i != v4 || memcmp(__s1, *(i - 1), v4); i += 12)
      {
        v5 -= 24;
        if (!v5)
        {
          return 0xFFFFLL;
        }
      }

      return *(i - 8);
    }
  }

  return result;
}

BOOL sub_2393F5AD8(int a1, void *a2, _WORD *a3)
{
  v3 = 936;
  for (i = &off_278A76738; ; i += 3)
  {
    v5 = *(i - 4);
    if (v5 == a1)
    {
      break;
    }

    v3 -= 24;
    if (!v3)
    {
      return v5 == a1;
    }
  }

  *a2 = *i;
  *a3 = *(i + 4);
  return v5 == a1;
}

uint64_t sub_2393F5B1C(int a1)
{
  v1 = a1 & 0xF00;
  if (!a1)
  {
    v1 = 0;
  }

  if (a1 == 0xFFFF)
  {
    return 3840;
  }

  else
  {
    return v1;
  }
}

const char *sub_2393F5B3C(int a1)
{
  if (!a1)
  {
    return "NotSpecified";
  }

  if (a1 == 0xFFFF)
  {
    return "Unknown";
  }

  v3 = &off_278A76AE0;
  v4 = 624;
  result = "Unknown";
  while (*(v3 - 4) != a1)
  {
    v3 += 2;
    v4 -= 16;
    if (!v4)
    {
      return result;
    }
  }

  return *v3;
}

uint64_t sub_2393F5BA0(uint64_t a1, _WORD *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = 0x6E00000000;
    v6 = 771;
    return v6 | v5;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = 0x6F00000000;
    goto LABEL_10;
  }

  if (*(a1 + 40) + *(a1 + 56) + v4 <= *(a1 + 48))
  {
    if (!WORD1(v4))
    {
      v8 = sub_2393F5A50(v3, v4);
      v5 = 0;
      v6 = 0;
      *a2 = v8;
      return v6 | v5;
    }

    v5 = 0x7100000000;
LABEL_10:
    v6 = 773;
    return v6 | v5;
  }

  v5 = 0x7000000000;
  v6 = 769;
  return v6 | v5;
}

unint64_t sub_2393F5C58(uint64_t a1, int a2)
{
  v2 = &word_278A76740;
  v3 = 936;
  while (*(v2 - 8) != a2)
  {
    v2 += 12;
    v3 -= 24;
    if (!v3)
    {
      return 0x7B0000030ALL;
    }
  }

  return sub_2393F7134(a1, *(v2 - 1), *v2);
}

uint64_t sub_2393F5CB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 56) = 0;
  *(result + 8) = 0;
  *(result + 15) = 0;
  *(result + 24) = a2;
  *(result + 32) = a2 + a3;
  *(result + 40) = a2;
  *(result + 48) = a2 + a3;
  *(result + 384) = 0;
  return result;
}

uint64_t sub_2393F5CD8(uint64_t result)
{
  *result = 0;
  *(result + 56) = 0;
  *(result + 8) = 0;
  *(result + 15) = 0;
  return result;
}

unint64_t sub_2393F5CEC(uint64_t a1)
{
  if (*(a1 + 22))
  {
    v1 = 0x3500000000;
  }

  else
  {
    if (*(a1 + 21))
    {
      v1 = 0x3600000000;
      v2 = 774;
      return v2 | v1;
    }

    v3 = *(a1 + 48);
    v4 = *(a1 + 40) + *(a1 + 56) + *(a1 + 16);
    *(a1 + 40) = v4;
    *a1 = 0;
    *(a1 + 56) = 0;
    *(a1 + 8) = 0;
    *(a1 + 15) = 0;
    if (v4 != v3)
    {
      v5 = sub_2393F5D84(a1);
      v1 = v5 & 0xFFFFFFFF00000000;
      v2 = v5;
      return v2 | v1;
    }

    v1 = 0x3E00000000;
  }

  v2 = 768;
  return v2 | v1;
}

uint64_t sub_2393F5D84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 >= v2)
  {
    v6 = 0xF700000000;
LABEL_5:
    v7 = 769;
    return v7 | v6;
  }

  v3 = *v1 & 0xC0;
  *a1 = v3;
  v4 = *v1;
  *(a1 + 20) = (v4 & 0x20) != 0;
  v5 = *v1 & 0x1F;
  *(a1 + 1) = v5;
  if (v5 == 31)
  {
    v6 = 0xFE00000000;
    v7 = 774;
    return v7 | v6;
  }

  v9 = v1 + 1;
  if ((v1 + 1) >= v2)
  {
    v6 = 0x10100000000;
    goto LABEL_5;
  }

  v10 = *v9;
  if ((v10 & 0x80000000) != 0)
  {
    *(a1 + 16) = 0;
    v11 = v1 + 2;
    if (v10 == -128)
    {
      v10 = 0;
      *(a1 + 21) = 1;
    }

    else
    {
      v12 = *v9 & 0x7F;
      if ((*v9 & 0x7F) != 0)
      {
        v10 = 0;
        v7 = 769;
        while (1)
        {
          if (v11 >= v2)
          {
            v6 = 0x11600000000;
            return v7 | v6;
          }

          if (HIBYTE(v10))
          {
            break;
          }

          v13 = *v11++;
          v10 = v13 | (v10 << 8);
          *(a1 + 16) = v10;
          if (!--v12)
          {
            goto LABEL_20;
          }
        }

        v6 = 0x11700000000;
        v7 = 776;
        return v7 | v6;
      }

      v10 = 0;
LABEL_20:
      *(a1 + 21) = 0;
    }
  }

  else
  {
    *(a1 + 16) = v10;
    *(a1 + 21) = 0;
    v11 = v1 + 2;
  }

  v14 = v2 - v11;
  if (HIDWORD(v14))
  {
    v6 = 0x11D00000000;
    goto LABEL_25;
  }

  if (v10 > v14)
  {
    v6 = 0x11E00000000;
LABEL_25:
    v7 = 777;
    return v7 | v6;
  }

  v15 = v11 - v1;
  if (HIDWORD(v15))
  {
    v6 = 0x11F00000000;
    goto LABEL_25;
  }

  *(a1 + 56) = v15;
  if (v5 | v3)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v10 == 0) & ((v4 >> 5) ^ 1);
  }

  v6 = 0;
  v7 = 0;
  *(a1 + 22) = v16;
  *(a1 + 8) = v11;
  return v7 | v6;
}

uint64_t sub_2393F5F1C(uint64_t a1)
{
  if (*(a1 + 20) == 1)
  {
    return sub_2393F5F5C(a1, 0);
  }

  else
  {
    return 0x4500000303;
  }
}

uint64_t sub_2393F5F5C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 384);
  if (v2 != 10)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 48);
    *(a1 + 64 + 32 * v2) = *(a1 + 40);
    v7 = *(a1 + 384);
    v8 = a1 + 64 + 32 * v7;
    v9 = *(a1 + 16);
    *(v8 + 8) = *(a1 + 56);
    *(v8 + 12) = v9;
    v10 = *(a1 + 21);
    *(v8 + 16) = v10;
    *(v8 + 24) = v6;
    *(a1 + 384) = v7 + 1;
    *(a1 + 40) = v5 + a2;
    if (v10)
    {
LABEL_4:
      v3 = 0;
      v4 = 0;
      *a1 = 0;
      *(a1 + 56) = 0;
      *(a1 + 8) = 0;
      *(a1 + 15) = 0;
      return v4 | v3;
    }

    v11 = *(a1 + 32) - v5;
    if (HIDWORD(v11))
    {
      v3 = 0x7600000000;
    }

    else
    {
      if (v9 <= v11)
      {
        *(a1 + 48) = v5 + v9;
        goto LABEL_4;
      }

      v3 = 0x7700000000;
    }

    v4 = 777;
    return v4 | v3;
  }

  v3 = 0x6A00000000;
  v4 = 772;
  return v4 | v3;
}

uint64_t sub_2393F6030(uint64_t a1)
{
  v1 = *(a1 + 384);
  if (v1)
  {
    v2 = (v1 - 1);
    v3 = a1 + 32 * v2;
    *(a1 + 384) = v2;
    if (*(v3 + 80))
    {
      v4 = 0x8600000000;
      v5 = 774;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = *(v3 + 64) + *(v3 + 72) + *(v3 + 76);
      v7 = *(v3 + 88);
      *(a1 + 40) = v6;
      *(a1 + 48) = v7;
      *a1 = 0;
      *(a1 + 56) = 0;
      *(a1 + 8) = 0;
      *(a1 + 15) = 0;
    }
  }

  else
  {
    v4 = 0x8200000000;
    v5 = 771;
  }

  return v5 | v4;
}

uint64_t sub_2393F60B0(uint64_t a1, void *a2, _DWORD *a3)
{
  if (*(a1 + 20) == 1)
  {
    v3 = 0;
    v4 = 0;
    *a2 = *(a1 + 40);
    *a3 = *(a1 + 16) + *(a1 + 56);
  }

  else
  {
    v3 = 0x5100000000;
    v4 = 771;
  }

  return v4 | v3;
}

unint64_t sub_2393F6100(_BYTE *a1)
{
  if (*a1 || (v1 = a1[1], (v1 - 3) > 1))
  {
    v2 = 0x5C00000000;
    v3 = 771;
  }

  else if (a1[20])
  {
    v2 = 0x5E00000000;
    v3 = 774;
  }

  else
  {
    v5 = sub_2393F5F5C(a1, v1 == 3);
    v2 = v5 & 0xFFFFFFFF00000000;
    v3 = v5;
  }

  return v3 | v2;
}

uint64_t sub_2393F6188(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v3 > 8)
      {
        v4 = 0x9D00000000;
        v5 = 777;
      }

      else if (*(a1 + 40) + *(a1 + 56) + v3 <= *(a1 + 48))
      {
        if (*v2 < 0 && v3 != 8)
        {
          memset(v9, 255, 8 - v3);
        }

        memcpy(v9 + 8 - v3, v2, v3);
        v4 = 0;
        v5 = 0;
        *a2 = bswap64(v9[0]);
      }

      else
      {
        v4 = 0x9E00000000;
        v5 = 769;
      }
    }

    else
    {
      v4 = 0x9C00000000;
      v5 = 773;
    }
  }

  else
  {
    v4 = 0x9B00000000;
    v5 = 771;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 | v4;
}

uint64_t sub_2393F62C0(uint64_t a1, BOOL *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = 0xB000000000;
    v4 = 771;
    return v4 | v3;
  }

  if (*(a1 + 16) != 1)
  {
    v3 = 0xB100000000;
LABEL_7:
    v4 = 773;
    return v4 | v3;
  }

  if (*(a1 + 40) + *(a1 + 56) + 1 <= *(a1 + 48))
  {
    v5 = *v2;
    if (v5 == 255 || v5 == 0)
    {
      v3 = 0;
      v4 = 0;
      *a2 = v5 != 0;
      return v4 | v3;
    }

    v3 = 0xB300000000;
    goto LABEL_7;
  }

  v3 = 0xB200000000;
  v4 = 769;
  return v4 | v3;
}

unint64_t sub_2393F6364(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (*(a1 + 40) + *(a1 + 56) + v4 <= *(a1 + 48))
      {
        if (v4 == 13 && *(v3 + 12) == 90)
        {
          sub_238DB9BD8(v9, v3, v4);
          v7 = sub_2393F6940(a2, v9);
          v5 = v7 & 0xFFFFFFFF00000000;
          v6 = v7;
        }

        else
        {
          v5 = 0xC000000000;
          v6 = 774;
        }
      }

      else
      {
        v5 = 0xBF00000000;
        v6 = 769;
      }
    }

    else
    {
      v5 = 0xBE00000000;
      v6 = 773;
    }
  }

  else
  {
    v5 = 0xBD00000000;
    v6 = 771;
  }

  return v6 | v5;
}

unint64_t sub_2393F6438(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (*(a1 + 40) + *(a1 + 56) + v4 <= *(a1 + 48))
      {
        if (v4 == 15 && *(v3 + 14) == 90)
        {
          sub_238DB9BD8(v9, v3, v4);
          v7 = sub_2393F6940(a2, v9);
          v5 = v7 & 0xFFFFFFFF00000000;
          v6 = v7;
        }

        else
        {
          v5 = 0xCB00000000;
          v6 = 774;
        }
      }

      else
      {
        v5 = 0xCA00000000;
        v6 = 769;
      }
    }

    else
    {
      v5 = 0xC900000000;
      v6 = 773;
    }
  }

  else
  {
    v5 = 0xC800000000;
    v6 = 771;
  }

  return v6 | v5;
}

uint64_t sub_2393F650C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v3 > 5)
      {
        v4 = 0xE000000000;
        v5 = 774;
      }

      else if (*(a1 + 40) + *(a1 + 56) + v3 <= *(a1 + 48))
      {
        if (v3 == 1)
        {
          v4 = 0;
          v5 = 0;
          *a2 = 0;
        }

        else
        {
          v7 = __rbit32(*(v2 + 1)) >> 24;
          *a2 = v7;
          if (*(a1 + 16) < 3u)
          {
            v4 = 0;
            v5 = 0;
          }

          else
          {
            v8 = 8;
            v9 = 2;
            do
            {
              v4 = 0;
              v5 = 0;
              v7 |= __rbit32(*(*(a1 + 8) + v9)) >> 24 << v8;
              *a2 = v7;
              ++v9;
              v8 += 8;
            }

            while (v9 < *(a1 + 16));
          }
        }
      }

      else
      {
        v4 = 0xE100000000;
        v5 = 769;
      }
    }

    else
    {
      v4 = 0xDF00000000;
      v5 = 773;
    }
  }

  else
  {
    v4 = 0xDE00000000;
    v5 = 771;
  }

  return v5 | v4;
}

unint64_t sub_2393F6624(uint64_t a1, const char *a2, const char *a3)
{
  v5 = 0;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = "  ";
  }

  while (1)
  {
    while (1)
    {
      v7 = sub_2393F5CEC(a1);
      v8 = v7;
      if (v7)
      {
        break;
      }

      if (a2)
      {
        printf("%s", a2);
      }

      for (i = v5; i; --i)
      {
        printf("%s", v6);
      }

      if (*(a1 + 22))
      {
        printf("END-OF-CONTENTS ");
      }

      else
      {
        v10 = (((*a1 ^ 0x80) >> 6) | (4 * *a1));
        if (v10 > 1)
        {
          if (v10 == 3)
          {
            v13 = *(a1 + 1);
            printf("[APPLICATION %lu] ");
          }

          else if (v10 == 2)
          {
            switch(*(a1 + 1))
            {
              case 1:
                printf("BOOLEAN ");
                break;
              case 2:
                printf("INTEGER ");
                break;
              case 3:
                printf("BIT STRING ");
                break;
              case 4:
                printf("OCTET STRING ");
                break;
              case 5:
                printf("NULL ");
                break;
              case 6:
                printf("OBJECT IDENTIFIER ");
                break;
              case 7:
                printf("OBJECT DESCRIPTOR ");
                break;
              case 8:
                printf("EXTERNAL ");
                break;
              case 9:
                printf("REAL ");
                break;
              case 0xA:
                printf("ENUMERATED ");
                break;
              case 0xC:
              case 0x12:
              case 0x13:
              case 0x14:
              case 0x15:
              case 0x16:
              case 0x19:
              case 0x1A:
              case 0x1B:
              case 0x1C:
                printf("STRING ");
                break;
              case 0x10:
                printf("SEQUENCE ");
                break;
              case 0x11:
                printf("SET ");
                break;
              case 0x17:
              case 0x18:
                printf("TIME ");
                break;
              default:
                v18 = *(a1 + 1);
                printf("[UNIVERSAL %lu] ");
                break;
            }
          }
        }

        else
        {
          v11 = *(a1 + 1);
          if (((*a1 ^ 0x80) >> 6) | (4 * *a1))
          {
            printf("[PRIVATE %lu] ");
          }

          else
          {
            printf("[%lu] ");
          }
        }
      }

      if (*(a1 + 20) == 1)
      {
        printf("(constructed) ");
      }

      if (*(a1 + 21) == 1)
      {
        puts("Length = indefinite");
      }

      else
      {
        printf("Length = %ld\n", *(a1 + 16));
      }

      if (*(a1 + 20) == 1)
      {
        v8 = sub_2393F5F5C(a1, 0);
        if (v8)
        {
          v14 = "ASN1Reader::EnterConstructedType() failed: %s\n";
          goto LABEL_48;
        }

        v12 = 1;
        goto LABEL_32;
      }
    }

    if (v7 != 768)
    {
      v14 = "ASN1Reader::Next() failed: %s\n";
LABEL_48:
      v15 = sub_2393C9138();
      printf(v14, v15);
      v16 = v8;
      return v16 | v8 & 0xFFFFFFFF00000000;
    }

    if (!*(a1 + 384))
    {
      break;
    }

    v8 = sub_2393F6030(a1);
    if (v8)
    {
      v14 = "ASN1Reader::ExitConstructedType() failed: %s\n";
      goto LABEL_48;
    }

    v12 = -1;
LABEL_32:
    v5 += v12;
  }

  v16 = 768;
  return v16 | v8 & 0xFFFFFFFF00000000;
}

uint64_t sub_2393F6940(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a2 + 8);
    if ((v3 | 2) == 0xF)
    {
      if (v2[v3 - 1] == 90)
      {
        v4 = 0;
        v5 = 773;
        do
        {
          v6 = v2[v4];
          if (v6 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
          {
            v11 = 0x5000000000;
            return v5 | v11;
          }

          ++v4;
        }

        while (v3 - 1 != v4);
        v7 = (v2[1] + 10 * *v2 - 16);
        if (v3 == 15)
        {
          v8 = v2[3] + 10 * v2[2] - 16;
          v9 = v2 + 4;
          v10 = 100 * v7 + v8;
        }

        else
        {
          v9 = v2 + 2;
          if (v7 <= 0x31)
          {
            v12 = 2000;
          }

          else
          {
            v12 = 1900;
          }

          v10 = v12 + v7;
        }

        *a1 = v10;
        v13 = v9[1] + 10 * *v9;
        *(a1 + 2) = v13 - 16;
        v14 = v9[3] + 10 * v9[2] - 16;
        *(a1 + 3) = v14;
        v15 = v9[5] + 10 * v9[4] - 16;
        *(a1 + 4) = v15;
        v16 = v9[7] + 10 * v9[6] - 16;
        *(a1 + 5) = v16;
        v17 = v9[9] + 10 * v9[8] - 16;
        *(a1 + 6) = v17;
        if ((v13 - 17) > 0xBu)
        {
          v11 = 0x6300000000;
        }

        else if ((v14 - 1) > 0x1Eu)
        {
          v11 = 0x6400000000;
        }

        else if (v15 > 0x17u)
        {
          v11 = 0x6500000000;
        }

        else if (v16 > 0x3Bu)
        {
          v11 = 0x6600000000;
        }

        else
        {
          if (v17 <= 0x3Bu)
          {
            v11 = 0;
            v5 = 0;
            return v5 | v11;
          }

          v11 = 0x6700000000;
        }

        v5 = 773;
        return v5 | v11;
      }

      v11 = 0x4D00000000;
    }

    else
    {
      v11 = 0x4C00000000;
    }

    v5 = 774;
  }

  else
  {
    v11 = 0x4A00000000;
    v5 = 771;
  }

  return v5 | v11;
}

uint64_t sub_2393F6B2C(unsigned __int16 *a1, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *a1;
    v4 = a2[1];
    if ((v3 - 2050) > 0xFF9Bu)
    {
      if (v4 >= 0xD)
      {
        goto LABEL_7;
      }

      v5 = 0x7D00000000;
    }

    else
    {
      if (v4 >= 0xF)
      {
        v2[1] = (((5243 * (v3 >> 2)) >> 17) - 10 * ((6554 * ((5243 * (v3 >> 2)) >> 17)) >> 16)) | 0x30;
        *v2 = (((8389 * (v3 >> 3)) >> 20) - 10 * ((103 * ((8389 * (v3 >> 3)) >> 20)) >> 10)) | 0x30;
        v2 += 2;
        LOWORD(v3) = *a1;
LABEL_7:
        v2[1] = (v3 % 0xAu) | 0x30;
        *v2 = (v3 / 0xAu - 10 * ((6554 * (v3 / 0xAu)) >> 16)) | 0x30;
        v7 = *(a1 + 2) / 0xAu;
        v2[3] = (*(a1 + 2) % 0xAu) | 0x30;
        v2[2] = (v7 - 10 * ((26 * v7) >> 8)) | 0x30;
        v8 = *(a1 + 3) / 0xAu;
        v2[5] = (*(a1 + 3) % 0xAu) | 0x30;
        v2[4] = (v8 - 10 * ((26 * v8) >> 8)) | 0x30;
        v9 = *(a1 + 4) / 0xAu;
        v2[7] = (*(a1 + 4) % 0xAu) | 0x30;
        v2[6] = (v9 - 10 * ((26 * v9) >> 8)) | 0x30;
        v10 = *(a1 + 5) / 0xAu;
        v2[9] = (*(a1 + 5) % 0xAu) | 0x30;
        v2[8] = (v10 - 10 * ((26 * v10) >> 8)) | 0x30;
        v11 = *(a1 + 6) / 0xAu;
        v12 = (*(a1 + 6) % 0xAu) | 0x30;
        v2[12] = 90;
        v13 = v2 + 12;
        *(v13 - 1) = v12;
        *(v13 - 2) = (v11 - 10 * ((26 * v11) >> 8)) | 0x30;
        sub_2393F6D60(a2, &v13[-*a2 + 1]);
        v5 = 0;
        v6 = 0;
        return v6 | v5;
      }

      v5 = 0x7800000000;
    }

    v6 = 769;
    return v6 | v5;
  }

  v5 = 0x7000000000;
  v6 = 771;
  return v6 | v5;
}

uint64_t sub_2393F6D60(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    sub_239530E0C();
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2393F6DA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a2 + a3;
  *(result + 16) = a2;
  *(result + 104) = 0;
  return result;
}

uint64_t sub_2393F6DBC(uint64_t result)
{
  *(result + 104) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  return result;
}

uint64_t sub_2393F6DCC(void *a1)
{
  if (*a1)
  {
    return a1[2] - *a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2393F6DE8(void *a1, unint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
    result = 0;
    goto LABEL_11;
  }

  v2 = 0;
  v6[0] = bswap64(a2);
  do
  {
    if (*(v6 + v2) == 255)
    {
      v3 = v2 + 1;
      if ((*(v6 + v2 + 1) & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_8;
    }

    if (*(v6 + v2))
    {
      break;
    }

    v3 = v2 + 1;
    if (*(v6 + v2 + 1) < 0)
    {
      break;
    }

LABEL_8:
    v2 = v3;
  }

  while (v3 != 7);
  result = sub_2393F6EB4(a1, 0, 2u, 0, v6 + v2, (8 - v2));
LABEL_11:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393F6EB4(uint64_t a1, char a2, unsigned int a3, int a4, const void *a5, unsigned int a6)
{
  v6 = *a1;
  if (*a1)
  {
    v10 = sub_2393F6FBC(a1, a2, a3, a4, a6);
    if (v10)
    {
      v6 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      memcpy(*(a1 + 16), a5, a6);
      LODWORD(v10) = 0;
      v6 = 0;
      *(a1 + 16) += a6;
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  return v6 | v10;
}

uint64_t sub_2393F6F40(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[2];
    if ((v3 + 3) <= a1[1])
    {
      v2 = 0;
      v4 = 0;
      a1[2] = (v3 + 1);
      *v3 = 1;
      *a1[2] = 1;
      v5 = a1[2];
      a1[2] = v5 + 2;
      *(v5 + 1) = a2 << 31 >> 31;
    }

    else
    {
      v4 = 0x17100000000;
      v2 = 770;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | v2;
}

uint64_t sub_2393F6FBC(uint64_t a1, char a2, unsigned int a3, int a4, int a5)
{
  if (!*a1)
  {
    v11 = 0;
    v12 = 0;
    return v12 | v11;
  }

  if (a3 > 0x1E)
  {
    v11 = 0x16500000000;
LABEL_24:
    v12 = 774;
    return v12 | v11;
  }

  if (a5 < -1)
  {
    v11 = 0x16800000000;
    goto LABEL_24;
  }

  if (HIBYTE(a5))
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  if (a5 >= 0x10000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (a5 >= 0x100)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if (a5 >= 128)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (a5 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 16);
  if (&v10[v9 + (v8 + 1)] <= *(a1 + 8))
  {
    if (a4)
    {
      v14 = 32;
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 16) = v10 + 1;
    *v10 = v14 | a2 | a3;
    if (a5 == -1)
    {
      if (*(a1 + 104) > 9u)
      {
        v11 = 0x18500000000;
        v12 = 771;
        return v12 | v11;
      }

      **(a1 + 16) = -1;
      v16 = *(a1 + 16);
      v17 = *(a1 + 104);
      *(a1 + 104) = v17 + 1;
      *(a1 + 8 * v17 + 24) = v16;
    }

    else
    {
      v15 = *(a1 + 16);
      if (v8 == 1)
      {
        *v15 = a5;
      }

      else
      {
        *v15 = (v8 - 1) | 0x80;
        v18 = (v8 - 1);
        do
        {
          v15[v18] = a5;
          a5 >>= 8;
          --v18;
        }

        while (v18);
      }
    }

    v11 = 0;
    v12 = 0;
    *(a1 + 16) += v8;
  }

  else
  {
    v11 = 0x17100000000;
    v12 = 770;
  }

  return v12 | v11;
}

unint64_t sub_2393F7198(uint64_t a1, char a2, unsigned int a3, int a4, uint64_t a5)
{
  v13 = 0uLL;
  v9 = sub_2393C60CC(a5, &v13);
  if (v9)
  {
    goto LABEL_2;
  }

  if (*(&v13 + 1) >> 31)
  {
    v10 = 0x15200000000;
    LODWORD(v9) = 776;
    return v10 | v9;
  }

  v10 = *a1;
  if (!*a1)
  {
    LODWORD(v9) = 0;
    return v10 | v9;
  }

  v9 = sub_2393F6FBC(a1, a2, a3, a4, SDWORD2(v13));
  if (v9)
  {
LABEL_2:
    v10 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    v11 = *(&v13 + 1);
    memcpy(*(a1 + 16), v13, *(&v13 + 1));
    LODWORD(v9) = 0;
    v10 = 0;
    *(a1 + 16) += v11;
  }

  return v10 | v9;
}

unint64_t sub_2393F726C(unint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = HIBYTE(a2);
    v6 = HIBYTE(a2) != 0;
    if (HIBYTE(a2))
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }

    v8 = 1;
    if (a2 >= 0x10000)
    {
      v9 = v7;
    }

    else
    {
      v6 = 0;
      v9 = 3;
    }

    if (a2 >= 0x100)
    {
      v10 = a2 >= 0x10000;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    if (a2 >= 0x100)
    {
      v11 = v9;
    }

    else
    {
      v6 = 0;
      v11 = 2;
    }

    if (a2)
    {
      v12 = v8;
    }

    else
    {
      v12 = 0;
    }

    if (a2)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = v6;
    }

    else
    {
      v14 = 0;
    }

    if (a2)
    {
      v15 = v11;
    }

    else
    {
      v15 = 1;
    }

    v16 = sub_2393F6FBC(a1, 0, 3u, 0, v15);
    if (v16)
    {
      v2 = v16 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (a2)
      {
        *(a1[2] + 1) = __rbit32(a2) >> 24;
        if (v12)
        {
          v17 = a2 >> 8;
          *(a1[2] + 2) = __rbit32(a2 >> 8) >> 24;
          if (v13)
          {
            v17 = HIWORD(a2);
            *(a1[2] + 3) = __rbit32(HIWORD(a2)) >> 24;
            if (v14)
            {
              *(a1[2] + 4) = __rbit32(v5) >> 24;
              v17 = v5;
            }
          }
        }

        else
        {
          v17 = a2;
        }

        v19 = HIWORD(v17) != 0;
        if (HIWORD(v17))
        {
          v17 >>= 16;
        }

        v20 = 16 * v19;
        if (v17 > 0xFF)
        {
          v17 >>= 8;
          v20 = (16 * v19) | 8;
        }

        if (v17 > 0xF)
        {
          v17 >>= 4;
          v20 |= 4u;
        }

        if (v17 > 3)
        {
          v17 >>= 2;
          v20 |= 2u;
        }

        v18 = 7 - (v20 | (v17 >> 1));
      }

      else
      {
        LOBYTE(v18) = 0;
      }

      LODWORD(v16) = 0;
      v2 = 0;
      *a1[2] = v18;
      a1[2] += v15;
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  return v2 | v16;
}

unint64_t sub_2393F7438(uint64_t a1, char a2, const void *a3, unsigned int a4)
{
  v4 = *a1;
  if (*a1)
  {
    v9 = sub_2393F6FBC(a1, 0, 3u, 0, a4 + 1);
    if (v9)
    {
      v4 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      v10 = *(a1 + 16);
      *(a1 + 16) = v10 + 1;
      *v10 = a2;
      memcpy(*(a1 + 16), a3, a4);
      LODWORD(v9) = 0;
      v4 = 0;
      *(a1 + 16) += a4;
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  return v4 | v9;
}

void *sub_2393F74E4(uint64_t a1, const void *a2, size_t a3)
{
  result = memcpy(*(a1 + 16), a2, a3);
  *(a1 + 16) += a3;
  return result;
}

unint64_t sub_2393F751C(uint64_t a1, char a2, uint64_t a3)
{
  v10 = 0uLL;
  v5 = sub_2393C60CC(a3, &v10);
  if (v5)
  {
    goto LABEL_2;
  }

  if ((*(&v10 + 1) + 1) >> 31)
  {
    v6 = 0xED00000000;
    LODWORD(v5) = 776;
    return v6 | v5;
  }

  if (!*a1)
  {
    LODWORD(v5) = 0;
    v6 = 0;
    return v6 | v5;
  }

  v5 = sub_2393F6FBC(a1, 0, 3u, 0, DWORD2(v10) + 1);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v7 = *(a1 + 16);
    *(a1 + 16) = v7 + 1;
    *v7 = a2;
    v8 = *(&v10 + 1);
    memcpy(*(a1 + 16), v10, *(&v10 + 1));
    LODWORD(v5) = 0;
    v6 = 0;
    *(a1 + 16) += v8;
  }

  return v6 | v5;
}

unint64_t sub_2393F75FC(void *a1, unsigned __int16 *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v7 = v9;
    v8 = 15;
    result = sub_2393F6B2C(a2, &v7);
    if (!result)
    {
      if (*a2 <= 0x801u)
      {
        v5 = 23;
      }

      else
      {
        v5 = 24;
      }

      result = sub_2393F6EB4(a1, 0, v5, 0, v9, v8);
    }
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393F76AC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[2];
    if ((v2 + 2) <= a1[1])
    {
      v1 = 0;
      v3 = 0;
      a1[2] = (v2 + 1);
      *v2 = 5;
      *a1[2]++ = 0;
    }

    else
    {
      v1 = 0x17100000000;
      v3 = 770;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 | v1;
}

uint64_t sub_2393F771C(uint64_t *a1, const void *a2, size_t __n)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = a1[2];
    if (v5 + __n <= a1[1])
    {
      v7 = __n;
      memcpy(v5, a2, __n);
      v3 = 0;
      v6 = 0;
      a1[2] += v7;
    }

    else
    {
      v3 = 0x11A00000000;
      v6 = 770;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 | v3;
}

uint64_t sub_2393F77B4(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (!*(a1 + 104))
    {
      v1 = 0x19400000000;
      goto LABEL_7;
    }

    v3 = *(a1 + 8 * (*(a1 + 104) - 1) + 24);
    if (*v3 != 255)
    {
      v1 = 0x19800000000;
LABEL_7:
      v4 = 771;
      return v4 | v1;
    }

    v6 = *(a1 + 16);
    v7 = v6 + ~v3;
    if (!(v7 >> 31))
    {
      if (v7 >= 0x80)
      {
        if (v7 >= 0x100)
        {
          if (v7 >= 0x10000)
          {
            if (v7 >> 24)
            {
              v8 = 5;
            }

            else
            {
              v8 = 4;
            }
          }

          else
          {
            v8 = 3;
          }
        }

        else
        {
          v8 = 2;
        }

        v9 = v6 + v8 - 1;
        *(a1 + 16) = v9;
        if (v9 > *(a1 + 8))
        {
          v1 = 0x1A700000000;
          v4 = 770;
          return v4 | v1;
        }

        v10 = v8;
        memmove((v3 + v8), (v3 + 1), v7);
        *v3 = (v10 - 1) | 0x80;
        v11 = (v10 - 1);
        do
        {
          *(v3 + v11) = v7;
          LODWORD(v7) = v7 >> 8;
          --v11;
        }

        while (v11);
      }

      else
      {
        *v3 = v7;
      }

      v1 = 0;
      v4 = 0;
      --*(a1 + 104);
      return v4 | v1;
    }

    v1 = 0x19D00000000;
    v4 = 776;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v1;
}

unint64_t sub_2393F7918(uint64_t *a1, char a2, unsigned int a3, int a4)
{
  v4 = *a1;
  if (*a1)
  {
    v7 = sub_2393F6FBC(a1, a2, a3, 0, -1);
    v8 = v7 & 0xFFFFFFFF00000000;
    if (v7)
    {
      LODWORD(v4) = v7;
    }

    else
    {
      LODWORD(v4) = 0;
    }

    if (!v7)
    {
      v8 = 0;
      if (a4)
      {
        v9 = a1[2];
        if (v9 >= a1[1])
        {
          v8 = 0x13600000000;
          LODWORD(v4) = 770;
        }

        else
        {
          LODWORD(v4) = 0;
          v8 = 0;
          a1[2] = (v9 + 1);
          *v9 = 0;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 | v4;
}

uint64_t sub_2393F79BC(unsigned int a1)
{
  if (HIBYTE(a1))
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x10000)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (a1 >= 0x100)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (a1 >= 128)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

_BYTE *sub_2393F79F8(_BYTE *result, int a2, int a3)
{
  v3 = a2 - 1;
  if (a2 == 1)
  {
    *result = a3;
  }

  else
  {
    *result = v3 | 0x80;
    v4 = &result[v3];
    v5 = (a2 - 1) - 1;
    do
    {
      *v4-- = a3;
      a3 >>= 8;
    }

    while (v5--);
  }

  return result;
}

uint64_t sub_2393F7A34(char *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, char *a8, char *a9, uint64_t a10)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v24 = 0;
  if (a2 | a8)
  {
    v14 = a8;
  }

  else
  {
    v14 = &v26;
  }

  if (a1 | a2)
  {
    v15 = a1;
  }

  else
  {
    v15 = &v24;
  }

  if (!a8 || a2)
  {
    if (v15)
    {
      if (v14)
      {
        if (a6)
        {
          if (a7)
          {
            if (a7 >> 31)
            {
              v16 = 0xC30000002FLL;
            }

            else if (a9)
            {
              if (a10 == 16)
              {
                v17 = sub_23942F8E8();
                v18 = sub_23942D3E0(v17, a5, 16, 16);
                if (v18)
                {
                  v19 = v18;
                  v20 = sub_23942D738(v18, v14, a9, &v25, 0x10uLL, a6, a7, v15, a2, 0, 0);
                  v21 = 0xD5000000ACLL;
                  if (v25 == 16)
                  {
                    v21 = 0;
                  }

                  if (v20 == 1)
                  {
                    v16 = v21;
                  }

                  else
                  {
                    v16 = 0xD4000000ACLL;
                  }

                  sub_23942D4E8(v19);
                }

                else
                {
                  v16 = 0xD00000000BLL;
                }
              }

              else
              {
                v16 = 0xC60000002FLL;
              }
            }

            else
            {
              v16 = 0xC40000002FLL;
            }
          }

          else
          {
            v16 = 0xC20000002FLL;
          }
        }

        else
        {
          v16 = 0xC10000002FLL;
        }
      }

      else
      {
        v16 = 0xC00000002FLL;
      }
    }

    else
    {
      v16 = 0xBF0000002FLL;
    }
  }

  else
  {
    v16 = 0xBE0000002FLL;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_2393F7C50(char *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  if (a1 | a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = &v21;
  }

  if (a2 | a10)
  {
    v11 = a10;
  }

  else
  {
    v11 = &v22;
  }

  if (v10)
  {
    if (v11)
    {
      if (a5)
      {
        if (a6 == 16)
        {
          if (a8)
          {
            if (a9)
            {
              v15 = sub_23942F8E8();
              v16 = sub_23942D3E0(v15, a7, 16, 16);
              if (v16)
              {
                v17 = v16;
                if (sub_23942D9B0(v16, v11, a8, a9, v10, a2) == 1)
                {
                  v18 = 0;
                }

                else
                {
                  v18 = 0x158000000ACLL;
                }

                sub_23942D4E8(v17);
              }

              else
              {
                v18 = 0x1540000000BLL;
              }
            }

            else
            {
              v18 = 0x14E0000002FLL;
            }
          }

          else
          {
            v18 = 0x14D0000002FLL;
          }
        }

        else
        {
          v18 = 0x1480000002FLL;
        }
      }

      else
      {
        v18 = 0x1460000002FLL;
      }
    }

    else
    {
      v18 = 0x1450000002FLL;
    }
  }

  else
  {
    v18 = 0x1440000002FLL;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_2393F7E10(int8x16_t *a1, size_t a2, _DWORD *a3)
{
  if (!a1)
  {
    v3 = 0x1A100000000;
LABEL_6:
    v4 = 47;
    return v4 | v3;
  }

  if (!a3)
  {
    v3 = 0x1A200000000;
    goto LABEL_6;
  }

  sub_2394324A0(a1, a2, a3);
  v3 = 0;
  v4 = 0;
  return v4 | v3;
}

uint64_t sub_2393F7E60(unsigned int *a1, size_t a2, _DWORD *a3)
{
  if (!a1)
  {
    v3 = 0x1AC00000000;
LABEL_6:
    v4 = 47;
    return v4 | v3;
  }

  if (!a3)
  {
    v3 = 0x1AD00000000;
    goto LABEL_6;
  }

  sub_239443030(a1, a2, a3);
  v3 = 0;
  v4 = 0;
  return v4 | v3;
}

uint64_t *sub_2393F7EB8(uint64_t *a1)
{
  sub_239431130(*a1);
  *a1 = 0;
  sub_239450194(a1, 0x78uLL);
  return a1;
}

void sub_2393F7EF4(uint64_t *a1)
{
  sub_239431130(*a1);
  *a1 = 0;

  sub_239450194(a1, 0x78uLL);
}

uint64_t sub_2393F7F38(uint64_t **a1)
{
  sub_23943106C();
  if (v2)
  {
    v3 = v2;
    *a1 = v2;
    v4 = sub_2394316DC();
    v5 = sub_23943134C(v3, v4);
    if (v5 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x1D800000000;
    }

    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 172;
    }
  }

  else
  {
    v6 = 0x1D200000000;
    v7 = 172;
  }

  return v7 | v6;
}

uint64_t sub_2393F7FB4(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v2 = sub_239431484(result);
    return v2 == sub_2394316DC();
  }

  return result;
}

uint64_t sub_2393F7FF0(uint64_t *a1)
{
  v2 = sub_2393F7FB4(a1);
  v3 = *a1;
  if (v2)
  {
    if (v3)
    {
      v4 = sub_2394313C4(v3);
      v5 = 0x1F600000000;
      v6 = 172;
      if (v4 == 1)
      {
        v6 = 0;
        v5 = 0;
      }
    }

    else
    {
      v5 = 0x1F200000000;
      v6 = 172;
    }
  }

  else
  {
    sub_239431130(v3);
    *a1 = 0;
    sub_239450194(a1, 0x78uLL);
    v5 = 0x1EF00000000;
    v6 = 28;
  }

  return v5 | v6;
}

unint64_t sub_2393F80A0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_2393F7FB4(a1);
  v5 = *a1;
  if ((v4 & 1) == 0)
  {
    sub_239431130(*a1);
    *a1 = 0;
    sub_239450194(a1, 0x78uLL);
    v10 = 0x1FE00000000;
    v11 = 28;
    return v10 | v11;
  }

  sub_23943106C();
  if (!v6)
  {
    v10 = 0x20400000000;
LABEL_8:
    v11 = 172;
    return v10 | v11;
  }

  v7 = v6;
  if (sub_2394311C8(v6, v5) != 1)
  {
    v10 = 0x20600000000;
    goto LABEL_8;
  }

  v8 = sub_2393F817C(a1, a2);
  v9 = v8;
  v10 = v8 & 0xFFFFFFFF00000000;
  sub_239431130(v5);
  *a1 = v7;
  v11 = v9;
  return v10 | v11;
}

uint64_t sub_2393F817C(uint64_t *a1, uint64_t *a2)
{
  if (a2[1] < 0x20)
  {
    v7 = 0x21800000000;
    v8 = 25;
    return v8 | v7;
  }

  v12 = v2;
  v13 = v3;
  if ((sub_2393F7FB4(a1) & 1) == 0)
  {
    sub_239431130(*a1);
    *a1 = 0;
    sub_239450194(a1, 0x78uLL);
    v7 = 0x21900000000;
    v8 = 28;
    return v8 | v7;
  }

  v11 = 0;
  if (sub_2394313E8(*a1, *a2, &v11) != 1)
  {
    v7 = 0x21F00000000;
LABEL_10:
    v8 = 172;
    return v8 | v7;
  }

  if (v11 != 32)
  {
    v7 = 0x22000000000;
    goto LABEL_10;
  }

  v6 = sub_2393E8774(a2, 0, 0x20uLL);
  v7 = 0;
  v8 = 0;
  *a2 = v6;
  a2[1] = v9;
  return v8 | v7;
}

uint64_t sub_2393F826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_239418EB8(963, 0);
  if (!v16)
  {
    return 0x239000000ACLL;
  }

  v17 = v16;
  if (a2)
  {
    if (a3)
    {
      if (a4 || !a5)
      {
        if (a7)
        {
          if (a6)
          {
            if (a9)
            {
              if (a8)
              {
                if (sub_2394195F4(v16) == 1)
                {
                  sub_2394316DC();
                  if (sub_23941C2E0(v17) == 1)
                  {
                    if (sub_23941C2F8(v17) == 1)
                    {
                      if (a4 && a5 && sub_23941C330(v17) != 1)
                      {
                        v18 = 0x259000000ACLL;
                      }

                      else if (sub_23941C368(v17) == 1)
                      {
                        if (sub_23941C2C8(v17) == 1)
                        {
                          if (sub_2394197F4(v17) == 1)
                          {
                            v18 = 0;
                          }

                          else
                          {
                            v18 = 0x266000000ACLL;
                          }
                        }

                        else
                        {
                          v18 = 0x262000000ACLL;
                        }
                      }

                      else
                      {
                        v18 = 0x25F000000ACLL;
                      }
                    }

                    else
                    {
                      v18 = 0x252000000ACLL;
                    }
                  }

                  else
                  {
                    v18 = 0x24D000000ACLL;
                  }
                }

                else
                {
                  v18 = 0x24A000000ACLL;
                }
              }

              else
              {
                v18 = 0x2470000002FLL;
              }
            }

            else
            {
              v18 = 0x2460000002FLL;
            }
          }

          else
          {
            v18 = 0x2450000002FLL;
          }
        }

        else
        {
          v18 = 0x2440000002FLL;
        }
      }

      else
      {
        v18 = 0x2410000002FLL;
      }
    }

    else
    {
      v18 = 0x23C0000002FLL;
    }
  }

  else
  {
    v18 = 0x23B0000002FLL;
  }

  sub_239418F5C(v17);
  return v18;
}

uint64_t sub_2393F847C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a7 < 0x20)
          {
            v14 = 0x27700000000;
          }

          else
          {
            if (a6)
            {
              v16 = 0;
              sub_23943AF04();
              v11 = v10;
              if (v10)
              {
                v12 = sub_2394316DC();
                if (sub_23943AB9C(v11, a2, a3, v12) == 1)
                {
                  if (sub_23943AD64(v11) == 1)
                  {
                    v16 = 32;
                    if (sub_23943AD88(v11, a6, &v16) == 1)
                    {
                      v13 = 0;
                      v14 = 0;
LABEL_25:
                      sub_23943AF94(v11);
                      return v14 | v13;
                    }

                    v14 = 0x28B00000000;
                  }

                  else
                  {
                    v14 = 0x28700000000;
                  }
                }

                else
                {
                  v14 = 0x28400000000;
                }
              }

              else
              {
                v14 = 0x27F00000000;
              }

              v13 = 172;
              goto LABEL_25;
            }

            v14 = 0x27800000000;
          }
        }

        else
        {
          v14 = 0x27600000000;
        }
      }

      else
      {
        v14 = 0x27500000000;
      }
    }

    else
    {
      v14 = 0x27400000000;
    }
  }

  else
  {
    v14 = 0x27300000000;
  }

  v13 = 47;
  return v14 | v13;
}

uint64_t sub_2393F8608(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6, unsigned int a7, char *a8)
{
  if (!a2)
  {
    v17 = 0x2A100000000;
LABEL_18:
    v18 = 47;
    goto LABEL_19;
  }

  if (!a3)
  {
    v17 = 0x2A200000000;
    goto LABEL_18;
  }

  if (!a4)
  {
    v17 = 0x2A300000000;
    goto LABEL_18;
  }

  if (a5 < 0x10)
  {
    v17 = 0x2A400000000;
    goto LABEL_18;
  }

  if (a5 > 0x20)
  {
    v17 = 0x2A500000000;
    goto LABEL_18;
  }

  if (!a7)
  {
    v17 = 0x2A600000000;
    goto LABEL_18;
  }

  if (!a8)
  {
    v17 = 0x2A700000000;
    goto LABEL_18;
  }

  v15 = sub_2394316DC();
  if (v15)
  {
    if (sub_23941E018(a2, a3, a4, a5, a6, v15, a7, a8))
    {
      return 0;
    }

    v17 = 0x2B500000000;
  }

  else
  {
    v17 = 0x2AA00000000;
  }

  v18 = 172;
LABEL_19:
  sub_2393F8718();
  return v18 | v17;
}

uint64_t sub_2393F8718()
{
  v16 = *MEMORY[0x277D85DE8];
  result = sub_2394167B8();
  if (result)
  {
    v1 = result;
    do
    {
      v2 = sub_239416BBC(v1);
      v3 = sub_239416C2C();
      v4 = sub_239416C38(v1);
      if (v2)
      {
        v5 = v4;
        v6 = sub_2393D9044(8u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          if (v3)
          {
            v7 = v3;
          }

          else
          {
            v7 = "(null)";
          }

          *buf = 136315650;
          v11 = v2;
          if (v5)
          {
            v8 = v5;
          }

          else
          {
            v8 = "(null)";
          }

          v12 = 2080;
          v13 = v7;
          v14 = 2080;
          v15 = v8;
          _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, " ssl err  %s %s %s\n", buf, 0x20u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(8u, 1);
        }
      }

      result = sub_2394167B8();
      v1 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393F888C(char *a1, unint64_t a2)
{
  if (!a1)
  {
    v3 = 0x2C700000000;
LABEL_11:
    v4 = 47;
    return v4 | v3;
  }

  if (!a2)
  {
    v3 = 0x2C800000000;
    goto LABEL_11;
  }

  v2 = sub_23942C1AC(a1, a2);
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x2CC00000000;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 172;
  }

  return v4 | v3;
}

uint64_t sub_2393F88FC(uint64_t a1, int8x16_t *__src, size_t __n, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 0;
  result = 0x2F40000002FLL;
  if (__src && __n)
  {
    memset(v15, 0, sizeof(v15));
    sub_2394324A0(__src, __n, v15);
    sub_239416A38();
    if (*(a1 + 600) == 1)
    {
      if (sub_239434534("P-256"))
      {
        v7 = *(a1 + 88);
        if (v7)
        {
          v8 = sub_239433008(v15, 0x20uLL, v7);
          if (v8)
          {
            v9 = v8;
            sub_239413718(v8, &v14, &v13);
            v10 = 0x30800000000;
            if (v14 && v13)
            {
              sub_239422178(v14);
              sub_239422178(v13);
              if (sub_239422178(v14) > 0x20 || sub_239422178(v13) > 0x20)
              {
                v10 = 0x30C00000000;
              }

              else
              {
                *(a4 + 64) = 64;
                if (sub_239405DD8(v14, a4, 0x20u) == 32)
                {
                  if (sub_239405DD8(v13, (a4 + 32), 0x20u) == 32)
                  {
                    sub_2394136CC(v9);
                    result = 0;
                    goto LABEL_22;
                  }

                  v10 = 0x31200000000;
                }

                else
                {
                  v10 = 0x31000000000;
                }
              }
            }

            sub_2394136CC(v9);
          }

          else
          {
            v10 = 0x30600000000;
          }
        }

        else
        {
          v10 = 0x30300000000;
        }

        v11 = 172;
      }

      else
      {
        v10 = 0x30000000000;
        v11 = 47;
      }
    }

    else
    {
      v10 = 0x2FE00000000;
      v11 = 28;
    }

    sub_2393F8718();
    result = v11 | v10;
  }

LABEL_22:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393F8AC4(uint64_t a1, int8x16_t *__src, size_t __n, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  result = 0x3260000002FLL;
  if (__src && __n)
  {
    memset(v8, 0, sizeof(v8));
    sub_2394324A0(__src, __n, v8);
    result = sub_2393F8B68(a1, v8, 32, a4);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393F8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_239416A38();
  if (a2)
  {
    if (a3 == 32)
    {
      if (*(a4 + 64) == 64)
      {
        v8 = sub_239434534("P-256");
        if (v8)
        {
          v9 = v8;
          v10 = sub_239433FAC(v8);
          if (v10)
          {
            v11 = v10;
            v12 = sub_2394345C0(v10);
            if (!v12)
            {
              sub_2393F8718();
              v22 = 0x3480000000BLL;
LABEL_35:
              sub_239433D18(v11);
              return v22;
            }

            v13 = v12;
            if (sub_2394367DC(v11, v12, (a1 + 8), 65, 0) == 1)
            {
              v14 = sub_239435FEC(v9);
              if (v14)
              {
                v15 = v14;
                if (sub_239436210(v14, v13))
                {
                  if (sub_239436430(v15) == 1)
                  {
                    v16 = sub_23942253C(a4, 0x20uLL, 0);
                    if (v16)
                    {
                      v17 = v16;
                      v18 = sub_23942253C((a4 + 32), 0x20uLL, 0);
                      if (v18)
                      {
                        v19 = v18;
                        v20 = sub_2394326F0();
                        if (v20)
                        {
                          v21 = v20;
                          if (sub_239413734(v20, v17, v19) == 1)
                          {
                            if (sub_239432C14(a2, 32, v21, v15) == 1)
                            {
                              v22 = 0;
                            }

                            else
                            {
                              v22 = 0x36400000014;
                            }
                          }

                          else
                          {
                            v22 = 0x361000000ACLL;
                          }

                          sub_2393F8718();
                          sub_2394136CC(v21);
                          goto LABEL_33;
                        }

                        sub_2393F8718();
                        sub_239421F28(v19);
                        v22 = 0x35E0000000BLL;
                      }

                      else
                      {
                        sub_2393F8718();
                        v22 = 0x35B0000000BLL;
                      }

                      sub_239421F28(v17);
LABEL_33:
                      sub_23943603C(v15);
                      goto LABEL_34;
                    }

                    v22 = 0x3580000000BLL;
                  }

                  else
                  {
                    v22 = 0x354000000ACLL;
                  }
                }

                else
                {
                  v22 = 0x351000000ACLL;
                }

                sub_2393F8718();
                goto LABEL_33;
              }

              v22 = 0x34E0000000BLL;
            }

            else
            {
              v22 = 0x34B000000ACLL;
            }

            sub_2393F8718();
LABEL_34:
            sub_2394346E0(v13);
            goto LABEL_35;
          }

          v22 = 0x3450000000BLL;
        }

        else
        {
          v22 = 0x3420000002FLL;
        }
      }

      else
      {
        v22 = 0x33F0000002FLL;
      }
    }

    else
    {
      v22 = 0x33E0000002FLL;
    }
  }

  else
  {
    v22 = 0x33D0000002FLL;
  }

  sub_2393F8718();
  return v22;
}

uint64_t sub_2393F8DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_239416A38();
  v6 = sub_2394360D8(*(a1 + 88));
  if (!v6)
  {
    v24 = 0x3D7000000ACLL;
    goto LABEL_18;
  }

  v7 = v6;
  if (*(a1 + 600) != 1)
  {
    v24 = 0x3D90000001CLL;
LABEL_17:
    sub_23943603C(v7);
    goto LABEL_18;
  }

  sub_23941780C();
  if (!v8)
  {
    v24 = 0x3DC000000ACLL;
    goto LABEL_17;
  }

  v9 = v8;
  if (sub_23941B59C(v8, v7) == 1)
  {
    v10 = sub_239434534("P-256");
    if (v10)
    {
      v11 = v10;
      v12 = sub_239435FEC(v10);
      if (v12)
      {
        v13 = v12;
        v14 = sub_239433FAC(v11);
        v15 = v14;
        if (v14)
        {
          v16 = sub_2394345C0(v14);
          if (v16)
          {
            v17 = v16;
            if (sub_2394367DC(v15, v16, (a2 + 8), 65, 0) == 1)
            {
              if (sub_239436210(v13, v17))
              {
                sub_23941780C();
                if (v18)
                {
                  v19 = v18;
                  v20 = sub_23941B59C(v18, v13);
                  sub_23943603C(v13);
                  if (v20 == 1)
                  {
                    v21 = 0;
                    v22 = 0;
                    v23 = 1;
                    goto LABEL_29;
                  }

                  sub_239417838(v19);
                  v23 = 0;
                  v22 = 0x3AD00000000;
LABEL_28:
                  v21 = 172;
LABEL_29:
                  sub_23943469C(v17);
                  sub_239433D18(v15);
                  if (v23)
                  {
                    v26 = sub_239418D78(v9, 0);
                    v15 = v26;
                    if (v26)
                    {
                      if (sub_2394195F4(v26) == 1)
                      {
                        if (sub_239419650(v15, v19) == 1)
                        {
                          v27 = *(a3 + 32);
                          if (!v27)
                          {
                            v27 = 32;
                          }

                          v30 = v27;
                          if (sub_2394197F4(v15) == 1)
                          {
                            if (v30 > 0x20)
                            {
                              v28 = 0x14700000000;
                              v29 = 47;
                            }

                            else
                            {
                              v28 = 0;
                              v29 = 0;
                              *(a3 + 32) = v30;
                            }

                            v24 = v29 | v28;
                          }

                          else
                          {
                            v24 = 0x3EF000000ACLL;
                          }
                        }

                        else
                        {
                          v24 = 0x3EB000000ACLL;
                        }
                      }

                      else
                      {
                        v24 = 0x3E8000000ACLL;
                      }
                    }

                    else
                    {
                      v24 = 0x3E5000000ACLL;
                    }
                  }

                  else
                  {
                    v15 = 0;
                    v24 = v21 | v22;
                  }

                  goto LABEL_44;
                }

                v22 = 0x3AA00000000;
              }

              else
              {
                v22 = 0x3A700000000;
              }
            }

            else
            {
              v22 = 0x3A300000000;
            }

            sub_23943603C(v13);
            v19 = 0;
            v23 = 0;
            goto LABEL_28;
          }

          sub_23943603C(v13);
          sub_239433D18(v15);
          v19 = 0;
          v15 = 0;
          v24 = 0x3A0000000ACLL;
        }

        else
        {
          sub_23943603C(v13);
          v19 = 0;
          v24 = 0x39D000000ACLL;
        }
      }

      else
      {
        v19 = 0;
        v15 = 0;
        v24 = 0x39A000000ACLL;
      }
    }

    else
    {
      v19 = 0;
      v15 = 0;
      v24 = 0x397000000ACLL;
    }
  }

  else
  {
    v19 = 0;
    v15 = 0;
    v24 = 0x3DF000000ACLL;
  }

LABEL_44:
  sub_23943603C(v7);
  sub_239417838(v9);
  if (v19)
  {
    sub_239417838(v19);
  }

  if (v15)
  {
    sub_239418F5C(v15);
  }

LABEL_18:
  sub_2393F8718();
  return v24;
}

uint64_t sub_2393F9168(uint64_t a1)
{
  sub_239416A38();
  if (*(a1 + 600) == 1)
  {
    sub_23943603C(*(a1 + 88));
    *(a1 + 600) = 0;
  }

  v2 = sub_239434534("P-256");
  if (!v2)
  {
    v5 = 0x4490000002FLL;
    goto LABEL_12;
  }

  v3 = sub_239435FEC(v2);
  if (!v3)
  {
    v5 = 0x44C000000ACLL;
    goto LABEL_12;
  }

  v4 = v3;
  if (sub_239436E50(v3) != 1)
  {
    v5 = 0x44F000000ACLL;
    goto LABEL_11;
  }

  v5 = sub_2393F9284(v4, a1 + 8);
  if (v5)
  {
LABEL_11:
    sub_23943603C(v4);
    goto LABEL_12;
  }

  *(a1 + 88) = v4;
  *(a1 + 600) = 1;
LABEL_12:
  sub_2393F8718();
  return v5;
}

void sub_2393F9248(uint64_t a1)
{
  if (*(a1 + 600) == 1)
  {
    sub_23943603C(*(a1 + 88));
    *(a1 + 600) = 0;
  }
}

uint64_t sub_2393F9284(uint64_t a1, uint64_t a2)
{
  sub_239416A38();
  v4 = sub_2393FFBF4(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_239434534("P-256");
    if (v6)
    {
      v7 = sub_239433FAC(v6);
      if (v7)
      {
        v8 = v7;
        if (sub_239438578(v7, v5, 4, (a2 + 8), 0x41uLL) == 65)
        {
          v9 = 0;
        }

        else
        {
          v9 = 0x4300000002FLL;
        }

        sub_239433D18(v8);
      }

      else
      {
        v9 = 0x42A000000ACLL;
      }
    }

    else
    {
      v9 = 0x4270000002FLL;
    }
  }

  else
  {
    v9 = 0x4240000002FLL;
  }

  sub_2393F8718();
  return v9;
}

uint64_t sub_2393F935C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_239412CF0(*(a1 + 88));
  if (v4)
  {
    v5 = sub_239405DD8(v4, v13, 0x20u);
    if (v5 < 1)
    {
      v7 = 0x471000000ACLL;
    }

    else if (v5 == 32)
    {
      v6 = *(a2 + 104);
      if (!v6)
      {
        v6 = 97;
      }

      v10 = a2;
      v11 = v6;
      v12 = 0;
      sub_2393D5CDC(&v10, (a1 + 16), 0x41uLL);
      sub_2393D5CDC(&v10, v13, 0x20uLL);
      if (v11 >= v12)
      {
        v7 = 0;
        if (v12 <= 0x61)
        {
          *(a2 + 104) = v12;
        }
      }

      else
      {
        v7 = 0x4790000000BLL;
      }
    }

    else
    {
      v7 = 0x472000000ACLL;
    }
  }

  else
  {
    v7 = 0x46C000000ACLL;
  }

  sub_239450194(v13, 0x20uLL);
  sub_2393F8718();
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2393F9498(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  v16 = a1 + 16;
  v17 = xmmword_2395C2960;
  if (*(a1 + 600) == 1)
  {
    sub_23943603C(*(a1 + 88));
    *(a1 + 600) = 0;
  }

  sub_239416A38();
  if (*(a2 + 104) != 97)
  {
    v5 = 0x4970000002FLL;
    goto LABEL_7;
  }

  sub_2393D5CDC(&v16, a2, 0x41uLL);
  if (v17 >= *(&v17 + 1))
  {
    v7 = sub_239434534("P-256");
    if (!v7)
    {
      v5 = 0x49C0000002FLL;
      goto LABEL_7;
    }

    v8 = v7;
    v9 = sub_239433FAC(v7);
    if (!v9)
    {
      v5 = 0x49F000000ACLL;
      goto LABEL_7;
    }

    v10 = v9;
    v11 = sub_2394345C0(v9);
    if (!v11)
    {
      sub_239433D18(v10);
      v5 = 0x4A2000000ACLL;
      goto LABEL_7;
    }

    v12 = v11;
    if (sub_2394367DC(v10, v11, v4, 65, 0) == 1)
    {
      v13 = sub_239435FEC(v8);
      if (v13)
      {
        v14 = v13;
        if (sub_239436210(v13, v12))
        {
          v15 = sub_23942253C((a2 + 65), 0x20uLL, 0);
          if (v15)
          {
            if (sub_2394362AC(v14, v15) == 1)
            {
              *(a1 + 88) = v14;
              *(a1 + 600) = 1;
              sub_239433D18(v10);
              v5 = 0;
LABEL_27:
              sub_239421EC8(v15);
              goto LABEL_28;
            }

            v5 = 0x4B1000000ACLL;
          }

          else
          {
            v5 = 0x4AE000000ACLL;
          }
        }

        else
        {
          v15 = 0;
          v5 = 0x4AB000000ACLL;
        }

        sub_23943603C(v14);
        sub_239433D18(v10);
        if (v15)
        {
          goto LABEL_27;
        }

LABEL_28:
        sub_23943469C(v12);
        goto LABEL_7;
      }

      v5 = 0x4A8000000ACLL;
    }

    else
    {
      v5 = 0x4A5000000ACLL;
    }

    sub_239433D18(v10);
    goto LABEL_28;
  }

  v5 = 0x4990000000BLL;
LABEL_7:
  sub_2393F8718();
  return v5;
}

uint64_t sub_2393F96B4(uint64_t a1)
{
  *a1 = &unk_284BB8F28;
  if (*(a1 + 600) == 1)
  {
    sub_23943603C(*(a1 + 88));
    *(a1 + 600) = 0;
  }

  return a1;
}

uint64_t sub_2393F970C(uint64_t a1)
{
  *a1 = &unk_284BB8F28;
  if (*(a1 + 600) == 1)
  {
    sub_23943603C(*(a1 + 88));
    *(a1 + 600) = 0;
  }

  return a1;
}

void sub_2393F9764(uint64_t a1)
{
  *a1 = &unk_284BB8F28;
  if (*(a1 + 600) == 1)
  {
    sub_23943603C(*(a1 + 88));
    *(a1 + 600) = 0;
  }

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2393F97DC(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  sub_239416A38();
  v5 = sub_23946EBA8();
  v6 = *(a1 + 88);
  v7 = sub_23946DE48();
  if (v7)
  {
    if (*(a1 + 600) == 1)
    {
      if (sub_23946BB28(v5, 0) == 1)
      {
        if (sub_239436430(v6) == 1)
        {
          sub_23941780C();
          if (v8)
          {
            v9 = v8;
            if (sub_23941B59C(v8, v6) == 1)
            {
              if (sub_23946BB9C(v5, v9) == 1)
              {
                if (sub_23946B8E0(v7, "O", 4097, "CSR", 0xFFFFFFFFFFFFFFFFLL, -1, 0) == 1)
                {
                  if (sub_23946BB80(v5, v7) == 1)
                  {
                    v10 = sub_2394316DC();
                    if (sub_23946BF68(v5, v9, v10) < 1)
                    {
                      v12 = 0x50C000000ACLL;
                    }

                    else
                    {
                      v11 = sub_23946EB9C(v5, 0);
                      if ((v11 & 0x80000000) != 0)
                      {
                        v12 = 0x50F000000ACLL;
                      }

                      else if (*a3 >= v11)
                      {
                        v12 = 0;
                        *a3 = sub_23946EB9C(v5, &v14);
                      }

                      else
                      {
                        v12 = 0x51100000019;
                      }
                    }
                  }

                  else
                  {
                    v12 = 0x509000000ACLL;
                  }
                }

                else
                {
                  v12 = 0x506000000ACLL;
                }
              }

              else
              {
                v12 = 0x500000000ACLL;
              }
            }

            else
            {
              v12 = 0x4FD000000ACLL;
            }

            sub_239417838(v9);
          }

          else
          {
            v12 = 0x4FA000000ACLL;
          }
        }

        else
        {
          v12 = 0x4F7000000ACLL;
        }
      }

      else
      {
        v12 = 0x4F4000000ACLL;
      }
    }

    else
    {
      v12 = 0x4F10000001CLL;
    }
  }

  else
  {
    v12 = 0x4EF000000ACLL;
  }

  sub_23946DE54(v7);
  sub_23946EBB4(v5);
  sub_2393F8718();
  return v12;
}

uint64_t sub_2393F9A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_2393F4168(a1, a2);
  if (!v6)
  {
    sub_239416A38();
    v14 = a1;
    v7 = sub_23946EB90(0, &v14, v4);
    if (!v7)
    {
      v6 = 0x5330000002FLL;
      goto LABEL_16;
    }

    v8 = v7;
    if (sub_2394673A8(v7))
    {
      v6 = 0x5350000002FLL;
LABEL_5:
      sub_23946EBB4(v8);
LABEL_16:
      sub_2393F8718();
      return v6;
    }

    v9 = sub_2394673C0(v8);
    if (!v9)
    {
      v6 = 0x5380000002FLL;
      goto LABEL_5;
    }

    v10 = v9;
    if (sub_23946BE8C(v8, v9) == 1)
    {
      v11 = sub_23941B670(v10);
      if (v11)
      {
        v12 = v11;
        v6 = sub_2393F9284(v11, a3);
        sub_23946EBB4(v8);
        sub_23943603C(v12);
LABEL_15:
        sub_239417838(v10);
        goto LABEL_16;
      }

      v6 = 0x53E0000002FLL;
    }

    else
    {
      v6 = 0x53B0000002FLL;
    }

    sub_23946EBB4(v8);
    goto LABEL_15;
  }

  return v6;
}

uint64_t sub_2393F9B5C(void *a1)
{
  a1[45] = 0;
  a1[46] = 0;
  a1[47] = 0;
  v2 = sub_239433FAC(415);
  a1[45] = v2;
  if (!v2)
  {
    v19 = 0x58C00000000;
LABEL_36:
    v20 = 172;
    return v20 | v19;
  }

  v3 = sub_239434338(v2);
  a1[3] = v3;
  if (!v3)
  {
    v19 = 0x58F00000000;
    goto LABEL_36;
  }

  sub_239422D0C();
  a1[46] = v4;
  if (!v4)
  {
    v19 = 0x59200000000;
    goto LABEL_36;
  }

  v5 = sub_2394316DC();
  a1[47] = v5;
  if (!v5)
  {
    v19 = 0x59500000000;
    goto LABEL_36;
  }

  v6 = sub_2394345C0(a1[45]);
  a1[1] = v6;
  if (!v6)
  {
    v19 = 0x59700000000;
    goto LABEL_36;
  }

  v7 = sub_2394345C0(a1[45]);
  a1[2] = v7;
  if (!v7)
  {
    v19 = 0x59800000000;
    goto LABEL_36;
  }

  v8 = sub_2394345C0(a1[45]);
  a1[4] = v8;
  if (!v8)
  {
    v19 = 0x59900000000;
    goto LABEL_36;
  }

  v9 = sub_2394345C0(a1[45]);
  a1[5] = v9;
  if (!v9)
  {
    v19 = 0x59A00000000;
    goto LABEL_36;
  }

  v10 = sub_2394345C0(a1[45]);
  a1[6] = v10;
  if (!v10)
  {
    v19 = 0x59B00000000;
    goto LABEL_36;
  }

  v11 = sub_2394345C0(a1[45]);
  a1[8] = v11;
  if (!v11)
  {
    v19 = 0x59C00000000;
    goto LABEL_36;
  }

  v12 = sub_2394345C0(a1[45]);
  a1[7] = v12;
  if (!v12)
  {
    v19 = 0x59D00000000;
    goto LABEL_36;
  }

  v13 = sub_239421E8C();
  a1[9] = v13;
  if (!v13)
  {
    v19 = 0x59E00000000;
    goto LABEL_36;
  }

  v14 = sub_239421E8C();
  a1[10] = v14;
  if (!v14)
  {
    v19 = 0x59F00000000;
    goto LABEL_36;
  }

  v15 = sub_239421E8C();
  a1[11] = v15;
  if (!v15)
  {
    v19 = 0x5A000000000;
    goto LABEL_36;
  }

  v16 = sub_239421E8C();
  a1[13] = v16;
  if (!v16)
  {
    v19 = 0x5A100000000;
    goto LABEL_36;
  }

  v17 = sub_239421E8C();
  a1[12] = v17;
  if (!v17)
  {
    v19 = 0x5A200000000;
    goto LABEL_36;
  }

  v18 = a1[46];
  if (!sub_23943434C(a1[45], v17))
  {
    v19 = 0x5A500000000;
    goto LABEL_36;
  }

  v19 = 0;
  v20 = 0;
  return v20 | v19;
}

uint64_t sub_2393F9D1C(uint64_t result)
{
  if (*(result + 113))
  {
    v1 = result;
    v2 = *(result + 360);
    if (v2)
    {
      sub_239433D18(v2);
    }

    v3 = *(v1 + 368);
    if (v3)
    {
      sub_239422D38(v3);
    }

    sub_239431130(*(v1 + 240));
    *(v1 + 240) = 0;
    sub_239450194((v1 + 240), 0x78uLL);
    v4 = *(v1 + 8);
    if (v4)
    {
      sub_2394346E0(v4);
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      sub_2394346E0(v5);
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      sub_2394346E0(v6);
    }

    v7 = *(v1 + 40);
    if (v7)
    {
      sub_2394346E0(v7);
    }

    v8 = *(v1 + 48);
    if (v8)
    {
      sub_2394346E0(v8);
    }

    v9 = *(v1 + 64);
    if (v9)
    {
      sub_2394346E0(v9);
    }

    v10 = *(v1 + 56);
    if (v10)
    {
      sub_2394346E0(v10);
    }

    v11 = *(v1 + 72);
    if (v11)
    {
      sub_239421F28(v11);
    }

    v12 = *(v1 + 80);
    if (v12)
    {
      sub_239421F28(v12);
    }

    v13 = *(v1 + 88);
    if (v13)
    {
      sub_239421F28(v13);
    }

    v14 = *(v1 + 104);
    if (v14)
    {
      sub_239421F28(v14);
    }

    result = *(v1 + 96);
    if (result)
    {
      result = sub_239421F28(result);
    }

    *(v1 + 113) = 0;
  }

  return result;
}

unint64_t sub_2393F9E10(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a6[1] < 0x20)
  {
    v8 = 0x5D000000000;
    LODWORD(v7) = 25;
  }

  else
  {
    v7 = sub_2393F847C(a1, a2, a3, a4, a5, *a6, 0x20uLL);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      v9 = sub_2393E8774(a6, 0, 0x20uLL);
      LODWORD(v7) = 0;
      v8 = 0;
      *a6 = v9;
      a6[1] = v10;
    }
  }

  return v8 | v7;
}

uint64_t sub_2393F9EC0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a5 == 32)
  {
    v14 = &v16;
    v15 = 32;
    v8 = (*(*a1 + 200))(a1, a2, a3, a6, a7, &v14);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else if (v15 == 32)
    {
      v11 = sub_23945022C(a4, v14, 32);
      v9 = 0x5E000000000;
      v12 = v11 == 0;
      if (v11)
      {
        LODWORD(v8) = 172;
      }

      else
      {
        LODWORD(v8) = 0;
      }

      if (v12)
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0x5DE00000000;
      LODWORD(v8) = 172;
    }

    result = v9 | v8;
  }

  else
  {
    result = 0x5D90000002FLL;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393F9FD4(uint64_t a1, unsigned __int8 *a2, unint64_t a3, void *a4)
{
  sub_23942253C(a2, a3, a4);
  if (sub_239422F7C(0, a4, a4, *(a1 + 96), *(a1 + 368)) == 1)
  {
    return 0;
  }

  else
  {
    return 0x5EE000000ACLL;
  }
}

uint64_t sub_2393FA03C(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  if (a4 >> 31)
  {
    v6 = 0x5F500000000;
    v7 = 172;
  }

  else
  {
    v4 = a4;
    v5 = sub_239405DD8(a2, a3, a4);
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x5F700000000;
    }

    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = 172;
    }
  }

  return v7 | v6;
}

uint64_t sub_2393FA0B0(uint64_t a1, uint64_t a2)
{
  if (sub_23942C660(a2, *(a1 + 96)) == 1)
  {
    return 0;
  }

  else
  {
    return 0x5FF000000ACLL;
  }
}

uint64_t sub_2393FA0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_2394241E0(a2, a3, a4, *(a1 + 96), *(a1 + 368)) == 1)
  {
    return 0;
  }

  else
  {
    return 0x60A000000ACLL;
  }
}

uint64_t sub_2393FA13C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (sub_2394367DC(*(a1 + 360), a4, a2, a3, *(a1 + 368)) == 1)
  {
    return 0;
  }

  else
  {
    return 0x615000000ACLL;
  }
}

uint64_t sub_2393FA188(uint64_t a1, uint64_t *a2, char *a3, unint64_t a4)
{
  v4 = *(a1 + 368);
  if (sub_239438578(*(a1 + 360), a2, 4, a3, a4) == a4)
  {
    return 0;
  }

  else
  {
    return 0x620000000ACLL;
  }
}

uint64_t sub_2393FA1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_239435ACC(*(a1 + 360), a2, 0, a3, a4, *(a1 + 368)) == 1)
  {
    return 0;
  }

  else
  {
    return 0x62B000000ACLL;
  }
}

uint64_t sub_2393FA224(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2394345C0(a1[45]);
  if (v12)
  {
    v13 = (*(*a1 + 120))(a1, v12, a3, a4);
    if (!v13)
    {
      v13 = (*(*a1 + 120))(a1, a2, a5, a6);
      if (!v13)
      {
        v15 = a1[46];
        if (sub_2394355A4(a1[45], a2, a2, v12) == 1)
        {
          v13 = 0;
        }

        else
        {
          v13 = 0x641000000ACLL;
        }
      }
    }
  }

  else
  {
    v13 = 0x63A000000ACLL;
  }

  sub_2394346E0(v12);
  return v13;
}

uint64_t sub_2393FA34C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 368);
  if (sub_2394356D4(*(a1 + 360), a2) == 1)
  {
    return 0;
  }

  else
  {
    return 0x64E000000ACLL;
  }
}

uint64_t sub_2393FA394(uint64_t *a1, char *a2, unint64_t *a3, unsigned __int8 *a4, unint64_t a5)
{
  v10 = sub_239421E8C();
  if (v10)
  {
    v11 = sub_2394345C0(a1[45]);
    if (v11)
    {
      sub_23942253C(a4, a5, v10);
      if (sub_239422F7C(0, v10, v10, a1[12], a1[46]) == 1)
      {
        if (sub_239435ACC(a1[45], v11, v10, 0, 0, a1[46]) == 1)
        {
          v12 = a1[46];
          v13 = sub_239438578(a1[45], v11, 4, a2, *a3);
          *a3 = v13;
          if (v13)
          {
            v14 = 0;
          }

          else
          {
            v14 = 0x672000000ACLL;
          }
        }

        else
        {
          v14 = 0x66E000000ACLL;
        }
      }

      else
      {
        v14 = 0x66B000000ACLL;
      }
    }

    else
    {
      v14 = 0x666000000ACLL;
    }
  }

  else
  {
    v11 = 0;
    v14 = 0x663000000ACLL;
  }

  sub_239421F28(v10);
  sub_2394346E0(v11);
  return v14;
}

uint64_t sub_2393FA4E4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 368);
  if (sub_2394349F8(*(a1 + 360), a2))
  {
    return 0;
  }

  else
  {
    return 0x681000000ACLL;
  }
}

uint64_t sub_2393FA520(uint64_t *a1, int a2)
{
  v27[10] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v26 = *a1;
  if (v2 < 1)
  {
    v9 = 0x6900000002FLL;
    goto LABEL_22;
  }

  v5 = sub_23946EEB4(0, &v26, v2);
  v6 = v5;
  if (!v5)
  {
    v9 = 0x693000000ACLL;
    goto LABEL_21;
  }

  if (sub_239467A30(v5) != 2)
  {
    v9 = 0x695000000ACLL;
    goto LABEL_21;
  }

  if (!sub_239465D40(v6))
  {
    v9 = 0x696000000ACLL;
    goto LABEL_21;
  }

  if (sub_2394679E0(v6) != 794)
  {
    v9 = 0x697000000ACLL;
    goto LABEL_21;
  }

  if (!sub_239465C18(v6))
  {
    v9 = 0x698000000ACLL;
    goto LABEL_21;
  }

  if (!sub_239467C44(v6))
  {
    v9 = 0x699000000ACLL;
    goto LABEL_21;
  }

  if (!sub_239467CD8(v6))
  {
    v9 = 0x69A000000ACLL;
    goto LABEL_21;
  }

  if (!sub_239465D34(v6))
  {
    v9 = 0x69B000000ACLL;
    goto LABEL_21;
  }

  v27[0] = &unk_284BB9138;
  v7 = sub_2393FA970(a1, v27);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    goto LABEL_21;
  }

  if (sub_239466108(v6) < 1)
  {
    v9 = 0x6E7000000ACLL;
    goto LABEL_21;
  }

  v12 = 0;
  v13 = 0;
  v25 = 0;
  v14 = 0;
  do
  {
    v15 = sub_239466138(v6, v14);
    v16 = sub_239431484(v15);
    v17 = sub_239468174(v15);
    v18 = sub_2394509E8(v16);
    if (v18 > 86)
    {
      if (v18 == 90)
      {
        if (v17 | BYTE4(v25) & 1)
        {
          v9 = 0x6DC000000ACLL;
          goto LABEL_21;
        }

        v23 = sub_239462CF0(v6);
        if (!v23 || *v23 != 20)
        {
          v9 = 0x6DE000000ACLL;
          goto LABEL_21;
        }

        BYTE4(v25) = 1;
      }

      else
      {
        if (v18 != 87)
        {
          goto LABEL_53;
        }

        if (!v17 | v12 & 1)
        {
          v9 = 0x6AC000000ACLL;
          goto LABEL_21;
        }

        v20 = sub_239462C1C(v6);
        v21 = sub_239462DA4(v6);
        if (a2 == 1)
        {
          v9 = 0x6B7000000ACLL;
          if ((v20 & 0x10) == 0 || v21)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (a2 == 2)
        {
          v9 = 0x6B3000000ACLL;
          if ((v20 & 0x10) != 0 || v21 != -1)
          {
            goto LABEL_21;
          }

LABEL_52:
          v12 = 1;
          goto LABEL_53;
        }

        v9 = 0x6BC000000ACLL;
        if ((v20 & 0x10) == 0)
        {
          goto LABEL_21;
        }

        v12 = 1;
        if (v21 != -1 && v21 != 1)
        {
          goto LABEL_21;
        }
      }
    }

    else if (v18 == 82)
    {
      if (v17 | v25 & 1)
      {
        v9 = 0x6D5000000ACLL;
        goto LABEL_21;
      }

      v22 = sub_239462CBC(v6);
      if (!v22 || *v22 != 20)
      {
        v9 = 0x6D7000000ACLL;
        goto LABEL_21;
      }

      LOBYTE(v25) = 1;
    }

    else if (v18 == 83)
    {
      if (!v17 | v13 & 1)
      {
        v9 = 0x6C1000000ACLL;
        goto LABEL_21;
      }

      v19 = sub_239462C44(v6);
      if (a2 == 2)
      {
        if (v19 != 128)
        {
          v9 = 0x6C8000000ACLL;
          goto LABEL_21;
        }
      }

      else if ((v19 & 0xFFFFFF7F) != 6)
      {
        v9 = 0x6D0000000ACLL;
        goto LABEL_21;
      }

      v13 = 1;
    }

LABEL_53:
    ++v14;
  }

  while (v14 < sub_239466108(v6));
  v24 = 0x6EC000000ACLL;
  if (((a2 - 3) < 0xFFFFFFFE) | BYTE4(v25) & 1)
  {
    v24 = v8;
  }

  if ((v12 & v13) & v25)
  {
    v9 = v24;
  }

  else
  {
    v9 = 0x6E7000000ACLL;
  }

LABEL_21:
  sub_23946EDF8(v6);
LABEL_22:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_2393FA970(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v15 = (a2 + 8);
  v16 = v3;
  if (v2 < 1)
  {
    return 0x7BB0000002FLL;
  }

  v4 = sub_23946EEB4(0, &v16, v2);
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    v9 = 0;
    v12 = 0x7BE00000000;
LABEL_17:
    v13 = 11;
    goto LABEL_22;
  }

  v6 = sub_239465F3C(v4);
  v7 = v6;
  if (!v6)
  {
    v9 = 0;
    v12 = 0x7C100000000;
LABEL_21:
    v13 = 172;
    goto LABEL_22;
  }

  if (sub_2393FFBEC(v6) != 408)
  {
    v9 = 0;
    v12 = 0x7C200000000;
    goto LABEL_21;
  }

  if (sub_239417B9C(v7) != 256)
  {
    v9 = 0;
    v12 = 0x7C300000000;
    goto LABEL_21;
  }

  v8 = sub_23941B670(v7);
  v9 = v8;
  if (!v8)
  {
    v12 = 0x7C600000000;
    goto LABEL_17;
  }

  v10 = sub_2392CCA14(v8);
  if (sub_2394344C4(v10) == 415)
  {
    if (sub_2394187E8(v7, 0) == 65)
    {
      v11 = sub_2394187E8(v7, &v15);
      if (v11 == 65)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0x7CC00000000;
      }

      if (v11 == 65)
      {
        v13 = 0;
      }

      else
      {
        v13 = 172;
      }

      goto LABEL_22;
    }

    v12 = 0x7CA00000000;
  }

  else
  {
    v12 = 0x7C700000000;
  }

  v13 = 172;
LABEL_22:
  sub_23943603C(v9);
  sub_239417838(v7);
  sub_23946EDF8(v5);
  return v13 | v12;
}

uint64_t sub_2393FAAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v31 = a3;
  v32 = a1;
  v30 = a5;
  *a7 = 600;
  if (a1 && a2 > 0)
  {
    if (a5 && a6 > 0)
    {
      v12 = sub_23946626C();
      if (v12)
      {
        v13 = sub_239469C5C();
        if (v13)
        {
          v14 = sub_2394574D8();
          if (v14)
          {
            v15 = sub_23946EEB4(0, &v32, a2);
            if (v15)
            {
              if (sub_239466630(v12, v15) == 1)
              {
                v16 = 0;
                if (a4 && a3)
                {
                  if (a4 < 0)
                  {
                    v16 = 0;
                    v17 = 0;
                    *a7 = 201;
                    v22 = 0x71E00000000;
                    v24 = 47;
                    goto LABEL_31;
                  }

                  v16 = sub_23946EEB4(0, &v31, a4);
                  if (!v16)
                  {
                    v17 = 0;
                    *a7 = 200;
                    v22 = 0x72100000000;
                    goto LABEL_30;
                  }

                  if (sub_2394579D0(v14, v16) != 1)
                  {
                    v17 = 0;
                    *a7 = 600;
                    v22 = 0x72400000000;
                    goto LABEL_30;
                  }
                }

                v17 = sub_23946EEB4(0, &v30, a6);
                if (v17)
                {
                  sub_239469D20(v13, v12, v17, v14);
                  if (v18 == 1)
                  {
                    v19 = sub_239412CE8(v13);
                    v28 = 0;
                    if (v19)
                    {
                      v20 = v19;
                      v21 = sub_239467C44(v17);
                      if (v21)
                      {
                        sub_238DB9BD8(v27, *(v21 + 1), *v21);
                        if (sub_2393F6940(v29, v27))
                        {
                          v22 = 0x74000000000;
                        }

                        else
                        {
                          if (sub_2393F6D84(v29, &v28))
                          {
                            sub_23946A848(v20, v28);
                            sub_23946A768(v20, 0);
                            if (sub_2394684C8(v13) == 1)
                            {
                              v22 = 0;
                              v24 = 0;
                              *a7 = 0;
                            }

                            else
                            {
                              *a7 = 400;
                              v22 = 0x74C00000000;
                              v24 = 87;
                            }

                            goto LABEL_31;
                          }

                          v22 = 0x74300000000;
                        }

                        *a7 = 300;
                        goto LABEL_30;
                      }

                      v22 = 0x73C00000000;
                      v26 = 300;
                      v24 = 172;
                    }

                    else
                    {
                      v22 = 0x73800000000;
                      v26 = 500;
                      v24 = 11;
                    }

                    *a7 = v26;
                    goto LABEL_31;
                  }

                  *a7 = 600;
                  v22 = 0x72E00000000;
                }

                else
                {
                  *a7 = 300;
                  v22 = 0x72B00000000;
                }
              }

              else
              {
                v16 = 0;
                v17 = 0;
                *a7 = 600;
                v22 = 0x71900000000;
              }
            }

            else
            {
              v16 = 0;
              v17 = 0;
              *a7 = 100;
              v22 = 0x71600000000;
            }

LABEL_30:
            v24 = 172;
            goto LABEL_31;
          }

          v15 = 0;
          v16 = 0;
          v17 = 0;
          *a7 = 500;
          v22 = 0x71000000000;
        }

        else
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *a7 = 500;
          v22 = 0x70D00000000;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        *a7 = 500;
        v22 = 0x70A00000000;
      }

      v24 = 11;
LABEL_31:
      sub_23946EDF8(v17);
      sub_23946EDF8(v16);
      sub_23946EDF8(v15);
      sub_2393FFA58(v14);
      sub_239469C64(v13);
      sub_239466300(v12);
      v23 = v22 & 0x7FF00000000;
      return v23 | v24;
    }

    *a7 = 301;
    v23 = 0x70700000000;
  }

  else
  {
    *a7 = 101;
    v23 = 0x70500000000;
  }

  v24 = 47;
  return v23 | v24;
}

uint64_t sub_2393FAEA0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v15 = *a2;
  v16 = v3;
  v14 = 0;
  if (v2 >= 1 && a2[1] >= 1)
  {
    v5 = sub_23946EEB4(0, &v16, v2);
    if (v5)
    {
      v6 = sub_23946EEB4(0, &v15, a2[1]);
      if (v6)
      {
        v7 = sub_239467C44(v5);
        v8 = sub_239467C44(v6);
        v9 = sub_239467CD8(v6);
        v10 = 0x77700000000;
        v11 = 172;
        if (!v7)
        {
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        v12 = v9;
        if (!v9)
        {
          goto LABEL_19;
        }

        if (sub_2393FEEB4(&v14 + 1, &v14, v8, v7) == 1)
        {
          if (SHIDWORD(v14) <= 0 && v14 <= 0 && ((v14 | HIDWORD(v14)) & 0x80000000) != 0)
          {
            v10 = 0x77E00000000;
          }

          else if (sub_2393FEEB4(&v14 + 1, &v14, v12, v7) == 1)
          {
            if (SHIDWORD(v14) <= 0 && v14 < 1)
            {
              v10 = 0;
              v11 = 0;
              goto LABEL_19;
            }

            v10 = 0x78500000000;
          }

          else
          {
            v10 = 0x78100000000;
          }
        }

        else
        {
          v10 = 0x77A00000000;
        }

        v11 = 78;
LABEL_19:
        sub_23946EDF8(v5);
        sub_23946EDF8(v6);
        return v10 | v11;
      }

      v10 = 0x77200000000;
    }

    else
    {
      v6 = 0;
      v10 = 0x76F00000000;
    }

    v11 = 11;
    goto LABEL_19;
  }

  v10 = 0x76C00000000;
  v11 = 47;
  return v10 | v11;
}

uint64_t sub_2393FB05C(uint64_t *a1)
{
  v1 = a1[1];
  v9 = *a1;
  if (v1 < 1)
  {
    return 0x7960000002FLL;
  }

  v2 = sub_23946EEB4(0, &v9, v1);
  v3 = v2;
  if (!v2)
  {
    v5 = 0x79900000000;
    v6 = 11;
    goto LABEL_11;
  }

  v4 = sub_239467C44(v2);
  if (!v4)
  {
    v5 = 0x79C00000000;
    goto LABEL_10;
  }

  if (sub_239469918(v4) == -1)
  {
    v8 = sub_239467CD8(v3);
    if (v8)
    {
      if (sub_239469918(v8) == 1)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_11;
      }

      v5 = 0x7A700000000;
      goto LABEL_6;
    }

    v5 = 0x7A300000000;
LABEL_10:
    v6 = 172;
    goto LABEL_11;
  }

  v5 = 0x7A000000000;
LABEL_6:
  v6 = 78;
LABEL_11:
  sub_23946EDF8(v3);
  return v6 | v5;
}

uint64_t sub_2393FB168(int a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v15 = *a2;
  if (v4 < 1)
  {
    return 0x7E00000002FLL;
  }

  v6 = sub_23946EEB4(0, &v15, v4);
  v7 = v6;
  if (v6)
  {
    if (a1)
    {
      v8 = sub_239462CBC(v6);
      if (v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = sub_239462CF0(v6);
      if (v8)
      {
LABEL_5:
        if (*v8 < 0)
        {
          v12 = 0x7E700000000;
          v13 = 47;
        }

        else if (*v8 == 20)
        {
          if (a3[1] < 0x14)
          {
            v12 = 0x7E900000000;
            v13 = 25;
          }

          else
          {
            v9 = *a3;
            v10 = *(v8 + 1);
            v11 = *v10;
            *(v9 + 16) = *(v10 + 4);
            *v9 = v11;
            sub_238DB8498(a3, *v8);
            v12 = 0;
            v13 = 0;
          }
        }

        else
        {
          v12 = 0x7E800000000;
          v13 = 157;
        }

        goto LABEL_16;
      }
    }

    v12 = 0x7E600000000;
    v13 = 216;
  }

  else
  {
    v12 = 0x7E300000000;
    v13 = 11;
  }

LABEL_16:
  sub_23946EDF8(v7);
  return v13 | v12;
}

uint64_t sub_2393FB2BC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v23 = *a1;
  if (v2 < 1)
  {
    return 0x80F0000002FLL;
  }

  v4 = sub_23946EEB4(0, &v23, v2);
  v5 = v4;
  if (v4)
  {
    v6 = sub_239466178(v4, 103, 0, 0);
    v7 = v6;
    if (v6)
    {
      if (sub_239431484(v6) == 1)
      {
        v8 = sub_239457528(v7, 0);
        if (v8)
        {
          v9 = 0x81F000000D8;
          v10 = *v8;
          if (*v8 && !*v10)
          {
            v11 = *(v10 + 8);
            if (sub_239431484(v11) == 1)
            {
              v12 = sub_239457528(v11, 0);
              if (*v12 == 6)
              {
                v13 = sub_239460110(v12, 0);
                v14 = sub_2393FFBF4(v13);
                if ((sub_2393FFBE4(v13) & 0x80000000) != 0)
                {
                  v9 = 0x842000000D8;
                }

                else
                {
                  v9 = 0x848000000D8;
                  v15 = sub_2393FFBE4(v13);
                  if (v15 >= 8)
                  {
                    v16 = v15;
                    if (!strncmp(v14, "http://", 7uLL) || v16 != 8 && !strncmp(v14, "https://", 8uLL))
                    {
                      sub_238DB9BD8(&__src, v14, v16);
                      v17 = __len;
                      if (*(a2 + 8) >= __len)
                      {
                        memmove(*a2, __src, __len);
                        sub_2393F6D60(a2, v17);
                        v19 = 0;
                        v18 = 0;
                      }

                      else
                      {
                        v18 = 0x18E00000000;
                        v19 = 25;
                      }

                      v9 = v18 | v19;
                    }
                  }
                }
              }

              else
              {
                v9 = 0x83E000000D8;
              }
            }

            else
            {
              v9 = 0x830000000D8;
            }
          }
        }

        else
        {
          v9 = 0x81E000000D8;
        }
      }

      else
      {
        v9 = 0x81B000000D8;
      }
    }

    else
    {
      v9 = 0x81A000000D8;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0x8120000000BLL;
  }

  sub_239457574(v7, sub_2393FBF20, sub_23945F068);
  sub_23946EDF8(v5);
  return v9;
}

uint64_t sub_2393FB518(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v21 = 0;
  v22 = v3;
  v20 = 0;
  if (v2 < 1)
  {
    return 0x8610000002FLL;
  }

  v5 = sub_23946EEB4(0, &v22, v2);
  v6 = v5;
  if (v5)
  {
    v7 = sub_239466178(v5, 103, 0, 0);
    v8 = v7;
    if (v7)
    {
      if (sub_239431484(v7) == 1)
      {
        v9 = sub_239457528(v8, 0);
        if (v9)
        {
          v10 = v9[2];
          if (sub_239431484(v10) == 1)
          {
            v11 = sub_239457528(v10, 0);
            if (*v11 == 4)
            {
              v12 = sub_239460110(v11, 0);
              if (v12)
              {
                if (sub_23946DEBC(v12, &v21, &v20) == 1)
                {
                  sub_238DB6950(&__src, v21, v20);
                  v13 = __len;
                  if (*(a2 + 8) >= __len)
                  {
                    memmove(*a2, __src, __len);
                    sub_238DB8498(a2, v13);
                    v15 = 0;
                    v14 = 0;
                  }

                  else
                  {
                    v14 = 0x18300000000;
                    v15 = 25;
                  }

                  v16 = v14 | v15;
                }

                else
                {
                  v16 = 0x891000000ACLL;
                }
              }

              else
              {
                v16 = 0x88D000000D8;
              }
            }

            else
            {
              v16 = 0x88A000000D8;
            }
          }

          else
          {
            v16 = 0x87C000000D8;
          }
        }

        else
        {
          v16 = 0x870000000D8;
        }
      }

      else
      {
        v16 = 0x86D000000D8;
      }
    }

    else
    {
      v16 = 0x86C000000D8;
    }
  }

  else
  {
    v8 = 0;
    v16 = 0x8640000000BLL;
  }

  sub_239457574(v8, sub_2393FBF20, sub_23945F068);
  sub_23946EDF8(v6);
  return v16;
}

uint64_t sub_2393FB70C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v12 = *a1;
  if (v2 < 1)
  {
    return 0x8A40000002FLL;
  }

  v4 = sub_23946EEB4(0, &v12, v2);
  v5 = v4;
  if (v4)
  {
    v6 = sub_239465D40(v4);
    if (v6)
    {
      v7 = *(v6 + 1);
      if (v7)
      {
        v8 = *v6;
        if ((v8 & 0x80000000) == 0)
        {
          if (*(a2 + 8) >= v8)
          {
            memcpy(*a2, v7, v8);
            sub_238DB8498(a2, v8);
            v9 = 0;
            v10 = 0;
          }

          else
          {
            v9 = 0x8AF00000000;
            v10 = 25;
          }

          goto LABEL_14;
        }

        v9 = 0x8AC00000000;
      }

      else
      {
        v9 = 0x8AB00000000;
      }
    }

    else
    {
      v9 = 0x8AA00000000;
    }

    v10 = 172;
  }

  else
  {
    v9 = 0x8A700000000;
    v10 = 11;
  }

LABEL_14:
  sub_23946EDF8(v5);
  return v10 | v9;
}

uint64_t sub_2393FB82C(int a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  v18 = 0;
  v19 = v5;
  v17 = 0;
  if (v4 >= 1)
  {
    v7 = sub_23946EEB4(0, &v19, v4);
    v8 = v7;
    if (v7)
    {
      if (a1)
      {
        v9 = sub_239465D34(v7);
        if (v9)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v9 = sub_239465C18(v7);
        if (v9)
        {
LABEL_5:
          if (sub_23946DEBC(v9, &v18, &v17) == 1)
          {
            sub_238DB6950(&__src, v18, v17);
            v10 = __len;
            if (*(a3 + 8) >= __len)
            {
              memmove(*a3, __src, __len);
              sub_238DB8498(a3, v10);
              v12 = 0;
              v11 = 0;
            }

            else
            {
              v11 = 0x18300000000;
              v12 = 25;
            }

            v13 = v11 | v12;
          }

          else
          {
            v13 = 0x8D6000000ACLL;
          }

          goto LABEL_13;
        }
      }

      v13 = 0x8D3000000ACLL;
    }

    else
    {
      v13 = 0x8C90000000BLL;
    }

LABEL_13:
    sub_23946EDF8(v8);
    return v13;
  }

  return 0x8C60000002FLL;
}

uint64_t sub_2393FB970(uint64_t *a1, uint64_t a2)
{
  v4 = sub_239450E0C("2.5.4.3", 1);
  if (!v4)
  {
    v26 = 0x8FD00000000;
    v27 = 11;
    goto LABEL_32;
  }

  v5 = sub_239450E0C("1.3.6.1.4.1.37244.2.1", 1);
  if (!v5)
  {
    v26 = 0x90000000000;
    v27 = 11;
    goto LABEL_31;
  }

  v6 = sub_239450E0C("1.3.6.1.4.1.37244.2.2", 1);
  if (!v6)
  {
    v26 = 0x90300000000;
    v27 = 11;
    goto LABEL_30;
  }

  v7 = a1[1];
  v38 = *a1;
  v34[0] = 0;
  v36 = 0;
  if (v7 < 1)
  {
    v9 = 0;
    v13 = 47;
    v14 = 2316;
    goto LABEL_29;
  }

  v8 = sub_23946EEB4(0, &v38, v7);
  v9 = v8;
  if (!v8)
  {
    v13 = 11;
    v14 = 2319;
    goto LABEL_29;
  }

  v10 = sub_239465D34(v8);
  if (!v10)
  {
    v13 = 172;
    v14 = 2322;
    goto LABEL_29;
  }

  v11 = v10;
  v31 = v9;
  v32 = v6;
  if (sub_23946B400(v10) < 1)
  {
    v14 = 0;
    v13 = 0;
LABEL_34:
    v9 = v31;
    v6 = v32;
    if ((*a2 & 1) == 0 && (*(a2 + 4) & 1) == 0)
    {
      v29 = v34[0];
      *a2 = v34[0];
      if (v29 == 1)
      {
        *(a2 + 2) = v35;
      }

      v30 = v36;
      *(a2 + 4) = v36;
      if (v30 == 1)
      {
        *(a2 + 6) = v37;
      }
    }

    goto LABEL_29;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = sub_23946B39C(v11, v12);
    if (!v15)
    {
      v13 = 172;
      v14 = 2327;
      goto LABEL_45;
    }

    v16 = v15;
    v17 = sub_239431484(v15);
    if (!v17)
    {
      v13 = 172;
      v14 = 2329;
      goto LABEL_45;
    }

    v18 = v17;
    if (sub_239450998(v17, v4))
    {
      if (sub_239450998(v18, v5))
      {
        if (sub_239450998(v18, v32))
        {
          goto LABEL_21;
        }

        v19 = 3;
      }

      else
      {
        v19 = 2;
      }
    }

    else
    {
      v19 = 1;
    }

    v20 = sub_23946B390(v16);
    if (!v20)
    {
      v13 = 172;
      v14 = 2348;
      goto LABEL_45;
    }

    v21 = v20;
    v22 = sub_2393FFBF4(v20);
    if (!v22)
    {
      v13 = 172;
      v14 = 2350;
      goto LABEL_45;
    }

    v23 = v22;
    v24 = sub_2393FFBE4(v21);
    if ((v24 & 0x80000000) != 0)
    {
      break;
    }

    sub_238DB6950(v33, v23, v24);
    v25 = sub_2393F38E0(v19, v33, a2, v34);
    v13 = v25;
    v14 = HIDWORD(v25);
    if (v25)
    {
      goto LABEL_45;
    }

LABEL_21:
    if (++v12 >= sub_23946B400(v11))
    {
      goto LABEL_34;
    }
  }

  v13 = 172;
  v14 = 2352;
LABEL_45:
  v9 = v31;
  v6 = v32;
LABEL_29:
  sub_23946EDF8(v9);
  v26 = v14 << 32;
  v27 = v13;
LABEL_30:
  sub_2393FDCD8(v6);
LABEL_31:
  sub_2393FDCD8(v5);
LABEL_32:
  sub_2393FDCD8(v4);
  return v27 | v26;
}

unint64_t sub_2393FBC68(uint64_t *a1, _OWORD *a2, uint64_t a3, _OWORD *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v26 = 20;
  __s1 = &v31;
  __n = 20;
  v29 = v5;
  v25 = &v30;
  if (v4)
  {
    v7 = a2;
    *a4 = *a1;
    if (a2)
    {
      v9 = a3;
      v10 = 0;
      LODWORD(v11) = 0;
      if (a3)
      {
        v11 = sub_2393FB168(1, a1, &__s1);
        if (!v11)
        {
          v12 = sub_23946EEB4(0, &v29, a1[1]);
          v13 = v12;
          if (v12)
          {
            v14 = sub_239465D34(v12);
            if (v14)
            {
              v15 = v14;
              while (1)
              {
                *v24 = *v7;
                v16 = v24[1];
                v23 = v24[0];
                if (!v24[1])
                {
                  v11 = 0x9650000002FLL;
                  goto LABEL_23;
                }

                v11 = sub_2393FB168(1, v24, &v25);
                if (v11)
                {
                  goto LABEL_20;
                }

                v17 = sub_23946EEB4(0, &v23, v16);
                v16 = v17;
                if (!v17)
                {
                  v11 = 0x96A0000000BLL;
                  goto LABEL_23;
                }

                v18 = sub_239465D34(v17);
                if (!v18)
                {
                  v11 = 0x96D000000ACLL;
                  goto LABEL_23;
                }

                v19 = v18;
                sub_238DB6950(__s2, v25, v26);
                if (__n == __s2[1] && (!__n || !memcmp(__s1, __s2[0], __n)) && !sub_239465AD0(v15, v19))
                {
                  break;
                }

                sub_23946EDF8(v16);
                ++v7;
                if (!--v9)
                {
LABEL_20:
                  v16 = 0;
                  goto LABEL_23;
                }
              }

              *a4 = *v24;
            }

            else
            {
              v16 = 0;
              v11 = 0x95E000000ACLL;
            }
          }

          else
          {
            v16 = 0;
            v11 = 0x95B0000000BLL;
          }

LABEL_23:
          sub_23946EDF8(v13);
          sub_23946EDF8(v16);
        }

        v10 = v11 & 0xFFFFFFFF00000000;
      }
    }

    else
    {
      v10 = 0;
      LODWORD(v11) = 0;
    }
  }

  else
  {
    v10 = 0x95200000000;
    LODWORD(v11) = 47;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11 | v10;
}

void sub_2393FBEC4(void *a1)
{
  sub_2393FBF2C(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2393FBF2C(void *a1)
{
  *a1 = &unk_284BB8F80;
  sub_2393F9D1C(a1);
  sub_239431130(a1[30]);
  a1[30] = 0;
  sub_239450194(a1 + 30, 0x78uLL);
  return a1;
}

uint64_t sub_2393FBFB8(unsigned int *a1, _BYTE *a2)
{
  result = *a1;
  v4 = *(a1 + 2);
  if ((v4 & 8) != 0)
  {
    LOBYTE(i) = v4 & 7;
    if (!result)
    {
      LOBYTE(i) = 0;
    }
  }

  else if (result < 1)
  {
    LOBYTE(i) = 0;
  }

  else
  {
    v5 = *(a1 + 1) - 1;
    while (1)
    {
      v6 = *(v5 + result);
      if (*(v5 + result))
      {
        break;
      }

      v7 = __OFSUB__(result, 1);
      result = (result - 1);
      if ((result < 0) ^ v7 | (result == 0))
      {
        LOBYTE(i) = 0;
        result = 0;
        goto LABEL_15;
      }
    }

    for (i = 0; i != 7; ++i)
    {
      if ((v6 >> i))
      {
        break;
      }
    }
  }

LABEL_15:
  *a2 = i;
  return result;
}

uint64_t sub_2393FC02C(unsigned int *a1, void *a2)
{
  v5 = 0;
  v3 = sub_2393FBFB8(a1, &v5);
  result = 0;
  if (!v5)
  {
    *a2 = v3;
    return 1;
  }

  return result;
}

uint64_t sub_2393FC07C(uint64_t a1, _BYTE **a2)
{
  if (!a1)
  {
    return 0;
  }

  v11 = 0;
  v4 = sub_2393FBFB8(a1, &v11);
  if (v4 == 0x7FFFFFFF)
  {
    sub_2394170F4(12, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_bitstr.c", 120);
    return 0;
  }

  v6 = v4;
  v5 = (v4 + 1);
  if (a2)
  {
    v7 = *a2;
    v8 = v11;
    *v7 = v11;
    v9 = v7 + 1;
    if (v4)
    {
      memcpy(v9, *(a1 + 8), v4);
      if (v6 >= 1)
      {
        v9[v6 - 1] &= -1 << v8;
      }
    }

    *a2 = &v9[v6];
  }

  return v5;
}

void *sub_2393FC15C(void *a1, unsigned __int8 **a2, uint64_t a3)
{
  if (a3 <= 0)
  {
    v4 = 174;
    v5 = 147;
    goto LABEL_5;
  }

  if (a3 >> 31)
  {
    v4 = 173;
    v5 = 152;
LABEL_5:
    sub_2394170F4(12, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_bitstr.c", v5);
    return 0;
  }

  if (a1 && (v6 = *a1) != 0 || (v6 = sub_239402F28()) != 0)
  {
    v10 = *a2;
    v12 = (*a2 + 1);
    v11 = **a2;
    if (v11 >= 8)
    {
      v13 = 141;
      v14 = 168;
LABEL_17:
      sub_2394170F4(12, 0, v13, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_bitstr.c", v14);
LABEL_18:
      if (!a1 || *a1 != v6)
      {
        sub_239402ECC(v6);
      }

      return 0;
    }

    if (**a2)
    {
      if (a3 == 1 || (v12[a3 - 2] & ~(-1 << v11)) != 0)
      {
        v13 = 194;
        v14 = 175;
        goto LABEL_17;
      }

      v6[2] = v11 | v6[2] & 0xFFFFFFFFFFFFFFF0 | 8;
    }

    else
    {
      v6[2] = v6[2] & 0xFFFFFFFFFFFFFFF0 | 8;
      if (a3 == 1)
      {
        v15 = 0;
LABEL_26:
        *v6 = a3 - 1;
        sub_239450144(v6[1]);
        v6[1] = v15;
        *(v6 + 1) = 3;
        if (a1)
        {
          *a1 = v6;
        }

        *a2 = v12;
        return v6;
      }
    }

    v16 = sub_239450350(v12, a3 - 1);
    if (!v16)
    {
      goto LABEL_18;
    }

    v15 = v16;
    v12 = &v10[a3];
    goto LABEL_26;
  }

  return v6;
}

uint64_t sub_2393FC30C(uint64_t result, int a2, int a3)
{
  v3 = a2 + 7;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  v4 = 1 << (~a2 & 7);
  if (a3)
  {
    v5 = 1 << (~a2 & 7);
  }

  else
  {
    v5 = 0;
  }

  if (result)
  {
    v6 = result;
    v7 = v3 >> 3;
    *(result + 16) &= 0xFFFFFFFFFFFFFFF0;
    if (*result <= v3 >> 3 || (v8 = *(result + 8)) == 0)
    {
      if (!a3)
      {
        return 1;
      }

      v9 = v7 + 1;
      v10 = *(result + 8);
      if (v10)
      {
        v11 = sub_2394501A0(v10, v7 + 1);
      }

      else
      {
        v11 = sub_23945004C(v9);
      }

      v8 = v11;
      if (!v11)
      {
        return 0;
      }

      v12 = *v6;
      v13 = (v9 - v12);
      if (v13 >= 1)
      {
        bzero(v11 + v12, v13);
      }

      *(v6 + 1) = v8;
      *v6 = v9;
    }

    *(v8 + v7) = *(v8 + v7) & ~v4 | v5;
    v14 = *v6;
    if (*v6 >= 1)
    {
      v15 = *(v6 + 1) - 1;
      do
      {
        if (*(v15 + v14))
        {
          break;
        }

        v16 = __OFSUB__(v14--, 1);
        *v6 = v14;
      }

      while (!((v14 < 0) ^ v16 | (v14 == 0)));
    }

    return 1;
  }

  return result;
}

uint64_t sub_2393FC41C(uint64_t result, int a2)
{
  v2 = a2 + 7;
  if (a2 >= 0)
  {
    v2 = a2;
  }

  if (result)
  {
    v3 = v2 >> 3;
    if (*result > v3 && (v4 = *(result + 8)) != 0)
    {
      return (*(v4 + v3) >> (~a2 & 7)) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_2393FC464(unsigned int *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 1);
  if (!v3)
  {
    return 1;
  }

  v4 = *a1;
  if (v4 < 1)
  {
    return 1;
  }

  v5 = 0;
  do
  {
    if (v5 >= a3)
    {
      v6 = -1;
    }

    else
    {
      v6 = ~*(a2 + v5);
    }

    v7 = (v6 & *(v3 + v5++));
  }

  while (v5 < v4 && !v7);
  return v7 == 0;
}

uint64_t sub_2393FC4C8(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  if (!sub_239403CE4(a2, &v9, &v8, 0x7FFFFFFFuLL))
  {
    return 0;
  }

  v7 = v9;
  v5 = sub_2394004F8(a3, &v7, v8, a1);
  sub_239450144(v9);
  return v5;
}

uint64_t sub_2393FC544(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2394042E8();
  if (v5)
  {
    v6 = v5;
    v7 = sub_2393FC4C8(a1, v5, a3);
    sub_239403520(v6);
    return v7;
  }

  else
  {
    sub_2394170F4(12, 0, 7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_d2i_fp.c", 83);
    return 0;
  }
}

uint64_t sub_2393FC5C8(unsigned __int8 *a1, uint64_t a2)
{
  v7 = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = sub_2394018FC(a2, &v7, a1);
  if (!v7)
  {
    return 0;
  }

  v6 = v7;
  v4 = sub_2394004F8(0, &v6, v3, a1);
  sub_239450144(v7);
  return v4;
}

BOOL sub_2393FC644(int *a1, int *a2)
{
  if (a2[1] != 24)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  v4 = *a2;
  *&v6 = *(a2 + 1);
  *(&v6 + 1) = v4;
  return sub_2394089B4(&v6, a1, 0) != 0;
}

uint64_t sub_2393FC6AC(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  *&v6 = __s;
  *(&v6 + 1) = v4;
  result = sub_2394089B4(&v6, 0, 0);
  if (result)
  {
    if (a1)
    {
      result = sub_2393FF8AC(a1, __s, v4);
      if (!result)
      {
        return result;
      }

      *(a1 + 4) = 24;
    }

    return 1;
  }

  return result;
}

void *sub_2393FC734(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (!sub_2394000EC(a2, &v11) || (a3 || a4) && !sub_239400390(&v11, a3, a4))
  {
    goto LABEL_7;
  }

  if ((DWORD1(v12) - 8100) <= 0xFFFFD8EF)
  {
    sub_2394170F4(12, 0, 138, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_gentm.c", 122);
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (snprintf(__str, 0x10uLL, "%04d%02d%02d%02d%02d%02dZ", DWORD1(v12) + 1900, v12 + 1, HIDWORD(v11), DWORD2(v11), DWORD1(v11), v11) != 15)
  {
    abort();
  }

  v7 = a1;
  if (a1 || (v7 = sub_239402FE8()) != 0)
  {
    v10 = strlen(__str);
    if (sub_2393FF8AC(v7, __str, v10))
    {
      *(v7 + 1) = 24;
      goto LABEL_8;
    }

    if (!a1)
    {
      sub_239402ECC(v7);
    }

    goto LABEL_7;
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2393FC8A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2394042E8();
  if (v5)
  {
    v6 = v5;
    v7 = sub_2393FC924(a1, v5, a3);
    sub_239403520(v6);
    return v7;
  }

  else
  {
    sub_2394170F4(12, 0, 7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_i2d_fp.c", 67);
    return 0;
  }
}

uint64_t sub_2393FC924(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v4 = sub_2394018FC(a3, &v7, a1);
  if (!v7)
  {
    return 0;
  }

  v5 = sub_2394037E0(a2, v7, v4);
  sub_239450144(v7);
  return v5;
}

uint64_t sub_2393FC994(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4) & 0x100;
  if (v2 == (*(a2 + 4) & 0x100))
  {
    LODWORD(result) = sub_2393FFB10(a1, a2);
    if (result)
    {
      v4 = -1;
    }

    else
    {
      v4 = 0;
    }

    if (result >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    if (v2)
    {
      return v5;
    }

    else
    {
      return result;
    }
  }

  else if (v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

void **sub_2393FC9F8(void **a1, _BYTE **a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  v4 = *a1;
  __src[0] = a1[1];
  __src[1] = v4;
  if (v4)
  {
    do
    {
      if (*__src[0])
      {
        break;
      }

      sub_239407718(__src, 1uLL);
    }

    while (__src[1]);
  }

  v5 = *(v2 + 1);
  v19 = *__src;
  v18 = 0;
  if (!sub_239407860(&v19, &v18))
  {
    v7 = 1;
LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  if ((v5 & 0x100) == 0)
  {
    v6 = v18 >> 7;
    v7 = 1;
    goto LABEL_12;
  }

  if (v18 > 0x80u)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (v18 == 128)
  {
    v6 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      if (*v19)
      {
        goto LABEL_10;
      }

      v15 = 1;
      do
      {
        v16 = v15;
        if (*(&v19 + 1) == v15)
        {
          break;
        }

        v17 = *(v19 + v15++);
      }

      while (!*(v19 + v16));
      v7 = 0;
      v6 = v16 < *(&v19 + 1);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

LABEL_12:
  v8 = __src[1];
  if (__src[1] <= (v6 ^ 0x7FFFFFFF))
  {
    v2 = (__src[1] + v6);
    if (a2)
    {
      if (v6)
      {
        **a2 = 0;
        v8 = __src[1];
      }

      if (v8)
      {
        memcpy(&(*a2)[v6], __src[0], v8);
      }

      v9 = *a2;
      if (v2)
      {
        v10 = v7;
      }

      else
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        v11 = 0;
        v12 = v2 - 1;
        do
        {
          v13 = v9[v12];
          v9[v12] = -v11 - v13;
          v11 |= v13 != 0;
          --v12;
        }

        while (v12 < v2);
        v9 = *a2;
      }

      *a2 = &v9[v2];
    }
  }

  else
  {
    sub_2394170F4(12, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_int.c", 153);
    return 0;
  }

  return v2;
}