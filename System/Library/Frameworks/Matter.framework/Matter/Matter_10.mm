uint64_t sub_238F3FA18(int a1)
{
  LOWORD(v1) = -1;
  if (a1 != 0xFFFF)
  {
    v1 = 0;
    v2 = &word_27DF71930;
    while (1)
    {
      v3 = *v2;
      v2 += 36;
      if (v3 == a1)
      {
        break;
      }

      if (++v1 == 254)
      {
        LOWORD(v1) = -1;
        return v1;
      }
    }
  }

  return v1;
}

uint64_t sub_238F3FA78(unsigned int a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a1 > 0xFD)
  {
    v9 = 0x13700000000;
LABEL_33:
    v18 = 11;
    goto LABEL_34;
  }

  if (a2 == 0xFFFF)
  {
    v9 = 0x13B00000000;
    v18 = 47;
  }

  else
  {
    v12 = *a3;
    v13 = *(a3 + 8);
    if (*(a3 + 8))
    {
      v14 = 0;
      v15 = v13 << 6;
      v16 = (v12 + 20);
      do
      {
        v17 = *v16;
        v16 += 64;
        v14 += (v17 >> 6) & 1;
        v15 -= 64;
      }

      while (v15);
      LODWORD(v14) = v14;
    }

    else
    {
      LODWORD(v14) = 0;
    }

    if (*(a4 + 8) < v14)
    {
      v9 = 0x14100000000;
      goto LABEL_33;
    }

    v19 = 254;
    v18 = 127;
    v20 = word_27DF71930;
    do
    {
      v21 = *v20;
      v20 += 36;
      if (v21 == a2)
      {
        v9 = 0x14900000000;
        goto LABEL_34;
      }

      --v19;
    }

    while (v19);
    if (*(a3 + 8))
    {
      v22 = 0;
      v23 = *(&xmmword_27DF71860 + 1);
      while (1)
      {
        v24 = v12 + (v22 << 6);
        v25 = *(v24 + 8);
        if (v25)
        {
          v26 = *(v24 + 16);
          if (*(v24 + 16))
          {
            break;
          }
        }

LABEL_22:
        if (++v22 == v13)
        {
          goto LABEL_23;
        }
      }

      v27 = v25 + 8;
      while (1)
      {
        v28 = *(v27 + 4);
        if (*(&xmmword_27DF71860 + 1) < v28)
        {
          break;
        }

        v27 += 16;
        if (!--v26)
        {
          goto LABEL_22;
        }
      }

      v32 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HIWORD(*v27);
        v34 = *v27;
        v35 = HIWORD(*v24);
        v36 = *v24;
        *buf = 67110400;
        v42 = v28;
        v43 = 2048;
        v44 = v23;
        v45 = 1024;
        v46 = v33;
        v47 = 1024;
        v48 = v34;
        v49 = 1024;
        v50 = v35;
        v51 = 1024;
        v52 = v36;
        _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "Attribute size %u exceeds max size %lu, (attrId=0x%04X_%04X, clusterId=0x%04X_%04X)", buf, 0x2Au);
      }

      if (sub_2393D5398(1u))
      {
        v40 = HIWORD(*v24);
        v39 = HIWORD(*v27);
        sub_2393D5320(0xDu, 1);
      }

      v9 = 0x16100000000;
      goto LABEL_33;
    }

LABEL_23:
    v29 = &word_27DF71930[36 * a1];
    *v29 = a2;
    *(v29 + 1) = a5;
    *(v29 + 2) = a6;
    v30 = *a4;
    *(v29 + 4) = a3;
    *(v29 + 5) = v30;
    *(v29 + 24) &= ~1u;
    v29[24] = a9;
    word_27DF775B0 = 254;
    if (v14)
    {
      v31 = 4 * v14;
      if (sub_2393F888C(v30, v31))
      {
        bzero(*a4, v31);
      }
    }

    sub_238F3FDB4(a2, 1);
    v18 = 0;
    v9 = 0;
    ++dword_27DF775B4;
  }

LABEL_34:
  v37 = *MEMORY[0x277D85DE8];
  return v9 | v18;
}

uint64_t sub_238F3FD68(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v2 = 64;
  }

  else
  {
    v2 = -128;
  }

  if (a1[8])
  {
    v3 = 0;
    v4 = a1[8] << 6;
    v5 = (*a1 + 20);
    do
    {
      v6 = *v5;
      v5 += 64;
      if ((v2 & v6) != 0)
      {
        ++v3;
      }

      v4 -= 64;
    }

    while (v4);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t sub_238F3FDB4(int a1, int a2)
{
  if (a1 == 0xFFFF)
  {
    return 0;
  }

  v28 = v2;
  v29 = v3;
  v5 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 0;
  }

  v6 = a1;
  v7 = word_27DF71930;
  v8 = 0xFFFFLL;
  while (*v7 != a1)
  {
    v7 += 36;
    --v8;
    if (!--v5)
    {
      return 0;
    }
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(v7 + 24);
  if (a2)
  {
    *(v7 + 24) = v9 | 1;
    if ((v9 & 1) == 0)
    {
      sub_238F40378(v7);
      v25 = -1;
      v26 = v6;
      v27 = -1;
      (*(off_2819B7718 + 2))(&off_2819B7718, &v25);
LABEL_26:
      for (i = v7[24]; i != 0xFFFF; i = *(v24 + 12))
      {
        sub_238F40B9C(i, 0x1Du, 3u, &off_2819B7718);
        v22 = word_27DF775B0;
        if (!word_27DF775B0)
        {
          break;
        }

        v23 = 0xFFFFLL;
        v24 = &byte_27DF71948;
        while (*(v24 - 12) != i || (*v24 & 1) == 0)
        {
          v24 += 72;
          --v23;
          if (!--v22)
          {
            goto LABEL_35;
          }
        }

        if (!v23)
        {
          break;
        }
      }

LABEL_35:
      sub_238F40B9C(0, 0x1Du, 3u, &off_2819B7718);
    }
  }

  else if (v7[12])
  {
    v10 = *(v7 + 4);
    v11 = *(v10 + 8);
    if (*(v10 + 8))
    {
      v12 = 0;
      do
      {
        v13 = *v10 + (v12 << 6);
        v14 = *(v13 + 20);
        if ((v14 & 0x10) != 0)
        {
          v15 = 0;
          v16 = 1;
          do
          {
            if ((v16 & v14) != 0)
            {
              ++v15;
            }

            v17 = v16 >= 8;
            v16 *= 2;
          }

          while (!v17);
          v18 = *(*(v13 + 24) + 8 * v15);
          if (v18)
          {
            v18(*v7);
            v11 = *(v10 + 8);
          }
        }

        ++v12;
      }

      while (v12 < v11);
    }

    v19 = sub_2394DEB00();
    sub_2394DEC34(v19, *v7);
    v20 = sub_2393C4890();
    sub_2393C4928(v20, *v7);
    *(v7 + 24) &= ~1u;
    goto LABEL_26;
  }

  ++dword_27DF775B4;
  return 1;
}

uint64_t sub_238F3FFE4(unsigned int a1)
{
  if (a1 <= 0xFD && (v1 = &word_27DF71930[36 * a1], v2 = *v1, v2 != 0xFFFF) && (word_27DF71930[36 * a1 + 12] & 1) != 0)
  {
    sub_238F3FDB4(*v1, 0);
    *v1 = -1;
  }

  else
  {
    v2 = 0;
  }

  ++dword_27DF775B4;
  return v2;
}

uint64_t sub_238F4009C(unsigned __int16 *a1)
{
  result = sub_238F40104(*a1, *(a1 + 1));
  if (result)
  {
    if ((*(result + 20) & 2) != 0)
    {
      v3 = *(*(result + 24) + 8 * (*(result + 20) & 1));
      if (v3)
      {

        return v3(a1);
      }
    }
  }

  return result;
}

uint64_t sub_238F40104(int a1, int a2)
{
  if (a1 == 0xFFFF)
  {
    return 0;
  }

  v2 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 0;
  }

  v3 = &qword_27DF71950;
  v4 = 0xFFFFLL;
  while (*(v3 - 16) != a1 || (*(v3 - 1) & 1) == 0)
  {
    v3 += 9;
    --v4;
    if (!--v2)
    {
      return 0;
    }
  }

  if (!v4)
  {
    return 0;
  }

  v6 = *v3;
  v7 = *(v6 + 8);
  if (!*(v6 + 8))
  {
    return 0;
  }

  for (i = *v6; (*(i + 20) & 0x40) == 0 || *i != a2; i += 64)
  {
    result = 0;
    if (!--v7)
    {
      return result;
    }
  }

  return i;
}

