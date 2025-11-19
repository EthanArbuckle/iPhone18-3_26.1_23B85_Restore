_BYTE *absl::lts_20240722::str_format_internal::anonymous namespace::PrintFractionalDigitsFast(unint64_t a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5)
{
  if (((0x80 - a4) & 0x40) != 0)
  {
    v5 = a1 << (0x80 - a4);
  }

  else
  {
    v5 = (a2 << (0x80 - a4)) | (a1 >> 1 >> ~(0x80 - a4));
  }

  if (((0x80 - a4) & 0x40) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 << (0x80 - a4);
  }

  v7 = v6 != 0;
  if (a5 && v6)
  {
    do
    {
      v8 = 10 * v6;
      v10 = v6;
      v9 = (v6 * 0xAuLL) >> 64;
      v11 = (v5 * 0xAuLL) >> 64;
      v12 = __CFADD__(v9, 10 * v5);
      v5 = (__PAIR128__(v5, v10) * 0xA) >> 64;
      *a3++ = v12 + v11 + 48;
      v7 = v8 != 0;
      if (!--a5)
      {
        break;
      }

      v6 = v8;
    }

    while (v8);
  }

  if (a5)
  {
    do
    {
      if (!v5)
      {
        return a3;
      }

      v13 = 10 * v5;
      *a3++ = ((v5 * 0xAuLL) >> 64) | 0x30;
      v5 *= 10;
      --a5;
    }

    while (a5);
    if ((v13 & 0x8000000000000000) == 0)
    {
      return a3;
    }
  }

  else
  {
    v13 = v5;
    if ((v5 & 0x8000000000000000) == 0)
    {
      return a3;
    }
  }

  if (v13 != 0x8000000000000000 || v7)
  {
    for (i = a3 - 1; ; --i)
    {
      v16 = *i;
      if (v16 != 46)
      {
        if (v16 != 57)
        {
          goto LABEL_30;
        }

        *i = 48;
      }
    }
  }

  i = &a3[-(*(a3 - 1) == 46) - 1];
  v16 = *i;
  if ((v16 & 0x80000001) != 1)
  {
    return a3;
  }

  while (v16 == 46)
  {
LABEL_27:
    v17 = *--i;
    LOBYTE(v16) = v17;
  }

  if (v16 == 57)
  {
    *i = 48;
    goto LABEL_27;
  }

LABEL_30:
  *i = v16 + 1;
  return a3;
}

unsigned __int8 *absl::lts_20240722::str_format_internal::anonymous namespace::FinalPrint(unsigned __int8 *result, char *__src, size_t __n, size_t a4, size_t __len, void *a6, size_t a7)
{
  v7 = a7;
  v11 = __src;
  v12 = result;
  v13 = *(result + 2);
  v14 = *(v13 + 4);
  v15 = *result;
  if ((v14 & 0x80000000) == 0)
  {
    v16 = a4;
    v17 = __n + __len + a7;
    if (*result)
    {
      ++v17;
    }

    __lena = v14 - v17;
    if (v14 <= v17)
    {
      v32 = 0;
    }

    else
    {
      v18 = *(v13 + 1);
      if (v18)
      {
        v32 = 0;
        v20 = (result + 24);
        goto LABEL_45;
      }

      if ((v18 & 0x10) == 0)
      {
        v19 = *(result + 3);
        v20 = (result + 24);
        if (__lena)
        {
          v21 = v19[3];
          v19[2] += __lena;
          v22 = v19 + 132;
          v23 = (v19 + 132) - v21;
          v24 = __lena - v23;
          if (__lena <= v23)
          {
            v24 = v14 - v17;
            v25 = v21;
          }

          else
          {
            v25 = v19 + 4;
            if (v22 == v21)
            {
              v26 = (v19 + 132);
            }

            else
            {
              memset(v21, 32, (v19 + 132) - v21);
              v26 = (v19[3] + v23);
              v19[3] = v26;
            }

            (v19[1])(*v19, v19 + 4, v26 - v25);
            v19[3] = v25;
            if (v24 >= 0x401)
            {
              do
              {
                v24 -= 1024;
                memset(v19 + 4, 32, 0x400uLL);
                v19[3] = v22;
                (v19[1])(*v19, v19 + 4, 1024);
                v19[3] = v25;
              }

              while (v24 > 0x400);
            }
          }

          result = memset(v25, 32, v24);
          __lena = 0;
          v32 = 0;
          v19[3] += v24;
          v15 = *v12;
          v7 = a7;
          v16 = a4;
          v11 = __src;
        }

        else
        {
          __lena = 0;
          v32 = 0;
        }

LABEL_45:
        v83 = v20;
        v42 = *v20;
        if (v15)
        {
          v43 = *(v42 + 3);
          ++*(v42 + 2);
          if (v42 + 1056 == v43)
          {
            v43 = v42 + 32;
            result = (*(v42 + 1))(*v42, v42 + 32, 1024);
            *(v42 + 3) = v42 + 32;
          }

          *v43 = v15;
          ++*(v42 + 3);
          v42 = *v20;
        }

        v44 = __len;
        if (__n >= v16)
        {
          v45 = v16;
        }

        else
        {
          v45 = __n;
        }

        if (v45)
        {
          v46 = *(v42 + 3);
          *(v42 + 2) += v45;
          if (v45 >= v42 - v46 + 1056)
          {
            (*(v42 + 1))(*v42, v42 + 32, v46 - (v42 + 32));
            *(v42 + 3) = v42 + 32;
            result = (*(v42 + 1))(*v42, v11, v45);
            v47 = v83;
            v48 = *v83;
            if (v32)
            {
              goto LABEL_56;
            }

            goto LABEL_60;
          }

          result = memcpy(v46, v11, v45);
          *(v42 + 3) += v45;
        }

        v47 = v83;
        v48 = *v83;
        if (v32)
        {
LABEL_56:
          v49 = v16;
          v79 = v11;
          v50 = v7;
          v51 = *(v48 + 3);
          *(v48 + 2) += v32;
          v52 = v48 + 1056;
          v53 = v48 + 1056 - v51;
          v54 = v32 - v53;
          if (v32 <= v53)
          {
            v54 = v32;
            v55 = v51;
            v7 = v50;
            v57 = a6;
            v16 = v49;
          }

          else
          {
            v55 = v48 + 32;
            if (v52 == v51)
            {
              v56 = v48 + 1056;
            }

            else
            {
              memset(v51, 48, v48 + 1056 - v51);
              v56 = (*(v48 + 3) + v53);
              *(v48 + 3) = v56;
            }

            v7 = v50;
            v57 = a6;
            (*(v48 + 1))(*v48, v48 + 32, v56 - v55);
            *(v48 + 3) = v55;
            v16 = v49;
            if (v54 >= 0x401)
            {
              do
              {
                v54 -= 1024;
                memset(v48 + 32, 48, 0x400uLL);
                *(v48 + 3) = v52;
                (*(v48 + 1))(*v48, v48 + 32, 1024);
                *(v48 + 3) = v55;
              }

              while (v54 > 0x400);
            }
          }

          result = memset(v55, 48, v54);
          *(v48 + 3) += v54;
          v47 = v83;
          v48 = *v83;
          v11 = v79;
LABEL_66:
          v58 = __n >= v16;
          v59 = __n - v16;
          if (!v58)
          {
            std::__throw_out_of_range[abi:ne200100]("string_view::substr");
          }

          if (v59)
          {
            v60 = *(v48 + 3);
            *(v48 + 2) += v59;
            if (v59 >= v48 - v60 + 1056)
            {
              (*(v48 + 1))(*v48, v48 + 32, v60 - (v48 + 32));
              *(v48 + 3) = v48 + 32;
              v47 = v83;
              result = (*(v48 + 1))(*v48, &v11[v16], v59);
              v61 = *v83;
              if (!v44)
              {
                goto LABEL_82;
              }

              goto LABEL_72;
            }

            result = memcpy(v60, &v11[v16], v59);
            *(v48 + 3) += v59;
          }

          v61 = *v47;
          if (!v44)
          {
            goto LABEL_82;
          }

LABEL_72:
          v62 = *(v61 + 3);
          *(v61 + 2) += v44;
          v63 = v61 + 1056;
          v64 = v61 + 1056 - v62;
          v65 = v44 - v64;
          if (v44 <= v64)
          {
            v65 = v44;
            v66 = v62;
          }

          else
          {
            v66 = v61 + 32;
            if (v63 == v62)
            {
              v67 = v61 + 1056;
            }

            else
            {
              memset(v62, 48, v61 + 1056 - v62);
              v67 = (*(v61 + 3) + v64);
              *(v61 + 3) = v67;
            }

            (*(v61 + 1))(*v61, v61 + 32, v67 - v66);
            *(v61 + 3) = v66;
            if (v65 >= 0x401)
            {
              do
              {
                v65 -= 1024;
                memset(v61 + 32, 48, 0x400uLL);
                *(v61 + 3) = v63;
                (*(v61 + 1))(*v61, v61 + 32, 1024);
                *(v61 + 3) = v66;
              }

              while (v65 > 0x400);
            }
          }

          result = memset(v66, 48, v65);
          *(v61 + 3) += v65;
          v61 = *v47;
LABEL_82:
          if (v7)
          {
            v68 = *(v61 + 3);
            *(v61 + 2) += v7;
            if (v7 >= v61 - v68 + 1056)
            {
              (*(v61 + 1))(*v61, v61 + 32, v68 - (v61 + 32));
              *(v61 + 3) = v61 + 32;
              result = (*(v61 + 1))(*v61, v57, v7);
              v69 = __lena;
              if (!__lena)
              {
                return result;
              }

LABEL_88:
              v70 = *v47;
              v71 = *(*v47 + 3);
              *(v70 + 2) = *(*v47 + 2) + v69;
              v72 = v70 + 1056;
              v73 = v70 + 1056 - v71;
              v74 = v69 - v73;
              if (v69 <= v73)
              {
                v74 = v69;
                v75 = v71;
              }

              else
              {
                v75 = v70 + 32;
                if (v72 == v71)
                {
                  v76 = v70 + 1056;
                }

                else
                {
                  memset(v71, 32, v70 + 1056 - v71);
                  v76 = (*(v70 + 3) + v73);
                  *(v70 + 3) = v76;
                }

                (*(v70 + 1))(*v70, v70 + 32, v76 - v75);
                *(v70 + 3) = v75;
                if (v74 >= 0x401)
                {
                  do
                  {
                    v74 -= 1024;
                    memset(v70 + 32, 32, 0x400uLL);
                    *(v70 + 3) = v72;
                    (*(v70 + 1))(*v70, v70 + 32, 1024);
                    *(v70 + 3) = v75;
                  }

                  while (v74 > 0x400);
                }
              }

              result = memset(v75, 32, v74);
              *(v70 + 3) += v74;
              return result;
            }

            result = memcpy(v68, v57, v7);
            *(v61 + 3) += v7;
          }

          v69 = __lena;
          if (!__lena)
          {
            return result;
          }

          goto LABEL_88;
        }

LABEL_60:
        v57 = a6;
        goto LABEL_66;
      }

      v32 = v14 - v17;
    }

    __lena = 0;
    v20 = (result + 24);
    goto LABEL_45;
  }

  if (*result)
  {
    v27 = *(result + 3);
    v28 = *(v27 + 24);
    ++*(v27 + 16);
    if ((v27 + 1056) == v28)
    {
      v28 = (v27 + 32);
      result = (*(v27 + 8))(*v27, v27 + 32, 1024);
      *(v27 + 24) = v27 + 32;
    }

    *v28 = v15;
    ++*(v27 + 24);
  }

  if (!__n)
  {
LABEL_18:
    v31 = *(v12 + 3);
    if (!__len)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  v29 = *(v12 + 3);
  v30 = *(v29 + 3);
  *(v29 + 2) += __n;
  if (__n < v29 - v30 + 1056)
  {
    result = memcpy(v30, v11, __n);
    *(v29 + 3) += __n;
    goto LABEL_18;
  }

  (*(v29 + 1))(*v29, v29 + 32, v30 - (v29 + 32));
  *(v29 + 3) = v29 + 32;
  result = (*(v29 + 1))(*v29, v11, __n);
  v31 = *(v12 + 3);
  if (!__len)
  {
LABEL_19:
    if (!v7)
    {
      return result;
    }

    goto LABEL_34;
  }

LABEL_25:
  v33 = *(v31 + 3);
  *(v31 + 2) += __len;
  v34 = v31 + 1056;
  v35 = v31 + 1056 - v33;
  v36 = __len - v35;
  if (__len <= v35)
  {
    v36 = __len;
    v37 = v33;
  }

  else
  {
    v37 = v31 + 32;
    if (v34 == v33)
    {
      v38 = v31 + 1056;
    }

    else
    {
      memset(v33, 48, v31 + 1056 - v33);
      v38 = (*(v31 + 3) + v35);
      *(v31 + 3) = v38;
    }

    (*(v31 + 1))(*v31, v31 + 32, v38 - v37);
    *(v31 + 3) = v37;
    if (v36 >= 0x401)
    {
      do
      {
        v36 -= 1024;
        memset(v31 + 32, 48, 0x400uLL);
        *(v31 + 3) = v34;
        (*(v31 + 1))(*v31, v31 + 32, 1024);
        *(v31 + 3) = v37;
      }

      while (v36 > 0x400);
    }
  }

  result = memset(v37, 48, v36);
  *(v31 + 3) += v36;
  v31 = *(v12 + 3);
  if (v7)
  {
LABEL_34:
    v39 = *(v31 + 3);
    *(v31 + 2) += v7;
    if (v7 >= v31 - v39 + 1056)
    {
      (*(v31 + 1))(*v31, v31 + 32, v39 - (v31 + 32));
      *(v31 + 3) = v31 + 32;
      v40 = *v31;
      v41 = *(v31 + 1);

      return v41(v40, a6, v7);
    }

    else
    {
      result = memcpy(v39, a6, v7);
      *(v31 + 3) += v7;
    }
  }

  return result;
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::FloatToBuffer<(absl::lts_20240722::str_format_internal::anonymous namespace::FormatStyle)1,double>(unint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a3 > 0x27)
  {
    return 0;
  }

  *(a4 + 88) = a4 + 41;
  *(a4 + 96) = a4 + 41;
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 < 0xFFFFFFC4)
    {
      if (a2 < 0xFFFFFF84)
      {
        return 0;
      }

      v52 = -a2;
      if ((-a2 & 0x40) != 0)
      {
        v53 = -1 << -a2;
      }

      else
      {
        v53 = (-1 << -a2) | (0x7FFFFFFFFFFFFFFFuLL >> (a2 - 1));
      }

      if ((v52 & 0x40) != 0)
      {
        v54 = 0;
      }

      else
      {
        v54 = -1 << -a2;
      }

      v55 = ~v54;
      v56 = ~v53;
      if ((v52 & 0x40) != 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = a1 >> v52;
      }

      if (v57)
      {
        v58 = 0;
        do
        {
          *(&v60 + 1) = v58;
          *&v60 = v57;
          v59 = v60 >> 1;
          v61 = v59 + (v58 >> 1);
          if (__CFADD__(v59, v58 >> 1))
          {
            ++v61;
          }

          v62 = __PAIR128__(v58 >> 1, v59) - v61 % 5;
          v40 = v57 <= 9;
          v58 = (v62 * __PAIR128__(0xCCCCCCCCCCCCCCCCLL, 0xCCCCCCCCCCCCCCCDLL)) >> 64;
          v63 = (*(a4 + 88) - 1);
          *(a4 + 88) = v63;
          *v63 = (v57 - 2 * v62) | 0x30;
          v57 = 0xCCCCCCCCCCCCCCCDLL * v62;
        }

        while (!v40);
        v57 = 0;
        v64 = *(a4 + 88);
        v65 = *(a4 + 96);
        v66 = *v64;
        *(a4 + 88) = v64 - 1;
        *(v64 - 1) = v66;
        *(*(a4 + 88) + 1) = 46;
        v67 = v55 & a1;
        if (v65 != v64)
        {
          v68 = &v65[~v64];
          *a5 = v68;
          v69 = (v68 - a3);
          if (v68 > a3)
          {
            v70 = *(a4 + 96);
            v16 = (v70 - v69);
            *(a4 + 96) = v70 - v69;
            v71 = *(v70 - v69);
            if (v71 <= 53)
            {
              if (v71 != 53)
              {
                return 1;
              }

              if (!v67)
              {
                if (v69 == 1)
                {
LABEL_180:
                  v109 = *(v16 - 1);
                  if (v109 == 46)
                  {
                    LOBYTE(v109) = *(v16 - 2);
                  }

                  if ((v109 & 0x80000001) != 1)
                  {
                    return 1;
                  }
                }

                else
                {
                  v108 = a3 + v64 - v65 + 2;
                  while (*(v70 + v108) == 48)
                  {
                    if (!++v108)
                    {
                      goto LABEL_180;
                    }
                  }
                }
              }
            }

            v18 = v16 - 1;
            v72 = *(a4 + 88);
            if ((v16 - 1) >= v72)
            {
              while (1)
              {
                v20 = *v18;
                if (v20 != 46)
                {
                  if (v20 != 57)
                  {
                    goto LABEL_163;
                  }

                  *v18 = 48;
                  v72 = *(a4 + 88);
                }

                if (--v18 < v72)
                {
                  goto LABEL_165;
                }
              }
            }

            goto LABEL_166;
          }

          a3 -= v68;
          if (!a3)
          {
LABEL_147:
            v100 = (__PAIR128__(v57, v67) * 0xA) >> 64;
            v101 = 10 * v67;
            if ((v52 & 0x40) != 0)
            {
              v102 = v100 >> v52;
            }

            else
            {
              v102 = ((2 * v100) << (a2 - 1)) | (v101 >> -a2);
            }

            if (v102 < 6)
            {
              if (v102 != 5)
              {
                return 1;
              }

              v16 = *(a4 + 96);
              if (!(v101 & v55 | v100 & v56))
              {
                v103 = *(v16 - 1);
                if (v103 == 46)
                {
                  LOBYTE(v103) = *(v16 - 2);
                }

                if ((v103 & 0x80000001) != 1)
                {
                  return 1;
                }
              }
            }

            else
            {
              v16 = *(a4 + 96);
            }

            v18 = v16 - 1;
            v104 = *(a4 + 88);
            if ((v16 - 1) >= v104)
            {
              while (1)
              {
                v20 = *v18;
                if (v20 != 46)
                {
                  if (v20 != 57)
                  {
                    goto LABEL_163;
                  }

                  *v18 = 48;
                  v104 = *(a4 + 88);
                }

                if (--v18 < v104)
                {
                  goto LABEL_165;
                }
              }
            }

            goto LABEL_166;
          }

          do
          {
LABEL_144:
            v96 = (__PAIR128__(v57, v67) * 0xA) >> 64;
            v97 = 10 * v67;
            v98 = v96 >> v52;
            if ((v52 & 0x40) == 0)
            {
              v98 = ((2 * v96) << (a2 - 1)) | (v97 >> -a2);
            }

            v57 = v96 & v56;
            v67 = v97 & v55;
            v99 = *(a4 + 96);
            *(a4 + 96) = v99 + 1;
            *v99 = v98 + 48;
            --a3;
          }

          while (a3);
          goto LABEL_147;
        }
      }

      else
      {
        v67 = v55 & a1;
      }

      *a5 = 0;
      if (v67)
      {
        v91 = 0;
        do
        {
          v57 = (__PAIR128__(v57, v67) * 0xA) >> 64;
          v67 *= 10;
          --v91;
        }

        while (__PAIR128__(v56, v55) >= __PAIR128__(v57, v67));
        *a5 = v91;
      }

      else
      {
        v67 = 0;
        v57 = 0;
      }

      v93 = ((2 * v57) << (a2 - 1)) | (v67 >> -a2);
      if ((v52 & 0x40) != 0)
      {
        v93 = v57 >> v52;
      }

      v94 = (*(a4 + 88) - 1);
      *(a4 + 88) = v94;
      *v94 = v93 + 48;
      v95 = *(a4 + 96);
      *(a4 + 96) = v95 + 1;
      *v95 = 46;
      v67 &= v55;
      v57 &= v56;
      if (!a3)
      {
        goto LABEL_147;
      }

      goto LABEL_144;
    }

    v21 = -a2 & 0x7F;
    v22 = ~(-1 << -a2);
    v23 = a1 >> -a2;
    if (v23)
    {
      do
      {
        v24 = (*(a4 + 88) - 1);
        *(a4 + 88) = v24;
        *v24 = (v23 % 0xA) | 0x30;
        v8 = v23 > 9;
        v23 /= 0xAuLL;
      }

      while (v8);
      v25 = *(a4 + 88);
      v26 = *(a4 + 96);
      v27 = *v25;
      *(a4 + 88) = v25 - 1;
      *(v25 - 1) = v27;
      *(*(a4 + 88) + 1) = 46;
      v28 = a1 & v22;
      if (v26 != v25)
      {
        v29 = &v26[~v25];
        *a5 = v29;
        v30 = (v29 - a3);
        if (v29 > a3)
        {
          v31 = *(a4 + 96);
          v16 = (v31 - v30);
          *(a4 + 96) = v31 - v30;
          v32 = *(v31 - v30);
          if (v32 <= 53)
          {
            if (v32 != 53)
            {
              return 1;
            }

            if (!v28)
            {
              if (v30 == 1)
              {
LABEL_172:
                v107 = *(v16 - 1);
                if (v107 == 46)
                {
                  LOBYTE(v107) = *(v16 - 2);
                }

                if ((v107 & 0x80000001) != 1)
                {
                  return 1;
                }
              }

              else
              {
                v106 = a3 + v25 - v26 + 2;
                while (*(v31 + v106) == 48)
                {
                  if (!++v106)
                  {
                    goto LABEL_172;
                  }
                }
              }
            }
          }

          v18 = v16 - 1;
          v33 = *(a4 + 88);
          if ((v16 - 1) >= v33)
          {
            do
            {
              v20 = *v18;
              if (v20 != 46)
              {
                if (v20 != 57)
                {
LABEL_163:
                  *v18 = v20 + 1;
                  return 1;
                }

                *v18 = 48;
                v33 = *(a4 + 88);
              }

              --v18;
            }

            while (v18 >= v33);
LABEL_165:
            v16 = v18 + 1;
          }

          goto LABEL_166;
        }

        a3 -= v29;
        if (!a3)
        {
LABEL_100:
          v81 = 10 * v28;
          v82 = (v81 >> v21);
          if (v82 < 6)
          {
            if (v82 != 5)
            {
              return 1;
            }

            v83 = *(a4 + 96);
            if ((v81 & v22) == 0)
            {
              v84 = *(v83 - 1);
              if (v84 == 46)
              {
                LOBYTE(v84) = *(v83 - 2);
              }

              if ((v84 & 0x80000001) != 1)
              {
                return 1;
              }
            }
          }

          else
          {
            v83 = *(a4 + 96);
          }

          v85 = v83 - 1;
          v86 = *(a4 + 88);
          if ((v83 - 1) >= v86)
          {
            do
            {
              v87 = *v85;
              if (v87 != 46)
              {
                if (v87 != 57)
                {
                  *v85 = v87 + 1;
                  return 1;
                }

                *v85 = 48;
                v86 = *(a4 + 88);
              }

              --v85;
            }

            while (v85 >= v86);
            v83 = v85 + 1;
          }

          *v85 = 49;
          *(a4 + 88) = v85;
          v92 = *v83;
          *v83 = v83[1];
          v83[1] = v92;
LABEL_167:
          ++*a5;
          --*(a4 + 96);
          return 1;
        }

        do
        {
LABEL_99:
          v78 = 10 * v28;
          v79 = v78 >> v21;
          v28 = v78 & v22;
          v80 = *(a4 + 96);
          *(a4 + 96) = v80 + 1;
          *v80 = v79 + 48;
          --a3;
        }

        while (a3);
        goto LABEL_100;
      }
    }

    else
    {
      v28 = a1 & v22;
    }

    *a5 = 0;
    if (v28)
    {
      v75 = 0;
      do
      {
        v28 *= 10;
        --v75;
      }

      while (v28 <= v22);
      *a5 = v75;
    }

    v76 = (*(a4 + 88) - 1);
    *(a4 + 88) = v76;
    *v76 = (v28 >> v21) + 48;
    v77 = *(a4 + 96);
    *(a4 + 96) = v77 + 1;
    *v77 = 46;
    v28 &= v22;
    if (!a3)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  if (a2 <= 0xB)
  {
    v6 = a1 << (a2 & 0xF);
    if (v6)
    {
      do
      {
        v7 = (*(a4 + 88) - 1);
        *(a4 + 88) = v7;
        *v7 = (v6 % 0xA) | 0x30;
        v8 = v6 > 9;
        v6 /= 0xAuLL;
      }

      while (v8);
      v9 = *(a4 + 88);
      v10 = *(a4 + 96);
      v11 = *v9;
      *(a4 + 88) = v9 - 1;
      *(v9 - 1) = v11;
      *(*(a4 + 88) + 1) = 46;
      v12 = ~v9;
      v13 = v10 + v12;
      *a5 = v10 + v12;
      v14 = v10 + v12 - a3;
      if (v10 + v12 <= a3)
      {
        if (a3 != v13)
        {
          do
          {
            v51 = *(a4 + 96);
            *(a4 + 96) = v51 + 1;
            *v51 = 48;
            v40 = __CFADD__(v14++, 1);
          }

          while (!v40);
        }

        return 1;
      }
    }

    else
    {
      v13 = -1;
      *a5 = -1;
      v14 = -1 - a3;
    }

    v15 = *(a4 + 96);
    v16 = (v15 - v14);
    *(a4 + 96) = v15 - v14;
    v17 = *(v15 - v14);
    if (v17 > 53)
    {
LABEL_14:
      v18 = v16 - 1;
      v19 = *(a4 + 88);
      if ((v16 - 1) >= v19)
      {
        while (1)
        {
          v20 = *v18;
          if (v20 != 46)
          {
            if (v20 != 57)
            {
              goto LABEL_163;
            }

            *v18 = 48;
            v19 = *(a4 + 88);
          }

          if (--v18 < v19)
          {
            goto LABEL_165;
          }
        }
      }

LABEL_166:
      *v18 = 49;
      *(a4 + 88) = v18;
      v105 = *v16;
      *v16 = v16[1];
      v16[1] = v105;
      goto LABEL_167;
    }

    if (v17 == 53)
    {
      if (v14 == 1)
      {
LABEL_89:
        v74 = *(v16 - 1);
        if (v74 == 46)
        {
          LOBYTE(v74) = *(v16 - 2);
        }

        if ((v74 & 0x80000001) != 1)
        {
          return 1;
        }
      }

      else
      {
        v73 = a3 - v13 + 1;
        while (*(v15 + v73) == 48)
        {
          if (!++v73)
          {
            goto LABEL_89;
          }
        }
      }

      goto LABEL_14;
    }

    return 1;
  }

  if (a2 > 0x4B)
  {
    return 0;
  }

  v34 = a1 << a2;
  if ((a2 & 0x40) != 0)
  {
    v35 = a1 << a2;
  }

  else
  {
    v35 = a1 >> 1 >> ~a2;
  }

  if ((a2 & 0x40) != 0)
  {
    v34 = 0;
  }

  if (!(v34 | v35))
  {
    v46 = -1;
    *a5 = -1;
    v47 = -1 - a3;
LABEL_41:
    v48 = *(a4 + 96);
    v16 = (v48 - v47);
    *(a4 + 96) = v48 - v47;
    v49 = *(v48 - v47);
    if (v49 <= 53)
    {
      if (v49 != 53)
      {
        return 1;
      }

      if (v47 == 1)
      {
LABEL_125:
        v90 = *(v16 - 1);
        if (v90 == 46)
        {
          LOBYTE(v90) = *(v16 - 2);
        }

        if ((v90 & 0x80000001) != 1)
        {
          return 1;
        }
      }

      else
      {
        v89 = a3 - v46 + 1;
        while (*(v48 + v89) == 48)
        {
          if (!++v89)
          {
            goto LABEL_125;
          }
        }
      }
    }

    v18 = v16 - 1;
    v50 = *(a4 + 88);
    if ((v16 - 1) >= v50)
    {
      while (1)
      {
        v20 = *v18;
        if (v20 != 46)
        {
          if (v20 != 57)
          {
            goto LABEL_163;
          }

          *v18 = 48;
          v50 = *(a4 + 88);
        }

        if (--v18 < v50)
        {
          goto LABEL_165;
        }
      }
    }

    goto LABEL_166;
  }

  do
  {
    *(&v37 + 1) = v35;
    *&v37 = v34;
    v36 = v37 >> 1;
    v38 = v36 + (v35 >> 1);
    if (__CFADD__(v36, v35 >> 1))
    {
      ++v38;
    }

    v39 = __PAIR128__(v35 >> 1, v36) - v38 % 5;
    v40 = v34 <= 9;
    v35 = (v39 * __PAIR128__(0xCCCCCCCCCCCCCCCCLL, 0xCCCCCCCCCCCCCCCDLL)) >> 64;
    v41 = (*(a4 + 88) - 1);
    *(a4 + 88) = v41;
    *v41 = (v34 - 2 * v39) | 0x30;
    v34 = 0xCCCCCCCCCCCCCCCDLL * v39;
  }

  while (!v40);
  v42 = *(a4 + 88);
  v43 = *(a4 + 96);
  v44 = *v42;
  *(a4 + 88) = v42 - 1;
  *(v42 - 1) = v44;
  *(*(a4 + 88) + 1) = 46;
  v45 = ~v42;
  v46 = v43 + v45;
  *a5 = v43 + v45;
  v40 = v43 + v45 >= a3;
  v47 = v43 + v45 - a3;
  if (v47 != 0 && v40)
  {
    goto LABEL_41;
  }

  if (a3 == v46)
  {
    return 1;
  }

  result = 1;
  do
  {
    v88 = *(a4 + 96);
    *(a4 + 96) = v88 + 1;
    *v88 = 48;
    v40 = __CFADD__(v47++, 1);
  }

  while (!v40);
  return result;
}

