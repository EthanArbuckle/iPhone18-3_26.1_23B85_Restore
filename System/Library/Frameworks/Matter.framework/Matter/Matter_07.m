unint64_t sub_238F1C224(void *a1, uint64_t a2)
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
          v4 = sub_238F1BE54(a1 + 12, a2);
        }

        goto LABEL_13;
      }

      v5 = a1 + 5;
      goto LABEL_12;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v5 = a1 + 1;
LABEL_12:
        v4 = sub_2393C5F70(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5F2C(a2, a1);
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

unint64_t sub_238F1C2F4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C8154(v9, 1uLL, *(a1 + 1));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C85FC(v9, 2uLL, *(a1 + 2), *(a1 + 3));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F1BDB0(a1 + 32, v9, 3uLL);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F1C390(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C61E0(a2, (a1 + 16));
      }

      else if (v8 == 3)
      {
        v4 = sub_238F1BE54(a1 + 32, a2);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C5F2C(a2, (a1 + 8));
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

unint64_t sub_238F1C468(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_238EFEFB0(v9, 1uLL, a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_238F2AA44(v9, 2uLL, a1 + 16);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F2AA44(v9, 3uLL, a1 + 20);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F36DFC(v9, 4uLL, a1 + 24);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F1C504(uint64_t a1, uint64_t a2)
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

        goto LABEL_13;
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
    }

    else if (v9 == 2)
    {
      *(a1 + 16) = 1;
      *(a1 + 18) = 0;
      v5 = (a1 + 18);
LABEL_12:
      v4 = sub_2393C5F70(a2, v5);
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

unint64_t sub_238F1C604(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8154(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C818C(v10, 1uLL, *(a1 + 8));
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C818C(v10, 2uLL, *(a1 + 10));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_238F1C468((a1 + 16), v10, 3uLL);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238F1BDB0((a1 + 48), v10, 4uLL);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F1C6B8(void *a1, uint64_t a2)
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
          v4 = sub_238F1C504((a1 + 2), a2);
        }

        else if (v9 == 4)
        {
          v4 = sub_238F1BE54((a1 + 6), a2);
        }

        goto LABEL_15;
      }

      v5 = a1 + 5;
      goto LABEL_12;
    }

    if (!v9)
    {
      v4 = sub_2393C5F2C(a2, a1);
      goto LABEL_15;
    }

    if (v9 == 1)
    {
      v5 = a1 + 1;
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

unint64_t sub_238F1C7A0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    if (!*a1)
    {
      goto LABEL_8;
    }

    v10 = sub_2393C8140(v9, 1uLL, *a1);
    v11 = v4;
    if (v10)
    {
      return sub_2394C38E0(&v9);
    }

    if (!a1[1])
    {
LABEL_8:
      v10 = 0x5C00000587;
      v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      return sub_2394C38E0(&v9);
    }

    v10 = sub_2393C8140(v9, 2uLL, a1[1]);
    v11 = v5;
    if (!v10)
    {
      v10 = sub_238F36C68(v9, 3uLL, (a1 + 8));
      v11 = v6;
      if (!v10)
      {
        v10 = sub_238F36D08(v9, 4uLL, (a1 + 32));
        v11 = v7;
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F1C85C(_BYTE *a1, uint64_t a2)
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
        v4 = sub_238EFE808(a2, (a1 + 8));
      }

      else if (v8 == 4)
      {
        v4 = sub_238EFE808(a2, (a1 + 88));
      }
    }

    else if (v8 == 1)
    {
      v4 = sub_238EFE758(a2, a1);
    }

    else if (v8 == 2)
    {
      v4 = sub_238EFE7B0(a2, a1 + 1);
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

unint64_t sub_238F1C938(uint64_t a1, uint64_t a2, unint64_t a3)
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
        v10 = sub_238F1C7A0((a1 + 16), v9, 2uLL);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F1BDB0((a1 + 72), v9, 3uLL);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F1C9D4(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F1C85C((a1 + 16), a2);
      }

      else if (v8 == 3)
      {
        v4 = sub_238F1BE54(a1 + 184, a2);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C5F70(a2, (a1 + 8));
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

unint64_t sub_238F1CAAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8154(v9, 1uLL, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C85FC(v9, 2uLL, *(a1 + 8), *(a1 + 16));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C818C(v9, 3uLL, *(a1 + 24));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8364(v9, 4uLL, *(a1 + 32), *(a1 + 40));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F1CB48(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F36E54(a2, (a1 + 24));
        if (!v4)
        {
          v4 = 0;
        }
      }

      else if (v8 == 4)
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

    else if (v8 == 1)
    {
      v4 = sub_2393C5F2C(a2, a1);
    }

    else if (v8 == 2)
    {
      v4 = sub_2393C61E0(a2, (a1 + 8));
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

unint64_t sub_238F1CC60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C8154(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_2393C85FC(v12, 1uLL, *(a1 + 8), *(a1 + 16));
      v14 = v5;
      if (!v13)
      {
        v13 = sub_238EFD4A8(v12, 2uLL, (a1 + 24));
        v14 = v6;
        if (!v13)
        {
          v13 = sub_238EFD4A8(v12, 3uLL, (a1 + 28));
          v14 = v7;
          if (!v13)
          {
            v13 = sub_238EFD4A8(v12, 4uLL, (a1 + 32));
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

unint64_t sub_238F1CD44(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5F2C(a2, a1);
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

unint64_t sub_238F1CE3C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v17, a2, a3);
  if (!v18)
  {
    v18 = sub_2393C818C(v17, 0, *a1);
    v19 = v4;
    if (!v18)
    {
      v5 = 0x5C00000587;
      v6 = *(a1 + 2);
      if (v6 == 1)
      {
        goto LABEL_4;
      }

      v18 = sub_2393C8140(v17, 1uLL, v6);
      v19 = v8;
      if (!v18)
      {
        v18 = sub_238F2ADF0(v17, 2uLL, (a1 + 4));
        v19 = v9;
        if (!v18)
        {
          v18 = sub_238EFD454(v17, 3uLL, (a1 + 16));
          v19 = v10;
          if (!v18)
          {
            v18 = sub_238F2ADF0(v17, 4uLL, (a1 + 24));
            v19 = v11;
            if (!v18)
            {
              v18 = sub_238EFD454(v17, 5uLL, (a1 + 36));
              v19 = v12;
              if (!v18)
              {
                v18 = sub_238F2ADF0(v17, 6uLL, (a1 + 44));
                v19 = v13;
                if (!v18)
                {
                  v18 = sub_238EFD454(v17, 7uLL, (a1 + 56));
                  v19 = v14;
                  if (!v18)
                  {
                    v16 = *(a1 + 128);
                    if (v16 != 2)
                    {
                      v5 = sub_2393C8140(v17, 8uLL, v16);
                      goto LABEL_5;
                    }

LABEL_4:
                    v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
LABEL_5:
                    v18 = v5;
                    v19 = v7;
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

unint64_t sub_238F1CF7C(uint64_t a1, uint64_t a2)
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
      if (v10 <= 1u)
      {
        if (v10)
        {
          v4 = sub_238F03FA8(a2, (a1 + 2));
        }

        else
        {
          v4 = sub_2393C5F70(a2, a1);
        }

        goto LABEL_25;
      }

      if (v10 == 2)
      {
        v6 = a1 + 8;
LABEL_22:
        v4 = sub_238F10D4C(a2, v6);
        goto LABEL_25;
      }

      if (v10 == 3)
      {
        v5 = a1 + 32;
LABEL_24:
        v4 = sub_238EFD658(a2, v5);
      }
    }

    else
    {
      if (v10 > 5u)
      {
        if (v10 != 6)
        {
          if (v10 != 7)
          {
            if (v10 == 8)
            {
              v4 = sub_238EFF894(a2, (a1 + 128));
            }

            goto LABEL_25;
          }

          v5 = a1 + 112;
          goto LABEL_24;
        }

        v6 = a1 + 88;
        goto LABEL_22;
      }

      if (v10 == 4)
      {
        v6 = a1 + 48;
        goto LABEL_22;
      }

      if (v10 == 5)
      {
        v5 = a1 + 72;
        goto LABEL_24;
      }
    }

LABEL_25:
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

unint64_t sub_238F1D0BC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 14)
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

unint64_t sub_238F1D12C(char *a1, uint64_t a2)
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
      v5 = sub_238F1D1C0(a2, a1);
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

unint64_t sub_238F1D1C0(uint64_t a1, char *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = *a2;
    if (v5 > 0x76)
    {
      v6 = 14;
    }

    else
    {
      v6 = byte_2395906B0[v5];
    }

    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = v6;
  }

  return v4 | v3;
}

unint64_t sub_238F1D228(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v6 = sub_238F10BDC(a2, (a1 + 72));
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

unint64_t sub_238F1D324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 > 65527)
  {
    if (v4 <= 65530)
    {
      if (v4 == 65528)
      {
        a1 += 152;
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 65529)
        {
          return v6 | v5;
        }

        a1 = v3 + 224;
      }
    }

    else
    {
      if (v4 != 65531)
      {
        if (v4 == 65532)
        {
          v6 = sub_2393C5FC8(a2, (a1 + 368));
          goto LABEL_22;
        }

        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 == 65533)
        {
          v6 = sub_2393C5F70(a2, (v3 + 372));
LABEL_22:
          v5 = v6 & 0xFFFFFFFF00000000;
          return v6 | v5;
        }

        return v6 | v5;
      }

      a1 += 296;
    }

LABEL_21:
    v6 = sub_238F36BB4(a1, a2);
    goto LABEL_22;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = sub_238EA4D5C(a2, (a1 + 74));
      goto LABEL_22;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 != 3)
    {
      return v6 | v5;
    }

    a1 = v3 + 80;
    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 1)
  {
    v6 = sub_238F00228(a2, (v3 + 72));
    goto LABEL_22;
  }

  return v6 | v5;
}

unint64_t sub_238F1D458(uint64_t a1, uint64_t a2, uint64_t a3)
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
        goto LABEL_32;
      case 1:
        v11 = (a1 + 2);
        goto LABEL_26;
      case 2:
        v12 = (a1 + 4);
        goto LABEL_19;
      case 3:
        v12 = (a1 + 5);
LABEL_19:
        v7 = sub_2393C5ED0(a2, v12);
        goto LABEL_35;
      case 4:
        v11 = (a1 + 6);
        goto LABEL_26;
      case 5:
        v11 = (a1 + 8);
        goto LABEL_26;
      case 6:
        v11 = (a1 + 10);
        goto LABEL_26;
      case 15:
        v7 = sub_238EA4DB4(a2, (a1 + 12));
        goto LABEL_35;
      case 16:
        v11 = (a1 + 14);
        goto LABEL_26;
      case 17:
        v9 = (a1 + 16);
        goto LABEL_31;
      case 18:
        v13 = (a1 + 18);
        goto LABEL_23;
      case 19:
        v13 = (a1 + 22);
LABEL_23:
        v7 = sub_238EFD714(a2, v13);
        goto LABEL_35;
      case 20:
        v9 = (a1 + 26);
        goto LABEL_31;
      default:
        return v7 | v6;
    }
  }

  if (v5 > 65530)
  {
    if (v5 == 65531)
    {
      v10 = a1 + 176;
      goto LABEL_34;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 248));
LABEL_35:
      v6 = v7 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 == 65533)
    {
      v11 = (a1 + 252);
LABEL_26:
      v7 = sub_2393C5F70(a2, v11);
      goto LABEL_35;
    }
  }

  else
  {
    if (v5 == 0x4000)
    {
      v9 = (a1 + 28);
LABEL_31:
      v8 = a2;
LABEL_32:
      v7 = sub_238F00228(v8, v9);
      goto LABEL_35;
    }

    if (v5 == 65528)
    {
      v10 = a1 + 32;
      goto LABEL_34;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 == 65529)
    {
      v10 = a1 + 104;
LABEL_34:
      v7 = sub_238F36BB4(v10, a2);
      goto LABEL_35;
    }
  }

  return v7 | v6;
}

unint64_t sub_238F1D5F0(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8140(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_238EFD4A8(v9, 1uLL, a1 + 1);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C8140(v9, 2uLL, *(a1 + 6));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8140(v9, 3uLL, *(a1 + 7));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F1D68C(uint64_t a1, uint64_t a2)
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
          v4 = sub_238EFD714(a2, (a1 + 2));
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
      v5 = (a1 + 6);
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      v5 = (a1 + 7);
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

unint64_t sub_238F1D75C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        v11 = sub_238F13404(v10, 1uLL, a1 + 1);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8140(v10, 2uLL, a1[3]);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 3uLL, a1[4]);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F1D818(unsigned __int8 *a1, uint64_t a2)
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
          v4 = sub_238F00228(a2, a1 + 1);
        }
      }

      else
      {
        v4 = sub_238EFF894(a2, a1);
      }

      goto LABEL_13;
    }

    if (v9 == 2)
    {
      v5 = a1 + 3;
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      v5 = a1 + 4;
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

unint64_t sub_238F1D8E8(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v4 = *a1;
    if (v4 == 2)
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
        v12 = sub_2393C8140(v11, 1uLL, *(a1 + 1));
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238EFD4A8(v11, 2uLL, a1 + 1);
          v13 = v7;
          if (!v12)
          {
            v12 = sub_2393C8140(v11, 3uLL, *(a1 + 6));
            v13 = v8;
            if (!v12)
            {
              v12 = sub_2393C8140(v11, 4uLL, *(a1 + 7));
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F1D9BC(uint64_t a1, uint64_t a2)
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
          v4 = sub_2393C5ED0(a2, (a1 + 1));
        }
      }

      else
      {
        v4 = sub_238EFF894(a2, a1);
      }

      goto LABEL_15;
    }

    switch(v9)
    {
      case 2u:
        v4 = sub_238EFD714(a2, (a1 + 2));
        break;
      case 3u:
        v5 = (a1 + 6);
        goto LABEL_13;
      case 4u:
        v5 = (a1 + 7);
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

unint64_t sub_238F1DAA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v6 = sub_2393C61E0(a2, a1);
    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v7 = a1 + 16;
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

unint64_t sub_238F1DBA0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C8140(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v5 = a1[1];
      if (v5 == 12)
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
        v12 = sub_2393C85FC(v11, 2uLL, *(a1 + 1), *(a1 + 2));
        v13 = v9;
        if (!v12)
        {
          v7 = sub_2393C85FC(v11, 3uLL, *(a1 + 3), *(a1 + 4));
          goto LABEL_5;
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F1DC5C(_BYTE *a1, uint64_t a2)
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
          v4 = sub_238F07BEC(a2, a1 + 1);
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
      v5 = a1 + 8;
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      v5 = a1 + 24;
LABEL_12:
      v4 = sub_2393C61E0(a2, v5);
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

unint64_t sub_238F1DD2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v7 = sub_2393C5FC8(a2, (a1 + 648));
          goto LABEL_39;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65533)
        {
          return v7 | v6;
        }

        v7 = sub_2393C5F70(a2, (a1 + 652));
LABEL_39:
        v6 = v7 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }

      if (v5 == 65529)
      {
        v10 = a1 + 504;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65531)
        {
          return v7 | v6;
        }

        v10 = a1 + 576;
      }
    }

    else
    {
      if (v5 <= 9)
      {
        if (v5 != 8)
        {
          v9 = a1 + 272;
          goto LABEL_25;
        }

        v11 = a1 + 192;
LABEL_36:
        v7 = sub_238EFE808(a2, v11);
        goto LABEL_39;
      }

      if (v5 == 10)
      {
        v11 = a1 + 352;
        goto LABEL_36;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65528)
      {
        return v7 | v6;
      }

      v10 = a1 + 432;
    }

    v7 = sub_238F36BB4(v10, a2);
    goto LABEL_39;
  }

  if (v5 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 != 4)
      {
        v8 = a1 + 80;
        goto LABEL_38;
      }

      v7 = sub_2393C6020(a2, (a1 + 72));
      goto LABEL_39;
    }

    if (v5 == 6)
    {
      v8 = a1 + 96;
      goto LABEL_38;
    }

    v9 = a1 + 112;
LABEL_25:
    v7 = sub_238F1DFC8(a2, v9);
    goto LABEL_39;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = a1 + 24;
      goto LABEL_38;
    }

    v7 = sub_238F1DF30(a2, a1 + 40);
    goto LABEL_39;
  }

  if (!v5)
  {
    v7 = sub_238EA4D5C(a2, a1);
    goto LABEL_39;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 1)
  {
    v8 = a1 + 8;
LABEL_38:
    v7 = sub_238EFD658(a2, v8);
    goto LABEL_39;
  }

  return v7 | v6;
}

unint64_t sub_238F1DF30(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F187DC(a2, a1);
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

unint64_t sub_238F1DFC8(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F1E808(a2, a1);
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

unint64_t sub_238F1E068(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F37028(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F1E0BC(uint64_t a1, uint64_t a2)
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
      v5 = sub_2393C5CE4(a2, (a1 + 1));
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

unint64_t sub_238F1E160(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
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
        v9 = sub_238EFDC40(v8, 1uLL, a1 + 8);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F1E1F0(uint64_t a1, uint64_t a2)
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

unint64_t sub_238F1E2A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C85FC(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8140(v7, 1uLL, *(a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1E310(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5ED0(a2, (a1 + 16));
    }

    else if (!v8)
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

uint64_t sub_238F1E3B0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 4)
    {
      return 0x5C00000587;
    }

    else
    {
      result = sub_2393C8140(a2, 0, v6);
      if (!result)
      {
        result = sub_2393C8154(a2, 1uLL, *(a1 + 1));
        if (!result)
        {
          result = sub_2393C8154(a2, 2uLL, *(a1 + 2));
          if (!result)
          {
            result = sub_238F1E944(a1 + 3, a2, 3uLL);
            if (!result)
            {
              result = sub_2393C8344(a2, 4uLL, *(a1 + 12));
              if (!result)
              {
                result = sub_2393C8154(a2, 5uLL, *(a1 + 7));
                if (!result)
                {
                  result = sub_2393C8154(a2, 6uLL, *(a1 + 8));
                  if (!result)
                  {
                    result = sub_238F1E4D4(a2, 7uLL, a1 + 72);
                    if (!result)
                    {
                      result = sub_2393C7E38(a2, 8uLL, a1[96]);
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
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F1E4D4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_2393C8364(a1, a2, *v5, *(v5 + 1));
}

unint64_t sub_238F1E52C(uint64_t a1, uint64_t a2)
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

    if (v9 <= 3u)
    {
      if (v9 > 1u)
      {
        if (v9 != 2)
        {
          if (v9 == 3)
          {
            v4 = sub_238F187DC((a1 + 24), a2);
          }

          goto LABEL_22;
        }

        v5 = (a1 + 16);
        goto LABEL_21;
      }

      if (v9)
      {
        v5 = (a1 + 8);
LABEL_21:
        v4 = sub_2393C5F2C(a2, v5);
        goto LABEL_22;
      }

      v4 = sub_238EA4D5C(a2, a1);
    }

    else
    {
      if (v9 > 5u)
      {
        if (v9 != 6)
        {
          if (v9 == 7)
          {
            v4 = sub_238F00D84(a2, a1 + 72);
          }

          else if (v9 == 8)
          {
            v4 = sub_2393C5CE4(a2, (a1 + 96));
          }

          goto LABEL_22;
        }

        v5 = (a1 + 64);
        goto LABEL_21;
      }

      if (v9 == 4)
      {
        v4 = sub_2393C6020(a2, (a1 + 48));
        goto LABEL_22;
      }

      if (v9 == 5)
      {
        v5 = (a1 + 56);
        goto LABEL_21;
      }
    }

LABEL_22:
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

unint64_t sub_238F1E678(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C85FC(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F1EE44(v7, 1uLL, (a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1E6E4(uint64_t a1, uint64_t a2)
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
      *(a1 + 16) = 1;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v4 = sub_238F0BA3C(a2, a1 + 24);
    }

    else if (!v8)
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

unint64_t sub_238F1E79C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C85FC(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F38540(v7, 1uLL, a1 + 16);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1E808(_OWORD *a1, uint64_t a2)
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
      v4 = sub_238F1E8A8(a2, (a1 + 1));
    }

    else if (!v8)
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

unint64_t sub_238F1E8A8(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 48) == 1)
    {
      *(a2 + 48) = 0;
    }
  }

  else
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 1;
    v6 = sub_238F1E6E4(a2, a1);
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

unint64_t sub_238F1E944(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
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

unint64_t sub_238F1E9B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
      a1 += 72;
      goto LABEL_17;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65528)
    {
      a1 = v3 + 144;
      goto LABEL_17;
    }
  }

  else
  {
    if (v4 > 65531)
    {
      if (v4 == 65532)
      {
        v6 = sub_2393C5FC8(a2, (a1 + 360));
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 65533)
        {
          return v6 | v5;
        }

        v6 = sub_2393C5F70(a2, (v3 + 364));
      }

LABEL_18:
      v5 = v6 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }

    if (v4 == 65529)
    {
      a1 += 216;
      goto LABEL_17;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65531)
    {
      a1 = v3 + 288;
LABEL_17:
      v6 = sub_238F36BB4(a1, a2);
      goto LABEL_18;
    }
  }

  return v6 | v5;
}

unint64_t sub_238F1EAA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v14, a2, a3);
  if (!v15)
  {
    v15 = sub_2393C8364(v14, 0, *a1, *(a1 + 8));
    v16 = v4;
    if (!v15)
    {
      v5 = *(a1 + 16);
      if (v5 == 4)
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v7 = 0x5C00000587;
LABEL_5:
        v15 = v7;
        v16 = v6;
        return sub_2394C38E0(&v14);
      }

      v15 = sub_2393C8140(v14, 1uLL, v5);
      v16 = v8;
      if (!v15)
      {
        v15 = sub_2393C8140(v14, 2uLL, *(a1 + 17));
        v16 = v9;
        if (!v15)
        {
          v15 = sub_238F16CC4(v14, 3uLL, a1 + 20);
          v16 = v10;
          if (!v15)
          {
            v15 = sub_238EFD454(v14, 4uLL, a1 + 32);
            v16 = v11;
            if (!v15)
            {
              v15 = sub_2393C85FC(v14, 5uLL, *(a1 + 48), *(a1 + 56));
              v16 = v12;
              if (!v15)
              {
                v7 = sub_238F38568(v14, 6uLL, (a1 + 64));
                goto LABEL_5;
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v14);
}

unint64_t sub_238F1EBA8(uint64_t a1, uint64_t a2)
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
          v4 = sub_238EA4D5C(a2, (a1 + 16));
        }

        else if (v8 == 2)
        {
          v4 = sub_238EA4DB4(a2, (a1 + 17));
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
    }

    else if (v8 > 4u)
    {
      if (v8 == 5)
      {
        v4 = sub_2393C61E0(a2, (a1 + 48));
      }

      else if (v8 == 6)
      {
        v4 = sub_238F06AB0(a2, (a1 + 64));
      }
    }

    else if (v8 == 3)
    {
      v4 = sub_238EFDEB0(a2, a1 + 20);
    }

    else if (v8 == 4)
    {
      v4 = sub_238EFD658(a2, a1 + 32);
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

unint64_t sub_238F1ED00(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F1908C(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F1ED48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8364(a2, 0, *a1, *(a1 + 8));
    if (!result)
    {
      result = sub_238F1EDEC(a2, 1uLL, (a1 + 16));
      if (!result)
      {
        result = sub_238F1EE44(a2, 2uLL, (a1 + 32));
        if (!result)
        {
          result = sub_238F1EE9C(a2, 3uLL, (a1 + 64));
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

unint64_t sub_238F1EDEC(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE3698(a3);
  return sub_238F16CC4(a1, a2, v5);
}

unint64_t sub_238F1EE44(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F37AF8(a1, a2, v5);
}

unint64_t sub_238F1EE9C(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_8:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 == 5)
  {
    v5 = 0x5C00000587;
    goto LABEL_8;
  }

  if (v3 != 255)
  {
    v5 = sub_2393C8140(a1, a2, v3);
    goto LABEL_8;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F1EF10(uint64_t a1, uint64_t a2)
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
        *(a1 + 32) = 1;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v4 = sub_238F0BA3C(a2, a1 + 40);
      }

      else if (v8 == 3)
      {
        v4 = sub_238F0B7F4(a2, (a1 + 64));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        *(a1 + 16) = 1;
        *(a1 + 20) = 0;
        v4 = sub_238EFDEB0(a2, a1 + 20);
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

unint64_t sub_238F1F030(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F36DFC(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238EFDC40(v7, 1uLL, a1 + 8);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1F09C(uint64_t a1, uint64_t a2)
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
      *a1 = 1;
      *(a1 + 4) = 0;
      v4 = sub_2393C5FC8(a2, (a1 + 4));
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

unint64_t sub_238F1F158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        v7 = sub_238F0C9D0(a2, a1);
        goto LABEL_26;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 1)
      {
        return v7 | v6;
      }

      v8 = a1 + 8;
    }

    else if (v5 == 2)
    {
      v8 = a1 + 32;
    }

    else
    {
      if (v5 != 3)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 4)
        {
          v7 = sub_238F1F2A4(a2, a1 + 80);
LABEL_26:
          v6 = v7 & 0xFFFFFFFF00000000;
          return v7 | v6;
        }

        return v7 | v6;
      }

      v8 = a1 + 56;
    }

    v7 = sub_238F0BA3C(a2, v8);
    goto LABEL_26;
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v9 = a1 + 128;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v9 = a1 + 200;
    }

LABEL_22:
    v7 = sub_238F36BB4(v9, a2);
    goto LABEL_26;
  }

  if (v5 == 65531)
  {
    v9 = a1 + 272;
    goto LABEL_22;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 344));
    goto LABEL_26;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 348));
    goto LABEL_26;
  }

  return v7 | v6;
}

unint64_t sub_238F1F2A4(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 40) == 1)
    {
      *(a2 + 40) = 0;
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 1;
    v6 = sub_238F36228(a2, a1);
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

unint64_t sub_238F1F340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 6)
  {
    if (v5 <= 65528)
    {
      if (v5 == 7)
      {
        v6 = (a1 + 88);
        goto LABEL_31;
      }

      if (v5 != 8)
      {
        v7 = 0;
        LODWORD(v8) = 0;
        if (v5 != 65528)
        {
          return v8 | v7;
        }

        v9 = a1 + 96;
        goto LABEL_26;
      }

      v10 = (a1 + 90);
    }

    else
    {
      if (v5 <= 65531)
      {
        if (v5 == 65529)
        {
          v9 = a1 + 168;
          goto LABEL_26;
        }

        v7 = 0;
        LODWORD(v8) = 0;
        if (v5 != 65531)
        {
          return v8 | v7;
        }

        v9 = a1 + 240;
LABEL_26:
        v8 = sub_238F36BB4(v9, a2);
LABEL_37:
        v7 = v8 & 0xFFFFFFFF00000000;
        return v8 | v7;
      }

      if (v5 == 65532)
      {
        v11 = (a1 + 312);
LABEL_33:
        v12 = a2;
        goto LABEL_34;
      }

      v7 = 0;
      LODWORD(v8) = 0;
      if (v5 != 65533)
      {
        return v8 | v7;
      }

      v10 = (a1 + 316);
    }

    v8 = sub_2393C5F70(a2, v10);
    goto LABEL_37;
  }

  if (v5 > 2)
  {
    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        v6 = (a1 + 9);
      }

      else
      {
        v6 = (a1 + 10);
      }

      goto LABEL_31;
    }

    if (v5 != 5)
    {
      v9 = a1 + 16;
      goto LABEL_26;
    }

    v6 = (a1 + 11);
LABEL_31:
    v8 = sub_2393C5ED0(a2, v6);
    goto LABEL_37;
  }

  if (!v5)
  {
    v12 = a2;
    v11 = a1;
LABEL_34:
    v8 = sub_2393C5FC8(v12, v11);
    goto LABEL_37;
  }

  if (v5 == 1)
  {
    v11 = (a1 + 4);
    goto LABEL_33;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  if (v5 == 2)
  {
    v6 = (a1 + 8);
    goto LABEL_31;
  }

  return v8 | v7;
}

unint64_t sub_238F1F4E0(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_238F02628(v10, 0, a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_238F36DFC(v10, 1uLL, a1 + 4);
      v12 = v5;
      if (!v11)
      {
        v11 = sub_238F02628(v10, 2uLL, a1 + 12);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_238F02628(v10, 3uLL, a1 + 14);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238F37028(v10, 4uLL, a1 + 16);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F1F594(uint64_t a1, uint64_t a2)
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
          *(a1 + 4) = 1;
          *(a1 + 8) = 0;
          v4 = sub_2393C5FC8(a2, (a1 + 8));
        }

        goto LABEL_15;
      }

      *a1 = 1;
      v5 = (a1 + 1);
    }

    else if (v9 == 2)
    {
      *(a1 + 12) = 1;
      v5 = (a1 + 13);
    }

    else
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          *(a1 + 16) = 1;
          v4 = sub_2393C5CE4(a2, (a1 + 17));
        }

        goto LABEL_15;
      }

      *(a1 + 14) = 1;
      v5 = (a1 + 15);
    }

    v4 = sub_2393C5ED0(a2, v5);
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

unint64_t sub_238F1F698(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (v5 != 1)
        {
          return v7 | v6;
        }

        v7 = sub_238EFD714(a2, (a1 + 16));
      }

      else
      {
        v7 = sub_2393C61E0(a2, a1);
      }
    }

    else
    {
      if (v5 == 2)
      {
        v8 = a1 + 24;
        goto LABEL_26;
      }

      if (v5 != 3)
      {
        v9 = (a1 + 97);
LABEL_24:
        v7 = sub_238F00228(a2, v9);
        goto LABEL_27;
      }

      v7 = sub_2393C5ED0(a2, (a1 + 96));
    }

LABEL_27:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 > 65530)
  {
    if (v5 == 65531)
    {
      v8 = a1 + 248;
      goto LABEL_26;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 320));
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v7 = sub_2393C5F70(a2, (a1 + 324));
    }

    goto LABEL_27;
  }

  if (v5 == 5)
  {
    v9 = (a1 + 99);
    goto LABEL_24;
  }

  if (v5 == 65528)
  {
    v8 = a1 + 104;
    goto LABEL_26;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65529)
  {
    v8 = a1 + 176;
LABEL_26:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_27;
  }

  return v7 | v6;
}

unint64_t sub_238F1F7F8(_WORD *a1, uint64_t a2)
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
      v4 = sub_2393C5F70(a2, a1 + 1);
    }

    else if (!v8)
    {
      v4 = sub_238F36E54(a2, a1);
      if (!v4)
      {
        v4 = 0;
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

unint64_t sub_238F1F8A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C85FC(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8140(v7, 1uLL, *(a1 + 16));
      v9 = v5;
    }
  }

  sub_238F1F920(&v7, 2u, a1 + 24);
  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1F920(unint64_t result, unsigned int a2, uint64_t a3)
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
        result = sub_238F01CB4(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 2;
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

unint64_t sub_238F1F9E0(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5ED0(a2, (a1 + 16));
        break;
      case 0:
        v4 = sub_2393C61E0(a2, a1);
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

unint64_t sub_238F1FA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 7)
  {
    if (v5 > 65528)
    {
      if (v5 <= 65531)
      {
        if (v5 == 65529)
        {
          v8 = a1 + 272;
          goto LABEL_32;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 65531)
        {
          v8 = a1 + 344;
          goto LABEL_32;
        }

        return v7 | v6;
      }

      if (v5 == 65532)
      {
        v7 = sub_2393C5FC8(a2, (a1 + 416));
        goto LABEL_40;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v10 = (a1 + 420);
    }

    else
    {
      if (v5 <= 9)
      {
        if (v5 != 8)
        {
          v7 = sub_238F36E54(a2, (a1 + 192));
LABEL_40:
          v6 = v7 & 0xFFFFFFFF00000000;
          return v7 | v6;
        }

        v8 = a1 + 120;
LABEL_32:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_40;
      }

      if (v5 != 10)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 65528)
        {
          v8 = a1 + 200;
          goto LABEL_32;
        }

        return v7 | v6;
      }

      v10 = (a1 + 194);
    }

    v7 = sub_2393C5F70(a2, v10);
    goto LABEL_40;
  }

  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        v7 = sub_238F10D4C(a2, a1 + 88);
      }

      else
      {
        v7 = sub_238F1FD58(a2, a1 + 112);
      }
    }

    else if (v5 == 4)
    {
      v7 = sub_2393C5CE4(a2, (a1 + 82));
    }

    else
    {
      v7 = sub_238F1FCA0(a2, (a1 + 83));
    }

    goto LABEL_40;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v9 = (a1 + 80);
    }

    else
    {
      v9 = (a1 + 81);
    }

    v11 = a2;
    goto LABEL_35;
  }

  if (!v5)
  {
    v11 = a2;
    v9 = a1;
LABEL_35:
    v7 = sub_2393C5ED0(v11, v9);
    goto LABEL_40;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 1)
  {
    v8 = a1 + 8;
    goto LABEL_32;
  }

  return v7 | v6;
}

