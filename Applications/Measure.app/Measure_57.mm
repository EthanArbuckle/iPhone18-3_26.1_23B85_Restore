unsigned int *sub_100380E98(unsigned int *result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *result;
  if (!*(result + 16))
  {
    if (a3)
    {
      v13 = a3[4];
      v14 = *(result + 17);
      if (v14 > 7)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v13 = 0;
      v14 = *(result + 17);
      if (v14 > 7)
      {
LABEL_61:
        if (!a3)
        {
          return result;
        }

        if (v14 == 16)
        {
          if (v3)
          {
            v49 = *(result + 1);
            v50 = (a2 + 2 * v49 - 1);
            v51 = (a2 + v49 - 1);
            v52 = v3;
            do
            {
              if (*(v51 - 1) == v13 >> 8 && *v51 == v13)
              {
                v53 = 0;
              }

              else
              {
                v53 = -1;
              }

              *v50 = v53;
              *(v50 - 1) = v53;
              *(v50 - 2) = *v51;
              v54 = *(v51 - 1);
              v51 -= 2;
              *(v50 - 3) = v54;
              v50 -= 4;
              --v52;
            }

            while (v52);
          }
        }

        else if (v14 == 8 && v3)
        {
          v44 = (a2 + 2 * v3 - 1);
          v45 = (v3 + a2 - 1);
          v46 = v3;
          do
          {
            if (*v45 == v13)
            {
              v47 = 0;
            }

            else
            {
              v47 = -1;
            }

            *v44 = v47;
            v48 = *v45--;
            *(v44 - 1) = v48;
            v44 -= 2;
            --v46;
          }

          while (v46);
        }

        *(result + 16) = 4;
        *(result + 18) = 2;
        v30 = 2 * *(result + 17);
        v31 = v30;
        goto LABEL_79;
      }
    }

    switch(v14)
    {
      case 1u:
        if (v13)
        {
          v13 = 255;
        }

        else
        {
          v13 = 0;
        }

        if (v3)
        {
          v37 = -v3 & 7;
          v38 = (a2 + ((v3 - 1) >> 3));
          v39 = (v3 + a2 - 1);
          v40 = *result;
          do
          {
            if ((*v38 >> v37))
            {
              v41 = -1;
            }

            else
            {
              v41 = 0;
            }

            *v39-- = v41;
            v42 = v37 == 7;
            if (v37 == 7)
            {
              v37 = 0;
            }

            else
            {
              ++v37;
            }

            v38 -= v42;
            --v40;
          }

          while (v40);
          goto LABEL_58;
        }

        break;
      case 2u:
        v13 = 85 * (v13 & 3);
        if (v3)
        {
          v32 = ~(2 * v3 + 6) & 6;
          v33 = (a2 + ((v3 - 1) >> 2));
          v34 = (v3 + a2 - 1);
          v35 = *result;
          do
          {
            *v34-- = 85 * ((*v33 >> v32) & 3);
            v20 = v32 == 6;
            v36 = v32 == 6;
            v32 += 2;
            if (v20)
            {
              v32 = 0;
            }

            v33 -= v36;
            --v35;
          }

          while (v35);
          goto LABEL_58;
        }

        break;
      case 4u:
        v13 = v13 & 0xF | (16 * (v13 & 0xF));
        if (v3)
        {
          v15 = 4 * (*result & 1);
          v16 = (a2 + ((v3 - 1) >> 1));
          v17 = (v3 + a2 - 1);
          v18 = *result;
          do
          {
            v19 = *v16 >> v15;
            v20 = v15 == 0;
            v21 = v15 == 0;
            *v17-- = v19 & 0xF | (16 * v19);
            v22 = !v20;
            v16 -= v22;
            v15 = 4 * v21;
            --v18;
          }

          while (v18);
          goto LABEL_58;
        }

        break;
      default:
LABEL_58:
        v43 = v3;
LABEL_60:
        v14 = 8;
        *(result + 17) = 8;
        *(result + 19) = 8;
        *(result + 1) = v43;
        goto LABEL_61;
    }

    v43 = 0;
    goto LABEL_60;
  }

  if (!a3 || *(result + 16) != 2)
  {
    return result;
  }

  v4 = *(result + 17);
  if (v4 == 16)
  {
    if (v3)
    {
      v23 = a3[1];
      v24 = a3[2];
      v25 = a3[3];
      v26 = (a2 + 8 * v3 - 1);
      v27 = (*(result + 1) + a2 - 3);
      v28 = *result;
      do
      {
        if (v23 >> 8 == *(v27 - 3) && *(v27 - 2) == v23 && v24 >> 8 == *(v27 - 1) && *v27 == v24 && v25 >> 8 == v27[1] && v27[2] == v25)
        {
          v29 = 0;
        }

        else
        {
          v29 = -1;
        }

        *v26 = v29;
        *(v26 - 1) = v29;
        *(v26 - 2) = v27[2];
        *(v26 - 3) = v27[1];
        *(v26 - 4) = *v27;
        *(v26 - 5) = *(v27 - 1);
        *(v26 - 6) = *(v27 - 2);
        *(v26 - 7) = *(v27 - 3);
        v26 -= 8;
        v27 -= 6;
        --v28;
      }

      while (v28);
    }
  }

  else if (v4 == 8 && v3)
  {
    v5 = (a2 + 4 * v3 - 1);
    v6 = (a2 + *(result + 1) - 1);
    v7 = *(a3 + 6);
    v8 = *(a3 + 4);
    v9 = *(a3 + 2);
    v10 = *result;
    do
    {
      if (*(v6 - 2) == v9 && *(v6 - 1) == v8 && *v6 == v7)
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      *v5 = v11;
      *(v5 - 1) = *v6;
      *(v5 - 2) = *(v6 - 1);
      v12 = *(v6 - 2);
      v6 -= 3;
      *(v5 - 3) = v12;
      v5 -= 4;
      --v10;
    }

    while (v10);
  }

  *(result + 16) = 6;
  *(result + 18) = 4;
  v30 = 4 * *(result + 17);
  v31 = v30;
LABEL_79:
  *(result + 19) = v30;
  v55 = v31 >= 8;
  v56 = (v30 * v3 + 7) >> 3;
  v57 = v3 * (v30 >> 3);
  if (!v55)
  {
    v57 = v56;
  }

  *(result + 1) = v57;
  return result;
}

unsigned int *sub_1003812D0(unsigned int *result, uint64_t a2)
{
  v2 = *(result + 17);
  if (v2 >= 8)
  {
    v3 = *(result + 16);
    if ((v3 & 2) == 0)
    {
      v4 = *result;
      v5 = *result;
      if (v3 == 4)
      {
        if (v2 == 8)
        {
          if (v5)
          {
            v10 = (a2 + 2 * v4 - 1);
            v11 = &v10[2 * v4];
            do
            {
              *v11 = *v10;
              v12 = *(v10 - 1);
              *(v11 - 1) = v12;
              *(v11 - 2) = v12;
              *(v11 - 3) = *(v10 - 1);
              v11 -= 4;
              v10 -= 2;
              --v5;
            }

            while (v5);
          }
        }

        else if (v5)
        {
          v15 = (a2 + 4 * v4 - 1);
          v16 = &v15[4 * v4];
          do
          {
            *v16 = *v15;
            *(v16 - 1) = *(v15 - 1);
            *(v16 - 2) = *(v15 - 2);
            *(v16 - 3) = *(v15 - 3);
            *(v16 - 4) = *(v15 - 2);
            *(v16 - 5) = *(v15 - 3);
            *(v16 - 6) = *(v15 - 2);
            *(v16 - 7) = *(v15 - 3);
            v16 -= 8;
            v15 -= 4;
            --v5;
          }

          while (v5);
        }
      }

      else if (!*(result + 16))
      {
        if (v2 == 8)
        {
          if (v5)
          {
            v6 = (a2 + v4 - 1);
            v7 = &v6[2 * v4];
            do
            {
              v8 = *v6;
              *v7 = *v6;
              *(v7 - 1) = v8;
              v9 = *v6--;
              *(v7 - 2) = v9;
              v7 -= 3;
              --v5;
            }

            while (v5);
          }
        }

        else if (v5)
        {
          v13 = (a2 + 2 * v4 - 1);
          v14 = &v13[4 * v4];
          do
          {
            *v14 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *(v14 - 2) = *v13;
            *(v14 - 3) = *(v13 - 1);
            *(v14 - 4) = *v13;
            *(v14 - 5) = *(v13 - 1);
            v14 -= 6;
            v13 -= 2;
            --v5;
          }

          while (v5);
        }
      }

      v17 = *(result + 18) + 2;
      *(result + 18) = v17;
      *(result + 16) |= 2u;
      v18 = *(result + 17) * v17;
      *(result + 19) = v18;
      v19 = (v18 * v4 + 7) >> 3;
      v20 = v4 * (v18 >> 3);
      if (v18 < 8u)
      {
        v20 = v19;
      }

      *(result + 1) = v20;
    }
  }

  return result;
}

uint64_t sub_100381488(uint64_t result, uint64_t a2)
{
  v2 = *(result + 613);
  if (v2 <= 7)
  {
    v3 = result;
    *(result + 1124) = 17;
    v4 = a2 + 44;
    sub_10037CF90(result);
    *(v3 + 613) = 8;
    result = sub_100376458(v4, v2, 8 - v2);
    if (result)
    {
      if (v2 > 3 || !sub_100376458(v4, v2, 4 - v2))
      {
        sub_10037A948(v3, "PNG file corrupted by ASCII conversion");
      }

      sub_10037A948(v3, "Not a PNG file");
    }

    if (v2 <= 2)
    {
      *(v3 + 292) |= 0x1000u;
    }
  }

  return result;
}

uint64_t sub_100381550(uint64_t a1)
{
  *(a1 + 1124) = 33;
  sub_10037CF90(a1);
  if (v10 << 24 < 0)
  {
    sub_10037A948(a1, "PNG unsigned integer out of range");
  }

  *(a1 + 528) = bswap32(v11);
  sub_1003764B8(a1);
  sub_1003764EC(a1, &v11, 4);
  v2 = *(a1 + 528);
  v3 = v2 - 123 >= 0xFFFFFFC6 && v2 - 91 > 5;
  if (!v3 || BYTE1(v2) - 123 < 0xFFFFFFC6 || BYTE1(v2) - 91 < 6 || BYTE2(v2) - 123 < 0xFFFFFFC6 || BYTE2(v2) - 91 < 6 || HIBYTE(v2) - 123 < 0xFFFFFFC6 || HIBYTE(v2) - 91 < 6u)
  {
    sub_10037B274(a1, "invalid chunk type");
  }

  result = _byteswap_ulong(v10);
  v5 = *(a1 + 1056);
  if (v5 - 1 >= 0x7FFFFFFE)
  {
    v5 = 0x7FFFFFFFLL;
  }

  if (v2 == 1229209940)
  {
    if (*(a1 + 604))
    {
      v6 = 6;
    }

    else
    {
      v6 = 0;
    }

    v7 = ((*(a1 + 496) * *(a1 + 611)) << (*(a1 + 608) > 8u)) + v6 + 1;
    v8 = *(a1 + 500) * v7;
    if ((v8 & 0xFFFFFFFF00000000) != 0)
    {
      v8 = 0x7FFFFFFFLL;
    }

    if (v7 >= 0x7F36)
    {
      v7 = 32566;
    }

    v9 = 5 * (v8 / v7) + v8 + 11;
    if (v9 >= 0x7FFFFFFF)
    {
      v9 = 0x7FFFFFFFLL;
    }

    if (v5 <= v9)
    {
      v5 = v9;
    }
  }

  if (v5 < result)
  {
    sub_10037B274(a1, "chunk data is too large");
  }

  *(a1 + 1124) = 65;
  return result;
}

uint64_t sub_100381760(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    if (a1)
    {
      do
      {
        if (v3 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v3;
        }

        v3 -= v4;
        sub_10037CF90(a1);
        sub_1003764EC(a1, buf, v4);
      }

      while (v3);
    }

    else
    {
      v5 = a2 - 1024;
      if (a2 < 0x400)
      {
        v5 = 0;
      }

      if (a2 < 0x401)
      {
        goto LABEL_14;
      }

      v6 = ((v5 + 1023) >> 10) + 1;
      v3 = a2 - ((v6 & 0x7FFFFE) << 10);
      v7 = v6 & 0x7FFFFE;
      do
      {
        v7 -= 2;
      }

      while (v7);
      if (v6 != (v6 & 0x7FFFFE))
      {
LABEL_14:
        v8 = v3 + 1024;
        do
        {
          v8 -= 1024;
        }

        while (v8 >= 0x401);
      }
    }
  }

  v9 = *(a1 + 528);
  v10 = *(a1 + 296);
  *(a1 + 1124) = 129;
  sub_10037CF90(a1);
  if ((v9 & 0x20000000) != 0)
  {
    if ((~v10 & 0x300) == 0)
    {
      return 0;
    }
  }

  else if ((v10 & 0x800) != 0)
  {
    return 0;
  }

  if (bswap32(*buf) == *(a1 + 580))
  {
    return 0;
  }

  v12 = *(a1 + 296);
  if ((*(a1 + 531) & 0x20) != 0)
  {
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    sub_10037B274(a1, "CRC error");
  }

  if ((v12 & 0x400) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_10037B1A0(a1, "CRC error");
  return 1;
}

uint64_t sub_1003818F0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 292);
  if (v4)
  {
    sub_10037B274(a1, "out of place");
  }

  if (a3 != 13)
  {
    sub_10037B274(a1, "invalid");
  }

  *(a1 + 292) = v4 | 1;
  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 13);
  sub_100381760(a1, 0);
  if (buf << 24 < 0 || v20 << 24 < 0)
  {
    sub_10037A948(a1, "PNG unsigned integer out of range");
  }

  v6 = _byteswap_ulong(buf);
  v7 = _byteswap_ulong(v20);
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  *(a1 + 496) = v6;
  *(a1 + 500) = v7;
  *(a1 + 608) = v8;
  *(a1 + 604) = v12;
  *(a1 + 607) = v9;
  *(a1 + 980) = v11;
  *(a1 + 1040) = v10;
  v13 = 0x4010201030101uLL >> (8 * v9);
  if (v9 >= 7)
  {
    LOBYTE(v13) = 1;
  }

  *(a1 + 611) = v13;
  v14 = v13 * v8;
  *(a1 + 610) = v14;
  v15 = v14 >= 8u;
  v16 = (v14 * v6 + 7) >> 3;
  v17 = v6 * (v14 >> 3);
  if (!v15)
  {
    v17 = v16;
  }

  *(a1 + 512) = v17;
  return sub_100387868(a1, a2, v6, v7, v8, v9, v12, v10, v11);
}

uint64_t sub_100381A98(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 2) != 0)
  {
    sub_10037B274(a1, "duplicate");
  }

  if ((v4 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v6 = "out of place";
    goto LABEL_7;
  }

  *(a1 + 292) = v4 | 2;
  v5 = *(a1 + 607);
  if ((v5 & 2) != 0)
  {
    if (a3 > 0x300 || a3 % 3)
    {
      sub_100381760(a1, a3);
      if (*(a1 + 607) == 3)
      {
        sub_10037B274(a1, "invalid");
      }

      v6 = "invalid";
      goto LABEL_7;
    }

    if (v5 == 3)
    {
      v9 = a2;
      if (1 << *(a1 + 608) >= (a3 / 3u))
      {
        v10 = a3 / 3u;
      }

      else
      {
        v10 = 1 << *(a1 + 608);
      }

      if (v10 < 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = a2;
      if (a3 / 3u <= 0x100)
      {
        v10 = a3 / 3u;
      }

      else
      {
        v10 = 256;
      }

      if (v10 < 1)
      {
LABEL_26:
        sub_100381760(a1, -3 * v10 + a3);
        result = sub_100387D98(a1, v9, v18, v10);
        if (*(a1 + 600))
        {
          *(a1 + 600) = 0;
          v13 = v9;
          if (!v9)
          {
            v14 = "tRNS must be after";
            return sub_10037B50C(a1, v14);
          }
        }

        else
        {
          if (!v9)
          {
            return result;
          }

          v13 = v9;
          v15 = *(v9 + 8);
          if ((v15 & 0x10) == 0)
          {
            if ((v15 & 0x40) != 0)
            {
              goto LABEL_36;
            }

            goto LABEL_32;
          }

          *(a1 + 600) = 0;
        }

        *(v13 + 34) = 0;
        result = sub_10037B50C(a1, "tRNS must be after");
        v13 = v9;
        if ((*(v9 + 8) & 0x40) != 0)
        {
LABEL_36:
          result = sub_10037B50C(a1, "hIST must be after");
          if ((*(v9 + 8) & 0x20) == 0)
          {
            return result;
          }

          goto LABEL_37;
        }

LABEL_32:
        if ((*(v13 + 8) & 0x20) == 0)
        {
          return result;
        }

LABEL_37:
        v14 = "bKGD must be after";
        return sub_10037B50C(a1, v14);
      }
    }

    v11 = v18;
    v12 = v10;
    do
    {
      sub_10037CF90(a1);
      sub_1003764EC(a1, &buf, 3);
      *v11 = buf;
      *(v11 + 1) = v17;
      v11 += 3;
      --v12;
    }

    while (v12);
    goto LABEL_26;
  }

  sub_100381760(a1, a3);
  v6 = "ignored in grayscale PNG";
LABEL_7:

  return sub_10037B50C(a1, v6);
}

uint64_t sub_100381D8C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((~v4 & 5) != 0)
  {
    sub_10037B274(a1, "out of place");
  }

  *(a1 + 292) = v4 | 0x18;
  result = sub_100381760(a1, a3);
  if (a3)
  {

    return sub_10037B50C(a1, "invalid");
  }

  return result;
}

void sub_100381E10(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 292);
  if ((v3 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v3 & 6) != 0)
  {
    v4 = a1;
    sub_100381760(a1, a3);
    v5 = "out of place";
LABEL_8:

    sub_10037B50C(v4, v5);
    return;
  }

  if (a3 != 4)
  {
    v4 = a1;
    sub_100381760(a1, a3);
    v5 = "invalid";
    goto LABEL_8;
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 4);
  if (!sub_100381760(a1, 0))
  {
    if (buf << 24 < 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = _byteswap_ulong(buf);
    }

    sub_100376F70(a1, a1 + 1168, v8);
    sub_1003770D4(a1, a2);
  }
}

uint64_t sub_100381F44(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 292);
  if ((v3 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v3 & 6) != 0)
  {
    v4 = a1;
    sub_100381760(a1, a3);
    v5 = "out of place";
LABEL_4:

    return sub_10037B50C(v4, v5);
  }

  if (a2 && (*(a2 + 8) & 2) != 0)
  {
    v4 = a1;
    sub_100381760(a1, a3);
    v5 = "duplicate";
    goto LABEL_4;
  }

  v7 = *(a1 + 607);
  if (v7 == 3)
  {
    v8 = 8;
    if (a3 > 4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *(a1 + 611);
    v8 = *(a1 + 608);
    if (a3 > 4)
    {
LABEL_16:
      sub_10037B50C(a1, "invalid");

      return sub_100381760(a1, a3);
    }
  }

  if (v7 != a3)
  {
    goto LABEL_16;
  }

  v11 = a3;
  *buf = 16843009 * v8;
  sub_10037CF90(a1);
  sub_1003764EC(a1, buf, v11);
  result = sub_100381760(a1, 0);
  if (!result)
  {
    if (!a3 || (buf[0] - 1) < v8 && (a3 == 1 || (buf[1] - 1) < v8 && (a3 == 2 || (buf[2] - 1) < v8 && (a3 == 3 || (buf[3] - 1) < v8))))
    {
      v15 = buf[0];
      if ((*(a1 + 607) & 2) != 0)
      {
        v16 = &buf[3];
        v17 = buf[1];
        v18 = buf[2];
      }

      else
      {
        v16 = &buf[1];
        *(a1 + 723) = buf[0];
        v17 = v15;
        v18 = v15;
      }

      v19 = *v16;
      *(a1 + 720) = v15;
      *(a1 + 721) = v17;
      *(a1 + 722) = v18;
      *(a1 + 724) = v19;
      return sub_100387ECC(a1, a2, a1 + 720);
    }

    else
    {
      return sub_10037B50C(a1, "invalid");
    }
  }

  return result;
}

void sub_1003821C4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    sub_100381760(a1, a3);
    v5 = "out of place";
    v6 = a1;