void absl::lts_20240722::str_format_internal::anonymous namespace::FallbackToSnprintf<double>(unsigned __int8 *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  *(a1 + 2);
  __format = 37;
  absl::lts_20240722::str_format_internal::FlagsToString(a1[1], &__src);
  size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
    v4 = __src.__r_.__value_.__r.__words[0];
    memcpy(v10, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
    operator delete(v4);
  }

  else
  {
    memcpy(v10, &__src, SHIBYTE(__src.__r_.__value_.__r.__words[2]));
  }

  v5 = &v10[size];
  v5[2] = 42;
  *v5 = 11818;
  v6 = *a1;
  if (v6 > 0x12)
  {
    v7 = 0;
  }

  else
  {
    v7 = byte_23CE31CE0[v6];
  }

  v5[3] = v7;
  v5[4] = 0;
  operator new();
}

void sub_23C9709B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *absl::lts_20240722::str_format_internal::BufferRawSink::Write(uint64_t a1, const void *a2, size_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  result = memcpy(v5, a2, v8);
  v10 = *(a1 + 8) - v8;
  *a1 += v8;
  *(a1 + 8) = v10;
  *(a1 + 16) += a3;
  return result;
}

int *absl::lts_20240722::str_format_internal::FILERawSink::Write(int *result, char *a2, size_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      if (v5[2])
      {
        break;
      }

      v7 = *__error();
      *__error() = 0;
      v6 = fwrite(a2, 1uLL, v3, *v5);
      if (v6)
      {
        *(v5 + 2) += v6;
        a2 += v6;
        v3 -= v6;
      }

      else if (*__error() != 4)
      {
        if (*__error())
        {
          v5[2] = *__error();
        }

        else if (ferror(*v5))
        {
          v5[2] = 9;
        }
      }

      result = __error();
      if (!*result)
      {
        result = __error();
        *result = v7;
      }
    }

    while (v3);
  }

  return result;
}

void absl::lts_20240722::str_format_internal::anonymous namespace::ClearErrnoGuard::~ClearErrnoGuard(absl::lts_20240722::str_format_internal::_anonymous_namespace_::ClearErrnoGuard *this)
{
  if (!*__error())
  {
    v2 = *this;
    *__error() = v2;
  }
}

char **absl::lts_20240722::str_format_internal::ConsumeUnboundConversionNoInline(char **a1, char **a2, uint64_t a3, const char *a4)
{
  if ((*a4 & 0x80000000) != 0)
  {
    return absl::lts_20240722::str_format_internal::ConsumeConversion<true>(a1, a2, a3, a4);
  }

  else
  {
    return absl::lts_20240722::str_format_internal::ConsumeConversion<false>(a1, a2, a3, a4);
  }
}

int *absl::lts_20240722::base_internal::StrError@<X0>(absl::lts_20240722::base_internal *this@<X0>, absl::lts_20240722::base_internal::_anonymous_namespace_ *a2@<X8>)
{
  v2 = this;
  v4 = *__error();
  if ((atomic_load_explicit(&qword_2810C1530, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_2810C1530);
    if (v8)
    {
    }
  }

  if (v2 > 0x86)
  {
  }

  else
  {
    v5 = _MergedGlobals_44 + 24 * v2;
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 8));
    }

    else
    {
      v6 = *v5;
      *(a2 + 2) = *(v5 + 16);
      *a2 = v6;
    }
  }

  result = __error();
  *result = v4;
  return result;
}

void sub_23C970C6C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2810C1530);
  *__error() = v1;
  _Unwind_Resume(a1);
}

unint64_t absl::lts_20240722::base_internal::anonymous namespace::StrErrorInternal(absl::lts_20240722::base_internal::_anonymous_namespace_ *this, int __errnum)
{
  v8 = *MEMORY[0x277D85DE8];
  if (strerror_r(__errnum, __strerrbuf, 0x64uLL))
  {
    __strerrbuf[0] = 0;
LABEL_3:
    snprintf(__strerrbuf, 0x64uLL, "Unknown error %d", __errnum);
    goto LABEL_5;
  }

  if (!__strerrbuf[0])
  {
    goto LABEL_3;
  }

LABEL_5:
  result = strlen(__strerrbuf);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(this + 23) = result;
  if (result)
  {
    result = memcpy(this, __strerrbuf, result);
  }

  *(this + v5) = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

int8x16_t *absl::lts_20240722::AsciiStrToLower(int8x16_t *result)
{
  v1 = result[1].i8[7];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (v1 <= 0xF)
    {
      goto LABEL_3;
    }

    return absl::lts_20240722::ascii_internal::AsciiStrCaseFoldLong<false>(result, v1);
  }

  v2 = result;
  result = result->i64[0];
  v1 = v2->u64[1];
  if (v1 > 0xF)
  {
    return absl::lts_20240722::ascii_internal::AsciiStrCaseFoldLong<false>(result, v1);
  }

LABEL_3:
  while (v1)
  {
    result->i8[0] ^= 32 * ((result->i8[0] + 63) < -102);
    result = (result + 1);
    --v1;
  }

  return result;
}

int8x16_t *absl::lts_20240722::ascii_internal::AsciiStrCaseFoldLong<false>(int8x16_t *result, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    v2 = a2 & 0xFFFFFFFFFFFFFFE0;
    v3 = result + 1;
    v4.i64[0] = 0x3F3F3F3F3F3F3F3FLL;
    v4.i64[1] = 0x3F3F3F3F3F3F3F3FLL;
    v5.i64[0] = 0x9A9A9A9A9A9A9A9ALL;
    v5.i64[1] = 0x9A9A9A9A9A9A9A9ALL;
    v6.i64[0] = 0x2020202020202020;
    v6.i64[1] = 0x2020202020202020;
    v7 = a2 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v8 = veorq_s8(vandq_s8(vcgtq_s8(v5, vaddq_s8(*v3, v4)), v6), *v3);
      v3[-1] = veorq_s8(vandq_s8(vcgtq_s8(v5, vaddq_s8(v3[-1], v4)), v6), v3[-1]);
      *v3 = v8;
      v3 += 2;
      v7 -= 32;
    }

    while (v7);
    if (v2 == a2)
    {
      return result;
    }

    if ((a2 & 0x18) == 0)
    {
LABEL_10:
      v12 = &result->i8[v2];
      v13 = a2 - v2;
      do
      {
        *v12 ^= 32 * ((*v12 + 63) < -102);
        ++v12;
        --v13;
      }

      while (v13);
      return result;
    }
  }

  else
  {
    v2 = 0;
  }

  v9 = v2;
  v2 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = &result->i8[v9];
  v11 = v9 - (a2 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    *v10 = veor_s8(vand_s8(vcgt_s8(0x9A9A9A9A9A9A9A9ALL, vadd_s8(*v10, 0x3F3F3F3F3F3F3F3FLL)), 0x2020202020202020), *v10);
    ++v10;
    v11 += 8;
  }

  while (v11);
  if (v2 != a2)
  {
    goto LABEL_10;
  }

  return result;
}

