uint64_t sub_239465D64(unint64_t *a1, unint64_t *a2)
{
  sub_239462398(a1);
  sub_239462398(a2);
  v4 = bswap64(a1[13]);
  v5 = bswap64(a2[13]);
  if (v4 == v5)
  {
    v4 = bswap64(a1[14]);
    v5 = bswap64(a2[14]);
    if (v4 == v5)
    {
      v4 = bswap64(a1[15]);
      v5 = bswap64(a2[15]);
      if (v4 == v5)
      {
        v4 = bswap64(a1[16]);
        v5 = bswap64(a2[16]);
        if (v4 == v5)
        {
          return 0;
        }
      }
    }
  }

  if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

unint64_t *sub_239465E08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 4) | 0x100) != 0x102 || !sub_239431484(a1))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_239457528(a1, v6);
    if (!sub_2393FC994(*(*v7 + 8), a3) && !sub_239465AD0(*(*v7 + 24), a2))
    {
      break;
    }

    if (++v6 >= sub_239431484(a1))
    {
      return 0;
    }
  }

  return v7;
}

unint64_t *sub_239465EB0(unint64_t *a1, uint64_t a2)
{
  if (!sub_239431484(a1))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_239457528(a1, v4);
    if (!sub_239465AD0(*(*v5 + 40), a2))
    {
      break;
    }

    if (++v4 >= sub_239431484(a1))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_239465F28(uint64_t result)
{
  if (result)
  {
    return sub_23946E93C(*(*result + 48));
  }

  return result;
}

uint64_t sub_239465F3C(uint64_t result)
{
  if (result)
  {
    return sub_23946E984(*(*result + 48));
  }

  return result;
}

uint64_t sub_239465F50(uint64_t result)
{
  if (result)
  {
    return *(*(*result + 48) + 8);
  }

  return result;
}

uint64_t sub_239465F64(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sub_23946E93C(*(*result + 48));
    if (result)
    {
      v3 = sub_2394178DC(result, a2);
      if (v3 > 0)
      {
        return 1;
      }

      if (v3 == -2)
      {
        v4 = 128;
        v5 = 261;
      }

      else if (v3 == -1)
      {
        v4 = 115;
        v5 = 258;
      }

      else
      {
        if (v3)
        {
          return 0;
        }

        v4 = 116;
        v5 = 255;
      }

      sub_2394170F4(11, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_cmp.c", v5);
      return 0;
    }
  }

  return result;
}

unint64_t *sub_239466020(uint64_t a1)
{
  v1 = sub_2394579F4(a1);
  v2 = v1;
  if (v1 && sub_239431484(v1))
  {
    v3 = 0;
    do
    {
      v4 = sub_239457528(v2, v3);
      sub_239455868(v4);
      ++v3;
    }

    while (v3 < sub_239431484(v2));
  }

  return v2;
}

void sub_2394661F4(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *(*a1 + 8);
      if (v2)
      {
        v2(a1);
      }
    }

    sub_239450144(a1);
  }
}

uint64_t sub_239466248(uint64_t a1)
{
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(*a1 + 16);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

void *sub_23946626C()
{
  v0 = sub_2394500B0(0xF0uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 58) = 1;
    sub_239457CF8((v0 + 1));
    *v1 = sub_239457478(sub_2394662F4);
    v1[26] = sub_2394574D8();
    v2 = sub_23946A484();
    v1[27] = v2;
    if (!*v1 || !v1[26] || !v2)
    {
      sub_239466300(v1);
      return 0;
    }
  }

  return v1;
}

void sub_239466300(uint64_t a1)
{
  if (a1 && sub_239455A20((a1 + 232)))
  {
    j__pthread_rwlock_destroy((a1 + 8));
    sub_239457574(*(a1 + 208), sub_239466F98, sub_2394661F4);
    sub_239457574(*a1, sub_239466FA4, sub_2394663D0);
    sub_23946A4AC(*(a1 + 216));

    sub_239450144(a1);
  }
}

void sub_2394663D0(void *a1)
{
  if (a1)
  {
    sub_2394667D8(a1);

    sub_239450144(a1);
  }
}

unint64_t *sub_239466410(uint64_t a1, void *a2)
{
  v4 = *(a1 + 208);
  if (!sub_239431484(v4))
  {
LABEL_5:
    v7 = sub_2394500B0(0x18uLL);
    v8 = v7;
    if (v7)
    {
      *v7 = a2;
      v7[2] = a1;
      if (*a2 && !(*a2)(v7))
      {
        sub_239450144(v8);
        v8 = 0;
      }

      else if (sub_2394579D0(*(a1 + 208), v8))
      {
        return v8;
      }
    }

    sub_2394661F4(v8);
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = sub_239457528(v4, v5);
    if (*v6 == a2)
    {
      return v6;
    }

    if (++v5 >= sub_239431484(v4))
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_2394664E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v15[0] = 0;
  v15[1] = 0;
  sub_239457D3C((v7 + 8));
  v8 = *v7;
  v9 = sub_239466A94(*v7, a2, a3, 0);
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_239457528(v8, v9);
  }

  sub_239457D5C((v7 + 8));
  if (a2 == 2 || !v10)
  {
    if (sub_239431484(*(v7 + 208)))
    {
      v11 = 0;
      while (1)
      {
        v12 = sub_239457528(*(v7 + 208), v11);
        if (*v12)
        {
          v13 = *(*v12 + 24);
          if (v13)
          {
            if (v13(v12, a2) > 0)
            {
              break;
            }
          }
        }

        if (++v11 >= sub_239431484(*(v7 + 208)))
        {
          goto LABEL_12;
        }
      }

      v10 = v15;
    }

    else
    {
LABEL_12:
      if (!v10)
      {
        return 0;
      }
    }
  }

  *a4 = *v10;
  *(a4 + 8) = v10[1];
  sub_239466608(a4);
  return 1;
}

uint64_t sub_239466608(uint64_t result)
{
  if (*result == 2 || *result == 1)
  {
    return sub_239455868(*(result + 8));
  }

  return result;
}

uint64_t sub_239466638(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v6 = sub_2394500B0(0x10uLL);
    if (v6)
    {
      v7 = v6;
      if (a3)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      *v6 = v8;
      v6[1] = a2;
      sub_239466608(v6);
      sub_239457D3C((a1 + 8));
      v9 = *a1;
      sub_239457A78(*a1, sub_239466FB0);
      v15 = 0;
      if (sub_23945784C(v9, &v15, v7, sub_239466FB0))
      {
        v10 = v15;
        if ((*v7 - 1) >= 2)
        {
          v11 = sub_239457528(v9, v15);
LABEL_18:
          if (v11)
          {
LABEL_19:
            sub_239457D5C((a1 + 8));
            v12 = 1;
            goto LABEL_23;
          }
        }

        else
        {
          while (v10 < sub_239431484(v9))
          {
            v11 = sub_239457528(v9, v10);
            if (sub_239466F50(v11, v7))
            {
              break;
            }

            if (*v7 == 2)
            {
              if (!sub_239465BA0(v11[1], v7[1]))
              {
                goto LABEL_19;
              }
            }

            else
            {
              if (*v7 != 1)
              {
                goto LABEL_18;
              }

              if (!sub_239465D64(v11[1], v7[1]))
              {
                goto LABEL_19;
              }
            }

            ++v10;
          }
        }
      }

      v13 = sub_2394579D0(*a1, v7);
      sub_239457D5C((a1 + 8));
      if (v13)
      {
        return 1;
      }

      v12 = 0;
LABEL_23:
      sub_2394667D8(v7);
      sub_239450144(v7);
      return v12;
    }
  }

  return 0;
}

