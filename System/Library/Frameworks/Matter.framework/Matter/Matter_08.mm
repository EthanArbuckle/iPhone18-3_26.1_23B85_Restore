unint64_t sub_238F25D84(uint64_t a1, uint64_t a2)
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

    if (v9 > 3u)
    {
      if (v9 <= 5u)
      {
        if (v9 == 4)
        {
          v4 = sub_2393C61E0(a2, (a1 + 16));
        }

        else if (v9 == 5)
        {
          v4 = sub_238F25768(a1 + 32, a2);
        }
      }

      else
      {
        switch(v9)
        {
          case 6u:
            v4 = sub_238F03FA8(a2, (a1 + 152));
            break;
          case 7u:
            v4 = sub_238F25B84(a1 + 160, a2);
            break;
          case 8u:
            *(a1 + 256) = 1;
            *(a1 + 260) = 0;
            v4 = sub_2393C5FC8(a2, (a1 + 260));
            break;
        }
      }

      goto LABEL_24;
    }

    if (v9 > 1u)
    {
      if (v9 != 2)
      {
        if (v9 == 3)
        {
          v4 = sub_2393C5F70(a2, (a1 + 14));
        }

        goto LABEL_24;
      }

      *(a1 + 8) = 1;
      *(a1 + 10) = 0;
      v5 = (a1 + 10);
      goto LABEL_20;
    }

    if (v9)
    {
      *(a1 + 2) = 1;
      *(a1 + 4) = 0;
      v5 = (a1 + 4);
LABEL_20:
      v4 = sub_238EFD714(a2, v5);
      goto LABEL_24;
    }

    v4 = sub_238EA4D5C(a2, a1);
LABEL_24:
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

unint64_t sub_238F25F28(unsigned __int8 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v14, a2, a3);
  if (!v15)
  {
    v15 = sub_2393C818C(v14, 0, *a1);
    v16 = v6;
    if (!v15)
    {
      v7 = a1[2];
      if (v7 == 2)
      {
        v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v9 = 0x5C00000587;
LABEL_5:
        v15 = v9;
        v16 = v8;
        return sub_2394C38E0(&v14);
      }

      v15 = sub_2393C8140(v14, 1uLL, v7);
      v16 = v10;
      if (!v15)
      {
        v12 = sub_238F38A30(v14, 2uLL, a1 + 8);
        v15 = v12;
        v16 = v13;
        if (*a4 == 1 && !v12)
        {
          v9 = sub_2393C8140(v14, 0xFEuLL, a1[224]);
          goto LABEL_5;
        }
      }
    }
  }

  return sub_2394C38E0(&v14);
}

unint64_t sub_238F25FF8(unsigned __int8 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F25F28(a1, a2, a3, v5);
}

unint64_t sub_238F26028(uint64_t a1, uint64_t a2)
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
        *(a1 + 8) = 1;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        *(a1 + 48) = 0u;
        *(a1 + 64) = 0u;
        *(a1 + 80) = 0u;
        *(a1 + 96) = 0u;
        *(a1 + 112) = 0u;
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
        *(a1 + 160) = 0u;
        *(a1 + 176) = 0u;
        *(a1 + 192) = 0u;
        *(a1 + 208) = 0u;
        *(a1 + 224) = 0u;
        *(a1 + 240) = 0u;
        *(a1 + 256) = 0u;
        *(a1 + 272) = 0;
        v4 = sub_238F25D84(a1 + 16, a2);
      }

      else if (v8 == 254)
      {
        v4 = sub_2393C5ED0(a2, (a1 + 280));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238EFF894(a2, (a1 + 2));
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

unint64_t sub_238F26138(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 1)
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
        v6 = a1[1];
        if (v6 == 1)
        {
          v7 = 0x5C00000587;
          v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        }

        else
        {
          v7 = sub_2393C8140(v10, 1uLL, v6);
        }

        v11 = v7;
        v12 = v8;
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F261E0(BOOL *a1, uint64_t a2)
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
      v4 = sub_238F03FA8(a2, a1 + 1);
    }

    else if (!v8)
    {
      v4 = sub_238F03FA8(a2, a1);
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

unint64_t sub_238F26280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 65528)
  {
    if (v5 > 65531)
    {
      if (v5 == 65532)
      {
        v7 = sub_2393C5FC8(a2, (a1 + 232));
        goto LABEL_23;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v7 = sub_2393C5F70(a2, (a1 + 236));
LABEL_23:
      v6 = v7 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }

    if (v5 == 65529)
    {
      v9 = a1 + 88;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65531)
      {
        return v7 | v6;
      }

      v9 = a1 + 160;
    }

LABEL_18:
    v7 = sub_238F36BB4(v9, a2);
    goto LABEL_23;
  }

  if (v5 <= 2)
  {
    if (!v5)
    {
      v10 = a2;
      v8 = a1;
LABEL_21:
      v7 = sub_238F37278(v10, v8);
      goto LABEL_23;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 == 2)
    {
      v8 = (a1 + 4);
LABEL_20:
      v10 = a2;
      goto LABEL_21;
    }

    return v7 | v6;
  }

  if (v5 == 3)
  {
    v8 = (a1 + 8);
    goto LABEL_20;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v9 = a1 + 16;
    goto LABEL_18;
  }

  return v7 | v6;
}

unint64_t sub_238F263A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (v4)
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 1)
        {
          return v6 | v5;
        }

        v6 = sub_238F00228(a2, (a1 + 80));
      }

      else
      {
        v6 = sub_238EFE808(a2, a1);
      }
    }

    else if (v4 == 2)
    {
      v6 = sub_238EFDEB0(a2, a1 + 84);
    }

    else
    {
      if (v4 == 3)
      {
        v7 = a1 + 96;
        goto LABEL_25;
      }

      v6 = sub_2393C5ED0(a2, (a1 + 168));
    }

    goto LABEL_26;
  }

  if (v4 > 65530)
  {
    if (v4 == 65531)
    {
      v7 = a1 + 376;
      goto LABEL_25;
    }

    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 448));
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65533)
      {
        return v6 | v5;
      }

      v6 = sub_2393C5F70(a2, (a1 + 452));
    }

LABEL_26:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 == 5)
  {
    v6 = sub_238F357FC(a1 + 176, a2);
    goto LABEL_26;
  }

  if (v4 == 65528)
  {
    v7 = a1 + 232;
    goto LABEL_25;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65529)
  {
    v7 = a1 + 304;
LABEL_25:
    v6 = sub_238F36BB4(v7, a2);
    goto LABEL_26;
  }

  return v6 | v5;
}

unint64_t sub_238F26508(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_2393C8140(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F26560(_BYTE *a1, uint64_t a2)
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
      v5 = sub_2393C5ED0(a2, v6);
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

unint64_t sub_238F26604(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C81D4(a2, 1uLL, *a1);
    if (!result)
    {
      result = sub_2393C8140(a2, 0xFEuLL, *(a1 + 4));
      if (!result)
      {
        return sub_2393C8DE0(a2, v6);
      }
    }
  }

  return result;
}

unint64_t sub_238F26680(uint64_t a1, uint64_t a2)
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

    if (v8 == 254)
    {
      v4 = sub_2393C5ED0(a2, (a1 + 4));
    }

    else if (v8 == 1)
    {
      v4 = sub_2393C5FC8(a2, a1);
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

unint64_t sub_238F26724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 65528)
  {
    if (v5 <= 65531)
    {
      if (v5 == 65529)
      {
        v8 = a1 + 160;
        goto LABEL_18;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65531)
      {
        v8 = a1 + 232;
LABEL_18:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_19;
      }

      return v7 | v6;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 304));
      goto LABEL_19;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 65533)
    {
      return v7 | v6;
    }

    v9 = (a1 + 308);
    v10 = a2;
LABEL_14:
    v7 = sub_2393C5F70(v10, v9);
LABEL_19:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 1)
  {
    v10 = a2;
    v9 = a1;
    goto LABEL_14;
  }

  if (v5 == 2)
  {
    v8 = a1 + 8;
    goto LABEL_18;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v8 = a1 + 88;
    goto LABEL_18;
  }

  return v7 | v6;
}

unint64_t sub_238F26820(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C8140(v9, 1uLL, *(a1 + 2));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C81D4(v9, 2uLL, *(a1 + 1));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C85FC(v9, 3uLL, *(a1 + 1), *(a1 + 2));
          v11 = v7;
        }
      }
    }
  }

  sub_238F268CC(&v9, 4u, a1 + 3);
  return sub_2394C38E0(&v9);
}