unsigned __int8 *absl::lts_20240722::from_chars(unsigned __int8 *a1, unsigned __int8 *a2, double *a3, int a4)
{
  v6 = a1;
  v103 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v8 = 0;
    if ((a4 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = *a1;
    v8 = v7 == 45;
    if (v7 == 45)
    {
      ++a1;
    }

    if ((a4 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

  if (a2 - a1 >= 2)
  {
    if (*a1 == 48)
    {
      v9 = a1 + 1;
      if ((a1[1] | 0x20) == 0x78)
      {
        absl::lts_20240722::strings_internal::ParseFloat<16>((a1 + 2), a2, a4, &__dst);
        v10 = v102;
        if (!v102 || v101)
        {
          if (a4 == 1)
          {
            goto LABEL_56;
          }

          v35 = -0.0;
          if (!v8)
          {
            v35 = 0.0;
          }

          v10 = v9;
        }

        else if (__dst)
        {
          v11 = 11 - __clz(__dst);
          if (v11 <= -1074 - v100)
          {
            v11 = -1074 - v100;
          }

          if (v11 <= 0)
          {
            v12 = __dst << -v11;
            if ((-v11 & 0x40) != 0)
            {
              v12 = 0;
            }
          }

          else if (v11 <= 0x7F)
          {
            v37 = -1 << v11;
            v38 = 1 << (v11 - 1);
            if (((v11 - 1) & 0x40) != 0)
            {
              v39 = 1 << (v11 - 1);
            }

            else
            {
              v39 = 0;
            }

            if (((v11 - 1) & 0x40) != 0)
            {
              v38 = 0;
            }

            if ((v11 & 0x40) != 0)
            {
              v37 = 0;
            }

            v40 = __dst & ~v37;
            v12 = __dst >> v11;
            if ((v11 & 0x40) != 0)
            {
              v12 = 0;
            }

            if (__PAIR128__(v39, v38) >= v40)
            {
              if (!(v40 ^ v38 | v39))
              {
                v12 += v12 & 1;
              }
            }

            else
            {
              ++v12;
            }
          }

          else
          {
            v12 = 0;
          }

          v45 = v11 + v100;
          v46 = 0x10000000000000;
          if (v12 == 0x20000000000000)
          {
            ++v45;
          }

          else
          {
            v46 = v12;
          }

          if (v46)
          {
            v47 = v45;
          }

          else
          {
            v47 = -99999;
          }

          if (v45 > 971 || v47 == 99999)
          {
            v35 = 1.79769313e308;
            if (v8)
            {
              v35 = -1.79769313e308;
            }
          }

          else if (v47 == -99999)
          {
            v35 = -0.0;
            if (!v8)
            {
              v35 = 0.0;
            }
          }

          else
          {
            v48 = v46;
            if (v8)
            {
              v48 = -v46;
            }

            v35 = ldexp(v48, v47);
          }
        }

        else
        {
          v35 = -0.0;
          if (!v8)
          {
            v35 = 0.0;
          }
        }

        *a3 = v35;
        v13 = v10;
        goto LABEL_228;
      }
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((a4 & 4) != 0)
  {
    absl::lts_20240722::strings_internal::ParseFloat<16>(a1, a2, a4, &v93);
    v13 = v98;
    if (v98)
    {
      if (v95 != 1)
      {
        if (v95 == 2)
        {
          v14 = __src;
          if (__src)
          {
            goto LABEL_23;
          }

          goto LABEL_33;
        }

        if (v93)
        {
          v33 = 11 - __clz(v93);
          if (v33 <= -1074 - v94)
          {
            v33 = -1074 - v94;
          }

          if (v33 <= 0)
          {
            v34 = v93 << -v33;
            if ((-v33 & 0x40) != 0)
            {
              v34 = 0;
            }
          }

          else if (v33 <= 0x7F)
          {
            v41 = -1 << v33;
            v42 = 1 << (v33 - 1);
            if (((v33 - 1) & 0x40) != 0)
            {
              v43 = 1 << (v33 - 1);
            }

            else
            {
              v43 = 0;
            }

            if (((v33 - 1) & 0x40) != 0)
            {
              v42 = 0;
            }

            if ((v33 & 0x40) != 0)
            {
              v41 = 0;
            }

            v44 = v93 & ~v41;
            v34 = v93 >> v33;
            if ((v33 & 0x40) != 0)
            {
              v34 = 0;
            }

            if (__PAIR128__(v43, v42) >= v44)
            {
              if (!(v44 ^ v42 | v43))
              {
                v34 += v34 & 1;
              }
            }

            else
            {
              ++v34;
            }
          }

          else
          {
            v34 = 0;
          }

          v81 = v33 + v94;
          v59 = 0x10000000000000;
          if (v34 == 0x20000000000000)
          {
            ++v81;
          }

          else
          {
            v59 = v34;
          }

          if (v59)
          {
            v60 = v81;
          }

          else
          {
            v60 = -99999;
          }

          if (v81 > 971 || v60 == 99999)
          {
            goto LABEL_225;
          }

          if (v60 != -99999)
          {
            goto LABEL_230;
          }

          goto LABEL_191;
        }

LABEL_63:
        v16 = -0.0;
        if (!v8)
        {
          v16 = 0.0;
        }

        goto LABEL_227;
      }

LABEL_37:
      v16 = INFINITY;
      if (v8)
      {
        v16 = -INFINITY;
      }

      goto LABEL_227;
    }

LABEL_56:
    v13 = v6;
    goto LABEL_228;
  }

LABEL_19:
  absl::lts_20240722::strings_internal::ParseFloat<10>(a1, a2, a4, &v93);
  v13 = v98;
  if (!v98)
  {
    goto LABEL_56;
  }

  if (v95 == 1)
  {
    goto LABEL_37;
  }

  if (v95 == 2)
  {
    v14 = __src;
    if (__src)
    {
LABEL_23:
      if (v97 - v14 >= 127)
      {
        v15 = 127;
      }

      else
      {
        v15 = v97 - v14;
      }

      if (v97 != v14)
      {
        memmove(&__dst, v14, v15);
      }

      *(&__dst + v15) = 0;
      goto LABEL_34;
    }

LABEL_33:
    LOBYTE(__dst) = 0;
LABEL_34:
    v16 = nan(&__dst);
    if (v8)
    {
      v16 = -v16;
    }

LABEL_227:
    *a3 = v16;
    goto LABEL_228;
  }

  if (!v93)
  {
    goto LABEL_63;
  }

  if (__src)
  {
    if (v94 < -342)
    {
      goto LABEL_191;
    }

    if (v94 > 308)
    {
      goto LABEL_225;
    }

    v17 = (v94 + 342);
    v18 = (217706 * v94) >> 16;
LABEL_45:
    v20 = v19 * v93;
    v21 = (v19 * v93) >> 64;
    v22 = v18 - 63;
    if (__src)
    {
      v23 = 0;
      v24 = 64 - __clz(v20);
      v25 = 128 - __clz(v21);
      if (v21)
      {
        v24 = v25;
      }

      v26 = v24 - 58;
      v27 = ((2 * v21) << ~(v24 - 58)) | (v20 >> (v24 - 58));
      v28 = v21 >> v26;
      if ((v26 & 0x40) != 0)
      {
        v29 = v21 >> v26;
      }

      else
      {
        v29 = v27;
      }

      if ((v26 & 0x40) != 0)
      {
        v30 = 0;
      }

      else
      {
        v30 = v28;
      }

      v31 = v26 + v22;
      v32 = 5;
    }

    else
    {
      v61 = 64 - __clz(v20);
      v62 = 128 - __clz(v21);
      if (v21)
      {
        v61 = v62;
      }

      v32 = v61 - 53;
      v63 = v61 - 63;
      v64 = ((2 * v21) << ~v63) | (v20 >> v63);
      v65 = v21 >> v63;
      if ((v63 & 0x40) != 0)
      {
        v64 = v21 >> v63;
        v65 = 0;
      }

      v66 = v63 + v22;
      if (v94 >= 0x1C)
      {
        v30 = v65;
      }

      else
      {
        v30 = v21;
      }

      if (v94 >= 0x1C)
      {
        v29 = v64;
      }

      else
      {
        v29 = v20;
      }

      if (v94 < 0x1C)
      {
        v23 = 1;
      }

      else
      {
        v32 = 10;
        v23 = 0;
      }

      if (v94 >= 0x1C)
      {
        v31 = v66;
      }

      else
      {
        v31 = v22;
      }
    }

    v67 = -1074 - v31;
    if (v32 > -1074 - v31)
    {
      v67 = v32;
    }

    v68 = v67 + v31;
    v69 = v67 - 1;
    if (v67 < 1)
    {
      v71 = v29 << -v67;
      if ((-v67 & 0x40) != 0)
      {
        v70 = 0;
      }

      else
      {
        v70 = v71;
      }

      if (v23)
      {
        goto LABEL_218;
      }
    }

    else
    {
      if (v67 > 0x7F)
      {
        v70 = 0;
        goto LABEL_218;
      }

      v72 = -1 << v67;
      v73 = (-1 << v67) | (0x7FFFFFFFFFFFFFFFuLL >> ~v67);
      v74 = 1 << v69;
      v75 = (v69 & 0x40) == 0;
      if (((v67 - 1) & 0x40) != 0)
      {
        v76 = 1 << v69;
      }

      else
      {
        v76 = 0;
      }

      if (!v75)
      {
        v74 = 0;
      }

      if ((v67 & 0x40) != 0)
      {
        v73 = -1 << v67;
        v72 = 0;
      }

      v77 = v30 & ~v73;
      v78 = v29 & ~v72;
      v79 = ((2 * v30) << ~v67) | (v29 >> v67);
      v80 = v30 >> v67;
      if ((v67 & 0x40) != 0)
      {
        v70 = v80;
      }

      else
      {
        v70 = v79;
      }

      if (__PAIR128__(v76, v74) < __PAIR128__(v77, v78))
      {
        ++v70;
        goto LABEL_218;
      }

      if (v77 == v76 && v78 == v74)
      {
        v70 += v70 & 1u | ((v23 & 1) == 0);
        goto LABEL_218;
      }

      if (v78 != v74 - 1 || v77 != (v74 != 0) + v76 - 1)
      {
        v23 = 1;
      }

      if (v23)
      {
LABEL_218:
        v59 = 0x10000000000000;
        if (v70 == 0x20000000000000)
        {
          v89 = v68 + 1;
        }

        else
        {
          v59 = v70;
          v89 = v68;
        }

        if (v59)
        {
          v60 = v89;
        }

        else
        {
          v60 = -99999;
        }

        if (v89 >= 972)
        {
LABEL_225:
          v16 = 1.79769313e308;
          if (v8)
          {
            v16 = -1.79769313e308;
          }

          goto LABEL_227;
        }

        if (v60 != -99999)
        {
LABEL_230:
          v92 = v59;
          if (v8)
          {
            v92 = -v59;
          }

          v16 = ldexp(v92, v60);
          goto LABEL_227;
        }

LABEL_191:
        v16 = -0.0;
        if (!v8)
        {
          v16 = 0.0;
        }

        goto LABEL_227;
      }
    }

    goto LABEL_218;
  }

  if (v94 > -343)
  {
    if (v94 < 309)
    {
      v49 = __clz(v93);
      v50 = v93 << v49;
      v18 = (217706 * v94) >> 16;
      v17 = (v94 + 342);
      v52 = v51 * (v93 << v49);
      v53 = (v51 * (v93 << v49)) >> 64;
      v54 = __CFADD__(v52, v93 << v49);
      if ((~v53 & 0x1FF) != 0 || !v54)
      {
        goto LABEL_140;
      }

      v83 = v82 * v50;
      v84 = (v82 * v50) >> 64;
      v85 = __CFADD__(v84, v52);
      v52 += v84;
      if (v85)
      {
        ++v53;
      }

      if (!__CFADD__(v83, v50) || ((v53 & 0x1FF) == 0x1FF ? (v86 = v52 == -1) : (v86 = 0), !v86))
      {
LABEL_140:
        v56 = v53 >> ((v53 < 0) + 9);
        if (v52 || (v53 & 0x1FF) != 0 || ((v53 >> ((v53 < 0) + 9)) & 3) != 1)
        {
          v57 = v18 - v49 + 1087 - (v53 >= 0);
          v58 = (v56 & 1) + v56;
          if (v58 >> 54)
          {
            ++v57;
          }

          if (v57 - 2047 >= 0xFFFFFFFFFFFFF802)
          {
            v59 = (v58 >> 1) & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
            v60 = v57 - 1075;
            goto LABEL_230;
          }
        }
      }

      goto LABEL_45;
    }

    v36 = 1.79769313e308;
    if (v8)
    {
      v36 = -1.79769313e308;
    }
  }

  else
  {
    v36 = -0.0;
    if (!v8)
    {
      v36 = 0.0;
    }
  }

  *a3 = v36;
LABEL_228:
  v90 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t absl::lts_20240722::anonymous namespace::MustRoundUp(unint64_t a1, int a2, uint64_t *a3)
{
  v121 = *MEMORY[0x277D85DE8];
  memset(v119, 0, 340);
  FloatMantissa = absl::lts_20240722::strings_internal::BigUnsigned<84>::ReadFloatMantissa(v119, a3, 768);
  v6 = FloatMantissa;
  v7 = 2 * a1;
  v8 = (2 * a1) | 1;
  v9 = a2 - 1;
  if ((FloatMantissa & 0x80000000) == 0)
  {
    absl::lts_20240722::strings_internal::BigUnsigned<84>::MultiplyByFiveToTheNth(v119, FloatMantissa);
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    if (HIDWORD(v7))
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v118 = 0;
    v98 = 0uLL;
    v99 = 0uLL;
    v100 = 0uLL;
    v101 = 0uLL;
    v102 = 0uLL;
    v103 = 0uLL;
    v104 = 0uLL;
    v105 = 0uLL;
    v106 = 0uLL;
    v107 = 0uLL;
    v108 = 0uLL;
    v109 = 0uLL;
    v110 = 0uLL;
    v111 = 0uLL;
    v112 = 0uLL;
    v113 = 0uLL;
    v96 = v10;
    v97[0] = (2 * a1) | 1;
    v97[1] = a1 >> 31;
    if (v6 < a2)
    {
      v11 = v9 - v6;
      if (v11 < 1)
      {
        goto LABEL_116;
      }

      v12 = v97;
      if (v11 >= 0xA80)
      {
        bzero(v97, (4 * v10));
        v96 = 0;
        goto LABEL_116;
      }

      v23 = v11 >> 5;
      v24 = v23 + v10;
      if (v24 >= 0x54)
      {
        v25 = 84;
      }

      else
      {
        v25 = v24;
      }

      v96 = v25;
      if ((v11 & 0x1F) == 0)
      {
        v51 = (4 * v25 + 4);
        if (v51 - (4 * v23) != 4)
        {
          memmove(v97 + (4 * v23), v97, v51 - (4 * v23) - 4);
          v12 = v97;
        }

        goto LABEL_103;
      }

      if (v11 >= 0xA60)
      {
LABEL_100:
        v97[v23] = v8 << (v11 & 0x1F);
        if (v24 < 0x54 && v97[v25])
        {
          v96 = v25 + 1;
        }

LABEL_103:
        if (v11 < 0x20)
        {
          goto LABEL_116;
        }

        v62 = 4 * (v23 - 1) + 4;
        goto LABEL_115;
      }

      if (v24 >= 0x53)
      {
        v26 = 83;
      }

      else
      {
        v26 = v24;
      }

      v27 = v26 - 1;
      if (v23 < v26 - 1)
      {
        v27 = v11 >> 5;
      }

      v28 = v26 - v27;
      if ((v26 - v27) > 3)
      {
        v29 = v26 - (v28 & 0xFFFFFFFFFFFFFFFCLL);
        v55 = vdupq_n_s32(v11);
        v56 = &v97[v26 - 1];
        v57.i64[0] = 0x1F0000001FLL;
        v57.i64[1] = 0x1F0000001FLL;
        v58 = vandq_s8(v55, v57);
        v59 = vnegq_s32(vbicq_s8(v57, v55));
        v60 = v28 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          *(v56 - 2) = vorrq_s8(vshlq_u32(*&v56[-v23 - 2], v58), vshlq_u32(vshrq_n_u32(*&v56[-v23 - 3], 1uLL), v59));
          v56 -= 4;
          v60 -= 4;
        }

        while (v60);
        if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_99;
        }
      }

      else
      {
        v29 = v26;
      }

      v61 = 4 * v29 - 4 * v23;
      do
      {
        v97[v29--] = (*(v97 + v61) << v11) | (*(&v97[-1] + v61) >> 1 >> ~v11);
        v61 -= 4;
      }

      while (v29 > v23);
LABEL_99:
      LODWORD(v8) = v97[0];
      goto LABEL_100;
    }

    v19 = v6 - v9;
    if (v6 - v9 < 1)
    {
      goto LABEL_116;
    }

    if (v19 >= 0xA80)
    {
      if (v119[0] >= 1)
      {
        bzero(&v119[1], 4 * v119[0]);
      }

      v119[0] = 0;
      goto LABEL_116;
    }

    v30 = v19 >> 5;
    v31 = v119[0] + v30;
    if (v119[0] + v30 >= 84)
    {
      v32 = 84;
    }

    else
    {
      v32 = v119[0] + v30;
    }

    v119[0] = v32;
    if ((v19 & 0x1F) == 0)
    {
      v52 = 4 * v32 + 4;
      if (v52 - (4 * v30) != 4)
      {
        memmove(&v119[1] + (4 * v30), &v119[1], v52 - (4 * v30) - 4);
      }

      goto LABEL_113;
    }

    if (v31 >= 83)
    {
      v33 = 83;
    }

    else
    {
      v33 = v31;
    }

    if (v33 > v30)
    {
      v34 = v33 - 1;
      if (v30 < v33 - 1)
      {
        v34 = v19 >> 5;
      }

      v35 = v33 - v34;
      if ((v33 - v34) <= 3)
      {
        v36 = v33;
LABEL_108:
        v69 = 4 * v36 - 4 * v30;
        do
        {
          v119[v36-- + 1] = (*(&v119[1] + v69) << v19) | (*(v119 + v69) >> 1 >> ~v19);
          v69 -= 4;
        }

        while (v36 > v30);
        goto LABEL_110;
      }

      v36 = v33 - (v35 & 0xFFFFFFFFFFFFFFFCLL);
      v63 = vdupq_n_s32(v19);
      v64 = &v119[v33];
      v65.i64[0] = 0x1F0000001FLL;
      v65.i64[1] = 0x1F0000001FLL;
      v66 = vandq_s8(v63, v65);
      v67 = vnegq_s32(vbicq_s8(v65, v63));
      v68 = v35 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v64 - 2) = vorrq_s8(vshlq_u32(*&v64[-v30 - 2], v66), vshlq_u32(vshrq_n_u32(*&v64[-v30 - 3], 1uLL), v67));
        v64 -= 4;
        v68 -= 4;
      }

      while (v68);
      if (v35 != (v35 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_108;
      }
    }

LABEL_110:
    v119[v30 + 1] = v119[1] << (v19 & 0x1F);
    if (v31 < 84 && v119[v32 + 1])
    {
      v119[0] = v32 + 1;
    }

LABEL_113:
    if (v19 < 0x20)
    {
      goto LABEL_116;
    }

    v12 = &v119[1];
    v62 = 4 * (v30 - 1) + 4;
LABEL_115:
    bzero(v12, v62);
LABEL_116:
    if (v119[0] <= v96)
    {
      v70 = v96;
    }

    else
    {
      v70 = v119[0];
    }

    while (1)
    {
      if (v70 < 1)
      {
        goto LABEL_161;
      }

      if (v119[0] >= v70)
      {
        v72 = v119[v70];
        if (v96 < v70)
        {
LABEL_119:
          v71 = 0;
          goto LABEL_120;
        }
      }

      else
      {
        v72 = 0;
        if (v96 < v70)
        {
          goto LABEL_119;
        }
      }

      v71 = v97[v70 - 1];
      if (v72 < v71)
      {
        goto LABEL_160;
      }

LABEL_120:
      --v70;
      if (v72 > v71)
      {
        goto LABEL_162;
      }
    }
  }

  absl::lts_20240722::strings_internal::BigUnsigned<84>::FiveToTheNth(-FloatMantissa, &v96);
  v13 = HIDWORD(v7);
  v120[0] = (2 * a1) | 1;
  v120[1] = a1 >> 31;
  v14 = v96;
  if (v13)
  {
    if ((v96 & 0x80000000) == 0)
    {
      if (v96 >= 0x53)
      {
        v20 = 83;
      }

      else
      {
        v20 = v96;
      }

      do
      {
        absl::lts_20240722::strings_internal::BigUnsigned<84>::MultiplyStep(&v96, v14, v120, 2, v20--);
      }

      while (v20 != -1);
    }
  }

  else if (v8 != 1 && v96 >= 1)
  {
    v15 = 0;
    v16 = 1;
    v17 = v96;
    do
    {
      v18 = v15 + v8 * v97[v16 - 1];
      v97[v16 - 1] = v18;
      v15 = HIDWORD(v18);
      ++v16;
      --v17;
    }

    while (v17);
    if (v14 <= 83 && v15)
    {
      v97[v14] = v15;
      v96 = v14 + 1;
    }
  }

  if (v6 < a2)
  {
    v21 = v9 - v6;
    if (v9 - v6 < 1)
    {
      goto LABEL_149;
    }

    if (v21 >= 0xA80)
    {
      if (v96 >= 1)
      {
        bzero(v97, 4 * v96);
      }

      v96 = 0;
      goto LABEL_149;
    }

    v37 = v21 >> 5;
    v38 = v96 + v37;
    if (v96 + v37 >= 84)
    {
      v39 = 84;
    }

    else
    {
      v39 = v96 + v37;
    }

    v96 = v39;
    if ((v21 & 0x1F) == 0)
    {
      v53 = 4 * v39 + 4;
      if (v53 - (4 * v37) != 4)
      {
        memmove(v97 + (4 * v37), v97, v53 - (4 * v37) - 4);
      }

      goto LABEL_136;
    }

    if (v38 >= 83)
    {
      v40 = 83;
    }

    else
    {
      v40 = v38;
    }

    if (v40 > v37)
    {
      v41 = v40 - 1;
      if (v37 < v40 - 1)
      {
        v41 = v21 >> 5;
      }

      v42 = v40 - v41;
      if ((v40 - v41) <= 3)
      {
        v43 = v40;
LABEL_131:
        v79 = 4 * v43 - 4 * v37;
        do
        {
          v97[v43--] = (*(v97 + v79) << v21) | (*(&v97[-1] + v79) >> 1 >> ~v21);
          v79 -= 4;
        }

        while (v43 > v37);
        goto LABEL_133;
      }

      v43 = v40 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
      v73 = vdupq_n_s32(v21);
      v74 = &v97[v40 - 1];
      v75.i64[0] = 0x1F0000001FLL;
      v75.i64[1] = 0x1F0000001FLL;
      v76 = vandq_s8(v73, v75);
      v77 = vnegq_s32(vbicq_s8(v75, v73));
      v78 = v42 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v74 - 2) = vorrq_s8(vshlq_u32(*&v74[-v37 - 2], v76), vshlq_u32(vshrq_n_u32(*&v74[-v37 - 3], 1uLL), v77));
        v74 -= 4;
        v78 -= 4;
      }

      while (v78);
      if (v42 != (v42 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_131;
      }
    }

LABEL_133:
    v97[v37] = v97[0] << (v21 & 0x1F);
    if (v38 < 84 && v97[v39])
    {
      v96 = v39 + 1;
    }

LABEL_136:
    if (v21 < 0x20)
    {
      goto LABEL_149;
    }

    v80 = 4 * (v37 - 1);
    v81 = v97;
    goto LABEL_148;
  }

  v22 = v6 - v9;
  if (v6 - v9 < 1)
  {
    goto LABEL_149;
  }

  if (v22 >= 0xA80)
  {
    if (v119[0] >= 1)
    {
      bzero(&v119[1], 4 * v119[0]);
    }

    v119[0] = 0;
    goto LABEL_149;
  }

  v44 = v22 >> 5;
  v45 = v119[0] + v44;
  if (v119[0] + v44 >= 84)
  {
    v46 = 84;
  }

  else
  {
    v46 = v119[0] + v44;
  }

  v119[0] = v46;
  if ((v22 & 0x1F) == 0)
  {
    v54 = 4 * v46 + 4;
    if (v54 - (4 * v44) != 4)
    {
      memmove(&v119[1] + (4 * v44), &v119[1], v54 - (4 * v44) - 4);
    }

    goto LABEL_146;
  }

  if (v45 >= 83)
  {
    v47 = 83;
  }

  else
  {
    v47 = v45;
  }

  if (v47 > v44)
  {
    v48 = v47 - 1;
    if (v44 < v47 - 1)
    {
      v48 = v22 >> 5;
    }

    v49 = v47 - v48;
    if ((v47 - v48) <= 3)
    {
      v50 = v47;
LABEL_141:
      v88 = 4 * v50 - 4 * v44;
      do
      {
        v119[v50-- + 1] = (*(&v119[1] + v88) << v22) | (*(v119 + v88) >> 1 >> ~v22);
        v88 -= 4;
      }

      while (v50 > v44);
      goto LABEL_143;
    }

    v50 = v47 - (v49 & 0xFFFFFFFFFFFFFFFCLL);
    v82 = vdupq_n_s32(v22);
    v83 = &v119[v47];
    v84.i64[0] = 0x1F0000001FLL;
    v84.i64[1] = 0x1F0000001FLL;
    v85 = vandq_s8(v82, v84);
    v86 = vnegq_s32(vbicq_s8(v84, v82));
    v87 = v49 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      *(v83 - 2) = vorrq_s8(vshlq_u32(*&v83[-v44 - 2], v85), vshlq_u32(vshrq_n_u32(*&v83[-v44 - 3], 1uLL), v86));
      v83 -= 4;
      v87 -= 4;
    }

    while (v87);
    if (v49 != (v49 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_141;
    }
  }

LABEL_143:
  v119[v44 + 1] = v119[1] << (v22 & 0x1F);
  if (v45 < 84 && v119[v46 + 1])
  {
    v119[0] = v46 + 1;
  }

LABEL_146:
  if (v22 < 0x20)
  {
    goto LABEL_149;
  }

  v80 = 4 * (v44 - 1);
  v81 = &v119[1];
LABEL_148:
  bzero(v81, v80 + 4);
LABEL_149:
  if (v119[0] <= v96)
  {
    v89 = v96;
  }

  else
  {
    v89 = v119[0];
  }

  do
  {
    if (v89 < 1)
    {
LABEL_161:
      v92 = 0;
      goto LABEL_163;
    }

    if (v119[0] >= v89)
    {
      v91 = v119[v89];
      if (v96 < v89)
      {
LABEL_152:
        v90 = 0;
        goto LABEL_153;
      }
    }

    else
    {
      v91 = 0;
      if (v96 < v89)
      {
        goto LABEL_152;
      }
    }

    v90 = v97[v89 - 1];
    if (v91 < v90)
    {
LABEL_160:
      v92 = -1;
      goto LABEL_163;
    }

LABEL_153:
    --v89;
  }

  while (v91 <= v90);
LABEL_162:
  v92 = 1;
LABEL_163:
  if (v92)
  {
    v93 = 1;
  }

  else
  {
    v93 = a1 & 1;
  }

  if (v92 >= 0)
  {
    result = v93;
  }

  else
  {
    result = 0;
  }

  v95 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::strings_internal::BigUnsigned<84>::ReadDigits(int *a1, char *__s, char *a3, int a4)
{
  v8 = *a1;
  if (v8 >= 1)
  {
    bzero(a1 + 1, 4 * v8);
  }

  *a1 = 0;
  if (__s < a3)
  {
    while (*__s == 48)
    {
      if (++__s == a3)
      {
        __s = a3;
        break;
      }
    }
  }

  if (__s >= a3)
  {
LABEL_20:
    v9 = 0;
    v12 = 0;
    if (__s == a3)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v9 = 0;
    v10 = (a3-- - __s);
    while (1)
    {
      v11 = *a3;
      if (v11 != 48)
      {
        break;
      }

      v9 = (v9 + 1);
      v27 = __s >= a3--;
      if (v27)
      {
        v9 = v10;
        a3 = __s;
        if (!v10)
        {
          goto LABEL_29;
        }

LABEL_23:
        v13 = memchr(__s, 46, a3 - __s);
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = a3;
        }

        if (v14 == a3)
        {
          v9 = v9;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_29;
      }
    }

    if (v11 != 46)
    {
      ++a3;
      if (!v9)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    if (__s >= a3)
    {
      goto LABEL_20;
    }

    v9 = 0;
    while (*(a3 - 1) == 48)
    {
      v9 = (v9 + 1);
      if (__s >= --a3)
      {
        a3 = __s;
        v12 = 0;
        goto LABEL_82;
      }
    }

LABEL_29:
    v12 = 0;
    if (__s == a3)
    {
      goto LABEL_82;
    }
  }

  if (a4 < 1)
  {
    goto LABEL_82;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v12 = 0;
  v18 = (a1 + 1);
  do
  {
    v19 = *__s;
    if (v19 == 46)
    {
      v12 = 1;
      if (++__s == a3)
      {
        break;
      }

      continue;
    }

    v20 = v19 - 48;
    if (!--a4 && __s + 1 != a3 && (v19 == 53 || v19 == 48))
    {
      v20 = v19 - 47;
    }

    v9 = v9 - (v12 & 1);
    v17 = 10 * v17 + v20;
    if (++v16 != 9)
    {
      goto LABEL_59;
    }

    if (v15 >= 1)
    {
      v21 = 0;
      v22 = 1;
      v23 = v15;
      do
      {
        v24 = v21 + 1000000000 * a1[v22];
        a1[v22] = v24;
        v21 = HIDWORD(v24);
        ++v22;
        --v23;
      }

      while (v23);
      if (v15 <= 83 && v21)
      {
        v18[v15++] = v21;
        *a1 = v15;
      }
    }

    if (v17)
    {
      for (i = 0; i < 0x54; ++i)
      {
        v26 = v18[i];
        v27 = __CFADD__(v26, v17);
        v28 = v26 + v17;
        v17 = v27;
        v18[i] = v28;
        if (!v27)
        {
          break;
        }
      }

      v17 = 0;
      v16 = 0;
      if ((i + 1) > v15)
      {
        v15 = i + 1;
      }

      if (v15 >= 0x54)
      {
        v15 = 84;
      }

      *a1 = v15;
LABEL_59:
      if (++__s == a3)
      {
        break;
      }

      continue;
    }

    v16 = 0;
    if (++__s == a3)
    {
      break;
    }
  }

  while (a4 > 0);
  if (v16)
  {
    if (v15 > 0)
    {
      v29 = 0;
      v30 = absl::lts_20240722::strings_internal::kTenToNth[v16];
      v31 = 1;
      v32 = v15;
      do
      {
        v33 = v29 + a1[v31] * v30;
        a1[v31] = v33;
        v29 = HIDWORD(v33);
        ++v31;
        --v32;
      }

      while (v32);
      if (v15 <= 83 && v29)
      {
        v18[v15++] = v29;
        *a1 = v15;
      }
    }

    if (v17)
    {
      for (j = 0; j < 0x54; ++j)
      {
        v35 = v18[j];
        v36 = __CFADD__(v35, v17);
        v37 = v35 + v17;
        v17 = v36;
        v18[j] = v37;
        if (!v36)
        {
          break;
        }
      }

      if ((j + 1) > v15)
      {
        v15 = j + 1;
      }

      if (v15 >= 0x54)
      {
        v15 = 84;
      }

      *a1 = v15;
    }
  }

LABEL_82:
  if (__s < a3 && (v12 & 1) == 0)
  {
    v38 = memchr(__s, 46, a3 - __s);
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = a3;
    }

    return (v9 + v39 - __s);
  }

  return v9;
}

uint64_t absl::lts_20240722::strings_internal::BigUnsigned<84>::ReadFloatMantissa(int *a1, uint64_t *a2, int a3)
{
  v6 = *a1;
  if (v6 >= 1)
  {
    bzero(a1 + 1, 4 * v6);
  }

  *a1 = 0;
  v7 = a2[3];
  if (v7)
  {
    return *(a2 + 3) + absl::lts_20240722::strings_internal::BigUnsigned<84>::ReadDigits(a1, v7, a2[4], a3);
  }

  v9 = *a2;
  v10 = HIDWORD(*a2);
  *(a1 + 1) = *a2;
  if (v10)
  {
    v11 = 2;
    goto LABEL_9;
  }

  if (v9)
  {
    v11 = 1;
LABEL_9:
    *a1 = v11;
  }

  return *(a2 + 2);
}

_DWORD *absl::lts_20240722::strings_internal::BigUnsigned<84>::MultiplyByFiveToTheNth(_DWORD *result, int a2)
{
  if (a2 < 13)
  {
    v3 = a2;
  }

  else
  {
    v2 = *result;
    do
    {
      if (v2 >= 1)
      {
        v5 = 0;
        v6 = 1;
        v7 = v2;
        do
        {
          v8 = v5 + 1220703125 * result[v6];
          result[v6] = v8;
          v5 = HIDWORD(v8);
          ++v6;
          --v7;
        }

        while (v7);
        if (v2 <= 83 && v5)
        {
          result[++v2] = v5;
          *result = v2;
        }
      }

      v3 = a2 - 13;
      v4 = a2 <= 25;
      a2 -= 13;
    }

    while (!v4);
  }

  if (v3 >= 1)
  {
    v9 = *result;
    if (v9 > 0)
    {
      v10 = 0;
      v11 = absl::lts_20240722::strings_internal::kFiveToNth[v3];
      v12 = 1;
      v13 = *result;
      do
      {
        v14 = v10 + result[v12] * v11;
        result[v12] = v14;
        v10 = HIDWORD(v14);
        ++v12;
        --v13;
      }

      while (v13);
      if (v9 <= 83)
      {
        if (v10)
        {
          result[v9 + 1] = v10;
          *result = v9 + 1;
        }
      }
    }
  }

  return result;
}

unint64_t absl::lts_20240722::strings_internal::BigUnsigned<84>::FiveToTheNth@<X0>(unint64_t result@<X0>, int *a2@<X8>)
{
  v2 = result;
  *(a2 + 63) = 0u;
  *(a2 + 59) = 0u;
  v4 = a2 + 1;
  *(a2 + 55) = 0u;
  *(a2 + 51) = 0u;
  *(a2 + 47) = 0u;
  *(a2 + 43) = 0u;
  *(a2 + 39) = 0u;
  *(a2 + 35) = 0u;
  *(a2 + 31) = 0u;
  *(a2 + 27) = 0u;
  *(a2 + 23) = 0u;
  *(a2 + 19) = 0u;
  *(a2 + 15) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 3) = 0u;
  v5 = a2 + 3;
  *(v5 + 40) = 0;
  *(v5 + 18) = 0u;
  *(v5 + 19) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 17) = 0u;
  *a2 = 0x100000001;
  a2[2] = 0;
  if (result >= 27)
  {
    v6 = 1;
    do
    {
      if (v2 / 0x1Bu >= 0x14)
      {
        v7 = 20;
      }

      else
      {
        v7 = v2 / 0x1Bu;
      }

      v8 = 2 * v7;
      if (v6)
      {
        *a2 = v8;
      }

      else
      {
        LODWORD(v9) = *a2 + v8;
        if (v9 >= 2)
        {
          v10 = *a2 - 1;
          if (v9 >= 0x55)
          {
            v9 = 85;
          }

          else
          {
            v9 = v9;
          }

          v11 = v9 - 2;
          v12 = v9 - 2;
          while (1)
          {
            v13 = v11;
            if (v12 >= v10)
            {
              v14 = v10;
            }

            else
            {
              v14 = v12;
            }

            if (v10 < v11)
            {
              LODWORD(v11) = v10;
            }

            if ((v11 & 0x80000000) == 0 && v13 - v11 < v8)
            {
              break;
            }

            *(v4 + v13) = 0;
LABEL_15:
            v11 = v13 - 1;
            --v12;
            if (!v13)
            {
              goto LABEL_4;
            }
          }

          v15 = 0;
          v16 = 0;
          v17 = (v12 - v14) + 1;
          v19 = v14;
          do
          {
            v20 = *v18++;
            result = v20;
            v21 = v16 + v20 * a2[v19 + 1];
            v15 += HIDWORD(v21);
            v16 = v21;
            if (!(v19 * 4))
            {
              break;
            }

            result = v17 + 1;
            --v19;
          }

          while (v17++ < v8);
          v23 = v13 + 1;
          if (v13 <= 82 && v15)
          {
            v24 = HIDWORD(v15);
            v25 = *(v4 + v23);
            *(v4 + v23) = v25 + v15;
            if (__CFADD__(v25, v15))
            {
              LODWORD(v24) = HIDWORD(v15) + 1;
              if (HIDWORD(v15) != -1)
              {
                goto LABEL_41;
              }

              v26 = v13 + 3;
              if (v13 <= 80)
              {
                v27 = 1;
                do
                {
                  v28 = *(v4 + v26);
                  v29 = __CFADD__(v28, v27);
                  v30 = v28 + v27;
                  v27 = v29;
                  *(v4 + v26) = v30;
                  if (!v29)
                  {
                    break;
                  }

                  ++v26;
                }

                while (v26 < 84);
              }

LABEL_48:
              v31 = v26 + 1;
            }

            else
            {
              if (!v24)
              {
                v31 = v13 + 2;
                goto LABEL_50;
              }

LABEL_41:
              if (v13 <= 81)
              {
                v26 = v13 + 2;
                do
                {
                  v32 = *(v4 + v26);
                  v33 = __CFADD__(v32, v24);
                  v34 = v32 + v24;
                  LODWORD(v24) = v33;
                  *(v4 + v26) = v34;
                  if (!v33)
                  {
                    break;
                  }

                  ++v26;
                }

                while (v26 < 84);
                goto LABEL_48;
              }

              v31 = 85;
            }

LABEL_50:
            if (v31 <= *a2)
            {
              v31 = *a2;
            }

            if (v31 >= 84)
            {
              v31 = 84;
            }

            *a2 = v31;
          }

          *(v4 + v13) = v21;
          if (v21 && v13 >= *a2)
          {
            *a2 = v23;
          }

          goto LABEL_15;
        }
      }

LABEL_4:
      v6 = 0;
      v2 -= 27 * v7;
    }

    while (v2 > 26);
  }

  if (v2 >= 13)
  {
    v35 = *a2;
    do
    {
      v36 = v2;
      if (v35 >= 1)
      {
        v37 = 0;
        v38 = v4;
        v39 = v35;
        do
        {
          v40 = v37 + 1220703125 * *v38;
          *v38++ = v40;
          v37 = HIDWORD(v40);
          --v39;
        }

        while (v39);
        if (v35 <= 83 && v37)
        {
          *(v4 + v35++) = v37;
        }
      }

      v2 -= 13;
    }

    while (v36 > 25);
    *a2 = v35;
  }

  if (v2 >= 1)
  {
    v41 = *a2;
    if (v41 > 0)
    {
      v42 = 0;
      v43 = absl::lts_20240722::strings_internal::kFiveToNth[v2];
      v44 = 1;
      v45 = *a2;
      do
      {
        v46 = v42 + a2[v44] * v43;
        a2[v44] = v46;
        v42 = HIDWORD(v46);
        ++v44;
        --v45;
      }

      while (v45);
      if (v41 <= 83)
      {
        if (v42)
        {
          *(v4 + v41) = v42;
          *a2 = v41 + 1;
        }
      }
    }
  }

  return result;
}

int *absl::lts_20240722::strings_internal::BigUnsigned<84>::MultiplyStep(int *result, int a2, uint64_t a3, signed int a4, int a5)
{
  if (a2 - 1 >= a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = a2 - 1;
  }

  v6 = result + 1;
  if ((v5 & 0x80000000) != 0 || (v7 = a5 - v5, (a5 - v5) >= a4))
  {
    v6[a5] = 0;
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = v7 + 1;
  v11 = v5;
  v12 = (a3 + 4 * v7);
  do
  {
    v13 = *v12++;
    v14 = v9 + v13 * result[v11 + 1];
    v8 += HIDWORD(v14);
    v9 = v14;
    if (!(v11 * 4))
    {
      break;
    }

    --v11;
  }

  while (v10++ < a4);
  v16 = a5 + 1;
  if (a5 <= 82 && v8)
  {
    v17 = HIDWORD(v8);
    v18 = v6[v16];
    v6[v16] = v18 + v8;
    if (__CFADD__(v18, v8))
    {
      LODWORD(v17) = HIDWORD(v8) + 1;
      if (HIDWORD(v8) == -1)
      {
        v19 = a5 + 3;
        if (a5 <= 80)
        {
          v20 = 1;
          do
          {
            v21 = v6[v19];
            v22 = __CFADD__(v21, v20);
            v23 = v21 + v20;
            v20 = v22;
            v6[v19] = v23;
            if (!v22)
            {
              break;
            }

            ++v19;
          }

          while (v19 < 84);
        }

LABEL_32:
        v24 = v19 + 1;
        goto LABEL_34;
      }
    }

    else if (!v17)
    {
      v24 = a5 + 2;
LABEL_34:
      if (v24 <= *result)
      {
        v24 = *result;
      }

      if (v24 >= 84)
      {
        v24 = 84;
      }

      *result = v24;
      goto LABEL_39;
    }

    if (a5 > 81)
    {
      v24 = 85;
      goto LABEL_34;
    }

    v19 = a5 + 2;
    do
    {
      v25 = v6[v19];
      v26 = __CFADD__(v25, v17);
      v27 = v25 + v17;
      LODWORD(v17) = v26;
      v6[v19] = v27;
      if (!v26)
      {
        break;
      }

      ++v19;
    }

    while (v19 < 84);
    goto LABEL_32;
  }

LABEL_39:
  v6[a5] = v14;
  if (v14)
  {
    if (*result <= a5)
    {
      *result = v16;
    }
  }

  return result;
}

uint64_t absl::lts_20240722::strings_internal::ParseFloat<10>@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  if (result == a2)
  {
    return result;
  }

  v6 = result;
  if (result)
  {
    return result;
  }

  v8 = v6;
  if (v6 < a2)
  {
    v8 = v6;
    while (*v8 == 48)
    {
      if (++v8 == a2)
      {
        v8 = a2;
        break;
      }
    }
  }

  v9 = v8;
  if (v8 != a2)
  {
    v9 = v8;
    while (*v9 == 48)
    {
      if (++v9 == a2)
      {
        v9 = a2;
        break;
      }
    }
  }

  v10 = v9 + 19;
  if (a2 - v9 <= 19)
  {
    v10 = a2;
  }

  if (v9 < v10)
  {
    v11 = 0;
    v12 = v10 - v9;
    while (1)
    {
      v13 = *v9;
      if ((v13 - 48) > 9)
      {
        break;
      }

      v11 = (v13 & 0xF) + 10 * v11;
      ++v9;
      if (!--v12)
      {
        v9 = v10;
        break;
      }
    }

    if (v9 < a2)
    {
      goto LABEL_21;
    }

LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  v11 = 0;
  if (v9 >= a2)
  {
    goto LABEL_26;
  }

LABEL_21:
  v14 = 0;
  v15 = a2 - v9;
  while (1)
  {
    v16 = *v9;
    if ((v16 - 48) > 9)
    {
      break;
    }

    v14 |= v16 != 48;
    ++v9;
    if (!--v15)
    {
      LODWORD(v9) = a2;
      break;
    }
  }

LABEL_27:
  v17 = v9 - v8;
  if (v17 > 49999999)
  {
    return result;
  }

  v18 = &v8[v17];
  v20 = v17 - 19;
  v19 = v17 <= 19;
  if (v17 <= 19)
  {
    v21 = (19 - v17);
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  if (v18 >= a2 || *v18 != 46)
  {
LABEL_55:
    if (v18 == v6 || v18 - v6 == 1 && *v6 == 46)
    {
      return result;
    }

    if (v14)
    {
      *(a4 + 24) = v6;
      *(a4 + 32) = v18;
    }

    *a4 = v11;
    *(a4 + 12) = 0;
    v32 = a3 & 3;
    if (v32 != 2 && v18 < a2 && (*v18 & 0xDF) == 0x45)
    {
      v33 = v18 + 1;
      if (v18 + 1 >= a2)
      {
        v36 = 1;
      }

      else
      {
        v34 = *v33;
        if (v34 == 43)
        {
          v35 = v18 + 2;
        }

        else
        {
          v35 = v18 + 1;
        }

        v36 = v34 != 45;
        if (v34 == 45)
        {
          v33 = v18 + 2;
        }

        else
        {
          v33 = v35;
        }
      }

      v37 = &v33[result];
      if (!v36 && result)
      {
        *(a4 + 12) = -*(a4 + 12);
LABEL_86:
        *(a4 + 16) = 0;
        if (*a4)
        {
          v38 = *(a4 + 12) + v22;
        }

        else
        {
          v38 = 0;
        }

        *(a4 + 8) = v38;
        *(a4 + 40) = v37;
        return result;
      }

      if (result)
      {
        goto LABEL_86;
      }
    }

    v37 = v18;
    if (v32 == 1)
    {
      return result;
    }

    goto LABEL_86;
  }

  v23 = v18 + 1;
  v24 = v18 + 1;
  if (!v11)
  {
    if (v23 < a2)
    {
      v24 = v18 + 1;
      while (*v24 == 48)
      {
        if (++v24 >= a2)
        {
          v24 = a2;
          break;
        }
      }
    }

    if (v24 - v23 >= 50000000)
    {
      return result;
    }

    v22 -= v24 - v23;
    v23 = v24;
    if (v24 != a2)
    {
      while (*v23 == 48)
      {
        if (++v23 == a2)
        {
          v23 = a2;
          break;
        }
      }
    }
  }

  if (a2 - v23 <= v21)
  {
    v25 = a2;
  }

  else
  {
    v25 = &v23[v21];
  }

  if (v23 < v25)
  {
    v26 = v25 - v23;
    while (1)
    {
      v27 = *v23;
      result = (v27 - 48);
      if (result > 9)
      {
        break;
      }

      v11 = (v27 & 0xF) + 10 * v11;
      ++v23;
      if (!--v26)
      {
        v23 = v25;
        break;
      }
    }
  }

  if (v23 < a2)
  {
    v28 = 0;
    v29 = a2 - v23;
    while (1)
    {
      v30 = *v23;
      result = (v30 - 48);
      if (result > 9)
      {
        break;
      }

      v28 |= v30 != 48;
      ++v23;
      if (!--v29)
      {
        LODWORD(v23) = a2;
        break;
      }
    }

    v14 |= v28;
  }

  v31 = v23 - v24;
  if (v21 >= v23 - v24)
  {
    LODWORD(v21) = v23 - v24;
  }

  if (v31 < 50000000)
  {
    v18 = &v24[v31];
    v22 -= v21;
    goto LABEL_55;
  }

  return result;
}

uint64_t absl::lts_20240722::anonymous namespace::ParseInfinityOrNan(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 - a1;
  if ((a2 - a1) < 3)
  {
    return 0;
  }

  result = 0;
  v7 = *a1;
  if (v7 > 0x68)
  {
    if (v7 == 110)
    {
LABEL_12:
      v10 = a1;
      if (absl::lts_20240722::strings_internal::memcasecmp((a1 + 1), "an", 2))
      {
        return 0;
      }

      *(a3 + 16) = 2;
      *(a3 + 40) = v10 + 3;
      if ((v10 + 3) < a2 && v10[3] == 40 && (v10 + 4) < a2)
      {
        v13 = v10 + 4;
        result = 1;
        while (1)
        {
          v14 = *v13;
          if ((v14 & 0xFFFFFFDF) - 65 >= 0x1A && v14 != 95 && (v14 - 48) > 9)
          {
            break;
          }

          if (++v13 == a2)
          {
            return result;
          }
        }

        if (v14 == 41)
        {
          *(a3 + 24) = v10 + 4;
          *(a3 + 32) = v13;
          *(a3 + 40) = v13 + 1;
          return 1;
        }
      }

      return 1;
    }

    if (v7 != 105)
    {
      return result;
    }

LABEL_10:
    v8 = a1;
    if (absl::lts_20240722::strings_internal::memcasecmp((a1 + 1), "nf", 2))
    {
      return 0;
    }

    v11 = a3;
    *(a3 + 16) = 1;
    if (v3 >= 8)
    {
      v12 = absl::lts_20240722::strings_internal::memcasecmp((v8 + 3), "inity", 5);
      v11 = a3;
      if (!v12)
      {
        *(a3 + 40) = v8 + 8;
        return 1;
      }
    }

    *(v11 + 40) = v8 + 3;
    return 1;
  }

  if (v7 == 73)
  {
    goto LABEL_10;
  }

  if (v7 == 78)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t absl::lts_20240722::anonymous namespace::ConsumeDigits<10,int>(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1 == a2;
  }

  v5 = a1;
  if (!v4)
  {
    v5 = a1;
    while (*v5 == 48)
    {
      if (++v5 == a2)
      {
        v5 = a2;
        break;
      }
    }
  }

  if (a2 - v5 <= 9)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5 + 9;
  }

  if (v5 < v6)
  {
    v7 = v6 - v5;
    while (1)
    {
      v8 = *v5;
      if ((v8 - 48) > 9)
      {
        break;
      }

      v3 = v8 + 10 * v3 - 48;
      ++v5;
      if (!--v7)
      {
        v5 = v6;
        break;
      }
    }
  }

  if (v5 < a2)
  {
    v9 = a2 - v5;
    while (*v5 - 48 <= 9)
    {
      ++v5;
      if (!--v9)
      {
        LODWORD(v5) = a2;
        break;
      }
    }
  }

  *a3 = v3;
  return (v5 - a1);
}

uint64_t absl::lts_20240722::strings_internal::ParseFloat<16>@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  if (result == a2)
  {
    return result;
  }

  v6 = result;
  if (result)
  {
    return result;
  }

  v8 = v6;
  if (v6 < a2)
  {
    v8 = v6;
    while (*v8 == 48)
    {
      if (++v8 == a2)
      {
        v8 = a2;
        break;
      }
    }
  }

  v9 = v8;
  if (v8 != a2)
  {
    v9 = v8;
    while (*v9 == 48)
    {
      if (++v9 == a2)
      {
        v9 = a2;
        break;
      }
    }
  }

  v10 = v9 + 15;
  if (a2 - v9 <= 15)
  {
    v10 = a2;
  }

  if (v9 < v10)
  {
    v11 = 0;
    v12 = v10 - v9;
    while (1)
    {
      if (v13 < 0)
      {
        break;
      }

      v11 = v13 + 16 * v11;
      ++v9;
      if (!--v12)
      {
        v9 = v10;
        break;
      }
    }

    if (v9 < a2)
    {
      goto LABEL_21;
    }

LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  v11 = 0;
  if (v9 >= a2)
  {
    goto LABEL_26;
  }

LABEL_21:
  v14 = 0;
  v15 = a2 - v9;
  while (1)
  {
    v16 = *v9;
    {
      break;
    }

    v14 |= v16 != 48;
    ++v9;
    if (!--v15)
    {
      LODWORD(v9) = a2;
      break;
    }
  }

LABEL_27:
  v17 = v9 - v8;
  if (v17 > 12499999)
  {
    return result;
  }

  v18 = &v8[v17];
  v20 = v17 - 15;
  v19 = v17 <= 15;
  if (v17 <= 15)
  {
    v21 = (15 - v17);
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  if (v18 >= a2 || *v18 != 46)
  {
LABEL_54:
    if (v18 == v6 || v18 - v6 == 1 && *v6 == 46)
    {
      return result;
    }

    *a4 = v11 | v14 & 1;
    *(a4 + 12) = 0;
    v31 = a3 & 3;
    if (v31 == 2 || v18 >= a2 || (*v18 & 0xDF) != 0x50)
    {
      goto LABEL_80;
    }

    v32 = v18 + 1;
    if (v18 + 1 < a2)
    {
      v33 = *v32;
      if (v33 == 45)
      {
        v34 = 0;
        v32 = v18 + 2;
        goto LABEL_76;
      }

      if (v33 == 43)
      {
        v32 = v18 + 2;
      }
    }

    v34 = 1;
LABEL_76:
    v35 = &v32[result];
    if ((v34 & 1) == 0 && result)
    {
      *(a4 + 12) = -*(a4 + 12);
LABEL_81:
      *(a4 + 16) = 0;
      if (*a4)
      {
        v36 = *(a4 + 12) + 4 * v22;
      }

      else
      {
        v36 = 0;
      }

      *(a4 + 8) = v36;
      *(a4 + 40) = v35;
      return result;
    }

    if (result)
    {
      goto LABEL_81;
    }

LABEL_80:
    v35 = v18;
    if (v31 == 1)
    {
      return result;
    }

    goto LABEL_81;
  }

  v23 = v18 + 1;
  v24 = v18 + 1;
  if (!v11)
  {
    if (v23 < a2)
    {
      v24 = v18 + 1;
      while (*v24 == 48)
      {
        if (++v24 >= a2)
        {
          v24 = a2;
          break;
        }
      }
    }

    if (v24 - v23 >= 12500000)
    {
      return result;
    }

    v22 -= v24 - v23;
    v23 = v24;
    if (v24 != a2)
    {
      while (*v23 == 48)
      {
        if (++v23 == a2)
        {
          v23 = a2;
          break;
        }
      }
    }
  }

  v25 = &v23[v21];
  if (a2 - v23 <= v21)
  {
    v25 = a2;
  }

  if (v23 < v25)
  {
    v26 = v25 - v23;
    while (1)
    {
      if (v27 < 0)
      {
        break;
      }

      v11 = v27 + 16 * v11;
      ++v23;
      if (!--v26)
      {
        v23 = v25;
        break;
      }
    }
  }

  if (v23 < a2)
  {
    v28 = 0;
    v29 = a2 - v23;
    while (1)
    {
      result = *v23;
      {
        break;
      }

      result = result != 48;
      v28 |= result;
      ++v23;
      if (!--v29)
      {
        LODWORD(v23) = a2;
        break;
      }
    }

    v14 |= v28;
  }

  v30 = v23 - v24;
  if (v21 >= v23 - v24)
  {
    LODWORD(v21) = v23 - v24;
  }

  if (v30 < 12500000)
  {
    v18 = &v24[v30];
    v22 -= v21;
    goto LABEL_54;
  }

  return result;
}

uint64_t absl::lts_20240722::CUnescape(std::string *a1, std::string::size_type a2, std::string *this, uint64_t a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v8 = a2 - size;
    if (a2 <= size)
    {
      v25 = this->__r_.__value_.__r.__words[0];
      this->__r_.__value_.__l.__size_ = a2;
      *(v25 + a2) = 0;
      v9 = this;
      if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v14 = this->__r_.__value_.__r.__words[2];
    v10 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v7 = HIBYTE(v14);
    if (v10 - size < v8)
    {
LABEL_5:
      v12 = a1;
      v13 = a2;
      std::string::__grow_by(this, v10, v8 - v10 + size, size, size, 0, 0);
      a1 = v12;
      a2 = v13;
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    }
  }

  else
  {
    v8 = a2 - v7;
    if (a2 <= v7)
    {
      *(&this->__r_.__value_.__s + 23) = a2;
      this->__r_.__value_.__s.__data_[a2] = 0;
      v9 = this;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v9 = this;
    if (a2 == v7)
    {
      goto LABEL_14;
    }

    v10 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (22 - v7 < v8)
    {
      goto LABEL_5;
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v67 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = size + v8;
    *(v67 + size + v8) = 0;
    v9 = this;
    if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(&this->__r_.__value_.__s + 23) = (size + v8) & 0x7F;
  this->__r_.__value_.__s.__data_[size + v8] = 0;
  v9 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_13:
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_14:
  v15 = a1 + a2;
  v16 = v9;
  if (v9 != a1 || a2 < 1)
  {
LABEL_20:
    if (v6 < v15)
    {
      goto LABEL_23;
    }

LABEL_116:
    std::string::erase(this, v16 - v9, 0xFFFFFFFFFFFFFFFFLL);
    result = 1;
    goto LABEL_117;
  }

  v17 = v9;
  v18 = v6;
  while (*v18 != 92)
  {
    v6 = v18 + 1;
    v16 = (&v17->__r_.__value_.__l.__data_ + 1);
    if (v18 == v17)
    {
      v17 = (v17 + 1);
      ++v18;
      if (v6 < v15)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v6 = v18;
  v16 = v17;
  if (v18 >= v15)
  {
    goto LABEL_116;
  }

LABEL_23:
  v19 = v15 - 1;
  v20 = a1 + a2;
  v21 = a1 + a2 - 1;
  v22 = v20 - 2;
  v23 = 1;
  v24 = 7;
  while (2)
  {
    v26 = *v6;
    if (v26 != 92)
    {
      goto LABEL_27;
    }

    v27 = v6 + 1;
    if ((v6 + 1) > v19)
    {
      if (!a4)
      {
        goto LABEL_184;
      }

      v66 = "String cannot end with \";
LABEL_120:
      MEMORY[0x23EED9020](a4, v66, 39, 2, 63, 8, 9, 92);
      result = 0;
      goto LABEL_117;
    }

    switch(*v27)
    {
      case '""':
        v16->__r_.__value_.__s.__data_[0] = 34;
        v16 = (v16 + 1);
        goto LABEL_115;
      case '\'':
        v16->__r_.__value_.__s.__data_[0] = 39;
        v16 = (v16 + 1);
        goto LABEL_115;
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
        v26 = *v27 - 48;
        if (v27 >= v19)
        {
          v31 = 1;
          if (++v6 >= v19)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v28 = v6[2];
          v29 = v28 & 0xF8;
          v30 = v28 + 8 * v26 - 48;
          if (v29 == 48)
          {
            v26 = v30;
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          v6 += v31;
          if (v6 >= v19)
          {
            goto LABEL_27;
          }
        }

        v32 = v6[1];
        if ((v32 & 0xF8) == 0x30)
        {
          v33 = v32 + 8 * v26 - 48;
          if (v33 <= 0xFF)
          {
            v16->__r_.__value_.__s.__data_[0] = v33;
            v16 = (v16 + 1);
            ++v6;
            goto LABEL_28;
          }

          if (!a4)
          {
            goto LABEL_184;
          }

          v68 = v31 + 1;
          *(&__p[0].__r_.__value_.__s + 23) = v31 + 1;
          memmove(__p, v27, v31 + 1);
          *(__p | v68) = 0;
          v69 = std::string::insert(__p, 0, "Value of \");
          v70 = *&v69->__r_.__value_.__l.__data_;
          __dst.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
          *&__dst.__r_.__value_.__l.__data_ = v70;
          v69->__r_.__value_.__l.__size_ = 0;
          v69->__r_.__value_.__r.__words[2] = 0;
          v69->__r_.__value_.__r.__words[0] = 0;
          v71 = std::string::append(&__dst, " exceeds 0xff");
LABEL_177:
          v96 = v71->__r_.__value_.__r.__words[0];
          v103.__r_.__value_.__r.__words[0] = v71->__r_.__value_.__l.__size_;
          *(v103.__r_.__value_.__r.__words + 7) = *(&v71->__r_.__value_.__r.__words[1] + 7);
          v97 = HIBYTE(v71->__r_.__value_.__r.__words[2]);
          v71->__r_.__value_.__l.__size_ = 0;
          v71->__r_.__value_.__r.__words[2] = 0;
          v71->__r_.__value_.__r.__words[0] = 0;
          if (*(a4 + 23) < 0)
          {
            operator delete(*a4);
          }

          v98 = v103.__r_.__value_.__r.__words[0];
          *a4 = v96;
          *(a4 + 8) = v98;
          *(a4 + 15) = *(v103.__r_.__value_.__r.__words + 7);
          *(a4 + 23) = v97;
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_181:
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              v86 = __p[0].__r_.__value_.__r.__words[0];
LABEL_183:
              operator delete(v86);
            }

            goto LABEL_184;
          }

LABEL_180:
          operator delete(__dst.__r_.__value_.__l.__data_);
          goto LABEL_181;
        }

        goto LABEL_27;
      case '?':
        v16->__r_.__value_.__s.__data_[0] = 63;
        v16 = (v16 + 1);
        goto LABEL_115;
      case 'U':
        v38 = a4;
        v39 = v6 + 9;
        if ((v6 + 9) >= v15)
        {
          if (v38)
          {
            *(&__dst.__r_.__value_.__s + 23) = 1;
            LOWORD(__dst.__r_.__value_.__l.__data_) = *v27;
            v76 = std::string::insert(&__dst, 0, "\\U must be followed by 8 hex digits: \");
            goto LABEL_162;
          }

          goto LABEL_184;
        }

        v48 = v6[2];
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[v48] & 0x80000000) == 0)
        {
          goto LABEL_160;
        }

        v49 = v6[3];
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[v49] & 0x80000000) == 0)
        {
          v23 = 2;
          goto LABEL_160;
        }

        if (v49 > 0x39)
        {
          LOBYTE(v49) = v49 + 9;
        }

        v50 = 16 * v48 - 112;
        if (v48 <= 0x39)
        {
          v50 = 16 * v48;
        }

        v51 = v6[4];
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[v51] & 0x80000000) == 0)
        {
          v23 = 3;
          goto LABEL_160;
        }

        v52 = v6[5];
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[v52] & 0x80000000) == 0)
        {
          v23 = 4;
          goto LABEL_160;
        }

        if (v52 > 0x39)
        {
          LOBYTE(v52) = v52 + 9;
        }

        if (v51 <= 0x39)
        {
          v53 = 16 * v51;
        }

        else
        {
          v53 = 16 * v51 - 112;
        }

        v54 = v6[6];
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[v54] & 0x80000000) == 0)
        {
          v23 = 5;
          goto LABEL_160;
        }

        v55 = v6[7];
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[v55] & 0x80000000) == 0)
        {
          v23 = 6;
          goto LABEL_160;
        }

        v56 = v50 & 0xF0 | v49 & 0xF;
        if (v56 > 0x10)
        {
          goto LABEL_167;
        }

        if (v55 <= 0x39)
        {
          v57 = v6[7];
        }

        else
        {
          v57 = v55 + 9;
        }

        if (v54 <= 0x39)
        {
          v58 = 16 * v54;
        }

        else
        {
          v58 = 16 * v54 - 112;
        }

        v59 = v6[8];
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[v59] & 0x80000000) == 0)
        {
          v23 = 7;
          goto LABEL_160;
        }

        v60 = (v56 << 16) | ((v53 & 0xF0 | v52 & 0xF) << 8);
        if (v60 >> 12 > 0x10)
        {
          v24 = 8;
          goto LABEL_167;
        }

        v43 = *v39;
        if (absl::lts_20240722::ascii_internal::kPropertyBits[v43] < 0)
        {
          if (v60 >> 8 > 0x10)
          {
            v24 = 9;
LABEL_167:
            if (!v38)
            {
              goto LABEL_184;
            }

            *(&__p[0].__r_.__value_.__s + 23) = v24;
            v87 = v24;
            memmove(__p, v6 + 1, v24);
            __p[0].__r_.__value_.__s.__data_[v87] = 0;
            v88 = std::string::insert(__p, 0, "Value of \");
            v89 = *&v88->__r_.__value_.__l.__data_;
            __dst.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
            *&__dst.__r_.__value_.__l.__data_ = v89;
            v88->__r_.__value_.__l.__size_ = 0;
            v88->__r_.__value_.__r.__words[2] = 0;
            v88->__r_.__value_.__r.__words[0] = 0;
            v90 = std::string::append(&__dst, " exceeds Unicode limit (0x10FFFF)");
            v91 = v90->__r_.__value_.__r.__words[0];
            v103.__r_.__value_.__r.__words[0] = v90->__r_.__value_.__l.__size_;
            *(v103.__r_.__value_.__r.__words + 7) = *(&v90->__r_.__value_.__r.__words[1] + 7);
            v92 = HIBYTE(v90->__r_.__value_.__r.__words[2]);
            v90->__r_.__value_.__l.__size_ = 0;
            v90->__r_.__value_.__r.__words[2] = 0;
            v90->__r_.__value_.__r.__words[0] = 0;
            if (*(v38 + 23) < 0)
            {
              operator delete(*v38);
            }

            v93 = v103.__r_.__value_.__r.__words[0];
            *v38 = v91;
            *(v38 + 8) = v93;
            *(v38 + 15) = *(v103.__r_.__value_.__r.__words + 7);
            *(v38 + 23) = v92;
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_181;
            }

            goto LABEL_180;
          }

          v45 = v58 & 0xF0 | v57 & 0xF | v60;
          if (v43 > 0x39)
          {
            LOBYTE(v43) = v43 + 9;
          }

          if (v59 <= 0x39)
          {
            v46 = 16 * v59;
          }

          else
          {
            v46 = 16 * v59 - 112;
          }

          v47 = v45 & 0x1FF8;
          if (v38 && v47 == 216)
          {
            __dst.__r_.__value_.__r.__words[0] = "invalid surrogate character (0xD800-DFFF): \";
            __dst.__r_.__value_.__l.__size_ = 44;
            __p[0].__r_.__value_.__r.__words[0] = (v6 + 1);
            __p[0].__r_.__value_.__l.__size_ = 9;
            absl::lts_20240722::StrCat(&__dst.__r_.__value_.__l.__data_, __p, &v103);
            goto LABEL_173;
          }

LABEL_108:
          if (v47 == 216)
          {
            goto LABEL_184;
          }

          v61 = v22;
          v62 = v21;
          v63 = absl::lts_20240722::strings_internal::EncodeUTF8Char(v16, v46 & 0xF0 | (v45 << 8) | (v43 & 0xF));
          v22 = v61;
          v24 = 7;
          v23 = 1;
          v16 = (v16 + v63);
          v21 = v62;
          v6 = v39;
          a4 = v38;
LABEL_28:
          if (++v6 >= v15)
          {
            goto LABEL_116;
          }

          continue;
        }

        v23 = 8;
