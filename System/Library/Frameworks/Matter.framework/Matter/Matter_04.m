uint64_t sub_238EFF58C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_2393C818C(a2, 0, *a1);
    if (!result)
    {
      result = sub_2393C81D4(a2, 1uLL, *(a1 + 1));
      if (!result)
      {
        v6 = *(a1 + 8);
        if (v6 == 4)
        {
          return 0x5C00000587;
        }

        else
        {
          result = sub_2393C8140(a2, 2uLL, v6);
          if (!result)
          {
            return sub_2393C8DE0(a2, v7);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238EFF638(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        v4 = sub_238EA4D5C(a2, (a1 + 8));
        break;
      case 1:
        v4 = sub_2393C5FC8(a2, (a1 + 4));
        break;
      case 0:
        v4 = sub_2393C5F70(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFF6F0(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  v8 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v8);
  if (!result)
  {
    result = sub_2393C818C(a2, 0, *a1);
    if (!result)
    {
      result = sub_2393C81D4(a2, 1uLL, *(a1 + 1));
      if (!result)
      {
        v6 = *(a1 + 8);
        if (v6 == 4)
        {
          return 0x5C00000587;
        }

        result = sub_2393C8140(a2, 2uLL, v6);
        if (!result)
        {
          v7 = *(a1 + 9);
          if (v7 == 2)
          {
            return 0x5C00000587;
          }

          result = sub_2393C8140(a2, 3uLL, v7);
          if (!result)
          {
            return sub_2393C8DE0(a2, v8);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238EFF7BC(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        v4 = sub_238EA4D5C(a2, (a1 + 8));
      }

      else if (v8 == 3)
      {
        v4 = sub_238EFF894(a2, (a1 + 9));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C5FC8(a2, (a1 + 4));
      }
    }

    else
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFF894(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 2)
    {
      LOBYTE(v5) = 2;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238EFF8EC(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v14, a2, a3);
  if (!v15)
  {
    v15 = sub_2393C818C(v14, 0, *a1);
    v16 = v4;
    if (!v15)
    {
      v15 = sub_2393C85FC(v14, 1uLL, *(a1 + 1), *(a1 + 2));
      v16 = v5;
      if (!v15)
      {
        v6 = 0x5C00000587;
        v7 = *(a1 + 24);
        if (v7 == 7)
        {
          goto LABEL_5;
        }

        v15 = sub_2393C8140(v14, 2uLL, v7);
        v16 = v9;
        if (!v15)
        {
          v15 = sub_2393C818C(v14, 3uLL, a1[13]);
          v16 = v10;
          if (!v15)
          {
            v15 = sub_2393C818C(v14, 4uLL, a1[14]);
            v16 = v11;
            if (!v15)
            {
              v13 = *(a1 + 30);
              if (v13 != 4)
              {
                v6 = sub_2393C8140(v14, 5uLL, v13);
                goto LABEL_6;
              }

LABEL_5:
              v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
LABEL_6:
              v15 = v6;
              v16 = v8;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v14);
}

unint64_t sub_238EFF9E4(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 > 2u)
    {
      if (v10 != 3)
      {
        if (v10 == 4)
        {
          v4 = sub_238F36E54(a2, (a1 + 28));
        }

        else if (v10 == 5)
        {
          v4 = sub_238EA4D5C(a2, (a1 + 30));
        }

        goto LABEL_17;
      }

      v6 = (a1 + 26);
      v5 = a2;
    }

    else
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v4 = sub_2393C61E0(a2, (a1 + 8));
        }

        else if (v10 == 2)
        {
          v4 = sub_238EFFAE8(a2, (a1 + 24));
        }

        goto LABEL_17;
      }

      v5 = a2;
      v6 = a1;
    }

    v4 = sub_2393C5F70(v5, v6);
LABEL_17:
    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238EFFAE8(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 7)
    {
      LOBYTE(v5) = 7;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238EFFB40(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C818C(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C85FC(v10, 1uLL, *(a1 + 1), *(a1 + 2));
      v12 = v5;
      if (!v11)
      {
        v6 = *(a1 + 24);
        if (v6 == 3)
        {
          v7 = 0x5C00000587;
          v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        }

        else
        {
          v7 = sub_2393C8140(v10, 2uLL, v6);
        }

        v11 = v7;
        v12 = v8;
      }
    }
  }

  sub_238EFFBF0(&v10, 3u, a1 + 4);
  return sub_2394C38E0(&v10);
}

unint64_t sub_238EFFBF0(unint64_t result, unsigned int a2, unsigned __int16 **a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 2 * v8;
      while (1)
      {
        result = sub_2393C818C(v6, 0x100uLL, *v7);
        if (result)
        {
          break;
        }

        ++v7;
        v11 -= 2;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238EFFCB0(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        v4 = sub_238EFD7D0(a2, (a1 + 24));
      }

      else if (v8 == 3)
      {
        v4 = sub_238F36BB4(a1 + 32, a2);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C61E0(a2, (a1 + 8));
      }
    }

    else
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFFD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 4)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v6 = sub_238EFD7D0(a2, (a1 + 2));
      }

      else if (v4 == 3)
      {
        v6 = sub_2393C5CE4(a2, (a1 + 3));
      }

      else
      {
        v6 = sub_238EFDEB0(a2, a1 + 4);
      }

      goto LABEL_26;
    }

    if (v4)
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 1)
      {
        return v6 | v5;
      }

      v6 = sub_238EFF894(a2, (a1 + 1));
    }

    else
    {
      v6 = sub_2393C5ED0(a2, a1);
    }

    goto LABEL_26;
  }

  if (v4 > 65530)
  {
    if (v4 == 65531)
    {
      v7 = a1 + 232;
      goto LABEL_25;
    }

    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 304));
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65533)
      {
        return v6 | v5;
      }

      v6 = sub_2393C5F70(a2, (a1 + 308));
    }

LABEL_26:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 == 5)
  {
    v7 = a1 + 16;
    goto LABEL_25;
  }

  if (v4 == 65528)
  {
    v7 = a1 + 88;
    goto LABEL_25;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65529)
  {
    v7 = a1 + 160;
LABEL_25:
    v6 = sub_238F36BB4(v7, a2);
    goto LABEL_26;
  }

  return v6 | v5;
}

unint64_t sub_238EFFF1C(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v8 = a2;
  while (1)
  {
    v6 = 0;
    v2 = sub_2394C37B8(v7, &v6);
    if (v2 == 33)
    {
      break;
    }

    v3 = v2;
    if (v2)
    {
      v4 = v2 & 0xFFFFFFFF00000000;
      return v4 | v3;
    }
  }

  v3 = 0;
  v4 = 0;
  return v4 | v3;
}

unint64_t sub_238EFFF78(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 5)
    {
      v9 = 0x5C00000587;
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v9 = sub_2393C8140(v8, 0, v4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C85FC(v8, 1uLL, *(a1 + 1), *(a1 + 2));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F00004(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_2393C61E0(a2, (a1 + 8));
    }

    else if (!v8)
    {
      v4 = sub_238F000A4(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F000A4(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 5)
    {
      LOBYTE(v5) = 5;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F000FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        v6 = sub_238EFD7D0(a2, a1);
        goto LABEL_21;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 1)
      {
        v6 = sub_238F00228(a2, (a1 + 1));
LABEL_21:
        v5 = v6 & 0xFFFFFFFF00000000;
        return v6 | v5;
      }

      return v6 | v5;
    }

    if (v4 == 2)
    {
      v6 = sub_238F002E0(a2, (a1 + 4));
      goto LABEL_21;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 != 65528)
    {
      return v6 | v5;
    }

    v7 = a1 + 8;
LABEL_18:
    v6 = sub_238F36BB4(v7, a2);
    goto LABEL_21;
  }

  if (v4 <= 65531)
  {
    if (v4 == 65529)
    {
      v7 = a1 + 80;
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65531)
      {
        return v6 | v5;
      }

      v7 = a1 + 152;
    }

    goto LABEL_18;
  }

  if (v4 == 65532)
  {
    v6 = sub_2393C5FC8(a2, (a1 + 224));
    goto LABEL_21;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65533)
  {
    v6 = sub_2393C5F70(a2, (a1 + 228));
    goto LABEL_21;
  }

  return v6 | v5;
}

unint64_t sub_238F00228(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    if (a2[1] == 1)
    {
      a2[1] = 0;
    }
  }

  else
  {
    *a2 = 256;
    v4 = sub_2393C5ED0(a1, a2);
    if (v4)
    {
      v5 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      if ((a2[1] & 1) == 0)
      {
        sub_238EA195C();
      }

      v6 = *a2;
      if (v6 == 255)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (v6 == 255)
      {
        v5 = 0xAF00000000;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5 | v4;
}

unint64_t sub_238F002E0(uint64_t a1, __int16 *a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    if (*(a2 + 2) == 1)
    {
      *(a2 + 2) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 2) = 1;
    v4 = sub_238F36E54(a1, a2);
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v5 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      if ((a2[1] & 1) == 0)
      {
        sub_238EA195C();
      }

      v7 = *a2;
      if (v7 == -1)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (v7 == -1)
      {
        v5 = 0xAF00000000;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5 | v4;
}

unint64_t sub_238F003A8(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C818C(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C8364(v10, 1uLL, *(a1 + 1), *(a1 + 2));
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C818C(v10, 2uLL, a1[12]);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C81D4(v10, 3uLL, *(a1 + 7));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8364(v10, 4uLL, *(a1 + 4), *(a1 + 5));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F0045C(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v15 = a2;
  while (1)
  {
    v13 = 0;
    v4 = sub_2394C37B8(v14, &v13);
    if (v4)
    {
      break;
    }

    if (v13 <= 1u)
    {
      if (!v13)
      {
        v9 = a2;
        v8 = a1;
        goto LABEL_17;
      }

      if (v13 != 1)
      {
        goto LABEL_18;
      }

      v7 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v7 != 16)
      {
        goto LABEL_18;
      }

      v6 = (a1 + 8);
    }

    else
    {
      if (v13 == 2)
      {
        v8 = (a1 + 24);
        v9 = a2;
LABEL_17:
        v4 = sub_2393C5F70(v9, v8);
        goto LABEL_18;
      }

      if (v13 == 3)
      {
        v4 = sub_2393C5FC8(a2, (a1 + 28));
        goto LABEL_18;
      }

      if (v13 != 4)
      {
        goto LABEL_18;
      }

      v5 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v5 != 16)
      {
        goto LABEL_18;
      }

      v6 = (a1 + 32);
    }

    v4 = sub_2393C60CC(a2, v6);
LABEL_18:
    v10 = v4;
    if (v4)
    {
      v11 = v4 & 0xFFFFFFFF00000000;
      return v11 | v10;
    }
  }

  v11 = v4 & 0xFFFFFFFF00000000;
  v10 = v4;
  if (v4 == 33)
  {
    v10 = 0;
    v11 = 0;
  }

  return v11 | v10;
}

unint64_t sub_238F00590(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C818C(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F005E4(_WORD *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_2393C5F70(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F00678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 65530)
  {
    if (v4)
    {
      if (v4 == 65528)
      {
        v7 = a1 + 8;
        goto LABEL_13;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65529)
      {
        v7 = a1 + 80;
LABEL_13:
        v6 = sub_238F36BB4(v7, a2);
        goto LABEL_15;
      }

      return v6 | v5;
    }

    v6 = sub_238EFFAE8(a2, a1);
LABEL_15:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 == 65531)
  {
    v7 = a1 + 152;
    goto LABEL_13;
  }

  if (v4 == 65532)
  {
    v6 = sub_2393C5FC8(a2, (a1 + 224));
    goto LABEL_15;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65533)
  {
    v6 = sub_2393C5F70(a2, (a1 + 228));
    goto LABEL_15;
  }

  return v6 | v5;
}

unint64_t sub_238F00750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 65528)
  {
    if (v5 > 65531)
    {
      if (v5 == 65532)
      {
        v7 = sub_2393C5FC8(a2, (a1 + 224));
        goto LABEL_19;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65533)
      {
        v7 = sub_2393C5F70(a2, (a1 + 228));
LABEL_19:
        v6 = v7 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }

    else
    {
      if (v5 == 65529)
      {
        v8 = a1 + 80;
        goto LABEL_15;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65531)
      {
        v8 = a1 + 152;
LABEL_15:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_19;
      }
    }

    return v7 | v6;
  }

  if (!v5)
  {
    v9 = a2;
    v10 = a1;
LABEL_18:
    v7 = sub_2393C5CE4(v9, v10);
    goto LABEL_19;
  }

  if (v5 == 1)
  {
    v10 = (a1 + 1);
    v9 = a2;
    goto LABEL_18;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v8 = a1 + 8;
    goto LABEL_15;
  }

  return v7 | v6;
}

unint64_t sub_238F00850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 65530)
  {
    if (v4)
    {
      if (v4 == 65528)
      {
        v7 = a1 + 8;
        goto LABEL_13;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65529)
      {
        v7 = a1 + 80;
LABEL_13:
        v6 = sub_238F36BB4(v7, a2);
        goto LABEL_15;
      }

      return v6 | v5;
    }

    v6 = sub_238EA4DB4(a2, a1);
LABEL_15:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 == 65531)
  {
    v7 = a1 + 152;
    goto LABEL_13;
  }

  if (v4 == 65532)
  {
    v6 = sub_2393C5FC8(a2, (a1 + 224));
    goto LABEL_15;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65533)
  {
    v6 = sub_2393C5F70(a2, (a1 + 228));
    goto LABEL_15;
  }

  return v6 | v5;
}

unint64_t sub_238F00928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          v7 = sub_238F19BB4(a1 + 48, a2);
        }

        else
        {
          v7 = sub_238EA4D5C(a2, (a1 + 72));
        }

        goto LABEL_36;
      }

      v10 = (a1 + 40);
      goto LABEL_31;
    }

    if (!v5)
    {
      v11 = a2;
      v9 = a1;
      goto LABEL_29;
    }

    if (v5 == 1)
    {
      v7 = sub_238F36E54(a2, (a1 + 16));
      if (!v7)
      {
        v7 = 0;
      }

      goto LABEL_36;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 2)
    {
      return v7 | v6;
    }

    v9 = (a1 + 24);
LABEL_25:
    v11 = a2;
LABEL_29:
    v7 = sub_2393C61E0(v11, v9);
    goto LABEL_36;
  }

  if (v5 > 65528)
  {
    if (v5 <= 65531)
    {
      if (v5 == 65529)
      {
        v8 = a1 + 240;
        goto LABEL_27;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65531)
      {
        v8 = a1 + 312;
LABEL_27:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_36;
      }

      return v7 | v6;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 384));