unint64_t sub_238F268CC(unint64_t result, unsigned int a2, uint64_t *a3)
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

      v11 = 24 * v8;
      while (1)
      {
        result = sub_238F2760C(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 24;
        v11 -= 24;
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

unint64_t sub_238F26990(uint64_t a1, uint64_t a2)
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

    if (v8 <= 1u)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          v4 = sub_2393C5ED0(a2, (a1 + 2));
        }
      }

      else
      {
        v4 = sub_2393C5F70(a2, a1);
      }
    }

    else
    {
      switch(v8)
      {
        case 2u:
          v4 = sub_2393C5FC8(a2, (a1 + 4));
          break;
        case 3u:
          v4 = sub_2393C61E0(a2, (a1 + 8));
          break;
        case 4u:
          v4 = sub_238F36BB4(a1 + 24, a2);
          break;
      }
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

unint64_t sub_238F26A80(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8140(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C818C(v8, 1uLL, *(a1 + 1));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8140(v8, 2uLL, a1[4]);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F26B08(uint64_t a1, uint64_t a2)
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

    switch(v10)
    {
      case 2:
        v6 = (a1 + 4);
        v5 = a2;
        goto LABEL_9;
      case 1:
        v4 = sub_2393C5F70(a2, (a1 + 2));
        break;
      case 0:
        v5 = a2;
        v6 = a1;
LABEL_9:
        v4 = sub_2393C5ED0(v5, v6);
        break;
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

unint64_t sub_238F26BBC(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8140(v7, 1uLL, *(a1 + 2));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F26C28(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5ED0(a2, (a1 + 2));
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

unint64_t sub_238F26CC8(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v11, *a2, a3);
  if (!v12)
  {
    v12 = sub_2393C8140(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v12 = sub_2393C818C(v11, 1uLL, *(a1 + 1));
      v13 = v5;
      if (!v12)
      {
        v12 = sub_2393C8140(v11, 2uLL, a1[4]);
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238F36DFC(v11, 3uLL, a1 + 8);
          v13 = v7;
          if (!v12)
          {
            v12 = sub_238EFDC40(v11, 4uLL, a1 + 16);
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F38A84(v11, 5uLL, a1 + 40);
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F26D98(uint64_t a1, uint64_t a2)
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
          *(a1 + 8) = 1;
          *(a1 + 12) = 0;
          v4 = sub_2393C5FC8(a2, (a1 + 12));
          break;
        case 4u:
          *(a1 + 16) = 1;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          v4 = sub_2393C61E0(a2, (a1 + 24));
          break;
        case 5u:
          *(a1 + 40) = 1;
          sub_2393C5AAC(a1 + 48);
          sub_2393C5ADC(a1 + 48, 0, 0);
          v4 = sub_238F36BB4(a1 + 48, a2);
          break;
      }

      goto LABEL_17;
    }

    switch(v10)
    {
      case 0u:
        v6 = a2;
        v5 = a1;
        goto LABEL_13;
      case 1u:
        v4 = sub_2393C5F70(a2, (a1 + 2));
        break;
      case 2u:
        v5 = (a1 + 4);
        v6 = a2;
LABEL_13:
        v4 = sub_2393C5ED0(v6, v5);
        break;
    }

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

unint64_t sub_238F26ED4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8140(v8, 1uLL, *(a1 + 2));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F1EDEC(v8, 2uLL, a1 + 4);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F26F58(uint64_t a1, uint64_t a2)
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
        *(a1 + 8) = 0;
        v4 = sub_238EFDEB0(a2, a1 + 8);
        break;
      case 1:
        v4 = sub_2393C5ED0(a2, (a1 + 2));
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

unint64_t sub_238F27024(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v9, *a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8140(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_238F13404(v9, 1uLL, a1 + 1);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C818C(v9, 2uLL, *(a1 + 2));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F38B58(v9, 3uLL, a1 + 8);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F270C4(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F70(a2, (a1 + 4));
      }

      else if (v8 == 3)
      {
        *(a1 + 8) = 1;
        sub_2393C5AAC(a1 + 16);
        sub_2393C5ADC(a1 + 16, 0, 0);
        v4 = sub_238F36BB4(a1 + 16, a2);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238F00228(a2, (a1 + 1));
      }
    }

    else
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

unint64_t sub_238F271C4(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8140(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C818C(v10, 1uLL, *(a1 + 1));
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C8140(v10, 2uLL, a1[4]);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C818C(v10, 3uLL, *(a1 + 3));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 4uLL, a1[8]);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F27278(_BYTE *a1, uint64_t a2)
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
        v4 = sub_238EA4DB4(a2, a1);
        goto LABEL_16;
      }

      if (v10 == 1)
      {
        v6 = a1 + 2;
LABEL_14:
        v4 = sub_2393C5F70(a2, v6);
      }
    }

    else
    {
      switch(v10)
      {
        case 2u:
          v5 = a1 + 4;
          goto LABEL_12;
        case 3u:
          v6 = a1 + 6;
          goto LABEL_14;
        case 4u:
          v5 = a1 + 8;
LABEL_12:
          v4 = sub_2393C5ED0(a2, v5);
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

unint64_t sub_238F27358(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v14, a2, a3);
  if (!v15)
  {
    v15 = sub_2393C81D4(v14, 0, *a1);
    v16 = v4;
    if (!v15)
    {
      v15 = sub_238F02628(v14, 1uLL, (a1 + 4));
      v16 = v5;
      if (!v15)
      {
        v15 = sub_238F36FD0(v14, 2uLL, (a1 + 6));
        v16 = v6;
        if (!v15)
        {
          v15 = sub_238F2AA44(v14, 3uLL, (a1 + 8));
          v16 = v7;
          if (!v15)
          {
            v15 = sub_238F2A888(v14, 4uLL, (a1 + 12));
            v16 = v8;
            if (!v15)
            {
              v15 = sub_238F36DFC(v14, 5uLL, (a1 + 16));
              v16 = v9;
              if (!v15)
              {
                v15 = sub_238F38C24(v14, 6uLL, (a1 + 24));
                v16 = v10;
                if (!v15)
                {
                  v15 = sub_238EFEFB0(v14, 7uLL, (a1 + 32));
                  v16 = v11;
                  if (!v15)
                  {
                    v15 = sub_238F16720(v14, 8uLL, (a1 + 48));
                    v16 = v12;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v14);
}

unint64_t sub_238F2746C(uint64_t a1, uint64_t a2)
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

    if (v10 <= 3u)
    {
      if (v10 > 1u)
      {
        if (v10 == 2)
        {
          *(a1 + 6) = 1;
          v4 = sub_2393C5D48(a2, (a1 + 7));
        }

        else if (v10 == 3)
        {
          *(a1 + 8) = 1;
          *(a1 + 10) = 0;
          v4 = sub_2393C5F70(a2, (a1 + 10));
        }

        goto LABEL_24;
      }

      if (!v10)
      {
        v6 = a2;
        v5 = a1;
        goto LABEL_19;
      }

      *(a1 + 4) = 1;
      v4 = sub_2393C5ED0(a2, (a1 + 5));
    }

    else
    {
      if (v10 > 5u)
      {
        switch(v10)
        {
          case 6u:
            *(a1 + 24) = 1;
            *(a1 + 28) = 0;
            v4 = sub_2393C5E78(a2, (a1 + 28));
            break;
          case 7u:
            *(a1 + 32) = 1;
            *(a1 + 40) = 0;
            v4 = sub_2393C5F2C(a2, (a1 + 40));
            break;
          case 8u:
            *(a1 + 48) = 1;
            *(a1 + 56) = 0;
            v4 = sub_2393C5DA0(a2, (a1 + 56));
            break;
        }

        goto LABEL_24;
      }

      if (v10 == 4)
      {
        *(a1 + 12) = 1;
        *(a1 + 14) = 0;
        v4 = sub_2393C5E20(a2, (a1 + 14));
        goto LABEL_24;
      }

      if (v10 == 5)
      {
        *(a1 + 16) = 1;
        *(a1 + 20) = 0;
        v5 = (a1 + 20);
        v6 = a2;
LABEL_19:
        v4 = sub_2393C5FC8(v6, v5);
      }
    }

LABEL_24:
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

unint64_t sub_238F2760C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C81D4(v6, 0, *a1);
    v8 = v4;
  }

  sub_238F27670(&v6, 1u, (a1 + 8));
  return sub_2394C38E0(&v6);
}

unint64_t sub_238F27670(unint64_t result, unsigned int a2, uint64_t *a3)
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

      v11 = v8 << 6;
      while (1)
      {
        result = sub_238F27358(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 64;
        v11 -= 64;
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

unint64_t sub_238F27730(_DWORD *a1, uint64_t a2)
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
      v4 = sub_238F36BB4((a1 + 2), a2);
    }

    else if (!v8)
    {
      v4 = sub_2393C5FC8(a2, a1);
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

unint64_t sub_238F277F8(unsigned __int8 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*a4 != 1)
  {
    sub_2394C389C(&v20, a2, a3);
    if (v21)
    {
      return sub_2394C38E0(&v20);
    }

    v10 = sub_2393C8140(v20, 0, *a1);
    v21 = v10;
    v22 = v15;
LABEL_11:
    if (v10)
    {
      return sub_2394C38E0(&v20);
    }

    v21 = sub_2393C8140(v20, 1uLL, a1[1]);
    v22 = v16;
    if (v21)
    {
      return sub_2394C38E0(&v20);
    }

    v21 = sub_2393C818C(v20, 2uLL, *(a1 + 1));
    v22 = v17;
    if (v21)
    {
      return sub_2394C38E0(&v20);
    }

    v21 = sub_2393C7E38(v20, 3uLL, a1[4]);
    v22 = v18;
    if (v21)
    {
      return sub_2394C38E0(&v20);
    }

    goto LABEL_6;
  }

  v8 = *sub_238DE36D8(a4);
  v9 = a1[6];
  sub_2394C389C(&v20, a2, a3);
  LODWORD(v10) = v21;
  if (!v21)
  {
    v10 = sub_2393C8140(v20, 0, *a1);
    v21 = v10;
    v22 = v11;
  }

  if (v8 == v9)
  {
    goto LABEL_11;
  }

  if (v10)
  {
    return sub_2394C38E0(&v20);
  }

LABEL_6:
  v12 = sub_2393C8140(v20, 4uLL, a1[5]);
  v21 = v12;
  v22 = v13;
  if (*a4 == 1 && !v12)
  {
    v21 = sub_2393C8140(v20, 0xFEuLL, a1[6]);
    v22 = v14;
  }

  return sub_2394C38E0(&v20);
}

unint64_t sub_238F27950(unsigned __int8 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F277F8(a1, a2, a3, v5);
}

unint64_t sub_238F27980(uint64_t a1, uint64_t a2)
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
        if (v10 != 1)
        {
          if (v10 == 2)
          {
            v4 = sub_2393C5F70(a2, (a1 + 2));
          }

          goto LABEL_18;
        }

        v5 = (a1 + 1);
LABEL_16:
        v6 = a2;
      }

      else
      {
        v6 = a2;
        v5 = a1;
      }

      v4 = sub_2393C5ED0(v6, v5);
      goto LABEL_18;
    }

    switch(v10)
    {
      case 3u:
        v4 = sub_2393C5CE4(a2, (a1 + 4));
        break;
      case 4u:
        v5 = (a1 + 5);
        goto LABEL_16;
      case 0xFEu:
        v5 = (a1 + 6);
        goto LABEL_16;
    }

LABEL_18:
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

unint64_t sub_238F27A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 8);
  if (v5 <= 4)
  {
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v8 = a1 + 216;
        }

        else
        {
          v8 = a1 + 224;
        }

        v7 = sub_238EFDEB0(a2, v8);
        goto LABEL_27;
      }

      a1 += 144;
      goto LABEL_26;
    }

    if (!v5)
    {
LABEL_26:
      v7 = sub_238F36BB4(a1, a2);
      goto LABEL_27;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 == 1)
    {
      a1 = v4 + 72;
      goto LABEL_26;
    }
  }

  else
  {
    if (v5 > 65530)
    {
      if (v5 == 65531)
      {
        a1 += 448;
        goto LABEL_26;
      }

      if (v5 == 65532)
      {
        v7 = sub_2393C5FC8(a2, (a1 + 520));
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65533)
        {
          return v7 | v6;
        }

        v7 = sub_2393C5F70(a2, (v4 + 524));
      }

LABEL_27:
      v6 = v7 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }

    if (v5 == 5)
    {
      a1 += 232;
      goto LABEL_26;
    }

    if (v5 == 65528)
    {
      a1 += 304;
      goto LABEL_26;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 == 65529)
    {
      a1 = v4 + 376;
      goto LABEL_26;
    }
  }

  return v7 | v6;
}

unint64_t sub_238F27BBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F04E48(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F27C04(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 4)
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

unint64_t sub_238F27C94(uint64_t a1, uint64_t a2)
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
      v4 = sub_238EA4D5C(a2, a1);
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

unint64_t sub_238F27D34(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 51)
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
        v9 = sub_238F38C7C(v8, 1uLL, a1 + 1);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F27DC0(_BYTE *a1, uint64_t a2)
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
      v4 = sub_238F161A0(a2, a1 + 1);
    }

    else if (!v8)
    {
      v4 = sub_238F27E60(a2, a1);
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

unint64_t sub_238F27E60(uint64_t a1, _BYTE *a2)
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
    if (v5 >= 0x33)
    {
      LOBYTE(v5) = 51;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F27EB8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F38CF0(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F38D18(v7, 1uLL, (a1 + 32));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F27F24(uint64_t a1, uint64_t a2)
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
      v4 = sub_238F2805C(a2, (a1 + 32));
    }

    else if (!v8)
    {
      v4 = sub_238F27FC4(a2, a1);
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

unint64_t sub_238F27FC4(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 24) == 1)
    {
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    v6 = sub_238F36034(a2, a1);
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

unint64_t sub_238F2805C(uint64_t a1, _BYTE *a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (a2[3] == 1)
    {
      a2[3] = 0;
    }
  }

  else
  {
    *a2 = 0x1000000;
    v6 = sub_238F27DC0(a2, a1);
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

unint64_t sub_238F280EC(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C81D4(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F16CC4(v8, 1uLL, (a1 + 1));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F27EB8((a1 + 4), v8, 2uLL);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F28170(_DWORD *a1, uint64_t a2)
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
        v4 = sub_238F27F24((a1 + 4), a2);
        break;
      case 1:
        v4 = sub_238EFDEB0(a2, (a1 + 1));
        break;
      case 0:
        v4 = sub_2393C5FC8(a2, a1);
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

unint64_t sub_238F28228(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C81D4(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C85FC(v7, 1uLL, *(a1 + 8), *(a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F28294(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5FC8(a2, a1);
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

unint64_t sub_238F28334(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C81D4(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v5 = *(a1 + 4);
      if (v5 == 4)
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v7 = 0x5C00000587;
LABEL_5:
        v12 = v7;
        v13 = v6;
        return sub_2394C38E0(&v11);
      }

      v12 = sub_2393C8140(v11, 1uLL, v5);
      v13 = v8;
      if (!v12)
      {
        v12 = sub_238F1EDEC(v11, 2uLL, (a1 + 8));
        v13 = v9;
        if (!v12)
        {
          v7 = sub_238F1EDEC(v11, 3uLL, (a1 + 20));
          goto LABEL_5;
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F283F0(uint64_t a1, uint64_t a2)
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
          v4 = sub_238EA4D5C(a2, (a1 + 4));
        }
      }

      else
      {
        v4 = sub_2393C5FC8(a2, a1);
      }

      goto LABEL_13;
    }

    if (v9 == 2)
    {
      *(a1 + 8) = 1;
      *(a1 + 12) = 0;
      v5 = a1 + 12;
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      *(a1 + 20) = 1;
      *(a1 + 24) = 0;
      v5 = a1 + 24;
LABEL_12:
      v4 = sub_238EFDEB0(a2, v5);
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

unint64_t sub_238F284DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v7 = sub_238F1439C(a2, a1);
        goto LABEL_31;
      case 1:
        v10 = (a1 + 1);
        goto LABEL_30;
      case 2:
        v10 = (a1 + 2);
        goto LABEL_30;
      case 3:
        v10 = (a1 + 3);
        goto LABEL_30;
      case 4:
        v7 = sub_238EFF894(a2, (a1 + 4));
        goto LABEL_31;
      case 5:
        v11 = (a1 + 5);
        goto LABEL_27;
      case 6:
        v11 = (a1 + 6);
LABEL_27:
        v7 = sub_2393C5CE4(a2, v11);
        goto LABEL_31;
      case 7:
        v7 = sub_238EFF894(a2, (a1 + 7));
        goto LABEL_31;
      case 8:
        v10 = (a1 + 8);
        goto LABEL_30;
      case 9:
        v10 = (a1 + 9);
LABEL_30:
        v7 = sub_238EFD7D0(a2, v10);
        goto LABEL_31;
      case 10:
        v7 = sub_238EA4D5C(a2, (a1 + 10));
        goto LABEL_31;
      case 11:
        v7 = sub_238EFD7D0(a2, (a1 + 11));
        goto LABEL_31;
      case 12:
        v9 = (a1 + 12);
        goto LABEL_19;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v8 = a1 + 16;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v8 = a1 + 88;
    }

LABEL_16:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_31;
  }

  if (v5 == 65531)
  {
    v8 = a1 + 160;
    goto LABEL_16;
  }

  if (v5 == 65532)
  {
    v9 = (a1 + 232);
LABEL_19:
    v7 = sub_2393C5FC8(a2, v9);
    goto LABEL_31;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 236));
LABEL_31:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

uint64_t sub_238F2867C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 3)
    {
      return 0x5C00000587;
    }

    else
    {
      result = sub_2393C8140(a2, 0, v6);
      if (!result)
      {
        return sub_2393C8DE0(a2, v7);
      }
    }
  }

  return result;
}

unint64_t sub_238F28700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v8 = (a1 + 80);
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 3)
        {
          return v7 | v6;
        }

        v8 = (v4 + 88);
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 1)
      {
        return v7 | v6;
      }

      v8 = (v4 + 72);
    }

    v7 = sub_2393C5F2C(a2, v8);
    goto LABEL_23;
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      a1 += 96;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      a1 = v4 + 168;
    }

LABEL_22:
    v7 = sub_238F36BB4(a1, a2);
    goto LABEL_23;
  }

  if (v5 == 65531)
  {
    a1 += 240;
    goto LABEL_22;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 312));
    goto LABEL_23;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (v4 + 316));
LABEL_23:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F2882C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8154(a2, 0, *a1);
    if (!result)
    {
      result = sub_238EFDC40(a2, 1uLL, (a1 + 8));
      if (!result)
      {
        result = sub_238F1E4D4(a2, 2uLL, (a1 + 32));
        if (!result)
        {
          return sub_2393C8DE0(a2, v6);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F288BC(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F00D84(a2, a1 + 32);
        break;
      case 1:
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v4 = sub_2393C61E0(a2, (a1 + 16));
        break;
      case 0:
        v4 = sub_2393C5F2C(a2, a1);
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

unint64_t sub_238F28988(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8154(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_238EFDC40(v10, 1uLL, (a1 + 8));
      v12 = v5;
      if (!v11)
      {
        v11 = sub_238F36DFC(v10, 2uLL, (a1 + 32));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_238F36DFC(v10, 3uLL, (a1 + 40));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238F36DFC(v10, 4uLL, (a1 + 48));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F28A3C(uint64_t a1, uint64_t a2)
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
          *(a1 + 8) = 1;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          v4 = sub_2393C61E0(a2, (a1 + 16));
        }
      }

      else
      {
        v4 = sub_2393C5F2C(a2, a1);
      }

      goto LABEL_15;
    }

    switch(v9)
    {
      case 2u:
        *(a1 + 32) = 1;
        *(a1 + 36) = 0;
        v5 = (a1 + 36);
        goto LABEL_13;
      case 3u:
        *(a1 + 40) = 1;
        *(a1 + 44) = 0;
        v5 = (a1 + 44);
        goto LABEL_13;
      case 4u:
        *(a1 + 48) = 1;
        *(a1 + 52) = 0;
        v5 = (a1 + 52);
LABEL_13:
        v4 = sub_2393C5FC8(a2, v5);
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

unint64_t sub_238F28B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 > 65528)
  {
    if (v4 <= 65531)
    {
      if (v4 == 65529)
      {
        v7 = a1 + 176;
        goto LABEL_15;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65531)
      {
        v7 = a1 + 248;
LABEL_15:
        v6 = sub_238F36BB4(v7, a2);
        goto LABEL_18;
      }

      return v6 | v5;
    }

    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 320));
      goto LABEL_18;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 != 65533)
    {
      return v6 | v5;
    }

    v6 = sub_2393C5F70(a2, (a1 + 324));
LABEL_18:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (!v4)
  {
    v6 = sub_238F35AA0(a1, a2);
    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v6 = sub_238F00228(a2, (a1 + 96));
    goto LABEL_18;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65528)
  {
    v7 = a1 + 104;
    goto LABEL_15;
  }

  return v6 | v5;
}

unint64_t sub_238F28C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 65528)
  {
    if (v5 > 65531)
    {
      if (v5 == 65532)
      {
        v7 = sub_2393C5FC8(a2, (a1 + 224));
        goto LABEL_23;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v7 = sub_2393C5F70(a2, (a1 + 228));
LABEL_23:
      v6 = v7 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }

    if (v5 == 65529)
    {
      v9 = a1 + 80;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65531)
      {
        return v7 | v6;
      }

      v9 = a1 + 152;
    }

LABEL_18:
    v7 = sub_238F36BB4(v9, a2);
    goto LABEL_23;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      v10 = a2;
      v8 = a1;
LABEL_21:
      v7 = sub_2393C5ED0(v10, v8);
      goto LABEL_23;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 == 1)
    {
      v8 = (a1 + 1);
LABEL_20:
      v10 = a2;
      goto LABEL_21;
    }

    return v7 | v6;
  }

  if (v5 == 2)
  {
    v8 = (a1 + 2);
    goto LABEL_20;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v9 = a1 + 8;
    goto LABEL_18;
  }

  return v7 | v6;
}

unint64_t sub_238F28D6C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8140(a2, 0, *a1);
    if (!result)
    {
      result = sub_2393C8140(a2, 1uLL, a1[1]);
      if (!result)
      {
        return sub_2393C8DE0(a2, v6);
      }
    }
  }

  return result;
}

unint64_t sub_238F28DE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v9);
  if (!result)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    v10 = 0;
    result = sub_2393C8CE0(a2, 0, 22, &v10);
    if (!result)
    {
      if (v7)
      {
        v8 = 24 * v7;
        while (1)
        {
          result = sub_238F01370(v6, a2, 0x100uLL);
          if (result)
          {
            break;
          }

          v6 += 24;
          v8 -= 24;
          if (!v8)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        result = sub_2393C8DE0(a2, v10);
        if (!result)
        {
          result = sub_2393C8140(a2, 1uLL, *(a1 + 16));
          if (!result)
          {
            result = sub_2393C8364(a2, 2uLL, *(a1 + 24), *(a1 + 32));
            if (!result)
            {
              return sub_2393C8DE0(a2, v9);
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F28EC8(uint64_t a1, uint64_t a2)
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
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, (a1 + 80));
        }

        else
        {
          v4 = 0x500000002BLL;
        }

        break;
      case 1:
        v4 = sub_2393C5ED0(a2, (a1 + 72));
        break;
      case 0:
        v4 = sub_238F36BB4(a1, a2);
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

unint64_t sub_238F28FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        v10 = a2;
        v9 = a1;
LABEL_24:
        v7 = sub_2393C5E20(v10, v9);
        goto LABEL_28;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 1)
      {
        return v7 | v6;
      }

      v9 = (a1 + 2);
    }

    else if (v5 == 2)
    {
      v9 = (a1 + 4);
    }

    else
    {
      if (v5 != 3)
      {
        v7 = sub_2393C5ED0(a2, (a1 + 8));
        goto LABEL_28;
      }

      v9 = (a1 + 6);
    }

    v10 = a2;
    goto LABEL_24;
  }

  if (v5 > 65530)
  {
    if (v5 == 65531)
    {
      v8 = a1 + 232;
      goto LABEL_27;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 304));
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v7 = sub_2393C5F70(a2, (a1 + 308));
    }

LABEL_28:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 5)
  {
    v8 = a1 + 16;
    goto LABEL_27;
  }

  if (v5 == 65528)
  {
    v8 = a1 + 88;
    goto LABEL_27;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65529)
  {
    v8 = a1 + 160;
LABEL_27:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_28;
  }

  return v7 | v6;
}