LABEL_160:
        if (v38)
        {
          *(&__dst.__r_.__value_.__s + 23) = v23;
          v82 = v23;
          memmove(&__dst, v6 + 1, v23);
          __dst.__r_.__value_.__s.__data_[v82] = 0;
          v76 = std::string::insert(&__dst, 0, "\\U must be followed by 8 hex digits: \");
LABEL_162:
          v83 = v76->__r_.__value_.__r.__words[0];
          __p[0].__r_.__value_.__r.__words[0] = v76->__r_.__value_.__l.__size_;
          *(__p[0].__r_.__value_.__r.__words + 7) = *(&v76->__r_.__value_.__r.__words[1] + 7);
          v84 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
          v76->__r_.__value_.__l.__size_ = 0;
          v76->__r_.__value_.__r.__words[2] = 0;
          v76->__r_.__value_.__r.__words[0] = 0;
          if (*(v38 + 23) < 0)
          {
            operator delete(*v38);
          }

          v85 = __p[0].__r_.__value_.__r.__words[0];
          *v38 = v83;
          *(v38 + 8) = v85;
          *(v38 + 15) = *(__p[0].__r_.__value_.__r.__words + 7);
          *(v38 + 23) = v84;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_165:
            v86 = __dst.__r_.__value_.__r.__words[0];
            goto LABEL_183;
          }
        }

