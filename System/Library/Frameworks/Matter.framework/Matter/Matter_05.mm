unint64_t sub_238F08CD4(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8140(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C8140(v10, 1uLL, a1[1]);
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C818C(v10, 2uLL, *(a1 + 1));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8140(v10, 3uLL, a1[4]);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 4uLL, a1[5]);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F08D88(uint64_t a1, uint64_t a2)
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
      if (!v11)
      {
        v7 = a2;
        v6 = a1;
        goto LABEL_15;
      }

      if (v11 == 1)
      {
        v6 = (a1 + 1);
        v7 = a2;
LABEL_15:
        v4 = sub_2393C5ED0(v7, v6);
      }
    }

    else
    {
      switch(v11)
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
    }

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

unint64_t sub_238F08E6C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C818C(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C818C(v10, 1uLL, a1[1]);
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C818C(v10, 2uLL, a1[2]);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8140(v10, 3uLL, *(a1 + 6));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 4uLL, *(a1 + 7));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F08F20(uint64_t a1, uint64_t a2)
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
      if (!v11)
      {
        v7 = a2;
        v6 = a1;
        goto LABEL_16;
      }

      if (v11 == 1)
      {
        v6 = (a1 + 2);
        goto LABEL_12;
      }
    }

    else
    {
      switch(v11)
      {
        case 2u:
          v6 = (a1 + 4);
LABEL_12:
          v7 = a2;
LABEL_16:
          v4 = sub_2393C5F70(v7, v6);
          break;
        case 3u:
          v5 = (a1 + 6);
          goto LABEL_14;
        case 4u:
          v5 = (a1 + 7);
LABEL_14:
          v4 = sub_238EA4DB4(a2, v5);
          break;
      }
    }

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