unint64_t sub_238F29104(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F2A888(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F02628(v7, 1uLL, a1 + 4);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F29170(uint64_t a1, uint64_t a2)
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
      *(a1 + 4) = 1;
      v4 = sub_2393C5ED0(a2, (a1 + 5));
    }

    else if (!v8)
    {
      *a1 = 1;
      *(a1 + 2) = 0;
      v4 = sub_2393C5E20(a2, (a1 + 2));
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

unint64_t sub_238F29228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 65527)
  {
    if (v5 <= 65530)
    {
      if (v5 == 65528)
      {
        v10 = a1 + 16;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65529)
        {
          return v7 | v6;
        }

        v10 = a1 + 88;
      }
    }

    else
    {
      if (v5 != 65531)
      {
        if (v5 == 65532)
        {
          v7 = sub_2393C5FC8(a2, (a1 + 232));
          goto LABEL_26;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 65533)
        {
          v8 = (a1 + 236);
LABEL_14:
          v7 = sub_2393C5F70(a2, v8);
LABEL_26:
          v6 = v7 & 0xFFFFFFFF00000000;
          return v7 | v6;
        }

        return v7 | v6;
      }

      v10 = a1 + 160;
    }

    v7 = sub_238F36BB4(v10, a2);
    goto LABEL_26;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      v11 = a2;
      v9 = a1;
LABEL_21:
      v7 = sub_238F0B738(v11, v9);
      goto LABEL_26;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 1)
    {
      return v7 | v6;
    }

    v9 = (a1 + 4);
LABEL_20:
    v11 = a2;
    goto LABEL_21;
  }

  if (v5 == 2)
  {
    v9 = (a1 + 8);
    goto LABEL_20;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 3)
  {
    v8 = (a1 + 12);
    goto LABEL_14;
  }

  return v7 | v6;
}

unint64_t sub_238F29358(uint64_t a1, uint64_t a2, uint64_t a3)
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
        goto LABEL_72;
      case 1:
        v9 = (a1 + 4);
        goto LABEL_71;
      case 2:
        v7 = sub_238EA4DB4(a2, (a1 + 8));
        goto LABEL_86;
      case 3:
        v14 = (a1 + 10);
        goto LABEL_52;
      case 4:
        v14 = (a1 + 12);
        goto LABEL_52;
      case 5:
        v14 = (a1 + 14);
        goto LABEL_52;
      case 6:
        v14 = (a1 + 16);
        goto LABEL_52;
      case 7:
        v15 = (a1 + 18);
        goto LABEL_81;
      case 8:
        v15 = (a1 + 19);
        goto LABEL_81;
      case 9:
        v7 = sub_238EA4DB4(a2, (a1 + 20));
        goto LABEL_86;
      case 16:
        v17 = (a1 + 21);
        goto LABEL_49;
      case 17:
        v14 = (a1 + 22);
        goto LABEL_52;
      case 18:
        v14 = (a1 + 24);
        goto LABEL_52;
      case 19:
        v14 = (a1 + 26);
        goto LABEL_52;
      case 20:
        v14 = (a1 + 28);
        goto LABEL_52;
      case 21:
        v14 = (a1 + 30);
        goto LABEL_52;
      case 22:
        v14 = (a1 + 32);
        goto LABEL_52;
      case 23:
        v14 = (a1 + 34);
        goto LABEL_52;
      case 24:
        v14 = (a1 + 36);
LABEL_52:
        v7 = sub_2393C5E20(a2, v14);
        goto LABEL_86;
      case 25:
        v17 = (a1 + 38);
LABEL_49:
        v7 = sub_2393C5D48(a2, v17);
        goto LABEL_86;
      case 26:
        v7 = sub_238EA4DB4(a2, (a1 + 39));
        goto LABEL_86;
      case 27:
        v7 = sub_238F01014(a2, (a1 + 40));
        goto LABEL_86;
      case 28:
        v7 = sub_238F29734(a2, (a1 + 41));
        goto LABEL_86;
      case 30:
        v7 = sub_238F2978C(a2, (a1 + 42));
        goto LABEL_86;
      case 32:
        v7 = sub_238EFFAE8(a2, (a1 + 43));
        goto LABEL_86;
      case 33:
        v15 = (a1 + 44);
        goto LABEL_81;
      case 34:
        v15 = (a1 + 45);
        goto LABEL_81;
      case 35:
        v7 = sub_238EFF894(a2, (a1 + 46));
        goto LABEL_86;
      case 36:
        v7 = sub_238EFD714(a2, (a1 + 48));
        goto LABEL_86;
      case 37:
        v7 = sub_238EA4DB4(a2, (a1 + 52));
        goto LABEL_86;
      case 41:
        v7 = sub_238F36E54(a2, (a1 + 54));
        goto LABEL_86;
      case 48:
        v7 = sub_238EFD7D0(a2, (a1 + 56));
        goto LABEL_86;
      case 49:
        v9 = (a1 + 58);
        goto LABEL_71;
      case 50:
        v16 = (a1 + 64);
        goto LABEL_89;
      case 52:
        v12 = (a1 + 68);
        goto LABEL_63;
      case 53:
        v12 = (a1 + 70);
        goto LABEL_63;
      case 54:
        v12 = (a1 + 72);
        goto LABEL_63;
      case 55:
        v12 = (a1 + 74);
        goto LABEL_63;
      case 56:
        v12 = (a1 + 76);
        goto LABEL_63;
      case 57:
        v12 = (a1 + 78);
        goto LABEL_63;
      case 58:
        v15 = (a1 + 80);
        goto LABEL_81;
      case 64:
        v7 = sub_238F000A4(a2, (a1 + 81));
        goto LABEL_86;
      case 65:
        v10 = (a1 + 82);
        goto LABEL_75;
      case 66:
        v7 = sub_238EA4D5C(a2, (a1 + 84));
        goto LABEL_86;
      case 67:
        v7 = sub_238EA4D5C(a2, (a1 + 85));
        goto LABEL_86;
      case 68:
        v7 = sub_238F37278(a2, (a1 + 88));
        goto LABEL_86;
      case 69:
        v7 = sub_238EFE758(a2, (a1 + 92));
        goto LABEL_86;
      case 70:
        v9 = (a1 + 94);
LABEL_71:
        v8 = a2;
LABEL_72:
        v7 = sub_238F0B738(v8, v9);
        goto LABEL_86;
      case 71:
        v7 = sub_238F03FA8(a2, (a1 + 98));
        goto LABEL_86;
      case 72:
        v11 = a1 + 104;
        goto LABEL_85;
      case 73:
        v11 = a1 + 176;
        goto LABEL_85;
      case 74:
        v15 = (a1 + 248);
        goto LABEL_81;
      case 75:
        v15 = (a1 + 249);
        goto LABEL_81;
      case 76:
        v15 = (a1 + 250);
        goto LABEL_81;
      case 77:
        v12 = (a1 + 251);
LABEL_63:
        v7 = sub_238F00228(a2, v12);
        goto LABEL_86;
      case 78:
        v13 = a1 + 256;
        goto LABEL_65;
      case 79:
        v13 = a1 + 280;
LABEL_65:
        v7 = sub_238F10D4C(a2, v13);
        goto LABEL_86;
      case 80:
        v11 = a1 + 304;
        goto LABEL_85;
      case 81:
        v11 = a1 + 376;
        goto LABEL_85;
      case 82:
        v7 = sub_238EFDEB0(a2, a1 + 448);
        goto LABEL_86;
      case 83:
        v15 = (a1 + 456);
LABEL_81:
        v7 = sub_2393C5ED0(a2, v15);
        goto LABEL_86;
      case 84:
        v11 = a1 + 464;
        goto LABEL_85;
      case 85:
        v7 = sub_238F297F4(a2, a1 + 536);
        goto LABEL_86;
      case 86:
        v7 = sub_238F2988C(a2, a1 + 576);
        goto LABEL_86;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v11 = a1 + 584;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v11 = a1 + 656;
    }

LABEL_85:
    v7 = sub_238F36BB4(v11, a2);
LABEL_86:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 65531)
  {
    v11 = a1 + 728;
    goto LABEL_85;
  }

  if (v5 == 65532)
  {
    v16 = (a1 + 800);
LABEL_89:
    v7 = sub_2393C5FC8(a2, v16);
    goto LABEL_86;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v10 = (a1 + 804);
LABEL_75:
    v7 = sub_2393C5F70(a2, v10);
    goto LABEL_86;
  }

  return v7 | v6;
}