LABEL_184:
        result = 0;
LABEL_117:
        v65 = *MEMORY[0x277D85DE8];
        return result;
      case 'X':
      case 'x':
        if (v27 >= v19)
        {
          if (!a4)
          {
            goto LABEL_184;
          }

          v66 = "String cannot end with \\x";
        }

        else
        {
          if (absl::lts_20240722::ascii_internal::kPropertyBits[v6[2]] < 0)
          {
            v26 = 0;
            v34 = v22 - v6++;
            v35 = v27;
            while (1)
            {
              v37 = *++v35;
              v36 = v37;
              if ((absl::lts_20240722::ascii_internal::kPropertyBits[v37] & 0x80000000) == 0)
              {
                break;
              }

              if (v36 > 0x39)
              {
                LOBYTE(v36) = v36 + 9;
              }

              v26 = v36 & 0xF | (16 * v26);
              v6 = v35;
              if (!--v34)
              {
                v6 = v21;
                break;
              }
            }

            if (v26 < 0x100)
            {
LABEL_27:
              v16->__r_.__value_.__s.__data_[0] = v26;
              v16 = (v16 + 1);
              goto LABEL_28;
            }

            if (!a4)
            {
              goto LABEL_184;
            }

            v72 = v6 - v27 + 1;
            if (v72 <= 0x7FFFFFFFFFFFFFF7)
            {
              if (v72 >= 0x17)
              {
                operator new();
              }

              *(&__p[0].__r_.__value_.__s + 23) = v6 - v27 + 1;
              memmove(__p, v27, v6 - v27 + 1);
              __p[0].__r_.__value_.__s.__data_[v72] = 0;
              v94 = std::string::insert(__p, 0, "Value of \");
              v95 = *&v94->__r_.__value_.__l.__data_;
              __dst.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
              *&__dst.__r_.__value_.__l.__data_ = v95;
              v94->__r_.__value_.__l.__size_ = 0;
              v94->__r_.__value_.__r.__words[2] = 0;
              v94->__r_.__value_.__r.__words[0] = 0;
              v71 = std::string::append(&__dst, " exceeds 0xff");
              goto LABEL_177;
            }

LABEL_187:
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (!a4)
          {
            goto LABEL_184;
          }

          v66 = "\\x cannot be followed by a non-hex digit";
        }

        goto LABEL_120;
      case '\\':
        v16->__r_.__value_.__s.__data_[0] = 92;
        v16 = (v16 + 1);
        goto LABEL_115;
      case 'a':
        v16->__r_.__value_.__s.__data_[0] = 7;
        v16 = (v16 + 1);
        goto LABEL_115;
      case 'b':
        v16->__r_.__value_.__s.__data_[0] = 8;
        v16 = (v16 + 1);
        goto LABEL_115;
      case 'f':
        v16->__r_.__value_.__s.__data_[0] = 12;
        v16 = (v16 + 1);
        goto LABEL_115;
      case 'n':
        v16->__r_.__value_.__s.__data_[0] = 10;
        v16 = (v16 + 1);
        goto LABEL_115;
      case 'r':
        v16->__r_.__value_.__s.__data_[0] = 13;
        v16 = (v16 + 1);
        goto LABEL_115;
      case 't':
        v16->__r_.__value_.__s.__data_[0] = 9;
        v16 = (v16 + 1);
        goto LABEL_115;
      case 'u':
        v38 = a4;
        v39 = v6 + 5;
        if ((v6 + 5) >= v15)
        {
          if (v38)
          {
            *(&__dst.__r_.__value_.__s + 23) = 1;
            LOWORD(__dst.__r_.__value_.__l.__data_) = *v27;
            v76 = std::string::insert(&__dst, 0, "\\u must be followed by 4 hex digits: \");
            goto LABEL_162;
          }

          goto LABEL_184;
        }

        v40 = v6[2];
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[v40] & 0x80000000) == 0)
        {
          v39 = v6 + 2;
          goto LABEL_145;
        }

        v41 = v6[3];
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[v41] & 0x80000000) == 0)
        {
          v39 = v6 + 3;
          goto LABEL_145;
        }

        v42 = v6[4];
        if (absl::lts_20240722::ascii_internal::kPropertyBits[v42] < 0)
        {
          v43 = *v39;
          if ((absl::lts_20240722::ascii_internal::kPropertyBits[v43] & 0x80000000) == 0)
          {
            goto LABEL_145;
          }

          if (v41 > 0x39)
          {
            LOBYTE(v41) = v41 + 9;
          }

          if (v40 <= 0x39)
          {
            v44 = 16 * v40;
          }

          else
          {
            v44 = 16 * v40 - 112;
          }

          v45 = v44 & 0xF0 | v41 & 0xF;
          if (v42 <= 0x39)
          {
            v46 = 16 * v42;
          }

          else
          {
            v46 = 16 * v42 - 112;
          }

          if (v43 > 0x39)
          {
            LOBYTE(v43) = v43 + 9;
          }

          v47 = v45 & 0xF8;
          if (v38 && v47 == 216)
          {
            __dst.__r_.__value_.__r.__words[0] = "invalid surrogate character (0xD800-DFFF): \";
            __dst.__r_.__value_.__l.__size_ = 44;
            __p[0].__r_.__value_.__r.__words[0] = (v6 + 1);
            __p[0].__r_.__value_.__l.__size_ = 5;
            absl::lts_20240722::StrCat(&__dst.__r_.__value_.__l.__data_, __p, &v103);
LABEL_173:
            if (*(v38 + 23) < 0)
            {
              operator delete(*v38);
            }

            result = 0;
            *v38 = v103;
            goto LABEL_117;
          }

          goto LABEL_108;
        }

        v39 = v6 + 4;
LABEL_145:
        if (!v38)
        {
          goto LABEL_184;
        }

        v77 = v39 - v27;
        if ((v39 - v27) <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v77 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v39 - v27;
          memmove(&__dst, v27, v39 - v27);
          __dst.__r_.__value_.__s.__data_[v77] = 0;
          v78 = std::string::insert(&__dst, 0, "\\u must be followed by 4 hex digits: \");
          v79 = v78->__r_.__value_.__r.__words[0];
          __p[0].__r_.__value_.__r.__words[0] = v78->__r_.__value_.__l.__size_;
          *(__p[0].__r_.__value_.__r.__words + 7) = *(&v78->__r_.__value_.__r.__words[1] + 7);
          v80 = HIBYTE(v78->__r_.__value_.__r.__words[2]);
          v78->__r_.__value_.__l.__size_ = 0;
          v78->__r_.__value_.__r.__words[2] = 0;
          v78->__r_.__value_.__r.__words[0] = 0;
          if (*(v38 + 23) < 0)
          {
            operator delete(*v38);
          }

          v81 = __p[0].__r_.__value_.__r.__words[0];
          *v38 = v79;
          *(v38 + 8) = v81;
          *(v38 + 15) = *(__p[0].__r_.__value_.__r.__words + 7);
          *(v38 + 23) = v80;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_165;
          }

          goto LABEL_184;
        }

        goto LABEL_187;
      case 'v':
        v16->__r_.__value_.__s.__data_[0] = 11;
        v16 = (v16 + 1);
LABEL_115:
        ++v6;
        goto LABEL_28;
      default:
        if (!a4)
        {
          goto LABEL_184;
        }

        std::string::basic_string[abi:ne200100]<0>(&__dst, "Unknown escape sequence: \");
        std::string::push_back(&__dst, *v27);
        __p[0].__r_.__value_.__r.__words[0] = __dst.__r_.__value_.__l.__size_;
        v73 = __dst.__r_.__value_.__r.__words[0];
        *(__p[0].__r_.__value_.__r.__words + 7) = *(&__dst.__r_.__value_.__r.__words[1] + 7);
        v74 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        memset(&__dst, 0, sizeof(__dst));
        if ((*(a4 + 23) & 0x80000000) == 0)
        {
          v75 = __p[0].__r_.__value_.__r.__words[0];
          *a4 = v73;
          *(a4 + 8) = v75;
          *(a4 + 15) = *(__p[0].__r_.__value_.__r.__words + 7);
          *(a4 + 23) = v74;
          result = 0;
          goto LABEL_117;
        }

        operator delete(*a4);
        v99 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v100 = __p[0].__r_.__value_.__r.__words[0];
        *a4 = v73;
        *(a4 + 8) = v100;
        *(a4 + 15) = *(__p[0].__r_.__value_.__r.__words + 7);
        *(a4 + 23) = v74;
        if (v99 < 0)
        {
          goto LABEL_165;
        }

        goto LABEL_184;
    }
  }
}

void sub_23C974110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::CEscape(std::string::value_type *__s@<X0>, std::string::size_type __n@<X1>, std::string *a3@<X8>)
{
  v3 = __n;
  v4 = __s;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = 0x3FFFFFFFFFFFFFFFLL;
  if (__n < 0x3FFFFFFFFFFFFFFFLL)
  {
    v6 = __n;
  }

  if (!__n)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  if (__n == 1)
  {
    v7 = 0;
    v8 = 0;
LABEL_10:
    v15 = &__s[v8];
    v16 = v6 - v8;
    do
    {
      v17 = *v15++;
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  v9 = 0;
  v10 = 0;
  v8 = v6 & 0x3FFFFFFFFFFFFFFELL;
  v11 = __s + 1;
  v12 = v6 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    v13 = *(v11 - 1);
    v14 = *v11;
    v11 += 2;
    v12 -= 2;
  }

  while (v12);
  v7 = v10 + v9;
  if (__n != v8)
  {
    goto LABEL_10;
  }

LABEL_12:
  v18 = __n - v6;
  if (__n <= v6)
  {
LABEL_16:
    if (v7 == __n)
    {
      std::string::append(a3, __s, __n);
      return;
    }

    v22 = a3;
    if (v7)
    {
      if (v7 >= 0x17)
      {
        std::string::__grow_by(a3, 0x16uLL, v7 - 22, 0, 0, 0, 0);
        a3->__r_.__value_.__l.__size_ = 0;
        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          v26 = a3->__r_.__value_.__r.__words[0];
          a3->__r_.__value_.__l.__size_ = v7;
          *(v26 + v7) = 0;
          if (!v3)
          {
            return;
          }

          goto LABEL_23;
        }
      }

      *(&a3->__r_.__value_.__s + 23) = v7 & 0x7F;
      v22 = a3;
    }

    v22->__r_.__value_.__s.__data_[v7] = 0;
    if (!v3)
    {
      return;
    }

LABEL_23:
    v23 = a3->__r_.__value_.__r.__words[0];
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = a3;
    }

    do
    {
      v24 = *v4;
      if (v25 == 2)
      {
        if (*v4 > 0x21u)
        {
          switch(v24)
          {
            case '""':
              LOWORD(v23->__r_.__value_.__l.__data_) = 8796;
              v23 = (v23 + 2);
              break;
            case '\'':
              LOWORD(v23->__r_.__value_.__l.__data_) = 10076;
              v23 = (v23 + 2);
              break;
            case '\\':
              LOWORD(v23->__r_.__value_.__l.__data_) = 23644;
              v23 = (v23 + 2);
              break;
          }
        }

        else
        {
          switch(v24)
          {
            case 9:
              LOWORD(v23->__r_.__value_.__l.__data_) = 29788;
              v23 = (v23 + 2);
              break;
            case 0xA:
              LOWORD(v23->__r_.__value_.__l.__data_) = 28252;
              v23 = (v23 + 2);
              break;
            case 0xD:
              LOWORD(v23->__r_.__value_.__l.__data_) = 29276;
              v23 = (v23 + 2);
              break;
          }
        }
      }

      else if (v25 == 1)
      {
        v23->__r_.__value_.__s.__data_[0] = v24;
        v23 = (v23 + 1);
      }

      else
      {
        v23->__r_.__value_.__s.__data_[0] = 92;
        v23->__r_.__value_.__s.__data_[1] = (v24 >> 6) | 0x30;
        v23->__r_.__value_.__s.__data_[2] = (v24 >> 3) & 7 | 0x30;
        v23->__r_.__value_.__s.__data_[3] = v24 & 7 | 0x30;
        v23 = (v23 + 4);
      }

      ++v4;
      --v3;
    }

    while (v3);
    return;
  }

  v19 = &__s[v6];
  while (1)
  {
    v20 = *v19++;
    if (__CFADD__(v21, v7))
    {
      break;
    }

    v7 += v21;
    if (!--v18)
    {
      goto LABEL_16;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v31, "Check escaped_len <= std::numeric_limits<size_t>::max() - char_len failed: ");
  std::string::basic_string[abi:ne200100]<0>(__p, "escaped_len overflow");
  if ((v30 & 0x80u) == 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v28 = v30;
  }

  else
  {
    v28 = __p[1];
  }

  std::string::append(&v31, v27, v28);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  (atomic_load_explicit(absl::lts_20240722::raw_log_internal::internal_log_function, memory_order_acquire))(3, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/abseil-cpp-src/absl/strings/escaping.cc", 410, &v31);
  __break(1u);
}

void sub_23C974470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if (*(v20 + 23) < 0)
    {
LABEL_6:
      operator delete(*v20);
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v20 + 23) < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::anonymous namespace::CEscapeInternal(std::string *this, std::string::value_type *a2, uint64_t a3, char a4, char a5)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a3)
  {
    v6 = a3;
    if (a4)
    {
      v9 = 0;
      while (1)
      {
        v10 = *a2;
        if (*a2 > 0x21u)
        {
          switch(v10)
          {
            case '""':
              v11 = "\\"";
              goto LABEL_20;
            case '\\':
              v11 = "\\\";
              goto LABEL_20;
            case '\'':
              v11 = "\\'";
              goto LABEL_20;
          }
        }

        else
        {
          switch(v10)
          {
            case 9:
              v11 = "\\t";
              goto LABEL_20;
            case 0xA:
              v11 = "\\n";
              goto LABEL_20;
            case 0xD:
              v11 = "\\r";
LABEL_20:
              std::string::append(this, v11);
              goto LABEL_21;
          }
        }

        if ((v10 & 0x80) != 0 && (a5 & 1) != 0 || (v10 - 32) <= 0x5Eu && ((v9 & 1) == 0 || (absl::lts_20240722::ascii_internal::kPropertyBits[v10] & 0x80000000) == 0))
        {
          std::string::push_back(this, v10);
LABEL_21:
          v9 = 0;
          ++a2;
          if (!--v6)
          {
            return;
          }
        }

        else
        {
          std::string::append(this, "\\x");
          std::string::push_back(this, absl::lts_20240722::numbers_internal::kHexChar[v10 >> 4]);
          std::string::push_back(this, absl::lts_20240722::numbers_internal::kHexChar[v10 & 0xF]);
          v9 = 1;
          ++a2;
          if (!--v6)
          {
            return;
          }
        }
      }
    }

    do
    {
      v13 = *a2;
      if (*a2 > 0x21u)
      {
        switch(v13)
        {
          case '""':
            v12 = "\\"";
            break;
          case '\'':
            v12 = "\\'";
            break;
          case '\\':
            v12 = "\\\";
            break;
          default:
LABEL_42:
            v14 = *a2;
            if ((v13 & 0x80u) != 0)
            {
              v15 = a5;
            }

            else
            {
              v15 = 0;
            }

            if ((v15 & 1) == 0 && (v13 - 32) >= 0x5Fu)
            {
              std::string::append(this, "\");
              std::string::push_back(this, absl::lts_20240722::numbers_internal::kHexChar[v13 >> 6]);
              std::string::push_back(this, absl::lts_20240722::numbers_internal::kHexChar[(v13 >> 3) & 7]);
              v14 = absl::lts_20240722::numbers_internal::kHexChar[v13 & 7];
            }

            std::string::push_back(this, v14);
            goto LABEL_31;
        }
      }

      else if (v13 == 9)
      {
        v12 = "\\t";
      }

      else if (v13 == 10)
      {
        v12 = "\\n";
      }

      else
      {
        v12 = "\\r";
        if (v13 != 13)
        {
          goto LABEL_42;
        }
      }

      std::string::append(this, v12);
LABEL_31:
      ++a2;
      --v6;
    }

    while (v6);
  }
}

void sub_23C9747B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::strings_internal::EncodeUTF8Char(_BYTE *a1, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      v3 = a2 & 0x3F | 0x80;
      v4 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
      if (HIWORD(a2))
      {
        a1[3] = v3;
        a1[2] = v4;
        a1[1] = (a2 >> 12) & 0x3F | 0x80;
        *a1 = (a2 >> 18) | 0xF0;
        return 4;
      }

      else
      {
        a1[2] = v3;
        a1[1] = v4;
        *a1 = (a2 >> 12) | 0xE0;
        return 3;
      }
    }

    else
    {
      a1[1] = a2 & 0x3F | 0x80;
      *a1 = (a2 >> 6) | 0xC0;
      return 2;
    }
  }

  else
  {
    *a1 = a2;
    return 1;
  }
}

uint64_t absl::lts_20240722::strings_internal::memcasecmp(absl::lts_20240722::strings_internal *this, const char *a2, const char *a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v5 = *this;
    this = (this + 1);
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if (v4 != v7)
    {
      if ((v4 - 65) < 0x1A)
      {
        LOBYTE(v4) = v4 + 32;
      }

      if ((v6 - 65) < 0x1A)
      {
        LOBYTE(v6) = v6 + 32;
      }

      v8 = v4 - v6;
      if (v8)
      {
        break;
      }
    }

    if (!--a3)
    {
      return 0;
    }
  }

  return v8;
}

char *absl::lts_20240722::numbers_internal::FastIntToBuffer(absl::lts_20240722::numbers_internal *this, _WORD *a2, char *a3)
{
  if (this > 9)
  {
    if (this >= 0x5F5E100)
    {
      v10 = (this % 0x5F5E100 / 0x2710uLL) | ((this % 0x5F5E100 % 0x2710) << 32);
      v11 = (((10486 * v10) >> 20) & 0x7F0000007FLL) + ((v10 - 100 * (((10486 * v10) >> 20) & 0x7F0000007FLL)) << 16);
      v12 = (((103 * v11) >> 10) & 0xF000F000F000FLL) + ((v11 + 0xFFFFFFFFFFFFF6 * (((103 * v11) >> 10) & 0xF000F000F000FLL)) << 8) + 0x3030303030303030;
      LODWORD(v11) = (this / 0x5F5E100 - 10) >> 8;
      *a2 = ((((103 * (this / 0x5F5E100)) >> 10) | ((this / 0x5F5E100 - 10 * ((103 * (this / 0x5F5E100)) >> 10)) << 8)) + 12336) >> (v11 & 8);
      v13 = a2 + v11;
      *(v13 + 2) = v12;
      v13[10] = 0;
      return v13 + 10;
    }

    else
    {
      v5 = (this / 0x2710uLL) | ((this % 0x2710) << 32);
      v6 = (((10486 * v5) >> 20) & 0x7F0000007FLL) + ((v5 - 100 * (((10486 * v5) >> 20) & 0x7F0000007FLL)) << 16);
      v7 = (((103 * v6) >> 10) & 0xF000F000F000FLL) + ((v6 + 0xFFFFFFFFFFFFF6 * (((103 * v6) >> 10) & 0xF000F000F000FLL)) << 8);
      v8 = __clz(__rbit64(v7));
      *a2 = (v7 + 0x3030303030303030) >> (v8 & 0x38);
      v9 = a2 - (v8 >> 3) + 8;
      *v9 = 0;
      return v9;
    }
  }

  else
  {
    *a2 = this | 0x30;
    v3 = a2 + 1;
    *v3 = 0;
    return v3;
  }
}

_BYTE *absl::lts_20240722::numbers_internal::FastIntToBuffer(absl::lts_20240722::numbers_internal *this, _BYTE *a2, char *a3)
{
  if ((this & 0x80000000) != 0)
  {
    *a2++ = 45;
    LODWORD(this) = -this;
    if (this <= 9)
    {
      goto LABEL_3;
    }
  }

  else if (this <= 9)
  {
LABEL_3:
    *a2 = this | 0x30;
    v3 = a2 + 1;
    *v3 = 0;
    return v3;
  }

  if (this >= 0x5F5E100)
  {
    v10 = (this % 0x5F5E100 / 0x2710uLL) | ((this % 0x5F5E100 % 0x2710) << 32);
    v11 = (((10486 * v10) >> 20) & 0x7F0000007FLL) + ((v10 - 100 * (((10486 * v10) >> 20) & 0x7F0000007FLL)) << 16);
    v12 = (((103 * v11) >> 10) & 0xF000F000F000FLL) + ((v11 + 0xFFFFFFFFFFFFF6 * (((103 * v11) >> 10) & 0xF000F000F000FLL)) << 8) + 0x3030303030303030;
    LODWORD(v11) = (this / 0x5F5E100 - 10) >> 8;
    *a2 = ((((103 * (this / 0x5F5E100)) >> 10) | ((this / 0x5F5E100 - 10 * ((103 * (this / 0x5F5E100)) >> 10)) << 8)) + 12336) >> (v11 & 8);
    v13 = &a2[v11];
    *(v13 + 2) = v12;
    v13[10] = 0;
    return v13 + 10;
  }

  else
  {
    v5 = (this / 0x2710uLL) | ((this % 0x2710) << 32);
    v6 = (((10486 * v5) >> 20) & 0x7F0000007FLL) + ((v5 - 100 * (((10486 * v5) >> 20) & 0x7F0000007FLL)) << 16);
    v7 = (((103 * v6) >> 10) & 0xF000F000F000FLL) + ((v6 + 0xFFFFFFFFFFFFF6 * (((103 * v6) >> 10) & 0xF000F000F000FLL)) << 8);
    v8 = __clz(__rbit64(v7));
    *a2 = (v7 + 0x3030303030303030) >> (v8 & 0x38);
    v9 = &a2[-(v8 >> 3) + 8];
    *v9 = 0;
    return v9;
  }
}