uint64_t sub_238F40198(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 20);
  if ((v2 & a2) == 0)
  {
    return 0;
  }

  if (a2 < 2)
  {
    v6 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    v5 = 1;
    do
    {
      if ((v5 & v2) != 0)
      {
        ++v3;
      }

      v5 = 2 * v4;
      v4 = (2 * v4) & 0xFE;
    }

    while (v4 < a2);
    v6 = v3;
  }

  return *(*(a1 + 24) + 8 * v6);
}

uint64_t sub_238F401F0(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = sub_238F40104(v8, *(a1 + 1));
  if (!v9)
  {
    if (v8 == 0xFFFF)
    {
      return 127;
    }

    v17 = word_27DF775B0;
    if (!word_27DF775B0)
    {
      return 127;
    }

    else
    {
      v18 = word_27DF71930;
      v19 = 0xFFFFLL;
      while (*v18 != v8)
      {
        v18 += 36;
        --v19;
        if (!--v17)
        {
          return 127;
        }
      }

      v16 = 127;
      if (v19)
      {
        if (v18[12])
        {
          return -61;
        }

        else
        {
          return 127;
        }
      }
    }

    return v16;
  }

  v10 = *(v9 + 20);
  if ((v10 & 0x20) == 0)
  {
    return 0;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    if ((v12 & v10) != 0)
    {
      ++v11;
    }

    v13 = v12 >= 0x10;
    v12 *= 2;
  }

  while (!v13);
  v14 = *(*(v9 + 24) + 8 * v11);
  if (!v14)
  {
    return 0;
  }

  return v14(a1, a2, a3, a4);
}

uint64_t sub_238F40318()
{
  v0 = word_27DF775B0;
  if (word_27DF775B0)
  {
    v1 = 0;
    v2 = word_27DF71930;
    do
    {
      if (v2[12])
      {
        result = sub_238F40378(v2);
        v0 = word_27DF775B0;
      }

      v2 += 36;
      ++v1;
    }

    while (v1 < v0);
  }

  return result;
}

uint64_t sub_238F40378(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8))
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*v1 + v3);
      v6 = *v2;
      v7 = *v5;
      result = sub_238DC471C();
      if (v5[5])
      {
        v8 = **(v5 + 3);
        if (v8)
        {
          result = v8(*v2);
        }
      }

      ++v4;
      v3 += 64;
    }

    while (v4 < *(v1 + 8));
  }

  return result;
}

uint64_t sub_238F40400(unsigned __int16 a1, int a2, int a3)
{
  v7 = 0;
  v4 = a1;
  v5 = a2;
  v6 = a3;
  sub_238F40444(&v4, &v7, 0, 0, 0);
  return v7;
}

uint64_t sub_238F40444(unsigned __int16 *a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/util/attribute-storage.cpp", 637);
  v10 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 127;
  }

  for (i = &qword_27DF71950; *(i - 16) != *a1 || (*(i - 1) & 1) == 0; i += 9)
  {
    if (!--v10)
    {
      return 127;
    }
  }

  v14 = *i;
  v15 = v14[8];
  if (!v14[8])
  {
    return 195;
  }

  v16 = 0;
  for (j = (*v14 + 16); *(j - 4) != *(a1 + 1) || (j[2] & 0x40) == 0; j += 32)
  {
    if (++v16 >= v15)
    {
      return 195;
    }
  }

  v18 = *j;
  if (!*j)
  {
    return 134;
  }

  for (k = *(j - 1); *(k + 8) != *(a1 + 2); k += 16)
  {
    v12 = 134;
    if (!--v18)
    {
      return v12;
    }
  }

  if (a2)
  {
    *a2 = k;
  }

  if (!a5)
  {
    if (!a3)
    {
      return 0;
    }

    if ((sub_238F41EB4() & 1) == 0)
    {
      return 126;
    }

    if ((*(k + 15) & 0x10) == 0)
    {
      return 1;
    }

    if (*(k + 12) <= a4)
    {
      v22 = *a1;
      v23 = *(a1 + 1);

      return sub_238F41EB4();
    }

    return 137;
  }

  if ((sub_238F41EB4() & 1) == 0)
  {
    return 126;
  }

  if ((*(k + 15) & 0x10) == 0)
  {
    return 1;
  }

  v20 = *a1;
  v21 = *(a1 + 1);

  return sub_238F41EB4();
}