LABEL_5:
    sub_10037B50C(v6, v5);
    return;
  }

  if (a3 != 32)
  {
    sub_100381760(a1, a3);
    v5 = "invalid";
    v6 = a1;

    goto LABEL_5;
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 32);
  if (sub_100381760(a1, 0))
  {
    return;
  }

  if (buf << 24 < 0)
  {
    v8 = -1;
    v31 = -1;
    v9 = v34 << 24;
    if ((v9 & 0x80000000) == 0)
    {
LABEL_10:
      v10 = v37 | (v35 << 16) | (v36 << 8) | v9;
      v32 = v10;
      v11 = v38 << 24;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v8 = _byteswap_ulong(buf);
    v31 = v8;
    v9 = v34 << 24;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  v10 = -1;
  v32 = -1;
  v11 = v38 << 24;
  if ((v11 & 0x80000000) == 0)
  {
LABEL_11:
    v12 = v41 | (v39 << 16) | (v40 << 8) | v11;
    v25 = v12;
    v13 = v42 << 24;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = -1;
  v25 = -1;
  v13 = v42 << 24;
  if ((v13 & 0x80000000) == 0)
  {
LABEL_12:
    v14 = v45 | (v43 << 16) | (v44 << 8) | v13;
    v26 = v14;
    v15 = v46 << 24;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = -1;
  v26 = -1;
  v15 = v46 << 24;
  if ((v15 & 0x80000000) == 0)
  {
LABEL_13:
    v16 = v49 | (v47 << 16) | (v48 << 8) | v15;
    v27 = v16;
    v17 = v50 << 24;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = -1;
  v27 = -1;
  v17 = v50 << 24;
  if ((v17 & 0x80000000) == 0)
  {
LABEL_14:
    v18 = v53 | (v51 << 16) | (v52 << 8) | v17;
    v28 = v18;
    v19 = v54 << 24;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v20 = -1;
    v29 = -1;
    v21 = v58 << 24;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_25:
  v18 = -1;
  v28 = -1;
  v19 = v54 << 24;
  if (v19 < 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  v20 = v57 | (v55 << 16) | (v56 << 8) | v19;
  v29 = v20;
  v21 = v58 << 24;
  if ((v21 & 0x80000000) == 0)
  {
LABEL_16:
    v22 = v61 | (v59 << 16) | (v60 << 8) | v21;
    goto LABEL_28;
  }

LABEL_27:
  v22 = -1;
LABEL_28:
  v30 = v22;
  if (v8 == -1 || v10 == -1 || v12 == -1 || v14 == -1 || v16 == -1 || v18 == -1 || v20 == -1 || v22 == -1)
  {
    v24 = "invalid values";
  }

  else
  {
    v23 = *(a1 + 1242);
    if (v23 < 0)
    {
      return;
    }

    if ((v23 & 0x10) == 0)
    {
      *(a1 + 1242) = v23 | 0x10;
      sub_1003771B4(a1, a1 + 1168, &v25, 1);
      sub_1003770D4(a1, a2);
      return;
    }

    *(a1 + 1242) = v23 | 0x8000;
    sub_1003770D4(a1, a2);
    v24 = "duplicate";
  }

  sub_10037B50C(a1, v24);
}

void sub_100382594(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    sub_100381760(a1, a3);
    v5 = "out of place";
    v6 = a1;

LABEL_5:
    sub_10037B50C(v6, v5);
    return;
  }

  if (a3 != 1)
  {
    sub_100381760(a1, a3);
    v5 = "invalid";
    v6 = a1;

    goto LABEL_5;
  }

  buf = 0;
  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 1);
  if (!sub_100381760(a1, 0))
  {
    v8 = *(a1 + 1242);
    if ((v8 & 0x80000000) == 0)
    {
      if ((v8 & 4) != 0)
      {
        *(a1 + 1242) = v8 | 0x8000;
        sub_1003770D4(a1, a2);
        sub_10037B50C(a1, "too many profiles");
      }

      else
      {
        sub_100377C14(a1, a1 + 1168, buf);
        sub_1003770D4(a1, a2);
      }
    }
  }
}

void sub_1003826FC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v34 = a3;
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    sub_100381760(a1, a3);
    v5 = "out of place";
LABEL_6:

    sub_10037B50C(a1, v5);
    return;
  }

  if (a3 <= 0xD)
  {
    sub_100381760(a1, a3);
    v5 = "too short";
    goto LABEL_6;
  }

  v6 = *(a1 + 1242);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v6 & 4) != 0)
    {
      v12 = "too many profiles";
LABEL_20:
      sub_100381760(a1, v34);
LABEL_21:
      *(a1 + 1242) |= 0x8000u;
      sub_1003770D4(a1, a2);
      if (!v12)
      {
        return;
      }

      v11 = a1;
      v10 = v12;
      goto LABEL_23;
    }

    if (a3 >= 0x51)
    {
      v8 = 81;
    }

    else
    {
      v8 = a3;
    }

    LODWORD(v9) = a3;
    sub_10037CF90(a1);
    sub_1003764EC(a1, __src, v8);
    v34 = v9 - v8;
    if ((v9 - v8) < 0xB)
    {
      sub_100381760(a1, v9 - v8);
      v10 = "too short";
      v11 = a1;
LABEL_23:
      sub_10037B50C(v11, v10);
      return;
    }

    v13 = 0;
    if (v9 >= 0x50)
    {
      v9 = 80;
    }

    else
    {
      v9 = v9;
    }

    while (__src[v13])
    {
      if (v9 == ++v13)
      {
        goto LABEL_32;
      }
    }

    LODWORD(v9) = v13;
LABEL_32:
    if ((v9 - 1) > 0x4E)
    {
      v12 = "bad keyword";
      goto LABEL_20;
    }

    v14 = v9 + 1;
    if (v14 >= v8 || __src[v14])
    {
      v12 = "bad compression method";
      goto LABEL_20;
    }

    if (sub_100382C74(a1, 1766015824))
    {
      v12 = *(a1 + 360);
      goto LABEL_20;
    }

    v15 = (v9 + 2);
    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v33 = 132;
    *(a1 + 312) = &__src[v15];
    *(a1 + 320) = v8 - v15;
    sub_100382DEC(a1, v35, &v34, &v36, &v33, 0);
    if (v33)
    {
      goto LABEL_40;
    }

    v16 = bswap32(v36);
    if (!sub_1003781A4(a1, a1 + 1168, __src, v16) || !sub_10037820C(a1, a1 + 1168, __src, v16, &v36, *(a1 + 607)))
    {
      goto LABEL_49;
    }

    v17 = v44;
    v18 = BYTE1(v44);
    v19 = BYTE2(v44);
    v20 = HIBYTE(v44);
    v21 = sub_100382F98(a1, v16, 2);
    if (!v21)
    {
      v12 = "out of memory";
      goto LABEL_50;
    }

    *v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v40;
    v21[3] = v39;
    v21[4] = v24;
    v21[1] = v22;
    v21[2] = v23;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    *(v21 + 32) = v44;
    v21[6] = v26;
    v21[7] = v27;
    v21[5] = v25;
    v28 = 12 * ((v17 << 24) | (v18 << 16) | (v19 << 8) | v20);
    v32 = v21;
    v33 = v28;
    v29 = v21 + 132;
    sub_100382DEC(a1, v35, &v34, v21 + 132, &v33, 0);
    if (v33)
    {
      goto LABEL_40;
    }

    if (!sub_10037854C(a1, a1 + 1168, __src, v16, v32))
    {
LABEL_49:
      v12 = 0;
      goto LABEL_50;
    }

    v33 = v16 - v28 - 132;
    sub_100382DEC(a1, v35, &v34, &v29[v28], &v33, 1);
    v30 = v34;
    if (v34)
    {
      if ((*(a1 + 298) & 0x10) == 0)
      {
        v12 = "extra compressed data";
        goto LABEL_50;
      }

      if (!v33)
      {
        sub_10037B1A0(a1, "extra compressed data");
        goto LABEL_56;
      }
    }

    else if (!v33)
    {
LABEL_56:
      sub_100381760(a1, v30);
      sub_100378650(a1, a1 + 1168, v32, *(a1 + 408));
      if (a2)
      {
        sub_100376A18(a1, a2, 0x10u, 0);
        v31 = sub_10037BB9C(a1, v14);
        *(a2 + 128) = v31;
        if (!v31)
        {
          *(a1 + 1242) |= 0x8000u;
          sub_1003770D4(a1, a2);
          *(a1 + 304) = 0;
          v12 = "out of memory";
          goto LABEL_21;
        }

        memcpy(v31, __src, v14);
        *(a2 + 144) = v16;
        *(a2 + 136) = v32;
        *(a1 + 1104) = 0;
        *(a2 + 300) |= 0x10u;
        *(a2 + 8) |= 0x1000u;
        sub_1003770D4(a1, a2);
      }

      *(a1 + 304) = 0;
      return;
    }

LABEL_40:
    v12 = *(a1 + 360);
LABEL_50:
    *(a1 + 304) = 0;
    goto LABEL_20;
  }

  sub_100381760(a1, a3);
}

uint64_t sub_100382C74(uint64_t a1, int a2)
{
  v4 = *(a1 + 304);
  if (v4)
  {
    *v8 = bswap32(v4);
    sub_10037A9D8(v8, 0x40uLL, 4uLL, " using zstream");
    sub_10037B1A0(a1, v8);
    *(a1 + 304) = 0;
  }

  if ((*(a1 + 896) & 0xC) == 0xC)
  {
    v5 = 15;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 616) = (*(a1 + 896) & 0xC) != 12;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  if ((*(a1 + 296) & 2) != 0)
  {
    v6 = inflateReset2((a1 + 312), v5);
    if ((~*(a1 + 896) & 0x300) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = inflateInit2_((a1 + 312), v5, "1.2.12", 112);
    if (v6)
    {
      if ((~*(a1 + 896) & 0x300) != 0)
      {
        goto LABEL_9;
      }

LABEL_15:
      v6 = inflateValidate((a1 + 312), 0);
      if (v6)
      {
        goto LABEL_10;
      }

LABEL_16:
      *(a1 + 304) = a2;
      return v6;
    }

    *(a1 + 296) |= 2u;
    if ((~*(a1 + 896) & 0x300) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_9:
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_10:
  sub_100376F34(a1, v6);
  return v6;
}

uint64_t sub_100382DEC(uint64_t result, Bytef *a2, unsigned int *a3, uint64_t a4, uint64_t *a5, int a6)
{
  v6 = result;
  if (*(result + 304) != *(result + 528))
  {
    *(result + 360) = "zstream unclaimed";
    return result;
  }

  *(result + 336) = a4;
  *(result + 344) = 0;
  if (a6)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  LODWORD(v11) = 1024;
  while (1)
  {
    if (*(v6 + 320))
    {
      v12 = 0;
      LODWORD(v13) = *(v6 + 344);
      if (v13)
      {
        goto LABEL_12;
      }

LABEL_8:
      if (*a5 >= 0xFFFFFFFF)
      {
        v13 = 0xFFFFFFFFLL;
      }

      else
      {
        v13 = *a5;
      }

      *a5 -= v13;
      *(v6 + 344) = v13;
      goto LABEL_12;
    }

    v17 = *a3;
    if (v11 >= *a3)
    {
      v11 = v17;
    }

    else
    {
      v11 = v11;
    }

    *a3 = v17 - v11;
    v12 = v11 == 0;
    if (v11)
    {
      sub_10037CF90(v6);
      sub_1003764EC(v6, a2, v11);
    }

    *(v6 + 312) = a2;
    *(v6 + 320) = v11;
    LODWORD(v13) = *(v6 + 344);
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_12:
    v14 = *a3 ? 0 : v10;
    if (*(v6 + 616) && !v12)
    {
      break;
    }

LABEL_21:
    v16 = inflate((v6 + 312), v14);
    if (v16)
    {
      v18 = v16;
      LODWORD(v13) = *(v6 + 344);
      goto LABEL_35;
    }

    if (!*a5)
    {
      LODWORD(v13) = *(v6 + 344);
      if (!v13)
      {
        v18 = 0;
        goto LABEL_35;
      }
    }
  }

  if ((**(v6 + 312) & 0x80000000) == 0)
  {
    *(v6 + 616) = 0;
    goto LABEL_21;
  }

  *(v6 + 360) = "invalid window size (libpng)";
  v18 = -3;
LABEL_35:
  *a5 += v13;
  *(v6 + 344) = 0;

  return sub_100376F34(v6, v18);
}

void *sub_100382F98(uint64_t a1, size_t __size, int a3)
{
  v6 = *(a1 + 1104);
  if (v6)
  {
    if (*(a1 + 1112) >= __size)
    {
      return v6;
    }

    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    sub_10037BAB4(a1, v6);
  }

  v7 = sub_10037BB9C(a1, __size);
  if (v7)
  {
    v6 = v7;
    bzero(v7, __size);
    *(a1 + 1104) = v6;
    *(a1 + 1112) = __size;
    return v6;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      sub_10037B274(a1, "insufficient memory to read chunk");
    }

    sub_10037B1A0(a1, "insufficient memory to read chunk");
  }

  return 0;
}

void sub_100383050(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 1052);
  if (v5)
  {
    v6 = v5 - 1;
    if (!v6)
    {
LABEL_5:

      sub_100381760(a1, a3);
      return;
    }

    *(a1 + 1052) = v6;
    if (v6 == 1)
    {
      sub_10037AB5C(a1, "No space in chunk cache for sPLT");
      goto LABEL_5;
    }
  }

  v7 = *(a1 + 292);
  if ((v7 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v7 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v12 = "out of place";
    goto LABEL_28;
  }

  v9 = a3 + 1;
  v10 = *(a1 + 1104);
  if (!v10)
  {
LABEL_13:
    v11 = sub_10037BB9C(a1, a3 + 1);
    if (v11)
    {
      v10 = v11;
      bzero(v11, a3 + 1);
      *(a1 + 1104) = v10;
      *(a1 + 1112) = v9;
      goto LABEL_15;
    }

    sub_100381760(a1, a3);
    v12 = "out of memory";
LABEL_28:

    sub_10037B50C(a1, v12);
    return;
  }

  if (*(a1 + 1112) < v9)
  {
    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    sub_10037BAB4(a1, v10);
    goto LABEL_13;
  }

LABEL_15:
  sub_10037CF90(a1);
  sub_1003764EC(a1, v10, a3);
  if (sub_100381760(a1, 0))
  {
    return;
  }

  v23 = 0u;
  *v24 = 0u;
  v10[a3] = 0;
  v13 = v10;
  do
  {
    v14 = v13;
  }

  while (*v13++);
  if (a3 < 2 || v13 > &v10[a3 - 2])
  {
    v19 = "malformed sPLT chunk";
    goto LABEL_32;
  }

  BYTE8(v23) = v14[1];
  if (BYTE8(v23) == 8)
  {
    v16 = 6;
  }

  else
  {
    v16 = 10;
  }

  v17 = v10 - v14 + a3 - 2;
  v18 = v17 / v16;
  if (v17 % v16)
  {
    v19 = "sPLT chunk has bad length";
LABEL_32:

    sub_10037AB5C(a1, v19);
    return;
  }

  LODWORD(v24[1]) = v17 / v16;
  v20 = sub_10037BD48(a1, 10 * (v17 / v16));
  v24[0] = v20;
  if (!v20)
  {
    v19 = "sPLT chunk requires too much memory";
    goto LABEL_32;
  }

  if (v16 <= v17)
  {
    v21 = v20 + 2;
    v22 = 1;
    if (BYTE8(v23) == 8)
    {
      do
      {
        *(v21 - 2) = v13[v22];
        *(v21 - 1) = v13[v22 + 1];
        *v21 = v13[v22 + 2];
        v21[1] = v13[v22 + 3];
        v21[2] = bswap32(*&v13[v22 + 4]) >> 16;
        v21 += 5;
        v22 += 6;
        --v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        *(v21 - 2) = bswap32(*&v13[v22]) >> 16;
        *(v21 - 1) = bswap32(*&v13[v22 + 2]) >> 16;
        *v21 = bswap32(*&v13[v22 + 4]) >> 16;
        v21[1] = bswap32(*&v13[v22 + 6]) >> 16;
        v21[2] = bswap32(*&v13[v22 + 8]) >> 16;
        v21 += 5;
        v22 += 10;
        --v18;
      }

      while (v18);
    }
  }

  *&v23 = v10;
  sub_1003883C8(a1, a2, &v23, 1);
  sub_10037BAB4(a1, v24[0]);
}

void sub_1003833AC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    goto LABEL_17;
  }

  if (a2 && (*(a2 + 8) & 0x10) != 0)
  {
    sub_100381760(a1, a3);
    v7 = "duplicate";
    goto LABEL_18;
  }

  v5 = *(a1 + 607);
  if (v5 == 3)
  {
    if ((v4 & 2) != 0)
    {
      if (a3 > 0x100 || a3 - 1 >= *(a1 + 592))
      {
        sub_100381760(a1, a3);
        v7 = "invalid";
        goto LABEL_18;
      }

      v6 = a2;
      v8 = a3;
      v9 = a3;
      sub_10037CF90(a1);
      sub_1003764EC(a1, buf, v8);
      *(a1 + 600) = v9;
      if (sub_100381760(a1, 0))
      {
        goto LABEL_14;
      }

LABEL_25:
      sub_10038827C(a1, v6, buf, *(a1 + 600), a1 + 744);
      return;
    }

LABEL_17:
    sub_100381760(a1, a3);
    v7 = "out of place";
    goto LABEL_18;
  }

  if (v5 == 2)
  {
    if (a3 != 6)
    {
      goto LABEL_15;
    }

    v6 = a2;
    sub_10037CF90(a1);
    sub_1003764EC(a1, buf, 6);
    *(a1 + 600) = 1;
    *(a1 + 746) = bswap32(*buf) >> 16;
    *(a1 + 748) = bswap32(v11) >> 16;
    *(a1 + 750) = bswap32(v12) >> 16;
    if (sub_100381760(a1, 0))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (!*(a1 + 607))
  {
    if (a3 == 2)
    {
      v6 = a2;
      sub_10037CF90(a1);
      sub_1003764EC(a1, buf, 2);
      *(a1 + 600) = 1;
      *(a1 + 752) = bswap32(*buf) >> 16;
      if (!sub_100381760(a1, 0))
      {
        goto LABEL_25;
      }

LABEL_14:
      *(a1 + 600) = 0;
      return;
    }

LABEL_15:
    sub_100381760(a1, a3);
    sub_10037B50C(a1, "invalid");
    return;
  }

  sub_100381760(a1, a3);
  v7 = "invalid with alpha channel";
LABEL_18:

  sub_10037B50C(a1, v7);
}

uint64_t sub_1003836D0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 292);
  if ((v3 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v3 & 4) == 0)
  {
    v4 = *(a1 + 607);
    if ((v3 & 2) != 0 || v4 != 3)
    {
      if (a2 && (*(a2 + 8) & 0x20) != 0)
      {
        v5 = a1;
        sub_100381760(a1, a3);
        v6 = "duplicate";
        goto LABEL_6;
      }

      if ((v4 & 2) != 0)
      {
        v8 = 6;
      }

      else
      {
        v8 = 2;
      }

      if (v4 == 3)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      if (v9 != a3)
      {
        v5 = a1;
        sub_100381760(a1, a3);
        v6 = "invalid";
        goto LABEL_6;
      }

      v21 = 0;
      v20 = 0;
      v11 = a3;
      sub_10037CF90(a1);
      sub_1003764EC(a1, buf, v11);
      result = sub_100381760(a1, 0);
      if (result)
      {
        return result;
      }

      v13 = &v20 + 2;
      v14 = &v21;
      v15 = *(a1 + 607);
      if (v15 == 3)
      {
        LOBYTE(v20) = buf[0];
        v16 = a2;
        if (a2 && *(a2 + 32))
        {
          if (*(a2 + 32) <= buf[0])
          {
            return sub_10037B50C(a1, "invalid index");
          }

          v17 = 0;
          v18 = (*(a1 + 584) + 3 * buf[0]);
          WORD1(v20) = *v18;
          WORD2(v20) = v18[1];
          LOWORD(v19) = v18[2];
          goto LABEL_31;
        }

        LOWORD(v19) = 0;
        v17 = 0;
        HIDWORD(v20) = 0;
      }

      else
      {
        LOBYTE(v20) = 0;
        v19 = bswap32(*buf) >> 16;
        v16 = a2;
        if ((v15 & 2) != 0)
        {
          v17 = 0;
          WORD1(v20) = v19;
          WORD2(v20) = bswap32(v23) >> 16;
          v19 = bswap32(v24) >> 16;
LABEL_31:
          v13 = &v20 + 6;
          goto LABEL_32;
        }

        v14 = &v20 + 1;
        v13 = &v20 + 4;
        v21 = v19;
        HIWORD(v20) = v19;
        v17 = v19;
      }

LABEL_32:
      *v13 = v19;
      *v14 = v17;
      return sub_100387670(a1, v16, &v20);
    }
  }

  v5 = a1;
  sub_100381760(a1, a3);
  v6 = "out of place";
LABEL_6:

  return sub_10037B50C(v5, v6);
}

void sub_100383914(_BYTE *a1, uint64_t a2, size_t __size)
{
  if ((a1[292] & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if (__size <= 1)
  {
    sub_100381760(a1, __size);
    v4 = "too short";
LABEL_15:

    sub_10037B50C(a1, v4);
    return;
  }

  if (!a2 || (*(a2 + 10) & 1) != 0)
  {
    sub_100381760(a1, __size);
    v4 = "duplicate";
    goto LABEL_15;
  }

  *(a2 + 300) |= 0x8000u;
  v6 = __size;
  v7 = __size;
  v8 = sub_10037BD48(a1, __size);
  *(a2 + 248) = v8;
  if (!v8)
  {
    sub_100381760(a1, v6);
    v4 = "out of memory";
    goto LABEL_15;
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 1);
  **(a2 + 248) = buf;
  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 1);
  v9 = buf;
  *(*(a2 + 248) + 1) = buf;
  if ((v9 & 0xFFFFFFFB) != 0x49 && **(a2 + 248) != v9)
  {
    sub_100381760(a1, v6);
    sub_10037B50C(a1, "incorrect byte-order specifier");
    goto LABEL_20;
  }

  if (v6 != 2)
  {
    v10 = 2;
    do
    {
      sub_10037CF90(a1);
      sub_1003764EC(a1, &buf, 1);
      *(*(a2 + 248) + v10++) = buf;
    }

    while (v7 != v10);
  }

  if (!sub_100381760(a1, 0))
  {
    sub_10038769C(a1, a2, v6, *(a2 + 248));
LABEL_20:
    sub_10037BAB4(a1, *(a2 + 248));
    *(a2 + 248) = 0;
  }
}

void *sub_100383B20(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 292) & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((*(a1 + 292) & 6) == 2)
  {
    if (a2 && (*(a2 + 8) & 0x40) != 0)
    {
      sub_100381760(a1, a3);
      v8 = "duplicate";
    }

    else
    {
      if (a3 <= 0x201)
      {
        v4 = a3 >> 1;
        if (v4 == *(a1 + 592))
        {
          if (a3 >= 2)
          {
            v6 = v10;
            do
            {
              sub_10037CF90(a1);
              sub_1003764EC(a1, buf, 2);
              *v6++ = bswap32(*buf) >> 16;
              --v4;
            }

            while (v4);
          }

          result = sub_100381760(a1, 0);
          if (!result)
          {
            return sub_100387774(a1, a2, v10);
          }

          return result;
        }
      }

      sub_100381760(a1, a3);
      v8 = "invalid";
    }
  }

  else
  {
    sub_100381760(a1, a3);
    v8 = "out of place";
  }

  return sub_10037B50C(a1, v8);
}

uint64_t sub_100383CEC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v7 = "out of place";
    v8 = a1;

    return sub_10037B50C(v8, v7);
  }

  if (a2 && (*(a2 + 8) & 0x80) != 0)
  {
    sub_100381760(a1, a3);
    v7 = "duplicate";
    v8 = a1;

    return sub_10037B50C(v8, v7);
  }

  if (a3 != 9)
  {
    sub_100381760(a1, a3);
    v7 = "invalid";
    v8 = a1;

    return sub_10037B50C(v8, v7);
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, buf, 9);
  result = sub_100381760(a1, 0);
  if (!result)
  {
    return sub_100387D78(a1, a2, bswap32(*buf), bswap32(v10), v11);
  }

  return result;
}

uint64_t sub_100383EB4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v11 = "out of place";
    v12 = a1;

    return sub_10037B50C(v12, v11);
  }

  if (a2 && (*(a2 + 9) & 1) != 0)
  {
    sub_100381760(a1, a3);
    v11 = "duplicate";
    v12 = a1;

    return sub_10037B50C(v12, v11);
  }

  if (a3 != 9)
  {
    sub_100381760(a1, a3);
    v11 = "invalid";
    v12 = a1;

    return sub_10037B50C(v12, v11);
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 9);
  result = sub_100381760(a1, 0);
  if (result)
  {
    return result;
  }

  if (buf < 0)
  {
    v7 = -((2147418112 * BYTE1(buf) - ((buf << 24) | (BYTE2(buf) << 8) | HIBYTE(buf))) & 0x7FFFFFFF);
    v8 = a2;
    v9 = v14;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v10 = -((2147418112 * v15 - ((v9 << 24) | (v16 << 8) | v17)) & 0x7FFFFFFF);
    return sub_100387938(a1, v8, v7, v10, v18);
  }

  v7 = _byteswap_ulong(buf);
  v8 = a2;
  v9 = v14;
  if (v14 < 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v10 = (v9 << 24) | (v15 << 16) | (v16 << 8) | v17;
  return sub_100387938(a1, v8, v7, v10, v18);
}

void sub_100384128(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v13 = "out of place";
LABEL_32:

    sub_10037B50C(a1, v13);
    return;
  }

  if (a2 && (*(a2 + 9) & 4) != 0)
  {
    sub_100381760(a1, a3);
    v13 = "duplicate";
    goto LABEL_32;
  }

  v6 = a3 + 1;
  v7 = *(a1 + 1104);
  if (v7)
  {
    if (*(a1 + 1112) >= v6)
    {
      goto LABEL_10;
    }

    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    v8 = v7;
    v9 = a3;
    sub_10037BAB4(a1, v8);
    a3 = v9;
  }

  v10 = a3;
  v11 = sub_10037BB9C(a1, v6);
  if (!v11)
  {
    sub_100381760(a1, v10);
    goto LABEL_19;
  }

  v7 = v11;
  bzero(v11, v6);
  *(a1 + 1104) = v7;
  *(a1 + 1112) = v6;
  a3 = v10;
LABEL_10:
  v12 = a3;
  sub_10037CF90(a1);
  sub_1003764EC(a1, v7, v12);
  if (sub_100381760(a1, 0))
  {
    return;
  }

  v14 = &v7[v12];
  v7[v12] = 0;
  v15 = (v7 + 10);
  v16 = v12 + 1;
  do
  {
    v17 = *(v15++ - 10);
    --v16;
  }

  while (v17);
  if (v16 <= 12)
  {
    v13 = "invalid";
    goto LABEL_32;
  }

  if (*(v15 - 10) < 0)
  {
    v18 = -((2147418112 * *(v15 - 9) - ((*(v15 - 10) << 24) | (*(v15 - 8) << 8) | *(v15 - 7))) & 0x7FFFFFFF);
    v19 = *(v15 - 6);
    if ((*(v15 - 6) & 0x80000000) == 0)
    {
LABEL_22:
      v20 = (v19 << 24) | (*(v15 - 5) << 16) | (*(v15 - 4) << 8) | *(v15 - 3);
      v21 = *(v15 - 2);
      v22 = *(v15 - 1);
      if (*(v15 - 2))
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v18 = _byteswap_ulong(*(v15 - 10));
    v19 = *(v15 - 6);
    if ((*(v15 - 6) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  v20 = -((2147418112 * *(v15 - 5) - ((v19 << 24) | (*(v15 - 4) << 8) | *(v15 - 3))) & 0x7FFFFFFF);
  v21 = *(v15 - 2);
  v22 = *(v15 - 1);
  if (*(v15 - 2))
  {
    goto LABEL_27;
  }

LABEL_26:
  if (v22 != 2)
  {
LABEL_31:
    v13 = "invalid parameter count";
    goto LABEL_32;
  }

LABEL_27:
  if (v21 - 1 <= 1 && v22 != 3 || v21 == 3 && v22 != 4)
  {
    goto LABEL_31;
  }

  v23 = v15 - 1;
  if (v21 >= 4)
  {
    sub_10037B50C(a1, "unrecognized equation type");
  }

    ;
  }

  v25 = sub_10037BD48(a1, 8 * v22);
  if (!v25)
  {
LABEL_19:
    v13 = "out of memory";
    goto LABEL_32;
  }

  if (v22)
  {
    v26 = 0;
    while (1)
    {
      v25[v26] = ++v23;
      if (v23 > v14)
      {
        break;
      }

      while (*v23)
      {
        if (++v23 > v14)
        {
          goto LABEL_49;
        }
      }

      if (++v26 == v22)
      {
        goto LABEL_46;
      }
    }

LABEL_49:
    sub_10037BAB4(a1, v25);
    v13 = "invalid data";
    goto LABEL_32;
  }

LABEL_46:
  v27 = v7;
  v28 = v25;
  sub_100387958(a1, a2, v27, v18, v20, v21, v22, v15, v25);

  sub_10037BAB4(a1, v28);
}

void *sub_1003844D4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v5 = "out of place";
    goto LABEL_16;
  }

  if (a2 && (*(a2 + 9) & 0x40) != 0)
  {
    sub_100381760(a1, a3);
    v5 = "duplicate";
    goto LABEL_16;
  }

  if (a3 <= 3)
  {
    sub_100381760(a1, a3);
    v5 = "invalid";
LABEL_16:

    return sub_10037B50C(a1, v5);
  }

  v7 = a3 + 1;
  v8 = *(a1 + 1104);
  if (v8)
  {
    if (*(a1 + 1112) >= v7)
    {
LABEL_13:
      v13 = a3;
      sub_10037CF90(a1);
      sub_1003764EC(a1, v8, v13);
      v8[v13] = 0;
      result = sub_100381760(a1, 0);
      if (result)
      {
        return result;
      }

      if (*v8 - 1 < 2)
      {
        v19 = 1;
        v18 = 0;
        if (sub_100378D28(v8, v13, &v18, &v19) && (v15 = v19, v19 < v13) && (v16 = v19 + 1, ++v19, !v8[v15]))
        {
          if ((v18 & 0x188) == 0x108)
          {
            v18 = 0;
            if (sub_100378D28(v8, v13, &v18, &v19) && v19 == v13)
            {
              if ((v18 & 0x188) == 0x108)
              {
                return sub_100387BEC(a1, a2, *v8, v8 + 1, &v8[v16]);
              }

              v17 = "non-positive height";
            }

            else
            {
              v17 = "bad height format";
            }
          }

          else
          {
            v17 = "non-positive width";
          }
        }

        else
        {
          v17 = "bad width format";
        }

        return sub_10037B50C(a1, v17);
      }

      v5 = "invalid unit";
      goto LABEL_16;
    }

    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    v9 = v8;
    v10 = a3;
    sub_10037BAB4(a1, v9);
    a3 = v10;
  }

  v11 = a3;
  v12 = sub_10037BB9C(a1, v7);
  if (v12)
  {
    v8 = v12;
    bzero(v12, v7);
    *(a1 + 1104) = v8;
    *(a1 + 1112) = v7;
    a3 = v11;
    goto LABEL_13;
  }

  sub_10037B50C(a1, "out of memory");

  return sub_100381760(a1, v11);
}