char *absl::lts_20240722::numbers_internal::FastIntToBuffer(unint64_t this, unsigned int *a2, char *a3)
{
  if (HIDWORD(this))
  {
    v3 = this / 0x5F5E100;
    if (this > 0x2386F26FC0FFFFLL)
    {
      v11 = v3 - 100000000 * (((v3 * 0x55E63B88C3uLL) >> 64) >> 1);
      v12 = ((109951163 * v11) >> 40) | ((v11 - 10000 * (((109951163 * v11) >> 32) >> 8)) << 32);
      v13 = (((10486 * v12) >> 20) & 0x7F0000007FLL) + ((v12 - 100 * (((10486 * v12) >> 20) & 0x7F0000007FLL)) << 16);
      v14 = (10486 * (this / 0x2386F26FC10000)) >> 20;
      v15 = v14 | ((this / 0x2386F26FC10000 - 100 * v14) << 16);
      v16 = (((103 * v15) >> 10) & 0xF000F) + ((v15 + 16777206 * (((103 * v15) >> 10) & 0xF000F)) << 8);
      LODWORD(v14) = __clz(__rbit32(v16));
      *a2 = (v16 + 808464432) >> (v14 & 0x18);
      v17 = a2 - (v14 >> 3);
      *(v17 + 4) = (((103 * v13) >> 10) & 0xF000F000F000FLL) + ((v13 + 0xFFFFFFFFFFFFF6 * (((103 * v13) >> 10) & 0xF000F000F000FLL)) << 8) + 0x3030303030303030;
      v8 = v17 + 12;
    }

    else
    {
      v4 = (v3 / 0x2710uLL) | ((v3 % 0x2710) << 32);
      v5 = (((10486 * v4) >> 20) & 0x7F0000007FLL) + ((v4 - 100 * (((10486 * v4) >> 20) & 0x7F0000007FLL)) << 16);
      v6 = (((103 * v5) >> 10) & 0xF000F000F000FLL) + ((v5 + 0xFFFFFFFFFFFFF6 * (((103 * v5) >> 10) & 0xF000F000F000FLL)) << 8);
      v7 = __clz(__rbit64(v6));
      *a2 = (v6 + 0x3030303030303030) >> (v7 & 0x38);
      v8 = (a2 - (v7 >> 3) + 8);
    }

    v18 = (this % 0x5F5E100 / 0x2710) | ((this % 0x5F5E100 % 0x2710) << 32);
    v19 = (((10486 * v18) >> 20) & 0x7F0000007FLL) + ((v18 - 100 * (((10486 * v18) >> 20) & 0x7F0000007FLL)) << 16);
    *v8 = (((103 * v19) >> 10) & 0xF000F000F000FLL) + ((v19 + 0xFFFFFFFFFFFFF6 * (((103 * v19) >> 10) & 0xF000F000F000FLL)) << 8) + 0x3030303030303030;
    v20 = v8 + 1;
    *v20 = 0;
    return v20;
  }

  else if (this > 9)
  {
    if (this >= 0x5F5E100)
    {
      v26 = (this % 0x5F5E100 / 0x2710uLL) | ((this % 0x5F5E100 % 0x2710) << 32);
      v27 = (((10486 * v26) >> 20) & 0x7F0000007FLL) + ((v26 - 100 * (((10486 * v26) >> 20) & 0x7F0000007FLL)) << 16);
      v28 = (((103 * v27) >> 10) & 0xF000F000F000FLL) + ((v27 + 0xFFFFFFFFFFFFF6 * (((103 * v27) >> 10) & 0xF000F000F000FLL)) << 8) + 0x3030303030303030;
      LODWORD(v27) = (this / 0x5F5E100 - 10) >> 8;
      *a2 = ((((103 * (this / 0x5F5E100)) >> 10) | ((this / 0x5F5E100 - 10 * ((103 * (this / 0x5F5E100)) >> 10)) << 8)) + 12336) >> (v27 & 8);
      v29 = a2 + v27;
      *(v29 + 2) = v28;
      v29[10] = 0;
      return v29 + 10;
    }

    else
    {
      v21 = (this / 0x2710uLL) | ((this % 0x2710) << 32);
      v22 = (((10486 * v21) >> 20) & 0x7F0000007FLL) + ((v21 - 100 * (((10486 * v21) >> 20) & 0x7F0000007FLL)) << 16);
      v23 = (((103 * v22) >> 10) & 0xF000F000F000FLL) + ((v22 + 0xFFFFFFFFFFFFF6 * (((103 * v22) >> 10) & 0xF000F000F000FLL)) << 8);
      v24 = __clz(__rbit64(v23));
      *a2 = (v23 + 0x3030303030303030) >> (v24 & 0x38);
      v25 = a2 - (v24 >> 3) + 8;
      *v25 = 0;
      return v25;
    }
  }

  else
  {
    *a2 = this | 0x30;
    v9 = a2 + 1;
    *v9 = 0;
    return v9;
  }
}

char *absl::lts_20240722::numbers_internal::FastIntToBuffer(unint64_t this, _WORD *a2, char *a3)
{
  if ((this & 0x8000000000000000) != 0)
  {
    *a2 = 45;
    a2 = (a2 + 1);
    this = -this;
    if (HIDWORD(this))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (this > 9)
    {
      if (this >= 0x5F5E100)
      {
        v26 = (this % 0x5F5E100 / 0x2710uLL) | ((this % 0x5F5E100 % 0x2710) << 32);
        v27 = (((10486 * v26) >> 20) & 0x7F0000007FLL) + ((v26 - 100 * (((10486 * v26) >> 20) & 0x7F0000007FLL)) << 16);
        v28 = (((103 * v27) >> 10) & 0xF000F000F000FLL) + ((v27 + 0xFFFFFFFFFFFFF6 * (((103 * v27) >> 10) & 0xF000F000F000FLL)) << 8) + 0x3030303030303030;
        LODWORD(v27) = (this / 0x5F5E100 - 10) >> 8;
        *a2 = ((((103 * (this / 0x5F5E100)) >> 10) | ((this / 0x5F5E100 - 10 * ((103 * (this / 0x5F5E100)) >> 10)) << 8)) + 12336) >> (v27 & 8);
        v29 = a2 + v27;
        *(v29 + 2) = v28;
        v29[10] = 0;
        return v29 + 10;
      }

      else
      {
        v21 = (this / 0x2710uLL) | ((this % 0x2710) << 32);
        v22 = (((10486 * v21) >> 20) & 0x7F0000007FLL) + ((v21 - 100 * (((10486 * v21) >> 20) & 0x7F0000007FLL)) << 16);
        v23 = (((103 * v22) >> 10) & 0xF000F000F000FLL) + ((v22 + 0xFFFFFFFFFFFFF6 * (((103 * v22) >> 10) & 0xF000F000F000FLL)) << 8);
        v24 = __clz(__rbit64(v23));
        *a2 = (v23 + 0x3030303030303030) >> (v24 & 0x38);
        v25 = a2 - (v24 >> 3) + 8;
        *v25 = 0;
        return v25;
      }
    }

    else
    {
      *a2 = this | 0x30;
      v9 = a2 + 1;
      *v9 = 0;
      return v9;
    }
  }

  if (!HIDWORD(this))
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = this / 0x5F5E100;
  if (this > 0x2386F26FC0FFFFLL)
  {
    v11 = v3 - 100000000 * (((v3 * 0x55E63B88C3uLL) >> 64) >> 1);
    v12 = ((109951163 * v11) >> 40) | ((v11 - 10000 * (((109951163 * v11) >> 32) >> 8)) << 32);
    v13 = (((10486 * v12) >> 20) & 0x7F0000007FLL) + ((v12 - 100 * (((10486 * v12) >> 20) & 0x7F0000007FLL)) << 16);
    v14 = (10486 * (this / 0x2386F26FC10000)) >> 20;
    v15 = v14 | ((this / 0x2386F26FC10000 - 100 * v14) << 16);
    v16 = (((103 * v15) >> 10) & 0xF000F) + ((v15 + 16777206 * (((103 * v15) >> 10) & 0xF000F)) << 8);
    LODWORD(v14) = __clz(__rbit32(v16));
    *a2 = (v16 + 808464432) >> (v14 & 0x18);
    v17 = a2 - (v14 >> 3);
    *(v17 + 4) = (((103 * v13) >> 10) & 0xF000F000F000FLL) + ((v13 + 0xFFFFFFFFFFFFF6 * (((103 * v13) >> 10) & 0xF000F000F000FLL)) << 8) + 0x3030303030303030;
    v8 = v17 + 12;
  }

  else
  {
    v4 = (v3 / 0x2710uLL) | ((v3 % 0x2710) << 32);
    v5 = (((10486 * v4) >> 20) & 0x7F0000007FLL) + ((v4 - 100 * (((10486 * v4) >> 20) & 0x7F0000007FLL)) << 16);
    v6 = (((103 * v5) >> 10) & 0xF000F000F000FLL) + ((v5 + 0xFFFFFFFFFFFFF6 * (((103 * v5) >> 10) & 0xF000F000F000FLL)) << 8);
    v7 = __clz(__rbit64(v6));
    *a2 = (v6 + 0x3030303030303030) >> (v7 & 0x38);
    v8 = (a2 - (v7 >> 3) + 8);
  }

  v18 = (this % 0x5F5E100 / 0x2710) | ((this % 0x5F5E100 % 0x2710) << 32);
  v19 = (((10486 * v18) >> 20) & 0x7F0000007FLL) + ((v18 - 100 * (((10486 * v18) >> 20) & 0x7F0000007FLL)) << 16);
  *v8 = (((103 * v19) >> 10) & 0xF000F000F000FLL) + ((v19 + 0xFFFFFFFFFFFFF6 * (((103 * v19) >> 10) & 0xF000F000F000FLL)) << 8) + 0x3030303030303030;
  v20 = v8 + 1;
  *v20 = 0;
  return v20;
}

uint64_t absl::lts_20240722::numbers_internal::SixDigitsToBuffer(absl::lts_20240722::numbers_internal *this, long double a2, char *a3)
{
  v56 = v3;
  v57 = v4;
  if (a2 != 0.0)
  {
    if (a2 >= 0.0)
    {
      v7 = this;
      if (a2 <= 1.79769313e308)
      {
LABEL_7:
        if (a2 >= 999999.5)
        {
          v8 = a2 * 1.0e-256;
          if (a2 >= 1.0e261)
          {
            v12 = 261;
          }

          else
          {
            v8 = a2;
            v12 = 5;
          }

          if (v8 >= 1.0e133)
          {
            v8 = v8 * 1.0e-128;
            v12 |= 0x80u;
          }

          if (v8 >= 1.0e69)
          {
            v8 = v8 * 1.0e-64;
            v12 |= 0x40u;
          }

          if (v8 >= 1.0e37)
          {
            v8 = v8 * 1.0e-32;
            v12 |= 0x20u;
          }

          if (v8 >= 1.0e21)
          {
            v8 = v8 * 1.0e-16;
            v12 += 16;
          }

          if (v8 >= 1.0e13)
          {
            v8 = v8 * 0.00000001;
            v12 += 8;
          }

          if (v8 >= 1000000000.0)
          {
            v8 = v8 * 0.0001;
            v12 += 4;
          }

          if (v8 < 10000000.0)
          {
            v10 = v12;
          }

          else
          {
            v8 = v8 * 0.01;
            v10 = v12 + 2;
          }

          if (v8 >= 1000000.0)
          {
            ++v10;
            v11 = 0.1;
            goto LABEL_50;
          }
        }

        else
        {
          v8 = a2 * 1.0e256;
          if (a2 < 1.0e-250)
          {
            v9 = -251;
          }

          else
          {
            v8 = a2;
            v9 = 5;
          }

          if (v8 < 1.0e-122)
          {
            v8 = v8 * 1.0e128;
            v9 -= 128;
          }

          if (v8 < 1.0e-58)
          {
            v8 = v8 * 1.0e64;
            v9 -= 64;
          }

          if (v8 < 1.0e-26)
          {
            v8 = v8 * 1.0e32;
            v9 -= 32;
          }

          if (v8 < 1.0e-10)
          {
            v8 = v8 * 1.0e16;
            v9 -= 16;
          }

          if (v8 < 0.01)
          {
            v8 = v8 * 100000000.0;
            v9 -= 8;
          }

          if (v8 < 100.0)
          {
            v8 = v8 * 10000.0;
            v9 -= 4;
          }

          if (v8 >= 10000.0)
          {
            v10 = v9;
          }

          else
          {
            v8 = v8 * 100.0;
            v10 = v9 - 2;
          }

          if (v8 < 100000.0)
          {
            --v10;
            v11 = 10.0;
LABEL_50:
            v8 = v8 * v11;
          }
        }

        v13 = vcvtd_n_u64_f64(v8, 0x10uLL);
        if (v13 - 0x7FFF > 1)
        {
          v22 = (v13 + 0x8000) >> 16;
          goto LABEL_69;
        }

        v14 = this;
        v15 = v13 >> 16;
        v16 = 2 * vcvtd_n_u64_f64(frexp(a2, &__e), 0x3FuLL);
        v17 = (v13 >> 15) & 0xFFFFFFFE | 1;
        if (v10 < 6)
        {
          v18 = v17 << __clz(v17);
          v16 = absl::lts_20240722::PowFive(v16, 5 - v10);
          v20 = 0;
          this = v14;
          if (v18 < v16)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v18 = absl::lts_20240722::PowFive(v17, v10 - 5);
          v20 = v19;
          v21 = 0;
          this = v14;
          if (v18 < v16)
          {
            goto LABEL_68;
          }
        }

        if (v16 < v18 || v20 >= v21)
        {
          v24 = v16 == v18 && v21 == v20;
          LODWORD(v22) = (v15 & 1) + v15;
          if (!v24)
          {
            LODWORD(v22) = v15;
          }

LABEL_69:
          v25 = v22 == 1000000;
          if (v22 == 1000000)
          {
            LODWORD(v22) = 100000;
          }

          if (v25)
          {
            v26 = v10 + 1;
          }

          else
          {
            v26 = v10;
          }

          v27 = v22 / 0x2710;
          v28 = v22 % 0x2710;
          v29 = (103 * v27) >> 10;
          v30 = v27 + 246 * v29;
          v31 = v28 / 0x64;
          v28 %= 0x64u;
          v32 = (103 * v28) >> 10;
          v33 = v32 + 48;
          v34 = v32 + 12336 + ((v28 + 246 * v32) << 8);
          v35 = ((103 * v31) >> 10) + ((v31 + 246 * ((103 * v31) >> 10)) << 8) + 12336;
          v36 = v29 + 48;
          v37 = (((v29 + 12336 + (v30 << 8)) & 0xFF00) << 32) | (v35 << 48);
          *v7 = 11824;
          if (v26 <= 0)
          {
            if (v26 > -3)
            {
              if (v26 != -2)
              {
                if (v26 != -1)
                {
                  *v7 = v36;
                  *(v7 + 1) = HIDWORD(v37) >> 8;
                  *(v7 + 4) = HIBYTE(v37);
                  *(v7 + 5) = v34;
                  v38 = v7 + 8;
                  do
                  {
                    v39 = *(v38 - 2);
                    --v38;
                  }

                  while (v39 == 48);
                  if (v39 == 46)
                  {
                    --v38;
                  }

                  goto LABEL_106;
                }

LABEL_98:
                *(v7 + 2) = v36;
                *(v7 + 3) = HIDWORD(v37) >> 8;
                *(v7 + 5) = HIBYTE(v37);
                *(v7 + 3) = v34;
                v43 = v7 + 9;
                result = (v7 + 9) - this;
                do
                {
                  v44 = *(v43 - 2);
                  --result;
                  --v43;
                }

                while (v44 == 48);
                *v43 = 0;
                return result;
              }

LABEL_97:
              *(v7 + 2) = 48;
              v7 = (v7 + 1);
              goto LABEL_98;
            }

            if (v26 == -4)
            {
              *(v7 + 2) = 48;
              v7 = (v7 + 1);
            }

            else if (v26 != -3)
            {
LABEL_111:
              v46 = v37 >> 40;
              *v7 = v36;
              *(v7 + 1) = v46;
              *(v7 + 4) = BYTE2(v46);
              *(v7 + 5) = v34;
              v47 = v7 + 8;
              do
              {
                v48 = *(v47 - 2);
                --v47;
              }

              while (v48 == 48);
              if (v48 == 46)
              {
                v49 = v47 - 1;
              }

              else
              {
                v49 = v47;
              }

              *v49 = 101;
              if (v26 <= 0)
              {
                v50 = 45;
              }

              else
              {
                v50 = 43;
              }

              if (v26 >= 0)
              {
                v51 = v26;
              }

              else
              {
                v51 = -v26;
              }

              v49[1] = v50;
              if (v51 < 0x64)
              {
                v54 = v49 + 2;
              }

              else
              {
                v52 = v51 / 0x64;
                v51 %= 0x64u;
                v53 = v52 + 48;
                v54 = v49 + 3;
                v49[2] = v53;
              }

              *v54 = ((103 * v51) >> 10) + ((v51 + 246 * ((103 * v51) >> 10)) << 8) + 12336;
              v54[2] = 0;
              v45 = v54 + 2;
              return v45 - this;
            }

            *(v7 + 2) = 48;
            v7 = (v7 + 1);
            goto LABEL_97;
          }

          if (v26 <= 2)
          {
            if (v26 == 1)
            {
              *v7 = v36;
              *(v7 + 1) = BYTE5(v37);
              *(v7 + 2) = 46;
              *(v7 + 3) = v35;
              v41 = v7 + 8;
              *(v7 + 5) = v34;
              do
              {
                v42 = *(v41 - 2);
                --v41;
              }

              while (v42 == 48);
            }

            else
            {
              *v7 = v36;
              *(v7 + 1) = HIDWORD(v37) >> 8;
              *(v7 + 3) = 46;
              *(v7 + 4) = BYTE1(v35);
              v41 = v7 + 8;
              *(v7 + 5) = v34;
              do
              {
                v42 = *(v41 - 2);
                --v41;
              }

              while (v42 == 48);
            }

            if (v42 == 46)
            {
              v38 = v41 - 1;
            }

            else
            {
              v38 = v41;
            }
          }

          else
          {
            v40 = HIBYTE(v34);
            if (v26 == 3)
            {
              *v7 = v36;
              *(v7 + 1) = HIDWORD(v37) >> 8;
              *(v7 + 3) = HIBYTE(v37);
              if ((HIBYTE(v34) | v33) == 0x30)
              {
                v45 = v7 + 4;
              }

              else
              {
                *(v7 + 4) = 46;
                *(v7 + 5) = v33;
                if (v34 >> 8 == 48)
                {
                  v45 = v7 + 6;
                }

                else
                {
                  v45 = v7 + 7;
                  *(v7 + 6) = HIBYTE(v34);
                }
              }

              *v45 = 0;
              return v45 - this;
            }

            if (v26 != 4)
            {
              if (v26 == 5)
              {
                *v7 = v36;
                *(v7 + 1) = HIDWORD(v37) >> 8;
                *(v7 + 3) = HIBYTE(v37);
                *(v7 + 2) = v34;
                *(v7 + 6) = 0;
                return (v7 + 6) - this;
              }

              goto LABEL_111;
            }

            *v7 = v36;
            *(v7 + 1) = HIDWORD(v37) >> 8;
            *(v7 + 3) = HIBYTE(v37);
            *(v7 + 4) = v33;
            if (v34 >> 8 == 48)
            {
              v38 = v7 + 5;
            }

            else
            {
              *(v7 + 5) = 46;
              v38 = v7 + 7;
              *(v7 + 6) = v40;
            }
          }

LABEL_106:
          *v38 = 0;
          return v38 - this;
        }

LABEL_68:
        LODWORD(v22) = v15 + 1;
        goto LABEL_69;
      }
    }

    else
    {
      *this = 45;
      v7 = (this + 1);
      a2 = -a2;
      if (a2 <= 1.79769313e308)
      {
        goto LABEL_7;
      }
    }

    *v7 = 6712937;
    return v7 - this + 3;
  }

  v5 = this;
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    *this = 45;
    v5 = (this + 1);
  }

  *v5 = 48;
  return v5 - this + 1;
}

uint64_t absl::lts_20240722::numbers_internal::safe_strto32_base(uint64_t result, uint64_t a2, signed int *a3, unsigned int a4)
{
  *a3 = 0;
  if (result)
  {
    if (a2 < 1)
    {
      v4 = result;
    }

    else
    {
      v4 = result;
      do
      {
        if ((absl::lts_20240722::ascii_internal::kPropertyBits[*v4] & 8) == 0)
        {
          break;
        }

        ++v4;
      }

      while (v4 < result + a2);
    }

    do
    {
      if (v4 >= result + a2)
      {
        return 0;
      }

      v5 = absl::lts_20240722::ascii_internal::kPropertyBits[*(result + a2-- - 1)];
    }

    while ((v5 & 8) != 0);
    v6 = *v4;
    v7 = result + a2 + 1;
    if ((v6 == 45 || v6 == 43) && ++v4 >= v7)
    {
      return 0;
    }

    if (a4 == 16)
    {
      v8 = result + a2 + 1;
      if (result + a2 - v4 + 1 < 2 || *v4 != 48 || (v4[1] | 0x20) != 0x78 || (v4 += 2, v4 < v7))
      {
LABEL_24:
        v10 = v8 - v4;
        v11 = 16;
        if (v6 == 45)
        {
          goto LABEL_34;
        }

        goto LABEL_44;
      }

      return 0;
    }

    if (a4)
    {
      if (a4 - 2 <= 0x22)
      {
        v8 = result + a2 + 1;
        v10 = v8 - v4;
        v11 = a4;
        if (v6 == 45)
        {
LABEL_34:
          if (v10 >= 1)
          {
            v12 = 0;
            while (1)
            {
              if (v11 <= v13)
              {
                break;
              }

              {
                result = 0;
                v12 = 0x80000000;
                goto LABEL_55;
              }

              v12 = v14 - v13;
              if (++v4 >= v8)
              {
                goto LABEL_52;
              }
            }

LABEL_53:
            result = 0;
LABEL_55:
            *a3 = v12;
            return result;
          }

          goto LABEL_51;
        }

LABEL_44:
        if (v10 >= 1)
        {
          v12 = 0;
          while (1)
          {
            if (v11 <= v15)
            {
              goto LABEL_53;
            }

            {
              result = 0;
              v12 = 0x7FFFFFFF;
              goto LABEL_55;
            }

            v12 = v16 + v15;
            if (++v4 >= v8)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_51:
        v12 = 0;
LABEL_52:
        result = 1;
        goto LABEL_55;
      }

      return 0;
    }

    v8 = result + a2 + 1;
    v9 = result + a2 - v4;
    if (v9 + 1 < 2)
    {
      if (!v9 && *v4 == 48)
      {
        ++v4;
        goto LABEL_43;
      }
    }

    else if (*v4 == 48)
    {
      if ((v4[1] | 0x20) == 0x78)
      {
        v4 += 2;
        if (v4 < v7)
        {
          goto LABEL_24;
        }

        return 0;
      }

      ++v4;
LABEL_43:
      v10 = v8 - v4;
      v11 = 8;
      if (v6 == 45)
      {
        goto LABEL_34;
      }

      goto LABEL_44;
    }

    v10 = v8 - v4;
    v11 = 10;
    if (v6 == 45)
    {
      goto LABEL_34;
    }

    goto LABEL_44;
  }

  return result;
}

unint64_t absl::lts_20240722::PowFive(unint64_t this, int a2)
{
  if (a2 < 13)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v4 = 1220703125 * this;
      v5 = (__PAIR128__(0x48C2739500000000 * HIDWORD(this) + v4, 0x48C2739500000000 * HIDWORD(v2)) + __PAIR128__((1220703125 * HIDWORD(v2)) >> 32, 1220703125 * v2)) >> 64;
      v2 = 0x48C2739500000000 * HIDWORD(v2) + 1220703125 * v2;
      v6 = (1220703125 * HIDWORD(this)) >> 32;
      if (v5 < v4)
      {
        ++v6;
      }

      v7 = __clz(v6);
      v8 = (v2 >> -v7) + (v5 << v7);
      v9 = ((v5 >> -v7) + (v6 << v7));
      if (v6)
      {
        this = v9;
      }

      else
      {
        this = v5;
      }

      if (v6)
      {
        v2 = v8;
      }

      LOBYTE(a2) = v3 - 13;
      v10 = v3 <= 25;
      v3 -= 13;
    }

    while (!v10);
  }

  v11 = dword_23CE35574[a2 & 0xF];
  v12 = this * v11;
  v13 = HIDWORD(this) * v11;
  v16 = v2 * v11 + ((HIDWORD(v2) * v11) << 32);
  v14 = (__PAIR128__((v13 << 32) + v12, v2 * v11) + __PAIR128__((HIDWORD(v2) * v11) >> 32, (HIDWORD(v2) * v11) << 32)) >> 64;
  v15 = v16;
  v17 = HIDWORD(v13);
  if (v14 < v12)
  {
    ++v17;
  }

  v18 = __clz(v17);
  v19 = (v16 >> -v18) + (v14 << v18);
  v20 = (v14 >> -v18) + (v17 << v18);
  if (v17)
  {
    v14 = v20;
    v15 = v19;
  }

  v21 = __clz(v14);
  if (v21)
  {
    return (v15 >> -v21) + (v14 << v21);
  }

  else
  {
    return v14;
  }
}

const void **absl::lts_20240722::StrCat@<X0>(const void **result@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = a3;
  v5 = result[1] + *(a2 + 8);
  if (v5)
  {
    if (v5 >= 0x17 && (v6 = result, v7 = a3, std::string::__grow_by(a3, 0x16uLL, v5 - 22, 0, 0, 0, 0), a3 = v7, v7->__r_.__value_.__l.__size_ = 0, result = v6, SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0))
    {
      v4 = v7->__r_.__value_.__r.__words[0];
      v7->__r_.__value_.__l.__size_ = v5;
    }

    else
    {
      *(&a3->__r_.__value_.__s + 23) = v5 & 0x7F;
      v4 = a3;
    }
  }

  v4->__r_.__value_.__s.__data_[v5] = 0;
  v8 = result[1];
  if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = a3->__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    result = memcpy(v9, *result, v8);
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    v11 = *a2;

    return memcpy(v9 + v8, v11, v10);
  }

  return result;
}

void sub_23C97600C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::StrCat@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v6 = a4;
  v7 = result[1] + *(a2 + 8) + *(a3 + 8);
  if (v7)
  {
    if (v7 >= 0x17 && (v8 = result, v9 = a4, std::string::__grow_by(a4, 0x16uLL, v7 - 22, 0, 0, 0, 0), a4 = v9, v9->__r_.__value_.__l.__size_ = 0, result = v8, SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0))
    {
      v6 = v9->__r_.__value_.__r.__words[0];
      v9->__r_.__value_.__l.__size_ = v7;
    }

    else
    {
      *(&a4->__r_.__value_.__s + 23) = v7 & 0x7F;
      v6 = a4;
    }
  }

  v6->__r_.__value_.__s.__data_[v7] = 0;
  v10 = result[1];
  if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4->__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    result = memcpy(v11, *result, v10);
  }

  v12 = v11 + v10;
  v13 = *(a2 + 8);
  if (v13)
  {
    result = memcpy(v12, *a2, *(a2 + 8));
  }

  v14 = *(a3 + 8);
  if (v14)
  {
    v15 = *a3;

    return memcpy(&v12[v13], v15, v14);
  }

  return result;
}