unint64_t sub_238F29734(uint64_t a1, _BYTE *a2)
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
    if (v5 >= 0xA)
    {
      LOBYTE(v5) = 2;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F2978C(uint64_t a1, char *a2)
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
      v6 = 1;
    }

    else
    {
      v6 = 0x403010100uLL >> (8 * v5);
    }

    *a2 = v6;
  }

  return v4 | v3;
}

unint64_t sub_238F297F4(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F2B954(a2, a1);
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

unint64_t sub_238F2988C(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
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
    v6 = sub_238F36E54(a1, a2);
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

unint64_t sub_238F29920(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
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
        v9 = sub_2393C827C(v8, 1uLL, a1[1]);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F299AC(_BYTE *a1, uint64_t a2)
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
      v4 = sub_2393C5D48(a2, a1 + 1);
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

unint64_t sub_238F29A4C(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8140(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8140(v8, 1uLL, a1[1]);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8140(v8, 2uLL, a1[2]);
        v10 = v6;
      }
    }
  }

  sub_238F29AE4(&v8, 3u, (a1 + 8));
  return sub_2394C38E0(&v8);
}

unint64_t sub_238F29AE4(unint64_t result, unsigned int a2, uint64_t a3)
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

      v11 = 10 * v8;
      while (1)
      {
        result = sub_238F2BA58(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 5;
        v11 -= 10;
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

unint64_t sub_238F29BA8(_BYTE *a1, uint64_t a2)
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
        v4 = sub_238EA4DB4(a2, a1 + 2);
      }

      else if (v8 == 3)
      {
        v4 = sub_238F36BB4((a1 + 8), a2);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238EA4DB4(a2, a1 + 1);
      }
    }

    else
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

unint64_t sub_238F29C80(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8140(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8140(v8, 1uLL, a1[1]);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8140(v8, 2uLL, a1[2]);
        v10 = v6;
      }
    }
  }

  sub_238F29AE4(&v8, 3u, (a1 + 8));
  return sub_2394C38E0(&v8);
}