uint64_t sub_1003847B0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if (a2 && (*(a2 + 9) & 2) != 0)
  {
    sub_100381760(a1, a3);
    v7 = "duplicate";
    v8 = a1;

    return sub_10037B50C(v8, v7);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 292) = v4 | 8;
  }

  if (a3 != 7)
  {
    sub_100381760(a1, a3);
    v7 = "invalid";
    v8 = a1;

    return sub_10037B50C(v8, v7);
  }

  v9 = 0;
  sub_10037CF90(a1);
  sub_1003764EC(a1, buf, 7);
  result = sub_100381760(a1, 0);
  if (!result)
  {
    BYTE6(v9) = v12;
    *(&v9 + 2) = v11;
    LOWORD(v9) = bswap32(*buf) >> 16;
    return sub_100388200(a1, a2, &v9);
  }

  return result;
}

uint64_t sub_1003848F8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 1052);
  if (v5)
  {
    v6 = v5 - 1;
    if (!v6)
    {

      return sub_100381760(a1, a3);
    }

    *(a1 + 1052) = v6;
    if (v6 == 1)
    {
      sub_100381760(a1, a3);
      v8 = "no space in chunk cache";
LABEL_26:

      return sub_10037B50C(a1, v8);
    }
  }

  v9 = *(a1 + 292);
  if ((v9 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v9 & 4) != 0)
  {
    *(a1 + 292) = v9 | 8;
  }

  v11 = a3 + 1;
  v12 = *(a1 + 1104);
  if (v12)
  {
    if (*(a1 + 1112) >= v11)
    {
      goto LABEL_16;
    }

    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    sub_10037BAB4(a1, v12);
  }

  v13 = sub_10037BB9C(a1, a3 + 1);
  if (!v13)
  {
    sub_10037B1A0(a1, "insufficient memory to read chunk");
    v8 = "out of memory";
    goto LABEL_26;
  }

  v12 = v13;
  bzero(v13, a3 + 1);
  *(a1 + 1104) = v12;
  *(a1 + 1112) = v11;
LABEL_16:
  sub_10037CF90(a1);
  sub_1003764EC(a1, v12, a3);
  result = sub_100381760(a1, 0);
  if (!result)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v12[a3] = 0;
    v14 = v12 - 1;
    v15 = a3 + 1;
    do
    {
      v16 = *++v14;
      --v15;
    }

    while (v16);
    LODWORD(v18) = -1;
    v17 = v15 ? v14 + 1 : v14;
    v21 = 0;
    v20 = 0uLL;
    *(&v18 + 1) = v12;
    *&v19 = v17;
    *(&v19 + 1) = strlen(v17);
    result = sub_100387EF8(a1, a2, &v18, 1);
    if (result)
    {
      return sub_10037AB5C(a1, "Insufficient memory to process text chunk");
    }
  }

  return result;
}

uint64_t sub_100384B14(uint64_t a1, uint64_t a2, size_t __size)
{
  v3 = __size;
  v5 = *(a1 + 1052);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5 - 1;
  if (!v6)
  {

    return sub_100381760(a1, __size);
  }

  *(a1 + 1052) = v6;
  if (v6 != 1)
  {
LABEL_8:
    v9 = *(a1 + 292);
    if ((v9 & 1) == 0)
    {
      sub_10037B274(a1, "missing IHDR");
    }

    if ((v9 & 4) != 0)
    {
      *(a1 + 292) = v9 | 8;
    }

    v11 = (a1 + 1104);
    v12 = *(a1 + 1104);
    if (v12)
    {
      if (*(a1 + 1112) >= __size)
      {
        goto LABEL_16;
      }

      *v11 = 0;
      *(a1 + 1112) = 0;
      sub_10037BAB4(a1, v12);
    }

    v13 = sub_10037BB9C(a1, v3);
    if (!v13)
    {
      sub_100381760(a1, v3);
      v8 = "out of memory";
      goto LABEL_27;
    }

    v12 = v13;
    bzero(v13, v3);
    *(a1 + 1104) = v12;
    *(a1 + 1112) = v3;
LABEL_16:
    sub_10037CF90(a1);
    sub_1003764EC(a1, v12, v3);
    result = sub_100381760(a1, 0);
    if (result)
    {
      return result;
    }

    if (!v3)
    {
      goto LABEL_23;
    }

    v14 = 0;
    while (*(v12 + v14))
    {
      if (v3 == ++v14)
      {
        LODWORD(v14) = v3;
        break;
      }
    }

    if ((v14 - 80) >= 0xFFFFFFB1)
    {
      if (v14 + 3 <= v3)
      {
        v16 = v14;
        if (*(v12 + v14 + 1))
        {
          v15 = "unknown compression type";
        }

        else
        {
          v20 = -1;
          result = sub_100384DB0(a1, v3, v14 + 2, &v20);
          if (result == 1)
          {
            v19[0] = 0;
            v17 = *v11;
            if (*v11)
            {
              v18 = v20;
              *(v17 + v20 + v16 + 2) = 0;
              v19[1] = v17;
              v19[2] = v17 + v16 + 2;
              v19[3] = v18;
              memset(&v19[4], 0, 24);
              result = sub_100387EF8(a1, a2, v19, 1);
              if (result)
              {
                v15 = "insufficient memory";
              }

              else
              {
                v15 = 0;
              }
            }

            else
            {
              v15 = "Read failure in png_handle_zTXt";
            }
          }

          else
          {
            v15 = *(a1 + 360);
          }

          if (!v15)
          {
            return result;
          }
        }
      }

      else
      {
        v15 = "truncated";
      }
    }

    else
    {
LABEL_23:
      v15 = "bad keyword";
    }

    return sub_10037B50C(a1, v15);
  }

  sub_100381760(a1, __size);
  v8 = "no space in chunk cache";
LABEL_27:

  return sub_10037B50C(a1, v8);
}

uint64_t sub_100384DB0(uint64_t a1, int a2, unsigned int a3, unint64_t *a4)
{
  v8 = *(a1 + 1056);
  if (v8 + 1 > 1)
  {
    v9 = a3 + 1;
    if (v8 < v9)
    {
      sub_100376F34(a1, -4);
      return 4294967292;
    }
  }

  else
  {
    v9 = a3 + 1;
    v8 = -1;
  }

  v10 = v8 - v9;
  if (v10 < *a4)
  {
    *a4 = v10;
  }

  LODWORD(result) = sub_100382C74(a1, *(a1 + 528));
  if (!result)
  {
    v19 = a2 - a3;
    result = sub_100386C38(a1, *(a1 + 528), (*(a1 + 1104) + a3), &v19, 0, a4);
    if (result == 1)
    {
      if (inflateReset((a1 + 312)))
      {
        sub_100376F34(a1, 1);
        result = 4294967289;
      }

      else
      {
        v12 = *a4;
        v13 = a3 + *a4 + 1;
        v14 = sub_10037BB9C(a1, v13);
        if (v14)
        {
          v15 = v14;
          bzero(v14, v13);
          v16 = sub_100386C38(a1, *(a1 + 528), (*(a1 + 1104) + a3), &v19, &v15[a3], a4);
          if (v16 == 1)
          {
            if (v12 == *a4)
            {
              v15[v12 + a3] = 0;
              v17 = *(a1 + 1104);
              if (a3)
              {
                memcpy(v15, *(a1 + 1104), a3);
              }

              *(a1 + 1104) = v15;
              *(a1 + 1112) = v13;
              sub_10037BAB4(a1, v17);
              if (a2 - a3 != v19)
              {
                sub_10037B50C(a1, "extra compressed data");
              }

              result = 1;
              goto LABEL_25;
            }

            v16 = 4294967289;
          }

          v18 = v16;
          sub_10037BAB4(a1, v15);
          result = v18;
        }

        else
        {
          sub_100376F34(a1, -4);
          result = 4294967292;
        }
      }
    }

LABEL_25:
    *(a1 + 304) = 0;
    return result;
  }

  if (result == 1)
  {
    return 4294967289;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100384FA8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 1052);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5 - 1;
  if (!v6)
  {

    return sub_100381760(a1, a3);
  }

  *(a1 + 1052) = v6;
  if (v6 != 1)
  {
LABEL_8:
    v9 = *(a1 + 292);
    if ((v9 & 1) == 0)
    {
      sub_10037B274(a1, "missing IHDR");
    }

    if ((v9 & 4) != 0)
    {
      *(a1 + 292) = v9 | 8;
    }

    v11 = a3 + 1;
    v12 = (a1 + 1104);
    v13 = *(a1 + 1104);
    if (v13)
    {
      if (*(a1 + 1112) >= v11)
      {
        goto LABEL_16;
      }

      *v12 = 0;
      *(a1 + 1112) = 0;
      sub_10037BAB4(a1, v13);
    }

    v14 = sub_10037BB9C(a1, a3 + 1);
    if (!v14)
    {
      sub_10037B1A0(a1, "insufficient memory to read chunk");
      sub_100381760(a1, a3);
      v8 = "out of memory";
      goto LABEL_27;
    }

    v13 = v14;
    bzero(v14, a3 + 1);
    *(a1 + 1104) = v13;
    *(a1 + 1112) = v11;
LABEL_16:
    sub_10037CF90(a1);
    sub_1003764EC(a1, v13, a3);
    result = sub_100381760(a1, 0);
    if (result)
    {
      return result;
    }

    if (!a3)
    {
      goto LABEL_23;
    }

    v15 = 0;
    v16 = a2;
    while (v13[v15])
    {
      if (a3 == ++v15)
      {
        LODWORD(v15) = a3;
        break;
      }
    }

    if ((v15 - 80) < 0xFFFFFFB1)
    {
LABEL_23:
      v17 = "bad keyword";
      return sub_10037B50C(a1, v17);
    }

    if (v15 + 5 > a3)
    {
      v17 = "truncated";
      return sub_10037B50C(a1, v17);
    }

    v18 = &v13[v15];
    v19 = v18[1];
    if (v18[1] && (v19 != 1 || v18[2]))
    {
      v17 = "bad compression info";
      return sub_10037B50C(a1, v17);
    }

    v20 = (v15 + 3);
    v21 = a3 - v15 - 3;
    v22 = v20;
    while (v13[v22])
    {
      ++v22;
      if (!--v21)
      {
        LODWORD(v22) = a3;
        break;
      }
    }

    v23 = v22 + 1;
    if (v22 + 1 >= a3)
    {
      v25 = v22 + 1;
    }

    else
    {
      v24 = &v13[v23];
      v25 = v22 + 1;
      while (*v24++)
      {
        if (a3 == ++v25)
        {
          v25 = a3;
          break;
        }
      }
    }

    v27 = v25 + 1;
    if (!v19 && a3 >= v27)
    {
      v31 = a3 - v27;
LABEL_49:
      v30[0] = 0;
      v13[v31 + v27] = 0;
      if (v19)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      LODWORD(v30[0]) = v28;
      v30[5] = &v13[v20];
      v30[6] = &v13[v23];
      v30[1] = v13;
      v30[2] = &v13[v27];
      v30[3] = 0;
      v30[4] = v31;
      result = sub_100387EF8(a1, v16, v30, 1);
      if (!result)
      {
        return result;
      }

      v29 = "insufficient memory";
      goto LABEL_59;
    }

    v29 = "truncated";
    if (v19 && a3 > v27)
    {
      v31 = -1;
      if (sub_100384DB0(a1, a3, v27, &v31) == 1)
      {
        v13 = *v12;
        v16 = a2;
        goto LABEL_49;
      }

      v16 = a2;
      v29 = *(a1 + 360);
      if (!v29)
      {
        goto LABEL_49;
      }
    }

LABEL_59:
    v17 = v29;
    return sub_10037B50C(a1, v17);
  }

  sub_100381760(a1, a3);
  v8 = "no space in chunk cache";
LABEL_27:

  return sub_10037B50C(a1, v8);
}