uint64_t sub_238F40618(int a1)
{
  if (a1 == 0xFFFF)
  {
    return 0;
  }

  v1 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 0;
  }

  v2 = &qword_27DF71950;
  v3 = 0xFFFFLL;
  while (*(v2 - 16) != a1 || (*(v2 - 1) & 1) == 0)
  {
    v2 += 9;
    --v3;
    if (!--v1)
    {
      return 0;
    }
  }

  if (v3)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238F40674(int a1)
{
  LOWORD(v1) = -1;
  if (a1 != 0xFFFF)
  {
    if (word_27DF775B0)
    {
      v1 = 0;
      v2 = word_27DF71930;
      while (*v2 != a1 || (v2[12] & 1) == 0)
      {
        ++v1;
        v2 += 36;
        if (word_27DF775B0 == v1)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      LOWORD(v1) = -1;
    }
  }

  return v1;
}

uint64_t sub_238F406C8(uint64_t *a1, int a2, int a3, _BYTE *a4)
{
  v4 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v5 = 0;
  for (result = *a1; ; result += 64)
  {
    if (a3 && (*(result + 20) & a3) == 0)
    {
      goto LABEL_7;
    }

    if (*result == a2)
    {
      break;
    }

    ++v5;
LABEL_7:
    if (!--v4)
    {
      return 0;
    }
  }

  if (a4)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_238F40718(int a1, int a2, int a3)
{
  if (word_27DF775B0)
  {
    v3 = 0;
    do
    {
      v4 = &word_27DF71930[36 * v3];
      if (*v4 == a1)
      {
        v5 = *(v4 + 4);
        v6 = *(v5 + 8);
        if (*(v5 + 8))
        {
          v7 = 0;
          v8 = *v5;
          do
          {
            if (!a3 || (*(v8 + 20) & a3) != 0)
            {
              if (*v8 == a2)
              {
                return v7;
              }

              ++v7;
            }

            v8 += 64;
            --v6;
          }

          while (v6);
        }
      }

      ++v3;
    }

    while (v3 != word_27DF775B0);
  }

  return -1;
}

uint64_t sub_238F407BC(int a1, int a2)
{
  if (a1 == 0xFFFF)
  {
    return 0;
  }

  v2 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 0;
  }

  v3 = &qword_27DF71950;
  v4 = 0xFFFFLL;
  while (*(v3 - 16) != a1 || (*(v3 - 1) & 1) == 0)
  {
    v3 += 9;
    --v4;
    if (!--v2)
    {
      return 0;
    }
  }

  if (!v4)
  {
    return 0;
  }

  v6 = *v3;
  v7 = *(v6 + 8);
  if (!*(v6 + 8))
  {
    return 0;
  }

  for (i = *v6; (*(i + 20) & 0x80000000) == 0 || *i != a2; i += 64)
  {
    result = 0;
    if (!--v7)
    {
      return result;
    }
  }

  return 1;
}

uint64_t sub_238F40850(int a1, int a2)
{
  if (a1 == 0xFFFF)
  {
    return 0;
  }

  v2 = *&word_27DF71930[36 * a1 + 16];
  v3 = *(v2 + 8);
  if (!*(v2 + 8))
  {
    return 0;
  }

  for (i = *v2; (*(i + 20) & 0x40) == 0 || *i != a2; i += 64)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_238F408AC(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 2) = word_27DF775B0;
  *(a1 + 4) = a2;
  sub_238F408E8(a1);
  return a1;
}

uint64_t sub_238F408E8(uint64_t result)
{
  v1 = *(result + 2);
  v2 = *result;
  if (v2 < v1)
  {
    v3 = result;
    v4 = &word_27DF71930[36 * *result + 12];
    do
    {
      v5 = *v4;
      v4 += 36;
      if (v5)
      {
        result = sub_238F40850(v2, *(v3 + 4));
        if (result)
        {
          break;
        }
      }

      LOWORD(v2) = v2 + 1;
      *v3 = v2;
    }

    while (v1 != v2);
  }

  return result;
}

_WORD *sub_238F40990(_WORD *a1)
{
  ++*a1;
  sub_238F408E8(a1);
  return a1;
}

uint64_t sub_238F409C4(int a1, int a2, int a3)
{
  if (a1 == 0xFFFF || !word_27DF775B0)
  {
    return 0;
  }

  v3 = 0;
  for (i = &qword_27DF71950; *(i - 16) != a1; i += 9)
  {
    if (word_27DF775B0 == ++v3)
    {
      return 0;
    }
  }

  if (v3 > 0xFD)
  {
    return 0;
  }

  v5 = *(*i + 8);
  if (!*(*i + 8))
  {
    return 0;
  }

  for (j = **i; a3 && (*(j + 20) & a3) == 0 || *j != a2; j += 64)
  {
    result = 0;
    if (!--v5)
    {
      return result;
    }
  }

  return j;
}

uint64_t sub_238F40A60(int a1, int a2, int a3)
{
  if (a3)
  {
    sub_23952C490();
  }

  v3 = -1;
  if (a1 == 0xFFFF)
  {
    return v3;
  }

  if (!word_27DF775B0)
  {
    return -1;
  }

  v4 = 0;
  for (i = &qword_27DF71950; *(i - 16) != a1 || (*(i - 1) & 1) == 0; i += 9)
  {
    if (word_27DF775B0 == ++v4)
    {
      return -1;
    }
  }

  v3 = -1;
  if (v4 != 0xFFFF)
  {
    v7 = *i;
    v8 = *(*i + 8);
    if (v8)
    {
      for (j = *v7; (*(j + 20) & 0x40) == 0 || *j != a2; j += 64)
      {
        v3 = -1;
        if (!--v8)
        {
          return v3;
        }
      }

      return v4;
    }

    return -1;
  }

  return v3;
}

uint64_t sub_238F40B18(__int16 a1, uint64_t a2)
{
  v3 = -1;
  v4 = a1;
  v5 = -1;
  return (*(*a2 + 16))(a2, &v3);
}

uint64_t sub_238F40B9C(unsigned int a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  *buf = a1;
  v18 = a2;
  v8 = sub_238F41D9C(buf);
  if (v8)
  {
    v9 = v8;
    v10 = *v8 + 1;
    *v8 = v10;
    v11 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109888;
      v18 = a1;
      v19 = 1024;
      v20 = HIWORD(a2);
      v21 = 1024;
      v22 = a2;
      v23 = 1024;
      v24 = v10;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_INFO, "Endpoint %x, Cluster 0x%04X_%04X update version to %x", buf, 0x1Au);
    }

    if (sub_2393D5398(3u))
    {
      v16 = *v9;
      v12 = 3;
LABEL_10:
      sub_2393D5320(0xDu, v12);
    }
  }

  else
  {
    v13 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v18 = a1;
      v19 = 1024;
      v20 = HIWORD(a2);
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Endpoint %x, Cluster 0x%04X_%04X not found in IncreaseClusterDataVersion!", buf, 0x14u);
    }

    if (sub_2393D5398(1u))
    {
      v12 = 1;
      goto LABEL_10;
    }
  }

  *buf = a2;
  v18 = a3;
  v19 = a1;
  LOWORD(v20) = -1;
  result = (*(*a4 + 16))(a4, buf);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238F40DB8(int a1, int a2)
{
  if (a1 == 0xFFFF)
  {
    goto LABEL_2;
  }

  v2 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return v2;
  }

  v3 = &qword_27DF71950;
  v4 = 0xFFFFLL;
  while (*(v3 - 16) != a1 || (*(v3 - 1) & 1) == 0)
  {
    v3 += 9;
    --v4;
    if (!--v2)
    {
      return v2;
    }
  }

  if (v4 && (v6 = *v3) != 0 && (!a2 ? (v7 = -128) : (v7 = 64), *(v6 + 8)))
  {
    LOBYTE(v2) = 0;
    v8 = *v6;
    v9 = *(v6 + 8) << 6;
    v10 = (v8 + 20);
    do
    {
      v11 = *v10;
      v10 += 64;
      if ((v7 & v11) != 0)
      {
        LOBYTE(v2) = v2 + 1;
      }

      v9 -= 64;
    }

    while (v9);
  }

  else
  {
LABEL_2:
    LOBYTE(v2) = 0;
  }

  return v2;
}

uint64_t sub_238F40E5C(int a1)
{
  if (a1 == 0xFFFF)
  {
    return 0;
  }

  v1 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 0;
  }

  v2 = &qword_27DF71950;
  v3 = 0xFFFFLL;
  while (*(v2 - 16) != a1 || (*(v2 - 1) & 1) == 0)
  {
    v2 += 9;
    --v3;
    if (!--v1)
    {
      return 0;
    }
  }

  if (v3)
  {
    return *(*v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238F40EBC(int a1, uint64_t *a2)
{
  if (a1 == 0xFFFF || (v2 = word_27DF775B0, !word_27DF775B0))
  {
LABEL_7:
    v5 = a2 + 1;
  }

  else
  {
    v3 = &unk_27DF71940;
    v4 = 0xFFFFLL;
    while (*(v3 - 8) != a1 || (v3[8] & 1) == 0)
    {
      v3 += 72;
      --v4;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    v5 = a2 + 1;
    if (v4)
    {
      *v5 = 0;
      v7 = 0;
      result = *(v3 - 1);
      v8 = *v3;
      goto LABEL_9;
    }
  }

  result = 0;
  *v5 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/util/attribute-storage.cpp";
  v7 = 0x4460000002FLL;
LABEL_9:
  *a2 = v7;
  return result;
}

uint64_t sub_238F40F48(int a1, uint64_t *a2)
{
  if (a1 == 0xFFFF)
  {
    result = 0;
    a2[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/util/attribute-storage.cpp";
    v3 = 0x4460000002FLL;
  }

  else
  {
    a2[1] = 0;
    v4 = &word_27DF71930[36 * a1];
    result = *(v4 + 1);
    v5 = *(v4 + 2);
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_238F40F9C(int a1, unint64_t a2, uint64_t a3)
{
  if (a1 == 0xFFFF || (v3 = word_27DF775B0, !word_27DF775B0))
  {
    v8 = 0x45500000000;
    v7 = 216;
  }

  else
  {
    v5 = (&xmmword_27DF71962 + 6);
    v6 = 0xFFFFLL;
    v7 = 216;
    while (*(v5 - 28) != a1 || (*(v5 - 4) & 1) == 0)
    {
      v5 += 9;
      --v6;
      if (!--v3)
      {
        v8 = 0x45500000000;
        return v7 | v8;
      }
    }

    if (v6 && v5[1] > a2)
    {
      v9 = sub_238F410B4(v5, a2);
      v10 = *v9;
      *(a3 + 4) = *(v9 + 4);
      *a3 = v10;
      v11 = *(v9 + 8);
      *(a3 + 8) = v11;
      if (v11 == 1)
      {
        v8 = 0;
        v7 = 0;
        v12 = *(v9 + 16);
        *(a3 + 32) = *(v9 + 32);
        *(a3 + 16) = v12;
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }
    }

    else
    {
      v8 = 0x45500000000;
      v7 = 216;
    }
  }

  return v7 | v8;
}

uint64_t sub_238F410B4(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C3F0();
  }

  return *a1 + 40 * a2;
}

uint64_t sub_238F410E0(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 0xFFFF)
  {
    goto LABEL_10;
  }

  v3 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    goto LABEL_10;
  }

  v4 = &unk_27DF71940;
  v5 = 0xFFFFLL;
  v6 = 47;
  while (*(v4 - 8) != a1 || (v4[8] & 1) == 0)
  {
    v4 += 72;
    --v5;
    if (!--v3)
    {
      v7 = 0x46D00000000;
      return v6 | v7;
    }
  }

  if (v5)
  {
    v7 = 0;
    v6 = 0;
    *(v4 - 1) = a2;
    *v4 = a3;
  }

  else
  {
LABEL_10:
    v7 = 0x46D00000000;
    v6 = 47;
  }

  return v6 | v7;
}

uint64_t sub_238F41170(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 0xFFFF)
  {
    goto LABEL_10;
  }

  v3 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    goto LABEL_10;
  }

  v4 = (&xmmword_27DF71962 + 14);
  v5 = 0xFFFFLL;
  v6 = 47;
  while (*(v4 - 32) != a1 || (*(v4 - 5) & 1) == 0)
  {
    v4 += 9;
    --v5;
    if (!--v3)
    {
      v7 = 0x47900000000;
      return v6 | v7;
    }
  }

  if (v5)
  {
    v7 = 0;
    v6 = 0;
    *(v4 - 1) = a2;
    *v4 = a3;
  }

  else
  {
LABEL_10:
    v7 = 0x47900000000;
    v6 = 47;
  }

  return v6 | v7;
}

uint64_t sub_238F41200(int a1, int a2, int a3)
{
  if (a1 == 0xFFFF)
  {
    return 0;
  }

  v3 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 0;
  }

  v4 = &qword_27DF71950;
  v5 = 0xFFFFLL;
  while (*(v4 - 16) != a1 || (*(v4 - 1) & 1) == 0)
  {
    v4 += 9;
    --v5;
    if (!--v3)
    {
      return 0;
    }
  }

  if (!v5)
  {
    return 0;
  }

  v7 = *v4;
  v8 = *(*v4 + 8);
  if (!*(*v4 + 8))
  {
    return 0;
  }

  v9 = 0;
  v10 = *v7;
  if (a3)
  {
    v11 = 64;
  }

  else
  {
    v11 = 0x80;
  }

  while ((v11 & *(v10 + 20)) == 0)
  {
LABEL_16:
    result = 0;
    v10 += 64;
    if (!--v8)
    {
      return result;
    }
  }

  if (a2 != v9)
  {
    ++v9;
    goto LABEL_16;
  }

  return v10;
}

