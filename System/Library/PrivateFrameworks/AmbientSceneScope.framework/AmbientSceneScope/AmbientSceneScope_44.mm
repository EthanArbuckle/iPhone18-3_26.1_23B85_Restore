uint64_t sub_23F2B01C0(unsigned int a1)
{
  v1 = 201;
  v2 = &unk_23F345F18;
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &unk_23F345F18)
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t sub_23F2B0228(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v6 = *(a1 + 12);
      if (v6 != 2)
      {
        if (v6 == 1)
        {
          if (a3 == 2)
          {
            return 0;
          }

          if (a3 != 13)
          {
LABEL_45:
            *(a1 + 8) = 0;
            v4 = *(a1 + 4);
            if (a3 == 5 && !*(a1 + 4))
            {
              return 0;
            }

            if ((v4 > 5 || ((1 << v4) & 0x23) == 0) && (a3 > 5 || ((1 << a3) & 0x23) == 0))
            {
              if (*(a1 + 4) <= 6u)
              {
                if (v4 != 4)
                {
LABEL_14:
                  if (v4 != 6)
                  {
LABEL_78:
                    if ((a3 != 11 || v4 != 11) && (a3 > 0xD || ((1 << a3) & 0x2404) == 0) && v4 != 8)
                    {
                      goto LABEL_74;
                    }

                    return 0;
                  }

LABEL_69:
                  if ((a3 - 11) < 2u)
                  {
                    return 0;
                  }

                  goto LABEL_78;
                }

                goto LABEL_53;
              }

LABEL_67:
              if (v4 != 7)
              {
                if (v4 != 12)
                {
                  goto LABEL_78;
                }

                goto LABEL_69;
              }

              v10 = a3 - 2;
              if (a3 - 2 >= 0xC)
              {
LABEL_74:
                if (!sub_23F2B01C0(a2))
                {
                  v16 = 1;
                  v17 = 16;
                  v15 = a1;
                  goto LABEL_91;
                }

                v15 = a1;
                if (a3 == 9)
                {
                  *(a1 + 8) = 3;
                  return 1;
                }

                if (a3 == 3)
                {
                  v16 = 2;
                  v17 = 12;
LABEL_91:
                  *(v15 + 8) = v16;
                  *(v15 + v17) = 0;
                  return 1;
                }

                return 1;
              }

              v11 = 2817;
LABEL_73:
              if ((v11 >> v10))
              {
                return 0;
              }

              goto LABEL_74;
            }

            return 1;
          }
        }

        else if (a3 != 13)
        {
          if (a3 == 2)
          {
            *(a1 + 12) = 1;
            return 0;
          }

          goto LABEL_45;
        }

        *(a1 + 12) = 2;
        return 0;
      }

      if (a3 == 3)
      {
        *(a1 + 12) = 0;
        return 0;
      }

      *(a1 + 8) = 0;
      v12 = *(a1 + 4);
      if (a3 == 5 && !*(a1 + 4))
      {
        return 0;
      }

      if (v12 <= 5 && ((1 << v12) & 0x23) != 0 || a3 <= 5 && ((1 << a3) & 0x23) != 0)
      {
        return 1;
      }

      if (*(a1 + 4) > 6u)
      {
        if (v12 != 7)
        {
          if (v12 != 12)
          {
            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v25 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v26 = 2817;
          goto LABEL_122;
        }
      }

      else
      {
        if (v12 != 4)
        {
          if (v12 != 6)
          {
LABEL_114:
            if (a3 == 11 && v12 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v12 == 8)
            {
              return 0;
            }

            goto LABEL_123;
          }

LABEL_107:
          if ((a3 - 11) < 2u)
          {
            return 0;
          }

          goto LABEL_114;
        }

        v25 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v26 = 3381;
LABEL_122:
          if ((v26 >> v25))
          {
            return 0;
          }
        }
      }

LABEL_123:
      if (!sub_23F2B01C0(a2))
      {
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        return 1;
      }

      if (a3 == 9)
      {
        *(a1 + 8) = 3;
        return 1;
      }

      return 1;
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }

    v8 = *(a1 + 4);
    if (a3 == 5 && !*(a1 + 4))
    {
      return 0;
    }

    v9 = v8 > 5 || ((1 << v8) & 0x23) == 0;
    if (!v9 || a3 <= 5 && ((1 << a3) & 0x23) != 0)
    {
      return 1;
    }

    if (*(a1 + 4) > 6u)
    {
      if (v8 != 7)
      {
        if (v8 != 12)
        {
          goto LABEL_92;
        }

        goto LABEL_86;
      }

      v18 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_102;
      }

      v19 = 2817;
    }

    else
    {
      if (v8 != 4)
      {
        if (v8 != 6)
        {
LABEL_92:
          if (a3 == 11 && v8 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v8 == 8)
          {
            return 0;
          }

          goto LABEL_102;
        }

LABEL_86:
        if ((a3 - 11) < 2u)
        {
          return 0;
        }

        goto LABEL_92;
      }

      v18 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_102;
      }

      v19 = 3381;
    }

    if ((v19 >> v18))
    {
      return 0;
    }

LABEL_102:
    if (sub_23F2B01C0(a2))
    {
      if (a3 != 3)
      {
        return 1;
      }

      v22 = a1;
      v23 = 2;
      v24 = 12;
    }

    else
    {
      v23 = 1;
      v24 = 16;
      v22 = a1;
    }

    *(v22 + 8) = v23;
    *(v22 + v24) = 0;
    return 1;
  }

  if (!v3)
  {
    v4 = *(a1 + 4);
    if (a3 == 5 && !*(a1 + 4))
    {
      return 0;
    }

    v5 = v4 > 5 || ((1 << v4) & 0x23) == 0;
    if (v5 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
    {
      if (*(a1 + 4) <= 6u)
      {
        if (v4 != 4)
        {
          goto LABEL_14;
        }

LABEL_53:
        v10 = a3 - 2;
        if (a3 - 2 >= 0xC)
        {
          goto LABEL_74;
        }

        v11 = 3381;
        goto LABEL_73;
      }

      goto LABEL_67;
    }

    return 1;
  }

  return sub_23F2B077C(a1, a2, a3);
}

uint64_t sub_23F2B077C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 201;
  v4 = &unk_23F345F18;
  do
  {
    v5 = v3 >> 1;
    v6 = &v4[v3 >> 1];
    v8 = *v6;
    v7 = v6 + 1;
    v3 += ~(v3 >> 1);
    if (((a2 << 11) | 0x7FF) >= v8)
    {
      v4 = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  while (v3);
  if (v4 == &unk_23F345F18 || ((v9 = *(v4 - 1), v10 = ((v9 >> 2) & 0x1FF) + (v9 >> 11), v11 = v9 & 3, v11 != 3) ? (v12 = v10 >= a2) : (v12 = 0), !v12))
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 4);
    if (a3 == 5 && !*(a1 + 4))
    {
      return 0;
    }

    if ((v13 > 5 || ((1 << v13) & 0x23) == 0) && (a3 > 5 || ((1 << a3) & 0x23) == 0))
    {
      if (*(a1 + 4) > 6u)
      {
        if (v13 != 7)
        {
          if (v13 != 12)
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        v16 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v17 = 2817;
          goto LABEL_53;
        }
      }

      else
      {
        if (v13 != 4)
        {
          if (v13 != 6)
          {
            goto LABEL_45;
          }

LABEL_41:
          if ((a3 - 11) >= 2u)
          {
LABEL_45:
            if (a3 == 11 && v13 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v13 == 8)
            {
              return 0;
            }

            goto LABEL_54;
          }

          return 0;
        }

        v16 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v17 = 3381;
LABEL_53:
          if ((v17 >> v16))
          {
            return 0;
          }
        }
      }

LABEL_54:
      if (!sub_23F2B01C0(a2))
      {
        v21 = 1;
        v22 = 16;
        v20 = a1;
        goto LABEL_59;
      }

      v20 = a1;
      if (a3 == 9)
      {
        *(a1 + 8) = 3;
      }

      else if (a3 == 3)
      {
        v21 = 2;
        v22 = 12;
LABEL_59:
        *(v20 + 8) = v21;
        *(v20 + v22) = 0;
        return 1;
      }

      return 1;
    }

    return 1;
  }

  if (*(a1 + 16))
  {
    if ((v11 - 1) >= 2)
    {
      *(a1 + 16) = 0;
      return 0;
    }

    return 0;
  }

  if (v11 == 1)
  {
    return 0;
  }

  if (v11 == 2)
  {
    *(a1 + 16) = 1;
    return 0;
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  if (v15 <= 5 && ((1 << v15) & 0x23) != 0 || a3 <= 5 && ((1 << a3) & 0x23) != 0)
  {
    return 1;
  }

  if (*(a1 + 4) > 6u)
  {
    if (v15 != 7)
    {
      if (v15 != 12)
      {
        goto LABEL_68;
      }

      goto LABEL_64;
    }

    v23 = a3 - 2;
    if (a3 - 2 >= 0xC)
    {
      goto LABEL_77;
    }

    v24 = 2817;
  }

  else
  {
    if (v15 != 4)
    {
      if (v15 != 6)
      {
LABEL_68:
        if (a3 == 11 && v15 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v15 == 8)
        {
          return 0;
        }

        goto LABEL_77;
      }

LABEL_64:
      if ((a3 - 11) < 2u)
      {
        return 0;
      }

      goto LABEL_68;
    }

    v23 = a3 - 2;
    if (a3 - 2 >= 0xC)
    {
      goto LABEL_77;
    }

    v24 = 3381;
  }

  if ((v24 >> v23))
  {
    return 0;
  }

LABEL_77:
  if (!sub_23F2B01C0(a2))
  {
    v27 = 1;
    v28 = 16;
LABEL_82:
    *(a1 + 8) = v27;
    *(a1 + v28) = 0;
    return 1;
  }

  if (a3 != 9)
  {
    if (a3 != 3)
    {
      return 1;
    }

    v27 = 2;
    v28 = 12;
    goto LABEL_82;
  }

  *(a1 + 8) = 3;
  return 1;
}

uint64_t sub_23F2B0B48(uint64_t a1, size_t a2, int __c)
{
  v4 = a2;
  __src = __c;
  v6 = __clz(~__c) - 24;
  if (v6)
  {
    if (a2)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = *(a1 + 32);
        v10 = v8;
        if (!v9 || ((v12 = *v9, v11 = v9[1], *v9 - v11 >= v8) ? (v10 = v8) : (v10 = *v9 - v11), v9[1] = v11 + v8, v12 > v11))
        {
          v13 = *(a1 + 16);
          p_src = &__src;
          do
          {
            v16 = *(a1 + 8) - v13;
            if (v16 < v10 + 1)
            {
              (*(a1 + 24))(a1, v10 + 2);
              v13 = *(a1 + 16);
              v16 = *(a1 + 8) - v13;
            }

            if (v16 >= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              memcpy((*a1 + v13), p_src, v17);
              v13 = *(a1 + 16);
            }

            v13 += v17;
            *(a1 + 16) = v13;
            p_src = (p_src + v17);
            v15 = v10 > v16;
            v10 -= v17;
          }

          while (v15);
        }

        ++v7;
      }

      while (v7 != v4);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      goto LABEL_29;
    }

    v20 = *v18;
    v19 = v18[1];
    if (*v18 - v19 < a2)
    {
      v4 = *v18 - v19;
    }

    v18[1] = v19 + a2;
    if (v20 > v19 && v4 != 0)
    {
LABEL_29:
      v23 = *(a1 + 16);
      do
      {
        v24 = *(a1 + 8) - v23;
        if (v24 < v4 + 1)
        {
          (*(a1 + 24))(a1, v4 + 2);
          v23 = *(a1 + 16);
          v24 = *(a1 + 8) - v23;
        }

        if (v24 >= v4)
        {
          v25 = v4;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          memset((*a1 + v23), __c, v25);
          v23 = *(a1 + 16);
        }

        v23 += v25;
        *(a1 + 16) = v23;
        v15 = v4 > v24;
        v4 -= v25;
      }

      while (v15);
    }
  }

  return a1;
}

unint64_t sub_23F2B0D10(uint64_t a1, unsigned int *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_23F2AD0A0("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_12;
    case 4:
      result = *a2;
      if ((*a2 & 0x8000000000000000) != 0)
      {
LABEL_12:
        sub_23F2AD0A0("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_10:
        sub_23F2AD0A0("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      sub_23F2AD0A0("The argument index value is too large for the number of arguments supplied");
  }
}

uint64_t sub_23F2B0DF0(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v12 = a3;
  if (a5)
  {
    v13 = 45;
LABEL_7:
    *a6 = v13;
    v15 = a6 + 1;
    goto LABEL_8;
  }

  v14 = (a3 >> 3) & 3;
  if (v14 == 2)
  {
    v13 = 43;
    goto LABEL_7;
  }

  v15 = a6;
  if (v14 == 3)
  {
    v13 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v16 = *a8;
      if (*a8)
      {
        v17 = a8 + 1;
        do
        {
          *v15 = v16;
          v15 = (v15 + 1);
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }
    }
  }

  v19 = sub_23F2B1D10(v15, a7, a1, a9);
  v73 = v19;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  v20 = v19;
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x245CACAF0](&v78);
    v21 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v21, &v78);
    }

    else
    {
      std::locale::locale(v21, &v78);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v78);
  }

  std::locale::locale(&v75, (a2 + 32));
  v22 = std::locale::use_facet(&v75, MEMORY[0x277D826C0]);
  v23 = v20 - v15;
  std::locale::~locale(&v75);
  (v22->__vftable[1].__on_zero_shared)(&v78, v22);
  if ((v80 & 0x8000000000000000) != 0)
  {
    locale = v78.__locale_;
    v25 = v79;
    if (v79 && v23 > *v78.__locale_)
    {
      v72 = v22;
      v26 = v78.__locale_;
      goto LABEL_26;
    }

    operator delete(v78.__locale_);
LABEL_50:
    v42 = HIDWORD(a3);
    v43 = *a2;
    if ((v12 & 7) == 4)
    {
      v44 = v15 - v9;
      v45 = *(v43 + 32);
      v46 = v15 - v9;
      if (!v45 || ((v48 = *v45, v47 = v45[1], *v45 - v47 >= v44) ? (v46 = v15 - v9) : (v46 = *v45 - v47), (v45[1] = v47 + v44, v48 > v47) ? (v49 = v46 == 0) : (v49 = 1), !v49))
      {
        v57 = *(v43 + 16);
        do
        {
          v59 = *(v43 + 8) - v57;
          if (v59 < v46 + 1)
          {
            (*(v43 + 24))(v43, v46 + 2);
            v57 = *(v43 + 16);
            v59 = *(v43 + 8) - v57;
          }

          if (v59 >= v46)
          {
            v60 = v46;
          }

          else
          {
            v60 = v59;
          }

          if (v60)
          {
            memmove((*v43 + v57), v9, v60);
            v57 = *(v43 + 16);
          }

          v57 += v60;
          *(v43 + 16) = v57;
          v9 += v60;
          v58 = v46 > v59;
          v46 -= v60;
        }

        while (v58);
      }

      v50 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v44)
      {
        v51 = v44;
      }

      else
      {
        v51 = HIDWORD(a3);
      }

      v42 = (HIDWORD(a3) - v51);
      v43 = *a2;
      v52 = 48;
      v53 = a4;
    }

    else
    {
      v53 = a4;
      v52 = BYTE4(a4);
      v50 = a3;
      v15 = v9;
    }

    v54 = v42 << 32;
    v55 = v53 & 0xFFFFFF00FFFFFFFFLL | (v52 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      return sub_23F2B1A78(v15, v73, v43, a3 & 0xFFFF0700 | v54 | v50, v55, sub_23F2B1CF8);
    }

    else
    {
      return sub_23F2AF788(v15, v73 - v15, v43, v54 | a3 & 0xFFFFFF00 | v50, v55, v73 - v15);
    }
  }

  if (!v80 || v23 <= SLOBYTE(v78.__locale_))
  {
    goto LABEL_50;
  }

  v72 = v22;
  locale = &v78;
  v26 = v78.__locale_;
  v25 = v79;