void sub_10038530C(uint64_t a1, uint64_t a2, size_t __size, int a4)
{
  v4 = a4;
  if (!*(a1 + 944))
  {
    if (a4)
    {
      if (a4 == 3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = *(a1 + 952);
      if (v4 == 3)
      {
        goto LABEL_15;
      }
    }

    if (v4 != 2 || (*(a1 + 531) & 0x20) == 0)
    {
      sub_100381760(a1, __size);
      goto LABEL_16;
    }

LABEL_15:
    if (!sub_1003854B0(a1, __size))
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (!sub_1003854B0(a1, __size))
  {
    goto LABEL_24;
  }

  v7 = (*(a1 + 944))(a1, a1 + 1064);
  if (v7 < 0)
  {
    sub_10037B274(a1, "error in user chunk");
  }

  if (!v7)
  {
    if (v4 <= 1)
    {
      if (*(a1 + 952) <= 1)
      {
        sub_10037B1A0(a1, "Saving unknown chunk:");
        sub_10037B2B8(a1, "forcing save of an unhandled chunk; please call png_set_keep_unknown_chunks");
      }

      goto LABEL_18;
    }

LABEL_16:
    if (v4 == 3)
    {
LABEL_19:
      v8 = *(a1 + 1052);
      if (!v8)
      {
LABEL_30:
        sub_10038857C(a1, a2, a1 + 1064, 1);
        goto LABEL_31;
      }

      if (v8 != 1)
      {
        if (v8 == 2)
        {
          v9 = 1;
          *(a1 + 1052) = 1;
          sub_10037B50C(a1, "no space in chunk cache");
          v10 = *(a1 + 1072);
          if (!v10)
          {
            goto LABEL_26;
          }

LABEL_25:
          sub_10037BAB4(a1, v10);
          goto LABEL_26;
        }

        *(a1 + 1052) = v8 - 1;
        goto LABEL_30;
      }

LABEL_24:
      v9 = 1;
      v10 = *(a1 + 1072);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v4 != 2)
    {
      goto LABEL_24;
    }

LABEL_18:
    if ((*(a1 + 531) & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_31:
  v9 = 0;
  v10 = *(a1 + 1072);
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_26:
  *(a1 + 1072) = 0;
  if (v9)
  {
    if ((*(a1 + 531) & 0x20) == 0)
    {
      sub_10037B274(a1, "unhandled critical chunk");
    }
  }
}

uint64_t sub_1003854B0(uint64_t a1, size_t __size)
{
  v2 = __size;
  v4 = *(a1 + 1072);
  if (v4)
  {
    sub_10037BAB4(a1, v4);
    *(a1 + 1072) = 0;
  }

  v5 = *(a1 + 1056);
  if (v5 + 1 > 1)
  {
    v6 = v2;
    if (v5 < v2)
    {
      v8 = 0;
      if (!v2)
      {
LABEL_11:
        if (v2)
        {
          sub_10037CF90(a1);
          sub_1003764EC(a1, v8, v6);
        }

        goto LABEL_14;
      }

LABEL_9:
      if (!v8)
      {
        sub_100381760(a1, v2);
        sub_10037B50C(a1, "unknown chunk exceeds memory limits");
        return 0;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = v2;
  }

  v7 = *(a1 + 528);
  *(a1 + 1064) = HIBYTE(v7);
  *(a1 + 1065) = BYTE2(v7);
  *(a1 + 1066) = BYTE1(v7);
  *(a1 + 1067) = v7;
  *(a1 + 1068) = 0;
  *(a1 + 1080) = v6;
  *(a1 + 1088) = *(a1 + 292);
  if (v2)
  {
    v8 = sub_10037BD48(a1, v6);
    *(a1 + 1072) = v8;
    goto LABEL_9;
  }

  *(a1 + 1072) = 0;
LABEL_14:
  sub_100381760(a1, 0);
  return 1;
}

uint64_t sub_1003855D8(uint64_t result, char *__dst, int a3)
{
  v3 = *(result + 615);
  if (!*(result + 615))
  {
    sub_10037A948(result, "internal row logic error");
  }

  v4 = *(result + 544);
  v5 = *(result + 496);
  v6 = *(result + 605);
  v7 = *(result + 568);
  if (v7)
  {
    v8 = (v5 * *(result + 615) + 7) >> 3;
    if (v3 >= 8)
    {
      v8 = v5 * (v3 >> 3);
    }

    if (v7 != v8)
    {
      sub_10037A948(result, "internal row size calculation error");
    }
  }

  if (!v5)
  {
    sub_10037A948(result, "internal row width error");
  }

  v9 = (v4 + 1);
  v10 = v5 * *(result + 615);
  v11 = v3 >> 3;
  v12 = v10 & 7;
  if ((v10 & 7) != 0)
  {
    v13 = v11 * v5;
    if (v3 <= 7)
    {
      v13 = (v10 + 7) >> 3;
    }

    v14 = &__dst[v13 - 1];
    v15 = *v14;
    v16 = 0xFFu >> v12;
    v17 = 255 << v12;
    if (*(result + 302))
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    if (!*(result + 604))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v18 = 0;
    if (!*(result + 604))
    {
      goto LABEL_22;
    }
  }

  v19 = *(result + 300);
  if ((v19 & 2) == 0 || v6 > 5)
  {
LABEL_22:
    if (v3 <= 7)
    {
      v21 = (v10 + 7) >> 3;
    }

    else
    {
      v21 = v11 * v5;
    }

    result = memcpy(__dst, (v4 + 1), v21);
LABEL_26:
    if (v14)
    {
      *v14 = *v14 & ~v18 | v18 & v15;
    }

    return result;
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      v20 = v6 & 1;
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_22;
  }

  v20 = 1;
LABEL_30:
  v22 = (v20 << (3 - ((v6 + 1) >> 1))) & 7;
  if (v5 <= v22)
  {
    return result;
  }

  if (v3 <= 7)
  {
    v23 = 8 / v3;
    v24 = 1;
    if (v3 != 2)
    {
      v24 = 2;
    }

    if (v3 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    v26 = &unk_1003EB810 + 24 * v25 + 4 * v6 + 72;
    v27 = (2 * v6) & 0x1FC;
    if (a3)
    {
      v26 = &unk_1003EB8A0 + 12 * v25 + v27 + 36;
    }

    v28 = (&unk_1003EB810 + 24 * v25 + 4 * *(result + 605));
    v29 = &unk_1003EB8A0 + 12 * v25 + v27;
    if (a3)
    {
      v28 = v29;
    }

    if ((v19 & 0x10000) == 0)
    {
      v28 = v26;
    }

    v30 = *v28;
    v31 = v30;
    if (v30)
    {
LABEL_44:
      if (v31 == 255)
      {
        v32 = *v9;
      }

      else
      {
        v32 = v30 & *v9 | *__dst & ~v30;
      }

      *__dst = v32;
    }

    while (1)
    {
      v33 = v5 > v23;
      v5 -= v23;
      if (!v33)
      {
        goto LABEL_26;
      }

      HIDWORD(v34) = v30;
      LODWORD(v34) = v30;
      v30 = v34 >> 8;
      ++__dst;
      ++v9;
      v31 = BYTE1(v34);
      if (BYTE1(v34))
      {
        goto LABEL_44;
      }
    }
  }

  if ((v3 & 7) != 0)
  {
    sub_10037A948(result, "invalid user transform pixel depth");
  }

  v35 = v5 * v11;
  v36 = v22 * v11;
  v37 = v35 - v36;
  v38 = __dst;
  result = &__dst[v36];
  v39 = v4 + 1;
  v40 = &v9[v36];
  v41 = (v11 << ((6 - v6) >> 1));
  if (v35 - v36 < v41)
  {
    LODWORD(v41) = v35 - v36;
  }

  if (a3)
  {
    v42 = v41;
  }

  else
  {
    v42 = v11;
  }

  v43 = (v11 << ((7 - v6) >> 1));
  switch(v42)
  {
    case 1:
      *result = *v40;
      if (v37 > v43)
      {
        v46 = v43 + v36;
        do
        {
          v37 -= v43;
          v38[v46] = *(v39 + v46);
          v46 += v43;
        }

        while (v37 > v43);
      }

      break;
    case 2:
      while (1)
      {
        *result = *v40;
        *(result + 1) = v40[1];
        v33 = v37 > v43;
        v37 -= v43;
        if (!v33)
        {
          break;
        }

        v40 += v43;
        result += v43;
        if (v37 <= 1)
        {
          *result = *v40;
          return result;
        }
      }

      break;
    case 3:
      *result = *v40;
      *(result + 1) = v40[1];
      *(result + 2) = v40[2];
      if (v37 > v43)
      {
        v44 = (v43 + v36 + v4 + 3);
        v45 = &v38[v43 + 2 + v36];
        do
        {
          v37 -= v43;
          *(v45 - 2) = *(v44 - 2);
          *(v45 - 1) = *(v44 - 1);
          *v45 = *v44;
          v44 += v43;
          v45 += v43;
        }

        while (v37 > v43);
      }

      return result;
    default:
      if (v42 <= 0xF && (result & 1) == 0 && (v40 & 1) == 0 && (v42 & 1) == 0 && (v43 & 1) == 0)
      {
        v47 = v43 - v42;
        if (((v40 | v43 | result | v42) & 2) == 0)
        {
          v48 = v47 >> 2;
          v49 = v35 - v43 - v36;
          v50 = v48;
          do
          {
            v51 = v40;
            v52 = result;
            v53 = v49;
            v54 = result;
            v55 = v40;
            v56 = v42;
            do
            {
              v57 = *v55++;
              *v54++ = v57;
              v56 -= 4;
            }

            while (v56);
            v33 = v37 > v43;
            v37 -= v43;
            if (!v33)
            {
              return result;
            }

            v40 = &v55[v50];
            result = &v54[v50];
            v49 = v53 - v43;
          }

          while (v37 >= v42);
          if (v37 >= 8 && (v52 - v51) >= 0x20)
          {
            if (v37 >= 0x20)
            {
              v58 = v37 & 0xFFFFFFFFFFFFFFE0;
              v74 = v53 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v75 = &v54[v50];
                v76 = *&v55[v50 + 4];
                *v75 = *&v55[v50];
                v75[1] = v76;
                v50 += 8;
                v74 -= 32;
              }

              while (v74);
              if (v37 == v58)
              {
                return result;
              }

              if ((v37 & 0x18) == 0)
              {
                result += v58;
                v40 += v58;
                v37 &= 0x1Fu;
                goto LABEL_125;
              }
            }

            else
            {
              v58 = 0;
            }

            v40 += v37 & 0xFFFFFFFFFFFFFFF8;
            result += v37 & 0xFFFFFFFFFFFFFFF8;
            v77 = v58 + 4 * v48;
            v78 = v58 - (v53 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              *(v54 + v77) = *(v55 + v77);
              v77 += 8;
              v78 += 8;
            }

            while (v78);
            v79 = v37 == (v37 & 0xFFFFFFFFFFFFFFF8);
            v37 &= 7u;
            if (v79)
            {
              return result;
            }
          }

          do
          {
LABEL_125:
            v85 = *v40++;
            *result++ = v85;
            --v37;
          }

          while (v37);
          return result;
        }

        v63 = v47 >> 1;
        v64 = v35 - v43 - v36;
        v65 = v63;
        do
        {
          v66 = v40;
          v67 = result;
          v68 = v64;
          v69 = result;
          v70 = v40;
          v71 = v42;
          do
          {
            v72 = *v70++;
            *v69++ = v72;
            v71 -= 2;
          }

          while (v71);
          v33 = v37 > v43;
          v37 -= v43;
          if (!v33)
          {
            return result;
          }

          v40 = &v70[v65];
          result = &v69[v65];
          v64 = v68 - v43;
        }

        while (v37 >= v42);
        if (v37 >= 8 && (v67 - v66) >= 0x20)
        {
          if (v37 >= 0x20)
          {
            v73 = v37 & 0xFFFFFFFFFFFFFFE0;
            v80 = v68 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v81 = &v69[v65];
              v82 = *&v70[v65 + 8];
              *v81 = *&v70[v65];
              v81[1] = v82;
              v65 += 16;
              v80 -= 32;
            }

            while (v80);
            if (v37 == v73)
            {
              return result;
            }

            if ((v37 & 0x18) == 0)
            {
              result += v73;
              v40 += v73;
              v37 &= 0x1Fu;
              goto LABEL_128;
            }
          }

          else
          {
            v73 = 0;
          }

          v40 += v37 & 0xFFFFFFFFFFFFFFF8;
          result += v37 & 0xFFFFFFFFFFFFFFF8;
          v83 = v73 + 2 * v63;
          v84 = v73 - (v68 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            *(v69 + v83) = *(v70 + v83);
            v83 += 8;
            v84 += 8;
          }

          while (v84);
          v79 = v37 == (v37 & 0xFFFFFFFFFFFFFFF8);
          v37 &= 7u;
          if (v79)
          {
            return result;
          }
        }

        do
        {
LABEL_128:
          v86 = *v40++;
          *result++ = v86;
          --v37;
        }

        while (v37);
        return result;
      }

      result = memcpy(result, v40, v42);
      if (v37 > v43)
      {
        v59 = v38;
        v60 = v43 + v36;
        v61 = v5 * v11 - v36 - v43;
        do
        {
          v62 = v37 - v43;
          if (v37 - v43 >= v42)
          {
            v42 = v42;
          }

          else
          {
            v42 = v61;
          }

          result = memcpy(&v59[v60], (v39 + v60), v42);
          v59 = v38;
          v60 += v43;
          v61 -= v43;
          v37 -= v43;
        }

        while (v62 > v43);
      }

      break;
  }

  return result;
}

uint64_t sub_100385C30(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (!result || !a2)
  {
    return result;
  }

  v4 = result;
  v5 = *result;
  v6 = dword_1003EB8E8[a3];
  v7 = v6 * *result;
  v8 = *(result + 19);
  switch(v8)
  {
    case 4:
      v36 = (4 * (*result & 1)) ^ 4;
      v37 = ~(4 * v7) & 4;
      if ((a4 & 0x10000) != 0)
      {
        v38 = 4;
      }

      else
      {
        v36 = 4 * (*result & 1);
        v37 = 4 * (v7 & 1);
        v38 = 0;
      }

      if ((a4 & 0x10000) != 0)
      {
        v39 = 0;
      }

      else
      {
        v39 = 4;
      }

      if ((a4 & 0x10000) != 0)
      {
        v40 = -4;
      }

      else
      {
        v40 = 4;
      }

      if (v5)
      {
        v41 = 0;
        v42 = (a2 + ((v5 - 1) >> 1));
        v43 = (a2 + ((v7 - 1) >> 1));
        if (v6 <= 1)
        {
          v6 = 1;
        }

        result = 3855;
        do
        {
          v44 = (*v42 >> v36) & 0xF;
          v45 = v6;
          do
          {
            *v43 = (0xF0Fu >> (4 - v37)) & *v43 | (v44 << v37);
            v20 = v37 == v39;
            v46 = v37 == v39;
            v37 += v40;
            if (v20)
            {
              v37 = v38;
            }

            v43 -= v46;
            --v45;
          }

          while (v45);
          v20 = v36 == v39;
          v47 = v36 == v39;
          v36 += v40;
          if (v20)
          {
            v36 = v38;
          }

          v42 -= v47;
          ++v41;
        }

        while (v41 < *v4);
      }

      goto LABEL_79;
    case 2:
      v23 = (2 * v5 + 6) & 6 ^ 6;
      v24 = 2 * v7 + 6;
      v25 = ~v24 & 6;
      if ((a4 & 0x10000) != 0)
      {
        v23 = (2 * v5 + 6) & 6;
        v25 = v24 & 6;
        v26 = 6;
      }

      else
      {
        v26 = 0;
      }

      if ((a4 & 0x10000) != 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = 6;
      }

      if ((a4 & 0x10000) != 0)
      {
        v28 = -2;
      }

      else
      {
        v28 = 2;
      }

      if (v5)
      {
        v29 = 0;
        v30 = (a2 + ((v5 - 1) >> 2));
        v31 = (a2 + ((v7 - 1) >> 2));
        if (v6 <= 1)
        {
          v6 = 1;
        }

        result = 16191;
        do
        {
          v32 = (*v30 >> v23) & 3;
          v33 = v6;
          do
          {
            *v31 = (0x3F3Fu >> (6 - v25)) & *v31 | (v32 << v25);
            v20 = v25 == v27;
            v34 = v25 == v27;
            v25 += v28;
            if (v20)
            {
              v25 = v26;
            }

            v31 -= v34;
            --v33;
          }

          while (v33);
          v20 = v23 == v27;
          v35 = v23 == v27;
          v23 += v28;
          if (v20)
          {
            v23 = v26;
          }

          v30 -= v35;
          ++v29;
        }

        while (v29 < *v4);
      }

      goto LABEL_79;
    case 1:
      v9 = v5 - 1;
      v10 = (v5 - 1) & 7;
      result = v10 ^ 7u;
      v11 = -v7 & 7;
      if ((a4 & 0x10000) != 0)
      {
        v12 = -1;
      }

      else
      {
        v12 = 1;
      }

      if ((a4 & 0x10000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = 7;
      }

      if ((a4 & 0x10000) != 0)
      {
        v14 = 7;
      }

      else
      {
        v14 = 0;
      }

      if ((a4 & 0x10000) != 0)
      {
        v11 = (v7 - 1) & 7;
      }

      else
      {
        v10 ^= 7u;
      }

      if (v5)
      {
        v15 = 0;
        v16 = (a2 + (v9 >> 3));
        v17 = (a2 + ((v7 - 1) >> 3));
        if (v6 <= 1)
        {
          v6 = 1;
        }

        result = 32639;
        do
        {
          v18 = (*v16 >> v10) & 1;
          v19 = v6;
          do
          {
            *v17 = (0x7F7Fu >> (7 - v11)) & *v17 | (v18 << v11);
            v20 = v11 == v13;
            v21 = v11 == v13;
            v11 += v12;
            if (v20)
            {
              v11 = v14;
            }

            v17 -= v21;
            --v19;
          }

          while (v19);
          v20 = v10 == v13;
          v22 = v10 == v13;
          v10 += v12;
          if (v20)
          {
            v10 = v14;
          }

          v16 -= v22;
          ++v15;
        }

        while (v15 < *v4);
      }

      goto LABEL_79;
  }

  if (v5)
  {
    v48 = 0;
    v49 = v8 >> 3;
    v50 = -(v8 >> 3);
    v51 = a2 + (v8 >> 3) * (v5 - 1);
    v52 = (a2 + (v8 >> 3) * (v7 - 1));
    if (v6 <= 1)
    {
      v53 = 1;
    }

    else
    {
      v53 = dword_1003EB8E8[a3];
    }

    do
    {
      __memcpy_chk();
      v54 = v53;
      do
      {
        result = memcpy(v52, &v58, v49);
        v52 += v50;
        --v54;
      }

      while (v54);
      v51 += v50;
      ++v48;
    }

    while (v48 < *v4);
LABEL_79:
    LODWORD(v8) = *(v4 + 19);
  }

  *v4 = v7;
  v55 = v8 >= 8;
  v56 = (v7 * v8 + 7) >> 3;
  v57 = v7 * (v8 >> 3);
  if (v55)
  {
    v56 = v57;
  }

  *(v4 + 8) = v56;
  return result;
}

uint64_t sub_100385FF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5 - 1;
  if ((a5 - 1) <= 3)
  {
    v6 = result + 1136;
    if (!*(result + 1136))
    {
      v7 = (*(result + 610) + 7) >> 3;
      *(result + 1136) = sub_100386E9C;
      *(result + 1144) = sub_100386F98;
      *(result + 1152) = sub_100387088;
      v8 = sub_1003872D4;
      if (v7 == 1)
      {
        v8 = sub_100387258;
      }

      *(result + 1160) = v8;
      v9 = a2;
      v10 = a4;
      v11 = a3;
      sub_100375F88(result, v7);
      a2 = v9;
      a3 = v11;
      a4 = v10;
    }

    v12 = *(v6 + 8 * v5);

    return v12(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1003860F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v21 = (result + 1104);
  *(result + 336) = a2;
  *(result + 344) = 0;
  while (2)
  {
    if (*(v4 + 320))
    {
      v6 = 0;
      if (!a2)
      {
        goto LABEL_33;
      }

LABEL_7:
      v7 = 0xFFFFFFFFLL;
      if (v5 < 0xFFFFFFFF)
      {
        v7 = v5;
      }

      v5 -= v7;
      *(v4 + 344) = v7;
      if (*(v4 + 616) == 0 || v6)
      {
        goto LABEL_36;
      }

LABEL_34:
      if ((**(v4 + 312) & 0x80000000) == 0)
      {
        *(v4 + 616) = 0;
        goto LABEL_36;
      }

      *(v4 + 360) = "invalid window size (libpng)";
      v16 = -3;
      goto LABEL_37;
    }

    v8 = *(v4 + 576);
    while (!v8)
    {
      v9 = *(v4 + 528);
      v10 = *(v4 + 296);
      *(v4 + 1124) = 129;
      sub_10037CF90(v4);
      if ((v9 & 0x20000000) != 0)
      {
        if ((~v10 & 0x300) != 0)
        {
LABEL_20:
          if (bswap32(v22) != *(v4 + 580))
          {
            v11 = *(v4 + 296);
            if ((*(v4 + 531) & 0x20) != 0)
            {
              if ((v11 & 0x200) != 0)
              {
LABEL_55:
                sub_10037B274(v4, "CRC error");
              }
            }

            else if ((v11 & 0x400) == 0)
            {
              goto LABEL_55;
            }

            sub_10037B1A0(v4, "CRC error");
          }
        }
      }

      else if ((v10 & 0x800) == 0)
      {
        goto LABEL_20;
      }

      v8 = sub_100381550(v4);
      *(v4 + 576) = v8;
      if (*(v4 + 528) != 1229209940)
      {
        goto LABEL_54;
      }
    }

    v12 = *(v4 + 1120);
    if (v12 >= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v12;
    }

    v14 = *(v4 + 1104);
    if (v14)
    {
      if (*(v4 + 1112) < v13)
      {
        *v21 = 0;
        v21[1] = 0;
        sub_10037BAB4(v4, v14);
        goto LABEL_30;
      }
    }

    else
    {
LABEL_30:
      v15 = sub_10037BB9C(v4, v13);
      if (!v15)
      {
        sub_10037B274(v4, "insufficient memory to read chunk");
      }

      v14 = v15;
      bzero(v15, v13);
      *(v4 + 1104) = v14;
      *(v4 + 1112) = v13;
    }

    sub_10037CF90(v4);
    result = sub_1003764EC(v4, v14, v13);
    *(v4 + 576) -= v13;
    *(v4 + 312) = v14;
    *(v4 + 320) = v13;
    v6 = v12 == 0;
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_33:
    *(v4 + 336) = &v23;
    *(v4 + 344) = 1024;
    if (*(v4 + 616) != 0 && !v6)
    {
      goto LABEL_34;
    }

LABEL_36:
    result = inflate((v4 + 312), 0);
    v16 = result;
LABEL_37:
    v17 = *(v4 + 344);
    v18 = v5 + v17;
    v19 = v5 - v17 + 1024;
    if (a2)
    {
      v5 = v18;
    }

    else
    {
      v5 = v19;
    }

    *(v4 + 344) = 0;
    if (!v16)
    {
      if (!v5)
      {
        return result;
      }

      continue;
    }

    break;
  }

  if (v16 != 1)
  {
    sub_100376F34(v4, v16);
    v20 = *(v4 + 360);
    if (a2)
    {
      sub_10037B274(v4, v20);
    }

    return sub_10037B50C(v4, v20);
  }

  *(v4 + 336) = 0;
  *(v4 + 292) |= 0x800000008uLL;
  if (*(v4 + 320) || *(v4 + 576))
  {
    result = sub_10037B50C(v4, "Extra compressed data");
  }

  if (v5)
  {
    if (a2)
    {
LABEL_54:
      sub_10037A948(v4, "Not enough image data");
    }

    v20 = "Too much image data";
    return sub_10037B50C(v4, v20);
  }

  return result;
}

uint64_t sub_10038641C(uint64_t result)
{
  if ((*(result + 296) & 8) == 0)
  {
    v2 = result;
    sub_1003860F4(result, 0, 0);
    result = v2;
    *(v2 + 336) = 0;
    v3 = *(v2 + 296);
    v1 = vars8;
    if ((v3 & 8) == 0)
    {
      *(v2 + 292) |= 8u;
      *(v2 + 296) = v3 | 8;
    }
  }

  if (*(result + 304) == 1229209940)
  {
    *(result + 312) = 0;
    *(result + 320) = 0;
    *(result + 304) = 0;
    v4 = *(result + 576);

    return sub_100381760(result, v4);
  }

  return result;
}

void sub_1003864AC(uint64_t a1)
{
  v1 = *(a1 + 524) + 1;
  *(a1 + 524) = v1;
  if (v1 < *(a1 + 504))
  {
    return;
  }

  if (*(a1 + 604))
  {
    *(a1 + 524) = 0;
    bzero(*(a1 + 536), *(a1 + 512) + 1);
    v3 = *(a1 + 605);
    v4 = v3 + 1;
    if ((v3 + 1) > 6u)
    {
LABEL_4:
      *(a1 + 605) = v4;
      goto LABEL_5;
    }

    v7 = (v3 + 1);
    v8 = byte_1003EB919[v7];
    v9 = *(a1 + 496) + v8 + ~byte_1003EB912[v7];
    *(a1 + 520) = v9 / v8;
    if ((*(a1 + 300) & 2) == 0)
    {
      v10 = byte_1003EB90B[v7];
      v11 = *(a1 + 500) + v10 + ~byte_1003EB904[v7];
      *(a1 + 504) = v11 / v10;
      if (v11 < v10 || v9 < v8)
      {
        v4 = v3 + 2;
        if ((v3 + 2) > 6u)
        {
          goto LABEL_4;
        }

        v12 = (v3 + 2);
        v13 = byte_1003EB919[v12];
        v14 = *(a1 + 496) + v13 + ~byte_1003EB912[v12];
        *(a1 + 520) = v14 / v13;
        if ((*(a1 + 300) & 2) == 0)
        {
          v15 = byte_1003EB90B[v12];
          v16 = *(a1 + 500) + v15 + ~byte_1003EB904[v12];
          *(a1 + 504) = v16 / v15;
          if (v16 < v15 || v14 < v13)
          {
            v4 = v3 + 3;
            if ((v3 + 3) > 6u)
            {
              goto LABEL_4;
            }

            v17 = (v3 + 3);
            v18 = byte_1003EB919[v17];
            v19 = *(a1 + 496) + v18 + ~byte_1003EB912[v17];
            *(a1 + 520) = v19 / v18;
            if ((*(a1 + 300) & 2) == 0)
            {
              v20 = byte_1003EB90B[v17];
              v21 = *(a1 + 500) + v20 + ~byte_1003EB904[v17];
              *(a1 + 504) = v21 / v20;
              if (v21 < v20 || v19 < v18)
              {
                v4 = v3 + 4;
                if ((v3 + 4) > 6u)
                {
                  goto LABEL_4;
                }

                v22 = (v3 + 4);
                v23 = byte_1003EB919[v22];
                v24 = *(a1 + 496) + v23 + ~byte_1003EB912[v22];
                *(a1 + 520) = v24 / v23;
                if ((*(a1 + 300) & 2) == 0)
                {
                  v25 = byte_1003EB90B[v22];
                  v26 = *(a1 + 500) + v25 + ~byte_1003EB904[v22];
                  *(a1 + 504) = v26 / v25;
                  if (v26 < v25 || v24 < v23)
                  {
                    v4 = v3 + 5;
                    if ((v3 + 5) > 6u)
                    {
                      goto LABEL_4;
                    }

                    v27 = (v3 + 5);
                    v28 = byte_1003EB919[v27];
                    v29 = *(a1 + 496) + v28 + ~byte_1003EB912[v27];
                    *(a1 + 520) = v29 / v28;
                    if ((*(a1 + 300) & 2) == 0)
                    {
                      v30 = byte_1003EB90B[v27];
                      v31 = *(a1 + 500) + v30 + ~byte_1003EB904[v27];
                      *(a1 + 504) = v31 / v30;
                      if (v31 < v30 || v29 < v28)
                      {
                        v4 = v3 + 6;
                        if ((v3 + 6) > 6u)
                        {
                          goto LABEL_4;
                        }

                        v32 = (v3 + 6);
                        v33 = byte_1003EB919[v32];
                        v34 = *(a1 + 496) + v33 + ~byte_1003EB912[v32];
                        *(a1 + 520) = v34 / v33;
                        if ((*(a1 + 300) & 2) == 0)
                        {
                          v35 = byte_1003EB90B[v32];
                          v36 = *(a1 + 500) + v35 + ~byte_1003EB904[v32];
                          *(a1 + 504) = v36 / v35;
                          if (v36 < v35 || v34 < v33)
                          {
                            v4 = v3 + 7;
                            if (v3 < 0xF9)
                            {
                              goto LABEL_4;
                            }

                            v37 = (v3 + 7);
                            v38 = byte_1003EB919[v37];
                            v39 = *(a1 + 496) + v38 + ~byte_1003EB912[v37];
                            *(a1 + 520) = v39 / v38;
                            if ((*(a1 + 300) & 2) == 0)
                            {
                              v40 = byte_1003EB90B[v37];
                              v41 = *(a1 + 500) + v40 + ~byte_1003EB904[v37];
                              *(a1 + 504) = v41 / v40;
                              if (v41 < v40 || v39 < v38)
                              {
                                v4 = v3 + 8;
                                if ((v3 + 8) > 6u)
                                {
                                  goto LABEL_4;
                                }

                                *(a1 + 520) = (*(a1 + 496) + byte_1003EB919[(v3 + 8)] + ~byte_1003EB912[(v3 + 8)]) / byte_1003EB919[(v3 + 8)];
                                if ((*(a1 + 300) & 2) == 0)
                                {
                                  *(a1 + 504) = (*(a1 + 500) + byte_1003EB90B[(v3 + 8)] + ~byte_1003EB904[(v3 + 8)]) / byte_1003EB90B[(v3 + 8)];
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

    *(a1 + 605) = v4;
    return;
  }

LABEL_5:
  if ((*(a1 + 296) & 8) == 0)
  {
    sub_1003860F4(a1, 0, 0);
    *(a1 + 336) = 0;
    v5 = *(a1 + 296);
    if ((v5 & 8) == 0)
    {
      *(a1 + 292) |= 8u;
      *(a1 + 296) = v5 | 8;
    }
  }

  if (*(a1 + 304) == 1229209940)
  {
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    *(a1 + 304) = 0;
    v6 = *(a1 + 576);

    sub_100381760(a1, v6);
  }
}

uint64_t sub_1003868F8(uint64_t a1)
{
  sub_10037D338(a1);
  if (!*(a1 + 604))
  {
    *(a1 + 504) = *(a1 + 500);
    v4 = *(a1 + 496);
    *(a1 + 520) = v4;
    v2 = *(a1 + 300);
    v5 = *(a1 + 610);
    if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 300);
  v3 = *(a1 + 500);
  if ((v2 & 2) == 0)
  {
    v3 = (v3 + 7) >> 3;
  }

  *(a1 + 504) = v3;
  v4 = *(a1 + 496);
  *(a1 + 520) = (v4 + byte_1003EB919[*(a1 + 605)] + ~byte_1003EB912[*(a1 + 605)]) / byte_1003EB919[*(a1 + 605)];
  v5 = *(a1 + 610);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    if (*(a1 + 608) < 8u)
    {
      v5 = 8;
    }
  }

LABEL_7:
  if ((v2 & 0x1000) == 0)
  {
    if ((v2 & 0x200) != 0)
    {
      *(a1 + 300) = v2 & 0xFFFFEDFF;
    }

    goto LABEL_24;
  }

  v6 = *(a1 + 607);
  if (*(a1 + 607))
  {
    if (v6 == 2)
    {
      if (*(a1 + 600))
      {
        v5 = (87384 * v5) >> 16;
      }
    }

    else if (v6 == 3)
    {
      if (*(a1 + 600))
      {
        v5 = 32;
      }

      else
      {
        v5 = 24;
      }

      if ((v2 & 0x200) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      v5 <<= *(a1 + 608) < 0x10u;
      goto LABEL_24;
    }

    if ((v2 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v5 <<= *(a1 + 600) != 0;
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v7 = *(a1 + 300);
  if ((v7 & 0x8000) != 0)
  {
    if (v5 <= 0x20)
    {
      v13 = 32;
    }

    else
    {
      v13 = 64;
    }

    if (v5 >= 9)
    {
      v14 = 32;
    }

    else
    {
      v14 = 16;
    }

    if (!*(a1 + 607))
    {
      v5 = v14;
    }

    if (*(a1 + 607) - 2 < 2)
    {
      v5 = v13;
    }

    if ((v7 & 0x4000) == 0)
    {
LABEL_26:
      if ((v7 & 0x100000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  else if ((v7 & 0x4000) == 0)
  {
    goto LABEL_26;
  }

  if ((v7 & 0x8000) != 0 || ((*(a1 + 600) != 0) & (v7 >> 12)) != 0 || (v15 = *(a1 + 607), v15 == 4))
  {
    if (v5 >= 0x11)
    {
      v5 = 64;
    }

    else
    {
      v5 = 32;
    }

    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v20 = v15 == 6;
    if (v15 == 6)
    {
      v21 = 64;
    }

    else
    {
      v21 = 48;
    }

    if (v20)
    {
      v22 = 32;
    }

    else
    {
      v22 = 24;
    }

    if (v5 <= 8)
    {
      v5 = v22;
    }

    else
    {
      v5 = v21;
    }

    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_27:
  if (*(a1 + 289) * *(a1 + 288) > v5)
  {
    v5 = *(a1 + 289) * *(a1 + 288);
  }

LABEL_29:
  *(a1 + 614) = v5;
  *(a1 + 615) = 0;
  v8 = (v4 + 7) & 0xFFFFFFF8;
  v9 = v8 * (v5 >> 3);
  v10 = (v8 * v5) >> 3;
  if (v5 > 7)
  {
    v10 = v9;
  }

  v11 = v10 + ((v5 + 7) >> 3) + 49;
  if (v11 > *(a1 + 1096))
  {
    sub_10037BAB4(a1, *(a1 + 1008));
    sub_10037BAB4(a1, *(a1 + 1128));
    if (*(a1 + 604))
    {
      v12 = sub_10037BAD4(a1, v11);
    }

    else
    {
      v12 = sub_10037BB44(a1, v11);
    }

    *(a1 + 1008) = v12;
    v16 = sub_10037BB44(a1, v11);
    *(a1 + 1128) = v16;
    *(a1 + 544) = ((*(a1 + 1008) + 32) & 0xFFFFFFFFFFFFFFF0) - 1;
    *(a1 + 536) = ((v16 + 4) & 0xFFFFFFFFFFFFFFF0) - 1;
    *(a1 + 1096) = v11;
  }

  v17 = *(a1 + 512);
  if (v17 == -1)
  {
    sub_10037A948(a1, "Row has too many bytes to allocate in memory");
  }

  bzero(*(a1 + 536), v17 + 1);
  v18 = *(a1 + 1104);
  if (v18)
  {
    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    sub_10037BAB4(a1, v18);
  }

  result = sub_100382C74(a1, 1229209940);
  if (result)
  {
    sub_10037A948(a1, *(a1 + 360));
  }

  *(a1 + 296) |= 0x40u;
  return result;
}

uint64_t sub_100386C38(uint64_t a1, int a2, char *a3, int *a4, uint64_t a5, unint64_t *a6)
{
  if (*(a1 + 304) != a2)
  {
    *(a1 + 360) = "zstream unclaimed";
    return 4294967294;
  }

  v10 = *a6;
  v11 = *a4;
  *(a1 + 312) = a3;
  if (a5)
  {
    *(a1 + 336) = a5;
    *(a1 + 320) = v11;
    v12 = 0xFFFFFFFFLL;
    if (v10 < 0xFFFFFFFF)
    {
      v12 = v10;
    }

    *(a1 + 344) = v12;
    v13 = v10 - v12;
    v14 = v10 == v12;
    if (!*(a1 + 616) || !v11)
    {
LABEL_9:
      v15 = inflate((a1 + 312), 4 * v14);
      if (!v15)
      {
        while (1)
        {
          v16 = *(a1 + 320);
          v17 = v13 + *(a1 + 344);
          if (v17 >= 0xFFFFFFFF)
          {
            v18 = 0xFFFFFFFFLL;
          }

          else
          {
            v18 = v13 + *(a1 + 344);
          }

          *(a1 + 344) = v18;
          v13 = v17 - v18;
          v19 = v17 == v18;
          if (*(a1 + 616))
          {
            v20 = v16 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            if (**(a1 + 312) < 0)
            {
              goto LABEL_40;
            }

            *(a1 + 616) = 0;
          }

          v15 = inflate((a1 + 312), 4 * v19);
          if (v15)
          {
            goto LABEL_41;
          }
        }
      }

      goto LABEL_43;
    }

    if ((*a3 & 0x80000000) == 0)
    {
      *(a1 + 616) = 0;
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  *(a1 + 320) = v11;
  *(a1 + 336) = v34;
  v22 = 1024;
  if (v10 < 0x400)
  {
    v22 = v10;
  }

  *(a1 + 344) = v22;
  v13 = v10 - v22;
  v23 = v10 == v22;
  if (*(a1 + 616) && v11)
  {
    if (*a3 < 0)
    {
LABEL_40:
      *(a1 + 360) = "invalid window size (libpng)";
      v15 = 4294967293;
LABEL_41:
      if (a5)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    *(a1 + 616) = 0;
  }

  v15 = inflate((a1 + 312), 4 * v23);
  if (!v15)
  {
    while (1)
    {
      v24 = *(a1 + 320);
      v25 = v13 + *(a1 + 344);
      *(a1 + 336) = v34;
      if (v25 >= 0x400)
      {
        v26 = 1024;
      }

      else
      {
        v26 = v25;
      }

      *(a1 + 344) = v26;
      v13 = v25 - v26;
      v27 = v25 == v26;
      if (*(a1 + 616))
      {
        v28 = v24 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        if (**(a1 + 312) < 0)
        {
          goto LABEL_40;
        }

        *(a1 + 616) = 0;
      }

      v15 = inflate((a1 + 312), 4 * v27);
      if (v15)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  *(a1 + 336) = 0;
LABEL_43:
  v29 = *(a1 + 320);
  v30 = v13 + *(a1 + 344);
  if (v30)
  {
    *a6 -= v30;
  }

  v31 = v15;
  if (v29)
  {
    *a4 -= v29;
  }

  v32 = a1;
  v33 = v31;
  sub_100376F34(v32, v31);
  return v33;
}

double sub_100386E9C(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 8);
  v3 = (*(a1 + 19) + 7) >> 3;
  v4 = v2 - v3;
  if (v2 > v3)
  {
    v5 = &a2->i8[v3];
    if (v4 < 8 || (v5 < &a2->i8[v4] ? (v6 = &a2->i8[v2] > a2) : (v6 = 0), v6))
    {
      v8 = (*(a1 + 19) + 7) >> 3;
      goto LABEL_10;
    }

    if (v4 < 0x20)
    {
      v7 = 0;
      goto LABEL_17;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFE0;
    v11 = a2 + 1;
    v12 = (a2 + v3 + 16);
    v13 = v4 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = vaddq_s8(v11[-1], v12[-1]);
      v15 = vaddq_s8(*v11, *v12);
      v12[-1] = v14;
      *v12 = v15;
      v12 += 2;
      v11 += 2;
      v13 -= 32;
    }

    while (v13);
    if (v4 != v7)
    {
      if ((v4 & 0x18) == 0)
      {
        v8 = v3 + v7;
        v5 += v7;
        goto LABEL_10;
      }

LABEL_17:
      v5 += v4 & 0xFFFFFFFFFFFFFFF8;
      v8 = v3 + (v4 & 0xFFFFFFFFFFFFFFF8);
      v16 = &a2->i8[v7];
      v17 = v7 - (v4 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        *v14.i8 = vadd_s8(*v16, *(v16 + v3));
        *(v16++ + v3) = *v14.i8;
        v17 += 8;
      }

      while (v17);
      if (v4 == (v4 & 0xFFFFFFFFFFFFFFF8))
      {
        return *v14.i64;
      }

LABEL_10:
      v9 = -v3;
      v10 = v2 - v8;
      do
      {
        *v5 += v5[v9];
        ++v5;
        --v10;
      }

      while (v10);
    }
  }

  return *v14.i64;
}

double sub_100386F98(uint64_t a1, int8x16_t *a2, int8x16_t *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (v3 < 8 || (&a3->i8[v3] > a2 ? (v4 = &a2->i8[v3] > a3) : (v4 = 0), v4))
    {
      v5 = 0;
      v6 = a3;
      v7 = a2;
      goto LABEL_10;
    }

    if (v3 < 0x20)
    {
      v5 = 0;
      goto LABEL_17;
    }

    v5 = v3 & 0xFFFFFFFFFFFFFFE0;
    v10 = a2 + 1;
    v11 = a3 + 1;
    v12 = v3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v13 = vaddq_s8(v11[-1], v10[-1]);
      v14 = vaddq_s8(*v11, *v10);
      v10[-1] = v13;
      *v10 = v14;
      v10 += 2;
      v11 += 2;
      v12 -= 32;
    }

    while (v12);
    if (v3 != v5)
    {
      if ((v3 & 0x18) == 0)
      {
        v7 = (a2 + v5);
        v6 = (a3 + v5);
        goto LABEL_10;
      }

LABEL_17:
      v15 = v5;
      v5 = v3 & 0xFFFFFFFFFFFFFFF8;
      v6 = (a3 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v7 = (a2 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v16 = &a2->i8[v15];
      v17 = &a3->i8[v15];
      v18 = v15 - (v3 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v19 = *v17++;
        *v13.i8 = vadd_s8(v19, *v16);
        *v16++ = *v13.i8;
        v18 += 8;
      }

      while (v18);
      if (v3 == v5)
      {
        return *v13.i64;
      }

LABEL_10:
      v8 = v3 - v5;
      do
      {
        v9 = v6->i8[0];
        v6 = (v6 + 1);
        v7->i8[0] += v9;
        v7 = (v7 + 1);
        --v8;
      }

      while (v8);
    }
  }

  return *v13.i64;
}

double sub_100387088(uint64_t a1, uint8x16_t *a2, uint8x16_t *a3)
{
  v3 = *(a1 + 19);
  v4 = (v3 + 7) >> 3;
  v5 = *(a1 + 8);
  if (!*(a1 + 19))
  {
    goto LABEL_14;
  }

  if (v3 <= 0x78 || (&a3->i8[v4] > a2 ? (v6 = &a2->i8[v4] > a3) : (v6 = 0), v6))
  {
    v7 = 0;
LABEL_12:
    v9 = v4 - v7;
    do
    {
      v10 = a3->u8[0];
      a3 = (a3 + 1);
      a2->i8[0] += v10 >> 1;
      a2 = (a2 + 1);
      --v9;
    }

    while (v9);
    goto LABEL_14;
  }

  v7 = ((v3 + 7) >> 3) & 0x30;
  v8 = vsraq_n_u8(*a2, *a3, 1uLL);
  *a2 = v8;
  if (v7 != 16)
  {
    v8 = vsraq_n_u8(a2[1], a3[1], 1uLL);
    a2[1] = v8;
  }

  a2 = (a2 + (v4 & 0x30));
  a3 = (a3 + (v4 & 0x30));
  if (v4 != v7)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v5 == v4)
  {
    return *v8.i64;
  }

  v11 = v5 - v4;
  v12 = -v4;
  if (v5 - v4 < 8)
  {
    v13 = 0;
LABEL_17:
    v14 = a2;
    v15 = a3;
    goto LABEL_18;
  }

  v13 = 0;
  v18 = (a2 + v11);
  v19 = a2 >= &a2->i8[v5 - 2 * v4] || (a2 - v4) >= v18;
  v20 = !v19;
  v21 = a3 >= v18 || a2 >= &a3->i8[v11];
  if (!v21 || (v20 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (v11 >= 0x20)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFE0;
    v22 = a3 + 1;
    v23 = v11 & 0xFFFFFFFFFFFFFFE0;
    v24 = a2;
    do
    {
      v8 = vaddq_s8(*v24, vhaddq_u8(*(v24 - v4), v22[-1]));
      v25 = vaddq_s8(v24[1], vhaddq_u8(*(&v24[1] - v4), *v22));
      *v24 = v8;
      v24[1] = v25;
      v24 += 2;
      v22 += 2;
      v23 -= 32;
    }

    while (v23);
    if (v11 == v13)
    {
      return *v8.i64;
    }

    if ((v11 & 0x18) == 0)
    {
      v15 = (a3 + v13);
      v14 = (a2 + v13);
LABEL_18:
      v16 = v13 + v4 - v5;
      do
      {
        v17 = v15->u8[0];
        v15 = (v15 + 1);
        v14->i8[0] += (v14->u8[v12] + v17) >> 1;
        v14 = (v14 + 1);
        v19 = __CFADD__(v16++, 1);
      }

      while (!v19);
      return *v8.i64;
    }
  }

  else
  {
    v13 = 0;
  }

  v26 = v13;
  v13 = v11 & 0xFFFFFFFFFFFFFFF8;
  v14 = (a2 + (v11 & 0xFFFFFFFFFFFFFFF8));
  v15 = (a3 + (v11 & 0xFFFFFFFFFFFFFFF8));
  v27 = &a3->i8[v26];
  v28 = &a2->i8[v26];
  v29 = v26 - (v11 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v30 = *v27++;
    *v8.i8 = vadd_s8(*v28, vhadd_u8(*(v28 - v4), v30));
    *v28++ = *v8.i8;
    v29 += 8;
  }

  while (v29);
  if (v11 != v13)
  {
    goto LABEL_18;
  }

  return *v8.i64;
}

uint64_t sub_100387258(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(result + 8);
  v4 = *a3;
  v5 = *a2 + v4;
  *a2 = v5;
  if (v3 >= 2)
  {
    v6 = &a2[v3];
    v7 = a2 + 1;
    v8 = a3 + 1;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v11 = v10 - v4;
      v12 = v5 - v4;
      if (v10 - v4 >= 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = -v11;
      }

      if (v12 >= 0)
      {
        v14 = v5 - v4;
      }

      else
      {
        v14 = v4 - v5;
      }

      v15 = v11 + v12;
      if (v15 < 0)
      {
        v15 = -v15;
      }

      if (v14 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v5 = v9;
        v16 = v14;
      }

      if (v15 >= v16)
      {
        LOBYTE(v4) = v5;
      }

      v5 = v4 + *v7;
      *v7++ = v5;
      v4 = v9;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t sub_1003872D4(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint16x8_t a4, double a5, int8x16_t a6, double a7, int8x16_t a8)
{
  v8 = (*(result + 19) + 7) >> 3;
  if (*(result + 19))
  {
    v9 = &a2->i8[v8];
    if (&a2->i8[v8] <= &a2->i8[1])
    {
      v9 = &a2->i8[1];
    }

    v10 = v9 - a2;
    if ((v9 - a2) < 0x20 || (&a3->i8[v10] > a2 ? (v11 = v9 > a3) : (v11 = 0), v11))
    {
      v12 = a2;
      v13 = a3;
    }

    else
    {
      v12 = (a2 + (v10 & 0xFFFFFFFFFFFFFFE0));
      v13 = (a3 + (v10 & 0xFFFFFFFFFFFFFFE0));
      v14 = a3 + 1;
      v15 = a2 + 1;
      v16 = v10 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        a6 = v14[-1];
        a4 = vaddq_s8(a6, v15[-1]);
        v17 = vaddq_s8(*v14, *v15);
        v15[-1] = a4;
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 32;
      }

      while (v16);
      if (v10 == (v10 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_15:
        a3 = v13;
        v19 = *(result + 8);
        if (v12 >= &a2->i8[v19])
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    do
    {
      v18 = v13->i8[0];
      v13 = (v13 + 1);
      v12->i8[0] += v18;
      v12 = (v12 + 1);
    }

    while (v12 < &a2->i8[v8]);
    goto LABEL_15;
  }

  v12 = a2;
  v19 = *(result + 8);
  if (a2 >= &a2->i8[v19])
  {
    return result;
  }

LABEL_18:
  v20 = -v8;
  v21 = &a2->i8[v19];
  v22 = &a2->i8[v19] - v12;
  v23 = (a2 + v19);
  if (v22 < 4 || ((v35 = &a3->i8[-v8], v36 = v21 - &v12->i8[v8], v37 = a3->u64 + v36, v12 < &v12->i8[v36]) ? (v38 = &v12->i8[v20] >= v23) : (v38 = 1), v38 ? (v39 = 0) : (v39 = 1), v12 < &a3->i8[v22] ? (v40 = a3 >= v23) : (v40 = 1), v40 ? (v41 = 0) : (v41 = 1), v35 < v23 ? (v42 = v12 >= v37) : (v42 = 1), !v42 || (v39 & 1) != 0 || (v41 & 1) != 0))
  {
    v24 = v12;
    v25 = a3;
  }

  else
  {
    if (v22 < 0x10)
    {
      v43 = 0;
LABEL_60:
      v24 = (v12 + (v22 & 0xFFFFFFFFFFFFFFFCLL));
      v25 = (a3 + (v22 & 0xFFFFFFFFFFFFFFFCLL));
      v78 = (a3->u32 + v43);
      v79 = (v12->i32 + v43);
      v80 = v43 - (v22 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        a4.i32[0] = *(v78 + v20);
        a4 = vmovl_u8(*a4.i8);
        v81 = vmovl_u16(*a4.i8);
        a6.i32[0] = *(v79 + v20);
        v82 = vmovl_u8(*a6.i8).u64[0];
        v83 = *v78++;
        a8.i32[0] = v83;
        a8.i64[0] = vmovl_u8(*a8.i8).u64[0];
        v84 = vabdq_u32(v81, vmovl_u16(*a8.i8));
        v85 = vabdq_u32(v81, vmovl_u16(v82));
        v86 = vabsq_s32(vaddq_s32(vsubl_u16(*a8.i8, *a4.i8), vsubl_u16(v82, *a4.i8)));
        *a6.i8 = vbsl_s8(vmovn_s32(vcgtq_u32(v84, v85)), *a8.i8, v82);
        *v85.i8 = vmovn_s32(vcgtq_u32(vminq_u32(v85, v84), v86));
        *a4.i8 = vbsl_s8(*v85.i8, *a4.i8, *a6.i8);
        v85.i32[0] = *v79;
        a4.i64[0] = vaddw_u8(a4, *v85.i8).u64[0];
        *a4.i8 = vuzp1_s8(*a4.i8, *a4.i8);
        *v79++ = a4.i32[0];
        v80 += 4;
      }

      while (v80);
      if (v22 == (v22 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return result;
      }

      goto LABEL_20;
    }

    v43 = v22 & 0xFFFFFFFFFFFFFFF0;
    a4.i32[1] = -243;
    a6.i32[1] = -251;
    v44 = v22 & 0xFFFFFFFFFFFFFFF0;
    v45 = v12;
    v46 = a3;
    do
    {
      v47 = *(v46 + v20);
      v48 = vqtbl1q_s8(v47, xmmword_1003E3710);
      v49 = vqtbl1q_s8(v47, xmmword_1003E3700);
      v50 = vqtbl1q_s8(v47, xmmword_1003E3730);
      v51 = *(v45 + v20);
      v52 = vqtbl1q_s8(v47, xmmword_1003E3720);
      v53 = vqtbl1q_s8(v51, xmmword_1003E3710);
      v54 = vqtbl1q_s8(v51, xmmword_1003E3700);
      v55 = vqtbl1q_s8(v51, xmmword_1003E3730);
      v56 = vqtbl1q_s8(v51, xmmword_1003E3720);
      v57 = *v46++;
      v58 = vqtbl1q_s8(v57, xmmword_1003E3710);
      v59 = vqtbl1q_s8(v57, xmmword_1003E3700);
      v60 = vqtbl1q_s8(v57, xmmword_1003E3730);
      v61 = vqtbl1q_s8(v57, xmmword_1003E3720);
      v62 = vsubq_s32(v61, v52);
      v63 = vsubq_s32(v60, v50);
      v64 = vsubq_s32(v59, v49);
      v65 = vsubq_s32(v58, v48);
      v66 = vsubq_s32(v56, v52);
      v67 = vsubq_s32(v55, v50);
      v68 = vsubq_s32(v54, v49);
      v69 = vsubq_s32(v53, v48);
      v70 = vabdq_u32(v52, v61);
      v71 = vabdq_u32(v50, v60);
      v72 = vabdq_u32(v49, v59);
      v73 = vabdq_u32(v48, v58);
      v74 = vabdq_u32(v52, v56);
      v75 = vabdq_u32(v50, v55);
      v76 = vabdq_u32(v49, v54);
      v77 = vabdq_u32(v48, v53);
      a8 = vaddq_s8(vbslq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_u32(vminq_u32(v74, v70), vabsq_s32(vaddq_s32(v62, v66))), vcgtq_u32(vminq_u32(v75, v71), vabsq_s32(vaddq_s32(v63, v67)))), vuzp1q_s16(vcgtq_u32(vminq_u32(v76, v72), vabsq_s32(vaddq_s32(v64, v68))), vcgtq_u32(vminq_u32(v77, v73), vabsq_s32(vaddq_s32(v65, v69))))), v47, vbslq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_u32(v70, v74), vcgtq_u32(v71, v75)), vuzp1q_s16(vcgtq_u32(v72, v76), vcgtq_u32(v73, v77))), v57, v51)), *v45);
      *v45++ = a8;
      v44 -= 16;
    }

    while (v44);
    if (v22 == v43)
    {
      return result;
    }

    if ((v22 & 0xC) != 0)
    {
      goto LABEL_60;
    }

    v25 = (a3 + v43);
    v24 = (v12 + v43);
  }

  do
  {
LABEL_20:
    v26 = v25->u8[v20];
    v27 = v24->u8[v20];
    v29 = v25->u8[0];
    v25 = (v25 + 1);
    v28 = v29;
    v30 = v29 - v26;
    v31 = v27 - v26;
    if (v29 - v26 >= 0)
    {
      v32 = v30;
    }

    else
    {
      v32 = -v30;
    }

    if (v31 >= 0)
    {
      result = v31;
    }

    else
    {
      result = (v26 - v27);
    }

    v33 = v30 + v31;
    if (v33 < 0)
    {
      v33 = -v33;
    }

    if (result >= v32)
    {
      v34 = v32;
    }

    else
    {
      LOBYTE(v27) = v28;
      v34 = result;
    }

    if (v33 >= v34)
    {
      LOBYTE(v26) = v27;
    }

    v24->i8[0] += v26;
    v24 = (v24 + 1);
  }

  while (v24 != v23);
  return result;
}

uint64_t sub_100387670(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    if (a3)
    {
      *(a2 + 202) = *a3;
      *(a2 + 210) = *(a3 + 8);
      *(a2 + 8) |= 0x20u;
    }
  }

  return result;
}

void *sub_10038769C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (result && a2)
  {
    v7 = result;
    v8 = *(a2 + 240);
    if (v8)
    {
      sub_10037BAB4(result, v8);
      *(a2 + 240) = 0;
    }

    *(a2 + 236) = a3;
    result = sub_10037BD48(v7, a3);
    *(a2 + 240) = result;
    if (result)
    {
      *(a2 + 300) |= 0x8000u;
      if (*(a2 + 236) >= 1)
      {
        v9 = 0;
        do
        {
          *(*(a2 + 240) + v9) = *(a4 + v9);
          ++v9;
        }

        while (v9 < *(a2 + 236));
      }

      *(a2 + 8) |= 0x10000u;
    }

    else
    {

      return sub_10037AB5C(v7, "Insufficient memory for eXIf chunk data");
    }
  }

  return result;
}

void *sub_100387774(void *result, uint64_t a2, const void *a3)
{
  if (result && a2)
  {
    if (*(a2 + 32) - 257 <= 0xFFFFFEFF)
    {
      v3 = "Invalid palette size, hIST allocation skipped";

      return sub_10037AB5C(result, v3);
    }

    v5 = result;
    sub_100376A18(result, a2, 8u, 0);
    result = sub_10037BD48(v5, 0x200uLL);
    *(a2 + 256) = result;
    if (!result)
    {
      v3 = "Insufficient memory for hIST chunk data";
      result = v5;

      return sub_10037AB5C(result, v3);
    }

    v7 = a2;
    *(a2 + 300) |= 8u;
    if (*(a2 + 32))
    {
      result = memcpy(result, a3, 2 * *(a2 + 32));
      v7 = a2;
    }

    *(v7 + 8) |= 0x40u;
  }

  return result;
}

uint64_t sub_100387868(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, unsigned __int8 a9)
{
  if (!result || !a2)
  {
    return result;
  }

  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 36) = a5;
  *(a2 + 37) = a6;
  *(a2 + 38) = a8;
  *(a2 + 39) = a9;
  *(a2 + 40) = a7;
  result = sub_100378AB4(result, a3, a4, a5, a6, a7, a8, a9);
  v11 = *(a2 + 37);
  if (v11 == 3)
  {
    v12 = 1;
LABEL_7:
    *(a2 + 41) = v12;
    goto LABEL_8;
  }

  v12 = v11 & 2 | 1;
  *(a2 + 41) = v12;
  if ((v11 & 4) != 0)
  {
    v12 = (v11 & 2) + 2;
    goto LABEL_7;
  }

LABEL_8:
  v13 = *(a2 + 36) * v12;
  *(a2 + 42) = v13;
  v14 = v13 >= 8u;
  v15 = (v13 * a3 + 7) >> 3;
  v16 = a3 * (v13 >> 3);
  if (!v14)
  {
    v16 = v15;
  }

  *(a2 + 16) = v16;
  return result;
}

uint64_t sub_100387938(uint64_t result, uint64_t a2, int a3, int a4, char a5)
{
  if (result)
  {
    if (a2)
    {
      *(a2 + 212) = a3;
      *(a2 + 216) = a4;
      *(a2 + 220) = a5;
      *(a2 + 8) |= 0x100u;
    }
  }

  return result;
}

void sub_100387958(uint64_t a1, uint64_t a2, char *__s, int a4, int a5, unsigned int a6, unsigned int a7, const char *a8, const char **a9)
{
  if (!a1 || !a2 || !__s || !a8 || a7 >= 1 && !a9)
  {
    return;
  }

  v14 = strlen(__s);
  if (a6 >= 4)
  {
    v15 = "Invalid pCAL equation type";
LABEL_27:

    sub_10037B590(a1, v15, 1);
    return;
  }

  if (a7 > 0xFF)
  {
    v15 = "Invalid pCAL parameter count";
    goto LABEL_27;
  }

  v16 = v14;
  if (a7)
  {
    v17 = a7;
    v18 = a9;
    while (*v18)
    {
      v19 = strlen(*v18);
      if (!sub_100378EAC(*v18, v19))
      {
        break;
      }

      ++v18;
      if (!--v17)
      {
        goto LABEL_17;
      }
    }

    v15 = "Invalid format for pCAL parameter";
    goto LABEL_27;
  }

LABEL_17:
  v20 = sub_10037BD48(a1, v16 + 1);
  *(a2 + 264) = v20;
  if (!v20)
  {
    v15 = "Insufficient memory for pCAL purpose";
    goto LABEL_27;
  }

  memcpy(v20, __s, v16 + 1);
  *(a2 + 272) = a4;
  *(a2 + 276) = a5;
  *(a2 + 296) = a6;
  *(a2 + 297) = a7;
  v21 = strlen(a8);
  v22 = sub_10037BD48(a1, v21 + 1);
  *(a2 + 280) = v22;
  if (v22)
  {
    memcpy(v22, a8, v21 + 1);
    v23 = sub_10037BD48(a1, 8 * a7 + 8);
    *(a2 + 288) = v23;
    if (v23)
    {
      bzero(v23, 8 * a7 + 8);
      if (!a7)
      {
LABEL_24:
        *(a2 + 8) |= 0x400u;
        *(a2 + 300) |= 0x80u;
        return;
      }

      v24 = 0;
      v25 = 8 * a7;
      while (1)
      {
        v26 = strlen(a9[v24 / 8]);
        v27 = sub_10037BD48(a1, v26 + 1);
        *(*(a2 + 288) + v24) = v27;
        if (!v27)
        {
          break;
        }

        memcpy(v27, a9[v24 / 8], v26 + 1);
        v24 += 8;
        if (v25 == v24)
        {
          goto LABEL_24;
        }
      }

      v28 = "Insufficient memory for pCAL parameter";
    }

    else
    {
      v28 = "Insufficient memory for pCAL params";
    }
  }

  else
  {
    v28 = "Insufficient memory for pCAL units";
  }

  sub_10037AB5C(a1, v28);
}

void *sub_100387BEC(void *result, uint64_t a2, int a3, char *__s, const char *a5)
{
  if (result && a2)
  {
    v6 = a3;
    v7 = result;
    if ((a3 - 3) <= 0xFFFFFFFD)
    {
      sub_10037A948(result, "Invalid sCAL unit");
    }

    if (!__s || (v10 = strlen(__s)) == 0 || *__s == 45 || (v11 = v10, !sub_100378EAC(__s, v10)))
    {
      sub_10037A948(v7, "Invalid sCAL width");
    }

    if (!a5 || (v12 = strlen(a5)) == 0 || *a5 == 45 || (v13 = v12, !sub_100378EAC(a5, v12)))
    {
      sub_10037A948(v7, "Invalid sCAL height");
    }

    *(a2 + 332) = v6;
    v14 = sub_10037BD48(v7, v11 + 1);
    *(a2 + 336) = v14;
    if (v14)
    {
      memcpy(v14, __s, v11 + 1);
      v15 = sub_10037BD48(v7, v13 + 1);
      *(a2 + 344) = v15;
      if (v15)
      {
        result = memcpy(v15, a5, v13 + 1);
        *(a2 + 8) |= 0x4000u;
        *(a2 + 300) |= 0x100u;
        return result;
      }

      sub_10037BAB4(v7, *(a2 + 336));
      *(a2 + 336) = 0;
    }

    return sub_10037AB5C(v7, "Memory allocation failed while processing sCAL");
  }

  return result;
}

uint64_t sub_100387D78(uint64_t result, uint64_t a2, int a3, int a4, char a5)
{
  if (result)
  {
    if (a2)
    {
      *(a2 + 224) = a3;
      *(a2 + 228) = a4;
      *(a2 + 232) = a5;
      *(a2 + 8) |= 0x80u;
    }
  }

  return result;
}

_BYTE *sub_100387D98(_BYTE *result, uint64_t a2, const void *a3, unsigned int a4)
{
  if (!result || !a2)
  {
    return result;
  }

  v5 = result;
  if (*(a2 + 37) == 3)
  {
    if ((a4 & 0x80000000) != 0 || 1 << *(a2 + 36) < a4)
    {
      sub_10037A948(result, "Invalid palette length");
    }

    goto LABEL_11;
  }

  if (a4 <= 0x100)
  {
LABEL_11:
    if (!a3 && a4 || !a4 && (result[976] & 1) == 0)
    {
      sub_10037A948(result, "Invalid palette");
    }

    sub_100376A18(result, a2, 0x1000u, 0);
    result = sub_10037BAD4(v5, 0x300uLL);
    v8 = result;
    *(v5 + 73) = result;
    if (a4)
    {
      result = memcpy(result, a3, 3 * a4);
    }

    *(a2 + 24) = v8;
    *(v5 + 296) = a4;
    *(a2 + 32) = a4;
    *(a2 + 300) |= 0x1000u;
    *(a2 + 8) |= 8u;
    return result;
  }

  return sub_10037AB5C(result, "Invalid palette length");
}

uint64_t sub_100387ECC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    if (a3)
    {
      *(a2 + 176) = *a3;
      *(a2 + 180) = *(a3 + 4);
      *(a2 + 8) |= 2u;
    }
  }

  return result;
}

uint64_t sub_100387EF8(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4)
{
  result = 0;
  if (!a3 || !a1 || !a2 || a4 < 1)
  {
    return result;
  }

  v7 = a3;
  v8 = *(a2 + 148);
  if (*(a2 + 152) - v8 < a4)
  {
    v9 = v7;
    if ((v8 ^ 0x7FFFFFFFu) < a4 || (v8 + a4 >= 2147483639 ? (v10 = 0x7FFFFFFF) : (v10 = ((v8 + a4) & 0xFFFFFFF8) + 8), v11 = a4, (v12 = sub_10037BC34(a1, *(a2 + 160), v8, v10 - v8, 0x38uLL)) == 0))
    {
      v33 = "too many text chunks";
      v34 = a1;
      goto LABEL_47;
    }

    v13 = v12;
    sub_10037BAB4(a1, *(a2 + 160));
    a4 = v11;
    *(a2 + 160) = v13;
    *(a2 + 300) |= 0x4000u;
    *(a2 + 152) = v10;
    v7 = v9;
  }

  v14 = a4;
  v15 = (v7 + 48);
  v35 = a1;
  while (1)
  {
    v16 = *(v15 - 5);
    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = *(v15 - 12);
    if ((v17 - 3) > 0xFFFFFFFB)
    {
      break;
    }

    sub_10037B590(a1, "text compression mode is out of range", 1);
LABEL_14:
    v15 += 7;
    if (!--v14)
    {
      return 0;
    }
  }

  v18 = strlen(v16);
  if (v17 < 1)
  {
    v20 = 0;
    v22 = 0;
    v23 = *(v15 - 4);
    if (v23)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v19 = *(v15 - 1);
  if (v19)
  {
    v20 = strlen(v19);
    v21 = *v15;
    if (*v15)
    {
      goto LABEL_20;
    }

LABEL_25:
    v22 = 0;
    v23 = *(v15 - 4);
    if (v23)
    {
      goto LABEL_26;
    }

LABEL_28:
    v24 = 0;
    if (v17 < 1)
    {
      v17 = -1;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v20 = 0;
    v21 = *v15;
    if (!*v15)
    {
      goto LABEL_25;
    }

LABEL_20:
    v22 = strlen(v21);
    v23 = *(v15 - 4);
    if (!v23)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (!*v23)
    {
      goto LABEL_28;
    }

    v24 = strlen(v23);
  }

  v25 = *(a2 + 160) + 56 * *(a2 + 148);
  *v25 = v17;
  v26 = sub_10037BB9C(v35, v18 + v20 + v22 + v24 + 4);
  *(v25 + 8) = v26;
  v27 = (v25 + 8);
  if (v26)
  {
    memcpy(v26, *(v15 - 5), v18);
    *(*v27 + v18) = 0;
    if (*(v15 - 12) < 1)
    {
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      v30 = (*v27 + v18 + 1);
      *(v25 + 16) = v30;
      if (v24)
      {
LABEL_34:
        memcpy(v30, *(v15 - 4), v24);
        v30 = *(v25 + 16);
      }
    }

    else
    {
      v28 = (*(v25 + 8) + v18 + 1);
      *(v25 + 40) = v28;
      memcpy(v28, *(v15 - 1), v20);
      *(*(v25 + 40) + v20) = 0;
      v29 = (*(v25 + 40) + v20 + 1);
      *(v25 + 48) = v29;
      memcpy(v29, *v15, v22);
      *(*(v25 + 48) + v22) = 0;
      v30 = (*(v25 + 48) + v22 + 1);
      *(v25 + 16) = v30;
      if (v24)
      {
        goto LABEL_34;
      }
    }

    *(v30 + v24) = 0;
    if (*v25 <= 0)
    {
      v31 = v24;
    }

    else
    {
      v31 = 0;
    }

    if (*v25 <= 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v24;
    }

    *(v25 + 24) = v31;
    *(v25 + 32) = v32;
    ++*(a2 + 148);
    a1 = v35;
    goto LABEL_14;
  }

  v33 = "text chunk: out of memory";
  v34 = v35;
LABEL_47:
  sub_10037B590(v34, v33, 1);
  return 1;
}

uint64_t sub_100388200(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2 && a3 && (*(result + 293) & 2) == 0)
  {
    if (*(a3 + 2) - 13 >= 0xFFFFFFF4 && *(a3 + 3) - 32 >= 0xFFFFFFE1 && *(a3 + 4) <= 0x17u && *(a3 + 5) <= 0x3Bu && *(a3 + 6) < 0x3Du)
    {
      *(a2 + 168) = *a3;
      *(a2 + 8) |= 0x200u;
    }

    else
    {
      return sub_10037AB5C(result, "Ignoring invalid time value");
    }
  }

  return result;
}

void sub_10038827C(void *a1, uint64_t a2, const void *a3, unsigned int a4, uint64_t a5)
{
  if (a1 && a2)
  {
    if (a3)
    {
      sub_100376A18(a1, a2, 0x2000u, 0);
      if (a4 - 1 >= 0x100)
      {
        v10 = *(a2 + 184);
      }

      else
      {
        v10 = sub_10037BB44(a1, 0x100uLL);
        *(a2 + 184) = v10;
        memcpy(v10, a3, a4);
      }

      a1[92] = v10;
    }

    if (a5)
    {
      v11 = *(a2 + 36);
      if (v11 > 0xF)
      {
        goto LABEL_20;
      }

      v12 = ~(-1 << v11);
      if (*(a2 + 37) == 2)
      {
        if (*(a5 + 2) <= v12 && *(a5 + 4) <= v12 && *(a5 + 6) <= v12)
        {
LABEL_20:
          *(a2 + 192) = *a5;
          *(a2 + 200) = *(a5 + 8);
          if (a4 <= 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = a4;
          }

          *(a2 + 34) = v13;
          goto LABEL_24;
        }
      }

      else if (*(a2 + 37) || *(a5 + 8) <= v12)
      {
        goto LABEL_20;
      }

      sub_10037AB5C(a1, "tRNS chunk has out-of-range samples for bit_depth");
      goto LABEL_20;
    }

    *(a2 + 34) = a4;
    if (a4)
    {
LABEL_24:
      *(a2 + 8) |= 0x10u;
      *(a2 + 300) |= 0x2000u;
    }
  }
}

void sub_1003883C8(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4)
{
  if (!a3)
  {
    return;
  }

  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  v6 = a4;
  if (a4 < 1)
  {
    return;
  }

  v7 = a3;
  v8 = sub_10037BC34(a1, *(a2 + 320), *(a2 + 328), a4, 0x20uLL);
  if (!v8)
  {
    v16 = "too many sPLT chunks";
LABEL_18:

    sub_10037B590(a1, v16, 1);
    return;
  }

  v9 = v8;
  sub_10037BAB4(a1, *(a2 + 320));
  *(a2 + 320) = v9;
  *(a2 + 300) |= 0x20u;
  for (i = &v9[32 * *(a2 + 328)]; ; i += 32)
  {
    while (1)
    {
      v11 = *v7;
      if (*v7)
      {
        if (*(v7 + 16))
        {
          break;
        }
      }

      sub_10037B2E0(a1, "png_set_sPLT: invalid sPLT");
      if (!--v6)
      {
        return;
      }
    }

    i[8] = *(v7 + 8);
    v12 = strlen(v11);
    v13 = sub_10037BB9C(a1, v12 + 1);
    *i = v13;
    if (!v13)
    {
      break;
    }

    memcpy(v13, *v7, v12 + 1);
    v14 = sub_10037BBC0(a1, *(v7 + 24), 0xAuLL);
    *(i + 2) = v14;
    if (!v14)
    {
      sub_10037BAB4(a1, *i);
      *i = 0;
      break;
    }

    v15 = *(v7 + 24);
    *(i + 6) = v15;
    memcpy(v14, *(v7 + 16), 10 * v15);
    *(a2 + 8) |= 0x2000u;
    ++*(a2 + 328);
    v7 += 32;
    if (!--v6)
    {
      return;
    }
  }

  if (v6 >= 1)
  {
    v16 = "sPLT out of memory";
    goto LABEL_18;
  }
}

void sub_10038857C(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4)
{
  if (a3)
  {
    if (a1)
    {
      if (a2)
      {
        v6 = a4;
        if (a4 >= 1)
        {
          v7 = a3;
          v8 = sub_10037BC34(a1, *(a2 + 304), *(a2 + 312), a4, 0x20uLL);
          if (v8)
          {
            v9 = v8;
            sub_10037BAB4(a1, *(a2 + 304));
            *(a2 + 304) = v9;
            *(a2 + 300) |= 0x200u;
            v10 = &v9[32 * *(a2 + 312)];
            while (1)
            {
              while (1)
              {
                *v10 = *v7;
                v10[4] = 0;
                v12 = *(v7 + 24) & 0xB;
                if (!v12)
                {
                  if ((*(a1 + 293) & 0x80) != 0 || (sub_10037B2B8(a1, "png_set_unknown_chunks now expects a valid location"), (v12 = *(a1 + 292) & 0xB) == 0))
                  {
                    sub_10037A948(a1, "invalid location in png_set_unknown_chunks");
                  }
                }

                do
                {
                  v13 = v12;
                  v14 = v12 & -v12;
                  v12 ^= v14;
                }

                while (v13 != v14);
                v10[24] = v13;
                v15 = *(v7 + 16);
                if (v15)
                {
                  break;
                }

                *(v10 + 1) = 0;
                *(v10 + 2) = 0;
LABEL_8:
                v10 += 32;
                ++*(a2 + 312);
                v7 += 32;
                v11 = __OFSUB__(v6--, 1);
                if ((v6 < 0) ^ v11 | (v6 == 0))
                {
                  return;
                }
              }

              v16 = sub_10037BB9C(a1, v15);
              *(v10 + 1) = v16;
              if (v16)
              {
                v17 = *(v7 + 16);
                memcpy(v16, *(v7 + 8), v17);
                *(v10 + 2) = v17;
                goto LABEL_8;
              }

              sub_10037B590(a1, "unknown chunk: out of memory", 1);
              v7 += 32;
              v11 = __OFSUB__(v6--, 1);
              if ((v6 < 0) ^ v11 | (v6 == 0))
              {
                return;
              }
            }
          }

          sub_10037B590(a1, "too many unknown chunks", 1);
        }
      }
    }
  }
}

uint64_t sub_100388740(uint64_t a1, unsigned __int8 *a2, _BYTE *a3)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = 0;
      v5 = 0;
      v6 = 1;
      v7 = a2;
      while (1)
      {
        v8 = v3 >= 0xA1 || v3 - 127 >= 0xFFFFFFA2;
        LODWORD(v9) = !v8;
        if (v8)
        {
          v6 = 0;
          *a3++ = v3;
          ++v5;
          v10 = *++v7;
          v3 = v10;
          if (!v10)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v6)
          {
            if (!v4)
            {
              v4 = v3;
            }
          }

          else
          {
            *a3++ = 32;
            ++v5;
            if (v3 != 32)
            {
              v4 = v3;
            }
          }

          v6 = 1;
          v11 = *++v7;
          v3 = v11;
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        if (v5 >= 0x4F)
        {
          goto LABEL_24;
        }
      }
    }

    v5 = 0;
    v4 = 0;
    LODWORD(v9) = 1;
    v7 = a2;
LABEL_24:
    if (v5)
    {
      v9 = v9;
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & (v4 == 0)) != 0)
    {
      v13 = 32;
    }

    else
    {
      v13 = v4;
    }

    a3[-v9] = 0;
    v12 = v5 - v9;
    if (v12)
    {
      if (*v7)
      {
        sub_10037AB5C(a1, "keyword truncated");
      }

      else if (v13)
      {
        memset(v16, 0, sizeof(v16));
        sub_10037AD0C(v16, 1u, a2);
        sub_10037AD68(v16, 2u, 4, v13);
        sub_10037AF4C(a1, v16, "keyword @1: bad character '0x@2'");
      }
    }
  }

  else
  {
    v12 = 0;
    *a3 = 0;
  }

  return v12;
}

uint64_t sub_1003888E8(uint64_t result)
{
  if (result)
  {
    *(result + 300) |= 1u;
  }

  return result;
}

uint64_t sub_1003888FC(uint64_t result)
{
  if (result)
  {
    if (*(result + 608) == 16)
    {
      *(result + 300) |= 0x10u;
    }
  }

  return result;
}

uint64_t sub_10038891C(uint64_t result)
{
  if (result)
  {
    if (*(result + 608) <= 7u)
    {
      *(result + 300) |= 4u;
      *(result + 609) = 8;
    }
  }

  return result;
}

uint64_t sub_100388944(uint64_t a1)
{
  if (!a1 || !*(a1 + 604))
  {
    return 1;
  }

  *(a1 + 300) |= 2u;
  return 7;
}

uint64_t sub_10038896C(uint64_t result, int8x16_t *a2)
{
  if (*(result + 16) == 4)
  {
    v5 = *(result + 17);
    if (v5 == 16)
    {
      v9 = *(result + 8);
      if (v9)
      {
        for (i = 0; i < v9; i += 4)
        {
          v11 = &a2->i8[i];
          *v11 = ~a2->i8[i];
          v11[1] = ~a2->i8[i + 1];
        }
      }
    }

    else if (v5 == 8)
    {
      v6 = *(result + 8);
      if (v6)
      {
        if (v6 >= 3)
        {
          v18 = ((v6 - 1) >> 1) + 1;
          v7 = 2 * (v18 & 0xFFFFFFFFFFFFFFFELL);
          v8 = (a2 + v7);
          v19 = &a2->i8[2];
          v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v21 = ~*v19;
            *(v19 - 2) = ~*(v19 - 2);
            *v19 = v21;
            v19 += 4;
            v20 -= 2;
          }

          while (v20);
          if (v18 == (v18 & 0xFFFFFFFFFFFFFFFELL))
          {
            return result;
          }
        }

        else
        {
          v7 = 0;
          v8 = a2;
        }

        do
        {
          v8->i8[0] = ~v8->i8[0];
          v8 = (v8 + 2);
          v7 += 2;
        }

        while (v7 < v6);
      }
    }
  }

  else if (!*(result + 16))
  {
    v2 = *(result + 8);
    if (v2)
    {
      if (v2 < 8)
      {
        v3 = 0;
        v4 = a2;
        goto LABEL_31;
      }

      if (v2 >= 0x20)
      {
        v3 = v2 & 0xFFFFFFFFFFFFFFE0;
        v12 = a2 + 1;
        v13 = v2 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v14 = vmvnq_s8(*v12);
          v12[-1] = vmvnq_s8(v12[-1]);
          *v12 = v14;
          v12 += 2;
          v13 -= 32;
        }

        while (v13);
        if (v2 == v3)
        {
          return result;
        }

        if ((v2 & 0x18) == 0)
        {
          v4 = (a2 + v3);
LABEL_31:
          v22 = v2 - v3;
          do
          {
            v4->i8[0] = ~v4->i8[0];
            v4 = (v4 + 1);
            --v22;
          }

          while (v22);
          return result;
        }
      }

      else
      {
        v3 = 0;
      }

      v15 = v3;
      v3 = v2 & 0xFFFFFFFFFFFFFFF8;
      v4 = (a2 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v16 = &a2->i8[v15];
      v17 = v15 - (v2 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        *v16 = vmvn_s8(*v16);
        ++v16;
        v17 += 8;
      }

      while (v17);
      if (v2 != v3)
      {
        goto LABEL_31;
      }
    }
  }

  return result;
}

uint64_t sub_100388B00(uint64_t result, char *a2)
{
  if (*(result + 17) == 16)
  {
    v2 = *result * *(result + 18);
    if (v2)
    {
      if (v2 < 8)
      {
        LODWORD(v3) = 0;
        v4 = a2;
        goto LABEL_16;
      }

      if (v2 >= 0x20)
      {
        v5 = v2 & 0xFFFFFFE0;
        v6 = a2 + 32;
        v7 = v5;
        do
        {
          v8 = v6 - 32;
          v17 = vld2q_s8(v8);
          v18 = vld2q_s8(v6);
          v9 = v17.val[0];
          v10 = v18.val[0];
          vst2q_s8(v8, *(&v17 + 16));
          vst2q_s8(v6, *(&v18 + 16));
          v6 += 64;
          v7 -= 32;
        }

        while (v7);
        if (v5 == v2)
        {
          return result;
        }

        if ((v2 & 0x18) == 0)
        {
          v4 = &a2[2 * v5];
          LODWORD(v3) = v2 & 0xFFFFFFE0;
LABEL_16:
          v14 = v2 - v3;
          do
          {
            v15 = *v4;
            *v4 = v4[1];
            v4[1] = v15;
            v4 += 2;
            --v14;
          }

          while (v14);
          return result;
        }
      }

      else
      {
        v5 = 0;
      }

      v3 = v2 & 0xFFFFFFF8;
      v4 = &a2[2 * v3];
      v11 = &a2[2 * v5];
      v12 = v5 - v3;
      do
      {
        v16 = vld2_s8(v11);
        v13 = v16.val[0];
        vst2_s8(v11, *(&v16 + 8));
        v11 += 16;
        v12 += 8;
      }

      while (v12);
      if (v3 != v2)
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_100388BE0(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 17);
  if (v2 <= 7)
  {
    v3 = *(result + 8);
    switch(v2)
    {
      case 1u:
        v4 = &unk_1003EB920;
        if (v3 < 1)
        {
          return result;
        }

        break;
      case 4u:
        v4 = &unk_1003EBB20;
        if (v3 < 1)
        {
          return result;
        }

        break;
      case 2u:
        v4 = &unk_1003EBA20;
        if (v3 < 1)
        {
          return result;
        }

        break;
      default:
        return result;
    }

    v5 = &a2[v3];
    do
    {
      *a2 = v4[*a2];
      ++a2;
    }

    while (a2 < v5);
  }

  return result;
}

uint64_t sub_100388C5C(uint64_t result, _BYTE *a2, int a3)
{
  v3 = *(result + 8);
  v4 = &a2[v3];
  v5 = *(result + 18);
  if (v5 == 4)
  {
    v10 = *(result + 17);
    if (v10 == 16)
    {
      v16 = 6;
      if (a3)
      {
        v16 = 0;
      }

      v8 = &a2[v16];
      v17 = 2;
      if (!a3)
      {
        v17 = 8;
      }

      if (v17 < v3)
      {
        v18 = &a2[v17];
        do
        {
          *v8 = *v18;
          v8[1] = v18[1];
          v8[2] = v18[2];
          v8[3] = v18[3];
          v8[4] = v18[4];
          v8[5] = v18[5];
          v8 += 6;
          v18 += 8;
        }

        while (v18 < v4);
      }

      *(result + 19) = 48;
      *(result + 18) = 3;
      if (*(result + 16) != 6)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v10 != 8)
      {
        return result;
      }

      v11 = 3;
      if (a3)
      {
        v11 = 0;
      }

      v8 = &a2[v11];
      v12 = 4;
      if (a3)
      {
        v12 = 1;
      }

      if (v12 < v3)
      {
        v13 = &a2[v12];
        do
        {
          *v8 = *v13;
          v8[1] = v13[1];
          v8[2] = v13[2];
          v8 += 3;
          v13 += 4;
        }

        while (v13 < v4);
      }

      *(result + 19) = 24;
      *(result + 18) = 3;
      if (*(result + 16) != 6)
      {
        goto LABEL_42;
      }
    }

    *(result + 16) = 2;
    goto LABEL_42;
  }

  if (v5 != 2)
  {
    return result;
  }

  v6 = *(result + 17);
  if (v6 == 16)
  {
    v14 = a2 + 4;
    if (a3)
    {
      v15 = a2;
    }

    else
    {
      v15 = a2 + 2;
    }

    if (a3)
    {
      v14 = a2 + 2;
    }

    if (v14 >= v4)
    {
      v8 = v15;
      *(result + 19) = 16;
      *(result + 18) = 1;
      if (*(result + 16) != 4)
      {
        goto LABEL_42;
      }

      goto LABEL_32;
    }

    do
    {
      *v15 = *v14;
      v8 = v15 + 2;
      v15[1] = v14[1];
      v14 += 4;
      v15 += 2;
    }

    while (v14 < v4);
  }

  else
  {
    if (v6 != 8)
    {
      return result;
    }

    v7 = a2 + 2;
    if (a3)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2 + 1;
    }

    if (a3)
    {
      v7 = a2 + 1;
    }

    for (; v7 < v4; ++v8)
    {
      v9 = *v7;
      v7 += 2;
      *v8 = v9;
    }
  }

  *(result + 19) = v6;
  *(result + 18) = 1;
  if (*(result + 16) == 4)
  {
LABEL_32:
    *(result + 16) = 0;
  }

LABEL_42:
  *(result + 8) = v8 - a2;
  return result;
}

unsigned int *sub_100388E50(unsigned int *result, char *a2)
{
  v2 = *(result + 16);
  if ((v2 & 2) != 0)
  {
    v3 = *result;
    v4 = *(result + 17);
    if (v4 == 16)
    {
      if (v2 == 2)
      {
        for (; v3; LODWORD(v3) = v3 - 1)
        {
          v11 = *a2;
          *a2 = *(a2 + 2);
          *(a2 + 2) = v11;
          a2 += 6;
        }
      }

      else if (v2 == 6 && v3 != 0)
      {
        do
        {
          v8 = *a2;
          *a2 = *(a2 + 2);
          *(a2 + 2) = v8;
          a2 += 8;
          LODWORD(v3) = v3 - 1;
        }

        while (v3);
      }
    }

    else
    {
      if (v4 != 8)
      {
        return result;
      }

      if (v2 == 2)
      {
        if (!v3)
        {
          return result;
        }

        if (v3 == 1)
        {
          LODWORD(v9) = 0;
          v10 = a2;
        }

        else
        {
          v9 = v3 & 0xFFFFFFFE;
          v10 = &a2[3 * v9];
          v19 = a2 + 2;
          v20 = v9;
          do
          {
            v21 = *(v19 - 2);
            v22 = v19[1];
            v23 = v19[3];
            *(v19 - 2) = *v19;
            v19[1] = v23;
            *v19 = v21;
            v19[3] = v22;
            v19 += 6;
            v20 -= 2;
          }

          while (v20);
          if (v9 == v3)
          {
            return result;
          }
        }

        v24 = v3 - v9;
        do
        {
          v25 = *v10;
          *v10 = v10[2];
          v10[2] = v25;
          v10 += 3;
          --v24;
        }

        while (v24);
        return result;
      }

      if (v2 == 6 && v3)
      {
        if (v3 == 1)
        {
          LODWORD(v5) = 0;
          v6 = a2;
LABEL_25:
          v17 = v3 - v5;
          do
          {
            v18 = *v6;
            *v6 = v6[2];
            v6[2] = v18;
            v6 += 4;
            --v17;
          }

          while (v17);
          return result;
        }

        v5 = v3 & 0xFFFFFFFE;
        v6 = &a2[4 * v5];
        v12 = a2 + 4;
        v13 = v5;
        do
        {
          v14 = *(v12 - 4);
          v15 = *v12;
          v16 = v12[2];
          *(v12 - 4) = *(v12 - 2);
          *v12 = v16;
          *(v12 - 2) = v14;
          v12[2] = v15;
          v12 += 8;
          v13 -= 2;
        }

        while (v13);
        if (v5 != v3)
        {
          goto LABEL_25;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100388FDC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 17);
  if (*(result + 592))
  {
    v3 = 1 << v2 <= *(result + 592);
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return result;
  }

  v4 = -(*a2 * *(a2 + 19)) & 7;
  v5 = *(result + 544);
  v6 = *(a2 + 8);
  v7 = v5 + v6;
  v8 = (v5 + v6 - 1);
  if (*(a2 + 17) > 3u)
  {
    if (v2 == 4)
    {
      if (v8 > v5)
      {
        v43 = *(result + 596);
        v44 = *v8 >> v4;
        v45 = v44 & 0xF;
        if (v45 <= v43)
        {
          v46 = *(result + 596);
        }

        else
        {
          v46 = v44 & 0xF;
        }

        v47 = v44 >> 4;
        if (v44 >> 4 <= v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = v44 >> 4;
        }

        if (v45 > v43 || v47 > v46)
        {
          *(result + 596) = v48;
        }

        for (i = (v7 - 2); i > v5; --i)
        {
          v51 = v48;
          v52 = *i;
          v53 = v52 & 0xF;
          if (v53 <= v51)
          {
            v54 = v51;
          }

          else
          {
            v54 = v52 & 0xF;
          }

          v55 = v52 >> 4;
          if (v52 >> 4 <= v54)
          {
            v48 = v54;
          }

          else
          {
            v48 = v52 >> 4;
          }

          if (v53 > v51 || v55 > v54)
          {
            *(result + 596) = v48;
          }
        }
      }
    }

    else if (v2 == 8 && v8 > v5)
    {
      v35 = *(result + 596);
      do
      {
        v36 = *v8;
        if (v35 < v36)
        {
          *(result + 596) = v36;
          v35 = v36;
        }

        --v8;
      }

      while (v8 > v5);
    }

    return result;
  }

  if (v2 != 1)
  {
    if (v2 == 2 && v8 > v5)
    {
      v9 = *(result + 596);
      v10 = *v8 >> v4;
      v11 = v10 & 3;
      if (v11 <= v9)
      {
        v12 = *(result + 596);
      }

      else
      {
        v12 = v10 & 3;
      }

      v13 = (v10 >> 2) & 3;
      if (v13 <= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = (v10 >> 2) & 3;
      }

      v15 = (v10 >> 4) & 3;
      if (v15 <= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = (v10 >> 4) & 3;
      }

      v17 = v10 >> 6;
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (v11 > v9 || v13 > v12 || v15 > v14 || v17 > v16)
      {
        *(result + 596) = v18;
      }

      for (j = (v7 - 2); j > v5; --j)
      {
        v23 = v18;
        v24 = *j;
        v25 = v24 & 3;
        if (v25 <= v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = v24 & 3;
        }

        v27 = (v24 >> 2) & 3;
        if (v27 <= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = (v24 >> 2) & 3;
        }

        v29 = (v24 >> 4) & 3;
        if (v29 <= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = (v24 >> 4) & 3;
        }

        v31 = v24 >> 6;
        if (v24 >> 6 <= v30)
        {
          v18 = v30;
        }

        else
        {
          v18 = v24 >> 6;
        }

        if (v25 > v23 || v27 > v26 || v29 > v28 || v31 > v30)
        {
          *(result + 596) = v18;
        }
      }
    }

    return result;
  }

  if (v8 > v5)
  {
    if (*v8 >> v4)
    {
      *(result + 596) = 1;
    }

    v37 = (v7 - 2);
    if (v7 - 2 > v5)
    {
      v38 = v6 - 2;
      if ((v6 - 2) >= 8)
      {
        if (v38 < 0x10)
        {
          v39 = 0;
LABEL_76:
          v37 -= v38 & 0xFFFFFFFFFFFFFFF8;
          v40 = v39 - (v38 & 0xFFFFFFFFFFFFFFF8);
          v41 = (v6 - v39 + v5 - 9);
          do
          {
            if (*v41--)
            {
              *(result + 596) = 1;
            }

            v40 += 8;
          }

          while (v40);
          if (v38 != (v38 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_119;
          }

          return result;
        }

        v39 = v38 & 0xFFFFFFFFFFFFFFF0;
        v57 = (v7 - 17);
        v58 = v38 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v59 = vrev64q_s8(*v57);
          v60 = vextq_s8(v59, v59, 8uLL);
          if (vmaxvq_u8(vtstq_s8(v60, v60)))
          {
            *(result + 596) = 1;
          }

          --v57;
          v58 -= 16;
        }

        while (v58);
        if (v38 == v39)
        {
          return result;
        }

        if ((v38 & 8) != 0)
        {
          goto LABEL_76;
        }

        v37 -= v39;
      }

      do
      {
LABEL_119:
        if (*v37)
        {
          *(result + 596) = 1;
        }

        --v37;
      }

      while (v37 > v5);
    }
  }

  return result;
}

uint64_t sub_1003892BC(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    sub_10037A948(a1, "Call to NULL write function");
  }

  return v2();
}

size_t sub_1003892EC(size_t result, void *__ptr, size_t a3)
{
  if (result)
  {
    v3 = result;
    result = fwrite(__ptr, 1uLL, a3, *(result + 256));
    if (result != a3)
    {
      sub_10037A948(v3, "Write Error");
    }
  }

  return result;
}

uint64_t sub_10038933C(uint64_t result)
{
  v1 = *(result + 648);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10038934C(uint64_t result)
{
  if (result)
  {
    return fflush(*(result + 256));
  }

  return result;
}

void *sub_10038935C(void *result, uint64_t a2, size_t (*a3)(size_t result, void *__ptr, size_t a3), uint64_t (*a4)(uint64_t result))
{
  if (result)
  {
    result[32] = a2;
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = sub_1003892EC;
    }

    result[30] = v4;
    if (a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = sub_10038934C;
    }

    result[81] = v5;
    if (result[31])
    {
      result[31] = 0;
      return sub_10037AB5C(result, "Can't set both read_data_fn and write_data_fn in the same structure");
    }
  }

  return result;
}

uint64_t sub_1003893B0(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v3 = result;
  if ((*(result + 293) & 4) != 0)
  {
    return result;
  }

  sub_10038AFA4(result);
  if ((*(v3 + 293) & 0x10) != 0 && *(v3 + 976))
  {
    sub_10037AB5C(v3, "MNG features are not allowed in a PNG datastream");
    *(v3 + 976) = 0;
  }

  result = sub_10038B1E8(v3, *a2, *(a2 + 4), *(a2 + 36), *(a2 + 37), *(a2 + 38), *(a2 + 39), *(a2 + 40));
  v4 = *(a2 + 126);
  if ((v4 & 0x8008) == 8)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_11;
    }

    result = sub_10038C0A4(v3, *(a2 + 52));
    v4 = *(a2 + 126);
  }

  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    v5 = *(a2 + 8);
    if ((v5 & 0x1000) != 0)
    {
      if ((v5 & 0x800) != 0)
      {
        sub_10037B2B8(v3, "profile matches sRGB but writing iCCP instead");
      }

      result = sub_10038C138(v3, *(a2 + 128), *(a2 + 136));
    }

    else if ((v5 & 0x800) != 0)
    {
      result = sub_10038C0DC(v3, *(a2 + 124));
    }
  }

  if ((*(a2 + 8) & 2) != 0)
  {
    result = sub_10038CC34(v3, (a2 + 176), *(a2 + 37));
  }

  if ((*(a2 + 126) & 0x8010) == 0x10 && (*(a2 + 8) & 4) != 0)
  {
    result = sub_10038CD34(v3, (a2 + 56));
  }

  v6 = *(a2 + 312);
  if (v6 > 0)
  {
    v7 = *(a2 + 304);
    v8 = v7 + 32 * v6;
    do
    {
      if (*(v7 + 24))
      {
        result = sub_100376E84(v3, v7);
        if (result != 1 && (result == 3 || (*(v7 + 3) & 0x20) != 0 || !result && *(v3 + 952) == 3))
        {
          v9 = *(v7 + 16);
          if (!v9)
          {
            sub_10037AB5C(v3, "Writing zero-length unknown chunk");
            v9 = *(v7 + 16);
          }

          result = sub_10038B044(v3, v7, *(v7 + 8), v9);
        }
      }

      v7 += 32;
    }

    while (v7 < v8);
  }

  *(v3 + 292) |= 0x400u;
  return result;
}

void sub_100389590(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  sub_1003893B0(a1, a2);
  v4 = *(a2 + 8);
  if ((v4 & 8) != 0)
  {
    sub_10038B4E4(a1, *(a2 + 24), *(a2 + 32));
    v4 = *(a2 + 8);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (*(a2 + 37) == 3)
    {
      sub_10037A948(a1, "Valid palette required for paletted images");
    }

    if ((v4 & 0x10) == 0)
    {
LABEL_6:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  if ((*(a1 + 302) & 8) != 0 && *(a2 + 37) == 3 && *(a2 + 34))
  {
    v5 = 0;
    if (*(a2 + 34) >= 0x100u)
    {
      v6 = 256;
    }

    else
    {
      v6 = *(a2 + 34);
    }

    do
    {
      *(*(a2 + 184) + v5) = ~*(*(a2 + 184) + v5);
      ++v5;
    }

    while (v6 != v5);
  }

  sub_10038CE10(a1, *(a2 + 184), (a2 + 192), *(a2 + 34), *(a2 + 37));
  v4 = *(a2 + 8);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  sub_10038CFAC(a1, (a2 + 202), *(a2 + 37));
  v4 = *(a2 + 8);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  sub_10038D120(a1, *(a2 + 240), *(a2 + 236));
  v4 = *(a2 + 8);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_10038D274(a1, *(a2 + 256), *(a2 + 32));
  v4 = *(a2 + 8);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_10038DD58(a1, *(a2 + 212), *(a2 + 216), *(a2 + 220));
  v4 = *(a2 + 8);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_10038DE14(a1, *(a2 + 264), *(a2 + 272), *(a2 + 276), *(a2 + 296), *(a2 + 297), *(a2 + 280), *(a2 + 288));
  v4 = *(a2 + 8);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  sub_10038E120(a1, *(a2 + 332), *(a2 + 336), *(a2 + 344));
  v4 = *(a2 + 8);
  if ((v4 & 0x80) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  sub_10038E258(a1, *(a2 + 224), *(a2 + 228), *(a2 + 232));
  v4 = *(a2 + 8);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

LABEL_33:
    if (*(a2 + 328) >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        sub_10038C6A8(a1, *(a2 + 320) + v7);
        ++v8;
        v7 += 32;
      }

      while (v8 < *(a2 + 328));
    }

    goto LABEL_36;
  }

LABEL_32:
  sub_10038E328(a1, (a2 + 168));
  *(a1 + 292) |= 0x200u;
  if ((*(a2 + 8) & 0x2000) != 0)
  {
    goto LABEL_33;
  }

LABEL_36:
  if (*(a2 + 148) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 160);
    do
    {
      v12 = *(v11 + v9);
      if (v12 < 1)
      {
        if (v12 != -1)
        {
          if (!v12)
          {
            sub_10038D5C8(a1, *(v11 + v9 + 8), *(v11 + v9 + 16), 0);
            v11 = *(a2 + 160);
            *(v11 + v9) = -2;
          }

          goto LABEL_40;
        }

        sub_10038D408(a1, *(v11 + v9 + 8), *(v11 + v9 + 16));
        v11 = *(a2 + 160);
      }

      else
      {
        sub_10038D8E0(a1, v12, *(v11 + v9 + 8), *(v11 + v9 + 40), *(v11 + v9 + 48), *(v11 + v9 + 16));
        v11 = *(a2 + 160);
        if (*(v11 + v9) != -1)
        {
          *(v11 + v9) = -2;
          goto LABEL_40;
        }
      }

      *(v11 + v9) = -3;
LABEL_40:
      ++v10;
      v9 += 56;
    }

    while (v10 < *(a2 + 148));
  }

  v13 = *(a2 + 312);
  if (v13 > 0)
  {
    v14 = *(a2 + 304);
    v15 = v14 + 32 * v13;
    do
    {
      if ((*(v14 + 24) & 2) != 0)
      {
        v17 = sub_100376E84(a1, v14);
        if (v17 != 1 && (v17 == 3 || (*(v14 + 3) & 0x20) != 0 || !v17 && *(a1 + 952) == 3))
        {
          v16 = *(v14 + 16);
          if (!v16)
          {
            sub_10037AB5C(a1, "Writing zero-length unknown chunk");
            v16 = *(v14 + 16);
          }

          sub_10038B044(a1, v14, *(v14 + 8), v16);
        }
      }

      v14 += 32;
    }

    while (v14 < v15);
  }
}

uint64_t sub_100389908(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((*(result + 292) & 4) == 0)
    {
      sub_10037A948(result, "No IDATs written into file");
    }

    if (*(result + 596) > *(result + 592))
    {
      sub_10037B0C0(result, "Wrote palette index exceeding num_palette");
    }

    if (a2)
    {
      if ((*(a2 + 9) & 2) != 0 && (*(v2 + 293) & 2) == 0)
      {
        sub_10038E328(v2, (a2 + 168));
      }

      if (*(a2 + 148) >= 1)
      {
        v4 = 0;
        v5 = 0;
        v6 = *(a2 + 160);
        do
        {
          v7 = *(v6 + v4);
          if (v7 < 1)
          {
            if ((v7 & 0x80000000) == 0)
            {
              sub_10038D5C8(v2, *(v6 + v4 + 8), *(v6 + v4 + 16), 0);
              v6 = *(a2 + 160);
              *(v6 + v4) = -2;
              goto LABEL_12;
            }

            if (v7 != -1)
            {
              goto LABEL_12;
            }

            sub_10038D408(v2, *(v6 + v4 + 8), *(v6 + v4 + 16));
            v6 = *(a2 + 160);
          }

          else
          {
            sub_10038D8E0(v2, v7, *(v6 + v4 + 8), *(v6 + v4 + 40), *(v6 + v4 + 48), *(v6 + v4 + 16));
            v6 = *(a2 + 160);
            if (*(v6 + v4) != -1)
            {
              *(v6 + v4) = -2;
              goto LABEL_12;
            }
          }

          *(v6 + v4) = -3;
LABEL_12:
          ++v5;
          v4 += 56;
        }

        while (v5 < *(a2 + 148));
      }

      if (*(a2 + 10))
      {
        sub_10038D120(v2, *(a2 + 240), *(a2 + 236));
      }

      v8 = *(a2 + 312);
      if (v8 > 0)
      {
        v9 = *(a2 + 304);
        v10 = v9 + 32 * v8;
        do
        {
          if ((*(v9 + 24) & 8) != 0)
          {
            v12 = sub_100376E84(v2, v9);
            if (v12 != 1 && (v12 == 3 || (*(v9 + 3) & 0x20) != 0 || !v12 && *(v2 + 952) == 3))
            {
              v11 = *(v9 + 16);
              if (!v11)
              {
                sub_10037AB5C(v2, "Writing zero-length unknown chunk");
                v11 = *(v9 + 16);
              }

              sub_10038B044(v2, v9, *(v9 + 8), v11);
            }
          }

          v9 += 32;
        }

        while (v9 < v10);
      }
    }

    *(v2 + 292) |= 8u;

    return sub_10038BFCC(v2);
  }

  return result;
}

_DWORD *sub_100389B3C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100376770(a1, a2, a3, a4, 0, 0, 0);
  if (result)
  {
    result[118] = 0;
    *(result + 58) = 0x80000000FLL;
    *(result + 27) = xmmword_1003EBC20;
    *(result + 28) = xmmword_1003EBC30;
    result[74] |= 0x200000u;
    v5 = result;
    sub_10038935C(result, 0, 0, 0);
    return v5;
  }

  return result;
}

void sub_100389BB4(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 524) || *(a1 + 605))
  {
    if (!*(a1 + 604))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if ((*(a1 + 293) & 4) == 0)
    {
      sub_10037A948(a1, "png_write_info was never called before png_write_row");
    }

    v19 = a2;
    sub_10038E3D0(a1);
    a2 = v19;
    if (!*(a1 + 604))
    {
      goto LABEL_6;
    }
  }

  if ((*(a1 + 300) & 2) == 0)
  {
    goto LABEL_6;
  }

  v18 = *(a1 + 605);
  if (v18 <= 2)
  {
    if (*(a1 + 605))
    {
      if (v18 == 1)
      {
        if ((*(a1 + 524) & 7) == 0 && *(a1 + 496) > 4u)
        {
          goto LABEL_6;
        }
      }

      else if (v18 != 2 || (*(a1 + 524) & 7) == 4)
      {
        goto LABEL_6;
      }

      goto LABEL_55;
    }

    if ((*(a1 + 524) & 7) != 0)
    {
      goto LABEL_55;
    }

LABEL_6:
    v28 = 0;
    v29 = 0;
    v3 = *(a1 + 508);
    v4 = *(a1 + 612);
    v5 = *(a1 + 609);
    if ((v5 * v4) >= 8u)
    {
      v6 = v3 * ((v5 * v4) >> 3);
    }

    else
    {
      v6 = ((v5 * v4) * v3 + 7) >> 3;
    }

    v7 = *(a1 + 607);
    v29 = v6;
    v30 = v7;
    LODWORD(v28) = v3;
    BYTE2(v30) = v4;
    BYTE1(v30) = v5;
    *(&v30 + 3) = (v5 * v4);
    memcpy((*(a1 + 544) + 1), a2, v6);
    if (*(a1 + 604))
    {
      v13 = *(a1 + 605);
      if (v13 <= 5 && (*(a1 + 300) & 2) != 0)
      {
        sub_10038E8FC(&v28, (*(a1 + 544) + 1), v13);
        if (!v28)
        {
          sub_10038E530(a1);
          return;
        }
      }
    }

    if (*(a1 + 300))
    {
      sub_10038A334(a1, &v28, v8);
    }

    if (BYTE3(v30) != *(a1 + 610) || BYTE3(v30) != *(a1 + 615))
    {
      sub_10037A948(a1, "internal write transform logic error");
    }

    if ((*(a1 + 976) & 4) == 0 || *(a1 + 980) != 64)
    {
      goto LABEL_70;
    }

    v14 = v30;
    if ((v30 & 2) == 0)
    {
      goto LABEL_71;
    }

    v15 = *(a1 + 544);
    v16 = v28;
    if (BYTE1(v30) != 16)
    {
      if (BYTE1(v30) == 8)
      {
        if (v30 == 2)
        {
          v17 = 3;
LABEL_62:
          if (v28)
          {
            v21 = (v15 + 3);
            do
            {
              v22 = *(v21 - 1);
              *(v21 - 2) -= v22;
              *v21 -= v22;
              v21 += v17;
              --v16;
            }

            while (v16);
          }

          goto LABEL_70;
        }

        if (v30 == 6)
        {
          v17 = 4;
          goto LABEL_62;
        }
      }

LABEL_70:
      v14 = v30;
LABEL_71:
      if (v14 == 3 && (*(a1 + 596) & 0x80000000) == 0)
      {
        sub_100388FDC(a1, &v28);
      }

      sub_10038ED14(a1, &v28, v8, v9, v10, v11, v12);
      v27 = *(a1 + 768);
      if (v27)
      {
        v27(a1, *(a1 + 524), *(a1 + 605));
      }

      return;
    }

    if (v30 == 2)
    {
      v20 = 6;
    }

    else
    {
      if (v30 != 6)
      {
        goto LABEL_70;
      }

      v20 = 8;
    }

    if (v28)
    {
      v23 = (v15 + 3);
      do
      {
        v24 = __rev16(*v23);
        v25 = __rev16(*(v23 - 1)) - v24;
        v26 = __rev16(v23[1]) - v24;
        *(v23 - 2) = BYTE1(v25);
        *(v23 - 1) = v25;
        *(v23 + 2) = BYTE1(v26);
        *(v23 + 3) = v26;
        v23 = (v23 + v20);
        --v16;
      }

      while (v16);
    }

    goto LABEL_70;
  }

  if (*(a1 + 605) > 4u)
  {
    if (v18 == 5)
    {
      if ((*(a1 + 524) & 1) == 0 && *(a1 + 496) > 1u)
      {
        goto LABEL_6;
      }
    }

    else if (v18 != 6 || (*(a1 + 524) & 1) != 0)
    {
      goto LABEL_6;
    }
  }

  else if (v18 == 3)
  {
    if ((*(a1 + 524) & 3) == 0 && *(a1 + 496) > 2u)
    {
      goto LABEL_6;
    }
  }

  else if (v18 != 4 || (*(a1 + 524) & 3) == 2)
  {
    goto LABEL_6;
  }

LABEL_55:

  sub_10038E530(a1);
}

void sub_100389F50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_100388944(a1);
    if (v4 >= 1)
    {
      if (*(a1 + 500))
      {
        v5 = v4;
        v6 = 0;
        v7 = 1;
        do
        {
          if (v7)
          {
            v8 = 0;
            do
            {
              sub_100389BB4(a1, *(a2 + 8 * v8));
              v7 = *(a1 + 500);
              ++v8;
            }

            while (v8 < v7);
          }

          ++v6;
        }

        while (v6 != v5);
      }
    }
  }
}

uint64_t sub_100389FE4(uint64_t result)
{
  if (result && *(result + 524) < *(result + 504))
  {
    v2 = result;
    sub_10038B6F8(result, 0, 0, 2);
    *(v2 + 660) = 0;

    return sub_10038933C(v2);
  }

  return result;
}

uint64_t *sub_10038A044(uint64_t *result, void **a2)
{
  if (result)
  {
    v2 = result;
    v3 = *result;
    if (*result)
    {
      sub_10037697C(*result, a2);
      *v2 = 0;
      if ((*(v3 + 296) & 2) != 0)
      {
        deflateEnd((v3 + 312));
      }

      sub_10038B1A0(v3, (v3 + 424));
      sub_10037BAB4(v3, *(v3 + 544));
      *(v3 + 544) = 0;
      sub_10037BAB4(v3, *(v3 + 536));
      sub_10037BAB4(v3, *(v3 + 552));
      sub_10037BAB4(v3, *(v3 + 560));
      *(v3 + 536) = 0;
      *(v3 + 552) = 0u;
      sub_10037BAB4(v3, *(v3 + 960));
      *(v3 + 960) = 0;

      return sub_10037BA18(v3);
    }
  }

  return result;
}

uint64_t sub_10038A10C(uint64_t result, int a2, unsigned int a3)
{
  if (result)
  {
    v3 = a3;
    v4 = result;
    v5 = (*(result + 976) >> 2) & 1;
    if (a2 != 64)
    {
      v5 = 0;
    }

    if (a2 && !v5)
    {
      sub_10037A948(result, "Unknown custom filter method");
    }

    if (a3 > 2u)
    {
      if (a3 - 5 < 3)
      {
        result = sub_10037B2E0(result, "Unknown row filter for method 0");
        *(v4 + 606) = 8;
        if (!*(v4 + 544))
        {
          goto LABEL_44;
        }

        goto LABEL_26;
      }

      if (a3 == 3)
      {
        *(result + 606) = 64;
        if (!*(result + 544))
        {
          goto LABEL_44;
        }

        goto LABEL_26;
      }

      if (a3 == 4)
      {
        *(result + 606) = 0x80;
        if (!*(result + 544))
        {
          goto LABEL_44;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (!a3)
      {
        *(result + 606) = 8;
        if (!*(result + 544))
        {
          goto LABEL_44;
        }

        goto LABEL_26;
      }

      if (a3 == 1)
      {
        *(result + 606) = 16;
        if (!*(result + 544))
        {
          goto LABEL_44;
        }

        goto LABEL_26;
      }

      if (a3 == 2)
      {
        *(result + 606) = 32;
        if (!*(result + 544))
        {
          goto LABEL_44;
        }

        goto LABEL_26;
      }
    }

    *(result + 606) = a3;
    if (!*(result + 544))
    {
      goto LABEL_44;
    }

LABEL_26:
    if (*(v4 + 500) == 1)
    {
      v6 = v3 & 0xFFFFFF1F;
    }

    else
    {
      v6 = v3;
    }

    if (*(v4 + 496) == 1)
    {
      v3 = v6 & 0xFFFFFF2F;
    }

    else
    {
      v3 = v6;
    }

    if ((v3 & 0xE0) != 0 && !*(v4 + 536))
    {
      result = sub_10037B2B8(v4, "png_set_filter: UP/AVG/PAETH cannot be added after start");
      v3 &= 0xFFFFFF1F;
    }

    v7 = ((v3 >> 4) & 1) + ((v3 >> 5) & 1) + ((v3 >> 6) & 1) + ((v3 >> 7) & 1);
    v8 = *(v4 + 609) * *(v4 + 612);
    v9 = *(v4 + 496);
    v10 = v8 >= 8;
    v11 = (v9 * v8 + 7) >> 3;
    v12 = v9 * (v8 >> 3);
    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (*(v4 + 552))
    {
      if (v7 < 2)
      {
        goto LABEL_44;
      }

LABEL_42:
      if (!*(v4 + 560))
      {
        result = sub_10037BB44(v4, v13 + 1);
        *(v4 + 560) = result;
      }

      goto LABEL_44;
    }

    result = sub_10037BB44(v4, v13 + 1);
    *(v4 + 552) = result;
    if (v7 >= 2)
    {
      goto LABEL_42;
    }

LABEL_44:
    *(v4 + 606) = v3;
  }

  return result;
}

uint64_t sub_10038A310(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 436) = a2;
  }

  return result;
}

uint64_t sub_10038A31C(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 296) |= 1u;
    *(result + 452) = a2;
  }

  return result;
}

void sub_10038A334(uint64_t a1, unsigned int *a2, int16x8_t a3)
{
  if (!a1)
  {
    return;
  }

  v5 = *(a1 + 300);
  if ((v5 & 0x100000) != 0)
  {
    v6 = *(a1 + 272);
    if (v6)
    {
      v6(a1, a2, *(a1 + 544) + 1);
      v5 = *(a1 + 300);
    }
  }

  if ((v5 & 0x8000) == 0)
  {
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_100388BE0(a2, (*(a1 + 544) + 1));
    v5 = *(a1 + 300);
    if ((v5 & 4) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_11;
  }

  sub_100388C5C(a2, (*(a1 + 544) + 1), ((*(a1 + 296) >> 7) & 1) == 0);
  v5 = *(a1 + 300);
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v5 & 4) == 0)
  {
    goto LABEL_45;
  }

LABEL_11:
  if (*(a2 + 17) != 8 || *(a2 + 18) != 1)
  {
    goto LABEL_45;
  }

  v7 = (*(a1 + 544) + 1);
  v8 = *(a1 + 608);
  if (v8 == 4)
  {
    v18 = *a2;
    if (*a2)
    {
      v19 = (*(a1 + 544) + 1);
      while (1)
      {
        v13 = 16 * *v19;
        if (v18 == 1)
        {
          break;
        }

        *v7++ = v19[1] & 0xF | v13;
        v19 += 2;
        v18 -= 2;
        if (!v18)
        {
          goto LABEL_42;
        }
      }

      v16 = v7;
      goto LABEL_41;
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 != 1 || !*a2)
      {
        goto LABEL_42;
      }

      v9 = 0;
      v10 = 0;
      v11 = -*a2;
      while (1)
      {
        v12 = &v7[v10];
        v13 = (v7[v10] != 0) << 7;
        if (v11 + v10 == -1)
        {
          break;
        }

        v13 |= (v12[1] != 0) << 6;
        if (v11 + v10 == -2)
        {
          break;
        }

        v13 |= 32 * (v12[2] != 0);
        if (v11 + v10 == -3)
        {
          break;
        }

        v13 |= 16 * (v12[3] != 0);
        if (v11 + v10 == -4)
        {
          break;
        }

        v13 |= 8 * (v12[4] != 0);
        if (v11 + v10 == -5)
        {
          break;
        }

        v13 |= 4 * (v12[5] != 0);
        if (v11 + v10 == -6)
        {
          break;
        }

        v13 |= 2 * (v12[6] != 0);
        if (v11 + v10 == -7)
        {
          break;
        }

        v7[v9] = v13 | (v12[7] != 0);
        v10 += 8;
        ++v9;
        if (!(v11 + v10))
        {
          goto LABEL_42;
        }
      }

      v16 = &v7[v9];
      goto LABEL_41;
    }

    if (*a2)
    {
      v14 = 0;
      v15 = -*a2;
      v16 = (*(a1 + 544) + 1);
      while (1)
      {
        v17 = &v7[v14];
        v13 = v7[v14] << 6;
        if (v15 + v14 == -1)
        {
          break;
        }

        v13 |= 16 * (v17[1] & 3);
        if (v15 + v14 == -2)
        {
          break;
        }

        v13 |= 4 * (v17[2] & 3);
        if (v15 + v14 == -3)
        {
          break;
        }

        *v16++ = v17[3] & 3 | v13;
        v14 += 4;
        if (!(v15 + v14))
        {
          goto LABEL_42;
        }
      }

LABEL_41:
      *v16 = v13;
    }
  }

LABEL_42:
  *(a2 + 17) = v8;
  v20 = *(a2 + 18) * v8;
  *(a2 + 19) = v20;
  v21 = v20 >= 8u;
  v22 = (*a2 * v20 + 7) >> 3;
  v23 = *a2 * (v20 >> 3);
  if (!v21)
  {
    v23 = v22;
  }

  *(a2 + 1) = v23;
  v5 = *(a1 + 300);
LABEL_45:
  if ((v5 & 0x10) != 0)
  {
    sub_100388B00(a2, (*(a1 + 544) + 1));
    v5 = *(a1 + 300);
  }

  if ((v5 & 8) != 0)
  {
    v24 = *(a2 + 16);
    if (v24 != 3)
    {
      v25 = *(a1 + 544);
      v26 = *(a2 + 17);
      if ((v24 & 2) != 0)
      {
        v27 = *(a1 + 725);
        v30 = *(a1 + 726);
        v31 = *(a1 + 727);
        v163[1] = v26 - v30;
        v163[2] = v26 - v31;
        v162[1] = v30;
        v162[2] = v31;
        v28 = 3;
        v29 = (v25 + 1);
        v163[0] = v26 - v27;
        v162[0] = v27;
        if ((v24 & 4) == 0)
        {
LABEL_54:
          if (v26 > 7)
          {
            v45 = *a2 * v28;
            if (v26 == 8)
            {
              if (v45)
              {
                for (i = 0; i != v45; ++i)
                {
                  v47 = 0;
                  v48 = v163[i % v28];
                  v49 = v162[i % v28];
                  if (v48 > -v49)
                  {
                    v47 = 0;
                    v50 = *v29;
                    v51 = -v48;
                    do
                    {
                      v52 = v50 >> v51;
                      v53 = v48 - v49;
                      v51 += v49;
                      v54 = v48 <= 0;
                      if (v48 <= 0)
                      {
                        LOBYTE(v55) = v52;
                      }

                      else
                      {
                        v55 = v50 << v48;
                      }

                      v47 |= v55;
                      v48 = v53;
                    }

                    while (!v54);
                  }

                  *v29++ = v47;
                }
              }
            }

            else if (v45)
            {
              for (j = 0; j != v45; ++j)
              {
                v57 = 0;
                v58 = v163[j % v28];
                v59 = v162[j % v28];
                if (v58 > -v59)
                {
                  v57 = 0;
                  v60 = __rev16(*v29);
                  v61 = -v58;
                  do
                  {
                    v62 = v60 >> v61;
                    v63 = v58 - v59;
                    v61 += v59;
                    v64 = v58 <= 0;
                    if (v58 <= 0)
                    {
                      v65 = v62;
                    }

                    else
                    {
                      v65 = v60 << v58;
                    }

                    v57 |= v65;
                    v58 = v63;
                  }

                  while (!v64);
                }

                *v29 = bswap32(v57) >> 16;
                v29 += 2;
              }
            }
          }

          else
          {
            v33 = *(a2 + 1);
            v34 = *(a1 + 728);
            if (v34 == 3 && v26 == 4)
            {
              v36 = 17;
            }

            else
            {
              v36 = 255;
            }

            if (v34 == 1 && v26 == 2)
            {
              v38 = 85;
            }

            else
            {
              v38 = v36;
            }

            if (v33)
            {
              if (v26)
              {
                for (k = 0; k != v33; ++k)
                {
                  v40 = 0;
                  v41 = *v29;
                  v42 = v26;
                  v43 = v27 - v26;
                  do
                  {
                    if (v42 - v27 <= 0)
                    {
                      v44 = (v41 >> v43) & v38;
                    }

                    else
                    {
                      v44 = v41 << (v42 - v27);
                    }

                    v40 |= v44;
                    v43 += v27;
                    v42 -= v27;
                  }

                  while (v42 > 0);
                  *v29++ = v40;
                }
              }

              else
              {
                bzero(v29, v33);
              }
            }
          }

          v5 = *(a1 + 300);
          goto LABEL_102;
        }
      }

      else
      {
        v27 = *(a1 + 728);
        v28 = 1;
        v29 = (v25 + 1);
        v163[0] = v26 - v27;
        v162[0] = v27;
        if ((v24 & 4) == 0)
        {
          goto LABEL_54;
        }
      }

      v32 = *(a1 + 729);
      v163[v28] = v26 - v32;
      v162[v28++] = v32;
      goto LABEL_54;
    }
  }

LABEL_102:
  if ((v5 & 0x20000) == 0)
  {
    goto LABEL_160;
  }

  v66 = *(a1 + 544);
  v67 = (v66 + 1);
  v68 = *(a2 + 16);
  if (v68 == 4)
  {
    v71 = *a2;
    if (*(a2 + 17) == 8)
    {
      if (!v71)
      {
        goto LABEL_160;
      }

      if (v71 < 8)
      {
        LODWORD(v72) = 0;
        goto LABEL_154;
      }

      if (v71 >= 0x20)
      {
        v75 = v71 & 0xFFFFFFE0;
        v91 = (v66 + 33);
        v92 = v75;
        do
        {
          v93 = v91 - 32;
          v166 = vld2q_s8(v93);
          v167 = vld2q_s8(v91);
          v94 = v166.val[0];
          v95 = v167.val[0];
          vst2q_s8(v93, *(&v166 + 16));
          vst2q_s8(v91, *(&v167 + 16));
          v91 += 64;
          v92 -= 32;
        }

        while (v92);
        if (v75 == v71)
        {
          goto LABEL_160;
        }

        if ((v71 & 0x18) == 0)
        {
          v67 = (v67 + 2 * v75);
          LODWORD(v72) = v71 & 0xFFFFFFE0;
          goto LABEL_154;
        }
      }

      else
      {
        v75 = 0;
      }

      v72 = v71 & 0xFFFFFFF8;
      v67 = (v67 + 2 * v72);
      v96 = (v66 + 2 * v75 + 1);
      v97 = v75 - v72;
      do
      {
        v165 = vld2_s8(v96);
        v98 = v165.val[0];
        vst2_s8(v96, *(&v165 + 8));
        v96 += 16;
        v97 += 8;
      }

      while (v97);
      if (v72 == v71)
      {
        goto LABEL_160;
      }

LABEL_154:
      v116 = v71 - v72;
      do
      {
        v117 = v67->i8[0];
        v67->i8[0] = v67->i8[1];
        v67->i8[1] = v117;
        v67 = (v67 + 2);
        --v116;
      }

      while (v116);
      goto LABEL_160;
    }

    if (!v71)
    {
      goto LABEL_160;
    }

    if (v71 < 8)
    {
      LODWORD(v73) = 0;
      goto LABEL_158;
    }

    if (v71 >= 0x20)
    {
      v76 = v71 & 0xFFFFFFE0;
      v99 = (v66 + 65);
      v100 = v76;
      do
      {
        v101 = v99[2];
        v102 = v99[3];
        v103 = *v99;
        v104 = v99[1];
        v105 = vrev32q_s16(v99[-3]);
        v106 = vrev32q_s16(v99[-4]);
        v107 = vrev32q_s16(v99[-1]);
        v99[-2] = vrev32q_s16(v99[-2]);
        v99[-1] = v107;
        v99[-4] = v106;
        v99[-3] = v105;
        a3 = vrev32q_s16(v104);
        v99[2] = vrev32q_s16(v101);
        v99[3] = vrev32q_s16(v102);
        *v99 = vrev32q_s16(v103);
        v99[1] = a3;
        v99 += 8;
        v100 -= 32;
      }

      while (v100);
      if (v76 == v71)
      {
        goto LABEL_160;
      }

      if ((v71 & 0x18) == 0)
      {
        v67 = (v67 + 4 * v76);
        LODWORD(v73) = v71 & 0xFFFFFFE0;
        goto LABEL_158;
      }
    }

    else
    {
      v76 = 0;
    }

    v73 = v71 & 0xFFFFFFF8;
    v67 = (v67 + 4 * v73);
    v108 = (v66 + 4 * v76 + 1);
    v109 = v76 - v73;
    do
    {
      *a3.i8 = vld4_s8(v108);
      v169.val[0] = v110;
      v169.val[1] = v111;
      v169.val[2] = a3.i64[0];
      v169.val[3] = v112;
      vst4_s8(v108, v169);
      v108 += 32;
      v109 += 8;
    }

    while (v109);
    if (v73 == v71)
    {
      goto LABEL_160;
    }

LABEL_158:
    v118 = v71 - v73;
    do
    {
      a3.i32[0] = v67->i32[0];
      v119 = vmovl_u8(*a3.i8).u64[0];
      v120 = vext_s8(v119, v119, 4uLL);
      *a3.i8 = vuzp1_s8(v120, v120);
      v67->i32[0] = a3.i32[0];
      v67 = (v67 + 4);
      --v118;
    }

    while (v118);
    goto LABEL_160;
  }

  if (v68 != 6)
  {
    goto LABEL_160;
  }

  v69 = *a2;
  if (*(a2 + 17) == 8)
  {
    if (!v69)
    {
      goto LABEL_160;
    }

    if (v69 < 8)
    {
      LODWORD(v70) = 0;
      goto LABEL_150;
    }

    if (v69 >= 0x20)
    {
      v74 = v69 & 0xFFFFFFE0;
      v77 = (v66 + 65);
      a3.i32[1] = 67569157;
      v78 = v74;
      do
      {
        v79 = v77[2];
        v80 = v77[3];
        v81 = *v77;
        v82 = v77[1];
        v83 = vqtbl1q_s8(v77[-3], xmmword_1003EBC40);
        v84 = vqtbl1q_s8(v77[-4], xmmword_1003EBC40);
        v85 = vqtbl1q_s8(v77[-1], xmmword_1003EBC40);
        v77[-2] = vqtbl1q_s8(v77[-2], xmmword_1003EBC40);
        v77[-1] = v85;
        v77[-4] = v84;
        v77[-3] = v83;
        v77[2] = vqtbl1q_s8(v79, xmmword_1003EBC40);
        v77[3] = vqtbl1q_s8(v80, xmmword_1003EBC40);
        *v77 = vqtbl1q_s8(v81, xmmword_1003EBC40);
        v77[1] = vqtbl1q_s8(v82, xmmword_1003EBC40);
        v77 += 8;
        v78 -= 32;
      }

      while (v78);
      if (v74 == v69)
      {
        goto LABEL_160;
      }

      if ((v69 & 0x18) == 0)
      {
        v67 = (v67 + 4 * v74);
        LODWORD(v70) = v69 & 0xFFFFFFE0;
LABEL_150:
        v113 = v69 - v70;
        do
        {
          a3.i32[0] = v67->i32[0];
          v114 = vmovl_u8(*a3.i8).u64[0];
          v115 = vext_s8(v114, v114, 2uLL);
          *a3.i8 = vuzp1_s8(v115, v115);
          v67->i32[0] = a3.i32[0];
          v67 = (v67 + 4);
          --v113;
        }

        while (v113);
        goto LABEL_160;
      }
    }

    else
    {
      v74 = 0;
    }

    v70 = v69 & 0xFFFFFFF8;
    v67 = (v67 + 4 * v70);
    v86 = (v66 + 4 * v74 + 1);
    v87 = v74 - v70;
    do
    {
      *a3.i8 = vld4_s8(v86);
      v168.val[0] = v88;
      v168.val[1] = v89;
      v168.val[2] = v90;
      v168.val[3] = a3.i64[0];
      vst4_s8(v86, v168);
      v86 += 32;
      v87 += 8;
    }

    while (v87);
    if (v70 != v69)
    {
      goto LABEL_150;
    }
  }

  else
  {
    for (; v69; LODWORD(v69) = v69 - 1)
    {
      *v67 = vext_s8(*v67, *v67, 2uLL);
      ++v67;
    }
  }

LABEL_160:
  if ((*(a1 + 302) & 8) == 0)
  {
    goto LABEL_208;
  }

  v121 = *(a1 + 544);
  v122 = v121 + 1;
  v123 = *(a2 + 16);
  if (v123 == 4)
  {
    v126 = *a2;
    if (*(a2 + 17) != 8)
    {
      if (v126)
      {
        v129 = v121 + 4;
        do
        {
          *(v129 - 1) = ~*(v129 - 1);
          *v129 = ~*v129;
          v129 += 4;
          LODWORD(v126) = v126 - 1;
        }

        while (v126);
      }

      goto LABEL_208;
    }

    if (!v126)
    {
      goto LABEL_208;
    }

    if (v126 < 9)
    {
      v127 = 0;
      goto LABEL_206;
    }

    if (v126 >= 0x11)
    {
      v146 = 16;
      if ((v126 & 0xF) != 0)
      {
        v146 = v126 & 0xF;
      }

      v131 = v126 - v146;
      v147 = v121 + 16;
      v148 = *a2;
      do
      {
        v149 = v147 - 14;
        v150 = vld2q_s8(v149);
        v151 = vmvnq_s8(v150);
        *v149 = v151.i8[0];
        *(v147 - 12) = v151.i8[1];
        *(v147 - 10) = v151.i8[2];
        *(v147 - 8) = v151.i8[3];
        *(v147 - 6) = v151.i8[4];
        *(v147 - 4) = v151.i8[5];
        *(v147 - 2) = v151.i8[6];
        *v147 = v151.i8[7];
        v147[2] = v151.i8[8];
        v147[4] = v151.i8[9];
        v147[6] = v151.i8[10];
        v147[8] = v151.i8[11];
        v147[10] = v151.i8[12];
        v147[12] = v151.i8[13];
        v147[14] = v151.i8[14];
        v147[16] = v151.i8[15];
        v148 -= 16;
        v147 += 32;
      }

      while (v146 != v148);
      if (v146 < 9)
      {
        v122 += 2 * v131;
        v127 = v126 - v146;
LABEL_206:
        v158 = v126 - v127;
        v159 = v122 + 1;
        do
        {
          *v159 = ~*v159;
          v159 += 2;
          --v158;
        }

        while (v158);
        goto LABEL_208;
      }
    }

    else
    {
      v131 = 0;
    }

    v152 = 8;
    if ((v126 & 7) != 0)
    {
      v152 = v126 & 7;
    }

    v127 = v126 - v152;
    v122 += 2 * (v126 - v152);
    v153 = v152 + v131 - v126;
    v154 = &v121[2 * v131 + 8];
    do
    {
      v155 = v154 - 6;
      v156 = *vld2_s8(v155).val;
      v157 = vmvn_s8(v156);
      *v155 = v157.i8[0];
      *(v154 - 4) = v157.i8[1];
      *(v154 - 2) = v157.i8[2];
      *v154 = v157.i8[3];
      v154[2] = v157.i8[4];
      v154[4] = v157.i8[5];
      v154[6] = v157.i8[6];
      v154[8] = v157.i8[7];
      v154 += 16;
      v153 += 8;
    }

    while (v153);
    goto LABEL_206;
  }

  if (v123 == 6)
  {
    v124 = *a2;
    if (*(a2 + 17) != 8)
    {
      if (v124)
      {
        v128 = v121 + 8;
        do
        {
          *(v128 - 1) = ~*(v128 - 1);
          *v128 = ~*v128;
          v128 += 8;
          LODWORD(v124) = v124 - 1;
        }

        while (v124);
      }

      goto LABEL_208;
    }

    if (v124)
    {
      if (v124 < 9)
      {
        v125 = 0;
        goto LABEL_193;
      }

      if (v124 >= 0x11)
      {
        v132 = 16;
        if ((v124 & 0xF) != 0)
        {
          v132 = v124 & 0xF;
        }

        v130 = v124 - v132;
        v133 = v121 + 32;
        v134 = *a2;
        do
        {
          v135 = v133 - 28;
          v136 = vld4q_s8(v135);
          v137 = vmvnq_s8(v136);
          *v135 = v137.i8[0];
          *(v133 - 24) = v137.i8[1];
          *(v133 - 20) = v137.i8[2];
          *(v133 - 16) = v137.i8[3];
          *(v133 - 12) = v137.i8[4];
          *(v133 - 8) = v137.i8[5];
          *(v133 - 4) = v137.i8[6];
          *v133 = v137.i8[7];
          v133[4] = v137.i8[8];
          v133[8] = v137.i8[9];
          v133[12] = v137.i8[10];
          v133[16] = v137.i8[11];
          v133[20] = v137.i8[12];
          v133[24] = v137.i8[13];
          v133[28] = v137.i8[14];
          v133[32] = v137.i8[15];
          v134 -= 16;
          v133 += 64;
        }

        while (v132 != v134);
        if (v132 < 9)
        {
          v122 += 4 * v130;
          v125 = v124 - v132;
LABEL_193:
          v144 = v122 + 3;
          v145 = v124 - v125;
          do
          {
            *v144 = ~*v144;
            v144 += 4;
            --v145;
          }

          while (v145);
          goto LABEL_208;
        }
      }

      else
      {
        v130 = 0;
      }

      v138 = 8;
      if ((v124 & 7) != 0)
      {
        v138 = v124 & 7;
      }

      v125 = v124 - v138;
      v122 += 4 * (v124 - v138);
      v139 = v138 + v130 - v124;
      v140 = &v121[4 * v130 + 16];
      do
      {
        v141 = v140 - 12;
        v142 = vld4_s8(v141);
        v143 = vmvn_s8(v142);
        *v141 = v143.i8[0];
        *(v140 - 8) = v143.i8[1];
        *(v140 - 4) = v143.i8[2];
        *v140 = v143.i8[3];
        v140[4] = v143.i8[4];
        v140[8] = v143.i8[5];
        v140[12] = v143.i8[6];
        v140[16] = v143.i8[7];
        v140 += 32;
        v139 += 8;
      }

      while (v139);
      goto LABEL_193;
    }
  }

LABEL_208:
  v160 = *(a1 + 300);
  if (v160)
  {
    sub_100388E50(a2, (*(a1 + 544) + 1));
    v160 = *(a1 + 300);
  }

  if ((v160 & 0x20) != 0)
  {
    v161 = (*(a1 + 544) + 1);

    sub_10038896C(a2, v161);
  }
}