_DWORD *sub_238F412AC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_238F41200(a1, a2, a3);
  if (result)
  {
    *(a4 + 4) = *result;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
  return result;
}

uint64_t sub_238F412EC(int a1, uint64_t a2, int a3, int a4)
{
  LODWORD(v5) = a3;
  v8 = sub_238F40DB8(a1, a4);
  if (v8 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = v8;
  }

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = sub_238F41200(a1, i, a4);
      if (v10)
      {
        v11 = *v10;
      }

      else
      {
        v11 = 0xFFFF;
      }

      *(a2 + 4 * i) = v11;
    }
  }

  return v5;
}

uint64_t sub_238F41374(int a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v51[0] = 0;
  v2 = word_27DF775B0;
  result = sub_2392D45C4();
  v44 = v2;
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v43 = a1;
    while (1)
    {
      if (a1 != 0xFFFF)
      {
        if (!word_27DF775B0)
        {
          goto LABEL_57;
        }

        v6 = 0;
        v7 = word_27DF71930;
        while (*v7 != a1 || (v7[12] & 1) == 0)
        {
          ++v6;
          v7 += 36;
          if (word_27DF775B0 == v6)
          {
            goto LABEL_57;
          }
        }

        v5 = v6;
        if (v6 == 0xFFFF)
        {
          goto LABEL_57;
        }
      }

      v45 = v5;
      v8 = &word_27DF71930[36 * v5];
      v9 = *(v8 + 4);
      if (*(v9 + 8))
      {
        break;
      }

LABEL_55:
      a1 = v43;
      if (v43 == 0xFFFF)
      {
        v5 = v45 + 1;
        if (v44 > (v45 + 1))
        {
          continue;
        }
      }

      goto LABEL_57;
    }

    v10 = 0;
    v47 = v8;
    while (1)
    {
      v46 = v10;
      v11 = (*v9 + (v10 << 6));
      if (v51[0] != 1 || (result = sub_238F41E94(v51), *result == *v11))
      {
        if (*(v11 + 8))
        {
          break;
        }
      }

LABEL_54:
      v10 = v46 + 1;
      v9 = *(v8 + 4);
      if (v46 + 1 >= *(v9 + 8))
      {
        goto LABEL_55;
      }
    }

    v12 = 0;
    v13 = 0;
    v48 = v11;
    while (1)
    {
      v14 = *(v11 + 1);
      v15 = (v14 + v12);
      v16 = *(v14 + v12 + 15);
      if ((v16 & 0x12) != 2)
      {
        v20 = 0;
        if ((*(v14 + v12 + 15) & 0x10) != 0)
        {
          goto LABEL_53;
        }

LABEL_45:
        *buf = *v8;
        *&buf[4] = *v11;
        LODWORD(v56) = *(v14 + v12 + 8);
        if (!v20)
        {
          v39 = *(v14 + v12 + 12);
          if ((v16 & 4) != 0)
          {
            v15 = *v15;
            v20 = v15;
            if (v39 >= 3)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v39 <= 4)
            {
              v40 = sub_2393C4FB8(*(v14 + v12 + 14));
              v20 = v15;
              if (!v40)
              {
                goto LABEL_52;
              }
            }

LABEL_51:
            v20 = *v15;
          }
        }

LABEL_52:
        result = sub_238F40444(buf, 0, v20, 0, 1);
        goto LABEL_53;
      }

      if (!v4)
      {
        sub_23952C530();
      }

      v52 = &v54;
      v53 = 1;
      v17 = *v11;
      v18 = v14 + v12;
      v19 = *(v14 + v12 + 8);
      *buf = *v8;
      *&buf[4] = v17;
      LODWORD(v56) = v19;
      buf[2] = 0;
      if ((*(*v4 + 24))(v4, buf, &v52))
      {
        v49 = v14;
        v50 = (v14 + v12);
      }

      else
      {
        sub_238DB6950(buf, v52, v53);
        v22 = *buf;
        v21 = v56;
        result = sub_2393C4FB8(*(v14 + v12 + 14));
        if (result)
        {
          if (v21)
          {
            v23 = *v22;
            if (v23 == 255 || v21 > v23)
            {
LABEL_36:
              v20 = &v54;
              goto LABEL_44;
            }
          }

          v50 = (v14 + v12);
        }

        else
        {
          result = sub_2393C4FC8(*(v14 + v12 + 14));
          if (result)
          {
            if (v21 >= 2)
            {
              v25 = *v22;
              if (v25 == 0xFFFF || v25 + 2 <= v21)
              {
                goto LABEL_36;
              }
            }

            v50 = (v14 + v12);
          }

          else
          {
            if (v21 == *(v14 + v12 + 12))
            {
              goto LABEL_36;
            }

            v50 = (v14 + v12);
          }
        }

        v49 = v14;
        v18 = v14 + v12;
      }

      v26 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = *v8;
        v28 = HIWORD(*v11);
        v29 = v4;
        v30 = *v11;
        v31 = *(v18 + 8);
        v32 = v18;
        v33 = HIWORD(v31);
        v34 = v31;
        v35 = sub_2393C9138();
        *buf = 67110402;
        *&buf[4] = v27;
        LOWORD(v56) = 1024;
        *(&v56 + 2) = v28;
        HIWORD(v56) = 1024;
        v57 = v30;
        v4 = v29;
        v58 = 1024;
        v59 = v33;
        v18 = v32;
        v60 = 1024;
        v61 = v34;
        v8 = v47;
        v11 = v48;
        v62 = 2080;
        v63 = v35;
        _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_INFO, "Failed to read stored attribute (%u, 0x%04X_%04X, 0x%04X_%04X: %s", buf, 0x2Au);
      }

      result = sub_2393D5398(3u);
      if (result)
      {
        v36 = *v8;
        v37 = HIWORD(*v11);
        v38 = HIWORD(*(v18 + 8));
        v42 = *(v18 + 8);
        sub_2393C9138();
        v8 = v47;
        v11 = v48;
        result = sub_2393D5320(0xDu, 3);
      }

      v20 = 0;
      v14 = v49;
      v15 = v50;
