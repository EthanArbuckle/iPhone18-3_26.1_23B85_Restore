uint64_t sub_240ADB3AC(uint64_t a1, uint64_t a2, uint64_t **a3, _DWORD *a4, unsigned __int8 *a5)
{
  if (*a4 < 4u)
  {
    return 0;
  }

  v25 = v5;
  v26 = v6;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v13 = bswap32(v24);
  if (v13 > 0xFFFFFFFB || v13 + 4 > *a4)
  {
    return 0;
  }

  v14 = *(a1 + 40);
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
        goto LABEL_13;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_13:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  result = (*v16)();
  if (result)
  {
    v17 = result;
    if ((*(a2 + 280))(a2, result, 1, v13) == v13)
    {
      v17[v13] = 0;
      sub_240ACB8DC(a3, 80, 0x53u, *a5, a5[1], v17);
      v18 = *(a1 + 40);
      if (v18)
      {
        v19 = &qword_27E516570;
        while (1)
        {
          v19 = *v19;
          if (!v19)
          {
            break;
          }

          if (v19 == v18)
          {
            goto LABEL_30;
          }
        }

        v19 = &unk_278CB2F00;
      }

      else
      {
        v19 = &unk_278CB2F00;
      }

LABEL_30:
      v22 = v19[6];
      if (!v22)
      {
        v22 = &xmmword_281500C10;
      }

      (*(v22 + 2))();
      *a4 = *a4 - v13 - 4;
      return 1;
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      v21 = &qword_27E516570;
      while (1)
      {
        v21 = *v21;
        if (!v21)
        {
          break;
        }

        if (v21 == v20)
        {
          goto LABEL_34;
        }
      }

      v21 = &unk_278CB2F00;
    }

    else
    {
      v21 = &unk_278CB2F00;
    }

LABEL_34:
    v23 = v21[6];
    if (!v23)
    {
      v23 = &xmmword_281500C10;
    }

    (*(v23 + 2))();
    return 0;
  }

  return result;
}

uint64_t sub_240ADB5D0(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    sub_240AC26D0(*a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    sub_240AC26D0(v4);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    sub_240ACBDDC(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
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
        goto LABEL_14;
      }
    }

    v7 = &unk_278CB2F00;
  }

  else
  {
    v7 = &unk_278CB2F00;
  }

LABEL_14:
  v8 = v7[6];
  if (!v8)
  {
    v8 = &xmmword_281500C10;
  }

  v9 = *(v8 + 2);

  return v9();
}

uint64_t *sub_240ADB680(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  if (v3)
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

  v13 = (*(v5 + 1))();
  if (v13)
  {
    v13[1] = sub_240AC2A40(a2[1], v6, v7, v8, v9, v10, v11, v12);
    *v13 = sub_240AC2A40(*a2, v14, v15, v16, v17, v18, v19, v20);
    v13[2] = sub_240ACBCC4(a2[2]);
  }

  return v13;
}

uint64_t sub_240ADB73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = bswap32(*(*a3 + 40));
  if ((*(a2 + 312))(a2, 4, &v22) != 1)
  {
    return 0;
  }

  v6 = *(*a3 + 40);
  if (v6)
  {
    v7 = *(*a3 + 48);
    do
    {
      v8 = *v7++;
      v23 = bswap32(v8) >> 16;
      if ((*(a2 + 312))(a2, 2, &v23) != 1)
      {
        return 0;
      }
    }

    while (--v6);
  }

  v24 = bswap32(*(*(a3 + 8) + 40));
  if ((*(a2 + 312))(a2, 4, &v24) != 1)
  {
    return 0;
  }

  v9 = *(a3 + 8);
  v10 = *(v9 + 40);
  if (v10)
  {
    v11 = *(v9 + 48);
    do
    {
      v12 = *v11++;
      v25 = bswap32(v12) >> 16;
      if ((*(a2 + 312))(a2, 2, &v25) != 1)
      {
        return 0;
      }
    }

    while (--v10);
  }

  v13 = sub_240ACBF1C(*(a3 + 16), 0, 0, word_240C15120, 0, 0);
  v14 = *(a1 + 40);
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
        goto LABEL_18;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_18:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  v17 = (*v16)();
  if (sub_240ACBF1C(*(a3 + 16), 0, 0, word_240C15120, v17, v13) != v13)
  {
    return 0;
  }

  result = (*(a2 + 312))(a2, v13, v17);
  if (result)
  {
    if (v17)
    {
      v19 = *(a1 + 40);
      if (v19)
      {
        v20 = &qword_27E516570;
        while (1)
        {
          v20 = *v20;
          if (!v20)
          {
            break;
          }

          if (v20 == v19)
          {
            goto LABEL_32;
          }
        }

        v20 = &unk_278CB2F00;
      }

      else
      {
        v20 = &unk_278CB2F00;
      }

LABEL_32:
      v21 = v20[6];
      if (!v21)
      {
        v21 = &xmmword_281500C10;
      }

      (*(v21 + 2))();
    }

    return 1;
  }

  return result;
}