LABEL_26:
  v71 = *a2;
  v75.__locale_ = 0;
  v76 = 0;
  v77 = 0;
  v27 = v26 + v25;
  if (v80 >= 0)
  {
    v28 = &v78 + v80;
  }

  else
  {
    v28 = v27;
  }

  v29 = *locale;
  v30 = *locale;
  v31 = v23 - v29;
  if (v23 <= v29)
  {
    v62 = 0;
    v61 = v30 + v31;
    v63 = v72;
    goto LABEL_82;
  }

  v32 = v28 - 1;
  do
  {
    while (1)
    {
      v33 = HIBYTE(v77);
      if ((SHIBYTE(v77) & 0x80000000) == 0)
      {
        break;
      }

      v34 = (v77 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v76 == v34)
      {
        if ((v77 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

LABEL_37:
        operator new();
      }

      v36 = v76++;
      v37 = v75.__locale_ + v36;
      *v37 = v30;
      v37[1] = 0;
      if (locale != v32)
      {
        goto LABEL_41;
      }

LABEL_31:
      v30 = *locale;
      v31 -= *locale;
      if (v31 <= 0)
      {
        goto LABEL_78;
      }
    }

    if (HIBYTE(v77) == 22)
    {
      goto LABEL_37;
    }

    HIBYTE(v77) = (HIBYTE(v77) + 1) & 0x7F;
    v35 = &v75 + v33;
    *v35 = v30;
    v35[1] = 0;
    if (locale == v32)
    {
      goto LABEL_31;
    }

LABEL_41:
    v38 = (locale + 1);
    v39 = (locale + 1);
    do
    {
      v40 = *v39++;
      v30 = v40;
      if (v40)
      {
        v41 = 1;
      }

      else
      {
        v41 = v38 == v32;
      }

      v38 = v39;
    }

    while (!v41);
    locale = (v39 - 1);
    v31 -= v30;
  }

  while (v31 > 0);
LABEL_78:
  v61 = v30 + v31;
  if (SHIBYTE(v77) < 0)
  {
    v66 = (v77 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    LODWORD(v20) = v73;
    v63 = v72;
    if (v76 == v66)
    {
      if ((v77 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_85:
      operator new();
    }

    v65 = v75.__locale_;
    v64 = v76++;
  }

  else
  {
    v62 = HIBYTE(v77);
    LODWORD(v20) = v73;
    v63 = v72;
    if (HIBYTE(v77) == 22)
    {
      goto LABEL_85;
    }

LABEL_82:
    v64 = v62;
    HIBYTE(v77) = (v62 + 1) & 0x7F;
    v65 = &v75;
  }

  v67 = &v65[v64];
  *v67 = v61;
  v67[1] = 0;
  v68 = (v63->__vftable[1].~facet_0)(v63);
  result = sub_23F2B14EC(v71, v9, v15, v20, &v75, v68, a3, a4);
  if (SHIBYTE(v77) < 0)
  {
    v69 = result;
    operator delete(v75.__locale_);
    result = v69;
  }

  if (v80 < 0)
  {
    v70 = result;
    operator delete(v78.__locale_);
    return v70;
  }

  return result;
}

void sub_23F2B14A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2B14EC(uint64_t a1, _BYTE *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v10 = a3;
  v11 = __src;
  v12 = a1;
  v13 = HIDWORD(a7);
  v14 = a3 - __src;
  LODWORD(v15) = *(a5 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = a5[1];
  }

  v16 = a4 - __src - 1 + v15;
  v85 = HIDWORD(a8);
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v16)
    {
      v84 = 0;
      v29 = *(a1 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v28 = (a7 >> 32) - v16;
      if ((a7 & 7u) > 1)
      {
        if ((a7 & 7) != 3)
        {
          v84 = v28 - (v28 >> 1);
          v12 = sub_23F2B0B48(a1, v28 >> 1, SHIDWORD(a8));
          v29 = *(v12 + 32);
          if (!v29)
          {
            goto LABEL_121;
          }

          goto LABEL_56;
        }
      }

      else if ((a7 & 7) != 0)
      {
        v84 = (a7 >> 32) - v16;
        v12 = sub_23F2B0B48(a1, 0, SHIDWORD(a8));
        v29 = *(v12 + 32);
        if (!v29)
        {
          goto LABEL_121;
        }

LABEL_56:
        v38 = *v29;
        v37 = v29[1];
        v39 = v37 + v14;
        if (*v29 - v37 < v14)
        {
          v14 = *v29 - v37;
        }

        v29[1] = v39;
        if (v38 <= v37 || v14 == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_121;
      }

      v84 = 0;
      v12 = sub_23F2B0B48(a1, (a7 >> 32) - v16, SHIDWORD(a8));
      v29 = *(v12 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

LABEL_121:
    v80 = *(v12 + 16);
    do
    {
      v81 = *(v12 + 8) - v80;
      if (v81 < v14 + 1)
      {
        (*(v12 + 24))(v12, v14 + 2);
        v80 = *(v12 + 16);
        v81 = *(v12 + 8) - v80;
      }

      if (v81 >= v14)
      {
        v82 = v14;
      }

      else
      {
        v82 = v81;
      }

      if (v82)
      {
        memmove((*v12 + v80), v11, v82);
        v80 = *(v12 + 16);
      }

      v80 += v82;
      *(v12 + 16) = v80;
      v11 += v82;
      v31 = v14 > v81;
      v14 -= v82;
    }

    while (v31);
    goto LABEL_63;
  }

  v83 = a7;
  v17 = *(a1 + 32);
  if (!v17)
  {
    goto LABEL_28;
  }

  v19 = *v17;
  v18 = v17[1];
  v20 = v18 + v14;
  if (*v17 - v18 < v14)
  {
    v14 = *v17 - v18;
  }

  v17[1] = v20;
  if (v19 > v18 && v14 != 0)
  {
LABEL_28:
    v30 = *(a1 + 16);
    do
    {
      v32 = *(v12 + 8) - v30;
      if (v32 < v14 + 1)
      {
        (*(v12 + 24))(v12, v14 + 2);
        v30 = *(v12 + 16);
        v32 = *(v12 + 8) - v30;
      }

      if (v32 >= v14)
      {
        v33 = v14;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        memmove((*v12 + v30), v11, v33);
        v30 = *(v12 + 16);
      }

      v30 += v33;
      *(v12 + 16) = v30;
      v11 += v33;
      v31 = v14 > v32;
      v14 -= v33;
    }

    while (v31);
  }

  if (v13 <= v16)
  {
    v84 = 0;
    v8 = v83;
    goto LABEL_63;
  }

  v22 = v13 - v16;
  v23 = *(v12 + 32);
  if (!v23)
  {
    v26 = v13 - v16;
    v8 = v83;
    goto LABEL_45;
  }

  v25 = *v23;
  v24 = v23[1];
  if (*v23 - v24 >= v22)
  {
    v26 = v13 - v16;
  }

  else
  {
    v26 = *v23 - v24;
  }

  v23[1] = v24 + v22;
  v27 = v25 <= v24 || v26 == 0;
  v8 = v83;
  if (!v27)
  {
LABEL_45:
    v34 = *(v12 + 16);
    do
    {
      v35 = *(v12 + 8) - v34;
      if (v35 < v26 + 1)
      {
        (*(v12 + 24))(v12, v26 + 2);
        v34 = *(v12 + 16);
        v35 = *(v12 + 8) - v34;
      }

      if (v35 >= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = v35;
      }

      if (v36)
      {
        memset((*v12 + v34), 48, v36);
        v34 = *(v12 + 16);
      }

      v34 += v36;
      *(v12 + 16) = v34;
      v31 = v26 > v35;
      v26 -= v36;
    }

    while (v31);
  }

  v84 = 0;
LABEL_63:
  v41 = *(a5 + 23);
  v42 = v41;
  v43 = a5 + v41;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = (*a5 + a5[1]);
  }

  if (v42 >= 0)
  {
    v45 = a5;
  }

  else
  {
    v45 = *a5;
  }

  v46 = v45 + 1;
  v47 = v8 & 0xFF00;
  while (1)
  {
    v49 = v44 - 1;
    v48 = *(v44 - 1);
    if (v47 != 1792)
    {
      break;
    }

    v50 = &v10[v48];
    v51 = *(v12 + 32);
    if (!v51)
    {
      goto LABEL_94;
    }

    v53 = *v51;
    v52 = v51[1];
    v54 = v52 + v48;
    if (*v51 - v52 < v48)
    {
      v48 = *v51 - v52;
    }

    v51[1] = v54;
    if (v53 > v52 && v48 != 0)
    {
LABEL_94:
      v66 = *(v12 + 16);
      do
      {
        v67 = *(v12 + 8) - v66;
        if (v67 < v48 + 1)
        {
          (*(v12 + 24))(v12, v48 + 2);
          v66 = *(v12 + 16);
          v67 = *(v12 + 8) - v66;
        }

        if (v67 >= v48)
        {
          v68 = v48;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          v69 = (*v12 + v66);
          v70 = v68;
          v71 = v10;
          do
          {
            v73 = *v71++;
            v72 = v73;
            v74 = v73 - 32;
            if ((v73 - 97) < 6)
            {
              v72 = v74;
            }

            *v69++ = v72;
            --v70;
          }

          while (v70);
          v66 = *(v12 + 16);
        }

        v10 += v68;
        v66 += v68;
        *(v12 + 16) = v66;
        v31 = v48 > v67;
        v48 -= v68;
      }

      while (v31);
    }

    v10 = v50;
    if (v44 == v46)
    {
      goto LABEL_118;
    }

LABEL_90:
    v61 = *(v12 + 32);
    if (v61)
    {
      v63 = *v61;
      v62 = v61[1];
      v61[1] = v62 + 1;
      --v44;
      if (v62 >= v63)
      {
        continue;
      }
    }

    v64 = *v12;
    v65 = *(v12 + 16);
    *(v12 + 16) = v65 + 1;
    *(v64 + v65) = a6;
    v44 = v49;
    if (*(v12 + 16) == *(v12 + 8))
    {
      (*(v12 + 24))(v12, 2);
      v44 = v49;
    }
  }

  v56 = *(v12 + 32);
  if (!v56)
  {
    goto LABEL_108;
  }

  v58 = *v56;
  v57 = v56[1];
  v59 = v57 + v48;
  if (*v56 - v57 < v48)
  {
    v48 = *v56 - v57;
  }

  v56[1] = v59;
  if (v58 > v57 && v48 != 0)
  {
LABEL_108:
    v75 = *(v12 + 16);
    v76 = v10;
    do
    {
      v77 = *(v12 + 8) - v75;
      if (v77 < v48 + 1)
      {
        (*(v12 + 24))(v12, v48 + 2);
        v75 = *(v12 + 16);
        v77 = *(v12 + 8) - v75;
      }

      if (v77 >= v48)
      {
        v78 = v48;
      }

      else
      {
        v78 = v77;
      }

      if (v78)
      {
        memmove((*v12 + v75), v76, v78);
        v75 = *(v12 + 16);
      }

      v75 += v78;
      *(v12 + 16) = v75;
      v76 += v78;
      v31 = v48 > v77;
      v48 -= v78;
    }

    while (v31);
  }

  v10 += *v49;
  if (v44 != v46)
  {
    goto LABEL_90;
  }

LABEL_118:

  return sub_23F2B0B48(v12, v84, v85);
}

uint64_t sub_23F2B1A78(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v8 = a1;
  v9 = a2 - a1;
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v27 = v10 >> 1;
        v10 -= v10 >> 1;
        *__c = HIDWORD(a5);
        v11 = sub_23F2B0B48(a3, v27, SHIDWORD(a5));
        v12 = *(v11 + 32);
        if (!v12)
        {
          goto LABEL_41;
        }

        goto LABEL_31;
      }
    }

    else if ((a4 & 7) != 0)
    {
      *__c = HIDWORD(a5);
      v11 = sub_23F2B0B48(a3, 0, SHIDWORD(a5));
      v12 = *(v11 + 32);
      if (!v12)
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    v10 = 0;
    *__c = HIDWORD(a5);
    v11 = sub_23F2B0B48(a3, (a4 >> 32) - (a2 - a1), SHIDWORD(a5));
    v12 = *(v11 + 32);
    if (!v12)
    {
LABEL_41:
      v32 = *(v11 + 16);
      do
      {
        v33 = *(v11 + 8) - v32;
        if (v33 < v9 + 1)
        {
          (*(v11 + 24))(v11, v9 + 2);
          v32 = *(v11 + 16);
          v33 = *(v11 + 8) - v32;
        }

        if (v33 >= v9)
        {
          v34 = v9;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          v35 = (*v11 + v32);
          v36 = v34;
          v37 = v8;
          do
          {
            v38 = *v37++;
            *v35++ = a6(v38);
            --v36;
          }

          while (v36);
          v32 = *(v11 + 16);
        }

        v8 += v34;
        v32 += v34;
        *(v11 + 16) = v32;
        v20 = v9 > v33;
        v9 -= v34;
      }

      while (v20);
LABEL_38:

      return sub_23F2B0B48(v11, v10, __c[0]);
    }

LABEL_31:
    v29 = *v12;
    v28 = v12[1];
    v30 = v28 + v9;
    if (*v12 - v28 < v9)
    {
      v9 = *v12 - v28;
    }

    v12[1] = v30;
    if (v29 <= v28 || v9 == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v13 = *(a3 + 32);
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = *v13;
  v14 = v13[1];
  v16 = v14 + v9;
  if (*v13 - v14 < v9)
  {
    v9 = *v13 - v14;
  }

  v13[1] = v16;
  if (v15 > v14 && v9 != 0)
  {
LABEL_15:
    v19 = *(a3 + 16);
    do
    {
      v21 = *(a3 + 8) - v19;
      if (v21 < v9 + 1)
      {
        (*(a3 + 24))(a3, v9 + 2);
        v19 = *(a3 + 16);
        v21 = *(a3 + 8) - v19;
      }

      if (v21 >= v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        v23 = (*a3 + v19);
        v24 = v22;
        v25 = v8;
        do
        {
          v26 = *v25++;
          *v23++ = a6(v26);
          --v24;
        }

        while (v24);
        v19 = *(a3 + 16);
      }

      v8 += v22;
      v19 += v22;
      *(a3 + 16) = v19;
      v20 = v9 > v21;
      v9 -= v22;
    }

    while (v20);
  }

  return a3;
}

uint64_t sub_23F2B1CF8(int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *sub_23F2B1D10(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return sub_23F2B22A8(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return sub_23F2B2348(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = sub_23F2B1E70(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return sub_23F2B23F4(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return sub_23F2B1ED4(a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - dword_23F3463E8[v7]) >> 32) + 1))
  {
    return sub_23F2B1ED4(a1, a3);
  }

  return v4;
}

uint64_t sub_23F2B1E70(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *sub_23F2B1ED4(_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = *&a00010203040506[2 * v7];
        a1[1] = *&a00010203040506[2 * (a2 % 0x5F5E100 / 0xF4240uLL)];
        a1[2] = *&a00010203040506[2 * (a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL)];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = *&a00010203040506[2 * (v13 / 0x64u)];
        a1[4] = *&a00010203040506[2 * (v13 % 0x64u)];
        return a1 + 5;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = *&a00010203040506[2 * v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = *&a00010203040506[2 * (v9 / 0x2710uLL)];
        v9 %= 0x2710u;
        *(a1 + 5) = *&a00010203040506[2 * (v9 / 0x64u)];
        *(a1 + 7) = *&a00010203040506[2 * (v9 % 0x64u)];
        return (a1 + 9);
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = *&a00010203040506[2 * v3];
        a1[1] = *&a00010203040506[2 * (a2 % 0xF4240 / 0x2710uLL)];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = *&a00010203040506[2 * (v11 / 0x64u)];
        a1[3] = *&a00010203040506[2 * (v11 % 0x64u)];
        return a1 + 4;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = *&a00010203040506[2 * v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = *&a00010203040506[2 * (v5 / 0x64u)];
        *(a1 + 5) = *&a00010203040506[2 * (v5 % 0x64u)];
        return (a1 + 7);
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = *&a00010203040506[2 * v6];
      v12 = a2 % 0x2710;
      a1[1] = *&a00010203040506[2 * (v12 / 0x64u)];
      a1[2] = *&a00010203040506[2 * (v12 % 0x64u)];
      return a1 + 3;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = *&a00010203040506[2 * ((5243 * (a2 % 0x2710)) >> 19)];
      *(a1 + 3) = *&a00010203040506[2 * (a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      return (a1 + 5);
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = *&a00010203040506[2 * v10];
      a1[1] = *&a00010203040506[2 * (a2 % 0x64u)];
      return a1 + 2;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = *&a00010203040506[2 * (a2 % 0x64u)];
      return (a1 + 3);
    }
  }

  else if (a2 > 9)
  {
    *a1 = *&a00010203040506[2 * a2];
    return a1 + 1;
  }

  else
  {
    *a1 = a2 | 0x30;
    return (a1 + 1);
  }
}

uint64_t sub_23F2B22A8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x11)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 4;
      *(v6 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v6 -= 4;
      v8 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v8);
  }

  v9 = (v6 - 1);
  do
  {
    *v9-- = a01[v7 & 1];
    v8 = v7 > 1;
    v7 >>= 1;
  }

  while (v8);
  return v5;
}

uint64_t sub_23F2B2348(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x41)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 6;
      *(v6 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x40);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a01234567[v7 & 7];
    v9 = v7 > 7;
    v7 >>= 3;
  }

  while (v9);
  return v5;
}

uint64_t sub_23F2B23F4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x101)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 8;
      *(v6 - 2) = *&a00010203040506[2 * a3 + 392];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x100);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a0123456789abcd_0[v7 & 0xF];
    v9 = v7 > 0xF;
    v7 >>= 4;
  }

  while (v9);
  return v5;
}

uint64_t sub_23F2B2498(uint64_t a1, unsigned __int8 a2, uint64_t *a3)
{
  v5 = *(a1 + 1);
  if (!*(a1 + 1))
  {
    goto LABEL_4;
  }

  if (v5 == 19)
  {
    v10 = *a3;
    v12 = sub_23F2AF2AC(a1, a3);

    return sub_23F2B2590(a2, v10, v12, v11);
  }

  else
  {
    if (v5 == 10)
    {
LABEL_4:
      v6 = *a3;
      v7 = sub_23F2AF2AC(a1, a3);
      __src = a2;
      return sub_23F2AF788(&__src, 1uLL, v6, v7, v8, 1);
    }

    v14 = sub_23F2AF2AC(a1, a3);

    return sub_23F2AF460(a2, a3, v14, v13, 0);
  }
}

uint64_t sub_23F2B2590(unsigned __int8 a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v18 = a1;
  v16 = 0;
  v17 = 0x100000000000000;
  __p = 39;
  sub_23F2B2798(&__p, &v18, 1, 0);
  if (SHIBYTE(v17) < 0)
  {
    v7 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v16 == v7)
    {
      if ((v17 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_6:
      operator new();
    }

    p_p = __p;
    v8 = v16++;
  }

  else
  {
    if (HIBYTE(v17) == 22)
    {
      goto LABEL_6;
    }

    v8 = HIBYTE(v17);
    HIBYTE(v17) = (HIBYTE(v17) + 1) & 0x7F;
    p_p = &__p;
  }

  *&p_p[v8] = 39;
  if (v17 >= 0)
  {
    v10 = &__p + HIBYTE(v17);
  }

  else
  {
    v10 = __p + v16;
  }

  if (v17 >= 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  if (v17 >= 0)
  {
    v12 = HIBYTE(v17);
  }

  else
  {
    v12 = v16;
  }

  result = sub_23F2AF788(v11, v10 - v11, a2, a3, a4, v12);
  if (SHIBYTE(v17) < 0)
  {
    v14 = result;
    operator delete(__p);
    return v14;
  }

  return result;
}

void sub_23F2B277C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2B2798(uint64_t result, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v57 = a2;
  v58 = &a2[a3];
  if (a3)
  {
    v4 = result;
    v5 = a2;
    v55 = 1;
    while (1)
    {
      result = sub_23F2AE670(&v57);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = sub_23F2B302C(v4, result, v55 & 1, a4);
      if (result)
      {
        v55 = 1;
      }

      else
      {
        v6 = v57;
        if (v5 != v57)
        {
          v7 = v5;
          do
          {
            while (1)
            {
              v9 = v7;
              v10 = *v7;
              v11 = *(v4 + 23);
              if (v11 < 0)
              {
                break;
              }

              if (*(v4 + 23) == 22)
              {
                goto LABEL_16;
              }

              *(v4 + 23) = (v11 + 1) & 0x7F;
              v8 = (v4 + v11);
              *v8 = v10;
              v8[1] = 0;
              v7 = v9 + 1;
              if (v9 + 1 == v6)
              {
                goto LABEL_70;
              }
            }

            v12 = *(v4 + 16) & 0x7FFFFFFFFFFFFFFFLL;
            if (*(v4 + 8) == v12 - 1)
            {
              if (v12 == 0x7FFFFFFFFFFFFFF8)
              {
                sub_23EF2F8F4();
              }

              v13 = *v4;
LABEL_16:
              operator new();
            }

            v14 = *v4;
            v15 = *(v4 + 8);
            *(v4 + 8) = v15 + 1;
            v16 = (v14 + v15);
            *v16 = v10;
            v16[1] = 0;
            v7 = v9 + 1;
          }

          while (v9 + 1 != v6);
        }

LABEL_70:
        v55 = 0;
      }

LABEL_4:
      v5 = v57;
      if (v57 == v58)
      {
        goto LABEL_71;
      }
    }

    v17 = v57;
    v56 = v57;
    while (1)
    {
      if (v5 == v17)
      {
        goto LABEL_4;
      }

      v20 = *v5;
      v21 = *(v4 + 23);
      if (v21 < 0)
      {
        v22 = *(v4 + 8);
        v23 = *(v4 + 16) & 0x7FFFFFFFFFFFFFFFLL;
        if (v22 == v23 - 1)
        {
          if (v23 == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23EF2F8F4();
          }

          v24 = *v4;
LABEL_29:
          operator new();
        }

        v34 = *v4;
        v35 = *(v4 + 8);
        *(v4 + 8) = v22 + 1;
        *(v34 + v22) = 92;
        v25 = *(v4 + 23);
        if ((v25 & 0x80000000) == 0)
        {
LABEL_30:
          if (v25 == 22)
          {
            goto LABEL_36;
          }

          *(v4 + 23) = (v25 + 1) & 0x7F;
          *(v4 + v25) = 120;
          v29 = *(v4 + 23);
          if ((v29 & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (*(v4 + 23) == 22)
        {
          goto LABEL_29;
        }

        *(v4 + 23) = (v21 + 1) & 0x7F;
        *(v4 + v21) = 92;
        v25 = *(v4 + 23);
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }
      }

      v26 = *(v4 + 8);
      v27 = *(v4 + 16) & 0x7FFFFFFFFFFFFFFFLL;
      if (v26 == v27 - 1)
      {
        if (v27 == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

        v28 = *v4;
LABEL_36:
        operator new();
      }

      v36 = *v4;
      v37 = *(v4 + 8);
      *(v4 + 8) = v26 + 1;
      *(v36 + v26) = 120;
      v29 = *(v4 + 23);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_37:
        if (v29 == 22)
        {
          goto LABEL_43;
        }

        v32 = v29;
        *(v4 + 23) = (v29 + 1) & 0x7F;
        v33 = v4;
        goto LABEL_50;
      }

LABEL_40:
      v30 = *(v4 + 16) & 0x7FFFFFFFFFFFFFFFLL;
      if (*(v4 + 8) == v30 - 1)
      {
        if (v30 == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

        v31 = *v4;
LABEL_43:
        operator new();
      }

      v33 = *v4;
      v32 = *(v4 + 8);
      *(v4 + 8) = v32 + 1;
LABEL_50:
      *(v33 + v32) = 123;
      v38 = (35 - __clz(v20 | 1)) >> 2;
      v39 = v38 - 1;
      do
      {
        v59[v39--] = a0123456789abcd_0[v20 & 0xF];
        v40 = v20 > 0xF;
        v20 >>= 4;
      }

      while (v40);
      v41 = 0;
      do
      {
        while (1)
        {
          v43 = v59[v41];
          v44 = *(v4 + 23);
          if (v44 < 0)
          {
            break;
          }

          if (*(v4 + 23) == 22)
          {
            goto LABEL_60;
          }

          *(v4 + 23) = (v44 + 1) & 0x7F;
          v42 = (v4 + v44);
          *v42 = v43;
          v42[1] = 0;
          if (v38 == ++v41)
          {
            goto LABEL_62;
          }
        }

        v45 = *(v4 + 16) & 0x7FFFFFFFFFFFFFFFLL;
        if (*(v4 + 8) == v45 - 1)
        {
          if (v45 == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23EF2F8F4();
          }

          v46 = *v4;
LABEL_60:
          operator new();
        }

        v47 = *v4;
        v48 = *(v4 + 8);
        *(v4 + 8) = v48 + 1;
        v49 = (v47 + v48);
        *v49 = v43;
        v49[1] = 0;
        ++v41;
      }

      while (v38 != v41);
LABEL_62:
      v50 = *(v4 + 23);
      if (v50 < 0)
      {
        v51 = *(v4 + 16) & 0x7FFFFFFFFFFFFFFFLL;
        if (*(v4 + 8) == v51 - 1)
        {
          if (v51 == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23EF2F8F4();
          }

          v52 = *v4;
LABEL_68:
          operator new();
        }

        v19 = *v4;
        v18 = *(v4 + 8);
        *(v4 + 8) = v18 + 1;
      }

      else
      {
        if (*(v4 + 23) == 22)
        {
          goto LABEL_68;
        }

        v18 = *(v4 + 23);
        *(v4 + 23) = (v50 + 1) & 0x7F;
        v19 = v4;
      }

      *(v19 + v18) = 125;
      v17 = v56;
      ++v5;
    }
  }

LABEL_71:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F2B302C(std::string *a1, int a2, int a3, int a4)
{
  if (a2 <= 31)
  {
    switch(a2)
    {
      case 9:
        std::string::append(a1, "\\t", 2uLL);
        return 1;
      case 10:
        std::string::append(a1, "\\n", 2uLL);
        return 1;
      case 13:
        std::string::append(a1, "\\r", 2uLL);
        return 1;
    }

    goto LABEL_15;
  }

  if (a2 <= 38)
  {
    if (a2 == 32)
    {
LABEL_23:
      std::string::push_back(a1, a2);
      return 1;
    }

    if (a2 == 34)
    {
      if (a4 == 1)
      {
        std::string::append(a1, "\\"", 2uLL);
        return 1;
      }

      LOBYTE(a2) = 34;
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if (a2 != 39)
  {
    if (a2 == 92)
    {
      std::string::append(a1, "\\\", 2uLL);
      return 1;
    }

LABEL_15:

    return sub_23F2B3180(a1, a3, a2);
  }

  if (a4)
  {
    std::string::push_back(a1, 39);
  }

  else
  {
    std::string::append(a1, "\\'", 2uLL);
  }

  return 1;
}

uint64_t sub_23F2B3180(std::string *a1, int a2, unsigned int a3)
{
  if (a3 - 917760 < 0xF0)
  {
    goto LABEL_12;
  }

  if (a3 <= 0x323AF)
  {
    v11 = 711;
    v12 = " ";
    do
    {
      v13 = v11 >> 1;
      v14 = &v12[4 * (v11 >> 1)];
      v16 = *v14;
      v15 = (v14 + 1);
      v11 += ~(v11 >> 1);
      if (((a3 << 14) | 0x3FFF) >= v16)
      {
        v12 = v15;
      }

      else
      {
        v11 = v13;
      }
    }

    while (v11);
    if (v12 == " " || (*(v12 - 1) & 0x3FFFu) + (*(v12 - 1) >> 14) < a3)
    {
LABEL_12:
      if (!a2)
      {
        return 0;
      }

      v3 = 1496;
      v4 = &unk_23F3447B8;
      do
      {
        v5 = v3 >> 1;
        v6 = &v4[v3 >> 1];
        v8 = *v6;
        v7 = v6 + 1;
        v3 += ~(v3 >> 1);
        if (((a3 << 11) | 0x7FF) >= v8)
        {
          v4 = v7;
        }

        else
        {
          v3 = v5;
        }
      }

      while (v3);
      if (v4 == &unk_23F3447B8)
      {
        return 0;
      }

      if ((*(v4 - 1) & 0xF) != 2 || ((*(v4 - 1) >> 4) & 0x7F) + (*(v4 - 1) >> 11) < a3)
      {
        return 0;
      }
    }
  }

  sub_23F2B3288(a1, a3);
  return 1;
}

void sub_23F2B3288(std::string *a1, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::push_back(a1, 92);
  std::string::push_back(a1, 117);
  std::string::push_back(a1, 123);
  v4 = (35 - __clz(a2 | 1)) >> 2;
  v5 = &__c[v4];
  if (a2 < 0x101)
  {
    v6 = a2;
  }

  else
  {
    do
    {
      v6 = a2 >> 8;
      *(v5 - 1) = *&a00010203040506[2 * a2 + 392];
      v5 -= 2;
      a2 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = v5 - 1;
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  std::string::push_back(a1, __c[0]);
  if (v4 != 1)
  {
    std::string::push_back(a1, __c[1]);
    if (v4 != 2)
    {
      std::string::push_back(a1, __c[2]);
      if (v4 != 3)
      {
        std::string::push_back(a1, __c[3]);
        if (v4 != 4)
        {
          std::string::push_back(a1, __c[4]);
          if (v4 != 5)
          {
            std::string::push_back(a1, __c[5]);
            if (v4 != 6)
            {
              std::string::push_back(a1, __c[6]);
              if (v4 != 7)
              {
                std::string::push_back(a1, __c[7]);
              }
            }
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  std::string::push_back(a1, 125);
}

uint64_t sub_23F2B3430(uint64_t a1, int a2)
{
  v14 = 0;
  v15 = -1;
  v16 = 32;
  v17 = 0;
  v18 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = sub_23F2ADDD4(&v14, *a1, 311);
    if (BYTE1(v14) - 2 >= 6 && BYTE1(v14) != 0)
    {
      if (BYTE1(v14) != 10)
      {
        sub_23F2AE878();
      }

      v13 = v5;
      sub_23F2AEB1C(&v14, 48, "an integer", -1);
      v5 = v13;
      if ((v14 & 7) == 0)
      {
        LOBYTE(v14) = v14 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = sub_23F2AF2AC(&v14, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 != a2)
    {
      sub_23F2AD0A0("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = sub_23F2AF788(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    if (a2 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = -a2;
    }

    result = sub_23F2AF460(v12, v7, v9, v8, a2 < 0);
    *v7 = result;
  }

  return result;
}

uint64_t sub_23F2B3594(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = -1;
  v16 = 32;
  v17 = 0;
  v18 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = sub_23F2ADDD4(&v14, *a1, 311);
    if (BYTE1(v14) - 2 >= 6 && BYTE1(v14) != 0)
    {
      if (BYTE1(v14) != 10)
      {
        sub_23F2AE878();
      }

      v13 = v5;
      sub_23F2AEB1C(&v14, 48, "an integer", -1);
      v5 = v13;
      if ((v14 & 7) == 0)
      {
        LOBYTE(v14) = v14 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = sub_23F2AF2AC(&v14, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 != a2)
    {
      sub_23F2AD0A0("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = sub_23F2AF788(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    if (a2 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = -a2;
    }

    result = sub_23F2B36F8(v12, v7, v9, v8, a2 < 0);
    *v7 = result;
  }

  return result;
}

uint64_t sub_23F2B36F8(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
LABEL_18:
    result = sub_23F2B384C(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = sub_23F2B384C(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 10);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = sub_23F2B384C(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F2B384C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v12 = a3;
  if (a5)
  {
    v13 = 45;
LABEL_7:
    *a6 = v13;
    v15 = a6 + 1;
    goto LABEL_8;
  }

  v14 = (a3 >> 3) & 3;
  if (v14 == 2)
  {
    v13 = 43;
    goto LABEL_7;
  }

  v15 = a6;
  if (v14 == 3)
  {
    v13 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v16 = *a8;
      if (*a8)
      {
        v17 = a8 + 1;
        do
        {
          *v15 = v16;
          v15 = (v15 + 1);
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }
    }
  }

  v19 = sub_23F2B3F48(v15, a7, a1, a9);
  v73 = v19;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  v20 = v19;
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x245CACAF0](&v78);
    v21 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v21, &v78);
    }

    else
    {
      std::locale::locale(v21, &v78);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v78);
  }

  std::locale::locale(&v75, (a2 + 32));
  v22 = std::locale::use_facet(&v75, MEMORY[0x277D826C0]);
  v23 = v20 - v15;
  std::locale::~locale(&v75);
  (v22->__vftable[1].__on_zero_shared)(&v78, v22);
  if ((v80 & 0x8000000000000000) != 0)
  {
    locale = v78.__locale_;
    v25 = v79;
    if (v79 && v23 > *v78.__locale_)
    {
      v72 = v22;
      v26 = v78.__locale_;
      goto LABEL_26;
    }

    operator delete(v78.__locale_);
LABEL_50:
    v42 = HIDWORD(a3);
    v43 = *a2;
    if ((v12 & 7) == 4)
    {
      v44 = v15 - v9;
      v45 = *(v43 + 32);
      v46 = v15 - v9;
      if (!v45 || ((v48 = *v45, v47 = v45[1], *v45 - v47 >= v44) ? (v46 = v15 - v9) : (v46 = *v45 - v47), (v45[1] = v47 + v44, v48 > v47) ? (v49 = v46 == 0) : (v49 = 1), !v49))
      {
        v57 = *(v43 + 16);
        do
        {
          v59 = *(v43 + 8) - v57;
          if (v59 < v46 + 1)
          {
            (*(v43 + 24))(v43, v46 + 2);
            v57 = *(v43 + 16);
            v59 = *(v43 + 8) - v57;
          }

          if (v59 >= v46)
          {
            v60 = v46;
          }

          else
          {
            v60 = v59;
          }

          if (v60)
          {
            memmove((*v43 + v57), v9, v60);
            v57 = *(v43 + 16);
          }

          v57 += v60;
          *(v43 + 16) = v57;
          v9 += v60;
          v58 = v46 > v59;
          v46 -= v60;
        }

        while (v58);
      }

      v50 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v44)
      {
        v51 = v44;
      }

      else
      {
        v51 = HIDWORD(a3);
      }

      v42 = (HIDWORD(a3) - v51);
      v43 = *a2;
      v52 = 48;
      v53 = a4;
    }

    else
    {
      v53 = a4;
      v52 = BYTE4(a4);
      v50 = a3;
      v15 = v9;
    }

    v54 = v42 << 32;
    v55 = v53 & 0xFFFFFF00FFFFFFFFLL | (v52 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      return sub_23F2B1A78(v15, v73, v43, a3 & 0xFFFF0700 | v54 | v50, v55, sub_23F2B1CF8);
    }

    else
    {
      return sub_23F2AF788(v15, v73 - v15, v43, v54 | a3 & 0xFFFFFF00 | v50, v55, v73 - v15);
    }
  }

  if (!v80 || v23 <= SLOBYTE(v78.__locale_))
  {
    goto LABEL_50;
  }

  v72 = v22;
  locale = &v78;
  v26 = v78.__locale_;
  v25 = v79;
LABEL_26:
  v71 = *a2;
  v75.__locale_ = 0;
  v76 = 0;
  v77 = 0;
  v27 = v26 + v25;
  if (v80 >= 0)
  {
    v28 = &v78 + v80;
  }

  else
  {
    v28 = v27;
  }

  v29 = *locale;
  v30 = *locale;
  v31 = v23 - v29;
  if (v23 <= v29)
  {
    v62 = 0;
    v61 = v30 + v31;
    v63 = v72;
    goto LABEL_82;
  }

  v32 = v28 - 1;
  do
  {
    while (1)
    {
      v33 = HIBYTE(v77);
      if ((SHIBYTE(v77) & 0x80000000) == 0)
      {
        break;
      }

      v34 = (v77 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v76 == v34)
      {
        if ((v77 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

LABEL_37:
        operator new();
      }

      v36 = v76++;
      v37 = v75.__locale_ + v36;
      *v37 = v30;
      v37[1] = 0;
      if (locale != v32)
      {
        goto LABEL_41;
      }

LABEL_31:
      v30 = *locale;
      v31 -= *locale;
      if (v31 <= 0)
      {
        goto LABEL_78;
      }
    }

    if (HIBYTE(v77) == 22)
    {
      goto LABEL_37;
    }

    HIBYTE(v77) = (HIBYTE(v77) + 1) & 0x7F;
    v35 = &v75 + v33;
    *v35 = v30;
    v35[1] = 0;
    if (locale == v32)
    {
      goto LABEL_31;
    }

LABEL_41:
    v38 = (locale + 1);
    v39 = (locale + 1);
    do
    {
      v40 = *v39++;
      v30 = v40;
      if (v40)
      {
        v41 = 1;
      }

      else
      {
        v41 = v38 == v32;
      }

      v38 = v39;
    }

    while (!v41);
    locale = (v39 - 1);
    v31 -= v30;
  }

  while (v31 > 0);
LABEL_78:
  v61 = v30 + v31;
  if (SHIBYTE(v77) < 0)
  {
    v66 = (v77 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    LODWORD(v20) = v73;
    v63 = v72;
    if (v76 == v66)
    {
      if ((v77 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_85:
      operator new();
    }

    v65 = v75.__locale_;
    v64 = v76++;
  }

  else
  {
    v62 = HIBYTE(v77);
    LODWORD(v20) = v73;
    v63 = v72;
    if (HIBYTE(v77) == 22)
    {
      goto LABEL_85;
    }

LABEL_82:
    v64 = v62;
    HIBYTE(v77) = (v62 + 1) & 0x7F;
    v65 = &v75;
  }

  v67 = &v65[v64];
  *v67 = v61;
  v67[1] = 0;
  v68 = (v63->__vftable[1].~facet_0)(v63);
  result = sub_23F2B14EC(v71, v9, v15, v20, &v75, v68, a3, a4);
  if (SHIBYTE(v77) < 0)
  {
    v69 = result;
    operator delete(v75.__locale_);
    result = v69;
  }

  if (v80 < 0)
  {
    v70 = result;
    operator delete(v78.__locale_);
    return v70;
  }

  return result;
}

void sub_23F2B3EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

_WORD *sub_23F2B3F48(_WORD *a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return sub_23F2B4210(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return sub_23F2B42B0(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v21 = a3;
      v13 = a1;
      v14 = a2 - a1;
      v16 = sub_23F2B41A8(a3, a4);
      if (v14 < v16)
      {
        return a2;
      }

      v4 = v13 + v16;
      v17 = (v4 - 1);
      v18 = v21;
      do
      {
        *v17-- = a0123456789abcd[(v18 % a4)];
        v19 = v18 >= a4;
        v18 /= a4;
      }

      while (v19);
      return v4;
    }

    return sub_23F2B435C(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v7 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v7 - (qword_23F3472B8[v7] > a3) + 1))
  {
    if (HIDWORD(a3))
    {
      if (a3 > 0x2540BE3FFLL)
      {
        v8 = a3 / 0x2540BE400;
        v9 = a3;
        a1 = sub_23F2B1ED4(a1, a3 / 0x2540BE400);
        a3 = v9 - 10000000000 * v8;
      }

      *a1 = *&a00010203040506[2 * (a3 / 0x5F5E100)];
      a1[1] = *&a00010203040506[2 * (a3 % 0x5F5E100 / 0xF4240)];
      v10 = a3 % 0x5F5E100 % 0xF4240;
      a1[2] = *&a00010203040506[2 * (v10 / 0x2710uLL)];
      v10 %= 0x2710u;
      a1[3] = *&a00010203040506[2 * (v10 / 0x64u)];
      a1[4] = *&a00010203040506[2 * (v10 % 0x64u)];
      return a1 + 5;
    }

    else
    {
      return sub_23F2B1ED4(a1, a3);
    }
  }

  return v4;
}

uint64_t sub_23F2B41A8(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

uint64_t sub_23F2B4210(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x11)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 4;
      *(v6 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v6 -= 4;
      v8 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v8);
  }

  v9 = (v6 - 1);
  do
  {
    *v9-- = a01[v7 & 1];
    v8 = v7 > 1;
    v7 >>= 1;
  }

  while (v8);
  return v5;
}

uint64_t sub_23F2B42B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x41)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 6;
      *(v6 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x40);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a01234567[v7 & 7];
    v9 = v7 > 7;
    v7 >>= 3;
  }

  while (v9);
  return v5;
}

uint64_t sub_23F2B435C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (67 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x101)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 8;
      *(v6 - 2) = *&a00010203040506[2 * a3 + 392];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x100);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a0123456789abcd_0[v7 & 0xF];
    v9 = v7 > 0xF;
    v7 >>= 4;
  }

  while (v9);
  return v5;
}

uint64_t sub_23F2B4400(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = -1;
  v17 = 32;
  v18 = 0;
  v19 = 0;
  if (**(a1 + 16) == 1)
  {
    v6 = *a1;
    v7 = sub_23F2ADDD4(&v15, *a1, 311);
    if (BYTE1(v15) - 2 >= 6 && BYTE1(v15) != 0)
    {
      if (BYTE1(v15) != 10)
      {
        sub_23F2AE878();
      }

      v14 = v7;
      sub_23F2AEB1C(&v15, 48, "an integer", -1);
      v7 = v14;
      if ((v15 & 7) == 0)
      {
        LOBYTE(v15) = v15 | 1;
      }
    }

    *v6 = v7;
  }

  v9 = *(a1 + 8);
  v11 = sub_23F2AF2AC(&v15, v9);
  if ((v11 & 0xFF00) == 0xA00)
  {
    if (__PAIR128__(-1, -257) >= __PAIR128__((a2 >= 0x80) + a3 - 1, a2 - 128))
    {
      sub_23F2AD0A0("Integral value outside the range of the char type");
    }

    v12 = *v9;
    __src = a2;
    result = sub_23F2AF788(&__src, 1uLL, v12, v11, v10, 1);
  }

  else
  {
    result = sub_23F2B4570((a2 ^ (a3 >> 63)) - (a3 >> 63), (__PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63)) >> 64, v9, v11, v10, a3 < 0);
  }

  *v9 = result;
  return result;
}

uint64_t sub_23F2B4570(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v16 = *MEMORY[0x277D85DE8];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    v12 = 2;
    if (BYTE1(a4) == 2)
    {
      v11 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v11 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v16;
LABEL_18:
    result = sub_23F2B46DC(a1, a2, a3, v8, a5, a6, v13, v9, v11, v12);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    v12 = 16;
    if (BYTE1(a4) == 6)
    {
      v11 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v11 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v14;
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    result = sub_23F2B46DC(a1, a2, a3, a4, a5, a6, v13, &v14 + 5, 0, 10);
    goto LABEL_19;
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  result = sub_23F2B46DC(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, v13, v15, v6, 8);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F2B46DC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, signed int a10)
{
  v10 = a7;
  v13 = a4;
  if (a6)
  {
    v14 = 45;
LABEL_7:
    *a7 = v14;
    v16 = a7 + 1;
    goto LABEL_8;
  }

  v15 = (a4 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a7;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v17 = *a9;
      if (*a9)
      {
        v18 = a9 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = sub_23F2B4DE0(v16, a8, a1, a2, a10);
  v74 = v20;
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  v21 = v20;
  if ((*(a3 + 40) & 1) == 0)
  {
    MEMORY[0x245CACAF0](&v79);
    v22 = (a3 + 32);
    if (*(a3 + 40) == 1)
    {
      std::locale::operator=(v22, &v79);
    }

    else
    {
      std::locale::locale(v22, &v79);
      *(a3 + 40) = 1;
    }

    std::locale::~locale(&v79);
  }

  std::locale::locale(&v76, (a3 + 32));
  v23 = std::locale::use_facet(&v76, MEMORY[0x277D826C0]);
  v24 = v21 - v16;
  std::locale::~locale(&v76);
  (v23->__vftable[1].__on_zero_shared)(&v79, v23);
  if ((v81 & 0x8000000000000000) != 0)
  {
    locale = v79.__locale_;
    v26 = v80;
    if (v80 && v24 > *v79.__locale_)
    {
      v73 = v23;
      v27 = v79.__locale_;
      goto LABEL_26;
    }

    operator delete(v79.__locale_);
LABEL_50:
    v43 = HIDWORD(a4);
    v44 = *a3;
    if ((v13 & 7) == 4)
    {
      v45 = v16 - v10;
      v46 = *(v44 + 32);
      v47 = v16 - v10;
      if (!v46 || ((v49 = *v46, v48 = v46[1], *v46 - v48 >= v45) ? (v47 = v16 - v10) : (v47 = *v46 - v48), (v46[1] = v48 + v45, v49 > v48) ? (v50 = v47 == 0) : (v50 = 1), !v50))
      {
        v58 = *(v44 + 16);
        do
        {
          v60 = *(v44 + 8) - v58;
          if (v60 < v47 + 1)
          {
            (*(v44 + 24))(v44, v47 + 2);
            v58 = *(v44 + 16);
            v60 = *(v44 + 8) - v58;
          }

          if (v60 >= v47)
          {
            v61 = v47;
          }

          else
          {
            v61 = v60;
          }

          if (v61)
          {
            memmove((*v44 + v58), v10, v61);
            v58 = *(v44 + 16);
          }

          v58 += v61;
          *(v44 + 16) = v58;
          v10 += v61;
          v59 = v47 > v60;
          v47 -= v61;
        }

        while (v59);
      }

      v51 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v45)
      {
        v52 = v45;
      }

      else
      {
        v52 = HIDWORD(a4);
      }

      v43 = (HIDWORD(a4) - v52);
      v44 = *a3;
      v53 = 48;
      v54 = a5;
    }

    else
    {
      v54 = a5;
      v53 = BYTE4(a5);
      v51 = a4;
      v16 = v10;
    }

    v55 = v43 << 32;
    v56 = v54 & 0xFFFFFF00FFFFFFFFLL | (v53 << 32);
    if ((a4 & 0xFF00) == 0x700)
    {
      return sub_23F2B1A78(v16, v74, v44, a4 & 0xFFFF0700 | v55 | v51, v56, sub_23F2B1CF8);
    }

    else
    {
      return sub_23F2AF788(v16, v74 - v16, v44, v55 | a4 & 0xFFFFFF00 | v51, v56, v74 - v16);
    }
  }

  if (!v81 || v24 <= SLOBYTE(v79.__locale_))
  {
    goto LABEL_50;
  }

  v73 = v23;
  locale = &v79;
  v27 = v79.__locale_;
  v26 = v80;
LABEL_26:
  v72 = *a3;
  v76.__locale_ = 0;
  v77 = 0;
  v78 = 0;
  v28 = v27 + v26;
  if (v81 >= 0)
  {
    v29 = &v79 + v81;
  }

  else
  {
    v29 = v28;
  }

  v30 = *locale;
  v31 = *locale;
  v32 = v24 - v30;
  if (v24 <= v30)
  {
    v63 = 0;
    v62 = v31 + v32;
    v64 = v73;
    goto LABEL_82;
  }

  v33 = v29 - 1;
  do
  {
    while (1)
    {
      v34 = HIBYTE(v78);
      if ((SHIBYTE(v78) & 0x80000000) == 0)
      {
        break;
      }

      v35 = (v78 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v77 == v35)
      {
        if ((v78 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

LABEL_37:
        operator new();
      }

      v37 = v77++;
      v38 = v76.__locale_ + v37;
      *v38 = v31;
      v38[1] = 0;
      if (locale != v33)
      {
        goto LABEL_41;
      }

LABEL_31:
      v31 = *locale;
      v32 -= *locale;
      if (v32 <= 0)
      {
        goto LABEL_78;
      }
    }

    if (HIBYTE(v78) == 22)
    {
      goto LABEL_37;
    }

    HIBYTE(v78) = (HIBYTE(v78) + 1) & 0x7F;
    v36 = &v76 + v34;
    *v36 = v31;
    v36[1] = 0;
    if (locale == v33)
    {
      goto LABEL_31;
    }

LABEL_41:
    v39 = (locale + 1);
    v40 = (locale + 1);
    do
    {
      v41 = *v40++;
      v31 = v41;
      if (v41)
      {
        v42 = 1;
      }

      else
      {
        v42 = v39 == v33;
      }

      v39 = v40;
    }

    while (!v42);
    locale = (v40 - 1);
    v32 -= v31;
  }

  while (v32 > 0);
LABEL_78:
  v62 = v31 + v32;
  if (SHIBYTE(v78) < 0)
  {
    v67 = (v78 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    LODWORD(v21) = v74;
    v64 = v73;
    if (v77 == v67)
    {
      if ((v78 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_85:
      operator new();
    }

    v66 = v76.__locale_;
    v65 = v77++;
  }

  else
  {
    v63 = HIBYTE(v78);
    LODWORD(v21) = v74;
    v64 = v73;
    if (HIBYTE(v78) == 22)
    {
      goto LABEL_85;
    }

LABEL_82:
    v65 = v63;
    HIBYTE(v78) = (v63 + 1) & 0x7F;
    v66 = &v76;
  }

  v68 = &v66[v65];
  *v68 = v62;
  v68[1] = 0;
  v69 = (v64->__vftable[1].~facet_0)(v64);
  result = sub_23F2B14EC(v72, v10, v16, v21, &v76, v69, a4, a5);
  if (SHIBYTE(v78) < 0)
  {
    v70 = result;
    operator delete(v76.__locale_);
    result = v70;
  }

  if (v81 < 0)
  {
    v71 = result;
    operator delete(v79.__locale_);
    return v71;
  }

  return result;
}

void sub_23F2B4D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

char *sub_23F2B4DE0(_WORD *a1, uint64_t a2, unint64_t a3, unint64_t a4, signed int a5)
{
  v5 = a2;
  HIDWORD(v7) = a5 - 2;
  LODWORD(v7) = a5 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return sub_23F2B5640(a1, a2, a3, a4);
    }

    if (v6 == 3)
    {
      return sub_23F2B5710(a1, a2, a3, a4);
    }

    if (v6 != 7)
    {
      v18 = a1;
      v19 = a2 - a1;
      v27 = a3;
      v20 = sub_23F2B50C4(a3, a4, a5);
      if (v19 >= v20)
      {
        v5 = v18 + v20;
        v21 = (v5 - 1);
        v23 = a4;
        v22 = v27;
        do
        {
          v24 = v22;
          v25 = v23;
          v22 = __udivti3();
          *v21-- = a0123456789abcd[(v24 - v22 * a5)];
        }

        while (__PAIR128__(v25, v24) >= a5);
      }

      return v5;
    }

    return sub_23F2B57E8(a1, a2, a3, a4);
  }

  v8 = a2 - a1;
  if (a4)
  {
    if (v8 <= 38)
    {
      v9 = (1233 * (128 - __clz(a4))) >> 12;
      if (v8 < v9 - (__PAIR128__(a4, a3) < xmmword_23F347360[v9]) + 1)
      {
        return v5;
      }
    }

    return sub_23F2B51AC(a1, a3, a4);
  }

  if (v8 > 19 || (v10 = (1233 * (64 - __clz(a3 | 1))) >> 12, v8 >= v10 - (qword_23F3472B8[v10] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return sub_23F2B1ED4(a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      v12 = a3 / 0x2540BE400;
      v13 = a3;
      a1 = sub_23F2B1ED4(a1, a3 / 0x2540BE400);
      a3 = v13 - 10000000000 * v12;
    }

    *a1 = *&a00010203040506[2 * (a3 / 0x5F5E100)];
    a1[1] = *&a00010203040506[2 * (a3 % 0x5F5E100 / 0xF4240)];
    v14 = a3 % 0x5F5E100 % 0xF4240;
    a1[2] = *&a00010203040506[2 * (v14 / 0x2710uLL)];
    v14 %= 0x2710u;
    a1[3] = *&a00010203040506[2 * (v14 / 0x64u)];
    a1[4] = *&a00010203040506[2 * (v14 % 0x64u)];
    return (a1 + 5);
  }

  return v5;
}

uint64_t sub_23F2B50C4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) >= a3)
  {
    v6 = a3 * a3;
    v7 = a3 * a3 * a3;
    v3 = 4;
    while (1)
    {
      if (__PAIR128__(a2, a1) < v6)
      {
        return (v3 - 2);
      }

      if (__PAIR128__(a2, a1) < v7)
      {
        break;
      }

      if (__PAIR128__(a2, a1) < v6 * v6)
      {
        return v3;
      }

      a1 = __udivti3();
      v3 = (v3 + 4);
      if (__PAIR128__(a2, a1) < a3)
      {
        return (v3 - 3);
      }
    }

    return (v3 - 1);
  }

  else
  {
    return 1;
  }
}

char *sub_23F2B51AC(_BYTE *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    *(v3 + 1) = ((1441151881 * v7) >> 57) + 48;
    v3[1] = *&a00010203040506[2 * (v7 % 0x5F5E100 / 0xF4240uLL)];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    v3[2] = *&a00010203040506[2 * (v8 / 0x2710uLL)];
    v8 %= 0x2710u;
    v3[3] = *&a00010203040506[2 * (v8 / 0x64u)];
    v3[4] = *&a00010203040506[2 * (v8 % 0x64u)];
    v9 = __udivti3();
    v3[5] = *&a00010203040506[2 * (v9 / 0x5F5E100)];
    v10 = v9 % 0x5F5E100;
    v3[6] = *&a00010203040506[2 * (v10 / 0xF4240uLL)];
    v10 %= 0xF4240u;
    v3[7] = *&a00010203040506[2 * (v10 / 0x2710uLL)];
    LOWORD(v10) = v10 % 0x2710;
    v3[8] = *&a00010203040506[2 * (v10 / 0x64u)];
    v3[9] = *&a00010203040506[2 * (v10 % 0x64u)];
    v6 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (HIDWORD(v4))
    {
      if (v4 > 0x2540BE3FFLL)
      {
        v3 = sub_23F2B1ED4(v3, v4 / 0x2540BE400);
        v5 %= 0x2540BE400uLL;
      }

      *v3 = *&a00010203040506[2 * (v5 / 0x5F5E100)];
      v11 = v5 % 0x5F5E100;
      v3[1] = *&a00010203040506[2 * (v11 / 0xF4240uLL)];
      v11 %= 0xF4240u;
      v3[2] = *&a00010203040506[2 * (v11 / 0x2710uLL)];
      v11 %= 0x2710u;
      v3[3] = *&a00010203040506[2 * (v11 / 0x64u)];
      v3[4] = *&a00010203040506[2 * (v11 % 0x64u)];
      v6 = v3 + 5;
    }

    else
    {
      v6 = sub_23F2B1ED4(v3, v4);
    }
  }

  v12 = __umodti3();
  *v6 = v12 / 0x2540BE400 / 0x5F5E100 + 48;
  v13 = v12 / 0x2540BE400 % 0x5F5E100;
  *(v6 + 1) = *&a00010203040506[2 * (v13 / 0xF4240uLL)];
  v13 %= 0xF4240u;
  *(v6 + 3) = *&a00010203040506[2 * (v13 / 0x2710uLL)];
  v13 %= 0x2710u;
  *(v6 + 5) = *&a00010203040506[2 * (v13 / 0x64u)];
  *(v6 + 7) = *&a00010203040506[2 * (v13 % 0x64u)];
  *(v6 + 9) = *&a00010203040506[2 * (v12 % 0x2540BE400 / 0x5F5E100)];
  v14 = v12 % 0x2540BE400 % 0x5F5E100;
  *(v6 + 11) = *&a00010203040506[2 * (v14 / 0xF4240uLL)];
  v14 %= 0xF4240u;
  *(v6 + 13) = *&a00010203040506[2 * (v14 / 0x2710uLL)];
  v14 %= 0x2710u;
  *(v6 + 15) = *&a00010203040506[2 * (v14 / 0x64u)];
  *(v6 + 17) = *&a00010203040506[2 * (v14 % 0x64u)];
  return v6 + 19;
}

uint64_t sub_23F2B5640(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v8 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v10 = a3;
    v12 = a4;
    v9 = v8;
  }

  else
  {
    v9 = a1 + v6;
    do
    {
      *(&v11 + 1) = a4;
      *&v11 = a3;
      v10 = v11 >> 4;
      v12 = a4 >> 4;
      *(v9 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v9 -= 4;
      v13 = a3 <= 0x10F;
      a3 = v10;
      a4 >>= 4;
    }

    while (!v13);
  }

  v14 = (v9 - 1);
  do
  {
    v15 = v10 & 1;
    v13 = v10 <= 1;
    *(&v16 + 1) = v12;
    *&v16 = v10;
    v10 = v16 >> 1;
    v12 >>= 1;
    *v14-- = a01[v15];
  }

  while (!v13);
  return v8;
}

uint64_t sub_23F2B5710(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v8 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v10 = a3;
    v9 = v8;
  }

  else
  {
    v9 = a1 + v6;
    do
    {
      *(&v11 + 1) = a4;
      *&v11 = a3;
      v10 = v11 >> 6;
      a4 >>= 6;
      *(v9 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v9 -= 2;
      a3 = v10;
    }

    while (v10 > 0x40);
  }

  v12 = (v9 - 1);
  do
  {
    v13 = v10 & 7;
    v14 = v10 <= 7;
    *(&v15 + 1) = a4;
    *&v15 = v10;
    v10 = v15 >> 3;
    a4 >>= 3;
    *v12-- = a01234567[v13];
  }

  while (!v14);
  return v8;
}

uint64_t sub_23F2B57E8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (131 - v5) >> 2;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v8 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v10 = a3;
    v9 = v8;
  }

  else
  {
    v9 = a1 + v6;
    do
    {
      *(&v11 + 1) = a4;
      *&v11 = a3;
      v10 = v11 >> 8;
      a4 >>= 8;
      *(v9 - 2) = *&a00010203040506[2 * a3 + 392];
      v9 -= 2;
      a3 = v10;
    }

    while (v10 > 0x100);
  }

  v12 = (v9 - 1);
  do
  {
    v13 = v10 & 0xF;
    v14 = v10 <= 0xF;
    *(&v15 + 1) = a4;
    *&v15 = v10;
    v10 = v15 >> 4;
    a4 >>= 4;
    *v12-- = a0123456789abcd_0[v13];
  }

  while (!v14);
  return v8;
}

uint64_t sub_23F2B58B4(uint64_t a1, unsigned int a2)
{
  v13 = 0;
  v14 = -1;
  v15 = 32;
  v16 = 0;
  v17 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = sub_23F2ADDD4(&v13, *a1, 311);
    if (BYTE1(v13) - 2 >= 6 && BYTE1(v13) != 0)
    {
      if (BYTE1(v13) != 10)
      {
        sub_23F2AE878();
      }

      v12 = v5;
      sub_23F2AEB1C(&v13, 48, "an integer", -1);
      v5 = v12;
      if ((v13 & 7) == 0)
      {
        LOBYTE(v13) = v13 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = sub_23F2AF2AC(&v13, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 >= 0x80)
    {
      sub_23F2AD0A0("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = sub_23F2AF788(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    result = sub_23F2AF460(a2, v7, v9, v8, 0);
    *v7 = result;
  }

  return result;
}

uint64_t sub_23F2B5A10(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v14 = -1;
  v15 = 32;
  v16 = 0;
  v17 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = sub_23F2ADDD4(&v13, *a1, 311);
    if (BYTE1(v13) - 2 >= 6 && BYTE1(v13) != 0)
    {
      if (BYTE1(v13) != 10)
      {
        sub_23F2AE878();
      }

      v12 = v5;
      sub_23F2AEB1C(&v13, 48, "an integer", -1);
      v5 = v12;
      if ((v13 & 7) == 0)
      {
        LOBYTE(v13) = v13 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = sub_23F2AF2AC(&v13, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 >= 0x80)
    {
      sub_23F2AD0A0("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = sub_23F2AF788(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    result = sub_23F2B36F8(a2, v7, v9, v8, 0);
    *v7 = result;
  }

  return result;
}

uint64_t sub_23F2B5B6C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v15 = 0;
  v16 = -1;
  v17 = 32;
  v18 = 0;
  v19 = 0;
  if (**(a1 + 16) == 1)
  {
    v6 = *a1;
    v7 = sub_23F2ADDD4(&v15, *a1, 311);
    if (BYTE1(v15) - 2 >= 6 && BYTE1(v15) != 0)
    {
      if (BYTE1(v15) != 10)
      {
        sub_23F2AE878();
      }

      v14 = v7;
      sub_23F2AEB1C(&v15, 48, "an integer", -1);
      v7 = v14;
      if ((v15 & 7) == 0)
      {
        LOBYTE(v15) = v15 | 1;
      }
    }

    *v6 = v7;
  }

  v9 = *(a1 + 8);
  v11 = sub_23F2AF2AC(&v15, v9);
  if ((v11 & 0xFF00) == 0xA00)
  {
    if (__PAIR128__(a3, a2) >= 0x80)
    {
      sub_23F2AD0A0("Integral value outside the range of the char type");
    }

    v12 = *v9;
    __src = a2;
    result = sub_23F2AF788(&__src, 1uLL, v12, v11, v10, 1);
  }

  else
  {
    result = sub_23F2B4570(a2, a3, v9, v11, v10, 0);
  }

  *v9 = result;
  return result;
}

uint64_t sub_23F2B5CC0(uint64_t a1, int64_t a2, unint64_t a3, float a4)
{
  v84[32] = *MEMORY[0x277D85DE8];
  v7 = LODWORD(a4) >> 31;
  if ((LODWORD(a4) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v8 = fabsf(a4);
    if (a3 == -1)
    {
      v9 = 149;
    }

    else
    {
      v9 = a3;
    }

    v80 = v9;
    v81 = 0;
    if (v9 < 150)
    {
      v82 = v9 + 45;
      if ((v9 + 45) >= 0x101)
      {
        operator new();
      }
    }

    else
    {
      v80 = 149;
      v81 = v9 - 149;
      v82 = 194;
    }

    __src = v84;
    sub_23F2B65CC(&v80, v7, ((a3 & 0x80000000) == 0), (a2 >> 3) & 3, BYTE1(a2), &v75, v8);
    if ((a2 & 0x20) != 0)
    {
      v10 = v76;
      v11 = *v78;
      if (v76 != *v78)
      {
        if ((BYTE1(a2) - 17) > 1u)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      ++*v78;
      *v11 = 46;
      v12 = v77;
      v13 = (*v78 - 1);
      if (v77 != (*v78 - 1))
      {
        if (v77 + 1 == v13)
        {
          v15 = *v77;
          *v77 = *(v77 + 1);
          v12[1] = v15;
        }

        else
        {
          v14 = *(*v78 - 1);
          memmove(v77 + 1, v77, v13 - v77);
          *v12 = v14;
        }
      }

      v10 = v77;
      v76 = v77;
      v77 = v77 + 1;
      if ((BYTE1(a2) - 17) <= 1u)
      {
LABEL_18:
        if (a3 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v16 = 6;
        }

        if (v77 == *v78)
        {
          v17 = v75 - v10;
        }

        else
        {
          v17 = -1;
        }

        v18 = v17 + v16;
        v19 = v77 + ~v10;
        if (v19 < v18)
        {
          v81 += v18 - v19;
        }
      }
    }

LABEL_28:
    if ((a2 & 0x40) != 0)
    {
      v34 = *a1;
      if ((*(a1 + 40) & 1) == 0)
      {
        MEMORY[0x245CACAF0](&v79);
        v35 = (a1 + 32);
        if (*(a1 + 40) == 1)
        {
          std::locale::operator=(v35, &v79);
        }

        else
        {
          std::locale::locale(v35, &v79);
          *(a1 + 40) = 1;
        }

        std::locale::~locale(&v79);
      }

      std::locale::locale(&v74, (a1 + 32));
      v37 = sub_23F2B6B90(v34, &v80, &v75, &v74, a2, a3);
      std::locale::~locale(&v74);
      goto LABEL_74;
    }

    v20 = *v78;
    v21 = __src;
    v22 = *v78 - __src;
    v23 = v81;
    if (*v78 - __src + v81 < a2 >> 32)
    {
      v24 = *a1;
      if ((a2 & 7) == 4)
      {
        if (__src != v75)
        {
          v25 = *__src;
          v26 = *(v24 + 32);
          if (!v26 || (v28 = *v26, v27 = v26[1], v26[1] = v27 + 1, v27 < v28))
          {
            v29 = *v24;
            v30 = *(v24 + 16);
            *(v24 + 16) = v30 + 1;
            *(v29 + v30) = v25;
            if (*(v24 + 16) == *(v24 + 8))
            {
              v31 = v24;
              (*(v24 + 24))(v24, 2);
              v24 = v31;
            }
          }

          ++v21;
          v20 = *v78;
        }

        a2 = a2 & 0xFFFFFFFFFFFFFF00 | a2 & 0xB8 | 3;
        v32 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
        if (!v23)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v32 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
        if (!v81)
        {
LABEL_38:
          v33 = sub_23F2AF788(v21, v20 - v21, v24, a2, v32, v22);
LABEL_70:
          v37 = v33;
LABEL_74:
          if (v82 >= 0x101)
          {
            operator delete(__src);
          }

          v53 = *MEMORY[0x277D85DE8];
          return v37;
        }
      }

      v33 = sub_23F2B76E8(v21, v20, v24, a2, v32, v22, v77, v23);
      goto LABEL_70;
    }

    if (v81)
    {
      v36 = v77;
      if (v77 != *v78)
      {
        v37 = *a1;
        v38 = v77 - __src;
        v39 = *(*a1 + 32);
        if (v39)
        {
          v40 = *v39;
          v41 = v39[1];
          if (*v39 - v41 >= v38)
          {
            v42 = v77 - __src;
          }

          else
          {
            v42 = *v39 - v41;
          }

          v43 = v41 + v38;
          v39[1] = v41 + v38;
          if (v40 <= v41 || !v42)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v42 = v77 - __src;
        }

        v59 = *(v37 + 16);
        do
        {
          v60 = *(v37 + 8) - v59;
          if (v60 < v42 + 1)
          {
            (*(v37 + 24))(v37, v42 + 2);
            v59 = *(v37 + 16);
            v60 = *(v37 + 8) - v59;
          }

          if (v60 >= v42)
          {
            v61 = v42;
          }

          else
          {
            v61 = v60;
          }

          if (v61)
          {
            memmove((*v37 + v59), v21, v61);
            v59 = *(v37 + 16);
          }

          v59 += v61;
          *(v37 + 16) = v59;
          v21 += v61;
          v50 = v42 > v60;
          v42 -= v61;
        }

        while (v50);
        v39 = *(v37 + 32);
        if (!v39)
        {
          goto LABEL_115;
        }

        v40 = *v39;
        v43 = v39[1];
LABEL_108:
        v62 = v43 + v23;
        v39[1] = v43 + v23;
        v63 = v40 >= v43;
        v64 = v40 - v43;
        if (v64 == 0 || !v63)
        {
          v67 = v20 - v36;
          goto LABEL_124;
        }

        if (v64 < v23)
        {
          v23 = v64;
        }

        v59 = *(v37 + 16);
        do
        {
LABEL_115:
          v65 = *(v37 + 8) - v59;
          if (v65 < v23 + 1)
          {
            (*(v37 + 24))(v37, v23 + 2);
            v59 = *(v37 + 16);
            v65 = *(v37 + 8) - v59;
          }

          if (v65 >= v23)
          {
            v66 = v23;
          }

          else
          {
            v66 = v65;
          }

          if (v66)
          {
            memset((*v37 + v59), 48, v66);
            v59 = *(v37 + 16);
          }

          v59 += v66;
          *(v37 + 16) = v59;
          v50 = v23 > v65;
          v23 -= v66;
        }

        while (v50);
        v39 = *(v37 + 32);
        v67 = v20 - v36;
        if (!v39)
        {
          do
          {
LABEL_133:
            v70 = *(v37 + 8) - v59;
            if (v70 < v67 + 1)
            {
              (*(v37 + 24))(v37, v67 + 2);
              v59 = *(v37 + 16);
              v70 = *(v37 + 8) - v59;
            }

            if (v70 >= v67)
            {
              v71 = v67;
            }

            else
            {
              v71 = v70;
            }

            if (v71)
            {
              memmove((*v37 + v59), v36, v71);
              v59 = *(v37 + 16);
            }

            v59 += v71;
            *(v37 + 16) = v59;
            v36 += v71;
            v50 = v67 > v70;
            v67 -= v71;
          }

          while (v50);
          goto LABEL_74;
        }

        v40 = *v39;
        v62 = v39[1];
LABEL_124:
        v68 = v40 - v62;
        if (v40 - v62 >= v67)
        {
          v68 = v67;
        }

        v39[1] = v62 + v67;
        if (v40 <= v62 || v68 == 0)
        {
          goto LABEL_74;
        }

        v59 = *(v37 + 16);
        v67 = v68;
        goto LABEL_133;
      }
    }

    v37 = *a1;
    v44 = *(*a1 + 32);
    if (!v44)
    {
      goto LABEL_58;
    }

    v45 = *v44;
    v46 = v44[1];
    v47 = v46 + v22;
    if (*v44 - v46 < v22)
    {
      v22 = *v44 - v46;
    }

    v44[1] = v47;
    if (v45 > v46 && v22 != 0)
    {
LABEL_58:
      v49 = *(v37 + 16);
      do
      {
        v51 = *(v37 + 8) - v49;
        if (v51 < v22 + 1)
        {
          (*(v37 + 24))(v37, v22 + 2);
          v49 = *(v37 + 16);
          v51 = *(v37 + 8) - v49;
        }

        if (v51 >= v22)
        {
          v52 = v22;
        }

        else
        {
          v52 = v51;
        }

        if (v52)
        {
          memmove((*v37 + v49), v21, v52);
          v49 = *(v37 + 16);
        }

        v49 += v52;
        *(v37 + 16) = v49;
        v21 += v52;
        v50 = v22 > v51;
        v22 -= v52;
      }

      while (v50);
      v44 = *(v37 + 32);
      if (!v44)
      {
        do
        {
LABEL_88:
          v57 = *(v37 + 8) - v49;
          if (v57 < v23 + 1)
          {
            (*(v37 + 24))(v37, v23 + 2);
            v49 = *(v37 + 16);
            v57 = *(v37 + 8) - v49;
          }

          if (v57 >= v23)
          {
            v58 = v23;
          }

          else
          {
            v58 = v57;
          }

          if (v58)
          {
            memset((*v37 + v49), 48, v58);
            v49 = *(v37 + 16);
          }

          v49 += v58;
          *(v37 + 16) = v49;
          v50 = v23 > v57;
          v23 -= v58;
        }

        while (v50);
        goto LABEL_74;
      }

      v45 = *v44;
      v47 = v44[1];
    }

    v55 = v45 - v47;
    if (v45 - v47 >= v23)
    {
      v55 = v23;
    }

    v44[1] = v47 + v23;
    if (v45 <= v47 || v55 == 0)
    {
      goto LABEL_74;
    }

    v49 = *(v37 + 16);
    v23 = v55;
    goto LABEL_88;
  }

  v72 = *a1;
  v73 = *MEMORY[0x277D85DE8];

  return sub_23F2B6494(v72, a2, a3, a4 < 0.0, 0);
}

void sub_23F2B6448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2B6494(uint64_t a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    p_src = v13;
    __src = 45;
    if (BYTE1(a2) > 0x10u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      p_src = v13;
      __src = 43;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else if (v6 == 3)
    {
      p_src = v13;
      __src = 32;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      p_src = &__src;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }
  }

  if (((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v7 = 6;
    goto LABEL_15;
  }

LABEL_13:
  v7 = 6;
  if (BYTE1(a2) != 18)
  {
    v7 = 0;
  }

LABEL_15:
  v8 = 3;
  if (!a5)
  {
    v8 = 0;
  }

  v9 = &aInfnaninfnan[v7 + v8];
  *p_src = *v9;
  p_src[2] = v9[2];
  if ((a2 & 7) == 4)
  {
    v10 = a2 & 0xF8 | 3;
  }

  else
  {
    v10 = a2;
  }

  return sub_23F2AF788(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v10, a3, p_src - &__src + 3);
}

unsigned __int8 *sub_23F2B65CC@<X0>(unsigned int *a1@<X0>, char a2@<W1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = 45;
  }

  else if (a4 == 2)
  {
    v9 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v9 = 32;
  }

  *v8++ = v9;
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v15 = *a1;
      *a6 = v8;
      result = MEMORY[0x245CACBE0](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
      *(a6 + 16) = result;
      *(a6 + 24) = result;
      if (v15)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = 0;
      }

      *(a6 + 8) = &result[-v16];
      return result;
    }

    if (a5 == 17)
    {
      v17 = *a1;
      a1[1] = 0;
      *a6 = v8;
      result = MEMORY[0x245CACBE0](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
      *(a6 + 24) = result;
      v18 = v8 + 1;
      if (v8 + 1 != result)
      {
        v19 = result - v18;
        if (result - v18 >= 4)
        {
          v20 = 6;
          if (v19 < 6)
          {
            v20 = result - v18;
          }

          v21 = -v20;
          while (result[v21] != 101)
          {
            if (++v21 == -3)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_95;
        }

LABEL_44:
        *(a6 + 16) = result;
        v24 = result;
        result = memchr(v18, 46, v19);
        if (result)
        {
          v25 = result;
        }

        else
        {
          v25 = v24;
        }

        *(a6 + 8) = v25;
        return result;
      }

LABEL_76:
      *(a6 + 8) = result;
      *(a6 + 16) = result;
      return result;
    }

    v27 = *a1;
    a1[1] = 0;
    *a6 = v8;
    v28 = MEMORY[0x245CACBE0](v8, *(a1 + 2) + *(a1 + 1), 3, v27);
    *(a6 + 24) = v28;
    result = v8 + 1;
    if (v8 + 1 == v28)
    {
      *(a6 + 8) = v28;
      *(a6 + 16) = v28;
      v32 = *(a6 + 16);
      if (v32 == *(a6 + 24))
      {
        return result;
      }
    }

    else
    {
      v29 = v28 - result;
      if (v28 - result < 4)
      {
LABEL_61:
        *(a6 + 16) = v28;
        result = memchr(result, 46, v29);
        if (result)
        {
          v28 = result;
        }

        *(a6 + 8) = v28;
        v32 = *(a6 + 16);
        if (v32 == *(a6 + 24))
        {
          return result;
        }
      }

      else
      {
        v30 = 6;
        if (v29 < 6)
        {
          v30 = v28 - result;
        }

        v31 = -v30;
        while (*(v28 + v31) != 101)
        {
          if (++v31 == -3)
          {
            goto LABEL_61;
          }
        }

        *(a6 + 16) = v28 + v31;
        if (*result == 46)
        {
          v28 = (v8 + 1);
        }

        *(a6 + 8) = v28;
        v32 = *(a6 + 16);
        if (v32 == *(a6 + 24))
        {
          return result;
        }
      }
    }

    *v32 = 69;
    return result;
  }

  if (a5 > 11)
  {
    if (a5 == 12)
    {
      if (a3)
      {
        v26 = *a1;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }

      return sub_23F2B79AC(a1, v26, v8, a6);
    }

    else if (a5 == 13)
    {
      v10 = *a1;
      *a6 = v8;
      result = MEMORY[0x245CACBE0](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
      *(a6 + 24) = result;
      v12 = v8 + 1;
      if (v8[1] == 46)
      {
        *(a6 + 8) = v12;
        v13 = result - v8 - 2;
        if (v13 < 4)
        {
LABEL_19:
          *(a6 + 16) = result;
        }

        else
        {
          if (v13 >= 6)
          {
            v13 = 6;
          }

          v14 = -v13;
          while (result[v14] != 101)
          {
            if (++v14 == -3)
            {
              goto LABEL_19;
            }
          }

          *(a6 + 16) = &result[v14];
        }
      }

      else
      {
        *(a6 + 8) = result;
        *(a6 + 16) = v12;
      }
    }

    else
    {
      v33 = *a1;
      *a6 = v8;
      result = MEMORY[0x245CACBE0](v8, *(a1 + 2) + *(a1 + 1), 1, v33);
      *(a6 + 24) = result;
      v34 = v8 + 1;
      if (v8[1] == 46)
      {
        *(a6 + 8) = v34;
        v35 = result - v8 - 2;
        if (v35 < 4)
        {
LABEL_72:
          *(a6 + 16) = result;
          *result = 69;
        }

        else
        {
          if (v35 >= 6)
          {
            v35 = 6;
          }

          v36 = -v35;
          while (result[v36] != 101)
          {
            if (++v36 == -3)
            {
              goto LABEL_72;
            }
          }

          v48 = &result[v36];
          *(a6 + 16) = v48;
          *v48 = 69;
        }
      }

      else
      {
        *(a6 + 8) = result;
        *(a6 + 16) = v34;
        *v34 = 69;
      }
    }

    return result;
  }

  if (a5)
  {
    if (a3)
    {
      v37 = *a1;
      *a6 = v8;
      if (v37 != -1)
      {
        result = MEMORY[0x245CACBE0](v8, *(a1 + 2) + *(a1 + 1), 4);
LABEL_88:
        *(a6 + 24) = result;
        v45 = v8[1];
        v44 = v8 + 1;
        if (v45 == 46)
        {
          v46 = result - 2;
          v47 = memchr(result - 5, 112, 3uLL);
          result = v44;
          if (v47)
          {
            v44 = v47;
          }

          else
          {
            v44 = v46;
          }
        }

        *(a6 + 8) = result;
        *(a6 + 16) = v44;
        return result;
      }
    }

    else
    {
      *a6 = v8;
      v43 = *(a1 + 2) + *(a1 + 1);
    }

    result = std::to_chars();
    goto LABEL_88;
  }

  if (a3)
  {
    v22 = *a1;
    a1[1] = 0;
    *a6 = v8;
    result = MEMORY[0x245CACBE0](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
    *(a6 + 24) = result;
    v18 = v8 + 1;
    if (v8 + 1 != result)
    {
      v19 = result - v18;
      if (result - v18 >= 4)
      {
        v23 = 6;
        if (v19 < 6)
        {
          v23 = result - v18;
        }

        v21 = -v23;
        while (result[v21] != 101)
        {
          if (++v21 == -3)
          {
            goto LABEL_44;
          }
        }

LABEL_95:
        *(a6 + 16) = &result[v21];
        if (*v18 != 46)
        {
          v18 = result;
        }

        *(a6 + 8) = v18;
        return result;
      }

      goto LABEL_44;
    }

    goto LABEL_76;
  }

  *a6 = v8;
  v38 = std::to_chars(v8, (*(a1 + 2) + *(a1 + 1)), a3, a7);
  v39 = v38;
  *(a6 + 24) = v38;
  v40 = v38 - v8;
  if (v38 - v8 < 4)
  {
LABEL_85:
    v42 = v38;
  }

  else
  {
    if (v40 >= 6)
    {
      v40 = 6;
    }

    v41 = -v40;
    while (*(v38 + v41) != 101)
    {
      if (++v41 == -3)
      {
        goto LABEL_85;
      }
    }

    v42 = v38 + v41;
  }

  *(a6 + 16) = v42;
  result = memchr(v8 + 1, 46, v42 - (v8 + 1));
  if (result)
  {
    v49 = result;
  }

  else
  {
    v49 = v42;
  }

  if (v49 == v42)
  {
    v49 = v39;
  }

  *(a6 + 8) = v49;
  return result;
}

uint64_t sub_23F2B6B90(uint64_t a1, uint64_t a2, void *a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v130 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v130->__vftable[1].__on_zero_shared)(__p);
  v10 = a3[2];
  v11 = *a3;
  if (v10 >= a3[1])
  {
    v10 = a3[1];
  }

  v12 = v10 - v11;
  v131 = a3;
  if ((SHIBYTE(v136) & 0x8000000000000000) != 0)
  {
    v13 = __p[1];
    if (!__p[1])
    {
      goto LABEL_42;
    }

    v16 = __p[0];
    v15 = *__p[0];
    if (v12 <= v15)
    {
      *__p[0] = 0;
      __p[1] = 0;
      goto LABEL_42;
    }

    v125 = a6;
    v126 = a5;
    v127 = a1;
    v17 = *__p[0];
    v14 = __p[0];
  }

  else
  {
    if (!HIBYTE(v136))
    {
      goto LABEL_42;
    }

    if (v12 <= SLOBYTE(__p[0]))
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(v136) = 0;
      goto LABEL_42;
    }

    v125 = a6;
    v126 = a5;
    v127 = a1;
    v14 = __p[0];
    v13 = __p[1];
    v15 = SLOBYTE(__p[0]);
    v16 = __p;
    v17 = __p[0];
  }

  v133 = 0uLL;
  v134 = 0;
  v18 = &v13[v14];
  if (v136 >= 0)
  {
    v19 = __p + SHIBYTE(v136);
  }

  else
  {
    v19 = v18;
  }

  v20 = v12 - v15;
  if (v12 <= v15)
  {
    v32 = 0;
    v31 = v17 + v20;
    goto LABEL_39;
  }

  v21 = (v19 - 1);
  do
  {
    while (1)
    {
      v22 = HIBYTE(v134);
      if ((SHIBYTE(v134) & 0x80000000) == 0)
      {
        break;
      }

      v23 = (v134 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (*(&v133 + 1) == v23)
      {
        if ((v134 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

LABEL_21:
        operator new();
      }

      v25 = v133;
      ++*(&v133 + 1);
      v26 = (v25 + *(&v25 + 1));
      *v26 = v17;
      v26[1] = 0;
      if (v16 != v21)
      {
        goto LABEL_25;
      }

LABEL_15:
      v17 = *v16;
      v20 -= *v16;
      if (v20 <= 0)
      {
        goto LABEL_34;
      }
    }

    if (HIBYTE(v134) == 22)
    {
      goto LABEL_21;
    }

    HIBYTE(v134) = (HIBYTE(v134) + 1) & 0x7F;
    v24 = &v133 + v22;
    *v24 = v17;
    v24[1] = 0;
    if (v16 == v21)
    {
      goto LABEL_15;
    }

LABEL_25:
    v27 = (v16 + 1);
    v28 = (v16 + 1);
    do
    {
      v29 = *v28;
      v28 = (v28 + 1);
      v17 = v29;
      if (v29)
      {
        v30 = 1;
      }

      else
      {
        v30 = v27 == v21;
      }

      v27 = v28;
    }

    while (!v30);
    v16 = (v28 - 1);
    v20 -= v17;
  }

  while (v20 > 0);
LABEL_34:
  v31 = v17 + v20;
  if (SHIBYTE(v134) < 0)
  {
    v122 = (v134 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    a3 = v131;
    if (*(&v133 + 1) == v122)
    {
      if ((v134 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_187:
      operator new();
    }

    v123 = v133;
    ++*(&v133 + 1);
    v124 = (v123 + *(&v123 + 1));
    *v124 = v31;
    v124[1] = 0;
    if (SHIBYTE(v136) < 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v32 = HIBYTE(v134);
    a3 = v131;
    if (HIBYTE(v134) == 22)
    {
      goto LABEL_187;
    }

LABEL_39:
    HIBYTE(v134) = (v32 + 1) & 0x7F;
    v33 = &v133 + v32;
    *v33 = v31;
    v33[1] = 0;
    if (SHIBYTE(v136) < 0)
    {
LABEL_40:
      operator delete(__p[0]);
    }
  }

  *__p = v133;
  v136 = v134;
  a1 = v127;
  a6 = v125;
  a5 = v126;
LABEL_42:
  v34 = HIDWORD(a6);
  v35 = *(a2 + 16);
  v36 = HIBYTE(v136);
  if (v136 < 0)
  {
    v36 = __p[1];
  }

  v37 = &v36[a3[3] - v35 + *(a2 + 4) - (v36 != 0)];
  v38 = a5 & 7;
  v39 = (a5 >> 32) - v37;
  if (a5 >> 32 <= v37)
  {
    v129 = 0;
    v39 = 0;
    v40 = v34;
    if (v38 == 4)
    {
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  if (v38 == 4)
  {
    v40 = 48;
  }

  else
  {
    v40 = v34;
  }

  if (v38 == 4)
  {
    v41 = 3;
  }

  else
  {
    v41 = a5 & 7;
  }

  if (v41 > 1)
  {
    if (v41 != 3)
    {
      v129 = v39 - (v39 >> 1);
      v39 >>= 1;
      if (v38 != 4)
      {
        goto LABEL_66;
      }

      goto LABEL_61;
    }

    goto LABEL_58;
  }

  if (!v41)
  {
LABEL_58:
    v129 = 0;
    if (v38 == 4)
    {
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  v129 = (a5 >> 32) - v37;
  v39 = 0;
  if (v38 != 4)
  {
    goto LABEL_66;
  }

LABEL_61:
  if (v11 != v35)
  {
    v42 = *v35;
    v43 = *(a1 + 32);
    if (!v43 || (v45 = *v43, v44 = v43[1], v43[1] = v44 + 1, v44 < v45))
    {
      v46 = *a1;
      v47 = *(a1 + 16);
      *(a1 + 16) = v47 + 1;
      *(v46 + v47) = v42;
      if (*(a1 + 16) == *(a1 + 8))
      {
        v48 = v39;
        (*(a1 + 24))(a1, 2);
        v39 = v48;
      }
    }
  }

LABEL_66:
  v128 = v34 & 0xFFFFFF00 | v40;
  v49 = sub_23F2B0B48(a1, v39, v128);
  v50 = v49;
  if (v38 != 4)
  {
    v51 = *(a2 + 16);
    if (v11 != v51)
    {
      v52 = *v51;
      v53 = *(v49 + 32);
      if (!v53 || (v55 = *v53, v54 = v53[1], v53[1] = v54 + 1, v54 < v55))
      {
        v56 = *v49;
        v57 = *(v49 + 16);
        *(v49 + 16) = v57 + 1;
        *(v56 + v57) = v52;
        if (*(v49 + 16) == *(v49 + 8))
        {
          (*(v49 + 24))(v49, 2);
        }
      }
    }
  }

  v58 = SHIBYTE(v136);
  if ((SHIBYTE(v136) & 0x8000000000000000) != 0)
  {
    v58 = __p[1];
    if (!__p[1])
    {
      goto LABEL_103;
    }

    v59 = __p[0];
LABEL_77:
    v60 = v58 + v59;
    v61 = (v130->__vftable[1].~facet_0)(v130);
    v62 = v59 + 1;
    while (1)
    {
      v64 = v60 - 1;
      v63 = *(v60 - 1);
      v65 = *(v50 + 32);
      if (v65)
      {
        v67 = *v65;
        v66 = v65[1];
        if (*v65 - v66 >= v63)
        {
          v68 = *(v60 - 1);
        }

        else
        {
          v68 = *v65 - v66;
        }

        v65[1] = v66 + v63;
        if (v67 <= v66 || v68 == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v68 = *(v60 - 1);
      }

      v75 = *(v50 + 16);
      v76 = v11;
      do
      {
        v78 = *(v50 + 8) - v75;
        if (v78 < v68 + 1)
        {
          (*(v50 + 24))(v50, v68 + 2);
          v75 = *(v50 + 16);
          v78 = *(v50 + 8) - v75;
        }

        if (v78 >= v68)
        {
          v79 = v68;
        }

        else
        {
          v79 = v78;
        }

        if (v79)
        {
          memmove((*v50 + v75), v76, v79);
          v75 = *(v50 + 16);
        }

        v75 += v79;
        *(v50 + 16) = v75;
        v76 += v79;
        v77 = v68 > v78;
        v68 -= v79;
      }

      while (v77);
LABEL_87:
      if (v60 == v62)
      {
        goto LABEL_109;
      }

      v11 += *(v60 - 1);
      v70 = *(v50 + 32);
      if (v70)
      {
        v72 = *v70;
        v71 = v70[1];
        v70[1] = v71 + 1;
        --v60;
        if (v71 >= v72)
        {
          continue;
        }
      }

      v73 = *v50;
      v74 = *(v50 + 16);
      *(v50 + 16) = v74 + 1;
      *(v73 + v74) = v61;
      v60 = v64;
      if (*(v50 + 16) == *(v50 + 8))
      {
        (*(v50 + 24))(v50, 2);
        v60 = v64;
      }
    }
  }

  if (HIBYTE(v136))
  {
    v59 = __p;
    goto LABEL_77;
  }

LABEL_103:
  v80 = *(v50 + 32);
  if (v80)
  {
    v82 = *v80;
    v81 = v80[1];
    if (*v80 - v81 >= v12)
    {
      v83 = v12;
    }

    else
    {
      v83 = *v80 - v81;
    }

    v80[1] = v81 + v12;
    if (v82 <= v81 || !v83)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v83 = v12;
  }

  v119 = *(v50 + 16);
  do
  {
    v120 = *(v50 + 8) - v119;
    if (v120 < v83 + 1)
    {
      (*(v50 + 24))(v50, v83 + 2);
      v119 = *(v50 + 16);
      v120 = *(v50 + 8) - v119;
    }

    if (v120 >= v83)
    {
      v121 = v83;
    }

    else
    {
      v121 = v120;
    }

    if (v121)
    {
      memmove((*v50 + v119), v11, v121);
      v119 = *(v50 + 16);
    }

    v119 += v121;
    *(v50 + 16) = v119;
    v11 += v121;
    v77 = v83 > v120;
    v83 -= v121;
  }

  while (v77);
LABEL_109:
  if (v131[1] != v131[3])
  {
    v84 = (v130->__vftable[1].~facet)(v130);
    v85 = *(v50 + 32);
    if (!v85 || (v87 = *v85, v86 = v85[1], v85[1] = v86 + 1, v86 < v87))
    {
      v88 = *v50;
      v89 = *(v50 + 16);
      *(v50 + 16) = v89 + 1;
      *(v88 + v89) = v84;
      if (*(v50 + 16) == *(v50 + 8))
      {
        (*(v50 + 24))(v50, 2);
      }
    }

    v90 = v131[1];
    v91 = (v90 + 1);
    v92 = v131[2] - (v90 + 1);
    v93 = *(v50 + 32);
    if (v93)
    {
      v94 = *v93;
      v95 = v93[1];
      if (*v93 - v95 >= v92)
      {
        v96 = v92;
      }

      else
      {
        v96 = *v93 - v95;
      }

      v97 = v95 + v92;
      v93[1] = v97;
      if (v94 <= v95 || !v96)
      {
        v98 = *(a2 + 4);
        goto LABEL_134;
      }
    }

    else
    {
      v96 = v131[2] - (v90 + 1);
    }

    v99 = *(v50 + 16);
    do
    {
      v100 = *(v50 + 8) - v99;
      if (v100 < v96 + 1)
      {
        (*(v50 + 24))(v50, v96 + 2);
        v99 = *(v50 + 16);
        v100 = *(v50 + 8) - v99;
      }

      if (v100 >= v96)
      {
        v101 = v96;
      }

      else
      {
        v101 = v100;
      }

      if (v101)
      {
        memmove((*v50 + v99), v91, v101);
        v99 = *(v50 + 16);
      }

      v99 += v101;
      *(v50 + 16) = v99;
      v91 += v101;
      v77 = v96 > v100;
      v96 -= v101;
    }

    while (v77);
    v93 = *(v50 + 32);
    v98 = *(a2 + 4);
    if (v93)
    {
      v94 = *v93;
      v97 = v93[1];
LABEL_134:
      v102 = v94 - v97;
      if (v94 - v97 >= v98)
      {
        v102 = v98;
      }

      v93[1] = v97 + v98;
      if (v94 > v97 && v102 != 0)
      {
        v99 = *(v50 + 16);
        v98 = v102;
        goto LABEL_167;
      }
    }

    else
    {
      do
      {
LABEL_167:
        v117 = *(v50 + 8) - v99;
        if (v117 < v98 + 1)
        {
          (*(v50 + 24))(v50, v98 + 2);
          v99 = *(v50 + 16);
          v117 = *(v50 + 8) - v99;
        }

        if (v117 >= v98)
        {
          v118 = v98;
        }

        else
        {
          v118 = v117;
        }

        if (v118)
        {
          memset((*v50 + v99), 48, v118);
          v99 = *(v50 + 16);
        }

        v99 += v118;
        *(v50 + 16) = v99;
        v77 = v98 > v117;
        v98 -= v118;
      }

      while (v77);
    }
  }

  v105 = v131[2];
  v104 = v131[3];
  if (v105 != v104)
  {
    v106 = v104 - v105;
    v107 = *(v50 + 32);
    if (v107)
    {
      v109 = *v107;
      v108 = v107[1];
      if (*v107 - v108 >= v106)
      {
        v110 = v106;
      }

      else
      {
        v110 = *v107 - v108;
      }

      v107[1] = v108 + v106;
      if (v109 > v108 && v110 != 0)
      {
        goto LABEL_155;
      }
    }

    else
    {
      v110 = v106;
LABEL_155:
      v114 = *(v50 + 16);
      do
      {
        v115 = *(v50 + 8) - v114;
        if (v115 < v110 + 1)
        {
          (*(v50 + 24))(v50, v110 + 2);
          v114 = *(v50 + 16);
          v115 = *(v50 + 8) - v114;
        }

        if (v115 >= v110)
        {
          v116 = v110;
        }

        else
        {
          v116 = v115;
        }

        if (v116)
        {
          memmove((*v50 + v114), v105, v116);
          v114 = *(v50 + 16);
        }

        v114 += v116;
        *(v50 + 16) = v114;
        v105 += v116;
        v77 = v110 > v115;
        v110 -= v116;
      }

      while (v77);
    }
  }

  result = sub_23F2B0B48(v50, v129, v128);
  if (SHIBYTE(v136) < 0)
  {
    v113 = result;
    operator delete(__p[0]);
    return v113;
  }

  return result;
}

void sub_23F2B7674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    v27 = a1;
    operator delete(__p);
    a1 = v27;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23F2B76E8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, size_t a8)
{
  v8 = a8;
  v12 = HIDWORD(a5);
  v13 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v14 = (a4 >> 32) - (a6 + a8);
    v13 = 0;
    goto LABEL_7;
  }

  v14 = v13 >> 1;
  v13 -= v13 >> 1;
LABEL_7:
  v15 = sub_23F2B0B48(a3, v14, SHIDWORD(a5));
  v16 = v15;
  v17 = a7 - a1;
  v18 = *(v15 + 32);
  if (v18)
  {
    v19 = *v18;
    v20 = v18[1];
    if (*v18 - v20 >= v17)
    {
      v21 = a7 - a1;
    }

    else
    {
      v21 = *v18 - v20;
    }

    v22 = v20 + v17;
    v18[1] = v22;
    if (v19 <= v20 || v21 == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v21 = a7 - a1;
  }

  v24 = *(v15 + 16);
  do
  {
    v26 = *(v16 + 8) - v24;
    if (v26 < v21 + 1)
    {
      (*(v16 + 24))(v16, v21 + 2);
      v24 = *(v16 + 16);
      v26 = *(v16 + 8) - v24;
    }

    if (v26 >= v21)
    {
      v27 = v21;
    }

    else
    {
      v27 = v26;
    }

    if (v27)
    {
      memmove((*v16 + v24), a1, v27);
      v24 = *(v16 + 16);
    }

    v24 += v27;
    *(v16 + 16) = v24;
    a1 += v27;
    v25 = v21 > v26;
    v21 -= v27;
  }

  while (v25);
  v18 = *(v16 + 32);
  if (!v18)
  {
    goto LABEL_40;
  }

  v19 = *v18;
  v22 = v18[1];
LABEL_30:
  v28 = v19 - v22;
  if (v19 - v22 >= v8)
  {
    v28 = v8;
  }

  v25 = v19 > v22;
  v29 = v22 + v8;
  v18[1] = v29;
  if (!v25 || v28 == 0)
  {
    v31 = a2 - a7;
    goto LABEL_49;
  }

  v24 = *(v16 + 16);
  v8 = v28;
  do
  {
LABEL_40:
    v32 = *(v16 + 8) - v24;
    if (v32 < v8 + 1)
    {
      (*(v16 + 24))(v16, v8 + 2);
      v24 = *(v16 + 16);
      v32 = *(v16 + 8) - v24;
    }

    if (v32 >= v8)
    {
      v33 = v8;
    }

    else
    {
      v33 = v32;
    }

    if (v33)
    {
      memset((*v16 + v24), 48, v33);
      v24 = *(v16 + 16);
    }

    v24 += v33;
    *(v16 + 16) = v24;
    v25 = v8 > v32;
    v8 -= v33;
  }

  while (v25);
  v18 = *(v16 + 32);
  v31 = a2 - a7;
  if (!v18)
  {
    goto LABEL_61;
  }

  v19 = *v18;
  v29 = v18[1];
LABEL_49:
  v34 = v19 - v29;
  if (v19 - v29 >= v31)
  {
    v34 = v31;
  }

  v18[1] = v29 + v31;
  if (v19 > v29 && v34 != 0)
  {
    v24 = *(v16 + 16);
    v31 = v34;
    do
    {
LABEL_61:
      v37 = *(v16 + 8) - v24;
      if (v37 < v31 + 1)
      {
        (*(v16 + 24))(v16, v31 + 2);
        v24 = *(v16 + 16);
        v37 = *(v16 + 8) - v24;
      }

      if (v37 >= v31)
      {
        v38 = v31;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        memmove((*v16 + v24), a7, v38);
        v24 = *(v16 + 16);
      }

      v24 += v38;
      *(v16 + 16) = v24;
      a7 += v38;
      v25 = v31 > v37;
      v31 -= v38;
    }

    while (v25);
  }

  return sub_23F2B0B48(v16, v13, v12);
}

uint64_t sub_23F2B79AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 5), 112, 3uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x245CACBE0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t sub_23F2B7A90(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v5 = a2;
  v83[128] = *MEMORY[0x277D85DE8];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v79 = v8;
    v80 = 0;
    if (v8 >= 1075)
    {
      v79 = 1074;
      v80 = v8 - 1074;
      v81 = 1390;
      goto LABEL_8;
    }

    v81 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __src = v83;
    sub_23F2B8258(&v79, a4 < 0.0, ((a3 & 0x80000000) == 0), (a2 >> 3) & 3, BYTE1(a2), &v74, v7);
    if ((v5 & 0x20) != 0)
    {
      v9 = v75;
      v10 = *v77;
      if (v75 != *v77)
      {
        if ((BYTE1(v5) - 17) > 1u)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      ++*v77;
      *v10 = 46;
      v11 = v76;
      v12 = (*v77 - 1);
      if (v76 != (*v77 - 1))
      {
        if (v76 + 1 == v12)
        {
          v14 = *v76;
          *v76 = *(v76 + 1);
          v11[1] = v14;
        }

        else
        {
          v13 = *(*v77 - 1);
          memmove(v76 + 1, v76, v12 - v76);
          *v11 = v13;
        }
      }

      v9 = v76;
      v75 = v76;
      v76 = v76 + 1;
      if ((BYTE1(v5) - 17) <= 1u)
      {
LABEL_18:
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v76 == *v77)
        {
          v16 = v74 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = v76 + ~v9;
        if (v18 < v17)
        {
          v80 += v17 - v18;
        }
      }
    }

LABEL_28:
    if ((v5 & 0x40) != 0)
    {
      v33 = *a1;
      if ((*(a1 + 40) & 1) == 0)
      {
        MEMORY[0x245CACAF0](&v78);
        v34 = (a1 + 32);
        if (*(a1 + 40) == 1)
        {
          std::locale::operator=(v34, &v78);
        }

        else
        {
          std::locale::locale(v34, &v78);
          *(a1 + 40) = 1;
        }

        std::locale::~locale(&v78);
      }

      std::locale::locale(&v73, (a1 + 32));
      v36 = sub_23F2B881C(v33, &v79, &v74, &v73, v5, a3);
      std::locale::~locale(&v73);
      goto LABEL_74;
    }

    v19 = *v77;
    v20 = __src;
    v21 = *v77 - __src;
    v22 = v80;
    if (*v77 - __src + v80 < v5 >> 32)
    {
      v23 = *a1;
      if ((v5 & 7) == 4)
      {
        if (__src != v74)
        {
          v24 = *__src;
          v25 = *(v23 + 32);
          if (!v25 || (v27 = *v25, v26 = v25[1], v25[1] = v26 + 1, v26 < v27))
          {
            v28 = *v23;
            v29 = *(v23 + 16);
            *(v23 + 16) = v29 + 1;
            *(v28 + v29) = v24;
            if (*(v23 + 16) == *(v23 + 8))
            {
              v30 = v23;
              (*(v23 + 24))(v23, 2);
              v23 = v30;
            }
          }

          ++v20;
          v19 = *v77;
        }

        v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
        v31 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v31 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
        if (!v80)
        {
LABEL_38:
          v32 = sub_23F2AF788(v20, v19 - v20, v23, v5, v31, v21);
LABEL_70:
          v36 = v32;
LABEL_74:
          if (v81 >= 0x401)
          {
            operator delete(__src);
          }

          v52 = *MEMORY[0x277D85DE8];
          return v36;
        }
      }

      v32 = sub_23F2B76E8(v20, v19, v23, v5, v31, v21, v76, v22);
      goto LABEL_70;
    }

    if (v80)
    {
      v35 = v76;
      if (v76 != *v77)
      {
        v36 = *a1;
        v37 = v76 - __src;
        v38 = *(*a1 + 32);
        if (v38)
        {
          v39 = *v38;
          v40 = v38[1];
          if (*v38 - v40 >= v37)
          {
            v41 = v76 - __src;
          }

          else
          {
            v41 = *v38 - v40;
          }

          v42 = v40 + v37;
          v38[1] = v40 + v37;
          if (v39 <= v40 || !v41)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v41 = v76 - __src;
        }

        v58 = *(v36 + 16);
        do
        {
          v59 = *(v36 + 8) - v58;
          if (v59 < v41 + 1)
          {
            (*(v36 + 24))(v36, v41 + 2);
            v58 = *(v36 + 16);
            v59 = *(v36 + 8) - v58;
          }

          if (v59 >= v41)
          {
            v60 = v41;
          }

          else
          {
            v60 = v59;
          }

          if (v60)
          {
            memmove((*v36 + v58), v20, v60);
            v58 = *(v36 + 16);
          }

          v58 += v60;
          *(v36 + 16) = v58;
          v20 += v60;
          v49 = v41 > v59;
          v41 -= v60;
        }

        while (v49);
        v38 = *(v36 + 32);
        if (!v38)
        {
          goto LABEL_115;
        }

        v39 = *v38;
        v42 = v38[1];
LABEL_108:
        v61 = v42 + v22;
        v38[1] = v42 + v22;
        v62 = v39 >= v42;
        v63 = v39 - v42;
        if (v63 == 0 || !v62)
        {
          v66 = v19 - v35;
          goto LABEL_124;
        }

        if (v63 < v22)
        {
          v22 = v63;
        }

        v58 = *(v36 + 16);
        do
        {
LABEL_115:
          v64 = *(v36 + 8) - v58;
          if (v64 < v22 + 1)
          {
            (*(v36 + 24))(v36, v22 + 2);
            v58 = *(v36 + 16);
            v64 = *(v36 + 8) - v58;
          }

          if (v64 >= v22)
          {
            v65 = v22;
          }

          else
          {
            v65 = v64;
          }

          if (v65)
          {
            memset((*v36 + v58), 48, v65);
            v58 = *(v36 + 16);
          }

          v58 += v65;
          *(v36 + 16) = v58;
          v49 = v22 > v64;
          v22 -= v65;
        }

        while (v49);
        v38 = *(v36 + 32);
        v66 = v19 - v35;
        if (!v38)
        {
          do
          {
LABEL_133:
            v69 = *(v36 + 8) - v58;
            if (v69 < v66 + 1)
            {
              (*(v36 + 24))(v36, v66 + 2);
              v58 = *(v36 + 16);
              v69 = *(v36 + 8) - v58;
            }

            if (v69 >= v66)
            {
              v70 = v66;
            }

            else
            {
              v70 = v69;
            }

            if (v70)
            {
              memmove((*v36 + v58), v35, v70);
              v58 = *(v36 + 16);
            }

            v58 += v70;
            *(v36 + 16) = v58;
            v35 += v70;
            v49 = v66 > v69;
            v66 -= v70;
          }

          while (v49);
          goto LABEL_74;
        }

        v39 = *v38;
        v61 = v38[1];
LABEL_124:
        v67 = v39 - v61;
        if (v39 - v61 >= v66)
        {
          v67 = v66;
        }

        v38[1] = v61 + v66;
        if (v39 <= v61 || v67 == 0)
        {
          goto LABEL_74;
        }

        v58 = *(v36 + 16);
        v66 = v67;
        goto LABEL_133;
      }
    }

    v36 = *a1;
    v43 = *(*a1 + 32);
    if (!v43)
    {
      goto LABEL_58;
    }

    v44 = *v43;
    v45 = v43[1];
    v46 = v45 + v21;
    if (*v43 - v45 < v21)
    {
      v21 = *v43 - v45;
    }

    v43[1] = v46;
    if (v44 > v45 && v21 != 0)
    {
LABEL_58:
      v48 = *(v36 + 16);
      do
      {
        v50 = *(v36 + 8) - v48;
        if (v50 < v21 + 1)
        {
          (*(v36 + 24))(v36, v21 + 2);
          v48 = *(v36 + 16);
          v50 = *(v36 + 8) - v48;
        }

        if (v50 >= v21)
        {
          v51 = v21;
        }

        else
        {
          v51 = v50;
        }

        if (v51)
        {
          memmove((*v36 + v48), v20, v51);
          v48 = *(v36 + 16);
        }

        v48 += v51;
        *(v36 + 16) = v48;
        v20 += v51;
        v49 = v21 > v50;
        v21 -= v51;
      }

      while (v49);
      v43 = *(v36 + 32);
      if (!v43)
      {
        do
        {
LABEL_88:
          v56 = *(v36 + 8) - v48;
          if (v56 < v22 + 1)
          {
            (*(v36 + 24))(v36, v22 + 2);
            v48 = *(v36 + 16);
            v56 = *(v36 + 8) - v48;
          }

          if (v56 >= v22)
          {
            v57 = v22;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            memset((*v36 + v48), 48, v57);
            v48 = *(v36 + 16);
          }

          v48 += v57;
          *(v36 + 16) = v48;
          v49 = v22 > v56;
          v22 -= v57;
        }

        while (v49);
        goto LABEL_74;
      }

      v44 = *v43;
      v46 = v43[1];
    }

    v54 = v44 - v46;
    if (v44 - v46 >= v22)
    {
      v54 = v22;
    }

    v43[1] = v46 + v22;
    if (v44 <= v46 || v54 == 0)
    {
      goto LABEL_74;
    }

    v48 = *(v36 + 16);
    v22 = v54;
    goto LABEL_88;
  }

  v71 = *a1;
  v72 = *MEMORY[0x277D85DE8];

  return sub_23F2B6494(v71, a2, a3, a4 < 0.0, 0);
}

void sub_23F2B820C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_23F2B8258@<X0>(unsigned int *a1@<X0>, char a2@<W1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = 45;
  }

  else if (a4 == 2)
  {
    v9 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v9 = 32;
  }

  *v8++ = v9;
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v15 = *a1;
      *a6 = v8;
      result = MEMORY[0x245CACB80](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
      *(a6 + 16) = result;
      *(a6 + 24) = result;
      if (v15)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = 0;
      }

      *(a6 + 8) = &result[-v16];
      return result;
    }

    if (a5 == 17)
    {
      v17 = *a1;
      a1[1] = 0;
      *a6 = v8;
      result = MEMORY[0x245CACB80](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
      *(a6 + 24) = result;
      v18 = v8 + 1;
      if (v8 + 1 != result)
      {
        v19 = result - v18;
        if (result - v18 >= 4)
        {
          v20 = 6;
          if (v19 < 6)
          {
            v20 = result - v18;
          }

          v21 = -v20;
          while (result[v21] != 101)
          {
            if (++v21 == -3)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_95;
        }

LABEL_44:
        *(a6 + 16) = result;
        v24 = result;
        result = memchr(v18, 46, v19);
        if (result)
        {
          v25 = result;
        }

        else
        {
          v25 = v24;
        }

        *(a6 + 8) = v25;
        return result;
      }

LABEL_76:
      *(a6 + 8) = result;
      *(a6 + 16) = result;
      return result;
    }

    v27 = *a1;
    a1[1] = 0;
    *a6 = v8;
    v28 = MEMORY[0x245CACB80](v8, *(a1 + 2) + *(a1 + 1), 3, v27);
    *(a6 + 24) = v28;
    result = v8 + 1;
    if (v8 + 1 == v28)
    {
      *(a6 + 8) = v28;
      *(a6 + 16) = v28;
      v32 = *(a6 + 16);
      if (v32 == *(a6 + 24))
      {
        return result;
      }
    }

    else
    {
      v29 = v28 - result;
      if (v28 - result < 4)
      {
LABEL_61:
        *(a6 + 16) = v28;
        result = memchr(result, 46, v29);
        if (result)
        {
          v28 = result;
        }

        *(a6 + 8) = v28;
        v32 = *(a6 + 16);
        if (v32 == *(a6 + 24))
        {
          return result;
        }
      }

      else
      {
        v30 = 6;
        if (v29 < 6)
        {
          v30 = v28 - result;
        }

        v31 = -v30;
        while (*(v28 + v31) != 101)
        {
          if (++v31 == -3)
          {
            goto LABEL_61;
          }
        }

        *(a6 + 16) = v28 + v31;
        if (*result == 46)
        {
          v28 = (v8 + 1);
        }

        *(a6 + 8) = v28;
        v32 = *(a6 + 16);
        if (v32 == *(a6 + 24))
        {
          return result;
        }
      }
    }

    *v32 = 69;
    return result;
  }

  if (a5 > 11)
  {
    if (a5 == 12)
    {
      if (a3)
      {
        v26 = *a1;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }

      return sub_23F2B9374(a1, v26, v8, a6);
    }

    else if (a5 == 13)
    {
      v10 = *a1;
      *a6 = v8;
      result = MEMORY[0x245CACB80](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
      *(a6 + 24) = result;
      v12 = v8 + 1;
      if (v8[1] == 46)
      {
        *(a6 + 8) = v12;
        v13 = result - v8 - 2;
        if (v13 < 4)
        {
LABEL_19:
          *(a6 + 16) = result;
        }

        else
        {
          if (v13 >= 6)
          {
            v13 = 6;
          }

          v14 = -v13;
          while (result[v14] != 101)
          {
            if (++v14 == -3)
            {
              goto LABEL_19;
            }
          }

          *(a6 + 16) = &result[v14];
        }
      }

      else
      {
        *(a6 + 8) = result;
        *(a6 + 16) = v12;
      }
    }

    else
    {
      v33 = *a1;
      *a6 = v8;
      result = MEMORY[0x245CACB80](v8, *(a1 + 2) + *(a1 + 1), 1, v33);
      *(a6 + 24) = result;
      v34 = v8 + 1;
      if (v8[1] == 46)
      {
        *(a6 + 8) = v34;
        v35 = result - v8 - 2;
        if (v35 < 4)
        {
LABEL_72:
          *(a6 + 16) = result;
          *result = 69;
        }

        else
        {
          if (v35 >= 6)
          {
            v35 = 6;
          }

          v36 = -v35;
          while (result[v36] != 101)
          {
            if (++v36 == -3)
            {
              goto LABEL_72;
            }
          }

          v48 = &result[v36];
          *(a6 + 16) = v48;
          *v48 = 69;
        }
      }

      else
      {
        *(a6 + 8) = result;
        *(a6 + 16) = v34;
        *v34 = 69;
      }
    }

    return result;
  }

  if (a5)
  {
    if (a3)
    {
      v37 = *a1;
      *a6 = v8;
      if (v37 != -1)
      {
        result = MEMORY[0x245CACB80](v8, *(a1 + 2) + *(a1 + 1), 4);
LABEL_88:
        *(a6 + 24) = result;
        v45 = v8[1];
        v44 = v8 + 1;
        if (v45 == 46)
        {
          v46 = result - 2;
          v47 = memchr(result - 6, 112, 4uLL);
          result = v44;
          if (v47)
          {
            v44 = v47;
          }

          else
          {
            v44 = v46;
          }
        }

        *(a6 + 8) = result;
        *(a6 + 16) = v44;
        return result;
      }
    }

    else
    {
      *a6 = v8;
      v43 = *(a1 + 2) + *(a1 + 1);
    }

    result = std::to_chars();
    goto LABEL_88;
  }

  if (a3)
  {
    v22 = *a1;
    a1[1] = 0;
    *a6 = v8;
    result = MEMORY[0x245CACB80](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
    *(a6 + 24) = result;
    v18 = v8 + 1;
    if (v8 + 1 != result)
    {
      v19 = result - v18;
      if (result - v18 >= 4)
      {
        v23 = 6;
        if (v19 < 6)
        {
          v23 = result - v18;
        }

        v21 = -v23;
        while (result[v21] != 101)
        {
          if (++v21 == -3)
          {
            goto LABEL_44;
          }
        }

LABEL_95:
        *(a6 + 16) = &result[v21];
        if (*v18 != 46)
        {
          v18 = result;
        }

        *(a6 + 8) = v18;
        return result;
      }

      goto LABEL_44;
    }

    goto LABEL_76;
  }

  *a6 = v8;
  v38 = std::to_chars(v8, (*(a1 + 2) + *(a1 + 1)), a3, a7);
  v39 = v38;
  *(a6 + 24) = v38;
  v40 = v38 - v8;
  if (v38 - v8 < 4)
  {
LABEL_85:
    v42 = v38;
  }

  else
  {
    if (v40 >= 6)
    {
      v40 = 6;
    }

    v41 = -v40;
    while (*(v38 + v41) != 101)
    {
      if (++v41 == -3)
      {
        goto LABEL_85;
      }
    }

    v42 = v38 + v41;
  }

  *(a6 + 16) = v42;
  result = memchr(v8 + 1, 46, v42 - (v8 + 1));
  if (result)
  {
    v49 = result;
  }

  else
  {
    v49 = v42;
  }

  if (v49 == v42)
  {
    v49 = v39;
  }

  *(a6 + 8) = v49;
  return result;
}

uint64_t sub_23F2B881C(uint64_t a1, uint64_t a2, void *a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v130 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v130->__vftable[1].__on_zero_shared)(__p);
  v10 = a3[2];
  v11 = *a3;
  if (v10 >= a3[1])
  {
    v10 = a3[1];
  }

  v12 = v10 - v11;
  v131 = a3;
  if ((SHIBYTE(v136) & 0x8000000000000000) != 0)
  {
    v13 = __p[1];
    if (!__p[1])
    {
      goto LABEL_42;
    }

    v16 = __p[0];
    v15 = *__p[0];
    if (v12 <= v15)
    {
      *__p[0] = 0;
      __p[1] = 0;
      goto LABEL_42;
    }

    v125 = a6;
    v126 = a5;
    v127 = a1;
    v17 = *__p[0];
    v14 = __p[0];
  }

  else
  {
    if (!HIBYTE(v136))
    {
      goto LABEL_42;
    }

    if (v12 <= SLOBYTE(__p[0]))
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(v136) = 0;
      goto LABEL_42;
    }

    v125 = a6;
    v126 = a5;
    v127 = a1;
    v14 = __p[0];
    v13 = __p[1];
    v15 = SLOBYTE(__p[0]);
    v16 = __p;
    v17 = __p[0];
  }

  v133 = 0uLL;
  v134 = 0;
  v18 = &v13[v14];
  if (v136 >= 0)
  {
    v19 = __p + SHIBYTE(v136);
  }

  else
  {
    v19 = v18;
  }

  v20 = v12 - v15;
  if (v12 <= v15)
  {
    v32 = 0;
    v31 = v17 + v20;
    goto LABEL_39;
  }

  v21 = (v19 - 1);
  do
  {
    while (1)
    {
      v22 = HIBYTE(v134);
      if ((SHIBYTE(v134) & 0x80000000) == 0)
      {
        break;
      }

      v23 = (v134 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (*(&v133 + 1) == v23)
      {
        if ((v134 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

LABEL_21:
        operator new();
      }

      v25 = v133;
      ++*(&v133 + 1);
      v26 = (v25 + *(&v25 + 1));
      *v26 = v17;
      v26[1] = 0;
      if (v16 != v21)
      {
        goto LABEL_25;
      }

LABEL_15:
      v17 = *v16;
      v20 -= *v16;
      if (v20 <= 0)
      {
        goto LABEL_34;
      }
    }

    if (HIBYTE(v134) == 22)
    {
      goto LABEL_21;
    }

    HIBYTE(v134) = (HIBYTE(v134) + 1) & 0x7F;
    v24 = &v133 + v22;
    *v24 = v17;
    v24[1] = 0;
    if (v16 == v21)
    {
      goto LABEL_15;
    }

LABEL_25:
    v27 = (v16 + 1);
    v28 = (v16 + 1);
    do
    {
      v29 = *v28;
      v28 = (v28 + 1);
      v17 = v29;
      if (v29)
      {
        v30 = 1;
      }

      else
      {
        v30 = v27 == v21;
      }

      v27 = v28;
    }

    while (!v30);
    v16 = (v28 - 1);
    v20 -= v17;
  }

  while (v20 > 0);
LABEL_34:
  v31 = v17 + v20;
  if (SHIBYTE(v134) < 0)
  {
    v122 = (v134 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    a3 = v131;
    if (*(&v133 + 1) == v122)
    {
      if ((v134 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_187:
      operator new();
    }

    v123 = v133;
    ++*(&v133 + 1);
    v124 = (v123 + *(&v123 + 1));
    *v124 = v31;
    v124[1] = 0;
    if (SHIBYTE(v136) < 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v32 = HIBYTE(v134);
    a3 = v131;
    if (HIBYTE(v134) == 22)
    {
      goto LABEL_187;
    }

LABEL_39:
    HIBYTE(v134) = (v32 + 1) & 0x7F;
    v33 = &v133 + v32;
    *v33 = v31;
    v33[1] = 0;
    if (SHIBYTE(v136) < 0)
    {
LABEL_40:
      operator delete(__p[0]);
    }
  }

  *__p = v133;
  v136 = v134;
  a1 = v127;
  a6 = v125;
  a5 = v126;
LABEL_42:
  v34 = HIDWORD(a6);
  v35 = *(a2 + 16);
  v36 = HIBYTE(v136);
  if (v136 < 0)
  {
    v36 = __p[1];
  }

  v37 = &v36[a3[3] - v35 + *(a2 + 4) - (v36 != 0)];
  v38 = a5 & 7;
  v39 = (a5 >> 32) - v37;
  if (a5 >> 32 <= v37)
  {
    v129 = 0;
    v39 = 0;
    v40 = v34;
    if (v38 == 4)
    {
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  if (v38 == 4)
  {
    v40 = 48;
  }

  else
  {
    v40 = v34;
  }

  if (v38 == 4)
  {
    v41 = 3;
  }

  else
  {
    v41 = a5 & 7;
  }

  if (v41 > 1)
  {
    if (v41 != 3)
    {
      v129 = v39 - (v39 >> 1);
      v39 >>= 1;
      if (v38 != 4)
      {
        goto LABEL_66;
      }

      goto LABEL_61;
    }

    goto LABEL_58;
  }

  if (!v41)
  {
LABEL_58:
    v129 = 0;
    if (v38 == 4)
    {
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  v129 = (a5 >> 32) - v37;
  v39 = 0;
  if (v38 != 4)
  {
    goto LABEL_66;
  }

LABEL_61:
  if (v11 != v35)
  {
    v42 = *v35;
    v43 = *(a1 + 32);
    if (!v43 || (v45 = *v43, v44 = v43[1], v43[1] = v44 + 1, v44 < v45))
    {
      v46 = *a1;
      v47 = *(a1 + 16);
      *(a1 + 16) = v47 + 1;
      *(v46 + v47) = v42;
      if (*(a1 + 16) == *(a1 + 8))
      {
        v48 = v39;
        (*(a1 + 24))(a1, 2);
        v39 = v48;
      }
    }
  }

LABEL_66:
  v128 = v34 & 0xFFFFFF00 | v40;
  v49 = sub_23F2B0B48(a1, v39, v128);
  v50 = v49;
  if (v38 != 4)
  {
    v51 = *(a2 + 16);
    if (v11 != v51)
    {
      v52 = *v51;
      v53 = *(v49 + 32);
      if (!v53 || (v55 = *v53, v54 = v53[1], v53[1] = v54 + 1, v54 < v55))
      {
        v56 = *v49;
        v57 = *(v49 + 16);
        *(v49 + 16) = v57 + 1;
        *(v56 + v57) = v52;
        if (*(v49 + 16) == *(v49 + 8))
        {
          (*(v49 + 24))(v49, 2);
        }
      }
    }
  }

  v58 = SHIBYTE(v136);
  if ((SHIBYTE(v136) & 0x8000000000000000) != 0)
  {
    v58 = __p[1];
    if (!__p[1])
    {
      goto LABEL_103;
    }

    v59 = __p[0];
LABEL_77:
    v60 = v58 + v59;
    v61 = (v130->__vftable[1].~facet_0)(v130);
    v62 = v59 + 1;
    while (1)
    {
      v64 = v60 - 1;
      v63 = *(v60 - 1);
      v65 = *(v50 + 32);
      if (v65)
      {
        v67 = *v65;
        v66 = v65[1];
        if (*v65 - v66 >= v63)
        {
          v68 = *(v60 - 1);
        }

        else
        {
          v68 = *v65 - v66;
        }

        v65[1] = v66 + v63;
        if (v67 <= v66 || v68 == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v68 = *(v60 - 1);
      }

      v75 = *(v50 + 16);
      v76 = v11;
      do
      {
        v78 = *(v50 + 8) - v75;
        if (v78 < v68 + 1)
        {
          (*(v50 + 24))(v50, v68 + 2);
          v75 = *(v50 + 16);
          v78 = *(v50 + 8) - v75;
        }

        if (v78 >= v68)
        {
          v79 = v68;
        }

        else
        {
          v79 = v78;
        }

        if (v79)
        {
          memmove((*v50 + v75), v76, v79);
          v75 = *(v50 + 16);
        }

        v75 += v79;
        *(v50 + 16) = v75;
        v76 += v79;
        v77 = v68 > v78;
        v68 -= v79;
      }

      while (v77);
LABEL_87:
      if (v60 == v62)
      {
        goto LABEL_109;
      }

      v11 += *(v60 - 1);
      v70 = *(v50 + 32);
      if (v70)
      {
        v72 = *v70;
        v71 = v70[1];
        v70[1] = v71 + 1;
        --v60;
        if (v71 >= v72)
        {
          continue;
        }
      }

      v73 = *v50;
      v74 = *(v50 + 16);
      *(v50 + 16) = v74 + 1;
      *(v73 + v74) = v61;
      v60 = v64;
      if (*(v50 + 16) == *(v50 + 8))
      {
        (*(v50 + 24))(v50, 2);
        v60 = v64;
      }
    }
  }

  if (HIBYTE(v136))
  {
    v59 = __p;
    goto LABEL_77;
  }

LABEL_103:
  v80 = *(v50 + 32);
  if (v80)
  {
    v82 = *v80;
    v81 = v80[1];
    if (*v80 - v81 >= v12)
    {
      v83 = v12;
    }

    else
    {
      v83 = *v80 - v81;
    }

    v80[1] = v81 + v12;
    if (v82 <= v81 || !v83)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v83 = v12;
  }

  v119 = *(v50 + 16);
  do
  {
    v120 = *(v50 + 8) - v119;
    if (v120 < v83 + 1)
    {
      (*(v50 + 24))(v50, v83 + 2);
      v119 = *(v50 + 16);
      v120 = *(v50 + 8) - v119;
    }

    if (v120 >= v83)
    {
      v121 = v83;
    }

    else
    {
      v121 = v120;
    }

    if (v121)
    {
      memmove((*v50 + v119), v11, v121);
      v119 = *(v50 + 16);
    }

    v119 += v121;
    *(v50 + 16) = v119;
    v11 += v121;
    v77 = v83 > v120;
    v83 -= v121;
  }

  while (v77);
LABEL_109:
  if (v131[1] != v131[3])
  {
    v84 = (v130->__vftable[1].~facet)(v130);
    v85 = *(v50 + 32);
    if (!v85 || (v87 = *v85, v86 = v85[1], v85[1] = v86 + 1, v86 < v87))
    {
      v88 = *v50;
      v89 = *(v50 + 16);
      *(v50 + 16) = v89 + 1;
      *(v88 + v89) = v84;
      if (*(v50 + 16) == *(v50 + 8))
      {
        (*(v50 + 24))(v50, 2);
      }
    }

    v90 = v131[1];
    v91 = (v90 + 1);
    v92 = v131[2] - (v90 + 1);
    v93 = *(v50 + 32);
    if (v93)
    {
      v94 = *v93;
      v95 = v93[1];
      if (*v93 - v95 >= v92)
      {
        v96 = v92;
      }

      else
      {
        v96 = *v93 - v95;
      }

      v97 = v95 + v92;
      v93[1] = v97;
      if (v94 <= v95 || !v96)
      {
        v98 = *(a2 + 4);
        goto LABEL_134;
      }
    }

    else
    {
      v96 = v131[2] - (v90 + 1);
    }

    v99 = *(v50 + 16);
    do
    {
      v100 = *(v50 + 8) - v99;
      if (v100 < v96 + 1)
      {
        (*(v50 + 24))(v50, v96 + 2);
        v99 = *(v50 + 16);
        v100 = *(v50 + 8) - v99;
      }

      if (v100 >= v96)
      {
        v101 = v96;
      }

      else
      {
        v101 = v100;
      }

      if (v101)
      {
        memmove((*v50 + v99), v91, v101);
        v99 = *(v50 + 16);
      }

      v99 += v101;
      *(v50 + 16) = v99;
      v91 += v101;
      v77 = v96 > v100;
      v96 -= v101;
    }

    while (v77);
    v93 = *(v50 + 32);
    v98 = *(a2 + 4);
    if (v93)
    {
      v94 = *v93;
      v97 = v93[1];
LABEL_134:
      v102 = v94 - v97;
      if (v94 - v97 >= v98)
      {
        v102 = v98;
      }

      v93[1] = v97 + v98;
      if (v94 > v97 && v102 != 0)
      {
        v99 = *(v50 + 16);
        v98 = v102;
        goto LABEL_167;
      }
    }

    else
    {
      do
      {
LABEL_167:
        v117 = *(v50 + 8) - v99;
        if (v117 < v98 + 1)
        {
          (*(v50 + 24))(v50, v98 + 2);
          v99 = *(v50 + 16);
          v117 = *(v50 + 8) - v99;
        }

        if (v117 >= v98)
        {
          v118 = v98;
        }

        else
        {
          v118 = v117;
        }

        if (v118)
        {
          memset((*v50 + v99), 48, v118);
          v99 = *(v50 + 16);
        }

        v99 += v118;
        *(v50 + 16) = v99;
        v77 = v98 > v117;
        v98 -= v118;
      }

      while (v77);
    }
  }

  v105 = v131[2];
  v104 = v131[3];
  if (v105 != v104)
  {
    v106 = v104 - v105;
    v107 = *(v50 + 32);
    if (v107)
    {
      v109 = *v107;
      v108 = v107[1];
      if (*v107 - v108 >= v106)
      {
        v110 = v106;
      }

      else
      {
        v110 = *v107 - v108;
      }

      v107[1] = v108 + v106;
      if (v109 > v108 && v110 != 0)
      {
        goto LABEL_155;
      }
    }

    else
    {
      v110 = v106;
LABEL_155:
      v114 = *(v50 + 16);
      do
      {
        v115 = *(v50 + 8) - v114;
        if (v115 < v110 + 1)
        {
          (*(v50 + 24))(v50, v110 + 2);
          v114 = *(v50 + 16);
          v115 = *(v50 + 8) - v114;
        }

        if (v115 >= v110)
        {
          v116 = v110;
        }

        else
        {
          v116 = v115;
        }

        if (v116)
        {
          memmove((*v50 + v114), v105, v116);
          v114 = *(v50 + 16);
        }

        v114 += v116;
        *(v50 + 16) = v114;
        v105 += v116;
        v77 = v110 > v115;
        v110 -= v116;
      }

      while (v77);
    }
  }

  result = sub_23F2B0B48(v50, v129, v128);
  if (SHIBYTE(v136) < 0)
  {
    v113 = result;
    operator delete(__p[0]);
    return v113;
  }

  return result;
}

void sub_23F2B9300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    v27 = a1;
    operator delete(__p);
    a1 = v27;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23F2B9374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 6), 112, 4uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x245CACB80](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t sub_23F2B9458(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v5 = a2;
  v83[128] = *MEMORY[0x277D85DE8];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v79 = v8;
    v80 = 0;
    if (v8 >= 1075)
    {
      v79 = 1074;
      v80 = v8 - 1074;
      v81 = 1390;
      goto LABEL_8;
    }

    v81 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __src = v83;
    sub_23F2B9C20(&v79, a4 < 0.0, ((a3 & 0x80000000) == 0), (a2 >> 3) & 3, BYTE1(a2), &v74, v7);
    if ((v5 & 0x20) != 0)
    {
      v9 = v75;
      v10 = *v77;
      if (v75 != *v77)
      {
        if ((BYTE1(v5) - 17) > 1u)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      ++*v77;
      *v10 = 46;
      v11 = v76;
      v12 = (*v77 - 1);
      if (v76 != (*v77 - 1))
      {
        if (v76 + 1 == v12)
        {
          v14 = *v76;
          *v76 = *(v76 + 1);
          v11[1] = v14;
        }

        else
        {
          v13 = *(*v77 - 1);
          memmove(v76 + 1, v76, v12 - v76);
          *v11 = v13;
        }
      }

      v9 = v76;
      v75 = v76;
      v76 = v76 + 1;
      if ((BYTE1(v5) - 17) <= 1u)
      {
LABEL_18:
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v76 == *v77)
        {
          v16 = v74 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = v76 + ~v9;
        if (v18 < v17)
        {
          v80 += v17 - v18;
        }
      }
    }

LABEL_28:
    if ((v5 & 0x40) != 0)
    {
      v33 = *a1;
      if ((*(a1 + 40) & 1) == 0)
      {
        MEMORY[0x245CACAF0](&v78);
        v34 = (a1 + 32);
        if (*(a1 + 40) == 1)
        {
          std::locale::operator=(v34, &v78);
        }

        else
        {
          std::locale::locale(v34, &v78);
          *(a1 + 40) = 1;
        }

        std::locale::~locale(&v78);
      }

      std::locale::locale(&v73, (a1 + 32));
      v36 = sub_23F2B881C(v33, &v79, &v74, &v73, v5, a3);
      std::locale::~locale(&v73);
      goto LABEL_74;
    }

    v19 = *v77;
    v20 = __src;
    v21 = *v77 - __src;
    v22 = v80;
    if (*v77 - __src + v80 < v5 >> 32)
    {
      v23 = *a1;
      if ((v5 & 7) == 4)
      {
        if (__src != v74)
        {
          v24 = *__src;
          v25 = *(v23 + 32);
          if (!v25 || (v27 = *v25, v26 = v25[1], v25[1] = v26 + 1, v26 < v27))
          {
            v28 = *v23;
            v29 = *(v23 + 16);
            *(v23 + 16) = v29 + 1;
            *(v28 + v29) = v24;
            if (*(v23 + 16) == *(v23 + 8))
            {
              v30 = v23;
              (*(v23 + 24))(v23, 2);
              v23 = v30;
            }
          }

          ++v20;
          v19 = *v77;
        }

        v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
        v31 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v31 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
        if (!v80)
        {
LABEL_38:
          v32 = sub_23F2AF788(v20, v19 - v20, v23, v5, v31, v21);
LABEL_70:
          v36 = v32;
LABEL_74:
          if (v81 >= 0x401)
          {
            operator delete(__src);
          }

          v52 = *MEMORY[0x277D85DE8];
          return v36;
        }
      }

      v32 = sub_23F2B76E8(v20, v19, v23, v5, v31, v21, v76, v22);
      goto LABEL_70;
    }

    if (v80)
    {
      v35 = v76;
      if (v76 != *v77)
      {
        v36 = *a1;
        v37 = v76 - __src;
        v38 = *(*a1 + 32);
        if (v38)
        {
          v39 = *v38;
          v40 = v38[1];
          if (*v38 - v40 >= v37)
          {
            v41 = v76 - __src;
          }

          else
          {
            v41 = *v38 - v40;
          }

          v42 = v40 + v37;
          v38[1] = v40 + v37;
          if (v39 <= v40 || !v41)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v41 = v76 - __src;
        }

        v58 = *(v36 + 16);
        do
        {
          v59 = *(v36 + 8) - v58;
          if (v59 < v41 + 1)
          {
            (*(v36 + 24))(v36, v41 + 2);
            v58 = *(v36 + 16);
            v59 = *(v36 + 8) - v58;
          }

          if (v59 >= v41)
          {
            v60 = v41;
          }

          else
          {
            v60 = v59;
          }

          if (v60)
          {
            memmove((*v36 + v58), v20, v60);
            v58 = *(v36 + 16);
          }

          v58 += v60;
          *(v36 + 16) = v58;
          v20 += v60;
          v49 = v41 > v59;
          v41 -= v60;
        }

        while (v49);
        v38 = *(v36 + 32);
        if (!v38)
        {
          goto LABEL_115;
        }

        v39 = *v38;
        v42 = v38[1];
LABEL_108:
        v61 = v42 + v22;
        v38[1] = v42 + v22;
        v62 = v39 >= v42;
        v63 = v39 - v42;
        if (v63 == 0 || !v62)
        {
          v66 = v19 - v35;
          goto LABEL_124;
        }

        if (v63 < v22)
        {
          v22 = v63;
        }

        v58 = *(v36 + 16);
        do
        {
LABEL_115:
          v64 = *(v36 + 8) - v58;
          if (v64 < v22 + 1)
          {
            (*(v36 + 24))(v36, v22 + 2);
            v58 = *(v36 + 16);
            v64 = *(v36 + 8) - v58;
          }

          if (v64 >= v22)
          {
            v65 = v22;
          }

          else
          {
            v65 = v64;
          }

          if (v65)
          {
            memset((*v36 + v58), 48, v65);
            v58 = *(v36 + 16);
          }

          v58 += v65;
          *(v36 + 16) = v58;
          v49 = v22 > v64;
          v22 -= v65;
        }

        while (v49);
        v38 = *(v36 + 32);
        v66 = v19 - v35;
        if (!v38)
        {
          do
          {
LABEL_133:
            v69 = *(v36 + 8) - v58;
            if (v69 < v66 + 1)
            {
              (*(v36 + 24))(v36, v66 + 2);
              v58 = *(v36 + 16);
              v69 = *(v36 + 8) - v58;
            }

            if (v69 >= v66)
            {
              v70 = v66;
            }

            else
            {
              v70 = v69;
            }

            if (v70)
            {
              memmove((*v36 + v58), v35, v70);
              v58 = *(v36 + 16);
            }

            v58 += v70;
            *(v36 + 16) = v58;
            v35 += v70;
            v49 = v66 > v69;
            v66 -= v70;
          }

          while (v49);
          goto LABEL_74;
        }

        v39 = *v38;
        v61 = v38[1];
LABEL_124:
        v67 = v39 - v61;
        if (v39 - v61 >= v66)
        {
          v67 = v66;
        }

        v38[1] = v61 + v66;
        if (v39 <= v61 || v67 == 0)
        {
          goto LABEL_74;
        }

        v58 = *(v36 + 16);
        v66 = v67;
        goto LABEL_133;
      }
    }

    v36 = *a1;
    v43 = *(*a1 + 32);
    if (!v43)
    {
      goto LABEL_58;
    }

    v44 = *v43;
    v45 = v43[1];
    v46 = v45 + v21;
    if (*v43 - v45 < v21)
    {
      v21 = *v43 - v45;
    }

    v43[1] = v46;
    if (v44 > v45 && v21 != 0)
    {
LABEL_58:
      v48 = *(v36 + 16);
      do
      {
        v50 = *(v36 + 8) - v48;
        if (v50 < v21 + 1)
        {
          (*(v36 + 24))(v36, v21 + 2);
          v48 = *(v36 + 16);
          v50 = *(v36 + 8) - v48;
        }

        if (v50 >= v21)
        {
          v51 = v21;
        }

        else
        {
          v51 = v50;
        }

        if (v51)
        {
          memmove((*v36 + v48), v20, v51);
          v48 = *(v36 + 16);
        }

        v48 += v51;
        *(v36 + 16) = v48;
        v20 += v51;
        v49 = v21 > v50;
        v21 -= v51;
      }

      while (v49);
      v43 = *(v36 + 32);
      if (!v43)
      {
        do
        {
LABEL_88:
          v56 = *(v36 + 8) - v48;
          if (v56 < v22 + 1)
          {
            (*(v36 + 24))(v36, v22 + 2);
            v48 = *(v36 + 16);
            v56 = *(v36 + 8) - v48;
          }

          if (v56 >= v22)
          {
            v57 = v22;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            memset((*v36 + v48), 48, v57);
            v48 = *(v36 + 16);
          }

          v48 += v57;
          *(v36 + 16) = v48;
          v49 = v22 > v56;
          v22 -= v57;
        }

        while (v49);
        goto LABEL_74;
      }

      v44 = *v43;
      v46 = v43[1];
    }

    v54 = v44 - v46;
    if (v44 - v46 >= v22)
    {
      v54 = v22;
    }

    v43[1] = v46 + v22;
    if (v44 <= v46 || v54 == 0)
    {
      goto LABEL_74;
    }

    v48 = *(v36 + 16);
    v22 = v54;
    goto LABEL_88;
  }

  v71 = *a1;
  v72 = *MEMORY[0x277D85DE8];

  return sub_23F2B6494(v71, a2, a3, a4 < 0.0, 0);
}

void sub_23F2B9BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_23F2B9C20@<X0>(unsigned int *a1@<X0>, char a2@<W1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = 45;
  }

  else if (a4 == 2)
  {
    v9 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v9 = 32;
  }

  *v8++ = v9;
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v15 = *a1;
      *a6 = v8;
      result = MEMORY[0x245CACBB0](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
      *(a6 + 16) = result;
      *(a6 + 24) = result;
      if (v15)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = 0;
      }

      *(a6 + 8) = &result[-v16];
      return result;
    }

    if (a5 == 17)
    {
      v17 = *a1;
      a1[1] = 0;
      *a6 = v8;
      result = MEMORY[0x245CACBB0](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
      *(a6 + 24) = result;
      v18 = v8 + 1;
      if (v8 + 1 != result)
      {
        v19 = result - v18;
        if (result - v18 >= 4)
        {
          v20 = 6;
          if (v19 < 6)
          {
            v20 = result - v18;
          }

          v21 = -v20;
          while (result[v21] != 101)
          {
            if (++v21 == -3)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_95;
        }

LABEL_44:
        *(a6 + 16) = result;
        v24 = result;
        result = memchr(v18, 46, v19);
        if (result)
        {
          v25 = result;
        }

        else
        {
          v25 = v24;
        }

        *(a6 + 8) = v25;
        return result;
      }

LABEL_76:
      *(a6 + 8) = result;
      *(a6 + 16) = result;
      return result;
    }

    v27 = *a1;
    a1[1] = 0;
    *a6 = v8;
    v28 = MEMORY[0x245CACBB0](v8, *(a1 + 2) + *(a1 + 1), 3, v27);
    *(a6 + 24) = v28;
    result = v8 + 1;
    if (v8 + 1 == v28)
    {
      *(a6 + 8) = v28;
      *(a6 + 16) = v28;
      v32 = *(a6 + 16);
      if (v32 == *(a6 + 24))
      {
        return result;
      }
    }

    else
    {
      v29 = v28 - result;
      if (v28 - result < 4)
      {
LABEL_61:
        *(a6 + 16) = v28;
        result = memchr(result, 46, v29);
        if (result)
        {
          v28 = result;
        }

        *(a6 + 8) = v28;
        v32 = *(a6 + 16);
        if (v32 == *(a6 + 24))
        {
          return result;
        }
      }

      else
      {
        v30 = 6;
        if (v29 < 6)
        {
          v30 = v28 - result;
        }

        v31 = -v30;
        while (*(v28 + v31) != 101)
        {
          if (++v31 == -3)
          {
            goto LABEL_61;
          }
        }

        *(a6 + 16) = v28 + v31;
        if (*result == 46)
        {
          v28 = (v8 + 1);
        }

        *(a6 + 8) = v28;
        v32 = *(a6 + 16);
        if (v32 == *(a6 + 24))
        {
          return result;
        }
      }
    }

    *v32 = 69;
    return result;
  }

  if (a5 > 11)
  {
    if (a5 == 12)
    {
      if (a3)
      {
        v26 = *a1;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }

      return sub_23F2BA1E4(a1, v26, v8, a6);
    }

    else if (a5 == 13)
    {
      v10 = *a1;
      *a6 = v8;
      result = MEMORY[0x245CACBB0](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
      *(a6 + 24) = result;
      v12 = v8 + 1;
      if (v8[1] == 46)
      {
        *(a6 + 8) = v12;
        v13 = result - v8 - 2;
        if (v13 < 4)
        {
LABEL_19:
          *(a6 + 16) = result;
        }

        else
        {
          if (v13 >= 6)
          {
            v13 = 6;
          }

          v14 = -v13;
          while (result[v14] != 101)
          {
            if (++v14 == -3)
            {
              goto LABEL_19;
            }
          }

          *(a6 + 16) = &result[v14];
        }
      }

      else
      {
        *(a6 + 8) = result;
        *(a6 + 16) = v12;
      }
    }

    else
    {
      v33 = *a1;
      *a6 = v8;
      result = MEMORY[0x245CACBB0](v8, *(a1 + 2) + *(a1 + 1), 1, v33);
      *(a6 + 24) = result;
      v34 = v8 + 1;
      if (v8[1] == 46)
      {
        *(a6 + 8) = v34;
        v35 = result - v8 - 2;
        if (v35 < 4)
        {
LABEL_72:
          *(a6 + 16) = result;
          *result = 69;
        }

        else
        {
          if (v35 >= 6)
          {
            v35 = 6;
          }

          v36 = -v35;
          while (result[v36] != 101)
          {
            if (++v36 == -3)
            {
              goto LABEL_72;
            }
          }

          v48 = &result[v36];
          *(a6 + 16) = v48;
          *v48 = 69;
        }
      }

      else
      {
        *(a6 + 8) = result;
        *(a6 + 16) = v34;
        *v34 = 69;
      }
    }

    return result;
  }

  if (a5)
  {
    if (a3)
    {
      v37 = *a1;
      *a6 = v8;
      if (v37 != -1)
      {
        result = MEMORY[0x245CACBB0](v8, *(a1 + 2) + *(a1 + 1), 4);
LABEL_88:
        *(a6 + 24) = result;
        v45 = v8[1];
        v44 = v8 + 1;
        if (v45 == 46)
        {
          v46 = result - 2;
          v47 = memchr(result - 6, 112, 4uLL);
          result = v44;
          if (v47)
          {
            v44 = v47;
          }

          else
          {
            v44 = v46;
          }
        }

        *(a6 + 8) = result;
        *(a6 + 16) = v44;
        return result;
      }
    }

    else
    {
      *a6 = v8;
      v43 = *(a1 + 2) + *(a1 + 1);
    }

    result = std::to_chars();
    goto LABEL_88;
  }

  if (a3)
  {
    v22 = *a1;
    a1[1] = 0;
    *a6 = v8;
    result = MEMORY[0x245CACBB0](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
    *(a6 + 24) = result;
    v18 = v8 + 1;
    if (v8 + 1 != result)
    {
      v19 = result - v18;
      if (result - v18 >= 4)
      {
        v23 = 6;
        if (v19 < 6)
        {
          v23 = result - v18;
        }

        v21 = -v23;
        while (result[v21] != 101)
        {
          if (++v21 == -3)
          {
            goto LABEL_44;
          }
        }

LABEL_95:
        *(a6 + 16) = &result[v21];
        if (*v18 != 46)
        {
          v18 = result;
        }

        *(a6 + 8) = v18;
        return result;
      }

      goto LABEL_44;
    }

    goto LABEL_76;
  }

  *a6 = v8;
  v38 = std::to_chars(v8, (*(a1 + 2) + *(a1 + 1)), a3, a7);
  v39 = v38;
  *(a6 + 24) = v38;
  v40 = v38 - v8;
  if (v38 - v8 < 4)
  {
LABEL_85:
    v42 = v38;
  }

  else
  {
    if (v40 >= 6)
    {
      v40 = 6;
    }

    v41 = -v40;
    while (*(v38 + v41) != 101)
    {
      if (++v41 == -3)
      {
        goto LABEL_85;
      }
    }

    v42 = v38 + v41;
  }

  *(a6 + 16) = v42;
  result = memchr(v8 + 1, 46, v42 - (v8 + 1));
  if (result)
  {
    v49 = result;
  }

  else
  {
    v49 = v42;
  }

  if (v49 == v42)
  {
    v49 = v39;
  }

  *(a6 + 8) = v49;
  return result;
}

uint64_t sub_23F2BA1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 6), 112, 4uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x245CACBB0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t sub_23F2BA2C8(uint64_t a1, unsigned __int8 *a2, size_t a3, uint64_t *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = sub_23F2AF2AC(a1, a4);
  v10 = v8;
  if (v6 == 19)
  {

    return sub_23F2BA45C(a2, a3, v7, v9, v8);
  }

  if ((v8 & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = a2;
    if (!a3 || !v10)
    {
      goto LABEL_22;
    }

    v14 = v10 & 0x7FFFFFFF;
    if (*a2 < 0)
    {
      v16 = a2;
    }

    else
    {
      v15 = 0;
      v13 = &a2[v14];
      v16 = &a2[v14 - 1];
      while (1)
      {
        if (a3 - 1 == v15)
        {
          v12 = a3;
          v13 = &a2[a3];
          goto LABEL_22;
        }

        if (v14 - 1 == v15)
        {
          break;
        }

        v17 = a2[++v15];
        if (v17 < 0)
        {
          v14 = v14 - v15 + 1;
          v16 = &a2[v15 - 1];
          goto LABEL_18;
        }
      }

      if ((*v13 & 0x80000000) == 0)
      {
        v12 = v10 & 0x7FFFFFFF;
        goto LABEL_22;
      }

      v14 = 1;
    }

LABEL_18:
    v12 = v16 - a2 + sub_23F2AF9D0(v16, &a2[a3], v14, 0);
LABEL_22:
    v18 = v13 - a2;

    return sub_23F2AF788(a2, v18, v7, v9, v10, v12);
  }

  return sub_23F2AF5B4(a2, a3, v7, v9, v8);
}

uint64_t sub_23F2BA45C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v25 = 0;
  v26 = 0x100000000000000;
  __p = 34;
  sub_23F2B2798(&__p, a1, a2, 1);
  if (SHIBYTE(v26) < 0)
  {
    v8 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v25 == v8)
    {
      if ((v26 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_6:
      operator new();
    }

    p_p = __p;
    v9 = v25++;
  }

  else
  {
    if (HIBYTE(v26) == 22)
    {
      goto LABEL_6;
    }

    v9 = HIBYTE(v26);
    HIBYTE(v26) = (HIBYTE(v26) + 1) & 0x7F;
    p_p = &__p;
  }

  *&p_p[v9] = 34;
  if (v26 >= 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  if (v26 >= 0)
  {
    v12 = HIBYTE(v26);
  }

  else
  {
    v12 = v25;
  }

  if ((a5 & 0x80000000) != 0)
  {
    result = sub_23F2AF5B4(v11, v12, a3, a4, a5);
    goto LABEL_31;
  }

  LODWORD(v13) = 0;
  if (a5 && v12)
  {
    v13 = a5 & 0x7FFFFFFF;
    if (*v11 < 0)
    {
      v16 = v11;
    }

    else
    {
      v14 = 0;
      v15 = &v11[v13];
      v16 = &v11[v13 - 1];
      while (1)
      {
        if (v12 - 1 == v14)
        {
          LODWORD(v13) = v12;
          v15 = &v11[v12];
          goto LABEL_30;
        }

        if (v13 - 1 == v14)
        {
          break;
        }

        v17 = v11[++v14];
        if (v17 < 0)
        {
          v13 = v13 - v14 + 1;
          v16 = &v11[v14 - 1];
          goto LABEL_27;
        }
      }

      if ((*v15 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v13 = 1;
    }

LABEL_27:
    v19 = v16 - v11;
    v20 = v11;
    v21 = sub_23F2AF9D0(v16, &v11[v12], v13, 0);
    v11 = v20;
    v15 = v22;
    LODWORD(v13) = v19 + v21;
  }

  else
  {
    v15 = v11;
  }

LABEL_30:
  result = sub_23F2AF788(v11, v15 - v11, a3, a4, a5, v13);
LABEL_31:
  if (SHIBYTE(v26) < 0)
  {
    v23 = result;
    operator delete(__p);
    return v23;
  }

  return result;
}

void sub_23F2BA70C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2BA728(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
LABEL_18:
    result = sub_23F2BA87C(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = sub_23F2BA87C(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 10);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = sub_23F2BA87C(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}