unint64_t sub_238F1FCA0(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_238F20120(a1, a2);
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

unint64_t sub_238F1FD58(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    LODWORD(v4) = 0;
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
    v4 = sub_2393C5E78(a1, a2);
    if (v4)
    {
      v5 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      if ((*(a2 + 4) & 1) == 0)
      {
        sub_238EA195C();
      }

      if (*a2 == 0x80000000)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (*a2 == 0x80000000)
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

unint64_t sub_238F1FE18(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F2AD98(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238EFEFB0(v7, 1uLL, a1 + 32);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F1FE84(uint64_t a1, uint64_t a2)
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
      *(a1 + 32) = 1;
      *(a1 + 40) = 0;
      v4 = sub_2393C5F2C(a2, (a1 + 40));
    }

    else if (!v8)
    {
      *a1 = 1;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      v4 = sub_238F10D4C(a2, a1 + 8);
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

unint64_t sub_238F1FF44(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v10, *a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 13)
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
        v11 = sub_238EFDC40(v10, 1uLL, a1 + 8);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_238F38638(v10, 2uLL, a1 + 32);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238F3870C(v10, 3uLL, a1 + 56);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F20004(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F20120(a2, a1);
      }

      goto LABEL_13;
    }

    if (v9 == 2)
    {
      *(a1 + 32) = 1;
      sub_2393C5AAC(a1 + 40);
      sub_2393C5ADC(a1 + 40, 0, 0);
      v5 = a1 + 40;
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      *(a1 + 112) = 1;
      sub_2393C5AAC(a1 + 120);
      sub_2393C5ADC(a1 + 120, 0, 0);
      v5 = a1 + 120;
LABEL_12:
      v4 = sub_238F36BB4(v5, a2);
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

unint64_t sub_238F20120(uint64_t a1, _BYTE *a2)
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
    if (v5 >= 0xD)
    {
      LOBYTE(v5) = 13;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F20178(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C8364(v11, 0, *a1, *(a1 + 8));
    v13 = v4;
    if (!v12)
    {
      v12 = sub_2393C8364(v11, 1uLL, *(a1 + 16), *(a1 + 24));
      v13 = v5;
      if (!v12)
      {
        v12 = sub_238EFEFB0(v11, 2uLL, (a1 + 32));
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238F1E4D4(v11, 3uLL, (a1 + 48));
          v13 = v7;
          if (!v12)
          {
            v12 = sub_238F1E4D4(v11, 4uLL, (a1 + 72));
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F1E4D4(v11, 5uLL, (a1 + 96));
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F20244(uint64_t a1, uint64_t a2)
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

    if (v13 > 2u)
    {
      switch(v13)
      {
        case 3u:
          v5 = a1 + 48;
          goto LABEL_19;
        case 4u:
          v5 = a1 + 72;
          goto LABEL_19;
        case 5u:
          v5 = a1 + 96;
LABEL_19:
          v4 = sub_238F00D84(a2, v5);
          break;
      }
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        if (v13 == 2)
        {
          *(a1 + 32) = 1;
          *(a1 + 40) = 0;
          v4 = sub_2393C5F2C(a2, (a1 + 40));
        }

        goto LABEL_20;
      }

      v9 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v9 == 16)
      {
        v8 = (a1 + 16);
        v7 = a2;
        goto LABEL_17;
      }
    }

    else
    {
      v6 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v6 == 16)
      {
        v7 = a2;
        v8 = a1;
LABEL_17:
        v4 = sub_2393C60CC(v7, v8);
      }
    }

LABEL_20:
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

unint64_t sub_238F20394(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8364(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238EFEFB0(v7, 1uLL, (a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F20400(uint64_t a1, uint64_t a2)
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
      *(a1 + 16) = 1;
      *(a1 + 24) = 0;
      v4 = sub_2393C5F2C(a2, (a1 + 24));
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

unint64_t sub_238F204DC(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v11, *a2, a3);
  if (!v12)
  {
    v4 = *a1;
    if (v4 == 13)
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
        v12 = sub_238EFDC40(v11, 1uLL, a1 + 8);
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238F02628(v11, 2uLL, a1 + 32);
          v13 = v7;
          if (!v12)
          {
            v12 = sub_238F1E4D4(v11, 3uLL, a1 + 40);
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F1E4D4(v11, 4uLL, a1 + 64);
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F205B4(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F20120(a2, a1);
      }

      goto LABEL_15;
    }

    switch(v9)
    {
      case 2u:
        *(a1 + 32) = 1;
        v4 = sub_2393C5ED0(a2, (a1 + 33));
        break;
      case 3u:
        v5 = a1 + 40;
        goto LABEL_13;
      case 4u:
        v5 = a1 + 64;
LABEL_13:
        v4 = sub_238F00D84(a2, v5);
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

unint64_t sub_238F206B4(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v9, *a2, a3);
  if (!v10)
  {
    v4 = *a1;
    if (v4 == 13)
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
        v10 = sub_238EFDC40(v9, 1uLL, a1 + 8);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F387DC(v9, 2uLL, (a1 + 32));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F2075C(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F1FD58(a2, a1 + 32);
        break;
      case 1:
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v4 = sub_2393C61E0(a2, (a1 + 16));
        break;
      case 0:
        v4 = sub_238F20120(a2, a1);
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

unint64_t sub_238F20828(uint64_t a1, uint64_t a2, unint64_t a3)
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
        v9 = sub_238EFEFB0(v8, 2uLL, (a1 + 24));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F208AC(uint64_t a1, uint64_t a2)
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
        *(a1 + 24) = 1;
        *(a1 + 32) = 0;
        v4 = sub_2393C5F2C(a2, (a1 + 32));
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

unint64_t sub_238F209A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8364(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F1E4D4(v7, 1uLL, (a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F20A0C(_OWORD *a1, uint64_t a2)
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

unint64_t sub_238F20ADC(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v7, *a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8364(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F1E4D4(v7, 1uLL, (a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F20B4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8364(v9, 0, *a1, *(a1 + 8));
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C7E38(v9, 1uLL, *(a1 + 16));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F2AD98(v9, 2uLL, (a1 + 24));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F2AD98(v9, 3uLL, (a1 + 56));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F20BE8(uint64_t a1, uint64_t a2)
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
          v4 = sub_2393C5CE4(a2, (a1 + 16));
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

      goto LABEL_14;
    }

    if (v9 == 2)
    {
      *(a1 + 24) = 1;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v5 = a1 + 32;
      goto LABEL_13;
    }

    if (v9 == 3)
    {
      *(a1 + 56) = 1;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = 0;
      v5 = a1 + 64;
LABEL_13:
      v4 = sub_238F10D4C(a2, v5);
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

unint64_t sub_238F20D08(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v13, a2, a3);
  if (!v14)
  {
    v14 = sub_2393C818C(v13, 0, *a1);
    v15 = v4;
    if (!v14)
    {
      v14 = sub_2393C8154(v13, 1uLL, *(a1 + 1));
      v15 = v5;
      if (!v14)
      {
        v14 = sub_2393C85FC(v13, 2uLL, *(a1 + 2), *(a1 + 3));
        v15 = v6;
        if (!v14)
        {
          v14 = sub_2393C818C(v13, 3uLL, a1[16]);
          v15 = v7;
          if (!v14)
          {
            v14 = sub_2393C8140(v13, 4uLL, *(a1 + 34));
            v15 = v8;
            if (!v14)
            {
              v14 = sub_2393C8364(v13, 5uLL, *(a1 + 5), *(a1 + 6));
              v15 = v9;
              if (!v14)
              {
                v14 = sub_2393C827C(v13, 6uLL, *(a1 + 56));
                v15 = v10;
                if (!v14)
                {
                  v14 = sub_2393C8140(v13, 7uLL, *(a1 + 57));
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

unint64_t sub_238F20E04(uint64_t a1, uint64_t a2)
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
      if (v11 <= 5u)
      {
        if (v11 != 4)
        {
          if (v11 == 5)
          {
            if (sub_2393C5C40(a2) == 16)
            {
              v4 = sub_2393C60CC(a2, (a1 + 40));
            }

            else
            {
              v4 = 0x500000002BLL;
            }
          }

          goto LABEL_25;
        }

        v7 = (a1 + 34);
        goto LABEL_21;
      }

      if (v11 == 6)
      {
        v4 = sub_2393C5D48(a2, (a1 + 56));
        goto LABEL_25;
      }

      if (v11 == 7)
      {
        v7 = (a1 + 57);
LABEL_21:
        v4 = sub_2393C5ED0(a2, v7);
      }
    }

    else if (v11 > 1u)
    {
      if (v11 == 2)
      {
        v4 = sub_2393C61E0(a2, (a1 + 16));
        goto LABEL_25;
      }

      if (v11 == 3)
      {
        v5 = (a1 + 32);
        v6 = a2;
LABEL_19:
        v4 = sub_2393C5F70(v6, v5);
      }
    }

    else
    {
      if (!v11)
      {
        v6 = a2;
        v5 = a1;
        goto LABEL_19;
      }

      v4 = sub_2393C5F2C(a2, (a1 + 8));
    }

LABEL_25:
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

unint64_t sub_238F20F70(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v13, a2, a3);
  if (!v14)
  {
    v14 = sub_2393C8140(v13, 0, *a1);
    v15 = v4;
    if (!v14)
    {
      v14 = sub_2393C8364(v13, 1uLL, *(a1 + 1), *(a1 + 2));
      v15 = v5;
      if (!v14)
      {
        v14 = sub_2393C8364(v13, 2uLL, *(a1 + 3), *(a1 + 4));
        v15 = v6;
        if (!v14)
        {
          v14 = sub_2393C818C(v13, 3uLL, *(a1 + 20));
          v15 = v7;
          if (!v14)
          {
            v8 = a1[42];
            if (v8 == 6)
            {
              v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
              v10 = 0x5C00000587;
LABEL_10:
              v14 = v10;
              v15 = v9;
              return sub_2394C38E0(&v13);
            }

            v14 = sub_2393C8140(v13, 4uLL, v8);
            v15 = v11;
            if (!v14)
            {
              v10 = sub_2393C827C(v13, 5uLL, a1[43]);
              goto LABEL_10;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v13);
}

unint64_t sub_238F21058(uint64_t a1, uint64_t a2)
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

    if (v11 > 2u)
    {
      switch(v11)
      {
        case 3u:
          v4 = sub_2393C5F70(a2, (a1 + 40));
          break;
        case 4u:
          v4 = sub_238F01014(a2, (a1 + 42));
          break;
        case 5u:
          v4 = sub_2393C5D48(a2, (a1 + 43));
          break;
      }

      goto LABEL_19;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_19;
        }

        v5 = sub_2393C5C40(a2);
        v4 = 0x500000002BLL;
        if (v5 != 16)
        {
          goto LABEL_19;
        }

        v6 = (a1 + 24);
        goto LABEL_17;
      }

      v7 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v7 == 16)
      {
        v6 = (a1 + 8);
LABEL_17:
        v4 = sub_2393C60CC(a2, v6);
      }
    }

    else
    {
      v4 = sub_238EA4DB4(a2, a1);
    }

LABEL_19:
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

unint64_t sub_238F211A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 32)
  {
    if (v5 <= 3)
    {
      if (v5 > 1)
      {
        if (v5 != 2)
        {
          v9 = (a1 + 4);
          goto LABEL_45;
        }

        v7 = sub_238EA4DB4(a2, (a1 + 2));
      }

      else if (v5)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 1)
        {
          return v7 | v6;
        }

        v7 = sub_238EA4D5C(a2, (a1 + 1));
      }

      else
      {
        v7 = sub_238EA4DB4(a2, a1);
      }

LABEL_48:
      v6 = v7 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }

    if (v5 <= 16)
    {
      if (v5 == 4)
      {
        v7 = sub_238F21458((a1 + 6), a2);
        goto LABEL_48;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 16)
      {
        return v7 | v6;
      }

      v9 = (a1 + 12);
    }

    else if (v5 == 17)
    {
      v9 = (a1 + 14);
    }

    else
    {
      if (v5 == 18)
      {
        v8 = (a1 + 16);
        goto LABEL_37;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 32)
      {
        return v7 | v6;
      }

      v9 = (a1 + 18);
    }

LABEL_45:
    v7 = sub_2393C5F70(a2, v9);
    goto LABEL_48;
  }

  if (v5 > 65527)
  {
    if (v5 <= 65530)
    {
      if (v5 == 65528)
      {
        v10 = a1 + 32;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65529)
        {
          return v7 | v6;
        }

        v10 = a1 + 104;
      }
    }

    else
    {
      if (v5 != 65531)
      {
        if (v5 == 65532)
        {
          v7 = sub_2393C5FC8(a2, (a1 + 248));
          goto LABEL_48;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65533)
        {
          return v7 | v6;
        }

        v9 = (a1 + 252);
        goto LABEL_45;
      }

      v10 = a1 + 176;
    }

    v7 = sub_238F36BB4(v10, a2);
    goto LABEL_48;
  }

  if (v5 > 47)
  {
    if (v5 == 48)
    {
      v9 = (a1 + 24);
    }

    else
    {
      if (v5 != 49)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 50)
        {
          v8 = (a1 + 28);
LABEL_37:
          v7 = sub_2393C5ED0(a2, v8);
          goto LABEL_48;
        }

        return v7 | v6;
      }

      v9 = (a1 + 26);
    }

    goto LABEL_45;
  }

  if (v5 == 33)
  {
    v9 = (a1 + 20);
    goto LABEL_45;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 34)
  {
    v8 = (a1 + 22);
    goto LABEL_37;
  }

  return v7 | v6;
}

unint64_t sub_238F213D4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
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
        v9 = sub_2393C818C(v8, 2uLL, a1[2]);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F21458(_WORD *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  v4 = a1 + 2;
  v5 = a1 + 1;
  while (1)
  {
    v11 = 0;
    v6 = sub_2394C37B8(v12, &v11);
    if (v6)
    {
      break;
    }

    v7 = a1;
    if (v11)
    {
      if (v11 == 2)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
        if (v11 != 1)
        {
          goto LABEL_9;
        }
      }
    }

    v6 = sub_2393C5F70(a2, v7);
LABEL_9:
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

unint64_t sub_238F21510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 65527)
  {
    if (v5 <= 65530)
    {
      if (v5 == 65528)
      {
        v11 = a1 + 8;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65529)
        {
          return v7 | v6;
        }

        v11 = a1 + 80;
      }
    }

    else
    {
      if (v5 != 65531)
      {
        if (v5 == 65532)
        {
          v7 = sub_2393C5FC8(a2, (a1 + 224));
          goto LABEL_27;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65533)
        {
          return v7 | v6;
        }

        v8 = (a1 + 228);
LABEL_25:
        v7 = sub_2393C5F70(a2, v8);
        goto LABEL_27;
      }

      v11 = a1 + 152;
    }

    v7 = sub_238F36BB4(v11, a2);
    goto LABEL_27;
  }

  if (v5 <= 0x4000)
  {
    if (v5)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 0x4000)
      {
        return v7 | v6;
      }

      v9 = (a1 + 1);
      v10 = a2;
    }

    else
    {
      v10 = a2;
      v9 = a1;
    }

    v7 = sub_2393C5CE4(v10, v9);
    goto LABEL_27;
  }

  if (v5 == 16385)
  {
    v8 = (a1 + 2);
    goto LABEL_25;
  }

  if (v5 == 16386)
  {
    v8 = (a1 + 4);
    goto LABEL_25;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 16387)
  {
    v7 = sub_238F0C9D0(a2, (a1 + 6));
LABEL_27:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F21664(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 2)
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
        v9 = sub_2393C8140(v8, 1uLL, a1[1]);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F216F0(_BYTE *a1, uint64_t a2)
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
      v4 = sub_2393C5ED0(a2, a1 + 1);
    }

    else if (!v8)
    {
      v4 = sub_238EFF894(a2, a1);
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

unint64_t sub_238F21790(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
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
        v9 = sub_2393C818C(v8, 2uLL, *(a1 + 2));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F21814(_BYTE *a1, uint64_t a2)
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
      v5 = a1 + 4;
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_238EA4DB4(a2, a1);
        }

        goto LABEL_10;
      }

      v5 = a1 + 2;
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

unint64_t sub_238F218C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 8);
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_26;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 1)
      {
        a1 = v4 + 80;
        goto LABEL_26;
      }

      return v7 | v6;
    }

    if (v5 == 2)
    {
      v8 = (a1 + 160);
    }

    else
    {
      if (v5 != 3)
      {
        a1 += 168;
        goto LABEL_26;
      }

      v8 = (a1 + 161);
    }

    goto LABEL_24;
  }

  if (v5 > 65530)
  {
    if (v5 == 65531)
    {
      a1 += 392;
      goto LABEL_26;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 464));
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v7 = sub_2393C5F70(a2, (v4 + 468));
    }

LABEL_27:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 5)
  {
    v8 = (a1 + 240);
LABEL_24:
    v7 = sub_2393C5ED0(a2, v8);
    goto LABEL_27;
  }

  if (v5 == 65528)
  {
    a1 += 248;
    goto LABEL_26;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65529)
  {
    a1 = v4 + 320;
LABEL_26:
    v7 = sub_238F36BB4(a1, a2);
    goto LABEL_27;
  }

  return v7 | v6;
}

unint64_t sub_238F21A0C(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v7, *a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8364(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8364(v7, 1uLL, *(a1 + 16), *(a1 + 24));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F21A7C(_OWORD *a1, uint64_t a2)
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

    if (v12 != 1)
    {
      if (v12)
      {
        goto LABEL_10;
      }

      v5 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v5 != 16)
      {
        goto LABEL_10;
      }

      v6 = a2;
      v7 = a1;
      goto LABEL_9;
    }

    v8 = sub_2393C5C40(a2);
    v4 = 0x500000002BLL;
    if (v8 == 16)
    {
      v7 = a1 + 1;
      v6 = a2;
LABEL_9:
      v4 = sub_2393C60CC(v6, v7);
    }

LABEL_10:
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

unint64_t sub_238F21B68(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    if (*a1)
    {
      v4 = sub_2393C8140(v7, 0, *a1);
    }

    else
    {
      v4 = 0x5C00000587;
      v5 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    v8 = v4;
    v9 = v5;
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F21BD4(_BYTE *a1, uint64_t a2)
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
      v5 = sub_238F140EC(a2, a1);
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

unint64_t sub_238F21C68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8364(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F37028(v7, 1uLL, (a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F21CD4(uint64_t a1, uint64_t a2)
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
      *(a1 + 16) = 1;
      v4 = sub_2393C5CE4(a2, (a1 + 17));
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

unint64_t sub_238F21DAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8364(v10, 0, *a1, *(a1 + 8));
    v12 = v4;
    if (!v11)
    {
      v11 = sub_238F1E4D4(v10, 1uLL, (a1 + 16));
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C8364(v10, 2uLL, *(a1 + 40), *(a1 + 48));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8154(v10, 3uLL, *(a1 + 56));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C818C(v10, 4uLL, *(a1 + 64));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F21E60(uint64_t a1, uint64_t a2)
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

    if (v12 <= 1u)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v4 = sub_238F00D84(a2, a1 + 16);
        }

        goto LABEL_19;
      }

      v8 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v8 == 16)
      {
        v7 = a2;
        v6 = a1;
        goto LABEL_18;
      }
    }

    else
    {
      if (v12 != 2)
      {
        if (v12 == 3)
        {
          v4 = sub_2393C5F2C(a2, (a1 + 56));
        }

        else if (v12 == 4)
        {
          v4 = sub_238F36E54(a2, (a1 + 64));
          if (!v4)
          {
            v4 = 0;
          }
        }

        goto LABEL_19;
      }

      v5 = sub_2393C5C40(a2);
      v4 = 0x500000002BLL;
      if (v5 == 16)
      {
        v6 = (a1 + 40);
        v7 = a2;
LABEL_18:
        v4 = sub_2393C60CC(v7, v6);
      }
    }

LABEL_19:
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

unint64_t sub_238F21FA8(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v9, *a2, a3);
  if (!v10)
  {
    v4 = *a1;
    if (v4 == 7)
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
        v10 = sub_238F02628(v9, 1uLL, a1 + 1);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238EFDC40(v9, 2uLL, a1 + 8);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F22050(uint64_t a1, uint64_t a2)
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
        *(a1 + 24) = 0;
        v4 = sub_2393C61E0(a2, (a1 + 16));
        break;
      case 1:
        *(a1 + 1) = 1;
        v4 = sub_2393C5ED0(a2, (a1 + 2));
        break;
      case 0:
        v4 = sub_238F22120(a2, a1);
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

unint64_t sub_238F22120(uint64_t a1, char *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = *a2;
    if (v5 > 0xB)
    {
      v6 = 7;
    }

    else
    {
      v6 = byte_239590727[v5];
    }

    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = v6;
  }

  return v4 | v3;
}

unint64_t sub_238F22188(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F2AA44(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F1E4D4(v8, 1uLL, a1 + 8);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F1E4D4(v8, 2uLL, a1 + 32);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F2220C(uint64_t a1, uint64_t a2)
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
      v5 = a1 + 32;
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          *a1 = 1;
          *(a1 + 2) = 0;
          v4 = sub_238F36E54(a2, (a1 + 2));
          if (!v4)
          {
            v4 = 0;
          }
        }

        goto LABEL_12;
      }

      v5 = a1 + 8;
    }

    v4 = sub_238F00D84(a2, v5);
LABEL_12:
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

unint64_t sub_238F222DC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8140(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8364(v7, 1uLL, *(a1 + 1), *(a1 + 2));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F22348(uint64_t a1, uint64_t a2)
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
      if (sub_2393C5C40(a2) == 16)
      {
        v4 = sub_2393C60CC(a2, (a1 + 8));
      }

      else
      {
        v4 = 0x500000002BLL;
      }
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

unint64_t sub_238F22418(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
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
        v9 = sub_2393C8364(v8, 2uLL, *(a1 + 1), *(a1 + 2));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F224A0(uint64_t a1, uint64_t a2)
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
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, (a1 + 8));
        }

        else
        {
          v4 = 0x500000002BLL;
        }

        break;
      case 1:
        v6 = (a1 + 1);
        v5 = a2;
        goto LABEL_8;
      case 0:
        v5 = a2;
        v6 = a1;
LABEL_8:
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

unint64_t sub_238F225B0(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v15, a2, a3);
  if (!v16)
  {
    v16 = sub_2393C8364(v15, 1uLL, *a1, *(a1 + 8));
    v17 = v6;
    if (!v16)
    {
      v16 = sub_2393C818C(v15, 2uLL, *(a1 + 16));
      v17 = v7;
      if (!v16)
      {
        v16 = sub_2393C8154(v15, 3uLL, *(a1 + 24));
        v17 = v8;
        if (!v16)
        {
          v16 = sub_2393C8154(v15, 4uLL, *(a1 + 32));
          v17 = v9;
          if (!v16)
          {
            v16 = sub_2393C85FC(v15, 5uLL, *(a1 + 40), *(a1 + 48));
            v17 = v10;
            if (!v16)
            {
              v11 = sub_238F1E4D4(v15, 6uLL, (a1 + 56));
              v16 = v11;
              v17 = v12;
              if (*a4 == 1 && !v11)
              {
                v16 = sub_2393C8140(v15, 0xFEuLL, *(a1 + 80));
                v17 = v13;
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v15);
}

unint64_t sub_238F226A8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F225B0(a1, a2, a3, v5);
}

unint64_t sub_238F226D8(uint64_t a1, uint64_t a2)
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
      if (v9 > 5u)
      {
        if (v9 == 6)
        {
          v4 = sub_238F00D84(a2, a1 + 56);
        }

        else if (v9 == 254)
        {
          v4 = sub_2393C5ED0(a2, (a1 + 80));
        }

        goto LABEL_24;
      }

      if (v9 != 4)
      {
        if (v9 == 5)
        {
          v4 = sub_2393C61E0(a2, (a1 + 40));
        }

        goto LABEL_24;
      }

      v5 = (a1 + 32);
      goto LABEL_18;
    }

    switch(v9)
    {
      case 1u:
        if (sub_2393C5C40(a2) == 16)
        {
          v4 = sub_2393C60CC(a2, a1);
        }

        else
        {
          v4 = 0x500000002BLL;
        }

        break;
      case 2u:
        v4 = sub_238F36E54(a2, (a1 + 16));
        if (!v4)
        {
          v4 = 0;
        }

        break;
      case 3u:
        v5 = (a1 + 24);
LABEL_18:
        v4 = sub_2393C5F2C(a2, v5);
        break;
    }

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

unint64_t sub_238F22860(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C8364(v12, 1uLL, *a1, *(a1 + 8));
    v14 = v6;
    if (!v13)
    {
      v13 = sub_238F2ADF0(v12, 2uLL, a1 + 16);
      v14 = v7;
      if (!v13)
      {
        v8 = sub_238F1E4D4(v12, 3uLL, (a1 + 40));
        v13 = v8;
        v14 = v9;
        if (*a4 == 1 && !v8)
        {
          v13 = sub_2393C8140(v12, 0xFEuLL, *(a1 + 64));
          v14 = v10;
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F22910(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F22860(a1, a2, a3, v5);
}

unint64_t sub_238F22940(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F00D84(a2, a1 + 40);
      }

      else if (v8 == 254)
      {
        v4 = sub_2393C5ED0(a2, (a1 + 64));
      }
    }

    else if (v8 == 1)
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

    else if (v8 == 2)
    {
      v4 = sub_238F10D4C(a2, a1 + 16);
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

unint64_t sub_238F22A4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      v6 = sub_238EA4D5C(a2, (a1 + 168));
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

unint64_t sub_238F22BB4(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_238F35778(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F22C0C(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F357FC(a1, a2);
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

unint64_t sub_238F22CA0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238F35778(a1, a2, 0);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F22D08(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8140(a2, 0, *a1);
    if (!result)
    {
      result = sub_238F1EDEC(a2, 1uLL, a1 + 4);
      if (!result)
      {
        result = sub_238F1EDEC(a2, 2uLL, a1 + 16);
        if (!result)
        {
          return sub_2393C8DE0(a2, v6);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F22D98(uint64_t a1, uint64_t a2)
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
      *(a1 + 16) = 1;
      *(a1 + 20) = 0;
      v5 = a1 + 20;
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_2393C5ED0(a2, a1);
        }

        goto LABEL_10;
      }

      *(a1 + 4) = 1;
      *(a1 + 8) = 0;
      v5 = a1 + 8;
    }

    v4 = sub_238EFDEB0(a2, v5);
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

unint64_t sub_238F22E64(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
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
        v13 = sub_2393C81D4(v12, 2uLL, *(a1 + 1));
        v14 = v6;
      }
    }
  }

  sub_238F04044(&v12, 3u, a1 + 1);
  if (!v13)
  {
    v13 = sub_238F2AA44(v12, 4uLL, a1 + 24);
    v14 = v7;
    if (!v13)
    {
      v13 = sub_238EFDC40(v12, 5uLL, a1 + 32);
      v14 = v8;
      if (!v13)
      {
        v13 = sub_238F37028(v12, 6uLL, a1 + 56);
        v14 = v9;
        if (!v13)
        {
          v13 = sub_238F1E4D4(v12, 7uLL, a1 + 64);
          v14 = v10;
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F22F5C(uint64_t a1, uint64_t a2)
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
      if (v9 > 5u)
      {
        if (v9 == 6)
        {
          *(a1 + 112) = 1;
          v4 = sub_2393C5CE4(a2, (a1 + 113));
        }

        else if (v9 == 7)
        {
          v4 = sub_238F00D84(a2, a1 + 120);
        }

        goto LABEL_24;
      }

      if (v9 != 4)
      {
        if (v9 == 5)
        {
          *(a1 + 88) = 1;
          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
          v4 = sub_2393C61E0(a2, (a1 + 96));
        }

        goto LABEL_24;
      }

      *(a1 + 80) = 1;
      *(a1 + 82) = 0;
      v5 = (a1 + 82);
    }

    else
    {
      if (v9 > 1u)
      {
        if (v9 == 2)
        {
          v4 = sub_2393C5FC8(a2, (a1 + 4));
        }

        else if (v9 == 3)
        {
          v4 = sub_238F36BB4(a1 + 8, a2);
        }

        goto LABEL_24;
      }

      if (!v9)
      {
        v4 = sub_238F36E54(a2, a1);
        if (!v4)
        {
          v4 = 0;
        }

        goto LABEL_24;
      }

      v5 = (a1 + 2);
    }

    v4 = sub_2393C5F70(a2, v5);
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

unint64_t sub_238F230C8(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v14, *a2, a3);
  if (!v15)
  {
    v4 = *a1;
    if (v4 == 4)
    {
      v15 = 0x5C00000587;
      v16 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v15 = sub_2393C8140(v14, 0, v4);
      v16 = v5;
      if (!v15)
      {
        v15 = sub_238F36DFC(v14, 1uLL, a1 + 4);
        v16 = v6;
        if (!v15)
        {
          v15 = sub_238EFDC40(v14, 2uLL, a1 + 16);
          v16 = v7;
          if (!v15)
          {
            v15 = sub_238F36DFC(v14, 3uLL, a1 + 40);
            v16 = v8;
            if (!v15)
            {
              v15 = sub_238EFDC40(v14, 4uLL, a1 + 48);
              v16 = v9;
              if (!v15)
              {
                v15 = sub_238F1E4D4(v14, 5uLL, a1 + 72);
                v16 = v10;
                if (!v15)
                {
                  v15 = sub_238F37028(v14, 6uLL, a1 + 96);
                  v16 = v11;
                  if (!v15)
                  {
                    v15 = sub_238F1E4D4(v14, 7uLL, a1 + 104);
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

unint64_t sub_238F231E8(uint64_t a1, uint64_t a2)
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
        if (v11 == 6)
        {
          *(a1 + 96) = 1;
          v4 = sub_2393C5CE4(a2, (a1 + 97));
          goto LABEL_24;
        }

        if (v11 == 7)
        {
          v6 = a1 + 104;
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 == 4)
        {
          *(a1 + 48) = 1;
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          v7 = (a1 + 56);
LABEL_22:
          v4 = sub_2393C61E0(a2, v7);
          goto LABEL_24;
        }

        if (v11 == 5)
        {
          v6 = a1 + 72;
LABEL_18:
          v4 = sub_238F00D84(a2, v6);
        }
      }
    }

    else
    {
      if (v11 <= 1u)
      {
        if (!v11)
        {
          v4 = sub_238EA4D5C(a2, a1);
          goto LABEL_24;
        }

        *(a1 + 4) = 1;
        *(a1 + 8) = 0;
        v5 = (a1 + 8);
        goto LABEL_14;
      }

      if (v11 == 2)
      {
        *(a1 + 16) = 1;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v7 = (a1 + 24);
        goto LABEL_22;
      }

      if (v11 == 3)
      {
        *(a1 + 40) = 1;
        *(a1 + 44) = 0;
        v5 = (a1 + 44);
LABEL_14:
        v4 = sub_2393C5FC8(a2, v5);
      }
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

unint64_t sub_238F23348(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8364(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C81D4(v7, 1uLL, *(a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F233B4(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5FC8(a2, (a1 + 16));
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

unint64_t sub_238F23484(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
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
        v9 = sub_2393C81D4(v8, 1uLL, *(a1 + 1));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F23514(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5FC8(a2, (a1 + 4));
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

unint64_t sub_238F235B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 > 65527)
  {
    if (v4 <= 65530)
    {
      if (v4 == 65528)
      {
        a1 += 88;
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 65529)
        {
          return v6 | v5;
        }

        a1 = v3 + 160;
      }
    }

    else
    {
      if (v4 != 65531)
      {
        if (v4 == 65532)
        {
          v6 = sub_2393C5FC8(a2, (a1 + 304));
          goto LABEL_22;
        }

        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 == 65533)
        {
          v6 = sub_2393C5F70(a2, (v3 + 308));
LABEL_22:
          v5 = v6 & 0xFFFFFFFF00000000;
          return v6 | v5;
        }

        return v6 | v5;
      }

      a1 += 232;
    }

LABEL_21:
    v6 = sub_238F36BB4(a1, a2);
    goto LABEL_22;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = sub_238F1439C(a2, (a1 + 81));
      goto LABEL_22;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 3)
    {
      v6 = sub_238F00228(a2, (v3 + 82));
      goto LABEL_22;
    }

    return v6 | v5;
  }

  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 1)
  {
    v6 = sub_2393C5CE4(a2, (v3 + 80));
    goto LABEL_22;
  }

  return v6 | v5;
}

unint64_t sub_238F236F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C8154(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_2393C818C(v12, 1uLL, *(a1 + 8));
      v14 = v5;
      if (!v13)
      {
        v6 = *(a1 + 10);
        if (v6 == 3)
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
          v13 = sub_238F1E4D4(v12, 3uLL, (a1 + 16));
          v14 = v10;
          if (!v13)
          {
            v8 = sub_2393C818C(v12, 4uLL, *(a1 + 40));
            goto LABEL_6;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F237C4(uint64_t a1, uint64_t a2)
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
          v4 = sub_238F36E54(a2, (a1 + 8));
          if (!v4)
          {
            v4 = 0;
          }
        }
      }

      else
      {
        v4 = sub_2393C5F2C(a2, a1);
      }
    }

    else
    {
      switch(v8)
      {
        case 2u:
          v4 = sub_238EFD7D0(a2, (a1 + 10));
          break;
        case 3u:
          v4 = sub_238F00D84(a2, a1 + 16);
          break;
        case 4u:
          v4 = sub_2393C5F70(a2, (a1 + 40));
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

unint64_t sub_238F238C0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v9);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 9)
    {
      return 0x5C00000587;
    }

    result = sub_2393C8140(a2, 0, v6);
    if (!result)
    {
      v7 = a1[1];
      if (v7 == 9)
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
          result = sub_238F16CC4(a2, 3uLL, (a1 + 4));
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

unint64_t sub_238F23994(_BYTE *a1, uint64_t a2)
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
        v4 = sub_238F000A4(a2, a1 + 2);
      }

      else if (v10 == 3)
      {
        v4 = sub_238EFDEB0(a2, (a1 + 4));
      }

      goto LABEL_13;
    }

    if (!v10)
    {
      v6 = a2;
      v5 = a1;
      goto LABEL_11;
    }

    if (v10 == 1)
    {
      v5 = a1 + 1;
      v6 = a2;
LABEL_11:
      v4 = sub_238F1439C(v6, v5);
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

unint64_t sub_238F23A68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C81D4(a2, 0, *a1);
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

unint64_t sub_238F23AE4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C81D4(a2, 0, *a1);
    if (!result)
    {
      result = sub_2393C8154(a2, 1uLL, *(a1 + 8));
      if (!result)
      {
        result = sub_238F13404(a2, 2uLL, (a1 + 16));
        if (!result)
        {
          result = sub_238F23B88(a2, 3uLL, a1 + 24);
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

unint64_t sub_238F23B88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((*(a3 + 8) & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_6:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 != 0x8000000000000000)
  {
    v5 = sub_2393C8284(a1, a2, v3);
    goto LABEL_6;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F23BE0(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F00228(a2, (a1 + 16));
      }

      else if (v8 == 3)
      {
        v4 = sub_238F0C244(a2, a1 + 24);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C5F2C(a2, (a1 + 8));
      }
    }

    else
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

unint64_t sub_238F23CE0(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C8154(v11, 1uLL, *a1);
    v13 = v6;
    if (!v12)
    {
      v7 = sub_2393C818C(v11, 2uLL, *(a1 + 8));
      v12 = v7;
      v13 = v8;
      if (*a4 == 1 && !v7)
      {
        v12 = sub_2393C8140(v11, 0xFEuLL, *(a1 + 10));
        v13 = v9;
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F23D78(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F23CE0(a1, a2, a3, v5);
}

unint64_t sub_238F23DA8(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5ED0(a2, (a1 + 10));
        break;
      case 2u:
        v4 = sub_2393C5F70(a2, (a1 + 8));
        break;
      case 1u:
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

unint64_t sub_238F23E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v7 = sub_238EA4D5C(a2, a1);
        goto LABEL_51;
      case 1:
        v12 = (a1 + 1);
        goto LABEL_29;
      case 2:
        v13 = (a1 + 8);
        goto LABEL_45;
      case 3:
        v9 = a1 + 24;
        goto LABEL_50;
      case 4:
        v7 = sub_238EFD714(a2, (a1 + 32));
        goto LABEL_51;
      case 5:
        v7 = sub_238EFF894(a2, (a1 + 36));
        goto LABEL_51;
      case 6:
        v9 = a1 + 40;
        goto LABEL_50;
      case 7:
        v10 = (a1 + 48);
        goto LABEL_40;
      case 8:
        v10 = (a1 + 52);
        goto LABEL_40;
      case 9:
        v11 = (a1 + 56);
        goto LABEL_48;
      case 10:
        v8 = a1 + 64;
        goto LABEL_42;
      case 11:
        v9 = a1 + 136;
        goto LABEL_50;
      case 12:
        v7 = sub_238F00228(a2, (a1 + 144));
        goto LABEL_51;
      case 13:
        v9 = a1 + 148;
        goto LABEL_50;
      case 14:
        v7 = sub_238EFD7D0(a2, (a1 + 156));
        goto LABEL_51;
      case 15:
        v11 = (a1 + 157);
        goto LABEL_48;
      case 16:
        v7 = sub_238EA4D5C(a2, (a1 + 158));
        goto LABEL_51;
      case 17:
        v11 = (a1 + 159);
        goto LABEL_48;
      case 18:
        v8 = a1 + 160;
        goto LABEL_42;
      case 19:
        v13 = (a1 + 232);
        goto LABEL_45;
      case 20:
        v7 = sub_238F240CC(a2, (a1 + 248));
        goto LABEL_51;
      case 21:
        v13 = (a1 + 256);
        goto LABEL_45;
      case 22:
        v13 = (a1 + 272);
LABEL_45:
        v7 = sub_2393C61E0(a2, v13);
        goto LABEL_51;
      case 23:
        v7 = sub_238F24124(a2, (a1 + 288));
        goto LABEL_51;
      case 24:
        v10 = (a1 + 292);
        goto LABEL_40;
      case 25:
        v12 = (a1 + 296);
LABEL_29:
        v7 = sub_2393C5ED0(a2, v12);
        goto LABEL_51;
      case 26:
        v7 = sub_238EA4D5C(a2, (a1 + 297));
        goto LABEL_51;
      case 27:
        v9 = a1 + 300;
        goto LABEL_50;
      case 28:
        v11 = (a1 + 308);
LABEL_48:
        v7 = sub_2393C5CE4(a2, v11);
        goto LABEL_51;
      case 29:
        v9 = a1 + 312;
LABEL_50:
        v7 = sub_238EFDEB0(a2, v9);
        goto LABEL_51;
      case 30:
        v8 = a1 + 320;
        goto LABEL_42;
      case 31:
        v8 = a1 + 392;
        goto LABEL_42;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v8 = a1 + 464;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v8 = a1 + 536;
    }

LABEL_42:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_51;
  }

  if (v5 == 65531)
  {
    v8 = a1 + 608;
    goto LABEL_42;
  }

  if (v5 == 65532)
  {
    v10 = (a1 + 680);
LABEL_40:
    v7 = sub_2393C5FC8(a2, v10);
    goto LABEL_51;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 684));
LABEL_51:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F240CC(uint64_t a1, _WORD *a2)
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
    if (v5 >= 0x51)
    {
      LOWORD(v5) = 81;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F24124(uint64_t a1, _WORD *a2)
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
    if (v5 >= 0x21)
    {
      LOWORD(v5) = 33;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

uint64_t sub_238F2417C(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
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
          if (v8 == 3)
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
          if (v11 == 3)
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

unint64_t sub_238F242A8(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F24300(v5, 0, a1);
  sub_238F24300(v5, 1u, a1 + 2);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F24300(unint64_t result, unsigned int a2, unsigned __int8 **a3)
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
        if (v13 == 11)
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

unint64_t sub_238F243F8(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F24450(v5, 0, a1);
  sub_238F24450(v5, 1u, a1 + 2);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F24450(unint64_t result, unsigned int a2, unsigned __int8 **a3)
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
        if (v13 == 3)
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

unint64_t sub_238F24548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 18)
  {
    if (v5 <= 65528)
    {
      if (v5 != 19)
      {
        if (v5 == 20)
        {
          v7 = sub_2393C5D48(a2, (a1 + 28));
          goto LABEL_36;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65528)
        {
          return v7 | v6;
        }

        v9 = a1 + 32;
        goto LABEL_27;
      }

      v10 = (a1 + 26);
    }

    else
    {
      if (v5 <= 65531)
      {
        if (v5 == 65529)
        {
          v9 = a1 + 104;
        }

        else
        {
          v6 = 0;
          LODWORD(v7) = 0;
          if (v5 != 65531)
          {
            return v7 | v6;
          }

          v9 = a1 + 176;
        }

LABEL_27:
        v7 = sub_238F36BB4(v9, a2);
LABEL_36:
        v6 = v7 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }

      if (v5 == 65532)
      {
        v7 = sub_2393C5FC8(a2, (a1 + 248));
        goto LABEL_36;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v10 = (a1 + 252);
    }

LABEL_32:
    v7 = sub_2393C5F70(a2, v10);
    goto LABEL_36;
  }

  if (v5 > 2)
  {
    if (v5 > 16)
    {
      if (v5 == 17)
      {
        v8 = (a1 + 18);
      }

      else
      {
        v8 = (a1 + 22);
      }

      goto LABEL_34;
    }

    if (v5 != 3)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 16)
      {
        v8 = (a1 + 14);
LABEL_34:
        v11 = a2;
        goto LABEL_35;
      }

      return v7 | v6;
    }

    v10 = (a1 + 12);
    goto LABEL_32;
  }

  if (!v5)
  {
    v11 = a2;
    v8 = a1;
LABEL_35:
    v7 = sub_238F0B738(v11, v8);
    goto LABEL_36;
  }

  if (v5 == 1)
  {
    v8 = (a1 + 4);
    goto LABEL_34;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 2)
  {
    v8 = (a1 + 8);
    goto LABEL_34;
  }

  return v7 | v6;
}

unint64_t sub_238F246F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
        goto LABEL_35;
      case 1:
        v13 = (a1 + 4);
        goto LABEL_37;
      case 2:
        v13 = (a1 + 8);
        goto LABEL_37;
      case 3:
        v9 = (a1 + 12);
        goto LABEL_34;
      case 4:
        v9 = (a1 + 16);
        goto LABEL_34;
      case 5:
        v9 = (a1 + 20);
        goto LABEL_34;
      case 6:
        v9 = (a1 + 24);
        goto LABEL_34;
      case 7:
        v13 = (a1 + 28);
        goto LABEL_37;
      case 8:
        v13 = (a1 + 32);
        goto LABEL_37;
      case 9:
        v13 = (a1 + 36);
        goto LABEL_37;
      case 10:
        v13 = (a1 + 40);
        goto LABEL_37;
      case 11:
        v9 = (a1 + 44);
        goto LABEL_34;
      case 12:
        v9 = (a1 + 48);
        goto LABEL_34;
      case 16:
        v7 = sub_238F36E54(a2, (a1 + 52));
        goto LABEL_44;
      case 17:
        v12 = (a1 + 54);
        goto LABEL_30;
      case 18:
        v14 = (a1 + 55);
        goto LABEL_39;
      case 19:
        v9 = (a1 + 56);
LABEL_34:
        v8 = a2;
LABEL_35:
        v7 = sub_238F0B738(v8, v9);
        goto LABEL_44;
      case 20:
        v13 = (a1 + 60);
LABEL_37:
        v7 = sub_238EFD714(a2, v13);
        goto LABEL_44;
      case 21:
        v11 = a1 + 64;
        goto LABEL_24;
      case 22:
        v11 = a1 + 72;
        goto LABEL_24;
      case 23:
        v11 = a1 + 80;
LABEL_24:
        v7 = sub_238EFDEB0(a2, v11);
        goto LABEL_44;
      case 32:
        v12 = (a1 + 88);
LABEL_30:
        v7 = sub_238EA4D5C(a2, v12);
        goto LABEL_44;
      case 33:
        v14 = (a1 + 89);
LABEL_39:
        v7 = sub_238F248DC(a2, v14);
        goto LABEL_44;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v10 = a1 + 96;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v10 = a1 + 168;
    }

LABEL_43:
    v7 = sub_238F36BB4(v10, a2);
    goto LABEL_44;
  }

  if (v5 == 65531)
  {
    v10 = a1 + 240;
    goto LABEL_43;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 312));
    goto LABEL_44;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 316));
LABEL_44:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F248DC(uint64_t a1, char *a2)
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
      v6 = 4;
    }

    else
    {
      v6 = 0x704050403020100uLL >> (8 * v5);
    }

    *a2 = v6;
  }

  return v4 | v3;
}

unint64_t sub_238F2494C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      a1 += 72;
      goto LABEL_17;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65528)
    {
      a1 = v3 + 152;
      goto LABEL_17;
    }
  }

  else
  {
    if (v4 > 65531)
    {
      if (v4 == 65532)
      {
        v6 = sub_2393C5FC8(a2, (a1 + 368));
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 65533)
        {
          return v6 | v5;
        }

        v6 = sub_2393C5F70(a2, (v3 + 372));
      }

LABEL_18:
      v5 = v6 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }

    if (v4 == 65529)
    {
      a1 += 224;
      goto LABEL_17;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65531)
    {
      a1 = v3 + 296;
LABEL_17:
      v6 = sub_238F36BB4(a1, a2);
      goto LABEL_18;
    }
  }

  return v6 | v5;
}

unint64_t sub_238F24A40(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F25C44(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F24A94(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F25D84(a1, a2);
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

unint64_t sub_238F24B28(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v5 = *(a2 + 8);
    v11[0] = 1;
    v11[1] = v5;
    v9 = sub_238F25F28(a1, v8, 0, v11);
    v10 = v6;
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F24B98(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F26028(a1, a2);
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

unint64_t sub_238F24C2C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F25C44(a1 + 8, v7, 1uLL);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F24C98(_WORD *a1, uint64_t a2)
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
      v4 = sub_238F25D84((a1 + 4), a2);
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

unint64_t sub_238F24D38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_238EFD4A8(v9, 0, a1);
    v11 = v4;
    if (!v10)
    {
      v5 = *(a1 + 4);
      if (v5 == 2)
      {
        v6 = 0x5C00000587;
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      }

      else
      {
        v6 = sub_2393C8140(v9, 1uLL, v5);
      }

      v10 = v6;
      v11 = v7;
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F24DC0(uint64_t a1, uint64_t a2)
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
      v4 = sub_238EFF894(a2, (a1 + 4));
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

unint64_t sub_238F24E60(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C818C(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v5 = a1[2];
      if (v5 == 3)
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
        v12 = sub_238F38834(v11, 2uLL, a1 + 4);
        v13 = v9;
        if (!v12)
        {
          v7 = sub_238F1E4D4(v11, 3uLL, a1 + 24);
          goto LABEL_5;
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F24F1C(uint64_t a1, uint64_t a2)
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
        *(a1 + 4) = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        v4 = sub_238F254AC(a1 + 8, a2);
      }

      else if (v8 == 3)
      {
        v4 = sub_238F00D84(a2, a1 + 24);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238EFD7D0(a2, (a1 + 2));
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

unint64_t sub_238F2500C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238EFD4A8(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F25060(__int16 *a1, uint64_t a2)
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
      v5 = sub_238EFD714(a2, a1);
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

unint64_t sub_238F250F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v6, *a2, a3);
  sub_238F25148(v6, 0, *(a2 + 8), a1);
  return sub_2394C38E0(v6);
}

unint64_t sub_238F25148(unint64_t result, unsigned int a2, char a3, uint64_t a4)
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

      v13 = 232 * v10;
      while (1)
      {
        v15[0] = 1;
        v15[1] = a3;
        result = sub_238F25F28(v9, v8, 0x100uLL, v15);
        if (result)
        {
          break;
        }

        v9 += 232;
        v13 -= 232;
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

uint64_t sub_238F25228(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_2393C818C(a2, 0, *a1);
    if (!result)
    {
      v6 = *(a1 + 2);
      if (v6 == 3)
      {
        return 0x5C00000587;
      }

      else
      {
        result = sub_2393C8140(a2, 1uLL, v6);
        if (!result)
        {
          result = sub_238F252D4(a2, 2uLL, a1 + 3);
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

unint64_t sub_238F252D4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = *sub_238DE36D8(a3);
  if (v5 == 3)
  {
    return 0x5C00000587;
  }

  else
  {
    return sub_2393C8140(a1, a2, v5);
  }
}

unint64_t sub_238F25348(uint64_t a1, uint64_t a2)
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
        *(a1 + 3) = 1;
        v4 = sub_238EFD7D0(a2, (a1 + 4));
        break;
      case 1:
        v4 = sub_238EFD7D0(a2, (a1 + 2));
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

unint64_t sub_238F25410(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
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
        v10 = sub_2393C81D4(v9, 2uLL, *(a1 + 1));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C818C(v9, 3uLL, a1[4]);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F254AC(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5FC8(a2, (a1 + 4));
        goto LABEL_14;
      }

      if (v10 == 3)
      {
        v5 = (a1 + 8);
LABEL_10:
        v6 = a2;
LABEL_12:
        v4 = sub_2393C5F70(v6, v5);
      }
    }

    else
    {
      if (!v10)
      {
        v6 = a2;
        v5 = a1;
        goto LABEL_12;
      }

      if (v10 == 1)
      {
        v5 = (a1 + 2);
        goto LABEL_10;
      }
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

unint64_t sub_238F25578(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238EFD4A8(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F02628(v7, 1uLL, (a1 + 4));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F255E4(uint64_t a1, uint64_t a2)
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

unint64_t sub_238F25694(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v4 = *a1;
    if (v4 == 3)
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
        v12 = sub_238F38888(v11, 1uLL, a1 + 8);
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238F38984(v11, 2uLL, a1 + 40);
          v13 = v7;
          if (!v12)
          {
            v12 = sub_238F38834(v11, 3uLL, a1 + 44);
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F2AA44(v11, 4uLL, a1 + 60);
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F25768(uint64_t a1, uint64_t a2)
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
          *(a1 + 8) = 1;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *(a1 + 48) = 0u;
          *(a1 + 64) = 0u;
          *(a1 + 80) = 0u;
          v4 = sub_238EFE808(a2, a1 + 16);
        }
      }

      else
      {
        v4 = sub_238EFD7D0(a2, a1);
      }
    }

    else
    {
      switch(v8)
      {
        case 2u:
          *(a1 + 96) = 1;
          *(a1 + 97) = 0;
          v4 = sub_238F00228(a2, (a1 + 97));
          break;
        case 3u:
          *(a1 + 100) = 1;
          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
          v4 = sub_238F254AC(a1 + 104, a2);
          break;
        case 4u:
          *(a1 + 116) = 1;
          *(a1 + 118) = 0;
          v4 = sub_2393C5F70(a2, (a1 + 118));
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

unint64_t sub_238F25894(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v14, a2, a3);
  if (!v15)
  {
    v4 = *a1;
    if (v4 == 3)
    {
      v15 = 0x5C00000587;
      v16 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v15 = sub_2393C8140(v14, 0, v4);
      v16 = v5;
      if (!v15)
      {
        v15 = sub_2393C818C(v14, 1uLL, *(a1 + 1));
        v16 = v6;
        if (!v15)
        {
          v15 = sub_2393C818C(v14, 2uLL, *(a1 + 2));
          v16 = v7;
          if (!v15)
          {
            v15 = sub_2393C8140(v14, 3uLL, a1[6]);
            v16 = v8;
            if (!v15)
            {
              v15 = sub_2393C85FC(v14, 4uLL, *(a1 + 1), *(a1 + 2));
              v16 = v9;
              if (!v15)
              {
                v15 = sub_238F1E4D4(v14, 5uLL, a1 + 24);
                v16 = v10;
                if (!v15)
                {
                  v15 = sub_238F1E4D4(v14, 6uLL, a1 + 48);
                  v16 = v11;
                  if (!v15)
                  {
                    v15 = sub_238F37028(v14, 7uLL, a1 + 72);
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

unint64_t sub_238F259B0(uint64_t a1, uint64_t a2)
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
            *(a1 + 72) = 1;
            v4 = sub_2393C5CE4(a2, (a1 + 73));
          }

          goto LABEL_23;
        }

        v6 = a1 + 48;
        goto LABEL_22;
      }

      if (v10 == 4)
      {
        v4 = sub_2393C61E0(a2, (a1 + 8));
      }

      else if (v10 == 5)
      {
        v6 = a1 + 24;
LABEL_22:
        v4 = sub_238F00D84(a2, v6);
      }
    }

    else
    {
      if (v10 > 1u)
      {
        if (v10 != 2)
        {
          if (v10 == 3)
          {
            v4 = sub_2393C5ED0(a2, (a1 + 6));
          }

          goto LABEL_23;
        }

        v5 = (a1 + 4);
        goto LABEL_20;
      }

      if (v10)
      {
        v5 = (a1 + 2);
LABEL_20:
        v4 = sub_2393C5F70(a2, v5);
        goto LABEL_23;
      }

      v4 = sub_238EFD7D0(a2, a1);
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

unint64_t sub_238F25AF8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 1)
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
        v9 = sub_238F389DC(v8, 1uLL, a1 + 8);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F25B84(uint64_t a1, uint64_t a2)
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
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      v4 = sub_238F259B0(a1 + 16, a2);
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

unint64_t sub_238F25C44(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v16, a2, a3);
  if (!v17)
  {
    v4 = *a1;
    if (v4 == 4)
    {
LABEL_3:
      v17 = 0x5C00000587;
      v18 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      return sub_2394C38E0(&v16);
    }

    v17 = sub_2393C8140(v16, 0, v4);
    v18 = v5;
    if (!v17)
    {
      v17 = sub_238F37968(v16, 1uLL, a1 + 2);
      v18 = v6;
      if (!v17)
      {
        v17 = sub_238F37968(v16, 2uLL, a1 + 8);
        v18 = v7;
        if (!v17)
        {
          v17 = sub_2393C818C(v16, 3uLL, *(a1 + 7));
          v18 = v8;
          if (!v17)
          {
            v17 = sub_2393C85FC(v16, 4uLL, *(a1 + 2), *(a1 + 3));
            v18 = v9;
            if (!v17)
            {
              v17 = sub_238F25694(a1 + 32, v16, 5uLL);
              v18 = v10;
              if (!v17)
              {
                v12 = a1[96];
                if (v12 == 1)
                {
                  goto LABEL_3;
                }

                v17 = sub_2393C8140(v16, 6uLL, v12);
                v18 = v13;
                if (!v17)
                {
                  v17 = sub_238F25AF8(a1 + 104, v16, 7uLL);
                  v18 = v14;
                  if (!v17)
                  {
                    v17 = sub_238F36DFC(v16, 8uLL, a1 + 200);
                    v18 = v15;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v16);
}