void sub_23C976158(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::StrCat@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v8 = a5;
  v9 = result[1] + *(a2 + 8) + *(a3 + 8) + *(a4 + 8);
  if (v9)
  {
    if (v9 >= 0x17 && (v10 = result, v11 = a5, std::string::__grow_by(a5, 0x16uLL, v9 - 22, 0, 0, 0, 0), a5 = v11, v11->__r_.__value_.__l.__size_ = 0, result = v10, SHIBYTE(v11->__r_.__value_.__r.__words[2]) < 0))
    {
      v8 = v11->__r_.__value_.__r.__words[0];
      v11->__r_.__value_.__l.__size_ = v9;
    }

    else
    {
      *(&a5->__r_.__value_.__s + 23) = v9 & 0x7F;
      v8 = a5;
    }
  }

  v8->__r_.__value_.__s.__data_[v9] = 0;
  v12 = result[1];
  if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5->__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    result = memcpy(v13, *result, v12);
  }

  v14 = v13 + v12;
  v15 = *(a2 + 8);
  if (v15)
  {
    result = memcpy(v14, *a2, *(a2 + 8));
  }

  v16 = &v14[v15];
  v17 = *(a3 + 8);
  if (v17)
  {
    result = memcpy(v16, *a3, *(a3 + 8));
  }

  v18 = *(a4 + 8);
  if (v18)
  {
    v19 = *a4;

    return memcpy(&v16[v17], v19, v18);
  }

  return result;
}

void sub_23C9762CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *absl::lts_20240722::strings_internal::CatPieces@<X0>(char *result@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (!a2)
  {
    a3->__r_.__value_.__s.__data_[0] = 0;
    return result;
  }

  v3 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v3 > 3)
  {
    v6 = v3 + 1;
    v7 = v6 & 3;
    if ((v6 & 3) == 0)
    {
      v7 = 4;
    }

    v8 = v6 - v7;
    v5 = &result[16 * v8];
    v9 = (result + 40);
    v10 = 0uLL;
    v11 = 0uLL;
    do
    {
      v12 = v9 - 4;
      v13 = vld2q_f64(v12);
      v14 = vld2q_f64(v9);
      v10 = vaddq_s64(v13, v10);
      v11 = vaddq_s64(v14, v11);
      v9 += 8;
      v8 -= 4;
    }

    while (v8);
    v4 = vaddvq_s64(vaddq_s64(v11, v10));
  }

  else
  {
    v4 = 0;
    v5 = result;
  }

  do
  {
    v4 += *(v5 + 1);
    v5 += 16;
  }

  while (v5 != &result[16 * a2]);
  if (!v4)
  {
    goto LABEL_15;
  }

  if (v4 < 0x17)
  {
    goto LABEL_14;
  }

  v15 = a2;
  v16 = result;
  v17 = a3;
  std::string::__grow_by(a3, 0x16uLL, v4 - 22, 0, 0, 0, 0);
  a3 = v17;
  v17->__r_.__value_.__l.__size_ = 0;
  result = v16;
  a2 = v15;
  if ((SHIBYTE(v17->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    *(&a3->__r_.__value_.__s + 23) = v4 & 0x7F;
LABEL_15:
    a3->__r_.__value_.__s.__data_[v4] = 0;
    goto LABEL_16;
  }

  v22 = v17->__r_.__value_.__r.__words[0];
  v17->__r_.__value_.__l.__size_ = v4;
  *(v22 + v4) = 0;
LABEL_16:
  if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = a3->__r_.__value_.__r.__words[0];
  }

  v19 = 16 * a2;
  v20 = (result + 8);
  do
  {
    v21 = *v20;
    if (*v20)
    {
      result = memcpy(v18, *(v20 - 1), *v20);
      v18 = (v18 + v21);
    }

    v20 += 2;
    v19 -= 16;
  }

  while (v19);
  return result;
}