void sub_2394667D8(uint64_t a1)
{
  if (*a1 == 2)
  {
    sub_23946D6D0(*(a1 + 8));
  }

  else if (*a1 == 1)
  {
    sub_23946EDF8(*(a1 + 8));
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t sub_239466824(uint64_t result)
{
  if (result)
  {
    if (*result == 1)
    {
      return *(result + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t *sub_239466844(uint64_t a1)
{
  sub_239457D1C((a1 + 8));
  v2 = sub_239457C24(*a1, sub_239466FE0, sub_2394668C4, sub_239466FA4, sub_2394663D0);
  sub_239457D5C((a1 + 8));
  return v2;
}

void *sub_2394668C4(uint64_t a1)
{
  v2 = sub_2394500B0(0x10uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = *a1;
    v2[1] = *(a1 + 8);
    sub_239466608(v2);
  }

  return v3;
}

unint64_t *sub_239466910(unint64_t ***a1, uint64_t a2)
{
  v4 = sub_2394574D8();
  if (!v4)
  {
    return v4;
  }

  v11 = 0;
  sub_239457D3C((*a1 + 1));
  v5 = sub_239466A94(**a1, 1u, a2, &v11);
  if ((v5 & 0x80000000) != 0)
  {
    v10[0] = 0;
    v10[1] = 0;
    sub_239457D5C((*a1 + 1));
    if (sub_2394664E8(a1, 1, a2, v10))
    {
      sub_2394667D8(v10);
      sub_239457D3C((*a1 + 1));
      v5 = sub_239466A94(**a1, 1u, a2, &v11);
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_3;
      }

      sub_239457D5C((*a1 + 1));
    }

    sub_2393FFA58(v4);
    return 0;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v6 = 0;
    v7 = v5;
    while (1)
    {
      v8 = sub_239457528(**a1, v7)[1];
      if (!sub_2394579D0(v4, v8))
      {
        break;
      }

      sub_239455868(v8);
      ++v6;
      ++v7;
      if (v6 >= v11)
      {
        goto LABEL_7;
      }
    }

    sub_239457D5C((*a1 + 1));
    sub_239457574(v4, sub_239466FEC, sub_23946EDF8);
    return 0;
  }

LABEL_7:
  sub_239457D5C((*a1 + 1));
  return v4;
}

uint64_t sub_239466A94(unint64_t *a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  v19[43] = *MEMORY[0x277D85DE8];
  v17 = 0;
  memset(v19, 0, 344);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v18, 0, 88);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v16 = a2;
  if (a2 == 2)
  {
    v17 = v18;
    v18[0] = &v12;
    v6 = v13;
  }

  else
  {
    if (a2 != 1)
    {
LABEL_11:
      result = 0xFFFFFFFFLL;
      goto LABEL_13;
    }

    v17 = v19;
    v19[0] = v14;
    v6 = &v14[2] + 1;
  }

  *v6 = a3;
  v11 = 0;
  sub_239457A78(a1, sub_239466FB0);
  if (!sub_23945784C(a1, &v11, &v16, sub_239466FB0))
  {
    goto LABEL_11;
  }

  if (a4)
  {
    *a4 = 1;
    for (i = v11 + 1; i < sub_239431484(a1); ++i)
    {
      v8 = sub_239457528(a1, i);
      if (sub_239466F50(v8, &v16))
      {
        break;
      }

      ++*a4;
    }
  }

  result = v11;
LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_239466C34(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2394574D8();
  if (!v4)
  {
    return v4;
  }

  v11 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (!sub_2394664E8(a1, 2, a2, v10))
  {
LABEL_10:
    sub_2393FFA58(v4);
    return 0;
  }

  sub_2394667D8(v10);
  sub_239457D3C((*a1 + 8));
  v5 = sub_239466A94(**a1, 2u, a2, &v11);
  if ((v5 & 0x80000000) != 0)
  {
    sub_239457D5C((*a1 + 8));
    goto LABEL_10;
  }

  if (v11 >= 1)
  {
    v6 = 0;
    v7 = v5;
    while (1)
    {
      v8 = sub_239457528(**a1, v7)[1];
      sub_239455868(v8);
      if (!sub_2394579D0(v4, v8))
      {
        break;
      }

      ++v6;
      ++v7;
      if (v6 >= v11)
      {
        goto LABEL_8;
      }
    }

    sub_239457D5C((*a1 + 8));
    sub_23946D6D0(v8);
    sub_239457574(v4, sub_239466FF8, sub_23946D6D0);
    return 0;
  }

LABEL_8:
  sub_239457D5C((*a1 + 8));
  return v4;
}

uint64_t sub_239466D8C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v6 = sub_239465C18(a3);
  if (!sub_2394664E8(a2, 1, v6, &v15))
  {
    return 0;
  }

  v7 = v16;
  if (sub_239468CB8(a2, a3, v16))
  {
    *a1 = v7;
    return 1;
  }

  else
  {
    sub_2394667D8(&v15);
    sub_239457D3C((*a2 + 8));
    v9 = sub_239466A94(**a2, 1u, v6, 0);
    if (v9 != -1)
    {
      LODWORD(i) = v9;
      if (sub_239431484(**a2) > v9)
      {
        for (i = i; i < sub_239431484(**a2); ++i)
        {
          v11 = sub_239457528(**a2, i);
          if (*v11 != 1)
          {
            break;
          }

          v12 = v11;
          v13 = sub_239465D34(v11[1]);
          if (sub_239465AD0(v6, v13))
          {
            break;
          }

          if (sub_239468CB8(a2, a3, *(v12 + 8)))
          {
            *a1 = *(v12 + 8);
            sub_239466608(v12);
            v8 = 1;
            goto LABEL_13;
          }
        }
      }
    }

    v8 = 0;
LABEL_13:
    sub_239457D5C((*a2 + 8));
  }

  return v8;
}

uint64_t sub_239466F50(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1 - *a2);
  if (*a1 != *a2)
  {
    return v3;
  }

  if (v2 == 2)
  {
    return sub_239465B8C(*(a1 + 1), *(a2 + 8));
  }

  if (v2 != 1)
  {
    return 0;
  }

  return sub_239465B78(*(a1 + 1), *(a2 + 8));
}

uint64_t sub_239466FB0(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

_BYTE *sub_239467004(uint64_t *a1, _BYTE *a2, int a3)
{
  v3 = a2;
  v40 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v6 = sub_239405E68();
    if (!v6)
    {
      goto LABEL_66;
    }

    v7 = v6;
    if (!sub_239405F30(v6, 0xC8uLL))
    {
      v6 = v7;
      goto LABEL_66;
    }

    *v7[1] = 0;
    if (a1)
    {
      v37 = v7;
      v5 = 200;
      goto LABEL_9;
    }

    v3 = v7[1];
    sub_239450144(v7);
    v5 = 200;
LABEL_62:
    sub_2394507BC(v3, "NO X509_NAME", v5);
    goto LABEL_68;
  }

  v5 = a3;
  if (a3 < 1)
  {
    goto LABEL_67;
  }

  if (!a1)
  {
    goto LABEL_62;
  }

  v37 = 0;
LABEL_9:
  if (!sub_239431484(*a1))
  {
    v9 = 0;
LABEL_54:
    if (v37)
    {
      v3 = v37[1];
      sub_239450144(v37);
      if (v9)
      {
        goto LABEL_68;
      }
    }

    else
    {
LABEL_58:
      if (v9)
      {
        goto LABEL_68;
      }
    }

    *v3 = 0;
    goto LABEL_68;
  }

  v36 = v5;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = sub_239457528(*a1, v9);
    v11 = sub_2394509E8(*v10);
    if (!v11 || (v12 = sub_239451004(v11)) == 0)
    {
      v12 = v38;
      sub_2393FD94C(v38, 80, *v10);
    }

    v13 = strlen(v12);
    v14 = v10[1];
    v15 = *v14;
    if (v15 > 0x100000)
    {
      v33 = 121;
LABEL_64:
      sub_2394170F4(11, 0, 135, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_obj.c", v33);
      v6 = v37;
      goto LABEL_66;
    }

    v16 = v13;
    v17 = v14[1];
    v18 = *(v14 + 1);
    if ((v15 & 3) != 0 || v17 != 27)
    {
      goto LABEL_26;
    }

    v39 = 0uLL;
    if (v15 < 1)
    {
      goto LABEL_27;
    }

    for (i = 0; i != v15; ++i)
    {
      if (*(v18 + i))
      {
        *(&v39 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = 1;
      }
    }

    if (!(DWORD1(v39) | v39 | DWORD2(v39)))
    {
LABEL_27:
      v21 = xmmword_2395D13F0;
    }

    else
    {
LABEL_26:
      *&v21 = 0x100000001;
      *(&v21 + 1) = 0x100000001;
    }

    v39 = v21;
    if (v15 < 1)
    {
      v23 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        if (*(&v39 & 0xFFFFFFFFFFFFFFF3 | (4 * (v22 & 3))))
        {
          if (*(v18 + v22) - 127 >= 0xFFFFFFA1)
          {
            ++v23;
          }

          else
          {
            v23 += 4;
          }
        }

        ++v22;
      }

      while (v15 != v22);
    }

    v24 = v8 + v13 + v23 + 2;
    if (v24 > 0x100000)
    {
      v33 = 157;
      goto LABEL_64;
    }

    if (!v37)
    {
      v25 = v3;
      if (v24 >= v36)
      {
        goto LABEL_58;
      }

      goto LABEL_42;
    }

    if (!sub_239405F30(v37, (v8 + v13 + v23 + 3)))
    {
      break;
    }

    v25 = v37[1];
LABEL_42:
    v26 = &v25[v8];
    *v26 = 47;
    v27 = v26 + 1;
    if (v16)
    {
      memcpy(v27, v12, v16);
    }

    v28 = &v27[v16];
    *v28 = 61;
    v29 = v28 + 1;
    if (v15 >= 1)
    {
      v30 = 0;
      v31 = *(v10[1] + 8);
      do
      {
        if (*(&v39 & 0xFFFFFFFFFFFFFFF3 | (4 * (v30 & 3))))
        {
          v32 = *(v31 + v30);
          if ((v32 - 127) > 0xFFFFFFA0)
          {
            *v29++ = v32;
          }

          else
          {
            *v29 = 30812;
            v29[2] = a0123456789abcd_4[v32 >> 4];
            v29[3] = a0123456789abcd_4[v32 & 0xF];
            v29 += 4;
          }
        }

        ++v30;
      }

      while (v15 != v30);
    }

    *v29 = 0;
    ++v9;
    v8 = v24;
    if (v9 >= sub_239431484(*a1))
    {
      goto LABEL_54;
    }
  }

  v6 = v37;
LABEL_66:
  sub_2393FFA58(v6);
LABEL_67:
  v3 = 0;
LABEL_68:
  v34 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2394673C0(uint64_t result)
{
  if (result)
  {
    return sub_23946E984(*(*result + 40));
  }

  return result;
}

uint64_t sub_2394673D4(uint64_t result)
{
  if (result)
  {
    return sub_23946E93C(*(*result + 40));
  }

  return result;
}

uint64_t sub_2394673E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sub_23946E93C(*(*result + 40));
    if (result)
    {
      v3 = sub_2394178DC(result, a2);
      if (v3 > 0)
      {
        return 1;
      }

      if (v3 == -2)
      {
        if (sub_2393FFBEC(a2) == 408)
        {
          v4 = 15;
          v5 = 113;
        }

        else
        {
          v4 = 128;
          v5 = 115;
        }
      }

      else if (v3 == -1)
      {
        v4 = 115;
        v5 = 109;
      }

      else
      {
        if (v3)
        {
          return 0;
        }

        v4 = 116;
        v5 = 106;
      }

      sub_2394170F4(11, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_req.c", v5);
      return 0;
    }
  }

  return result;
}

void *sub_2394674D8(void *result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      return 0;
    }

    v2 = sub_239450F00(0xACu);
    if (!v2 || (v3 = sub_23946776C(v1, v2, -1), v3 == -1))
    {
      result = sub_239450F00(0xABu);
      if (!result)
      {
        return result;
      }

      v3 = sub_23946776C(v1, result, -1);
      if (v3 == -1)
      {
        return 0;
      }
    }

    v4 = sub_239467604(v1, v3);
    result = sub_239465A5C(v4, 0);
    if (!result)
    {
      return result;
    }

    if (*result == 16)
    {
      v5 = result[1];
      v6 = *(v5 + 1);
      return sub_2394004F8(0, &v6, *v5, byte_278A82600);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2394675A8(uint64_t a1, unsigned int a2, int a3)
{
  v5 = sub_239450F00(a2);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_23946776C(a1, v5, a3);
}

unint64_t *sub_239467604(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *(*a1 + 48);
  if (!v3 || sub_239431484(v3) <= a2)
  {
    return 0;
  }

  v5 = *(*a1 + 48);

  return sub_239457528(v5, a2);
}

uint64_t sub_239467670(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = 0;
  v5 = sub_2394018FC(a2, &v8, byte_278A82600);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = sub_2394676F0(a1, a3, 16, v8, v5);
  sub_239450144(v8);
  return v6;
}

uint64_t sub_2394676F0(uint64_t a1, unsigned int a2, int a3, char *a4, int a5)
{
  v6 = sub_23946565C(0, a2, a3, a4, a5);
  if (v6 && sub_2394678C4(a1, v6))
  {
    return 1;
  }

  sub_23946D578(v6);
  return 0;
}

uint64_t sub_23946776C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*a1 + 48);
  if (v4)
  {
    LODWORD(v5) = a3;
    v7 = sub_239431484(v4);
    if (v5 < 0)
    {
      LODWORD(v5) = -1;
    }

    v8 = v7;
    for (i = v5 + 1; i < v8; ++i)
    {
      v10 = sub_239457528(*(*a1 + 48), i);
      v5 = (v5 + 1);
      if (!sub_239450998(*v10, a2))
      {
        return v5;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_239467804(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *(*a1 + 48);
  if (!v3 || sub_239431484(v3) <= a2)
  {
    return 0;
  }

  v5 = *(*a1 + 48);

  return sub_239457700(v5, a2);
}

uint64_t sub_239467870(uint64_t a1, uint64_t a2)
{
  v3 = sub_23946D584(a2);
  if (v3 && sub_2394678C4(a1, v3))
  {
    return 1;
  }

  sub_23946D578(v3);
  return 0;
}

unint64_t *sub_2394678C4(uint64_t a1, uint64_t a2)
{
  result = *(*a1 + 48);
  if (result)
  {
    return (sub_2394579D0(result, a2) != 0);
  }

  *(*a1 + 48) = sub_2394574D8();
  result = *(*a1 + 48);
  if (result)
  {
    return (sub_2394579D0(result, a2) != 0);
  }

  return result;
}

uint64_t sub_23946791C(uint64_t a1, uint64_t a2, int a3, char *a4, int a5)
{
  v6 = sub_2394656EC(0, a2, a3, a4, a5);
  if (v6 && sub_2394678C4(a1, v6))
  {
    return 1;
  }

  sub_23946D578(v6);
  return 0;
}

uint64_t sub_239467970(uint64_t a1, const char *a2, int a3, char *a4, int a5)
{
  v6 = sub_23946590C(0, a2, a3, a4, a5);
  if (v6 && sub_2394678C4(a1, v6))
  {
    return 1;
  }

  sub_23946D578(v6);
  return 0;
}

uint64_t sub_2394679C4(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 16);
  }

  if (a3)
  {
    *a3 = *(result + 8);
  }

  return result;
}

uint64_t sub_2394679EC(uint64_t *a1, void **a2)
{
  sub_23940327C(*a1);
  v4 = *a1;

  return sub_23946EB6C(v4, a2);
}

uint64_t sub_239467A30(uint64_t **a1)
{
  result = **a1;
  if (result)
  {
    return sub_2393FD028(result);
  }

  return result;
}

uint64_t sub_239467A44(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (a2 < 3)
    {
      v3 = result;
      result = **result;
      if (a2)
      {
        if (result || (**v3 = sub_239402EE8(), (result = **v3) != 0))
        {

          return sub_2393FCD8C(result, a2);
        }
      }

      else
      {
        sub_239402ECC(result);
        **v3 = 0;
        return 1;
      }
    }

    else
    {
      sub_2394170F4(11, 0, 140, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_set.c", 80);
      return 0;
    }
  }

  return result;
}

BOOL sub_239467AF0(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 4) | 0x100) != 0x102)
  {
    sub_2394170F4(12, 0, 191, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_set.c", 102);
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (*(*a1 + 8) != a2)
  {
    v3 = sub_2393FC990(a2);
    if (v3)
    {
      sub_239402ECC(*(*a1 + 8));
      *(*a1 + 8) = v3;
    }
  }

  return v3 != 0;
}

uint64_t sub_239467B88(uint64_t a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    return sub_23946DE70((*a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239467BA4(uint64_t a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    return sub_23946DE70((*a1 + 40), a2);
  }

  else
  {
    return 0;
  }
}

BOOL sub_239467BC0(_BOOL8 result, int *a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(*result + 32);
    if (v3)
    {
      v4 = a2;
      if (*v3 != a2)
      {
        v4 = sub_2393FF9A4(a2);
        if (v4)
        {
          sub_2393FEBA0(**(*v2 + 32));
          **(*v2 + 32) = v4;
        }
      }

      return v4 != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_239467C54(_BOOL8 result, int *a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(*result + 32);
    if (v3)
    {
      v4 = a2;
      if (*(v3 + 8) != a2)
      {
        v4 = sub_2393FF9A4(a2);
        if (v4)
        {
          sub_2393FEBA0(*(*(*v2 + 32) + 8));
          *(*(*v2 + 32) + 8) = v4;
        }
      }

      return v4 != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239467CE8(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(*result + 56);
  }

  if (a3)
  {
    *a3 = *(*result + 64);
  }

  return result;
}

uint64_t sub_239467D0C(void *a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    return sub_23946E800(*a1 + 48, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239467D4C(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    return 1;
  }

  if (a2)
  {
    v5 = dword_284BBADE0;
    v6 = 6;
    while (*v5 != a2)
    {
      v5 += 6;
      if (!--v6)
      {

        return sub_239467E20(a2, a1);
      }
    }

    v7 = *(v5 + 1);

    return v7();
  }

  else
  {
    result = sub_239467E20(910, a1);
    if (result == 3)
    {
      v4 = sub_239462398(a1);
      result = 3;
      if (v4)
      {
        if ((*(a1 + 49) & 0x20) != 0)
        {
          return 1;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return result;
}

uint64_t sub_239467E20(int a1, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (!v2)
  {
    return 3;
  }

  if (!sub_239431484(*(v2 + 8)))
  {
LABEL_6:
    if (sub_239431484(*v2))
    {
      v6 = 0;
      while (1)
      {
        v7 = sub_239457528(*v2, v6);
        if (sub_2394509E8(v7) == a1)
        {
          break;
        }

        if (++v6 >= sub_239431484(*v2))
        {
          return 3;
        }
      }

      return 1;
    }

    return 3;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_239457528(*(v2 + 8), v4);
    if (sub_2394509E8(v5) == a1)
    {
      return 2;
    }

    if (++v4 >= sub_239431484(*(v2 + 8)))
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_239467EDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_239462398(a2);
  result = 3;
  if (v3)
  {
    if ((*(a2 + 49) & 0x20) != 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

BOOL sub_239467F1C(int a1)
{
  v1 = 0;
  do
  {
    v2 = dword_284BBADE0[v1];
    if (v2 == a1)
    {
      break;
    }

    v3 = v1 == 30;
    v1 += 6;
  }

  while (!v3);
  return v2 == a1;
}

uint64_t sub_239467F50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3 && (*v3 || v3[1]))
  {
    v4 = *(a1 + 16);

    return sub_239467E20(v4, a2);
  }

  else
  {
    v6 = sub_239462398(a2);
    result = 3;
    if (v6)
    {
      if ((*(a2 + 49) & 0x20) != 0)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t sub_239467FCC(uint64_t result)
{
  if (result)
  {
    return sub_239431484(result);
  }

  return result;
}

uint64_t sub_239467FEC(unint64_t *a1, unsigned int a2, int a3)
{
  v5 = sub_239450F00(a2);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_239468048(a1, v5, a3);
}

uint64_t sub_239468048(unint64_t *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    LODWORD(v3) = a3;
    v6 = sub_239431484(a1);
    if (v3 < 0)
    {
      LODWORD(v3) = -1;
    }

    v7 = v6;
    for (i = v3 + 1; i < v7; ++i)
    {
      v9 = sub_239457528(a1, i);
      v3 = (v3 + 1);
      if (!sub_239450998(*v9, a2))
      {
        return v3;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2394680D4(unint64_t *a1, int a2, int a3)
{
  if (a1)
  {
    LODWORD(v3) = a3;
    v5 = a2 != 0;
    v6 = sub_239431484(a1);
    if (v3 < 0)
    {
      LODWORD(v3) = -1;
    }

    v7 = v6;
    for (i = v3 + 1; i < v7; ++i)
    {
      v9 = sub_239457528(a1, i);
      if (v9)
      {
        v10 = *(v9 + 2) > 0;
      }

      else
      {
        v10 = 0;
      }

      v3 = (v3 + 1);
      if (v10 == v5)
      {
        return v3;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL sub_239468174(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) > 0;
  }

  return result;
}

unint64_t *sub_239468188(unint64_t *a1, unsigned int a2)
{
  if (!a1 || (a2 & 0x80000000) != 0 || sub_239431484(a1) <= a2)
  {
    return 0;
  }

  return sub_239457528(a1, a2);
}

uint64_t sub_2394681E8(uint64_t *a1, unsigned int a2)
{
  if (!a1 || (a2 & 0x80000000) != 0 || sub_239431484(a1) <= a2)
  {
    return 0;
  }

  return sub_239457700(a1, a2);
}

unint64_t *sub_239468248(unint64_t **a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    sub_2394170F4(11, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_v3.c", 149);
LABEL_14:
    sub_23946DDD4(0);
    return 0;
  }

  v6 = *a1;
  v7 = *a1;
  if (!*a1)
  {
    v7 = sub_2394574D8();
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = sub_239431484(v7);
  v9 = sub_23946DDF8(a2);
  if (!v9)
  {
    goto LABEL_15;
  }

  if (v8 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
  }

  if (a3 < 0)
  {
    v10 = v8;
  }

  if (!sub_23945761C(v7, v9, v10))
  {
LABEL_15:
    sub_23946DDD4(v9);
    if (!v6)
    {
      sub_2393FFA58(v7);
    }

    return 0;
  }

  if (!*a1)
  {
    *a1 = v7;
  }

  return v7;
}

uint64_t sub_239468330(uint64_t *a1, unsigned int a2, int a3, uint64_t a4)
{
  v7 = sub_239450F00(a2);
  if (v7)
  {

    return sub_2394683B8(a1, v7, a3, a4);
  }

  else
  {
    sub_2394170F4(11, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_v3.c", 196);
    return 0;
  }
}

uint64_t sub_2394683B8(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 && (v8 = *a1) != 0 || (v8 = sub_23946DDC8()) != 0)
  {
    if (sub_2394657A0(v8, a2) && (!a3 ? (v9 = -1) : (v9 = 255), *(v8 + 8) = v9, sub_2393FDD94(*(v8 + 16), *(a4 + 8), *a4)))
    {
      if (a1 && !*a1)
      {
        *a1 = v8;
      }
    }

    else
    {
      if (!a1 || v8 != *a1)
      {
        sub_23946DDD4(v8);
      }

      return 0;
    }
  }

  return v8;
}

uint64_t sub_239468474(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 255;
    }

    else
    {
      v2 = -1;
    }

    *(result + 8) = v2;
    return 1;
  }

  return result;
}

BOOL sub_239468490(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    return sub_2393FDD94(*(result + 16), *(a2 + 8), *a2) != 0;
  }

  return result;
}

uint64_t sub_2394684C8(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = 122;
    v3 = 184;
    goto LABEL_7;
  }

  if (*(a1 + 64))
  {
    v2 = 66;
    v3 = 192;
LABEL_7:
    sub_2394170F4(11, 0, v2, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vfy.c", v3);
    v5 = 0;
    v6 = 65;
    goto LABEL_8;
  }

  v4 = *(a1 + 32);
  if ((*(v4 + 9) & 0x30) != 0)
  {
    v2 = 66;
    v3 = 202;
    goto LABEL_7;
  }

  v8 = sub_2394574D8();
  *(a1 + 64) = v8;
  if (!v8 || !sub_2394579D0(v8, *(a1 + 8)))
  {
    v10 = 0;
    goto LABEL_16;
  }

  sub_239455868(*(a1 + 8));
  *(a1 + 56) = 1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = sub_2394579F4(v9);
    if (!v10)
    {
LABEL_16:
      v5 = 0;
      v11 = 0;
LABEL_17:
      v12 = 17;
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = sub_239431484(*(a1 + 64));
  v15 = sub_239457528(*(a1 + 64), v14 - 1);
  v16 = *(v4 + 24);
  if (v16 <= 2147483644)
  {
    v17 = v16 + 2;
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  if (v17 <= v14)
  {
LABEL_38:
    v19 = v14;
    goto LABEL_39;
  }

  v18 = v15;
  v19 = v14;
  while (1)
  {
    if (!sub_239462398(v18))
    {
      v5 = 0;
      v11 = 0;
      goto LABEL_96;
    }

    if ((*(v18 + 49) & 0x20) != 0)
    {
      goto LABEL_39;
    }

    if ((*(*(a1 + 32) + 9) & 0x80) != 0)
    {
      v20 = sub_239468BC0(a1, v18);
      if (v20)
      {
        break;
      }
    }

    if (!v10)
    {
      goto LABEL_38;
    }

    v21 = sub_239468C30(a1, v10, v18);
    if (!v21)
    {
      goto LABEL_39;
    }

    v18 = v21;
    if (!sub_2394579D0(*(a1 + 64), v21))
    {
      goto LABEL_16;
    }

    sub_239455868(v18);
    sub_239457778(v10, v18);
    ++*(a1 + 56);
    if (v17 == ++v19)
    {
      v19 = v17;
      goto LABEL_39;
    }
  }

  sub_23946EDF8(v20);
LABEL_39:
  v49 = v17;
  v13 = 0;
  v11 = 0;
  v22 = v19;
  while (2)
  {
    v23 = sub_239431484(*(a1 + 64)) - 1;
    v24 = sub_239457528(*(a1 + 64), v23);
    if (!sub_239462398(v24))
    {
LABEL_92:
      v5 = 0;
LABEL_96:
      v12 = 41;
LABEL_18:
      *(a1 + 76) = v12;
      goto LABEL_19;
    }

    if ((*(v24 + 49) & 0x20) == 0)
    {
      v25 = v24;
      goto LABEL_50;
    }

    if (sub_239431484(*(a1 + 64)) == 1)
    {
      v25 = sub_239468BC0(a1, v24);
      if (!v25 || sub_239465D64(v24, v25))
      {
        sub_23946EDF8(v25);
        *(a1 + 80) = v24;
        *(a1 + 72) = v23;
        *(a1 + 76) = 18;
        v26 = (*(a1 + 48))(0, a1);
        if (v26 >= 2)
        {
          goto LABEL_114;
        }

        v13 = 1;
        v27 = v49;
        if (!v26)
        {
          goto LABEL_112;
        }

        v25 = v24;
        goto LABEL_51;
      }

      sub_23946EDF8(v24);
      sub_23945754C(*(a1 + 64), v23, v25);
      *(a1 + 56) = 0;
    }

    else
    {
      v11 = sub_2394579D8(*(a1 + 64));
      --*(a1 + 56);
      --v22;
      v25 = sub_239457528(*(a1 + 64), v19 - 2);
      --v19;
    }

LABEL_50:
    v27 = v49;
LABEL_51:
    if (v19 >= v27)
    {
      goto LABEL_58;
    }

    do
    {
      if (!sub_239462398(v25))
      {
        goto LABEL_92;
      }

      if ((*(v25 + 49) & 0x20) != 0)
      {
        goto LABEL_58;
      }

      v28 = sub_239468BC0(a1, v25);
      if (!v28)
      {
        goto LABEL_58;
      }

      v29 = v28;
      if (!sub_2394579D0(*(a1 + 64), v28))
      {
        sub_23946EDF8(v29);
        goto LABEL_94;
      }

      ++v19;
      v25 = v29;
    }

    while (v27 != v19);
    v19 = v27;
    v25 = v29;
LABEL_58:
    for (i = *(a1 + 56); i < sub_239431484(*(a1 + 64)); ++i)
    {
      v31 = sub_239457528(*(a1 + 64), i);
      v32 = sub_239467D4C(v31, *(*(a1 + 32) + 20));
      if (v32 == 2)
      {
        *(a1 + 80) = v31;
        *(a1 + 72) = i;
        *(a1 + 76) = 28;
        v33 = (*(a1 + 48))(0, a1);
        if (v33 >= 2)
        {
          goto LABEL_114;
        }

        if (!v33)
        {
          goto LABEL_111;
        }
      }

      else if (v32 == 1)
      {
        goto LABEL_103;
      }
    }

    if ((*(*(a1 + 32) + 10) & 8) == 0)
    {
      goto LABEL_77;
    }

    v34 = *(a1 + 56);
    if (v34 >= sub_239431484(*(a1 + 64)))
    {
      v35 = sub_239457528(*(a1 + 64), 0);
      v36 = sub_239465D34(v35);
      v37 = sub_239466910(a1, v36);
      if (v37)
      {
        v38 = v37;
        v48 = v11;
        v39 = 0;
        if (sub_239431484(v37))
        {
          do
          {
            v40 = sub_239457528(v38, v39);
            if (!sub_239465D64(v40, v35))
            {
              break;
            }

            ++v39;
          }

          while (v39 < sub_239431484(v38));
        }

        else
        {
          v40 = 0;
        }

        if (v39 >= sub_239431484(v38))
        {
          sub_239457574(v38, sub_23946A478, sub_23946EDF8);
          v11 = v48;
        }

        else
        {
          sub_239455868(v40);
          sub_239457574(v38, sub_23946A478, sub_23946EDF8);
          v11 = v48;
          if (v40)
          {
            sub_23945754C(*(a1 + 64), 0, v40);
            sub_23946EDF8(v35);
            *(a1 + 56) = 0;
            break;
          }
        }
      }

LABEL_77:
      if ((*(*(a1 + 32) + 9) & 0x1080) == 0)
      {
        v41 = v22 - 2;
        do
        {
          if (v22 < 2)
          {
            goto LABEL_87;
          }

          --v22;
          v42 = sub_239457528(*(a1 + 64), v41);
          v43 = sub_239468BC0(a1, v42);
          --v41;
        }

        while (!v43);
        sub_23946EDF8(v43);
        if (v19 >= v22 + 1)
        {
          v44 = v19 + 1;
          do
          {
            v45 = sub_2394579D8(*(a1 + 64));
            sub_23946EDF8(v45);
            --v44;
          }

          while (v44 > v22 + 1);
          v19 = v22;
        }

        *(a1 + 56) = sub_239431484(*(a1 + 64));
        continue;
      }

LABEL_87:
      if (v13)
      {
        break;
      }

      if (!v11 || !sub_239468CB8(a1, v25, v11))
      {
        if (*(a1 + 56) >= v19)
        {
          v46 = 20;
        }

        else
        {
          v46 = 2;
        }

        *(a1 + 76) = v46;
        *(a1 + 80) = v25;
        --v19;
LABEL_101:
        *(a1 + 72) = v19;
        v47 = (*(a1 + 48))(0, a1);
        if (v47 >= 2)
        {
LABEL_114:
          abort();
        }

        v13 = 1;
        if (v47)
        {
          break;
        }

LABEL_112:
        v5 = 0;
        goto LABEL_20;
      }

      if (sub_2394579D0(*(a1 + 64), v11))
      {
        *(a1 + 56) = v19 + 1;
        *(a1 + 80) = v11;
        *(a1 + 76) = 19;
        v11 = 0;
        goto LABEL_101;
      }

LABEL_94:
      v5 = 0;
      goto LABEL_17;
    }

    break;
  }

LABEL_103:
  if (sub_239468D28(a1) && sub_239468ED8(a1) && sub_239469074(a1) && sub_239469428(a1) && sub_2394696BC(a1) && (v13 || sub_239469890(a1)))
  {
    v13 = 0;
    v5 = 1;
    goto LABEL_20;
  }

LABEL_111:
  v5 = 0;
LABEL_19:
  v13 = 1;
LABEL_20:
  sub_2393FFA58(v10);
  sub_23946EDF8(v11);
  if (v13 && !*(a1 + 76))
  {
    v6 = 1;
LABEL_8:
    *(a1 + 76) = v6;
  }

  return v5;
}

uint64_t sub_239468BC0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v4 = sub_239468C30(a1, v3, a2);
    v5 = v4;
    if (v4)
    {
      sub_239455868(v4);
    }
  }

  else
  {
    v7 = 0;
    if (sub_239466D8C(&v7, a1, a2))
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

unint64_t *sub_239468C30(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!sub_239431484(a2))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_239457528(a2, v6);
    if (sub_239468CB8(a1, a3, v7))
    {
      break;
    }

    if (++v6 >= sub_239431484(a2))
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_239468CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_239462B78(a3, a2);
  if (!v5)
  {
    return 1;
  }

  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    return 0;
  }

  *(a1 + 76) = v5;
  *(a1 + 80) = a2;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
    abort();
  }

  return result;
}

uint64_t sub_239468D28(uint64_t a1)
{
  if (*(a1 + 56) < 1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  v4 = *(*(a1 + 32) + 16);
  do
  {
    v5 = sub_239457528(*(a1 + 64), v2);
    v6 = v5;
    if ((*(*(a1 + 32) + 8) & 0x10) == 0 && (*(v5 + 49) & 2) != 0)
    {
      *(a1 + 72) = v2;
      *(a1 + 76) = 34;
      *(a1 + 80) = v5;
      result = (*(a1 + 48))(0, a1);
      if (result >= 2)
      {
        goto LABEL_25;
      }

      if (!result)
      {
        break;
      }
    }

    if (v2)
    {
      v8 = sub_239462B20(v6);
      if (!v8)
      {
        *(a1 + 72) = v2;
        *(a1 + 76) = 24;
        *(a1 + 80) = v6;
        result = (*(a1 + 48))(v8, a1);
        if (result >= 2)
        {
          goto LABEL_25;
        }

        if (!result)
        {
          break;
        }
      }
    }

    if (*(*(a1 + 32) + 16) >= 1 && sub_2394622C4(v6, v4, v2 != 0) != 1)
    {
      *(a1 + 72) = v2;
      *(a1 + 76) = 26;
      *(a1 + 80) = v6;
      result = (*(a1 + 48))(0, a1);
      if (result >= 2)
      {
        goto LABEL_25;
      }

      if (!result)
      {
        break;
      }
    }

    if (v2 >= 2 && (*(v6 + 48) & 0x20) == 0)
    {
      v9 = *(v6 + 40);
      if (v9 != -1 && v9 + 1 < v3)
      {
        *(a1 + 72) = v2;
        *(a1 + 76) = 25;
        *(a1 + 80) = v6;
        result = (*(a1 + 48))(0, a1);
        if (result >= 2)
        {
LABEL_25:
          abort();
        }

        if (!result)
        {
          break;
        }
      }
    }

    result = 1;
    v3 += ((*(v6 + 48) >> 5) & 1) == 0;
    ++v2;
  }

  while (v2 < *(a1 + 56));
  return result;
}

uint64_t sub_239468ED8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 8);
  if (*(v2 + 88))
  {
    *(a1 + 80) = v3;
    *(a1 + 72) = 0x4100000000;
    result = (*(a1 + 48))(0, a1);
    if (result >= 2)
    {
      goto LABEL_21;
    }

    if (!result)
    {
      return result;
    }
  }

  v5 = *(v2 + 40);
  if (v5)
  {
    v6 = sub_239431484(v5);
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = sub_239457528(*(v2 + 40), i);
        v10 = strlen(v9);
        if (sub_239464470(v3, v9, v10, *(v2 + 48), 0) > 0)
        {
          goto LABEL_11;
        }
      }

      *(a1 + 80) = *(a1 + 8);
      *(a1 + 72) = 0x3E00000000;
      result = (*(a1 + 48))(0, a1);
      if (result >= 2)
      {
        goto LABEL_21;
      }

      if (!result)
      {
        return result;
      }
    }
  }

LABEL_11:
  v11 = *(v2 + 56);
  if (v11 && sub_2394646F4(v3, v11, *(v2 + 64), 0) <= 0)
  {
    *(a1 + 80) = *(a1 + 8);
    *(a1 + 72) = 0x3F00000000;
    result = (*(a1 + 48))(0, a1);
    if (result >= 2)
    {
      goto LABEL_21;
    }

    if (!result)
    {
      return result;
    }
  }

  v12 = *(v2 + 72);
  if (v12 && sub_239464780(v3, v12, *(v2 + 80), 0) <= 0)
  {
    *(a1 + 80) = *(a1 + 8);
    *(a1 + 72) = 0x4000000000;
    result = (*(a1 + 48))(0, a1);
    if (result < 2)
    {
      if (!result)
      {
        return result;
      }

      return 1;
    }

LABEL_21:
    abort();
  }

  return 1;
}

uint64_t sub_239469074(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if ((v1 & 4) == 0)
  {
    return 1;
  }

  if ((v1 & 8) == 0)
  {
    v4 = 0;
LABEL_6:
    v6 = 0;
    v7 = 0;
    v8 = v4 + 1;
    v9 = v4;
    while (1)
    {
      *(a1 + 72) = v6;
      v10 = sub_239457528(*(a1 + 64), v6);
      *(a1 + 80) = v10;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      v35 = 0;
      v34 = 0;
      v33 = 0;
      if (!sub_239469ED4(a1, &v33, &v35, &v34, *(a1 + 24)))
      {
        v11 = sub_239465C18(v10);
        v12 = sub_239466C34(a1, v11);
        v13 = v33;
        if (v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = v33 == 0;
        }

        if (!v14)
        {
          goto LABEL_15;
        }

        v15 = v12;
        sub_239469ED4(a1, &v33, &v35, &v34, v12);
        sub_239457574(v15, sub_23946A46C, sub_23946D6D0);
      }

      v13 = v33;
      if (!v33)
      {
        *(a1 + 76) = 3;
        v22 = (*(a1 + 48))(0, a1);
        if (v22 >= 2)
        {
          goto LABEL_56;
        }

        v23 = v22;
        sub_23946D6D0(0);
        *(a1 + 88) = 0;
        if (!v23)
        {
          return v7;
        }

        goto LABEL_51;
      }

LABEL_15:
      v16 = v35;
      *(a1 + 104) = v34;
      *(a1 + 88) = v13;
      *(a1 + 96) = v16;
      v17 = *(a1 + 72);
      v18 = sub_239431484(*(a1 + 64));
      v19 = *(a1 + 96);
      if (v19)
      {
        goto LABEL_59;
      }

      v20 = v18 - 1;
      v21 = *(a1 + 64);
      if (v17 >= v20)
      {
        v19 = sub_239457528(v21, v20);
        v24 = sub_239468CB8(a1, v19, v19);
        if (!v24)
        {
          *(a1 + 76) = 33;
          v25 = (*(a1 + 48))(v24, a1);
          if (v25 >= 2)
          {
            goto LABEL_56;
          }

          if (!v25)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v19 = sub_239457528(v21, v17 + 1);
      }

      if (v19)
      {
LABEL_59:
        if ((v19[6] & 2) != 0 && (*(v19 + 52) & 2) == 0)
        {
          *(a1 + 76) = 35;
          v26 = (*(a1 + 48))(0, a1);
          if (v26 >= 2)
          {
            goto LABEL_56;
          }

          if (!v26)
          {
            goto LABEL_53;
          }
        }

        if ((*(a1 + 104) & 0x80) == 0)
        {
          *(a1 + 76) = 44;
          v27 = (*(a1 + 48))(0, a1);
          if (v27 >= 2)
          {
            goto LABEL_56;
          }

          if (!v27)
          {
            goto LABEL_53;
          }
        }

        if ((*(v13 + 48) & 2) != 0)
        {
          *(a1 + 76) = 41;
          v28 = (*(a1 + 48))(0, a1);
          if (v28 >= 2)
          {
            goto LABEL_56;
          }

          if (!v28)
          {
            goto LABEL_53;
          }
        }

        if ((*(a1 + 104) & 0x40) == 0 && !sub_23946A32C(a1, v13, 1))
        {
          goto LABEL_53;
        }

        v29 = sub_239465F28(v19);
        if (!v29)
        {
          *(a1 + 76) = 6;
          v30 = (*(a1 + 48))(0, a1);
LABEL_41:
          if (v30 >= 2)
          {
            goto LABEL_56;
          }

          if (!v30)
          {
            goto LABEL_53;
          }

          goto LABEL_43;
        }

        if (sub_23946D760(v13, v29) <= 0)
        {
          *(a1 + 76) = 8;
          v30 = (*(a1 + 48))(0, a1);
          goto LABEL_41;
        }
      }

LABEL_43:
      if ((*(*(a1 + 32) + 8) & 0x10) == 0 && (*(v13 + 29) & 2) != 0)
      {
        *(a1 + 76) = 36;
        v31 = (*(a1 + 48))(0, a1);
        if (v31 >= 2)
        {
          goto LABEL_56;
        }

        if (!v31)
        {
          goto LABEL_53;
        }
      }

      v35 = 0;
      if (sub_23946D964(v13, &v35, v10))
      {
        *(a1 + 76) = 23;
        v32 = (*(a1 + 48))(0, a1);
        if (v32 >= 2)
        {
LABEL_56:
          abort();
        }

        if (!v32)
        {
LABEL_53:
          sub_23946D6D0(v13);
          *(a1 + 88) = 0;
          return v7;
        }
      }

      sub_23946D6D0(v13);
      *(a1 + 88) = 0;
LABEL_51:
      v7 = v6++ >= v9;
      if (v8 == v6)
      {
        return v7;
      }
    }
  }

  v5 = sub_239431484(*(a1 + 64));
  v4 = v5 - 1;
  if (v5 >= 1)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_239469428(uint64_t a1)
{
  v2 = sub_239431484(*(a1 + 64));
  LODWORD(v3) = v2 - 1;
  *(a1 + 72) = v2 - 1;
  v4 = sub_239457528(*(a1 + 64), v2 - 1);
  if (sub_239468CB8(a1, v4, v4))
  {
    v5 = v4;
    goto LABEL_10;
  }

  if ((*(*(a1 + 32) + 10) & 8) != 0)
  {
    v5 = v4;
    goto LABEL_19;
  }

  if (v2 > 1)
  {
    LODWORD(v3) = v2 - 2;
    *(a1 + 72) = v2 - 2;
    v5 = sub_239457528(*(a1 + 64), (v2 - 2));
    while (1)
    {
LABEL_10:
      if ((v3 & 0x80000000) != 0)
      {
        return 1;
      }

      *(a1 + 72) = v3;
      if (v5 != v4 || (*(*(a1 + 32) + 9) & 0x40) != 0)
      {
        v7 = sub_239465F28(v4);
        if (v7)
        {
          if (sub_23946BE04(v5, v7) > 0)
          {
            goto LABEL_19;
          }

          *(a1 + 76) = 7;
          *(a1 + 80) = v5;
          result = (*(a1 + 48))(0, a1);
        }

        else
        {
          *(a1 + 76) = 6;
          *(a1 + 80) = v4;
          result = (*(a1 + 48))(0, a1);
        }

        if (result >= 2)
        {
          goto LABEL_9;
        }

        if (!result)
        {
          return result;
        }
      }

LABEL_19:
      v8 = *(a1 + 32);
      v9 = v8[1];
      if ((v9 & 0x200000) != 0)
      {
        goto LABEL_41;
      }

      if ((v9 & 2) != 0)
      {
        v10 = *v8;
      }

      else
      {
        v10 = time(0);
      }

      v11 = sub_239467C44(v5);
      v18 = 0;
      v12 = sub_2393FF034(v11, &v18);
      if (v12)
      {
        if (v18 <= v10)
        {
          goto LABEL_29;
        }

        *(a1 + 76) = 9;
        *(a1 + 80) = v5;
        result = (*(a1 + 48))(0, a1);
      }

      else
      {
        *(a1 + 76) = 13;
        *(a1 + 80) = v5;
        result = (*(a1 + 48))(v12, a1);
      }

      if (result >= 2)
      {
        goto LABEL_9;
      }

      if (!result)
      {
        return result;
      }

LABEL_29:
      v13 = sub_239467CD8(v5);
      v18 = 0;
      v14 = sub_2393FF034(v13, &v18);
      if (v14)
      {
        v15 = v18 <= v10;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      if (!v14)
      {
        *(a1 + 76) = 14;
        *(a1 + 80) = v5;
        result = (*(a1 + 48))(v14, a1);
        if (result >= 2)
        {
          goto LABEL_9;
        }

        if (!result)
        {
          return result;
        }
      }

      if (v16)
      {
        *(a1 + 76) = 10;
        *(a1 + 80) = v5;
        result = (*(a1 + 48))(0, a1);
        if (result >= 2)
        {
          goto LABEL_9;
        }

        if (!result)
        {
          return result;
        }
      }

LABEL_41:
      *(a1 + 80) = v5;
      result = (*(a1 + 48))(1, a1);
      if (result >= 2)
      {
        goto LABEL_9;
      }

      if (!result)
      {
        return result;
      }

      v17 = __OFSUB__(v3, 1);
      v3 = (v3 - 1);
      if (((v3 & 0x80000000) != 0) == v17)
      {
        v4 = v5;
        v5 = sub_239457528(*(a1 + 64), v3);
      }
    }
  }

  *(a1 + 76) = 21;
  *(a1 + 80) = v4;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
LABEL_9:
    abort();
  }

  return result;
}

uint64_t sub_2394696BC(uint64_t a1)
{
  v2 = sub_239431484(*(a1 + 64));
  v3 = v2;
  if (v2 <= 0)
  {
    sub_239457528(*(a1 + 64), 0);
    return 1;
  }

  v4 = 0;
  v5 = (v2 - 1);
  do
  {
    v6 = sub_239457528(*(a1 + 64), v5);
    v7 = v6;
    if (!v5 || (v6[6] & 0x20) == 0)
    {
      v8 = sub_239431484(*(a1 + 64));
      if (v3 < v8)
      {
        LODWORD(v9) = v8;
        do
        {
          v9 = (v9 - 1);
          v10 = sub_239457528(*(a1 + 64), v9)[12];
          if (v10)
          {
            v11 = sub_239460F40(v7, v10);
            if (v11)
            {
              if (v11 == 17)
              {
LABEL_27:
                result = 0;
                *(a1 + 76) = 17;
                return result;
              }

              *(a1 + 72) = v5;
              *(a1 + 76) = v11;
              *(a1 + 80) = v7;
              result = (*(a1 + 48))(0, a1);
              if (result >= 2)
              {
                goto LABEL_29;
              }

              if (!result)
              {
                return result;
              }
            }

            v4 = 1;
          }
        }

        while (v9 > v3);
      }
    }

    v3 = v5;
  }

  while (v5-- > 0);
  v14 = sub_239457528(*(a1 + 64), 0);
  if (!v4)
  {
    return 1;
  }

  v15 = v14;
  if (v14[11])
  {
    return 1;
  }

  v16 = sub_239465D34(v14);
  v17 = -1;
  do
  {
    v18 = sub_23946B424(v16, 0xDu, v17);
    if (v18 == -1)
    {
      return 1;
    }

    v17 = v18;
    v19 = sub_23946B39C(v16, v18);
    v20 = sub_23946B390(v19);
    v23 = 0;
    v21 = sub_2393FE214(&v23, v20);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    v22 = sub_239464360(v23, v21);
    sub_239450144(v23);
  }

  while (!v22);
  *(a1 + 72) = 0x43FFFFFFFFLL;
  *(a1 + 80) = v15;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
LABEL_29:
    abort();
  }

  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_239469890(uint64_t a1)
{
  v4 = 0;
  v2 = sub_239459BD0(*(a1 + 64), *(*(a1 + 32) + 32), *(*(a1 + 32) + 8), &v4);
  if (!v2)
  {
    return 1;
  }

  *(a1 + 80) = v4;
  *(a1 + 76) = v2;
  if (v2 == 17)
  {
    return 0;
  }

  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
    abort();
  }

  return result;
}

uint64_t sub_239469918(int *a1)
{
  v2 = time(0);
  v6 = 0;
  v3 = sub_2393FF034(a1, &v6);
  if (v6 > v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239469974(int *a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_2393FF034(a1, &v6);
  if (v6 > a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394699C0(int *a1, time_t *a2)
{
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = time(0);
  }

  v7 = 0;
  v4 = sub_2393FF034(a1, &v7);
  if (v7 > v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_239469A28(void *a1, uint64_t a2)
{
  v4 = time(0);

  return sub_2393FEBB8(a1, v4, 0, a2);
}

void *sub_239469A84(void *a1, int a2, uint64_t a3, time_t *a4)
{
  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = time(0);
  }

  return sub_2393FEBB8(a1, v7, a2, a3);
}

unint64_t *sub_239469B30(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return sub_239466020(result);
  }

  return result;
}

uint64_t sub_239469B58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  v4 = sub_239462934(a2);
  if (v4)
  {
    v5 = sub_2393FFBEC(v4);
    result = sub_239469BE4(a1, v5);
    if (result)
    {
      v7 = *(a1 + 32);
      if (!*(v7 + 16))
      {
        *(v7 + 16) = a2;
      }

      return 1;
    }
  }

  else
  {
    sub_2394170F4(11, 0, 130, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vfy.c", 1485);
    return 0;
  }

  return result;
}

uint64_t sub_239469BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  if (sub_239467F1C(a2))
  {
    v4 = *(a1 + 32);
    if (!*(v4 + 20))
    {
      *(v4 + 20) = a2;
    }

    return 1;
  }

  else
  {
    sub_2394170F4(11, 0, 131, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vfy.c", 1507);
    return 0;
  }
}

void sub_239469C64(void *a1)
{
  if (a1)
  {
    sub_239469CA4(a1);

    sub_239450144(a1);
  }
}

double sub_239469CA4(uint64_t a1)
{
  sub_23941F114(&unk_27DF770D0, a1, (a1 + 112));
  sub_23946A4AC(*(a1 + 32));
  sub_239457574(*(a1 + 64), sub_23946A478, sub_23946EDF8);
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_239469D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_239469CA4(a1);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  sub_2393F7EB0((a1 + 112));
  if (a2)
  {
    v8 = sub_23946A484();
    *(a1 + 32) = v8;
    if (v8)
    {
      *(a1 + 48) = *(a2 + 224);
      if (sub_23946A54C(v8, *(a2 + 216)))
      {
        v9 = *(a1 + 32);
        v10 = sub_23946ACBC("default");
        if (sub_23946A54C(v9, v10))
        {
          v12 = *(a2 + 224);
          if (!v12)
          {
            v12 = nullsub_849;
          }

          *(a1 + 48) = v12;
          return result;
        }
      }
    }
  }

  else
  {
    sub_2394170F4(11, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vfy.c", 1540);
  }

  sub_23941F114(&unk_27DF770D0, a1, (a1 + 112));
  v13 = *(a1 + 32);
  if (v13)
  {
    sub_23946A4AC(v13);
  }

  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void *sub_239469E50(uint64_t a1, const char *a2)
{
  result = sub_23946ACBC(a2);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 32);

    return sub_23946A54C(v5, v4);
  }

  return result;
}

void sub_239469EA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    sub_23946A4AC(v4);
  }

  *(a1 + 32) = a2;
}

BOOL sub_239469ED4(uint64_t a1, uint64_t *a2, unint64_t **a3, int *a4, unint64_t *a5)
{
  v10 = *a4;
  v11 = *(a1 + 80);
  if (!sub_239431484(a5))
  {
    return v10 > 447;
  }

  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = 0;
  v12 = 0;
  v49 = 0;
  v52 = v11;
  do
  {
    v13 = sub_239457528(a5, v12);
    if ((v13[6] & 0x62) != 0)
    {
      goto LABEL_64;
    }

    v14 = v13;
    v15 = sub_239465C18(v11);
    v16 = sub_239467D34(v14);
    if (sub_239465AD0(v15, v16))
    {
      goto LABEL_64;
    }

    if ((*(v14 + 28) & 0x200) != 0)
    {
      v17 = 32;
    }

    else
    {
      v17 = 288;
    }

    if (sub_23946A32C(a1, v14, 0))
    {
      v18 = v17 | 0x40;
    }

    else
    {
      v18 = v17;
    }

    v19 = sub_239467D34(v14);
    v20 = *(a1 + 72);
    if (sub_239431484(*(a1 + 64)) - 1 != v20)
    {
      ++v20;
    }

    v21 = sub_239457528(*(a1 + 64), v20);
    if (sub_239462A34(v21, *(v14 + 32)))
    {
      LODWORD(v20) = v20 + 1;
      if (v20 >= sub_239431484(*(a1 + 64)))
      {
        goto LABEL_64;
      }

      v20 = v20;
      while (1)
      {
        v21 = sub_239457528(*(a1 + 64), v20);
        v22 = sub_239465D34(v21);
        if (!sub_239465AD0(v22, v19) && !sub_239462A34(v21, *(v14 + 32)))
        {
          break;
        }

        if (++v20 >= sub_239431484(*(a1 + 64)))
        {
          goto LABEL_64;
        }
      }

      v50 = v10;
      v23 = 12;
    }

    else
    {
      v50 = v10;
      v23 = 28;
    }

    v24 = v23 | v18;
    v25 = *(v14 + 48);
    v51 = v24;
    if ((v25 & 0x10) != 0)
    {
      goto LABEL_62;
    }

    if ((*(v11 + 48) & 0x10) != 0)
    {
      if ((v25 & 4) != 0)
      {
        goto LABEL_62;
      }
    }

    else if ((v25 & 8) != 0)
    {
      goto LABEL_62;
    }

    if (!sub_239431484(*(v11 + 80)))
    {
LABEL_59:
      v39 = *(v14 + 40);
      if (!v39 || !*v39)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    v26 = 0;
    while (1)
    {
      v27 = sub_239457528(*(v11 + 80), v26);
      if (!v27[1] || !v27[2])
      {
        goto LABEL_58;
      }

      v28 = *(v14 + 40);
      if (!v28)
      {
        goto LABEL_61;
      }

      v29 = *v27;
      v30 = *v28;
      if (!*v27 || v30 == 0)
      {
        goto LABEL_61;
      }

      if (*v29 != 1)
      {
        break;
      }

      v47 = *(v29 + 16);
      if (!v47)
      {
        goto LABEL_58;
      }

      if (*v30 == 1)
      {
        v32 = *(v30 + 16);
        if (v32 && !sub_239465AD0(v47, v32))
        {
          goto LABEL_61;
        }

        goto LABEL_58;
      }

      v29 = *v28;
LABEL_53:
      v36 = *(v29 + 8);
      if (sub_239431484(v36))
      {
        v37 = 0;
        do
        {
          v38 = sub_239457528(v36, v37);
          if (*v38 == 4 && !sub_239465AD0(v47, v38[1]))
          {
            goto LABEL_61;
          }
        }

        while (++v37 < sub_239431484(v36));
      }

LABEL_58:
      ++v26;
      v11 = v52;
      if (v26 >= sub_239431484(*(v52 + 80)))
      {
        goto LABEL_59;
      }
    }

    if (*v30 == 1)
    {
      v47 = *(v30 + 16);
      if (!v47)
      {
        goto LABEL_58;
      }

      goto LABEL_53;
    }

    if (!sub_239431484(*(v29 + 8)))
    {
      goto LABEL_58;
    }

    v48 = 0;
    while (1)
    {
      v33 = sub_239457528(*(v29 + 8), v48);
      if (sub_239431484(*(v30 + 8)))
      {
        break;
      }

LABEL_50:
      if (++v48 >= sub_239431484(*(v29 + 8)))
      {
        goto LABEL_58;
      }
    }

    v34 = 0;
    while (1)
    {
      v35 = sub_239457528(*(v30 + 8), v34);
      if (!sub_23945FF5C(v33, v35))
      {
        break;
      }

      if (++v34 >= sub_239431484(*(v30 + 8)))
      {
        goto LABEL_50;
      }
    }

LABEL_61:
    v51 |= 0x80u;
LABEL_62:
    v10 = v50;
    if (v51 >= v50)
    {
      if (v51 == v50 && v49)
      {
        v53 = 0;
        v40 = sub_239465C18(v49);
        v41 = sub_239465C18(v14);
        v11 = v52;
        if (sub_2393FEEB4(&v53 + 1, &v53, v40, v41) && (SHIDWORD(v53) > 0 || v53 >= 1))
        {
          v10 = v51;
          v49 = v14;
          v46 = v21;
        }
      }

      else
      {
        v10 = v51;
        v49 = v14;
        v46 = v21;
        v11 = v52;
      }
    }

    else
    {
      v11 = v52;
    }

LABEL_64:
    ++v12;
  }

  while (v12 < sub_239431484(a5));
  if (v49)
  {
    if (*v43)
    {
      sub_23946D6D0(*v43);
    }

    *v43 = v49;
    *v44 = v46;
    *v45 = v10;
    sub_239455868(v49);
  }

  return v10 > 447;
}

uint64_t sub_23946A32C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  if ((v4 & 0x200000) != 0)
  {
    return 1;
  }

  if (a3)
  {
    *(a1 + 88) = a2;
    v4 = v3[1];
  }

  if ((v4 & 2) != 0)
  {
    v8 = *v3;
  }

  else
  {
    v8 = time(0);
  }

  v9 = sub_239465C18(a2);
  v14 = 0;
  if (sub_2393FF034(v9, &v14))
  {
    if (v14 <= v8)
    {
      goto LABEL_15;
    }

    if (!a3)
    {
      return 0;
    }

    v10 = 11;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v10 = 15;
  }

  *(a1 + 76) = v10;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
    goto LABEL_30;
  }

  if (!result)
  {
    return result;
  }

LABEL_15:
  if (!sub_2394673B4(a2))
  {
    goto LABEL_18;
  }

  v12 = sub_2394673B4(a2);
  v14 = 0;
  if (!sub_2393FF034(v12, &v14))
  {
    if (a3)
    {
      v13 = 16;
      goto LABEL_24;
    }

    return 0;
  }

  if (v14 > v8)
  {
LABEL_18:
    if (!a3)
    {
      return 1;
    }

    goto LABEL_26;
  }

  if (!a3)
  {
    return 0;
  }

  v13 = 12;
LABEL_24:
  *(a1 + 76) = v13;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
LABEL_30:
    abort();
  }

  if (!result)
  {
    return result;
  }

LABEL_26:
  *(a1 + 88) = 0;
  return 1;
}

void *sub_23946A484()
{
  result = sub_2394500B0(0x60uLL);
  if (result)
  {
    *(result + 6) = -1;
  }

  return result;
}

void sub_23946A4AC(uint64_t a1)
{
  if (a1)
  {
    sub_239457574(*(a1 + 32), sub_23946AD6C, sub_2393FDCD8);
    sub_239457574(*(a1 + 40), sub_23946AD78, sub_23946A548);
    sub_239450144(*(a1 + 56));
    sub_239450144(*(a1 + 72));

    sub_239450144(a1);
  }
}

uint64_t sub_23946A554(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 1;
  }

  v6 = *(a2 + 16);
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 16) == 0;
  }

  v8 = !v7;
  if (v6 && (v8 & 1) == 0)
  {
    *(a1 + 16) = v6;
  }

  v9 = *(a2 + 20);
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(a1 + 20) == 0;
  }

  v11 = !v10;
  if (v9 && (v11 & 1) == 0)
  {
    *(a1 + 20) = v9;
  }

  v12 = *(a2 + 24);
  if (a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a1 + 24) == -1;
  }

  v14 = !v13;
  if (v12 != -1 && (v14 & 1) == 0)
  {
    *(a1 + 24) = v12;
  }

  v15 = *(a1 + 8);
  if ((v15 & 2) == 0)
  {
    *a1 = *a2;
  }

  *(a1 + 8) = *(a2 + 8) | v15;
  v16 = *(a2 + 32);
  if (a3)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a1 + 32) == 0;
  }

  v18 = !v17;
  if (!v16 || (v18 & 1) != 0 || (result = sub_23946A8A0(a1, v16), result))
  {
    v20 = *(a1 + 40);
    if (a3)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == 0;
    }

    v22 = !v21;
    if (*(a2 + 40))
    {
      if ((v22 & 1) == 0)
      {
        sub_239457574(v20, sub_23946AD78, sub_23946A548);
        *(a1 + 40) = 0;
        v23 = *(a2 + 40);
        if (v23)
        {
          result = sub_239457C24(v23, sub_23946AD84, sub_23945030C, sub_23946AD78, sub_23946A548);
          *(a1 + 40) = result;
          if (!result)
          {
            return result;
          }

          *(a1 + 48) = *(a2 + 48);
        }
      }
    }

    v24 = *(a2 + 56);
    v25 = a3 || *(a1 + 56) == 0;
    v26 = !v25;
    if (!v24 || v26 || (result = sub_23946AAE4(a1, v24, *(a2 + 64)), result))
    {
      v27 = *(a2 + 72);
      if (a3)
      {
        v28 = 1;
      }

      else
      {
        v28 = *(a1 + 72) == 0;
      }

      v29 = !v28;
      if (!v27 || (v29 & 1) != 0)
      {
        goto LABEL_71;
      }

      v30 = *(a2 + 80);
      if (v30 == 16 || v30 == 4)
      {
        result = sub_23946AB58((a1 + 72), (a1 + 80), v27, v30);
        if (result)
        {
LABEL_71:
          v31 = *(a2 + 88);
          result = 1;
LABEL_75:
          *(a1 + 88) = v31;
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v31 = 1;
      goto LABEL_75;
    }
  }

  return result;
}

uint64_t sub_23946A790(uint64_t a1, int a2)
{
  if (sub_239462934(a2))
  {
    *(a1 + 16) = a2;
    return 1;
  }

  else
  {
    sub_2394170F4(20, 0, 133, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vpm.c", 273);
    return 0;
  }
}

uint64_t sub_23946A7EC(uint64_t a1, int a2)
{
  if (sub_239467F1C(a2))
  {
    *(a1 + 20) = a2;
    return 1;
  }

  else
  {
    sub_2394170F4(11, 0, 131, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vpm.c", 282);
    return 0;
  }
}

void *sub_23946A848(void *result, uint64_t a2)
{
  v2 = result[1] | 2;
  *result = a2;
  result[1] = v2;
  return result;
}

unint64_t *sub_23946A858(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (sub_2394579D0(result, a2) != 0);
  }

  result = sub_2394574D8();
  *(a1 + 32) = result;
  if (result)
  {
    return (sub_2394579D0(result, a2) != 0);
  }

  return result;
}

uint64_t sub_23946A8A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    sub_239457574(*(result + 32), sub_23946AD6C, sub_2393FDCD8);
    if (a2)
    {
      v4 = sub_239457C24(a2, sub_23946AD90, sub_239450894, sub_23946AD6C, sub_2393FDCD8);
      *(v3 + 32) = v4;
      return v4 != 0;
    }

    else
    {
      *(v3 + 32) = 0;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23946A958(uint64_t a1, _BYTE *__s, size_t __n)
{
  v4 = sub_23946A99C(a1, 0, __s, __n);
  result = 1;
  if (!v4)
  {
    *(a1 + 88) = 1;
    return 0;
  }

  return result;
}

uint64_t sub_23946A99C(uint64_t a1, int a2, _BYTE *__s, size_t __n)
{
  result = 0;
  if (__s && __n)
  {
    if (memchr(__s, 0, __n))
    {
      return 0;
    }

    if (!a2)
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        sub_239457574(v9, sub_23946AD78, sub_23946A548);
        *(a1 + 40) = 0;
      }
    }

    result = sub_23945071C(__s, __n);
    if (result)
    {
      v10 = result;
      v11 = *(a1 + 40);
      if (v11 || (v11 = sub_2394574D8(), (*(a1 + 40) = v11) != 0))
      {
        if (sub_2394579D0(v11, v10))
        {
          return 1;
        }

        sub_239450144(v10);
        if (!sub_239431484(*(a1 + 40)))
        {
          sub_2393FFA58(*(a1 + 40));
          result = 0;
          *(a1 + 40) = 0;
          return result;
        }
      }

      else
      {
        sub_239450144(v10);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_23946AA98(uint64_t a1, _BYTE *__s, size_t __n)
{
  v4 = 1;
  if (!sub_23946A99C(a1, 1, __s, __n))
  {
    *(a1 + 88) = 1;
    return 0;
  }

  return v4;
}

uint64_t sub_23946AAE4(uint64_t a1, void *__s, size_t __n)
{
  if ((!__n || !memchr(__s, 0, __n)) && sub_23946AB58((a1 + 56), (a1 + 64), __s, __n))
  {
    return 1;
  }

  result = 0;
  *(a1 + 88) = 1;
  return result;
}

uint64_t sub_23946AB58(void **a1, unint64_t *a2, const void *a3, unint64_t a4)
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      result = sub_239450350(a3, a4);
      if (result)
      {
        v8 = result;
        if (*a1)
        {
          sub_239450144(*a1);
        }

        *a1 = v8;
        if (a2)
        {
          *a2 = a4;
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_23946ABC4(uint64_t a1, const void *a2, unint64_t a3)
{
  if ((a3 == 16 || a3 == 4) && sub_23946AB58((a1 + 72), (a1 + 80), a2, a3))
  {
    return 1;
  }

  result = 0;
  *(a1 + 88) = 1;
  return result;
}

uint64_t sub_23946AC20(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_239464824(&v5, a2);
  if (result)
  {
    if ((result == 16 || result == 4) && sub_23946AB58((a1 + 72), (a1 + 80), &v5, result))
    {
      result = 1;
    }

    else
    {
      result = 0;
      *(a1 + 88) = 1;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_23946ACBC(const char *a1)
{
  if (!strcmp(a1, "default"))
  {
    return &unk_2395D1420;
  }

  if (!strcmp(a1, "pkcs7") || !strcmp(a1, "smime_sign"))
  {
    return &unk_2395D1480;
  }

  if (!strcmp(a1, "ssl_client"))
  {
    return &unk_2395D14E0;
  }

  if (!strcmp(a1, "ssl_server"))
  {
    return &unk_2395D1540;
  }

  return 0;
}

uint64_t sub_23946AD9C(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (a2 < 2)
    {
      v2 = result;
      result = **result;
      if (a2)
      {
        if (result || (**v2 = sub_239402EE8(), (result = **v2) != 0))
        {

          return sub_2393FCD8C(result, 1uLL);
        }
      }

      else
      {
        sub_239402ECC(result);
        **v2 = 0;
        return 1;
      }
    }

    else
    {
      sub_2394170F4(11, 0, 140, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509cset.c", 72);
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946AE44(uint64_t a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    return sub_23946DE70((*a1 + 16), a2);
  }

  else
  {
    return 0;
  }
}

BOOL sub_23946AE60(_BOOL8 result, int *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (*(*result + 24) != a2)
    {
      v2 = sub_2393FF9A4(a2);
      if (v2)
      {
        sub_2393FEBA0(*(*v3 + 24));
        *(*v3 + 24) = v2;
      }
    }

    return v2 != 0;
  }

  return result;
}

BOOL sub_23946AEC8(_BOOL8 result, int *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (*(*result + 32) != a2)
    {
      v2 = sub_2393FF9A4(a2);
      if (v2)
      {
        sub_2393FEBA0(*(*v3 + 32));
        *(*v3 + 32) = v2;
      }
    }

    return v2 != 0;
  }

  return result;
}

uint64_t sub_23946AF30(uint64_t a1)
{
  sub_239457A78(*(*a1 + 40), sub_23946B198);
  sub_23940327C(*a1 + 56);
  return 1;
}

BOOL sub_23946AF88(_BOOL8 result, int *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (*(result + 8) != a2)
    {
      v2 = sub_2393FF9A4(a2);
      if (v2)
      {
        sub_2393FEBA0(*(v3 + 8));
        *(v3 + 8) = v2;
      }
    }

    return v2 != 0;
  }

  return result;
}

BOOL sub_23946AFE4(uint64_t *a1, uint64_t a2)
{
  if ((*(a2 + 4) | 0x100) != 0x102)
  {
    sub_2394170F4(12, 0, 191, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509cset.c", 221);
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (*a1 != a2)
  {
    v3 = sub_2393FC990(a2);
    if (v3)
    {
      sub_239402ECC(*a1);
      *a1 = v3;
    }
  }

  return v3 != 0;
}

uint64_t sub_23946B070(uint64_t *a1, void **a2)
{
  sub_23940327C(*a1 + 56);
  v4 = *a1;

  return sub_23946D688(v4, a2);
}

uint64_t sub_23946B0C0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_23946BC28(a2);
  v5 = sub_23946BC28(a2);
  v6 = v5;
  if (v4 && v5)
  {
    sub_23946BC1C(a1[1]);
    a1[1] = v4;
    sub_23946BC1C(*(*a1 + 8));
    *(*a1 + 8) = v6;
    return 1;
  }

  else
  {
    sub_23946BC1C(v4);
    sub_23946BC1C(v6);
    return 0;
  }
}

uint64_t sub_23946B148(uint64_t a1, char *a2, size_t a3)
{
  result = sub_2393FF8AC(*(a1 + 16), a2, a3);
  if (result)
  {
    *(*(a1 + 16) + 16) &= 0xFFFFFFFFFFFFFFF0;
    *(*(a1 + 16) + 16) |= 8uLL;
    return 1;
  }

  return result;
}

uint64_t sub_23946B198(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_23946B1C8(uint64_t *a1, unsigned int a2, _BYTE *a3, int a4)
{
  v7 = sub_239450F00(a2);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_23946B238(a1, v7, a3, a4);
}

uint64_t sub_23946B238(uint64_t *a1, uint64_t a2, _BYTE *a3, int a4)
{
  v7 = 0xFFFFFFFFLL;
  v8 = sub_23946B300(a1, a2, -1);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = sub_23946B39C(a1, v8);
    if (v9)
    {
      v10 = v9[1];
    }

    else
    {
      v10 = 0;
    }

    v15 = 0;
    v11 = sub_2393FE214(&v15, v10);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_8;
    }

    v7 = v11;
    v12 = v11;
    v14[0] = v15;
    v14[1] = v11;
    if (!sub_2394077E8(v14))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      if (v7 < a4 && sub_239407AC8(v14, a3, v12))
      {
        a3[v12] = 0;
        goto LABEL_8;
      }
    }

    v7 = 0xFFFFFFFFLL;
LABEL_8:
    sub_239450144(v15);
  }

  return v7;
}

uint64_t sub_23946B300(uint64_t *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    LODWORD(v3) = a3;
    v5 = *a1;
    v6 = sub_239431484(*a1);
    if (v3 < 0)
    {
      LODWORD(v3) = -1;
    }

    v7 = v6;
    for (i = v3 + 1; i < v7; ++i)
    {
      v9 = sub_239457528(v5, i);
      v3 = (v3 + 1);
      if (!sub_239450998(*v9, a2))
      {
        return v3;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_23946B390(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

unint64_t *sub_23946B39C(uint64_t *a1, unsigned int a2)
{
  if (!a1 || (a2 & 0x80000000) != 0 || sub_239431484(*a1) <= a2)
  {
    return 0;
  }

  v4 = *a1;

  return sub_239457528(v4, a2);
}

uint64_t *sub_23946B400(uint64_t *result)
{
  if (result)
  {
    return sub_239431484(*result);
  }

  return result;
}

uint64_t sub_23946B424(uint64_t *a1, unsigned int a2, int a3)
{
  v5 = sub_239450F00(a2);
  if (!v5)
  {
    return 4294967294;
  }

  return sub_23946B300(a1, v5, a3);
}

uint64_t sub_23946B480(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (sub_239431484(*a1) <= a2)
    {
      return 0;
    }

    else
    {
      v5 = a2;
      v6 = *a1;
      v2 = sub_239457700(*a1, a2);
      v7 = sub_239431484(v6);
      *(a1 + 8) = 1;
      if (v7 != a2)
      {
        v8 = v7;
        if (a2)
        {
          v9 = *(sub_239457528(v6, a2 - 1) + 4) + 1;
        }

        else
        {
          v9 = *(v2 + 16);
        }

        if (v9 < *(sub_239457528(v6, v5) + 4) && v8 > v5)
        {
          do
          {
            v12 = sub_239457528(v6, v5);
            --*(v12 + 4);
            ++v5;
          }

          while (v8 != v5);
        }
      }
    }
  }

  return v2;
}

const char ***sub_23946B570(uint64_t a1, uint64_t a2, int a3, char *a4, size_t a5, int a6, int a7)
{
  result = sub_23946B5D4(0, a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    v12 = sub_23946B688(a1, result, a6, a7);
    sub_23946DE14(v11);
    return v12;
  }

  return result;
}

const char ***sub_23946B5D4(const char ****a1, uint64_t a2, int a3, char *a4, size_t a5)
{
  if (a1 && (v10 = *a1) != 0 || (v10 = sub_23946DE08()) != 0)
  {
    if (sub_23946BA00(v10, a2) && sub_23946BA6C(v10, a3, a4, a5))
    {
      if (a1 && !*a1)
      {
        *a1 = v10;
      }
    }

    else
    {
      if (!a1 || v10 != *a1)
      {
        sub_23946DE14(v10);
      }

      return 0;
    }
  }

  return v10;
}

uint64_t sub_23946B688(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = *result;
  v9 = sub_239431484(*result);
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  if (a3 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = a4 == 0;
  *(v7 + 8) = 1;
  if (a4 == -1)
  {
    if (v11)
    {
      v13 = sub_239457528(v8, v11 - 1);
      v12 = 0;
      goto LABEL_13;
    }

    v14 = 0;
    v12 = 1;
  }

  else
  {
    if (v11 < v9)
    {
      v13 = sub_239457528(v8, v11);
LABEL_13:
      v14 = *(v13 + 4);
      goto LABEL_18;
    }

    if (v11)
    {
      v14 = *(sub_239457528(v8, v11 - 1) + 4) + 1;
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_18:
  result = sub_23946DE20(a2);
  if (result)
  {
    v15 = result;
    *(result + 16) = v14;
    if (sub_23945761C(v8, result, v11))
    {
      if (v12)
      {
        v16 = sub_239431484(v8);
        if (v11 + 1 < v16)
        {
          v17 = v11 + 1;
          v18 = ~v11 + v16;
          do
          {
            v19 = sub_239457528(v8, v17);
            ++*(v19 + 4);
            ++v17;
            --v18;
          }

          while (v18);
        }
      }

      return 1;
    }

    else
    {
      sub_23946DE14(v15);
      return 0;
    }
  }

  return result;
}

const char ***sub_23946B7EC(uint64_t a1, unsigned int a2, int a3, char *a4, size_t a5, int a6, int a7)
{
  result = sub_23946B850(0, a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    v12 = sub_23946B688(a1, result, a6, a7);
    sub_23946DE14(v11);
    return v12;
  }

  return result;
}

const char ***sub_23946B850(const char ****a1, unsigned int a2, int a3, char *a4, size_t a5)
{
  v9 = sub_239450F00(a2);
  if (v9)
  {

    return sub_23946B5D4(a1, v9, a3, a4, a5);
  }

  else
  {
    sub_2394170F4(11, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509name.c", 324);
    return 0;
  }
}

const char ***sub_23946B8E0(uint64_t a1, const char *a2, int a3, char *a4, size_t a5, int a6, int a7)
{
  result = sub_23946B944(0, a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    v12 = sub_23946B688(a1, result, a6, a7);
    sub_23946DE14(v11);
    return v12;
  }

  return result;
}

const char ***sub_23946B944(const char ****a1, const char *a2, int a3, char *a4, size_t a5)
{
  v9 = sub_239450E0C(a2, 0);
  if (v9)
  {
    v10 = v9;
    v11 = sub_23946B5D4(a1, v9, a3, a4, a5);
    sub_2393FDCD8(v10);
    return v11;
  }

  else
  {
    sub_2394170F4(11, 0, 111, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509name.c", 309);
    sub_2394171A0(2u, v13, v14, v15, v16, v17, v18, v19, "name=");
    return 0;
  }
}

BOOL sub_23946BA00(const char ***a1, uint64_t a2)
{
  if (a1 && a2)
  {
    sub_2393FDCD8(*a1);
    v4 = sub_239450894(a2);
    *a1 = v4;
    return v4 != 0;
  }

  else
  {
    sub_2394170F4(11, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509name.c", 364);
    return 0;
  }
}

uint64_t sub_23946BA6C(uint64_t result, int a2, char *__s, size_t __n)
{
  if (result)
  {
    v4 = __n;
    v7 = result;
    if (__s || !__n)
    {
      if (a2 >= 1 && (a2 & 0x1000) != 0)
      {
        v8 = sub_2394509E8(*result);
        return sub_2393FE810((v7 + 8), __s, v4, a2, v8) != 0;
      }

      else
      {
        if ((__n & 0x8000000000000000) != 0)
        {
          v4 = strlen(__s);
        }

        result = sub_2393FF8AC(*(v7 + 8), __s, v4);
        if (result)
        {
          if (a2 != -1)
          {
            *(*(v7 + 8) + 4) = a2;
          }

          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946BB28(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    sub_2394170F4(11, 0, 140, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509rset.c", 70);
    return 0;
  }

  v4 = *(*a1 + 24);

  return sub_2393FCD8C(v4, 0);
}

uint64_t sub_23946BB80(uint64_t a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    return sub_23946DE70((*a1 + 32), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23946BB9C(void *a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    return sub_23946E800(*a1 + 40, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23946BBB8(uint64_t a1, uint64_t a2)
{
  result = sub_23946BC28(a2);
  if (result)
  {
    v4 = result;
    sub_23946BC1C(*(a1 + 8));
    *(a1 + 8) = v4;
    return 1;
  }

  return result;
}

uint64_t sub_23946BC38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    if (a3 == -1)
    {
      sub_2393FDCD8(*result);
      *v6 = a2;
      v8 = *(v6 + 8);
      if (v8)
      {
        sub_2394030C4(v8);
        *(v6 + 8) = 0;
      }

      return 1;
    }

    if (*(result + 8) || (result = sub_2394030B8(), (*(v6 + 8) = result) != 0))
    {
      sub_2393FDCD8(*v6);
      *v6 = a2;
      if (a3)
      {
        sub_2393FF118(*(v6 + 8), a3, a4);
      }

      return 1;
    }
  }

  return result;
}

int *sub_23946BCD4(int *result, int *a2, int **a3, void *a4)
{
  if (result)
  {
    *result = *a4;
  }

  if (a2)
  {
    result = a4[1];
    if (result)
    {
      v6 = *result;
      result = sub_2393FF0B4(result);
    }

    else
    {
      v6 = -1;
    }

    *a2 = v6;
    if (a3)
    {
      *a3 = result;
    }
  }

  return result;
}

uint64_t sub_23946BD34(uint64_t a1, unsigned int *a2)
{
  if ((sub_23942E7AC(a2) & 2) != 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 5;
  }

  v5 = sub_2393FFBE4(a2);
  v6 = sub_239450F00(v5);

  return sub_23946BC38(a1, v6, v4, 0);
}

uint64_t sub_23946BDA0(uint64_t *a1, uint64_t *a2)
{
  result = sub_239450998(*a1, *a2);
  if (!result)
  {
    v5 = a1[1];
    v6 = a2[1];
    if (v5 | v6)
    {

      return sub_2393FF264(v5, v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946BE04(uint64_t a1, uint64_t a2)
{
  if (sub_23946BDA0(*(a1 + 8), *(*a1 + 16)))
  {
    sub_2394170F4(11, 0, 137, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_all.c", 75);
    return 0;
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *a1;

    return sub_2394583A8(byte_278A82C40, v5, v6, v7, a2);
  }
}

uint64_t sub_23946BEA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_23940327C(*a1 + 80);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(*a1 + 16);
  v9 = a1[2];

  return sub_23945814C(byte_278A82C40, v8, v6, v9, v7, a2, a3);
}

uint64_t sub_23946BF10(uint64_t *a1, uint64_t *a2)
{
  sub_23940327C(*a1 + 80);
  v5 = *a1;
  v4 = a1[1];
  v6 = *(*a1 + 16);
  v7 = a1[2];

  return sub_239458228(byte_278A82C40, v6, v4, v7, v5, a2);
}

uint64_t sub_23946BF68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_23940327C(*a1);
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;

  return sub_23945814C(byte_278A82860, v6, 0, v7, v8, a2, a3);
}

uint64_t sub_23946BFCC(uint64_t *a1, uint64_t *a2)
{
  sub_23940327C(*a1);
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;

  return sub_239458228(byte_278A82860, v4, 0, v5, v6, a2);
}

uint64_t sub_23946C020(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_23940327C(*a1 + 56);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(*a1 + 8);
  v9 = a1[2];

  return sub_23945814C(byte_278A82490, v8, v6, v9, v7, a2, a3);
}

uint64_t sub_23946C088(uint64_t *a1, uint64_t *a2)
{
  sub_23940327C(*a1 + 56);
  v5 = *a1;
  v4 = a1[1];
  v6 = *(*a1 + 8);
  v7 = a1[2];

  return sub_239458228(byte_278A82490, v6, v4, v7, v5, a2);
}

void *sub_23946C1BC(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C204(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C204(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_23946EEB4(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C274(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C2BC(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C2BC(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v3 = sub_23946F1CC(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

uint64_t *sub_23946C324(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C36C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t *sub_23946C36C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_23945621C(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C3DC(uint64_t a1, uint64_t **a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C424(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C424(uint64_t a1, uint64_t **a2)
{
  v6 = 0;
  v3 = sub_239456290(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

uint64_t *sub_23946C48C(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C4D4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t *sub_23946C4D4(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239456134(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C544(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C58C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C58C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_2394561A8(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946C5F4(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C63C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C63C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239418A78(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C6AC(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C6F4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C6F4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239418B00(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

uint64_t *sub_23946C75C(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C7A4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t *sub_23946C7A4(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239414CE0(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C814(uint64_t a1, uint64_t **a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C85C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C85C(uint64_t a1, uint64_t **a2)
{
  v6 = 0;
  v3 = sub_239414D54(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946C8C4(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C90C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C90C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239418B78(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C97C(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C9C4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C9C4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239418C00(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946CA2C(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CA74(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CA74(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239415AF4(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946CAE4(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CB2C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CB2C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239415BA4(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946CB94(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CBDC(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CBDC(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239418C78(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946CC4C(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CC94(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CC94(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239418D00(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

int *sub_23946CCFC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = sub_239465F50(a1);
  if (result)
  {
    v8 = *result;
    v9 = *(result + 1);

    return sub_239430E60(v9, v8, a3, a4, a2);
  }

  return result;
}

uint64_t sub_23946CD70(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  v7 = sub_23946F1CC(a1, &v10);
  if ((v7 & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = sub_239430E60(v10, v7, a3, a4, a2);
  sub_239450144(v10);
  return v8;
}

void *sub_23946CE44(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CE8C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CE8C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_23946EC4C(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946CEFC(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CF44(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CF44(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_23946EC58(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946CFAC(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CFF4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CFF4(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239452DCC(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946D064(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D0AC(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D0AC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239452DD8(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

uint64_t sub_23946D114(uint64_t a1, uint64_t a2)
{
  result = sub_239452E98(a2);
  if (result)
  {
    v4 = result;
    v5 = sub_23946D064(a1, result);
    sub_239452DF0(v4);
    return v5;
  }

  return result;
}

void *sub_23946D160(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D1A8(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D1A8(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_2394186C0(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946D218(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D260(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D260(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239459638(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946D2C8(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D310(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D310(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239418988(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946D380(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D3C8(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D3C8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_2394189FC(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

uint64_t sub_23946D430(uint64_t a1, uint64_t a2)
{
  result = sub_239452E98(a2);
  if (result)
  {
    v4 = result;
    v5 = sub_23946D0AC(a1, result);
    sub_239452DF0(v4);
    return v5;
  }

  return result;
}

void *sub_23946D47C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_2394126B0(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

uint64_t sub_23946D4EC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239412724(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

uint64_t sub_23946D594(unsigned int a1, int a2, uint64_t a3)
{
  v5 = sub_239450F00(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_239402AC0(byte_278A822F0);
  v8 = sub_2394030B8();
  v9 = v8;
  if (!v7 || !v8 || (*v7 = v6, !sub_2394579D0(*(v7 + 8), v8)))
  {
    sub_2394026C0(v7, byte_278A822F0);
    sub_2394030C4(v9);
    return 0;
  }

  sub_2393FF118(v9, a2, a3);
  return v7;
}

unint64_t *sub_23946D6EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(*a1 + 40);
  if (result || (result = sub_239457478(sub_23946D74C), (*(v3 + 40) = result) != 0))
  {
    result = sub_2394579D0(result, a2);
    if (result)
    {
      sub_23940327C(v3 + 56);
      return 1;
    }
  }

  return result;
}

uint64_t sub_23946D760(uint64_t a1, uint64_t a2)
{
  if (sub_23946BDA0(*(a1 + 8), *(*a1 + 8)))
  {
    sub_2394170F4(11, 0, 137, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_crl.c", 319);
    return 0;
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *a1;

    return sub_2394583A8(byte_278A82490, v5, v6, v7, a2);
  }
}

uint64_t sub_23946D7F0(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a3;
  sub_239457D1C(&stru_27DF771B0);
  v8 = sub_239457980(*(*a1 + 40));
  sub_239457D5C(&stru_27DF771B0);
  if (!v8)
  {
    sub_239457D3C(&stru_27DF771B0);
    if (!sub_239457980(*(*a1 + 40)))
    {
      sub_239457A78(*(*a1 + 40), sub_23946DD80);
    }

    sub_239457D5C(&stru_27DF771B0);
  }

  memset(&v14[1], 0, 24);
  v13 = 0;
  result = sub_23945784C(*(*a1 + 40), &v13, v14, sub_23946DD80);
  if (result)
  {
    for (i = v13; ; i = ++v13)
    {
      if (i >= sub_239431484(*(*a1 + 40)))
      {
        return 0;
      }

      v11 = sub_239457528(*(*a1 + 40), v13);
      if (sub_2393FC994(*v11, a3))
      {
        return 0;
      }

      if (!a4)
      {
        break;
      }

      v12 = sub_239467D34(a1);
      if (!sub_239465AD0(a4, v12))
      {
        break;
      }
    }

    if (a2)
    {
      *a2 = v11;
    }

    return 1;
  }

  return result;
}

uint64_t sub_23946D964(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = sub_239465D40(a3);
  v7 = sub_239465C18(a3);

  return sub_23946D7F0(a1, a2, v6, v7);
}

uint64_t sub_23946D9C8(int a1, uint64_t a2)
{
  if (*a2)
  {
    if (a1 == 5)
    {
      v2 = *(*a2 + 40);
      if (v2)
      {
        sub_239457C08(v2, sub_23946D74C);
      }
    }
  }

  return 1;
}

uint64_t sub_23946DA10(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (result != 5)
  {
    if (result == 3)
    {
      sub_23945C474(*(v2 + 32));
      sub_23945F0C8(*(v2 + 40));
    }

    else if (result == 1)
    {
      *(v2 + 36) = 0;
      *(v2 + 28) = 0;
      *(v2 + 44) = 0;
      return result;
    }

    return 1;
  }

  v3 = *v2;
  v4 = **v2;
  if (!v4)
  {
LABEL_12:
    if (v3[6])
    {
      v6 = 139;
      v7 = 183;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v5 = sub_2393FD028(v4);
  if (v5 >= 2)
  {
    v6 = 140;
    v7 = 176;
LABEL_14:
    sub_2394170F4(11, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_crl.c", v7);
    return 0;
  }

  if (!v5)
  {
    v3 = *v2;
    goto LABEL_12;
  }

LABEL_17:
  v8 = sub_2394316DC();
  result = sub_23946CDF0(v2, v8, v2 + 52, 0);
  if (result)
  {
    v31 = 0;
    v9 = sub_2394660C8(v2, 770, &v31, 0);
    *(v2 + 40) = v9;
    if (!v9)
    {
      if (v31 != -1)
      {
        return 0;
      }

LABEL_38:
      v16 = sub_2394660C8(v2, 90, &v31, 0);
      *(v2 + 32) = v16;
      if (v16 || v31 == -1)
      {
        v17 = *(*v2 + 48);
        if (sub_239431484(v17))
        {
          v18 = 0;
          while (1)
          {
            v19 = sub_239457528(v17, v18);
            v20 = sub_239431484(v19);
            v21 = sub_2394509E8(v20);
            if (sub_239468174(v19) && v21 != 90 && v21 != 770)
            {
              break;
            }

            if (++v18 >= sub_239431484(v17))
            {
              goto LABEL_48;
            }
          }

          *(v2 + 28) |= 0x200u;
        }

LABEL_48:
        v22 = sub_239465D34(v2);
        if (sub_239431484(v22))
        {
          v23 = 0;
          while (1)
          {
            v24 = sub_239457528(v22, v23);
            v32 = 0;
            v25 = sub_2394661E4(v24, 141, &v32, 0);
            v26 = v25;
            if (!v25 && v32 != -1)
            {
              break;
            }

            if (v25)
            {
              *(v24 + 6) = sub_2393FD07C(v25);
              sub_239402ECC(v26);
            }

            else
            {
              *(v24 + 6) = -1;
            }

            v27 = v24[2];
            if (sub_239431484(v27))
            {
              v28 = 0;
              while (1)
              {
                v29 = sub_239457528(v27, v28);
                if (sub_239468174(v29))
                {
                  break;
                }

                if (++v28 >= sub_239431484(v27))
                {
                  goto LABEL_61;
                }
              }

              *(v2 + 28) |= 0x200u;
            }

LABEL_61:
            ++v23;
            v30 = sub_239431484(v22);
            result = 1;
            if (v23 >= v30)
            {
              return result;
            }
          }

          *(v2 + 28) |= 0x80u;
        }

        return 1;
      }

      return 0;
    }

    v10 = *(v2 + 48);
    v11 = v10 | 1;
    *(v2 + 48) = v10 | 1;
    if (*(v9 + 8) < 1)
    {
      v12 = 0;
    }

    else
    {
      v11 = v10 | 5;
      *(v2 + 48) = v10 | 5;
      v12 = 1;
    }

    if (*(v9 + 12) >= 1)
    {
      ++v12;
      v11 |= 8u;
      *(v2 + 48) = v11;
    }

    v13 = *(v9 + 28);
    if (v13 > 0)
    {
      v11 |= 0x10u;
      ++v12;
    }

    if (v12 > 1)
    {
      v11 |= 2u;
    }

    if (v13 > 0 || v12 >= 2)
    {
      *(v2 + 48) = v11;
    }

    if (*(v9 + 24) >= 1)
    {
      v11 |= 0x20u;
      *(v2 + 48) = v11;
    }

    if (*(v9 + 16))
    {
      *(v2 + 48) = v11 | 0x40;
    }

    v14 = *v9;
    v15 = sub_239467D34(v2);
    result = sub_23945F414(v14, v15);
    if (result)
    {
      goto LABEL_38;
    }
  }

  return result;
}

uint64_t sub_23946DD80(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_23946DE70(uint64_t *a1, uint64_t a2)
{
  result = sub_2393FC5C8(byte_278A82740, a2);
  if (result)
  {
    v4 = result;
    sub_2394026C0(*a1, byte_278A82740);
    *a1 = v4;
    return 1;
  }

  return result;
}

uint64_t sub_23946DEBC(uint64_t a1, void *a2, void *a3)
{
  if (sub_2394018FC(a1, 0, byte_278A82740) < 1)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = *(*(a1 + 16) + 8);
  }

  if (a3)
  {
    *a3 = **(a1 + 16);
  }

  return 1;
}

uint64_t sub_23946DF30(uint64_t *a1)
{
  result = sub_23945004C(0x28uLL);
  if (result)
  {
    v3 = result;
    v4 = sub_2394574D8();
    *v3 = v4;
    if (v4)
    {
      v5 = sub_239405E68();
      *(v3 + 16) = v5;
      if (v5)
      {
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        result = 1;
        *(v3 + 8) = 1;
        *a1 = v3;
        return result;
      }

      if (*v3)
      {
        sub_2393FFA58(*v3);
      }
    }

    sub_239450144(v3);
    return 0;
  }

  return result;
}

void sub_23946DFA8(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      sub_2393FFA58(*(v2 + 16));
      sub_239457574(*v2, sub_23946E410, sub_23946DE14);
      v3 = *(v2 + 24);
      if (v3)
      {
        sub_239450144(v3);
      }

      sub_239450144(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_23946E020(uint64_t *a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a2;
  v16 = 0;
  v17 = v7;
  if (a3 >= 0x100000)
  {
    a3 = 0x100000;
  }

  result = sub_239400E0C(&v16, &v17, a3, byte_278A82710, -1, 0, a5, 0);
  if (result >= 1)
  {
    v9 = v16;
    if (*a1)
    {
      sub_23946DFA8(a1);
    }

    v15 = 0;
    if (sub_23946DF30(&v15))
    {
      v10 = v15;
      if (sub_239405F30(*(v15 + 16), v17 - v7))
      {
        if (v17 != v7)
        {
          memcpy(*(*(v10 + 16) + 8), v7, v17 - v7);
        }

        if (sub_239431484(v9))
        {
          v11 = 0;
          while (1)
          {
            v12 = sub_239457528(v9, v11);
            if (sub_239431484(v12))
            {
              break;
            }

LABEL_16:
            if (++v11 >= sub_239431484(v9))
            {
              goto LABEL_17;
            }
          }

          v13 = 0;
          while (1)
          {
            v14 = sub_239457528(v12, v13);
            *(v14 + 4) = v11;
            if (!sub_2394579D0(*v10, v14))
            {
              break;
            }

            sub_23945754C(v12, v13++, 0);
            if (v13 >= sub_239431484(v12))
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_17:
          if (sub_23946E41C(v10))
          {
            sub_239457574(v9, sub_23946E7C4, sub_23946E6EC);
            *(v10 + 8) = 0;
            *a1 = v10;
            *a2 = v17;
            return 1;
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }

    sub_2394026C0(v10, byte_278A82740);
    sub_239457574(v9, sub_23946E7C4, sub_23946E6F0);
    sub_2394170F4(11, 0, 12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_name.c", 252);
    return 0;
  }

  return result;
}

uint64_t sub_23946E228(uint64_t *a1, void **a2)
{
  v3 = *a1;
  if (*(*a1 + 8))
  {
    v15 = 0;
    v4 = sub_2394574D8();
    if (!v4)
    {
      goto LABEL_20;
    }

    if (sub_239431484(*v3))
    {
      v5 = 0;
      v6 = 0;
      v7 = -1;
      do
      {
        v8 = sub_239457528(*v3, v5);
        if (*(v8 + 4) != v7)
        {
          v9 = sub_2394574D8();
          if (!v9)
          {
            goto LABEL_20;
          }

          v6 = v9;
          if (!sub_2394579D0(v4, v9))
          {
            sub_2393FFA58(v6);
            goto LABEL_20;
          }

          v7 = *(v8 + 4);
        }

        if (!sub_2394579D0(v6, v8))
        {
          goto LABEL_20;
        }

        ++v5;
      }

      while (v5 < sub_239431484(*v3));
    }

    v14 = v4;
    v10 = sub_2394019E8(&v14, 0, byte_278A82710, 0xFFFFFFFFLL, 0);
    if (v10 >= 1 && sub_239405F30(*(v3 + 16), v10) && (v15 = *(*(v3 + 16) + 8), sub_2394019E8(&v14, &v15, byte_278A82710, 0xFFFFFFFFLL, 0) > 0))
    {
      sub_239457574(v4, sub_23946E7C4, sub_23946E6EC);
      *(v3 + 8) = 0;
      if (sub_23946E41C(v3))
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_20:
      sub_239457574(v4, sub_23946E7C4, sub_23946E6EC);
    }

    return 0xFFFFFFFFLL;
  }

LABEL_15:
  v11 = *(v3 + 16);
  v12 = *v11;
  if (a2)
  {
    if (v12 << 32)
    {
      memcpy(*a2, v11[1], v12);
    }

    *a2 = *a2 + v12;
  }

  return v12;
}

uint64_t sub_23946E41C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_239450144(v2);
    *(a1 + 24) = 0;
  }

  if (sub_239431484(*a1))
  {
    v3 = sub_2394574D8();
    if (v3)
    {
      v4 = v3;
      v34 = 0;
      if (sub_239431484(*a1))
      {
        v5 = 0;
        v6 = 0;
        v7 = -1;
        v32 = v4;
        do
        {
          v8 = sub_239457528(*a1, v5);
          if (*(v8 + 4) != v7)
          {
            v9 = sub_2394574D8();
            if (!v9)
            {
              goto LABEL_45;
            }

            v6 = v9;
            if (!sub_2394579D0(v4, v9))
            {
              sub_2393FFA58(v6);
              goto LABEL_45;
            }

            v7 = *(v8 + 4);
          }

          v10 = sub_239402AC0(byte_278A82670);
          if (!v10)
          {
            goto LABEL_45;
          }

          v11 = v10;
          *v10 = sub_239450894(*v8);
          v12 = *(v11 + 8);
          v13 = v8[1];
          if ((sub_2394004D8(*(v13 + 4)) & 0x2956) != 0)
          {
            *(v12 + 4) = 12;
            v14 = sub_2393FE214((v12 + 8), v13);
            *v12 = v14;
            if (v14 == -1)
            {
              goto LABEL_43;
            }

            v33 = v7;
            if (v14 < 1)
            {
LABEL_25:
              v23 = *(v12 + 8);
              LODWORD(v24) = v23;
              v4 = v32;
            }

            else
            {
              v15 = *(v12 + 8);
              v16 = v14;
              v17 = v14 + 1;
              v18 = v14;
              v19 = v15;
              while (sub_23945046C(*v19))
              {
                ++v19;
                --v18;
                if (--v17 <= 1)
                {
                  goto LABEL_25;
                }
              }

              v20 = &v15[v16 - 1];
              while (1)
              {
                v21 = *v20--;
                if (!sub_23945046C(v21))
                {
                  break;
                }

                v22 = __OFSUB__(v18--, 1);
                if ((v18 < 0) ^ v22 | (v18 == 0))
                {
                  goto LABEL_25;
                }
              }

              v25 = 0;
              v24 = *(v12 + 8);
              v4 = v32;
              do
              {
                if (sub_23945046C(*v19))
                {
                  *v24 = 32;
                  do
                  {
                    v26 = *++v19;
                    ++v25;
                  }

                  while (sub_23945046C(v26));
                }

                else
                {
                  v27 = *v19++;
                  *v24 = sub_239450458(v27);
                  ++v25;
                }

                ++v24;
              }

              while (v25 < v18);
              v23 = *(v12 + 8);
            }

            *v12 = v24 - v23;
            v7 = v33;
          }

          else if (!sub_2393FF854(v12, v13))
          {
            goto LABEL_43;
          }

          if (!sub_2394579D0(v6, v11))
          {
LABEL_43:
            sub_2394026C0(v11, byte_278A82670);
            goto LABEL_45;
          }

          ++v5;
        }

        while (v5 < sub_239431484(*a1));
      }

      v29 = sub_23946E714(v4, 0);
      if ((v29 & 0x80000000) != 0 || (*(a1 + 32) = v29, v30 = sub_23945004C(v29), (v34 = v30) == 0))
      {
LABEL_45:
        v28 = 0;
      }

      else
      {
        *(a1 + 24) = v30;
        sub_23946E714(v4, &v34);
        v28 = 1;
      }

      sub_239457574(v4, sub_23946E7C4, sub_23946E6F0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    return 1;
  }

  return v28;
}

uint64_t sub_23946E714(unint64_t *a1, void **a2)
{
  v8 = 0;
  if (!sub_239431484(a1))
  {
    return 0;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  while (1)
  {
    v8 = sub_239457528(a1, v4);
    v6 = sub_2394019E8(&v8, a2, byte_278A826C0, 0xFFFFFFFFLL, 0);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v5 = (v6 + v5);
    if (++v4 >= sub_239431484(a1))
    {
      return v5;
    }
  }

  return v6;
}

uint64_t sub_23946E800(uint64_t result, uint64_t a2)
{
  v8 = 0;
  if (result)
  {
    v3 = result;
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    if (sub_2394065F4(v6, 0) && sub_239418328(v6, a2) && sub_2394066A4(v6, &v8, &v7) && (v7 & 0x8000000000000000) == 0)
    {
      v5 = v8;
      v4 = sub_2394004F8(0, &v5, v7, byte_278A827B0);
      if (v4 && v5 == (v8 + v7))
      {
        sub_239450144(v8);
        sub_2394026C0(*v3, byte_278A827B0);
        *v3 = v4;
        return 1;
      }

      sub_2394170F4(11, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_pubkey.c", 141);
    }

    else
    {
      sub_239406688(v6);
      sub_2394170F4(11, 0, 126, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_pubkey.c", 134);
      v4 = 0;
    }

    sub_2394026C0(v4, byte_278A827B0);
    sub_239450144(v8);
    return 0;
  }

  return result;
}

uint64_t sub_23946E93C(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (!result)
    {
      sub_2394170F4(11, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_pubkey.c", 162);
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946E984(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2394178A4(*(a1 + 16));
  }

  else
  {
    sub_2394170F4(11, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_pubkey.c", 162);
  }

  return v1;
}

uint64_t sub_23946E9E0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  result = sub_23946BC38(*a1, a2, a3, a4);
  if (result)
  {
    sub_2393FFA9C(a1[1], a5, a6);
    *(a1[1] + 16) &= 0xFFFFFFFFFFFFFFF0;
    *(a1[1] + 16) |= 8uLL;
    sub_23946EA58(a1);
    return 1;
  }

  return result;
}

void sub_23946EA58(uint64_t a1)
{
  sub_239417838(*(a1 + 16));
  *(a1 + 16) = 0;
  v5 = 0;
  v2 = sub_2394018FC(a1, &v5, byte_278A827B0);
  if ((v2 & 0x80000000) == 0)
  {
    *&v4 = v5;
    *(&v4 + 1) = v2;
    v3 = sub_239418130(&v4);
    if (!v3 || *(&v4 + 1))
    {
      sub_239417838(v3);
    }

    else
    {
      *(a1 + 16) = v3;
    }
  }

  sub_239450144(v5);
  sub_239416A38();
}

uint64_t sub_23946EAE0(void *a1, void *a2, _DWORD *a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    *a1 = **a5;
  }

  if (a2)
  {
    *a2 = *(*(a5 + 8) + 8);
    *a3 = **(a5 + 8);
  }

  if (a4)
  {
    *a4 = *a5;
  }

  return 1;
}

uint64_t sub_23946EB20(int a1, uint64_t *a2)
{
  v3 = *a2;
  if (a1 == 5)
  {
    sub_23946EA58(v3);
  }

  else if (a1 == 3)
  {
    sub_239417838(*(v3 + 16));
  }

  return 1;
}

BOOL sub_23946EBD0(int a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1 == 5)
  {
    if ((sub_2393FD028(*(v2 + 24)) & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      sub_2394170F4(11, 0, 140, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_req.c", 90);
      return 0;
    }
  }

  else if (a1 == 1)
  {
    v3 = sub_2394574D8();
    *(v2 + 48) = v3;
    return v3 != 0;
  }

  return 1;
}

void *sub_23946ED3C()
{
  v0 = sub_23946EDA8();
  if (v0)
  {
    *v0 = sub_239402AC0(byte_278A82C40);
    v0[1] = sub_23946BC10();
    v1 = sub_239402F28();
    v0[2] = v1;
    if (!*v0 || !v0[1] || !v1)
    {
      sub_23946EDF8(v0);
      return 0;
    }
  }

  return v0;
}

void *sub_23946EDA8()
{
  v0 = sub_2394500B0(0x158uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 6) = 1;
    v0[5] = -1;
    sub_2393F7EB0(v0 + 4);
    sub_239457CF8((v1 + 18));
  }

  return v1;
}

void sub_23946EDF8(uint64_t a1)
{
  if (a1 && sub_239455A20((a1 + 24)))
  {
    sub_23941F114(&unk_27DF77278, a1, (a1 + 32));
    sub_2394026C0(*a1, byte_278A82C40);
    sub_23946BC1C(*(a1 + 8));
    sub_239402ECC(*(a1 + 16));
    sub_239402ECC(*(a1 + 64));
    sub_23945C474(*(a1 + 72));
    sub_23945F098(*(a1 + 80));
    sub_23945FF40(*(a1 + 88));
    sub_239460F34(*(a1 + 96));
    sub_23946F880(*(a1 + 136));
    j__pthread_rwlock_destroy((a1 + 144));

    sub_239450144(a1);
  }
}

uint64_t sub_23946EEB4(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    sub_2394170F4(12, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", 238);
    v5 = 0;
    if (!a1)
    {
      return v5;
    }

    goto LABEL_5;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_23946EF4C(&v7, 0);
  if (v5)
  {
    *a2 = v7;
  }

  if (a1)
  {
LABEL_5:
    sub_23946EDF8(*a1);
    *a1 = v5;
  }

  return v5;
}

uint64_t sub_23946EF4C(__int128 *a1, uint64_t a2)
{
  v24 = 0uLL;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  if (!sub_239407F5C(a1, &v24, 536870928) || *(&v24 + 1) >> 30 || !sub_23940801C(&v24, &v22, 536870928) || !sub_23940801C(&v24, &v20, 536870928))
  {
    v5 = 153;
LABEL_15:
    sub_2394170F4(12, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", v5);
    return 0;
  }

  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (!sub_239407F2C(&v24, &v18, &v17, &v16, 0, &v15) || v17 != 3 || v15 || !sub_239407718(&v18, v16) || *(&v24 + 1))
  {
    v5 = 171;
    goto LABEL_15;
  }

  v3 = sub_23946EDA8();
  v4 = v3;
  if (v3)
  {
    v14 = v22;
    if (sub_239400E0C(v3, &v14, v23, byte_278A82C40, -1, 0, 0, a2) < 1)
    {
      goto LABEL_13;
    }

    if (v14 != &v22[v23])
    {
      goto LABEL_13;
    }

    v14 = v20;
    v7 = sub_23946BBF8(0, &v14, v21);
    *(v4 + 8) = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

    if (v14 != &v20[v21])
    {
      goto LABEL_13;
    }

    v14 = v18;
    v8 = sub_2393FC15C(0, &v14, v19);
    *(v4 + 16) = v8;
    if (!v8 || v14 != &v18[v19])
    {
      goto LABEL_13;
    }

    v9 = *v4;
    v10 = **v4;
    if (v10)
    {
      v11 = sub_2393FD028(v10);
      if (v11 >= 3)
      {
        v12 = 140;
        v13 = 210;
LABEL_35:
        sub_2394170F4(11, 0, v12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", v13);
LABEL_13:
        sub_23946EDF8(v4);
        return 0;
      }

      if (v11)
      {
        if (v11 == 2)
        {
          return v4;
        }

        v9 = *v4;
        goto LABEL_33;
      }

      v9 = *v4;
    }

    if (v9[7] || v9[8])
    {
      v12 = 139;
      v13 = 218;
      goto LABEL_35;
    }

LABEL_33:
    if (!v9[9])
    {
      return v4;
    }

    v12 = 139;
    v13 = 224;
    goto LABEL_35;
  }

  return v4;
}

uint64_t sub_23946F1CC(uint64_t *a1, void **a2)
{
  if (a1)
  {
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    if (sub_2394065F4(v13, 0x40uLL))
    {
      if (sub_239406A10(v13, v12, 0x20000010u))
      {
        v11 = 0;
        v4 = sub_2394018FC(*a1, 0, byte_278A82C40);
        if ((v4 & 0x80000000) == 0)
        {
          v5 = v4;
          if (sub_239406C9C(v12, &v11, v4))
          {
            if (sub_2394018FC(*a1, &v11, byte_278A82C40) == v5)
            {
              v6 = sub_23946BC04(a1[1], 0);
              if ((v6 & 0x80000000) == 0)
              {
                v7 = v6;
                if (sub_239406C9C(v12, &v11, v6))
                {
                  if (sub_23946BC04(a1[1], &v11) == v7)
                  {
                    v8 = sub_239402F1C(a1[2], 0);
                    if ((v8 & 0x80000000) == 0)
                    {
                      v9 = v8;
                      if (sub_239406C9C(v12, &v11, v8))
                      {
                        if (sub_239402F1C(a1[2], &v11) == v9)
                        {
                          return sub_23940603C(v13, a2);
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

    sub_239406688(v13);
  }

  else
  {
    sub_2394170F4(12, 0, 155, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", 261);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_23946F340(uint64_t *a1)
{
  v5 = 0;
  v1 = sub_23946F1CC(a1, &v5);
  if ((v1 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = v5;
  v2 = sub_23946EEB4(0, &v4, v1);
  sub_239450144(v5);
  return v2;
}

uint64_t sub_23946F3A4(uint64_t a1)
{
  *&v3 = sub_2393FFBF4(a1);
  *(&v3 + 1) = sub_239412CF0(a1);
  result = sub_23946EF4C(&v3, a1);
  if (!result || *(&v3 + 1))
  {
    sub_23946EDF8(result);
    return 0;
  }

  return result;
}

uint64_t sub_23946F428(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v12 = *a2;
  v6 = a1 && *a1;
  v7 = sub_23946EEB4(a1, &v12, a3);
  v8 = v7;
  if (v7)
  {
    v9 = v12;
    v10 = *a2 - v12 + a3;
    if (v10 < 1)
    {
LABEL_9:
      *a2 = v9;
      return v8;
    }

    if (sub_23946F85C((v7 + 136), &v12, v10))
    {
      v9 = v12;
      goto LABEL_9;
    }

    if (v6)
    {
      return 0;
    }

    sub_23946EDF8(v8);
    if (!a1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      *a1 = 0;
    }
  }

  return v8;
}

uint64_t sub_23946F4F8(uint64_t *a1, void **a2)
{
  if (a2 && !*a2)
  {
    v5 = sub_23946F5C0(a1, 0);
    v6 = v5;
    if (v5 >= 1)
    {
      v7 = sub_23945004C(v5);
      v8 = v7;
      *a2 = v7;
      if (v7)
      {
        v6 = sub_23946F5C0(a1, &v8);
        if (v6 <= 0)
        {
          sub_239450144(*a2);
          *a2 = 0;
        }
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    return v6;
  }

  else
  {

    return sub_23946F5C0(a1, a2);
  }
}

uint64_t sub_23946F5C0(uint64_t *a1, void **a2)
{
  if (a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_23946F1CC(a1, a2);
  v6 = v5;
  if (a1)
  {
    if (v5 >= 1)
    {
      v7 = a1[17];
      if (v7)
      {
        v8 = sub_23946F868(v7, a2);
        if ((v8 & 0x80000000) != 0)
        {
          if (v4)
          {
            *a2 = v4;
          }

          return v8;
        }

        else
        {
          return (v8 + v6);
        }
      }
    }
  }

  return v6;
}

uint64_t sub_23946F644(uint64_t *a1, void **a2)
{
  sub_23940327C(*a1 + 80);
  v4 = *a1;

  return sub_2394018FC(v4, a2, byte_278A82C40);
}

uint64_t sub_23946F6A4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_23946BC28(a2);
  v5 = sub_23946BC28(a2);
  v6 = v5;
  if (v4 && v5)
  {
    sub_23946BC1C(a1[1]);
    a1[1] = v4;
    sub_23946BC1C(*(*a1 + 16));
    *(*a1 + 16) = v6;
    return 1;
  }

  else
  {
    sub_23946BC1C(v4);
    sub_23946BC1C(v6);
    return 0;
  }
}

void *sub_23946F72C(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    *result = *(a3 + 16);
  }

  if (a2)
  {
    *a2 = *(a3 + 8);
  }

  return result;
}

BOOL sub_23946F748(void *a1)
{
  v2 = sub_23946ED3C();
  *a1 = v2;
  return v2 != 0;
}

uint64_t sub_23946F7A4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a3 < 0)
  {
    sub_2394170F4(12, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", 315);
    return 0;
  }

  else
  {
    *&v9 = *a2;
    *(&v9 + 1) = a3;
    if (a5 && !sub_239408024(&v9, 536870928))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      result = sub_23946EF4C(&v9, 0);
      if (result)
      {
        v8 = result;
        *a2 = v9;
        sub_23946EDF8(*a1);
        *a1 = v8;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_23946F88C(uint64_t a1, char *__s, size_t __n)
{
  if (__s)
  {
    if (a1)
    {
      v6 = *(a1 + 136);
      if (v6 || (result = sub_239402AC0(byte_278A82D20), v6 = result, (*(a1 + 136) = result) != 0))
      {
        result = *(v6 + 16);
        if (result || (result = sub_239402F48(), (*(v6 + 16) = result) != 0))
        {

          return sub_2393FF8AC(result, __s, __n);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a1)
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          sub_239402ECC(v9);
          *(*(a1 + 136) + 16) = 0;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_23946F94C(uint64_t a1, char *__s, size_t __n)
{
  if (__s)
  {
    if (a1)
    {
      v6 = *(a1 + 136);
      if (v6 || (result = sub_239402AC0(byte_278A82D20), v6 = result, (*(a1 + 136) = result) != 0))
      {
        result = *(v6 + 24);
        if (result || (result = sub_239402EC4(), (*(v6 + 24) = result) != 0))
        {

          return sub_2393FF8AC(result, __s, __n);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a1)
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        v9 = *(v8 + 24);
        if (v9)
        {
          sub_239402ECC(v9);
          *(*(a1 + 136) + 24) = 0;
        }
      }
    }

    return 1;
  }

  return result;
}

int *sub_23946FA0C(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  result = *(v2 + 16);
  if (!a2)
  {
    goto LABEL_8;
  }

  if (!result)
  {
    goto LABEL_6;
  }

  v4 = *result;
LABEL_7:
  *a2 = v4;
LABEL_8:
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

int *sub_23946FA44(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  result = *(v2 + 24);
  if (!a2)
  {
    goto LABEL_8;
  }

  if (!result)
  {
    goto LABEL_6;
  }

  v4 = *result;
LABEL_7:
  *a2 = v4;
LABEL_8:
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t sub_23946FA7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_239450894(a2);
  if (v3)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      v4 = sub_239402AC0(byte_278A82D20);
      *(a1 + 136) = v4;
    }

    v5 = *v4;
    if (*v4 || (v5 = sub_2394574D8(), (*v4 = v5) != 0))
    {
      if (sub_2394579D0(v5, v3))
      {
        return 1;
      }
    }
  }

  sub_2393FDCD8(v3);
  return 0;
}

uint64_t sub_23946FB04(uint64_t a1, uint64_t a2)
{
  v3 = sub_239450894(a2);
  if (v3)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      v4 = sub_239402AC0(byte_278A82D20);
      *(a1 + 136) = v4;
    }

    v5 = *(v4 + 8);
    if (v5 || (v5 = sub_2394574D8(), (*(v4 + 8) = v5) != 0))
    {
      if (sub_2394579D0(v5, v3))
      {
        return 1;
      }
    }
  }

  sub_2393FDCD8(v3);
  return 0;
}

void sub_23946FB8C(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1)
  {
    if (*v1)
    {
      sub_239457574(*v1, sub_23946FC4C, sub_2393FDCD8);
      **(a1 + 136) = 0;
    }
  }
}

void sub_23946FBEC(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      sub_239457574(v3, sub_23946FC4C, sub_2393FDCD8);
      *(*(a1 + 136) + 8) = 0;
    }
  }
}

uint64_t sub_23946FC58(uint64_t result)
{
  *(result + 10) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_23946FC6C(uint64_t result, __int16 a2, int a3, __int16 a4)
{
  *result = a2;
  *(result + 2) = a3;
  *(result + 6) = a4;
  *(result + 8) = 0;
  *(result + 10) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_23946FC88(uint64_t result, __int16 a2, int a3, __int16 a4, void *a5)
{
  *result = a2;
  *(result + 2) = a3;
  *(result + 6) = a4;
  *(result + 8) = 0;
  *(result + 10) = 0;
  *(result + 16) = *a5;
  *a5 = 0;
  return result;
}

uint64_t sub_23946FCAC(uint64_t a1, uint64_t *a2)
{
  v29 = 0;
  v2 = *a2;
  if (!*a2)
  {
    return 0x360000002FLL;
  }

  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  v24 = v5;
  v25 = v5;
  v27 = 0;
  v28 = 0;
  v26 = v6;
  if (!v5)
  {
    v26 = 0;
  }

  v23 = 0;
  sub_2393D5A0C(&v24, &v29);
  sub_2393D5A68(&v24, &v23);
  sub_2393D5A0C(&v24, (a1 + 6));
  v7 = v27;
  if (!v27)
  {
    HIDWORD(v10) = v23;
    LODWORD(v10) = v23;
    *(a1 + 2) = v10 >> 16;
    *a1 = v29;
    v11 = *(*a2 + 24);
    if (v11 <= v25 - v24)
    {
      v16 = *(a1 + 16);
      if (v16)
      {
        sub_2393D96C8(v16);
      }

      LODWORD(v7) = 0;
      v8 = 0;
      *(a1 + 16) = 0;
      return v8 | v7;
    }

    sub_2393D9E54((*(*a2 + 8) + v25 - v24), v11 - (v25 - v24), 0, 0, v19);
    v12 = *(a1 + 16);
    if (v12)
    {
      sub_2393D96C8(v12);
    }

    v13 = v19[0];
    *(a1 + 16) = v19[0];
    if (!v13)
    {
      v8 = 0x4800000000;
      LODWORD(v7) = 11;
      return v8 | v7;
    }

    if (*a1 != 8 || *(a1 + 6) != 4)
    {
      LODWORD(v7) = 0;
      v8 = 0;
      return v8 | v7;
    }

    v14 = *(v13 + 8);
    v15 = *(v13 + 24);
    v19[0] = v14;
    v19[1] = v14;
    v21 = 0;
    v22 = 0;
    v20 = v15;
    if (!v14)
    {
      v20 = 0;
    }

    v18 = 0;
    sub_2393D5A0C(v19, &v18);
    v7 = v21;
    if (!v21)
    {
      LODWORD(v7) = 0;
      v8 = 0;
      v17 = v18;
      *(a1 + 10) = 1;
      *(a1 + 8) = v17;
      return v8 | v7;
    }
  }

  v8 = v7 & 0xFFFFFFFF00000000;
  return v8 | v7;
}

void *sub_23946FE8C(unsigned __int16 *a1, void *a2)
{
  v4 = sub_2393D5D60(a2, *a1, 2);
  v5 = sub_2393D5D60(v4, a1[2] | (a1[1] << 16), 4);
  sub_2393D5D60(v5, a1[3], 2);
  v6 = *(a1 + 2);
  if (v6)
  {
    sub_2393D5CDC(a2, *(v6 + 8), *(v6 + 24));
  }

  return a2;
}

uint64_t sub_23946FEFC(unsigned __int16 *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  sub_23946FE8C(a1, v2);
  return v3;
}

void sub_23946FF2C(unsigned __int16 a1@<W0>, uint64_t *a2@<X8>)
{
  sub_2393D9C18(2uLL, 0, &v26);
  if (v26)
  {
    v4 = *(v26 + 1);
    *buf = v4 + *(v26 + 3);
    v23 = sub_2393D980C(v26);
    v24 = 0;
    if (!v4)
    {
      v23 = 0;
    }

    v25 = v26;
    v26 = 0;
    sub_2393D5D60(buf, a1, 2);
    sub_2393D9FF8(buf, &v25, &v12);
    if (v26)
    {
      sub_2393D96C8(v26);
    }

    v5 = v12;
    v26 = v12;
    if (v12)
    {
      v26 = 0;
      v16 = 8;
      v17 = 0;
      v18 = 4;
      v21 = v12;
      v20 = 1;
      v19 = a1;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      sub_23946FE8C(&v16, &v12);
      sub_2393D9C18(v14, 0x26u, &v12);
      if (v26)
      {
        sub_2393D96C8(v26);
      }

      v26 = v12;
      if (v12)
      {
        v6 = *(v12 + 8);
        v7 = v6 + *(v12 + 24);
        v8 = sub_2393D980C(v12);
        v12 = v7;
        v13 = v8;
        v14 = 0;
        if (!v6)
        {
          v13 = 0;
        }

        v15 = v26;
        v26 = 0;
        sub_23946FE8C(&v16, &v12);
        sub_2393D9FF8(&v12, &v15, a2);
        if (v15)
        {
          sub_2393D96C8(v15);
        }
      }

      else
      {
        v11 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to allocate status report message", &v12, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0xBu, 1);
        }

        *a2 = v26;
        v26 = 0;
      }

      sub_2393D96C8(v5);
    }

    else
    {
      v10 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to finalize protocol data for busy status report", &v12, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0xBu, 1);
      }

      *a2 = v26;
      v26 = 0;
    }

    if (v25)
    {
      sub_2393D96C8(v25);
    }

    if (v26)
    {
      sub_2393D96C8(v26);
    }
  }

  else
  {
    v9 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Failed to allocate protocol data for busy status report", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xBu, 1);
    }

    *a2 = v26;
  }
}

uint64_t sub_239470208(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 0xFFE0FFFFFFFFuLL >> a3;
  if (a3 > 0x33)
  {
    LOBYTE(v3) = 1;
  }

  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  return v4 & 1;
}

unint64_t sub_239470294(unint64_t a1, uint64_t a2, int a3)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  if (a3 && (a1 == sub_2393D948C(51, "src/messaging/ErrorCategory.cpp", 0x3Cu) || v3 == sub_2393D948C(49, "src/messaging/ErrorCategory.cpp", 0x3Cu)))
  {
    v3 = 0;
    LODWORD(v4) = 0;
  }

  return v3 | (v4 << 32);
}

BOOL sub_239470318(unsigned int a1)
{
  result = 1;
  if ((a1 > 0x2D || ((1 << a1) & 0x200000000810) == 0) && a1 != 195)
  {
    return a1 == sub_2393D948C(65, "src/messaging/ErrorCategory.cpp", 0x51u) || a1 == sub_2393D948C(51, "src/messaging/ErrorCategory.cpp", 0x51u) || a1 == sub_2393D948C(49, "src/messaging/ErrorCategory.cpp", 0x51u) || a1 == sub_2393D948C(32, "src/messaging/ErrorCategory.cpp", 0x51u);
  }

  return result;
}

uint64_t sub_2394703F8(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(result + 8) = *(result + 8) & 0xF7FD | v3 | v2;
  return result;
}

uint64_t sub_239470428(uint64_t a1, int a2)
{
  v4 = *sub_238DE36B8((a1 + 88));
  result = sub_239495550(v4, a2, (*(a1 + 8) & 0x400) == 0);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_239470478(uint64_t a1, unsigned int a2, int a3, uint64_t *a4, _WORD *a5)
{
  sub_23947632C("src/messaging/ExchangeContext.cpp", 93);
  v10 = a2;
  v11 = a3 == 16 && a2 == 0;
  if (*(a1 + 48))
  {
    if (*(a1 + 88) == 1)
    {
      v12 = (a1 + 28);
      if (!*(a1 + 28))
      {
        sub_23953261C();
      }

      sub_2393E9648((a1 + 28));
      sub_238EA6DC0(a1, buf);
      v13 = (*(**buf + 72))(*buf) && (*a5 & 2) == 0 && !sub_2393BC2A0(a1);
      (*(**buf + 32))(*buf);
      if ((*a5 & 1) == 0 || sub_2393BC2A0(a1))
      {
        goto LABEL_15;
      }

      v23 = *(a1 + 8);
      if ((v23 & 2) != 0)
      {
        v14 = 0x7A00000000;
        v17 = 3;
      }

      else
      {
        *(a1 + 8) = v23 | 0x802;
        if (!*(a1 + 32))
        {
LABEL_15:
          v16 = 0;
LABEL_16:
          if (!sub_2393BC2A0(a1) || (*(a1 + 8) & 1) != 0)
          {
            if (*(a1 + 88))
            {
              sub_238EA6DC0(a1, buf);
              v18 = (a1 + 8);
              v19 = sub_2394719C0(*(a1 + 56), *(*(a1 + 48) + 88), buf, *(a1 + 112), *(a1 + 8) & 1, a1 + 8, v13, v10, a3, a4);
              v17 = v19;
              v14 = v19 & 0xFFFFFFFF00000000;
              if (v19)
              {
                if (v16)
                {
                  v20 = *(*(*(a1 + 48) + 88) + 24);
                  if (v20)
                  {
                    (*(*v20 + 72))(v20, sub_2394710BC, a1);
                  }

                  *v18 &= 0xF7FDu;
                }

                if ((*(**buf + 16))(*buf) == 2 && *(sub_239495304(*buf) + 57) == 2)
                {
                  v21 = sub_239495304(*buf);
                  sub_239493108(v21);
                }
              }

              else if (!v11)
              {
                v25 = *v18;
                *v18 &= ~0x40u;
                if ((v25 & 0x82) == 0)
                {
                  sub_239470A14(a1);
                }
              }

              (*(**buf + 32))(*buf);
            }

            else
            {
              v22 = sub_2393D9044(5u);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "WARNING: We shouldn't be sending a message on an exchange that has no attached session...", buf, 2u);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(5u, 1);
              }

              v14 = 0x9E00000000;
              v17 = 119;
            }
          }

          else
          {
            v14 = 0x9000000000;
            v17 = 172;
          }

          goto LABEL_42;
        }

        v24 = sub_23947083C(a1);
        v17 = v24;
        if (!v24)
        {
          v16 = 1;
          goto LABEL_16;
        }

        v14 = v24 & 0xFFFFFFFF00000000;
        *(a1 + 8) &= 0xF7FDu;
      }

LABEL_42:
      sub_2393E960C(v12);
      v15 = v17;
      return v15 | v14;
    }

    v14 = 0x6300000000;
    v15 = 2;
  }

  else
  {
    v14 = 0x6200000000;
    v15 = 172;
  }

  return v15 | v14;
}

uint64_t sub_23947083C(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 88) + 24);
  if (v2)
  {
    return (*(*v2 + 40))(v2, *(a1 + 32), sub_2394710BC);
  }

  else
  {
    return 0x1B3000000ACLL;
  }
}

uint64_t sub_2394708B4(uint64_t a1)
{
  result = *(*(*(a1 + 48) + 88) + 24);
  if (result)
  {
    return (*(*result + 72))(result, sub_2394710BC, a1);
  }

  return result;
}

void sub_239470900(uint64_t a1)
{
  if ((*(a1 + 8) & 0xC2) == 0)
  {
    sub_239470A14(a1);
  }
}

uint64_t sub_239470918(uint64_t result, int a2)
{
  v3 = (result + 8);
  v2 = *(result + 8);
  if ((v2 & 0x80) == 0)
  {
    v5 = result;
    *(result + 8) = v2 | 0x80;
    v6 = *(result + 40);
    if (v6)
    {
      (*(*v6 + 32))(v6, v5);
    }

    *(v5 + 40) = 0;
    result = sub_23947398C(v3);
    if (a2)
    {
      result = sub_23947554C(*(v5 + 48) + 96, v3);
    }

    if ((*v3 & 2) != 0)
    {
      result = *(*(*(v5 + 48) + 88) + 24);
      if (result)
      {
        v7 = *(*result + 72);

        return v7();
      }
    }
  }

  return result;
}

void sub_239470A14(uint64_t a1)
{
  if (!*(a1 + 48) || (v1 = (a1 + 28), !*(a1 + 28)))
  {
    sub_2395326B4();
  }

  sub_239470918();

  sub_2393E960C(v1);
}

void sub_239470A64(uint64_t a1)
{
  if (!*(a1 + 48) || (v1 = (a1 + 28), !*(a1 + 28)))
  {
    sub_23953274C();
  }

  sub_239470918(a1, 1);

  sub_2393E960C(v1);
}

uint64_t sub_239470AC4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t *a4, int a5, uint64_t a6, int a7)
{
  sub_239473948(a1 + 8);
  *a1 = &unk_284BBAF90;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  v14 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = sub_239470C68(a7, a6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = a1;
  *(a1 + 64) = &unk_284BBB040;
  if (*(a1 + 48))
  {
    sub_2395327E4(a1);
  }

  *(a1 + 48) = a2;
  *(a1 + 112) = a3;
  sub_239495C6C((a1 + 64), a4);
  v15 = *(a1 + 8);
  if (a5)
  {
    v16 = v15 | 1;
    if ((a7 & 1) == 0)
    {
      *v14 = a6;
      v17 = v16 & 0xFEBF | 0x40;
      goto LABEL_10;
    }
  }

  else
  {
    if ((a7 & 1) == 0)
    {
      v17 = v15 & 0xFEFE;
      goto LABEL_9;
    }

    v16 = v15 & 0xFFFE;
  }

  v17 = v16 | 0x100;
LABEL_9:
  *v14 = a6;
LABEL_10:
  *(a1 + 8) = v17 & 0xFFEF;
  if ((*(**a4 + 72))())
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFB | v18;
  v19 = sub_2393DA0AC();
  v20 = *(v19 + 4) + 1;
  *(v19 + 4) = v20;
  if (*(sub_2393DA0B8() + 4) < v20)
  {
    *(sub_2393DA0B8() + 4) = v20;
  }

  return a1;
}

uint64_t *sub_239470C68(int a1, uint64_t a2)
{
  if (a1)
  {
    return sub_239471530();
  }

  if (a2)
  {
    return (*(*a2 + 40))(a2);
  }

  return sub_2392159DC();
}

uint64_t sub_239470CA4(uint64_t a1)
{
  *a1 = &unk_284BBAF90;
  if (!*(a1 + 48) || *(a1 + 28))
  {
    sub_23953291C(a1);
  }

  if ((*(a1 + 8) & 0x80) == 0)
  {
    sub_239532880(a1);
  }

  sub_239470918(a1, 0);
  *(a1 + 48) = 0;
  v2 = sub_2393DA0AC();
  --*(v2 + 4);
  sub_239495784(a1 + 64);
  return a1;
}

void sub_239470D3C(uint64_t a1)
{
  sub_239470CA4(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_239470D74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 112) == *(a4 + 2))
  {
    v6 = *(a1 + 88);
    v5 = (a1 + 88);
    if (v6 != 1 || *sub_238DE36B8(v5) != *a2)
    {
      goto LABEL_4;
    }

    v11 = (*(**(a1 + 56) + 16))(*(a1 + 56));
    if (*(a3 + 44))
    {
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else if (((v11 ^ (*(a3 + 46) != 0)) & 1) == 0)
    {
LABEL_12:
      v9 = *(a4 + 8) ^ *(a1 + 8);
      return v9 & 1;
    }

LABEL_4:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  LOBYTE(v9) = 0;
  return v9 & 1;
}

void sub_239470E48(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if ((v2 & 0x200) == 0)
  {
    if ((v2 & 0x80) != 0)
    {
      v6 = *(a1 + 48) + 96;

      sub_23947554C(v6, v1);
    }

    else
    {
      sub_2393E9648((a1 + 28));
      v4 = *(a1 + 8);
      if ((v4 & 0x40) != 0)
      {
        sub_239470918(a1, 1);
      }

      else
      {
        if ((v4 & 2) != 0)
        {
          v5 = *(*(*(a1 + 48) + 88) + 24);
          if (v5)
          {
            (*(*v5 + 72))(v5, sub_2394710BC, a1);
          }

          sub_239470F3C(a1, 0);
        }

        sub_239470A64(a1);
      }

      sub_2393E960C((a1 + 28));
    }
  }
}

void sub_239470F3C(uint64_t a1, int a2)
{
  v4 = *(a1 + 8) & 0x800;
  *(a1 + 8) &= 0xF7FDu;
  sub_2393E9648((a1 + 28));
  if (*(a1 + 88) == 1 && v4 != 0)
  {
    v6 = sub_238DE36B8((a1 + 88));
    if ((*(**v6 + 16))(*v6) == 2)
    {
      v7 = sub_238DE36B8((a1 + 88));
      if (*(sub_239495304(*v7) + 57) == 2)
      {
        v8 = sub_238DE36B8((a1 + 88));
        v9 = sub_239495304(*v8);
        sub_239493108(v9);
      }
    }

    v10 = sub_238DE36B8((a1 + 88));
    v11 = *v10 + 8;
    v12 = *(*v10 + 16);
    if (v12 != v11)
    {
      do
      {
        v13 = *(v12 + 8);
        if (v12)
        {
          v14 = v12 - 8;
        }

        else
        {
          v14 = 0;
        }

        (*(*v14 + 32))(v14);
        v12 = v13;
      }

      while (v13 != v11);
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(*v15 + 24))(v15, a1);
  }

  if (a2 && (*(a1 + 8) & 0xC2) == 0)
  {
    sub_239470A14(a1);
  }

  sub_2393E960C((a1 + 28));
}

void sub_2394710BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_239470F3C(a2, 1);
  }
}

unint64_t sub_2394710D0(uint64_t a1, int a2, unsigned __int8 *a3, int a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  sub_2393E9648((a1 + 28));
  if (*(a3 + 2) | *(a3 + 3))
  {
    v10 = 0;
  }

  else
  {
    v10 = *a3 == 16;
  }

  v11 = sub_238DE36B8((a1 + 88));
  if ((*(**v11 + 72))(*v11))
  {
    if ((*(**(a1 + 56) + 32))(*(a1 + 56)))
    {
      if ((a4 & 1) == 0 && (a3[8] & 2) != 0 && a3[12] == 1)
      {
        v12 = sub_238DE3698(a3 + 12);
        sub_239473DD8(a1 + 8, *v12);
      }

      if ((a3[8] & 4) != 0)
      {
        sub_239473F20(a1 + 8, a2, a4);
      }
    }

    if ((*(a1 + 8) & 0x10) != 0 && !*(a1 + 40))
    {
      v29 = sub_23947398C(a1 + 8);
      v21 = v29;
      if (v29)
      {
        v20 = HIDWORD(v29);
        goto LABEL_35;
      }
    }

    if (((v10 | a4) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v21 = 0;
    v20 = 0;
    goto LABEL_36;
  }

  if (a4)
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = sub_238DE36B8((a1 + 88));
  v14 = (*(**v13 + 72))(*v13);
  v15 = *(a1 + 8);
  if (!v14)
  {
    goto LABEL_18;
  }

  if ((*(a1 + 8) & 0x100) != 0)
  {
LABEL_34:
    v20 = 0;
    v21 = 0;
    goto LABEL_35;
  }

  if ((v15 & 8) == 0)
  {
LABEL_18:
    *(a1 + 8) = v15 | 0x400;
    if ((*(**(a1 + 56) + 24))(*(a1 + 56), *(a3 + 1), *a3))
    {
      v16 = *(a1 + 8);
      if ((v16 & 2) != 0)
      {
        v17 = *(*(*(a1 + 48) + 88) + 24);
        if (v17)
        {
          (*(*v17 + 72))(v17, sub_2394710BC, a1);
          v16 = *(a1 + 8);
        }

        *(a1 + 8) = v16 & 0xF7FD;
      }

      v18 = *(a1 + 40);
      if (v18)
      {
        v19 = (*(*v18 + 16))(v18, a1, a3, a5);
        v20 = HIDWORD(v19);
        v21 = v19;
        goto LABEL_35;
      }
    }

    v22 = *(a3 + 1);
    v23 = *a3;
    v24 = sub_2393D9044(5u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 112);
      if (*(a1 + 8))
      {
        v26 = 105;
      }

      else
      {
        v26 = 114;
      }

      *buf = 67110400;
      v33 = v23;
      v34 = 1024;
      v35 = v22;
      v36 = 1024;
      v37 = HIWORD(v22);
      v38 = 1024;
      v39 = a2;
      v40 = 1024;
      v41 = v25;
      v42 = 1024;
      v43 = v26;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Dropping unexpected message of type 0x%x with protocolId (%u, %u) and MessageCounter:%u on exchange %u%c", buf, 0x26u);
    }

    if (sub_2393D5398(1u))
    {
      *(a1 + 8);
      v31 = *(a1 + 112);
      sub_2393D5320(5u, 1);
    }

    goto LABEL_34;
  }

  v30 = sub_2393D9044(5u);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "Dropping message without piggyback ack when we are waiting for an ack.", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(5u, 1);
  }

  v21 = 3;
  v20 = 587;
LABEL_35:
  if ((v10 | a4))
  {
LABEL_36:
    if (*(a1 + 40))
    {
      goto LABEL_39;
    }
  }

  if ((*(a1 + 8) & 0xC2) == 0)
  {
    sub_239470A14(a1);
  }

LABEL_39:
  sub_2393E960C((a1 + 28));
  v27 = *MEMORY[0x277D85DE8];
  return v21 | (v20 << 32);
}

uint64_t *sub_239471530()
{
  if ((atomic_load_explicit(&qword_27DF77360, memory_order_acquire) & 1) == 0)
  {
    sub_2395329B8();
  }

  return &qword_27DF77358;
}

uint64_t sub_239471568(uint64_t a1)
{
  v1 = (a1 + 88);
  if (*(a1 + 88) == 1 && (v3 = sub_238DE36B8((a1 + 88)), (*(**v3 + 16))(*v3) == 2))
  {
    if (*v1 == 1)
    {
      v11 = *sub_238DE36B8(v1);
      (*(*v11 + 24))(v11);
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    v10[0] = v4;
    *(a1 + 8) |= 0x200u;
    v7 = *(*(a1 + 48) + 88);
    v8 = sub_238DE36B8(v1);
    sub_239497630(v7, *(*v8 + 24));
    v9 = sub_238EA9094(v10);
    result = sub_239471718((v1 - 24), v9);
    *(a1 + 8) &= ~0x200u;
    if (v10[0] == 1)
    {
      return (*(*v11 + 32))(v11);
    }
  }

  else
  {
    v5 = sub_2393D9044(5u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "AbortAllOtherCommunicationOnFabric called when we don't have a PASE/CASE session", v10, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      return sub_2393D5320(5u, 1);
    }
  }

  return result;
}

void *sub_239471718(uint64_t a1, uint64_t *a2)
{
  if (*(sub_239495304(*a2) + 56) != 4)
  {
    sub_239532A20();
  }

  return sub_239495C1C(a1, a2);
}

uint64_t sub_23947176C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t sub_23947179C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void sub_2394717CC(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239532AB8();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void sub_23947187C(uint64_t a1)
{
  sub_239495784(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394718B4(uint64_t a1)
{
  sub_239495804(a1);
  v2 = *(**(a1 + 40) + 24);

  return v2();
}

uint64_t sub_23947190C(uint64_t a1, uint64_t *a2)
{
  result = (*(**(a1 + 40) + 16))(*(a1 + 40));
  if (!result)
  {
    sub_239495804(a1);

    return sub_239495C6C(a1, a2);
  }

  return result;
}

uint64_t sub_2394719C0(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5, uint64_t a6, int a7, unsigned int a8, unsigned __int8 a9, uint64_t *a10)
{
  if (!(*(*a1 + 24))(a1, a8, a9))
  {
    return 0x290000002FLL;
  }

  v33 = 0;
  v30 = a4;
  v31 = a8;
  v29[0] = a9;
  v18 = a5 | (16 * (a8 != 0));
  v32 = v18;
  v19 = (*(**a3 + 72))();
  if (!v19)
  {
    goto LABEL_7;
  }

  if ((*a6 & 0x20) != 0)
  {
    *a6 &= ~0x10u;
    v20 = *(a6 + 16);
    v33 = 1;
    v34 = v20;
    v18 |= 2u;
    v32 = v18;
  }

  v19 = (*(*a1 + 32))(a1);
  if (v19 && (*a6 & 4) != 0 && (v19 = sub_239473960(a6)) != 0 && a7)
  {
    v24 = sub_239473960(a6);
    v32 = v18 | 4;
    v28 = 0;
    v21 = sub_23947478C(v24, a6, &v28);
    if (!v21)
    {
      v25 = v28;
      v21 = sub_2394963B0(a2, a3, v29, a10, (v28 + 8));
      if (v21 || (v26 = sub_239496E3C(a2, a3, v25 + 1), v21 = sub_2394753D8(v26, v27, a4, a5), v21))
      {
        v22 = v21 & 0xFFFFFFFF00000000;
        if (v25)
        {
          sub_23947539C(v24, v25);
        }

        return v21 | v22;
      }

      sub_2394749AC(v24, v25);
      goto LABEL_18;
    }
  }

  else
  {
LABEL_7:
    v21 = sub_239471C04(v19, a2, a3, v29, a10);
    if (!v21)
    {
LABEL_18:
      v22 = 0;
      LODWORD(v21) = 0;
      return v21 | v22;
    }
  }

  v22 = v21 & 0xFFFFFFFF00000000;
  return v21 | v22;
}

unint64_t sub_239471C04(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, uint64_t *a5)
{
  a4[8] &= ~4u;
  v12 = 0;
  v7 = sub_2394963B0(a2, a3, a4, a5, &v12);
  v8 = v7;
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = sub_239496E3C(a2, a3, &v12);
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    if (v10)
    {
      v9 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v12)
  {
    sub_2393D96C8(v12);
  }

  return v9 | v8;
}

uint64_t sub_239471CB4(uint64_t a1)
{
  *a1 = &unk_284BBB0F8;
  *(a1 + 8) = &unk_284BBB130;
  *(a1 + 24) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 56) = a1 + 48;
  *(a1 + 64) = a1 + 48;
  sub_2394742E0(a1 + 96, a1 + 32);
  for (i = 184; i != 312; i += 16)
  {
    *(a1 + i) = -1;
  }

  *(a1 + 20) = 0;
  return a1;
}

uint64_t sub_239471D60(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 20))
  {
    return 0x3F00000003;
  }

  *(a1 + 88) = a2;
  *(a1 + 16) = sub_2393F5718();
  *(a1 + 18) = 0;
  for (i = 192; i != 320; i += 16)
  {
    *(a1 + i) = 0;
  }

  a2[29] = a1;
  a2[30] = a1 + 8;
  sub_23942E728(a1 + 96, a2[3]);
  result = 0;
  *(a1 + 20) = 1;
  return result;
}

uint64_t sub_239471DEC(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = result;
    result = sub_239474334(result + 96);
    v2 = *(v1 + 88);
    if (v2)
    {
      *(v2 + 232) = 0;
      *(v1 + 88) = 0;
    }

    *(v1 + 20) = 0;
  }

  return result;
}

void *sub_239471E34(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int8 a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v15 = a4;
  if ((*(**a2 + 40))())
  {
    *buf = a1;
    v6 = *(a1 + 16);
    *(a1 + 16) = v6 + 1;
    v14 = v6;
    result = sub_239471FE0((a1 + 32), buf, &v14, a2, &v15, &v16);
  }

  else
  {
    v8 = (*(**a2 + 48))();
    v10 = v9;
    v11 = sub_2393D9044(5u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_239495678(*a2);
      *buf = 67109888;
      *&buf[4] = v12;
      v18 = 1024;
      v19 = HIDWORD(v8);
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "NewContext failed: session %u to <%08X%08X, %d> is inactive", buf, 0x1Au);
    }

    if (sub_2393D5398(1u))
    {
      sub_239495678(*a2);
      sub_2393D5320(5u, 1);
    }

    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_239471FE0(unint64_t *a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  v12 = sub_2393D52C4(0x78uLL);
  v13 = v12;
  if (v12)
  {
    sub_239470CA0(v12, *a2, *a3, a4, *a5, *a6, 0);
    v14 = sub_2393D52C4(0x18uLL);
    if (v14)
    {
      *v14 = v13;
      v14[1] = a1 + 2;
      v14[2] = 0;
      v15 = a1[4];
      v14[2] = v15;
      *(v15 + 8) = v14;
      a1[4] = v14;
      v16 = a1[1];
      v17 = *a1 + 1;
      *a1 = v17;
      if (v17 > v16)
      {
        a1[1] = v17;
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

uint64_t sub_2394720B8(uint64_t a1, int a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a1 + 184);
  v6 = 128;
  do
  {
    if (*(v5 + 1))
    {
      if (*v5 == a2 && __PAIR64__(v5[2], v5[1]) == __PAIR64__(a3, HIWORD(a2)))
      {
        v10 = 0;
        v11 = 0;
        *(v5 + 1) = a4;
        return v11 | v10;
      }
    }

    else if (!v4)
    {
      v4 = v5;
    }

    v5 += 8;
    v6 -= 16;
  }

  while (v6);
  if (v4)
  {
    *(v4 + 1) = a4;
    *v4 = a2;
    v4[2] = a3;
    v7 = sub_2393DA0AC();
    v8 = *(v7 + 5) + 1;
    *(v7 + 5) = v8;
    if (*(sub_2393DA0B8() + 5) >= v8)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v9 = sub_2393DA0B8();
      v10 = 0;
      v11 = 0;
      *(v9 + 5) = v8;
    }
  }

  else
  {
    v10 = 0xA200000000;
    v11 = 6;
  }

  return v11 | v10;
}

uint64_t sub_2394721C8(uint64_t a1, int a2, unsigned __int16 a3)
{
  v3 = (a1 + 192);
  v4 = 128;
  do
  {
    if (*v3 && *(v3 - 4) == a2 && __PAIR64__(*(v3 - 2), *(v3 - 3)) == __PAIR64__(a3, HIWORD(a2)))
    {
      *v3 = 0;
      v5 = sub_2393DA0AC();
      result = 0;
      --*(v5 + 5);
      return result;
    }

    v3 += 2;
    v4 -= 16;
  }

  while (v4);
  return 0xB900000007;
}

uint64_t sub_239472264(unint64_t *a1, unsigned int *a2, unsigned __int8 *a3, uint64_t *a4, int a5, uint64_t a6)
{
  v107 = *MEMORY[0x277D85DE8];
  v85 = sub_2394E0FE8(*(a3 + 1));
  v84 = sub_2394E101C(*(a3 + 1), *a3);
  v86 = a5;
  if (*(a2 + 24) == 1)
  {
    v10 = sub_238DE36B8(a2 + 24);
  }

  else
  {
    if ((*(**a4 + 16))() != 2)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = (sub_239495304(*a4) + 64);
  }

  v11 = *v10;
LABEL_7:
  __str[0] = 0;
  if (a3[12] == 1)
  {
    v12 = sub_238DE3698(a3 + 12);
    snprintf(__str, 0x14uLL, " (Ack:%u)", *v12);
  }

  if ((*(**a4 + 16))() != 2)
  {
    goto LABEL_13;
  }

  v13 = *(a1[11] + 32);
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = sub_239495304(*a4);
  v15 = sub_2394A7FC0(v13, *(v14 + 24));
  if (v15)
  {
    LODWORD(v13) = *(v15 + 16);
  }

  else
  {
LABEL_13:
    LODWORD(v13) = 0;
  }

LABEL_14:
  snprintf(v105, 8uLL, "%04X:%02X", *(a3 + 3), *a3);
  v16 = *(*a4 + 24);
  v17 = (*(**a4 + 48))() >> 32;
  v18 = (*(**a4 + 48))();
  snprintf(v104, 0x37uLL, "from %u:%08X%08X [%04X] to %08X%08X", v16, v17, v18, v13, HIDWORD(v11), v11);
  v19 = sub_2393D9044(5u);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (a3[8])
    {
      v20 = 114;
    }

    else
    {
      v20 = 105;
    }

    v81 = v20;
    v82 = *(a3 + 1);
    v21 = sub_239495678(*a4);
    v22 = *a2;
    v23 = sub_23949571C(a4);
    v24 = a1;
    v25 = *(*a6 + 16);
    v26 = sub_2394BE648(a2);
    v27 = a2;
    v28 = *(a2 + 22) | *(a2 + 46);
    LODWORD(buf) = 67111682;
    v29 = v25 + v26 + sub_2394BE684(a3);
    a1 = v24;
    v61 = v28 == 0;
    a2 = v27;
    DWORD1(buf) = v82;
    v30 = !v61;
    WORD4(buf) = 1024;
    *(&buf + 10) = v81;
    HIWORD(buf) = 1024;
    *v94 = v21;
    *&v94[4] = 1024;
    *&v94[6] = v22;
    *&v94[10] = 2080;
    *&v94[12] = __str;
    *&v94[20] = 2080;
    *&v94[22] = v23;
    *&v94[30] = 2080;
    v95 = v104;
    v96 = 2080;
    v97 = v105;
    v98 = 2080;
    v99 = v85;
    v100 = 2080;
    v101 = v84;
    v102 = 1024;
    v103 = v29 + 16 * v30;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, ">>> [E:%u%c S:%u M:%u%s] (%s) Msg RX %s --- Type %s (%s:%s) (B:%u)", &buf, 0x5Cu);
  }

  if (sub_2393D5398(2u))
  {
    v83 = *(a3 + 1);
    v31 = v19;
    v32 = a1;
    v33 = a3[8];
    v34 = sub_239495678(*a4);
    v35 = a2;
    v36 = *a2;
    sub_23949571C(a4);
    v37 = *(*a6 + 16);
    sub_2394BE648(v35);
    v38 = (*(v35 + 22) | *(v35 + 46)) != 0;
    sub_2394BE684(a3);
    v61 = (v33 & 1) == 0;
    a1 = v32;
    v19 = v31;
    v79 = v34;
    a2 = v35;
    if (v61)
    {
      v39 = 105;
    }

    else
    {
      v39 = 114;
    }

    v77 = v83;
    v78 = v39;
    sub_2393D5320(5u, 2);
  }

  v92 = v86 == 0;
  if (*(a2 + 46) == 1)
  {
    v40 = *(a2 + 40);
    v41 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v40 == 1)
    {
      if (v41)
      {
        v42 = *sub_238E0A934(a2 + 40);
        v43 = *sub_238E0A934(a2 + 40);
        LODWORD(buf) = 67109376;
        DWORD1(buf) = v42;
        WORD4(buf) = 1024;
        *(&buf + 10) = v43;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Received Groupcast Message with GroupId 0x%04X (%d)", &buf, 0xEu);
      }

      if (sub_2393D5398(2u))
      {
        v77 = *sub_238E0A934(a2 + 40);
        v78 = *sub_238E0A934(a2 + 40);
LABEL_38:
        sub_2393D5320(5u, 2);
      }
    }

    else
    {
      if (v41)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Received Groupcast Message without GroupId", &buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    LOBYTE(v91) = 0;
    *&buf = a4;
    *(&buf + 1) = a2;
    *v94 = a3;
    *&v94[8] = &v92;
    *&v94[16] = a6;
    *&v94[24] = &v91;
    result = sub_2393D6A10(a1 + 6, &buf, sub_239473674);
    if (v91)
    {
      goto LABEL_104;
    }
  }

  result = (*(**a4 + 40))(*a4, v44, v45, v46, v47, v48, v49, v50, v77, v78, v79);
  if ((result & 1) == 0)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Dropping message on inactive session that does not match an existing exchange", &buf, 2u);
    }

    result = sub_2393D5398(2u);
    if (result)
    {
      v62 = 2;
LABEL_59:
      result = sub_2393D5320(5u, v62);
      goto LABEL_104;
    }

    goto LABEL_104;
  }

  v52 = v92;
  v53 = a3[8];
  if (v92 || (a3[8] & 1) == 0)
  {
    if ((a3[8] & 4) != 0)
    {
LABEL_103:
      result = sub_239472E20(a1, a2, a3, a4, v52, a6);
      goto LABEL_104;
    }

    if (*(a3 + 2) || *(a3 + 3) || *a3 != 16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v63 = sub_2393C9138();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v63;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        sub_2393C9138();
LABEL_95:
        v62 = 1;
        goto LABEL_59;
      }
    }

    goto LABEL_104;
  }

  v54 = 0;
  v55 = 0;
  do
  {
    v56 = &a1[v54];
    v57 = a1[v54 + 24];
    if (v57)
    {
      v59 = *(v56 + 46);
      v58 = (v56 + 23);
      v60 = HIWORD(v59);
      v61 = *(a3 + 2) == v59 && *(a3 + 3) == v60;
      if (v61)
      {
        if (WORD2(a1[v54 + 23]) == *a3)
        {
          v55 = &a1[v54 + 23];
          goto LABEL_69;
        }

        if (WORD2(a1[v54 + 23]) == 0xFFFF)
        {
          v55 = v58;
        }
      }
    }

    v54 += 2;
  }

  while (v54 != 16);
  if (!v55)
  {
    goto LABEL_103;
  }

  v57 = *(v55 + 8);
LABEL_69:
  v91 = 0;
  if ((*(*v57 + 16))(v57, a3, a4, &v91))
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v64 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v64;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(5u, 1);
    }

LABEL_102:
    v52 = v92;
    goto LABEL_103;
  }

  *&buf = a1;
  v90 = *(a3 + 1);
  v89 = 0;
  v65 = sub_239471FE0(a1 + 4, &buf, &v90, a4, &v89, &v91);
  if (!v65)
  {
    if (v91)
    {
      (*(**(v55 + 8) + 32))(*(v55 + 8));
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v74 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v74;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      goto LABEL_94;
    }

    goto LABEL_104;
  }

  v66 = v65;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v67 = *(v66 + 112);
    v68 = sub_2394703E0(v66);
    v69 = *(v66 + 40);
    LODWORD(buf) = 67109632;
    if (v68)
    {
      v70 = 105;
    }

    else
    {
      v70 = 114;
    }

    DWORD1(buf) = v67;
    WORD4(buf) = 1024;
    *(&buf + 10) = v70;
    HIWORD(buf) = 2048;
    *v94 = v69;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_INFO, "Handling via exchange: %u%c, Delegate: %p", &buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    v71 = *(v66 + 112);
    sub_2394703E0(v66);
    v80 = *(v66 + 40);
    sub_2393D5320(5u, 3);
  }

  v72 = (*(**(v66 + 56) + 16))(*(v66 + 56));
  if (!*(a2 + 22))
  {
    if (v72 == (*(a2 + 46) != 0))
    {
      goto LABEL_84;
    }

LABEL_97:
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v75 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v75;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(5u, 1);
    }

    sub_239470A14(v66);
    goto LABEL_102;
  }

  if ((v72 & 1) == 0)
  {
    goto LABEL_97;
  }

LABEL_84:
  result = sub_2394710D0(v66, *a2, a3, v92, a6);
  if (result)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v73 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v73;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
LABEL_94:
      sub_2393C9138();
      goto LABEL_95;
    }
  }

LABEL_104:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}