LABEL_44:
      v16 = v15[15];
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_45;
      }

LABEL_53:
      ++v13;
      v12 += 16;
      if (v13 >= *(v11 + 8))
      {
        goto LABEL_54;
      }
    }
  }

LABEL_57:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238F41834(uint64_t result, __int16 a2, int a3, uint64_t a4)
{
  if ((*(a4 + 15) & 0x12) == 2)
  {
    v22 = v4;
    v23 = v5;
    v21 = 0;
    if (result)
    {
      v9 = result;
    }

    else
    {
      v9 = &v21;
    }

    v10 = *(a4 + 14);
    if (sub_2393C4FB8(v10))
    {
      v11 = sub_2393C4FD8(v9) + 1;
    }

    else if (sub_2393C4FC8(v10))
    {
      v11 = sub_2393C4FE8(v9) + 2;
    }

    else
    {
      v11 = *(a4 + 12);
    }

    v12 = sub_2392D45C4();
    if (v12)
    {
      v13 = v12;
      v14 = *(a4 + 8);
      v17 = a2;
      v19 = a3;
      v20 = v14;
      v18 = 0;
      sub_238DB6950(v16, v9, v11);
      return (*(*v13 + 16))(v13, &v17, v16);
    }

    else
    {
      v15 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Can't store attribute value: no persistence provider", v16, 2u);
      }

      result = sub_2393D5398(2u);
      if (result)
      {
        return sub_2393D5320(0xDu, 2);
      }
    }
  }

  return result;
}

uint64_t sub_238F419A4(int a1, int a2)
{
  v2 = 0xFFFF;
  if (a1 != 0xFFFF)
  {
    if (word_27DF775B0)
    {
      v3 = 0;
      v4 = word_27DF71930;
      while (*v4 != a1 || (v4[12] & 1) == 0)
      {
        ++v3;
        v4 += 36;
        if (word_27DF775B0 == v3)
        {
          goto LABEL_7;
        }
      }

      v2 = v3;
    }

    else
    {
LABEL_7:
      v2 = 0xFFFF;
    }
  }

  if (a2 == 0xFFFF || (v5 = word_27DF775B0, !word_27DF775B0))
  {
    v9 = 0x5AA00000000;
    v7 = 47;
  }

  else
  {
    v6 = 0xFFFFLL;
    v7 = 47;
    for (i = word_27DF71930; *i != a2 || (i[12] & 1) == 0; i += 36)
    {
      --v6;
      if (!--v5)
      {
        v9 = 0x5AA00000000;
        return v7 | v9;
      }
    }

    v9 = 0x5AA00000000;
    v7 = 47;
    if (v2 != 0xFFFF && v6)
    {
      v9 = 0;
      v7 = 0;
      word_27DF71930[36 * v2 + 24] = a2;
    }
  }

  return v7 | v9;
}

uint64_t sub_238F41AAC(int a1)
{
  if (a1 == 0xFFFF)
  {
    goto LABEL_10;
  }

  v1 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    goto LABEL_10;
  }

  v2 = &byte_27DF71948;
  v3 = 0xFFFFLL;
  v4 = 47;
  while (*(v2 - 12) != a1 || (*v2 & 1) == 0)
  {
    v2 += 72;
    --v3;
    if (!--v1)
    {
      v5 = 0x5B500000000;
      return v4 | v5;
    }
  }

  if (v3)
  {
    v5 = 0;
    v4 = 0;
    *v2 |= 2u;
  }

  else
  {
LABEL_10:
    v5 = 0x5B500000000;
    v4 = 47;
  }

  return v4 | v5;
}

uint64_t sub_238F41B40(int a1)
{
  if (a1 == 0xFFFF)
  {
    goto LABEL_10;
  }

  v1 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    goto LABEL_10;
  }

  v2 = &byte_27DF71948;
  v3 = 0xFFFFLL;
  v4 = 47;
  while (*(v2 - 12) != a1 || (*v2 & 1) == 0)
  {
    v2 += 72;
    --v3;
    if (!--v1)
    {
      v5 = 0x5C000000000;
      return v4 | v5;
    }
  }

  if (v3)
  {
    v5 = 0;
    v4 = 0;
    *v2 &= ~2u;
  }

  else
  {
LABEL_10:
    v5 = 0x5C000000000;
    v4 = 47;
  }

  return v4 | v5;
}

uint64_t sub_238F41BD4(int a1)
{
  if (a1 == 0xFFFF)
  {
    return 0;
  }

  v1 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 0;
  }

  v2 = &byte_27DF71948;
  v3 = 0xFFFFLL;
  while (*(v2 - 12) != a1 || (*v2 & 1) == 0)
  {
    v2 += 72;
    --v3;
    if (!--v1)
    {
      return 0;
    }
  }

  if (v3)
  {
    return (*v2 >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_238F41C34(int a1)
{
  if (a1 == 0xFFFF)
  {
    return 0;
  }

  v1 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 0;
  }

  v2 = &byte_27DF71948;
  v3 = 0xFFFFLL;
  while (*(v2 - 12) != a1 || (*v2 & 1) == 0)
  {
    v2 += 72;
    --v3;
    if (!--v1)
    {
      return 0;
    }
  }

  return v3 && (*v2 & 2) == 0;
}

uint64_t sub_238F41C98(unsigned int a1)
{
  if (a1 > 0xFD)
  {
    return 2;
  }

  else
  {
    return ((LOBYTE(word_27DF71930[36 * a1 + 12]) >> 1) & 1) == 0;
  }
}

uint64_t sub_238F41CC8(int a1, int a2)
{
  result = sub_238F40104(a1, a2);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_238F41CE8(int a1, int a2, int a3)
{
  v4 = sub_238F40104(a1, a2);
  if (v4 && *(v4 + 16))
  {
    v5 = 0;
    while (*(*(v4 + 8) + 16 * v5 + 8) != a3)
    {
      if (++v5 >= *(v4 + 16))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    LOWORD(v5) = -1;
  }

  return v5;
}

uint64_t sub_238F41D44@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_238F40104(a1, a2);
  if (result && *(result + 16) > a3)
  {
    v7 = *(result + 8) + 16 * a3;
    *a4 = 1;
    *(a4 + 4) = *(v7 + 8);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t sub_238F41D9C(unsigned __int16 *a1)
{
  v2 = *a1;
  if (v2 == 0xFFFF)
  {
    return 0;
  }

  v3 = word_27DF775B0;
  if (!word_27DF775B0)
  {
    return 0;
  }

  v4 = &qword_27DF71958;
  v5 = 0xFFFFLL;
  while (*(v4 - 20) != v2 || (*(v4 - 2) & 1) == 0)
  {
    v4 += 9;
    --v5;
    if (!--v3)
    {
      return 0;
    }
  }

  if (!v5)
  {
    return 0;
  }

  v7 = *v4;
  if (!*v4)
  {
    return 0;
  }

  v8 = sub_238F40718(v2, *(a1 + 1), 64);
  if (v8 == 255)
  {
    return 0;
  }

  else
  {
    return v7 + 4 * v8;
  }
}

unint64_t sub_238F41E58(uint64_t a1, uint64_t a2)
{
  v3 = (sub_2394C7C20() + 1296);

  return sub_2394D5708(v3, a2);
}

_BYTE *sub_238F41E94(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952C11C();
  }

  return a1 + 4;
}

void sub_238F4214C(_Unwind_Exception *a1)
{
  sub_238DCCA48((v3 + 16));

  _Unwind_Resume(a1);
}

void sub_238F425D4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id *sub_238F4261C(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = MTRDeviceTypeRevision;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    objc_storeStrong(a1 + 1, a2);
    objc_storeStrong(a1 + 2, a3);
  }

  return a1;
}

void sub_238F42738(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F42FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F432E0(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] unsignedShortValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391C6F88(v20, &v23, a6, 3u, 0, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void *sub_238F43488(void *a1)
{
  *a1 = &unk_284BAA900;
  sub_239495880(a1 + 2);
  return a1;
}

void sub_238F435A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F43758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F43870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F43A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F43B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F43CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F43E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F43FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F440C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F44278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F44390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F44540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F44658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F45FAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F46C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F46D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F46F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F47020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F471D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F472E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F47498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F475B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F47760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F47878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F47A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F47B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4945C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F4A0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F4A1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4A3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F4A4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4A674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F4A958(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] unsignedShortValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391C6F88(v20, &v23, a6, 6u, 0x4001u, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F4ABDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4AD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F4B070(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] unsignedShortValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391C6F88(v20, &v23, a6, 6u, 0x4002u, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F4B2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4B4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F4B788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = 0;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [*(a1 + 32) timedWriteTimeout];
      v27[0] = 1;
      v28 = [v14 unsignedShortValue];
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v24 = 0;
  v15 = *(a1 + 40);
  if (v15)
  {
    HIBYTE(v24) = 1;
    LOBYTE(v24) = [v15 unsignedCharValue];
  }

  v16 = [*(a1 + 48) endpointID];
  v17 = [v16 unsignedShortValue];
  v21[0] = &unk_284BAA900;
  v21[1] = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391C7AE4(v21, &v24, a6, 6u, 0x4003u, a4, a5, v27, 0, v20);
  v21[0] = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v25);
  return v18;
}

void sub_238F4BA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4BBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F4BCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4BE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F4BFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4C15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F4C274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4C424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F4C53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4C6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F4C804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F4EBE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F4FE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F4FF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F500C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F501E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F50390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F504A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F50658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F50770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F50920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F50A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F50BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F50D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F50EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F50FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F51178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F5145C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] unsignedCharValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391C8874(v20, &v23, a6, 8u, 0xFu, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F516E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F51890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F51B74(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] unsignedShortValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391C6F88(v20, &v23, a6, 8u, 0x10u, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F51DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F51FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F5228C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = 0;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [*(a1 + 32) timedWriteTimeout];
      v27[0] = 1;
      v28 = [v14 unsignedShortValue];
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v24 = 0;
  v15 = *(a1 + 40);
  if (v15)
  {
    HIBYTE(v24) = 1;
    LOBYTE(v24) = [v15 unsignedCharValue];
  }

  v16 = [*(a1 + 48) endpointID];
  v17 = [v16 unsignedShortValue];
  v21[0] = &unk_284BAA900;
  v21[1] = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391C93D0(v21, &v24, a6, 8u, 0x11u, a4, a5, v27, 0, v20);
  v21[0] = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v25);
  return v18;
}

void sub_238F52520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F526D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F529B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[0] = 0;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [*(a1 + 32) timedWriteTimeout];
      v28[0] = 1;
      v29 = [v14 unsignedShortValue];
    }
  }

  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  LOBYTE(v24) = 0;
  v25 = 0;
  v15 = *(a1 + 40);
  if (v15)
  {
    v25 = 1;
    v24 = [v15 unsignedShortValue];
  }

  v16 = [*(a1 + 48) endpointID];
  v17 = [v16 unsignedShortValue];
  v21[0] = &unk_284BAA900;
  v21[1] = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391C9F68(v21, &v24, a6, 8u, 0x12u, a4, a5, v28, 0, v20);
  v21[0] = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v26);
  return v18;
}