void sub_23C976464(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::strings_internal::AppendPieces(std::string *result, uint64_t a2, uint64_t a3)
{
  v3 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if (v3 < 0)
  {
    size = result->__r_.__value_.__l.__size_;
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    size = SHIBYTE(result->__r_.__value_.__r.__words[2]);
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  v5 = (a3 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v5 > 3)
  {
    v8 = v5 + 1;
    v9 = v8 & 3;
    if ((v8 & 3) == 0)
    {
      v9 = 4;
    }

    v10 = v8 - v9;
    v7 = a2 + 16 * v10;
    v11 = (a2 + 40);
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = v11 - 4;
      v15 = vld2q_f64(v14);
      v16 = vld2q_f64(v11);
      v12 = vaddq_s64(v15, v12);
      v13 = vaddq_s64(v16, v13);
      v11 += 8;
      v10 -= 4;
    }

    while (v10);
    v6 = vaddvq_s64(vaddq_s64(v13, v12));
  }

  else
  {
    v6 = 0;
    v7 = a2;
  }

  do
  {
    v6 += *(v7 + 8);
    v7 += 16;
  }

  while (v7 != a2 + 16 * a3);
  if (v6)
  {
    if ((v3 & 0x80000000) != 0)
    {
      v18 = result->__r_.__value_.__l.__size_;
      v23 = result->__r_.__value_.__r.__words[2];
      v17 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v3 = HIBYTE(v23);
      if (v17 - v18 >= v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = 22;
      v18 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
      if (22 - v3 >= v6)
      {
LABEL_17:
        if ((v3 & 0x80) != 0)
        {
          v3 = result->__r_.__value_.__r.__words[0];
          v22 = v18 + v6;
          result->__r_.__value_.__l.__size_ = v18 + v6;
        }

        else
        {
          v22 = v18 + v6;
          *(&result->__r_.__value_.__s + 23) = (v18 + v6) & 0x7F;
          v3 = result;
        }

        *(v3 + v22) = 0;
        LOBYTE(v3) = *(&result->__r_.__value_.__s + 23);
        goto LABEL_23;
      }
    }

    v19 = a3;
    v20 = result;
    v21 = a2;
    std::string::__grow_by(result, v17, v6 - v17 + v18, v18, v18, 0, 0);
    result = v20;
    a3 = v19;
    a2 = v21;
    v20->__r_.__value_.__l.__size_ = v18;
    LOBYTE(v3) = *(&v20->__r_.__value_.__s + 23);
    goto LABEL_17;
  }

LABEL_23:
  if ((v3 & 0x80) != 0)
  {
    result = result->__r_.__value_.__r.__words[0];
  }

  if (a3)
  {
    v24 = result + size;
    v25 = 16 * a3;
    v26 = (a2 + 8);
    do
    {
      v27 = *v26;
      if (*v26)
      {
        result = memcpy(v24, *(v26 - 1), *v26);
        v24 += v27;
      }

      v26 += 2;
      v25 -= 16;
    }

    while (v25);
  }

  return result;
}

std::string *absl::lts_20240722::StrAppend(std::string *result, uint64_t a2)
{
  size = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = result->__r_.__value_.__l.__size_;
    v3 = (a2 + 8);
    v4 = *(a2 + 8);
    if (!v4)
    {
      goto LABEL_15;
    }

    v12 = result->__r_.__value_.__r.__words[2];
    v5 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v6 = HIBYTE(v12);
    if (v5 - size < v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = (a2 + 8);
    v4 = *(a2 + 8);
    if (!v4)
    {
      return result;
    }

    v5 = 22;
    LOBYTE(v6) = *(&result->__r_.__value_.__s + 23);
    if (22 - size < v4)
    {
LABEL_4:
      v7 = result;
      v8 = a2;
      std::string::__grow_by(result, v5, v4 - v5 + size, size, size, 0, 0);
      result = v7;
      a2 = v8;
      v7->__r_.__value_.__l.__size_ = size;
      LOBYTE(v6) = *(&v7->__r_.__value_.__s + 23);
    }
  }

  if ((v6 & 0x80) == 0)
  {
    *(&result->__r_.__value_.__s + 23) = (size + v4) & 0x7F;
    result->__r_.__value_.__s.__data_[size + v4] = 0;
    if ((SHIBYTE(result->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    result = result->__r_.__value_.__r.__words[0];
    v9 = *v3;
    if (!*v3)
    {
      return result;
    }

    goto LABEL_8;
  }

  v13 = result->__r_.__value_.__r.__words[0];
  result->__r_.__value_.__l.__size_ = size + v4;
  *(v13 + size + v4) = 0;
  if (SHIBYTE(result->__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v9 = *v3;
  if (!*v3)
  {
    return result;
  }

LABEL_8:
  v10 = *a2;
  v11 = result + size;

  return memcpy(v11, v10, v9);
}

std::string *absl::lts_20240722::StrAppend(std::string *result, uint64_t a2, uint64_t a3)
{
  size = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = result->__r_.__value_.__l.__size_;
    v6 = (a2 + 8);
    v7 = (a3 + 8);
    v8 = *(a3 + 8) + *(a2 + 8);
    if (!v8)
    {
      goto LABEL_12;
    }

    v13 = result->__r_.__value_.__r.__words[2];
    v9 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = HIBYTE(v13);
    if (v9 - size >= v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  v7 = (a3 + 8);
  v8 = *(a3 + 8) + v5;
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 22;
  LOBYTE(v10) = *(&result->__r_.__value_.__s + 23);
  if (22 - size < v8)
  {
LABEL_4:
    v11 = result;
    v12 = a2;
    std::string::__grow_by(result, v9, v8 - v9 + size, size, size, 0, 0);
    result = v11;
    a2 = v12;
    v11->__r_.__value_.__l.__size_ = size;
    LOBYTE(v10) = *(&v11->__r_.__value_.__s + 23);
  }

LABEL_5:
  if ((v10 & 0x80) != 0)
  {
    v14 = result->__r_.__value_.__r.__words[0];
    result->__r_.__value_.__l.__size_ = size + v8;
    *(v14 + size + v8) = 0;
    if ((SHIBYTE(result->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    result = result->__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  *(&result->__r_.__value_.__s + 23) = (size + v8) & 0x7F;
  result->__r_.__value_.__s.__data_[size + v8] = 0;
  if (SHIBYTE(result->__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v5 = *v6;
LABEL_14:
  v15 = result + size;
  if (v5)
  {
    result = memcpy(v15, *a2, v5);
  }

  v16 = *v7;
  if (*v7)
  {
    v17 = *a3;

    return memcpy(&v15[v5], v17, v16);
  }

  return result;
}

std::string *absl::lts_20240722::StrAppend(std::string *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  size = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = (a2 + 8);
    v8 = (a3 + 8);
    size = result->__r_.__value_.__l.__size_;
    v9 = (a4 + 8);
    v10 = *(a3 + 8) + *(a2 + 8) + *(a4 + 8);
    if (!v10)
    {
      goto LABEL_12;
    }

    v15 = result->__r_.__value_.__r.__words[2];
    v11 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v12 = HIBYTE(v15);
    if (v11 - size < v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = (a2 + 8);
    v8 = (a3 + 8);
    v9 = (a4 + 8);
    v10 = *(a3 + 8) + *(a2 + 8) + *(a4 + 8);
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = 22;
    LOBYTE(v12) = *(&result->__r_.__value_.__s + 23);
    if (22 - size < v10)
    {
LABEL_4:
      v13 = result;
      v14 = a2;
      std::string::__grow_by(result, v11, v10 - v11 + size, size, size, 0, 0);
      result = v13;
      a2 = v14;
      v13->__r_.__value_.__l.__size_ = size;
      LOBYTE(v12) = *(&v13->__r_.__value_.__s + 23);
    }
  }

  if ((v12 & 0x80) != 0)
  {
    v16 = result->__r_.__value_.__r.__words[0];
    result->__r_.__value_.__l.__size_ = size + v10;
    *(v16 + size + v10) = 0;
    if ((SHIBYTE(result->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(&result->__r_.__value_.__s + 23) = (size + v10) & 0x7F;
    result->__r_.__value_.__s.__data_[size + v10] = 0;
    if ((SHIBYTE(result->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_12:
  result = result->__r_.__value_.__r.__words[0];
LABEL_13:
  v17 = result + size;
  v18 = *v7;
  if (*v7)
  {
    result = memcpy(v17, *a2, *v7);
  }

  v19 = &v17[v18];
  v20 = *v8;
  if (*v8)
  {
    result = memcpy(v19, *a3, *v8);
  }

  v21 = *v9;
  if (*v9)
  {
    v22 = *a4;

    return memcpy(&v19[v20], v22, v21);
  }

  return result;
}

std::string *absl::lts_20240722::StrAppend(std::string *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if (v8 < 0)
  {
    size = result->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  }

  v10 = *(a3 + 8) + *(a2 + 8) + *(a4 + 8) + *(a5 + 8);
  if (!v10)
  {
    goto LABEL_14;
  }

  if ((v8 & 0x80000000) != 0)
  {
    v12 = result->__r_.__value_.__l.__size_;
    v16 = result->__r_.__value_.__r.__words[2];
    v11 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = HIBYTE(v16);
    if (v11 - v12 >= v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = 22;
  v12 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if (22 - v8 < v10)
  {
LABEL_7:
    v13 = result;
    v14 = a2;
    std::string::__grow_by(result, v11, v10 - v11 + v12, v12, v12, 0, 0);
    result = v13;
    a2 = v14;
    v13->__r_.__value_.__l.__size_ = v12;
    LOBYTE(v8) = *(&v13->__r_.__value_.__s + 23);
  }

LABEL_8:
  if ((v8 & 0x80) != 0)
  {
    v8 = result->__r_.__value_.__r.__words[0];
    v15 = v12 + v10;
    result->__r_.__value_.__l.__size_ = v12 + v10;
  }

  else
  {
    v15 = v12 + v10;
    *(&result->__r_.__value_.__s + 23) = (v12 + v10) & 0x7F;
    v8 = result;
  }

  *(v8 + v15) = 0;
  LOBYTE(v8) = *(&result->__r_.__value_.__s + 23);
LABEL_14:
  if ((v8 & 0x80) != 0)
  {
    result = result->__r_.__value_.__r.__words[0];
  }

  v17 = result + size;
  v18 = *(a2 + 8);
  if (v18)
  {
    result = memcpy(result + size, *a2, v18);
  }

  v19 = &v17[v18];
  v20 = *(a3 + 8);
  if (v20)
  {
    result = memcpy(v19, *a3, *(a3 + 8));
  }

  v21 = &v19[v20];
  v22 = *(a4 + 8);
  if (v22)
  {
    result = memcpy(v21, *a4, *(a4 + 8));
  }

  v23 = *(a5 + 8);
  if (v23)
  {
    v24 = *a5;

    return memcpy(&v21[v22], v24, v23);
  }

  return result;
}

char *absl::lts_20240722::ByChar::Find(char *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a3 > a4;
  v7 = a3 - a4;
  if (!v6)
  {
    return (a2 + a3);
  }

  result = memchr((a2 + a4), *a1, v7);
  v9 = &result[-a2];
  if (!result || v9 + 1 == 0)
  {
    return (a2 + a3);
  }

  if (a3 < v9)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  return result;
}

std::string *absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(std::string *result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!a3)
  {
    return result;
  }

  v8 = 0;
  for (i = 0; i < a3; ++i)
  {
    while (*(a2 + i) != 36)
    {
LABEL_4:
      ++v8;
      if (++i >= a3)
      {
        goto LABEL_10;
      }
    }

    if (++i >= a3)
    {
      return result;
    }

    v10 = *(a2 + i);
    if ((v10 - 48) > 9)
    {
      if (v10 != 36)
      {
        return result;
      }

      goto LABEL_4;
    }

    v11 = v10 - 48;
    if (v11 >= a5)
    {
      return result;
    }

    v8 += *(a4 + 16 * v11 + 8);
  }

LABEL_10:
  if (!v8)
  {
    return result;
  }

  size = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = result->__r_.__value_.__l.__size_;
    if (__CFADD__(size, v8))
    {
      goto LABEL_39;
    }

    v13 = size + v8;
    if (size >= size + v8)
    {
      goto LABEL_23;
    }

    v17 = result->__r_.__value_.__r.__words[2];
    v14 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v15 = HIBYTE(v17);
    if (v14 - size < v13 - size)
    {
LABEL_15:
      v16 = result;
      std::string::__grow_by(result, v14, v13 - v14, size, size, 0, 0);
      result = v16;
      v16->__r_.__value_.__l.__size_ = size;
      LOBYTE(v15) = *(&v16->__r_.__value_.__s + 23);
    }

LABEL_16:
    if ((v15 & 0x80) != 0)
    {
      v26 = result->__r_.__value_.__r.__words[0];
      result->__r_.__value_.__l.__size_ = v13;
      *(v26 + v13) = 0;
      if (SHIBYTE(result->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *(&result->__r_.__value_.__s + 23) = v13 & 0x7F;
      result->__r_.__value_.__s.__data_[v13] = 0;
      if (SHIBYTE(result->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v19 = 0;
    v20 = result + size;
    while (1)
    {
      v22 = *(a2 + v19);
      if (v22 == 36)
      {
        v21 = v19 + 1;
        v23 = *(a2 + v19 + 1);
        if ((v23 - 48) <= 9)
        {
          v24 = a4 + 16 * v23;
          v25 = *(v24 - 760);
          if (v25)
          {
            result = memmove(v20, *(v24 - 768), v25);
          }

          v20 += v25;
          goto LABEL_28;
        }

        if (v23 == 36)
        {
          *v20++ = 36;
          goto LABEL_28;
        }
      }

      else
      {
        *v20++ = v22;
      }

      v21 = v19;
LABEL_28:
      v19 = v21 + 1;
      if (v21 + 1 >= a3)
      {
        return result;
      }
    }
  }

  if (!__CFADD__(size, v8))
  {
    v13 = v8 + size;
    if (v8 + size > size)
    {
      v14 = 22;
      LOBYTE(v15) = *(&result->__r_.__value_.__s + 23);
      if (22 - size < v13 - size)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

LABEL_23:
    v18 = result;
    std::string::erase(result, v13, 0xFFFFFFFFFFFFFFFFLL);
    result = v18;
    if (v18[23] < 0)
    {
LABEL_24:
      result = result->__r_.__value_.__r.__words[0];
    }

    goto LABEL_25;
  }

LABEL_39:
  std::string::basic_string[abi:ne200100]<0>(&v31, "Check size <= std::numeric_limits<size_t>::max() - original_size failed: ");
  std::string::basic_string[abi:ne200100]<0>(__p, "size_t overflow");
  if ((v30 & 0x80u) == 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v28 = v30;
  }

  else
  {
    v28 = __p[1];
  }

  std::string::append(&v31, v27, v28);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  result = (atomic_load_explicit(absl::lts_20240722::raw_log_internal::internal_log_function, memory_order_acquire))(3, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/abseil-cpp-src/absl/strings/substitute.cc", 90, &v31);
  __break(1u);
  return result;
}

void sub_23C976F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::Symbolize(absl::lts_20240722 *this, char *a2, char *a3)
{
  result = 0;
  v42 = *MEMORY[0x277D85DE8];
  v40 = this;
  if (this)
  {
    LODWORD(v5) = a3;
    if (a3 >= 1)
    {
      v7 = backtrace_symbols(&v40, 1);
      v8 = v7;
      if (v7)
      {
        v9 = *v7;
        v10 = strlen(*v7);
        if (v10 >= 3)
        {
          v11 = v10;
          v12 = &v9[v10];
          v13 = v10;
          v14 = v9;
          do
          {
            v15 = memchr(v14, 32, v13 - 2);
            if (!v15)
            {
              break;
            }

            if (*v15 == 12320 && v15[2] == 120)
            {
              if (v15 != v12)
              {
                v17 = v15 - v9;
                if (v15 - v9 != -1)
                {
                  if (v11 <= v17)
                  {
                    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
                  }

                  v18 = v17 + 1;
                  v19 = v11 - v18;
                  if (v19 >= 1)
                  {
                    v20 = &v9[v18];
                    v21 = v19;
                    v22 = v20;
                    while (1)
                    {
                      v23 = memchr(v22, 32, v21);
                      if (!v23)
                      {
                        break;
                      }

                      if (*v23 == 32)
                      {
                        if (v23 != v12)
                        {
                          v24 = (v23 - v20);
                          if (v23 - v20 != -1)
                          {
                            if (v19 <= v24)
                            {
                              std::__throw_out_of_range[abi:ne200100]("string_view::substr");
                            }

                            v25 = v24 + 1;
                            v26 = v19 - v25;
                            if (v26 >= 3)
                            {
                              v27 = &v25[v20];
                              v28 = v26;
                              v29 = v27;
                              while (1)
                              {
                                v30 = memchr(v29, 32, v28 - 2);
                                if (!v30)
                                {
                                  break;
                                }

                                if (*v30 == 11040 && v30[2] == 32)
                                {
                                  if (v30 == v12 || v30 - v27 == -1)
                                  {
                                    goto LABEL_43;
                                  }

                                  if (v26 >= v30 - v27)
                                  {
                                    v26 = v30 - v27;
                                  }

                                  if (v26 >= 0x7FFFFFFFFFFFFFF8)
                                  {
                                    std::string::__throw_length_error[abi:ne200100]();
                                  }

                                  if (v26 >= 0x17)
                                  {
                                    operator new();
                                  }

                                  HIBYTE(v39) = v26;
                                  if (v30 != v27)
                                  {
                                    memmove(__p, v27, v26);
                                  }

                                  *(__p + v26) = 0;
                                  if (v39 >= 0)
                                  {
                                    v32 = __p;
                                  }

                                  else
                                  {
                                    v32 = __p[0];
                                  }

                                  goto LABEL_44;
                                }

                                v29 = (v30 + 1);
                                v28 = v12 - v29;
                                if (v12 - v29 < 3)
                                {
                                  goto LABEL_43;
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_43;
                      }

                      v22 = (v23 + 1);
                      v21 = v12 - v22;
                      if (v12 - v22 < 1)
                      {
                        goto LABEL_43;
                      }
                    }
                  }
                }
              }

              break;
            }

            v14 = v15 + 1;
            v13 = v12 - v14;
          }

          while (v12 - v14 >= 3);
        }

LABEL_43:
        __p[0] = 0;
        __p[1] = 0;
        v32 = __p;
        v39 = 0;
LABEL_44:
        free(v8);
        if (absl::lts_20240722::debugging_internal::Demangle(v32, __s, 0x400))
        {
          v33 = strlen(__s) + 1;
          v5 = v5;
          if (v33 <= v5)
          {
            memcpy(a2, __s, v33);
          }
        }

        else
        {
          if (v39 >= 0)
          {
            v34 = __p;
          }

          else
          {
            v34 = __p[0];
          }

          v5 = v5;
          strncpy(a2, v34, v5);
        }

        v35 = &a2[v5];
        if (*(v35 - 1))
        {
          if ((v5 - 1) >= 3)
          {
            v36 = 3;
          }

          else
          {
            v36 = v5 - 1;
          }

          memcpy(&v35[-v36 - 1], "...", v36);
          *(v35 - 1) = 0;
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }

        result = 1;
      }

      else
      {
        result = 0;
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C977324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *absl::lts_20240722::BlockingCounter::BlockingCounter(_DWORD *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = 0;
  this[2] = a2;
  this[3] = 0;
  *(this + 16) = a2 == 0;
  if (a2 < 0)
  {
    this = absl::lts_20240722::raw_log_internal::RawLog(3, "blocking_counter.cc", 35, "Check %s failed: %s", a5, a6, a7, a8, "initial_count >= 0");
    __break(1u);
  }

  return this;
}

BOOL absl::lts_20240722::BlockingCounter::DecrementCount(atomic_uint *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  add = atomic_fetch_add(this + 2, 0xFFFFFFFF);
  if (add <= 0)
  {
    absl::lts_20240722::BlockingCounter::DecrementCount(this, a2, a3, a4, a5, a6, a7, a8);
  }

  if (add == 1)
  {
    absl::lts_20240722::Mutex::Lock(this);
    *(this + 16) = 1;
    absl::lts_20240722::Mutex::Unlock(this);
  }

  return add == 1;
}

void absl::lts_20240722::BlockingCounter::Wait(atomic_ullong *this)
{
  v7[4] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(this);
  if (*(this + 3))
  {
    absl::lts_20240722::raw_log_internal::RawLog(3, "blocking_counter.cc", 55, "Check %s failed: %s", v2, v3, v4, v5, "num_waiting_ == 0");
    __break(1u);
  }

  *(this + 3) = 1;
  absl::lts_20240722::Mutex::AwaitCommon(this, v7, -1);
  absl::lts_20240722::Mutex::Unlock(this);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C977508(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unint64_t absl::lts_20240722::synchronization_internal::CreateThreadIdentity(absl::lts_20240722::synchronization_internal *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = _MergedGlobals_45;
  if ((_MergedGlobals_45 & 1) == 0)
  {
    atomic_compare_exchange_strong_explicit(&_MergedGlobals_45, &v8, v8 | 1, memory_order_acquire, memory_order_acquire);
    if ((v8 & 1) == 0)
    {
      v9 = qword_2810C1540;
      if (!qword_2810C1540)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  absl::lts_20240722::base_internal::SpinLock::SlowLock(&_MergedGlobals_45);
  v9 = qword_2810C1540;
  if (qword_2810C1540)
  {
LABEL_4:
    qword_2810C1540 = *(v9 + 344);
  }

LABEL_5:
  v10 = atomic_exchange_explicit(&_MergedGlobals_45, _MergedGlobals_45 & 2, memory_order_release);
  if (v10 >= 8)
  {
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(&_MergedGlobals_45, v10);
  }

  if (!v9)
  {
    v9 = (absl::lts_20240722::base_internal::LowLevelAlloc::Alloc(0x25F, v10, a3, a4, a5, a6, a7, a8) + 255) & 0xFFFFFFFFFFFFFF00;
    AbslInternalPerThreadSemInit_lts_20240722(v9);
    *(v9 + 328) = 0;
    *(v9 + 332) = 0;
    *(v9 + 336) = 0;
  }

  *(v9 + 20) = 0;
  *(v9 + 24) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 28) = 0;
  *(v9 + 19) = 0;
  *(v9 + 17) = 0;
  *(v9 + 56) = 0;
  *(v9 + 320) = 0;
  *(v9 + 328) = 0;
  *(v9 + 332) = 0;
  *(v9 + 336) = 0;
  *(v9 + 344) = 0;
  absl::lts_20240722::base_internal::SetCurrentThreadIdentity(v9);
  return v9;
}

void absl::lts_20240722::synchronization_internal::ReclaimThreadIdentity(absl::lts_20240722::synchronization_internal *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 7);
  if (v9)
  {
    absl::lts_20240722::base_internal::LowLevelAlloc::Free(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  absl::lts_20240722::base_internal::ClearCurrentThreadIdentity(v9);
  v10 = _MergedGlobals_45;
  if (_MergedGlobals_45 & 1) != 0 || (atomic_compare_exchange_strong_explicit(&_MergedGlobals_45, &v10, v10 | 1, memory_order_acquire, memory_order_acquire), (v10))
  {
    absl::lts_20240722::base_internal::SpinLock::SlowLock(&_MergedGlobals_45);
  }

  *(this + 43) = qword_2810C1540;
  qword_2810C1540 = this;
  v11 = atomic_exchange_explicit(&_MergedGlobals_45, _MergedGlobals_45 & 2, memory_order_release);
  if (v11 >= 8)
  {
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(&_MergedGlobals_45, v11);
  }
}

uint64_t absl::lts_20240722::synchronization_internal::MutexDelay(absl::lts_20240722::synchronization_internal *this, int a2)
{
  v2 = this;
  {
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = v3 == v2;
    if (v3 > v2)
    {
      return (v2 + 1);
    }

    goto LABEL_7;
  }

  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = v3 == v2;
  if (v3 > v2)
  {
    return (v2 + 1);
  }

LABEL_7:
  if (v4)
  {
    AbslInternalMutexYield_lts_20240722();
    return (v2 + 1);
  }

  else
  {
    AbslInternalSleepFor_lts_20240722(qword_2810C0ED0, dword_2810C0ED8);
    return 0;
  }
}

void absl::lts_20240722::base_internal::SchedulingGuard::ScopedEnable::~ScopedEnable(absl::lts_20240722::base_internal::SchedulingGuard::ScopedEnable *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this)
  {
    absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_scheduling.h", 127, "Check %s failed: %s", a5, a6, a7, a8, "scheduling_disabled_depth_ == 0");
    __break(1u);
  }
}

void absl::lts_20240722::Mutex::TryRemove(atomic_ullong *a1, uint64_t a2)
{
  v2 = *a1;
  if ((*a1 & 0x4D) != 4)
  {
    return;
  }

  v3 = *a1;
  atomic_compare_exchange_strong_explicit(a1, &v3, v2 | 0x48, memory_order_acquire, memory_order_acquire);
  if (v3 != v2)
  {
    return;
  }

  v4 = v2 & 0xFFFFFFFFFFFFFF00;
  if (!v4)
  {
    goto LABEL_55;
  }

  v5 = *v4;
  if (*v4 == a2)
  {
    v18 = v4;
    goto LABEL_37;
  }

  v6 = *(a2 + 32);
  v7 = *v6;
  do
  {
    v8 = *(v5 + 32);
    if (v7 == *v8 && *(a2 + 24) == *(v5 + 24))
    {
      v9 = v6[1];
      v10 = v8[1];
      if (v9)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (v9 == v10)
        {
          goto LABEL_14;
        }
      }

      else if (v9[2] == v10[2] && v9[3] == v10[3])
      {
        v14 = *v9;
        v13 = v9[1];
        v16 = *v10;
        v15 = v10[1];
        if (v14 == v16 && v13 == v15)
        {
LABEL_14:
          if (*(v5 + 8) == a2)
          {
            v12 = *(a2 + 8);
            if (!v12)
            {
              v12 = *v5;
              if (*v5 == a2)
              {
                v12 = 0;
              }
            }

            *(v5 + 8) = v12;
          }

LABEL_31:
          v18 = v5;
          v5 = *v5;
          if (v18 == v4)
          {
            break;
          }

          continue;
        }
      }
    }

    v18 = *(v5 + 8);
    if (!v18)
    {
      goto LABEL_31;
    }

    v19 = *(v18 + 8);
    if (v19)
    {
      v20 = v5;
      do
      {
        v21 = v18;
        v18 = v19;
        *(v20 + 8) = v19;
        v19 = *(v19 + 8);
        v20 = v21;
      }

      while (v19);
    }

    *(v5 + 8) = v18;
    v5 = *v18;
    if (v18 == v4)
    {
      break;
    }
  }

  while (v5 != a2);
  if (v5 != a2)
  {
    do
    {
LABEL_34:
      v22 = *a1;
      v23 = *a1 & 0x12 | v4 | 4;
      *(v4 + 40) = 0;
      *(v4 + 19) = 0;
      v24 = v22;
      atomic_compare_exchange_strong_explicit(a1, &v24, v23, memory_order_release, memory_order_relaxed);
    }

    while (v24 != v22);
    return;
  }

LABEL_37:
  v25 = *v5;
  *v18 = *v5;
  if (v5 == v4)
  {
    if (v18 == v4)
    {
      v4 = 0;
    }

    else
    {
      v4 = v18;
    }
  }

  else if (v18 != v4)
  {
    v26 = *(v18 + 32);
    v27 = *(v25 + 32);
    if (*v26 == *v27 && *(v18 + 24) == *(v25 + 24))
    {
      v28 = v26[1];
      v29 = v27[1];
      if (v28 && v29)
      {
        if (v28[2] != v29[2] || v28[3] != v29[3])
        {
          goto LABEL_54;
        }

        v31 = *v28;
        v30 = v28[1];
        v33 = *v29;
        v32 = v29[1];
        if (v31 != v33 || v30 != v32)
        {
          goto LABEL_54;
        }

LABEL_58:
        v37 = *(v25 + 8);
        if (v37)
        {
          *(v18 + 8) = v37;
        }

        else
        {
          *(v18 + 8) = v25;
        }
      }

      else if (v28 == v29)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_54:
  *a2 = 0;
  atomic_store(0, (a2 + 28));
  if (v4)
  {
    goto LABEL_34;
  }

  do
  {
LABEL_55:
    v35 = *a1;
    v36 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v36, *a1 & 0x12, memory_order_release, memory_order_relaxed);
  }

  while (v36 != v35);
}

BOOL absl::lts_20240722::MuEquivalentWaiter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (*v2 != *v3 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v4 = v2[1];
  v5 = v3[1];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return v4 == v5;
  }

  if (v4[2] != v5[2] || v4[3] != v5[3])
  {
    return 0;
  }

  v9 = *v4;
  v8 = v4[1];
  v11 = *v5;
  v10 = v5[1];
  return v9 == v11 && v8 == v10;
}

void absl::lts_20240722::Mutex::Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit((a2 + 28), memory_order_acquire) == 1)
  {
    v9 = a1;
    do
    {
      a1 = AbslInternalPerThreadSemWait_lts_20240722(*(*(a2 + 32) + 16));
      if ((a1 & 1) == 0)
      {
        absl::lts_20240722::Mutex::TryRemove(v9, a2);
        if (*a2)
        {
          v11 = 0;
          while (1)
          {
            {
              v12 = dword_2810C0ECC;
              {
                goto LABEL_12;
              }
            }

            else
            {
              v12 = dword_2810C0ECC;
              {
LABEL_12:
                v13 = v12 == v11;
                if (v12 > v11)
                {
                  goto LABEL_9;
                }

                goto LABEL_13;
              }
            }

            v13 = v12 == v11;
            if (v12 > v11)
            {
              goto LABEL_9;
            }

LABEL_13:
            if (v13)
            {
              AbslInternalMutexYield_lts_20240722();
LABEL_9:
              ++v11;
              absl::lts_20240722::Mutex::TryRemove(v9, a2);
              if (!*a2)
              {
                break;
              }
            }

            else
            {
              AbslInternalSleepFor_lts_20240722(qword_2810C0ED0, dword_2810C0ED8);
              v11 = 0;
              absl::lts_20240722::Mutex::TryRemove(v9, a2);
              if (!*a2)
              {
                break;
              }
            }
          }
        }

        v10 = *(a2 + 32);
        *(v10 + 8) = 0;
        *(v10 + 16) = -1;
      }
    }

    while (atomic_load_explicit((a2 + 28), memory_order_acquire) == 1);
  }

  if (!*(a2 + 32) && (*(a2 + 20) & 1) == 0)
  {
    absl::lts_20240722::Mutex::Block(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a2 + 32) = 0;
}

{
  absl::lts_20240722::raw_log_internal::RawLog(3, "mutex.cc", 1194, "Check %s failed: %s", a5, a6, a7, a8, "s->waitp != nullptr || s->suppress_fatal_errors");
  __break(1u);
}

atomic_ullong *absl::lts_20240722::Mutex::Lock(atomic_ullong *this)
{
  v1 = *this;
  if ((*this & 0x19) != 0)
  {
    return absl::lts_20240722::Mutex::Lock(this);
  }

  v2 = *this;
  atomic_compare_exchange_strong_explicit(this, &v2, v1 | 8, memory_order_acquire, memory_order_acquire);
  if (v2 != v1)
  {
    return absl::lts_20240722::Mutex::Lock(this);
  }

  return this;
}

absl::lts_20240722::base_internal *absl::lts_20240722::Mutex::ReaderLock(absl::lts_20240722::base_internal *this)
{
  v1 = *this;
  if ((*this & 0x1CLL) != 0)
  {
    return absl::lts_20240722::Mutex::ReaderLock(this);
  }

  v2 = *this;
  while (1)
  {
    atomic_compare_exchange_strong_explicit(this, &v2, (v1 | 1) + 256, memory_order_acquire, memory_order_acquire);
    if (v2 == v1)
    {
      break;
    }

    v1 = v2;
    if ((v2 & 0x1C) != 0)
    {
      return absl::lts_20240722::Mutex::ReaderLock(this);
    }
  }

  return this;
}

uint64_t absl::lts_20240722::Mutex::LockWhenCommon(atomic_ullong *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = absl::lts_20240722::kExclusiveS;
  }

  else
  {
    v6 = absl::lts_20240722::kSharedS;
  }

  return absl::lts_20240722::Mutex::LockSlowWithDeadline(a1, v6, a2, a3, 0);
}

uint64_t absl::lts_20240722::Mutex::LockSlowWithDeadline(atomic_ullong *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = a1;
  v10 = *a1;
  if ((*a2 & *a1) != 0)
  {
    goto LABEL_8;
  }

  v11 = -3;
  if ((a5 & 1) == 0)
  {
    v11 = -1;
  }

  v12 = *a1;
  atomic_compare_exchange_strong_explicit(a1, &v12, (a2[1] | v10 & v11) + a2[2], memory_order_acquire, memory_order_acquire);
  if (v12 != v10)
  {
LABEL_8:
    LODWORD(v13) = 0;
  }

  else
  {
    if (!a3)
    {
      return 1;
    }

    a1 = (*(a3 + 16))(a3);
    v13 = 1;
    if (a1)
    {
      return v13;
    }
  }

  ThreadIdentity = absl::lts_20240722::base_internal::CurrentThreadIdentityIfPresent(a1);
  if (!ThreadIdentity)
  {
    ThreadIdentity = absl::lts_20240722::synchronization_internal::CreateThreadIdentity(0, v15, v16, v17, v18, v19, v20, v21);
  }

  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = 0;
  v45 = ThreadIdentity;
  v46 = 0;
  rep = absl::lts_20240722::base_internal::CycleClock::Now().__d_.__rep_;
  v48 = 0;
  if (a3)
  {
    v27 = a5 | 2;
  }

  else
  {
    v27 = a5;
  }

  if (v13)
  {
    v29 = v27;
    absl::lts_20240722::Mutex::UnlockSlow(v9, &v41);
    absl::lts_20240722::Mutex::Block(v9, v45, v30, v31, v32, v33, v34, v35);
    absl::lts_20240722::Mutex::LockSlowLoop(v9, &v41, v29 | 1u, v36, v37, v38, v39, v40);
    v13 = 1;
    if (!a3)
    {
      return v13;
    }
  }

  else
  {
    absl::lts_20240722::Mutex::LockSlowLoop(v9, &v41, v27, v22.__d_.__rep_, v23.__d_.__rep_, v24.__d_.__rep_, v25.__d_.__rep_, v26.__d_.__rep_);
    v13 = 1;
    if (!a3)
    {
      return v13;
    }
  }

  if (!v42)
  {
    return (*(a3 + 16))(a3);
  }

  return v13;
}

uint64_t absl::lts_20240722::Mutex::AwaitCommon(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a2 + 16))(a2);
  if (v6)
  {
    return 1;
  }

  if ((*a1 & 8) != 0)
  {
    v8 = absl::lts_20240722::kExclusiveS;
  }

  else
  {
    v8 = absl::lts_20240722::kSharedS;
  }

  ThreadIdentity = absl::lts_20240722::base_internal::CurrentThreadIdentityIfPresent(v6);
  if (!ThreadIdentity)
  {
    ThreadIdentity = absl::lts_20240722::synchronization_internal::CreateThreadIdentity(0, v10, v11, v12, v13, v14, v15, v16);
  }

  v36 = v8;
  v37 = a2;
  v38 = a3;
  v39 = 0;
  v40 = ThreadIdentity;
  v41 = 0;
  rep = absl::lts_20240722::base_internal::CycleClock::Now().__d_.__rep_;
  v43 = 0;
  absl::lts_20240722::Mutex::UnlockSlow(a1, &v36);
  absl::lts_20240722::Mutex::Block(a1, v40, v17, v18, v19, v20, v21, v22);
  absl::lts_20240722::Mutex::LockSlowLoop(a1, &v36, 3, v23, v24, v25, v26, v27);
  if (v37)
  {
    return 1;
  }

  v28 = (*(a2 + 16))(a2);
  if (v28)
  {
    return 1;
  }

  if (a3 == -1)
  {
    absl::lts_20240722::Mutex::AwaitCommon(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  return 0;
}

void absl::lts_20240722::Mutex::LockSlowLoop(uint64_t this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = this;
  if ((*this & 0x10) != 0)
  {
    if (*a2 == &absl::lts_20240722::kExclusiveS)
    {
      v11 = 4;
    }

    else
    {
      v11 = 6;
    }

    absl::lts_20240722::PostSynchEvent(this, v11, a3, a4, a5, a6, a7, a8);
  }

  v12 = a2[4];
  if (*(v12 + 32) && (*(v12 + 20) & 1) == 0)
  {
    absl::lts_20240722::Mutex::LockSlowLoop(this, a2, a3, a4, a5, a6, a7, a8);
  }

  v13 = 0;
  while (1)
  {
    v14 = *v10;
    if ((*v10 & ((8 * *v10) ^ 0x20) & 0x28) != 0)
    {
      this = absl::lts_20240722::Mutex::LockSlowLoop(*v10, a2, a3, a4, a5, a6, a7, a8);
      v15 = *a2;
      if ((*(*a2 + 24) & v14) == 0)
      {
LABEL_43:
        v34 = -3;
        if ((v8 & 1) == 0)
        {
          v34 = -1;
        }

        v35 = (v15[1] | v34 & v14) + v15[2];
        v36 = v14;
        atomic_compare_exchange_strong_explicit(v10, &v36, v35, memory_order_acquire, memory_order_acquire);
        if (v36 != v14)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v15 = *a2;
      if ((*(*a2 + 24) & v14) == 0)
      {
        goto LABEL_43;
      }
    }

    if ((v14 & 0x44) != 0)
    {
      break;
    }

    this = absl::lts_20240722::Enqueue(0, a2, v14, v8, a5, a6, a7, a8);
    if (!this)
    {
      absl::lts_20240722::Mutex::LockSlowLoop(0, a2, a3, a4, a5, a6, a7, a8);
    }

    v26 = 185;
    if ((v8 & 1) == 0)
    {
      v26 = 187;
    }

    v27 = v26 & v14;
    v28 = v27 | 4;
    v29 = v27 | 0x24;
    if ((v14 & 1) == 0)
    {
      v29 = v28;
    }

    if (*a2 != &absl::lts_20240722::kExclusiveS)
    {
      v29 = v28;
    }

    v30 = v14;
    atomic_compare_exchange_strong_explicit(v10, &v30, v29 | this, memory_order_release, memory_order_relaxed);
    if (v30 != v14)
    {
      *(a2[4] + 32) = 0;
      goto LABEL_50;
    }

LABEL_49:
    absl::lts_20240722::Mutex::Block(v10, a2[4], a3, a4, a5, a6, a7, a8);
    v13 = 0;
    v8 = v8 | 1;
LABEL_50:
    v38 = a2[4];
    if (*(v38 + 32) && (*(v38 + 20) & 1) == 0)
    {
      absl::lts_20240722::Mutex::LockSlowLoop(this, a2, a3, a4, a5, a6, a7, a8);
    }

    {
      v39 = dword_2810C0ECC;
      {
        goto LABEL_54;
      }

LABEL_59:
      v40 = v39 == v13;
      if (v39 <= v13)
      {
        goto LABEL_55;
      }

LABEL_9:
      ++v13;
    }

    else
    {
      v39 = dword_2810C0ECC;
      {
        goto LABEL_59;
      }

LABEL_54:
      v40 = v39 == v13;
      if (v39 > v13)
      {
        goto LABEL_9;
      }

LABEL_55:
      if (v40)
      {
        this = AbslInternalMutexYield_lts_20240722();
        ++v13;
      }

      else
      {
        this = AbslInternalSleepFor_lts_20240722(qword_2810C0ED0, dword_2810C0ED8);
        v13 = 0;
      }
    }
  }

  v16 = v15[4];
  v17 = -33;
  if ((v8 & 1) == 0)
  {
    v17 = -1;
  }

  if ((v17 & v14 & v16) != 0)
  {
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_50;
    }

    v18 = -71;
    if ((v8 & 1) == 0)
    {
      v18 = -69;
    }

    v19 = v14;
    atomic_compare_exchange_strong_explicit(v10, &v19, v18 & v14 | 0x44, memory_order_acquire, memory_order_acquire);
    if (v19 != v14)
    {
      goto LABEL_50;
    }

    v20 = absl::lts_20240722::Enqueue(v14 & 0xFFFFFFFFFFFFFF00, a2, v14, v8, a5, a6, a7, a8);
    if (!v20)
    {
      absl::lts_20240722::Mutex::LockSlowLoop(0, v21, a3, a4, a5, a6, a7, a8);
    }

    if (*a2 == &absl::lts_20240722::kExclusiveS)
    {
      v22 = 32 * (v14 & 1);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 | v20;
    do
    {
      v24 = *v10;
      v25 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v25, v23 | *v10 & 0xBB | 4, memory_order_release, memory_order_relaxed);
    }

    while (v25 != v24);
    goto LABEL_49;
  }

  v31 = -68;
  if ((v8 & 1) == 0)
  {
    v31 = -66;
  }

  v32 = v14;
  atomic_compare_exchange_strong_explicit(v10, &v32, v31 & v14 | 0x41, memory_order_acquire, memory_order_acquire);
  if (v32 != v14)
  {
    goto LABEL_50;
  }

  *((v14 & 0xFFFFFFFFFFFFFF00) + 0x28) += 256;
  do
  {
    v14 = *v10;
    v33 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v33, *v10 & 0xFFFFFFFFFFFFFFBELL | 1, memory_order_release, memory_order_relaxed);
  }

  while (v33 != v14);
LABEL_46:
  v37 = a2[1];
  if (v37)
  {
    v37 = (*(v37 + 16))();
    if ((v37 & 1) == 0)
    {
      absl::lts_20240722::Mutex::UnlockSlow(v10, a2);
      goto LABEL_49;
    }
  }

  v41 = a2[4];
  if (*(v41 + 32) && (*(v41 + 20) & 1) == 0)
  {
    absl::lts_20240722::Mutex::LockSlowLoop(v37, a2, a3, a4, a5, a6, a7, a8);
  }

  if ((v14 & 0x10) != 0)
  {
    if (*a2 == &absl::lts_20240722::kExclusiveS)
    {
      v42 = 5;
    }

    else
    {
      v42 = 7;
    }

    absl::lts_20240722::PostSynchEvent(v10, v42, a3, a4, a5, a6, a7, a8);
  }
}

void absl::lts_20240722::PostSynchEvent(unint64_t this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v31 = *MEMORY[0x277D85DE8];
  v10 = this % 0x407;
  v11 = &absl::lts_20240722::synch_event[856];
  v12 = dword_27E25F584;
  if (dword_27E25F584 & 1) != 0 || (atomic_compare_exchange_strong_explicit(&dword_27E25F584, &v12, v12 | 1, memory_order_acquire, memory_order_acquire), (v12))
  {
    absl::lts_20240722::base_internal::SpinLock::SlowLock(&dword_27E25F584);
    v13 = absl::lts_20240722::synch_event[v10];
    if (v13)
    {
LABEL_4:
      while ((*(v13 + 16) ^ this) != 0xF03A5F7BF03A5F7BLL)
      {
        v13 = *(v13 + 8);
        if (!v13)
        {
          goto LABEL_8;
        }
      }

      ++*v13;
    }
  }

  else
  {
    v13 = absl::lts_20240722::synch_event[v10];
    if (v13)
    {
      goto LABEL_4;
    }
  }

LABEL_8:
  v14 = atomic_exchange_explicit(&dword_27E25F584, dword_27E25F584 & 2, memory_order_release);
  if (v14 >= 8)
  {
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(&dword_27E25F584, v14);
    if (!v13)
    {
LABEL_11:
      memset(v30, 0, sizeof(v30));
      StackTrace = absl::lts_20240722::GetStackTrace(v30, 0x28, 1);
      strcpy(v29, " @");
      if (StackTrace)
      {
        v20 = StackTrace;
        v21 = 2;
        v22 = v30;
        do
        {
          v23 = snprintf(&v29[v21], 960 - v21, " %p", *v22);
          if ((v23 & 0x80000000) != 0)
          {
            break;
          }

          if (960 - v21 <= v23)
          {
            break;
          }

          v21 += v23;
          ++v22;
          --v20;
        }

        while (v20);
      }

      absl::lts_20240722::raw_log_internal::RawLog(0, "mutex.cc", 452, "%s%p %s %s", v16, v17, v18, v19, *(&absl::lts_20240722::event_properties + 2 * v8 + 1));
      v11 = (absl::lts_20240722::synch_event + 6848);
      if (!v13 || (*(&absl::lts_20240722::event_properties + 4 * v8) & 2) == 0)
      {
        if (!v13)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else if (!v13)
  {
    goto LABEL_11;
  }

  if (*(v13 + 40) == 1)
  {
    goto LABEL_11;
  }

  if ((*(&absl::lts_20240722::event_properties + 16 * v8) & 2) != 0)
  {
LABEL_21:
    v24 = *(v13 + 24);
    if (v24)
    {
      v24(*(v13 + 32));
    }
  }

LABEL_23:
  v25 = v11[353];
  if (v25 & 1) != 0 || (atomic_compare_exchange_strong_explicit(&dword_27E25F584, &v25, v25 | 1, memory_order_acquire, memory_order_acquire), (v25))
  {
    absl::lts_20240722::base_internal::SpinLock::SlowLock(&dword_27E25F584);
  }

  v26 = *v13 - 1;
  *v13 = v26;
  v27 = atomic_exchange_explicit(&dword_27E25F584, dword_27E25F584 & 2, memory_order_release);
  if (v27 >= 8)
  {
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(&dword_27E25F584, v27);
  }

  if (!v26)
  {
    absl::lts_20240722::base_internal::LowLevelAlloc::Free(v13, v27, a3, a4, a5, a6, a7, a8);
  }

LABEL_30:
  v28 = *MEMORY[0x277D85DE8];
}

void absl::lts_20240722::Mutex::Unlock(absl::lts_20240722::Mutex *this)
{
  v1 = *this;
  if (((*this ^ 0xC) & 0x18u) >= ((*this ^ 0xC) & 6) || (v2 = *this, atomic_compare_exchange_strong_explicit(this, &v2, v1 & 0xFFFFFFFFFFFFFFD7, memory_order_release, memory_order_relaxed), v2 != v1))
  {
    absl::lts_20240722::Mutex::UnlockSlow(this, 0);
  }
}

void absl::lts_20240722::Mutex::ReaderUnlock(atomic_ullong *this)
{
  v1 = *this;
  if ((*this & 0x15) == 1)
  {
    v2 = *this;
    while (1)
    {
      v3 = v1 < 0x200 ? -257 : -256;
      atomic_compare_exchange_strong_explicit(this, &v2, v3 + v1, memory_order_release, memory_order_relaxed);
      if (v2 == v1)
      {
        break;
      }

      v1 = v2;
      if ((v2 & 0x15) != 1)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    absl::lts_20240722::Mutex::UnlockSlow(this, 0);
  }
}