unint64_t sub_238F29D14(_BYTE *a1, uint64_t a2)
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
      v4 = sub_238EA4DB4(a2, a1 + 1);
    }

    else if (!v8)
    {
      v4 = sub_238EA4DB4(a2, a1);
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

unint64_t sub_238F29DB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F2ADF0(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F29E08(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F10D4C(a2, a1);
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

unint64_t sub_238F29E9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8364(v8, 0, *a1, *(a1 + 8));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F16CC4(v8, 1uLL, a1 + 16);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C818C(v8, 2uLL, *(a1 + 24));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F29F20(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F70(a2, (a1 + 24));
        break;
      case 1:
        v4 = sub_238EFDEB0(a2, a1 + 16);
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

unint64_t sub_238F2A008(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v7, *a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8140(v7, 0, *a1);
    v9 = v4;
  }

  sub_238F2A08C(&v7, 1u, a1 + 1);
  if (!v8)
  {
    v8 = sub_238F2AA44(v7, 2uLL, a1 + 24);
    v9 = v5;
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F2A08C(unint64_t result, unsigned int a2, uint64_t *a3)
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

      v11 = 8 * v8;
      while (1)
      {
        result = sub_238F35BE0(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 8;
        v11 -= 8;
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

unint64_t sub_238F2A14C(uint64_t a1, uint64_t a2)
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
        *(a1 + 80) = 1;
        *(a1 + 82) = 0;
        v4 = sub_2393C5F70(a2, (a1 + 82));
        break;
      case 1:
        v4 = sub_238F36BB4(a1 + 8, a2);
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

unint64_t sub_238F2A218(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v4 = *a1;
    if (v4 == 3)
    {
      v5 = 0x5C00000587;
      v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v5 = sub_2393C8140(v9, 0, v4);
    }

    v10 = v5;
    v11 = v6;
  }

  sub_238F04E48(&v9, 1u, (a1 + 8));
  if (!v10)
  {
    v10 = sub_238F2AA44(v9, 2uLL, a1 + 24);
    v11 = v7;
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F2A2B4(uint64_t a1, uint64_t a2)
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
        *(a1 + 80) = 1;
        *(a1 + 82) = 0;
        v4 = sub_2393C5F70(a2, (a1 + 82));
        break;
      case 1:
        v4 = sub_238F36BB4(a1 + 8, a2);
        break;
      case 0:
        v4 = sub_238EFD7D0(a2, a1);
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

uint64_t sub_238F2A380(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_238F2A418(a2, 0, a1);
    if (!result)
    {
      v6 = a1[2];
      if (v6 == 2)
      {
        return 0x5C00000587;
      }

      else
      {
        result = sub_2393C8140(a2, 1uLL, v6);
        if (!result)
        {
          return sub_2393C8DE0(a2, v7);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F2A418(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = *sub_238DE36D8(a3);
  if (v5 == 2)
  {
    return 0x5C00000587;
  }

  else
  {
    return sub_2393C8140(a1, a2, v5);
  }
}

unint64_t sub_238F2A48C(_WORD *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  v4 = a1 + 1;
  v5 = a1 + 1;
  while (1)
  {
    v11 = 0;
    v6 = sub_2394C37B8(v12, &v11);
    if (v6)
    {
      break;
    }

    v7 = v4;
    if (v11 == 1)
    {
      goto LABEL_6;
    }

    if (!v11)
    {
      *a1 = 1;
      v7 = v5;
LABEL_6:
      v6 = sub_238F29734(a2, v7);
    }

    v8 = v6;
    if (v6)
    {
      v9 = v6 & 0xFFFFFFFF00000000;
      return v9 | v8;
    }
  }

  v9 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
  if (v6 == 33)
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

unint64_t sub_238F2A544(__int16 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238F2A5AC(a2, 0, a1);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F2A5AC(uint64_t a1, unint64_t a2, __int16 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_6:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 != -32768)
  {
    v5 = sub_2393C827C(a1, a2, v3);
    goto LABEL_6;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F2A600(__int16 *a1, uint64_t a2)
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
      v5 = sub_238F0B738(a2, a1);
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

unint64_t sub_238F2A694(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238F02628(a2, 0, a1);
    if (!result)
    {
      result = sub_2393C8140(a2, 1uLL, a1[2]);
      if (!result)
      {
        return sub_2393C8DE0(a2, v6);
      }
    }
  }

  return result;
}

unint64_t sub_238F2A710(_WORD *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  v4 = a1 + 1;
  v5 = a1 + 1;
  while (1)
  {
    v11 = 0;
    v6 = sub_2394C37B8(v12, &v11);
    if (v6)
    {
      break;
    }

    v7 = v4;
    if (v11 == 1)
    {
      goto LABEL_6;
    }

    if (!v11)
    {
      *a1 = 1;
      v7 = v5;
LABEL_6:
      v6 = sub_238EA4DB4(a2, v7);
    }

    v8 = v6;
    if (v6)
    {
      v9 = v6 & 0xFFFFFFFF00000000;
      return v9 | v8;
    }
  }

  v9 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
  if (v6 == 33)
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t sub_238F2A7C8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 2)
    {
      return 0x5C00000587;
    }

    else
    {
      result = sub_2393C8140(a2, 0, v6);
      if (!result)
      {
        result = sub_238F02628(a2, 1uLL, a1 + 1);
        if (!result)
        {
          result = sub_238F2A888(a2, 2uLL, a1 + 4);
          if (!result)
          {
            result = sub_2393C827C(a2, 3uLL, *(a1 + 4));
            if (!result)
            {
              return sub_2393C8DE0(a2, v7);
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F2A888(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238E0A934(a3);
  return sub_2393C827C(a1, a2, *v5);
}

unint64_t sub_238F2A8E0(uint64_t a1, uint64_t a2)
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
          *(a1 + 1) = 1;
          v4 = sub_238EA4DB4(a2, (a1 + 2));
        }
      }

      else
      {
        v4 = sub_238F29734(a2, a1);
      }

      goto LABEL_13;
    }

    if (v9 == 2)
    {
      *(a1 + 4) = 1;
      *(a1 + 6) = 0;
      v5 = (a1 + 6);
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      v5 = (a1 + 8);
LABEL_12:
      v4 = sub_2393C5E20(a2, v5);
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

unint64_t sub_238F2A9C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238F2AA44(a2, 0, a1);
    if (!result)
    {
      result = sub_2393C818C(a2, 1uLL, *(a1 + 4));
      if (!result)
      {
        return sub_2393C8DE0(a2, v6);
      }
    }
  }

  return result;
}

unint64_t sub_238F2AA44(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238E0A934(a3);
  return sub_2393C818C(a1, a2, *v5);
}

unint64_t sub_238F2AA9C(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  v4 = (a1 + 4);
  v5 = (a1 + 2);
  while (1)
  {
    v11 = 0;
    v6 = sub_2394C37B8(v12, &v11);
    if (v6)
    {
      break;
    }

    v7 = v4;
    if (v11 == 1)
    {
      goto LABEL_6;
    }

    if (!v11)
    {
      *a1 = 1;
      *(a1 + 2) = 0;
      v7 = v5;
LABEL_6:
      v6 = sub_238F36E54(a2, v7);
    }

    v8 = v6;
    if (v6)
    {
      v9 = v6 & 0xFFFFFFFF00000000;
      return v9 | v8;
    }
  }

  v9 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
  if (v6 == 33)
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t sub_238F2AB58(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_238F2ABF0(a2, 0, a1);
    if (!result)
    {
      v6 = a1[2];
      if (v6 == 1)
      {
        return 0x5C00000587;
      }

      else
      {
        result = sub_2393C8140(a2, 1uLL, v6);
        if (!result)
        {
          return sub_2393C8DE0(a2, v7);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F2ABF0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = *sub_238DE36D8(a3);
  if (v5 == 1)
  {
    return 0x5C00000587;
  }

  else
  {
    return sub_2393C8140(a1, a2, v5);
  }
}

unint64_t sub_238F2AC64(_WORD *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  v4 = (a1 + 1);
  v5 = a1 + 1;
  while (1)
  {
    v11 = 0;
    v6 = sub_2394C37B8(v12, &v11);
    if (v6)
    {
      break;
    }

    v7 = v4;
    if (v11 == 1)
    {
      goto LABEL_6;
    }

    if (!v11)
    {
      *a1 = 1;
      v7 = v5;
LABEL_6:
      v6 = sub_238F2978C(a2, v7);
    }

    v8 = v6;
    if (v6)
    {
      v9 = v6 & 0xFFFFFFFF00000000;
      return v9 | v8;
    }
  }

  v9 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
  if (v6 == 33)
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

unint64_t sub_238F2AD1C(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238F2AD98(a2, 0, a1);
    if (!result)
    {
      result = sub_238F2ADF0(a2, 1uLL, (a1 + 32));
      if (!result)
      {
        return sub_2393C8DE0(a2, v6);
      }
    }
  }

  return result;
}

unint64_t sub_238F2AD98(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F2ADF0(a1, a2, v5);
}

unint64_t sub_238F2ADF0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return sub_2393C8364(a1, a2, *a3, *(a3 + 8));
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F2AE08(_BYTE *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  v4 = a1 + 32;
  v5 = a1 + 8;
  while (1)
  {
    v11 = 0;
    v6 = sub_2394C37B8(v12, &v11);
    if (v6)
    {
      break;
    }

    v7 = v4;
    if (v11 == 1)
    {
      goto LABEL_6;
    }

    if (!v11)
    {
      *a1 = 1;
      v5[1] = 0;
      v5[2] = 0;
      v7 = v5;
      *v5 = 0;
LABEL_6:
      v6 = sub_238F10D4C(a2, v7);
    }

    v8 = v6;
    if (v6)
    {
      v9 = v6 & 0xFFFFFFFF00000000;
      return v9 | v8;
    }
  }

  v9 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
  if (v6 == 33)
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

unint64_t sub_238F2AEC8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C8140(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v12 = sub_2393C818C(v11, 1uLL, *(a1 + 1));
      v13 = v5;
      if (!v12)
      {
        v12 = sub_238F1E4D4(v11, 2uLL, a1 + 8);
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238F2A418(v11, 3uLL, a1 + 32);
          v13 = v7;
          if (!v12)
          {
            v12 = sub_238F2A888(v11, 4uLL, a1 + 34);
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F2A888(v11, 5uLL, a1 + 38);
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F2AF94(uint64_t a1, uint64_t a2)
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

    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v4 = sub_2393C5F70(a2, (a1 + 2));
        }

        else if (v9 == 2)
        {
          v4 = sub_238F00D84(a2, a1 + 8);
        }
      }

      else
      {
        v4 = sub_238EA4DB4(a2, a1);
      }

      goto LABEL_17;
    }

    switch(v9)
    {
      case 3u:
        *(a1 + 32) = 1;
        v4 = sub_238F29734(a2, (a1 + 33));
        break;
      case 4u:
        *(a1 + 34) = 1;
        *(a1 + 36) = 0;
        v5 = (a1 + 36);
        goto LABEL_16;
      case 5u:
        *(a1 + 38) = 1;
        *(a1 + 40) = 0;
        v5 = (a1 + 40);
LABEL_16:
        v4 = sub_2393C5E20(a2, v5);
        break;
    }

LABEL_17:
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

unint64_t sub_238F2B0B4(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_238F2ADF0(v12, 0, a1);
    v14 = v4;
    if (!v13)
    {
      v5 = a1[24];
      if (v5 == 2)
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v7 = 0x5C00000587;
LABEL_5:
        v13 = v7;
        v14 = v6;
        goto LABEL_8;
      }

      v13 = sub_2393C8140(v12, 1uLL, v5);
      v14 = v8;
      if (!v13)
      {
        v13 = sub_238EFDC40(v12, 2uLL, a1 + 32);
        v14 = v9;
        if (!v13)
        {
          v7 = sub_238F1E4D4(v12, 3uLL, a1 + 56);
          goto LABEL_5;
        }
      }
    }
  }

LABEL_8:
  sub_238F2B19C(&v12, 4u, (a1 + 80));
  if (!v13)
  {
    v13 = sub_238F378FC(v12, 5uLL, a1 + 96);
    v14 = v10;
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F2B19C(unint64_t result, unsigned int a2, uint64_t a3)
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

      v11 = 48 * v8;
      while (1)
      {
        result = sub_238F2AEC8(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 48;
        v11 -= 48;
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

unint64_t sub_238F2B260(uint64_t a1, uint64_t a2)
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

    if (v8 > 2u)
    {
      switch(v8)
      {
        case 3u:
          v4 = sub_238F00D84(a2, a1 + 56);
          break;
        case 4u:
          v4 = sub_238F36BB4(a1 + 80, a2);
          break;
        case 5u:
          v4 = sub_238F076A4(a2, (a1 + 152));
          break;
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238F29734(a2, (a1 + 24));
      }

      else if (v8 == 2)
      {
        *(a1 + 32) = 1;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        v4 = sub_2393C61E0(a2, (a1 + 40));
      }
    }

    else
    {
      v4 = sub_238F10D4C(a2, a1);
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

unint64_t sub_238F2B37C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_238F2ADF0(v12, 0, a1);
    v14 = v4;
    if (!v13)
    {
      if (a1[24])
      {
        v13 = sub_2393C8140(v12, 1uLL, a1[24]);
        v14 = v6;
        if (v13)
        {
          return sub_2394C38E0(&v12);
        }

        v13 = sub_238F1EE44(v12, 2uLL, a1 + 32);
        v14 = v7;
        if (v13)
        {
          return sub_2394C38E0(&v12);
        }

        v13 = sub_238F2A888(v12, 3uLL, a1 + 64);
        v14 = v8;
        if (v13)
        {
          return sub_2394C38E0(&v12);
        }

        v13 = sub_238F2A888(v12, 4uLL, a1 + 68);
        v14 = v9;
        if (v13)
        {
          return sub_2394C38E0(&v12);
        }

        v10 = sub_238F378FC(v12, 5uLL, a1 + 72);
      }

      else
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v10 = 0x5C00000587;
      }

      v13 = v10;
      v14 = v11;
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F2B464(uint64_t a1, uint64_t a2)
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
      if (v9 == 3)
      {
        *(a1 + 64) = 1;
        *(a1 + 66) = 0;
        v5 = (a1 + 66);
      }

      else
      {
        if (v9 != 4)
        {
          if (v9 == 5)
          {
            v4 = sub_238F076A4(a2, (a1 + 72));
          }

          goto LABEL_17;
        }

        *(a1 + 68) = 1;
        *(a1 + 70) = 0;
        v5 = (a1 + 70);
      }

      v4 = sub_2393C5E20(a2, v5);
    }

    else if (v9)
    {
      if (v9 == 1)
      {
        v4 = sub_238F2B58C(a2, (a1 + 24));
      }

      else if (v9 == 2)
      {
        *(a1 + 32) = 1;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v4 = sub_238F0BA3C(a2, a1 + 40);
      }
    }

    else
    {
      v4 = sub_238F10D4C(a2, a1);
    }

LABEL_17:
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

unint64_t sub_238F2B58C(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    if ((*a2 + 2) > 8u)
    {
      v5 = 0;
    }

    else
    {
      v5 = byte_239590733[(*a2 + 2)];
    }

    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F2B600(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    if (*a1)
    {
      v9 = sub_2393C8140(v8, 0, *a1);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8140(v8, 1uLL, a1[1]);
        v10 = v6;
        if (!v9)
        {
          v9 = sub_2393C818C(v8, 2uLL, *(a1 + 1));
          v10 = v7;
        }
      }
    }

    else
    {
      v9 = 0x5C00000587;
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F2B6A4(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F36E54(a2, (a1 + 2));
        break;
      case 1:
        v4 = sub_2393C5ED0(a2, (a1 + 1));
        break;
      case 0:
        v4 = sub_238F2B58C(a2, a1);
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

unint64_t sub_238F2B75C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        v10 = sub_2393C8140(v9, 1uLL, a1[1]);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C818C(v9, 2uLL, *(a1 + 1));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F2B800(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F36E54(a2, (a1 + 2));
        break;
      case 1:
        v4 = sub_2393C5ED0(a2, (a1 + 1));
        break;
      case 0:
        v4 = sub_238F29734(a2, a1);
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

unint64_t sub_238F2B8B8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8140(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C8364(v9, 1uLL, *(a1 + 1), *(a1 + 2));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C81D4(v9, 2uLL, *(a1 + 6));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C81D4(v9, 3uLL, *(a1 + 7));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F2B954(uint64_t a1, uint64_t a2)
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
          if (sub_2393C5C40(a2) == 16)
          {
            v4 = sub_2393C60CC(a2, (a1 + 8));
          }

          else
          {
            v4 = 0x500000002BLL;
          }
        }
      }

      else
      {
        v4 = sub_2393C5ED0(a2, a1);
      }

      goto LABEL_14;
    }

    if (v9 == 2)
    {
      v5 = (a1 + 24);
      goto LABEL_13;
    }

    if (v9 == 3)
    {
      v5 = (a1 + 28);
LABEL_13:
      v4 = sub_2393C5FC8(a2, v5);
    }

LABEL_14:
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

unint64_t sub_238F2BA58(__int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F2A5AC(v8, 1uLL, a1 + 1);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F2A5AC(v8, 2uLL, a1 + 3);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F2BADC(_WORD *a1, uint64_t a2)
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
      v5 = a1 + 3;
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

      v5 = a1 + 1;
    }

    v4 = sub_238F0B738(a2, v5);
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

unint64_t sub_238F2BB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        v6 = sub_238EFF894(a2, a1);
        goto LABEL_21;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 1)
      {
        v6 = sub_238F01014(a2, (a1 + 1));
LABEL_21:
        v5 = v6 & 0xFFFFFFFF00000000;
        return v6 | v5;
      }

      return v6 | v5;
    }

    if (v4 == 2)
    {
      v6 = sub_238EFF894(a2, (a1 + 2));
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

unint64_t sub_238F2BCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 1)
        {
          if (sub_2393C5C40(a2) == 16)
          {
            v7 = sub_2393C60CC(a2, (a1 + 16));
          }

          else
          {
            v7 = 0x500000002BLL;
          }

          goto LABEL_29;
        }

        return v7 | v6;
      }

      v7 = sub_2393C61E0(a2, a1);
    }

    else
    {
      if (v5 == 2)
      {
        v10 = (a1 + 32);
LABEL_24:
        v7 = sub_2393C5F70(a2, v10);
        goto LABEL_29;
      }

      if (v5 != 3)
      {
        v9 = a1 + 40;
LABEL_26:
        v7 = sub_238EFD658(a2, v9);
        goto LABEL_29;
      }

      v7 = sub_2393C5CE4(a2, (a1 + 34));
    }

LABEL_29:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 > 65530)
  {
    if (v5 == 65531)
    {
      v8 = a1 + 216;
      goto LABEL_28;
    }

    if (v5 != 65532)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v10 = (a1 + 292);
      goto LABEL_24;
    }

    v7 = sub_2393C5FC8(a2, (a1 + 288));
    goto LABEL_29;
  }

  if (v5 == 5)
  {
    v9 = a1 + 56;
    goto LABEL_26;
  }

  if (v5 == 65528)
  {
    v8 = a1 + 72;
    goto LABEL_28;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65529)
  {
    v8 = a1 + 144;
LABEL_28:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_29;
  }

  return v7 | v6;
}

unint64_t sub_238F2BE44(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v7 = sub_238F161A0(a2, (a1 + 4));
        goto LABEL_87;
      case 2:
        v7 = sub_238F0BA3C(a2, a1 + 8);
        goto LABEL_87;
      case 3:
        v9 = (a1 + 32);
        goto LABEL_61;
      case 4:
        v13 = a1 + 40;
        goto LABEL_73;
      case 5:
        v15 = a1 + 56;
        goto LABEL_54;
      case 6:
        v7 = sub_2393C5F2C(a2, (a1 + 80));
        goto LABEL_87;
      case 7:
        v11 = a1 + 88;
        goto LABEL_64;
      case 8:
        v11 = a1 + 160;
        goto LABEL_64;
      case 9:
        v14 = a1 + 232;
        goto LABEL_39;
      case 10:
        v9 = (a1 + 240);
        goto LABEL_61;
      case 11:
        v9 = (a1 + 244);
        goto LABEL_61;
      case 12:
        v9 = (a1 + 248);
        goto LABEL_61;
      case 13:
        v7 = sub_238F00228(a2, (a1 + 252));
        goto LABEL_87;
      case 14:
        v10 = (a1 + 254);
        goto LABEL_71;
      case 15:
        v10 = (a1 + 256);
        goto LABEL_71;
      case 16:
        v10 = (a1 + 258);
        goto LABEL_71;
      case 17:
        v10 = (a1 + 260);
        goto LABEL_71;
      case 18:
        v10 = (a1 + 262);
        goto LABEL_71;
      case 19:
        v10 = (a1 + 264);
        goto LABEL_71;
      case 20:
        v10 = (a1 + 266);
        goto LABEL_71;
      case 21:
        v10 = (a1 + 268);
        goto LABEL_71;
      case 22:
        v12 = (a1 + 272);
        goto LABEL_86;
      case 23:
        v12 = (a1 + 276);
        goto LABEL_86;
      case 24:
        v12 = (a1 + 280);
        goto LABEL_86;
      case 25:
        v12 = (a1 + 284);
        goto LABEL_86;
      case 26:
        v12 = (a1 + 288);
        goto LABEL_86;
      case 27:
        v12 = (a1 + 292);
        goto LABEL_86;
      case 28:
        v12 = (a1 + 296);
        goto LABEL_86;
      case 29:
        v12 = (a1 + 300);
        goto LABEL_86;
      case 30:
        v12 = (a1 + 304);
        goto LABEL_86;
      case 31:
        v12 = (a1 + 308);
        goto LABEL_86;
      case 32:
        v12 = (a1 + 312);
        goto LABEL_86;
      case 33:
        v12 = (a1 + 316);
        goto LABEL_86;
      case 34:
        v12 = (a1 + 320);
        goto LABEL_86;
      case 35:
        v12 = (a1 + 324);
        goto LABEL_86;
      case 36:
        v12 = (a1 + 328);
        goto LABEL_86;
      case 37:
        v12 = (a1 + 332);
        goto LABEL_86;
      case 38:
        v12 = (a1 + 336);
        goto LABEL_86;
      case 39:
        v12 = (a1 + 340);
        goto LABEL_86;
      case 40:
        v12 = (a1 + 344);
        goto LABEL_86;
      case 41:
        v12 = (a1 + 348);
        goto LABEL_86;
      case 42:
        v12 = (a1 + 352);
        goto LABEL_86;
      case 43:
        v12 = (a1 + 356);
        goto LABEL_86;
      case 44:
        v12 = (a1 + 360);
        goto LABEL_86;
      case 45:
        v12 = (a1 + 364);
        goto LABEL_86;
      case 46:
        v12 = (a1 + 368);
        goto LABEL_86;
      case 47:
        v12 = (a1 + 372);
        goto LABEL_86;
      case 48:
        v12 = (a1 + 376);
        goto LABEL_86;
      case 49:
        v12 = (a1 + 380);
        goto LABEL_86;
      case 50:
        v12 = (a1 + 384);
        goto LABEL_86;
      case 51:
        v12 = (a1 + 388);
        goto LABEL_86;
      case 52:
        v12 = (a1 + 392);
        goto LABEL_86;
      case 53:
        v12 = (a1 + 396);
        goto LABEL_86;
      case 54:
        v12 = (a1 + 400);
        goto LABEL_86;
      case 55:
        v12 = (a1 + 404);
        goto LABEL_86;
      case 56:
        v13 = a1 + 408;
        goto LABEL_73;
      case 57:
        v13 = a1 + 424;
        goto LABEL_73;
      case 58:
        v14 = a1 + 440;
LABEL_39:
        v7 = sub_238EFDEB0(a2, v14);
        goto LABEL_87;
      case 59:
        v7 = sub_238F2C1A0(a2, a1 + 448);
        goto LABEL_87;
      case 60:
        v15 = a1 + 456;
LABEL_54:
        v7 = sub_238F10D4C(a2, v15);
        goto LABEL_87;
      case 61:
        v7 = sub_238F2C234(a2, a1 + 480);
        goto LABEL_87;
      case 62:
        v11 = a1 + 496;
        goto LABEL_64;
      case 63:
        v13 = a1 + 568;
LABEL_73:
        v7 = sub_238EFD658(a2, v13);
        goto LABEL_87;
      case 64:
        v9 = (a1 + 584);
LABEL_61:
        v8 = a2;
LABEL_62:
        v7 = sub_238EFD714(v8, v9);
        goto LABEL_87;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v11 = a1 + 592;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v11 = a1 + 664;
    }

LABEL_64:
    v7 = sub_238F36BB4(v11, a2);
LABEL_87:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 65531)
  {
    v11 = a1 + 736;
    goto LABEL_64;
  }

  if (v5 == 65532)
  {
    v12 = (a1 + 808);
LABEL_86:
    v7 = sub_2393C5FC8(a2, v12);
    goto LABEL_87;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v10 = (a1 + 812);
LABEL_71:
    v7 = sub_2393C5F70(a2, v10);
    goto LABEL_87;
  }

  return v7 | v6;
}

unint64_t sub_238F2C1A0(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F01D20(a2, a1);
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

unint64_t sub_238F2C234(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F2C83C(a2, a1);
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

unint64_t sub_238F2C2CC(_BYTE *a1, uint64_t a2)
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
      v5 = sub_238EFF894(a2, a1);
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

unint64_t sub_238F2C360(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v19, a2, a3);
  if (!v20)
  {
    v20 = sub_2393C8154(v19, 0, *a1);
    v21 = v4;
    if (!v20)
    {
      v20 = sub_2393C81D4(v19, 1uLL, *(a1 + 8));
      v21 = v5;
      if (!v20)
      {
        v20 = sub_2393C818C(v19, 2uLL, *(a1 + 12));
        v21 = v6;
        if (!v20)
        {
          v20 = sub_2393C81D4(v19, 3uLL, *(a1 + 16));
          v21 = v7;
          if (!v20)
          {
            v20 = sub_2393C81D4(v19, 4uLL, *(a1 + 20));
            v21 = v8;
            if (!v20)
            {
              v20 = sub_2393C8140(v19, 5uLL, *(a1 + 24));
              v21 = v9;
              if (!v20)
              {
                v20 = sub_238F38D40(v19, 6uLL, (a1 + 25));
                v21 = v10;
                if (!v20)
                {
                  v20 = sub_238F38D40(v19, 7uLL, (a1 + 27));
                  v21 = v11;
                  if (!v20)
                  {
                    v20 = sub_2393C8140(v19, 8uLL, *(a1 + 29));
                    v21 = v12;
                    if (!v20)
                    {
                      v20 = sub_2393C8140(v19, 9uLL, *(a1 + 30));
                      v21 = v13;
                      if (!v20)
                      {
                        v20 = sub_2393C7E38(v19, 0xAuLL, *(a1 + 31));
                        v21 = v14;
                        if (!v20)
                        {
                          v20 = sub_2393C7E38(v19, 0xBuLL, *(a1 + 32));
                          v21 = v15;
                          if (!v20)
                          {
                            v20 = sub_2393C7E38(v19, 0xCuLL, *(a1 + 33));
                            v21 = v16;
                            if (!v20)
                            {
                              v20 = sub_2393C7E38(v19, 0xDuLL, *(a1 + 34));
                              v21 = v17;
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

  return sub_2394C38E0(&v19);
}

unint64_t sub_238F2C4EC(uint64_t a1, uint64_t a2)
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

    switch(v12)
    {
      case 0:
        v4 = sub_2393C5F2C(a2, a1);
        break;
      case 1:
        v6 = (a1 + 8);
        goto LABEL_13;
      case 2:
        v4 = sub_2393C5F70(a2, (a1 + 12));
        break;
      case 3:
        v6 = (a1 + 16);
        goto LABEL_13;
      case 4:
        v6 = (a1 + 20);
LABEL_13:
        v4 = sub_2393C5FC8(a2, v6);
        break;
      case 5:
        v7 = (a1 + 24);
        goto LABEL_21;
      case 6:
        v8 = (a1 + 25);
        goto LABEL_17;
      case 7:
        v8 = (a1 + 27);
LABEL_17:
        v4 = sub_238F2C628(a2, v8);
        break;
      case 8:
        v7 = (a1 + 29);
        goto LABEL_21;
      case 9:
        v7 = (a1 + 30);
LABEL_21:
        v4 = sub_2393C5ED0(a2, v7);
        break;
      case 10:
        v5 = (a1 + 31);
        goto LABEL_19;
      case 11:
        v5 = (a1 + 32);
        goto LABEL_19;
      case 12:
        v5 = (a1 + 33);
        goto LABEL_19;
      case 13:
        v5 = (a1 + 34);
LABEL_19:
        v4 = sub_2393C5CE4(a2, v5);
        break;
      default:
        break;
    }

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

unint64_t sub_238F2C628(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_2393C5D48(a1, a2);
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
      if (v6 == 128)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (v6 == 128)
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

unint64_t sub_238F2C6E0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v17, a2, a3);
  if (!v18)
  {
    v18 = sub_2393C7E38(v17, 0, *a1);
    v19 = v4;
    if (!v18)
    {
      v18 = sub_2393C7E38(v17, 1uLL, a1[1]);
      v19 = v5;
      if (!v18)
      {
        v18 = sub_2393C7E38(v17, 2uLL, a1[2]);
        v19 = v6;
        if (!v18)
        {
          v18 = sub_2393C7E38(v17, 3uLL, a1[3]);
          v19 = v7;
          if (!v18)
          {
            v18 = sub_2393C7E38(v17, 4uLL, a1[4]);
            v19 = v8;
            if (!v18)
            {
              v18 = sub_2393C7E38(v17, 5uLL, a1[5]);
              v19 = v9;
              if (!v18)
              {
                v18 = sub_2393C7E38(v17, 6uLL, a1[6]);
                v19 = v10;
                if (!v18)
                {
                  v18 = sub_2393C7E38(v17, 7uLL, a1[7]);
                  v19 = v11;
                  if (!v18)
                  {
                    v18 = sub_2393C7E38(v17, 8uLL, a1[8]);
                    v19 = v12;
                    if (!v18)
                    {
                      v18 = sub_2393C7E38(v17, 9uLL, a1[9]);
                      v19 = v13;
                      if (!v18)
                      {
                        v18 = sub_2393C7E38(v17, 0xAuLL, a1[10]);
                        v19 = v14;
                        if (!v18)
                        {
                          v18 = sub_2393C7E38(v17, 0xBuLL, a1[11]);
                          v19 = v15;
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

  return sub_2394C38E0(&v17);
}

unint64_t sub_238F2C83C(char *a1, uint64_t a2)
{
  v21[0] = 0;
  v4 = a1 + 10;
  v22 = a2;
  v5 = a1 + 9;
  v19 = a1 + 8;
  v6 = a1 + 7;
  v7 = a1 + 6;
  v17 = a1 + 11;
  v18 = a1 + 5;
  v8 = a1 + 4;
  v9 = a1 + 3;
  v10 = a1 + 2;
  v11 = a1 + 1;
  while (1)
  {
    v20 = 0;
    v12 = sub_2394C37B8(v21, &v20);
    if (v12)
    {
      break;
    }

    if (v20 <= 5u)
    {
      if (v20 > 2u)
      {
        v13 = v9;
        if (v20 != 3)
        {
          v13 = v8;
          if (v20 != 4)
          {
            v13 = v18;
            if (v20 != 5)
            {
              goto LABEL_22;
            }
          }
        }
      }

      else
      {
        v13 = a1;
        if (v20)
        {
          v13 = v11;
          if (v20 != 1)
          {
            v13 = v10;
          }
        }
      }

      goto LABEL_21;
    }

    if (v20 <= 8u)
    {
      v13 = v7;
      if (v20 != 6)
      {
        v13 = v6;
        if (v20 != 7)
        {
          v13 = v19;
          if (v20 != 8)
          {
            goto LABEL_22;
          }
        }
      }

      goto LABEL_21;
    }

    v13 = v5;
    if (v20 == 9)
    {
      goto LABEL_21;
    }

    v13 = v4;
    if (v20 == 10)
    {
      goto LABEL_21;
    }

    if (v20 == 11)
    {
      v13 = v17;
LABEL_21:
      v12 = sub_2393C5CE4(a2, v13);
    }

LABEL_22:
    v14 = v12;
    if (v12)
    {
      v15 = v12 & 0xFFFFFFFF00000000;
      return v15 | v14;
    }
  }

  v15 = v12 & 0xFFFFFFFF00000000;
  v14 = v12;
  if (v12 == 33)
  {
    v14 = 0;
    v15 = 0;
  }

  return v15 | v14;
}

unint64_t sub_238F2C9C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v15, a2, a3);
  if (!v16)
  {
    v16 = sub_2393C8154(v15, 0, *a1);
    v17 = v4;
    if (!v16)
    {
      v16 = sub_2393C818C(v15, 1uLL, *(a1 + 8));
      v17 = v5;
      if (!v16)
      {
        v16 = sub_2393C8140(v15, 2uLL, *(a1 + 10));
        v17 = v6;
        if (!v16)
        {
          v16 = sub_2393C8140(v15, 3uLL, *(a1 + 11));
          v17 = v7;
          if (!v16)
          {
            v16 = sub_2393C8140(v15, 4uLL, *(a1 + 12));
            v17 = v8;
            if (!v16)
            {
              v16 = sub_2393C8140(v15, 5uLL, *(a1 + 13));
              v17 = v9;
              if (!v16)
              {
                v16 = sub_2393C8140(v15, 6uLL, *(a1 + 14));
                v17 = v10;
                if (!v16)
                {
                  v16 = sub_2393C8140(v15, 7uLL, *(a1 + 15));
                  v17 = v11;
                  if (!v16)
                  {
                    v16 = sub_2393C7E38(v15, 8uLL, *(a1 + 16));
                    v17 = v12;
                    if (!v16)
                    {
                      v16 = sub_2393C7E38(v15, 9uLL, *(a1 + 17));
                      v17 = v13;
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

  return sub_2394C38E0(&v15);
}

unint64_t sub_238F2CAF0(uint64_t a1, uint64_t a2)
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

    if (v10 > 4u)
    {
      if (v10 <= 6u)
      {
        if (v10 == 5)
        {
          v5 = (a1 + 13);
          goto LABEL_24;
        }

        if (v10 == 6)
        {
          v5 = (a1 + 14);
          goto LABEL_24;
        }
      }

      else
      {
        switch(v10)
        {
          case 7u:
            v5 = (a1 + 15);
            goto LABEL_24;
          case 8u:
            v6 = (a1 + 16);
            goto LABEL_26;
          case 9u:
            v6 = (a1 + 17);
LABEL_26:
            v4 = sub_2393C5CE4(a2, v6);
            break;
        }
      }
    }

    else
    {
      if (v10 <= 1u)
      {
        if (v10)
        {
          v4 = sub_2393C5F70(a2, (a1 + 8));
        }

        else
        {
          v4 = sub_2393C5F2C(a2, a1);
        }

        goto LABEL_27;
      }

      switch(v10)
      {
        case 2u:
          v5 = (a1 + 10);
          goto LABEL_24;
        case 3u:
          v5 = (a1 + 11);
          goto LABEL_24;
        case 4u:
          v5 = (a1 + 12);
LABEL_24:
          v4 = sub_2393C5ED0(a2, v5);
          break;
      }
    }

LABEL_27:
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

unint64_t sub_238F2CC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v6 = sub_2393C5ED0(a2, (a1 + 96));
        goto LABEL_19;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65528)
      {
        v7 = a1 + 104;
        goto LABEL_18;
      }

      return v6 | v5;
    }

    if (v4)
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 1)
      {
        v7 = a1 + 24;
LABEL_18:
        v6 = sub_238F36BB4(v7, a2);
        goto LABEL_19;
      }

      return v6 | v5;
    }

    v6 = sub_238F10D4C(a2, a1);
LABEL_19:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 > 65531)
  {
    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 320));
      goto LABEL_19;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 != 65533)
    {
      return v6 | v5;
    }

    v6 = sub_2393C5F70(a2, (a1 + 324));
    goto LABEL_19;
  }

  if (v4 == 65529)
  {
    v7 = a1 + 176;
    goto LABEL_18;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65531)
  {
    v7 = a1 + 248;
    goto LABEL_18;
  }

  return v6 | v5;
}

unint64_t sub_238F2CD5C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8364(v9, 0, *a1, *(a1 + 8));
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C85FC(v9, 1uLL, *(a1 + 16), *(a1 + 24));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C818C(v9, 2uLL, *(a1 + 32));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8154(v9, 3uLL, *(a1 + 40));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F2CDF8(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F70(a2, (a1 + 32));
      }

      else if (v8 == 3)
      {
        v4 = sub_2393C5F2C(a2, (a1 + 40));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C61E0(a2, (a1 + 16));
      }
    }

    else if (sub_2393C5C40(a2) == 16)
    {
      v4 = sub_2393C60CC(a2, a1);
    }

    else
    {
      v4 = 0x500000002BLL;
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

unint64_t sub_238F2CF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        v6 = sub_238F2D024(a2, a1);
        goto LABEL_20;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 1)
      {
        v6 = sub_238F2D080(a2, (a1 + 1));
LABEL_20:
        v5 = v6 & 0xFFFFFFFF00000000;
        return v6 | v5;
      }

      return v6 | v5;
    }

    if (v4 == 2)
    {
      v7 = a1 + 8;
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65528)
      {
        return v6 | v5;
      }

      v7 = a1 + 80;
    }

LABEL_19:
    v6 = sub_238F36BB4(v7, a2);
    goto LABEL_20;
  }

  if (v4 <= 65531)
  {
    if (v4 == 65529)
    {
      v7 = a1 + 152;
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65531)
      {
        return v6 | v5;
      }

      v7 = a1 + 224;
    }

    goto LABEL_19;
  }

  if (v4 == 65532)
  {
    v6 = sub_2393C5FC8(a2, (a1 + 296));
    goto LABEL_20;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65533)
  {
    v6 = sub_2393C5F70(a2, (a1 + 300));
    goto LABEL_20;
  }

  return v6 | v5;
}

unint64_t sub_238F2D024(uint64_t a1, _BYTE *a2)
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
    if ((v5 - 255) >= 0xFFFFFF03)
    {
      LOBYTE(v5) = 2;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F2D080(uint64_t a1, _BYTE *a2)
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
    if ((v5 - 255) >= 0xFFFFFF0D)
    {
      LOBYTE(v5) = 12;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F2D0DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
        goto LABEL_23;
      case 1:
        v7 = sub_238F000A4(a2, (a1 + 16));
        goto LABEL_31;
      case 2:
        v7 = sub_238F0DC3C(a2, (a1 + 17));
        goto LABEL_31;
      case 3:
        v7 = sub_238F2D288(a2, a1 + 24);
        goto LABEL_31;
      case 4:
        v7 = sub_238F0BA3C(a2, a1 + 56);
        goto LABEL_31;
      case 5:
        v10 = a1 + 80;
        goto LABEL_27;
      case 6:
        v10 = a1 + 152;
        goto LABEL_27;
      case 7:
        v9 = a1 + 224;
        v8 = a2;
LABEL_23:
        v7 = sub_238EFD658(v8, v9);
        goto LABEL_31;
      case 8:
        v7 = sub_238EFD7D0(a2, (a1 + 240));
        goto LABEL_31;
      case 9:
        v12 = (a1 + 241);
        goto LABEL_19;
      case 10:
        v11 = (a1 + 242);
        goto LABEL_29;
      case 11:
        v11 = (a1 + 243);
LABEL_29:
        v7 = sub_2393C5ED0(a2, v11);
        goto LABEL_31;
      case 12:
        v12 = (a1 + 244);
LABEL_19:
        v7 = sub_2393C5CE4(a2, v12);
        goto LABEL_31;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v10 = a1 + 248;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v10 = a1 + 320;
    }

LABEL_27:
    v7 = sub_238F36BB4(v10, a2);
    goto LABEL_31;
  }

  if (v5 == 65531)
  {
    v10 = a1 + 392;
    goto LABEL_27;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 464));
    goto LABEL_31;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 468));
LABEL_31:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F2D288(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 24) == 1)
    {
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    v6 = sub_238F2DD98(a2, a1);
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

unint64_t sub_238F2D320(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8154(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v5 = *(a1 + 8);
      if (v5 == 5)
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
        v7 = sub_238F38D94(v10, 2uLL, (a1 + 9));
        goto LABEL_7;
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F2D3C0(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F0DC3C(a2, (a1 + 10));
        break;
      case 1:
        v4 = sub_238F000A4(a2, (a1 + 8));
        break;
      case 0:
        v4 = sub_2393C5F2C(a2, a1);
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

unint64_t sub_238F2D488(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F38E08(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F2D4DC(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F2D570(a2, a1);
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

unint64_t sub_238F2D570(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 16) == 1)
    {
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    v6 = sub_238F0A4EC(a2, a1);
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

unint64_t sub_238F2D604(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F2D64C(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F2D64C(unint64_t result, unsigned int a2, uint64_t *a3)
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

      v11 = 40 * v8;
      while (1)
      {
        result = sub_238F2DBC4(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 40;
        v11 -= 40;
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

unint64_t sub_238F2D710(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_2393C7E38(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F2D768(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F2D7B0(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F2D7B0(unint64_t result, unsigned int a2, uint64_t *a3)
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
        result = sub_238F2DA88(v7, v6, 0x100uLL);
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

unint64_t sub_238F2D870(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F37AF8(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F2D8C4(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F0BA3C(a2, a1);
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

unint64_t sub_238F2D958(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C827C(a2, 0, *a1);
    if (!result)
    {
      result = sub_238EFDC40(a2, 1uLL, (a1 + 8));
      if (!result)
      {
        return sub_2393C8DE0(a2, v6);
      }
    }
  }

  return result;
}

unint64_t sub_238F2D9D4(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5E78(a2, a1);
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

unint64_t sub_238F2DA88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C827C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8154(v8, 1uLL, *(a1 + 8));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238EFD454(v8, 2uLL, a1 + 16);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F2DB0C(uint64_t a1, uint64_t a2)
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
        v4 = sub_238EFD658(a2, a1 + 16);
        break;
      case 1:
        v4 = sub_2393C5F2C(a2, (a1 + 8));
        break;
      case 0:
        v4 = sub_2393C5E78(a2, a1);
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

unint64_t sub_238F2DBC4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C827C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8154(v8, 1uLL, *(a1 + 8));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238EFDC40(v8, 2uLL, (a1 + 16));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F2DC48(uint64_t a1, uint64_t a2)
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
        *(a1 + 16) = 1;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v4 = sub_2393C61E0(a2, (a1 + 24));
        break;
      case 1:
        v4 = sub_2393C5F2C(a2, (a1 + 8));
        break;
      case 0:
        v4 = sub_2393C5E78(a2, a1);
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

unint64_t sub_238F2DD14(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8140(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8154(v8, 1uLL, *(a1 + 1));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C818C(v8, 2uLL, *(a1 + 8));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F2DD98(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F70(a2, (a1 + 16));
        break;
      case 1:
        v4 = sub_2393C5F2C(a2, (a1 + 8));
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

unint64_t sub_238F2DE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65528)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        v10 = a2;
        v8 = a1;
LABEL_22:
        v7 = sub_2393C5FC8(v10, v8);
        goto LABEL_23;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 1)
      {
        v8 = (a1 + 4);
LABEL_21:
        v10 = a2;
        goto LABEL_22;
      }

      return v7 | v6;
    }

    if (v5 == 2)
    {
      v7 = sub_238EA4D5C(a2, (a1 + 8));
      goto LABEL_23;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 65528)
    {
      return v7 | v6;
    }

    v9 = a1 + 16;
    goto LABEL_18;
  }

  if (v5 <= 65531)
  {
    if (v5 == 65529)
    {
      v9 = a1 + 88;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65531)
      {
        return v7 | v6;
      }

      v9 = a1 + 160;
    }

LABEL_18:
    v7 = sub_238F36BB4(v9, a2);
    goto LABEL_23;
  }

  if (v5 == 65532)
  {
    v8 = (a1 + 232);
    goto LABEL_21;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 236));
LABEL_23:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F2DF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 3)
        {
          return v7 | v6;
        }

        v8 = a1 + 96;
        goto LABEL_22;
      }

      v10 = (a1 + 88);
      v9 = a2;
    }

    else
    {
      if (v5)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 1)
        {
          return v7 | v6;
        }

        v8 = a1 + 8;
LABEL_22:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_23;
      }

      v9 = a2;
      v10 = a1;
    }

    v7 = sub_2393C5ED0(v9, v10);
    goto LABEL_23;
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v8 = a1 + 176;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v8 = a1 + 248;
    }

    goto LABEL_22;
  }

  if (v5 == 65531)
  {
    v8 = a1 + 320;
    goto LABEL_22;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 392));
    goto LABEL_23;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 396));
LABEL_23:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F2E0A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8364(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238EFD4A8(v7, 1uLL, (a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F2E10C(uint64_t a1, uint64_t a2)
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
      v4 = sub_238EFD714(a2, (a1 + 16));
    }

    else if (!v8)
    {
      if (sub_2393C5C40(a2) == 16)
      {
        v4 = sub_2393C60CC(a2, a1);
      }

      else
      {
        v4 = 0x500000002BLL;
      }
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

unint64_t sub_238F2E1DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v6, *a2, a3);
  sub_238F2E230(v6, 0, *(a2 + 8), a1);
  return sub_2394C38E0(v6);
}

unint64_t sub_238F2E230(unint64_t result, unsigned int a2, char a3, uint64_t a4)
{
  if (!*(result + 8))
  {
    v16 = v4;
    v17 = v5;
    v7 = result;
    v8 = *result;
    v9 = *a4;
    v10 = *(a4 + 8);
    v14 = 0;
    result = sub_2393C8CE0(v8, a2, 22, &v14);
    if (!result)
    {
      if (!v10)
      {
LABEL_8:
        result = sub_2393C8DE0(v8, v14);
        v12 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v11 = 0;
          v12 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v13 = 40 * v10;
      while (1)
      {
        v15[0] = 1;
        v15[1] = a3;
        result = sub_238F2E758(v9, v8, 0x100uLL, v15);
        if (result)
        {
          break;
        }

        v9 += 20;
        v13 -= 40;
        if (!v13)
        {
          goto LABEL_8;
        }
      }
    }

    v12 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v7 + 8) = result | v12;
    *(v7 + 16) = v11;
  }

  return result;
}

unint64_t sub_238F2E310(unsigned __int16 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8364(v8, 1uLL, *(a1 + 1), *(a1 + 2));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8364(v8, 2uLL, *(a1 + 3), *(a1 + 4));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F2E398(_WORD *a1, uint64_t a2)
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

    if (v11 == 2)
    {
      v7 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v7 == 16)
      {
        v6 = a1 + 12;
        goto LABEL_11;
      }
    }

    else
    {
      if (v11 != 1)
      {
        if (!v11)
        {
          v4 = sub_2393C5F70(a2, a1);
        }

        goto LABEL_12;
      }

      v5 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v5 == 16)
      {
        v6 = a1 + 4;
LABEL_11:
        v4 = sub_2393C60CC(a2, v6);
      }
    }

LABEL_12:
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

unint64_t sub_238F2E498(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8364(v7, 1uLL, *(a1 + 1), *(a1 + 2));
      v9 = v5;
    }
  }

  sub_238F1908C(&v7, 2u, a1 + 3);
  return sub_2394C38E0(&v7);
}

unint64_t sub_238F2E514(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F36BB4(a1 + 24, a2);
        break;
      case 1:
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, (a1 + 8));
        }

        else
        {
          v4 = 0x500000002BLL;
        }

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

unint64_t sub_238F2E5FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v6, *a2, a3);
  sub_238F2E650(v6, 0, *(a2 + 8), a1);
  return sub_2394C38E0(v6);
}

unint64_t sub_238F2E650(unint64_t result, unsigned int a2, char a3, uint64_t a4)
{
  if (!*(result + 8))
  {
    v16 = v4;
    v17 = v5;
    v7 = result;
    v8 = *result;
    v9 = *a4;
    v10 = *(a4 + 8);
    v14 = 0;
    result = sub_2393C8CE0(v8, a2, 22, &v14);
    if (!result)
    {
      if (!v10)
      {
LABEL_8:
        result = sub_2393C8DE0(v8, v14);
        v12 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v11 = 0;
          v12 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v13 = 72 * v10;
      while (1)
      {
        v15[0] = 1;
        v15[1] = a3;
        result = sub_238F2E900(v9, v8, 0x100uLL, v15);
        if (result)
        {
          break;
        }

        v9 += 72;
        v13 -= 72;
        if (!v13)
        {
          goto LABEL_8;
        }
      }
    }

    v12 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v7 + 8) = result | v12;
    *(v7 + 16) = v11;
  }

  return result;
}

unint64_t sub_238F2E758(unsigned __int16 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C818C(v11, 0, *a1);
    v13 = v6;
    if (!v12)
    {
      v7 = sub_238F1E4D4(v11, 1uLL, a1 + 8);
      v12 = v7;
      v13 = v8;
      if (*a4 == 1 && !v7)
      {
        v12 = sub_2393C8140(v11, 0xFEuLL, *(a1 + 32));
        v13 = v9;
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F2E7F0(unsigned __int16 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F2E758(a1, a2, a3, v5);
}

unint64_t sub_238F2E820(uint64_t a1, uint64_t a2)
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
      case 0xFEu:
        v4 = sub_2393C5ED0(a2, (a1 + 32));
        break;
      case 1u:
        v4 = sub_238F00D84(a2, a1 + 8);
        break;
      case 0u:
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

unint64_t sub_238F2E900(_BYTE *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C818C(v12, 0, *a1);
    v14 = v6;
    if (!v13)
    {
      v13 = sub_238F2AD98(v12, 1uLL, a1 + 8);
      v14 = v7;
      if (!v13)
      {
        v8 = sub_238F38E30(v12, 2uLL, a1 + 40);
        v13 = v8;
        v14 = v9;
        if (*a4 == 1 && !v8)
        {
          v13 = sub_2393C8140(v12, 0xFEuLL, a1[64]);
          v14 = v10;
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F2E9B0(_BYTE *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F2E900(a1, a2, a3, v5);
}

unint64_t sub_238F2E9E0(uint64_t a1, uint64_t a2)
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
        *(a1 + 40) = 1;
        sub_2393C5AAC(a1 + 48);
        sub_2393C5ADC(a1 + 48, 0, 0);
        v4 = sub_238F36BB4(a1 + 48, a2);
      }

      else if (v8 == 254)
      {
        v4 = sub_2393C5ED0(a2, (a1 + 120));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        *(a1 + 8) = 1;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        v4 = sub_238F10D4C(a2, a1 + 16);
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

unint64_t sub_238F2EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 > 65528)
  {
    if (v4 <= 65531)
    {
      if (v4 == 65529)
      {
        v7 = a1 + 160;
        goto LABEL_17;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65531)
      {
        v7 = a1 + 232;
LABEL_17:
        v6 = sub_238F36BB4(v7, a2);
        goto LABEL_18;
      }

      return v6 | v5;
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

LABEL_18:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (!v4)
  {
    v6 = sub_2393C5ED0(a2, a1);
    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v7 = a1 + 8;
    goto LABEL_17;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65528)
  {
    v7 = a1 + 88;
    goto LABEL_17;
  }

  return v6 | v5;
}

unint64_t sub_238F2EBE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8364(v10, 0, *a1, *(a1 + 8));
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C818C(v10, 1uLL, *(a1 + 16));
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C818C(v10, 2uLL, *(a1 + 18));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_238EFD4A8(v10, 3uLL, (a1 + 20));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238EFD4A8(v10, 4uLL, (a1 + 24));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F2EC9C(_OWORD *a1, uint64_t a2)
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
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, a1);
        }

        else
        {
          v4 = 0x500000002BLL;
        }

        goto LABEL_15;
      }

      if (v10 == 1)
      {
        v6 = a1 + 1;
LABEL_12:
        v4 = sub_2393C5F70(a2, v6);
      }
    }

    else
    {
      switch(v10)
      {
        case 2u:
          v6 = a1 + 9;
          goto LABEL_12;
        case 3u:
          v5 = a1 + 10;
          goto LABEL_14;
        case 4u:
          v5 = a1 + 12;
LABEL_14:
          v4 = sub_238EFD714(a2, v5);
          break;
      }
    }

LABEL_15:
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

unint64_t sub_238F2EDB0(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v5 = *(a2 + 8);
    v11[0] = 1;
    v11[1] = v5;
    v9 = sub_238F2EEDC(a1, v8, 0, v11);
    v10 = v6;
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F2EE20(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F2F020(a1, a2);
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

unint64_t sub_238F2EEDC(unsigned __int16 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v17, a2, a3);
  if (!v18)
  {
    v18 = sub_2393C818C(v17, 0, *a1);
    v19 = v6;
    if (!v18)
    {
      v18 = sub_2393C8364(v17, 1uLL, *(a1 + 1), *(a1 + 2));
      v19 = v7;
      if (!v18)
      {
        v18 = sub_2393C818C(v17, 2uLL, a1[12]);
        v19 = v8;
        if (!v18)
        {
          v18 = sub_2393C818C(v17, 3uLL, a1[13]);
          v19 = v9;
          if (!v18)
          {
            v18 = sub_238EFD4A8(v17, 4uLL, a1 + 14);
            v19 = v10;
            if (!v18)
            {
              v11 = *(a1 + 32);
              if (v11 == 2)
              {
                v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
                v13 = 0x5C00000587;
LABEL_12:
                v18 = v13;
                v19 = v12;
                return sub_2394C38E0(&v17);
              }

              v14 = sub_2393C8140(v17, 5uLL, v11);
              v18 = v14;
              v19 = v15;
              if (*a4 == 1 && !v14)
              {
                v13 = sub_2393C8140(v17, 0xFEuLL, *(a1 + 33));
                goto LABEL_12;
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v17);
}

unint64_t sub_238F2EFF0(unsigned __int16 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F2EEDC(a1, a2, a3, v5);
}

unint64_t sub_238F2F020(uint64_t a1, uint64_t a2)
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
      if (v10 > 4u)
      {
        if (v10 == 5)
        {
          v4 = sub_238EFF894(a2, (a1 + 32));
        }

        else if (v10 == 254)
        {
          v4 = sub_2393C5ED0(a2, (a1 + 33));
        }

        goto LABEL_23;
      }

      if (v10 != 3)
      {
        if (v10 == 4)
        {
          v4 = sub_238EFD714(a2, (a1 + 28));
        }

        goto LABEL_23;
      }

      v5 = (a1 + 26);
LABEL_17:
      v6 = a2;
LABEL_18:
      v4 = sub_2393C5F70(v6, v5);
      goto LABEL_23;
    }

    switch(v10)
    {
      case 0u:
        v6 = a2;
        v5 = a1;
        goto LABEL_18;
      case 1u:
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, (a1 + 8));
        }

        else
        {
          v4 = 0x500000002BLL;
        }

        break;
      case 2u:
        v5 = (a1 + 24);
        goto LABEL_17;
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

unint64_t sub_238F2F16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 > 65528)
  {
    if (v4 <= 65531)
    {
      if (v4 == 65529)
      {
        v7 = a1 + 152;
        goto LABEL_17;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65531)
      {
        v7 = a1 + 224;
LABEL_17:
        v6 = sub_238F36BB4(v7, a2);
        goto LABEL_18;
      }

      return v6 | v5;
    }

    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 296));
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65533)
      {
        return v6 | v5;
      }

      v6 = sub_2393C5F70(a2, (a1 + 300));
    }

LABEL_18:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (!v4)
  {
    v6 = sub_238EFD7D0(a2, a1);
    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v7 = a1 + 8;
    goto LABEL_17;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65528)
  {
    v7 = a1 + 80;
    goto LABEL_17;
  }

  return v6 | v5;
}

unint64_t sub_238F2F268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 253)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v8 = a2;
        v9 = a1;
        goto LABEL_85;
      case 1:
        v7 = sub_238EA4DB4(a2, (a1 + 1));
        goto LABEL_135;
      case 2:
        v7 = sub_238F36E54(a2, (a1 + 2));
        goto LABEL_135;
      case 3:
        v7 = sub_238F37278(a2, (a1 + 4));
        goto LABEL_135;
      case 4:
        v7 = sub_238F38F00(a2, (a1 + 8));
        goto LABEL_135;
      case 5:
        v12 = (a1 + 16);
        goto LABEL_92;
      case 6:
        v11 = (a1 + 18);
        goto LABEL_68;
      case 7:
        v14 = (a1 + 20);
        goto LABEL_90;
      case 8:
        v14 = (a1 + 24);
        goto LABEL_90;
      case 9:
        v19 = (a1 + 32);
        goto LABEL_78;
      case 10:
        v19 = (a1 + 40);
        goto LABEL_78;
      case 11:
        v19 = (a1 + 48);
        goto LABEL_78;
      case 12:
        v19 = (a1 + 56);
        goto LABEL_78;
      case 13:
        v15 = (a1 + 64);
        goto LABEL_71;
      case 14:
        v20 = (a1 + 66);
        goto LABEL_64;
      case 15:
        v17 = (a1 + 68);
        goto LABEL_42;
      case 16:
        v17 = (a1 + 72);
LABEL_42:
        v7 = sub_2393C5E78(a2, v17);
        goto LABEL_135;
      case 17:
        v18 = (a1 + 80);
        goto LABEL_73;
      case 18:
        v18 = (a1 + 88);
        goto LABEL_73;
      case 19:
        v18 = (a1 + 96);
        goto LABEL_73;
      case 20:
        v18 = (a1 + 104);
LABEL_73:
        v7 = sub_2393C5DA0(a2, v18);
        goto LABEL_135;
      case 21:
        v12 = (a1 + 112);
        goto LABEL_92;
      case 22:
        v11 = (a1 + 114);
        goto LABEL_68;
      case 23:
        v7 = sub_2393C6020(a2, (a1 + 116));
        goto LABEL_135;
      case 24:
        v7 = sub_2393C6064(a2, (a1 + 120));
        goto LABEL_135;
      case 25:
        v16 = (a1 + 128);
        goto LABEL_34;
      case 26:
        v13 = a1 + 144;
        goto LABEL_88;
      case 27:
        v13 = a1 + 216;
        goto LABEL_88;
      case 28:
        v13 = a1 + 288;
        goto LABEL_88;
      case 29:
        v16 = (a1 + 360);
LABEL_34:
        v7 = sub_238EFEA98(a2, v16);
        goto LABEL_135;
      case 30:
        v21 = (a1 + 376);
        goto LABEL_62;
      case 31:
        v21 = (a1 + 392);
LABEL_62:
        v7 = sub_2393C61E0(a2, v21);
        goto LABEL_135;
      case 32:
        v19 = (a1 + 408);
LABEL_78:
        v7 = sub_2393C5F2C(a2, v19);
        goto LABEL_135;
      case 33:
        v14 = (a1 + 416);
        goto LABEL_90;
      case 34:
        v7 = sub_238F36E54(a2, (a1 + 420));
        if (!v7)
        {
          v7 = 0;
        }

        goto LABEL_135;
      case 35:
        v13 = a1 + 424;
        goto LABEL_88;
      case 36:
        v7 = sub_238EA4D5C(a2, (a1 + 496));
        goto LABEL_135;
      case 37:
        v7 = sub_238F31D84(a1 + 504, a2);
        goto LABEL_135;
      case 38:
        v12 = (a1 + 568);
        goto LABEL_92;
      case 39:
        v15 = (a1 + 569);
LABEL_71:
        v7 = sub_2393C5D48(a2, v15);
        goto LABEL_135;
      case 40:
        v11 = (a1 + 570);
        goto LABEL_68;
      case 41:
        v20 = (a1 + 572);
LABEL_64:
        v7 = sub_2393C5E20(a2, v20);
        goto LABEL_135;
      case 42:
        v13 = a1 + 576;
        goto LABEL_88;
      case 43:
        v13 = a1 + 648;
        goto LABEL_88;
      case 44:
      case 45:
      case 46:
      case 47:
        return v7 | v6;
      case 48:
        v9 = (a1 + 728);
        goto LABEL_84;
      case 49:
        v9 = (a1 + 729);
        goto LABEL_84;
      case 50:
        v9 = (a1 + 730);
        goto LABEL_84;
      case 51:
        v7 = sub_238EFD7D0(a2, (a1 + 731));
        goto LABEL_135;
      case 52:
        v7 = sub_238F36378(a1 + 736, a2);
        goto LABEL_135;
      default:
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != -897279)
        {
          return v7 | v6;
        }

        v12 = (a1 + 1422);
        break;
    }

    goto LABEL_92;
  }

  if (v5 <= 65527)
  {
    if (v5 > 12288)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v10 = v5 - 0x4000;
      switch(v10)
      {
        case 0:
          v7 = sub_238F076A4(a2, (a1 + 776));
          goto LABEL_135;
        case 1:
          v7 = sub_238F2F824(a2, (a1 + 778));
          goto LABEL_135;
        case 2:
          v7 = sub_238F2988C(a2, a1 + 780);
          goto LABEL_135;
        case 3:
          v7 = sub_238F2F8B4(a2, a1 + 784);
          goto LABEL_135;
        case 4:
          v7 = sub_238F2F948(a2, a1 + 792);
          goto LABEL_135;
        case 5:
          v28 = (a1 + 808);
          goto LABEL_130;
        case 6:
          v23 = (a1 + 810);
          goto LABEL_114;
        case 7:
          v29 = a1 + 816;
          goto LABEL_124;
        case 8:
          v29 = a1 + 824;
LABEL_124:
          v7 = sub_238EFDEB0(a2, v29);
          goto LABEL_135;
        case 9:
          v27 = a1 + 832;
          goto LABEL_119;
        case 10:
          v27 = a1 + 848;
          goto LABEL_119;
        case 11:
          v27 = a1 + 864;
          goto LABEL_119;
        case 12:
          v27 = a1 + 880;
LABEL_119:
          v7 = sub_238EFD658(a2, v27);
          goto LABEL_135;
        case 13:
          v26 = (a1 + 896);
          goto LABEL_128;
        case 14:
          v22 = (a1 + 898);
          goto LABEL_126;
        case 15:
          v25 = a1 + 904;
          goto LABEL_122;
        case 16:
          v25 = a1 + 912;
LABEL_122:
          v7 = sub_238F1FD58(a2, v25);
          goto LABEL_135;
        case 17:
          v24 = a1 + 920;
          goto LABEL_111;
        case 18:
          v24 = a1 + 936;
          goto LABEL_111;
        case 19:
          v24 = a1 + 952;
          goto LABEL_111;
        case 20:
          v24 = a1 + 968;
LABEL_111:
          v7 = sub_238F0C244(a2, v24);
          goto LABEL_135;
        case 21:
          v28 = (a1 + 984);
          goto LABEL_130;
        case 22:
          v23 = (a1 + 986);
          goto LABEL_114;
        case 23:
          v7 = sub_238F05664(a2, a1 + 992);
          goto LABEL_135;
        case 24:
          v7 = sub_238F2F9DC(a2, a1 + 1000);
          goto LABEL_135;
        case 25:
          v7 = sub_238F10D4C(a2, a1 + 1016);
          goto LABEL_135;
        case 26:
        case 27:
        case 28:
        case 29:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
          return v7 | v6;
        case 30:
          v7 = sub_238F0BA3C(a2, a1 + 1040);
          goto LABEL_135;
        case 36:
          v7 = sub_238F10BDC(a2, (a1 + 1064));
          goto LABEL_135;
        case 37:
          v7 = sub_238F2FA70(a2, a1 + 1072);
          goto LABEL_135;
        case 38:
          v28 = (a1 + 1144);
LABEL_130:
          v7 = sub_238F00228(a2, v28);
          goto LABEL_135;
        case 39:
          v26 = (a1 + 1146);
LABEL_128:
          v7 = sub_238F2C628(a2, v26);
          goto LABEL_135;
        case 40:
          v23 = (a1 + 1148);
LABEL_114:
          v7 = sub_238EFD714(a2, v23);
          goto LABEL_135;
        case 41:
          v22 = (a1 + 1152);
LABEL_126:
          v7 = sub_238F0B738(a2, v22);
          goto LABEL_135;
        case 42:
          v12 = (a1 + 1156);
          goto LABEL_92;
        case 51:
          v7 = sub_238F0C9D0(a2, (a1 + 1157));
          goto LABEL_135;
        case 52:
          v7 = sub_238F2FB0C(a2, a1 + 1160);
          goto LABEL_135;
        default:
          v6 = 0;
          LODWORD(v7) = 0;
          if (v10 != 12289)
          {
            return v7 | v6;
          }

          v14 = (a1 + 772);
          break;
      }

      goto LABEL_90;
    }

    if (v5 == 254)
    {
      v9 = (a1 + 768);
    }

    else
    {
      if (v5 != 255)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 12288)
        {
          v12 = (a1 + 770);
LABEL_92:
          v7 = sub_2393C5ED0(a2, v12);
          goto LABEL_135;
        }

        return v7 | v6;
      }

      v9 = (a1 + 769);
    }

LABEL_84:
    v8 = a2;
LABEL_85:
    v7 = sub_2393C5CE4(v8, v9);
    goto LABEL_135;
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v13 = a1 + 1200;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v13 = a1 + 1272;
    }

LABEL_88:
    v7 = sub_238F36BB4(v13, a2);
LABEL_135:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 65531)
  {
    v13 = a1 + 1344;
    goto LABEL_88;
  }

  if (v5 == 65532)
  {
    v14 = (a1 + 1416);
LABEL_90:
    v7 = sub_2393C5FC8(a2, v14);
    goto LABEL_135;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v11 = (a1 + 1420);
LABEL_68:
    v7 = sub_2393C5F70(a2, v11);
    goto LABEL_135;
  }

  return v7 | v6;
}

unint64_t sub_238F2F824(uint64_t a1, _BYTE *a2)
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
    v6 = sub_238EA4DB4(a1, a2);
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

unint64_t sub_238F2F8B4(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F37278(a1, a2);
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

unint64_t sub_238F2F948(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F38F00(a1, a2);
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