uint64_t sub_240ADB994(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  v8 = *(a1 + 40);
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
        goto LABEL_8;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_8:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  result = (*(v10 + 1))();
  *a3 = 0;
  if (result)
  {
    v12 = result;
    v33 = 0;
    if ((*(a2 + 280))(a2, &v33, 4, 1) != 1)
    {
      return 0;
    }

    v16 = a4 - 4;
    if (a4 < 4)
    {
      return 0;
    }

    v17 = bswap32(v33);
    result = sub_240AC1684(*(a1 + 40), v17, 0, 0, 0, v13, v14, v15);
    *v12 = result;
    if (result)
    {
      v18 = sub_240AD4408(a2, v17, *(result + 48));
      result = 0;
      if (v16 >= 4)
      {
        if (v18)
        {
          v34 = 0;
          if ((*(a2 + 280))(a2, &v34, 4, 1) != 1)
          {
            return 0;
          }

          v22 = v16 - 2 * v17;
          v23 = v22 - 4;
          if (v22 < 4)
          {
            return 0;
          }

          v24 = bswap32(v34);
          result = sub_240AC1684(*(a1 + 40), v24, 0, 0, 0, v19, v20, v21);
          *(v12 + 8) = result;
          if (!result)
          {
            return result;
          }

          if (!sub_240AD4408(a2, v24, *(result + 48)))
          {
            return 0;
          }

          if (2 * v24 > v23)
          {
            return 0;
          }

          v25 = v23 - 2 * v24;
          if (v25 == -1)
          {
            return 0;
          }

          result = sub_240ACB75C(*(a1 + 40), 1u);
          *(v12 + 16) = result;
          if (result)
          {
            v26 = *(a1 + 40);
            if (v26)
            {
              v27 = &qword_27E516570;
              while (1)
              {
                v27 = *v27;
                if (!v27)
                {
                  break;
                }

                if (v27 == v26)
                {
                  goto LABEL_32;
                }
              }

              v27 = &unk_278CB2F00;
            }

            else
            {
              v27 = &unk_278CB2F00;
            }

LABEL_32:
            v28 = v27[6];
            if (!v28)
            {
              v28 = &xmmword_281500C10;
            }

            v29 = (*v28)();
            if ((*(a2 + 280))(a2, v29, 1, v25) != v25)
            {
              return 0;
            }

            v29[v25] = 0;
            sub_240ACB8DC(*(v12 + 16), 0, 0, 0, 0, v29);
            v30 = *(a1 + 40);
            if (v30)
            {
              v31 = &qword_27E516570;
              while (1)
              {
                v31 = *v31;
                if (!v31)
                {
                  break;
                }

                if (v31 == v30)
                {
                  goto LABEL_42;
                }
              }

              v31 = &unk_278CB2F00;
            }

            else
            {
              v31 = &unk_278CB2F00;
            }

LABEL_42:
            v32 = v31[6];
            if (!v32)
            {
              v32 = &xmmword_281500C10;
            }

            (*(v32 + 2))();
            *a3 = 1;
            return v12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_240ADBC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 304))(a2);
  if (!sub_240AC8FA8(a3, 1, v6, v7, v8, v9, v10, v11, 116) && !sub_240AC8FA8(a3, 3, v12, v13, v14, v15, v16, v17, 116) && !sub_240AC8FA8(a3, 3, v18, v19, v20, v21, v22, v23, 116) && !sub_240AC8FA8(a3, 5, v24, v25, v26, v27, v28, v29, 116))
  {
    sub_240AC15A4(*(a1 + 40), 13, "LUT is not suitable to be saved as LutBToA", v30, v31, v32, v33, v34, v39);
    return 0;
  }

  v35 = *(a3 + 12);
  LOBYTE(v40) = *(a3 + 8);
  if ((*(a2 + 312))(a2, 1, &v40) != 1)
  {
    return 0;
  }

  LOBYTE(v40) = v35;
  if ((*(a2 + 312))(a2, 1, &v40) != 1)
  {
    return 0;
  }

  LOWORD(v40) = 0;
  if ((*(a2 + 312))(a2, 2, &v40) != 1)
  {
    return 0;
  }

  v36 = (*(a2 + 304))(a2);
  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v38 = (*(a2 + 304))(a2);
  result = (*(a2 + 288))(a2, v36);
  if (result)
  {
    v40 = bswap32(0);
    if ((*(a2 + 312))(a2, 4, &v40) == 1)
    {
      v40 = bswap32(0);
      if ((*(a2 + 312))(a2, 4, &v40) == 1)
      {
        v40 = bswap32(0);
        if ((*(a2 + 312))(a2, 4, &v40) == 1)
        {
          v40 = bswap32(0);
          if ((*(a2 + 312))(a2, 4, &v40) == 1)
          {
            v40 = bswap32(0);
            if ((*(a2 + 312))(a2, 4, &v40) == 1)
            {
              return (*(a2 + 288))(a2, v38) != 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_240ADC110(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  if (a3)
  {
    v7 = a3;
    while (1)
    {
      v8 = *a4;
      v9 = *(*a4 + 8);
      v10 = 1668641398;
      if (v9)
      {
        if (v9 != 2)
        {
          v11 = *(v8 + 16);
LABEL_8:
          if (*(v11 + 8) >= 0)
          {
            v10 = 1885434465;
          }

          else
          {
            v10 = 1668641398;
          }

          goto LABEL_11;
        }

        v11 = *(v8 + 16);
        if (*(v11 + 120))
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      v18[0] = bswap32(v10);
      v18[1] = 0;
      result = (*(a2 + 312))(a2, 8, v18);
      if (!result)
      {
        return result;
      }

      if (v10 == 1885434465)
      {
        result = sub_240ADC8F4(a1, a2, *a4, v13, v14, v15, v16, v17);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = sub_240ADC7C0(result, a2, *a4);
        if (!result)
        {
          return result;
        }
      }

      result = sub_240AD46E4(a2);
      if (!result)
      {
        return result;
      }

      ++a4;
      if (!--v7)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_240ADC260(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (*(a4 + 20))
  {
    sub_240AC15A4(*(a1 + 40), 13, "Cannot save floating point data, CLUT are 8 or 16 bit only", a4, a5, a6, a7, a8, v22);
    goto LABEL_3;
  }

  v24[0] = 0;
  v24[1] = 0;
  v13 = *(a4 + 8);
  v14 = *(v13 + 12);
  if (v14)
  {
    v15 = (v13 + 20);
    v16 = v24;
    do
    {
      v17 = *v15++;
      *v16++ = v17;
      --v14;
    }

    while (v14);
  }

  result = (*(a2 + 312))(a2, 16, v24);
  if (result)
  {
    LOBYTE(v23) = a3;
    if ((*(a2 + 312))(a2, 1, &v23) == 1)
    {
      LOBYTE(v23) = 0;
      if ((*(a2 + 312))(a2, 1, &v23) == 1)
      {
        LOBYTE(v23) = 0;
        if ((*(a2 + 312))(a2, 1, &v23) == 1)
        {
          LOBYTE(v23) = 0;
          if ((*(a2 + 312))(a2, 1, &v23) == 1)
          {
            v18 = *(a4 + 16);
            if (a3 == 1)
            {
              if (v18)
              {
                v19 = 0;
                do
                {
                  LOBYTE(v23) = (65281 * *(*a4 + 2 * v19) + 0x800000) >> 24;
                  if ((*(a2 + 312))(a2, 1, &v23) != 1)
                  {
                    goto LABEL_3;
                  }
                }

                while (++v19 < *(a4 + 16));
              }
            }

            else if (v18)
            {
              v20 = *a4;
              do
              {
                v21 = *v20++;
                v23 = bswap32(v21) >> 16;
                if ((*(a2 + 312))(a2, 2, &v23) != 1)
                {
                  goto LABEL_3;
                }
              }

              while (--v18);
            }

            result = sub_240AD46E4(a2) != 0;
            goto LABEL_4;
          }
        }
      }
    }

LABEL_3:
    result = 0;
  }

LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_240ADC45C(uint64_t a1, void *a2)
{
  v6 = bswap32(vcvtmd_s64_f64(**a2 * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 8) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 16) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 24) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 32) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 40) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 48) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 56) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 64) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v4 = a2[1];
  if (v4)
  {
    v6 = bswap32(vcvtmd_s64_f64(*v4 * 65536.0 + 0.5));
    if ((*(a1 + 312))(a1, 4, &v6) != 1)
    {
      return 0;
    }

    v6 = bswap32(vcvtmd_s64_f64(*(a2[1] + 8) * 65536.0 + 0.5));
    if ((*(a1 + 312))(a1, 4, &v6) != 1)
    {
      return 0;
    }

    v6 = bswap32(vcvtmd_s64_f64(*(a2[1] + 16) * 65536.0 + 0.5));
  }

  else
  {
    v6 = 0;
    if ((*(a1 + 312))(a1, 4, &v6) != 1)
    {
      return 0;
    }

    v6 = 0;
    if ((*(a1 + 312))(a1, 4, &v6) != 1)
    {
      return 0;
    }

    v6 = 0;
  }

  return (*(a1 + 312))(a1, 4, &v6) == 1;
}

BOOL sub_240ADC7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 1 && (v5 = *(a3 + 16), *(v5 + 8) == 1))
  {
    v6 = *(v5 + 16);
    v11 = 0x1000000;
    if ((*(a2 + 312))(a2, 4, &v11) == 1)
    {
      v12 = bswap32(vcvtmd_s64_f64(v6 * 65536.0 + 0.5)) >> 8;
      return (*(a2 + 312))(a2, 2, &v12) == 1;
    }
  }

  else
  {
    v13 = bswap32(*(a3 + 40));
    if ((*(a2 + 312))(a2, 4, &v13) == 1)
    {
      v8 = *(a3 + 40);
      if (!v8)
      {
        return 1;
      }

      v9 = *(a3 + 48);
      while (1)
      {
        v10 = *v9++;
        v14 = bswap32(v10) >> 16;
        if ((*(a2 + 312))(a2, 2, &v14) != 1)
        {
          break;
        }

        if (!--v8)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_240ADC8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a3 + 16) + 8);
  if (*(a3 + 8) > 1u || v8 < 1)
  {
    v10 = "Multisegment or Inverted parametric curves cannot be written";
LABEL_9:
    sub_240AC15A4(*(a1 + 40), 8, v10, a4, a5, a6, a7, a8, v16);
    return 0;
  }

  if (v8 > 5)
  {
    v10 = "Unsupported parametric curve";
    goto LABEL_9;
  }

  LODWORD(v14) = dword_240C1513C[v8];
  v17 = bswap32(v8 - 1) >> 16;
  if ((*(a2 + 312))(a2, 2, &v17) == 1)
  {
    v18 = 0;
    if ((*(a2 + 312))(a2, 2, &v18) == 1)
    {
      if (v14 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v14;
      }

      for (i = 16; ; i += 8)
      {
        v19 = bswap32(vcvtmd_s64_f64(*(*(a3 + 16) + i) * 65536.0 + 0.5));
        if ((*(a2 + 312))(a2, 4, &v19) != 1)
        {
          break;
        }

        if (!--v14)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t *sub_240ADCA2C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = (*(a2 + 304))(a2);
  LOBYTE(v24) = 0;
  if ((*(a2 + 280))(a2, &v24, 1, 1) != 1)
  {
    return 0;
  }

  v7 = v24;
  LOBYTE(v24) = 0;
  if ((*(a2 + 280))(a2, &v24, 1, 1) != 1)
  {
    return 0;
  }

  v8 = v24;
  if ((v7 - 16) < 0xFFFFFFF1 || v24 - 16 < 0xFFFFFFF1)
  {
    return 0;
  }

  LOWORD(v24) = 0;
  if ((*(a2 + 280))(a2, &v24, 2, 1) != 1)
  {
    return 0;
  }

  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v10 = v24;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v11 = v24;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v12 = v24;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v13 = v24;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v22 = v24;
  v23 = v13;
  v14 = sub_240ACADFC(*(a1 + 40), v7, v8);
  if (v14)
  {
    v15 = v6 - 8;
    if (!v10 || (v16 = sub_240ADCD18(a1, a2, bswap32(v10) + v15, v7), sub_240ACB414(v14, 1, v16)))
    {
      if (!v11 || (v17 = sub_240ADCF30(a1, a2, bswap32(v11) + v15), sub_240ACB414(v14, 1, v17)))
      {
        if (!v12 || (v18 = sub_240ADCD18(a1, a2, bswap32(v12) + v15, v7), sub_240ACB414(v14, 1, v18)))
        {
          if (!v23 || (v19 = sub_240ADD0A0(a1, a2, bswap32(v23) + v15, v7, v8), sub_240ACB414(v14, 1, v19)))
          {
            if (!v22 || (v20 = sub_240ADCD18(a1, a2, bswap32(v22) + v15, v8), sub_240ACB414(v14, 1, v20)))
            {
              *a3 = 1;
              return v14;
            }
          }
        }
      }
    }

    sub_240ACB1C0(v14);
    return 0;
  }

  return v14;
}

int32x2_t *sub_240ADCD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 > 0x10 || !(*(a2 + 288))(a2, a3))
  {
    v19 = 0;
    goto LABEL_23;
  }

  memset(v26, 0, sizeof(v26));
  if (!a4)
  {
    v19 = sub_240AC904C(*(a1 + 40), 0, v26);
    goto LABEL_23;
  }

  bzero(v26, (8 * a4));
  v7 = 0;
  v8 = a4;
  while (1)
  {
    v25 = 0;
    v9 = (*(a2 + 280))(a2, &v25, 8, 1);
    v15 = bswap32(v25);
    if (v9 != 1)
    {
      v15 = 0;
    }

    if (v15 == 1885434465)
    {
      v16 = sub_240ADD42C(a1, a2, &v24);
      goto LABEL_11;
    }

    if (v15 != 1668641398)
    {
      break;
    }

    v16 = sub_240ADD2D0(a1, a2, &v24);
LABEL_11:
    *(v26 + v7) = v16;
    if (!v16 || (v17 = (*(a2 + 304))(a2), v18 = (v17 + 3) & 0xFFFFFFFC, v18 != v17) && (v18 - v17 >= 5 || (*(a2 + 280))(a2, &v25) != 1))
    {
      v19 = 0;
      goto LABEL_21;
    }

    if (a4 == ++v7)
    {
      v19 = sub_240AC904C(*(a1 + 40), a4, v26);
      goto LABEL_21;
    }
  }

  LODWORD(v25) = bswap32(v15);
  BYTE4(v25) = 0;
  sub_240AC15A4(*(a1 + 40), 8, "Unknown curve type '%s'", v10, v11, v12, v13, v14, &v25);
  v19 = 0;
  *(v26 + v7) = 0;
LABEL_21:
  v20 = v26;
  do
  {
    v21 = *v20++;
    sub_240AC26D0(v21);
    --v8;
  }

  while (v8);
LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

int32x2_t *sub_240ADCF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 288))(a2, a3) && sub_240AD4570(a2, &v10) && sub_240AD4570(a2, &v11) && sub_240AD4570(a2, &v12) && sub_240AD4570(a2, &v13) && sub_240AD4570(a2, &v14) && sub_240AD4570(a2, &v15) && sub_240AD4570(a2, &v16) && sub_240AD4570(a2, &v17) && sub_240AD4570(a2, v18) && sub_240AD4570(a2, &v7) && sub_240AD4570(a2, &v8) && sub_240AD4570(a2, &v9))
  {
    result = sub_240AC977C(*(a1 + 40), 3, 3u, &v10, &v7);
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_240ADD0A0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 288))(a2, a3) && (*(a2 + 280))(a2, v28, 16, 1) == 1)
  {
    for (i = 0; i != 16; ++i)
    {
      v10 = v28[i];
      if (v10 == 1)
      {
        goto LABEL_21;
      }

      v27[i] = v10;
    }

    v26 = 0;
    if ((*(a2 + 280))(a2, &v26, 1, 1) == 1)
    {
      v11 = v26;
      v26 = 0;
      if ((*(a2 + 280))(a2, &v26, 1, 1) == 1)
      {
        v26 = 0;
        if ((*(a2 + 280))(a2, &v26, 1, 1) == 1)
        {
          v26 = 0;
          if ((*(a2 + 280))(a2, &v26, 1, 1) == 1)
          {
            v15 = sub_240AC9DB8(*(a1 + 40), v27, a4, a5, 0, v12, v13, v14);
            v16 = v15;
            if (!v15)
            {
              goto LABEL_22;
            }

            v17 = v15[6];
            if (v11 == 2)
            {
              if (sub_240AD4408(a2, *(*&v17 + 16), **&v17))
              {
                goto LABEL_22;
              }

              goto LABEL_19;
            }

            if (v11 == 1)
            {
              v26 = 0;
              if (!*(*&v17 + 16))
              {
                goto LABEL_22;
              }

              v18 = 0;
              while ((*(a2 + 280))(a2, &v26, 1, 1) == 1)
              {
                *(**&v17 + 2 * v18++) = v26 | (v26 << 8);
                if (v18 >= *(*&v17 + 16))
                {
                  goto LABEL_22;
                }
              }

LABEL_19:
              sub_240AC96E4(v16);
              goto LABEL_21;
            }

            sub_240AC96E4(v15);
            sub_240AC15A4(*(a1 + 40), 8, "Unknown precision of '%d'", v19, v20, v21, v22, v23, v11);
          }
        }
      }
    }
  }

LABEL_21:
  v16 = 0;
LABEL_22:
  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_240ADD2D0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  LODWORD(v14) = 0;
  if ((*(a2 + 280))(a2, &v14, 4, 1) != 1)
  {
    return 0;
  }

  v9 = bswap32(LODWORD(v14));
  if (v9 == 1)
  {
    v15 = 0;
    if ((*(a2 + 280))(a2, &v15, 2, 1) == 1)
    {
      v11 = bswap32(v15);
      v14 = vcvtd_n_f64_u32(BYTE2(v11), 8uLL) + HIBYTE(v11);
      *a3 = 1;
      return sub_240AC2604(*(a1 + 40), 1);
    }

    return 0;
  }

  if (v9)
  {
    if (!(v9 >> 15))
    {
      v13 = sub_240AC1684(*(a1 + 40), v9, 0, 0, 0, v6, v7, v8);
      v10 = v13;
      if (!v13)
      {
        return v10;
      }

      if (sub_240AD4408(a2, v9, *(v13 + 48)))
      {
        *a3 = 1;
        return v10;
      }

      sub_240AC26D0(v10);
    }

    return 0;
  }

  v14 = 1.0;
  v10 = sub_240AC2604(*(a1 + 40), 1);
  if (v10)
  {
    *a3 = 1;
  }

  return v10;
}

uint64_t sub_240ADD42C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  LOWORD(v19[0]) = 0;
  if ((*(a2 + 280))(a2, v19, 2, 1) == 1)
  {
    v6 = LOWORD(v19[0]);
    LOWORD(v19[0]) = 0;
    if ((*(a2 + 280))(a2, v19, 2, 1) == 1)
    {
      v12 = bswap32(v6);
      v13 = HIWORD(v12);
      if (HIWORD(v12) < 5u)
      {
        memset(v19, 0, sizeof(v19));
        v16 = dword_240C15128[v13];
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = v19;
        while (sub_240AD4570(a2, v18))
        {
          ++v18;
          if (!--v17)
          {
            result = sub_240AC2604(*(a1 + 40), (v13 + 1));
            *a3 = 1;
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_240AC15A4(*(a1 + 40), 8, "Unknown parametric curve type '%d'", v7, v8, v9, v10, v11, SBYTE2(v12));
      }
    }
  }

  result = 0;
LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ADD584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 304))(a2);
  if (*a3 && !sub_240AC8FA8(a3, 1, v6, v7, v8, v9, v10, v11, 116) && !sub_240AC8FA8(a3, 3, v12, v13, v14, v15, v16, v17, 116) && !sub_240AC8FA8(a3, 3, v18, v19, v20, v21, v22, v23, 116) && !sub_240AC8FA8(a3, 5, v24, v25, v26, v27, v28, v29, 116))
  {
    sub_240AC15A4(*(a1 + 40), 13, "LUT is not suitable to be saved as LutAToB", v30, v31, v32, v33, v34, v39);
    return 0;
  }

  v35 = *(a3 + 12);
  LOBYTE(v40) = *(a3 + 8);
  if ((*(a2 + 312))(a2, 1, &v40) != 1)
  {
    return 0;
  }

  LOBYTE(v40) = v35;
  if ((*(a2 + 312))(a2, 1, &v40) != 1)
  {
    return 0;
  }

  LOWORD(v40) = 0;
  if ((*(a2 + 312))(a2, 2, &v40) != 1)
  {
    return 0;
  }

  v36 = (*(a2 + 304))(a2);
  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v40 = 0;
  if ((*(a2 + 312))(a2, 4, &v40) != 1)
  {
    return 0;
  }

  v38 = (*(a2 + 304))(a2);
  result = (*(a2 + 288))(a2, v36);
  if (result)
  {
    v40 = bswap32(0);
    if ((*(a2 + 312))(a2, 4, &v40) == 1)
    {
      v40 = bswap32(0);
      if ((*(a2 + 312))(a2, 4, &v40) == 1)
      {
        v40 = bswap32(0);
        if ((*(a2 + 312))(a2, 4, &v40) == 1)
        {
          v40 = bswap32(0);
          if ((*(a2 + 312))(a2, 4, &v40) == 1)
          {
            v40 = bswap32(0);
            if ((*(a2 + 312))(a2, 4, &v40) == 1)
            {
              return (*(a2 + 288))(a2, v38) != 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t *sub_240ADDA14(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = (*(a2 + 304))(a2);
  LOBYTE(v23) = 0;
  if ((*(a2 + 280))(a2, &v23, 1, 1) != 1)
  {
    return 0;
  }

  v7 = v23;
  LOBYTE(v23) = 0;
  if ((*(a2 + 280))(a2, &v23, 1, 1) != 1)
  {
    return 0;
  }

  v8 = v23;
  LOWORD(v23) = 0;
  if ((*(a2 + 280))(a2, &v23, 2, 1) != 1)
  {
    return 0;
  }

  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v9 = v23;
  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v10 = v23;
  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v11 = v23;
  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v12 = v23;
  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v22 = v12;
  v13 = 0;
  if ((v7 - 16) >= 0xFFFFFFF1 && (v8 - 16) >= 0xFFFFFFF1)
  {
    v21 = v23;
    v13 = sub_240ACADFC(*(a1 + 40), v7, v8);
    if (v13)
    {
      v14 = v6 - 8;
      if (!v21 || (v15 = sub_240ADCD18(a1, a2, bswap32(v21) + v14, v7), sub_240ACB414(v13, 1, v15)))
      {
        if (!v22 || (v16 = sub_240ADD0A0(a1, a2, bswap32(v22) + v14, v7, v8), sub_240ACB414(v13, 1, v16)))
        {
          if (!v11 || (v17 = sub_240ADCD18(a1, a2, bswap32(v11) + v14, v8), sub_240ACB414(v13, 1, v17)))
          {
            if (!v10 || (v18 = sub_240ADCF30(a1, a2, bswap32(v10) + v14), sub_240ACB414(v13, 1, v18)))
            {
              if (!v9 || (v19 = sub_240ADCD18(a1, a2, bswap32(v9) + v14, v8), sub_240ACB414(v13, 1, v19)))
              {
                *a3 = 1;
                return v13;
              }
            }
          }
        }
      }

      sub_240ACB1C0(v13);
      return 0;
    }
  }

  return v13;
}

uint64_t sub_240ADDD08(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240ADDD68(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  if (v2)
  {
    v4 = &qword_27E516570;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == v2)
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

  return (*(v5 + 5))();
}

uint64_t sub_240ADDDD8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v8 = bswap32(a3[1]);
  if ((*(a2 + 312))(a2, 4, &v8) != 1)
  {
    return 0;
  }

  v5 = *(a2 + 312);
  v6 = *a3;

  return v5(a2, v6, a3 + 2);
}

_DWORD *sub_240ADDE60(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  *a3 = 0;
  v4 = a4 - 4;
  if (a4 < 4 || (a4 - 4) < 0)
  {
    return 0;
  }

  v8 = *(a1 + 40);
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
        goto LABEL_10;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_10:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  v11 = (*v10)();
  v12 = v11;
  if (v11)
  {
    *v11 = v4;
    v18 = 0;
    if ((*(a2 + 280))(a2, &v18, 4, 1) == 1)
    {
      v12[1] = bswap32(v18);
      if ((*(a2 + 280))(a2, v12 + 2, 1, v4) == v4)
      {
        *a3 = 1;
        return v12;
      }

      v15 = *(a1 + 40);
      if (v15)
      {
        v14 = &qword_27E516570;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            break;
          }

          if (v14 == v15)
          {
            goto LABEL_28;
          }
        }

LABEL_27:
        v14 = &unk_278CB2F00;
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = &qword_27E516570;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_27;
          }

          if (v14 == v13)
          {
            goto LABEL_28;
          }
        }
      }
    }

    v14 = &unk_278CB2F00;
LABEL_28:
    v16 = v14[6];
    if (!v16)
    {
      v16 = &xmmword_281500C10;
    }

    (*(v16 + 2))();
    return 0;
  }

  return v12;
}

uint64_t sub_240ADE014(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240ADE074(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

uint64_t sub_240ADE0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.i32[0] = bswap32(*a3);
  if ((*(a2 + 312))(a2, 4, &v11) != 1)
  {
    return 0;
  }

  __asm { FMOV            V2.2D, #0.5 }

  v11 = vrev32_s8(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q2, vdupq_n_s64(0x40F0000000000000uLL), *(a3 + 8))))));
  v12 = bswap32(vcvtmd_s64_f64(*(a3 + 24) * 65536.0 + 0.5));
  result = (*(a2 + 312))(a2, 12, &v11);
  if (!result)
  {
    return result;
  }

  v11.i32[0] = bswap32(*(a3 + 32));
  if ((*(a2 + 312))(a2, 4, &v11) != 1)
  {
    return 0;
  }

  v11.i32[0] = bswap32(vcvtmd_s64_f64(*(a3 + 40) * 65536.0 + 0.5));
  if ((*(a2 + 312))(a2, 4, &v11) != 1)
  {
    return 0;
  }

  v11.i32[0] = bswap32(*(a3 + 48));
  return (*(a2 + 312))(a2, 4, &v11) == 1;
}

uint64_t sub_240ADE224(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v13 = 0;
  if ((*(a2 + 280))(a2, &v13, 4, 1) != 1)
  {
    return 0;
  }

  LODWORD(v10[0].f64[0]) = bswap32(v13);
  if (!sub_240AD4600(a2, &v10[0].f64[1]))
  {
    return 0;
  }

  v13 = 0;
  if ((*(a2 + 280))(a2, &v13, 4, 1) != 1)
  {
    return 0;
  }

  LODWORD(v11) = bswap32(v13);
  if (!sub_240AD4570(a2, &v11 + 1))
  {
    return 0;
  }

  v13 = 0;
  if ((*(a2 + 280))(a2, &v13, 4, 1) != 1)
  {
    return 0;
  }

  LODWORD(v12) = bswap32(v13);
  *a3 = 1;
  v6 = *(a1 + 40);
  if (v6)
  {
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
  v9 = v7[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  return (*(v9 + 5))(v6);
}

uint64_t sub_240ADE3A4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240ADE404(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

_DWORD *sub_240ADE4B4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
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

  v8 = (*v7)();
  if (v8)
  {
    v10 = 0;
    if ((*(a2 + 280))(a2, &v10, 4, 1) == 1)
    {
      *v8 = bswap32(v10);
      *a3 = 1;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_240ADE5B0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v10.i32[0] = bswap32(*a3);
  if ((*(a2 + 312))(a2, 4, &v10) == 1)
  {
    if (!*a3)
    {
      return 1;
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(a3 + 2);
      v10.i32[0] = bswap32(*(v8 + v6));
      if ((*(a2 + 312))(a2, 4, &v10) != 1)
      {
        break;
      }

      v10.i32[0] = bswap32(*(v8 + v6 + 4));
      if ((*(a2 + 312))(a2, 4, &v10) != 1)
      {
        break;
      }

      v10 = vrev64_s8(*(v8 + v6 + 8));
      if ((*(a2 + 312))(a2, 8, &v10) != 1)
      {
        break;
      }

      v10.i32[0] = bswap32(*(v8 + v6 + 16));
      if ((*(a2 + 312))(a2, 4, &v10) != 1)
      {
        break;
      }

      result = sub_240AD7474(a1, a2, *(v8 + v6 + 40));
      if (!result)
      {
        return result;
      }

      result = sub_240AD7474(a1, a2, *(v8 + v6 + 48));
      if (!result)
      {
        return result;
      }

      ++v7;
      v6 += 64;
      if (v7 >= *a3)
      {
        return 1;
      }
    }
  }

  return 0;
}

_DWORD *sub_240ADE728(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  *a3 = 0;
  v16.i32[0] = 0;
  if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
  {
    return 0;
  }

  LODWORD(v8) = a4 - 4;
  if (a4 < 4)
  {
    return 0;
  }

  v9 = v16.i32[0];
  v10 = bswap32(v16.u32[0]);
  v11 = sub_240ACC9A8(*(a1 + 40), v10);
  v12 = v11;
  if (v11)
  {
    *v11 = v10;
    if (v9)
    {
      v13 = 0;
      while (1)
      {
        v14 = *(v12 + 2);
        v16.i32[0] = 0;
        if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
        {
          break;
        }

        if (v14)
        {
          *(v14 + v13) = bswap32(v16.u32[0]);
        }

        if (v8 < 4)
        {
          break;
        }

        v16.i32[0] = 0;
        if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
        {
          break;
        }

        *(v14 + v13 + 4) = bswap32(v16.u32[0]);
        if ((v8 & 0xFFFFFFFC) == 4)
        {
          break;
        }

        v16 = 0;
        if ((*(a2 + 280))(a2, &v16, 8, 1) != 1)
        {
          break;
        }

        *(v14 + v13 + 8) = vrev64_s8(v16);
        if ((v8 & 0xFFFFFFF8) == 8)
        {
          break;
        }

        v16.i32[0] = 0;
        if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
        {
          break;
        }

        *(v14 + v13 + 16) = bswap32(v16.u32[0]);
        if ((v8 & 0xFFFFFFFC) == 0x10)
        {
          break;
        }

        v8 = (v8 - 20);
        if (!sub_240AD7EE8(a1, a2, (v14 + v13 + 40), v8) || !sub_240AD7EE8(a1, a2, (v14 + v13 + 48), v8))
        {
          break;
        }

        v13 += 64;
        if (!--v10)
        {
          goto LABEL_19;
        }
      }

      sub_240ACCB4C(v12);
      return 0;
    }

LABEL_19:
    *a3 = 1;
  }

  return v12;
}

uint64_t sub_240ADE950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  *v15 = 0;
  if ((*(a2 + 312))(a2, 4, v15) != 1 || (*v15 = bswap32(v5), (*(a2 + 312))(a2, 4, v15) != 1) || (*v15 = bswap32(*(a3 + 8)), (*(a2 + 312))(a2, 4, v15) != 1))
  {
LABEL_22:
    result = 0;
    goto LABEL_23;
  }

  strncpy(__dst, (a3 + 12), 0x20uLL);
  strncpy(v18, (a3 + 45), 0x20uLL);
  __dst[32] = 0;
  v18[32] = 0;
  result = (*(a2 + 312))(a2, 32, __dst);
  if (result)
  {
    result = (*(a2 + 312))(a2, 32, v18);
    if (result)
    {
      if (!v5)
      {
        result = 1;
        goto LABEL_23;
      }

      v7 = 0;
LABEL_11:
      if (sub_240ACC5A8(a3, v7, v15, v13, v17))
      {
        v16 = 0;
        if ((*(a2 + 312))(a2, 32, v15))
        {
          v8 = 0;
          while (1)
          {
            v14 = bswap32(*&v13[v8]) >> 16;
            if ((*(a2 + 312))(a2, 2, &v14) != 1)
            {
              break;
            }

            v8 += 2;
            if (v8 == 6)
            {
              v9 = *(a3 + 8);
              if (v9)
              {
                v10 = 0;
                v11 = 2 * v9;
                do
                {
                  v14 = bswap32(*&v17[v10]) >> 16;
                  if ((*(a2 + 312))(a2, 2, &v14) != 1)
                  {
                    goto LABEL_22;
                  }

                  v10 += 2;
                }

                while (v11 != v10);
              }

              ++v7;
              result = 1;
              if (v7 != v5)
              {
                goto LABEL_11;
              }

              goto LABEL_23;
            }
          }
        }
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ADEB88(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *__src = 0;
  if ((*(a2 + 280))(a2, __src, 4, 1) == 1)
  {
    *__src = 0;
    if ((*(a2 + 280))(a2, __src, 4, 1) == 1)
    {
      v6 = *__src;
      *__src = 0;
      if ((*(a2 + 280))(a2, __src, 4, 1) == 1)
      {
        v7 = *__src;
        if ((*(a2 + 280))(a2, v27, 32, 1) == 1 && (*(a2 + 280))(a2, v26, 32, 1) == 1)
        {
          v8 = bswap32(v6);
          v9 = bswap32(v7);
          v26[31] = 0;
          v27[31] = 0;
          v15 = sub_240ACC054(*(a1 + 40), v8, v9, v27, v26);
          if (!v15)
          {
            sub_240AC15A4(*(a1 + 40), 2, "Too many named colors '%d'", v10, v11, v12, v13, v14, v8);
            goto LABEL_11;
          }

          if (v9 <= 0x10)
          {
            if (!v6)
            {
LABEL_22:
              *a3 = 1;
              goto LABEL_11;
            }

            v18 = 0;
            v19 = 0uLL;
LABEL_15:
            v25[0] = v19;
            v25[1] = v19;
            if ((*(a2 + 280))(a2, __src, 32, 1) == 1)
            {
              v20 = 0;
              v24 = 0;
              while (1)
              {
                v22 = 0;
                if ((*(a2 + 280))(a2, &v22, 2, 1) != 1)
                {
                  break;
                }

                *&v21[v20] = bswap32(v22) >> 16;
                v20 += 2;
                if (v20 == 6)
                {
                  if (!sub_240AD4408(a2, v9, v25) || !sub_240ACC48C(v15, __src, v21, v25))
                  {
                    break;
                  }

                  ++v18;
                  v19 = 0uLL;
                  if (v18 != v8)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_22;
                }
              }
            }
          }

          else
          {
            sub_240AC15A4(*(a1 + 40), 2, "Too many device coordinates '%d'", v10, v11, v12, v13, v14, v9);
          }

          sub_240ACC2E0(v15);
        }
      }
    }
  }

  v15 = 0;
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t sub_240ADEE04(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  *__dst = bswap32(v5);
  if ((*(a2 + 312))(a2, 4, __dst) == 1)
  {
    if (!v5)
    {
      result = 1;
      goto LABEL_16;
    }

    v6 = 0;
    v7 = 0uLL;
    v8 = v5;
LABEL_7:
    *__dst = v7;
    v17 = v7;
    v18 = v7;
    v19 = v7;
    v20 = v7;
    v21 = v7;
    v22 = v7;
    v23 = v7;
    v24 = v7;
    v25 = v7;
    v26 = v7;
    v27 = v7;
    v28 = v7;
    v29 = v7;
    v30 = v7;
    v31 = v7;
    if (a3)
    {
      if (v6 < *a3)
      {
        v9 = *(a3 + 10) + 294 * v6;
        strcpy(__dst, v9);
        v13 = *(v9 + 256);
        v14 = *(v9 + 260);
        LOBYTE(v18) = 0;
        if ((*(a2 + 312))(a2, 32, __dst))
        {
          v10 = 0;
          while (1)
          {
            v15 = bswap32(*(&v13 + v10)) >> 16;
            if ((*(a2 + 312))(a2, 2, &v15) != 1)
            {
              break;
            }

            v10 += 2;
            if (v10 == 6)
            {
              ++v6;
              result = 1;
              v7 = 0uLL;
              if (v6 != v8)
              {
                goto LABEL_7;
              }

              goto LABEL_16;
            }
          }
        }
      }
    }
  }

  result = 0;
LABEL_16:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ADEF9C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  *__src = 0;
  if ((*(a2 + 280))(a2, __src, 4, 1) != 1)
  {
    goto LABEL_14;
  }

  v11 = *__src;
  v12 = bswap32(*__src);
  v13 = *(a1 + 40);
  if (v12 >= 0x11)
  {
    sub_240AC15A4(v13, 2, "Too many colorants '%d'", v6, v7, v8, v9, v10, v12);
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v14 = sub_240ACC054(v13, v12, 0, &unk_240C888E1, &unk_240C888E1);
  if (v11)
  {
    v15 = 0;
LABEL_6:
    if ((*(a2 + 280))(a2, __src, 32, 1) == 1)
    {
      v16 = 0;
      v22 = 0;
      while (1)
      {
        v20 = 0;
        if ((*(a2 + 280))(a2, &v20, 2, 1) != 1)
        {
          break;
        }

        *&v19[v16] = bswap32(v20) >> 16;
        v16 += 2;
        if (v16 == 6)
        {
          if (!sub_240ACC48C(v14, __src, v19, 0))
          {
            break;
          }

          if (++v15 != v12)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    *a3 = 0;
    sub_240ACC2E0(v14);
    goto LABEL_14;
  }

LABEL_12:
  *a3 = 1;
LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_240ADF144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  if (!*a3)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v10 = *(v9 + 8);
  if (v10 == 1835103334)
  {
    v11 = *(v9 + 48);
    v9 = *(v9 + 56);
    if (!v9)
    {
      v12 = 0;
      goto LABEL_21;
    }

    v10 = *(v9 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v10 == 1668707188)
  {
    v12 = *(v9 + 48);
    v9 = *(v9 + 56);
    if (v9)
    {
      v10 = *(v9 + 8);
      goto LABEL_11;
    }

LABEL_21:
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v18 = *(a3 + 2);
    v17 = *(a3 + 3);
    goto LABEL_22;
  }

  v12 = 0;
LABEL_11:
  if (v10 != 1668052340)
  {
    v13 = 0;
LABEL_15:
    if (v10 == 1668707188)
    {
      v14 = *(v9 + 56);
      if (!v14)
      {
        v15 = *(v9 + 48);
        goto LABEL_37;
      }
    }

    else
    {
      v14 = v9;
    }

    sub_240AC15A4(*v14, 8, "LUT is not suitable to be saved as LUT16", a4, a5, a6, a7, a8, v31);
    return 0;
  }

  v13 = *(v9 + 48);
  v9 = *(v9 + 56);
  if (v9)
  {
    v10 = *(v9 + 8);
    goto LABEL_15;
  }

  v15 = 0;
LABEL_37:
  v18 = *(a3 + 2);
  v17 = *(a3 + 3);
  if (v13)
  {
    v16 = *(v13[1] + 5);
  }

  else
  {
    v16 = 0;
  }

LABEL_22:
  LOBYTE(v32) = v18;
  if ((*(a2 + 312))(a2, 1, &v32) != 1)
  {
    return 0;
  }

  LOBYTE(v32) = v17;
  if ((*(a2 + 312))(a2, 1, &v32) != 1)
  {
    return 0;
  }

  LOBYTE(v32) = v16;
  if ((*(a2 + 312))(a2, 1, &v32) != 1)
  {
    return 0;
  }

  LOBYTE(v32) = 0;
  if ((*(a2 + 312))(a2, 1, &v32) != 1)
  {
    return 0;
  }

  if (v11)
  {
    v32 = bswap32(vcvtmd_s64_f64(**v11 * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = bswap32(vcvtmd_s64_f64(*(*v11 + 8) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = bswap32(vcvtmd_s64_f64(*(*v11 + 16) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = bswap32(vcvtmd_s64_f64(*(*v11 + 24) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = bswap32(vcvtmd_s64_f64(*(*v11 + 32) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = bswap32(vcvtmd_s64_f64(*(*v11 + 40) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = bswap32(vcvtmd_s64_f64(*(*v11 + 48) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = bswap32(vcvtmd_s64_f64(*(*v11 + 56) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v19 = bswap32(vcvtmd_s64_f64(*(*v11 + 64) * 65536.0 + 0.5));
  }

  else
  {
    v32 = 256;
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = 0;
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = 0;
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = 0;
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = 256;
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = 0;
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = 0;
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v32 = 0;
    if ((*(a2 + 312))(a2, 4, &v32) != 1)
    {
      return 0;
    }

    v19 = 256;
  }

  v32 = v19;
  if ((*(a2 + 312))(a2, 4, &v32) != 1)
  {
    return 0;
  }

  if (v12)
  {
    v20 = bswap32(*(**(v12 + 8) + 40)) >> 16;
  }

  else
  {
    LOWORD(v20) = 512;
  }

  LOWORD(v32) = v20;
  if ((*(a2 + 312))(a2, 2, &v32) != 1)
  {
    return 0;
  }

  if (v15)
  {
    v21 = bswap32(*(**(v15 + 8) + 40)) >> 16;
  }

  else
  {
    LOWORD(v21) = 512;
  }

  LOWORD(v32) = v21;
  if ((*(a2 + 312))(a2, 2, &v32) != 1)
  {
    return 0;
  }

  if (!v12)
  {
    if (v18)
    {
      v25 = v18;
      while (1)
      {
        LOWORD(v32) = 0;
        if ((*(a2 + 312))(a2, 2, &v32) != 1)
        {
          return 0;
        }

        LOWORD(v32) = -1;
        if ((*(a2 + 312))(a2, 2, &v32) != 1)
        {
          return 0;
        }

        if (!--v25)
        {
          goto LABEL_60;
        }
      }
    }

    v23 = v17 == 0;
    if (v17 && v16)
    {
      goto LABEL_75;
    }

LABEL_86:
    if (v15)
    {
      result = sub_240ADF83C(a2, v15);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    if (v23)
    {
      return 1;
    }

    while (1)
    {
      LOWORD(v32) = 0;
      if ((*(a2 + 312))(a2, 2, &v32) != 1)
      {
        break;
      }

      LOWORD(v32) = -1;
      if ((*(a2 + 312))(a2, 2, &v32) != 1)
      {
        break;
      }

      if (!--v17)
      {
        return 1;
      }
    }

    return 0;
  }

  result = sub_240ADF83C(a2, v12);
  if (!result)
  {
    return result;
  }

LABEL_60:
  v23 = v17 == 0;
  if (!v17 || !v16)
  {
    goto LABEL_86;
  }

  if (v18)
  {
    v24 = 1;
    while (1)
    {
      v24 *= v16;
      if (((v16 * v24) & 0xFFFFFFFF00000000) != 0)
      {
        return 0;
      }

      if (!--v18)
      {
        goto LABEL_76;
      }
    }
  }

LABEL_75:
  v24 = 1;
LABEL_76:
  result = 0;
  v26 = v17 * v24;
  if ((v26 & 0xFFFFFFFF00000000) == 0 && v26 != -1)
  {
    if (v26)
    {
      v27 = v13 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v28 = *v13;
      v29 = v26;
      do
      {
        v30 = *v28++;
        LOWORD(v32) = bswap32(v30) >> 16;
        if ((*(a2 + 312))(a2, 2, &v32) != 1)
        {
          return 0;
        }
      }

      while (--v29);
    }

    v23 = 0;
    goto LABEL_86;
  }

  return result;
}

uint64_t sub_240ADF83C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = *(**(a2 + 1) + 40);
  while (!v6)
  {
LABEL_8:
    if (++v5 >= v2)
    {
      return 1;
    }
  }

  v7 = 0;
  while (1)
  {
    v9 = bswap32(*(*(*(*(a2 + 1) + 8 * v5) + 48) + v7)) >> 16;
    if ((*(a1 + 312))(a1, 2, &v9) != 1)
    {
      return 0;
    }

    v7 += 2;
    if (2 * v6 == v7)
    {
      v2 = *a2;
      goto LABEL_8;
    }
  }
}

uint64_t *sub_240ADF908(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  LOBYTE(v42) = 0;
  if ((*(a2 + 280))(a2, &v42, 1, 1) != 1)
  {
    goto LABEL_68;
  }

  v6 = v42;
  LOBYTE(v42) = 0;
  if ((*(a2 + 280))(a2, &v42, 1, 1) != 1)
  {
    goto LABEL_68;
  }

  v7 = v42;
  LOBYTE(v42) = 0;
  if ((*(a2 + 280))(a2, &v42, 1, 1) != 1)
  {
    goto LABEL_68;
  }

  v8 = v42;
  LOBYTE(v42) = 0;
  if ((*(a2 + 280))(a2, &v42, 1, 1) != 1)
  {
    goto LABEL_68;
  }

  v9 = 0;
  if ((v6 - 17) >= 0xFFFFFFF0 && (v7 - 17) >= 0xFFFFFFF0)
  {
    v9 = sub_240ACADFC(*(a1 + 40), v6, v7);
    if (v9)
    {
      if (!sub_240AD4570(a2, &v42))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v43))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v44))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v45))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v46))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v47))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v48))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v49))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v50))
      {
        goto LABEL_67;
      }

      if (v6 == 3 && !sub_240ACB454(&v42))
      {
        v10 = sub_240AC977C(*(a1 + 40), 3, 3u, &v42, 0);
        if (!sub_240ACB414(v9, 1, v10))
        {
          goto LABEL_67;
        }
      }

      LOWORD(v51[0]) = 0;
      if ((*(a2 + 280))(a2, v51, 2, 1) != 1)
      {
        goto LABEL_67;
      }

      v11 = LOWORD(v51[0]);
      LOWORD(v51[0]) = 0;
      if ((*(a2 + 280))(a2, v51, 2, 1) != 1)
      {
        goto LABEL_67;
      }

      v15 = bswap32(v11) >> 16;
      v16 = bswap32(LOWORD(v51[0]));
      if (((v15 | HIWORD(v16)) & 0x8000) != 0 || v8 == 1 || !sub_240ADFDB8(*(a1 + 40), a2, v9, v6, v15, v12, v13, v14))
      {
        goto LABEL_67;
      }

      if (v7 && v8)
      {
        v20 = 1;
        v21 = v6;
        while (1)
        {
          v20 *= v8;
          if (((v8 * v20) & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_67;
          }

          if (!--v21)
          {
            v22 = v7 * v20;
            if ((v22 & 0xFFFFFFFF00000000) == 0 && v22 != -1)
            {
              if (!v22)
              {
                break;
              }

              v23 = *(a1 + 40);
              if (v23)
              {
                v24 = &qword_27E516570;
                while (1)
                {
                  v24 = *v24;
                  if (!v24)
                  {
                    break;
                  }

                  if (v24 == v23)
                  {
                    goto LABEL_42;
                  }
                }

                v24 = &unk_278CB2F00;
              }

              else
              {
                v24 = &unk_278CB2F00;
              }

LABEL_42:
              v25 = v24[6];
              if (!v25)
              {
                v25 = &xmmword_281500C10;
              }

              v26 = (*(v25 + 4))();
              if (v26)
              {
                v27 = v26;
                v31 = sub_240AD4408(a2, v22, v26);
                v32 = *(a1 + 40);
                if (v31)
                {
                  v51[0] = vdupq_n_s32(v8);
                  v51[1] = v51[0];
                  v33 = sub_240AC9DB8(v32, v51, v6, v7, v27, v28, v29, v30);
                  v34 = sub_240ACB414(v9, 1, v33);
                  v35 = *(a1 + 40);
                  if (v35)
                  {
                    v36 = &qword_27E516570;
                    while (1)
                    {
                      v36 = *v36;
                      if (!v36)
                      {
                        break;
                      }

                      if (v36 == v35)
                      {
                        goto LABEL_58;
                      }
                    }

                    v36 = &unk_278CB2F00;
                  }

                  else
                  {
                    v36 = &unk_278CB2F00;
                  }

LABEL_58:
                  v38 = v36[6];
                  if (!v38)
                  {
                    v38 = &xmmword_281500C10;
                  }

                  (*(v38 + 2))();
                  if (v34)
                  {
                    break;
                  }
                }

                else
                {
                  if (v32)
                  {
                    v37 = &qword_27E516570;
                    while (1)
                    {
                      v37 = *v37;
                      if (!v37)
                      {
                        break;
                      }

                      if (v37 == v32)
                      {
                        goto LABEL_64;
                      }
                    }

                    v37 = &unk_278CB2F00;
                  }

                  else
                  {
                    v37 = &unk_278CB2F00;
                  }

LABEL_64:
                  v39 = v37[6];
                  if (!v39)
                  {
                    v39 = &xmmword_281500C10;
                  }

                  (*(v39 + 2))();
                }
              }
            }

            goto LABEL_67;
          }
        }
      }

      if (!sub_240ADFDB8(*(a1 + 40), a2, v9, v7, HIWORD(v16), v17, v18, v19))
      {
LABEL_67:
        sub_240ACB1C0(v9);
LABEL_68:
        v9 = 0;
        goto LABEL_69;
      }

      *a3 = 1;
    }
  }

LABEL_69:
  v40 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_240ADFDB8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (a5 != 1 && a4 <= 0x10)
    {
      memset(v24, 0, sizeof(v24));
      if (!a4)
      {
        v23 = sub_240AC904C(a1, 0, v24);
        result = sub_240ACB414(a3, 1, v23);
        goto LABEL_19;
      }

      v13 = 0;
      v14 = 8 * a4;
      v15 = a4;
      while (1)
      {
        v16 = sub_240AC1684(a1, a5, 0, 0, 0, a6, a7, a8);
        *(v24 + v13) = v16;
        if (!v16 || !sub_240AD4408(a2, a5, *(v16 + 48)))
        {
          break;
        }

        v13 += 8;
        if (v14 == v13)
        {
          v17 = sub_240AC904C(a1, a4, v24);
          if (sub_240ACB414(a3, 1, v17))
          {
            v18 = v24;
            do
            {
              v19 = *v18++;
              sub_240AC26D0(v19);
              result = 1;
              --v15;
            }

            while (v15);
            goto LABEL_19;
          }

          break;
        }
      }

      v21 = v24;
      do
      {
        if (*v21)
        {
          sub_240AC26D0(*v21);
        }

        ++v21;
        --v15;
      }

      while (v15);
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ADFF54(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a3;
  v12 = *(*a3 + 8);
  if (v12 == 1835103334)
  {
    v13 = *(v11 + 48);
    v11 = *(v11 + 56);
    if (!v11)
    {
      v15 = 0;
      v14 = 0;
LABEL_21:
      v17 = 0;
      goto LABEL_22;
    }

    v12 = *(v11 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v12 != 1668707188)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v14 = *(v11 + 48);
  v11 = *(v11 + 56);
  if (!v11)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v12 = *(v11 + 8);
LABEL_9:
  if (v12 != 1668052340)
  {
    v15 = 0;
LABEL_13:
    if (v12 == 1668707188)
    {
      v16 = *(v11 + 56);
      if (!v16)
      {
        v17 = *(v11 + 48);
        if (!v15)
        {
          goto LABEL_22;
        }

LABEL_24:
        v18 = *(v15[1] + 20);
        goto LABEL_25;
      }
    }

    else
    {
      v16 = v11;
    }

    sub_240AC15A4(*v16, 8, "LUT is not suitable to be saved as LUT8", a4, a5, a6, a7, a8, v36);
    return 0;
  }

  v15 = *(v11 + 48);
  v11 = *(v11 + 56);
  if (v11)
  {
    v12 = *(v11 + 8);
    goto LABEL_13;
  }

  v17 = 0;
  if (v15)
  {
    goto LABEL_24;
  }

LABEL_22:
  v18 = 0;
LABEL_25:
  LOBYTE(v37) = a3[2];
  if ((*(a2 + 312))(a2, 1, &v37) != 1)
  {
    return 0;
  }

  LOBYTE(v37) = a3[3];
  if ((*(a2 + 312))(a2, 1, &v37) != 1)
  {
    return 0;
  }

  LOBYTE(v37) = v18;
  if ((*(a2 + 312))(a2, 1, &v37) != 1)
  {
    return 0;
  }

  LOBYTE(v37) = 0;
  if ((*(a2 + 312))(a2, 1, &v37) != 1)
  {
    return 0;
  }

  if (v13)
  {
    v37 = bswap32(vcvtmd_s64_f64(**v13 * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = bswap32(vcvtmd_s64_f64(*(*v13 + 8) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = bswap32(vcvtmd_s64_f64(*(*v13 + 16) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = bswap32(vcvtmd_s64_f64(*(*v13 + 24) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = bswap32(vcvtmd_s64_f64(*(*v13 + 32) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = bswap32(vcvtmd_s64_f64(*(*v13 + 40) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = bswap32(vcvtmd_s64_f64(*(*v13 + 48) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = bswap32(vcvtmd_s64_f64(*(*v13 + 56) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v19 = bswap32(vcvtmd_s64_f64(*(*v13 + 64) * 65536.0 + 0.5));
  }

  else
  {
    v37 = 256;
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = 0;
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = 0;
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = 0;
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = 256;
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = 0;
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = 0;
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v37 = 0;
    if ((*(a2 + 312))(a2, 4, &v37) != 1)
    {
      return 0;
    }

    v19 = 256;
  }

  v37 = v19;
  if ((*(a2 + 312))(a2, 4, &v37) != 1 || !sub_240AE0544(*(a1 + 40), a2, a3[2], v14, v20, v21, v22, v23))
  {
    return 0;
  }

  v28 = a3[3];
  if (v18 && v28)
  {
    v29 = a3[2];
    if (v29)
    {
      v30 = 1;
      while (1)
      {
        v30 *= v18;
        if (((v18 * v30) & 0xFFFFFFFF00000000) != 0)
        {
          return 0;
        }

        if (!--v29)
        {
          goto LABEL_58;
        }
      }
    }

    v30 = 1;
LABEL_58:
    v31 = v28 * v30;
    if ((v31 & 0xFFFFFFFF00000000) != 0 || v31 == -1)
    {
      return 0;
    }

    if (v15 && v31)
    {
      v32 = 0;
      v33 = 2 * v31;
      while (1)
      {
        LOBYTE(v37) = (65281 * *(*v15 + v32) + 0x800000) >> 24;
        if ((*(a2 + 312))(a2, 1, &v37) != 1)
        {
          return 0;
        }

        v32 += 2;
        if (v33 == v32)
        {
          v28 = a3[3];
          break;
        }
      }
    }
  }

  v34 = *(a1 + 40);

  return sub_240AE0544(v34, a2, v28, v17, v24, v25, v26, v27);
}

uint64_t sub_240AE0544(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 1;
  }

  v11 = 0;
  v12 = a3;
  while (!a4)
  {
LABEL_15:
    if (++v11 == v12)
    {
      return 1;
    }
  }

  v13 = *(*(a4 + 8) + 8 * v11);
  v14 = *(v13 + 40);
  if (v14 == 2)
  {
    v16 = *(v13 + 48);
    if (!*v16 && v16[1] == -1)
    {
      v17 = 0;
      while (1)
      {
        v20 = v17;
        if ((*(a2 + 312))(a2, 1, &v20) != 1)
        {
          return 0;
        }

        if (++v17 == 256)
        {
          goto LABEL_15;
        }
      }
    }
  }

  else if (v14 == 256)
  {
    v15 = 0;
    while (1)
    {
      v21 = (65281 * *(*(*(*(a4 + 8) + 8 * v11) + 48) + v15) + 0x800000) >> 24;
      if ((*(a2 + 312))(a2, 1, &v21) != 1)
      {
        return 0;
      }

      v15 += 2;
      if (v15 == 512)
      {
        goto LABEL_15;
      }
    }
  }

  sub_240AC15A4(a1, 2, "LUT8 needs 256 entries on prelinearization", a4, a5, a6, a7, a8, v19);
  return 0;
}

uint64_t *sub_240AE068C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  LOBYTE(v45) = 0;
  if ((*(a2 + 280))(a2, &v45, 1, 1) != 1)
  {
    goto LABEL_34;
  }

  v6 = v45;
  LOBYTE(v45) = 0;
  if ((*(a2 + 280))(a2, &v45, 1, 1) != 1)
  {
    goto LABEL_34;
  }

  v7 = v45;
  LOBYTE(v45) = 0;
  if ((*(a2 + 280))(a2, &v45, 1, 1) != 1)
  {
    goto LABEL_34;
  }

  v8 = v45;
  if (v45 == 1)
  {
    goto LABEL_34;
  }

  LOBYTE(v45) = 0;
  if ((*(a2 + 280))(a2, &v45, 1, 1) != 1)
  {
    goto LABEL_34;
  }

  v9 = 0;
  if ((v6 - 17) >= 0xFFFFFFF0 && (v7 - 17) >= 0xFFFFFFF0)
  {
    v9 = sub_240ACADFC(*(a1 + 40), v6, v7);
    if (v9)
    {
      if (!sub_240AD4570(a2, &v45))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v46))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v47))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v48))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v49))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v50))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v51))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v52))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v53))
      {
        goto LABEL_33;
      }

      if (v6 == 3 && !sub_240ACB454(&v45))
      {
        v13 = sub_240AC977C(*(a1 + 40), 3, 3u, &v45, 0);
        if (!v13)
        {
          goto LABEL_33;
        }

        v13[7] = *v9;
        *v9 = v13;
        if (!sub_240ACAF44(v9))
        {
          goto LABEL_33;
        }
      }

      if (!sub_240AE0C40(*(a1 + 40), a2, v9, v6))
      {
        goto LABEL_33;
      }

      if (v7 && v8)
      {
        v10 = 1;
        v11 = v6;
        do
        {
          v10 *= v8;
          if (((v8 * v10) & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_33;
          }

          --v11;
        }

        while (v11);
        v12 = v7 * v10;
        if ((v12 & 0xFFFFFFFF00000000) != 0 || v12 == -1)
        {
          goto LABEL_33;
        }

        if (!v12)
        {
          goto LABEL_29;
        }

        v16 = *(a1 + 40);
        if (v16)
        {
          v17 = &qword_27E516570;
          while (1)
          {
            v17 = *v17;
            if (!v17)
            {
              break;
            }

            if (v17 == v16)
            {
              goto LABEL_43;
            }
          }

          v17 = &unk_278CB2F00;
        }

        else
        {
          v17 = &unk_278CB2F00;
        }

LABEL_43:
        v18 = v17[6];
        if (!v18)
        {
          v18 = &xmmword_281500C10;
        }

        v19 = (*(v18 + 4))();
        if (!v19)
        {
          goto LABEL_33;
        }

        v20 = v19;
        v21 = *(a1 + 40);
        if (v21)
        {
          v22 = &qword_27E516570;
          while (1)
          {
            v22 = *v22;
            if (!v22)
            {
              break;
            }

            if (v22 == v21)
            {
              goto LABEL_53;
            }
          }

          v22 = &unk_278CB2F00;
        }

        else
        {
          v22 = &unk_278CB2F00;
        }

LABEL_53:
        v23 = v22[6];
        if (!v23)
        {
          v23 = &xmmword_281500C10;
        }

        v24 = (*v23)();
        if (v24)
        {
          v25 = v24;
          if ((*(a2 + 280))(a2, v24, v12, 1) == 1)
          {
            v26 = 0;
            do
            {
              *(v20 + 2 * v26) = *(v25 + v26) | (*(v25 + v26) << 8);
              ++v26;
            }

            while (v12 != v26);
            v27 = *(a1 + 40);
            if (v27)
            {
              v28 = &qword_27E516570;
              while (1)
              {
                v28 = *v28;
                if (!v28)
                {
                  break;
                }

                if (v28 == v27)
                {
                  goto LABEL_73;
                }
              }

              v28 = &unk_278CB2F00;
            }

            else
            {
              v28 = &unk_278CB2F00;
            }

LABEL_73:
            v31 = v28[6];
            if (!v31)
            {
              v31 = &xmmword_281500C10;
            }

            (*(v31 + 2))();
            v32 = *(a1 + 40);
            v54[0] = vdupq_n_s32(v8);
            v54[1] = v54[0];
            v36 = sub_240AC9DB8(v32, v54, v6, v7, v20, v33, v34, v35);
            v37 = sub_240ACB414(v9, 1, v36);
            v38 = *(a1 + 40);
            if (v38)
            {
              v39 = &qword_27E516570;
              while (1)
              {
                v39 = *v39;
                if (!v39)
                {
                  break;
                }

                if (v39 == v38)
                {
                  goto LABEL_96;
                }
              }

              v39 = &unk_278CB2F00;
            }

            else
            {
              v39 = &unk_278CB2F00;
            }

LABEL_96:
            v44 = v39[6];
            if (!v44)
            {
              v44 = &xmmword_281500C10;
            }

            (*(v44 + 2))();
            if (v37)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }

          v29 = *(a1 + 40);
          if (v29)
          {
            v30 = &qword_27E516570;
            while (1)
            {
              v30 = *v30;
              if (!v30)
              {
                break;
              }

              if (v30 == v29)
              {
                goto LABEL_82;
              }
            }

            v30 = &unk_278CB2F00;
          }

          else
          {
            v30 = &unk_278CB2F00;
          }

LABEL_82:
          v40 = v30[6];
          if (!v40)
          {
            v40 = &xmmword_281500C10;
          }

          (*(v40 + 2))();
        }

        v41 = *(a1 + 40);
        if (v41)
        {
          v42 = &qword_27E516570;
          while (1)
          {
            v42 = *v42;
            if (!v42)
            {
              break;
            }

            if (v42 == v41)
            {
              goto LABEL_92;
            }
          }

          v42 = &unk_278CB2F00;
        }

        else
        {
          v42 = &unk_278CB2F00;
        }

LABEL_92:
        v43 = v42[6];
        if (!v43)
        {
          v43 = &xmmword_281500C10;
        }

        (*(v43 + 2))();
        goto LABEL_33;
      }

LABEL_29:
      if (!sub_240AE0C40(*(a1 + 40), a2, v9, v7))
      {
LABEL_33:
        sub_240ACB1C0(v9);
LABEL_34:
        v9 = 0;
        goto LABEL_35;
      }

      *a3 = 1;
    }
  }

LABEL_35:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_240AE0C40(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((a4 - 17) < 0xFFFFFFF0)
  {
LABEL_49:
    result = 0;
    goto LABEL_50;
  }

  memset(v30, 0, sizeof(v30));
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
        goto LABEL_9;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_9:
  v9 = v8[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  result = (*v9)(a1, 256, 0x100004077774924);
  if (result)
  {
    v14 = result;
    v15 = 0;
    v16 = a4;
    while (1)
    {
      v17 = sub_240AC1684(a1, 256, 0, 0, 0, v11, v12, v13);
      *(v30 + v15) = v17;
      if (!v17)
      {
        break;
      }

      if (a4 == ++v15)
      {
        v18 = 0;
        while ((*(a2 + 280))(a2, v14, 256, 1) == 1)
        {
          v19 = 0;
          v20 = *(*(v30 + v18) + 48);
          do
          {
            *(v20 + 2 * v19) = *(v14 + v19) | (*(v14 + v19) << 8);
            ++v19;
          }

          while (v19 != 256);
          if (++v18 == a4)
          {
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
                  goto LABEL_27;
                }
              }

              v21 = &unk_278CB2F00;
            }

            else
            {
              v21 = &unk_278CB2F00;
            }

LABEL_27:
            v22 = v21[6];
            if (!v22)
            {
              v22 = &xmmword_281500C10;
            }

            (*(v22 + 2))(a1, v14);
            v23 = sub_240AC904C(a1, a4, v30);
            if (!sub_240ACB414(a3, 1, v23))
            {
              v14 = 0;
              goto LABEL_34;
            }

            v24 = v30;
            do
            {
              v25 = *v24++;
              sub_240AC26D0(v25);
              --v16;
            }

            while (v16);
            result = 1;
            goto LABEL_50;
          }
        }

        break;
      }
    }

LABEL_34:
    v26 = v30;
    do
    {
      if (*v26)
      {
        sub_240AC26D0(*v26);
      }

      ++v26;
      --v16;
    }

    while (v16);
    if (v14)
    {
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
            goto LABEL_46;
          }
        }

        v27 = &unk_278CB2F00;
      }

      else
      {
        v27 = &unk_278CB2F00;
      }

LABEL_46:
      v28 = v27[6];
      if (!v28)
      {
        v28 = &xmmword_281500C10;
      }

      (*(v28 + 2))(a1, v14);
    }

    goto LABEL_49;
  }

LABEL_50:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240AE0EF4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE0F54(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

BOOL sub_240AE0FC0(uint64_t a1, uint64_t a2, int32x4_t *a3)
{
  v5 = vrev64_s16(vrev16_s8(vmovn_s32(*a3)));
  v4[1] = bswap32(a3[1].u16[0] + 1) >> 16;
  v4[0] = bswap32(a3[1].u16[2] + 1900) >> 16;
  return (*(a2 + 312))(a2, 12, v4) != 0;
}

int8x16_t *sub_240AE1034(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v5 = *(a1 + 40);
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

  v8 = (*v7)();
  if (v8)
  {
    memset(v12, 0, 12);
    if ((*(a2 + 280))(a2, v12, 12, 1) == 1)
    {
      v9 = vrev64q_s32(vmovl_u16(vrev16_s8(*(v12 + 4))));
      *v8 = vextq_s8(v9, v9, 8uLL);
      v10 = (bswap32(v12[0].u16[0]) >> 16) - 1900;
      v8[1].i32[0] = (bswap32(v12[0].u16[1]) >> 16) - 1;
      v8[1].i32[1] = v10;
      v8[1].i64[1] = -1;
      v8[2].i32[0] = 0;
      *a3 = 1;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_240AE11A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_240ACBF1C(a3, 0, 0, word_240C15120, 0, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(a1 + 40);
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
        goto LABEL_9;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_9:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  v11 = (*v10)();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  sub_240ACBF1C(a3, 0, 0, word_240C15120, v11, v7);
  v13 = (*(a2 + 312))(a2, v7, v12);
  v14 = *(a1 + 40);
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
        goto LABEL_20;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_20:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  (*(v16 + 2))();
  return v13;
}

uint64_t sub_240AE1310(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE1370(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

uint64_t sub_240AE13DC(uint64_t a1, uint64_t a2, double *a3, unsigned int a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = a4;
  while (1)
  {
    v8 = bswap32(vcvtmd_u64_f64(*a3 * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v8) != 1)
    {
      break;
    }

    ++a3;
    if (!--v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_240AE1480(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  *a3 = 0;
  v8 = a4 >> 2;
  v9 = *(a1 + 40);
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

  v12 = (*(v11 + 4))();
  if (v12)
  {
    if (a4 < 4)
    {
LABEL_15:
      *a3 = v8;
    }

    else
    {
      v13 = 0;
      while (1)
      {
        v18 = 0;
        if ((*(a2 + 280))(a2, &v18, 4, 1) != 1)
        {
          break;
        }

        *(v12 + v13) = vcvtd_n_f64_u32(bswap32(v18), 0x10uLL);
        v13 += 8;
        if (8 * v8 == v13)
        {
          goto LABEL_15;
        }
      }

      v14 = *(a1 + 40);
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

      (*(v16 + 2))();
      return 0;
    }
  }

  return v12;
}

uint64_t sub_240AE1600(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE1660(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

uint64_t sub_240AE16CC(uint64_t a1, uint64_t a2, double *a3, unsigned int a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = a4;
  while (1)
  {
    v8 = bswap32(vcvtmd_s64_f64(*a3 * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v8) != 1)
    {
      break;
    }

    ++a3;
    if (!--v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_240AE1770(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  *a3 = 0;
  v8 = a4 >> 2;
  v9 = *(a1 + 40);
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

  v12 = (*(v11 + 4))();
  v13 = v12;
  if (v12)
  {
    if (a4 < 4)
    {
LABEL_15:
      *a3 = v8;
    }

    else
    {
      v14 = v8;
      v15 = v12;
      while (sub_240AD4570(a2, v15))
      {
        ++v15;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = &qword_27E516570;
        while (1)
        {
          v17 = *v17;
          if (!v17)
          {
            break;
          }

          if (v17 == v16)
          {
            goto LABEL_23;
          }
        }

        v17 = &unk_278CB2F00;
      }

      else
      {
        v17 = &unk_278CB2F00;
      }

LABEL_23:
      v18 = v17[6];
      if (!v18)
      {
        v18 = &xmmword_281500C10;
      }

      (*(v18 + 2))();
      return 0;
    }
  }

  return v13;
}

uint64_t sub_240AE18C4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE1924(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

BOOL sub_240AE1990(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  v5.i64[0] = -1;
  v5.i64[1] = -1;
  v6 = vbicq_s8(xmmword_240C11230, vceqq_s8(*a3, v5));
  v7 = vzip1q_s8(v6, vextq_s8(v6, v6, 8uLL));
  v7.i16[0] = vaddvq_s16(v7);
  *v7.i8 = vcnt_s8(*v7.i8);
  v7.i16[0] = vaddlv_u8(*v7.i8);
  v8 = v7.u32[0];
  v10 = v7.i32[0] << 24;
  return (*(a2 + 312))(a2, 4, &v10) == 1 && (*(a2 + 312))(a2, v8, a3) != 0;
}

void *sub_240AE1A44(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v16 = 0;
  if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
  {
    return 0;
  }

  v6 = bswap32(v16);
  if (v6 > 0x10)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == v7)
      {
        goto LABEL_10;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_10:
  v9 = v8[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  v10 = (*(v9 + 4))();
  v11 = v10;
  if (v10)
  {
    *v10 = -1;
    v10[1] = -1;
    if ((*(a2 + 280))(a2, v10, 1, v6) == v6)
    {
      *a3 = 1;
      return v11;
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = &qword_27E516570;
      while (1)
      {
        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (v13 == v12)
        {
          goto LABEL_22;
        }
      }

      v13 = &unk_278CB2F00;
    }

    else
    {
      v13 = &unk_278CB2F00;
    }

LABEL_22:
    v14 = v13[6];
    if (!v14)
    {
      v14 = &xmmword_281500C10;
    }

    (*(v14 + 2))();
    return 0;
  }

  return v11;
}

uint64_t sub_240AE1BCC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE1C2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

BOOL sub_240AE1C98(uint64_t a1, uint64_t a2, double *a3)
{
  v8 = 768;
  if ((*(a2 + 312))(a2, 2, &v8) != 1)
  {
    return 0;
  }

  v9 = 0;
  if ((*(a2 + 312))(a2, 2, &v9) != 1 || !sub_240AE1D54(a2, *a3, a3[1]) || !sub_240AE1D54(a2, a3[3], a3[4]))
  {
    return 0;
  }

  v5 = a3[6];
  v6 = a3[7];

  return sub_240AE1D54(a2, v5, v6);
}

BOOL sub_240AE1D54(uint64_t a1, double a2, double a3)
{
  v6 = bswap32(vcvtmd_s64_f64(a2 * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v7 = bswap32(vcvtmd_s64_f64(a3 * 65536.0 + 0.5));
  return (*(a1 + 312))(a1, 4, &v7) == 1;
}

uint64_t sub_240AE1DF8(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  *a3 = 0;
  v8 = *(a1 + 40);
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
        goto LABEL_8;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_8:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  v11 = (*(v10 + 1))();
  if (v11)
  {
    v17 = 0;
    if ((*(a2 + 280))(a2, &v17, 2, 1) == 1)
    {
      v12 = v17;
      if (a4 != 32 || v17)
      {
LABEL_17:
        if (v12 == 768)
        {
          v20 = 0;
          if ((*(a2 + 280))(a2, &v20, 2, 1) == 1)
          {
            if (sub_240AD4570(a2, v11))
            {
              if (sub_240AD4570(a2, (v11 + 8)))
              {
                *(v11 + 16) = 0x3FF0000000000000;
                if (sub_240AD4570(a2, (v11 + 24)))
                {
                  if (sub_240AD4570(a2, (v11 + 32)))
                  {
                    *(v11 + 40) = 0x3FF0000000000000;
                    if (sub_240AD4570(a2, (v11 + 48)))
                    {
                      if (sub_240AD4570(a2, (v11 + 56)))
                      {
                        *(v11 + 64) = 0x3FF0000000000000;
                        *a3 = 1;
                        return v11;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_26;
      }

      v18 = 0;
      if ((*(a2 + 280))(a2, &v18, 2, 1) == 1)
      {
        v19 = 0;
        if ((*(a2 + 280))(a2, &v19, 2, 1) == 1)
        {
          v12 = v19;
          goto LABEL_17;
        }
      }
    }

LABEL_26:
    v13 = *(a1 + 40);
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

    (*(v15 + 2))();
    return 0;
  }

  return v11;
}

char *sub_240AE2040(uint64_t *a1, int a2)
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
  v3 = v2[11];
  if (!v3)
  {
    v3 = &unk_27E5165B0;
  }

  v4 = *v3;
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 13);
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v4 = a0b2a;
    while (*v4 != a2)
    {
      v4 = *(v4 + 13);
      if (!v4)
      {
        return 0;
      }
    }
  }

  return v4 + 8;
}

uint64_t sub_240AE20D4(double a1)
{
  if (a1 >= 4.0)
  {
    return 1835824483;
  }

  else
  {
    return 1684370275;
  }
}

uint64_t sub_240AE20F4(double a1)
{
  if (a1 >= 4.0)
  {
    return 1835824483;
  }

  else
  {
    return 1952807028;
  }
}

uint64_t sub_240AE2114(uint64_t a1, double a2)
{
  result = 1668641398;
  if (a2 >= 4.0 && *(a1 + 8) == 1)
  {
    v4 = *(*(a1 + 16) + 8);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 <= 5)
      {
        return 1885434465;
      }

      else
      {
        return 1668641398;
      }
    }
  }

  return result;
}

uint64_t sub_240AE2164(uint64_t a1, double a2)
{
  if (a2 >= 4.0)
  {
    return 1833058592;
  }

  if (*(a1 + 64))
  {
    return 1835430961;
  }

  return 1835430962;
}

uint64_t sub_240AE2194(uint64_t a1, double a2)
{
  if (a2 >= 4.0)
  {
    return 1832993312;
  }

  if (*(a1 + 64))
  {
    return 1835430961;
  }

  return 1835430962;
}

uint64_t sub_240AE21C4(uint64_t *a1)
{
  v1 = sub_240AC67A4(a1);
  v2 = v1;
  if (v1)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_240AC6B0C(v1, 4.3);
    *(v2 + 76) = xmmword_240C11240;
    if (!sub_240AE22C0(v2, "R") || !sub_240AC7D44(v2, 2004119668, &xmmword_27E516510, v3, v4, v5, v6, v7) || (v14[0] = *&xmmword_27E5165C0 / *(&xmmword_27E5165C0 + 1) * *&qword_27E5165D0, *&v14[1] = qword_27E5165D0, v14[2] = *&qword_27E5165D0 * ((1.0 - *&xmmword_27E5165C0 - *(&xmmword_27E5165C0 + 1)) / *(&xmmword_27E5165C0 + 1)), sub_240AE2748(v15, v14, &xmmword_27E516510), !sub_240AC7D44(v2, 1667785060, v15, v8, v9, v10, v11, v12)))
    {
      sub_240AC6C8C(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_240AE22C0(uint64_t a1, char *a2)
{
  if (a1)
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_240ACB75C(v4, 1u);
  v6 = sub_240ACB75C(v4, 1u);
  v7 = v6;
  if (v5 && v6)
  {
    if (sub_240ACBC94(v5, a2) && sub_240ACBA58(v7, 0x60u, &unk_240C15244, 25966, 21843) && sub_240AC7D44(a1, 1684370275, v5, v8, v9, v10, v11, v12))
    {
      v18 = sub_240AC7D44(a1, 1668313716, v7, v13, v14, v15, v16, v17);
    }

    else
    {
      v18 = 0;
    }

LABEL_15:
    sub_240ACBDDC(v5);
    if (!v7)
    {
      return v18;
    }

    goto LABEL_12;
  }

  v18 = 0;
  if (v5)
  {
    goto LABEL_15;
  }

  if (v6)
  {
LABEL_12:
    sub_240ACBDDC(v7);
  }

  return v18;
}

uint64_t sub_240AE23B4(uint64_t *a1)
{
  xmmword_27E5165C0 = vmulq_n_f64(xmmword_27E516510, 1.0 / (vaddvq_f64(xmmword_27E516510) + *&qword_27E516520));
  qword_27E5165D0 = *(&xmmword_27E516510 + 1);
  v2 = sub_240AE21C4(a1);
  v3 = v2;
  if (v2)
  {
    sub_240AC6B0C(v2, 4.3);
    qmemcpy((v3 + 76), "tsba baL baL", 12);
    if (sub_240AE22C0(v3, "L"))
    {
      v4 = sub_240ACADFC(a1, 3u, 3);
      if (v4)
      {
        v5 = v4;
        v6 = sub_240AC904C(a1, 3, 0);
        if (v6)
        {
          v6[1].i32[1] = 1768189472;
          v6[7] = *v5;
          *v5 = v6;
          if (sub_240ACAF44(v5))
          {
            if (sub_240AC7D44(v3, 1093812784, v5, v7, v8, v9, v10, v11))
            {
              sub_240ACB1C0(v5);
              return v3;
            }
          }
        }

        sub_240ACB1C0(v5);
      }
    }

    sub_240AC6C8C(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_240AE24E4(uint64_t *a1)
{
  xmmword_27E5165C0 = vmulq_n_f64(xmmword_27E516510, 1.0 / (vaddvq_f64(xmmword_27E516510) + *&qword_27E516520));
  qword_27E5165D0 = *(&xmmword_27E516510 + 1);
  v2 = sub_240AE21C4(a1);
  v3 = v2;
  if (v2)
  {
    sub_240AC6B0C(v2, 4.3);
    qmemcpy((v3 + 76), "tsba ZYX ZYX", 12);
    if (sub_240AE22C0(v3, "X"))
    {
      v4 = sub_240ACADFC(a1, 3u, 3);
      if (v4)
      {
        v5 = v4;
        v6 = sub_240AC904C(a1, 3, 0);
        if (v6)
        {
          v6[1].i32[1] = 1768189472;
          v6[7] = *v5;
          *v5 = v6;
          if (sub_240ACAF44(v5))
          {
            if (sub_240AC7D44(v3, 1093812784, v5, v7, v8, v9, v10, v11))
            {
              sub_240ACB1C0(v5);
              return v3;
            }
          }
        }

        sub_240ACB1C0(v5);
      }
    }

    sub_240AC6C8C(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_240AE2614(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v10 = a2 * a2;
  v11 = a2 * a2 * a2;
  if (a2 >= 4000.0 && a2 <= 7000.0)
  {
    v12 = 1000000.0 / v10 * 2.9678 + 1000000000.0 / v11 * -4.607 + 1000.0 / a2 * 0.09911;
    v13 = 0.244063;
LABEL_7:
    v14 = v12 + v13;
    *result = v14;
    *(result + 8) = v14 * 2.87 + v14 * v14 * -3.0 + -0.275;
    *(result + 16) = 0x3FF0000000000000;
    return result;
  }

  if (a2 > 7000.0 && a2 <= 25000.0)
  {
    v12 = 1000000.0 / v10 * 1.9018 + 1000000000.0 / v11 * -2.0064 + 1000.0 / a2 * 0.24748;
    v13 = 0.23704;
    goto LABEL_7;
  }

  return sub_240AC15A4(0, 2, "cmsWhitePointFromTemp: invalid temp", a5, a6, a7, a8, a9, a10);
}

uint64_t sub_240AE2748(uint64_t a1, double *a2, double *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v16[2] = xmmword_240C156A8;
  v16[3] = unk_240C156B8;
  v17 = 0x3FF0793DD97F62B7;
  v16[0] = xmmword_240C15688;
  v16[1] = unk_240C15698;
  result = sub_240ACB590(v16, v19);
  if (result)
  {
    v7 = a2[1];
    v8 = a2[2];
    v9 = a3[1];
    v10 = a3[2];
    v11 = v7 * 0.2664 + *a2 * 0.8951 + v8 * -0.1614;
    v12 = v7 * 1.7135 + *a2 * -0.7502 + v8 * 0.0367;
    v13 = v7 * -0.0685 + *a2 * 0.0389 + v8 * 1.0296;
    v14 = v9 * 1.7135 + *a3 * -0.7502 + v10 * 0.0367;
    v15 = v9 * -0.0685 + *a3 * 0.0389 + v10 * 1.0296;
    v18[0] = (v9 * 0.2664 + *a3 * 0.8951 + v10 * -0.1614) / v11;
    memset(&v18[1], 0, 24);
    v18[4] = v14 / v12;
    memset(&v18[5], 0, 24);
    v18[8] = v15 / v13;
    sub_240ACB4CC(v16, v18, &xmmword_240C15688);
    sub_240ACB4CC(a1, v19, v16);
    return 1;
  }

  return result;
}

double sub_240AE28B0(uint64_t a1, double *a2, double *a3, double *a4)
{
  v14 = 0.0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (sub_240AE2748(&v10, a2, a3))
  {
    v7 = a4[1];
    v8 = a4[2];
    *&v9 = *(&v10 + 1) * v7 + *&v10 * *a4 + *&v11 * v8;
    *(&v9 + 1) = *&v12 * v7 + *(&v11 + 1) * *a4 + *(&v12 + 1) * v8;
    result = *(&v13 + 1) * v7 + *&v13 * *a4 + v14 * v8;
    *a1 = v9;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_240AE2944(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_240ACB1C0(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    sub_240ACB1C0(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_240ACC2E0(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    sub_240ACC2E0(v5);
  }

  v6 = *(a1 + 200);
  if (v6)
  {
    sub_240ACCB4C(v6);
  }

  if (*(a1 + 240))
  {
    (*(a1 + 248))(*(a1 + 232));
  }

  v7 = *(a1 + 232);
  if (v7)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == v7)
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

  v10 = *(v9 + 2);

  return v10();
}

uint64_t sub_240AE2A1C(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = a1;
  v10 = a9;
  v66 = a8;
  v67 = a7;
  if ((a9 & 0x200) != 0)
  {
    return sub_240AE2F28(a1, 0, 0, &v67, &v66, &a9);
  }

  v11 = a8;
  v16 = a2 - 1;
  if ((a9 & 0x1000) != 0)
  {
    v10 = a9 & 0xFFFFEDFF;
  }

  v17 = (a7 | a8) & 0x400000;
  v18 = v10 | HIWORD(v17);
  if (a9 & 0x1000 | v17)
  {
    a9 = v10 | HIWORD(v17);
  }

  if (!*a3)
  {
LABEL_46:
    v37 = "NULL input profiles on transform";
    v38 = 4;
LABEL_47:
    sub_240AC15A4(a1, v38, v37, a4, a5, a6, a7, a8, v61);
    return 0;
  }

  v19 = 0;
  v20 = *(*a3 + 20);
  v21 = 84;
  if (a2 == 1)
  {
    v21 = 80;
  }

  v22 = *(*a3 + 20);
  do
  {
    v23 = a3[v19];
    v25 = v22 != 1482250784 && v22 != 1281450528;
    if (!v23)
    {
      goto LABEL_46;
    }

    v26 = *(v23 + 19);
    if (v26 == 1852662636)
    {
      v27 = 826494034;
      v28 = v21;
    }

    else if (((v26 != 1818848875) & ~v25) != 0)
    {
      v27 = *(v23 + 21);
      v28 = 80;
    }

    else
    {
      v27 = *(v23 + 20);
      v28 = 84;
    }

    v22 = *(v23 + v28);
    if (!v19)
    {
      v20 = v27;
    }

    ++v19;
  }

  while (a2 != v19);
  v63 = v16;
  v64 = v18;
  v62 = a5[v16];
  v29 = WORD1(a7) & 0x1F;
  v30 = sub_240AD40A4(v20);
  if (v29 && v29 != v30 && (v29 != 30 || v30 != 10))
  {
    v37 = "Wrong input color space on transform";
LABEL_52:
    a1 = v9;
    v38 = 9;
    goto LABEL_47;
  }

  v31 = HIWORD(v11) & 0x1F;
  v32 = sub_240AD40A4(v22);
  if (v31 && v31 != v32 && (v31 != 30 || v32 != 10))
  {
    v37 = "Wrong output color space on transform";
    goto LABEL_52;
  }

  v33 = 0;
  do
  {
    v34 = a5[v33];
    if (v34 == 3)
    {
      *(a4 + 4 * v33) = 0;
      v34 = a5[v33];
    }

    if ((v34 | 2) == 2 && *(a3[v33] + 18) >> 26)
    {
      *(a4 + 4 * v33) = 1;
    }

    ++v33;
  }

  while (a2 != v33);
  if (v9)
  {
    v35 = &qword_27E516570;
    while (1)
    {
      v35 = *v35;
      if (!v35)
      {
        break;
      }

      if (v35 == v9)
      {
        goto LABEL_54;
      }
    }

    v35 = &unk_278CB2F00;
  }

  else
  {
    v35 = &unk_278CB2F00;
  }

LABEL_54:
  v40 = *a5;
  v41 = v35[12];
  if (!v41)
  {
    v41 = &unk_27E516590;
  }

  v42 = *v41;
  if (v42)
  {
    while (*v42 != v40)
    {
      v42 = *(v42 + 34);
      if (!v42)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
LABEL_59:
    v42 = &dword_2815029E0;
    while (*v42 != v40)
    {
      v42 = *(v42 + 34);
      if (!v42)
      {
        sub_240AC15A4(v9, 8, "Unsupported intent '%d'", a4, a5, a6, a7, a8, *a5);
        goto LABEL_72;
      }
    }
  }

  v43 = (*(v42 + 33))(v9, a2, a5, a3, a4, a6, v64);
  if (!v43)
  {
LABEL_72:
    v37 = "Couldn't link the profiles";
LABEL_74:
    a1 = v9;
    v38 = 13;
    goto LABEL_47;
  }

  v44 = v43;
  if (sub_240AD3DAC(v20) != *(v43 + 8) || sub_240AD3DAC(v22) != *(v44 + 12))
  {
    sub_240ACB1C0(v44);
    v37 = "Channel count doesn't match. Profile is corrupted";
    goto LABEL_74;
  }

  v45 = sub_240AE2F28(v9, v44, v62, &v67, &v66, &a9);
  v36 = v45;
  if (!v45)
  {
    return v36;
  }

  v46 = 1668051572;
  *(v45 + 36) = v20;
  *(v45 + 37) = v22;
  *(v45 + 56) = a5[v63];
  v47 = sub_240AC7924(*a3, 0x77747074u);
  sub_240AE33D8(v36 + 19, v47);
  v48 = sub_240AC7924(a3[v63], 0x77747074u);
  sub_240AE33D8(v36 + 22, v48);
  v49 = *a3;
  v50 = *(*a3 + 33);
  if (v50 >= 1)
  {
    v51 = 136;
    while (*(v49 + v51) != 1668051572)
    {
      v51 += 4;
      if (!--v50)
      {
        goto LABEL_76;
      }
    }

    v52 = sub_240AC7924(v49, 0x636C7274u);
    *(v36 + 16) = sub_240ACC3C8(v52);
  }

LABEL_76:
  v53 = a3[v63];
  v54 = (v53 + 17);
  v55 = *(v53 + 33);
  if (*(v53 + 19) == 1818848875)
  {
    if (v55 >= 1)
    {
      v46 = 1668050804;
      while (1)
      {
        v56 = *v54++;
        if (v56 == 1668050804)
        {
          break;
        }

        if (!--v55)
        {
          goto LABEL_87;
        }
      }

LABEL_86:
      v58 = sub_240AC7924(v53, v46);
      *(v36 + 17) = sub_240ACC3C8(v58);
    }
  }

  else if (v55 >= 1)
  {
    do
    {
      v57 = *v54++;
      if (v57 == 1668051572)
      {
        goto LABEL_86;
      }
    }

    while (--v55);
  }

LABEL_87:
  v59 = a9;
  if ((a9 & 0x80) != 0)
  {
    v60 = sub_240AC8DC4(v9, a2, a3);
    v59 = a9;
  }

  else
  {
    v60 = 0;
  }

  *(v36 + 25) = v60;
  if ((v59 & 0x40) == 0)
  {
    *(v36 + 3) = 0u;
    *(v36 + 4) = 0u;
    if (*(v36 + 15))
    {
      sub_240AE344C(v36, (v36 + 6), (v36 + 10));
    }

    else
    {
      (*(*(v36 + 14) + 24))(v36 + 12, v36 + 20, *(*(v36 + 14) + 16));
    }
  }

  return v36;
}

uint64_t sub_240AE2F28(uint64_t *a1, void *a2, uint64_t a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  v12 = &qword_27E5165D8;
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
        goto LABEL_7;
      }
    }

    v13 = &unk_278CB2F00;
LABEL_7:
    v14 = v13[15];
    if (v14)
    {
      v12 = v14;
    }

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
        goto LABEL_15;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_15:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  v17 = (*(v16 + 1))(a1, 264, 0x10A0040B0F77EABLL);
  v18 = v17;
  if (!v17)
  {
    sub_240ACB1C0(a2);
    return v18;
  }

  *(v17 + 112) = a2;
  v19 = (v17 + 112);
  if (!a2)
  {
LABEL_49:
    v28 = *a4;
    if ((v28 & 0x400000) != 0)
    {
      if ((*(a5 + 2) & 0x40) != 0)
      {
        *(v18 + 32) = sub_240AD08FC(a1, v28, 0, 1);
        v37 = sub_240AD08FC(a1, *a5, 1, 1);
        *(v18 + 40) = v37;
        v38 = *a6;
        *a6 |= 0x2000000u;
        if (*(v18 + 32) && v37)
        {
          if ((v38 & 0x200) != 0)
          {
            v36 = sub_240AE3CF8;
          }

          else
          {
            v36 = sub_240AE3B80;
          }

          goto LABEL_74;
        }

        goto LABEL_65;
      }
    }

    else if (!v28)
    {
      if (!*a5)
      {
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        v35 = *a6;
        goto LABEL_69;
      }

      v28 = 0;
    }

    *(v18 + 16) = sub_240AD08FC(a1, v28, 0, 0);
    v29 = sub_240AD08FC(a1, *a5, 1, 0);
    *(v18 + 24) = v29;
    if (*(v18 + 16) && v29)
    {
      v35 = *a6;
      if ((*v18 & 7) == 1)
      {
        if ((v35 & 0x200) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_70;
      }

LABEL_69:
      v35 |= 0x2000000u;
      *a6 = v35;
      if ((v35 & 0x200) == 0)
      {
LABEL_58:
        if ((v35 & 0x40) != 0)
        {
          if ((v35 & 0x1000) != 0)
          {
            v36 = sub_240AE3954;
          }

          else
          {
            v36 = sub_240AE3830;
          }
        }

        else if ((v35 & 0x1000) != 0)
        {
          v36 = sub_240AE36B4;
        }

        else
        {
          v36 = sub_240AE3534;
        }

        goto LABEL_74;
      }

LABEL_70:
      v36 = sub_240AE3A74;
LABEL_74:
      *(v18 + 8) = v36;
      *v18 = *a4;
      *(v18 + 4) = *a5;
      *(v18 + 208) = *a6;
      *(v18 + 232) = a1;
      *(v18 + 240) = 0;
      return v18;
    }

LABEL_65:
    sub_240AC15A4(a1, 8, "Unsupported raster format", v30, v31, v32, v33, v34, v40);
    sub_240AE2944(v18);
    return 0;
  }

  v20 = *v12;
  if (!*v12)
  {
LABEL_22:
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
          goto LABEL_32;
        }
      }

      v21 = &unk_278CB2F00;
    }

    else
    {
      v21 = &unk_278CB2F00;
    }

LABEL_32:
    v22 = v21[14];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = &unk_27E516598;
    }

    v24 = *v19;
    if ((*a6 & 2) != 0)
    {
      sub_240ACD190(v24);
      sub_240ACD49C((v18 + 112), a3, a4, a5, a6);
    }

    else if (*v24)
    {
      sub_240ACD190(v24);
      v25 = *v19;
      if (**v19)
      {
        if ((*(a6 + 1) & 1) == 0)
        {
          v26 = *v23;
          if (v26)
          {
            while (!(*v26)(v18 + 112, a3, a4, a5, a6))
            {
              v26 = *(v26 + 8);
              if (!v26)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
LABEL_42:
            v27 = off_281502998;
            do
            {
              if ((*v27)(v18 + 112, a3, a4, a5, a6))
              {
                break;
              }

              v27 = v27[1];
            }

            while (v27);
          }
        }
      }

      else
      {
        v25[5] = 0;
        v25[6] = 0;
        v25[2] = v25;
        v25[3] = sub_240AD083C;
      }
    }

    else
    {
      v24[5] = 0;
      v24[6] = 0;
      v24[2] = v24;
      v24[3] = sub_240AD083C;
    }

    goto LABEL_49;
  }

  while (!(*v20)(v18 + 8, v18 + 240, v18 + 248, v18 + 112, a4, a5, a6))
  {
    v20 = *(v20 + 16);
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  *(v18 + 232) = a1;
  *v18 = *a4;
  *(v18 + 4) = *a5;
  *(v18 + 208) = *a6;
  *(v18 + 16) = sub_240AD08FC(a1, *a4, 0, 0);
  *(v18 + 24) = sub_240AD08FC(a1, *a5, 1, 0);
  *(v18 + 32) = sub_240AD08FC(a1, *a4, 0, 1);
  *(v18 + 40) = sub_240AD08FC(a1, *a5, 1, 1);
  if (*(v20 + 8))
  {
    *(v18 + 256) = *(v18 + 8);
    *(v18 + 8) = sub_240AE3E08;
  }

  return v18;
}

double sub_240AE33D8(double *a1, double *a2)
{
  if (a2)
  {
    result = *a2;
    v3 = a2[1];
    *a1 = *a2;
    a1[1] = v3;
    v4 = a2[2];
    for (a1[2] = v4; result > 2.0; a1[2] = v4)
    {
      if (v3 <= 2.0 || v4 <= 2.0)
      {
        break;
      }

      result = result / 10.0;
      v3 = v3 / 10.0;
      *a1 = result;
      a1[1] = v3;
      v4 = v4 / 10.0;
    }
  }

  else
  {
    result = 0.9642;
    *a1 = xmmword_240C11250;
    a1[2] = 0.8249;
  }

  return result;
}

uint64_t sub_240AE344C(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  result = (*(a1[15] + 24))(a2, &v12, *(a1[15] + 16));
  if (!v12)
  {
    return (*(a1[14] + 24))(a2, a3, *(a1[14] + 16));
  }

  v7 = a1[29];
  if (v7)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == v7)
      {
        goto LABEL_10;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_10:
  v9 = v8[4];
  if (!v9)
  {
    v9 = &unk_27E516530;
  }

  v10 = *(a1[14] + 12);
  if (v10)
  {
    v11 = 0;
    do
    {
      *(a3 + 2 * v11) = v9[v11];
      ++v11;
    }

    while (v10 > v11);
  }

  return result;
}

uint64_t **sub_240AE3534(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = *(a1 + 48);
  v25 = *(a1 + 64);
  v26 = *(a1 + 80);
  v27 = *(a1 + 96);
  v23 = a5;
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, &v30, v16, a6[2]);
          if (v30 == v24 && *(&v30 + 1) == *(&v24 + 1) && v31 == v25 && *(&v31 + 1) == *(&v25 + 1))
          {
            v28 = v26;
            v29 = v27;
          }

          else
          {
            (*(*(a1 + 112) + 24))(&v30, &v28, *(*(a1 + 112) + 16));
            v24 = v30;
            v25 = v31;
            v26 = v28;
            v27 = v29;
          }

          result = (*(a1 + 24))(a1, &v28, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != v23);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_240AE36B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = *(a1 + 48);
  v25 = *(a1 + 64);
  v26 = *(a1 + 80);
  v27 = *(a1 + 96);
  v23 = a5;
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, &v30, v16, a6[2]);
          if (v30 == v24 && *(&v30 + 1) == *(&v24 + 1) && v31 == v25 && *(&v31 + 1) == *(&v25 + 1))
          {
            v28 = v26;
            v29 = v27;
          }

          else
          {
            sub_240AE344C(a1, &v30, &v28);
            v24 = v30;
            v25 = v31;
            v26 = v28;
            v27 = v29;
          }

          result = (*(a1 + 24))(a1, &v28, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != v23);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_240AE3830(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, v21, v16, a6[2]);
          (*(*(a1 + 112) + 24))(v21, v20, *(*(a1 + 112) + 16));
          result = (*(a1 + 24))(a1, v20, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != a5);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_240AE3954(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, v21, v16, a6[2]);
          sub_240AE344C(a1, v21, v20);
          result = (*(a1 + 24))(a1, v20, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != a5);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_240AE3A74(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v20, 0, sizeof(v20));
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, v20, v16, a6[2]);
          result = (*(a1 + 24))(a1, v20, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != a5);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_240AE3B80(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0.0;
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v25, 0, sizeof(v25));
  memset(__b, 0, sizeof(__b));
  v22 = a5;
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 32))(a1, v25, v16, a6[2]);
          v18 = *(a1 + 120);
          if (v18 && ((*(v18 + 32))(v25, &v23), v17.n128_f32[0] = v23, v23 > 0.0))
          {
            memset_pattern16(__b, &unk_240C11A50, 0x40uLL);
          }

          else
          {
            (*(*(a1 + 112) + 32))(v25, __b, v17);
          }

          result = (*(a1 + 40))(a1, __b, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != v22);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_240AE3CF8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v20, 0, sizeof(v20));
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 32))(a1, v20, v16, a6[2]);
          result = (*(a1 + 40))(a1, v20, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != a5);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_240AE3E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v7 = a5;
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      result = (*(a1 + 256))(a1, a2 + v13, a3 + v14, a4, a6[2]);
      v13 += *a6;
      v14 += a6[1];
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_240AE3E94()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = 0;
  v17 = *MEMORY[0x277D85DE8];
  v13[0] = v6;
  v13[1] = v7;
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  do
  {
    v16[v5] = (v4 >> 13) & 1;
    v15[v5] = v3;
    if (v0)
    {
      v9 = &qword_27E516570;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (v9 == v0)
        {
          goto LABEL_10;
        }
      }
    }

    v9 = &unk_278CB2F00;
LABEL_10:
    v10 = v9[5];
    if (!v10)
    {
      v10 = &unk_27E516528;
    }

    v14[v5++] = *v10;
  }

  while (v5 != v8);
  result = sub_240AE2A1C(v0, v8, v13, v16, v15, v14, v1, v2, v4);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_240AE3FA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_240AE40A8(0, a2, a3, a4, a5, a6, a7, a8, "payload_size != 0");
  }

  if (a1 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  atomic_fetch_add_explicit(&qword_27E5165E0, 1uLL, memory_order_relaxed);
  result = malloc_type_malloc(a1 + 256, 0xF0EBF2FBuLL);
  if (result)
  {
    v10 = result;
    v11 = result & 0xFFFFFFFFFFFFFF80;
    result = (result & 0xFFFFFFFFFFFFFF80) + 256;
    *(v11 + 240) = v10;
    *(v11 + 248) = a1;
  }

  return result;
}

void sub_240AE402C(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  sub_240B7BFF4(a1, *(a1 - 8));
  v5 = *(a1 - 16);
  if (a2)
  {

    a2(a3, v5);
  }

  else
  {

    free(v5);
  }
}

void sub_240AE40A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(__str, 0x320uLL, "Assert %s", &a9);
  v9 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "Abort at %s:%d: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleJPEGXL/third_party/highway/hwy/aligned_allocator.cc", 70, __str);
  fflush(*v9);
  abort();
}

uint64_t sub_240AE411C(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v5 = a3;
  v8 = a4[1];
  v7 = a4[2];
  v9 = (a4[4] + 3 * a5);
  v10 = *(v7 + 2 * *v9);
  v11 = v9[1];
  v12 = *(v7 + 2 * v9[2]);
  v13 = *(v8 + v10);
  if (*(v8 + v10))
  {
    v14 = 0;
    v15 = v10 + v8 + 1;
    do
    {
      *(a1 + v14) = *(v15 + v14);
      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v14 = 0;
  }

  if (v11 > 9)
  {
    if ((v11 - 12) <= 8)
    {
      v16 = (v11 - 11);
      a2 += v16;
      v5 = (a3 - v16);
    }
  }

  else
  {
    v5 = (a3 - v11);
  }

  if (v5 >= 1)
  {
    v14 = v14;
    v17 = v5;
    do
    {
      v18 = *a2++;
      *(a1 + v14++) = v18;
      --v17;
    }

    while (v17);
  }

  if (v11 > 20)
  {
    if (v11 == 21)
    {
      sub_240AE439C((a1 - v5 + v14), v5, *(a4[5] + 2 * a5) | (*(a4[5] + 2 * a5 + 1) << 8));
    }

    else if (v11 == 22 && v5 >= 1)
    {
      v23 = *(a4[5] + 2 * a5) | (*(a4[5] + 2 * a5 + 1) << 8);
      v24 = (a1 - v5 + v14);
      do
      {
        v25 = sub_240AE439C(v24, v5, v23);
        v24 += v25;
        v22 = __OFSUB__(v5, v25);
        v5 = (v5 - v25);
      }

      while (!((v5 < 0) ^ v22 | (v5 == 0)));
    }
  }

  else if (v11 == 10)
  {
    v26 = (a1 - v5 + v14);
    v27 = *v26;
    if (v27 > 0xBF)
    {
      if (v27 > 0xDF)
      {
        v26[2] ^= 5u;
      }

      else
      {
        v26[1] ^= 0x20u;
      }
    }

    else if (v27 - 97 <= 0x19)
    {
      *v26 = v27 & 0x5F;
    }
  }

  else if (v11 == 11 && v5 >= 1)
  {
    v19 = (a1 - v5 + v14);
    do
    {
      v20 = *v19;
      if (v20 > 0xBF)
      {
        if (v20 > 0xDF)
        {
          v19[2] ^= 5u;
          v21 = 3;
        }

        else
        {
          v19[1] ^= 0x20u;
          v21 = 2;
        }
      }

      else
      {
        if (v20 - 97 <= 0x19)
        {
          *v19 = v20 & 0x5F;
        }

        v21 = 1;
      }

      v19 += v21;
      v22 = __OFSUB__(v5, v21);
      LODWORD(v5) = v5 - v21;
    }

    while (!((v5 < 0) ^ v22 | (v5 == 0)));
  }

  v28 = *(v8 + v12);
  if (*(v8 + v12))
  {
    v14 = v14;
    v29 = (v12 + v8 + 1);
    do
    {
      v30 = *v29++;
      *(a1 + v14++) = v30;
      --v28;
    }

    while (v28);
  }

  return v14;
}

uint64_t sub_240AE439C(char *a1, uint64_t a2, __int16 a3)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    *a1 = (v3 + a3) & 0x7F;
    return 1;
  }

  if (v3 < 0xC0)
  {
    return 1;
  }

  v5 = (a3 & 0x7FFF) - (a3 & 0x8000) + 0x1000000;
  if (v3 <= 0xDF)
  {
    if (a2 >= 2)
    {
      v6 = a1[1];
      v7 = (v6 & 0x3F | ((v3 & 0x1F) << 6)) + v5;
      *a1 = (v7 >> 6) & 0x1F | 0xC0;
      a1[1] = v6 & 0xC0 | v7 & 0x3F;
      return 2;
    }

    return 1;
  }

  if (v3 > 0xEF)
  {
    if (v3 > 0xF7)
    {
      return 1;
    }

    if (a2 >= 4)
    {
      v11 = a1[3];
      v12 = a1[2];
      v13 = a1[1];
      v14 = ((v3 & 7) << 18) + v5 + (v11 & 0x3F);
      v15 = v14 + ((v12 & 0x3F) << 6);
      v16 = v15 + ((v13 & 0x3F) << 12);
      *a1 = (v16 >> 18) & 7 | 0xF0;
      a1[1] = v13 & 0xC0 | (v16 >> 12) & 0x3F;
      a1[2] = v12 & 0xC0 | (v15 >> 6) & 0x3F;
      a1[3] = v11 & 0xC0 | v14 & 0x3F;
      return 4;
    }
  }

  else if (a2 >= 3)
  {
    v8 = a1[2];
    v9 = a1[1];
    v10 = ((v3 & 0xF) << 12) + v5 + (v8 & 0x3F);
    *a1 = ((v10 + ((v9 & 0x3F) << 6)) >> 12) | 0xE0;
    a1[1] = v9 & 0xC0 | ((v10 + ((v9 & 0x3Fu) << 6)) >> 6) & 0x3F;
    a1[2] = v8 & 0xC0 | v10 & 0x3F;
    return 3;
  }

  return a2;
}

void *sub_240AE44D8(void *result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, int32x4_t *a8, double a9, int32x4_t a10, double a11, double a12, double a13, int32x4_t a14, unint64_t *a15, _DWORD *a16, void *a17, void *a18)
{
  v18 = *(a6 + 40);
  if (*(a6 + 96))
  {
    if (v18 <= 39)
    {
      if (v18 > 4)
      {
        if (v18 == 5)
        {
          return sub_240AE46F0(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
        }

        if (v18 == 6)
        {
          return sub_240AE6100(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
        }

LABEL_29:
        if (v18 == 35)
        {
          return sub_240AF8BD4(result, a2, a3, a4, a6, a7, a8->i32, a15, a16, a17, a18);
        }

        return result;
      }

LABEL_9:
      switch(v18)
      {
        case 2:
          return sub_240AEFDD8(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
        case 3:
          return sub_240AF0BEC(result, a2, a3, a4, a6, a7, a8->i32, a15, a16, a17, a18);
        case 4:
          return sub_240AF1664(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
      }

      return result;
    }

    if (v18 <= 53)
    {
      switch(v18)
      {
        case '(':
          return sub_240AE7B6C(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
        case ')':
          return sub_240AE9550(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
        case '*':
          return sub_240AEAF78(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      return result;
    }

    if (v18 != 54)
    {
      if (v18 == 55)
      {
        return sub_240AEC9E8(result, a2, a3, a4, a6, a7, a8->i32, a15, a16, a17, a18);
      }

      if (v18 == 65)
      {
        return sub_240AEE05C(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
      }

      return result;
    }

    return sub_240AF812C(result, a2, a3, a4, a6, a7, a8->i32, a15, a16, a17, a18);
  }

  if (v18 <= 39)
  {
    if (v18 > 4)
    {
      if (v18 == 5)
      {
        return sub_240AF257C(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
      }

      if (v18 == 6)
      {
        return sub_240AF3840(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
      }

      goto LABEL_29;
    }

    goto LABEL_9;
  }

  if (v18 > 53)
  {
    switch(v18)
    {
      case '6':
        return sub_240AF812C(result, a2, a3, a4, a6, a7, a8->i32, a15, a16, a17, a18);
      case '7':
        return sub_240AF995C(result, a2, a3, a4, a6, a7, a8->i32, a15, a16, a17, a18);
      case 'A':
        return sub_240AFA70C(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
    }
  }

  else
  {
    switch(v18)
    {
      case '(':
        return sub_240AF4AB0(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
      case ')':
        return sub_240AF5C74(result, a2, a3, a4, a5, a6, a7, a8->i32, a15, a16, a17, a18);
      case '*':
        return sub_240AF6E54(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }
  }

  return result;
}

unint64_t sub_240AE46F0(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v12 = a4;
  v13 = *a9;
  v361 = *(a6 + 16);
  v362 = a2 + result;
  v342 = a2 + result - 3;
  if (result <= 3)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 + result - 3;
  }

  v15 = *(a6 + 8);
  v16 = 512;
  if (*(a6 + 4) < 9)
  {
    v16 = 64;
  }

  v347 = v16;
  v345 = v14;
  v346 = *(a6 + 104);
  v17 = *(a7 + 108);
  if (v17 >= 5)
  {
    v18 = vld1q_dup_f32(a8);
    *(a8 + 1) = vaddq_s32(v18, xmmword_240C11260);
    *(a8 + 4) = vadd_s32(*v18.i8, 0x3FFFFFFFDLL);
    if (v17 >= 0xB)
    {
      v19 = (a8 + 1);
      v20 = vld1q_dup_f32(v19);
      *(a8 + 10) = vaddq_s32(v20, xmmword_240C11260);
      *(a8 + 7) = vadd_s32(*v20.i8, 0x3FFFFFFFDLL);
    }
  }

  if (result >= 5)
  {
    v21 = v16 + a2;
    v360 = (1 << v15) - 16;
    v351 = a6 + 637;
    v350 = a5 + 256;
    v359 = a6 + 704;
    v349 = v346 + 1;
    v385 = a6 + 112;
    v384 = a6 + 368;
    v343 = 4 * v16;
    v344 = a2 + result - 1;
    v22 = a10;
    result = a3;
    v363 = *(a7 + 128);
    v364 = a6;
    v373 = *(a7 + 120);
    while (1)
    {
      if (a2 >= v360)
      {
        v23 = v360;
      }

      else
      {
        v23 = a2;
      }

      v24 = a2 + v361;
      if (a2 + v361 >= v360)
      {
        v24 = v360;
      }

      v379 = v24;
      if (!*(a6 + 632))
      {
        v27 = 0;
        v365 = 0;
        goto LABEL_24;
      }

      if (!a2)
      {
        break;
      }

      v25 = *(result + ((a2 - 1) & v12));
      if (a2 == 1)
      {
        goto LABEL_22;
      }

      v26 = *(result + ((a2 - 2) & v12));
LABEL_23:
      v365 = v25;
      v27 = *(v351 + (*(v350 + v26) | *(a5 + v25)));
LABEL_24:
      v378 = v21;
      v348 = v22;
      v372 = v13;
      v367 = v27;
      v28 = *(v359 + 8 * v27);
      v29 = v362 - a2;
      v374 = a2;
      v30 = a2 & v12;
      v31 = *(a7 + 108);
      v390 = *(a6 + 80);
      v32 = (v362 - a2) >> 3;
      v382 = a2 & v12;
      if (v31)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = (result + v30);
        v38 = result + v30 + (v29 & 0xFFFFFFFFFFFFFFF8);
        v39 = 2020;
        v40 = 2020;
        do
        {
          v41 = a8[v34];
          v42 = v374 - v41;
          v43 = v23 < v41 || v42 >= v374;
          v44 = v42 & v12;
          v45 = v33 + v382;
          v46 = v43 || v45 > v12;
          v47 = v44 + v33;
          v48 = v46 || v47 > v12;
          if (!v48 && *(a3 + v45) == *(a3 + v47))
          {
            v49 = a3 + v44;
            if (v29 < 8)
            {
              v54 = 0;
              v55 = v37;
LABEL_56:
              if ((v29 & 7) != 0)
              {
                v57 = v29 & 7 | v54;
                v58 = v29 & 7;
                while (*(v49 + v54) == *v55)
                {
                  ++v55;
                  ++v54;
                  if (!--v58)
                  {
                    v54 = v57;
                    break;
                  }
                }
              }
            }

            else
            {
              v50 = 0;
              v51 = v32;
              while (1)
              {
                v52 = *&v37[v50];
                v53 = *(v49 + v50);
                if (v52 != v53)
                {
                  break;
                }

                v50 += 8;
                if (!--v51)
                {
                  v54 = v29 & 0xFFFFFFFFFFFFFFF8;
                  v55 = v38;
                  goto LABEL_56;
                }
              }

              v54 = v50 + (__clz(__rbit64(v53 ^ v52)) >> 3);
            }

            if (v54 > 2 || v34 <= 1 && v54 == 2)
            {
              v56 = 135 * v54 + 1935;
              if (v39 < v56)
              {
                if (v34)
                {
                  v56 -= ((0x1CA10u >> (v34 & 0xE)) & 0xE) + 39;
                }

                if (v39 < v56)
                {
                  v36 = a8[v34];
                  v40 = v56;
                  v35 = v54;
                  v33 = v54;
                  v39 = v56;
                }
              }
            }
          }

          ++v34;
        }

        while (v34 != v31);
      }

      else
      {
        v36 = 0;
        v35 = 0;
        v33 = 0;
        v40 = 2020;
        v39 = 2020;
      }

      v59 = (a3 + v382);
      v60 = *(a7 + 100);
      v61 = (506832829 * *(a3 + v382)) >> *(a7 + 96);
      v62 = v363 + 4 * (v61 << *(a7 + 104));
      v63 = *(v373 + 2 * v61);
      v358 = *(a7 + 88);
      v64 = v63 - v358;
      if (v63 < v358)
      {
        v64 = 0;
      }

      if (v64 < v63)
      {
        v65 = *(v373 + 2 * v61);
        do
        {
          v66 = *(v62 + 4 * (--v65 & v60));
          v67 = v374 - v66;
          if (v374 - v66 > v23)
          {
            break;
          }

          if (v33 + v382 <= v12)
          {
            v68 = v66 & v12;
            if (v68 + v33 <= v12 && *(a3 + v33 + v382) == *(a3 + v68 + v33))
            {
              v69 = a3 + v68;
              if (v29 < 8)
              {
                v74 = 0;
                v75 = (a3 + v382);
LABEL_82:
                if ((v29 & 7) != 0)
                {
                  v77 = v29 & 7 | v74;
                  v78 = v29 & 7;
                  while (*(v69 + v74) == *v75)
                  {
                    ++v75;
                    ++v74;
                    if (!--v78)
                    {
                      v74 = v77;
                      break;
                    }
                  }
                }

                v12 = a4;
              }

              else
              {
                v70 = 0;
                v71 = v32;
                while (1)
                {
                  v72 = *&v59[v70];
                  v73 = *(v69 + v70 * 4);
                  if (v72 != v73)
                  {
                    break;
                  }

                  v70 += 2;
                  if (!--v71)
                  {
                    v74 = v29 & 0xFFFFFFFFFFFFFFF8;
                    v75 = v59 + (v29 & 0xFFFFFFFFFFFFFFF8);
                    goto LABEL_82;
                  }
                }

                v74 = v70 * 4 + (__clz(__rbit64(v73 ^ v72)) >> 3);
              }

              if (v74 >= 4)
              {
                v76 = __clz(v67) ^ 0x1F;
                if (v39 < 135 * v74 - 30 * v76 + 1920)
                {
                  v36 = v67;
                  v40 = 135 * v74 - 30 * v76 + 1920;
                  v35 = v74;
                  v33 = v74;
                  v39 = v40;
                }
              }
            }
          }
        }

        while (v65 > v64);
      }

      *(v62 + 4 * (v60 & v63)) = v374;
      *(v373 + 2 * v61) = v63 + 1;
      if (v40 == 2020)
      {
        v79 = *(a7 + 112);
        v81 = *(v79 + 40);
        v80 = *(v79 + 48);
        if (v80 >= v81 >> 7)
        {
          v388 = 0;
          v283 = ((506832829 * *v59) >> 17) & 0x7FFE;
          v284 = *(v28 + 32);
          v285 = v349 + v379;
          v286 = 1;
          v287 = v35;
          v40 = 2020;
          v288 = v36;
          do
          {
            v289 = v286;
            *(v79 + 40) = ++v81;
            v290 = *(v284 + v283);
            if (!*(v284 + v283) || v29 < v290)
            {
              goto LABEL_409;
            }

            v292 = *(*v28 + 4 * v290 + 32);
            v293 = *(*v28 + 168) + *(*(v28 + 24) + 2 * v283) * *(v284 + v283);
            v294 = (v293 + v292);
            if (v290 < 8)
            {
              v35 = 0;
LABEL_424:
              v301 = v290 & 7;
              if ((v290 & 7) != 0)
              {
                v302 = v35 | v301;
                while (*(v59 + v35) == *v294)
                {
                  ++v294;
                  ++v35;
                  if (!--v301)
                  {
                    v35 = v302;
                    break;
                  }
                }
              }
            }

            else
            {
              v295 = 0;
              v35 = v290 & 0xF8;
              v296 = (v293 + v35 + v292);
              while (1)
              {
                v297 = *&v294[v295];
                v298 = *&v59[v295 / 4];
                if (v297 != v298)
                {
                  break;
                }

                v295 += 8;
                if (v35 == v295)
                {
                  v294 = v296;
                  goto LABEL_424;
                }
              }

              v35 = v295 + (__clz(__rbit64(v298 ^ v297)) >> 3);
            }

            if (v35 && v35 + *(v28 + 12) > v290 && (v291 = *(*(v28 + 24) + 2 * v283), v299 = v285 + v291 + ((((*(v28 + 16) >> (6 * (v290 - v35))) & 0x3FLL) + 4 * (v290 - v35)) << *(*v28 + v290)), v299 <= v390) && (v36 = v285 + v291 + ((((*(v28 + 16) >> (6 * (v290 - v35))) & 0x3FLL) + 4 * (v290 - v35)) << *(*v28 + v290)), v300 = __clz(v299) ^ 0x1F, 135 * v35 - 30 * v300 + 1920 >= v40))
            {
              v388 = v290 - v35;
              *(v79 + 48) = ++v80;
              v40 = 135 * v35 - 30 * v300 + 1920;
            }

            else
            {
LABEL_409:
              v36 = v288;
              v35 = v287;
            }

            v286 = 0;
            ++v283;
            v287 = v35;
            v288 = v36;
          }

          while ((v289 & 1) != 0);
        }

        else
        {
          v388 = 0;
          v40 = 2020;
        }
      }

      else
      {
        v388 = 0;
      }

      v387 = v36;
      v386 = *(v364 + 96);
      v381 = *(v364 + 104);
      if (v386)
      {
        v82 = 0;
        v83 = *(v364 + 104) + v379;
        do
        {
          v84 = *(v385 + 8 * v82);
          v85 = *(v84 + 16);
          v86 = *(v84 + 20);
          v87 = v84 + 24 + 4 * (1 << v86);
          v88 = v87 + 2 * (1 << v85);
          v89 = (v88 + 4 * *(v84 + 4));
          if (*v84 != -558043680)
          {
            v89 = *v89;
          }

          v90 = 0;
          v91 = *(v384 + 8 * v82);
          v92 = v83 - v91;
          v93 = *(v84 + 8);
          v94 = (0x1FE35A7BD3579BD3 * (*v59 & (0xFFFFFFFFFFFFFFFFLL >> -*(v84 + 12)))) >> -v85;
          v95 = v83 - v91 - v93;
          v96 = (0xFFFFFFFF >> -v86) & v94;
          v97 = *(v87 + 2 * v94);
          v98 = (v88 + 4 * (*(v84 + 24 + 4 * v96) + v97));
          v99 = v89 + v83 - v91;
          v100 = v35;
          v101 = v40;
          do
          {
            v102 = a8[v90];
            if (v95 < v102 && v92 >= v102)
            {
              if (v93 - (v92 - v102) >= v29)
              {
                v104 = v29;
              }

              else
              {
                v104 = v93 - (v92 - v102);
              }

              if (v104 < 8)
              {
                v106 = 0;
                v107 = (a3 + v382);
LABEL_130:
                v115 = v104 & 7;
                if (v115)
                {
                  v116 = v106 | v115;
                  v117 = &v99[v106 - v102];
                  while (1)
                  {
                    v118 = *v117++;
                    if (v118 != *v107)
                    {
                      break;
                    }

                    ++v107;
                    ++v106;
                    if (!--v115)
                    {
                      v106 = v116;
                      break;
                    }
                  }
                }
              }

              else
              {
                v105 = 0;
                v106 = v104 & 0xFFFFFFFFFFFFFFF8;
                v107 = v59 + (v104 & 0xFFFFFFFFFFFFFFF8);
                v108 = -(v104 >> 3);
                while (1)
                {
                  v109 = *&v59[v105];
                  v110 = *(v89 + v92 - v102 + v105 * 4);
                  if (v109 != v110)
                  {
                    break;
                  }

                  v105 += 2;
                  v43 = __CFADD__(v108++, 1);
                  if (v43)
                  {
                    goto LABEL_130;
                  }
                }

                v106 = v105 * 4 + (__clz(__rbit64(v110 ^ v109)) >> 3);
              }

              if (v106 >= 2)
              {
                v111 = 135 * v106 + 1935;
                if (v40 < v111)
                {
                  if (v90)
                  {
                    v111 -= ((0x1CA10u >> (v90 & 2)) & 4) + 39;
                  }

                  if (v106 <= v35)
                  {
                    v112 = v35;
                  }

                  else
                  {
                    v112 = v106;
                  }

                  v113 = v387;
                  if (v40 < v111)
                  {
                    v113 = a8[v90];
                  }

                  v387 = v113;
                  if (v40 < v111)
                  {
                    v101 = v111;
                  }

                  v114 = v388;
                  if (v40 < v111)
                  {
                    v114 = 0;
                  }

                  v388 = v114;
                  if (v40 < v111)
                  {
                    v100 = v106;
                    v35 = v112;
                    v40 = v111;
                  }
                }
              }
            }

            ++v90;
          }

          while (v90 != 4);
          v119 = v382;
          if (v97 != 0xFFFF)
          {
            do
            {
              v121 = *v98++;
              v120 = v121;
              v122 = v121 & 0x7FFFFFFF;
              v123 = v92 - v122;
              if (v93 - v122 >= v29)
              {
                v124 = v29;
              }

              else
              {
                v124 = v93 - v122;
              }

              v125 = v35 + v119;
              v127 = v123 > v390 || v125 > v12 || v35 >= v124;
              if (!v127 && *(a3 + v125) == *(v89 + v35 + v122))
              {
                v128 = v89 + v122;
                if (v124 < 8)
                {
                  v130 = 0;
                  v131 = (a3 + v382);
LABEL_179:
                  v143 = v124 & 7;
                  if ((v124 & 7) != 0)
                  {
                    v144 = v130 | v143;
                    while (v128[v130] == *v131)
                    {
                      ++v131;
                      ++v130;
                      if (!--v143)
                      {
                        v130 = v144;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v129 = 0;
                  v130 = v124 & 0xFFFFFFFFFFFFFFF8;
                  v131 = v59 + (v124 & 0xFFFFFFFFFFFFFFF8);
                  v132 = -(v124 >> 3);
                  while (1)
                  {
                    v133 = *&v59[v129];
                    v134 = *&v128[v129 * 4];
                    if (v133 != v134)
                    {
                      break;
                    }

                    v129 += 2;
                    v43 = __CFADD__(v132++, 1);
                    if (v43)
                    {
                      goto LABEL_179;
                    }
                  }

                  v130 = v129 * 4 + (__clz(__rbit64(v134 ^ v133)) >> 3);
                }

                v135 = __clz(v123) ^ 0x1F;
                v136 = 135 * v130 - 30 * v135 + 1920;
                v137 = v387;
                if (v40 < v136)
                {
                  v138 = 135 * v130 - 30 * v135 + 1920;
                }

                else
                {
                  v123 = v387;
                  v138 = v101;
                }

                v139 = v388;
                if (v40 < v136)
                {
                  v140 = 0;
                }

                else
                {
                  v140 = v388;
                }

                if (v40 < v136)
                {
                  v141 = v130;
                }

                else
                {
                  v141 = v100;
                }

                if (v40 < v136)
                {
                  v142 = v130;
                }

                else
                {
                  v142 = v35;
                }

                if (v40 >= v136)
                {
                  v136 = v40;
                }

                if (v130 >= 4)
                {
                  v137 = v123;
                }

                v387 = v137;
                if (v130 >= 4)
                {
                  v101 = v138;
                  v139 = v140;
                }

                v388 = v139;
                if (v130 >= 4)
                {
                  v100 = v141;
                  v35 = v142;
                  v40 = v136;
                }

                v119 = v382;
              }
            }

            while ((v120 & 0x80000000) == 0);
          }

          ++v82;
          v35 = v100;
          v145 = v101;
          v40 = v101;
        }

        while (v82 != v386);
      }

      else
      {
        v145 = v40;
        v100 = v35;
      }

      if (v145 < 0x7E5)
      {
        v13 = v372 + 1;
        v275 = v374 + 1;
        v21 = v378;
        result = a3;
        v22 = v348;
        if (v374 + 1 <= v378)
        {
          a6 = v364;
        }

        else if (v275 <= v378 + v343)
        {
          v303 = v374 + 9;
          if (v374 + 9 >= v342)
          {
            v303 = v342;
          }

          a6 = v364;
          if (v275 < v303)
          {
            v304 = *(a7 + 96);
            v305 = *(a7 + 100);
            v306 = *(a7 + 104);
            do
            {
              v307 = (506832829 * *(a3 + (v275 & v12))) >> v304;
              v308 = *(v373 + 2 * v307);
              *(v363 + 4 * (v305 & v308) + 4 * (v307 << v306)) = v275;
              *(v373 + 2 * v307) = v308 + 1;
              v13 += 2;
              v275 += 2;
            }

            while (v275 < v303);
          }
        }

        else
        {
          v276 = v374 + 17;
          if (v374 + 17 >= v362 - 4)
          {
            v276 = v362 - 4;
          }

          a6 = v364;
          if (v275 < v276)
          {
            v277 = *(a7 + 96);
            v278 = *(a7 + 100);
            v279 = *(a7 + 104);
            do
            {
              v280 = (506832829 * *(a3 + (v275 & v12))) >> v277;
              v281 = *(v373 + 2 * v280);
              *(v363 + 4 * (v278 & v281) + 4 * (v280 << v279)) = v275;
              *(v373 + 2 * v280) = v281 + 1;
              v13 += 4;
              v275 += 4;
            }

            while (v275 < v276);
          }
        }

        goto LABEL_492;
      }

      v146 = 0;
      v147 = *(a7 + 108);
      v148 = v374;
      v149 = v344 - v374;
      v150 = v361 + 1 + v374;
      v151 = *(a7 + 96);
      v356 = *(a7 + 96);
      v357 = *(a7 + 104);
      v355 = *(a7 + 100);
      result = a3;
      v353 = v147;
      while (1)
      {
        v370 = v146;
        if (v150 >= v360)
        {
          v152 = v360;
        }

        else
        {
          v152 = v150;
        }

        v383 = v152;
        --v29;
        v153 = v100 - 1;
        if (v100 - 1 >= v29)
        {
          v153 = v29;
        }

        if (*(v364 + 4) >= 5)
        {
          v154 = 0;
        }

        else
        {
          v154 = v153;
        }

        v155 = v148 + 1;
        if (v148 + 1 < v360)
        {
          v156 = v148 + 1;
        }

        else
        {
          v156 = v360;
        }

        v157 = v155 + v361;
        if (v155 + v361 >= v360)
        {
          v157 = v360;
        }

        v369 = v157;
        if (*(v364 + 632))
        {
          v158 = *(v351 + (*(v350 + v365) | *(a5 + *(result + (v148 & v12)))));
          v365 = *(result + (v148 & v12));
        }

        else
        {
          v158 = v367;
        }

        v367 = v158;
        v368 = v150;
        v371 = v145;
        v354 = v100;
        v375 = v148;
        v159 = *(v359 + 8 * v158);
        v160 = v155 & v12;
        if (v147)
        {
          v161 = 0;
          v162 = 0;
          v163 = 0;
          v164 = (result + v160);
          v165 = 2020;
          v166 = 2020;
          do
          {
            v167 = a8[v161];
            v168 = v155 - v167;
            v169 = v156 < v167 || v168 >= v155;
            v170 = v168 & v12;
            v171 = v154 + v160;
            v172 = v169 || v171 > v12;
            v173 = v170 + v154;
            v174 = v172 || v173 > v12;
            if (!v174 && *(a3 + v171) == *(a3 + v173))
            {
              v175 = a3 + v170;
              if (v29 < 8)
              {
                v176 = 0;
                v178 = v164;
LABEL_237:
                if ((v29 & 7) != 0)
                {
                  v181 = v29 & 7;
                  do
                  {
                    if (*(v175 + v176) != *v178)
                    {
                      break;
                    }

                    v178 = (v178 + 1);
                    ++v176;
                    --v181;
                  }

                  while (v181);
                }
              }

              else
              {
                v176 = 0;
                v177 = v29 >> 3;
                v178 = v164;
                while (1)
                {
                  v179 = *(v175 + v176);
                  if (*v178 != v179)
                  {
                    break;
                  }

                  ++v178;
                  v176 += 8;
                  if (!--v177)
                  {
                    goto LABEL_237;
                  }
                }

                v176 += __clz(__rbit64(v179 ^ *v178)) >> 3;
              }

              if (v176 > 2 || v161 <= 1 && v176 == 2)
              {
                v180 = 135 * v176 + 1935;
                if (v165 < v180)
                {
                  if (v161)
                  {
                    v180 -= ((0x1CA10u >> (v161 & 0xE)) & 0xE) + 39;
                  }

                  if (v165 < v180)
                  {
                    v163 = v176;
                    v162 = a8[v161];
                    v166 = v180;
                    v154 = v176;
                    v165 = v180;
                  }
                }
              }
            }

            ++v161;
          }

          while (v161 != v147);
        }

        else
        {
          v163 = 0;
          v162 = 0;
          v166 = 2020;
          v165 = 2020;
        }

        v376 = v155;
        v182 = (a3 + v160);
        v183 = (506832829 * *(a3 + v160)) >> v356;
        v184 = v363 + 4 * (v183 << v357);
        v185 = *(v373 + 2 * v183);
        v186 = v185 - v358;
        if (v185 < v358)
        {
          v186 = 0;
        }

        if (v186 < v185)
        {
          v187 = *(v373 + 2 * v183);
          do
          {
            v188 = *(v184 + 4 * (--v187 & *(a7 + 100)));
            v189 = v376 - v188;
            if (v376 - v188 > v156)
            {
              break;
            }

            if (v154 + v160 <= v12)
            {
              v190 = v188 & v12;
              if (v190 + v154 <= v12 && *(a3 + v154 + v160) == *(a3 + v190 + v154))
              {
                v191 = a3 + v190;
                if (v29 < 8)
                {
                  v192 = 0;
                  v194 = (a3 + v160);
LABEL_263:
                  if ((v29 & 7) != 0)
                  {
                    v197 = v29 & 7;
                    do
                    {
                      if (*(v191 + v192) != *v194)
                      {
                        break;
                      }

                      v194 = (v194 + 1);
                      ++v192;
                      --v197;
                    }

                    while (v197);
                  }
                }

                else
                {
                  v192 = 0;
                  v193 = v29 >> 3;
                  v194 = (a3 + v160);
                  while (1)
                  {
                    v195 = *(v191 + v192);
                    if (*v194 != v195)
                    {
                      break;
                    }

                    ++v194;
                    v192 += 8;
                    if (!--v193)
                    {
                      goto LABEL_263;
                    }
                  }

                  v192 += __clz(__rbit64(v195 ^ *v194)) >> 3;
                }

                if (v192 >= 4)
                {
                  v196 = __clz(v189) ^ 0x1F;
                  if (v165 < 135 * v192 - 30 * v196 + 1920)
                  {
                    v163 = v192;
                    v162 = v189;
                    v166 = 135 * v192 - 30 * v196 + 1920;
                    v154 = v192;
                    v165 = v166;
                  }
                }
              }
            }
          }

          while (v187 > v186);
        }

        *(v184 + 4 * (v355 & v185)) = v376;
        *(v373 + 2 * v183) = v185 + 1;
        if (v166 == 2020)
        {
          v198 = *(a7 + 112);
          v200 = *(v198 + 40);
          v199 = *(v198 + 48);
          if (v199 >= v200 >> 7)
          {
            v201 = 0;
            v258 = ((506832829 * *v182) >> 17) & 0x7FFE;
            v259 = *(v159 + 32);
            v260 = 1;
            v166 = 2020;
            v261 = v162;
            v262 = v163;
            do
            {
              v263 = v260;
              *(v198 + 40) = ++v200;
              v264 = *(v259 + v258);
              if (!*(v259 + v258) || v29 < v264)
              {
                goto LABEL_375;
              }

              v265 = *(*v159 + 4 * v264 + 32);
              v266 = *(*v159 + 168) + *(*(v159 + 24) + 2 * v258) * *(v259 + v258);
              v267 = (v266 + v265);
              if (v264 < 8)
              {
                v163 = 0;
LABEL_390:
                v273 = v264 & 7;
                if ((v264 & 7) != 0)
                {
                  v274 = v163 | v273;
                  while (*(v182 + v163) == *v267)
                  {
                    ++v267;
                    ++v163;
                    if (!--v273)
                    {
                      v163 = v274;
                      break;
                    }
                  }
                }
              }

              else
              {
                v268 = 0;
                v163 = v264 & 0xF8;
                v269 = (v266 + v163 + v265);
                while (1)
                {
                  v270 = *&v267[v268];
                  v271 = *&v182[v268 / 4];
                  if (v270 != v271)
                  {
                    break;
                  }

                  v268 += 8;
                  if (v163 == v268)
                  {
                    v267 = v269;
                    goto LABEL_390;
                  }
                }

                v163 = v268 + (__clz(__rbit64(v271 ^ v270)) >> 3);
              }

              if (v163 && v163 + *(v159 + 12) > v264 && (v162 = v349 + v369 + *(*(v159 + 24) + 2 * v258) + ((((*(v159 + 16) >> (6 * (v264 - v163))) & 0x3FLL) + 4 * (v264 - v163)) << *(*v159 + v264)), v162 <= v390) && (v272 = __clz(v162) ^ 0x1F, 135 * v163 - 30 * v272 + 1920 >= v166))
              {
                v201 = v264 - v163;
                *(v198 + 48) = ++v199;
                v166 = 135 * v163 - 30 * v272 + 1920;
              }

              else
              {
LABEL_375:
                v163 = v262;
                v162 = v261;
              }

              v260 = 0;
              ++v258;
              v261 = v162;
              v262 = v163;
            }

            while ((v263 & 1) != 0);
          }

          else
          {
            v201 = 0;
            v166 = 2020;
          }
        }

        else
        {
          v201 = 0;
        }

        if (v386)
        {
          v202 = 0;
          v380 = v369 + v381;
          do
          {
            v203 = *(v385 + 8 * v202);
            v205 = *(v203 + 16);
            v204 = *(v203 + 20);
            v206 = v203 + 24;
            v207 = v203 + 24 + 4 * (1 << v204);
            v208 = v207 + 2 * (1 << v205);
            v209 = (v208 + 4 * *(v203 + 4));
            if (*v203 != -558043680)
            {
              v209 = *v209;
            }

            v210 = 0;
            v211 = *(v384 + 8 * v202);
            v212 = v380 - v211;
            v213 = *(v203 + 8);
            v214 = (0x1FE35A7BD3579BD3 * (*v182 & (0xFFFFFFFFFFFFFFFFLL >> -*(v203 + 12)))) >> -v205;
            v215 = v380 - v211 - v213;
            v216 = *(v207 + 2 * v214);
            v217 = (v208 + 4 * (*(v206 + 4 * ((0xFFFFFFFF >> -v204) & v214)) + v216));
            v218 = -v381 - v383 + v211 + v213;
            v219 = v209 + v381 + v383 - v211;
            v145 = v166;
            v220 = v163;
            do
            {
              v221 = a8[v210];
              if (v215 < v221 && v212 >= v221)
              {
                v223 = v213 + v221 - v212;
                if (v223 >= v29)
                {
                  v223 = v29;
                }

                if (v223 < 8)
                {
                  v224 = 0;
                  v227 = (a3 + v160);
LABEL_305:
                  if ((v223 & 7) != 0)
                  {
                    v231 = v218 + v221;
                    if (v149 < v218 + v221)
                    {
                      v231 = v149;
                    }

                    v232 = -(v231 & 7);
                    v233 = &v219[v224 - v221];
                    do
                    {
                      v234 = *v233++;
                      if (v234 != *v227)
                      {
                        break;
                      }

                      v227 = (v227 + 1);
                      ++v224;
                      v43 = __CFADD__(v232++, 1);
                    }

                    while (!v43);
                  }
                }

                else
                {
                  v224 = 0;
                  v225 = v218 + v221;
                  if (v149 < v218 + v221)
                  {
                    v225 = v149;
                  }

                  v226 = -(v225 >> 3);
                  v227 = (a3 + v160);
                  while (1)
                  {
                    v228 = *&v219[v224 - v221];
                    if (*v227 != v228)
                    {
                      break;
                    }

                    ++v227;
                    v224 += 8;
                    v43 = __CFADD__(v226++, 1);
                    if (v43)
                    {
                      goto LABEL_305;
                    }
                  }

                  v224 += __clz(__rbit64(v228 ^ *v227)) >> 3;
                }

                if (v224 >= 2)
                {
                  v229 = 135 * v224 + 1935;
                  if (v166 < v229)
                  {
                    if (v210)
                    {
                      v229 -= ((0x1CA10u >> (v210 & 2)) & 4) + 39;
                    }

                    if (v224 <= v163)
                    {
                      v230 = v163;
                    }

                    else
                    {
                      v230 = v224;
                    }

                    if (v166 < v229)
                    {
                      v220 = v224;
                      v162 = a8[v210];
                      v145 = v229;
                      v201 = 0;
                      v163 = v230;
                      v166 = v229;
                    }
                  }
                }
              }

              ++v210;
            }

            while (v210 != 4);
            v12 = a4;
            result = a3;
            if (v216 != 0xFFFF)
            {
              do
              {
                v236 = *v217++;
                v235 = v236;
                v237 = v236 & 0x7FFFFFFF;
                v238 = v212 - v237;
                v239 = v213 - v237;
                if (v213 - v237 >= v29)
                {
                  v240 = v29;
                }

                else
                {
                  v240 = v213 - v237;
                }

                v241 = v163 + v160;
                v243 = v238 > v390 || v241 > a4 || v163 >= v240;
                if (!v243 && *(result + v241) == *(v209 + v163 + v237))
                {
                  v244 = v209 + v237;
                  if (v240 < 8)
                  {
                    v245 = 0;
                    v248 = (a3 + v160);
LABEL_356:
                    if ((v240 & 7) != 0)
                    {
                      if (v149 >= v239)
                      {
                        v255 = v239;
                      }

                      else
                      {
                        v255 = v149;
                      }

                      v256 = -(v255 & 7);
                      do
                      {
                        if (v244[v245] != *v248)
                        {
                          break;
                        }

                        v248 = (v248 + 1);
                        ++v245;
                        v43 = __CFADD__(v256++, 1);
                      }

                      while (!v43);
                    }
                  }

                  else
                  {
                    v245 = 0;
                    if (v149 >= v239)
                    {
                      v246 = v213 - v237;
                    }

                    else
                    {
                      v246 = v149;
                    }

                    v247 = -(v246 >> 3);
                    v248 = (a3 + v160);
                    while (1)
                    {
                      v249 = *&v244[v245];
                      if (*v248 != v249)
                      {
                        break;
                      }

                      ++v248;
                      v245 += 8;
                      v43 = __CFADD__(v247++, 1);
                      if (v43)
                      {
                        goto LABEL_356;
                      }
                    }

                    v245 += __clz(__rbit64(v249 ^ *v248)) >> 3;
                  }

                  v250 = 135 * v245 - 30 * (__clz(v238) ^ 0x1F) + 1920;
                  if (v166 < v250)
                  {
                    v251 = v245;
                  }

                  else
                  {
                    v251 = v220;
                  }

                  if (v166 < v250)
                  {
                    v252 = v250;
                  }

                  else
                  {
                    v238 = v162;
                    v252 = v145;
                  }

                  if (v166 < v250)
                  {
                    v253 = 0;
                  }

                  else
                  {
                    v253 = v201;
                  }

                  if (v166 < v250)
                  {
                    v254 = v245;
                  }

                  else
                  {
                    v254 = v163;
                  }

                  if (v166 >= v250)
                  {
                    v250 = v166;
                  }

                  if (v245 >= 4)
                  {
                    v220 = v251;
                    v162 = v238;
                    v145 = v252;
                    v201 = v253;
                    v163 = v254;
                    v166 = v250;
                  }

                  result = a3;
                }
              }

              while ((v235 & 0x80000000) == 0);
            }

            ++v202;
            v166 = v145;
            v163 = v220;
          }

          while (v202 != v386);
        }

        else
        {
          v220 = v163;
          v145 = v166;
          result = a3;
        }

        if (v145 < v371 + 175)
        {
          break;
        }

        ++v372;
        if (v370 > 2)
        {
          v257 = v376;
          goto LABEL_437;
        }

        v146 = v370 + 1;
        --v149;
        v150 = v368 + 1;
        v387 = v162;
        v388 = v201;
        v100 = v220;
        v257 = v376;
        v148 = v376;
        v147 = v353;
        if (v375 + 5 >= v362)
        {
          goto LABEL_437;
        }
      }

      v282 = v375 + v361;
      if (v375 + v361 >= v360)
      {
        v282 = v360;
      }

      v369 = v282;
      v162 = v387;
      v201 = v388;
      v220 = v354;
      v257 = v375;
LABEL_437:
      a6 = v364;
      if (v162 > v369 + v346)
      {
        goto LABEL_438;
      }

      v314 = *a8;
      if (v162 != v314)
      {
        v324 = a8[1];
        if (v162 == v324)
        {
          v309 = 1;
          goto LABEL_439;
        }

        v325 = v162 + 3 - v314;
        if (v325 > 6)
        {
          v328 = v162 + 3 - v324;
          if (v328 > 6)
          {
            if (v162 == a8[2])
            {
              v309 = 2;
            }

            else if (v162 == a8[3])
            {
              v309 = 3;
            }

            else
            {
LABEL_438:
              v309 = v162 + 15;
            }

LABEL_439:
            if (v162 <= v369 + v346)
            {
              if (v309)
              {
                a8[3] = a8[2];
                v310 = *a8;
                *(a8 + 1) = *a8;
                *a8 = v162;
                v311 = *(a7 + 108);
                if (v311 >= 5)
                {
                  v312 = vdupq_n_s32(v162);
                  *(a8 + 1) = vaddq_s32(v312, xmmword_240C11260);
                  *(a8 + 4) = vadd_s32(*v312.i8, 0x3FFFFFFFDLL);
                  if (v311 >= 0xB)
                  {
                    v313 = vdupq_lane_s32(v310, 0);
                    *(a8 + 10) = vaddq_s32(v313, xmmword_240C11260);
                    *(a8 + 7) = vadd_s32(*v313.i8, 0x3FFFFFFFDLL);
                  }
                }
              }
            }

            goto LABEL_446;
          }

          v326 = 4 * v328;
          v327 = 266017486;
        }

        else
        {
          v326 = 4 * v325;
          v327 = 158663784;
        }

        v309 = (v327 >> v326) & 0xF;
        goto LABEL_439;
      }

      v309 = 0;
LABEL_446:
      *v348 = v372;
      *(v348 + 4) = v220 | (v201 << 25);
      v315 = *(v364 + 68);
      v316 = v315 + 16;
      if (v315 + 16 <= v309)
      {
        v318 = *(v364 + 64);
        v319 = v309 - v315 + (4 << v318) - 16;
        v320 = (__clz(v319) ^ 0x1F) - 1;
        v321 = ((v319 >> v320) & 1 | 2) << v320;
        v309 = ((v319 & ~(-1 << v318)) + v316 + ((((v319 >> v320) & 1 | (2 * (v320 - v318))) + 65534) << v318)) | ((v320 - v318) << 10);
        v317 = (v319 - v321) >> v318;
      }

      else
      {
        LODWORD(v317) = 0;
      }

      *(v348 + 14) = v309;
      *(v348 + 8) = v317;
      if (v372 > 5)
      {
        if (v372 > 0x81)
        {
          if (v372 > 0x841)
          {
            if (v372 >> 1 >= 0xC21)
            {
              if (v372 < 0x5842)
              {
                LOWORD(v322) = 22;
              }

              else
              {
                LOWORD(v322) = 23;
              }
            }

            else
            {
              LOWORD(v322) = 21;
            }
          }

          else
          {
            v322 = (__clz(v372 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v323 = (__clz(v372 - 2) ^ 0x1F) - 1;
          v322 = ((v372 - 2) >> v323) + 2 * v323 + 2;
        }
      }

      else
      {
        LOWORD(v322) = v372;
      }

      v329 = v201 + v220;
      if (v329 > 9)
      {
        if (v329 > 0x85)
        {
          if (v329 > 0x845)
          {
            LOWORD(v329) = 23;
          }

          else
          {
            v329 = (__clz(v329 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v330 = v329 - 6;
          v331 = (__clz(v330) ^ 0x1F) - 1;
          v329 = (v330 >> v331) + 2 * v331 + 4;
        }
      }

      else
      {
        LOWORD(v329) = v329 - 2;
      }

      v332 = v329 & 7 | (8 * (v322 & 7));
      if ((v309 & 0x3FF) != 0 || v322 > 7u || v329 > 0xFu)
      {
        v334 = 3 * (v322 >> 3) + ((v329 & 0xFFF8) >> 3);
        v333 = ((((0x520D40u >> (2 * v334)) & 0xC0) + (v334 << 6)) | v332) + 64;
      }

      else
      {
        LOWORD(v333) = v332 | 0x40;
        if ((v329 & 0xFFF8) == 0)
        {
          LOWORD(v333) = v329 & 7 | (8 * (v322 & 7));
        }
      }

      *(v348 + 12) = v333;
      v335 = v345;
      *a12 += v372;
      v336 = v257 + 2;
      v275 = v257 + v220;
      if (v257 + v220 < v345)
      {
        v335 = v257 + v220;
      }

      if (v162 < v220 >> 2)
      {
        if (v336 <= v275 - 4 * v162)
        {
          v336 = v275 - 4 * v162;
        }

        if (v335 < v336)
        {
          v336 = v335;
        }
      }

      v21 = v347 + 2 * v220 + v257;
      v22 = v348 + 16;
      if (v336 < v335)
      {
        v337 = *(a7 + 96);
        v338 = *(a7 + 100);
        v339 = *(a7 + 104);
        do
        {
          v340 = (506832829 * *(result + (v336 & v12))) >> v337;
          v341 = *(v373 + 2 * v340);
          *(v363 + 4 * (v338 & v341) + 4 * (v340 << v339)) = v336;
          *(v373 + 2 * v340) = v341 + 1;
          ++v336;
        }

        while (v335 != v336);
      }

      v13 = 0;
LABEL_492:
      a2 = v275;
      if (v275 + 4 >= v362)
      {
        goto LABEL_499;
      }
    }

    v25 = 0;
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  v22 = a10;
  v275 = a2;
LABEL_499:
  *a9 = v13 + v362 - v275;
  *a11 += (v22 - a10) >> 4;
  return result;
}

unint64_t sub_240AE6100(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v12 = a4;
  v13 = *a9;
  v359 = *(a6 + 16);
  v360 = a2 + result;
  v341 = a2 + result - 7;
  if (result <= 7)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 + result - 7;
  }

  v15 = *(a6 + 8);
  v16 = 512;
  if (*(a6 + 4) < 9)
  {
    v16 = 64;
  }

  v345 = v16;
  v343 = v14;
  v344 = *(a6 + 104);
  v17 = *(a7 + 120);
  if (v17 >= 5)
  {
    v18 = vld1q_dup_f32(a8);
    *(a8 + 1) = vaddq_s32(v18, xmmword_240C11260);
    *(a8 + 4) = vadd_s32(*v18.i8, 0x3FFFFFFFDLL);
    if (v17 >= 0xB)
    {
      v19 = (a8 + 1);
      v20 = vld1q_dup_f32(v19);
      *(a8 + 10) = vaddq_s32(v20, xmmword_240C11260);
      *(a8 + 7) = vadd_s32(*v20.i8, 0x3FFFFFFFDLL);
    }
  }

  if (result >= 9)
  {
    v21 = v16 + a2;
    v358 = (1 << v15) - 16;
    v349 = a6 + 637;
    v348 = a5 + 256;
    v357 = a6 + 704;
    v361 = *(a7 + 104);
    v362 = *(a7 + 144);
    v347 = v344 + 1;
    v386 = a6 + 112;
    v385 = a6 + 368;
    v340 = 4 * v16;
    v342 = a2 + result - 1;
    v22 = a10;
    v363 = a6;
    v374 = *(a7 + 136);
    while (1)
    {
      if (a2 >= v358)
      {
        v23 = v358;
      }

      else
      {
        v23 = a2;
      }

      v24 = a2 + v359;
      if (a2 + v359 >= v358)
      {
        v24 = v358;
      }

      v382 = v24;
      v379 = v21;
      if (!*(a6 + 632))
      {
        v27 = 0;
        v364 = 0;
        goto LABEL_24;
      }

      if (!a2)
      {
        break;
      }

      v25 = *(a3 + ((a2 - 1) & v12));
      if (a2 == 1)
      {
        goto LABEL_22;
      }

      v26 = *(a3 + ((a2 - 2) & v12));
LABEL_23:
      v364 = v25;
      v27 = *(v349 + (*(v348 + v26) | *(a5 + v25)));
LABEL_24:
      v346 = v22;
      v368 = v27;
      v28 = *(v357 + 8 * v27);
      v29 = v360 - a2;
      v389 = *(a6 + 80);
      v375 = a2;
      v30 = a2 & v12;
      v31 = *(a7 + 120);
      v32 = (v360 - a2) >> 3;
      v373 = v13;
      if (v31)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v366 = 0;
        v36 = 2020;
        v37 = 2020;
        do
        {
          v38 = a8[v34];
          v39 = v375 - v38;
          v40 = v23 < v38 || v39 >= v375;
          v41 = v39 & v12;
          v42 = v33 + v30;
          v43 = v40 || v42 > v12;
          v44 = v41 + v33;
          v45 = v43 || v44 > v12;
          if (!v45 && *(a3 + v42) == *(a3 + v44))
          {
            v46 = a3 + v41;
            if (v29 < 8)
            {
              v51 = 0;
              v52 = (a3 + v30);
LABEL_57:
              if ((v29 & 7) != 0)
              {
                v55 = v29 & 7 | v51;
                v56 = v29 & 7;
                while (*(v46 + v51) == *v52)
                {
                  ++v52;
                  ++v51;
                  if (!--v56)
                  {
                    v51 = v55;
                    break;
                  }
                }
              }
            }

            else
            {
              v47 = 0;
              v48 = v32;
              while (1)
              {
                v49 = *(a3 + v30 + v47);
                v50 = *(v46 + v47);
                if (v49 != v50)
                {
                  break;
                }

                v47 += 8;
                if (!--v48)
                {
                  v51 = v29 & 0xFFFFFFFFFFFFFFF8;
                  v52 = (a3 + v30 + (v29 & 0xFFFFFFFFFFFFFFF8));
                  goto LABEL_57;
                }
              }

              v51 = v47 + (__clz(__rbit64(v50 ^ v49)) >> 3);
            }

            if (v51 > 2 || v34 <= 1 && v51 == 2)
            {
              v53 = 135 * v51 + 1935;
              if (v36 < v53)
              {
                if (v34)
                {
                  v53 -= ((0x1CA10u >> (v34 & 0xE)) & 0xE) + 39;
                }

                v54 = v366;
                if (v36 < v53)
                {
                  v54 = a8[v34];
                }

                v366 = v54;
                if (v36 < v53)
                {
                  v37 = v53;
                  v35 = v51;
                  v33 = v51;
                  v36 = v53;
                }
              }
            }
          }

          ++v34;
        }

        while (v34 != v31);
      }

      else
      {
        v366 = 0;
        v35 = 0;
        v33 = 0;
        v37 = 2020;
        v36 = 2020;
      }

      v57 = (a3 + v30);
      v58 = (0x1FE35A7BD3579BD3 * (*(a3 + v30) & v361)) >> *(a7 + 96);
      v59 = *(a7 + 112);
      v60 = v362 + 4 * (v58 << *(a7 + 116));
      v61 = *(v374 + 2 * v58);
      v356 = *(a7 + 88);
      result = v61 - v356;
      if (v61 < v356)
      {
        result = 0;
      }

      if (result < v61)
      {
        v62 = *(v374 + 2 * v58);
        do
        {
          v63 = *(v60 + 4 * (--v62 & v59));
          v64 = v375 - v63;
          if (v375 - v63 > v23)
          {
            break;
          }

          if (v33 + v30 <= v12)
          {
            v65 = v63 & v12;
            if (v65 + v33 <= v12 && *(a3 + v33 + v30) == *(a3 + v65 + v33))
            {
              v66 = a3 + v65;
              if (v29 < 8)
              {
                v71 = 0;
                v72 = (a3 + v30);
LABEL_83:
                if ((v29 & 7) != 0)
                {
                  v74 = v29 & 7 | v71;
                  v75 = v29 & 7;
                  while (*(v66 + v71) == *v72)
                  {
                    ++v72;
                    ++v71;
                    if (!--v75)
                    {
                      v71 = v74;
                      break;
                    }
                  }
                }

                v12 = a4;
              }

              else
              {
                v67 = 0;
                v68 = v32;
                while (1)
                {
                  v69 = *&v57[v67];
                  v70 = *(v66 + v67 * 4);
                  if (v69 != v70)
                  {
                    break;
                  }

                  v67 += 2;
                  if (!--v68)
                  {
                    v71 = v29 & 0xFFFFFFFFFFFFFFF8;
                    v72 = v57 + (v29 & 0xFFFFFFFFFFFFFFF8);
                    goto LABEL_83;
                  }
                }

                v71 = v67 * 4 + (__clz(__rbit64(v70 ^ v69)) >> 3);
              }

              if (v71 >= 4)
              {
                v73 = __clz(v64) ^ 0x1F;
                if (v36 < 135 * v71 - 30 * v73 + 1920)
                {
                  v366 = v64;
                  v37 = 135 * v71 - 30 * v73 + 1920;
                  v35 = v71;
                  v33 = v71;
                  v36 = v37;
                }
              }
            }
          }
        }

        while (v62 > result);
      }

      *(v60 + 4 * (v59 & v61)) = v375;
      *(v374 + 2 * v58) = v61 + 1;
      if (v37 != 2020)
      {
        v388 = 0;
        goto LABEL_93;
      }

      v76 = *(a7 + 128);
      v78 = *(v76 + 40);
      v77 = *(v76 + 48);
      if (v77 < v78 >> 7)
      {
        v388 = 0;
        v37 = 2020;
LABEL_93:
        v79 = v366;
        goto LABEL_94;
      }

      v388 = 0;
      v281 = ((506832829 * *v57) >> 17) & 0x7FFE;
      v282 = *(v28 + 32);
      v283 = v347 + v382;
      v284 = 1;
      result = v35;
      v37 = 2020;
      v285 = v366;
      do
      {
        v286 = v284;
        *(v76 + 40) = ++v78;
        v287 = *(v282 + v281);
        if (!*(v282 + v281) || v29 < v287)
        {
          goto LABEL_414;
        }

        v289 = *(*v28 + 4 * v287 + 32);
        v290 = *(*v28 + 168) + *(*(v28 + 24) + 2 * v281) * *(v282 + v281);
        v291 = (v290 + v289);
        if (v287 < 8)
        {
          v35 = 0;
LABEL_429:
          v299 = v287 & 7;
          if ((v287 & 7) != 0)
          {
            v300 = v35 | v299;
            while (*(v57 + v35) == *v291)
            {
              ++v291;
              ++v35;
              if (!--v299)
              {
                v35 = v300;
                break;
              }
            }
          }
        }

        else
        {
          v292 = 0;
          v35 = v287 & 0xF8;
          v293 = (v290 + v35 + v289);
          while (1)
          {
            v294 = *&v291[v292];
            v295 = *&v57[v292 / 4];
            if (v294 != v295)
            {
              break;
            }

            v292 += 8;
            if (v35 == v292)
            {
              v291 = v293;
              goto LABEL_429;
            }
          }

          v35 = v292 + (__clz(__rbit64(v295 ^ v294)) >> 3);
        }

        if (v35 && v35 + *(v28 + 12) > v287 && (v288 = *(*(v28 + 24) + 2 * v281), v296 = v283 + v288 + ((((*(v28 + 16) >> (6 * (v287 - v35))) & 0x3FLL) + 4 * (v287 - v35)) << *(*v28 + v287)), v296 <= v389) && (v297 = v283 + v288 + ((((*(v28 + 16) >> (6 * (v287 - v35))) & 0x3FLL) + 4 * (v287 - v35)) << *(*v28 + v287)), v298 = __clz(v296) ^ 0x1F, 135 * v35 - 30 * v298 + 1920 >= v37))
        {
          v388 = v287 - v35;
          *(v76 + 48) = ++v77;
          v37 = 135 * v35 - 30 * v298 + 1920;
          v79 = v297;
        }

        else
        {
LABEL_414:
          v79 = v285;
          v35 = result;
        }

        v284 = 0;
        ++v281;
        result = v35;
        v285 = v79;
      }

      while ((v286 & 1) != 0);
LABEL_94:
      v80 = v79;
      v387 = *(v363 + 96);
      v381 = *(v363 + 104);
      if (v387)
      {
        v81 = 0;
        v383 = *(v363 + 104) + v382;
        do
        {
          v82 = *(v386 + 8 * v81);
          v84 = *(v82 + 16);
          v83 = *(v82 + 20);
          v85 = v82 + 24 + 4 * (1 << v83);
          v86 = v85 + 2 * (1 << v84);
          v87 = (v86 + 4 * *(v82 + 4));
          if (*v82 != -558043680)
          {
            v87 = *v87;
          }

          v88 = 0;
          v89 = *(v385 + 8 * v81);
          v90 = v383 - v89;
          v91 = *(v82 + 8);
          v92 = (0x1FE35A7BD3579BD3 * (*v57 & (0xFFFFFFFFFFFFFFFFLL >> -*(v82 + 12)))) >> -v84;
          v93 = v383 - v89 - v91;
          v94 = (0xFFFFFFFF >> -v83) & v92;
          v95 = *(v85 + 2 * v92);
          v96 = (v86 + 4 * (*(v82 + 24 + 4 * v94) + v95));
          v97 = v87 + v383 - v89;
          v98 = v35;
          v99 = v37;
          do
          {
            v100 = a8[v88];
            if (v93 < v100 && v90 >= v100)
            {
              if (v91 - (v90 - v100) >= v29)
              {
                v102 = v29;
              }

              else
              {
                v102 = v91 - (v90 - v100);
              }

              if (v102 < 8)
              {
                v104 = 0;
                v105 = (a3 + v30);
LABEL_130:
                v112 = v102 & 7;
                if (v112)
                {
                  v113 = v104 | v112;
                  v114 = &v97[v104 - v100];
                  while (1)
                  {
                    v115 = *v114++;
                    if (v115 != *v105)
                    {
                      break;
                    }

                    ++v105;
                    ++v104;
                    if (!--v112)
                    {
                      v104 = v113;
                      break;
                    }
                  }
                }
              }

              else
              {
                v103 = 0;
                v104 = v102 & 0xFFFFFFFFFFFFFFF8;
                v105 = v57 + (v102 & 0xFFFFFFFFFFFFFFF8);
                v106 = -(v102 >> 3);
                while (1)
                {
                  v107 = *&v57[v103];
                  v108 = *(v87 + v90 - v100 + v103 * 4);
                  if (v107 != v108)
                  {
                    break;
                  }

                  v103 += 2;
                  v40 = __CFADD__(v106++, 1);
                  if (v40)
                  {
                    goto LABEL_130;
                  }
                }

                v104 = v103 * 4 + (__clz(__rbit64(v108 ^ v107)) >> 3);
              }

              if (v104 >= 2)
              {
                v109 = 135 * v104 + 1935;
                if (v37 < v109)
                {
                  if (v88)
                  {
                    v109 -= ((0x1CA10u >> (v88 & 2)) & 4) + 39;
                  }

                  if (v104 <= v35)
                  {
                    v110 = v35;
                  }

                  else
                  {
                    v110 = v104;
                  }

                  if (v37 < v109)
                  {
                    v80 = a8[v88];
                    v99 = v109;
                  }

                  v111 = v388;
                  if (v37 < v109)
                  {
                    v111 = 0;
                  }

                  v388 = v111;
                  if (v37 < v109)
                  {
                    v98 = v104;
                    v35 = v110;
                    v37 = v109;
                  }
                }
              }
            }

            ++v88;
          }

          while (v88 != 4);
          result = 0xFFFFLL;
          v116 = v389;
          if (v95 != 0xFFFF)
          {
            do
            {
              v117 = *v96++;
              result = v117;
              v118 = v117 & 0x7FFFFFFF;
              v119 = v90 - v118;
              if (v91 - v118 >= v29)
              {
                v120 = v29;
              }

              else
              {
                v120 = v91 - v118;
              }

              v121 = v35 + v30;
              v123 = v119 > v116 || v121 > v12 || v35 >= v120;
              if (!v123 && *(a3 + v121) == *(v87 + v35 + v118))
              {
                v124 = v87 + v118;
                if (v120 < 8)
                {
                  v126 = 0;
                  v127 = (a3 + v30);
LABEL_180:
                  v138 = v120 & 7;
                  if ((v120 & 7) != 0)
                  {
                    v139 = v126 | v138;
                    while (v124[v126] == *v127)
                    {
                      ++v127;
                      ++v126;
                      if (!--v138)
                      {
                        v126 = v139;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v125 = 0;
                  v126 = v120 & 0xFFFFFFFFFFFFFFF8;
                  v127 = v57 + (v120 & 0xFFFFFFFFFFFFFFF8);
                  v128 = -(v120 >> 3);
                  while (1)
                  {
                    v129 = *&v57[v125];
                    v130 = *&v124[v125 * 4];
                    if (v129 != v130)
                    {
                      break;
                    }

                    v125 += 2;
                    v40 = __CFADD__(v128++, 1);
                    if (v40)
                    {
                      goto LABEL_180;
                    }
                  }

                  v126 = v125 * 4 + (__clz(__rbit64(v130 ^ v129)) >> 3);
                }

                v131 = 135 * v126 - 30 * (__clz(v119) ^ 0x1F) + 1920;
                if (v37 < v131)
                {
                  v132 = v119;
                }

                else
                {
                  v132 = v80;
                }

                if (v37 < v131)
                {
                  v133 = v131;
                }

                else
                {
                  v133 = v99;
                }

                v134 = v388;
                if (v37 < v131)
                {
                  v135 = 0;
                }

                else
                {
                  v135 = v388;
                }

                if (v37 < v131)
                {
                  v136 = v126;
                }

                else
                {
                  v136 = v98;
                }

                if (v37 < v131)
                {
                  v137 = v126;
                }

                else
                {
                  v137 = v35;
                }

                if (v37 >= v131)
                {
                  v131 = v37;
                }

                if (v126 >= 4)
                {
                  v80 = v132;
                  v99 = v133;
                  v134 = v135;
                }

                v388 = v134;
                if (v126 >= 4)
                {
                  v98 = v136;
                  v35 = v137;
                  v37 = v131;
                }

                v116 = v389;
              }
            }

            while ((result & 0x80000000) == 0);
          }

          ++v81;
          v35 = v98;
          v140 = v99;
          v37 = v99;
          v141 = a3;
        }

        while (v81 != v387);
      }

      else
      {
        v140 = v37;
        v98 = v35;
        v141 = a3;
      }

      if (v140 < 0x7E5)
      {
        v13 = v373 + 1;
        v273 = v375 + 1;
        v21 = v379;
        v22 = v346;
        if (v375 + 1 <= v379)
        {
          a6 = v363;
        }

        else
        {
          result = 0x1FE35A7BD3579BD3;
          if (v273 <= v379 + v340)
          {
            v301 = v375 + 9;
            if (v375 + 9 >= v341)
            {
              v301 = v341;
            }

            a6 = v363;
            if (v273 < v301)
            {
              v302 = *(a7 + 96);
              v303 = *(a7 + 112);
              v304 = *(a7 + 116);
              do
              {
                v305 = (0x1FE35A7BD3579BD3 * (*(a3 + (v273 & v12)) & v361)) >> v302;
                v306 = *(v374 + 2 * v305);
                *(v374 + 2 * v305) = v306 + 1;
                *(v362 + 4 * (v303 & v306) + 4 * (v305 << v304)) = v273;
                v13 += 2;
                v273 += 2;
              }

              while (v273 < v301);
            }
          }

          else
          {
            v274 = v375 + 17;
            if (v375 + 17 >= v341)
            {
              v274 = v341;
            }

            a6 = v363;
            if (v273 < v274)
            {
              v275 = *(a7 + 96);
              v276 = *(a7 + 112);
              v277 = *(a7 + 116);
              do
              {
                v278 = (0x1FE35A7BD3579BD3 * (*(a3 + (v273 & v12)) & v361)) >> v275;
                v279 = *(v374 + 2 * v278);
                *(v374 + 2 * v278) = v279 + 1;
                *(v362 + 4 * (v276 & v279) + 4 * (v278 << v277)) = v273;
                v13 += 4;
                v273 += 4;
              }

              while (v273 < v274);
            }
          }
        }

        goto LABEL_497;
      }

      v142 = 0;
      v355 = *(a7 + 96);
      v143 = v375;
      v144 = v342 - v375;
      v145 = v359 + 1 + v375;
      v146 = *(a7 + 120);
      v147 = *(a7 + 112);
      v353 = *(a7 + 112);
      v354 = *(a7 + 116);
      v148 = v80;
      v351 = v146;
      while (1)
      {
        v371 = v142;
        v372 = v140;
        if (v145 >= v358)
        {
          v149 = v358;
        }

        else
        {
          v149 = v145;
        }

        v384 = v149;
        --v29;
        v150 = v98 - 1;
        if (v98 - 1 >= v29)
        {
          v150 = v29;
        }

        if (*(v363 + 4) >= 5)
        {
          v151 = 0;
        }

        else
        {
          v151 = v150;
        }

        v152 = v143 + 1;
        if (v143 + 1 < v358)
        {
          v153 = v143 + 1;
        }

        else
        {
          v153 = v358;
        }

        v154 = v152 + v359;
        if (v152 + v359 >= v358)
        {
          v154 = v358;
        }

        v370 = v154;
        v376 = v143;
        if (*(v363 + 632))
        {
          v155 = *(v349 + (*(v348 + v364) | *(a5 + *(v141 + (v143 & v12)))));
          v364 = *(v141 + (v143 & v12));
        }

        else
        {
          v155 = v368;
        }

        v367 = v148;
        v368 = v155;
        v156 = *(v357 + 8 * v155);
        v157 = v152 & v12;
        v352 = v98;
        v369 = v145;
        if (v146)
        {
          v158 = 0;
          v159 = 0;
          v160 = 0;
          v161 = (v141 + v157);
          v162 = 2020;
          v163 = 2020;
          do
          {
            v164 = a8[v158];
            v165 = v152 - v164;
            v166 = v153 < v164 || v165 >= v152;
            v167 = v165 & v12;
            v168 = v151 + v157;
            v169 = v166 || v168 > v12;
            v170 = v167 + v151;
            v171 = v169 || v170 > v12;
            if (!v171 && *(a3 + v168) == *(a3 + v170))
            {
              v172 = a3 + v167;
              if (v29 < 8)
              {
                v173 = 0;
                v175 = v161;
LABEL_238:
                if ((v29 & 7) != 0)
                {
                  v178 = v29 & 7;
                  do
                  {
                    if (*(v172 + v173) != *v175)
                    {
                      break;
                    }

                    v175 = (v175 + 1);
                    ++v173;
                    --v178;
                  }

                  while (v178);
                }
              }

              else
              {
                v173 = 0;
                v174 = v29 >> 3;
                v175 = v161;
                while (1)
                {
                  v176 = *(v172 + v173);
                  if (*v175 != v176)
                  {
                    break;
                  }

                  ++v175;
                  v173 += 8;
                  if (!--v174)
                  {
                    goto LABEL_238;
                  }
                }

                v173 += __clz(__rbit64(v176 ^ *v175)) >> 3;
              }

              if (v173 > 2 || v158 <= 1 && v173 == 2)
              {
                v177 = 135 * v173 + 1935;
                if (v162 < v177)
                {
                  if (v158)
                  {
                    v177 -= ((0x1CA10u >> (v158 & 0xE)) & 0xE) + 39;
                  }

                  if (v162 < v177)
                  {
                    v160 = v173;
                    v159 = a8[v158];
                    v163 = v177;
                    v151 = v173;
                    v162 = v177;
                  }
                }
              }
            }

            ++v158;
          }

          while (v158 != v146);
        }

        else
        {
          v160 = 0;
          v159 = 0;
          v163 = 2020;
          v162 = 2020;
        }

        v377 = v152;
        v179 = (a3 + v157);
        v180 = (0x1FE35A7BD3579BD3 * (*(a3 + v157) & v361)) >> v355;
        v181 = v362 + 4 * (v180 << v354);
        v182 = *(v374 + 2 * v180);
        if (v182 >= v356)
        {
          v183 = v182 - v356;
        }

        else
        {
          v183 = 0;
        }

        if (v183 < v182)
        {
          v184 = *(v374 + 2 * v180);
          do
          {
            v185 = *(v181 + 4 * (--v184 & *(a7 + 112)));
            v186 = v377 - v185;
            if (v377 - v185 > v153)
            {
              break;
            }

            if (v151 + v157 <= v12)
            {
              v187 = v185 & v12;
              if (v187 + v151 <= v12 && *(a3 + v151 + v157) == *(a3 + v187 + v151))
              {
                v188 = a3 + v187;
                if (v29 < 8)
                {
                  v189 = 0;
                  v191 = (a3 + v157);
LABEL_265:
                  if ((v29 & 7) != 0)
                  {
                    v194 = v29 & 7;
                    do
                    {
                      if (*(v188 + v189) != *v191)
                      {
                        break;
                      }

                      v191 = (v191 + 1);
                      ++v189;
                      --v194;
                    }

                    while (v194);
                  }
                }

                else
                {
                  v189 = 0;
                  v190 = v29 >> 3;
                  v191 = (a3 + v157);
                  while (1)
                  {
                    v192 = *(v188 + v189);
                    if (*v191 != v192)
                    {
                      break;
                    }

                    ++v191;
                    v189 += 8;
                    if (!--v190)
                    {
                      goto LABEL_265;
                    }
                  }

                  v189 += __clz(__rbit64(v192 ^ *v191)) >> 3;
                }

                if (v189 >= 4)
                {
                  v193 = __clz(v186) ^ 0x1F;
                  if (v162 < 135 * v189 - 30 * v193 + 1920)
                  {
                    v160 = v189;
                    v159 = v186;
                    v163 = 135 * v189 - 30 * v193 + 1920;
                    v151 = v189;
                    v162 = v163;
                  }
                }
              }
            }
          }

          while (v184 > v183);
        }

        *(v181 + 4 * (v353 & v182)) = v377;
        *(v374 + 2 * v180) = v182 + 1;
        if (v163 == 2020)
        {
          v195 = *(a7 + 128);
          v197 = *(v195 + 40);
          v196 = *(v195 + 48);
          if (v196 >= v197 >> 7)
          {
            v198 = 0;
            v256 = ((506832829 * *v179) >> 17) & 0x7FFE;
            v257 = *(v156 + 32);
            v258 = 1;
            v163 = 2020;
            v259 = v159;
            v260 = v160;
            do
            {
              v261 = v258;
              *(v195 + 40) = ++v197;
              v262 = *(v257 + v256);
              if (!*(v257 + v256) || v29 < v262)
              {
                goto LABEL_380;
              }

              v263 = *(*v156 + 4 * v262 + 32);
              v264 = *(*v156 + 168) + *(*(v156 + 24) + 2 * v256) * *(v257 + v256);
              v265 = (v264 + v263);
              if (v262 < 8)
              {
                v160 = 0;
LABEL_395:
                v271 = v262 & 7;
                if ((v262 & 7) != 0)
                {
                  v272 = v160 | v271;
                  while (*(v179 + v160) == *v265)
                  {
                    ++v265;
                    ++v160;
                    if (!--v271)
                    {
                      v160 = v272;
                      break;
                    }
                  }
                }
              }

              else
              {
                v266 = 0;
                v160 = v262 & 0xF8;
                v267 = (v264 + v160 + v263);
                while (1)
                {
                  v268 = *&v265[v266];
                  v269 = *&v179[v266 / 4];
                  if (v268 != v269)
                  {
                    break;
                  }

                  v266 += 8;
                  if (v160 == v266)
                  {
                    v265 = v267;
                    goto LABEL_395;
                  }
                }

                v160 = v266 + (__clz(__rbit64(v269 ^ v268)) >> 3);
              }

              if (v160 && v160 + *(v156 + 12) > v262 && (v159 = v347 + v370 + *(*(v156 + 24) + 2 * v256) + ((((*(v156 + 16) >> (6 * (v262 - v160))) & 0x3FLL) + 4 * (v262 - v160)) << *(*v156 + v262)), v159 <= v389) && (v270 = __clz(v159) ^ 0x1F, 135 * v160 - 30 * v270 + 1920 >= v163))
              {
                v198 = v262 - v160;
                *(v195 + 48) = ++v196;
                v163 = 135 * v160 - 30 * v270 + 1920;
              }

              else
              {
LABEL_380:
                v160 = v260;
                v159 = v259;
              }

              v258 = 0;
              ++v256;
              v259 = v159;
              v260 = v160;
            }

            while ((v261 & 1) != 0);
          }

          else
          {
            v198 = 0;
            v163 = 2020;
          }
        }

        else
        {
          v198 = 0;
        }

        if (v387)
        {
          v199 = 0;
          v380 = v370 + v381;
          do
          {
            v200 = *(v386 + 8 * v199);
            v201 = *(v200 + 16);
            v202 = *(v200 + 20);
            v203 = v200 + 24 + 4 * (1 << v202);
            v204 = v203 + 2 * (1 << v201);
            v205 = (v204 + 4 * *(v200 + 4));
            if (*v200 != -558043680)
            {
              v205 = *v205;
            }

            v206 = 0;
            v207 = *(v385 + 8 * v199);
            v208 = v380 - v207;
            v209 = *(v200 + 8);
            v210 = (0x1FE35A7BD3579BD3 * (*v179 & (0xFFFFFFFFFFFFFFFFLL >> -*(v200 + 12)))) >> -v201;
            v211 = v380 - v207 - v209;
            v212 = *(v203 + 2 * v210);
            v213 = (v204 + 4 * (*(v200 + 24 + 4 * ((0xFFFFFFFF >> -v202) & v210)) + v212));
            v214 = -v381 - v384 + v207 + v209;
            v215 = v205 + v381 + v384 - v207;
            v140 = v163;
            v216 = v160;
            do
            {
              v217 = a8[v206];
              if (v211 < v217 && v208 >= v217)
              {
                if (v209 + v217 - v208 >= v29)
                {
                  v219 = v29;
                }

                else
                {
                  v219 = v209 + v217 - v208;
                }

                if (v219 < 8)
                {
                  v220 = 0;
                  v223 = (a3 + v157);
LABEL_308:
                  if ((v219 & 7) != 0)
                  {
                    v227 = v214 + v217;
                    if (v144 < v214 + v217)
                    {
                      v227 = v144;
                    }

                    v228 = -(v227 & 7);
                    v229 = &v215[v220 - v217];
                    do
                    {
                      v230 = *v229++;
                      if (v230 != *v223)
                      {
                        break;
                      }

                      v223 = (v223 + 1);
                      ++v220;
                      v40 = __CFADD__(v228++, 1);
                    }

                    while (!v40);
                  }
                }

                else
                {
                  v220 = 0;
                  v221 = v214 + v217;
                  if (v144 < v214 + v217)
                  {
                    v221 = v144;
                  }

                  v222 = -(v221 >> 3);
                  v223 = (a3 + v157);
                  while (1)
                  {
                    v224 = *&v215[v220 - v217];
                    if (*v223 != v224)
                    {
                      break;
                    }

                    ++v223;
                    v220 += 8;
                    v40 = __CFADD__(v222++, 1);
                    if (v40)
                    {
                      goto LABEL_308;
                    }
                  }

                  v220 += __clz(__rbit64(v224 ^ *v223)) >> 3;
                }

                if (v220 >= 2)
                {
                  v225 = 135 * v220 + 1935;
                  if (v163 < v225)
                  {
                    if (v206)
                    {
                      v225 -= ((0x1CA10u >> (v206 & 2)) & 4) + 39;
                    }

                    if (v220 <= v160)
                    {
                      v226 = v160;
                    }

                    else
                    {
                      v226 = v220;
                    }

                    if (v163 < v225)
                    {
                      v216 = v220;
                      v159 = a8[v206];
                      v140 = v225;
                      v198 = 0;
                      v160 = v226;
                      v163 = v225;
                    }
                  }
                }
              }

              ++v206;
            }

            while (v206 != 4);
            v231 = v212 == 0xFFFF;
            v12 = a4;
            v232 = v389;
            v141 = a3;
            if (!v231)
            {
              do
              {
                v234 = *v213++;
                v233 = v234;
                v235 = v234 & 0x7FFFFFFF;
                v236 = v208 - v235;
                v237 = v209 - v235;
                if (v209 - v235 >= v29)
                {
                  v238 = v29;
                }

                else
                {
                  v238 = v209 - v235;
                }

                v239 = v160 + v157;
                v241 = v236 > v232 || v239 > a4 || v160 >= v238;
                if (!v241 && *(v141 + v239) == *(v205 + v160 + v235))
                {
                  v242 = v205 + v235;
                  if (v238 < 8)
                  {
                    v243 = 0;
                    v246 = (a3 + v157);
LABEL_362:
                    if ((v238 & 7) != 0)
                    {
                      if (v144 < v237)
                      {
                        LOBYTE(v237) = v144;
                      }

                      v254 = -(v237 & 7);
                      do
                      {
                        if (v242[v243] != *v246)
                        {
                          break;
                        }

                        v246 = (v246 + 1);
                        ++v243;
                        v40 = __CFADD__(v254++, 1);
                      }

                      while (!v40);
                    }
                  }

                  else
                  {
                    v243 = 0;
                    if (v144 >= v237)
                    {
                      v244 = v237;
                    }

                    else
                    {
                      v244 = v144;
                    }

                    v245 = -(v244 >> 3);
                    v246 = (a3 + v157);
                    while (1)
                    {
                      v247 = *&v242[v243];
                      if (*v246 != v247)
                      {
                        break;
                      }

                      ++v246;
                      v243 += 8;
                      v40 = __CFADD__(v245++, 1);
                      if (v40)
                      {
                        goto LABEL_362;
                      }
                    }

                    v243 += __clz(__rbit64(v247 ^ *v246)) >> 3;
                  }

                  v248 = 135 * v243 - 30 * (__clz(v236) ^ 0x1F) + 1920;
                  if (v163 < v248)
                  {
                    v249 = v243;
                  }

                  else
                  {
                    v249 = v216;
                  }

                  if (v163 < v248)
                  {
                    v250 = v236;
                  }

                  else
                  {
                    v250 = v159;
                  }

                  if (v163 < v248)
                  {
                    v251 = v248;
                  }

                  else
                  {
                    v251 = v140;
                  }

                  if (v163 < v248)
                  {
                    v252 = 0;
                  }

                  else
                  {
                    v252 = v198;
                  }

                  if (v163 < v248)
                  {
                    v253 = v243;
                  }

                  else
                  {
                    v253 = v160;
                  }

                  if (v163 >= v248)
                  {
                    v248 = v163;
                  }

                  if (v243 >= 4)
                  {
                    v216 = v249;
                    v159 = v250;
                    v140 = v251;
                    v198 = v252;
                    v160 = v253;
                    v163 = v248;
                  }

                  v232 = v389;
                  v141 = a3;
                }
              }

              while ((v233 & 0x80000000) == 0);
            }

            ++v199;
            v163 = v140;
            v160 = v216;
          }

          while (v199 != v387);
        }

        else
        {
          v216 = v160;
          v140 = v163;
          v141 = a3;
        }

        if (v140 < v372 + 175)
        {
          break;
        }

        ++v373;
        if (v371 > 2)
        {
          v255 = v377;
          goto LABEL_442;
        }

        v142 = v371 + 1;
        --v144;
        v145 = v369 + 1;
        v148 = v159;
        v388 = v198;
        v98 = v216;
        v255 = v377;
        v143 = v377;
        v146 = v351;
        if (v376 + 9 >= v360)
        {
          goto LABEL_442;
        }
      }

      v280 = v376 + v359;
      if (v376 + v359 >= v358)
      {
        v280 = v358;
      }

      v370 = v280;
      v159 = v367;
      v198 = v388;
      v216 = v352;
      v255 = v376;
LABEL_442:
      a6 = v363;
      result = 0x1FE35A7BD3579BD3;
      if (v159 > v370 + v344)
      {
        goto LABEL_443;
      }

      v312 = *a8;
      if (v159 != v312)
      {
        v322 = a8[1];
        if (v159 == v322)
        {
          v307 = 1;
          goto LABEL_444;
        }

        v323 = v159 + 3 - v312;
        if (v323 > 6)
        {
          v326 = v159 + 3 - v322;
          if (v326 > 6)
          {
            if (v159 == a8[2])
            {
              v307 = 2;
            }

            else if (v159 == a8[3])
            {
              v307 = 3;
            }

            else
            {
LABEL_443:
              v307 = v159 + 15;
            }

LABEL_444:
            if (v159 <= v370 + v344)
            {
              if (v307)
              {
                a8[3] = a8[2];
                v308 = *a8;
                *(a8 + 1) = *a8;
                *a8 = v159;
                v309 = *(a7 + 120);
                if (v309 >= 5)
                {
                  v310 = vdupq_n_s32(v159);
                  *(a8 + 1) = vaddq_s32(v310, xmmword_240C11260);
                  *(a8 + 4) = vadd_s32(*v310.i8, 0x3FFFFFFFDLL);
                  if (v309 >= 0xB)
                  {
                    v311 = vdupq_lane_s32(v308, 0);
                    *(a8 + 10) = vaddq_s32(v311, xmmword_240C11260);
                    *(a8 + 7) = vadd_s32(*v311.i8, 0x3FFFFFFFDLL);
                  }
                }
              }
            }

            goto LABEL_451;
          }

          v324 = 4 * v326;
          v325 = 266017486;
        }

        else
        {
          v324 = 4 * v323;
          v325 = 158663784;
        }

        v307 = (v325 >> v324) & 0xF;
        goto LABEL_444;
      }

      v307 = 0;
LABEL_451:
      *v346 = v373;
      *(v346 + 4) = v216 | (v198 << 25);
      v313 = *(v363 + 68);
      v314 = v313 + 16;
      if (v313 + 16 <= v307)
      {
        v316 = *(v363 + 64);
        v317 = v307 - v313 + (4 << v316) - 16;
        v318 = (__clz(v317) ^ 0x1F) - 1;
        v319 = ((v317 >> v318) & 1 | 2) << v318;
        v307 = ((v317 & ~(-1 << v316)) + v314 + ((((v317 >> v318) & 1 | (2 * (v318 - v316))) + 65534) << v316)) | ((v318 - v316) << 10);
        v315 = (v317 - v319) >> v316;
      }

      else
      {
        LODWORD(v315) = 0;
      }

      *(v346 + 14) = v307;
      *(v346 + 8) = v315;
      if (v373 > 5)
      {
        if (v373 > 0x81)
        {
          if (v373 > 0x841)
          {
            if (v373 >> 1 >= 0xC21)
            {
              if (v373 < 0x5842)
              {
                LOWORD(v320) = 22;
              }

              else
              {
                LOWORD(v320) = 23;
              }
            }

            else
            {
              LOWORD(v320) = 21;
            }
          }

          else
          {
            v320 = (__clz(v373 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v321 = (__clz(v373 - 2) ^ 0x1F) - 1;
          v320 = ((v373 - 2) >> v321) + 2 * v321 + 2;
        }
      }

      else
      {
        LOWORD(v320) = v373;
      }

      v327 = v198 + v216;
      if ((v198 + v216) > 9)
      {
        if (v327 > 0x85)
        {
          if (v327 > 0x845)
          {
            LOWORD(v327) = 23;
          }

          else
          {
            v327 = (__clz(v327 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v328 = v327 - 6;
          v329 = (__clz(v328) ^ 0x1F) - 1;
          v327 = (v328 >> v329) + 2 * v329 + 4;
        }
      }

      else
      {
        LOWORD(v327) = v327 - 2;
      }

      v330 = v327 & 7 | (8 * (v320 & 7));
      if ((v307 & 0x3FF) != 0 || v320 > 7u || v327 > 0xFu)
      {
        v332 = 3 * (v320 >> 3) + ((v327 & 0xFFF8) >> 3);
        v331 = ((((0x520D40u >> (2 * v332)) & 0xC0) + (v332 << 6)) | v330) + 64;
      }

      else
      {
        LOWORD(v331) = v330 | 0x40;
        if ((v327 & 0xFFF8) == 0)
        {
          LOWORD(v331) = v327 & 7 | (8 * (v320 & 7));
        }
      }

      *(v346 + 12) = v331;
      v333 = v343;
      *a12 += v373;
      v334 = v255 + 2;
      v273 = v255 + v216;
      if (v255 + v216 < v343)
      {
        v333 = v255 + v216;
      }

      if (v159 < v216 >> 2)
      {
        if (v334 <= v273 - 4 * v159)
        {
          v334 = v273 - 4 * v159;
        }

        if (v333 < v334)
        {
          v334 = v333;
        }
      }

      v21 = v345 + 2 * v216 + v255;
      v22 = v346 + 16;
      if (v334 < v333)
      {
        v335 = *(a7 + 96);
        v336 = *(a7 + 112);
        v337 = *(a7 + 116);
        do
        {
          v338 = (0x1FE35A7BD3579BD3 * (*(a3 + (v334 & v12)) & v361)) >> v335;
          v339 = *(v374 + 2 * v338);
          *(v374 + 2 * v338) = v339 + 1;
          *(v362 + 4 * (v336 & v339) + 4 * (v338 << v337)) = v334++;
        }

        while (v333 != v334);
      }

      v13 = 0;
LABEL_497:
      a2 = v273;
      if (v273 + 8 >= v360)
      {
        goto LABEL_504;
      }
    }

    v25 = 0;
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  v22 = a10;
  v273 = a2;
LABEL_504:
  *a9 = v13 + v360 - v273;
  *a11 += (v22 - a10) >> 4;
  return result;
}