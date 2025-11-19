unint64_t sub_238F12644(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F14270(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F12698(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F142FC(a1, a2);
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

unint64_t sub_238F1272C(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v11, *a2, a3);
  if (!v12)
  {
    v12 = sub_2393C7E38(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v12 = sub_238EFD4A8(v11, 1uLL, a1 + 1);
      v13 = v5;
      if (!v12)
      {
        v12 = sub_238F13404(v11, 2uLL, a1 + 6);
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238F13404(v11, 3uLL, a1 + 8);
          v13 = v7;
          if (!v12)
          {
            v12 = sub_238EFD4A8(v11, 4uLL, a1 + 5);
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F2AD98(v11, 5uLL, a1 + 16);
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F127FC(uint64_t a1, uint64_t a2)
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
        if (v10 != 4)
        {
          if (v10 == 5)
          {
            *(a1 + 16) = 1;
            *(a1 + 32) = 0;
            *(a1 + 40) = 0;
            *(a1 + 24) = 0;
            v4 = sub_238F10D4C(a2, a1 + 24);
          }

          goto LABEL_18;
        }

        v6 = (a1 + 10);
        goto LABEL_17;
      }

      v5 = (a1 + 8);
      goto LABEL_14;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        v6 = (a1 + 2);
LABEL_17:
        v4 = sub_238EFD714(a2, v6);
        goto LABEL_18;
      }

      if (v10 == 2)
      {
        v5 = (a1 + 6);
LABEL_14:
        v4 = sub_238F00228(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5CE4(a2, a1);
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

unint64_t sub_238F1290C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F38498(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F12960(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F129F4(a2, a1);
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

unint64_t sub_238F129F4(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F142FC(a2, a1);
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

unint64_t sub_238F12A88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8364(v9, 0, *a1, *(a1 + 8));
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C8364(v9, 1uLL, *(a1 + 16), *(a1 + 24));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C8364(v9, 2uLL, *(a1 + 32), *(a1 + 40));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F1E4D4(v9, 3uLL, (a1 + 48));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F12B24(_OWORD *a1, uint64_t a2)
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

    if (v13 > 1u)
    {
      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v4 = sub_238F00D84(a2, (a1 + 3));
        }

        goto LABEL_17;
      }

      v9 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v9 == 16)
      {
        v6 = a1 + 2;
        goto LABEL_15;
      }
    }

    else
    {
      if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_17;
        }

        v5 = sub_2393C5C40(a2);
        v4 = 0x500000002BLL;
        if (v5 != 16)
        {
          goto LABEL_17;
        }

        v6 = a1 + 1;
LABEL_15:
        v8 = a2;
LABEL_16:
        v4 = sub_2393C60CC(v8, v6);
        goto LABEL_17;
      }

      v7 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v7 == 16)
      {
        v8 = a2;
        v6 = a1;
        goto LABEL_16;
      }
    }

LABEL_17:
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

unint64_t sub_238F12C60(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 3)
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
        v11 = sub_238F14144(a1 + 2, v10, 1uLL);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8364(v10, 2uLL, *(a1 + 1), *(a1 + 2));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C818C(v10, 3uLL, *(a1 + 12));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F12D1C(uint64_t a1, uint64_t a2)
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
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, (a1 + 8));
        }

        else
        {
          v4 = 0x500000002BLL;
        }
      }

      else if (v8 == 3)
      {
        v4 = sub_2393C5F70(a2, (a1 + 24));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238F141D0(a1 + 2, a2);
      }
    }

    else
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