LABEL_36:
      v6 = v7 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 65533)
    {
      return v7 | v6;
    }

    v10 = (a1 + 388);
LABEL_31:
    v7 = sub_2393C5F70(a2, v10);
    goto LABEL_36;
  }

  if (v5 == 6)
  {
    v9 = (a1 + 80);
    goto LABEL_25;
  }

  if (v5 == 7)
  {
    v8 = a1 + 96;
    goto LABEL_27;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v8 = a1 + 168;
    goto LABEL_27;
  }

  return v7 | v6;
}

unint64_t sub_238F00ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    if (v4 == 1)
    {
      v6 = sub_238F00BC8(a2, a1 + 72);
      goto LABEL_16;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65528)
    {
      a1 = v3 + 112;
      goto LABEL_15;
    }
  }

  else if (v4 > 65531)
  {
    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 328));
      goto LABEL_16;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65533)
    {
      v6 = sub_2393C5F70(a2, (v3 + 332));
LABEL_16:
      v5 = v6 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    if (v4 == 65529)
    {
      a1 += 184;
      goto LABEL_15;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65531)
    {
      a1 = v3 + 256;
LABEL_15:
      v6 = sub_238F36BB4(a1, a2);
      goto LABEL_16;
    }
  }

  return v6 | v5;
}