void sub_238F52C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F52DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F530E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[0] = 0;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [*(a1 + 32) timedWriteTimeout];
      v28[0] = 1;
      v29 = [v14 unsignedShortValue];
    }
  }

  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  LOBYTE(v24) = 0;
  v25 = 0;
  v15 = *(a1 + 40);
  if (v15)
  {
    v25 = 1;
    v24 = [v15 unsignedShortValue];
  }

  v16 = [*(a1 + 48) endpointID];
  v17 = [v16 unsignedShortValue];
  v21[0] = &unk_284BAA900;
  v21[1] = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391C9F68(v21, &v24, a6, 8u, 0x13u, a4, a5, v28, 0, v20);
  v21[0] = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v26);
  return v18;
}

void sub_238F53378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F53528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F5380C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = 0;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [*(a1 + 32) timedWriteTimeout];
      v27[0] = 1;
      v28 = [v14 unsignedShortValue];
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v24 = 0;
  v15 = *(a1 + 40);
  if (v15)
  {
    HIBYTE(v24) = 1;
    LOBYTE(v24) = [v15 unsignedCharValue];
  }

  v16 = [*(a1 + 48) endpointID];
  v17 = [v16 unsignedShortValue];
  v21[0] = &unk_284BAA900;
  v21[1] = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391C93D0(v21, &v24, a6, 8u, 0x14u, a4, a5, v27, 0, v20);
  v21[0] = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v25);
  return v18;
}

void sub_238F53AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F53C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F53F34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = 0;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [*(a1 + 32) timedWriteTimeout];
      v27[0] = 1;
      v28 = [v14 unsignedShortValue];
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v24 = 0;
  v15 = *(a1 + 40);
  if (v15)
  {
    HIBYTE(v24) = 1;
    LOBYTE(v24) = [v15 unsignedCharValue];
  }

  v16 = [*(a1 + 48) endpointID];
  v17 = [v16 unsignedShortValue];
  v21[0] = &unk_284BAA900;
  v21[1] = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391C93D0(v21, &v24, a6, 8u, 0x4000u, a4, a5, v27, 0, v20);
  v21[0] = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v25);
  return v18;
}

void sub_238F541C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F54378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F54490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F54640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F54758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F54908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F54A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F54BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F54CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F54E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F54FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F59230(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F59300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F59418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F595C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F596E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F59890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F599A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F59B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F59C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F59E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F59F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5A0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5A200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5A3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5A4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5A678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5A790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5A940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5AA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5AC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5AD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5AED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5AFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5B198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5B2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5B460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5B578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5B728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5B840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5B9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5BB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5BCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5BDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5DDD4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F5DEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

unint64_t sub_238F5E19C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v8 = a1[4];
  if (v8)
  {
    v9 = [v8 timedWriteTimeout];

    if (v9)
    {
      v10 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v10 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = 0uLL;
  if ([a1[5] count])
  {
    operator new();
  }

  v23 = 0uLL;
  v11 = [a1[6] endpointID];
  v12 = [v11 unsignedShortValue];
  *buf = &unk_284BAA900;
  *&buf[8] = a2;
  sub_2391C6678(v29, a3);
  v29[20] = v12;
  v30 = 0;

  v22[0] = 0;
  v13 = sub_2391CAC7C(buf, &v23, a6, 0x1Eu, 0, a4, a5, v26, 0, v22);
  v14 = v13;
  v15 = v13 & 0xFFFFFFFF00000000;
  *buf = &unk_284BAA900;
  sub_239495880(v29);
  sub_238EA1790(&v24);
  v16 = *MEMORY[0x277D85DE8];
  return v14 | v15;
}

void sub_238F5E660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238F5E87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5EA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5EB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5ECF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5EE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5EFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5F0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5F284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5F39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F5F54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F5F664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F60C5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F60F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

unint64_t sub_238F6121C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  v6 = a1[4];
  if (v6)
  {
    v7 = [v6 timedWriteTimeout];

    if (v7)
    {
      v8 = [a1[4] timedWriteTimeout];
      v25[0] = 1;
      v26 = [v8 unsignedShortValue];
    }
  }

  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  v22 = 0uLL;
  if ([a1[5] count])
  {
    operator new();
  }

  v22 = 0uLL;
  v9 = [a1[6] endpointID];
  v10 = [v9 unsignedShortValue];
  *buf = &unk_284BAA900;
  *&buf[8] = a2;
  sub_2391C6678(v28, a3);
  v28[20] = v10;
  v29 = 0;

  v21[0] = 0;
  v11 = sub_2391CBCC4(buf, &v22, a6, 0x1Fu, 0, a4, a5, v25, 0, v21);
  LODWORD(v9) = v11;
  v12 = v11 & 0xFFFFFFFF00000000;
  *buf = &unk_284BAA900;
  sub_239495880(v28);
  sub_238EA1790(&v23);
  v13 = *MEMORY[0x277D85DE8];
  return v9 | v12;
}

void sub_238F61D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238F621A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F62364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

unint64_t sub_238F6264C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v9 = a1[4];
  if (v9)
  {
    v10 = [v9 timedWriteTimeout];

    if (v10)
    {
      v11 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v11 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  if ([a1[5] count])
  {
    operator new();
  }

  v23 = 0uLL;
  v12 = [a1[6] endpointID];
  v13 = [v12 unsignedShortValue];
  *buf = &unk_284BAA900;
  *&buf[8] = a2;
  sub_2391C6678(v29, a3);
  v29[20] = v13;
  v30 = 0;

  v22[0] = 0;
  v14 = sub_2391CCB80(buf, &v23, a6, 0x1Fu, 1u, a4, a5, v26, 0, v22);
  v15 = v14;
  v16 = v14 & 0xFFFFFFFF00000000;
  *buf = &unk_284BAA900;
  sub_239495880(v29);
  sub_238EA1790(&v24);
  v17 = *MEMORY[0x277D85DE8];
  return v15 | v16;
}

void sub_238F62A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238F62C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F62DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F62ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F63084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6319C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6334C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F63464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F63614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6372C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F638EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_238F63A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F63BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F63CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F63E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F63F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F64148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F64260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F64410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F64528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F646D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F647F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F66B98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F68378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F68490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F68640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F68758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F68908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F68A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F68BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F68CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F68E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F68FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F69160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F69278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F69428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F69540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F696F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F69808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6B4D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F6B7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6B8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6BA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6BB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6BD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6BE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6BFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6C110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6C2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6C3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6C588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F6C86C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v27[0] = 1;
      v28 = [v14 unsignedShortValue];
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v15 = a1[5];
  sub_238DB9BD8(&v21, [v15 UTF8String], objc_msgSend(v15, "lengthOfBytesUsingEncoding:", 4));

  v24 = v21;
  v16 = [a1[6] endpointID];
  v17 = [v16 unsignedShortValue];
  *&v21 = &unk_284BAA900;
  *(&v21 + 1) = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391CD8D4(&v21, &v24, a6, 0x28u, 5u, a4, a5, v27, 0, v20);
  *&v21 = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v25);
  return v18;
}