unint64_t sub_238F12E24(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F14144(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F12E78(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F141D0(a1, a2);
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

unint64_t sub_238F12F0C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F384C0(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F12F60(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F12FF4(a2, a1);
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

unint64_t sub_238F12FF4(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F141D0(a2, a1);
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

uint64_t sub_238F13088(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        return sub_2393C8DE0(a2, v7);
      }
    }
  }

  return result;
}

unint64_t sub_238F1310C(_BYTE *a1, uint64_t a2)
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
      v5 = sub_238F131A0(a2, a1);
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

unint64_t sub_238F131A0(uint64_t a1, _BYTE *a2)
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
    if (v5 >= 9)
    {
      LOBYTE(v5) = 2;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

uint64_t sub_238F131F8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 6)
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

unint64_t sub_238F1327C(_BYTE *a1, uint64_t a2)
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
      v5 = sub_238F01014(a2, a1);
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

unint64_t sub_238F13310(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v8 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v8);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 5)
    {
      return 0x5C00000587;
    }

    result = sub_2393C8140(a2, 0, v6);
    if (!result)
    {
      v7 = a1[1];
      if (v7 == 11)
      {
        return 0x5C00000587;
      }

      result = sub_2393C8140(a2, 1uLL, v7);
      if (!result)
      {
        result = sub_238EFD4A8(a2, 2uLL, a1 + 1);
        if (!result)
        {
          result = sub_238F13404(a2, 3uLL, a1 + 6);
          if (!result)
          {
            result = sub_238EFD454(a2, 4uLL, (a1 + 8));
            if (!result)
            {
              result = sub_238F13458(a2, 5uLL, a1 + 24);
              if (!result)
              {
                return sub_2393C8DE0(a2, v8);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F13404(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[1])
  {
    v3 = *a3;
    if (v3 == 255)
    {
      v5 = 0xD000000000;
      LODWORD(v4) = 1415;
      return v4 | v5;
    }

    v4 = sub_2393C8140(a1, a2, v3);
  }

  else
  {
    v4 = sub_2393C8948(a1, a2);
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_238F13458(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F383F8(a1, a2, v5);
}

unint64_t sub_238F134B0(uint64_t a1, uint64_t a2)
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
          v4 = sub_238F00228(a2, (a1 + 6));
          break;
        case 4u:
          v4 = sub_238EFD658(a2, a1 + 8);
          break;
        case 5u:
          *(a1 + 24) = 1;
          *(a1 + 32) = 0u;
          *(a1 + 48) = 0u;
          *(a1 + 64) = 0u;
          *(a1 + 80) = 0u;
          *(a1 + 96) = 0u;
          v4 = sub_238EFE808(a2, a1 + 32);
          break;
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238F07C44(a2, (a1 + 1));
      }

      else if (v8 == 2)
      {
        v4 = sub_238EFD714(a2, (a1 + 2));
      }
    }

    else
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

unint64_t sub_238F135D8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v9);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 5)
    {
      return 0x5C00000587;
    }

    result = sub_2393C8140(a2, 0, v6);
    if (!result)
    {
      v7 = a1[1];
      if (v7 == 11)
      {
        return 0x5C00000587;
      }

      result = sub_2393C8140(a2, 1uLL, v7);
      if (!result)
      {
        v8 = a1[2];
        if (v8 == 5)
        {
          return 0x5C00000587;
        }

        result = sub_2393C8140(a2, 2uLL, v8);
        if (!result)
        {
          result = sub_238EFD4A8(a2, 3uLL, a1 + 2);
          if (!result)
          {
            result = sub_238F13404(a2, 4uLL, a1 + 8);
            if (!result)
            {
              result = sub_238EFD454(a2, 5uLL, (a1 + 16));
              if (!result)
              {
                result = sub_238F13458(a2, 6uLL, a1 + 32);
                if (!result)
                {
                  return sub_2393C8DE0(a2, v9);
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

unint64_t sub_238F136E8(uint64_t a1, uint64_t a2)
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

    if (v8 <= 2u)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          v4 = sub_238F07C44(a2, (a1 + 1));
        }

        else if (v8 == 2)
        {
          v4 = sub_238F000A4(a2, (a1 + 2));
        }
      }

      else
      {
        v4 = sub_238F000A4(a2, a1);
      }
    }

    else if (v8 > 4u)
    {
      if (v8 == 5)
      {
        v4 = sub_238EFD658(a2, a1 + 16);
      }

      else if (v8 == 6)
      {
        *(a1 + 32) = 1;
        *(a1 + 40) = 0u;
        *(a1 + 56) = 0u;
        *(a1 + 72) = 0u;
        *(a1 + 88) = 0u;
        *(a1 + 104) = 0u;
        v4 = sub_238EFE808(a2, a1 + 40);
      }
    }

    else if (v8 == 3)
    {
      v4 = sub_238EFD714(a2, (a1 + 4));
    }

    else if (v8 == 4)
    {
      v4 = sub_238F00228(a2, (a1 + 8));
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

unint64_t sub_238F13838(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v9);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 14)
    {
      return 0x5C00000587;
    }

    result = sub_2393C8140(a2, 0, v6);
    if (!result)
    {
      v7 = a1[1];
      if (v7 == 3)
      {
        return 0x5C00000587;
      }

      result = sub_2393C8140(a2, 1uLL, v7);
      if (!result)
      {
        v8 = a1[2];
        if (v8 == 11)
        {
          return 0x5C00000587;
        }

        result = sub_2393C8140(a2, 2uLL, v8);
        if (!result)
        {
          result = sub_238EFD4A8(a2, 3uLL, a1 + 2);
          if (!result)
          {
            result = sub_238F13404(a2, 4uLL, a1 + 8);
            if (!result)
            {
              result = sub_238EFD454(a2, 5uLL, (a1 + 16));
              if (!result)
              {
                result = sub_238EFD4A8(a2, 6uLL, a1 + 16);
                if (!result)
                {
                  return sub_2393C8DE0(a2, v9);
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

unint64_t sub_238F13948(_BYTE *a1, uint64_t a2)
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
          v4 = sub_238EFD7D0(a2, a1 + 1);
        }

        else if (v9 == 2)
        {
          v4 = sub_238F07C44(a2, a1 + 2);
        }
      }

      else
      {
        v4 = sub_238F13A68(a2, a1);
      }

      goto LABEL_20;
    }

    if (v9 <= 4u)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v4 = sub_238F00228(a2, a1 + 8);
        }

        goto LABEL_20;
      }

      v5 = (a1 + 4);
      goto LABEL_17;
    }

    if (v9 == 5)
    {
      v4 = sub_238EFD658(a2, (a1 + 16));
      goto LABEL_20;
    }

    if (v9 == 6)
    {
      v5 = (a1 + 32);
LABEL_17:
      v4 = sub_238EFD714(a2, v5);
    }

LABEL_20:
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

unint64_t sub_238F13A68(uint64_t a1, _BYTE *a2)
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
    if (v5 >= 0xE)
    {
      LOBYTE(v5) = 14;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

uint64_t sub_238F13AC0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 5)
    {
      return 0x5C00000587;
    }

    else
    {
      result = sub_2393C8140(a2, 0, v6);
      if (!result)
      {
        result = sub_238EFD4A8(a2, 1uLL, a1 + 1);
        if (!result)
        {
          result = sub_238F13404(a2, 2uLL, a1 + 6);
          if (!result)
          {
            result = sub_238F13B80(a2, 3uLL, (a1 + 8));
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

unint64_t sub_238F13B80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((*(a3 + 16) & 1) == 0)
  {
    return sub_2393C8948(a1, a2);
  }

  v4 = *a3;
  v5 = *(a3 + 8);
  v8 = 0;
  result = sub_2393C8CE0(a1, a2, 22, &v8);
  if (!result)
  {
    if (v5)
    {
      v7 = 4 * v5;
      while (1)
      {
        result = sub_238F14144(v4, a1, 0x100uLL);
        if (result)
        {
          break;
        }

        v4 += 4;
        v7 -= 4;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      result = sub_2393C8DE0(a1, v8);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_238F13C20(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F00228(a2, (a1 + 6));
      }

      else if (v8 == 3)
      {
        v4 = sub_238EFE808(a2, a1 + 8);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238EFD714(a2, (a1 + 2));
      }
    }

    else
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

unint64_t sub_238F13CF8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v8 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v8);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 5)
    {
      return 0x5C00000587;
    }

    result = sub_2393C8140(a2, 0, v6);
    if (!result)
    {
      v7 = a1[1];
      if (v7 == 5)
      {
        return 0x5C00000587;
      }

      result = sub_2393C8140(a2, 1uLL, v7);
      if (!result)
      {
        result = sub_238EFD4A8(a2, 2uLL, a1 + 1);
        if (!result)
        {
          result = sub_238F13404(a2, 3uLL, a1 + 6);
          if (!result)
          {
            result = sub_238F13B80(a2, 4uLL, (a1 + 8));
            if (!result)
            {
              return sub_2393C8DE0(a2, v8);
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F13DD8(uint64_t a1, uint64_t a2)
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
          v4 = sub_238F000A4(a2, (a1 + 1));
        }
      }

      else
      {
        v4 = sub_238F000A4(a2, a1);
      }
    }

    else
    {
      switch(v8)
      {
        case 2u:
          v4 = sub_238EFD714(a2, (a1 + 2));
          break;
        case 3u:
          v4 = sub_238F00228(a2, (a1 + 6));
          break;
        case 4u:
          v4 = sub_238EFE808(a2, a1 + 8);
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

unint64_t sub_238F13EC8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    if (!*a1)
    {
      return 0x5C00000587;
    }

    result = sub_2393C8140(a2, 0, *a1);
    if (result)
    {
      return result;
    }

    v6 = a1[1];
    if (v6 == 3)
    {
      return 0x5C00000587;
    }

    result = sub_2393C8140(a2, 1uLL, v6);
    if (!result)
    {
      if (!a1[2])
      {
        return 0x5C00000587;
      }

      result = sub_2393C8140(a2, 2uLL, a1[2]);
      if (!result)
      {
        result = sub_238EFD4A8(a2, 3uLL, a1 + 2);
        if (!result)
        {
          result = sub_238F13404(a2, 4uLL, a1 + 8);
          if (!result)
          {
            result = sub_238EFD454(a2, 5uLL, (a1 + 16));
            if (!result)
            {
              result = sub_238EFD4A8(a2, 6uLL, a1 + 16);
              if (!result)
              {
                return sub_2393C8DE0(a2, v7);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F13FCC(_BYTE *a1, uint64_t a2)
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
          v4 = sub_238EFD7D0(a2, a1 + 1);
        }

        else if (v9 == 2)
        {
          v4 = sub_238F140EC(a2, a1 + 2);
        }
      }

      else
      {
        v4 = sub_238EFE7B0(a2, a1);
      }

      goto LABEL_20;
    }

    if (v9 <= 4u)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v4 = sub_238F00228(a2, a1 + 8);
        }

        goto LABEL_20;
      }

      v5 = (a1 + 4);
      goto LABEL_17;
    }

    if (v9 == 5)
    {
      v4 = sub_238EFD658(a2, (a1 + 16));
      goto LABEL_20;
    }

    if (v9 == 6)
    {
      v5 = (a1 + 32);
LABEL_17:
      v4 = sub_238EFD714(a2, v5);
    }

LABEL_20:
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

unint64_t sub_238F140EC(uint64_t a1, _BYTE *a2)
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
    if ((v5 - 1) >= 2)
    {
      LOBYTE(v5) = 0;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F14144(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    if (*a1)
    {
      v8 = sub_2393C8140(v7, 0, *a1);
      v9 = v5;
      if (!v8)
      {
        v8 = sub_2393C818C(v7, 1uLL, *(a1 + 1));
        v9 = v6;
      }
    }

    else
    {
      v8 = 0x5C00000587;
      v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F141D0(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5F70(a2, (a1 + 2));
    }

    else if (!v8)
    {
      v4 = sub_238EFE7B0(a2, a1);
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

unint64_t sub_238F14270(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 9)
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
        v9 = sub_2393C818C(v8, 1uLL, *(a1 + 1));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F142FC(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5F70(a2, (a1 + 2));
    }

    else if (!v8)
    {
      v4 = sub_238F1439C(a2, a1);
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

unint64_t sub_238F1439C(uint64_t a1, _BYTE *a2)
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
    if (v5 >= 9)
    {
      LOBYTE(v5) = 9;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F143F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (!v4)
    {
      goto LABEL_17;
    }

    if (v4 == 1)
    {
      a1 += 80;
      goto LABEL_17;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65528)
    {
      a1 = v3 + 160;
      goto LABEL_17;
    }
  }

  else
  {
    if (v4 > 65531)
    {
      if (v4 == 65532)
      {
        v6 = sub_2393C5FC8(a2, (a1 + 376));
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 65533)
        {
          return v6 | v5;
        }

        v6 = sub_2393C5F70(a2, (v3 + 380));
      }

LABEL_18:
      v5 = v6 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }

    if (v4 == 65529)
    {
      a1 += 232;
      goto LABEL_17;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65531)
    {
      a1 = v3 + 304;
LABEL_17:
      v6 = sub_238F36BB4(a1, a2);
      goto LABEL_18;
    }
  }

  return v6 | v5;
}

unint64_t sub_238F14510(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    v8 = *sub_238DE36D8(a4);
    v9 = *(a1 + 88);
    sub_2394C389C(&v17, a2, a3);
    if (v8 != v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_2394C389C(&v17, a2, a3);
  }

  if (!v18)
  {
    v18 = sub_238EFDC40(v17, 0, a1);
    v19 = v10;
    if (!v18)
    {
      v18 = sub_238EFEFB0(v17, 1uLL, (a1 + 24));
      v19 = v11;
      if (!v18)
      {
        v18 = sub_2393C818C(v17, 2uLL, *(a1 + 40));
        v19 = v12;
        if (!v18)
        {
          v18 = sub_2393C818C(v17, 3uLL, *(a1 + 42));
          v19 = v13;
        }
      }
    }
  }

  sub_238F1469C(&v17, 4u, (a1 + 48));
  sub_238F1475C(&v17, 5u, (a1 + 64));
  if (!v18)
  {
    v18 = sub_2393C8154(v17, 6uLL, *(a1 + 80));
    v19 = v14;
  }

LABEL_12:
  if (*a4 == 1 && !v18)
  {
    v18 = sub_2393C8140(v17, 0xFEuLL, *(a1 + 88));
    v19 = v15;
  }

  return sub_2394C38E0(&v17);
}

unint64_t sub_238F1466C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F14510(a1, a2, a3, v5);
}

unint64_t sub_238F1469C(unint64_t result, unsigned int a2, uint64_t *a3)
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
        result = sub_238F0E280(v7, v6, 0x100uLL);
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

unint64_t sub_238F1475C(unint64_t result, unsigned int a2, uint64_t *a3)
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

      v11 = v7 + 16 * v8;
      while (1)
      {
        result = sub_2393C85FC(v6, 0x100uLL, *v7, *(v7 + 8));
        if (result)
        {
          break;
        }

        v7 += 16;
        if (v7 == v11)
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

unint64_t sub_238F1481C(uint64_t a1, uint64_t a2)
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

    if (v11 > 3u)
    {
      if (v11 > 5u)
      {
        if (v11 != 6)
        {
          if (v11 == 254)
          {
            v4 = sub_2393C5ED0(a2, (a1 + 200));
          }

          goto LABEL_24;
        }

        v5 = (a1 + 192);
        goto LABEL_23;
      }

      if (v11 == 4)
      {
        v6 = a1 + 48;
        goto LABEL_19;
      }

      if (v11 == 5)
      {
        v6 = a1 + 120;
LABEL_19:
        v4 = sub_238F36BB4(v6, a2);
      }
    }

    else if (v11 > 1u)
    {
      if (v11 == 2)
      {
        v7 = (a1 + 40);
        goto LABEL_21;
      }

      if (v11 == 3)
      {
        v7 = (a1 + 42);
LABEL_21:
        v4 = sub_2393C5F70(a2, v7);
      }
    }

    else
    {
      if (v11)
      {
        *(a1 + 24) = 1;
        *(a1 + 32) = 0;
        v5 = (a1 + 32);
LABEL_23:
        v4 = sub_2393C5F2C(a2, v5);
        goto LABEL_24;
      }

      *a1 = 1;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v4 = sub_2393C61E0(a2, (a1 + 8));
    }

LABEL_24:
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

unint64_t sub_238F14990(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    v8 = *sub_238DE36D8(a4);
    v9 = *(a1 + 48);
    sub_2394C389C(&v15, a2, a3);
    if (v8 != v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_2394C389C(&v15, a2, a3);
  }

  if (!v16)
  {
    v16 = sub_2393C85FC(v15, 0, *a1, *(a1 + 8));
    v17 = v10;
    if (!v16)
    {
      v16 = sub_238F35FB0(a1 + 16, v15, 1uLL);
      v17 = v11;
      if (!v16)
      {
        v16 = sub_2393C8154(v15, 2uLL, *(a1 + 40));
        v17 = v12;
      }
    }
  }

LABEL_9:
  if (*a4 == 1 && !v16)
  {
    v16 = sub_2393C8140(v15, 0xFEuLL, *(a1 + 48));
    v17 = v13;
  }

  return sub_2394C38E0(&v15);
}

unint64_t sub_238F14A98(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F14990(a1, a2, a3, v5);
}

unint64_t sub_238F14AC8(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F2C(a2, (a1 + 40));
      }

      else if (v8 == 254)
      {
        v4 = sub_2393C5ED0(a2, (a1 + 48));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238F36034(a1 + 16, a2);
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

unint64_t sub_238F14BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        v7 = sub_238F35690(a1, a2);
        goto LABEL_27;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 1)
      {
        return v7 | v6;
      }

      v9 = a1 + 96;
    }

    else if (v5 == 2)
    {
      v9 = a1 + 192;
    }

    else if (v5 == 3)
    {
      v9 = a1 + 288;
    }

    else
    {
      v9 = a1 + 384;
    }

    v7 = sub_238F14CF8(a2, v9);
    goto LABEL_27;
  }

  if (v5 > 65530)
  {
    if (v5 == 65531)
    {
      v8 = a1 + 704;
      goto LABEL_26;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 776));
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v7 = sub_2393C5F70(a2, (a1 + 780));
    }

LABEL_27:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 5)
  {
    v7 = sub_238F14D9C(a2, a1 + 480);
    goto LABEL_27;
  }

  if (v5 == 65528)
  {
    v8 = a1 + 560;
    goto LABEL_26;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65529)
  {
    v8 = a1 + 632;
LABEL_26:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_27;
  }

  return v7 | v6;
}

unint64_t sub_238F14CF8(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 88) == 1)
    {
      *(a2 + 88) = 0;
    }
  }

  else
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 88) = 1;
    v6 = sub_238F15258(a2, a1);
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

unint64_t sub_238F14D9C(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F15080(a2, a1);
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

unint64_t sub_238F14E3C(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238F14EB8(a2, 0, a1);
    if (!result)
    {
      result = sub_238F14EB8(a2, 1uLL, a1 + 96);
      if (!result)
      {
        return sub_2393C8DE0(a2, v6);
      }
    }
  }

  return result;
}

unint64_t sub_238F14EB8(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F15174(v5, a1, a2);
}

unint64_t sub_238F14F0C(_BYTE *a1, uint64_t a2)
{
  v14[0] = 0;
  v15 = a2;
  v4 = a1 + 96;
  v5 = (a1 + 104);
  v6 = (a1 + 8);
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
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0;
      v7 = sub_238F15258(v9, a2);
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

unint64_t sub_238F14FE4(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_238F1EDEC(v9, 0, a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_238F1EDEC(v9, 1uLL, a1 + 12);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F384E8(v9, 2uLL, a1 + 24);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F384E8(v9, 3uLL, a1 + 48);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F15080(uint64_t a1, uint64_t a2)
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
      if (v10 == 2)
      {
        *(a1 + 24) = 1;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        v6 = a1 + 32;
        goto LABEL_13;
      }

      if (v10 == 3)
      {
        *(a1 + 48) = 1;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        v6 = a1 + 56;
LABEL_13:
        v4 = sub_238EFD658(a2, v6);
      }
    }

    else
    {
      if (!v10)
      {
        *a1 = 1;
        *(a1 + 4) = 0;
        v5 = a1 + 4;
        goto LABEL_11;
      }

      if (v10 == 1)
      {
        *(a1 + 12) = 1;
        *(a1 + 16) = 0;
        v5 = a1 + 16;
LABEL_11:
        v4 = sub_238EFDEB0(a2, v5);
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

unint64_t sub_238F15174(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C8284(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_238F36DFC(v12, 1uLL, (a1 + 8));
      v14 = v5;
      if (!v13)
      {
        v13 = sub_238F36DFC(v12, 2uLL, (a1 + 16));
        v14 = v6;
        if (!v13)
        {
          v13 = sub_238EFEFB0(v12, 3uLL, (a1 + 24));
          v14 = v7;
          if (!v13)
          {
            v13 = sub_238EFEFB0(v12, 4uLL, (a1 + 40));
            v14 = v8;
            if (!v13)
            {
              v13 = sub_238F16720(v12, 5uLL, (a1 + 56));
              v14 = v9;
              if (!v13)
              {
                v13 = sub_238F16720(v12, 6uLL, (a1 + 72));
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

unint64_t sub_238F15258(uint64_t a1, uint64_t a2)
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

    if (v12 <= 2u)
    {
      switch(v12)
      {
        case 0u:
          v8 = a2;
          v7 = a1;
          goto LABEL_20;
        case 1u:
          *(a1 + 8) = 1;
          *(a1 + 12) = 0;
          v6 = (a1 + 12);
          goto LABEL_22;
        case 2u:
          *(a1 + 16) = 1;
          *(a1 + 20) = 0;
          v6 = (a1 + 20);
LABEL_22:
          v4 = sub_2393C5FC8(a2, v6);
          break;
      }
    }

    else if (v12 > 4u)
    {
      if (v12 == 5)
      {
        *(a1 + 56) = 1;
        *(a1 + 64) = 0;
        v7 = (a1 + 64);
LABEL_19:
        v8 = a2;
LABEL_20:
        v4 = sub_2393C5DA0(v8, v7);
        goto LABEL_23;
      }

      if (v12 == 6)
      {
        *(a1 + 72) = 1;
        *(a1 + 80) = 0;
        v7 = (a1 + 80);
        goto LABEL_19;
      }
    }

    else
    {
      if (v12 == 3)
      {
        *(a1 + 24) = 1;
        *(a1 + 32) = 0;
        v5 = (a1 + 32);
        goto LABEL_17;
      }

      if (v12 == 4)
      {
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        v5 = (a1 + 48);
LABEL_17:
        v4 = sub_2393C5F2C(a2, v5);
      }
    }

LABEL_23:
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

unint64_t sub_238F153A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 <= 65528)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        v6 = sub_238F076A4(a2, a1);
        goto LABEL_20;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 1)
      {
        v6 = sub_238F154C4(a2, a1 + 4);
LABEL_20:
        v5 = v6 & 0xFFFFFFFF00000000;
        return v6 | v5;
      }

      return v6 | v5;
    }

    if (v4 == 2)
    {
      v7 = a1 + 32;
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65528)
      {
        return v6 | v5;
      }

      v7 = a1 + 104;
    }

LABEL_19:
    v6 = sub_238F36BB4(v7, a2);
    goto LABEL_20;
  }

  if (v4 <= 65531)
  {
    if (v4 == 65529)
    {
      v7 = a1 + 176;
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65531)
      {
        return v6 | v5;
      }

      v7 = a1 + 248;
    }

    goto LABEL_19;
  }

  if (v4 == 65532)
  {
    v6 = sub_2393C5FC8(a2, (a1 + 320));
    goto LABEL_20;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65533)
  {
    v6 = sub_2393C5F70(a2, (a1 + 324));
    goto LABEL_20;
  }

  return v6 | v5;
}

unint64_t sub_238F154C4(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 20) == 1)
    {
      *(a2 + 20) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 20) = 1;
    v6 = sub_238F15778(a2, a1);
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

unint64_t sub_238F1555C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238F155C4(a2, 0, a1);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F155C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 20))
  {
    return sub_238F15680(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F155EC(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F154C4(a2, a1);
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

unint64_t sub_238F15680(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v14, a2, a3);
  if (!v15)
  {
    v15 = sub_2393C81D4(v14, 0, *a1);
    v16 = v4;
    if (!v15)
    {
      v15 = sub_238F16CC4(v14, 1uLL, a1 + 4);
      v16 = v5;
      if (!v15)
      {
        v15 = sub_2393C827C(v14, 2uLL, *(a1 + 12));
        v16 = v6;
        if (!v15)
        {
          v7 = 0x5C00000587;
          v8 = *(a1 + 14);
          if (v8 == 3)
          {
            goto LABEL_6;
          }

          v15 = sub_2393C8140(v14, 3uLL, v8);
          v16 = v10;
          if (!v15)
          {
            v15 = sub_2393C827C(v14, 4uLL, *(a1 + 16));
            v16 = v11;
            if (!v15)
            {
              v13 = *(a1 + 18);
              if (v13 != 3)
              {
                v7 = sub_2393C8140(v14, 5uLL, v13);
                goto LABEL_7;
              }

LABEL_6:
              v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
LABEL_7:
              v15 = v7;
              v16 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v14);
}

unint64_t sub_238F15778(_DWORD *a1, uint64_t a2)
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
          v6 = a1 + 14;
          goto LABEL_14;
        case 4u:
          v5 = a1 + 4;
          goto LABEL_17;
        case 5u:
          v6 = a1 + 18;
LABEL_14:
          v4 = sub_238EFD7D0(a2, v6);
          break;
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        v4 = sub_238EFDEB0(a2, (a1 + 1));
      }

      else if (v10 == 2)
      {
        v5 = a1 + 3;
LABEL_17:
        v4 = sub_2393C5E20(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5FC8(a2, a1);
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

unint64_t sub_238F15870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v7 = sub_238EFD7D0(a2, a1);
        goto LABEL_36;
      case 1:
        v7 = sub_2393C5ED0(a2, (a1 + 1));
        goto LABEL_36;
      case 2:
        v8 = a1 + 8;
        goto LABEL_25;
      case 3:
        v8 = a1 + 80;
        goto LABEL_25;
      case 4:
        v10 = a1 + 152;
        goto LABEL_35;
      case 5:
        v10 = a1 + 168;
        goto LABEL_35;
      case 6:
        v10 = a1 + 184;
        goto LABEL_35;
      case 7:
        v10 = a1 + 200;
        goto LABEL_35;
      case 8:
        v10 = a1 + 216;
        goto LABEL_35;
      case 9:
        v10 = a1 + 232;
        goto LABEL_35;
      case 10:
        v10 = a1 + 248;
        goto LABEL_35;
      case 11:
        v10 = a1 + 264;
        goto LABEL_35;
      case 12:
        v10 = a1 + 280;
        goto LABEL_35;
      case 13:
        v10 = a1 + 296;
        goto LABEL_35;
      case 14:
        v10 = a1 + 312;
        goto LABEL_35;
      case 15:
        v9 = a1 + 328;
        goto LABEL_23;
      case 16:
        v9 = a1 + 408;
LABEL_23:
        v7 = sub_238EFE808(a2, v9);
        goto LABEL_36;
      case 17:
        v10 = a1 + 488;
        goto LABEL_35;
      case 18:
        v10 = a1 + 504;
LABEL_35:
        v7 = sub_238F0C244(a2, v10);
        goto LABEL_36;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v8 = a1 + 520;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v8 = a1 + 592;
    }

LABEL_25:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_36;
  }

  if (v5 == 65531)
  {
    v8 = a1 + 664;
    goto LABEL_25;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 736));
    goto LABEL_36;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 740));
LABEL_36:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F15A28(uint64_t a1, uint64_t a2, unint64_t a3)
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
        v8 = 120 * v7;
        while (1)
        {
          result = sub_238F15BEC(v6, a2, 0x100uLL);
          if (result)
          {
            break;
          }

          v6 += 60;
          v8 -= 120;
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
          return sub_2393C8DE0(a2, v9);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F15AE0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8140(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F23B88(v7, 1uLL, (a1 + 8));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F15B4C(_BYTE *a1, uint64_t a2)
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
      v4 = sub_238F0C244(a2, (a1 + 8));
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

unint64_t sub_238F15BEC(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v17, a2, a3);
  if (!v18)
  {
    v4 = *a1;
    if (v4 == 17)
    {
      v18 = 0x5C00000587;
      v19 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v18 = sub_2393C818C(v17, 0, v4);
      v19 = v5;
      if (!v18)
      {
        v18 = sub_2393C8284(v17, 1uLL, *(a1 + 1));
        v19 = v6;
        if (!v18)
        {
          v18 = sub_2393C8284(v17, 2uLL, *(a1 + 2));
          v19 = v7;
          if (!v18)
          {
            v18 = sub_238F36DFC(v17, 3uLL, a1 + 24);
            v19 = v8;
            if (!v18)
            {
              v18 = sub_238F36DFC(v17, 4uLL, a1 + 32);
              v19 = v9;
              if (!v18)
              {
                v18 = sub_238F36DFC(v17, 5uLL, a1 + 40);
                v19 = v10;
                if (!v18)
                {
                  v18 = sub_238F36DFC(v17, 6uLL, a1 + 48);
                  v19 = v11;
                  if (!v18)
                  {
                    v18 = sub_238EFEFB0(v17, 7uLL, a1 + 56);
                    v19 = v12;
                    if (!v18)
                    {
                      v18 = sub_238EFEFB0(v17, 8uLL, a1 + 72);
                      v19 = v13;
                      if (!v18)
                      {
                        v18 = sub_238EFEFB0(v17, 9uLL, a1 + 88);
                        v19 = v14;
                        if (!v18)
                        {
                          v18 = sub_238EFEFB0(v17, 0xAuLL, a1 + 104);
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

unint64_t sub_238F15D50(uint64_t a1, uint64_t a2)
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

    if (v11 <= 4u)
    {
      if (v11 <= 1u)
      {
        if (v11)
        {
          v7 = (a1 + 8);
LABEL_25:
          v4 = sub_2393C5DA0(a2, v7);
          goto LABEL_30;
        }

        v4 = sub_238F15EF4(a2, a1);
      }

      else
      {
        switch(v11)
        {
          case 2u:
            v7 = (a1 + 16);
            goto LABEL_25;
          case 3u:
            *(a1 + 24) = 1;
            *(a1 + 28) = 0;
            v6 = (a1 + 28);
            goto LABEL_27;
          case 4u:
            *(a1 + 32) = 1;
            *(a1 + 36) = 0;
            v6 = (a1 + 36);
LABEL_27:
            v4 = sub_2393C5FC8(a2, v6);
            break;
        }
      }
    }

    else if (v11 > 7u)
    {
      switch(v11)
      {
        case 8u:
          *(a1 + 72) = 1;
          *(a1 + 80) = 0;
          v5 = (a1 + 80);
          goto LABEL_29;
        case 9u:
          *(a1 + 88) = 1;
          *(a1 + 96) = 0;
          v5 = (a1 + 96);
          goto LABEL_29;
        case 0xAu:
          *(a1 + 104) = 1;
          *(a1 + 112) = 0;
          v5 = (a1 + 112);
          goto LABEL_29;
      }
    }

    else
    {
      switch(v11)
      {
        case 5u:
          *(a1 + 40) = 1;
          *(a1 + 44) = 0;
          v6 = (a1 + 44);
          goto LABEL_27;
        case 6u:
          *(a1 + 48) = 1;
          *(a1 + 52) = 0;
          v6 = (a1 + 52);
          goto LABEL_27;
        case 7u:
          *(a1 + 56) = 1;
          *(a1 + 64) = 0;
          v5 = (a1 + 64);
LABEL_29:
          v4 = sub_2393C5F2C(a2, v5);
          break;
      }
    }

LABEL_30:
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

unint64_t sub_238F15EF4(uint64_t a1, _WORD *a2)
{
  v3 = sub_238F36E54(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 0x11)
    {
      LOWORD(v5) = 17;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F15F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 47)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v7 = sub_238F161A0(a2, a1);
        goto LABEL_51;
      case 1:
        v7 = sub_238F01014(a2, (a1 + 2));
        goto LABEL_51;
      case 2:
        v7 = sub_238F16258(a2, (a1 + 3));
        goto LABEL_51;
      case 3:
        v12 = a1 + 4;
        goto LABEL_48;
      case 4:
        v12 = a1 + 12;
        goto LABEL_48;
      case 5:
        v11 = (a1 + 24);
        goto LABEL_36;
      case 6:
        v11 = (a1 + 32);
        goto LABEL_36;
      case 7:
        v11 = (a1 + 40);
        goto LABEL_36;
      case 8:
        v11 = (a1 + 48);
        goto LABEL_36;
      case 9:
        v11 = (a1 + 56);
LABEL_36:
        v7 = sub_2393C5DA0(a2, v11);
        goto LABEL_51;
      case 10:
        v10 = (a1 + 64);
        goto LABEL_42;
      case 35:
        v12 = a1 + 68;
        goto LABEL_48;
      case 36:
        v12 = a1 + 76;
        goto LABEL_48;
      case 37:
        v9 = a1 + 88;
        goto LABEL_46;
      case 38:
        v13 = (a1 + 104);
        goto LABEL_44;
      case 39:
        v7 = sub_238EFD714(a2, (a1 + 106));
        goto LABEL_51;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 66)
  {
    if (v5 <= 63)
    {
      if (v5 == 48)
      {
        v13 = (a1 + 110);
LABEL_44:
        v7 = sub_238F00228(a2, v13);
        goto LABEL_51;
      }

      if (v5 != 49)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 50)
        {
          v7 = sub_238F0BA3C(a2, a1 + 128);
LABEL_51:
          v6 = v7 & 0xFFFFFFFF00000000;
          return v7 | v6;
        }

        return v7 | v6;
      }

      v9 = a1 + 112;
LABEL_46:
      v7 = sub_238F0C244(a2, v9);
      goto LABEL_51;
    }

    if (v5 == 64)
    {
      v12 = a1 + 152;
    }

    else
    {
      if (v5 != 65)
      {
        v9 = a1 + 168;
        goto LABEL_46;
      }

      v12 = a1 + 160;
    }

LABEL_48:
    v7 = sub_238EFDEB0(a2, v12);
    goto LABEL_51;
  }

  if (v5 <= 65530)
  {
    if (v5 == 67)
    {
      v9 = a1 + 184;
      goto LABEL_46;
    }

    if (v5 == 65528)
    {
      v8 = a1 + 200;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v8 = a1 + 272;
    }

LABEL_50:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_51;
  }

  if (v5 == 65531)
  {
    v8 = a1 + 344;
    goto LABEL_50;
  }

  if (v5 == 65532)
  {
    v10 = (a1 + 416);
LABEL_42:
    v7 = sub_2393C5FC8(a2, v10);
    goto LABEL_51;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 420));
    goto LABEL_51;
  }

  return v7 | v6;
}

unint64_t sub_238F161A0(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_238EFFAE8(a1, a2);
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

unint64_t sub_238F16258(uint64_t a1, _BYTE *a2)
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
    if ((v5 - 255) >= 0xFFFFFF11)
    {
      LOBYTE(v5) = 16;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F162B4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(v5, *a2, a3);
  sub_238F16300(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F16300(unint64_t result, unsigned int a2, uint64_t a3)
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

      v11 = 24 * v8;
      while (1)
      {
        result = sub_238F17068(v7, v6, 0x100uLL);
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

unint64_t sub_238F163C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F16CC4(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8284(v8, 1uLL, *(a1 + 8));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8284(v8, 2uLL, *(a1 + 16));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F16448(uint64_t a1, uint64_t a2)
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
      v5 = (a1 + 16);
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_238EFDEB0(a2, a1);
        }

        goto LABEL_10;
      }

      v5 = (a1 + 8);
    }

    v4 = sub_2393C5DA0(a2, v5);
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

unint64_t sub_238F164F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F16CC4(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8284(v7, 1uLL, *(a1 + 8));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F16564(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5DA0(a2, (a1 + 8));
    }

    else if (!v8)
    {
      v4 = sub_238EFDEB0(a2, a1);
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

unint64_t sub_238F16604(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F16300(v5, 0, a1);
  return sub_2394C38E0(v5);
}

uint64_t sub_238F1664C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_2393C81D4(a2, 0, *a1);
    if (!result)
    {
      v6 = *(a1 + 4);
      if (v6 == 7)
      {
        return 0x5C00000587;
      }

      else
      {
        result = sub_2393C8140(a2, 1uLL, v6);
        if (!result)
        {
          result = sub_2393C81D4(a2, 2uLL, *(a1 + 8));
          if (!result)
          {
            result = sub_2393C8284(a2, 3uLL, *(a1 + 16));
            if (!result)
            {
              result = sub_238F16720(a2, 4uLL, (a1 + 24));
              if (!result)
              {
                return sub_2393C8DE0(a2, v7);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F16720(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_2393C8284(a1, a2, *v5);
}

unint64_t sub_238F16778(uint64_t a1, uint64_t a2)
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

    if (v11 <= 1u)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          v4 = sub_238EFFAE8(a2, (a1 + 4));
        }

        goto LABEL_16;
      }

      v7 = a2;
      v6 = a1;
      goto LABEL_15;
    }

    switch(v11)
    {
      case 2u:
        v6 = (a1 + 8);
        v7 = a2;
LABEL_15:
        v4 = sub_2393C5FC8(v7, v6);
        break;
      case 3u:
        v5 = (a1 + 16);
        goto LABEL_13;
      case 4u:
        *(a1 + 24) = 1;
        *(a1 + 32) = 0;
        v5 = (a1 + 32);
LABEL_13:
        v4 = sub_2393C5DA0(a2, v5);
        break;
    }

LABEL_16:
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

uint64_t sub_238F16870(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_2393C81D4(a2, 0, *a1);
    if (!result)
    {
      v6 = *(a1 + 4);
      if (v6 == 7)
      {
        return 0x5C00000587;
      }

      else
      {
        result = sub_2393C8140(a2, 1uLL, v6);
        if (!result)
        {
          result = sub_2393C8284(a2, 2uLL, *(a1 + 8));
          if (!result)
          {
            result = sub_238F16720(a2, 3uLL, (a1 + 16));
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

unint64_t sub_238F16930(uint64_t a1, uint64_t a2)
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
          v4 = sub_238EFFAE8(a2, (a1 + 4));
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
      v5 = (a1 + 8);
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      *(a1 + 16) = 1;
      *(a1 + 24) = 0;
      v5 = (a1 + 24);
LABEL_12:
      v4 = sub_2393C5DA0(a2, v5);
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

unint64_t sub_238F16A14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v8);
  if (!result)
  {
    result = sub_2393C81D4(a2, 0, *a1);
    if (!result)
    {
      v6 = *(a1 + 4);
      if (v6 == 7)
      {
        return 0x5C00000587;
      }

      result = sub_2393C8140(a2, 1uLL, v6);
      if (!result)
      {
        v7 = *(a1 + 5);
        if (v7 == 3)
        {
          return 0x5C00000587;
        }

        result = sub_2393C8140(a2, 2uLL, v7);
        if (!result)
        {
          result = sub_2393C8284(a2, 4uLL, *(a1 + 8));
          if (!result)
          {
            result = sub_238F16720(a2, 5uLL, (a1 + 16));
            if (!result)
            {
              return sub_2393C8DE0(a2, v8);
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F16AF4(uint64_t a1, uint64_t a2)
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
          v4 = sub_238EFFAE8(a2, (a1 + 4));
        }
      }

      else
      {
        v4 = sub_2393C5FC8(a2, a1);
      }

      goto LABEL_15;
    }

    switch(v9)
    {
      case 2u:
        v4 = sub_238EFD7D0(a2, (a1 + 5));
        break;
      case 4u:
        v5 = (a1 + 8);
        goto LABEL_13;
      case 5u:
        *(a1 + 16) = 1;
        *(a1 + 24) = 0;
        v5 = (a1 + 24);
LABEL_13:
        v4 = sub_2393C5DA0(a2, v5);
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

unint64_t sub_238F16BF0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v9);
  if (!result)
  {
    result = sub_238F16CC4(a2, 0, a1);
    if (!result)
    {
      v6 = a1[8];
      if (v6 == 7)
      {
        return 0x5C00000587;
      }

      result = sub_2393C8140(a2, 1uLL, v6);
      if (!result)
      {
        v7 = a1[9];
        if (v7 == 16)
        {
          return 0x5C00000587;
        }

        result = sub_2393C8140(a2, 2uLL, v7);
        if (!result)
        {
          v8 = a1[10];
          if (v8 == 16)
          {
            return 0x5C00000587;
          }

          result = sub_2393C8140(a2, 4uLL, v8);
          if (!result)
          {
            return sub_2393C8DE0(a2, v9);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F16CC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    v3 = *a3;
    if (v3 == -1)
    {
      v5 = 0xD000000000;
      LODWORD(v4) = 1415;
      return v4 | v5;
    }

    v4 = sub_2393C81D4(a1, a2, v3);
  }

  else
  {
    v4 = sub_2393C8948(a1, a2);
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_238F16D18(uint64_t a1, uint64_t a2)
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
          v4 = sub_238EFFAE8(a2, (a1 + 8));
        }
      }

      else
      {
        v4 = sub_238EFDEB0(a2, a1);
      }

      goto LABEL_13;
    }

    if (v9 == 2)
    {
      v5 = (a1 + 9);
      goto LABEL_12;
    }

    if (v9 == 4)
    {
      v5 = (a1 + 10);
LABEL_12:
      v4 = sub_238F16258(a2, v5);
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

unint64_t sub_238F16DE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8364(a2, 0, *a1, *(a1 + 8));
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F16E50(_OWORD *a1, uint64_t a2)
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
      v5 = sub_2393C5C40(a2) == 16 ? sub_2393C60CC(a2, a1) : 0x500000002BLL;
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

unint64_t sub_238F16F14(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F02628(v8, 1uLL, a1 + 2);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F16720(v8, 2uLL, a1 + 8);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F16F98(uint64_t a1, uint64_t a2)
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
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        v4 = sub_2393C5DA0(a2, (a1 + 16));
        break;
      case 1:
        *(a1 + 2) = 1;
        v4 = sub_2393C5ED0(a2, (a1 + 3));
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

unint64_t sub_238F17068(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C8140(v6, 0, *a1);
    v8 = v4;
  }

  sub_238F170CC(&v6, 1u, (a1 + 8));
  return sub_2394C38E0(&v6);
}

unint64_t sub_238F170CC(unint64_t result, unsigned int a2, uint64_t a3)
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

      v11 = 24 * v8;
      while (1)
      {
        result = sub_238F16F14(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 12;
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

unint64_t sub_238F17190(_BYTE *a1, uint64_t a2)
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
      v4 = sub_238F36BB4((a1 + 8), a2);
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

unint64_t sub_238F17230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 8);
  if (v5 > 65527)
  {
    if (v5 <= 65530)
    {
      if (v5 == 65528)
      {
        a1 += 232;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65529)
        {
          return v7 | v6;
        }

        a1 = v4 + 304;
      }
    }

    else
    {
      if (v5 != 65531)
      {
        if (v5 == 65532)
        {
          v7 = sub_2393C5FC8(a2, (a1 + 448));
          goto LABEL_25;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 65533)
        {
          v7 = sub_2393C5F70(a2, (v4 + 452));
LABEL_25:
          v6 = v7 & 0xFFFFFFFF00000000;
          return v7 | v6;
        }

        return v7 | v6;
      }

      a1 += 376;
    }

    goto LABEL_24;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      a1 += 80;
    }

    else
    {
      if (v5 != 3)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 4)
        {
          v8 = (v4 + 224);
LABEL_15:
          v7 = sub_2393C5ED0(a2, v8);
          goto LABEL_25;
        }

        return v7 | v6;
      }

      a1 += 152;
    }

LABEL_24:
    v7 = sub_238F36BB4(a1, a2);
    goto LABEL_25;
  }

  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 1)
  {
    v8 = (v4 + 72);
    goto LABEL_15;
  }

  return v7 | v6;
}

unint64_t sub_238F1736C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8140(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238EFDC40(v7, 1uLL, a1 + 8);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F173D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 6)
  {
    if (v5 > 2)
    {
      if (v5 > 4)
      {
        if (v5 == 5)
        {
          v6 = (a1 + 32);
        }

        else
        {
          v6 = (a1 + 40);
        }
      }

      else if (v5 == 3)
      {
        v6 = (a1 + 16);
      }

      else
      {
        v6 = (a1 + 24);
      }

      goto LABEL_34;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        v7 = 0;
        LODWORD(v8) = 0;
        if (v5 == 2)
        {
          v6 = (a1 + 8);
LABEL_34:
          v8 = sub_2393C5F2C(a2, v6);
          goto LABEL_35;
        }

        return v8 | v7;
      }

      v10 = (a1 + 2);
      goto LABEL_32;
    }

    v8 = sub_238F11F70(a2, a1);
LABEL_35:
    v7 = v8 & 0xFFFFFFFF00000000;
    return v8 | v7;
  }

  if (v5 > 65528)
  {
    if (v5 > 65531)
    {
      if (v5 == 65532)
      {
        v8 = sub_2393C5FC8(a2, (a1 + 280));
      }

      else
      {
        v7 = 0;
        LODWORD(v8) = 0;
        if (v5 != 65533)
        {
          return v8 | v7;
        }

        v8 = sub_2393C5F70(a2, (a1 + 284));
      }

      goto LABEL_35;
    }

    if (v5 == 65529)
    {
      v9 = a1 + 136;
    }

    else
    {
      v7 = 0;
      LODWORD(v8) = 0;
      if (v5 != 65531)
      {
        return v8 | v7;
      }

      v9 = a1 + 208;
    }

LABEL_26:
    v8 = sub_238F36BB4(v9, a2);
    goto LABEL_35;
  }

  if (v5 == 7)
  {
    v10 = (a1 + 48);
LABEL_32:
    v8 = sub_238F076A4(a2, v10);
    goto LABEL_35;
  }

  if (v5 == 8)
  {
    v6 = (a1 + 56);
    goto LABEL_34;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  if (v5 == 65528)
  {
    v9 = a1 + 64;
    goto LABEL_26;
  }

  return v8 | v7;
}

unint64_t sub_238F17584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 7)
  {
    if (v5 > 65527)
    {
      if (v5 <= 65530)
      {
        if (v5 == 65528)
        {
          v11 = a1 + 16;
        }

        else
        {
          v6 = 0;
          LODWORD(v7) = 0;
          if (v5 != 65529)
          {
            return v7 | v6;
          }

          v11 = a1 + 88;
        }
      }

      else
      {
        if (v5 != 65531)
        {
          if (v5 == 65532)
          {
            v7 = sub_2393C5FC8(a2, (a1 + 232));
            goto LABEL_42;
          }

          v6 = 0;
          LODWORD(v7) = 0;
          if (v5 == 65533)
          {
            v7 = sub_2393C5F70(a2, (a1 + 236));
LABEL_42:
            v6 = v7 & 0xFFFFFFFF00000000;
            return v7 | v6;
          }

          return v7 | v6;
        }

        v11 = a1 + 160;
      }

      v7 = sub_238F36BB4(v11, a2);
      goto LABEL_42;
    }

    if (v5 > 9)
    {
      if (v5 != 10)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 11)
        {
          v7 = sub_238EFF894(a2, (a1 + 13));
          goto LABEL_42;
        }

        return v7 | v6;
      }

      v8 = (a1 + 12);
    }

    else if (v5 == 8)
    {
      v8 = (a1 + 10);
    }

    else
    {
      v8 = (a1 + 11);
    }

LABEL_30:
    v7 = sub_238EA4DB4(a2, v8);
    goto LABEL_42;
  }

  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 != 6)
      {
        v8 = (a1 + 9);
        goto LABEL_30;
      }

      v10 = (a1 + 8);
LABEL_38:
      v7 = sub_2393C5ED0(a2, v10);
      goto LABEL_42;
    }

    if (v5 == 4)
    {
      v10 = (a1 + 5);
      goto LABEL_38;
    }

    v9 = (a1 + 6);
LABEL_36:
    v7 = sub_238F00228(a2, v9);
    goto LABEL_42;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      v10 = (a1 + 4);
      goto LABEL_38;
    }

    v9 = (a1 + 2);
    goto LABEL_36;
  }

  if (!v5)
  {
    v7 = sub_238EFFAE8(a2, a1);
    goto LABEL_42;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 1)
  {
    v7 = sub_238F01014(a2, (a1 + 1));
    goto LABEL_42;
  }

  return v7 | v6;
}

unint64_t sub_238F177A0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        v10 = sub_238F37028(v9, 1uLL, a1 + 1);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F37028(v9, 2uLL, a1 + 3);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F17844(uint64_t a1, uint64_t a2)
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
      *(a1 + 3) = 1;
      v5 = (a1 + 4);
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_238EFF894(a2, a1);
        }

        goto LABEL_10;
      }

      *(a1 + 1) = 1;
      v5 = (a1 + 2);
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

unint64_t sub_238F17908(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v4 = *a1;
    if (v4 == 5)
    {
      v12 = 0x5C00000587;
      v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v12 = sub_2393C8140(v11, 0, v4);
      v13 = v5;
      if (!v12)
      {
        v12 = sub_2393C81D4(v11, 1uLL, *(a1 + 1));
        v13 = v6;
        if (!v12)
        {
          v12 = sub_2393C81D4(v11, 2uLL, *(a1 + 2));
          v13 = v7;
          if (!v12)
          {
            v12 = sub_2393C81D4(v11, 3uLL, *(a1 + 3));
            v13 = v8;
            if (!v12)
            {
              v12 = sub_2393C7E38(v11, 4uLL, a1[16]);
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F179DC(_BYTE *a1, uint64_t a2)
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
        v5 = a1 + 8;
      }

      else
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v4 = sub_2393C5CE4(a2, a1 + 16);
          }

          goto LABEL_15;
        }

        v5 = a1 + 12;
      }

      goto LABEL_13;
    }

    if (!v9)
    {
      v4 = sub_238F000A4(a2, a1);
      goto LABEL_15;
    }

    if (v9 == 1)
    {
      v5 = a1 + 4;
LABEL_13:
      v4 = sub_2393C5FC8(a2, v5);
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

unint64_t sub_238F17ABC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v4 = *a1;
    if (v4 == 5)
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
        v10 = sub_2393C81D4(v9, 1uLL, *(a1 + 1));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8140(v9, 2uLL, a1[8]);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F17B60(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5ED0(a2, (a1 + 8));
        break;
      case 1:
        v4 = sub_2393C5FC8(a2, (a1 + 4));
        break;
      case 0:
        v4 = sub_238F000A4(a2, a1);
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

unint64_t sub_238F17C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 > 65530)
  {
    if (v4 == 65531)
    {
      a1 += 216;
      goto LABEL_13;
    }

    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 288));
      goto LABEL_14;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65533)
    {
      v6 = sub_2393C5F70(a2, (v3 + 292));
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
      a1 += 72;
      goto LABEL_13;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65529)
    {
      a1 = v3 + 144;
LABEL_13:
      v6 = sub_238F36BB4(a1, a2);
      goto LABEL_14;
    }
  }

  return v6 | v5;
}

unint64_t sub_238F17CE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v7 = sub_238EFD714(v11, v9);
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

unint64_t sub_238F17E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v7 = sub_2393C5F2C(a2, a1);
        goto LABEL_32;
      case 1:
        v7 = sub_238F01D20((a1 + 8), a2);
        goto LABEL_32;
      case 2:
        v11 = (a1 + 12);
        goto LABEL_22;
      case 3:
        v11 = (a1 + 13);
LABEL_22:
        v7 = sub_238EFD7D0(a2, v11);
        goto LABEL_32;
      case 4:
        v10 = (a1 + 14);
        goto LABEL_31;
      case 5:
        v8 = (a1 + 16);
        goto LABEL_27;
      case 6:
        v8 = (a1 + 18);
        goto LABEL_27;
      case 7:
        v8 = (a1 + 20);
        goto LABEL_27;
      case 8:
        v10 = (a1 + 22);
        goto LABEL_31;
      case 9:
        v7 = sub_238EFDEB0(a2, a1 + 24);
        goto LABEL_32;
      case 10:
        if (sub_2393C5C40(a2) == 16)
        {
          v7 = sub_2393C60CC(a2, (a1 + 32));
        }

        else
        {
          v7 = 0x500000002BLL;
        }

        goto LABEL_32;
      case 11:
        v7 = sub_238F0C9D0(a2, (a1 + 48));
        goto LABEL_32;
      case 12:
        v10 = (a1 + 50);
LABEL_31:
        v7 = sub_2393C5CE4(a2, v10);
        goto LABEL_32;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v9 = a1 + 56;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v9 = a1 + 128;
    }

    goto LABEL_16;
  }

  if (v5 == 65531)
  {
    v9 = a1 + 200;
LABEL_16:
    v7 = sub_238F36BB4(v9, a2);
    goto LABEL_32;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 272));
LABEL_32:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v8 = (a1 + 276);
LABEL_27:
    v7 = sub_2393C5F70(a2, v8);
    goto LABEL_32;
  }

  return v7 | v6;
}

unint64_t sub_238F17FE4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8154(v7, 1uLL, *(a1 + 1));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F18050(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5F2C(a2, (a1 + 8));
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

unint64_t sub_238F180F0(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 8)
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

unint64_t sub_238F18180(uint64_t a1, uint64_t a2)
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
      v4 = sub_238F056F8(a2, a1);
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

unint64_t sub_238F18220(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v4 = *a1;
    if (v4 == 3)
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
        v10 = sub_2393C85FC(v9, 1uLL, *(a1 + 1), *(a1 + 2));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8154(v9, 2uLL, *(a1 + 3));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F182C4(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F2C(a2, (a1 + 24));
        break;
      case 1:
        v4 = sub_2393C61E0(a2, (a1 + 8));
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

unint64_t sub_238F1837C(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 8)
    {
      v5 = 0x5C00000587;
      v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v5 = sub_2393C8140(v8, 0, v4);
    }

    v9 = v5;
    v10 = v6;
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F183F0(_BYTE *a1, uint64_t a2)
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
      v5 = sub_238F056F8(a2, a1);
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

unint64_t sub_238F18484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 8);
  if (v5 <= 6)
  {
    if (v5 > 2)
    {
      if (v5 <= 4)
      {
        if (v5 != 3)
        {
          v6 = sub_238EFFAE8(a2, (a1 + 92));
LABEL_35:
          v7 = v6 & 0xFFFFFFFF00000000;
          return v6 | v7;
        }

        v9 = (a1 + 88);
LABEL_28:
        v6 = sub_2393C5FC8(a2, v9);
        goto LABEL_35;
      }

      if (v5 == 5)
      {
        a1 += 96;
      }

      else
      {
        a1 += 168;
      }

LABEL_31:
      v6 = sub_238F36BB4(a1, a2);
      goto LABEL_35;
    }

    if (!v5)
    {
      goto LABEL_31;
    }

    if (v5 != 1)
    {
      v7 = 0;
      LODWORD(v6) = 0;
      if (v5 == 2)
      {
        v6 = sub_2393C5F2C(a2, (v4 + 80));
        goto LABEL_35;
      }

      return v6 | v7;
    }

    v8 = (a1 + 72);
LABEL_33:
    v6 = sub_2393C5F70(a2, v8);
    goto LABEL_35;
  }

  if (v5 <= 65528)
  {
    if (v5 == 7)
    {
      a1 += 240;
      goto LABEL_31;
    }

    if (v5 == 8)
    {
      v6 = sub_2393C5CE4(a2, (a1 + 312));
      goto LABEL_35;
    }

    v7 = 0;
    LODWORD(v6) = 0;
    if (v5 == 65528)
    {
      a1 = v4 + 320;
      goto LABEL_31;
    }
  }

  else if (v5 > 65531)
  {
    if (v5 == 65532)
    {
      v9 = (a1 + 536);
      goto LABEL_28;
    }

    v7 = 0;
    LODWORD(v6) = 0;
    if (v5 == 65533)
    {
      v8 = (v4 + 540);
      goto LABEL_33;
    }
  }

  else
  {
    if (v5 == 65529)
    {
      a1 += 392;
      goto LABEL_31;
    }

    v7 = 0;
    LODWORD(v6) = 0;
    if (v5 == 65531)
    {
      a1 = v4 + 464;
      goto LABEL_31;
    }
  }

  return v6 | v7;
}

unint64_t sub_238F18630(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8364(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8154(v7, 1uLL, *(a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1869C(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5F2C(a2, (a1 + 16));
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

unint64_t sub_238F1876C(unint64_t *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v7, *a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8154(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238EFD454(v7, 1uLL, (a1 + 1));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F187DC(void *a1, uint64_t a2)
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
      v4 = sub_238EFD658(a2, (a1 + 1));
    }

    else if (!v8)
    {
      v4 = sub_2393C5F2C(a2, a1);
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

unint64_t sub_238F1887C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8364(v8, 0, *a1, *(a1 + 8));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8140(v8, 1uLL, *(a1 + 16));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C818C(v8, 2uLL, *(a1 + 18));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F18900(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F70(a2, (a1 + 18));
        break;
      case 1:
        v4 = sub_2393C5ED0(a2, (a1 + 16));
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

unint64_t sub_238F189E8(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_2393C8364(v6, 0, *a1, *(a1 + 8));
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

uint64_t sub_238F18A40(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
{
  v12 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v12);
  if (!result)
  {
    v6 = *a1;
    v7 = a1[1];
    v13 = 0;
    result = sub_2393C8CE0(a2, 0, 22, &v13);
    if (!result)
    {
      if (v7)
      {
        while (1)
        {
          v8 = *v6;
          if (v8 == 11)
          {
            break;
          }

          result = sub_2393C8140(a2, 0x100uLL, v8);
          if (result)
          {
            return result;
          }

          ++v6;
          if (!--v7)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        result = sub_2393C8DE0(a2, v13);
        if (result)
        {
          return result;
        }

        v10 = a1[2];
        v9 = a1[3];
        v14 = 0;
        result = sub_2393C8CE0(a2, 1uLL, 22, &v14);
        if (result)
        {
          return result;
        }

        if (!v9)
        {
LABEL_14:
          result = sub_2393C8DE0(a2, v14);
          if (!result)
          {
            return sub_2393C8DE0(a2, v12);
          }

          return result;
        }

        while (1)
        {
          v11 = *v10;
          if (v11 == 11)
          {
            break;
          }

          result = sub_2393C8140(a2, 0x100uLL, v11);
          if (result)
          {
            return result;
          }

          ++v10;
          if (!--v9)
          {
            goto LABEL_14;
          }
        }
      }

      return 0x5C00000587;
    }
  }

  return result;
}

unint64_t sub_238F18B6C(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  v4 = a1 + 72;
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
      v5 = sub_238F36BB4(v6, a2);
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

uint64_t sub_238F18C10(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
{
  v12 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v12);
  if (!result)
  {
    v6 = *a1;
    v7 = a1[1];
    v13 = 0;
    result = sub_2393C8CE0(a2, 0, 22, &v13);
    if (!result)
    {
      if (v7)
      {
        while (1)
        {
          v8 = *v6;
          if (v8 == 7)
          {
            break;
          }

          result = sub_2393C8140(a2, 0x100uLL, v8);
          if (result)
          {
            return result;
          }

          ++v6;
          if (!--v7)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        result = sub_2393C8DE0(a2, v13);
        if (result)
        {
          return result;
        }

        v10 = a1[2];
        v9 = a1[3];
        v14 = 0;
        result = sub_2393C8CE0(a2, 1uLL, 22, &v14);
        if (result)
        {
          return result;
        }

        if (!v9)
        {
LABEL_14:
          result = sub_2393C8DE0(a2, v14);
          if (!result)
          {
            return sub_2393C8DE0(a2, v12);
          }

          return result;
        }

        while (1)
        {
          v11 = *v10;
          if (v11 == 7)
          {
            break;
          }

          result = sub_2393C8140(a2, 0x100uLL, v11);
          if (result)
          {
            return result;
          }

          ++v10;
          if (!--v9)
          {
            goto LABEL_14;
          }
        }
      }

      return 0x5C00000587;
    }
  }

  return result;
}

uint64_t sub_238F18D3C(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
{
  v12 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v12);
  if (!result)
  {
    v6 = *a1;
    v7 = a1[1];
    v13 = 0;
    result = sub_2393C8CE0(a2, 0, 22, &v13);
    if (!result)
    {
      if (v7)
      {
        while (1)
        {
          v8 = *v6;
          if (v8 == 4)
          {
            break;
          }

          result = sub_2393C8140(a2, 0x100uLL, v8);
          if (result)
          {
            return result;
          }

          ++v6;
          if (!--v7)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        result = sub_2393C8DE0(a2, v13);
        if (result)
        {
          return result;
        }

        v10 = a1[2];
        v9 = a1[3];
        v14 = 0;
        result = sub_2393C8CE0(a2, 1uLL, 22, &v14);
        if (result)
        {
          return result;
        }

        if (!v9)
        {
LABEL_14:
          result = sub_2393C8DE0(a2, v14);
          if (!result)
          {
            return sub_2393C8DE0(a2, v12);
          }

          return result;
        }

        while (1)
        {
          v11 = *v10;
          if (v11 == 4)
          {
            break;
          }

          result = sub_2393C8140(a2, 0x100uLL, v11);
          if (result)
          {
            return result;
          }

          ++v10;
          if (!--v9)
          {
            goto LABEL_14;
          }
        }
      }

      return 0x5C00000587;
    }
  }

  return result;
}

uint64_t sub_238F18E68(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 7)
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

unint64_t sub_238F18EEC(_BYTE *a1, uint64_t a2)
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
      v5 = sub_238EFFAE8(a2, a1);
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

unint64_t sub_238F18F80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v13, a2, a3);
  if (!v14)
  {
    v14 = sub_2393C85FC(v13, 0, *a1, *(a1 + 8));
    v15 = v4;
    if (!v14)
    {
      v14 = sub_2393C7E38(v13, 1uLL, *(a1 + 16));
      v15 = v5;
      if (!v14)
      {
        v14 = sub_238F378FC(v13, 2uLL, (a1 + 17));
        v15 = v6;
        if (!v14)
        {
          v14 = sub_238F378FC(v13, 3uLL, (a1 + 19));
          v15 = v7;
          if (!v14)
          {
            v14 = sub_2393C8364(v13, 4uLL, *(a1 + 24), *(a1 + 32));
            v15 = v8;
          }
        }
      }
    }
  }

  sub_238F1908C(&v13, 5u, (a1 + 40));
  sub_238F1908C(&v13, 6u, (a1 + 56));
  if (!v14)
  {
    v9 = *(a1 + 72);
    if (v9 == 5)
    {
      v10 = 0x5C00000587;
      v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v10 = sub_2393C8140(v13, 7uLL, v9);
    }

    v14 = v10;
    v15 = v11;
  }

  return sub_2394C38E0(&v13);
}

unint64_t sub_238F1908C(unint64_t result, unsigned int a2, uint64_t *a3)
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

      v11 = v7 + 16 * v8;
      while (1)
      {
        result = sub_2393C8364(v6, 0x100uLL, *v7, *(v7 + 8));
        if (result)
        {
          break;
        }

        v7 += 16;
        if (v7 == v11)
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

unint64_t sub_238F1914C(uint64_t a1, uint64_t a2)
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
        if (v10 != 6)
        {
          if (v10 == 7)
          {
            v4 = sub_238F000A4(a2, (a1 + 184));
          }

          goto LABEL_24;
        }

        v5 = a1 + 112;
        goto LABEL_23;
      }

      if (v10 == 4)
      {
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, (a1 + 24));
        }

        else
        {
          v4 = 0x500000002BLL;
        }

        goto LABEL_24;
      }

      if (v10 == 5)
      {
        v5 = a1 + 40;
LABEL_23:
        v4 = sub_238F36BB4(v5, a2);
      }
    }

    else
    {
      if (v10 <= 1u)
      {
        if (v10)
        {
          v4 = sub_2393C5CE4(a2, (a1 + 16));
        }

        else
        {
          v4 = sub_2393C61E0(a2, a1);
        }

        goto LABEL_24;
      }

      if (v10 == 2)
      {
        v6 = (a1 + 17);
        goto LABEL_21;
      }

      if (v10 == 3)
      {
        v6 = (a1 + 19);
LABEL_21:
        v4 = sub_238F076A4(a2, v6);
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

unint64_t sub_238F192B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 8);
  if (v5 > 65527)
  {
    if (v5 <= 65530)
    {
      if (v5 == 65528)
      {
        a1 += 168;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65529)
        {
          return v7 | v6;
        }

        a1 = v4 + 240;
      }
    }

    else
    {
      if (v5 != 65531)
      {
        if (v5 == 65532)
        {
          v7 = sub_2393C5FC8(a2, (a1 + 384));
          goto LABEL_23;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 65533)
        {
          v8 = (v4 + 388);
LABEL_19:
          v7 = sub_2393C5F70(a2, v8);
LABEL_23:
          v6 = v7 & 0xFFFFFFFF00000000;
          return v7 | v6;
        }

        return v7 | v6;
      }

      a1 += 312;
    }

LABEL_22:
    v7 = sub_238F36BB4(a1, a2);
    goto LABEL_23;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 1)
      {
        return v7 | v6;
      }

      a1 = v4 + 80;
    }

    goto LABEL_22;
  }

  if (v5 == 2)
  {
    v8 = (a1 + 160);
    goto LABEL_19;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 3)
  {
    v8 = (v4 + 162);
    goto LABEL_19;
  }

  return v7 | v6;
}

unint64_t sub_238F193DC(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F19904(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F19430(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F19A20(a1, a2);
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

unint64_t sub_238F194C4(unsigned __int16 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_238F19904(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F1951C(unsigned __int16 **a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(v5, *a2, a3);
  sub_238EFFBF0(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F19590(unsigned __int16 **a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C818C(v11, 1uLL, *a1);
    v13 = v6;
  }

  sub_238EFFBF0(&v11, 2u, a1 + 1);
  if (!v12)
  {
    v7 = sub_238EFDC40(v11, 3uLL, a1 + 24);
    v12 = v7;
    v13 = v8;
    if (*a4 == 1 && !v7)
    {
      v12 = sub_2393C8140(v11, 0xFEuLL, *(a1 + 48));
      v13 = v9;
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F1963C(unsigned __int16 **a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F19590(a1, a2, a3, v5);
}

unint64_t sub_238F1966C(uint64_t a1, uint64_t a2)
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
      if (v8 == 3)
      {
        *(a1 + 80) = 1;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        v4 = sub_2393C61E0(a2, (a1 + 88));
      }

      else if (v8 == 254)
      {
        v4 = sub_2393C5ED0(a2, (a1 + 104));
      }
    }

    else if (v8 == 1)
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    else if (v8 == 2)
    {
      v4 = sub_238F36BB4(a1 + 8, a2);
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

unint64_t sub_238F19784(unsigned __int16 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C818C(v11, 1uLL, *a1);
    v13 = v6;
    if (!v12)
    {
      v7 = sub_2393C818C(v11, 2uLL, a1[1]);
      v12 = v7;
      v13 = v8;
      if (*a4 == 1 && !v7)
      {
        v12 = sub_2393C8140(v11, 0xFEuLL, *(a1 + 4));
        v13 = v9;
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F1981C(unsigned __int16 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F19784(a1, a2, a3, v5);
}

unint64_t sub_238F1984C(uint64_t a1, uint64_t a2)
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
      case 0xFEu:
        v4 = sub_2393C5ED0(a2, (a1 + 4));
        break;
      case 2u:
        v6 = (a1 + 2);
        v5 = a2;
        goto LABEL_8;
      case 1u:
        v5 = a2;
        v6 = a1;
LABEL_8:
        v4 = sub_2393C5F70(v5, v6);
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

unint64_t sub_238F19904(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v15, a2, a3);
  if (!v16)
  {
    v16 = sub_2393C818C(v15, 0, *a1);
    v17 = v4;
    if (!v16)
    {
      v5 = *(a1 + 2);
      if (v5 == 2)
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v7 = 0x5C00000587;
LABEL_5:
        v16 = v7;
        v17 = v6;
        return sub_2394C38E0(&v15);
      }

      v16 = sub_2393C8140(v15, 1uLL, v5);
      v17 = v8;
      if (!v16)
      {
        v16 = sub_238F2ADF0(v15, 2uLL, (a1 + 4));
        v17 = v9;
        if (!v16)
        {
          v16 = sub_238EFD454(v15, 3uLL, (a1 + 16));
          v17 = v10;
          if (!v16)
          {
            v16 = sub_238F2ADF0(v15, 4uLL, (a1 + 24));
            v17 = v11;
            if (!v16)
            {
              v16 = sub_238EFD454(v15, 5uLL, (a1 + 36));
              v17 = v12;
              if (!v16)
              {
                v16 = sub_238F2ADF0(v15, 6uLL, (a1 + 44));
                v17 = v13;
                if (!v16)
                {
                  v7 = sub_238EFD454(v15, 7uLL, (a1 + 56));
                  goto LABEL_5;
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

unint64_t sub_238F19A20(uint64_t a1, uint64_t a2)
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
          v6 = a1 + 88;
          goto LABEL_22;
        }

        if (v10 == 7)
        {
          v5 = a1 + 112;
          goto LABEL_17;
        }
      }

      else
      {
        if (v10 == 4)
        {
          v6 = a1 + 48;
LABEL_22:
          v4 = sub_238F10D4C(a2, v6);
          goto LABEL_23;
        }

        if (v10 == 5)
        {
          v5 = a1 + 72;
LABEL_17:
          v4 = sub_238EFD658(a2, v5);
        }
      }
    }

    else
    {
      if (v10 <= 1u)
      {
        if (v10)
        {
          v4 = sub_238EFF894(a2, (a1 + 2));
        }

        else
        {
          v4 = sub_2393C5F70(a2, a1);
        }

        goto LABEL_23;
      }

      if (v10 == 2)
      {
        v6 = a1 + 8;
        goto LABEL_22;
      }

      if (v10 == 3)
      {
        v5 = a1 + 32;
        goto LABEL_17;
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

unint64_t sub_238F19B48(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C85FC(v7, 1uLL, *(a1 + 1), *(a1 + 2));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F19BB4(uint64_t a1, uint64_t a2)
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

unint64_t sub_238F19C54(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v7, *a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8140(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C818C(v7, 1uLL, *(a1 + 1));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F19CC4(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
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
        v9 = sub_2393C85FC(v8, 2uLL, *(a1 + 1), *(a1 + 2));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F19D4C(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F70(a2, (a1 + 2));
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

unint64_t sub_238F19E04(unsigned __int16 **a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238EFFBF0(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F19E4C(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_238F13404(v6, 0, a1);
    v8 = v4;
  }

  sub_238EFFBF0(&v6, 1u, (a1 + 8));
  return sub_2394C38E0(&v6);
}

unint64_t sub_238F19EB4(unsigned __int8 *a1, uint64_t a2)
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
      v4 = sub_238F36BB4((a1 + 8), a2);
    }

    else if (!v8)
    {
      v4 = sub_238F00228(a2, a1);
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

unint64_t sub_238F19F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 6)
  {
    if (v5 <= 2)
    {
      if (!v5)
      {
        v11 = a2;
        v7 = a1;
        goto LABEL_36;
      }

      if (v5 != 1)
      {
        v8 = 0;
        LODWORD(v6) = 0;
        if (v5 != 2)
        {
          return v6 | v8;
        }

        v10 = (a1 + 8);
        goto LABEL_28;
      }

      v7 = (a1 + 4);
    }

    else
    {
      if (v5 > 4)
      {
        if (v5 != 5)
        {
          v6 = sub_238F37278(a2, (a1 + 104));
LABEL_37:
          v8 = v6 & 0xFFFFFFFF00000000;
          return v6 | v8;
        }

        v10 = (a1 + 100);
LABEL_28:
        v6 = sub_2393C5F70(a2, v10);
        goto LABEL_37;
      }

      if (v5 == 3)
      {
        v9 = a1 + 16;
        goto LABEL_32;
      }

      v7 = (a1 + 96);
    }

LABEL_35:
    v11 = a2;
LABEL_36:
    v6 = sub_2393C5FC8(v11, v7);
    goto LABEL_37;
  }

  if (v5 <= 65528)
  {
    if (v5 <= 8)
    {
      if (v5 == 7)
      {
        v6 = sub_2393C61E0(a2, (a1 + 112));
      }

      else
      {
        v6 = sub_238EFF894(a2, (a1 + 128));
      }

      goto LABEL_37;
    }

    if (v5 != 9)
    {
      v8 = 0;
      LODWORD(v6) = 0;
      if (v5 == 65528)
      {
        v9 = a1 + 136;
        goto LABEL_32;
      }

      return v6 | v8;
    }

    v7 = (a1 + 132);
    goto LABEL_35;
  }

  if (v5 > 65531)
  {
    if (v5 != 65532)
    {
      v8 = 0;
      LODWORD(v6) = 0;
      if (v5 != 65533)
      {
        return v6 | v8;
      }

      v10 = (a1 + 356);
      goto LABEL_28;
    }

    v7 = (a1 + 352);
    goto LABEL_35;
  }

  if (v5 == 65529)
  {
    v9 = a1 + 208;
    goto LABEL_32;
  }

  v8 = 0;
  LODWORD(v6) = 0;
  if (v5 == 65531)
  {
    v9 = a1 + 280;
LABEL_32:
    v6 = sub_238F36BB4(v9, a2);
    goto LABEL_37;
  }

  return v6 | v8;
}

unint64_t sub_238F1A124(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C8154(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_2393C8154(v12, 1uLL, *(a1 + 8));
      v14 = v5;
      if (!v13)
      {
        v13 = sub_2393C8364(v12, 2uLL, *(a1 + 16), *(a1 + 24));
        v14 = v6;
        if (!v13)
        {
          v13 = sub_238F1E4D4(v12, 3uLL, (a1 + 32));
          v14 = v7;
          if (!v13)
          {
            v8 = *(a1 + 56);
            if (v8 == 2)
            {
              v9 = 0x5C00000587;
              v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
            }

            else
            {
              v9 = sub_2393C8140(v12, 4uLL, v8);
            }

            v13 = v9;
            v14 = v10;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F1A1F4(uint64_t a1, uint64_t a2)
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
      switch(v10)
      {
        case 2u:
          if (sub_2393C5C40(a2) == 16)
          {
            v4 = sub_2393C60CC(a2, (a1 + 16));
          }

          else
          {
            v4 = 0x500000002BLL;
          }

          break;
        case 3u:
          v4 = sub_238F00D84(a2, a1 + 32);
          break;
        case 4u:
          v4 = sub_238EFF894(a2, (a1 + 56));
          break;
      }

      goto LABEL_16;
    }

    if (!v10)
    {
      v6 = a2;
      v5 = a1;
      goto LABEL_15;
    }

    if (v10 == 1)
    {
      v5 = (a1 + 8);
      v6 = a2;
LABEL_15:
      v4 = sub_2393C5F2C(v6, v5);
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

unint64_t sub_238F1A314(unsigned int *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_2393C81D4(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F1A36C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8154(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F1E4D4(v7, 1uLL, (a1 + 8));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1A3D8(void *a1, uint64_t a2)
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
      v4 = sub_238F00D84(a2, (a1 + 1));
    }

    else if (!v8)
    {
      v4 = sub_2393C5F2C(a2, a1);
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

unint64_t sub_238F1A4A0(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    v8 = *sub_238DE36D8(a4);
    v9 = *(a1 + 17);
    sub_2394C389C(&v17, a2, a3);
    if (v8 != v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_2394C389C(&v17, a2, a3);
  }

  if (!v18)
  {
    v18 = sub_2393C8154(v17, 1uLL, *a1);
    v19 = v10;
    if (!v18)
    {
      v18 = sub_2393C8154(v17, 2uLL, *(a1 + 8));
      v19 = v11;
      if (!v18)
      {
        v12 = *(a1 + 16);
        if (v12 == 2)
        {
          v13 = 0x5C00000587;
          v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        }

        else
        {
          v13 = sub_2393C8140(v17, 4uLL, v12);
        }

        v18 = v13;
        v19 = v14;
      }
    }
  }

LABEL_12:
  if (*a4 == 1 && !v18)
  {
    v18 = sub_2393C8140(v17, 0xFEuLL, *(a1 + 17));
    v19 = v15;
  }

  return sub_2394C38E0(&v17);
}

unint64_t sub_238F1A5C4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F1A4A0(a1, a2, a3, v5);
}

unint64_t sub_238F1A5F4(uint64_t a1, uint64_t a2)
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
      if (v10 == 4)
      {
        v4 = sub_238EFF894(a2, (a1 + 16));
      }

      else if (v10 == 254)
      {
        v4 = sub_2393C5ED0(a2, (a1 + 17));
      }

      goto LABEL_13;
    }

    if (v10 == 1)
    {
      v6 = a2;
      v5 = a1;
      goto LABEL_11;
    }

    if (v10 == 2)
    {
      v5 = (a1 + 8);
      v6 = a2;
LABEL_11:
      v4 = sub_2393C5F2C(v6, v5);
    }

LABEL_13:
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

unint64_t sub_238F1A6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 65528)
  {
    if (v5 <= 65531)
    {
      if (v5 == 65529)
      {
        v8 = a1 + 80;
        goto LABEL_16;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65531)
      {
        v8 = a1 + 152;
LABEL_16:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_19;
      }

      return v7 | v6;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 224));
      goto LABEL_19;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 65533)
    {
      return v7 | v6;
    }

    v9 = (a1 + 228);
    v10 = a2;
LABEL_14:
    v7 = sub_2393C5F70(v10, v9);
LABEL_19:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (!v5)
  {
    v10 = a2;
    v9 = a1;
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v7 = sub_238F01014(a2, (a1 + 2));
    goto LABEL_19;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v8 = a1 + 8;
    goto LABEL_16;
  }

  return v7 | v6;
}

unint64_t sub_238F1A7CC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 3)
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

unint64_t sub_238F1A874(uint64_t a1, uint64_t a2)
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
      v4 = sub_238F03FA8(a2, (a1 + 1));
    }

    else if (!v8)
    {
      v4 = sub_238F1A914(a2, a1);
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

unint64_t sub_238F1A914(uint64_t a1, char *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    if ((*a2 + 2) > 0xDu)
    {
      v5 = 3;
    }

    else
    {
      v5 = byte_2395906A2[(*a2 + 2)];
    }

    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F1A988(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_28;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65533)
        {
          return v7 | v6;
        }

        v8 = (a1 + 236);
LABEL_26:
        v7 = sub_2393C5F70(a2, v8);
        goto LABEL_28;
      }

      v10 = a1 + 160;
    }

    v7 = sub_238F36BB4(v10, a2);
    goto LABEL_28;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      v11 = a2;
      v9 = a1;
LABEL_22:
      v7 = sub_238EFD714(v11, v9);
      goto LABEL_28;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 1)
    {
      return v7 | v6;
    }

    v9 = (a1 + 4);
LABEL_21:
    v11 = a2;
    goto LABEL_22;
  }

  if (v5 == 2)
  {
    v9 = (a1 + 8);
    goto LABEL_21;
  }

  if (v5 == 3)
  {
    v8 = (a1 + 12);
    goto LABEL_26;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 4)
  {
    v7 = sub_238F0A8F8(a2, (a1 + 14));
LABEL_28:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F1AAD0(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v6 = sub_238F00228(a2, a1);
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

unint64_t sub_238F1ABA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C8364(v6, 0, *a1, *(a1 + 8));
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F1ABFC(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 3)
    {
      v5 = 0x5C00000587;
      v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v5 = sub_2393C8140(v8, 0, v4);
    }

    v9 = v5;
    v10 = v6;
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F1AC70(_BYTE *a1, uint64_t a2)
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
      v5 = sub_238EFD7D0(a2, a1);
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

unint64_t sub_238F1AD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 65527)
  {
    if (v5 <= 65530)
    {
      if (v5 == 65528)
      {
        v8 = a1 + 712;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65529)
        {
          return v7 | v6;
        }

        v8 = a1 + 784;
      }
    }

    else
    {
      if (v5 != 65531)
      {
        if (v5 == 65532)
        {
          v7 = sub_2393C5FC8(a2, (a1 + 928));
        }

        else
        {
          v6 = 0;
          LODWORD(v7) = 0;
          if (v5 != 65533)
          {
            return v7 | v6;
          }

          v7 = sub_2393C5F70(a2, (a1 + 932));
        }

LABEL_31:
        v6 = v7 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }

      v8 = a1 + 856;
    }

LABEL_30:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_31;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  switch(v5)
  {
    case 0:
      if (sub_2393C5C40(a2) == 16)
      {
        v7 = sub_2393C60CC(a2, a1);
      }

      else
      {
        v7 = 0x500000002BLL;
      }

      goto LABEL_31;
    case 1:
      v7 = sub_2393C5F2C(a2, (a1 + 16));
      goto LABEL_31;
    case 2:
      v7 = sub_238F36E54(a2, (a1 + 24));
      if (!v7)
      {
        v7 = 0;
      }

      goto LABEL_31;
    case 3:
      v7 = sub_2393C61E0(a2, (a1 + 32));
      goto LABEL_31;
    case 4:
      v8 = a1 + 48;
      goto LABEL_30;
    case 5:
      v8 = a1 + 120;
      goto LABEL_30;
    case 6:
      v8 = a1 + 192;
      goto LABEL_30;
    case 7:
      v8 = a1 + 264;
      goto LABEL_30;
    case 8:
      v7 = sub_238F1BE54(a1 + 336, a2);
      goto LABEL_31;
    case 9:
      v8 = a1 + 352;
      goto LABEL_30;
    case 10:
      v8 = a1 + 424;
      goto LABEL_30;
    case 11:
      v8 = a1 + 496;
      goto LABEL_30;
    case 12:
      v8 = a1 + 568;
      goto LABEL_30;
    case 13:
      v8 = a1 + 640;
      goto LABEL_30;
    default:
      return v7 | v6;
  }

  return v7 | v6;
}

unint64_t sub_238F1AED4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F1CE3C(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F1AF28(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F1CF7C(a1, a2);
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

unint64_t sub_238F1AFBC(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C818C(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_2393C85FC(v12, 1uLL, *(a1 + 1), *(a1 + 2));
      v14 = v5;
      if (!v13)
      {
        v13 = sub_238EFD4A8(v12, 2uLL, a1 + 12);
        v14 = v6;
        if (!v13)
        {
          v13 = sub_238EFD4A8(v12, 3uLL, a1 + 14);
          v14 = v7;
          if (!v13)
          {
            v13 = sub_238EFD4A8(v12, 4uLL, a1 + 16);
            v14 = v8;
            if (!v13)
            {
              if (*(a1 + 36))
              {
                v9 = sub_2393C8140(v12, 5uLL, *(a1 + 36));
              }

              else
              {
                v9 = 0x5C00000587;
                v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
              }

              v13 = v9;
              v14 = v10;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F1B0A0(uint64_t a1, uint64_t a2)
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
        v5 = (a1 + 28);
      }

      else
      {
        if (v9 != 4)
        {
          if (v9 == 5)
          {
            v4 = sub_238EFE758(a2, (a1 + 36));
          }

          goto LABEL_17;
        }

        v5 = (a1 + 32);
      }

      goto LABEL_16;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v4 = sub_2393C61E0(a2, (a1 + 8));
      }

      else if (v9 == 2)
      {
        v5 = (a1 + 24);
LABEL_16:
        v4 = sub_238EFD714(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5F70(a2, a1);
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

unint64_t sub_238F1B198(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C818C(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_238F37AF8(v12, 1uLL, (a1 + 4));
      v14 = v5;
      if (!v13)
      {
        v13 = sub_238EFD4A8(v12, 2uLL, a1 + 16);
        v14 = v6;
        if (!v13)
        {
          v13 = sub_238EFD4A8(v12, 3uLL, a1 + 18);
          v14 = v7;
          if (!v13)
          {
            v13 = sub_238EFD4A8(v12, 4uLL, a1 + 20);
            v14 = v8;
            if (!v13)
            {
              if (*(a1 + 44))
              {
                v9 = sub_2393C8140(v12, 5uLL, *(a1 + 44));
              }

              else
              {
                v9 = 0x5C00000587;
                v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
              }

              v13 = v9;
              v14 = v10;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F1B27C(uint64_t a1, uint64_t a2)
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
        v5 = (a1 + 36);
      }

      else
      {
        if (v9 != 4)
        {
          if (v9 == 5)
          {
            v4 = sub_238EFE758(a2, (a1 + 44));
          }

          goto LABEL_17;
        }

        v5 = (a1 + 40);
      }

      goto LABEL_16;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v4 = sub_238F0BA3C(a2, a1 + 8);
      }

      else if (v9 == 2)
      {
        v5 = (a1 + 32);
LABEL_16:
        v4 = sub_238EFD714(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5F70(a2, a1);
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

unint64_t sub_238F1B374(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8154(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C85FC(v9, 1uLL, *(a1 + 8), *(a1 + 16));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C818C(v9, 2uLL, *(a1 + 24));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8364(v9, 3uLL, *(a1 + 32), *(a1 + 40));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F1B410(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F36E54(a2, (a1 + 24));
        if (!v4)
        {
          v4 = 0;
        }
      }

      else if (v8 == 3)
      {
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, (a1 + 32));
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
        v4 = sub_2393C61E0(a2, (a1 + 8));
      }
    }

    else
    {
      v4 = sub_2393C5F2C(a2, a1);
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

unint64_t sub_238F1B524(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238EFD454(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F37AF8(v8, 1uLL, a1 + 16);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F2ADF0(v8, 2uLL, a1 + 40);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F1B5A8(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F10D4C(a2, a1 + 40);
        break;
      case 1:
        v4 = sub_238F0BA3C(a2, a1 + 16);
        break;
      case 0:
        v4 = sub_238EFD658(a2, a1);
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

unint64_t sub_238F1B660(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C8154(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F1B6B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8154(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C85FC(v7, 1uLL, *(a1 + 8), *(a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1B720(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5F2C(a2, a1);
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

unint64_t sub_238F1B7C0(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8154(v8, 1uLL, *(a1 + 1));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C85FC(v8, 2uLL, *(a1 + 2), *(a1 + 3));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F1B844(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C61E0(a2, (a1 + 16));
        break;
      case 1:
        v4 = sub_2393C5F2C(a2, (a1 + 8));
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

unint64_t sub_238F1B8FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8154(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C818C(v8, 1uLL, *(a1 + 8));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C818C(v8, 2uLL, *(a1 + 10));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F1B980(void *a1, uint64_t a2)
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
      v5 = a1 + 5;
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_2393C5F2C(a2, a1);
        }

        goto LABEL_10;
      }

      v5 = a1 + 1;
    }

    v4 = sub_2393C5F70(a2, v5);
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

unint64_t sub_238F1BA30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8154(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C818C(v8, 1uLL, *(a1 + 8));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F1C468((a1 + 16), v8, 2uLL);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F1BAB4(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F1C504(a1 + 16, a2);
        break;
      case 1:
        v4 = sub_2393C5F70(a2, (a1 + 8));
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

unint64_t sub_238F1BB6C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C818C(v8, 1uLL, a1[1]);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8154(v8, 2uLL, *(a1 + 1));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F1BBF0(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F2C(a2, (a1 + 8));
        break;
      case 1:
        v6 = (a1 + 2);
        v5 = a2;
        goto LABEL_8;
      case 0:
        v5 = a2;
        v6 = a1;
LABEL_8:
        v4 = sub_2393C5F70(v5, v6);
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

unint64_t sub_238F1BCA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8154(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F1C7A0((a1 + 8), v7, 1uLL);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1BD10(uint64_t a1, uint64_t a2)
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
      v4 = sub_238F1C85C((a1 + 8), a2);
    }

    else if (!v8)
    {
      v4 = sub_2393C5F2C(a2, a1);
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

unint64_t sub_238F1BDB0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        v10 = sub_2393C81D4(v9, 1uLL, *(a1 + 1));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8140(v9, 2uLL, a1[8]);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F1BE54(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5ED0(a2, (a1 + 8));
        break;
      case 1:
        v4 = sub_2393C5FC8(a2, (a1 + 4));
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

unint64_t sub_238F1BF0C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8154(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C818C(v8, 1uLL, *(a1 + 8));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F1BDB0((a1 + 12), v8, 2uLL);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F1BF90(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F1BE54(a1 + 12, a2);
        break;
      case 1:
        v4 = sub_2393C5F70(a2, (a1 + 8));
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

unint64_t sub_238F1C048(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8154(v8, 1uLL, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C85FC(v8, 2uLL, *(a1 + 8), *(a1 + 16));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F1BDB0((a1 + 24), v8, 3uLL);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F1C0CC(uint64_t a1, uint64_t a2)
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
      case 3:
        v4 = sub_238F1BE54(a1 + 24, a2);
        break;
      case 2:
        v4 = sub_2393C61E0(a2, (a1 + 8));
        break;
      case 1:
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

unint64_t sub_238F1C188(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8154(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C818C(v9, 1uLL, *(a1 + 8));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C818C(v9, 2uLL, *(a1 + 10));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F1BDB0((a1 + 12), v9, 3uLL);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}