unint64_t sub_238F00BC8(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 32) == 1)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
    v6 = sub_238F010D8(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F00C60(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F36EB0(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F1E4D4(v7, 1uLL, a1 + 32);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F00CCC(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F00D84(a2, a1 + 32);
    }

    else if (!v8)
    {
      *a1 = 1;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      v4 = sub_238F19BB4(a1 + 8, a2);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F00D84(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v3 = (a2 + 8);
  if (sub_2393C5C40(a1) == 16)
  {
    return sub_2393C60CC(a1, v3);
  }

  else
  {
    return 0x500000002BLL;
  }
}

unint64_t sub_238F00DE4(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F36EB0(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F00E38(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      *a1 = 1;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      v5 = sub_238F19BB4(a1 + 8, a2);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F00EE4(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 6)
    {
      v9 = 0x5C00000587;
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v9 = sub_2393C8140(v8, 0, v4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F1E4D4(v8, 1uLL, a1 + 8);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F00F74(_BYTE *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F00D84(a2, (a1 + 8));
    }

    else if (!v8)
    {
      v4 = sub_238F01014(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F01014(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 6)
    {
      LOBYTE(v5) = 6;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F0106C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F19B48(a1, v7, 0);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F2AA44(v7, 1uLL, (a1 + 24));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F010D8(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      *(a1 + 24) = 1;
      *(a1 + 26) = 0;
      v4 = sub_2393C5F70(a2, (a1 + 26));
    }

    else if (!v8)
    {
      v4 = sub_238F19BB4(a1, a2);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F0118C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    if (v4 == 1)
    {
      v6 = sub_2393C5ED0(a2, (a1 + 72));
      goto LABEL_16;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65528)
    {
      a1 = v3 + 80;
      goto LABEL_15;
    }
  }

  else if (v4 > 65531)
  {
    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 296));
      goto LABEL_16;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65533)
    {
      v6 = sub_2393C5F70(a2, (v3 + 300));
LABEL_16:
      v5 = v6 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    if (v4 == 65529)
    {
      a1 += 152;
      goto LABEL_15;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65531)
    {
      a1 = v3 + 224;
LABEL_15:
      v6 = sub_238F36BB4(a1, a2);
      goto LABEL_16;
    }
  }

  return v6 | v5;
}

unint64_t sub_238F01288(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C8140(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F012DC(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_2393C5ED0(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F01370(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8140(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C85FC(v7, 1uLL, *(a1 + 1), *(a1 + 2));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F013DC(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_2393C61E0(a2, (a1 + 8));
    }

    else if (!v8)
    {
      v4 = sub_2393C5ED0(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F0147C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8140(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v5 = a1[1];
      if (v5 == 6)
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v7 = 0x5C00000587;
LABEL_7:
        v11 = v7;
        v12 = v6;
        return sub_2394C38E0(&v10);
      }

      v11 = sub_2393C8140(v10, 1uLL, v5);
      v12 = v8;
      if (!v11)
      {
        v7 = sub_2393C85FC(v10, 2uLL, *(a1 + 1), *(a1 + 2));
        goto LABEL_7;
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F0151C(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        v4 = sub_2393C61E0(a2, (a1 + 8));
        break;
      case 1:
        v4 = sub_238F01014(a2, (a1 + 1));
        break;
      case 0:
        v4 = sub_2393C5ED0(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F015D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 48)
  {
    if (v5 <= 16)
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v7 = sub_238EA4DB4(a2, (a1 + 2));
          goto LABEL_51;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 16)
        {
          return v7 | v6;
        }

        v10 = (a1 + 3);
      }

      else
      {
        if (!v5)
        {
          v13 = a2;
          v10 = a1;
LABEL_43:
          v7 = sub_2393C5ED0(v13, v10);
          goto LABEL_51;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 1)
        {
          return v7 | v6;
        }

        v10 = (a1 + 1);
      }
    }

    else
    {
      if (v5 > 20)
      {
        if (v5 != 21)
        {
          if (v5 != 32)
          {
            v6 = 0;
            LODWORD(v7) = 0;
            if (v5 != 48)
            {
              return v7 | v6;
            }

            v9 = (a1 + 16);
LABEL_48:
            v7 = sub_2393C61E0(a2, v9);
            goto LABEL_51;
          }

          v10 = (a1 + 9);
          goto LABEL_42;
        }

        v11 = (a1 + 7);
LABEL_38:
        v7 = sub_238F00228(a2, v11);
        goto LABEL_51;
      }

      if (v5 != 17)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 20)
        {
          return v7 | v6;
        }

        v11 = (a1 + 5);
        goto LABEL_38;
      }

      v10 = (a1 + 4);
    }

LABEL_42:
    v13 = a2;
    goto LABEL_43;
  }

  if (v5 > 65527)
  {
    if (v5 <= 65530)
    {
      if (v5 == 65528)
      {
        v12 = a1 + 80;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65529)
        {
          return v7 | v6;
        }

        v12 = a1 + 152;
      }
    }

    else
    {
      if (v5 != 65531)
      {
        if (v5 == 65532)
        {
          v7 = sub_2393C5FC8(a2, (a1 + 296));
        }

        else
        {
          v6 = 0;
          LODWORD(v7) = 0;
          if (v5 != 65533)
          {
            return v7 | v6;
          }

          v7 = sub_2393C5F70(a2, (a1 + 300));
        }

LABEL_51:
        v6 = v7 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }

      v12 = a1 + 224;
    }

    v7 = sub_238F36BB4(v12, a2);
    goto LABEL_51;
  }

  if (v5 <= 50)
  {
    if (v5 != 49)
    {
      v8 = a1 + 48;
      goto LABEL_45;
    }

    v9 = (a1 + 32);
    goto LABEL_48;
  }

  if (v5 == 51)
  {
    v8 = a1 + 56;
    goto LABEL_45;
  }

  if (v5 == 52)
  {
    v7 = sub_238EA4DB4(a2, (a1 + 64));
    goto LABEL_51;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 53)
  {
    v8 = a1 + 68;
LABEL_45:
    v7 = sub_238EFDEB0(a2, v8);
    goto LABEL_51;
  }

  return v7 | v6;
}

unint64_t sub_238F0180C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v8 = a2;
        v9 = a1;
        goto LABEL_25;
      case 1:
        v11 = (a1 + 8);
        goto LABEL_37;
      case 2:
        v7 = sub_238F36E54(a2, (a1 + 24));
        if (!v7)
        {
          v7 = 0;
        }

        goto LABEL_46;
      case 3:
        v11 = (a1 + 32);
        goto LABEL_37;
      case 4:
        v9 = (a1 + 48);
        goto LABEL_24;
      case 5:
        v11 = (a1 + 56);
        goto LABEL_37;
      case 6:
        v11 = (a1 + 72);
        goto LABEL_37;
      case 7:
        v9 = (a1 + 88);
        goto LABEL_24;
      case 8:
        v11 = (a1 + 96);
        goto LABEL_37;
      case 9:
        v12 = (a1 + 112);
        goto LABEL_43;
      case 10:
        v11 = (a1 + 120);
        goto LABEL_37;
      case 11:
        v11 = (a1 + 136);
        goto LABEL_37;
      case 12:
        v11 = (a1 + 152);
        goto LABEL_37;
      case 13:
        v11 = (a1 + 168);
        goto LABEL_37;
      case 14:
        v11 = (a1 + 184);
        goto LABEL_37;
      case 15:
        v11 = (a1 + 200);
        goto LABEL_37;
      case 16:
        v13 = (a1 + 216);
        goto LABEL_39;
      case 17:
        v13 = (a1 + 217);
LABEL_39:
        v7 = sub_2393C5CE4(a2, v13);
        goto LABEL_46;
      case 18:
        v11 = (a1 + 224);
LABEL_37:
        v7 = sub_2393C61E0(a2, v11);
        goto LABEL_46;
      case 19:
        v7 = sub_238F01D20((a1 + 240), a2);
        goto LABEL_46;
      case 20:
        v7 = sub_238F01E50((a1 + 244), a2);
        goto LABEL_46;
      case 21:
        v12 = (a1 + 248);
        goto LABEL_43;
      case 22:
        v9 = (a1 + 252);
        goto LABEL_24;
      case 24:
        v12 = (a1 + 256);
        goto LABEL_43;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v10 = a1 + 264;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v10 = a1 + 336;
    }

LABEL_45:
    v7 = sub_238F36BB4(v10, a2);
LABEL_46:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 65531)
  {
    v10 = a1 + 408;
    goto LABEL_45;
  }

  if (v5 == 65532)
  {
    v12 = (a1 + 480);
LABEL_43:
    v7 = sub_2393C5FC8(a2, v12);
    goto LABEL_46;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v9 = (a1 + 484);
LABEL_24:
    v8 = a2;
LABEL_25:
    v7 = sub_2393C5F70(v8, v9);
    goto LABEL_46;
  }

  return v7 | v6;
}

unint64_t sub_238F01A04(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C81D4(a2, 0, *a1);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F01A6C(_DWORD *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_2393C5FC8(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F01B00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v5);
  if (!result)
  {
    return sub_2393C8DE0(a2, v5);
  }

  return result;
}

unint64_t sub_238F01B50(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8140(a2, 0, *a1);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F01BB8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C7E38(a2, 0, *a1);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F01C20(char *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_2393C5CE4(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F01CB4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C818C(v7, 1uLL, a1[1]);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F01D20(_WORD *a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  v4 = a1 + 1;
  while (1)
  {
    v10 = 0;
    v5 = sub_2394C37B8(v11, &v10);
    if (v5)
    {
      break;
    }

    v6 = a1;
    if (!v10)
    {
      goto LABEL_6;
    }

    if (v10 == 1)
    {
      v6 = v4;
LABEL_6:
      v5 = sub_2393C5F70(a2, v6);
    }

    v7 = v5;
    if (v5)
    {
      v8 = v5 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v5 & 0xFFFFFFFF00000000;
  v7 = v5;
  if (v5 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F01DC4(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 6)
    {
      v9 = 0x5C00000587;
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v9 = sub_2393C8140(v8, 0, v4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F36F04(v8, 1uLL, a1 + 1);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F01E50(_BYTE *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F01EF0(a2, a1 + 1);
    }

    else if (!v8)
    {
      v4 = sub_238F01014(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F01EF0(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    if (a2[1] == 1)
    {
      a2[1] = 0;
    }
  }

  else
  {
    *a2 = 256;
    v4 = sub_238F36F78(a1, a2);
    if (v4)
    {
      v5 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      if ((a2[1] & 1) == 0)
      {
        sub_238EA195C();
      }

      v6 = *a2;
      if (v6 == 255)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (v6 == 255)
      {
        v5 = 0xAF00000000;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5 | v4;
}

unint64_t sub_238F01FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 > 65530)
  {
    if (v4 == 65531)
    {
      a1 += 224;
      goto LABEL_13;
    }

    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 296));
      goto LABEL_14;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65533)
    {
      v6 = sub_2393C5F70(a2, (v3 + 300));
LABEL_14:
      v5 = v6 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 65528)
    {
      a1 += 80;
      goto LABEL_13;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65529)
    {
      a1 = v3 + 152;
LABEL_13:
      v6 = sub_238F36BB4(a1, a2);
      goto LABEL_14;
    }
  }

  return v6 | v5;
}

unint64_t sub_238F020A0(_BYTE *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v13, a2, a3);
  if (!v14)
  {
    v14 = sub_238EFEFB0(v13, 1uLL, a1);
    v15 = v6;
    if (!v14)
    {
      v14 = sub_238F2AA44(v13, 2uLL, a1 + 16);
      v15 = v7;
      if (!v14)
      {
        v14 = sub_238F2AA44(v13, 3uLL, a1 + 20);
        v15 = v8;
        if (!v14)
        {
          v9 = sub_238F36DFC(v13, 4uLL, a1 + 24);
          v14 = v9;
          v15 = v10;
          if (*a4 == 1 && !v9)
          {
            v14 = sub_2393C8140(v13, 0xFEuLL, a1[32]);
            v15 = v11;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v13);
}

unint64_t sub_238F02168(_BYTE *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F020A0(a1, a2, a3, v5);
}

unint64_t sub_238F02198(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 2u)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          *(a1 + 24) = 1;
          *(a1 + 28) = 0;
          v4 = sub_2393C5FC8(a2, (a1 + 28));
        }

        else if (v9 == 254)
        {
          v4 = sub_2393C5ED0(a2, (a1 + 32));
        }

        goto LABEL_15;
      }

      *(a1 + 20) = 1;
      *(a1 + 22) = 0;
      v5 = (a1 + 22);
      goto LABEL_12;
    }

    if (v9 == 1)
    {
      *a1 = 1;
      *(a1 + 8) = 0;
      v4 = sub_2393C5F2C(a2, (a1 + 8));
      goto LABEL_15;
    }

    if (v9 == 2)
    {
      *(a1 + 16) = 1;
      *(a1 + 18) = 0;
      v5 = (a1 + 18);
LABEL_12:
      v4 = sub_2393C5F70(a2, v5);
    }

LABEL_15:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F022B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 65530)
  {
    if (v4)
    {
      if (v4 == 65528)
      {
        v7 = a1 + 8;
        goto LABEL_13;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65529)
      {
        v7 = a1 + 80;
LABEL_13:
        v6 = sub_238F36BB4(v7, a2);
        goto LABEL_15;
      }

      return v6 | v5;
    }

    v6 = sub_2393C5CE4(a2, a1);
LABEL_15:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 == 65531)
  {
    v7 = a1 + 152;
    goto LABEL_13;
  }

  if (v4 == 65532)
  {
    v6 = sub_2393C5FC8(a2, (a1 + 224));
    goto LABEL_15;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65533)
  {
    v6 = sub_2393C5F70(a2, (a1 + 228));
    goto LABEL_15;
  }

  return v6 | v5;
}

unint64_t sub_238F02388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 5)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v9 = (a1 + 1);
        }

        else
        {
          v6 = 0;
          LODWORD(v7) = 0;
          if (v5 != 2)
          {
            return v7 | v6;
          }

          v9 = (a1 + 2);
        }

        v11 = a2;
      }

      else
      {
        v11 = a2;
        v9 = a1;
      }

      v7 = sub_2393C5ED0(v11, v9);
      goto LABEL_34;
    }

    if (v5 == 3)
    {
      v10 = (a1 + 3);
    }

    else if (v5 == 4)
    {
      v10 = (a1 + 4);
    }

    else
    {
      v10 = (a1 + 5);
    }

LABEL_33:
    v7 = sub_238EA4DB4(a2, v10);
    goto LABEL_34;
  }

  if (v5 > 65528)
  {
    if (v5 > 65531)
    {
      if (v5 == 65532)
      {
        v7 = sub_2393C5FC8(a2, (a1 + 232));
        goto LABEL_34;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65533)
      {
        v7 = sub_2393C5F70(a2, (a1 + 236));
LABEL_34:
        v6 = v7 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }

    else
    {
      if (v5 == 65529)
      {
        v8 = a1 + 88;
        goto LABEL_23;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65531)
      {
        v8 = a1 + 160;
LABEL_23:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_34;
      }
    }

    return v7 | v6;
  }

  if (v5 == 6)
  {
    v10 = (a1 + 6);
    goto LABEL_33;
  }

  if (v5 == 7)
  {
    v7 = sub_238F36E54(a2, (a1 + 8));
    goto LABEL_34;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v8 = a1 + 16;
    goto LABEL_23;
  }

  return v7 | v6;
}

unint64_t sub_238F02518(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_238EA4DB4(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F025AC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8140(a2, 0, *a1);
    if (!result)
    {
      result = sub_238F02628(a2, 1uLL, a1 + 1);
      if (!result)
      {
        return sub_2393C8DE0(a2, v6);
      }
    }
  }

  return result;
}

unint64_t sub_238F02628(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36D8(a3);
  return sub_2393C8140(a1, a2, *v5);
}

unint64_t sub_238F02680(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  v4 = (a1 + 2);
  while (1)
  {
    v10 = 0;
    v5 = sub_2394C37B8(v11, &v10);
    if (v5)
    {
      break;
    }

    v6 = a1;
    if (!v10)
    {
      goto LABEL_6;
    }

    if (v10 == 1)
    {
      *(a1 + 1) = 1;
      v6 = v4;
LABEL_6:
      v5 = sub_238EA4DB4(a2, v6);
    }

    v7 = v5;
    if (v5)
    {
      v8 = v5 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v5 & 0xFFFFFFFF00000000;
  v7 = v5;
  if (v5 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F0272C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C818C(a2, 0, *a1);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F02794(_WORD *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_238F36E54(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F02828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 1:
        v8 = a2;
        v9 = a1;
        goto LABEL_33;
      case 2:
        v7 = sub_238F36E54(a2, (a1 + 16));
        if (!v7)
        {
          v7 = 0;
        }

        goto LABEL_39;
      case 3:
        v9 = (a1 + 24);
        goto LABEL_32;
      case 4:
        v10 = (a1 + 40);
        goto LABEL_26;
      case 5:
        v9 = (a1 + 48);
        goto LABEL_32;
      case 7:
        v10 = (a1 + 64);
        goto LABEL_26;
      case 8:
        v9 = (a1 + 72);
        goto LABEL_32;
      case 9:
        v12 = (a1 + 88);
        goto LABEL_38;
      case 10:
        v9 = (a1 + 96);
        goto LABEL_32;
      case 11:
        v9 = (a1 + 112);
        goto LABEL_32;
      case 12:
        v9 = (a1 + 128);
        goto LABEL_32;
      case 13:
        v9 = (a1 + 144);
        goto LABEL_32;
      case 14:
        v9 = (a1 + 160);
        goto LABEL_32;
      case 15:
        v9 = (a1 + 176);
        goto LABEL_32;
      case 17:
        v7 = sub_2393C5CE4(a2, (a1 + 192));
        goto LABEL_39;
      case 18:
        v9 = (a1 + 200);
LABEL_32:
        v8 = a2;
LABEL_33:
        v7 = sub_2393C61E0(v8, v9);
        goto LABEL_39;
      case 20:
        v7 = sub_238F01E50((a1 + 216), a2);
        goto LABEL_39;
      case 24:
        v12 = (a1 + 220);
        goto LABEL_38;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v11 = a1 + 224;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v11 = a1 + 296;
    }

LABEL_36:
    v7 = sub_238F36BB4(v11, a2);
LABEL_39:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 65531)
  {
    v11 = a1 + 368;
    goto LABEL_36;
  }

  if (v5 == 65532)
  {
    v12 = (a1 + 440);
LABEL_38:
    v7 = sub_2393C5FC8(a2, v12);
    goto LABEL_39;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v10 = (a1 + 444);
LABEL_26:
    v7 = sub_2393C5F70(a2, v10);
    goto LABEL_39;
  }

  return v7 | v6;
}

unint64_t sub_238F029EC(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C81D4(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C81D4(v7, 1uLL, a1[1]);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F02A58(_DWORD *a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  v4 = a1 + 1;
  while (1)
  {
    v10 = 0;
    v5 = sub_2394C37B8(v11, &v10);
    if (v5)
    {
      break;
    }

    v6 = a1;
    if (!v10)
    {
      goto LABEL_6;
    }

    if (v10 == 1)
    {
      v6 = v4;
LABEL_6:
      v5 = sub_2393C5FC8(a2, v6);
    }

    v7 = v5;
    if (v5)
    {
      v8 = v5 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v5 & 0xFFFFFFFF00000000;
  v7 = v5;
  if (v5 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F02AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 6)
  {
    if (v5 <= 2)
    {
      if (!v5)
      {
        v9 = sub_238F02D54(a1, a2);
        goto LABEL_34;
      }

      if (v5 != 1)
      {
        v8 = 0;
        LODWORD(v9) = 0;
        if (v5 != 2)
        {
          return v9 | v8;
        }

        v10 = a1 + 16;
        goto LABEL_33;
      }

      v7 = (a1 + 10);
    }

    else
    {
      if (v5 > 4)
      {
        if (v5 == 5)
        {
          v6 = (a1 + 162);
        }

        else
        {
          v6 = (a1 + 164);
        }

        goto LABEL_31;
      }

      if (v5 == 3)
      {
        v10 = a1 + 88;
        goto LABEL_33;
      }

      v7 = (a1 + 160);
    }

    v9 = sub_2393C5ED0(a2, v7);
LABEL_34:
    v8 = v9 & 0xFFFFFFFF00000000;
    return v9 | v8;
  }

  if (v5 > 65528)
  {
    if (v5 <= 65531)
    {
      if (v5 == 65529)
      {
        v10 = a1 + 248;
        goto LABEL_33;
      }

      v8 = 0;
      LODWORD(v9) = 0;
      if (v5 != 65531)
      {
        return v9 | v8;
      }

      v10 = a1 + 320;
LABEL_33:
      v9 = sub_238F36BB4(v10, a2);
      goto LABEL_34;
    }

    if (v5 == 65532)
    {
      v9 = sub_2393C5FC8(a2, (a1 + 392));
      goto LABEL_34;
    }

    v8 = 0;
    LODWORD(v9) = 0;
    if (v5 != 65533)
    {
      return v9 | v8;
    }

    v9 = sub_2393C5F70(a2, (a1 + 396));
    goto LABEL_34;
  }

  if (v5 <= 8)
  {
    if (v5 == 7)
    {
      v6 = (a1 + 166);
    }

    else
    {
      v6 = (a1 + 168);
    }

LABEL_31:
    v9 = sub_2393C5E20(a2, v6);
    goto LABEL_34;
  }

  if (v5 == 9)
  {
    v9 = sub_238EFF894(a2, (a1 + 170));
    goto LABEL_34;
  }

  v8 = 0;
  LODWORD(v9) = 0;
  if (v5 == 65528)
  {
    v10 = a1 + 176;
    goto LABEL_33;
  }

  return v9 | v8;
}

unint64_t sub_238F02CD0(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F2A888(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F2A888(v8, 1uLL, a1 + 4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F02628(v8, 2uLL, a1 + 8);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F02D54(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    switch(v9)
    {
      case 2:
        *(a1 + 8) = 1;
        v4 = sub_2393C5ED0(a2, (a1 + 9));
        break;
      case 1:
        *(a1 + 4) = 1;
        *(a1 + 6) = 0;
        v5 = (a1 + 6);
        goto LABEL_8;
      case 0:
        *a1 = 1;
        *(a1 + 2) = 0;
        v5 = (a1 + 2);
LABEL_8:
        v4 = sub_2393C5E20(a2, v5);
        break;
    }

    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F02E24(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F2A888(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F2A888(v8, 1uLL, a1 + 4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F36FD0(v8, 2uLL, a1 + 8);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F02EA8(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    switch(v9)
    {
      case 2:
        *(a1 + 8) = 1;
        v4 = sub_2393C5D48(a2, (a1 + 9));
        break;
      case 1:
        *(a1 + 4) = 1;
        *(a1 + 6) = 0;
        v5 = (a1 + 6);
        goto LABEL_8;
      case 0:
        *a1 = 1;
        *(a1 + 2) = 0;
        v5 = (a1 + 2);
LABEL_8:
        v4 = sub_2393C5E20(a2, v5);
        break;
    }

    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F02F78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F02628(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C85FC(v7, 1uLL, *(a1 + 8), *(a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F02FE4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_2393C61E0(a2, (a1 + 8));
    }

    else if (!v8)
    {
      *a1 = 1;
      v4 = sub_2393C5ED0(a2, (a1 + 1));
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F03094(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F36444(a1 + 1, v7, 1uLL);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F03100(_WORD *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F364E0(a1 + 1, a2);
    }

    else if (!v8)
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F031A0(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_238F2A888(v9, 1uLL, a1 + 2);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F2A888(v9, 2uLL, a1 + 6);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F36FD0(v9, 3uLL, a1 + 10);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0323C(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 1u)
    {
      if (v9 != 2)
      {
        if (v9 == 3)
        {
          *(a1 + 10) = 1;
          v4 = sub_2393C5D48(a2, (a1 + 11));
        }

        goto LABEL_13;
      }

      *(a1 + 6) = 1;
      *(a1 + 8) = 0;
      v5 = (a1 + 8);
      goto LABEL_12;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        *(a1 + 2) = 1;
        *(a1 + 4) = 0;
        v5 = (a1 + 4);
LABEL_12:
        v4 = sub_2393C5E20(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5F70(a2, a1);
    }

LABEL_13:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F0332C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8140(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C85FC(v8, 1uLL, *(a1 + 1), *(a1 + 2));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F02CD0(a1 + 24, v8, 2uLL);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F033B0(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        v4 = sub_238F02D54(a1 + 24, a2);
        break;
      case 1:
        v4 = sub_2393C61E0(a2, (a1 + 8));
        break;
      case 0:
        v4 = sub_2393C5ED0(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F03468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v8 = a2;
        v9 = a1;
        goto LABEL_62;
      case 1:
        v13 = (a1 + 4);
        goto LABEL_43;
      case 2:
        v7 = sub_238F05380(a1 + 8, a2);
        goto LABEL_63;
      case 3:
        v12 = (a1 + 18);
        goto LABEL_59;
      case 4:
        v7 = sub_238F01D20((a1 + 20), a2);
        goto LABEL_63;
      case 5:
        v11 = a1 + 24;
        goto LABEL_46;
      case 6:
        v13 = (a1 + 96);
        goto LABEL_43;
      case 7:
        v14 = (a1 + 104);
        goto LABEL_48;
      case 8:
        v14 = (a1 + 328);
LABEL_48:
        v7 = sub_238F04FC4(v14, a2);
        goto LABEL_63;
      case 9:
        v7 = sub_238EFD7D0(a2, (a1 + 552));
        goto LABEL_63;
      case 10:
        v11 = a1 + 560;
        goto LABEL_46;
      case 11:
        v13 = (a1 + 632);
        goto LABEL_43;
      case 12:
        v10 = (a1 + 636);
        goto LABEL_27;
      case 13:
        v12 = (a1 + 638);
        goto LABEL_59;
      case 14:
        v11 = a1 + 640;
        goto LABEL_46;
      case 15:
        v11 = a1 + 712;
        goto LABEL_46;
      case 16:
        v11 = a1 + 784;
        goto LABEL_46;
      case 17:
        v11 = a1 + 856;
        goto LABEL_46;
      case 18:
        v11 = a1 + 928;
        goto LABEL_46;
      case 19:
        v12 = (a1 + 1000);
        goto LABEL_59;
      case 20:
        v12 = (a1 + 1001);
        goto LABEL_59;
      case 21:
        v12 = (a1 + 1002);
        goto LABEL_59;
      case 22:
        v15 = (a1 + 1003);
        goto LABEL_55;
      case 23:
        v15 = (a1 + 1004);
LABEL_55:
        v7 = sub_238EFD7D0(a2, v15);
        goto LABEL_63;
      case 24:
        v7 = sub_238F364E0((a1 + 1006), a2);
        goto LABEL_63;
      case 25:
        v12 = (a1 + 1014);
        goto LABEL_59;
      case 26:
        v9 = (a1 + 1015);
        goto LABEL_61;
      case 27:
        v9 = (a1 + 1016);
        goto LABEL_61;
      case 28:
        v9 = (a1 + 1017);
        goto LABEL_61;
      case 29:
        v12 = (a1 + 1018);
        goto LABEL_59;
      case 30:
        v9 = (a1 + 1019);
        goto LABEL_61;
      case 31:
        v9 = (a1 + 1020);
        goto LABEL_61;
      case 32:
        v9 = (a1 + 1021);
LABEL_61:
        v8 = a2;
LABEL_62:
        v7 = sub_2393C5ED0(v8, v9);
        goto LABEL_63;
      case 33:
        v12 = (a1 + 1022);
        goto LABEL_59;
      case 34:
        v10 = (a1 + 1024);
        goto LABEL_27;
      case 35:
        v12 = (a1 + 1026);
        goto LABEL_59;
      case 36:
        v12 = (a1 + 1027);
        goto LABEL_59;
      case 37:
        v12 = (a1 + 1028);
        goto LABEL_59;
      case 38:
        v12 = (a1 + 1029);
        goto LABEL_59;
      case 39:
        v12 = (a1 + 1030);
LABEL_59:
        v7 = sub_2393C5CE4(a2, v12);
        goto LABEL_63;
      case 40:
        v7 = sub_238EA4D5C(a2, (a1 + 1031));
        goto LABEL_63;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v11 = a1 + 1032;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v11 = a1 + 1104;
    }

LABEL_46:
    v7 = sub_238F36BB4(v11, a2);
LABEL_63:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 65531)
  {
    v11 = a1 + 1176;
    goto LABEL_46;
  }

  if (v5 == 65532)
  {
    v13 = (a1 + 1248);
LABEL_43:
    v7 = sub_2393C5FC8(a2, v13);
    goto LABEL_63;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v10 = (a1 + 1252);
LABEL_27:
    v7 = sub_2393C5F70(a2, v10);
    goto LABEL_63;
  }

  return v7 | v6;
}

unint64_t sub_238F036FC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v13, a2, a3);
  if (!v14)
  {
    v4 = *a1;
    if (v4 == 4)
    {
      goto LABEL_3;
    }

    v14 = sub_2393C8140(v13, 0, v4);
    v15 = v5;
    if (v14)
    {
      return sub_2394C38E0(&v13);
    }

    v7 = a1[1];
    if (v7 == 2)
    {
LABEL_3:
      v14 = 0x5C00000587;
      v15 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v14 = sub_2393C8140(v13, 1uLL, v7);
      v15 = v8;
      if (!v14)
      {
        v14 = sub_2393C8140(v13, 2uLL, a1[2]);
        v15 = v9;
        if (!v14)
        {
          v14 = sub_2393C81D4(v13, 3uLL, *(a1 + 1));
          v15 = v10;
          if (!v14)
          {
            v14 = sub_2393C81D4(v13, 4uLL, *(a1 + 2));
            v15 = v11;
            if (!v14)
            {
              v14 = sub_2393C8140(v13, 5uLL, a1[12]);
              v15 = v12;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v13);
}

unint64_t sub_238F037F4(_BYTE *a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 > 2u)
    {
      switch(v10)
      {
        case 3u:
          v6 = a1 + 4;
LABEL_17:
          v4 = sub_2393C5FC8(a2, v6);
          break;
        case 4u:
          v6 = a1 + 8;
          goto LABEL_17;
        case 5u:
          v5 = a1 + 12;
          goto LABEL_12;
      }
    }

    else
    {
      switch(v10)
      {
        case 0u:
          v4 = sub_238EA4D5C(a2, a1);
          break;
        case 1u:
          v4 = sub_238EFF894(a2, a1 + 1);
          break;
        case 2u:
          v5 = a1 + 2;
LABEL_12:
          v4 = sub_2393C5ED0(a2, v5);
          break;
      }
    }

    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F038EC(unsigned __int16 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_2393C818C(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F03944(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v18, a2, a3);
  if (!v19)
  {
    v4 = *a1;
    if (v4 == 4)
    {
      goto LABEL_3;
    }

    v19 = sub_2393C8140(v18, 0, v4);
    v20 = v5;
    if (v19)
    {
      return sub_2394C38E0(&v18);
    }

    v7 = a1[1];
    if (v7 == 4)
    {
LABEL_3:
      v19 = 0x5C00000587;
      v20 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v19 = sub_2393C8140(v18, 1uLL, v7);
      v20 = v8;
      if (!v19)
      {
        v19 = sub_2393C818C(v18, 2uLL, *(a1 + 1));
        v20 = v9;
        if (!v19)
        {
          v19 = sub_2393C818C(v18, 3uLL, *(a1 + 2));
          v20 = v10;
          if (!v19)
          {
            v19 = sub_238F01CB4(a1 + 3, v18, 4uLL);
            v20 = v11;
            if (!v19)
            {
              v19 = sub_238F01CB4(a1 + 5, v18, 5uLL);
              v20 = v12;
              if (!v19)
              {
                v19 = sub_2393C81D4(v18, 6uLL, *(a1 + 4));
                v20 = v13;
                if (!v19)
                {
                  v19 = sub_2393C81D4(v18, 7uLL, *(a1 + 5));
                  v20 = v14;
                  if (!v19)
                  {
                    v19 = sub_2393C818C(v18, 8uLL, *(a1 + 12));
                    v20 = v15;
                    if (!v19)
                    {
                      v19 = sub_238F37028(v18, 9uLL, a1 + 26);
                      v20 = v16;
                      if (!v19)
                      {
                        v19 = sub_238F37028(v18, 0xAuLL, a1 + 28);
                        v20 = v17;
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

  return sub_2394C38E0(&v18);
}

unint64_t sub_238F03AB4(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v14 = a2;
  while (1)
  {
    v12 = 0;
    v4 = sub_2394C37B8(v13, &v12);
    if (v4)
    {
      break;
    }

    if (v12 <= 4u)
    {
      if (v12 <= 1u)
      {
        if (v12)
        {
          v4 = sub_238EA4D5C(a2, (a1 + 1));
        }

        else
        {
          v4 = sub_238EA4D5C(a2, a1);
        }

        goto LABEL_31;
      }

      switch(v12)
      {
        case 2u:
          v8 = (a1 + 2);
          goto LABEL_30;
        case 3u:
          v8 = (a1 + 4);
LABEL_30:
          v4 = sub_2393C5F70(a2, v8);
          break;
        case 4u:
          v6 = (a1 + 6);
LABEL_28:
          v4 = sub_238F01D20(v6, a2);
          break;
      }
    }

    else if (v12 > 7u)
    {
      switch(v12)
      {
        case 8u:
          v8 = (a1 + 24);
          goto LABEL_30;
        case 9u:
          *(a1 + 26) = 1;
          v7 = (a1 + 27);
          goto LABEL_25;
        case 0xAu:
          *(a1 + 28) = 1;
          v7 = (a1 + 29);
LABEL_25:
          v4 = sub_2393C5CE4(a2, v7);
          break;
      }
    }

    else
    {
      switch(v12)
      {
        case 5u:
          v6 = (a1 + 10);
          goto LABEL_28;
        case 6u:
          v5 = (a1 + 16);
          goto LABEL_23;
        case 7u:
          v5 = (a1 + 20);
LABEL_23:
          v4 = sub_2393C5FC8(a2, v5);
          break;
      }
    }

LABEL_31:
    v9 = v4;
    if (v4)
    {
      v10 = v4 & 0xFFFFFFFF00000000;
      return v10 | v9;
    }
  }

  v10 = v4 & 0xFFFFFFFF00000000;
  v9 = v4;
  if (v4 == 33)
  {
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

unint64_t sub_238F03C30(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F37028(v8, 1uLL, a1 + 2);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F37028(v8, 2uLL, a1 + 4);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F03CB4(_WORD *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 == 2)
    {
      a1[2] = 1;
      v5 = a1 + 5;
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_2393C5F70(a2, a1);
        }

        goto LABEL_10;
      }

      a1[1] = 1;
      v5 = a1 + 3;
    }

    v4 = sub_2393C5CE4(a2, v5);
LABEL_10:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F03D78(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v13, a2, a3);
  if (!v14)
  {
    v4 = *a1;
    if (v4 == 1)
    {
      v14 = 0x5C00000587;
      v15 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v14 = sub_2393C8140(v13, 0, v4);
      v15 = v5;
      if (!v14)
      {
        v14 = sub_2393C818C(v13, 1uLL, a1[1]);
        v15 = v6;
        if (!v14)
        {
          v14 = sub_238F01CB4(a1 + 2, v13, 2uLL);
          v15 = v7;
          if (!v14)
          {
            v14 = sub_238F01CB4(a1 + 4, v13, 3uLL);
            v15 = v8;
            if (!v14)
            {
              v14 = sub_2393C8140(v13, 4uLL, *(a1 + 12));
              v15 = v9;
              if (!v14)
              {
                v14 = sub_238F37028(v13, 5uLL, a1 + 13);
                v15 = v10;
                if (!v14)
                {
                  v14 = sub_238F37028(v13, 6uLL, a1 + 15);
                  v15 = v11;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v13);
}

unint64_t sub_238F03E7C(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 <= 2u)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v4 = sub_2393C5F70(a2, (a1 + 2));
          goto LABEL_21;
        }

        if (v10 == 2)
        {
          v5 = (a1 + 4);
LABEL_17:
          v4 = sub_238F01D20(v5, a2);
        }
      }

      else
      {
        v4 = sub_238F03FA8(a2, a1);
      }
    }

    else
    {
      if (v10 <= 4u)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            v4 = sub_2393C5ED0(a2, (a1 + 12));
          }

          goto LABEL_21;
        }

        v5 = (a1 + 8);
        goto LABEL_17;
      }

      if (v10 == 5)
      {
        *(a1 + 13) = 1;
        v6 = (a1 + 14);
        goto LABEL_19;
      }

      if (v10 == 6)
      {
        *(a1 + 15) = 1;
        v6 = (a1 + 16);
LABEL_19:
        v4 = sub_2393C5CE4(a2, v6);
      }
    }

LABEL_21:
    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F03FA8(uint64_t a1, BOOL *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = *a2;
  }

  return v4 | v3;
}

unint64_t sub_238F03FFC(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F04044(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F04044(unint64_t result, unsigned int a2, unsigned __int8 **a3)
{
  if (!*(result + 8))
  {
    v17 = v3;
    v18 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v16 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v16);
    v10 = result;
    if (result)
    {
      v11 = v9;
      v12 = result & 0xFFFFFFFF00000000;
    }

    else if (v8)
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      v10 = 1415;
      while (1)
      {
        v13 = *v7;
        if (v13 == 4)
        {
          v12 = 0x5C00000000;
          goto LABEL_17;
        }

        result = sub_2393C8140(v6, 0x100uLL, v13);
        if (result)
        {
          break;
        }

        ++v7;
        if (!--v8)
        {
          goto LABEL_9;
        }
      }

      v12 = result & 0xFFFFFFFF00000000;
      v11 = v14;
      v10 = result;
    }

    else
    {
LABEL_9:
      result = sub_2393C8DE0(v6, v16);
      v12 = result & 0xFFFFFFFF00000000;
      if (result)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }

      if (result)
      {
        v10 = result;
      }

      else
      {
        v12 = 0;
        v10 = 0;
      }
    }

LABEL_17:
    *(v5 + 8) = v10 | v12;
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_238F0413C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238EFD4A8(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F01CB4(a1 + 2, v7, 1uLL);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F041A8(__int16 *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F01D20(a1 + 2, a2);
    }

    else if (!v8)
    {
      v4 = sub_238EFD714(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F04248(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v10, *a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8364(v10, 0, *a1, *(a1 + 8));
    v12 = v4;
    if (!v11)
    {
      v5 = *(a1 + 16);
      if (v5 == 1)
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v7 = 0x5C00000587;
LABEL_7:
        v11 = v7;
        v12 = v6;
        return sub_2394C38E0(&v10);
      }

      v11 = sub_2393C8140(v10, 1uLL, v5);
      v12 = v8;
      if (!v11)
      {
        v7 = sub_238F01CB4((a1 + 18), v10, 2uLL);
        goto LABEL_7;
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F042EC(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        v4 = sub_238F01D20((a1 + 18), a2);
        break;
      case 1:
        v4 = sub_238F03FA8(a2, (a1 + 16));
        break;
      case 0:
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, a1);
        }

        else
        {
          v4 = 0x500000002BLL;
        }

        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F043D4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v21, a2, a3);
  if (!v22)
  {
    v22 = sub_2393C818C(v21, 0, *a1);
    v23 = v4;
    if (!v22)
    {
      v5 = 0x5C00000587;
      v6 = *(a1 + 2);
      if (v6 == 4)
      {
        goto LABEL_4;
      }

      v22 = sub_2393C8140(v21, 1uLL, v6);
      v23 = v8;
      if (v22)
      {
        return sub_2394C38E0(&v21);
      }

      v10 = *(a1 + 3);
      if (v10 == 4)
      {
LABEL_4:
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
LABEL_5:
        v22 = v5;
        v23 = v7;
        return sub_2394C38E0(&v21);
      }

      v22 = sub_2393C8140(v21, 2uLL, v10);
      v23 = v11;
      if (!v22)
      {
        v22 = sub_2393C818C(v21, 3uLL, a1[2]);
        v23 = v12;
        if (!v22)
        {
          v22 = sub_2393C818C(v21, 4uLL, a1[3]);
          v23 = v13;
          if (!v22)
          {
            v22 = sub_238F01CB4(a1 + 4, v21, 5uLL);
            v23 = v14;
            if (!v22)
            {
              v22 = sub_238F01CB4(a1 + 6, v21, 6uLL);
              v23 = v15;
              if (!v22)
              {
                v22 = sub_2393C81D4(v21, 7uLL, *(a1 + 4));
                v23 = v16;
                if (!v22)
                {
                  v22 = sub_2393C81D4(v21, 8uLL, *(a1 + 5));
                  v23 = v17;
                  if (!v22)
                  {
                    v22 = sub_2393C818C(v21, 9uLL, a1[12]);
                    v23 = v18;
                    if (!v22)
                    {
                      v22 = sub_238F37028(v21, 0xAuLL, a1 + 26);
                      v23 = v19;
                      if (!v22)
                      {
                        v22 = sub_238F37028(v21, 0xBuLL, a1 + 28);
                        v23 = v20;
                        if (!v22)
                        {
                          v5 = sub_2393C8140(v21, 0xCuLL, *(a1 + 30));
                          goto LABEL_5;
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

  return sub_2394C38E0(&v21);
}

unint64_t sub_238F04574(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v15 = a2;
  while (1)
  {
    v13 = 0;
    v4 = sub_2394C37B8(v14, &v13);
    if (v4)
    {
      break;
    }

    switch(v13)
    {
      case 0:
        v5 = a2;
        v6 = a1;
        goto LABEL_12;
      case 1:
        v4 = sub_238EA4D5C(a2, (a1 + 2));
        break;
      case 2:
        v4 = sub_238EA4D5C(a2, (a1 + 3));
        break;
      case 3:
        v6 = (a1 + 4);
        goto LABEL_11;
      case 4:
        v6 = (a1 + 6);
        goto LABEL_11;
      case 5:
        v9 = (a1 + 8);
        goto LABEL_17;
      case 6:
        v9 = (a1 + 12);
LABEL_17:
        v4 = sub_238F01D20(v9, a2);
        break;
      case 7:
        v8 = (a1 + 16);
        goto LABEL_21;
      case 8:
        v8 = (a1 + 20);
LABEL_21:
        v4 = sub_2393C5FC8(a2, v8);
        break;
      case 9:
        v6 = (a1 + 24);
LABEL_11:
        v5 = a2;
LABEL_12:
        v4 = sub_2393C5F70(v5, v6);
        break;
      case 10:
        *(a1 + 26) = 1;
        v7 = (a1 + 27);
        goto LABEL_19;
      case 11:
        *(a1 + 28) = 1;
        v7 = (a1 + 29);
LABEL_19:
        v4 = sub_2393C5CE4(a2, v7);
        break;
      case 12:
        v4 = sub_2393C5ED0(a2, (a1 + 30));
        break;
      default:
        break;
    }

    v10 = v4;
    if (v4)
    {
      v11 = v4 & 0xFFFFFFFF00000000;
      return v11 | v10;
    }
  }

  v11 = v4 & 0xFFFFFFFF00000000;
  v10 = v4;
  if (v4 == 33)
  {
    v10 = 0;
    v11 = 0;
  }

  return v11 | v10;
}

unint64_t sub_238F046C8(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v18, a2, a3);
  if (!v19)
  {
    v19 = sub_2393C818C(v18, 0, *a1);
    v20 = v4;
    if (!v19)
    {
      v5 = *(a1 + 2);
      if (v5 == 1)
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v7 = 0x5C00000587;
LABEL_5:
        v19 = v7;
        v20 = v6;
        return sub_2394C38E0(&v18);
      }

      v19 = sub_2393C8140(v18, 1uLL, v5);
      v20 = v8;
      if (!v19)
      {
        v19 = sub_2393C818C(v18, 2uLL, a1[2]);
        v20 = v9;
        if (!v19)
        {
          v19 = sub_238F01CB4(a1 + 3, v18, 3uLL);
          v20 = v10;
          if (!v19)
          {
            v19 = sub_238F01CB4(a1 + 5, v18, 4uLL);
            v20 = v11;
            if (!v19)
            {
              v19 = sub_2393C8140(v18, 5uLL, *(a1 + 14));
              v20 = v12;
              if (!v19)
              {
                v19 = sub_2393C8140(v18, 6uLL, *(a1 + 15));
                v20 = v13;
                if (!v19)
                {
                  v19 = sub_2393C7E38(v18, 7uLL, *(a1 + 16));
                  v20 = v14;
                  if (!v19)
                  {
                    v19 = sub_2393C7E38(v18, 8uLL, *(a1 + 17));
                    v20 = v15;
                    if (!v19)
                    {
                      v19 = sub_238F37028(v18, 9uLL, a1 + 18);
                      v20 = v16;
                      if (!v19)
                      {
                        v7 = sub_238F37028(v18, 0xAuLL, a1 + 20);
                        goto LABEL_5;
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

  return sub_2394C38E0(&v18);
}

unint64_t sub_238F0482C(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v15 = a2;
  while (1)
  {
    v13 = 0;
    v4 = sub_2394C37B8(v14, &v13);
    if (v4)
    {
      break;
    }

    if (v13 <= 4u)
    {
      if (v13 <= 1u)
      {
        if (!v13)
        {
          v7 = a2;
          v8 = a1;
LABEL_26:
          v4 = sub_2393C5F70(v7, v8);
          goto LABEL_31;
        }

        v4 = sub_238F03FA8(a2, (a1 + 2));
      }

      else
      {
        switch(v13)
        {
          case 2u:
            v8 = (a1 + 4);
            v7 = a2;
            goto LABEL_26;
          case 3u:
            v6 = (a1 + 6);
            goto LABEL_22;
          case 4u:
            v6 = (a1 + 10);
LABEL_22:
            v4 = sub_238F01D20(v6, a2);
            break;
        }
      }
    }

    else if (v13 > 7u)
    {
      switch(v13)
      {
        case 8u:
          v5 = (a1 + 17);
          goto LABEL_30;
        case 9u:
          *(a1 + 18) = 1;
          v5 = (a1 + 19);
          goto LABEL_30;
        case 0xAu:
          *(a1 + 20) = 1;
          v5 = (a1 + 21);
          goto LABEL_30;
      }
    }

    else
    {
      switch(v13)
      {
        case 5u:
          v9 = (a1 + 14);
          goto LABEL_28;
        case 6u:
          v9 = (a1 + 15);
LABEL_28:
          v4 = sub_2393C5ED0(a2, v9);
          break;
        case 7u:
          v5 = (a1 + 16);
LABEL_30:
          v4 = sub_2393C5CE4(a2, v5);
          break;
      }
    }

LABEL_31:
    v10 = v4;
    if (v4)
    {
      v11 = v4 & 0xFFFFFFFF00000000;
      return v11 | v10;
    }
  }

  v11 = v4 & 0xFFFFFFFF00000000;
  v10 = v4;
  if (v4 == 33)
  {
    v10 = 0;
    v11 = 0;
  }

  return v11 | v10;
}

unint64_t sub_238F049A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_238F01CB4(a1, v12, 0);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_2393C818C(v12, 1uLL, *(a1 + 4));
      v14 = v5;
      if (!v13)
      {
        v6 = *(a1 + 6);
        if (v6 == 1)
        {
          v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
          v8 = 0x5C00000587;
LABEL_6:
          v13 = v8;
          v14 = v7;
          return sub_2394C38E0(&v12);
        }

        v13 = sub_2393C8140(v12, 2uLL, v6);
        v14 = v9;
        if (!v13)
        {
          v13 = sub_2393C7E38(v12, 3uLL, *(a1 + 7));
          v14 = v10;
          if (!v13)
          {
            v8 = sub_238F37028(v12, 4uLL, (a1 + 8));
            goto LABEL_6;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F04A78(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v4 = sub_2393C5F70(a2, (a1 + 4));
        }
      }

      else
      {
        v4 = sub_238F01D20(a1, a2);
      }

      goto LABEL_15;
    }

    switch(v9)
    {
      case 2u:
        v4 = sub_238F03FA8(a2, (a1 + 6));
        break;
      case 3u:
        v5 = (a1 + 7);
        goto LABEL_13;
      case 4u:
        *(a1 + 8) = 1;
        v5 = (a1 + 9);
LABEL_13:
        v4 = sub_2393C5CE4(a2, v5);
        break;
    }

LABEL_15:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F04B70(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v4 = *a1;
    if (v4 == 4)
    {
      v10 = 0x5C00000587;
      v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v10 = sub_2393C8140(v9, 0, v4);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F01CB4(a1 + 1, v9, 1uLL);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C81D4(v9, 2uLL, *(a1 + 2));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F04C14(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        v4 = sub_2393C5FC8(a2, (a1 + 8));
        break;
      case 1:
        v4 = sub_238F01D20((a1 + 2), a2);
        break;
      case 0:
        v4 = sub_238EA4D5C(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F04CCC(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C8140(v6, 0, *a1);
    v8 = v4;
  }

  sub_238F04D50(&v6, 1u, a1 + 1);
  sub_238F04E48(&v6, 2u, (a1 + 3));
  sub_238F04F08(&v6, 3u, a1 + 5);
  return sub_2394C38E0(&v6);
}

unint64_t sub_238F04D50(unint64_t result, unsigned int a2, unsigned __int8 **a3)
{
  if (!*(result + 8))
  {
    v17 = v3;
    v18 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v16 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v16);
    v10 = result;
    if (result)
    {
      v11 = v9;
      v12 = result & 0xFFFFFFFF00000000;
    }

    else if (v8)
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      v10 = 1415;
      while (1)
      {
        v13 = *v7;
        if (v13 == 2)
        {
          v12 = 0x5C00000000;
          goto LABEL_17;
        }

        result = sub_2393C8140(v6, 0x100uLL, v13);
        if (result)
        {
          break;
        }

        ++v7;
        if (!--v8)
        {
          goto LABEL_9;
        }
      }

      v12 = result & 0xFFFFFFFF00000000;
      v11 = v14;
      v10 = result;
    }

    else
    {
LABEL_9:
      result = sub_2393C8DE0(v6, v16);
      v12 = result & 0xFFFFFFFF00000000;
      if (result)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }

      if (result)
      {
        v10 = result;
      }

      else
      {
        v12 = 0;
        v10 = 0;
      }
    }

LABEL_17:
    *(v5 + 8) = v10 | v12;
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_238F04E48(unint64_t result, unsigned int a2, uint64_t a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = *(a3 + 8);
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 4 * v8;
      while (1)
      {
        result = sub_2393C81D4(v6, 0x100uLL, *v7);
        if (result)
        {
          break;
        }

        ++v7;
        v11 -= 4;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F04F08(unint64_t result, unsigned int a2, unsigned __int8 **a3)
{
  if (!*(result + 8))
  {
    v12 = v3;
    v13 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v11 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v11);
    if (!result)
    {
      if (!v8)
      {
LABEL_7:
        result = sub_2393C8DE0(v6, v11);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_9;
      }

      while (1)
      {
        result = sub_2393C8140(v6, 0x100uLL, *v7);
        if (result)
        {
          break;
        }

        ++v7;
        if (!--v8)
        {
          goto LABEL_7;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_9:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F04FC4(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 1u)
    {
      if (v9 == 2)
      {
        v5 = (a1 + 80);
        goto LABEL_12;
      }

      if (v9 == 3)
      {
        v5 = (a1 + 152);
        goto LABEL_12;
      }
    }

    else if (v9)
    {
      if (v9 == 1)
      {
        v5 = (a1 + 8);
LABEL_12:
        v4 = sub_238F36BB4(v5, a2);
      }
    }

    else
    {
      v4 = sub_2393C5ED0(a2, a1);
    }

    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F0508C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v16, a2, a3);
  if (!v17)
  {
    v17 = sub_2393C818C(v16, 0, *a1);
    v18 = v4;
    if (!v17)
    {
      v5 = 0x5C00000587;
      v6 = *(a1 + 2);
      if (v6 == 4)
      {
        goto LABEL_4;
      }

      v17 = sub_2393C8140(v16, 1uLL, v6);
      v18 = v8;
      if (v17)
      {
        return sub_2394C38E0(&v16);
      }

      v10 = *(a1 + 3);
      if (v10 == 2)
      {
LABEL_4:
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
LABEL_5:
        v17 = v5;
        v18 = v7;
        return sub_2394C38E0(&v16);
      }

      v17 = sub_2393C8140(v16, 2uLL, v10);
      v18 = v11;
      if (!v17)
      {
        v17 = sub_2393C8140(v16, 3uLL, *(a1 + 4));
        v18 = v12;
        if (!v17)
        {
          v17 = sub_2393C81D4(v16, 4uLL, *(a1 + 2));
          v18 = v13;
          if (!v17)
          {
            v17 = sub_2393C81D4(v16, 5uLL, *(a1 + 3));
            v18 = v14;
            if (!v17)
            {
              v17 = sub_2393C8140(v16, 6uLL, *(a1 + 16));
              v18 = v15;
              if (!v17)
              {
                v5 = sub_2393C8140(v16, 7uLL, *(a1 + 17));
                goto LABEL_5;
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v16);
}

unint64_t sub_238F051B4(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 > 3u)
    {
      if (v10 > 5u)
      {
        if (v10 == 6)
        {
          v6 = (a1 + 16);
          goto LABEL_22;
        }

        if (v10 == 7)
        {
          v6 = (a1 + 17);
          goto LABEL_22;
        }
      }

      else
      {
        if (v10 == 4)
        {
          v5 = (a1 + 8);
          goto LABEL_19;
        }

        if (v10 == 5)
        {
          v5 = (a1 + 12);
LABEL_19:
          v4 = sub_2393C5FC8(a2, v5);
        }
      }
    }

    else
    {
      if (v10 <= 1u)
      {
        if (v10)
        {
          v4 = sub_238EA4D5C(a2, (a1 + 2));
        }

        else
        {
          v4 = sub_2393C5F70(a2, a1);
        }

        goto LABEL_23;
      }

      if (v10 == 2)
      {
        v4 = sub_238EFF894(a2, (a1 + 3));
      }

      else if (v10 == 3)
      {
        v6 = (a1 + 4);
LABEL_22:
        v4 = sub_2393C5ED0(a2, v6);
      }
    }

LABEL_23:
    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F052E4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C818C(v9, 1uLL, a1[1]);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C818C(v9, 2uLL, a1[2]);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F2AA44(v9, 3uLL, a1 + 6);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F05380(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v14 = a2;
  v4 = (a1 + 8);
  v5 = (a1 + 4);
  v6 = (a1 + 2);
  while (1)
  {
    v12 = 0;
    v7 = sub_2394C37B8(v13, &v12);
    if (v7)
    {
      break;
    }

    if (v12 <= 1u)
    {
      v8 = a1;
      if (v12)
      {
        v8 = v6;
        if (v12 != 1)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_10;
    }

    v8 = v5;
    if (v12 == 2)
    {
      goto LABEL_10;
    }

    if (v12 == 3)
    {
      *(a1 + 6) = 1;
      *(a1 + 8) = 0;
      v8 = v4;
LABEL_10:
      v7 = sub_2393C5F70(a2, v8);
    }

LABEL_11:
    v9 = v7;
    if (v7)
    {
      v10 = v7 & 0xFFFFFFFF00000000;
      return v10 | v9;
    }
  }

  v10 = v7 & 0xFFFFFFFF00000000;
  v9 = v7;
  if (v7 == 33)
  {
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

unint64_t sub_238F05464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 7)
  {
    if (v5 > 65528)
    {
      if (v5 > 65531)
      {
        if (v5 == 65532)
        {
          v11 = (a1 + 272);
          goto LABEL_39;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65533)
        {
          return v7 | v6;
        }

        v7 = sub_2393C5F70(a2, (a1 + 276));
        goto LABEL_40;
      }

      if (v5 == 65529)
      {
        v9 = a1 + 128;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65531)
        {
          return v7 | v6;
        }

        v9 = a1 + 200;
      }
    }

    else
    {
      if (v5 <= 9)
      {
        if (v5 == 8)
        {
          v7 = sub_238F056F8(a2, (a1 + 52));
        }

        else
        {
          v7 = sub_238EFD7D0(a2, (a1 + 53));
        }

        goto LABEL_40;
      }

      if (v5 == 10)
      {
        v7 = sub_238F000A4(a2, (a1 + 54));
        goto LABEL_40;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65528)
      {
        return v7 | v6;
      }

      v9 = a1 + 56;
    }

    v7 = sub_238F36BB4(v9, a2);
    goto LABEL_40;
  }

  if (v5 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 != 4)
      {
        v8 = a1 + 36;
        goto LABEL_34;
      }

      v11 = (a1 + 32);
LABEL_39:
      v7 = sub_2393C5FC8(a2, v11);
      goto LABEL_40;
    }

    if (v5 == 6)
    {
      v11 = (a1 + 44);
      goto LABEL_39;
    }

    v7 = sub_2393C6020(a2, (a1 + 48));
LABEL_40:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = a1 + 16;
    }

    else
    {
      v8 = a1 + 24;
    }

    goto LABEL_34;
  }

  if (!v5)
  {
    v10 = a2;
    v8 = a1;
LABEL_35:
    v7 = sub_238F05664(v10, v8);
    goto LABEL_40;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 1)
  {
    v8 = a1 + 8;
LABEL_34:
    v10 = a2;
    goto LABEL_35;
  }

  return v7 | v6;
}

unint64_t sub_238F05664(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 4) == 1)
    {
      *(a2 + 4) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 4) = 1;
    v6 = sub_2393C6020(a1, a2);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F056F8(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 8)
    {
      LOBYTE(v5) = 8;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F05750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v6 = sub_238F05914(a2, a1 + 152);
        goto LABEL_19;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65528)
      {
        return v6 | v5;
      }

      a1 = v3 + 272;
    }

    else if (v4)
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 1)
      {
        v6 = sub_238F05874(a2, v3 + 72);
LABEL_19:
        v5 = v6 & 0xFFFFFFFF00000000;
        return v6 | v5;
      }

      return v6 | v5;
    }

LABEL_18:
    v6 = sub_238F36BB4(a1, a2);
    goto LABEL_19;
  }

  if (v4 <= 65531)
  {
    if (v4 == 65529)
    {
      a1 += 344;
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65531)
      {
        return v6 | v5;
      }

      a1 = v3 + 416;
    }

    goto LABEL_18;
  }

  if (v4 == 65532)
  {
    v6 = sub_2393C5FC8(a2, (a1 + 488));
    goto LABEL_19;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65533)
  {
    v6 = sub_2393C5F70(a2, (v3 + 492));
    goto LABEL_19;
  }

  return v6 | v5;
}

unint64_t sub_238F05874(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 72) == 1)
    {
      *(a2 + 72) = 0;
    }
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 72) = 1;
    v6 = sub_238F06E54(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F05914(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 112) == 1)
    {
      *(a2 + 112) = 0;
    }
  }

  else
  {
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 112) = 1;
    v6 = sub_238F06590(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F059B8(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 3)
    {
      v9 = 0x5C00000587;
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v9 = sub_2393C8140(v8, 0, v4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238EFDC40(v8, 1uLL, a1 + 8);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F05A48(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      *(a1 + 8) = 1;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = sub_2393C61E0(a2, (a1 + 16));
    }

    else if (!v8)
    {
      v4 = sub_238EFD7D0(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F05AFC(__int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C827C(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F05B50(_WORD *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_2393C5E20(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F05BE4(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_238F36DFC(v12, 0, a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_238F36DFC(v12, 1uLL, a1 + 8);
      v14 = v5;
      if (!v13)
      {
        v13 = sub_238F37080(v12, 2uLL, a1 + 16);
        v14 = v6;
        if (!v13)
        {
          v13 = sub_238F37154(v12, 3uLL, a1 + 40);
          v14 = v7;
          if (!v13)
          {
            v13 = sub_238F36DFC(v12, 4uLL, a1 + 104);
            v14 = v8;
            if (!v13)
            {
              v13 = sub_238F371A8(v12, 5uLL, a1 + 112);
              v14 = v9;
              if (!v13)
              {
                v13 = sub_238F1E4D4(v12, 6uLL, a1 + 136);
                v14 = v10;
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F05CC8(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 > 2u)
    {
      if (v10 <= 4u)
      {
        if (v10 == 3)
        {
          *(a1 + 96) = 1;
          *(a1 + 104) = 0u;
          *(a1 + 120) = 0u;
          *(a1 + 136) = 0u;
          *(a1 + 152) = 0;
          v4 = sub_238F06B8C(a1 + 104, a2);
        }

        else if (v10 == 4)
        {
          *(a1 + 160) = 1;
          *(a1 + 164) = 0;
          v4 = sub_238F37278(a2, (a1 + 164));
        }

        goto LABEL_21;
      }

      if (v10 != 5)
      {
        if (v10 == 6)
        {
          v4 = sub_238F00D84(a2, a1 + 248);
        }

        goto LABEL_21;
      }

      *(a1 + 168) = 1;
      sub_2393C5AAC(a1 + 176);
      sub_2393C5ADC(a1 + 176, 0, 0);
      v5 = a1 + 176;
      goto LABEL_18;
    }

    switch(v10)
    {
      case 0u:
        *a1 = 1;
        *(a1 + 4) = 0;
        v6 = (a1 + 4);
LABEL_20:
        v4 = sub_2393C5FC8(a2, v6);
        break;
      case 1u:
        *(a1 + 8) = 1;
        *(a1 + 12) = 0;
        v6 = (a1 + 12);
        goto LABEL_20;
      case 2u:
        *(a1 + 16) = 1;
        sub_2393C5AAC(a1 + 24);
        sub_2393C5ADC(a1 + 24, 0, 0);
        v5 = a1 + 24;
LABEL_18:
        v4 = sub_238F36BB4(v5, a2);
        break;
    }

LABEL_21:
    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F05E54(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_238F06C60(a1, v6, 0);
    v8 = v4;
  }

  sub_238F05EBC(&v6, 1u, (a1 + 144));
  return sub_2394C38E0(&v6);
}

unint64_t sub_238F05EBC(unint64_t result, unsigned int a2, uint64_t *a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 496 * v8;
      while (1)
      {
        result = sub_238F066CC(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 496;
        v11 -= 496;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F05F80(_BYTE *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F36BB4((a1 + 144), a2);
    }

    else if (!v8)
    {
      v4 = sub_238F06CCC(a1, a2);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F06020(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C85FC(v8, 0, *a1, *(a1 + 8));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C7E38(v8, 1uLL, *(a1 + 16));
      v10 = v5;
    }
  }

  sub_238F060B8(&v8, 2u, (a1 + 24));
  if (!v9)
  {
    v9 = sub_2393C8364(v8, 3uLL, *(a1 + 40), *(a1 + 48));
    v10 = v6;
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F060B8(unint64_t result, unsigned int a2, uint64_t *a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 32 * v8;
      while (1)
      {
        result = sub_238F06280(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 32;
        v11 -= 32;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F06178(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        v4 = sub_238F36BB4(a1 + 24, a2);
      }

      else if (v8 == 3)
      {
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, (a1 + 96));
        }

        else
        {
          v4 = 0x500000002BLL;
        }
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C5CE4(a2, (a1 + 16));
      }
    }

    else
    {
      v4 = sub_2393C61E0(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F06280(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C85FC(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C85FC(v7, 1uLL, *(a1 + 16), *(a1 + 24));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F062EC(_OWORD *a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  v4 = a1 + 1;
  while (1)
  {
    v10 = 0;
    v5 = sub_2394C37B8(v11, &v10);
    if (v5)
    {
      break;
    }

    v6 = a1;
    if (!v10)
    {
      goto LABEL_6;
    }

    if (v10 == 1)
    {
      v6 = v4;
LABEL_6:
      v5 = sub_2393C61E0(a2, v6);
    }

    v7 = v5;
    if (v5)
    {
      v8 = v5 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v5 & 0xFFFFFFFF00000000;
  v7 = v5;
  if (v5 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F06390(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C85FC(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238EFDC40(v7, 1uLL, (a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F063FC(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  v4 = (a1 + 24);
  while (1)
  {
    v10 = 0;
    v5 = sub_2394C37B8(v11, &v10);
    if (v5)
    {
      break;
    }

    v6 = a1;
    if (!v10)
    {
      goto LABEL_6;
    }

    if (v10 == 1)
    {
      *(a1 + 16) = 1;
      v6 = v4;
      *v4 = 0;
      v4[1] = 0;
LABEL_6:
      v5 = sub_2393C61E0(a2, v6);
    }

    v7 = v5;
    if (v5)
    {
      v8 = v5 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v5 & 0xFFFFFFFF00000000;
  v7 = v5;
  if (v5 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F064AC(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C818C(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_2393C818C(v12, 1uLL, a1[1]);
      v14 = v5;
      if (!v13)
      {
        v13 = sub_238EFDC40(v12, 2uLL, a1 + 8);
        v14 = v6;
        if (!v13)
        {
          v13 = sub_238EFDC40(v12, 3uLL, a1 + 32);
          v14 = v7;
          if (!v13)
          {
            v13 = sub_238EFDC40(v12, 4uLL, a1 + 56);
            v14 = v8;
            if (!v13)
            {
              v13 = sub_238EFDC40(v12, 5uLL, a1 + 80);
              v14 = v9;
              if (!v13)
              {
                v13 = sub_238F372D4(v12, 6uLL, a1 + 104);
                v14 = v10;
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F06590(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  while (1)
  {
    v11 = 0;
    v4 = sub_2394C37B8(v12, &v11);
    if (v4)
    {
      break;
    }

    if (v11 <= 2u)
    {
      switch(v11)
      {
        case 0u:
          v6 = a2;
          v7 = a1;
LABEL_20:
          v4 = sub_2393C5F70(v6, v7);
          break;
        case 1u:
          v7 = (a1 + 2);
          v6 = a2;
          goto LABEL_20;
        case 2u:
          *(a1 + 8) = 1;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          v5 = (a1 + 16);
          goto LABEL_18;
      }
    }

    else
    {
      if (v11 > 4u)
      {
        if (v11 != 5)
        {
          if (v11 == 6)
          {
            *(a1 + 104) = 1;
            v4 = sub_238EA4D5C(a2, (a1 + 105));
          }

          goto LABEL_21;
        }

        *(a1 + 80) = 1;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        v5 = (a1 + 88);
        goto LABEL_18;
      }

      if (v11 == 3)
      {
        *(a1 + 32) = 1;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        v5 = (a1 + 40);
        goto LABEL_18;
      }

      if (v11 == 4)
      {
        *(a1 + 56) = 1;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        v5 = (a1 + 64);
LABEL_18:
        v4 = sub_2393C61E0(a2, v5);
      }
    }

LABEL_21:
    v8 = v4;
    if (v4)
    {
      v9 = v4 & 0xFFFFFFFF00000000;
      return v9 | v8;
    }
  }

  v9 = v4 & 0xFFFFFFFF00000000;
  v8 = v4;
  if (v4 == 33)
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

unint64_t sub_238F066CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v24, a2, a3);
  if (!v25)
  {
    v25 = sub_2393C85FC(v24, 0, *a1, *(a1 + 8));
    v26 = v4;
    if (!v25)
    {
      v25 = sub_238F064AC((a1 + 16), v24, 1uLL);
      v26 = v5;
      if (!v25)
      {
        v25 = sub_2393C81D4(v24, 2uLL, *(a1 + 128));
        v26 = v6;
        if (!v25)
        {
          v25 = sub_2393C81D4(v24, 3uLL, *(a1 + 132));
          v26 = v7;
          if (!v25)
          {
            v25 = sub_2393C85FC(v24, 4uLL, *(a1 + 136), *(a1 + 144));
            v26 = v8;
            if (!v25)
            {
              v25 = sub_238EFDC40(v24, 5uLL, (a1 + 152));
              v26 = v9;
              if (!v25)
              {
                v25 = sub_238EFDC40(v24, 6uLL, (a1 + 176));
                v26 = v10;
                if (!v25)
                {
                  v25 = sub_238F37348(v24, 7uLL, (a1 + 200));
                  v26 = v11;
                  if (!v25)
                  {
                    v25 = sub_238F37348(v24, 8uLL, (a1 + 224));
                    v26 = v12;
                    if (!v25)
                    {
                      v25 = sub_238EFDC40(v24, 9uLL, (a1 + 248));
                      v26 = v13;
                      if (!v25)
                      {
                        v25 = sub_238EFDC40(v24, 0xAuLL, (a1 + 272));
                        v26 = v14;
                        if (!v25)
                        {
                          v25 = sub_238EFDC40(v24, 0xBuLL, (a1 + 296));
                          v26 = v15;
                          if (!v25)
                          {
                            v25 = sub_238EFDC40(v24, 0xCuLL, (a1 + 320));
                            v26 = v16;
                            if (!v25)
                            {
                              v25 = sub_238EFDC40(v24, 0xDuLL, (a1 + 344));
                              v26 = v17;
                              if (!v25)
                              {
                                v25 = sub_238F36DFC(v24, 0xEuLL, (a1 + 368));
                                v26 = v18;
                                if (!v25)
                                {
                                  v25 = sub_238F37418(v24, 0xFuLL, (a1 + 376));
                                  v26 = v19;
                                  if (!v25)
                                  {
                                    v25 = sub_238F37498(v24, 0x10uLL, (a1 + 424));
                                    v26 = v20;
                                    if (!v25)
                                    {
                                      v25 = sub_238F371A8(v24, 0x11uLL, (a1 + 448));
                                      v26 = v21;
                                      if (!v25)
                                      {
                                        v25 = sub_238F371A8(v24, 0x12uLL, (a1 + 472));
                                        v26 = v22;
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

  return sub_2394C38E0(&v24);
}

unint64_t sub_238F068D0(uint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v16 = a2;
  v4 = a1 + 496;
  while (1)
  {
    v14 = 0;
    v5 = sub_2394C37B8(v15, &v14);
    if (v5)
    {
      break;
    }

    switch(v14)
    {
      case 0:
        v6 = a2;
        v7 = a1;
        goto LABEL_25;
      case 1:
        v5 = sub_238F06590(a1 + 16, a2);
        break;
      case 2:
        v9 = (a1 + 128);
        goto LABEL_14;
      case 3:
        v9 = (a1 + 132);
LABEL_14:
        v5 = sub_2393C5FC8(a2, v9);
        break;
      case 4:
        v7 = (a1 + 136);
        goto LABEL_24;
      case 5:
        *(a1 + 152) = 1;
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        v7 = (a1 + 160);
        goto LABEL_24;
      case 6:
        *(a1 + 176) = 1;
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        v7 = (a1 + 184);
        goto LABEL_24;
      case 7:
        v10 = (a1 + 200);
        goto LABEL_22;
      case 8:
        v10 = (a1 + 280);
        goto LABEL_22;
      case 9:
        *(a1 + 360) = 1;
        *(a1 + 368) = 0;
        *(a1 + 376) = 0;
        v7 = (a1 + 368);
        goto LABEL_24;
      case 10:
        *(a1 + 384) = 1;
        *(a1 + 392) = 0;
        *(a1 + 400) = 0;
        v7 = (a1 + 392);
        goto LABEL_24;
      case 11:
        *(a1 + 408) = 1;
        *(a1 + 416) = 0;
        *(a1 + 424) = 0;
        v7 = (a1 + 416);
        goto LABEL_24;
      case 12:
        *(a1 + 432) = 1;
        *(a1 + 440) = 0;
        *(a1 + 448) = 0;
        v7 = (a1 + 440);
        goto LABEL_24;
      case 13:
        *(a1 + 456) = 1;
        *(a1 + 464) = 0;
        *(a1 + 472) = 0;
        v7 = (a1 + 464);
LABEL_24:
        v6 = a2;
LABEL_25:
        v5 = sub_2393C61E0(v6, v7);
        break;
      case 14:
        *(a1 + 480) = 1;
        *(a1 + 484) = 0;
        v5 = sub_238F37278(a2, (a1 + 484));
        break;
      case 15:
        *(a1 + 488) = 1;
        *v4 = 0u;
        *(v4 + 16) = 0u;
        *(v4 + 32) = 0;
        v5 = sub_238F3756C(a2, v4);
        break;
      case 16:
        v8 = sub_238F37604((a1 + 536));
        v5 = sub_238F36BB4(v8, a2);
        break;
      case 17:
        v10 = (a1 + 616);
        goto LABEL_22;
      case 18:
        v10 = (a1 + 696);
LABEL_22:
        v5 = sub_238F06AB0(a2, v10);
        break;
      default:
        break;
    }

    v11 = v5;
    if (v5)
    {
      v12 = v5 & 0xFFFFFFFF00000000;
      return v12 | v11;
    }
  }

  v12 = v5 & 0xFFFFFFFF00000000;
  v11 = v5;
  if (v5 == 33)
  {
    v11 = 0;
    v12 = 0;
  }

  return v12 | v11;
}

uint64_t sub_238F06AB0(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;
  v3 = (a2 + 8);
  sub_2393C5AAC((a2 + 8));
  sub_2393C5ADC(v4, 0, 0);

  return sub_238F36BB4(v3, a1);
}

unint64_t sub_238F06B08(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F2AA44(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238EFDC40(v8, 1uLL, a1 + 8);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238EFDC40(v8, 2uLL, a1 + 32);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F06B8C(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 == 2)
    {
      *(a1 + 32) = 1;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v5 = (a1 + 40);
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          *a1 = 1;
          *(a1 + 2) = 0;
          v4 = sub_2393C5F70(a2, (a1 + 2));
        }

        goto LABEL_10;
      }

      *(a1 + 8) = 1;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = (a1 + 16);
    }

    v4 = sub_2393C61E0(a2, v5);
LABEL_10:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F06C60(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F37644(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F37644(v7, 1uLL, a1 + 72);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F06CCC(_BYTE *a1, uint64_t a2)
{
  v14[0] = 0;
  v15 = a2;
  v4 = a1 + 72;
  v5 = a1 + 80;
  v6 = a1 + 8;
  while (1)
  {
    v13 = 0;
    v7 = sub_2394C37B8(v14, &v13);
    if (v7)
    {
      break;
    }

    v8 = a1;
    v9 = v6;
    if (!v13)
    {
      goto LABEL_6;
    }

    if (v13 == 1)
    {
      v8 = v4;
      v9 = v5;
LABEL_6:
      *v8 = 1;
      *v9 = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
      v7 = sub_238F376C4(a2, v9);
    }

    v10 = v7;
    if (v7)
    {
      v11 = v7 & 0xFFFFFFFF00000000;
      return v11 | v10;
    }
  }

  v11 = v7 & 0xFFFFFFFF00000000;
  v10 = v7;
  if (v7 == 33)
  {
    v10 = 0;
    v11 = 0;
  }

  return v11 | v10;
}

unint64_t sub_238F06D9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C85FC(v11, 0, *a1, *(a1 + 8));
    v13 = v4;
    if (!v12)
    {
      v12 = sub_238EFDC40(v11, 1uLL, (a1 + 16));
      v13 = v5;
      if (!v12)
      {
        v12 = sub_238EFDC40(v11, 2uLL, (a1 + 40));
        v13 = v6;
        if (!v12)
        {
          v7 = *(a1 + 64);
          if (v7 == 1)
          {
            v8 = 0x5C00000587;
            v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
          }

          else
          {
            v8 = sub_2393C8140(v11, 3uLL, v7);
          }

          v12 = v8;
          v13 = v9;
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F06E54(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 > 1u)
    {
      if (v10 != 2)
      {
        if (v10 == 3)
        {
          v4 = sub_238F03FA8(a2, (a1 + 64));
        }

        goto LABEL_14;
      }

      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      v5 = (a1 + 48);
LABEL_12:
      v6 = a2;
LABEL_13:
      v4 = sub_2393C61E0(v6, v5);
      goto LABEL_14;
    }

    if (!v10)
    {
      v6 = a2;
      v5 = a1;
      goto LABEL_13;
    }

    if (v10 == 1)
    {
      *(a1 + 16) = 1;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      v5 = (a1 + 24);
      goto LABEL_12;
    }

LABEL_14:
    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F06F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v6 = sub_2393C5CE4(a2, (a1 + 73));
        goto LABEL_19;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65528)
      {
        return v6 | v5;
      }

      a1 = v3 + 80;
    }

    else if (v4)
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 1)
      {
        v6 = sub_2393C5ED0(a2, (v3 + 72));
LABEL_19:
        v5 = v6 & 0xFFFFFFFF00000000;
        return v6 | v5;
      }

      return v6 | v5;
    }

LABEL_18:
    v6 = sub_238F36BB4(a1, a2);
    goto LABEL_19;
  }

  if (v4 <= 65531)
  {
    if (v4 == 65529)
    {
      a1 += 152;
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65531)
      {
        return v6 | v5;
      }

      a1 = v3 + 224;
    }

    goto LABEL_18;
  }

  if (v4 == 65532)
  {
    v6 = sub_2393C5FC8(a2, (a1 + 296));
    goto LABEL_19;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65533)
  {
    v6 = sub_2393C5F70(a2, (v3 + 300));
    goto LABEL_19;
  }

  return v6 | v5;
}

unint64_t sub_238F07060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 4)
  {
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          v6 = sub_238F071C8(a2, a1 + 88);
        }

        else
        {
          v6 = sub_238F07260(a2, a1 + 99);
        }

        goto LABEL_26;
      }

      v7 = a1 + 16;
      goto LABEL_25;
    }

    if (v4)
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 1)
      {
        return v6 | v5;
      }

      v6 = sub_238F056F8(a2, (a1 + 8));
    }

    else
    {
      v6 = sub_238EFDEB0(a2, a1);
    }

    goto LABEL_26;
  }

  if (v4 > 65530)
  {
    if (v4 == 65531)
    {
      v7 = a1 + 256;
      goto LABEL_25;
    }

    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 328));
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65533)
      {
        return v6 | v5;
      }

      v6 = sub_2393C5F70(a2, (a1 + 332));
    }

LABEL_26:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 == 5)
  {
    v6 = sub_238EA4DB4(a2, (a1 + 108));
    goto LABEL_26;
  }

  if (v4 == 65528)
  {
    v7 = a1 + 112;
    goto LABEL_25;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65529)
  {
    v7 = a1 + 184;
LABEL_25:
    v6 = sub_238F36BB4(v7, a2);
    goto LABEL_26;
  }

  return v6 | v5;
}

unint64_t sub_238F071C8(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 10) == 1)
    {
      *(a2 + 10) = 0;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *a2 = 0;
    *(a2 + 10) = 1;
    v6 = sub_238F075B4(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F07260(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 8) == 1)
    {
      *(a2 + 8) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1;
    v6 = sub_238F077B8(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F072F4(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F37764(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F37028(v8, 1uLL, a1 + 2);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F372D4(v8, 2uLL, a1 + 4);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F07378(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        *(a1 + 4) = 1;
        v4 = sub_238EA4D5C(a2, (a1 + 5));
        break;
      case 1:
        *(a1 + 2) = 1;
        v4 = sub_2393C5CE4(a2, (a1 + 3));
        break;
      case 0:
        *a1 = 1;
        v4 = sub_238F000A4(a2, (a1 + 1));
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t sub_238F07448(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v9);
  if (!result)
  {
    v7 = *a1;
    v6 = a1[1];
    v10 = 0;
    result = sub_2393C8CE0(a2, 0, 22, &v10);
    if (!result)
    {
      if (v6)
      {
        while (1)
        {
          v8 = *v7;
          if (v8 == 5)
          {
            return 0x5C00000587;
          }

          result = sub_2393C8140(a2, 0x100uLL, v8);
          if (result)
          {
            return result;
          }

          ++v7;
          if (!--v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        result = sub_2393C8DE0(a2, v10);
        if (!result)
        {
          return sub_2393C8DE0(a2, v9);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F07518(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_238F377D8(v9, 0, a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_238F378A4(v9, 1uLL, a1 + 3);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F372D4(v9, 2uLL, a1 + 6);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F378FC(v9, 3uLL, a1 + 8);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F075B4(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 1u)
    {
      if (v9 == 2)
      {
        *(a1 + 6) = 1;
        v4 = sub_238EA4D5C(a2, (a1 + 7));
        goto LABEL_13;
      }

      if (v9 == 3)
      {
        v5 = (a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      if (!v9)
      {
        *a1 = 1;
        *(a1 + 1) = 0;
        v4 = sub_238F10C94(a2, (a1 + 1));
        goto LABEL_13;
      }

      if (v9 == 1)
      {
        *(a1 + 3) = 1;
        *(a1 + 4) = 0;
        v5 = (a1 + 4);
LABEL_10:
        v4 = sub_238F076A4(a2, v5);
      }
    }

LABEL_13:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F076A4(uint64_t a1, char *a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (a2[1] == 1)
    {
      a2[1] = 0;
    }
  }

  else
  {
    *a2 = 256;
    v6 = sub_2393C5CE4(a1, a2);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F07734(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F37910(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F378A4(v8, 1uLL, a1 + 3);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F372D4(v8, 2uLL, a1 + 6);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F077B8(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        *(a1 + 6) = 1;
        v4 = sub_238EA4D5C(a2, (a1 + 7));
        break;
      case 1:
        *(a1 + 3) = 1;
        *(a1 + 4) = 0;
        v4 = sub_238F076A4(a2, (a1 + 4));
        break;
      case 0:
        *a1 = 1;
        *(a1 + 1) = 0;
        v4 = sub_238F0B7F4(a2, (a1 + 1));
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F07890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 7)
  {
    if (v5 > 3)
    {
      if (v5 > 5)
      {
        if (v5 == 6)
        {
          v7 = sub_238F01D20((a1 + 40), a2);
        }

        else
        {
          v7 = sub_238F07BEC(a2, (a1 + 44));
        }
      }

      else if (v5 == 4)
      {
        v7 = sub_238EFF894(a2, (a1 + 32));
      }

      else
      {
        v7 = sub_238F07B58(a2, a1 + 34);
      }

      goto LABEL_41;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v8 = (a1 + 28);
      }

      else
      {
        v8 = (a1 + 30);
      }

      goto LABEL_36;
    }

    if (v5)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 1)
      {
        return v7 | v6;
      }

      v9 = a1 + 14;
      v10 = a2;
    }

    else
    {
      v10 = a2;
      v9 = a1;
    }

    v7 = sub_238F07AC0(v10, v9);
LABEL_41:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 <= 65527)
  {
    if (v5 <= 9)
    {
      if (v5 == 8)
      {
        v7 = sub_238F07C44(a2, (a1 + 45));
      }

      else
      {
        v7 = sub_238F07C44(a2, (a1 + 46));
      }

      goto LABEL_41;
    }

    if (v5 == 10)
    {
      v7 = sub_238F000A4(a2, (a1 + 47));
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 11)
      {
        return v7 | v6;
      }

      v7 = sub_238EA4DB4(a2, (a1 + 48));
    }

    goto LABEL_41;
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v11 = a1 + 56;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v11 = a1 + 128;
    }

LABEL_40:
    v7 = sub_238F36BB4(v11, a2);
    goto LABEL_41;
  }

  if (v5 == 65531)
  {
    v11 = a1 + 200;
    goto LABEL_40;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 272));
    goto LABEL_41;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v8 = (a1 + 276);
LABEL_36:
    v7 = sub_2393C5F70(a2, v8);
    goto LABEL_41;
  }

  return v7 | v6;
}

unint64_t sub_238F07AC0(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 12) == 1)
    {
      *(a2 + 12) = 0;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *a2 = 0;
    *(a2 + 12) = 1;
    v6 = sub_238F07FE4(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F07B58(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 4) == 1)
    {
      *(a2 + 4) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 4) = 1;
    v6 = sub_238F08128(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F07BEC(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 0xC)
    {
      LOBYTE(v5) = 12;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F07C44(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 0xB)
    {
      LOBYTE(v5) = 11;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F07C9C(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F2AA44(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F37028(v8, 1uLL, a1 + 4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F372D4(v8, 2uLL, a1 + 6);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F07D20(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        *(a1 + 6) = 1;
        v4 = sub_238EA4D5C(a2, (a1 + 7));
        break;
      case 1:
        *(a1 + 4) = 1;
        v4 = sub_2393C5CE4(a2, (a1 + 5));
        break;
      case 0:
        *a1 = 1;
        *(a1 + 2) = 0;
        v4 = sub_2393C5F70(a2, (a1 + 2));
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F07DF4(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v4 = *a1;
    if (v4 == 2)
    {
      v10 = 0x5C00000587;
      v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v10 = sub_2393C8140(v9, 0, v4);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C818C(v9, 1uLL, *(a1 + 1));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F372D4(v9, 2uLL, a1 + 4);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F07E98(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        *(a1 + 4) = 1;
        v4 = sub_238EA4D5C(a2, (a1 + 5));
        break;
      case 1:
        v4 = sub_2393C5F70(a2, (a1 + 2));
        break;
      case 0:
        v4 = sub_238EFF894(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F07F60(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F37968(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F378A4(v8, 1uLL, a1 + 6);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F372D4(v8, 2uLL, a1 + 9);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F07FE4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        *(a1 + 9) = 1;
        v4 = sub_238EA4D5C(a2, (a1 + 10));
        break;
      case 1:
        *(a1 + 6) = 1;
        *(a1 + 7) = 0;
        v4 = sub_238F076A4(a2, (a1 + 7));
        break;
      case 0:
        *a1 = 1;
        *(a1 + 2) = 0;
        v4 = sub_238EFD714(a2, (a1 + 2));
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F080BC(__int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C827C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C827C(v7, 1uLL, a1[1]);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F08128(_WORD *a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  v4 = a1 + 1;
  while (1)
  {
    v10 = 0;
    v5 = sub_2394C37B8(v11, &v10);
    if (v5)
    {
      break;
    }

    v6 = a1;
    if (!v10)
    {
      goto LABEL_6;
    }

    if (v10 == 1)
    {
      v6 = v4;
LABEL_6:
      v5 = sub_2393C5E20(a2, v6);
    }

    v7 = v5;
    if (v5)
    {
      v8 = v5 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v5 & 0xFFFFFFFF00000000;
  v7 = v5;
  if (v5 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F081CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 < 0x4000)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v8 = a2;
        v9 = a1;
        goto LABEL_76;
      case 1:
        v9 = (a1 + 1);
        goto LABEL_75;
      case 2:
        v10 = (a1 + 2);
        goto LABEL_81;
      case 3:
        v10 = (a1 + 4);
        goto LABEL_81;
      case 4:
        v10 = (a1 + 6);
        goto LABEL_81;
      case 5:
        v7 = sub_238F000A4(a2, (a1 + 8));
        goto LABEL_82;
      case 6:
        v7 = sub_2393C61E0(a2, (a1 + 16));
        goto LABEL_82;
      case 7:
        v10 = (a1 + 32);
        goto LABEL_81;
      case 8:
        v7 = sub_238EFD7D0(a2, (a1 + 34));
        goto LABEL_82;
      case 15:
        v7 = sub_238EA4DB4(a2, (a1 + 35));
        goto LABEL_82;
      case 16:
        v12 = (a1 + 36);
        goto LABEL_71;
      case 17:
        v10 = (a1 + 38);
        goto LABEL_81;
      case 18:
        v10 = (a1 + 40);
        goto LABEL_81;
      case 19:
        v12 = (a1 + 42);
        goto LABEL_71;
      case 21:
        v10 = (a1 + 44);
        goto LABEL_81;
      case 22:
        v10 = (a1 + 46);
        goto LABEL_81;
      case 23:
        v12 = (a1 + 48);
        goto LABEL_71;
      case 25:
        v10 = (a1 + 50);
        goto LABEL_81;
      case 26:
        v10 = (a1 + 52);
        goto LABEL_81;
      case 27:
        v12 = (a1 + 54);
        goto LABEL_71;
      case 32:
        v10 = (a1 + 56);
        goto LABEL_81;
      case 33:
        v10 = (a1 + 58);
        goto LABEL_81;
      case 34:
        v12 = (a1 + 60);
        goto LABEL_71;
      case 36:
        v10 = (a1 + 62);
        goto LABEL_81;
      case 37:
        v10 = (a1 + 64);
        goto LABEL_81;
      case 38:
        v12 = (a1 + 66);
        goto LABEL_71;
      case 40:
        v10 = (a1 + 68);
        goto LABEL_81;
      case 41:
        v10 = (a1 + 70);
        goto LABEL_81;
      case 42:
        v12 = (a1 + 72);
        goto LABEL_71;
      case 48:
        v10 = (a1 + 74);
        goto LABEL_81;
      case 49:
        v10 = (a1 + 76);
        goto LABEL_81;
      case 50:
        v10 = (a1 + 78);
        goto LABEL_81;
      case 51:
        v10 = (a1 + 80);
        goto LABEL_81;
      case 52:
        v12 = (a1 + 82);
        goto LABEL_71;
      case 54:
        v10 = (a1 + 84);
        goto LABEL_81;
      case 55:
        v10 = (a1 + 86);
        goto LABEL_81;
      case 56:
        v12 = (a1 + 88);
        goto LABEL_71;
      case 58:
        v10 = (a1 + 90);
        goto LABEL_81;
      case 59:
        v10 = (a1 + 92);
        goto LABEL_81;
      case 60:
        v12 = (a1 + 94);
LABEL_71:
        v7 = sub_238F00228(a2, v12);
        goto LABEL_82;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 16394)
  {
    if (v5 > 16387)
    {
      if (v5 <= 16389)
      {
        if (v5 == 16388)
        {
          v10 = (a1 + 102);
        }

        else
        {
          v10 = (a1 + 104);
        }

        goto LABEL_81;
      }

      if (v5 == 16390)
      {
        v10 = (a1 + 106);
        goto LABEL_81;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 16394)
      {
        return v7 | v6;
      }

      v7 = sub_238F36E54(a2, (a1 + 108));
    }

    else
    {
      if (v5 > 16385)
      {
        if (v5 == 16386)
        {
          v9 = (a1 + 99);
        }

        else
        {
          v9 = (a1 + 100);
        }

LABEL_75:
        v8 = a2;
LABEL_76:
        v7 = sub_2393C5ED0(v8, v9);
        goto LABEL_82;
      }

      if (v5 == 0x4000)
      {
        v10 = (a1 + 96);
        goto LABEL_81;
      }

      v7 = sub_238EA4D5C(a2, (a1 + 98));
    }

LABEL_82:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 <= 65527)
  {
    if (v5 <= 16396)
    {
      if (v5 == 16395)
      {
        v10 = (a1 + 110);
      }

      else
      {
        v10 = (a1 + 112);
      }

      goto LABEL_81;
    }

    if (v5 == 16397)
    {
      v10 = (a1 + 114);
      goto LABEL_81;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 16400)
    {
      return v7 | v6;
    }

    v7 = sub_238EFD714(a2, (a1 + 116));
    goto LABEL_82;
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v11 = a1 + 120;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v11 = a1 + 192;
    }

LABEL_85:
    v7 = sub_238F36BB4(v11, a2);
    goto LABEL_82;
  }

  if (v5 == 65531)
  {
    v11 = a1 + 264;
    goto LABEL_85;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 336));
    goto LABEL_82;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v10 = (a1 + 340);
LABEL_81:
    v7 = sub_2393C5F70(a2, v10);
    goto LABEL_82;
  }

  return v7 | v6;
}

unint64_t sub_238F085B8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C8140(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v5 = a1[1];
      if (v5 == 4)
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v7 = 0x5C00000587;
LABEL_5:
        v13 = v7;
        v14 = v6;
        return sub_2394C38E0(&v12);
      }

      v13 = sub_2393C8140(v12, 1uLL, v5);
      v14 = v8;
      if (!v13)
      {
        v13 = sub_2393C818C(v12, 2uLL, *(a1 + 1));
        v14 = v9;
        if (!v13)
        {
          v13 = sub_2393C8140(v12, 3uLL, a1[4]);
          v14 = v10;
          if (!v13)
          {
            v7 = sub_2393C8140(v12, 4uLL, a1[5]);
            goto LABEL_5;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F0868C(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v4 = sub_238EA4D5C(a2, (a1 + 1));
        }
      }

      else
      {
        v4 = sub_2393C5ED0(a2, a1);
      }

      goto LABEL_15;
    }

    switch(v9)
    {
      case 2u:
        v4 = sub_2393C5F70(a2, (a1 + 2));
        break;
      case 3u:
        v5 = (a1 + 4);
        goto LABEL_13;
      case 4u:
        v5 = (a1 + 5);
LABEL_13:
        v4 = sub_238EA4DB4(a2, v5);
        break;
    }

LABEL_15:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F08774(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 2)
    {
      v11 = 0x5C00000587;
      v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v11 = sub_2393C8140(v10, 0, v4);
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C8140(v10, 1uLL, a1[1]);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8140(v10, 2uLL, a1[2]);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 3uLL, a1[3]);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F08830(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v4 = sub_2393C5ED0(a2, a1 + 1);
        }
      }

      else
      {
        v4 = sub_238F08900(a2, a1);
      }

      goto LABEL_13;
    }

    if (v9 == 2)
    {
      v5 = a1 + 2;
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      v5 = a1 + 3;
LABEL_12:
      v4 = sub_238EA4DB4(a2, v5);
    }

LABEL_13:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F08900(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 4)
    {
      LOBYTE(v5) = 2;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F08958(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    if (*a1)
    {
      v11 = sub_2393C8140(v10, 0, *a1);
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C8140(v10, 1uLL, a1[1]);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8140(v10, 2uLL, a1[2]);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 3uLL, a1[3]);
            v12 = v8;
            if (!v11)
            {
              v11 = sub_2393C8140(v10, 4uLL, a1[4]);
              v12 = v9;
            }
          }
        }
      }
    }

    else
    {
      v11 = 0x5C00000587;
      v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F08A2C(char *a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 <= 1u)
    {
      if (!v10)
      {
        v4 = sub_238F08B0C(a2, a1);
        goto LABEL_16;
      }

      if (v10 == 1)
      {
        v6 = a1 + 1;
LABEL_12:
        v4 = sub_2393C5ED0(a2, v6);
      }
    }

    else
    {
      switch(v10)
      {
        case 2u:
          v6 = a1 + 2;
          goto LABEL_12;
        case 3u:
          v5 = a1 + 3;
          goto LABEL_14;
        case 4u:
          v5 = a1 + 4;
LABEL_14:
          v4 = sub_238EA4DB4(a2, v5);
          break;
      }
    }

LABEL_16:
    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F08B0C(uint64_t a1, char *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 == 3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    *a2 = v7;
  }

  return v4 | v3;
}

unint64_t sub_238F08B68(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8140(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C818C(v9, 1uLL, *(a1 + 1));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C8140(v9, 2uLL, a1[4]);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8140(v9, 3uLL, a1[5]);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F08C04(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v4 = sub_2393C5F70(a2, (a1 + 2));
        }
      }

      else
      {
        v4 = sub_2393C5ED0(a2, a1);
      }

      goto LABEL_13;
    }

    if (v9 == 2)
    {
      v5 = (a1 + 4);
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      v5 = (a1 + 5);
LABEL_12:
      v4 = sub_238EA4DB4(a2, v5);
    }

LABEL_13:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}