void sub_238F6CB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6CCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F6CFB8(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v27[0] = 1;
      v28 = [v14 unsignedShortValue];
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v15 = a1[5];
  sub_238DB9BD8(&v21, [v15 UTF8String], objc_msgSend(v15, "lengthOfBytesUsingEncoding:", 4));

  v24 = v21;
  v16 = [a1[6] endpointID];
  v17 = [v16 unsignedShortValue];
  *&v21 = &unk_284BAA900;
  *(&v21 + 1) = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391CD8D4(&v21, &v24, a6, 0x28u, 6u, a4, a5, v27, 0, v20);
  *&v21 = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v25);
  return v18;
}

void sub_238F6D270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6D420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6D538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6D6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6D800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6D9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6DAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6DC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6DD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6DF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6E058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6E208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6E320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6E4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6E5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6E798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6E8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6EA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6EB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6ED28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F6F00C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] BOOLValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391CE430(v20, &v23, a6, 0x28u, 0x10u, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F6F290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6F440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6F558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6F708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6F820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6F9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6FAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6FC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F6FDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F6FF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F70078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F70228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F70340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F704F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F70608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F707B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F708D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F70A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F70B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F70D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F70E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F71010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F71128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F712D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F713F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F76A74(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F77120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F77238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F773E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F77500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F776B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F777C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F77978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F77A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F77C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F77D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F79168(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F79434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

unint64_t sub_238F7971C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v10 = a1[4];
  if (v10)
  {
    v11 = [v10 timedWriteTimeout];

    if (v11)
    {
      v12 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v12 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  if ([a1[5] count])
  {
    operator new();
  }

  v23 = 0uLL;
  v13 = [a1[6] endpointID];
  v14 = [v13 unsignedShortValue];
  *buf = &unk_284BAA900;
  *&buf[8] = a2;
  sub_2391C6678(v29, a3);
  v29[20] = v14;
  v30 = 0;

  v22[0] = 0;
  v15 = sub_2391CF0F4(buf, &v23, a6, 0x2Au, 0, a4, a5, v26, 0, v22);
  v16 = v15;
  v17 = v15 & 0xFFFFFFFF00000000;
  *buf = &unk_284BAA900;
  sub_239495880(v29);
  sub_238EA1790(&v24);
  v18 = *MEMORY[0x277D85DE8];
  return v16 | v17;
}

void sub_238F79B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238F79CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F79E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F79F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7A148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7A260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7A410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7A528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7A6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7A7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7A9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7AAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7AC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7AD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7AF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7B048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7B1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7B310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7D338(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F7D408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F7D6EC(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v27[0] = 1;
      v28 = [v14 unsignedShortValue];
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v15 = a1[5];
  sub_238DB9BD8(&v21, [v15 UTF8String], objc_msgSend(v15, "lengthOfBytesUsingEncoding:", 4));

  v24 = v21;
  v16 = [a1[6] endpointID];
  v17 = [v16 unsignedShortValue];
  *&v21 = &unk_284BAA900;
  *(&v21 + 1) = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391CD8D4(&v21, &v24, a6, 0x2Bu, 0, a4, a5, v27, 0, v20);
  *&v21 = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v25);
  return v18;
}

void sub_238F7D9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7DB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7DC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7DE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7DF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7E0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7E1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7E3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7E4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7E674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7E78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F7E93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F7EA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F803A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F80470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F80754(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] unsignedCharValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391CFE40(v20, &v23, a6, 0x2Cu, 0, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F809D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F80B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F80E6C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] unsignedCharValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391D09B8(v20, &v23, a6, 0x2Cu, 1u, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F810F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F812A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F813B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F81568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F81680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F81830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F81948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F81AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F81C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F81DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F81ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F82088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F821A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F83E60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F83F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F84214(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] unsignedCharValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391D1530(v20, &v23, a6, 0x2Du, 0, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F84498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F84648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F84760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F84910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F84A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F84BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F84CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F84EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F84FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F85168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F85280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F85430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F85548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F86B30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F86C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F86D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F86EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F86FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F87190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F872A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F87458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F87570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F87720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F87838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F879E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F87B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F890D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F891A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F892C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F89470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F89588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F89738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F89850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F89A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F89B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F89CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F89DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F89F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8A0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8A258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8A370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8A520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8A638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8A7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8A900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8AAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8ABC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8AD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8AE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8B040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8B158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8B308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8B420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8B5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8B6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8B898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8B9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8BB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8BC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8BE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8BF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8C0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8C208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8C3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8C4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8C680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8C798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8C948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8CA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8CC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8CD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8CED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8CFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8D1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8D2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8D468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8D580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8D730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8D848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8D9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8DB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8DCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8DDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8DF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8E0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8E250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8E368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8E518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8E630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8E7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8E8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8EAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8EBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8ED70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8EE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8F038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8F150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8F300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8F418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F8F5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F8F6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F97270(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F97B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F97E10(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] unsignedLongLongValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391D1EB0(v20, &v23, a6, 0x30u, 0, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F98094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F98244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9835C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9850C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F98624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F987D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F988EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F98A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F98BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F98D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F98E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9902C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F99144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F992F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9940C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F995BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F996D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F99884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9999C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F99B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F99C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F99E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F99F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9A0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9A1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9A3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9A4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9A66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9A784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9A934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9AA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9ABFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9AD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9AEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9AFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9D5C4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F9E468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9E580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9E730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9E848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9E9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9EB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9ECC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9EDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9EF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238F9F26C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v14 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23 = [a1[5] BOOLValue];
  v15 = [a1[6] endpointID];
  v16 = [v15 unsignedShortValue];
  v20[0] = &unk_284BAA900;
  v20[1] = a2;
  sub_2391C6678(v21, a3);
  v21[20] = v16;
  v22 = 0;

  v19[0] = 0;
  v17 = sub_2391CE430(v20, &v23, a6, 0x31u, 4u, a4, a5, v26, 0, v19);
  v20[0] = &unk_284BAA900;
  sub_239495880(v21);
  sub_238EA1790(&v24);
  return v17;
}

void sub_238F9F4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9F6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9F7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9F968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9FA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9FC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238F9FD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238F9FEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA0010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA01C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA02D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA0488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA05A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA0750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA0868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA0A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA0B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA0CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA0DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA0FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA10C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA1270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA1388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA45F4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FA48BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA49D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA4B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA4C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA4E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA4F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA5114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA522C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA53DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA54F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA6834(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FA6EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA7004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA71B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA72CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA747C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA7594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA7744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA785C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA7A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA7B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA7CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA7DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA7F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA80B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA8264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA837C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA852C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA8644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA87F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA890C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA8ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA8BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA8D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA8E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA904C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA9164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FA9314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FA942C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FAC528(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FAC7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FAC908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FACAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FACBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FACD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FACE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FAD048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FAD160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FAD310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FAD428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FAD5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FAD6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FAD8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FAD9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FADB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FADC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FADE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FADF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FAFF5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FB0224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB033C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB04EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB0604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB07B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB08CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB0A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB0B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB0D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB0E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB100C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB1124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB12D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB13EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB159C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB16B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB1864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB197C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB1B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB1C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB1DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB1F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB20BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB21D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB2384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB249C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB264C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB2764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB2914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB2A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB2BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB2CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB2EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB2FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB316C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB3284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB3434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB354C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB36FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB3814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB39C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB3ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB3C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB3DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB3F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB406C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB421C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB4334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB44E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB45FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB47AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB48C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB4A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB4B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB4D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB4E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB5004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB511C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB52CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB53E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB5594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB56AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB585C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB5974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB5B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB5C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB5DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB5F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB60B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB61CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB637C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB6494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB6644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB675C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB690C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB6A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB6BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB6CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB6E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB6FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB7164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB727C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB742C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB7544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB76F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB780C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB79BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB7AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB7C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB7D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB7F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB8064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB8214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB832C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB84DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB85F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB87A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB88BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB8A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB8B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB8D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB8E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB8FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB9114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB92C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB93DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB958C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB96A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB9854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB996C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB9B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB9C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FB9DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FB9EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBA0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBA1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBA374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBA48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBA63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBA754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBA904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBAA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBABCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBACE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBAE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBAFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBB15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBB274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBB424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBB53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBB6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBB804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBB9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBBACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBBC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBBD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBBF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBC05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FBC20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FBC324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCAB44(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FCAE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCAF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCB0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCB1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCB39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCB4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCB664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCB77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCB92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCBA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCBBF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCBD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCBEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCBFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCC184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCC29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCC44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCC564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCC714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCC82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCC9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCCAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCCCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCCDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCCF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCD084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCD234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCD34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCD4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCD614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCD7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCD8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCDA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCDBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FCDD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FCDE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD1D04(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FD1FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD20E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD2294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD23AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD255C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD2674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD2824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD293C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD2AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD2C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD2DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD2ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD307C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD3194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD3344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD345C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD360C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD3724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD38D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD39EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD3B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD3CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD3E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD3F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD412C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD4244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD43F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD450C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD7614(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FD808C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD81A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD8354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD846C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD861C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD8734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD88E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD89FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD8BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD8CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD8E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD8F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD913C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD9254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD9404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD951C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD96CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD97E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD9994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD9AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD9C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FD9D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FD9F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDA03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDA1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDA304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDA4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDA5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDA77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDA894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDAA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDAB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDAD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDAE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDAFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDB0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDB488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDB5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDB750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDB868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDBA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDBB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDBCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDBDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDBFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238FDC28C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = 0;
  v12 = a1[4];
  if (v12)
  {
    v13 = [v12 timedWriteTimeout];

    if (v13)
    {
      v14 = [a1[4] timedWriteTimeout];
      v27[0] = 1;
      v28 = [v14 unsignedShortValue];
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v15 = a1[5];
  sub_238DB9BD8(&v21, [v15 UTF8String], objc_msgSend(v15, "lengthOfBytesUsingEncoding:", 4));

  v24 = v21;
  v16 = [a1[6] endpointID];
  v17 = [v16 unsignedShortValue];
  *&v21 = &unk_284BAA900;
  *(&v21 + 1) = a2;
  sub_2391C6678(v22, a3);
  v22[20] = v17;
  v23 = 0;

  v20[0] = 0;
  v18 = sub_2391CD8D4(&v21, &v24, a6, 0x39u, 5u, a4, a5, v27, 0, v20);
  *&v21 = &unk_284BAA900;
  sub_239495880(v22);
  sub_238EA1790(&v25);
  return v18;
}

void sub_238FDC544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDC6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDC80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDC9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDCAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDCC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDCD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDCF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDD064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDD214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDD32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDD4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDD5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDD7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDD8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDDA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDDB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDDD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDDE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDDFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDE114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDE2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDE3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDE58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDE6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDE854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDE96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDEB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDEC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDEDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDEEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDF0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDF1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDF374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDF48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FDF63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FDF754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE3CB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FE3D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE3E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE404C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE4164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE4314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE442C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE45DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE46F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE48A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE49BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE4B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE4C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE4E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE4F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE50FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE5214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE6EB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FE7578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE7690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE7840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE7958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE7B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE7C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE7DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE7EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE8098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE81B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE8360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE8478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE8628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE8740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FE88F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FE8A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FEA6C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FEBB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_238FEBC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FEBE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_238FEBF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FEC0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FEC204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FEC3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FEC4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FEC67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FEC794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FEC944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FECA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FECC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FECD24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FECED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FECFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FED19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FED2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FED464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FED57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FED72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FED844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF04C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FF0D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

unint64_t sub_238FF1064(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v10 = a1[4];
  if (v10)
  {
    v11 = [v10 timedWriteTimeout];

    if (v11)
    {
      v12 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v12 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  if ([a1[5] count])
  {
    operator new();
  }

  v23 = 0uLL;
  v13 = [a1[6] endpointID];
  v14 = [v13 unsignedShortValue];
  *buf = &unk_284BAA900;
  *&buf[8] = a2;
  sub_2391C6678(v29, a3);
  v29[20] = v14;
  v30 = 0;

  v22[0] = 0;
  v15 = sub_2391D2B7C(buf, &v23, a6, 0x3Fu, 0, a4, a5, v26, 0, v22);
  v16 = v15;
  v17 = v15 & 0xFFFFFFFF00000000;
  *buf = &unk_284BAA900;
  sub_239495880(v29);
  sub_238EA1790(&v24);
  v18 = *MEMORY[0x277D85DE8];
  return v16 | v17;
}

void sub_238FF144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238FF1618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF17D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_238FF18F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF1AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF1BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF1D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF1E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF2034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF214C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF22FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF2414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF25C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF26DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF288C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF29A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF2B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF2C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF4E40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FF4F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF5028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF51D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF52F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF54A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF55B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF5768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF5880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF5A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF5B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF5CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238FF5E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_238FF73E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238FF74B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

unint64_t sub_238FF779C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v9 = a1[4];
  if (v9)
  {
    v10 = [v9 timedWriteTimeout];

    if (v10)
    {
      v11 = [a1[4] timedWriteTimeout];
      v26[0] = 1;
      v27 = [v11 unsignedShortValue];
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  if ([a1[5] count])
  {
    operator new();
  }

  v23 = 0uLL;
  v12 = [a1[6] endpointID];
  v13 = [v12 unsignedShortValue];
  *buf = &unk_284BAA900;
  *&buf[8] = a2;
  sub_2391C6678(v29, a3);
  v29[20] = v13;
  v30 = 0;

  v22[0] = 0;
  v14 = sub_2391D3A30(buf, &v23, a6, 0x41u, 0, a4, a5, v26, 0, v22);
  v15 = v14;
  v16 = v14 & 0xFFFFFFFF00000000;
  *buf = &unk_284BAA900;
  sub_239495880(v29);
  sub_238EA1790(&v24);
  v17 = *MEMORY[0x277D85DE8];
  return v15 | v16;
}