unint64_t sub_238F08FFC(__int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C827C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C827C(v9, 1uLL, a1[1]);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C8140(v9, 2uLL, *(a1 + 4));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8140(v9, 3uLL, *(a1 + 5));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F09098(uint64_t a1, uint64_t a2)
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

    if (v11 > 1u)
    {
      if (v11 == 2)
      {
        v7 = (a1 + 4);
        goto LABEL_13;
      }

      if (v11 == 3)
      {
        v7 = (a1 + 5);
LABEL_13:
        v4 = sub_238EA4DB4(a2, v7);
      }
    }

    else
    {
      if (!v11)
      {
        v6 = a2;
        v5 = a1;
        goto LABEL_11;
      }

      if (v11 == 1)
      {
        v5 = (a1 + 2);
        v6 = a2;
LABEL_11:
        v4 = sub_2393C5E20(v6, v5);
      }
    }

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

unint64_t sub_238F09164(__int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C827C(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C827C(v10, 1uLL, a1[1]);
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C818C(v10, 2uLL, a1[2]);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8140(v10, 3uLL, *(a1 + 6));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 4uLL, *(a1 + 7));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F09218(uint64_t a1, uint64_t a2)
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
      if (!v11)
      {
        v7 = a2;
        v6 = a1;
        goto LABEL_15;
      }

      if (v11 == 1)
      {
        v6 = (a1 + 2);
        v7 = a2;
LABEL_15:
        v4 = sub_2393C5E20(v7, v6);
      }
    }

    else
    {
      switch(v11)
      {
        case 2u:
          v4 = sub_2393C5F70(a2, (a1 + 4));
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
    }

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

unint64_t sub_238F092FC(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
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
        v10 = sub_2393C8140(v9, 2uLL, *(a1 + 4));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C8140(v9, 3uLL, *(a1 + 5));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F09398(uint64_t a1, uint64_t a2)
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

    if (v11 > 1u)
    {
      if (v11 == 2)
      {
        v7 = (a1 + 4);
        goto LABEL_13;
      }

      if (v11 == 3)
      {
        v7 = (a1 + 5);
LABEL_13:
        v4 = sub_238EA4DB4(a2, v7);
      }
    }

    else
    {
      if (!v11)
      {
        v6 = a2;
        v5 = a1;
        goto LABEL_11;
      }

      if (v11 == 1)
      {
        v5 = (a1 + 2);
        v6 = a2;
LABEL_11:
        v4 = sub_2393C5F70(v6, v5);
      }
    }

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

unint64_t sub_238F09464(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C818C(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v5 = *(a1 + 2);
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
        v13 = sub_2393C818C(v12, 2uLL, a1[2]);
        v14 = v9;
        if (!v13)
        {
          v13 = sub_2393C8140(v12, 3uLL, *(a1 + 6));
          v14 = v10;
          if (!v13)
          {
            v7 = sub_2393C8140(v12, 4uLL, *(a1 + 7));
            goto LABEL_5;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F09538(uint64_t a1, uint64_t a2)
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
          v4 = sub_238EA4D5C(a2, (a1 + 2));
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
        v6 = (a1 + 4);
        v7 = a2;
LABEL_15:
        v4 = sub_2393C5F70(v7, v6);
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

unint64_t sub_238F0961C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        v11 = sub_2393C818C(v10, 1uLL, *(a1 + 1));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8140(v10, 2uLL, a1[4]);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 3uLL, a1[5]);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F096D8(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F08900(a2, a1);
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

unint64_t sub_238F097A8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        v11 = sub_2393C818C(v10, 1uLL, *(a1 + 1));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C818C(v10, 2uLL, *(a1 + 2));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 3uLL, a1[6]);
            v12 = v8;
            if (!v11)
            {
              v11 = sub_2393C8140(v10, 4uLL, a1[7]);
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

unint64_t sub_238F0987C(char *a1, uint64_t a2)
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
        v6 = a1 + 2;
LABEL_12:
        v4 = sub_2393C5F70(a2, v6);
      }
    }

    else
    {
      switch(v10)
      {
        case 2u:
          v6 = a1 + 4;
          goto LABEL_12;
        case 3u:
          v5 = a1 + 6;
          goto LABEL_14;
        case 4u:
          v5 = a1 + 7;
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

unint64_t sub_238F0995C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C818C(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C8140(v10, 1uLL, *(a1 + 2));
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C818C(v10, 2uLL, a1[2]);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8140(v10, 3uLL, *(a1 + 6));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8140(v10, 4uLL, *(a1 + 7));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F09A10(uint64_t a1, uint64_t a2)
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
          v4 = sub_2393C5ED0(a2, (a1 + 2));
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
        v6 = (a1 + 4);
        v7 = a2;
LABEL_15:
        v4 = sub_2393C5F70(v7, v6);
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

unint64_t sub_238F09AF4(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v15, a2, a3);
  if (!v16)
  {
    v16 = sub_2393C8140(v15, 0, *a1);
    v17 = v4;
    if (!v16)
    {
      v5 = 0x5C00000587;
      v6 = a1[1];
      if (v6 == 3)
      {
        goto LABEL_4;
      }

      v16 = sub_2393C8140(v15, 1uLL, v6);
      v17 = v8;
      if (v16)
      {
        return sub_2394C38E0(&v15);
      }

      v10 = a1[2];
      if (v10 == 2)
      {
LABEL_4:
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
LABEL_5:
        v16 = v5;
        v17 = v7;
        return sub_2394C38E0(&v15);
      }

      v16 = sub_2393C8140(v15, 2uLL, v10);
      v17 = v11;
      if (!v16)
      {
        v16 = sub_2393C818C(v15, 3uLL, *(a1 + 2));
        v17 = v12;
        if (!v16)
        {
          v16 = sub_2393C818C(v15, 4uLL, *(a1 + 3));
          v17 = v13;
          if (!v16)
          {
            v16 = sub_2393C8140(v15, 5uLL, a1[8]);
            v17 = v14;
            if (!v16)
            {
              v5 = sub_2393C8140(v15, 6uLL, a1[9]);
              goto LABEL_5;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v15);
}

unint64_t sub_238F09C04(_BYTE *a1, uint64_t a2)
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
          v4 = sub_238EFD7D0(a2, a1 + 1);
        }

        else if (v10 == 2)
        {
          v4 = sub_238EFF894(a2, a1 + 2);
        }
      }

      else
      {
        v4 = sub_238EA4DB4(a2, a1);
      }

      goto LABEL_21;
    }

    if (v10 > 4u)
    {
      if (v10 == 5)
      {
        v6 = a1 + 8;
        goto LABEL_19;
      }

      if (v10 == 6)
      {
        v6 = a1 + 9;
LABEL_19:
        v4 = sub_238EA4DB4(a2, v6);
      }
    }

    else
    {
      if (v10 == 3)
      {
        v5 = a1 + 4;
        goto LABEL_17;
      }

      if (v10 == 4)
      {
        v5 = a1 + 6;
LABEL_17:
        v4 = sub_2393C5F70(a2, v5);
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

unint64_t sub_238F09D1C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8140(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8140(v7, 1uLL, a1[1]);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F09D88(_BYTE *a1, uint64_t a2)
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

unint64_t sub_238F09E2C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v4 = *a1;
    if (v4 == 2)
    {
      v13 = 0x5C00000587;
      v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v13 = sub_2393C8140(v12, 0, v4);
      v14 = v5;
      if (!v13)
      {
        v13 = sub_2393C818C(v12, 1uLL, *(a1 + 1));
        v14 = v6;
        if (!v13)
        {
          v13 = sub_2393C818C(v12, 2uLL, *(a1 + 2));
          v14 = v7;
          if (!v13)
          {
            v13 = sub_2393C818C(v12, 3uLL, *(a1 + 3));
            v14 = v8;
            if (!v13)
            {
              v13 = sub_2393C8140(v12, 4uLL, a1[8]);
              v14 = v9;
              if (!v13)
              {
                v13 = sub_2393C8140(v12, 5uLL, a1[9]);
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

unint64_t sub_238F09F18(_BYTE *a1, uint64_t a2)
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
          v5 = a1 + 6;
          goto LABEL_15;
        case 4u:
          v6 = a1 + 8;
          goto LABEL_17;
        case 5u:
          v6 = a1 + 9;
LABEL_17:
          v4 = sub_238EA4DB4(a2, v6);
          break;
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        v5 = a1 + 2;
        goto LABEL_15;
      }

      if (v10 == 2)
      {
        v5 = a1 + 4;
LABEL_15:
        v4 = sub_2393C5F70(a2, v5);
      }
    }

    else
    {
      v4 = sub_238F08900(a2, a1);
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

unint64_t sub_238F0A008(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    if (*a1)
    {
      v13 = sub_2393C8140(v12, 0, *a1);
      v14 = v5;
      if (!v13)
      {
        v13 = sub_2393C818C(v12, 1uLL, *(a1 + 1));
        v14 = v6;
        if (!v13)
        {
          v13 = sub_2393C818C(v12, 2uLL, *(a1 + 2));
          v14 = v7;
          if (!v13)
          {
            v13 = sub_2393C818C(v12, 3uLL, *(a1 + 3));
            v14 = v8;
            if (!v13)
            {
              v13 = sub_2393C818C(v12, 4uLL, *(a1 + 4));
              v14 = v9;
              if (!v13)
              {
                v13 = sub_2393C8140(v12, 5uLL, a1[10]);
                v14 = v10;
                if (!v13)
                {
                  v13 = sub_2393C8140(v12, 6uLL, a1[11]);
                  v14 = v11;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = 0x5C00000587;
      v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F0A10C(char *a1, uint64_t a2)
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
          v5 = a1 + 2;
          goto LABEL_20;
        }

        if (v10 == 2)
        {
          v5 = a1 + 4;
          goto LABEL_20;
        }
      }

      else
      {
        v4 = sub_238F08B0C(a2, a1);
      }
    }

    else if (v10 > 4u)
    {
      if (v10 == 5)
      {
        v6 = a1 + 10;
        goto LABEL_18;
      }

      if (v10 == 6)
      {
        v6 = a1 + 11;
LABEL_18:
        v4 = sub_238EA4DB4(a2, v6);
      }
    }

    else
    {
      if (v10 == 3)
      {
        v5 = a1 + 6;
        goto LABEL_20;
      }

      if (v10 == 4)
      {
        v5 = a1 + 8;
LABEL_20:
        v4 = sub_2393C5F70(a2, v5);
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

unint64_t sub_238F0A214(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v6 = sub_238F37278(a2, a1);
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

unint64_t sub_238F0A2EC(uint64_t a1, uint64_t a2, unint64_t a3)
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
          v10 = sub_238EFDC40(v9, 3uLL, (a1 + 16));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0A388(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5F70(a2, (a1 + 10));
      }

      else if (v8 == 3)
      {
        *(a1 + 16) = 1;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v4 = sub_2393C61E0(a2, (a1 + 24));
      }
    }

    else if (v8)
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

unint64_t sub_238F0A480(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8154(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C818C(v7, 1uLL, *(a1 + 8));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F0A4EC(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5F70(a2, (a1 + 8));
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

unint64_t sub_238F0A58C(unsigned __int16 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v10, *a2, a3);
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

unint64_t sub_238F0A644(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8154(a2, 0, *a1);
    if (!result)
    {
      result = sub_2393C8154(a2, 1uLL, *(a1 + 8));
      if (!result)
      {
        result = sub_2393C8140(a2, 2uLL, *(a1 + 16));
        if (!result)
        {
          result = sub_2393C8140(a2, 0xFEuLL, *(a1 + 17));
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

unint64_t sub_238F0A6E8(uint64_t a1, uint64_t a2)
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

    if (v11 > 1u)
    {
      if (v11 == 2)
      {
        v7 = (a1 + 16);
        goto LABEL_13;
      }

      if (v11 == 254)
      {
        v7 = (a1 + 17);
LABEL_13:
        v4 = sub_2393C5ED0(a2, v7);
      }
    }

    else
    {
      if (!v11)
      {
        v6 = a2;
        v5 = a1;
        goto LABEL_11;
      }

      if (v11 == 1)
      {
        v5 = (a1 + 8);
        v6 = a2;
LABEL_11:
        v4 = sub_2393C5F2C(v6, v5);
      }
    }

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

unint64_t sub_238F0A7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 > 65527)
  {
    if (v4 <= 65530)
    {
      if (v4 == 65528)
      {
        v7 = a1 + 96;
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 65529)
        {
          return v6 | v5;
        }

        v7 = a1 + 168;
      }
    }

    else
    {
      if (v4 != 65531)
      {
        if (v4 == 65532)
        {
          v6 = sub_2393C5FC8(a2, (a1 + 312));
          goto LABEL_23;
        }

        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 == 65533)
        {
          v6 = sub_2393C5F70(a2, (a1 + 316));
LABEL_23:
          v5 = v6 & 0xFFFFFFFF00000000;
          return v6 | v5;
        }

        return v6 | v5;
      }

      v7 = a1 + 240;
    }

    v6 = sub_238F36BB4(v7, a2);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = sub_238F0A8F8(a2, (a1 + 88));
      goto LABEL_23;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 3)
    {
      v6 = sub_238EFD714(a2, (a1 + 90));
      goto LABEL_23;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = sub_238EFE808(a2, a1);
      goto LABEL_23;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 1)
    {
      v6 = sub_238EFDEB0(a2, a1 + 80);
      goto LABEL_23;
    }
  }

  return v6 | v5;
}

unint64_t sub_238F0A8F8(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_238EFF894(a1, a2);
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

unint64_t sub_238F0A9B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  sub_238F04E48(&v6, 0, a1);
  if (!v7)
  {
    v7 = sub_2393C8284(v6, 1uLL, *(a1 + 16));
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F0AA14(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5DA0(a2, (a1 + 72));
    }

    else if (!v8)
    {
      v4 = sub_238F36BB4(a1, a2);
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

unint64_t sub_238F0AAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 > 65527)
  {
    if (v4 <= 65530)
    {
      if (v4 == 65528)
      {
        v7 = a1 + 232;
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 65529)
        {
          return v6 | v5;
        }

        v7 = a1 + 304;
      }
    }

    else
    {
      if (v4 != 65531)
      {
        if (v4 == 65532)
        {
          v6 = sub_2393C5FC8(a2, (a1 + 448));
          goto LABEL_22;
        }

        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 == 65533)
        {
          v6 = sub_2393C5F70(a2, (a1 + 452));
LABEL_22:
          v5 = v6 & 0xFFFFFFFF00000000;
          return v6 | v5;
        }

        return v6 | v5;
      }

      v7 = a1 + 376;
    }

LABEL_21:
    v6 = sub_238F36BB4(v7, a2);
    goto LABEL_22;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = sub_238F0AC84(a2, a1 + 8);
      goto LABEL_22;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 != 3)
    {
      return v6 | v5;
    }

    v7 = a1 + 160;
    goto LABEL_21;
  }

  if (!v4)
  {
    v6 = sub_238EFF894(a2, a1);
    goto LABEL_22;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 1)
  {
    v6 = sub_238F0ABF0(a2, a1 + 2);
    goto LABEL_22;
  }

  return v6 | v5;
}

unint64_t sub_238F0ABF0(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F26C28(a2, a1);
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

unint64_t sub_238F0AC84(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 144) == 1)
    {
      *(a2 + 144) = 0;
    }
  }

  else
  {
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 144) = 1;
    v6 = sub_238F0B234(a2, a1);
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

unint64_t sub_238F0AD2C(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_238F0AF90(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F0AD84(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F0AC84(a2, a1);
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

unint64_t sub_238F0AE18(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(v5, *a2, a3);
  sub_238F0AE64(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F0AE64(unint64_t result, unsigned int a2, uint64_t *a3)
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

      v11 = 88 * v8;
      while (1)
      {
        result = sub_238F0B168(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 88;
        v11 -= 88;
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

unint64_t sub_238F0AF28(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238F0AF90(a2, 0, a1);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F0AF90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 88))
  {
    return sub_238F0B168(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F0AFB8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C8284(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v5 = *(a1 + 8);
      if (v5 == 5)
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
        v12 = sub_238EFDC40(v11, 2uLL, (a1 + 16));
        v13 = v9;
        if (!v12)
        {
          v7 = sub_238F36DFC(v11, 3uLL, (a1 + 40));
          goto LABEL_5;
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F0B074(uint64_t a1, uint64_t a2)
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
        *(a1 + 16) = 1;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v4 = sub_2393C61E0(a2, (a1 + 24));
      }

      else if (v8 == 3)
      {
        *(a1 + 40) = 1;
        *(a1 + 44) = 0;
        v4 = sub_2393C5FC8(a2, (a1 + 44));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238F000A4(a2, (a1 + 8));
      }
    }

    else
    {
      v4 = sub_2393C5DA0(a2, a1);
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

unint64_t sub_238F0B168(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C81D4(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v12 = sub_238F16CC4(v11, 1uLL, a1 + 4);
      v13 = v5;
      if (!v12)
      {
        v12 = sub_238F16720(v11, 2uLL, (a1 + 16));
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238F2A888(v11, 3uLL, (a1 + 32));
          v13 = v7;
          if (!v12)
          {
            v12 = sub_238EFDC40(v11, 4uLL, (a1 + 40));
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F379C0(v11, 5uLL, (a1 + 64));
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F0B234(uint64_t a1, uint64_t a2)
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
          *(a1 + 32) = 1;
          *(a1 + 34) = 0;
          v4 = sub_2393C5E20(a2, (a1 + 34));
          break;
        case 4u:
          *(a1 + 40) = 1;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v4 = sub_2393C61E0(a2, (a1 + 48));
          break;
        case 5u:
          *(a1 + 64) = 1;
          sub_2393C5AAC(a1 + 72);
          sub_2393C5ADC(a1 + 72, 0, 0);
          v4 = sub_238F36BB4(a1 + 72, a2);
          break;
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238EFDEB0(a2, a1 + 4);
      }

      else if (v8 == 2)
      {
        *(a1 + 16) = 1;
        *(a1 + 24) = 0;
        v4 = sub_2393C5DA0(a2, (a1 + 24));
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

unint64_t sub_238F0B37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v7 = sub_238F0B57C(a2, a1);
        goto LABEL_38;
      case 1:
        v7 = sub_238F0A8F8(a2, (a1 + 72));
        goto LABEL_38;
      case 2:
        v11 = a1 + 76;
        goto LABEL_35;
      case 3:
        v7 = sub_238EFE808(a2, a1 + 88);
        goto LABEL_38;
      case 4:
        v7 = sub_238EFE808(a2, a1 + 168);
        goto LABEL_38;
      case 5:
        v7 = sub_238EFE808(a2, a1 + 248);
        goto LABEL_38;
      case 6:
        v7 = sub_238EFE808(a2, a1 + 328);
        goto LABEL_38;
      case 7:
        v12 = a1 + 408;
        goto LABEL_37;
      case 8:
        v12 = a1 + 496;
LABEL_37:
        v7 = sub_238F0B618(a2, v12);
        goto LABEL_38;
      case 9:
        v10 = a1 + 584;
        goto LABEL_22;
      case 10:
        v11 = a1 + 604;
        goto LABEL_35;
      case 11:
        v10 = a1 + 612;
LABEL_22:
        v7 = sub_238F0B6A4(a2, v10);
        goto LABEL_38;
      case 12:
        v11 = a1 + 632;
LABEL_35:
        v7 = sub_238EFDEB0(a2, v11);
        goto LABEL_38;
      case 13:
        v9 = a1 + 640;
        goto LABEL_31;
      case 14:
        v7 = sub_238EFE808(a2, a1 + 720);
        goto LABEL_38;
      case 15:
        v9 = a1 + 800;
        goto LABEL_31;
      case 16:
        v9 = a1 + 880;
LABEL_31:
        v7 = sub_238EFE808(a2, v9);
        goto LABEL_38;
      case 17:
        v7 = sub_238F0B738(a2, (a1 + 960));
        goto LABEL_38;
      case 18:
        v7 = sub_238F0B7F4(a2, (a1 + 964));
        goto LABEL_38;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v8 = a1 + 968;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v8 = a1 + 1040;
    }

LABEL_17:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_38;
  }

  if (v5 == 65531)
  {
    v8 = a1 + 1112;
    goto LABEL_17;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 1184));
    goto LABEL_38;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 1188));
LABEL_38:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F0B57C(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 64) == 1)
    {
      *(a2 + 64) = 0;
    }
  }

  else
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 64) = 1;
    v6 = sub_238F0C8E4(a2, a1);
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

unint64_t sub_238F0B618(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 80) == 1)
    {
      *(a2 + 80) = 0;
    }
  }

  else
  {
    v6 = sub_238F37A94(a2);
    v7 = sub_238F0C790(v6, a1);
    v5 = v7 & 0xFFFFFFFF00000000;
    if (v7)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    if (!v7)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F0B6A4(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F0C4BC(a2, a1);
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

unint64_t sub_238F0B738(uint64_t a1, __int16 *a2)
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
    v4 = sub_2393C5E20(a1, a2);
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
      if (v6 == -32768)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (v6 == -32768)
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

unint64_t sub_238F0B7F4(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_238F000A4(a1, a2);
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

unint64_t sub_238F0B8AC(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C81D4(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F0B900(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v7, *a2, a3);
  if (!v8)
  {
    v8 = sub_238F37AF8(v7, 0, a1);
    v9 = v4;
  }

  sub_238F04E48(&v7, 1u, a1 + 24);
  if (!v8)
  {
    v8 = sub_238F0BF88(a1 + 40, v7, 2uLL);
    v9 = v5;
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F0B984(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F0C09C(a1 + 96, a2);
        break;
      case 1:
        v4 = sub_238F36BB4(a1 + 24, a2);
        break;
      case 0:
        v4 = sub_238F0BA3C(a2, a1);
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

unint64_t sub_238F0BA3C(uint64_t a1, uint64_t a2)
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
    v6 = sub_2393C61E0(a1, a2);
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

unint64_t sub_238F0BAD0(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_238F0C408(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F0BB28(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F0C4BC(a1, a2);
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

unint64_t sub_238F0BBBC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
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
        v9 = sub_2393C818C(v8, 1uLL, *(a1 + 1));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F0BC48(uint64_t a1, uint64_t a2)
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

unint64_t sub_238F0BCE8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8140(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v5 = a1[1];
      if (v5 == 3)
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

unint64_t sub_238F0BD70(_BYTE *a1, uint64_t a2)
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
      v4 = sub_238EFD7D0(a2, a1 + 1);
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

unint64_t sub_238F0BE10(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        v10 = sub_238F16720(v9, 1uLL, a1 + 8);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F2A888(v9, 2uLL, a1 + 24);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0BEB4(uint64_t a1, uint64_t a2)
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
        *(a1 + 26) = 0;
        v4 = sub_2393C5E20(a2, (a1 + 26));
        break;
      case 1:
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        v4 = sub_2393C5DA0(a2, (a1 + 16));
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

unint64_t sub_238F0BF88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v14, a2, a3);
  if (!v15)
  {
    v15 = sub_2393C81D4(v14, 0, *a1);
    v16 = v4;
    if (!v15)
    {
      v15 = sub_238F37B10(v14, 1uLL, (a1 + 8));
      v16 = v5;
      if (!v15)
      {
        v15 = sub_238F37028(v14, 2uLL, (a1 + 56));
        v16 = v6;
        if (!v15)
        {
          v15 = sub_238F37B90(v14, 3uLL, (a1 + 58));
          v16 = v7;
          if (!v15)
          {
            v15 = sub_238F37BE4(v14, 4uLL, (a1 + 62));
            v16 = v8;
            if (!v15)
            {
              v15 = sub_238F37C38(v14, 5uLL, (a1 + 72));
              v16 = v9;
              if (!v15)
              {
                v15 = sub_238F23B88(v14, 6uLL, a1 + 120);
                v16 = v10;
                if (!v15)
                {
                  v15 = sub_238F1EE44(v14, 7uLL, (a1 + 136));
                  v16 = v11;
                  if (!v15)
                  {
                    v15 = sub_238F37028(v14, 8uLL, (a1 + 168));
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

unint64_t sub_238F0C09C(uint64_t a1, uint64_t a2)
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
      if (v9 <= 1u)
      {
        if (v9)
        {
          *(a1 + 8) = 1;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *(a1 + 48) = 0;
          v4 = sub_238F37C8C(a2, a1 + 16);
        }

        else
        {
          v4 = sub_2393C5FC8(a2, a1);
        }

        goto LABEL_24;
      }

      if (v9 != 2)
      {
        if (v9 == 3)
        {
          *(a1 + 58) = 1;
          *(a1 + 59) = 0;
          v4 = sub_238F0BD70((a1 + 59), a2);
        }

        goto LABEL_24;
      }

      *(a1 + 56) = 1;
      v5 = (a1 + 57);
      goto LABEL_20;
    }

    if (v9 <= 5u)
    {
      if (v9 == 4)
      {
        *(a1 + 62) = 1;
        *(a1 + 64) = 0;
        v4 = sub_238F0BC48(a1 + 64, a2);
      }

      else if (v9 == 5)
      {
        *(a1 + 72) = 1;
        *(a1 + 80) = 0u;
        *(a1 + 96) = 0u;
        *(a1 + 112) = 0;
        v4 = sub_238F36228(a1 + 80, a2);
      }

      goto LABEL_24;
    }

    switch(v9)
    {
      case 6u:
        v4 = sub_238F0C244(a2, a1 + 120);
        break;
      case 7u:
        *(a1 + 136) = 1;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
        *(a1 + 144) = 0;
        v4 = sub_238F0BA3C(a2, a1 + 144);
        break;
      case 8u:
        *(a1 + 168) = 1;
        v5 = (a1 + 169);
LABEL_20:
        v4 = sub_2393C5CE4(a2, v5);
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

unint64_t sub_238F0C244(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    LODWORD(v4) = 0;
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
    v4 = sub_2393C5DA0(a1, a2);
    if (v4)
    {
      v5 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      if ((*(a2 + 8) & 1) == 0)
      {
        sub_238EA195C();
      }

      if (*a2 == 0x8000000000000000)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (*a2 == 0x8000000000000000)
      {
        v5 = 0xAF00000000;
      }

      else
      {
        v5 = 0;
      }

      *a2;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F0C304(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F16CC4(v6, 0, a1);
    v8 = v4;
  }

  sub_238F04E48(&v6, 1u, a1 + 8);
  return sub_2394C38E0(&v6);
}

unint64_t sub_238F0C368(uint64_t a1, uint64_t a2)
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
      v4 = sub_238F36BB4(a1 + 8, a2);
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

unint64_t sub_238F0C408(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C81D4(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C818C(v10, 1uLL, *(a1 + 4));
      v12 = v5;
      if (!v11)
      {
        v11 = sub_238F2AA44(v10, 2uLL, (a1 + 6));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_238F2A888(v10, 3uLL, (a1 + 10));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238F37764(v10, 4uLL, (a1 + 14));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F0C4BC(uint64_t a1, uint64_t a2)
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
          *(a1 + 12) = 0;
          v4 = sub_2393C5E20(a2, (a1 + 12));
        }

        else if (v9 == 4)
        {
          *(a1 + 14) = 1;
          v4 = sub_238F000A4(a2, (a1 + 15));
        }

        goto LABEL_15;
      }

      *(a1 + 6) = 1;
      *(a1 + 8) = 0;
      v5 = (a1 + 8);
      goto LABEL_12;
    }

    if (!v9)
    {
      v4 = sub_2393C5FC8(a2, a1);
      goto LABEL_15;
    }

    if (v9 == 1)
    {
      v5 = (a1 + 4);
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

unint64_t sub_238F0C5C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C81D4(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8140(v7, 1uLL, *(a1 + 4));
      v9 = v5;
    }
  }

  sub_238F04E48(&v7, 2u, a1 + 8);
  return sub_2394C38E0(&v7);
}

unint64_t sub_238F0C640(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F36BB4(a1 + 8, a2);
        break;
      case 1:
        v4 = sub_238EA4DB4(a2, (a1 + 4));
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

unint64_t sub_238F0C6F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C81D4(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v5 = *(a1 + 4);
      if (v5 == 4)
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

  sub_238F04E48(&v9, 2u, a1 + 8);
  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0C790(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F36BB4(a1 + 8, a2);
        break;
      case 1:
        v4 = sub_238EA4D5C(a2, (a1 + 4));
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

unint64_t sub_238F0C848(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_238F37AF8(v9, 0, a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_238F37AF8(v9, 1uLL, a1 + 24);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F37D24(v9, 2uLL, (a1 + 48));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F37DA4(v9, 3uLL, (a1 + 56));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0C8E4(uint64_t a1, uint64_t a2)
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
        *(a1 + 48) = 1;
        *(a1 + 50) = 0;
        *(a1 + 54) = 0;
        v4 = sub_238F0ABF0(a2, a1 + 50);
      }

      else if (v10 == 3)
      {
        v4 = sub_238F0C9D0(a2, (a1 + 56));
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
      v5 = a1 + 24;
      v6 = a2;
LABEL_11:
      v4 = sub_238F0BA3C(v6, v5);
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

unint64_t sub_238F0C9D0(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_238EFD7D0(a1, a2);
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

unint64_t sub_238F0CA88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F37AF8(v6, 0, a1);
    v8 = v4;
  }

  sub_238F04E48(&v6, 1u, a1 + 24);
  sub_238F04E48(&v6, 2u, a1 + 40);
  return sub_2394C38E0(&v6);
}

unint64_t sub_238F0CAFC(uint64_t a1, uint64_t a2)
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
      v5 = a1 + 96;
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_238F0BA3C(a2, a1);
        }

        goto LABEL_10;
      }

      v5 = a1 + 24;
    }

    v4 = sub_238F36BB4(v5, a2);
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

unint64_t sub_238F0CBAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238EFDC40(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C85FC(v7, 1uLL, *(a1 + 24), *(a1 + 32));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F0CC18(_BYTE *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  v4 = a1 + 24;
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
      v7 = v5;
      *v5 = 0;
      v5[1] = 0;
LABEL_6:
      v6 = sub_2393C61E0(a2, v7);
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

unint64_t sub_238F0CCD4(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v9, *a2, a3);
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
        v10 = sub_238EFDC40(v9, 1uLL, a1 + 8);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238EFDC40(v9, 2uLL, a1 + 32);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0CD7C(uint64_t a1, uint64_t a2)
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
          v4 = sub_238EFF894(a2, a1);
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

unint64_t sub_238F0CE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v8 = a1 + 96;
        goto LABEL_31;
      }

      if (v5 != 4)
      {
        v10 = (a1 + 184);
        goto LABEL_25;
      }

      v9 = (a1 + 168);
    }

    else
    {
      if (!v5)
      {
        v12 = a2;
        v11 = a1;
        goto LABEL_28;
      }

      if (v5 == 1)
      {
        v8 = a1 + 8;
        goto LABEL_31;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 2)
      {
        return v7 | v6;
      }

      v9 = (a1 + 80);
    }

    v7 = sub_2393C61E0(a2, v9);
    goto LABEL_34;
  }

  if (v5 > 65528)
  {
    if (v5 <= 65531)
    {
      if (v5 == 65529)
      {
        v8 = a1 + 272;
        goto LABEL_31;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65531)
      {
        v8 = a1 + 344;
LABEL_31:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_34;
      }

      return v7 | v6;
    }

    if (v5 != 65532)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v7 = sub_2393C5F70(a2, (a1 + 420));
LABEL_34:
      v6 = v7 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }

    v10 = (a1 + 416);
LABEL_25:
    v7 = sub_2393C5FC8(a2, v10);
    goto LABEL_34;
  }

  if (v5 == 6)
  {
    v10 = (a1 + 188);
    goto LABEL_25;
  }

  if (v5 == 7)
  {
    v11 = (a1 + 192);
    v12 = a2;
LABEL_28:
    v7 = sub_2393C5CE4(v12, v11);
    goto LABEL_34;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v8 = a1 + 200;
    goto LABEL_31;
  }

  return v7 | v6;
}

unint64_t sub_238F0CFD0(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238EFDC40(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F36DFC(v7, 1uLL, a1 + 24);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F0D03C(uint64_t a1, uint64_t a2)
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
      *(a1 + 28) = 0;
      v4 = sub_2393C5FC8(a2, (a1 + 28));
    }

    else if (!v8)
    {
      *a1 = 1;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
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

unint64_t sub_238F0D0F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v6 = sub_238F37278(a2, (a1 + 72));
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

unint64_t sub_238F0D1F4(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_238F0DC94(a1, v10, 0);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C7E38(v10, 1uLL, a1[16]);
      v12 = v5;
      if (!v11)
      {
        v11 = sub_238EFDC40(v10, 2uLL, a1 + 24);
        v12 = v6;
        if (!v11)
        {
          v11 = sub_238F37E18(v10, 3uLL, a1 + 48);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238F37028(v10, 4uLL, a1 + 136);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F0D2A8(uint64_t a1, uint64_t a2)
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
      if (!v9)
      {
        v4 = sub_238EFD1FC(a1, a2);
        goto LABEL_15;
      }

      if (v9 == 1)
      {
        v5 = (a1 + 72);
        goto LABEL_11;
      }
    }

    else
    {
      switch(v9)
      {
        case 2u:
          *(a1 + 80) = 1;
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          v4 = sub_2393C61E0(a2, (a1 + 88));
          break;
        case 3u:
          *(a1 + 104) = 1;
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
          *(a1 + 272) = 0u;
          *(a1 + 288) = 0u;
          v4 = sub_238F0D9D8(a1 + 112, a2);
          break;
        case 4u:
          *(a1 + 304) = 1;
          v5 = (a1 + 305);
LABEL_11:
          v4 = sub_2393C5CE4(a2, v5);
          break;
      }
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

unint64_t sub_238F0D3C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C85FC(v8, 0, *a1, *(a1 + 8));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238EFDC40(v8, 1uLL, (a1 + 16));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F37E6C(v8, 2uLL, (a1 + 40));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F0D44C(uint64_t a1, uint64_t a2)
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
        *(a1 + 40) = 1;
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
        *(a1 + 272) = 0u;
        *(a1 + 288) = 0u;
        *(a1 + 304) = 0u;
        *(a1 + 320) = 0u;
        *(a1 + 336) = 0u;
        *(a1 + 352) = 0u;
        *(a1 + 368) = 0u;
        *(a1 + 384) = 0u;
        *(a1 + 400) = 0u;
        *(a1 + 416) = 0u;
        *(a1 + 432) = 0u;
        *(a1 + 448) = 0u;
        *(a1 + 464) = 0u;
        *(a1 + 480) = 0u;
        *(a1 + 496) = 0;
        v4 = sub_238F0DFC8(a1 + 48, a2);
        break;
      case 1:
        *(a1 + 16) = 1;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v6 = (a1 + 24);
        v5 = a2;
        goto LABEL_8;
      case 0:
        v5 = a2;
        v6 = a1;
LABEL_8:
        v4 = sub_2393C61E0(v5, v6);
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

unint64_t sub_238F0D558(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
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
        v9 = sub_238EFDC40(v8, 1uLL, a1 + 8);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F0D5E8(uint64_t a1, uint64_t a2)
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

unint64_t sub_238F0D69C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8354(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C8354(v10, 1uLL, *(a1 + 8));
      v12 = v5;
      if (!v11)
      {
        v6 = *(a1 + 16);
        if (v6 == 2)
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

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F0D73C(uint64_t a1, uint64_t a2)
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
        v4 = sub_238EFF894(a2, (a1 + 16));
        break;
      case 1:
        v6 = (a1 + 8);
        v5 = a2;
        goto LABEL_8;
      case 0:
        v5 = a2;
        v6 = a1;
LABEL_8:
        v4 = sub_2393C6064(v5, v6);
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

unint64_t sub_238F0D7F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C85FC(v8, 0, *a1, *(a1 + 8));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F37EC0(v8, 1uLL, (a1 + 16));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8140(v8, 2uLL, *(a1 + 40));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F0D874(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5ED0(a2, (a1 + 96));
        break;
      case 1:
        *(a1 + 16) = 1;
        sub_2393C5AAC(a1 + 24);
        sub_2393C5ADC(a1 + 24, 0, 0);
        v4 = sub_238F36BB4(a1 + 24, a2);
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

unint64_t sub_238F0D954(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8154(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F0D7F0(a1 + 8, v8, 1uLL);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F37FC8(v8, 2uLL, (a1 + 56));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F0D9D8(uint64_t a1, uint64_t a2)
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
        *(a1 + 112) = 1;
        sub_2393C5AAC(a1 + 120);
        sub_2393C5ADC(a1 + 120, 0, 0);
        v4 = sub_238F36BB4(a1 + 120, a2);
        break;
      case 1:
        v4 = sub_238F0D874(a1 + 8, a2);
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

unint64_t sub_238F0DAB8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v4 = *a1;
    if (v4 == 17)
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
          v10 = sub_238F371A8(v9, 2uLL, a1 + 24);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0DB5C(uint64_t a1, uint64_t a2)
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
        sub_2393C5AAC(a1 + 32);
        sub_2393C5ADC(a1 + 32, 0, 0);
        v4 = sub_238F36BB4(a1 + 32, a2);
        break;
      case 1:
        v4 = sub_2393C61E0(a2, (a1 + 8));
        break;
      case 0:
        v4 = sub_238F0DC3C(a2, a1);
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

unint64_t sub_238F0DC3C(uint64_t a1, _BYTE *a2)
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
    if (v5 >= 0x11)
    {
      LOBYTE(v5) = 17;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F0DC94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F0DCDC(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F0DCDC(unint64_t result, unsigned int a2, uint64_t a3)
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
        result = sub_238F0DAB8(v7, v6, 0x100uLL);
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

unint64_t sub_238F0DDA0(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238EFDC40(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238EFDC40(v8, 1uLL, a1 + 24);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F3809C(v8, 2uLL, a1 + 48);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F0DE24(uint64_t a1, uint64_t a2)
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
        *(a1 + 48) = 1;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        v4 = sub_238F0D73C(a1 + 56, a2);
        break;
      case 1:
        *(a1 + 24) = 1;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        v5 = (a1 + 32);
        goto LABEL_8;
      case 0:
        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        v5 = (a1 + 8);
LABEL_8:
        v4 = sub_2393C61E0(a2, v5);
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

unint64_t sub_238F0DEFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C85FC(v11, 0, *a1, *(a1 + 8));
    v13 = v4;
    if (!v12)
    {
      v12 = sub_238F380F0(v11, 1uLL, (a1 + 16));
      v13 = v5;
      if (!v12)
      {
        v12 = sub_238F380F0(v11, 2uLL, (a1 + 104));
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238F380F0(v11, 3uLL, (a1 + 192));
          v13 = v7;
          if (!v12)
          {
            v12 = sub_238F380F0(v11, 4uLL, (a1 + 280));
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F380F0(v11, 5uLL, (a1 + 368));
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F0DFC8(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  v4 = (a1 + 376);
  v5 = (a1 + 200);
  while (1)
  {
    v11 = 0;
    v6 = sub_2394C37B8(v12, &v11);
    if (v6)
    {
      break;
    }

    if (v11 > 2u)
    {
      switch(v11)
      {
        case 3u:
          *(a1 + 192) = 1;
          *v5 = 0u;
          v5[1] = 0u;
          v5[2] = 0u;
          v5[3] = 0u;
          v5[4] = 0u;
          v7 = v5;
          goto LABEL_16;
        case 4u:
          *(a1 + 280) = 1;
          *(a1 + 288) = 0u;
          *(a1 + 304) = 0u;
          *(a1 + 320) = 0u;
          *(a1 + 336) = 0u;
          *(a1 + 352) = 0u;
          v7 = a1 + 288;
          goto LABEL_16;
        case 5u:
          *(a1 + 368) = 1;
          *v4 = 0u;
          v4[1] = 0u;
          v4[2] = 0u;
          v4[3] = 0u;
          v4[4] = 0u;
          v7 = v4;
          goto LABEL_16;
      }
    }

    else if (v11)
    {
      if (v11 == 1)
      {
        *(a1 + 16) = 1;
        *(a1 + 24) = 0u;
        *(a1 + 40) = 0u;
        *(a1 + 56) = 0u;
        *(a1 + 72) = 0u;
        *(a1 + 88) = 0u;
        v7 = a1 + 24;
        goto LABEL_16;
      }

      if (v11 == 2)
      {
        *(a1 + 104) = 1;
        *(a1 + 112) = 0u;
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
        *(a1 + 160) = 0u;
        *(a1 + 176) = 0u;
        v7 = a1 + 112;
LABEL_16:
        v6 = sub_238F0DE24(v7, a2);
      }
    }

    else
    {
      v6 = sub_2393C61E0(a2, a1);
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

unint64_t sub_238F0E138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 > 4)
  {
    if (v4 > 65530)
    {
      if (v4 == 65531)
      {
        a1 += 520;
        goto LABEL_25;
      }

      if (v4 == 65532)
      {
        v6 = sub_2393C5FC8(a2, (a1 + 592));
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 65533)
        {
          return v6 | v5;
        }

        v6 = sub_2393C5F70(a2, (v3 + 596));
      }
    }

    else
    {
      if (v4 != 5)
      {
        if (v4 == 65528)
        {
          a1 += 376;
          goto LABEL_25;
        }

        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 == 65529)
        {
          a1 = v3 + 448;
          goto LABEL_25;
        }

        return v6 | v5;
      }

      v6 = sub_2393C61E0(a2, (a1 + 360));
    }

LABEL_26:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      a1 += 144;
    }

    else if (v4 == 3)
    {
      a1 += 216;
    }

    else
    {
      a1 += 288;
    }

    goto LABEL_25;
  }

  if (!v4)
  {
LABEL_25:
    v6 = sub_238F36BB4(a1, a2);
    goto LABEL_26;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 1)
  {
    a1 = v3 + 72;
    goto LABEL_25;
  }

  return v6 | v5;
}

unint64_t sub_238F0E280(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C81D4(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C818C(v7, 1uLL, *(a1 + 4));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F0E2EC(uint64_t a1, uint64_t a2)
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
      v4 = sub_2393C5F70(a2, (a1 + 4));
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

unint64_t sub_238F0E38C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_238EFD4A8(v9, 0, a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C8140(v9, 1uLL, *(a1 + 4));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C8140(v9, 2uLL, *(a1 + 5));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F1EE44(v9, 3uLL, (a1 + 8));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0E428(uint64_t a1, uint64_t a2)
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
          *(a1 + 8) = 1;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          v4 = sub_238F0BA3C(a2, a1 + 16);
        }

        goto LABEL_13;
      }

      v5 = (a1 + 5);
      goto LABEL_12;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v5 = (a1 + 4);
LABEL_12:
        v4 = sub_2393C5ED0(a2, v5);
      }
    }

    else
    {
      v4 = sub_238F002E0(a2, a1);
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

unint64_t sub_238F0E510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v9 = (a1 + 8);
      }

      else
      {
        if (v5 != 4)
        {
          v7 = sub_238F0E718(a2, a1 + 24);
          goto LABEL_32;
        }

        v9 = (a1 + 16);
      }

      v7 = sub_2393C5DA0(a2, v9);
      goto LABEL_32;
    }

    if (!v5)
    {
      v7 = sub_238F0E6BC(a2, a1);
      goto LABEL_32;
    }

    if (v5 == 1)
    {
      v7 = sub_2393C5CE4(a2, (a1 + 1));
      goto LABEL_32;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 2)
    {
      return v7 | v6;
    }

    v7 = sub_238F000A4(a2, (a1 + 2));
LABEL_32:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 > 65528)
  {
    if (v5 <= 65531)
    {
      if (v5 == 65529)
      {
        v8 = a1 + 328;
        goto LABEL_23;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65531)
      {
        v8 = a1 + 400;
LABEL_23:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_32;
      }

      return v7 | v6;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 472));
      goto LABEL_32;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 65533)
    {
      return v7 | v6;
    }

    v7 = sub_2393C5F70(a2, (a1 + 476));
    goto LABEL_32;
  }

  if (v5 == 6)
  {
    v7 = sub_238F0E7BC(a2, a1 + 120);
    goto LABEL_32;
  }

  if (v5 == 7)
  {
    v7 = sub_238EA4D5C(a2, (a1 + 248));
    goto LABEL_32;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v8 = a1 + 256;
    goto LABEL_23;
  }

  return v7 | v6;
}

unint64_t sub_238F0E6BC(uint64_t a1, _BYTE *a2)
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
    if ((v5 - 255) >= 0xFFFFFF0F)
    {
      LOBYTE(v5) = 14;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F0E718(uint64_t a1, uint64_t a2)
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
    v6 = sub_238F0F510(a2, a1);
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

unint64_t sub_238F0E7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C5C40(a1);
  v5 = *(a2 + 120);
  if (v4 == 20)
  {
    v6 = 0;
    v7 = 0;
    if (*(a2 + 120))
    {
      *(a2 + 120) = 0;
    }
  }

  else
  {
    if (*(a2 + 120))
    {
      *(a2 + 120) = 0;
    }

    *(a2 + 112) = 0;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    sub_2393C5AAC(a2 + 40);
    sub_2393C5ADC(a2 + 40, 0, 0);
    *(a2 + 112) = 0;
    *(a2 + 120) = 1;
    v8 = sub_238F0FB54(a2, a1);
    v7 = v8 & 0xFFFFFFFF00000000;
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }

    if (!v8)
    {
      v7 = 0;
    }
  }

  return v7 | v6;
}

unint64_t sub_238F0E884(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8284(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C81D4(v10, 1uLL, *(a1 + 8));
      v12 = v5;
      if (!v11)
      {
        v6 = *(a1 + 12);
        if (v6 == 2)
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

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F0E924(uint64_t a1, uint64_t a2)
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
        v4 = sub_238EFF894(a2, (a1 + 12));
        break;
      case 1:
        v4 = sub_2393C5FC8(a2, (a1 + 8));
        break;
      case 0:
        v4 = sub_2393C5DA0(a2, a1);
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

unint64_t sub_238F0E9DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C81D4(v9, 0, *a1);
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

unint64_t sub_238F0EA64(uint64_t a1, uint64_t a2)
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

unint64_t sub_238F0EB04(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C81D4(v9, 0, *a1);
    v11 = v4;
  }

  sub_238F0EBA0(&v9, 1u, a1 + 8);
  if (!v10)
  {
    v5 = *(a1 + 24);
    if (v5 == 2)
    {
      v6 = 0x5C00000587;
      v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v6 = sub_2393C8140(v9, 2uLL, v5);
    }

    v10 = v6;
    v11 = v7;
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0EBA0(unint64_t result, unsigned int a2, uint64_t a3)
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

      v11 = 32 * v8;
      while (1)
      {
        result = sub_238F0FE78(v7, v6, 0x100uLL);
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

unint64_t sub_238F0EC60(uint64_t a1, uint64_t a2)
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
        v4 = sub_238EFF894(a2, (a1 + 80));
        break;
      case 1:
        v4 = sub_238F36BB4(a1 + 8, a2);
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

unint64_t sub_238F0ED18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  sub_238F0ED98(&v8, 0, a1);
  if (!v9)
  {
    v4 = *(a1 + 16);
    if (v4 == 2)
    {
      v5 = 0x5C00000587;
      v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v5 = sub_2393C8140(v8, 1uLL, v4);
    }

    v9 = v5;
    v10 = v6;
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F0ED98(unint64_t result, unsigned int a2, uint64_t *a3)
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

      v11 = 48 * v8;
      while (1)
      {
        result = sub_238F0FCC0(v7, v6, 0x100uLL);
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

unint64_t sub_238F0EE5C(uint64_t a1, uint64_t a2)
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
      v4 = sub_238EFF894(a2, (a1 + 72));
    }

    else if (!v8)
    {
      v4 = sub_238F36BB4(a1, a2);
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

uint64_t sub_238F0EEFC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        result = sub_2393C81D4(a2, 1uLL, *(a1 + 1));
        if (!result)
        {
          result = sub_2393C8284(a2, 2uLL, *(a1 + 1));
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

unint64_t sub_238F0EFA8(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5DA0(a2, (a1 + 8));
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

uint64_t sub_238F0F060(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        return sub_2393C8DE0(a2, v7);
      }
    }
  }

  return result;
}

unint64_t sub_238F0F0E4(_BYTE *a1, uint64_t a2)
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
      v5 = sub_238F000A4(a2, a1);
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

unint64_t sub_238F0F178(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 4)
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
        v11 = sub_2393C827C(v10, 1uLL, *(a1 + 1));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8140(v10, 2uLL, a1[8]);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238F2AA44(v10, 3uLL, a1 + 10);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F0F234(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5ED0(a2, (a1 + 8));
      }

      else if (v8 == 3)
      {
        *(a1 + 10) = 1;
        *(a1 + 12) = 0;
        v4 = sub_2393C5F70(a2, (a1 + 12));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C5E78(a2, (a1 + 4));
      }
    }

    else
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

unint64_t sub_238F0F320(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8284(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C8284(v9, 1uLL, *(a1 + 8));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C81D4(v9, 2uLL, *(a1 + 16));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C81D4(v9, 3uLL, *(a1 + 20));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F0F3BC(uint64_t a1, uint64_t a2)
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

    if (v11 > 1u)
    {
      if (v11 == 2)
      {
        v7 = (a1 + 16);
        goto LABEL_13;
      }

      if (v11 == 3)
      {
        v7 = (a1 + 20);
LABEL_13:
        v4 = sub_2393C5FC8(a2, v7);
      }
    }

    else
    {
      if (!v11)
      {
        v6 = a2;
        v5 = a1;
        goto LABEL_11;
      }

      if (v11 == 1)
      {
        v5 = (a1 + 8);
        v6 = a2;
LABEL_11:
        v4 = sub_2393C5DA0(v6, v5);
      }
    }

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

unint64_t sub_238F0F488(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_238F38144(v9, 0, a1);
    v11 = v4;
    if (!v10)
    {
      v5 = *(a1 + 24);
      if (v5 == 3)
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

unint64_t sub_238F0F510(uint64_t a1, uint64_t a2)
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
      v4 = sub_238EFD7D0(a2, (a1 + 80));
    }

    else if (!v8)
    {
      v4 = sub_238EFE808(a2, a1);
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

unint64_t sub_238F0F5B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v23, a2, a3);
  if (!v24)
  {
    v24 = sub_2393C81D4(v23, 0, *a1);
    v25 = v4;
    if (!v24)
    {
      v24 = sub_2393C81D4(v23, 1uLL, *(a1 + 4));
      v25 = v5;
      if (!v24)
      {
        v24 = sub_2393C81D4(v23, 2uLL, *(a1 + 8));
        v25 = v6;
        if (!v24)
        {
          v24 = sub_2393C81D4(v23, 3uLL, *(a1 + 12));
          v25 = v7;
          if (!v24)
          {
            v24 = sub_2393C81D4(v23, 4uLL, *(a1 + 16));
            v25 = v8;
            if (!v24)
            {
              v24 = sub_238F37028(v23, 5uLL, (a1 + 20));
              v25 = v9;
              if (!v24)
              {
                v24 = sub_238F36DFC(v23, 6uLL, (a1 + 24));
                v25 = v10;
                if (!v24)
                {
                  v24 = sub_238F36DFC(v23, 7uLL, (a1 + 32));
                  v25 = v11;
                  if (!v24)
                  {
                    v24 = sub_238F2AA44(v23, 8uLL, (a1 + 40));
                    v25 = v12;
                    if (!v24)
                    {
                      v24 = sub_238F16720(v23, 9uLL, (a1 + 48));
                      v25 = v13;
                      if (!v24)
                      {
                        v24 = sub_238F16720(v23, 0xAuLL, (a1 + 64));
                        v25 = v14;
                        if (!v24)
                        {
                          v24 = sub_238F16720(v23, 0xBuLL, (a1 + 80));
                          v25 = v15;
                          if (!v24)
                          {
                            v24 = sub_238F16720(v23, 0xCuLL, (a1 + 96));
                            v25 = v16;
                            if (!v24)
                            {
                              v24 = sub_238F381E8(v23, 0xDuLL, (a1 + 112));
                              v25 = v17;
                              if (!v24)
                              {
                                v24 = sub_238F16720(v23, 0xEuLL, (a1 + 136));
                                v25 = v18;
                                if (!v24)
                                {
                                  v24 = sub_238F16720(v23, 0xFuLL, (a1 + 152));
                                  v25 = v19;
                                  if (!v24)
                                  {
                                    v24 = sub_238F36DFC(v23, 0x10uLL, (a1 + 168));
                                    v25 = v20;
                                    if (!v24)
                                    {
                                      v24 = sub_238F36DFC(v23, 0x11uLL, (a1 + 176));
                                      v25 = v21;
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

  return sub_2394C38E0(&v23);
}

unint64_t sub_238F0F79C(uint64_t a1, uint64_t a2)
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
        v5 = a2;
        v6 = a1;
        goto LABEL_21;
      case 1:
        v6 = (a1 + 4);
        goto LABEL_20;
      case 2:
        v6 = (a1 + 8);
        goto LABEL_20;
      case 3:
        v6 = (a1 + 12);
        goto LABEL_20;
      case 4:
        v6 = (a1 + 16);
        goto LABEL_20;
      case 5:
        *(a1 + 20) = 1;
        v4 = sub_2393C5CE4(a2, (a1 + 21));
        break;
      case 6:
        *(a1 + 24) = 1;
        *(a1 + 28) = 0;
        v6 = (a1 + 28);
        goto LABEL_20;
      case 7:
        *(a1 + 32) = 1;
        *(a1 + 36) = 0;
        v6 = (a1 + 36);
        goto LABEL_20;
      case 8:
        *(a1 + 40) = 1;
        *(a1 + 42) = 0;
        v4 = sub_2393C5F70(a2, (a1 + 42));
        break;
      case 9:
        *(a1 + 48) = 1;
        *(a1 + 56) = 0;
        v7 = (a1 + 56);
        goto LABEL_23;
      case 10:
        *(a1 + 64) = 1;
        *(a1 + 72) = 0;
        v7 = (a1 + 72);
        goto LABEL_23;
      case 11:
        *(a1 + 80) = 1;
        *(a1 + 88) = 0;
        v7 = (a1 + 88);
        goto LABEL_23;
      case 12:
        *(a1 + 96) = 1;
        *(a1 + 104) = 0;
        v7 = (a1 + 104);
        goto LABEL_23;
      case 13:
        v8 = sub_238F37604((a1 + 112));
        v4 = sub_238F36BB4(v8, a2);
        break;
      case 14:
        *(a1 + 192) = 1;
        *(a1 + 200) = 0;
        v7 = (a1 + 200);
        goto LABEL_23;
      case 15:
        *(a1 + 208) = 1;
        *(a1 + 216) = 0;
        v7 = (a1 + 216);
LABEL_23:
        v4 = sub_2393C5DA0(a2, v7);
        break;
      case 16:
        *(a1 + 224) = 1;
        *(a1 + 228) = 0;
        v6 = (a1 + 228);
        goto LABEL_20;
      case 17:
        *(a1 + 232) = 1;
        *(a1 + 236) = 0;
        v6 = (a1 + 236);
LABEL_20:
        v5 = a2;
LABEL_21:
        v4 = sub_2393C5FC8(v5, v6);
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

unint64_t sub_238F0F964(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v15, a2, a3);
  if (!v16)
  {
    v16 = sub_2393C81D4(v15, 0, *a1);
    v17 = v4;
    if (!v16)
    {
      v16 = sub_238EFD4A8(v15, 1uLL, (a1 + 4));
      v17 = v5;
      if (!v16)
      {
        v16 = sub_2393C81D4(v15, 2uLL, *(a1 + 8));
        v17 = v6;
        if (!v16)
        {
          v16 = sub_2393C81D4(v15, 3uLL, *(a1 + 12));
          v17 = v7;
          if (!v16)
          {
            v16 = sub_238F1EDEC(v15, 4uLL, (a1 + 16));
            v17 = v8;
            if (!v16)
            {
              v16 = sub_238F36DFC(v15, 5uLL, (a1 + 28));
              v17 = v9;
              if (!v16)
              {
                v16 = sub_2393C7E38(v15, 6uLL, *(a1 + 36));
                v17 = v10;
              }
            }
          }
        }
      }
    }
  }

  sub_238F0FA90(&v15, 7u, (a1 + 40));
  if (!v16)
  {
    v11 = *(a1 + 56);
    if (v11 == 3)
    {
      v12 = 0x5C00000587;
      v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v12 = sub_2393C8140(v15, 8uLL, v11);
    }

    v16 = v12;
    v17 = v13;
  }

  return sub_2394C38E0(&v15);
}

unint64_t sub_238F0FA90(unint64_t result, unsigned int a2, uint64_t *a3)
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

      v11 = 184 * v8;
      while (1)
      {
        result = sub_238F0F5B0(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 184;
        v11 -= 184;
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

unint64_t sub_238F0FB54(uint64_t a1, uint64_t a2)
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
          v5 = (a1 + 8);
LABEL_20:
          v6 = a2;
LABEL_21:
          v4 = sub_2393C5FC8(v6, v5);
          goto LABEL_22;
        }

        if (v10 == 3)
        {
          v5 = (a1 + 12);
          goto LABEL_20;
        }
      }

      else
      {
        if (!v10)
        {
          v6 = a2;
          v5 = a1;
          goto LABEL_21;
        }

        v4 = sub_238EFD714(a2, (a1 + 4));
      }
    }

    else
    {
      if (v10 > 5u)
      {
        switch(v10)
        {
          case 6u:
            v4 = sub_2393C5CE4(a2, (a1 + 36));
            break;
          case 7u:
            v4 = sub_238F36BB4(a1 + 40, a2);
            break;
          case 8u:
            v4 = sub_238EFD7D0(a2, (a1 + 112));
            break;
        }

        goto LABEL_22;
      }

      if (v10 == 4)
      {
        *(a1 + 16) = 1;
        *(a1 + 20) = 0;
        v4 = sub_238EFDEB0(a2, a1 + 20);
        goto LABEL_22;
      }

      if (v10 == 5)
      {
        *(a1 + 28) = 1;
        *(a1 + 32) = 0;
        v5 = (a1 + 32);
        goto LABEL_20;
      }
    }

LABEL_22:
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

unint64_t sub_238F0FCC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C81D4(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v11 = sub_2393C81D4(v10, 1uLL, *(a1 + 4));
      v12 = v5;
      if (!v11)
      {
        v11 = sub_238F16720(v10, 2uLL, (a1 + 8));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_238F16720(v10, 3uLL, (a1 + 24));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238F36FD0(v10, 4uLL, (a1 + 40));
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F0FD74(uint64_t a1, uint64_t a2)
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
      if (!v11)
      {
        v6 = a2;
        v5 = a1;
        goto LABEL_15;
      }

      if (v11 == 1)
      {
        v5 = (a1 + 4);
        v6 = a2;
LABEL_15:
        v4 = sub_2393C5FC8(v6, v5);
      }
    }

    else
    {
      if (v11 == 2)
      {
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        v7 = (a1 + 16);
      }

      else
      {
        if (v11 != 3)
        {
          if (v11 == 4)
          {
            *(a1 + 40) = 1;
            v4 = sub_2393C5D48(a2, (a1 + 41));
          }

          goto LABEL_16;
        }

        *(a1 + 24) = 1;
        *(a1 + 32) = 0;
        v7 = (a1 + 32);
      }

      v4 = sub_2393C5DA0(a2, v7);
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

unint64_t sub_238F0FE78(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8140(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F16720(v8, 1uLL, a1 + 8);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C81D4(v8, 2uLL, *(a1 + 6));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F0FEFC(uint64_t a1, uint64_t a2)
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
        v4 = sub_2393C5FC8(a2, (a1 + 24));
        break;
      case 1:
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        v4 = sub_2393C5DA0(a2, (a1 + 16));
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

unint64_t sub_238F0FFC8(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v7, *a2, a3);
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

unint64_t sub_238F10038(uint64_t a1, uint64_t a2)
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

unint64_t sub_238F100EC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 3)
    {
      goto LABEL_3;
    }

    v11 = sub_2393C8140(v10, 0, v4);
    v12 = v5;
    if (v11)
    {
      return sub_2394C38E0(&v10);
    }

    v7 = a1[1];
    if (v7 == 2)
    {
LABEL_3:
      v11 = 0x5C00000587;
      v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v11 = sub_2393C8140(v10, 1uLL, v7);
      v12 = v8;
      if (!v11)
      {
        v11 = sub_238EFDC40(v10, 2uLL, a1 + 8);
        v12 = v9;
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F1019C(uint64_t a1, uint64_t a2)
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
        v4 = sub_238EFF894(a2, (a1 + 1));
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

unint64_t sub_238F10268(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v10, *a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 5)
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
        v11 = sub_2393C8364(v10, 1uLL, *(a1 + 1), *(a1 + 2));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_238EFEFB0(v10, 2uLL, a1 + 24);
          v12 = v7;
          if (!v11)
          {
            v11 = sub_238EFEFB0(v10, 3uLL, a1 + 40);
            v12 = v8;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F10328(uint64_t a1, uint64_t a2)
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
        v4 = sub_238F000A4(a2, a1);
      }

      goto LABEL_14;
    }

    if (v9 == 2)
    {
      *(a1 + 24) = 1;
      *(a1 + 32) = 0;
      v5 = (a1 + 32);
      goto LABEL_13;
    }

    if (v9 == 3)
    {
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v5 = (a1 + 48);
LABEL_13:
      v4 = sub_2393C5F2C(a2, v5);
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

unint64_t sub_238F10440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v8 = (a1 + 8);
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 3)
        {
          return v7 | v6;
        }

        v8 = (a1 + 12);
      }
    }

    else
    {
      if (!v5)
      {
        v10 = a2;
        v8 = a1;
LABEL_20:
        v7 = sub_238F37278(v10, v8);
        goto LABEL_25;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 1)
      {
        return v7 | v6;
      }

      v8 = (a1 + 4);
    }

    v10 = a2;
    goto LABEL_20;
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v9 = a1 + 16;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v9 = a1 + 88;
    }

LABEL_23:
    v7 = sub_238F36BB4(v9, a2);
    goto LABEL_25;
  }

  if (v5 == 65531)
  {
    v9 = a1 + 160;
    goto LABEL_23;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 232));
    goto LABEL_25;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 236));
LABEL_25:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

unint64_t sub_238F10570(_DWORD *a1, uint64_t a2)
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
      v5 = sub_238F37278(a2, a1);
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

unint64_t sub_238F10604(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C81D4(a2, 0, *a1);
    if (!result)
    {
      result = sub_2393C81D4(a2, 1uLL, a1[1]);
      if (!result)
      {
        result = sub_2393C81D4(a2, 2uLL, a1[2]);
        if (!result)
        {
          result = sub_2393C81D4(a2, 3uLL, a1[3]);
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

unint64_t sub_238F106A8(_DWORD *a1, uint64_t a2)
{
  v13[0] = 0;
  v14 = a2;
  v4 = a1 + 3;
  v5 = a1 + 2;
  v6 = a1 + 1;
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
      v8 = v4;
LABEL_10:
      v7 = sub_238F37278(a2, v8);
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

unint64_t sub_238F10780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 127)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v7 = sub_238F10BDC(a2, a1);
        goto LABEL_92;
      case 1:
        v7 = sub_238F07BEC(a2, (a1 + 2));
        goto LABEL_92;
      case 2:
        v13 = (a1 + 3);
        goto LABEL_72;
      case 3:
        v7 = sub_238F10C94(a2, (a1 + 4));
        goto LABEL_92;
      case 4:
        v14 = (a1 + 8);
        goto LABEL_74;
      case 5:
        v14 = (a1 + 12);
        goto LABEL_74;
      case 6:
        v8 = (a1 + 16);
        goto LABEL_91;
      case 17:
        v8 = (a1 + 18);
        goto LABEL_91;
      case 18:
        v8 = (a1 + 20);
        goto LABEL_91;
      case 19:
        v8 = (a1 + 22);
        goto LABEL_91;
      case 20:
        v12 = (a1 + 24);
        goto LABEL_83;
      case 21:
        v12 = (a1 + 25);
        goto LABEL_83;
      case 22:
        v12 = (a1 + 26);
        goto LABEL_83;
      case 23:
        v12 = (a1 + 27);
        goto LABEL_83;
      case 24:
        v12 = (a1 + 28);
        goto LABEL_83;
      case 25:
        v12 = (a1 + 29);
        goto LABEL_83;
      case 26:
        v12 = (a1 + 30);
        goto LABEL_83;
      case 27:
        v7 = sub_238EA4DB4(a2, (a1 + 31));
        goto LABEL_92;
      case 28:
        v12 = (a1 + 32);
        goto LABEL_83;
      case 33:
        v7 = sub_2393C61E0(a2, (a1 + 40));
        goto LABEL_92;
      case 34:
        v12 = (a1 + 56);
        goto LABEL_83;
      case 35:
        v14 = (a1 + 60);
        goto LABEL_74;
      case 36:
        v12 = (a1 + 64);
        goto LABEL_83;
      case 37:
        v7 = sub_238F000A4(a2, (a1 + 65));
        goto LABEL_92;
      case 38:
        v7 = sub_238F36E54(a2, (a1 + 66));
        goto LABEL_92;
      case 39:
        v7 = sub_238F36E54(a2, (a1 + 68));
        goto LABEL_92;
      case 40:
        v13 = (a1 + 70);
        goto LABEL_72;
      case 41:
        v13 = (a1 + 71);
        goto LABEL_72;
      case 42:
        v13 = (a1 + 72);
        goto LABEL_72;
      case 43:
        v13 = (a1 + 73);
        goto LABEL_72;
      case 44:
        v7 = sub_238EA4DB4(a2, (a1 + 74));
        goto LABEL_92;
      case 48:
        v12 = (a1 + 75);
        goto LABEL_83;
      case 49:
        v12 = (a1 + 76);
        goto LABEL_83;
      case 50:
        v13 = (a1 + 77);
        goto LABEL_72;
      case 51:
        v13 = (a1 + 78);
LABEL_72:
        v7 = sub_2393C5CE4(a2, v13);
        goto LABEL_92;
      case 53:
        v8 = (a1 + 80);
        goto LABEL_91;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 <= 132)
    {
      if (v5 <= 129)
      {
        if (v5 == 128)
        {
          v10 = a1 + 88;
        }

        else
        {
          v10 = a1 + 112;
        }
      }

      else
      {
        if (v5 == 130)
        {
          v11 = (a1 + 136);
          goto LABEL_95;
        }

        if (v5 == 131)
        {
          v9 = a1 + 152;
          goto LABEL_89;
        }

        v10 = a1 + 224;
      }

      goto LABEL_86;
    }

    if (v5 > 135)
    {
      if (v5 == 136)
      {
        v8 = (a1 + 324);
        goto LABEL_91;
      }

      if (v5 == 65528)
      {
        v9 = a1 + 328;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65529)
        {
          return v7 | v6;
        }

        v9 = a1 + 400;
      }

      goto LABEL_89;
    }

    if (v5 == 133)
    {
      v9 = a1 + 248;
      goto LABEL_89;
    }

    if (v5 != 134)
    {
      v8 = (a1 + 322);
      goto LABEL_91;
    }

    v12 = (a1 + 320);
    goto LABEL_83;
  }

  if (v5 > 323551234)
  {
    if (v5 <= 323551237)
    {
      if (v5 == 323551235)
      {
        v9 = a1 + 616;
        goto LABEL_89;
      }

      if (v5 != 323551236)
      {
        v9 = a1 + 712;
LABEL_89:
        v7 = sub_238F36BB4(v9, a2);
        goto LABEL_92;
      }

      v10 = a1 + 688;
LABEL_86:
      v7 = sub_238F10D4C(a2, v10);
      goto LABEL_92;
    }

    if (v5 != 323551238)
    {
      if (v5 == 323551239)
      {
        v8 = (a1 + 786);
        goto LABEL_91;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 323551240)
      {
        v8 = (a1 + 788);
        goto LABEL_91;
      }

      return v7 | v6;
    }

    v12 = (a1 + 784);
LABEL_83:
    v7 = sub_2393C5ED0(a2, v12);
LABEL_92:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 > 323551231)
  {
    if (v5 == 323551232)
    {
      v10 = a1 + 552;
    }

    else
    {
      if (v5 != 323551233)
      {
        v11 = (a1 + 600);
LABEL_95:
        v7 = sub_238EFEA98(a2, v11);
        goto LABEL_92;
      }

      v10 = a1 + 576;
    }

    goto LABEL_86;
  }

  if (v5 == 65531)
  {
    v9 = a1 + 472;
    goto LABEL_89;
  }

  if (v5 == 65532)
  {
    v14 = (a1 + 544);
LABEL_74:
    v7 = sub_2393C5FC8(a2, v14);
    goto LABEL_92;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v8 = (a1 + 548);
LABEL_91:
    v7 = sub_2393C5F70(a2, v8);
    goto LABEL_92;
  }

  return v7 | v6;
}

unint64_t sub_238F10BDC(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_238EA4D5C(a1, a2);
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

unint64_t sub_238F10C94(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_238F01014(a1, a2);
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

unint64_t sub_238F10D4C(uint64_t a1, uint64_t a2)
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
    if (sub_2393C5C40(a1) == 16)
    {
      v6 = sub_2393C60CC(a1, a2);
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

    else
    {
      v5 = 0x5000000000;
      v4 = 43;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F10E04(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F1E4D4(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F10E58(uint64_t a1, uint64_t a2)
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
      v5 = sub_238F00D84(a2, a1);
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

unint64_t sub_238F10EEC(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F1E4D4(v7, 1uLL, a1 + 8);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F10F58(_WORD *a1, uint64_t a2)
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
      v4 = sub_238F00D84(a2, (a1 + 4));
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

unint64_t sub_238F10FF8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C8140(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_2393C818C(v12, 1uLL, *(a1 + 1));
      v14 = v5;
      if (!v13)
      {
        v13 = sub_2393C8140(v12, 2uLL, a1[4]);
        v14 = v6;
        if (!v13)
        {
          v13 = sub_2393C8140(v12, 3uLL, a1[5]);
          v14 = v7;
          if (!v13)
          {
            v13 = sub_2393C8140(v12, 4uLL, a1[6]);
            v14 = v8;
            if (!v13)
            {
              v13 = sub_2393C8140(v12, 5uLL, a1[7]);
              v14 = v9;
              if (!v13)
              {
                v13 = sub_2393C8140(v12, 6uLL, a1[8]);
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

unint64_t sub_238F110DC(uint64_t a1, uint64_t a2)
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
        }

        else if (v10 == 2)
        {
          v4 = sub_238EA4DB4(a2, (a1 + 4));
        }

        goto LABEL_20;
      }

      v6 = a2;
      v5 = a1;
      goto LABEL_19;
    }

    if (v10 > 4u)
    {
      if (v10 == 5)
      {
        v5 = (a1 + 7);
LABEL_18:
        v6 = a2;
LABEL_19:
        v4 = sub_2393C5ED0(v6, v5);
        goto LABEL_20;
      }

      if (v10 == 6)
      {
        v5 = (a1 + 8);
        goto LABEL_18;
      }
    }

    else
    {
      if (v10 == 3)
      {
        v5 = (a1 + 5);
        goto LABEL_18;
      }

      if (v10 == 4)
      {
        v5 = (a1 + 6);
        goto LABEL_18;
      }
    }

LABEL_20:
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

unint64_t sub_238F111EC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
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

unint64_t sub_238F11258(uint64_t a1, uint64_t a2)
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

unint64_t sub_238F112F8(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v15, *a2, a3);
  if (!v16)
  {
    v16 = sub_2393C8140(v15, 0, *a1);
    v17 = v4;
    if (!v16)
    {
      v16 = sub_2393C818C(v15, 1uLL, *(a1 + 1));
      v17 = v5;
      if (!v16)
      {
        v6 = a1[4];
        if (v6 == 4)
        {
          v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
          v8 = 0x5C00000587;
LABEL_6:
          v16 = v8;
          v17 = v7;
          return sub_2394C38E0(&v15);
        }

        v16 = sub_2393C8140(v15, 2uLL, v6);
        v17 = v9;
        if (!v16)
        {
          v16 = sub_238F02628(v15, 3uLL, a1 + 5);
          v17 = v10;
          if (!v16)
          {
            v16 = sub_238F02628(v15, 4uLL, a1 + 7);
            v17 = v11;
            if (!v16)
            {
              v16 = sub_238F02628(v15, 5uLL, a1 + 9);
              v17 = v12;
              if (!v16)
              {
                v16 = sub_238F02628(v15, 6uLL, a1 + 11);
                v17 = v13;
                if (!v16)
                {
                  v8 = sub_238F02628(v15, 7uLL, a1 + 13);
                  goto LABEL_6;
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

unint64_t sub_238F11418(uint64_t a1, uint64_t a2)
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
          *(a1 + 11) = 1;
          v5 = (a1 + 12);
          goto LABEL_21;
        }

        if (v10 == 7)
        {
          *(a1 + 13) = 1;
          v5 = (a1 + 14);
          goto LABEL_21;
        }
      }

      else
      {
        if (v10 == 4)
        {
          *(a1 + 7) = 1;
          v5 = (a1 + 8);
          goto LABEL_21;
        }

        if (v10 == 5)
        {
          *(a1 + 9) = 1;
          v5 = (a1 + 10);
LABEL_21:
          v6 = a2;
          goto LABEL_22;
        }
      }
    }

    else
    {
      if (v10 > 1u)
      {
        if (v10 == 2)
        {
          v4 = sub_238F11564(a2, (a1 + 4));
        }

        else if (v10 == 3)
        {
          *(a1 + 5) = 1;
          v4 = sub_238EA4DB4(a2, (a1 + 6));
        }

        goto LABEL_23;
      }

      if (!v10)
      {
        v6 = a2;
        v5 = a1;
LABEL_22:
        v4 = sub_2393C5ED0(v6, v5);
        goto LABEL_23;
      }

      v4 = sub_2393C5F70(a2, (a1 + 2));
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

unint64_t sub_238F11564(uint64_t a1, char *a2)
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
    if (v5 - 133 > 6 || ((1 << (v5 + 123)) & 0x51) == 0)
    {
      v7 = 4;
    }

    else
    {
      v7 = *a2;
    }

    if (v5 >= 4)
    {
      LOBYTE(v5) = v7;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F115DC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
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
        v10 = sub_2393C81D4(v9, 2uLL, *(a1 + 1));
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C81D4(v9, 3uLL, *(a1 + 2));
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F11678(uint64_t a1, uint64_t a2)
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
      v5 = (a1 + 8);
LABEL_12:
      v4 = sub_2393C5FC8(a2, v5);
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

unint64_t sub_238F11748(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v12, *a2, a3);
  if (!v13)
  {
    v13 = sub_2393C8140(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v13 = sub_2393C818C(v12, 1uLL, *(a1 + 1));
      v14 = v5;
      if (!v13)
      {
        v6 = a1[4];
        if (v6 == 4)
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
          v13 = sub_238F36DFC(v12, 3uLL, a1 + 8);
          v14 = v10;
          if (!v13)
          {
            v8 = sub_238F36DFC(v12, 4uLL, a1 + 16);
            goto LABEL_6;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F11820(uint64_t a1, uint64_t a2)
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

      goto LABEL_15;
    }

    switch(v9)
    {
      case 2u:
        v4 = sub_238F11564(a2, (a1 + 4));
        break;
      case 3u:
        *(a1 + 8) = 1;
        *(a1 + 12) = 0;
        v5 = (a1 + 12);
        goto LABEL_13;
      case 4u:
        *(a1 + 16) = 1;
        *(a1 + 20) = 0;
        v5 = (a1 + 20);
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

unint64_t sub_238F11924(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C8140(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v12 = sub_2393C81D4(v11, 1uLL, *(a1 + 1));
      v13 = v5;
      if (!v12)
      {
        v12 = sub_2393C81D4(v11, 2uLL, *(a1 + 2));
        v13 = v6;
        if (!v12)
        {
          v7 = a1[12];
          if (v7 == 5)
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

unint64_t sub_238F119DC(_BYTE *a1, uint64_t a2)
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
          v4 = sub_238F000A4(a2, a1 + 12);
        }

        goto LABEL_13;
      }

      v5 = a1 + 8;
      goto LABEL_12;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v5 = a1 + 4;
LABEL_12:
        v4 = sub_2393C5FC8(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5ED0(a2, a1);
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

unint64_t sub_238F11AAC(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v12, *a2, a3);
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
        v13 = sub_238F36DFC(v12, 2uLL, a1 + 4);
        v14 = v9;
        if (!v13)
        {
          v13 = sub_238F36DFC(v12, 3uLL, a1 + 12);
          v14 = v10;
          if (!v13)
          {
            v7 = sub_238F37764(v12, 4uLL, a1 + 20);
            goto LABEL_5;
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F11B84(uint64_t a1, uint64_t a2)
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
          v4 = sub_238F11564(a2, (a1 + 1));
        }
      }

      else
      {
        v4 = sub_2393C5ED0(a2, a1);
      }

      goto LABEL_15;
    }

    if (v9 == 2)
    {
      *(a1 + 4) = 1;
      *(a1 + 8) = 0;
      v5 = (a1 + 8);
    }

    else
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          *(a1 + 20) = 1;
          v4 = sub_238F000A4(a2, (a1 + 21));
        }

        goto LABEL_15;
      }

      *(a1 + 12) = 1;
      *(a1 + 16) = 0;
      v5 = (a1 + 16);
    }

    v4 = sub_2393C5FC8(a2, v5);
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

unint64_t sub_238F11C8C(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v13, a2, a3);
  if (!v14)
  {
    v4 = *a1;
    if (v4 == 3)
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
        v14 = sub_2393C818C(v13, 1uLL, *(a1 + 1));
        v15 = v6;
        if (!v14)
        {
          v14 = sub_238F37AF8(v13, 2uLL, (a1 + 8));
          v15 = v7;
          if (!v14)
          {
            v14 = sub_238F16CC4(v13, 3uLL, (a1 + 32));
            v15 = v8;
            if (!v14)
            {
              v14 = sub_238F382B8(v13, 4uLL, a1 + 40);
              v15 = v9;
              if (!v14)
              {
                v14 = sub_238F3832C(v13, 5uLL, a1 + 42);
                v15 = v10;
                if (!v14)
                {
                  v14 = sub_238F37DA4(v13, 6uLL, a1 + 44);
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

unint64_t sub_238F11D90(uint64_t a1, uint64_t a2)
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
          v4 = sub_2393C5F70(a2, (a1 + 2));
        }

        else if (v8 == 2)
        {
          v4 = sub_238F0BA3C(a2, a1 + 8);
        }
      }

      else
      {
        v4 = sub_238EFD7D0(a2, a1);
      }
    }

    else if (v8 > 4u)
    {
      if (v8 == 5)
      {
        v4 = sub_238F11F70(a2, (a1 + 42));
      }

      else if (v8 == 6)
      {
        v4 = sub_238F0C9D0(a2, (a1 + 44));
      }
    }

    else if (v8 == 3)
    {
      v4 = sub_238EFDEB0(a2, a1 + 32);
    }

    else if (v8 == 4)
    {
      v4 = sub_238F11EB8(a2, (a1 + 40));
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

unint64_t sub_238F11EB8(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_238F08900(a1, a2);
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

unint64_t sub_238F11F70(uint64_t a1, unsigned __int8 *a2)
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
    v4 = sub_238F383A0(a1, a2);
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

unint64_t sub_238F12028(unsigned __int16 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v15, *a2, a3);
  if (!v16)
  {
    v16 = sub_2393C818C(v15, 0, *a1);
    v17 = v4;
    if (!v16)
    {
      v16 = sub_238F37AF8(v15, 1uLL, (a1 + 4));
      v17 = v5;
      if (!v16)
      {
        v16 = sub_238F16CC4(v15, 2uLL, (a1 + 16));
        v17 = v6;
        if (!v16)
        {
          v16 = sub_238F382B8(v15, 3uLL, a1 + 40);
          v17 = v7;
          if (!v16)
          {
            v16 = sub_238F3832C(v15, 4uLL, a1 + 42);
            v17 = v8;
            if (!v16)
            {
              v16 = sub_238F37DA4(v15, 5uLL, a1 + 44);
              v17 = v9;
              if (!v16)
              {
                v16 = sub_238F383F8(v15, 6uLL, (a1 + 24));
                v17 = v10;
                if (!v16)
                {
                  v16 = sub_238F13404(v15, 7uLL, a1 + 72);
                  v17 = v11;
                  if (!v16)
                  {
                    v16 = sub_238F13404(v15, 8uLL, a1 + 74);
                    v17 = v12;
                    if (!v16)
                    {
                      v16 = sub_238EFD4A8(v15, 9uLL, a1 + 38);
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

unint64_t sub_238F12158(uint64_t a1, uint64_t a2)
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

    if (v9 > 4u)
    {
      if (v9 <= 6u)
      {
        if (v9 == 5)
        {
          v4 = sub_238F0C9D0(a2, (a1 + 44));
        }

        else if (v9 == 6)
        {
          v4 = sub_238EFE808(a2, a1 + 48);
        }

        goto LABEL_26;
      }

      if (v9 == 7)
      {
        v5 = (a1 + 128);
      }

      else
      {
        if (v9 != 8)
        {
          if (v9 == 9)
          {
            v4 = sub_238EFD714(a2, (a1 + 132));
          }

          goto LABEL_26;
        }

        v5 = (a1 + 130);
      }

      v4 = sub_238F00228(a2, v5);
    }

    else if (v9 <= 1u)
    {
      if (v9)
      {
        v4 = sub_238F0BA3C(a2, a1 + 8);
      }

      else
      {
        v4 = sub_2393C5F70(a2, a1);
      }
    }

    else
    {
      switch(v9)
      {
        case 2u:
          v4 = sub_238EFDEB0(a2, a1 + 32);
          break;
        case 3u:
          v4 = sub_238F11EB8(a2, (a1 + 40));
          break;
        case 4u:
          v4 = sub_238F11F70(a2, (a1 + 42));
          break;
      }
    }

LABEL_26:
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

unint64_t sub_238F122C8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v4 = *a1;
    if (v4 == 3)
    {
      v13 = 0x5C00000587;
      v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v13 = sub_2393C8140(v12, 0, v4);
      v14 = v5;
      if (!v13)
      {
        v13 = sub_238F14270(a1 + 2, v12, 1uLL);
        v14 = v6;
        if (!v13)
        {
          v13 = sub_2393C8364(v12, 2uLL, *(a1 + 1), *(a1 + 2));
          v14 = v7;
          if (!v13)
          {
            v13 = sub_238EFD4A8(v12, 3uLL, a1 + 12);
            v14 = v8;
            if (!v13)
            {
              v13 = sub_238F382B8(v12, 4uLL, a1 + 28);
              v14 = v9;
              if (!v13)
              {
                v13 = sub_238F3832C(v12, 5uLL, a1 + 30);
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

unint64_t sub_238F123B4(uint64_t a1, uint64_t a2)
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
          v4 = sub_238EFD714(a2, (a1 + 24));
          break;
        case 4u:
          v4 = sub_238F11EB8(a2, (a1 + 28));
          break;
        case 5u:
          v4 = sub_238F11F70(a2, (a1 + 30));
          break;
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238F142FC(a1 + 2, a2);
      }

      else if (v8 == 2)
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

unint64_t sub_238F124EC(unsigned __int16 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v9, *a2, a3);
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
        v10 = sub_238EFD4A8(v9, 1uLL, a1 + 1);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238EFD4A8(v9, 2uLL, a1 + 3);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F12594(char *a1, uint64_t a2)
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
      v5 = (a1 + 6);
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_238F11564(a2, a1);
        }

        goto LABEL_10;
      }

      v5 = (a1 + 2);
    }

    v4 = sub_238EFD714(a2, v5);
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