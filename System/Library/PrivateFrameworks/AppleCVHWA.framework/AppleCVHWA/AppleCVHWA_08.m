void sub_1E5464BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if (a18 < 0)
    {
LABEL_5:
      operator delete(a13);
      if (a30 < 0)
      {
LABEL_8:
        operator delete(a25);
        if ((a24 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a24 & 0x80000000) == 0)
      {
LABEL_9:
        if (a43 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(a19);
      if (a43 < 0)
      {
LABEL_10:
        operator delete(a38);
        _Unwind_Resume(a1);
      }

LABEL_13:
      _Unwind_Resume(a1);
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_5;
  }

  if (a30 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

uint64_t sub_1E5464D78(void *a1, char *__s)
{
  v51[2] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0uLL;
  v2 = a1[2];
  if (!v2 || (v4 = a1[3]) == 0)
  {
    v30 = 1;
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      return v30;
    }

LABEL_97:
    operator delete(v47);
    return v30;
  }

  v6 = 0;
  while (!v4)
  {
LABEL_94:
    ++v6;
    v30 = 1;
    if (v6 >= v2)
    {
      goto LABEL_100;
    }
  }

  v7 = 0;
  while (1)
  {
    v8 = strlen(__s);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v43) = v8;
    if (v8)
    {
      memcpy(&__dst, __s, v8);
    }

    *(&__dst + v9) = 0;
    if ((v43 & 0x8000000000000000) == 0)
    {
      v10 = 22;
    }

    else
    {
      v10 = (v43 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v43 & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v43);
    }

    else
    {
      v11 = *(&__dst + 1);
    }

    if ((v10 - v11) < 9)
    {
      if (0x7FFFFFFFFFFFFFF6 - v10 >= (v11 + 9 - v10))
      {
        operator new();
      }

      sub_1E53DF584();
    }

    p_dst = &__dst;
    if ((v43 & 0x8000000000000000) != 0)
    {
      p_dst = __dst;
    }

    v13 = p_dst + v11;
    *v13 = *"/DesGenGP";
    v13[8] = 80;
    v14 = v11 + 9;
    if (SHIBYTE(v43) < 0)
    {
      *(&__dst + 1) = v11 + 9;
    }

    else
    {
      HIBYTE(v43) = v14 & 0x7F;
    }

    v39 = v7;
    *(p_dst + v14) = 0;
    *v44 = __dst;
    v45 = v43;
    v43 = 0;
    __dst = 0uLL;
    __ptr[6] = 0;
    std::to_string(&v50, v7 + v4 * v6);
    v41 = v50;
    __src = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
    v38 = v50.__r_.__value_.__r.__words[0];
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v41;
    }

    else
    {
      v15 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    if ((v45 & 0x8000000000000000) == 0)
    {
      v17 = 22;
    }

    else
    {
      v17 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v45 & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v45);
    }

    else
    {
      v18 = v44[1];
    }

    if (v17 - v18 < size)
    {
      if (0x7FFFFFFFFFFFFFF6 - v17 >= &v18[size - v17])
      {
        operator new();
      }

      sub_1E53DF584();
    }

    if (size)
    {
      if ((v45 & 0x8000000000000000) == 0)
      {
        v19 = v44;
      }

      else
      {
        v19 = v44[0];
      }

      memmove(&v18[v19], v15, size);
      v20 = &v18[size];
      if (SHIBYTE(v45) < 0)
      {
        v44[1] = &v18[size];
      }

      else
      {
        HIBYTE(v45) = v20 & 0x7F;
      }

      v20[v19] = 0;
    }

    v46[2] = v45;
    *v46 = *v44;
    v44[1] = 0;
    v45 = 0;
    v44[0] = 0;
    if (SHIBYTE(v46[2]) >= 0)
    {
      v21 = 22;
    }

    else
    {
      v21 = (v46[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (SHIBYTE(v46[2]) >= 0)
    {
      v22 = (v46[2] >> 56);
    }

    else
    {
      v22 = v46[1];
    }

    if (v21 - v22 < 8)
    {
      if (0x7FFFFFFFFFFFFFF6 - v21 >= &v22[-v21 + 8])
      {
        operator new();
      }

      sub_1E53DF584();
    }

    v23 = v46;
    if (SHIBYTE(v46[2]) < 0)
    {
      v23 = v46[0];
    }

    *&v22[v23] = 0x746C73722E74754FLL;
    v24 = v22 + 8;
    if (SHIBYTE(v46[2]) < 0)
    {
      v46[1] = v22 + 8;
    }

    else
    {
      HIBYTE(v46[2]) = v24 & 0x7F;
    }

    v24[v23] = 0;
    v25 = v46[0];
    v51[0] = v46[1];
    *(v51 + 7) = *(&v46[1] + 7);
    v26 = HIBYTE(v46[2]);
    memset(v46, 0, sizeof(v46));
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
      v47 = v25;
      *&v48 = v51[0];
      *(&v48 + 7) = *(v51 + 7);
      HIBYTE(v48) = v26;
      if (SHIBYTE(v46[2]) < 0)
      {
        operator delete(v46[0]);
        if (__src < 0)
        {
LABEL_66:
          operator delete(v38);
          if (SHIBYTE(v45) < 0)
          {
            goto LABEL_67;
          }

          goto LABEL_76;
        }
      }

      else if (__src < 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v47 = v25;
      *&v48 = v51[0];
      *(&v48 + 7) = *(v51 + 7);
      HIBYTE(v48) = v26;
      if (__src < 0)
      {
        goto LABEL_66;
      }
    }

    if (SHIBYTE(v45) < 0)
    {
LABEL_67:
      operator delete(v44[0]);
      if (SHIBYTE(v43) < 0)
      {
        goto LABEL_68;
      }

      goto LABEL_77;
    }

LABEL_76:
    if (SHIBYTE(v43) < 0)
    {
LABEL_68:
      operator delete(__dst);
      if (v48 >= 0)
      {
        v27 = &v47;
      }

      else
      {
        v27 = v47;
      }

      if (!v27)
      {
        goto LABEL_99;
      }

      goto LABEL_81;
    }

LABEL_77:
    if (v48 >= 0)
    {
      v27 = &v47;
    }

    else
    {
      v27 = v47;
    }

    if (!v27)
    {
      goto LABEL_99;
    }

LABEL_81:
    v28 = a1[3];
    v29 = a1[6];
    v30 = fopen(v27, "wb");
    if (!v30)
    {
      goto LABEL_100;
    }

    v31 = (v29 + 144 * v28 * v6 + 144 * v39);
    v32 = v31[6];
    if (v32)
    {
      if (v31[4])
      {
        break;
      }
    }

LABEL_6:
    fclose(v30);
    v7 = v39 + 1;
    v4 = a1[3];
    if (v39 + 1 >= v4)
    {
      v2 = a1[2];
      goto LABEL_94;
    }
  }

  v33 = 0;
  v34 = v31[11];
  v35 = 1;
  while (!v35)
  {
LABEL_85:
    ++v33;
    v34 += v31[5];
    if (v33 >= v32)
    {
      goto LABEL_6;
    }
  }

  v36 = 0;
  while (1)
  {
    __ptr[0] = *(v34 + v36);
    if (fwrite(__ptr, 4uLL, 1uLL, v30) != 1)
    {
      break;
    }

    ++v36;
    v35 = v31[4];
    if (v36 >= v35)
    {
      v32 = v31[6];
      goto LABEL_85;
    }
  }

  fclose(v30);
LABEL_99:
  v30 = 0;
LABEL_100:
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_97;
  }

  return v30;
}

void sub_1E5465574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if (a12 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (a12 < 0)
  {
    goto LABEL_5;
  }

  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if (a21 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a22);
  if (a21 < 0)
  {
LABEL_7:
    operator delete(a16);
    if (a40 < 0)
    {
LABEL_12:
      operator delete(a35);
      _Unwind_Resume(a1);
    }

LABEL_13:
    _Unwind_Resume(a1);
  }

LABEL_11:
  if (a40 < 0)
  {
    goto LABEL_12;
  }

  goto LABEL_13;
}

uint64_t sub_1E546569C(void *a1, char *__s)
{
  v51[2] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0uLL;
  v2 = a1[2];
  if (!v2 || (v4 = a1[3]) == 0)
  {
    v30 = 1;
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      return v30;
    }

LABEL_97:
    operator delete(v47);
    return v30;
  }

  v6 = 0;
  while (!v4)
  {
LABEL_94:
    ++v6;
    v30 = 1;
    if (v6 >= v2)
    {
      goto LABEL_100;
    }
  }

  v7 = 0;
  while (1)
  {
    v8 = strlen(__s);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v43) = v8;
    if (v8)
    {
      memcpy(&__dst, __s, v8);
    }

    *(&__dst + v9) = 0;
    if ((v43 & 0x8000000000000000) == 0)
    {
      v10 = 22;
    }

    else
    {
      v10 = (v43 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v43 & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v43);
    }

    else
    {
      v11 = *(&__dst + 1);
    }

    if ((v10 - v11) < 0xB)
    {
      if (0x7FFFFFFFFFFFFFF6 - v10 >= (v11 + 11 - v10))
      {
        operator new();
      }

      sub_1E53DF584();
    }

    p_dst = &__dst;
    if ((v43 & 0x8000000000000000) != 0)
    {
      p_dst = __dst;
    }

    v13 = p_dst + v11;
    *v13 = *"/DesGenBlur";
    *(v13 + 7) = 1920298050;
    v14 = v11 + 11;
    if (SHIBYTE(v43) < 0)
    {
      *(&__dst + 1) = v11 + 11;
    }

    else
    {
      HIBYTE(v43) = v14 & 0x7F;
    }

    v39 = v7;
    *(p_dst + v14) = 0;
    *v44 = __dst;
    v45 = v43;
    v43 = 0;
    __dst = 0uLL;
    __ptr[6] = 0;
    std::to_string(&v50, v7 + v4 * v6);
    v41 = v50;
    __src = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
    v38 = v50.__r_.__value_.__r.__words[0];
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v41;
    }

    else
    {
      v15 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    if ((v45 & 0x8000000000000000) == 0)
    {
      v17 = 22;
    }

    else
    {
      v17 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v45 & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v45);
    }

    else
    {
      v18 = v44[1];
    }

    if (v17 - v18 < size)
    {
      if (0x7FFFFFFFFFFFFFF6 - v17 >= &v18[size - v17])
      {
        operator new();
      }

      sub_1E53DF584();
    }

    if (size)
    {
      if ((v45 & 0x8000000000000000) == 0)
      {
        v19 = v44;
      }

      else
      {
        v19 = v44[0];
      }

      memmove(&v18[v19], v15, size);
      v20 = &v18[size];
      if (SHIBYTE(v45) < 0)
      {
        v44[1] = &v18[size];
      }

      else
      {
        HIBYTE(v45) = v20 & 0x7F;
      }

      v20[v19] = 0;
    }

    v46[2] = v45;
    *v46 = *v44;
    v44[1] = 0;
    v45 = 0;
    v44[0] = 0;
    if (SHIBYTE(v46[2]) >= 0)
    {
      v21 = 22;
    }

    else
    {
      v21 = (v46[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (SHIBYTE(v46[2]) >= 0)
    {
      v22 = (v46[2] >> 56);
    }

    else
    {
      v22 = v46[1];
    }

    if (v21 - v22 < 8)
    {
      if (0x7FFFFFFFFFFFFFF6 - v21 >= &v22[-v21 + 8])
      {
        operator new();
      }

      sub_1E53DF584();
    }

    v23 = v46;
    if (SHIBYTE(v46[2]) < 0)
    {
      v23 = v46[0];
    }

    *&v22[v23] = 0x746C73722E74754FLL;
    v24 = v22 + 8;
    if (SHIBYTE(v46[2]) < 0)
    {
      v46[1] = v22 + 8;
    }

    else
    {
      HIBYTE(v46[2]) = v24 & 0x7F;
    }

    v24[v23] = 0;
    v25 = v46[0];
    v51[0] = v46[1];
    *(v51 + 7) = *(&v46[1] + 7);
    v26 = HIBYTE(v46[2]);
    memset(v46, 0, sizeof(v46));
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
      v47 = v25;
      *&v48 = v51[0];
      *(&v48 + 7) = *(v51 + 7);
      HIBYTE(v48) = v26;
      if (SHIBYTE(v46[2]) < 0)
      {
        operator delete(v46[0]);
        if (__src < 0)
        {
LABEL_66:
          operator delete(v38);
          if (SHIBYTE(v45) < 0)
          {
            goto LABEL_67;
          }

          goto LABEL_76;
        }
      }

      else if (__src < 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v47 = v25;
      *&v48 = v51[0];
      *(&v48 + 7) = *(v51 + 7);
      HIBYTE(v48) = v26;
      if (__src < 0)
      {
        goto LABEL_66;
      }
    }

    if (SHIBYTE(v45) < 0)
    {
LABEL_67:
      operator delete(v44[0]);
      if (SHIBYTE(v43) < 0)
      {
        goto LABEL_68;
      }

      goto LABEL_77;
    }

LABEL_76:
    if (SHIBYTE(v43) < 0)
    {
LABEL_68:
      operator delete(__dst);
      if (v48 >= 0)
      {
        v27 = &v47;
      }

      else
      {
        v27 = v47;
      }

      if (!v27)
      {
        goto LABEL_99;
      }

      goto LABEL_81;
    }

LABEL_77:
    if (v48 >= 0)
    {
      v27 = &v47;
    }

    else
    {
      v27 = v47;
    }

    if (!v27)
    {
      goto LABEL_99;
    }

LABEL_81:
    v28 = a1[3];
    v29 = a1[6];
    v30 = fopen(v27, "wb");
    if (!v30)
    {
      goto LABEL_100;
    }

    v31 = (v29 + 144 * v28 * v6 + 144 * v39);
    v32 = v31[6];
    if (v32)
    {
      if (v31[4])
      {
        break;
      }
    }

LABEL_6:
    fclose(v30);
    v7 = v39 + 1;
    v4 = a1[3];
    if (v39 + 1 >= v4)
    {
      v2 = a1[2];
      goto LABEL_94;
    }
  }

  v33 = 0;
  v34 = v31[11];
  v35 = 1;
  while (!v35)
  {
LABEL_85:
    ++v33;
    v34 += 2 * v31[5];
    if (v33 >= v32)
    {
      goto LABEL_6;
    }
  }

  v36 = 0;
  while (1)
  {
    __ptr[0] = *(v34 + 2 * v36);
    if (fwrite(__ptr, 4uLL, 1uLL, v30) != 1)
    {
      break;
    }

    ++v36;
    v35 = v31[4];
    if (v36 >= v35)
    {
      v32 = v31[6];
      goto LABEL_85;
    }
  }

  fclose(v30);
LABEL_99:
  v30 = 0;
LABEL_100:
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_97;
  }

  return v30;
}

void sub_1E5465EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if (a12 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (a12 < 0)
  {
    goto LABEL_5;
  }

  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if (a21 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a22);
  if (a21 < 0)
  {
LABEL_7:
    operator delete(a16);
    if (a40 < 0)
    {
LABEL_12:
      operator delete(a35);
      _Unwind_Resume(a1);
    }

LABEL_13:
    _Unwind_Resume(a1);
  }

LABEL_11:
  if (a40 < 0)
  {
    goto LABEL_12;
  }

  goto LABEL_13;
}

uint64_t sub_1E5465FC8(uint64_t a1, char *__s)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = 0uLL;
  if (*(a1 + 16))
  {
    for (i = 0; i < *(a1 + 16); ++i)
    {
      v5 = strlen(__s);
      if (v5 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1E53DF584();
      }

      v6 = v5;
      if (v5 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v5;
      if (v5)
      {
        memcpy(&__dst, __s, v5);
        __dst.__r_.__value_.__s.__data_[v6] = 0;
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
LABEL_8:
          if (size - 13 < 0xA)
          {
            goto LABEL_14;
          }

          p_dst = &__dst;
          goto LABEL_17;
        }
      }

      else
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }
      }

      size = __dst.__r_.__value_.__l.__size_;
      v8 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v8 - __dst.__r_.__value_.__l.__size_ < 0xA)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 10 - v8)
        {
          sub_1E53DF584();
        }

LABEL_14:
        operator new();
      }

      p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_17:
      v10 = p_dst + size;
      *v10 = *"/DesGen3x3";
      *(v10 + 4) = 13176;
      v11 = size + 10;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = size + 10;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v11 & 0x7F;
      }

      p_dst->__r_.__value_.__s.__data_[v11] = 0;
      v35 = __dst;
      memset(&__dst, 0, sizeof(__dst));
      __ptr[6] = 0;
      std::to_string(&v40, i);
      __p = v40;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v40.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v40.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v35, p_p, v13);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v36[2] = v14->__r_.__value_.__r.__words[2];
      *v36 = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = SHIBYTE(v36[2]);
      if ((SHIBYTE(v36[2]) & 0x8000000000000000) != 0)
      {
        v16 = v36[1];
        v17 = (v36[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v17 - v36[1] < 8)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v36[2] & 0x7FFFFFFFFFFFFFFFLL)) < v36[1] - v17 + 8)
          {
            sub_1E53DF584();
          }

LABEL_31:
          operator new();
        }

        v18 = v36[0];
      }

      else
      {
        if ((SHIBYTE(v36[2]) - 15) < 8)
        {
          goto LABEL_31;
        }

        v18 = v36;
      }

      *(v16 + v18) = 0x746C73722E74754FLL;
      v19 = v16 + 8;
      if (SHIBYTE(v36[2]) < 0)
      {
        v36[1] = v16 + 8;
      }

      else
      {
        HIBYTE(v36[2]) = v19 & 0x7F;
      }

      v19[v18] = 0;
      v20 = v36[0];
      v41[0] = v36[1];
      *(v41 + 7) = *(&v36[1] + 7);
      v21 = HIBYTE(v36[2]);
      memset(v36, 0, sizeof(v36));
      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37);
        v37 = v20;
        *&v38 = v41[0];
        *(&v38 + 7) = *(v41 + 7);
        HIBYTE(v38) = v21;
        if (SHIBYTE(v36[2]) < 0)
        {
          operator delete(v36[0]);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_39:
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_40;
            }

            goto LABEL_49;
          }
        }

        else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v37 = v20;
        *&v38 = v41[0];
        *(&v38 + 7) = *(v41 + 7);
        HIBYTE(v38) = v21;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_39;
        }
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_40:
        operator delete(v35.__r_.__value_.__l.__data_);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_41;
        }

        goto LABEL_50;
      }

LABEL_49:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_41:
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (v38 >= 0)
        {
          v22 = &v37;
        }

        else
        {
          v22 = v37;
        }

        if (!v22)
        {
          goto LABEL_67;
        }

        goto LABEL_54;
      }

LABEL_50:
      if (v38 >= 0)
      {
        v22 = &v37;
      }

      else
      {
        v22 = v37;
      }

      if (!v22)
      {
LABEL_67:
        v31 = 0;
        if (SHIBYTE(v38) < 0)
        {
          goto LABEL_68;
        }

        return v31;
      }

LABEL_54:
      v23 = *(a1 + 48);
      v24 = fopen(v22, "wb");
      if (!v24)
      {
        goto LABEL_67;
      }

      v25 = (v23 + 144 * i);
      v26 = v25[6];
      if (!v26 || !v25[4])
      {
        goto LABEL_3;
      }

      v27 = 0;
      v28 = v25[11];
      v29 = 1;
      while (2)
      {
        if (!v29)
        {
          goto LABEL_58;
        }

        for (j = 0; j < v29; ++j)
        {
          __ptr[0] = *(v28 + j);
          if (fwrite(__ptr, 4uLL, 1uLL, v24) != 1)
          {
            fclose(v24);
            goto LABEL_67;
          }

          v29 = v25[4];
        }

        v26 = v25[6];
LABEL_58:
        ++v27;
        v28 += v25[5];
        if (v27 < v26)
        {
          continue;
        }

        break;
      }

LABEL_3:
      fclose(v24);
    }
  }

  v31 = 1;
  if (SHIBYTE(v38) < 0)
  {
LABEL_68:
    operator delete(v37);
  }

  return v31;
}

void sub_1E5466610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if (a26 < 0)
      {
LABEL_8:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_9:
        if (a39 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(a15);
      if (a39 < 0)
      {
LABEL_10:
        operator delete(a34);
        _Unwind_Resume(a1);
      }

LABEL_13:
      _Unwind_Resume(a1);
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if (a26 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

uint64_t sub_1E5466728(void *a1, char *__s)
{
  v51[2] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0uLL;
  v2 = a1[2];
  if (!v2 || (v4 = a1[3]) == 0)
  {
    v30 = 1;
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      return v30;
    }

LABEL_97:
    operator delete(v47);
    return v30;
  }

  v6 = 0;
  while (!v4)
  {
LABEL_94:
    ++v6;
    v30 = 1;
    if (v6 >= v2)
    {
      goto LABEL_100;
    }
  }

  v7 = 0;
  while (1)
  {
    v8 = strlen(__s);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v43) = v8;
    if (v8)
    {
      memcpy(&__dst, __s, v8);
    }

    *(&__dst + v9) = 0;
    if ((v43 & 0x8000000000000000) == 0)
    {
      v10 = 22;
    }

    else
    {
      v10 = (v43 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v43 & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v43);
    }

    else
    {
      v11 = *(&__dst + 1);
    }

    if ((v10 - v11) < 9)
    {
      if (0x7FFFFFFFFFFFFFF6 - v10 >= (v11 + 9 - v10))
      {
        operator new();
      }

      sub_1E53DF584();
    }

    p_dst = &__dst;
    if ((v43 & 0x8000000000000000) != 0)
    {
      p_dst = __dst;
    }

    v13 = p_dst + v11;
    *v13 = *"/DesGenRM";
    v13[8] = 77;
    v14 = v11 + 9;
    if (SHIBYTE(v43) < 0)
    {
      *(&__dst + 1) = v11 + 9;
    }

    else
    {
      HIBYTE(v43) = v14 & 0x7F;
    }

    v39 = v7;
    *(p_dst + v14) = 0;
    *v44 = __dst;
    v45 = v43;
    v43 = 0;
    __dst = 0uLL;
    __ptr[6] = 0;
    std::to_string(&v50, v7 + v4 * v6);
    v41 = v50;
    __src = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
    v38 = v50.__r_.__value_.__r.__words[0];
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v41;
    }

    else
    {
      v15 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    if ((v45 & 0x8000000000000000) == 0)
    {
      v17 = 22;
    }

    else
    {
      v17 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v45 & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v45);
    }

    else
    {
      v18 = v44[1];
    }

    if (v17 - v18 < size)
    {
      if (0x7FFFFFFFFFFFFFF6 - v17 >= &v18[size - v17])
      {
        operator new();
      }

      sub_1E53DF584();
    }

    if (size)
    {
      if ((v45 & 0x8000000000000000) == 0)
      {
        v19 = v44;
      }

      else
      {
        v19 = v44[0];
      }

      memmove(&v18[v19], v15, size);
      v20 = &v18[size];
      if (SHIBYTE(v45) < 0)
      {
        v44[1] = &v18[size];
      }

      else
      {
        HIBYTE(v45) = v20 & 0x7F;
      }

      v20[v19] = 0;
    }

    v46[2] = v45;
    *v46 = *v44;
    v44[1] = 0;
    v45 = 0;
    v44[0] = 0;
    if (SHIBYTE(v46[2]) >= 0)
    {
      v21 = 22;
    }

    else
    {
      v21 = (v46[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (SHIBYTE(v46[2]) >= 0)
    {
      v22 = (v46[2] >> 56);
    }

    else
    {
      v22 = v46[1];
    }

    if (v21 - v22 < 8)
    {
      if (0x7FFFFFFFFFFFFFF6 - v21 >= &v22[-v21 + 8])
      {
        operator new();
      }

      sub_1E53DF584();
    }

    v23 = v46;
    if (SHIBYTE(v46[2]) < 0)
    {
      v23 = v46[0];
    }

    *&v22[v23] = 0x746C73722E74754FLL;
    v24 = v22 + 8;
    if (SHIBYTE(v46[2]) < 0)
    {
      v46[1] = v22 + 8;
    }

    else
    {
      HIBYTE(v46[2]) = v24 & 0x7F;
    }

    v24[v23] = 0;
    v25 = v46[0];
    v51[0] = v46[1];
    *(v51 + 7) = *(&v46[1] + 7);
    v26 = HIBYTE(v46[2]);
    memset(v46, 0, sizeof(v46));
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
      v47 = v25;
      *&v48 = v51[0];
      *(&v48 + 7) = *(v51 + 7);
      HIBYTE(v48) = v26;
      if (SHIBYTE(v46[2]) < 0)
      {
        operator delete(v46[0]);
        if (__src < 0)
        {
LABEL_66:
          operator delete(v38);
          if (SHIBYTE(v45) < 0)
          {
            goto LABEL_67;
          }

          goto LABEL_76;
        }
      }

      else if (__src < 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v47 = v25;
      *&v48 = v51[0];
      *(&v48 + 7) = *(v51 + 7);
      HIBYTE(v48) = v26;
      if (__src < 0)
      {
        goto LABEL_66;
      }
    }

    if (SHIBYTE(v45) < 0)
    {
LABEL_67:
      operator delete(v44[0]);
      if (SHIBYTE(v43) < 0)
      {
        goto LABEL_68;
      }

      goto LABEL_77;
    }

LABEL_76:
    if (SHIBYTE(v43) < 0)
    {
LABEL_68:
      operator delete(__dst);
      if (v48 >= 0)
      {
        v27 = &v47;
      }

      else
      {
        v27 = v47;
      }

      if (!v27)
      {
        goto LABEL_99;
      }

      goto LABEL_81;
    }

LABEL_77:
    if (v48 >= 0)
    {
      v27 = &v47;
    }

    else
    {
      v27 = v47;
    }

    if (!v27)
    {
      goto LABEL_99;
    }

LABEL_81:
    v28 = a1[3];
    v29 = a1[6];
    v30 = fopen(v27, "wb");
    if (!v30)
    {
      goto LABEL_100;
    }

    v31 = (v29 + 144 * v28 * v6 + 144 * v39);
    v32 = v31[6];
    if (v32)
    {
      if (v31[4])
      {
        break;
      }
    }

LABEL_6:
    fclose(v30);
    v7 = v39 + 1;
    v4 = a1[3];
    if (v39 + 1 >= v4)
    {
      v2 = a1[2];
      goto LABEL_94;
    }
  }

  v33 = 0;
  v34 = v31[11];
  v35 = 1;
  while (!v35)
  {
LABEL_85:
    ++v33;
    v34 += 2 * v31[5];
    if (v33 >= v32)
    {
      goto LABEL_6;
    }
  }

  v36 = 0;
  while (1)
  {
    __ptr[0] = *(v34 + 2 * v36);
    if (fwrite(__ptr, 4uLL, 1uLL, v30) != 1)
    {
      break;
    }

    ++v36;
    v35 = v31[4];
    if (v36 >= v35)
    {
      v32 = v31[6];
      goto LABEL_85;
    }
  }

  fclose(v30);
LABEL_99:
  v30 = 0;
LABEL_100:
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_97;
  }

  return v30;
}

void sub_1E5466F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if (a12 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (a12 < 0)
  {
    goto LABEL_5;
  }

  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if (a21 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a22);
  if (a21 < 0)
  {
LABEL_7:
    operator delete(a16);
    if (a40 < 0)
    {
LABEL_12:
      operator delete(a35);
      _Unwind_Resume(a1);
    }

LABEL_13:
    _Unwind_Resume(a1);
  }

LABEL_11:
  if (a40 < 0)
  {
    goto LABEL_12;
  }

  goto LABEL_13;
}

BOOL sub_1E546704C(double **a1, double **a2, double ***a3, const char *a4)
{
  v69[2] = *MEMORY[0x1E69E9840];
  v64 = 0;
  v65 = 0uLL;
  v62 = 0;
  v63 = 0uLL;
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = strlen(a4);
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1E53DF584();
      }

      v8 = v7;
      if (v7 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v7;
      if (v7)
      {
        memcpy(&__dst, a4, v7);
        __dst.__r_.__value_.__s.__data_[v8] = 0;
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
LABEL_7:
          if (size - 5 < 0x12)
          {
            goto LABEL_13;
          }

          p_dst = &__dst;
          goto LABEL_16;
        }
      }

      else
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }
      }

      size = __dst.__r_.__value_.__l.__size_;
      v10 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v10 - __dst.__r_.__value_.__l.__size_ < 0x12)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 18 - v10)
        {
          sub_1E53DF584();
        }

LABEL_13:
        operator new();
      }

      p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_16:
      v12 = p_dst + size;
      *v12 = *"/DesGenCoordXFirst";
      *(v12 + 8) = 29811;
      v13 = size + 18;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = size + 18;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v13 & 0x7F;
      }

      p_dst->__r_.__value_.__s.__data_[v13] = 0;
      v60 = __dst;
      memset(&__dst, 0, sizeof(__dst));
      v67 = 0;
      std::to_string(&v68, v6);
      __p = v68;
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v68.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v68.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v60, p_p, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v61[2] = v16->__r_.__value_.__r.__words[2];
      *v61 = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = SHIBYTE(v61[2]);
      if ((SHIBYTE(v61[2]) & 0x8000000000000000) != 0)
      {
        v18 = v61[1];
        v19 = (v61[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v19 - v61[1] < 8)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v61[2] & 0x7FFFFFFFFFFFFFFFLL)) < v61[1] - v19 + 8)
          {
            sub_1E53DF584();
          }

LABEL_30:
          operator new();
        }

        v20 = v61[0];
      }

      else
      {
        if ((SHIBYTE(v61[2]) - 15) < 8)
        {
          goto LABEL_30;
        }

        v20 = v61;
      }

      *(v18 + v20) = 0x746C73722E74754FLL;
      v21 = v18 + 8;
      if (SHIBYTE(v61[2]) < 0)
      {
        v61[1] = v18 + 8;
      }

      else
      {
        HIBYTE(v61[2]) = v21 & 0x7F;
      }

      v21[v20] = 0;
      v22 = v61[0];
      v69[0] = v61[1];
      *(v69 + 7) = *(&v61[1] + 7);
      v23 = HIBYTE(v61[2]);
      memset(v61, 0, 24);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64);
        v64 = v22;
        *&v65 = v69[0];
        *(&v65 + 7) = *(v69 + 7);
        HIBYTE(v65) = v23;
        if (SHIBYTE(v61[2]) < 0)
        {
          operator delete(v61[0]);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_38:
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_39;
            }

            goto LABEL_48;
          }
        }

        else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v64 = v22;
        *&v65 = v69[0];
        *(&v65 + 7) = *(v69 + 7);
        HIBYTE(v65) = v23;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_38;
        }
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_39:
        operator delete(v60.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_40;
      }

LABEL_48:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_49:
        if (v65 >= 0)
        {
          v24 = &v64;
        }

        else
        {
          v24 = v64;
        }

        if (!v24)
        {
LABEL_121:
          v49 = 0;
          v25 = v5;
          goto LABEL_127;
        }

        goto LABEL_53;
      }

LABEL_40:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v65 >= 0)
      {
        v24 = &v64;
      }

      else
      {
        v24 = v64;
      }

      if (!v24)
      {
        goto LABEL_121;
      }

LABEL_53:
      v25 = fopen(v24, "wb");
      if (!v25)
      {
        v49 = 0;
        if (v5)
        {
          goto LABEL_128;
        }

        goto LABEL_129;
      }

      if (v5)
      {
        fclose(v5);
      }

      v26 = *v4;
      v27 = v4[1];
      if (*v4 != v27)
      {
        do
        {
          __ptr[0] = vcvtd_n_s64_f64(*v26, 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[1], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[2], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[3], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[4], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[5], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[6], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[7], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[8], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[9], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[10], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[11], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[12], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[13], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[14], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[15], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[16], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[17], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[18], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[19], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[20], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[21], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[22], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[23], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[24], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[25], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[26], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[27], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[28], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          __ptr[0] = vcvtd_n_s64_f64(v26[29], 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v25);
          v26 += 30;
        }

        while (v26 != v27);
      }

      ++v6;
      v4 += 3;
      v5 = v25;
      if (v4 == a2)
      {
        goto LABEL_63;
      }
    }
  }

  v25 = 0;
LABEL_63:
  v28 = *a3;
  v56 = a3[1];
  if (*a3 == v56)
  {
    v49 = 1;
    goto LABEL_127;
  }

  v29 = 0;
  v30 = 1;
  while (1)
  {
    v31 = strlen(a4);
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v32 = v31;
    if (v31 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v31;
    if (v31)
    {
      memcpy(&__dst, a4, v31);
      __dst.__r_.__value_.__s.__data_[v32] = 0;
      v33 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_69:
        if (v33 - 5 < 0x12)
        {
          goto LABEL_75;
        }

        v35 = &__dst;
        goto LABEL_78;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v33 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_69;
      }
    }

    v33 = __dst.__r_.__value_.__l.__size_;
    v34 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v34 - __dst.__r_.__value_.__l.__size_ < 0x12)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 18 - v34)
      {
        sub_1E53DF584();
      }

LABEL_75:
      operator new();
    }

    v35 = __dst.__r_.__value_.__r.__words[0];
LABEL_78:
    v36 = v35 + v33;
    *v36 = *"/DesGenCoordYFirst";
    *(v36 + 8) = 29811;
    v37 = v33 + 18;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v33 + 18;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v37 & 0x7F;
    }

    v35->__r_.__value_.__s.__data_[v37] = 0;
    v60 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v67 = 0;
    std::to_string(&v68, v30);
    __p = v68;
    v38 = (v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v68.__r_.__value_.__r.__words[0];
    v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v68.__r_.__value_.__l.__size_;
    v40 = std::string::append(&v60, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v61[2] = v40->__r_.__value_.__r.__words[2];
    *v61 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = SHIBYTE(v61[2]);
    if ((SHIBYTE(v61[2]) & 0x8000000000000000) != 0)
    {
      v42 = v61[1];
      v43 = (v61[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v43 - v61[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v61[2] & 0x7FFFFFFFFFFFFFFFLL)) < v61[1] - v43 + 8)
        {
          sub_1E53DF584();
        }

LABEL_92:
        operator new();
      }

      v44 = v61[0];
    }

    else
    {
      if ((SHIBYTE(v61[2]) - 15) < 8)
      {
        goto LABEL_92;
      }

      v44 = v61;
    }

    *(v42 + v44) = 0x746C73722E74754FLL;
    v45 = v42 + 8;
    if (SHIBYTE(v61[2]) < 0)
    {
      v61[1] = v42 + 8;
    }

    else
    {
      HIBYTE(v61[2]) = v45 & 0x7F;
    }

    v45[v44] = 0;
    v46 = v61[0];
    v69[0] = v61[1];
    *(v69 + 7) = *(&v61[1] + 7);
    v47 = HIBYTE(v61[2]);
    memset(v61, 0, 24);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
      v62 = v46;
      *&v63 = v69[0];
      *(&v63 + 7) = *(v69 + 7);
      HIBYTE(v63) = v47;
      if (SHIBYTE(v61[2]) < 0)
      {
        operator delete(v61[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_100:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_101;
          }

          goto LABEL_106;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v62 = v46;
      *&v63 = v69[0];
      *(&v63 + 7) = *(v69 + 7);
      HIBYTE(v63) = v47;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_100;
      }
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_101:
      operator delete(v60.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_107;
      }

LABEL_102:
      operator delete(__dst.__r_.__value_.__l.__data_);
      goto LABEL_107;
    }

LABEL_106:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_102;
    }

LABEL_107:
    if (v63 >= 0)
    {
      v48 = &v62;
    }

    else
    {
      v48 = v62;
    }

    v49 = v48 != 0;
    if (!v48)
    {
      v50 = v29;
LABEL_125:
      v29 = v50;
      if (!v50)
      {
        goto LABEL_127;
      }

LABEL_126:
      fclose(v29);
      goto LABEL_127;
    }

    v50 = fopen(v48, "wb");
    if (!v50)
    {
      break;
    }

    if (v29)
    {
      fclose(v29);
    }

    v51 = *v28;
    v52 = v28[1];
    if (*v28 != v52)
    {
      do
      {
        __ptr[0] = vcvtd_n_s64_f64(*v51, 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[1], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[2], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[3], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[4], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[5], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[6], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[7], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[8], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[9], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[10], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[11], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[12], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[13], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[14], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[15], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[16], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[17], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[18], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[19], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[20], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[21], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[22], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[23], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[24], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[25], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[26], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[27], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[28], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        __ptr[0] = vcvtd_n_s64_f64(v51[29], 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v50);
        v51 += 30;
      }

      while (v51 != v52);
    }

    ++v30;
    v28 += 3;
    v29 = v50;
    if (v28 == v56)
    {
      goto LABEL_125;
    }
  }

  v49 = 0;
  if (v29)
  {
    goto LABEL_126;
  }

LABEL_127:
  v5 = v25;
  if (v25)
  {
LABEL_128:
    fclose(v5);
  }

LABEL_129:
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
    if ((SHIBYTE(v65) & 0x80000000) == 0)
    {
      return v49;
    }

LABEL_133:
    operator delete(v64);
    return v49;
  }

  if (SHIBYTE(v65) < 0)
  {
    goto LABEL_133;
  }

  return v49;
}

void sub_1E5468360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if (a18 < 0)
    {
LABEL_5:
      operator delete(a13);
      if (a30 < 0)
      {
LABEL_8:
        operator delete(a25);
        if ((a24 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        operator delete(a19);
LABEL_12:
        if (v51)
        {
          fclose(v51);
          if (!v50)
          {
LABEL_14:
            if (a44 < 0)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else if (!v50)
        {
          goto LABEL_14;
        }

        fclose(v50);
        if (a44 < 0)
        {
LABEL_15:
          operator delete(a39);
          if ((a50 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_20;
        }

LABEL_19:
        if ((a50 & 0x80000000) == 0)
        {
LABEL_16:
          _Unwind_Resume(a1);
        }

LABEL_20:
        operator delete(a45);
        _Unwind_Resume(a1);
      }

LABEL_10:
      if ((a24 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_5;
  }

  if (a30 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

uint64_t sub_1E5468578(void *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4, const char *a5)
{
  v82[2] = *MEMORY[0x1E69E9840];
  v77 = 0;
  v78 = 0uLL;
  v75 = 0;
  v76 = 0uLL;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    __val = 1;
    while (1)
    {
      v7 = strlen(a5);
      v66 = v6;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1E53DF584();
      }

      v8 = v7;
      if (v7 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v7;
      if (v7)
      {
        memcpy(&__dst, a5, v7);
        __dst.__r_.__value_.__s.__data_[v8] = 0;
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
LABEL_8:
          if (size - 4 < 0x13)
          {
            goto LABEL_14;
          }

          p_dst = &__dst;
          goto LABEL_17;
        }
      }

      else
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }
      }

      size = __dst.__r_.__value_.__l.__size_;
      v10 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v10 - __dst.__r_.__value_.__l.__size_ < 0x13)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 19 - v10)
        {
          sub_1E53DF584();
        }

LABEL_14:
        operator new();
      }

      p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_17:
      v12 = p_dst + size;
      *v12 = *"/DesGenCoordXSecond";
      *(v12 + 15) = 1684959075;
      v13 = size + 19;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = size + 19;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v13 & 0x7F;
      }

      p_dst->__r_.__value_.__s.__data_[v13] = 0;
      v73 = __dst;
      memset(&__dst, 0, sizeof(__dst));
      v80 = 0;
      std::to_string(&v81, __val);
      __p = v81;
      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v81.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v81.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v73, p_p, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v74[2] = v16->__r_.__value_.__r.__words[2];
      *v74 = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = SHIBYTE(v74[2]);
      if ((SHIBYTE(v74[2]) & 0x8000000000000000) != 0)
      {
        v18 = v74[1];
        v19 = (v74[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v19 - v74[1] < 8)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v74[2] & 0x7FFFFFFFFFFFFFFFLL)) < v74[1] - v19 + 8)
          {
            sub_1E53DF584();
          }

LABEL_31:
          operator new();
        }

        v20 = v74[0];
      }

      else
      {
        if ((SHIBYTE(v74[2]) - 15) < 8)
        {
          goto LABEL_31;
        }

        v20 = v74;
      }

      *(v18 + v20) = 0x746C73722E74754FLL;
      v21 = v18 + 8;
      if (SHIBYTE(v74[2]) < 0)
      {
        v74[1] = v18 + 8;
      }

      else
      {
        HIBYTE(v74[2]) = v21 & 0x7F;
      }

      v21[v20] = 0;
      v22 = v74[0];
      v82[0] = v74[1];
      *(v82 + 7) = *(&v74[1] + 7);
      v23 = HIBYTE(v74[2]);
      memset(v74, 0, 24);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
        v77 = v22;
        *&v78 = v82[0];
        *(&v78 + 7) = *(v82 + 7);
        HIBYTE(v78) = v23;
        if (SHIBYTE(v74[2]) < 0)
        {
          operator delete(v74[0]);
          v24 = v66;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_39:
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_40;
            }

            goto LABEL_49;
          }
        }

        else
        {
          v24 = v66;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v77 = v22;
        *&v78 = v82[0];
        *(&v78 + 7) = *(v82 + 7);
        HIBYTE(v78) = v23;
        v24 = v66;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_39;
        }
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_40:
        operator delete(v73.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }

LABEL_49:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_50:
        if (v78 >= 0)
        {
          v25 = &v77;
        }

        else
        {
          v25 = v77;
        }

        if (!v25)
        {
LABEL_127:
          v59 = 0;
          v26 = v24;
          goto LABEL_133;
        }

        goto LABEL_54;
      }

LABEL_41:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v78 >= 0)
      {
        v25 = &v77;
      }

      else
      {
        v25 = v77;
      }

      if (!v25)
      {
        goto LABEL_127;
      }

LABEL_54:
      v26 = fopen(v25, "wb");
      if (!v26)
      {
        v59 = 0;
        if (v24)
        {
          goto LABEL_134;
        }

        goto LABEL_135;
      }

      if (v24)
      {
        fclose(v24);
      }

      v28 = *v5;
      v29 = v5[1];
      if (*v5 != v29)
      {
        v30 = 0;
        v31 = *a1 + 24 * __val;
        do
        {
          LODWORD(v27) = *(*(v31 - 24) + (v30 << 7));
          __ptr[0] = vcvtd_n_s64_f64(floor(v27 / (1 << ((__val >> 1) + 6)) * 64.0 + 0.5) * 0.015625, 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v26);
          for (i = 0; i != 336; i += 48)
          {
            __ptr[0] = vcvtd_n_s64_f64(*(v28 + i), 6uLL);
            fwrite(__ptr, 4uLL, 1uLL, v26);
            __ptr[0] = vcvtd_n_s64_f64(*(v28 + i + 8), 6uLL);
            fwrite(__ptr, 4uLL, 1uLL, v26);
            __ptr[0] = vcvtd_n_s64_f64(*(v28 + i + 16), 6uLL);
            fwrite(__ptr, 4uLL, 1uLL, v26);
            __ptr[0] = vcvtd_n_s64_f64(*(v28 + i + 24), 6uLL);
            fwrite(__ptr, 4uLL, 1uLL, v26);
            __ptr[0] = vcvtd_n_s64_f64(*(v28 + i + 32), 6uLL);
            fwrite(__ptr, 4uLL, 1uLL, v26);
            __ptr[0] = vcvtd_n_s64_f64(*(v28 + i + 40), 6uLL);
            fwrite(__ptr, 4uLL, 1uLL, v26);
          }

          ++v30;
          v28 += 336;
        }

        while (v28 != v29);
      }

      ++__val;
      v5 += 3;
      v6 = v26;
      if (v5 == a3)
      {
        goto LABEL_66;
      }
    }
  }

  v26 = 0;
LABEL_66:
  v65 = a4[1];
  v67 = *a4;
  if (*a4 == v65)
  {
    v59 = 1;
    goto LABEL_133;
  }

  v33 = 0;
  __vala = 1;
  while (1)
  {
    v34 = strlen(a5);
    if (v34 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v35 = v34;
    if (v34 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v34;
    if (v34)
    {
      memcpy(&__dst, a5, v34);
      __dst.__r_.__value_.__s.__data_[v35] = 0;
      v36 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_73:
        if (v36 - 4 < 0x13)
        {
          goto LABEL_79;
        }

        v38 = &__dst;
        goto LABEL_82;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v36 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_73;
      }
    }

    v36 = __dst.__r_.__value_.__l.__size_;
    v37 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v37 - __dst.__r_.__value_.__l.__size_ < 0x13)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 19 - v37)
      {
        sub_1E53DF584();
      }

LABEL_79:
      operator new();
    }

    v38 = __dst.__r_.__value_.__r.__words[0];
LABEL_82:
    v39 = v38 + v36;
    *v39 = *"/DesGenCoordYSecond";
    *(v39 + 15) = 1684959075;
    v40 = v36 + 19;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v36 + 19;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v40 & 0x7F;
    }

    v38->__r_.__value_.__s.__data_[v40] = 0;
    v73 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v80 = 0;
    std::to_string(&v81, __vala);
    __p = v81;
    v41 = (v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v81.__r_.__value_.__r.__words[0];
    v42 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v81.__r_.__value_.__l.__size_;
    v43 = std::string::append(&v73, v41, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v74[2] = v43->__r_.__value_.__r.__words[2];
    *v74 = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    v45 = SHIBYTE(v74[2]);
    if ((SHIBYTE(v74[2]) & 0x8000000000000000) != 0)
    {
      v45 = v74[1];
      v46 = (v74[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v46 - v74[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v74[2] & 0x7FFFFFFFFFFFFFFFLL)) < v74[1] - v46 + 8)
        {
          sub_1E53DF584();
        }

LABEL_96:
        operator new();
      }

      v47 = v74[0];
    }

    else
    {
      if ((SHIBYTE(v74[2]) - 15) < 8)
      {
        goto LABEL_96;
      }

      v47 = v74;
    }

    *(v45 + v47) = 0x746C73722E74754FLL;
    v48 = v45 + 8;
    if (SHIBYTE(v74[2]) < 0)
    {
      v74[1] = v45 + 8;
    }

    else
    {
      HIBYTE(v74[2]) = v48 & 0x7F;
    }

    v48[v47] = 0;
    v49 = v74[0];
    v82[0] = v74[1];
    *(v82 + 7) = *(&v74[1] + 7);
    v50 = HIBYTE(v74[2]);
    memset(v74, 0, 24);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75);
      v75 = v49;
      *&v76 = v82[0];
      *(&v76 + 7) = *(v82 + 7);
      HIBYTE(v76) = v50;
      if (SHIBYTE(v74[2]) < 0)
      {
        operator delete(v74[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_104:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_105;
          }

          goto LABEL_110;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v75 = v49;
      *&v76 = v82[0];
      *(&v76 + 7) = *(v82 + 7);
      HIBYTE(v76) = v50;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_104;
      }
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_105:
      operator delete(v73.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_111;
      }

LABEL_106:
      operator delete(__dst.__r_.__value_.__l.__data_);
      goto LABEL_111;
    }

LABEL_110:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_106;
    }

LABEL_111:
    if (v76 >= 0)
    {
      v51 = &v75;
    }

    else
    {
      v51 = v75;
    }

    v62 = v51 != 0;
    if (!v51)
    {
      v52 = v33;
LABEL_131:
      v33 = v52;
      v59 = v62;
      if (!v52)
      {
        goto LABEL_133;
      }

LABEL_132:
      fclose(v33);
      goto LABEL_133;
    }

    v52 = fopen(v51, "wb");
    if (!v52)
    {
      break;
    }

    if (v33)
    {
      fclose(v33);
    }

    v54 = *v67;
    v55 = v67[1];
    if (*v67 != v55)
    {
      v56 = 0;
      v57 = *a1 + 24 * __vala;
      do
      {
        LODWORD(v53) = *(*(v57 - 24) + (v56 << 7) + 4);
        __ptr[0] = vcvtd_n_s64_f64(floor(v53 / (1 << ((__vala >> 1) + 6)) * 64.0 + 0.5) * 0.015625, 6uLL);
        fwrite(__ptr, 4uLL, 1uLL, v52);
        for (j = 0; j != 336; j += 48)
        {
          __ptr[0] = vcvtd_n_s64_f64(*(v54 + j), 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v52);
          __ptr[0] = vcvtd_n_s64_f64(*(v54 + j + 8), 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v52);
          __ptr[0] = vcvtd_n_s64_f64(*(v54 + j + 16), 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v52);
          __ptr[0] = vcvtd_n_s64_f64(*(v54 + j + 24), 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v52);
          __ptr[0] = vcvtd_n_s64_f64(*(v54 + j + 32), 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v52);
          __ptr[0] = vcvtd_n_s64_f64(*(v54 + j + 40), 6uLL);
          fwrite(__ptr, 4uLL, 1uLL, v52);
        }

        ++v56;
        v54 += 336;
      }

      while (v54 != v55);
    }

    ++__vala;
    v33 = v52;
    v67 += 3;
    if (v67 == v65)
    {
      goto LABEL_131;
    }
  }

  v59 = 0;
  if (v33)
  {
    goto LABEL_132;
  }

LABEL_133:
  v24 = v26;
  if (v26)
  {
LABEL_134:
    fclose(v24);
  }

LABEL_135:
  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(v78) & 0x80000000) == 0)
    {
      return v59;
    }

LABEL_139:
    operator delete(v77);
    return v59;
  }

  if (SHIBYTE(v78) < 0)
  {
    goto LABEL_139;
  }

  return v59;
}

void sub_1E5469428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if (a32 < 0)
      {
LABEL_8:
        operator delete(a27);
        if ((a26 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        operator delete(a21);
LABEL_12:
        if (v53)
        {
          fclose(v53);
          if (!v52)
          {
LABEL_14:
            if (a46 < 0)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else if (!v52)
        {
          goto LABEL_14;
        }

        fclose(v52);
        if (a46 < 0)
        {
LABEL_15:
          operator delete(a41);
          if ((a52 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_20;
        }

LABEL_19:
        if ((a52 & 0x80000000) == 0)
        {
LABEL_16:
          _Unwind_Resume(a1);
        }

LABEL_20:
        operator delete(a47);
        _Unwind_Resume(a1);
      }

LABEL_10:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  if (a32 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

BOOL sub_1E5469650(char **a1, char **a2, char ***a3, const char *a4)
{
  v68[2] = *MEMORY[0x1E69E9840];
  v64 = 0;
  v65 = 0uLL;
  v62 = 0;
  v63 = 0uLL;
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = strlen(a4);
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1E53DF584();
      }

      v8 = v7;
      if (v7 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v7;
      if (v7)
      {
        memcpy(&__dst, a4, v7);
        __dst.__r_.__value_.__s.__data_[v8] = 0;
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
LABEL_7:
          if (size - 5 < 0x12)
          {
            goto LABEL_13;
          }

          p_dst = &__dst;
          goto LABEL_16;
        }
      }

      else
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }
      }

      size = __dst.__r_.__value_.__l.__size_;
      v10 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v10 - __dst.__r_.__value_.__l.__size_ < 0x12)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 18 - v10)
        {
          sub_1E53DF584();
        }

LABEL_13:
        operator new();
      }

      p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_16:
      v12 = p_dst + size;
      *v12 = *"/DesGenRetinaFirst";
      *(v12 + 8) = 29811;
      v13 = size + 18;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = size + 18;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v13 & 0x7F;
      }

      p_dst->__r_.__value_.__s.__data_[v13] = 0;
      v60 = __dst;
      memset(&__dst, 0, sizeof(__dst));
      v66 = 0;
      std::to_string(&v67, v6);
      __p = v67;
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v67.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v67.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v60, p_p, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v61[2] = v16->__r_.__value_.__r.__words[2];
      *v61 = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = SHIBYTE(v61[2]);
      if ((SHIBYTE(v61[2]) & 0x8000000000000000) != 0)
      {
        v18 = v61[1];
        v19 = (v61[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v19 - v61[1] < 8)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v61[2] & 0x7FFFFFFFFFFFFFFFLL)) < v61[1] - v19 + 8)
          {
            sub_1E53DF584();
          }

LABEL_30:
          operator new();
        }

        v20 = v61[0];
      }

      else
      {
        if ((SHIBYTE(v61[2]) - 15) < 8)
        {
          goto LABEL_30;
        }

        v20 = v61;
      }

      *(v18 + v20) = 0x746C73722E74754FLL;
      v21 = v18 + 8;
      if (SHIBYTE(v61[2]) < 0)
      {
        v61[1] = v18 + 8;
      }

      else
      {
        HIBYTE(v61[2]) = v21 & 0x7F;
      }

      v21[v20] = 0;
      v22 = v61[0];
      v68[0] = v61[1];
      *(v68 + 7) = *(&v61[1] + 7);
      v23 = HIBYTE(v61[2]);
      memset(v61, 0, 24);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64);
        v64 = v22;
        *&v65 = v68[0];
        *(&v65 + 7) = *(v68 + 7);
        HIBYTE(v65) = v23;
        if (SHIBYTE(v61[2]) < 0)
        {
          operator delete(v61[0]);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_38:
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_39;
            }

            goto LABEL_48;
          }
        }

        else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v64 = v22;
        *&v65 = v68[0];
        *(&v65 + 7) = *(v68 + 7);
        HIBYTE(v65) = v23;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_38;
        }
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_39:
        operator delete(v60.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_40;
      }

LABEL_48:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_49:
        if (v65 >= 0)
        {
          v24 = &v64;
        }

        else
        {
          v24 = v64;
        }

        if (!v24)
        {
LABEL_121:
          v49 = 0;
          v25 = v5;
          goto LABEL_127;
        }

        goto LABEL_53;
      }

LABEL_40:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v65 >= 0)
      {
        v24 = &v64;
      }

      else
      {
        v24 = v64;
      }

      if (!v24)
      {
        goto LABEL_121;
      }

LABEL_53:
      v25 = fopen(v24, "wb");
      if (!v25)
      {
        v49 = 0;
        if (v5)
        {
          goto LABEL_128;
        }

        goto LABEL_129;
      }

      if (v5)
      {
        fclose(v5);
      }

      v27 = *v4;
      v26 = v4[1];
      if (*v4 != v26)
      {
        do
        {
          fwrite(v27, 4uLL, 0x1EuLL, v25);
          v27 += 120;
        }

        while (v27 != v26);
      }

      ++v6;
      v4 += 3;
      v5 = v25;
      if (v4 == a2)
      {
        goto LABEL_63;
      }
    }
  }

  v25 = 0;
LABEL_63:
  v28 = *a3;
  v56 = a3[1];
  if (*a3 == v56)
  {
    v49 = 1;
    goto LABEL_127;
  }

  v29 = 0;
  v30 = 1;
  while (1)
  {
    v31 = strlen(a4);
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v32 = v31;
    if (v31 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v31;
    if (v31)
    {
      memcpy(&__dst, a4, v31);
      __dst.__r_.__value_.__s.__data_[v32] = 0;
      v33 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_69:
        if (v33 - 4 < 0x13)
        {
          goto LABEL_75;
        }

        v35 = &__dst;
        goto LABEL_78;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v33 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_69;
      }
    }

    v33 = __dst.__r_.__value_.__l.__size_;
    v34 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v34 - __dst.__r_.__value_.__l.__size_ < 0x13)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 19 - v34)
      {
        sub_1E53DF584();
      }

LABEL_75:
      operator new();
    }

    v35 = __dst.__r_.__value_.__r.__words[0];
LABEL_78:
    v36 = v35 + v33;
    *v36 = *"/DesGenRetinaSecond";
    *(v36 + 15) = 1684959075;
    v37 = v33 + 19;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v33 + 19;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v37 & 0x7F;
    }

    v35->__r_.__value_.__s.__data_[v37] = 0;
    v60 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v66 = 0;
    std::to_string(&v67, v30);
    __p = v67;
    v38 = (v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v67.__r_.__value_.__r.__words[0];
    v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v67.__r_.__value_.__l.__size_;
    v40 = std::string::append(&v60, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v61[2] = v40->__r_.__value_.__r.__words[2];
    *v61 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = SHIBYTE(v61[2]);
    if ((SHIBYTE(v61[2]) & 0x8000000000000000) != 0)
    {
      v42 = v61[1];
      v43 = (v61[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v43 - v61[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v61[2] & 0x7FFFFFFFFFFFFFFFLL)) < v61[1] - v43 + 8)
        {
          sub_1E53DF584();
        }

LABEL_92:
        operator new();
      }

      v44 = v61[0];
    }

    else
    {
      if ((SHIBYTE(v61[2]) - 15) < 8)
      {
        goto LABEL_92;
      }

      v44 = v61;
    }

    *(v42 + v44) = 0x746C73722E74754FLL;
    v45 = v42 + 8;
    if (SHIBYTE(v61[2]) < 0)
    {
      v61[1] = v42 + 8;
    }

    else
    {
      HIBYTE(v61[2]) = v45 & 0x7F;
    }

    v45[v44] = 0;
    v46 = v61[0];
    v68[0] = v61[1];
    *(v68 + 7) = *(&v61[1] + 7);
    v47 = HIBYTE(v61[2]);
    memset(v61, 0, 24);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
      v62 = v46;
      *&v63 = v68[0];
      *(&v63 + 7) = *(v68 + 7);
      HIBYTE(v63) = v47;
      if (SHIBYTE(v61[2]) < 0)
      {
        operator delete(v61[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_100:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_101;
          }

          goto LABEL_106;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v62 = v46;
      *&v63 = v68[0];
      *(&v63 + 7) = *(v68 + 7);
      HIBYTE(v63) = v47;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_100;
      }
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_101:
      operator delete(v60.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_107;
      }

LABEL_102:
      operator delete(__dst.__r_.__value_.__l.__data_);
      goto LABEL_107;
    }

LABEL_106:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_102;
    }

LABEL_107:
    if (v63 >= 0)
    {
      v48 = &v62;
    }

    else
    {
      v48 = v62;
    }

    v49 = v48 != 0;
    if (!v48)
    {
      v50 = v29;
LABEL_125:
      v29 = v50;
      if (!v50)
      {
        goto LABEL_127;
      }

LABEL_126:
      fclose(v29);
      goto LABEL_127;
    }

    v50 = fopen(v48, "wb");
    if (!v50)
    {
      break;
    }

    if (v29)
    {
      fclose(v29);
    }

    v52 = *v28;
    v51 = v28[1];
    if (*v28 != v51)
    {
      do
      {
        fwrite(v52, 4uLL, 0x2BuLL, v50);
        v52 += 172;
      }

      while (v52 != v51);
    }

    ++v30;
    v28 += 3;
    v29 = v50;
    if (v28 == v56)
    {
      goto LABEL_125;
    }
  }

  v49 = 0;
  if (v29)
  {
    goto LABEL_126;
  }

LABEL_127:
  v5 = v25;
  if (v25)
  {
LABEL_128:
    fclose(v5);
  }

LABEL_129:
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
    if ((SHIBYTE(v65) & 0x80000000) == 0)
    {
      return v49;
    }

LABEL_133:
    operator delete(v64);
    return v49;
  }

  if (SHIBYTE(v65) < 0)
  {
    goto LABEL_133;
  }

  return v49;
}

void sub_1E546A214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if (a18 < 0)
    {
LABEL_5:
      operator delete(a13);
      if (a30 < 0)
      {
LABEL_8:
        operator delete(a25);
        if ((a24 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a24 & 0x80000000) == 0)
      {
LABEL_9:
        if (!v51)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_12:
      operator delete(a19);
      if (!v51)
      {
LABEL_18:
        if (v50)
        {
          fclose(v50);
          if ((a44 & 0x80000000) == 0)
          {
LABEL_20:
            if (a50 < 0)
            {
LABEL_21:
              operator delete(a45);
              _Unwind_Resume(a1);
            }

LABEL_16:
            _Unwind_Resume(a1);
          }
        }

        else if ((a44 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        operator delete(a39);
        if (a50 < 0)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }

LABEL_17:
      fclose(v51);
      goto LABEL_18;
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_5;
  }

  if (a30 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

uint64_t sub_1E546A424(unsigned __int16 **a1, unsigned __int16 **a2, char *__s)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0uLL;
  if (a1 == a2)
  {
LABEL_65:
    v28 = 1;
    if (SHIBYTE(v35) < 0)
    {
      goto LABEL_63;
    }

    return v28;
  }

  v5 = a1;
  v6 = 1;
  while (1)
  {
    v7 = strlen(__s);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memcpy(&__dst, __s, v7);
      __dst.__r_.__value_.__s.__data_[v8] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (size - 11 < 0xC)
        {
          goto LABEL_13;
        }

        p_dst = &__dst;
        goto LABEL_16;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    size = __dst.__r_.__value_.__l.__size_;
    v10 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v10 - __dst.__r_.__value_.__l.__size_ < 0xC)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 12 - v10)
      {
        sub_1E53DF584();
      }

LABEL_13:
      operator new();
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_16:
    v12 = p_dst + size;
    *v12 = *"/DesGenKPMem";
    *(v12 + 2) = 1835355472;
    v13 = size + 12;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size + 12;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v13 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v13] = 0;
    v32 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v37 = 0;
    std::to_string(&v38, v6);
    __p = v38;
    v14 = (v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v38.__r_.__value_.__r.__words[0];
    v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v38.__r_.__value_.__l.__size_;
    v16 = std::string::append(&v32, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v33[2] = v16->__r_.__value_.__r.__words[2];
    *v33 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = SHIBYTE(v33[2]);
    if ((SHIBYTE(v33[2]) & 0x8000000000000000) != 0)
    {
      v18 = v33[1];
      v19 = (v33[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v19 - v33[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v33[2] & 0x7FFFFFFFFFFFFFFFLL)) < v33[1] - v19 + 8)
        {
          sub_1E53DF584();
        }

LABEL_30:
        operator new();
      }

      v20 = v33[0];
    }

    else
    {
      if ((SHIBYTE(v33[2]) - 15) < 8)
      {
        goto LABEL_30;
      }

      v20 = v33;
    }

    *(v18 + v20) = 0x746C73722E74754FLL;
    v21 = v18 + 8;
    if (SHIBYTE(v33[2]) < 0)
    {
      v33[1] = v18 + 8;
    }

    else
    {
      HIBYTE(v33[2]) = v21 & 0x7F;
    }

    v21[v20] = 0;
    v22 = v33[0];
    v39[0] = v33[1];
    *(v39 + 7) = *(&v33[1] + 7);
    v23 = HIBYTE(v33[2]);
    memset(v33, 0, sizeof(v33));
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
      v34 = v22;
      *&v35 = v39[0];
      *(&v35 + 7) = *(v39 + 7);
      HIBYTE(v35) = v23;
      if (SHIBYTE(v33[2]) < 0)
      {
        operator delete(v33[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_38:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_39;
          }

          goto LABEL_48;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v34 = v22;
      *&v35 = v39[0];
      *(&v35 + 7) = *(v39 + 7);
      HIBYTE(v35) = v23;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_39:
      operator delete(v32.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_40;
      }

      goto LABEL_49;
    }

LABEL_48:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_40:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v35 >= 0)
      {
        v24 = &v34;
      }

      else
      {
        v24 = v34;
      }

      if (!v24)
      {
        goto LABEL_62;
      }

      goto LABEL_53;
    }

LABEL_49:
    if (v35 >= 0)
    {
      v24 = &v34;
    }

    else
    {
      v24 = v34;
    }

    if (!v24)
    {
      goto LABEL_62;
    }

LABEL_53:
    v25 = fopen(v24, "wb");
    if (!v25)
    {
      goto LABEL_62;
    }

    v26 = *v5;
    v27 = v5[1];
    if (*v5 != v27)
    {
      break;
    }

LABEL_57:
    ++v6;
    fclose(v25);
    v5 += 3;
    if (v5 == a2)
    {
      goto LABEL_65;
    }
  }

  while (1)
  {
    __ptr[0] = 0;
    __ptr[0] = *v26 | (*(v26 + 1) << 16) | (*(v26 + 12) << 32) | (*(v26 + 8) << 40) | ((*(v26 + 7) & 0x7FFF) << 48) | (*(v26 + 24) << 63);
    if (fwrite(__ptr, 1uLL, 8uLL, v25) != 8)
    {
      break;
    }

    v26 += 64;
    if (v26 == v27)
    {
      goto LABEL_57;
    }
  }

  fclose(v25);
LABEL_62:
  v28 = 0;
  if (SHIBYTE(v35) < 0)
  {
LABEL_63:
    operator delete(v34);
  }

  return v28;
}

void sub_1E546AA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if (a26 < 0)
      {
LABEL_8:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_9:
        if (a39 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(a15);
      if (a39 < 0)
      {
LABEL_10:
        operator delete(a34);
        _Unwind_Resume(a1);
      }

LABEL_13:
      _Unwind_Resume(a1);
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if (a26 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

BOOL sub_1E546AB90(char **a1, char **a2, char *__s)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0uLL;
  if (a1 == a2)
  {
    v24 = 1;
    goto LABEL_62;
  }

  v4 = a1;
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = strlen(__s);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memcpy(&__dst, __s, v7);
      __dst.__r_.__value_.__s.__data_[v8] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (size - 8 < 0xF)
        {
          goto LABEL_13;
        }

        p_dst = &__dst;
        goto LABEL_16;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    size = __dst.__r_.__value_.__l.__size_;
    v10 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v10 - __dst.__r_.__value_.__l.__size_ < 0xF)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 15 - v10)
      {
        sub_1E53DF584();
      }

LABEL_13:
      operator new();
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_16:
    qmemcpy(p_dst + size, "/DesGenDescLong", 15);
    v12 = size + 15;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size + 15;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v12 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v12] = 0;
    v32 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v36 = 0;
    std::to_string(&v37, v6);
    __p = v37;
    v13 = (v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v37.__r_.__value_.__r.__words[0];
    v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v37.__r_.__value_.__l.__size_;
    v15 = std::string::append(&v32, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v33[2] = v15->__r_.__value_.__r.__words[2];
    *v33 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = SHIBYTE(v33[2]);
    if ((SHIBYTE(v33[2]) & 0x8000000000000000) != 0)
    {
      v17 = v33[1];
      v18 = (v33[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v18 - v33[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v33[2] & 0x7FFFFFFFFFFFFFFFLL)) < v33[1] - v18 + 8)
        {
          sub_1E53DF584();
        }

LABEL_30:
        operator new();
      }

      v19 = v33[0];
    }

    else
    {
      if ((SHIBYTE(v33[2]) - 15) < 8)
      {
        goto LABEL_30;
      }

      v19 = v33;
    }

    *(v17 + v19) = 0x746C73722E74754FLL;
    v20 = v17 + 8;
    if (SHIBYTE(v33[2]) < 0)
    {
      v33[1] = v17 + 8;
    }

    else
    {
      HIBYTE(v33[2]) = v20 & 0x7F;
    }

    v20[v19] = 0;
    v21 = v33[0];
    v38[0] = v33[1];
    *(v38 + 7) = *(&v33[1] + 7);
    v22 = HIBYTE(v33[2]);
    memset(v33, 0, sizeof(v33));
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
      v34 = v21;
      *&v35 = v38[0];
      *(&v35 + 7) = *(v38 + 7);
      HIBYTE(v35) = v22;
      if (SHIBYTE(v33[2]) < 0)
      {
        operator delete(v33[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_38:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v34 = v21;
      *&v35 = v38[0];
      *(&v35 + 7) = *(v38 + 7);
      HIBYTE(v35) = v22;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_39:
      operator delete(v32.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_40:
      operator delete(__dst.__r_.__value_.__l.__data_);
      goto LABEL_45;
    }

LABEL_44:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

LABEL_45:
    if (v35 >= 0)
    {
      v23 = &v34;
    }

    else
    {
      v23 = v34;
    }

    v24 = v23 != 0;
    if (!v23)
    {
      v25 = v5;
LABEL_60:
      v5 = v25;
      if (!v25)
      {
        goto LABEL_62;
      }

LABEL_61:
      fclose(v5);
      goto LABEL_62;
    }

    v25 = fopen(v23, "wb");
    if (!v25)
    {
      break;
    }

    if (v5)
    {
      fclose(v5);
    }

    v26 = *v4;
    v27 = v4[1];
    if (*v4 != v27)
    {
      do
      {
        fwrite(v26, 4uLL, 0x10uLL, v25);
        v26 += 64;
      }

      while (v26 != v27);
    }

    ++v6;
    v4 += 3;
    v5 = v25;
    if (v4 == a2)
    {
      goto LABEL_60;
    }
  }

  v24 = 0;
  if (v5)
  {
    goto LABEL_61;
  }

LABEL_62:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  return v24;
}

void sub_1E546B198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if (a16 < 0)
    {
LABEL_5:
      operator delete(a11);
      if (a28 < 0)
      {
LABEL_8:
        operator delete(a23);
        if ((a22 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }

LABEL_12:
      if ((a22 & 0x80000000) == 0)
      {
LABEL_9:
        if (!v42)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(a17);
      if (!v42)
      {
LABEL_10:
        if (a41 < 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

LABEL_14:
      fclose(v42);
      if (a41 < 0)
      {
LABEL_11:
        operator delete(a36);
        _Unwind_Resume(a1);
      }

LABEL_15:
      _Unwind_Resume(a1);
    }
  }

  else if (a16 < 0)
  {
    goto LABEL_5;
  }

  if (a28 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_12;
}

BOOL sub_1E546B29C(char **a1, char **a2, char *__s)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0uLL;
  if (a1 == a2)
  {
    v24 = 1;
    goto LABEL_62;
  }

  v4 = a1;
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = strlen(__s);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memcpy(&__dst, __s, v7);
      __dst.__r_.__value_.__s.__data_[v8] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (size - 7 < 0x10)
        {
          goto LABEL_13;
        }

        p_dst = &__dst;
        goto LABEL_16;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    size = __dst.__r_.__value_.__l.__size_;
    v10 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v10 - __dst.__r_.__value_.__l.__size_ < 0x10)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 16 - v10)
      {
        sub_1E53DF584();
      }

LABEL_13:
      operator new();
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_16:
    *(&p_dst->__r_.__value_.__l.__data_ + size) = *"/DesGenDescShort";
    v12 = size + 16;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size + 16;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v12 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v12] = 0;
    v32 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v36 = 0;
    std::to_string(&v37, v6);
    __p = v37;
    v13 = (v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v37.__r_.__value_.__r.__words[0];
    v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v37.__r_.__value_.__l.__size_;
    v15 = std::string::append(&v32, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v33[2] = v15->__r_.__value_.__r.__words[2];
    *v33 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = SHIBYTE(v33[2]);
    if ((SHIBYTE(v33[2]) & 0x8000000000000000) != 0)
    {
      v17 = v33[1];
      v18 = (v33[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v18 - v33[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v33[2] & 0x7FFFFFFFFFFFFFFFLL)) < v33[1] - v18 + 8)
        {
          sub_1E53DF584();
        }

LABEL_30:
        operator new();
      }

      v19 = v33[0];
    }

    else
    {
      if ((SHIBYTE(v33[2]) - 15) < 8)
      {
        goto LABEL_30;
      }

      v19 = v33;
    }

    *(v17 + v19) = 0x746C73722E74754FLL;
    v20 = v17 + 8;
    if (SHIBYTE(v33[2]) < 0)
    {
      v33[1] = v17 + 8;
    }

    else
    {
      HIBYTE(v33[2]) = v20 & 0x7F;
    }

    v20[v19] = 0;
    v21 = v33[0];
    v38[0] = v33[1];
    *(v38 + 7) = *(&v33[1] + 7);
    v22 = HIBYTE(v33[2]);
    memset(v33, 0, sizeof(v33));
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
      v34 = v21;
      *&v35 = v38[0];
      *(&v35 + 7) = *(v38 + 7);
      HIBYTE(v35) = v22;
      if (SHIBYTE(v33[2]) < 0)
      {
        operator delete(v33[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_38:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v34 = v21;
      *&v35 = v38[0];
      *(&v35 + 7) = *(v38 + 7);
      HIBYTE(v35) = v22;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_39:
      operator delete(v32.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_40:
      operator delete(__dst.__r_.__value_.__l.__data_);
      goto LABEL_45;
    }

LABEL_44:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

LABEL_45:
    if (v35 >= 0)
    {
      v23 = &v34;
    }

    else
    {
      v23 = v34;
    }

    v24 = v23 != 0;
    if (!v23)
    {
      v25 = v5;
LABEL_60:
      v5 = v25;
      if (!v25)
      {
        goto LABEL_62;
      }

LABEL_61:
      fclose(v5);
      goto LABEL_62;
    }

    v25 = fopen(v23, "wb");
    if (!v25)
    {
      break;
    }

    if (v5)
    {
      fclose(v5);
    }

    v26 = *v4;
    v27 = v4[1];
    if (*v4 != v27)
    {
      do
      {
        fwrite(v26, 4uLL, 8uLL, v25);
        v26 += 64;
      }

      while (v26 != v27);
    }

    ++v6;
    v4 += 3;
    v5 = v25;
    if (v4 == a2)
    {
      goto LABEL_60;
    }
  }

  v24 = 0;
  if (v5)
  {
    goto LABEL_61;
  }

LABEL_62:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  return v24;
}

void sub_1E546B88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if (a16 < 0)
    {
LABEL_5:
      operator delete(a11);
      if (a28 < 0)
      {
LABEL_8:
        operator delete(a23);
        if ((a22 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }

LABEL_12:
      if ((a22 & 0x80000000) == 0)
      {
LABEL_9:
        if (!v42)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(a17);
      if (!v42)
      {
LABEL_10:
        if (a41 < 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

LABEL_14:
      fclose(v42);
      if (a41 < 0)
      {
LABEL_11:
        operator delete(a36);
        _Unwind_Resume(a1);
      }

LABEL_15:
      _Unwind_Resume(a1);
    }
  }

  else if (a16 < 0)
  {
    goto LABEL_5;
  }

  if (a28 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_12;
}

BOOL sub_1E546B990(const void **a1, uint64_t a2, char *__s)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1E53DF584();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v19) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    v8 = SHIBYTE(v19);
    if ((SHIBYTE(v19) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v8 = SHIBYTE(v19);
    if ((SHIBYTE(v19) & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v8 < 0x17u)
      {
        goto LABEL_11;
      }

      p_dst = &__dst;
      goto LABEL_14;
    }
  }

  v8 = *(&__dst + 1);
  v9 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if ((v9 - *(&__dst + 1)) < 0x18)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v19 & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst + 1) + 24 - v9)
    {
      sub_1E53DF584();
    }

LABEL_11:
    operator new();
  }

  p_dst = __dst;
LABEL_14:
  qmemcpy(p_dst + v8, "/DesGenHistogramOut.rslt", 24);
  v11 = v8 + 24;
  if (SHIBYTE(v19) < 0)
  {
    *(&__dst + 1) = v8 + 24;
  }

  else
  {
    HIBYTE(v19) = v11 & 0x7F;
  }

  *(p_dst + v11) = 0;
  *__p = __dst;
  v21 = v19;
  if (v19 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __dst;
  }

  if (v12)
  {
    v13 = fopen(v12, "wb");
    v14 = v13 != 0;
    if (v13)
    {
      v15 = 64;
      do
      {
        LODWORD(__dst) = 0;
        fwrite(&__dst, 4uLL, 1uLL, v13);
        --v15;
      }

      while (v15);
      if ((a2 - 1) >= 2)
      {
        v16 = a2 - 2;
        do
        {
          fwrite(*a1, 4uLL, 0x40uLL, v13);
          a1 += 3;
          --v16;
        }

        while (v16);
      }
    }

    if (v21 < 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    if (v19 < 0)
    {
LABEL_28:
      operator delete(__p[0]);
    }
  }

  if (v13)
  {
    fclose(v13);
  }

  return v14;
}

void sub_1E546BC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1E546BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, char *__s)
{
  v79[2] = *MEMORY[0x1E69E9840];
  result = sub_1E5464D78(*(a1 + 48), __s);
  if (!result)
  {
    return result;
  }

  result = sub_1E546569C(*(a1 + 56), __s);
  if (!result)
  {
    return result;
  }

  result = sub_1E5465FC8(*(a1 + 64), __s);
  if (!result)
  {
    return result;
  }

  result = sub_1E5466728(*(a2 + 248), __s);
  if (!result)
  {
    return result;
  }

  v65 = a5;
  v13 = *(a2 + 256);
  v15 = *(v13 + 200);
  v14 = *(v13 + 208);
  v73 = 0;
  v74 = 0uLL;
  v66 = v14;
  if (v15 == v14)
  {
LABEL_131:
    v38 = 1;
    if (SHIBYTE(v74) < 0)
    {
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v16 = 1;
  while (1)
  {
    v17 = strlen(__s);
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memcpy(&__dst, __s, v17);
    }

    __dst.__r_.__value_.__s.__data_[v18] = 0;
    size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v67 = v16;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
      v20 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v20 - __dst.__r_.__value_.__l.__size_ < 0xA)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 10 - v20)
        {
          sub_1E53DF584();
        }

LABEL_18:
        operator new();
      }

      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 13) < 0xA)
      {
        goto LABEL_18;
      }

      p_dst = &__dst;
    }

    v22 = p_dst + size;
    *v22 = *"/DesGenKPC";
    *(v22 + 4) = 17232;
    v23 = size + 10;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size + 10;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v23 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v23] = 0;
    v71 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v77 = 0;
    std::to_string(&v78, v16);
    __p = v78;
    v24 = (v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v78.__r_.__value_.__r.__words[0];
    v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v78.__r_.__value_.__l.__size_;
    v26 = std::string::append(&v71, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v72[2] = v26->__r_.__value_.__r.__words[2];
    *v72 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = SHIBYTE(v72[2]);
    if ((SHIBYTE(v72[2]) & 0x8000000000000000) != 0)
    {
      v28 = v72[1];
      v29 = (v72[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v29 - v72[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v72[2] & 0x7FFFFFFFFFFFFFFFLL)) < v72[1] - v29 + 8)
        {
          sub_1E53DF584();
        }

LABEL_35:
        operator new();
      }

      v30 = v72[0];
    }

    else
    {
      if ((SHIBYTE(v72[2]) - 15) < 8)
      {
        goto LABEL_35;
      }

      v30 = v72;
    }

    *(v28 + v30) = 0x746C73722E74754FLL;
    v31 = v28 + 8;
    if (SHIBYTE(v72[2]) < 0)
    {
      v72[1] = v28 + 8;
    }

    else
    {
      HIBYTE(v72[2]) = v31 & 0x7F;
    }

    v31[v30] = 0;
    v32 = v72[0];
    v79[0] = v72[1];
    *(v79 + 7) = *(&v72[1] + 7);
    v33 = HIBYTE(v72[2]);
    memset(v72, 0, sizeof(v72));
    if (SHIBYTE(v74) < 0)
    {
      operator delete(v73);
      v73 = v32;
      *&v74 = v79[0];
      *(&v74 + 7) = *(v79 + 7);
      HIBYTE(v74) = v33;
      if (SHIBYTE(v72[2]) < 0)
      {
        operator delete(v72[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_43:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_44;
          }

          goto LABEL_53;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v73 = v32;
      *&v74 = v79[0];
      *(&v74 + 7) = *(v79 + 7);
      HIBYTE(v74) = v33;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_43;
      }
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_44:
      operator delete(v71.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_45;
      }

      goto LABEL_54;
    }

LABEL_53:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_45:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v74 >= 0)
      {
        v34 = &v73;
      }

      else
      {
        v34 = v73;
      }

      if (!v34)
      {
        goto LABEL_67;
      }

      goto LABEL_58;
    }

LABEL_54:
    if (v74 >= 0)
    {
      v34 = &v73;
    }

    else
    {
      v34 = v73;
    }

    if (!v34)
    {
      goto LABEL_67;
    }

LABEL_58:
    v35 = fopen(v34, "wb");
    if (!v35)
    {
      goto LABEL_67;
    }

    v36 = *v15;
    v37 = v15[1];
    if (*v15 != v37)
    {
      break;
    }

LABEL_62:
    v16 = v67 + 1;
    fclose(v35);
    v15 += 3;
    if (v15 == v66)
    {
      goto LABEL_131;
    }
  }

  while (1)
  {
    __ptr = 0;
    __ptr = *v36 & 0xFFF | ((*(v36 + 4) & 0x1FFF) << 12) & 0xE1FFFFFF | ((*(v36 + 8) & 0xF) << 25) | (*(v36 + 12) << 45) | (*(v36 + 16) << 29);
    if (fwrite(&__ptr, 8uLL, 1uLL, v35) != 1)
    {
      break;
    }

    v36 += 20;
    if (v36 == v37)
    {
      goto LABEL_62;
    }
  }

  fclose(v35);
LABEL_67:
  v38 = 0;
  if (SHIBYTE(v74) < 0)
  {
LABEL_68:
    operator delete(v73);
  }

LABEL_69:
  if (!v38)
  {
    return 0;
  }

  v39 = *(a3 + 8);
  v41 = *(v39 + 200);
  v40 = *(v39 + 208);
  v73 = 0;
  v74 = 0uLL;
  v68 = v40;
  if (v41 == v40)
  {
LABEL_146:
    v64 = 1;
    if (SHIBYTE(v74) < 0)
    {
      goto LABEL_135;
    }

    goto LABEL_136;
  }

  v42 = 1;
  while (2)
  {
    v43 = strlen(__s);
    if (v43 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v44 = v43;
    if (v43 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v43;
    if (v43)
    {
      memcpy(&__dst, __s, v43);
    }

    __dst.__r_.__value_.__s.__data_[v44] = 0;
    v45 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v45 = __dst.__r_.__value_.__l.__size_;
      v46 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v46 - __dst.__r_.__value_.__l.__size_ < 0xD)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 13 - v46)
        {
          sub_1E53DF584();
        }

LABEL_83:
        operator new();
      }

      v47 = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 10) < 0xD)
      {
        goto LABEL_83;
      }

      v47 = &__dst;
    }

    qmemcpy(v47 + v45, "/DesGenKP0Mem", 13);
    v48 = v45 + 13;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v45 + 13;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v48 & 0x7F;
    }

    v47->__r_.__value_.__s.__data_[v48] = 0;
    v71 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v77 = 0;
    std::to_string(&v78, v42);
    __p = v78;
    v49 = (v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v78.__r_.__value_.__r.__words[0];
    v50 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v78.__r_.__value_.__l.__size_;
    v51 = std::string::append(&v71, v49, v50);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v72[2] = v51->__r_.__value_.__r.__words[2];
    *v72 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = SHIBYTE(v72[2]);
    if ((SHIBYTE(v72[2]) & 0x8000000000000000) != 0)
    {
      v53 = v72[1];
      v54 = (v72[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v54 - v72[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v72[2] & 0x7FFFFFFFFFFFFFFFLL)) < v72[1] - v54 + 8)
        {
          sub_1E53DF584();
        }

LABEL_100:
        operator new();
      }

      v55 = v72[0];
    }

    else
    {
      if ((SHIBYTE(v72[2]) - 15) < 8)
      {
        goto LABEL_100;
      }

      v55 = v72;
    }

    *(v53 + v55) = 0x746C73722E74754FLL;
    v56 = v53 + 8;
    if (SHIBYTE(v72[2]) < 0)
    {
      v72[1] = v53 + 8;
    }

    else
    {
      HIBYTE(v72[2]) = v56 & 0x7F;
    }

    v56[v55] = 0;
    v57 = v72[0];
    v79[0] = v72[1];
    *(v79 + 7) = *(&v72[1] + 7);
    v58 = HIBYTE(v72[2]);
    memset(v72, 0, sizeof(v72));
    if (SHIBYTE(v74) < 0)
    {
      operator delete(v73);
      v73 = v57;
      *&v74 = v79[0];
      *(&v74 + 7) = *(v79 + 7);
      HIBYTE(v74) = v58;
      if (SHIBYTE(v72[2]) < 0)
      {
        operator delete(v72[0]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_117;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_117;
      }

LABEL_108:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_109;
      }

LABEL_118:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

LABEL_110:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v74 >= 0)
      {
        v59 = &v73;
      }

      else
      {
        v59 = v73;
      }

      if (!v59)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v73 = v57;
      *&v74 = v79[0];
      *(&v74 + 7) = *(v79 + 7);
      HIBYTE(v74) = v58;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_108;
      }

LABEL_117:
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

LABEL_109:
      operator delete(v71.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_110;
      }

LABEL_119:
      if (v74 >= 0)
      {
        v59 = &v73;
      }

      else
      {
        v59 = v73;
      }

      if (!v59)
      {
        goto LABEL_134;
      }
    }

    v60 = fopen(v59, "wb");
    if (!v60)
    {
      goto LABEL_134;
    }

    v61 = *v41;
    v62 = v41[1];
    if (*v41 == v62)
    {
LABEL_127:
      ++v42;
      fclose(v60);
      v41 += 3;
      if (v41 == v68)
      {
        goto LABEL_146;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v76 = 0;
    __ptr = 0;
    v63 = *(v61 + 28) & 0x7FFF | ((*(v61 + 32) & 0x1FFF) << 16);
    __ptr = *v61 & 0x3FFFFLL | ((*(v61 + 4) & 0x7FFFF) << 32) | (*(v61 + 12) << 52) | (*(v61 + 8) << 23) | ((*(v61 + 20) & 7) << 60) | (*(v61 + 24) << 63);
    v76 = v63;
    if (fwrite(&__ptr, 1uLL, 0xCuLL, v60) != 12)
    {
      break;
    }

    v61 += 128;
    if (v61 == v62)
    {
      goto LABEL_127;
    }
  }

  fclose(v60);
LABEL_134:
  v64 = 0;
  if (SHIBYTE(v74) < 0)
  {
LABEL_135:
    operator delete(v73);
  }

LABEL_136:
  if (!v64)
  {
    return 0;
  }

  result = sub_1E546704C(*(a4 + 272), *(a4 + 280), (a4 + 296), __s);
  if (result)
  {
    result = sub_1E5468578((a4 + 368), *(a4 + 320), *(a4 + 328), (a4 + 344), __s);
    if (result)
    {
      result = sub_1E5469650(*(a4 + 224), *(a4 + 232), (a4 + 248), __s);
      if (result)
      {
        result = sub_1E546CBB4(*(a4 + 368), *(a4 + 376), __s);
        if (result)
        {
          result = sub_1E546AB90(*(a4 + 392), *(a4 + 400), __s);
          if (result)
          {
            result = sub_1E546B29C(*(a4 + 416), *(a4 + 424), __s);
            if (result)
            {
              return sub_1E546B990(v65, 0x8E38E38E38E38E39 * ((*(*(a1 + 48) + 56) - *(*(a1 + 48) + 48)) >> 4), __s);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1E546CA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if (a18 < 0)
    {
LABEL_5:
      operator delete(a13);
      if (a30 < 0)
      {
LABEL_8:
        operator delete(a25);
        if ((a24 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a24 & 0x80000000) == 0)
      {
LABEL_9:
        if (a43 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(a19);
      if (a43 < 0)
      {
LABEL_10:
        operator delete(a38);
        _Unwind_Resume(a1);
      }

LABEL_13:
      _Unwind_Resume(a1);
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_5;
  }

  if (a30 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

uint64_t sub_1E546CBB4(uint64_t *a1, uint64_t *a2, char *__s)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = 0uLL;
  if (a1 == a2)
  {
LABEL_65:
    v29 = 1;
    if (SHIBYTE(v36) < 0)
    {
      goto LABEL_63;
    }

    return v29;
  }

  v5 = a1;
  v6 = 1;
  while (1)
  {
    v7 = strlen(__s);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memcpy(&__dst, __s, v7);
      __dst.__r_.__value_.__s.__data_[v8] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (size - 11 < 0xC)
        {
          goto LABEL_13;
        }

        p_dst = &__dst;
        goto LABEL_16;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    size = __dst.__r_.__value_.__l.__size_;
    v10 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v10 - __dst.__r_.__value_.__l.__size_ < 0xC)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 12 - v10)
      {
        sub_1E53DF584();
      }

LABEL_13:
      operator new();
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_16:
    v12 = p_dst + size;
    *v12 = *"/DesGenKPMem";
    *(v12 + 2) = 1835355472;
    v13 = size + 12;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size + 12;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v13 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v13] = 0;
    v33 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v39 = 0;
    std::to_string(&v40, v6);
    __p = v40;
    v14 = (v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v40.__r_.__value_.__r.__words[0];
    v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v40.__r_.__value_.__l.__size_;
    v16 = std::string::append(&v33, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v34[2] = v16->__r_.__value_.__r.__words[2];
    *v34 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = SHIBYTE(v34[2]);
    if ((SHIBYTE(v34[2]) & 0x8000000000000000) != 0)
    {
      v18 = v34[1];
      v19 = (v34[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v19 - v34[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v34[2] & 0x7FFFFFFFFFFFFFFFLL)) < v34[1] - v19 + 8)
        {
          sub_1E53DF584();
        }

LABEL_30:
        operator new();
      }

      v20 = v34[0];
    }

    else
    {
      if ((SHIBYTE(v34[2]) - 15) < 8)
      {
        goto LABEL_30;
      }

      v20 = v34;
    }

    *(v18 + v20) = 0x746C73722E74754FLL;
    v21 = v18 + 8;
    if (SHIBYTE(v34[2]) < 0)
    {
      v34[1] = v18 + 8;
    }

    else
    {
      HIBYTE(v34[2]) = v21 & 0x7F;
    }

    v21[v20] = 0;
    v22 = v34[0];
    v41[0] = v34[1];
    *(v41 + 7) = *(&v34[1] + 7);
    v23 = HIBYTE(v34[2]);
    memset(v34, 0, sizeof(v34));
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
      v35 = v22;
      *&v36 = v41[0];
      *(&v36 + 7) = *(v41 + 7);
      HIBYTE(v36) = v23;
      if (SHIBYTE(v34[2]) < 0)
      {
        operator delete(v34[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_38:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_39;
          }

          goto LABEL_48;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v35 = v22;
      *&v36 = v41[0];
      *(&v36 + 7) = *(v41 + 7);
      HIBYTE(v36) = v23;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_39:
      operator delete(v33.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_40;
      }

      goto LABEL_49;
    }

LABEL_48:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_40:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v36 >= 0)
      {
        v24 = &v35;
      }

      else
      {
        v24 = v35;
      }

      if (!v24)
      {
        goto LABEL_62;
      }

      goto LABEL_53;
    }

LABEL_49:
    if (v36 >= 0)
    {
      v24 = &v35;
    }

    else
    {
      v24 = v35;
    }

    if (!v24)
    {
      goto LABEL_62;
    }

LABEL_53:
    v25 = fopen(v24, "wb");
    if (!v25)
    {
      goto LABEL_62;
    }

    v26 = *v5;
    v27 = v5[1];
    if (*v5 != v27)
    {
      break;
    }

LABEL_57:
    ++v6;
    fclose(v25);
    v5 += 3;
    if (v5 == a2)
    {
      goto LABEL_65;
    }
  }

  while (1)
  {
    v38 = 0;
    __ptr = 0;
    v28 = *(v26 + 28) & 0x7FFF | ((*(v26 + 32) & 0x1FFF) << 16);
    __ptr = *v26 & 0x3FFFFLL | ((*(v26 + 4) & 0x7FFFF) << 32) | (*(v26 + 12) << 52) | (*(v26 + 8) << 23) | ((*(v26 + 20) & 7) << 60) | (*(v26 + 24) << 63);
    v38 = v28;
    if (fwrite(&__ptr, 1uLL, 0xCuLL, v25) != 12)
    {
      break;
    }

    v26 += 128;
    if (v26 == v27)
    {
      goto LABEL_57;
    }
  }

  fclose(v25);
LABEL_62:
  v29 = 0;
  if (SHIBYTE(v36) < 0)
  {
LABEL_63:
    operator delete(v35);
  }

  return v29;
}

void sub_1E546D220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if (a26 < 0)
      {
LABEL_8:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_9:
        if (a39 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(a15);
      if (a39 < 0)
      {
LABEL_10:
        operator delete(a34);
        _Unwind_Resume(a1);
      }

LABEL_13:
      _Unwind_Resume(a1);
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if (a26 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

void sub_1E546D33C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_1E546D350(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 == v2)
    {
      a2[1] = v2;
    }

    else
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = *a2;
      a2[1] = v2;
    }

    operator delete(v5);
  }
}

uint64_t sub_1E546D3FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_1F5F0AEC0[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_1E546D458()
{
  v2 = *MEMORY[0x1E69E9840];
  memset(__p, 0, 24);
  __p[3] = __p;
  v1 = 0;
  operator new();
}

void sub_1E546D8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1E541AEA0(va);
  _Unwind_Resume(a1);
}

void sub_1E546D8BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E541B3D8(va);
  _Unwind_Resume(a1);
}

void sub_1E546D8D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E541B3D8(va);
  _Unwind_Resume(a1);
}

void sub_1E546D8FC(uint64_t a1, __int128 *a2)
{
  *a1 = xmmword_1E54921E0;
  *(a1 + 16) = vdupq_n_s64(3uLL);
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_1F5F0A120;
  *(a1 + 80) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  if (*(a2 + 4) != 1 || *(a2 + 3) != 2 || (v4 = *a2, *a2 < 0xA0uLL) || (v5 = *(a2 + 1), v5 < 0xA0) || (v5 > 0x140 ? (v6 = v4 > 0x140) : (v6 = 0), (v7 = *(a2 + 2), !v6) && v7 != 4 || v4 >= 0x141 && v5 >= 0x141 && v7 != 5))
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/GaussianPyramidGenerator.cpp", 34, "IsGaussianPyramidGeneratorConfigValid(config) && Invalid configuration", 72, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      abort();
    }
  }

  operator new();
}

void sub_1E546E854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_1E53F7E98(&a27);
  sub_1E547158C(a10);
  sub_1E546EA50(a14);
  sub_1E547167C(a12);
  sub_1E546EA50(a13);
  _Unwind_Resume(a1);
}

void sub_1E546E864(void *a1)
{
  __cxa_begin_catch(a1);
  MEMORY[0x1E6928610](v1, 0x1000C8052888210);
  __cxa_rethrow();
}

void sub_1E546E888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  __cxa_end_catch();
  sub_1E547158C(a10);
  sub_1E546EA50(a14);
  sub_1E547167C(a12);
  sub_1E546EA50(a13);
  _Unwind_Resume(a1);
}

void sub_1E546E8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43)
{
  v47 = *(v44 + 120);
  if (v47)
  {
    *(v44 + 128) = v47;
    operator delete(v47);
  }

  sub_1E54368D0(a17);
  *(v43 + 56) = v44;
  sub_1E54437AC(&a27);
  sub_1E53F7E98(v45 - 160);
  sub_1E547158C(a10);
  sub_1E546EA50(a14);
  sub_1E547167C(a12);
  sub_1E546EA50(a13);
  _Unwind_Resume(a1);
}

void sub_1E546E910(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

void sub_1E546E924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  __cxa_end_catch();
  sub_1E547158C(a10);
  sub_1E546EA50(a14);
  sub_1E547167C(a12);
  sub_1E546EA50(a13);
  _Unwind_Resume(a1);
}

void *sub_1E546E960(void *a1)
{
  *a1 = &unk_1F5F0A120;
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[12];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void *sub_1E546EA50(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[9];
    if (v3)
    {
      v1[10] = v3;
      operator delete(v3);
    }

    v4 = v1[6];
    if (v4)
    {
      v5 = v1[7];
      v6 = v1[6];
      if (v5 != v4)
      {
        v7 = v5 - 18;
        v8 = v5 - 18;
        v9 = v5 - 18;
        do
        {
          v10 = *v9;
          v9 -= 18;
          (*v10)(v8);
          v7 -= 18;
          v11 = v8 == v4;
          v8 = v9;
        }

        while (!v11);
        v6 = v1[6];
      }

      v1[7] = v4;
      operator delete(v6);
    }

    MEMORY[0x1E6928650](v1, 0x1020C4024B85F43);
    return v2;
  }

  return result;
}

unsigned __int8 *sub_1E546EB20(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, uint8x8_t a9, __n128 a10)
{
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  sub_1E546EC48(*(a2 + 88), *(a1 + 160), *(*(v13 + 48) + 88), *(a2 + 32), *(a2 + 40), *(*(v13 + 48) + 40), *(a2 + 48), qword_1E5492A00, a3, a4, a5, a6, a7, a8, a9, a10);
  sub_1E547261C(*(*(v13 + 48) + 88), *(*(v12 + 48) + 88), *(*(v13 + 48) + 32), *(*(v13 + 48) + 40), *(*(v12 + 48) + 40), *(*(v13 + 48) + 48));
  sub_1E546EC48(*(a2 + 88), *(a1 + 160), *(*(v13 + 48) + 232), *(a2 + 32), *(a2 + 40), *(*(v13 + 48) + 184), *(a2 + 48), qword_1E5492A12, v15, v16, v17, v18, v19, v20, v21, v22);
  result = sub_1E547261C(*(*(v13 + 48) + 232), *(*(v12 + 48) + 232), *(*(v13 + 48) + 176), *(*(v13 + 48) + 184), *(*(v12 + 48) + 184), *(a2 + 48));
  if (*(*(a1 + 48) + 16) >= 2uLL)
  {
    v24 = *(a2 + 88);
    v25 = *(a1 + 160);
    v26 = *(v14 + 48);
    v27 = *(v26 + 88);
    v28 = *(a2 + 32);
    v29 = *(a2 + 40);
    v30 = *(v26 + 40);
    v31 = *(a2 + 48);

    return sub_1E54702A4(v24, v25, v27, v28, v29, v30, v31, word_1E5492A48);
  }

  return result;
}

int16x8_t *sub_1E546EC48(int8x16_t *a1, int32x2_t *a2, int16x4_t *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint16x4_t *a8, double a9, double a10, double a11, double a12, double a13, double a14, uint8x8_t a15, __n128 a16)
{
  v17 = a8;
  v18 = a7;
  v21 = a2;
  v564 = a1;
  v22 = a7 * a6;
  v23 = a5;
  v24 = a4;
  v25 = 2 * a6;
  v560 = a4;
  v561 = a1;
  v536 = 2 * a6;
  v537 = a5;
  if (!a4)
  {
    sub_1E5472274(a3, a2, 0, a8);
    sub_1E5472274((a3 + v25), v21, 0, v17);
    sub_1E5472274((a3 + v25 + v25), v21, 0, v17);
    result = sub_1E5472274((a3 + v25 + v25 + v25), v21, 0, v17);
    goto LABEL_64;
  }

  v546 = v22;
  v26 = &a1->u8[a5];
  v27 = &v26[a5];
  v28 = &v27[a5];
  v29 = &v28[a5];
  v30 = &v29[a5];
  v31 = vmovl_u16(*a8);
  v32 = a8[1].u16[0];
  if (a4 < 4uLL)
  {
    v33 = 0;
    v34 = a1;
    v35 = &v27[a5 + a5];
    v36 = &v27[a5];
    v37 = &a1->u8[a5 + a5];
    v38 = &a1->u8[a5];
    goto LABEL_16;
  }

  v43 = vdupq_lane_s32(*v31.i8, 0);
  v44 = vdupq_lane_s32(*v31.i8, 1);
  v45 = vdupq_laneq_s32(v31, 2);
  v46 = vdupq_laneq_s32(v31, 3);
  v47 = vdupq_n_s32(v32);
  if (a4 >= 0x10uLL)
  {
    v33 = a4 - (a4 & 0xF);
    a15.i32[1] = -255;
    a16.n128_u32[1] = -251;
    v16.i32[1] = -247;
    v49 = v33;
    v50 = a2;
    v51 = a1;
    do
    {
      v52 = vqtbl1q_s8(*v51, xmmword_1E54929B0);
      v53 = vqtbl1q_s8(*v51, xmmword_1E54929C0);
      v54 = vqtbl1q_s8(*v51, xmmword_1E54929D0);
      v55 = *(v51 + 4 * a5);
      v56 = vqtbl1q_s8(*v51, xmmword_1E54929E0);
      v57 = *(v51 + 3 * a5);
      v58 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v55, xmmword_1E54929E0), v56), v43), vaddq_s32(vqtbl1q_s8(v57, xmmword_1E54929E0), v56), v44);
      v59 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v55, xmmword_1E54929D0), v54), v43), vaddq_s32(vqtbl1q_s8(v57, xmmword_1E54929D0), v54), v44);
      v60 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v55, xmmword_1E54929C0), v53), v43), vaddq_s32(vqtbl1q_s8(v57, xmmword_1E54929C0), v53), v44);
      v61 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v55, xmmword_1E54929B0), v52), v43), vaddq_s32(vqtbl1q_s8(v57, xmmword_1E54929B0), v52), v44);
      v62 = *(v51 + 2 * a5);
      v63 = vqtbl1q_s8(v62, xmmword_1E54929E0);
      v64 = vmlaq_s32(v61, vaddq_s32(vqtbl1q_s8(v62, xmmword_1E54929B0), v52), v45);
      v65 = vmlaq_s32(v60, vaddq_s32(vqtbl1q_s8(v62, xmmword_1E54929C0), v53), v45);
      v66 = vmlaq_s32(v59, vaddq_s32(vqtbl1q_s8(v62, xmmword_1E54929D0), v54), v45);
      v67 = *(v51 + a5);
      v50[2] = vmlaq_s32(vmlaq_s32(v66, vaddq_s32(vqtbl1q_s8(v67, xmmword_1E54929D0), v54), v46), v47, v54);
      v50[3] = vmlaq_s32(vmlaq_s32(vmlaq_s32(v58, vaddq_s32(v63, v56), v45), vaddq_s32(vqtbl1q_s8(v67, xmmword_1E54929E0), v56), v46), v47, v56);
      *v50 = vmlaq_s32(vmlaq_s32(v64, vaddq_s32(vqtbl1q_s8(v67, xmmword_1E54929B0), v52), v46), v47, v52);
      v50[1] = vmlaq_s32(vmlaq_s32(v65, vaddq_s32(vqtbl1q_s8(v67, xmmword_1E54929C0), v53), v46), v47, v53);
      v50 += 4;
      ++v51;
      v49 -= 16;
    }

    while (v49);
    if ((a4 & 0xF) == 0)
    {
      goto LABEL_18;
    }

    if ((a4 & 0xF) <= 3uLL)
    {
      v38 = &v26[v33];
      v37 = &v27[v33];
      v36 = &v28[v33];
      v35 = &v29[v33];
      v34 = (a1 + v33);
LABEL_16:
      v79 = v24 - v33;
      v80 = v21 + v33;
      v81.i64[0] = 0xFF000000FFLL;
      v81.i64[1] = 0xFF000000FFLL;
      do
      {
        v83 = *v35++;
        v82 = v83;
        v85 = *v36++;
        v84 = v85;
        v87 = v34->u8[0];
        v34 = (v34 + 1);
        v86 = v87;
        LOWORD(v87) = *v37++;
        v88 = v87;
        v89.i16[0] = v82;
        LOWORD(v87) = *v38++;
        v89.i16[1] = v84;
        v89.i16[2] = v88;
        v89.i16[3] = v87;
        *v80++ = vaddvq_s32(vmulq_s32(vaddq_s32(vdupq_n_s32(v86), vandq_s8(vmovl_u16(v89), v81)), v31)) + v86 * v32;
        --v79;
      }

      while (v79);
      goto LABEL_18;
    }

    v48 = a4 - (a4 & 0xF);
  }

  else
  {
    v48 = 0;
  }

  v33 = a4 - (a4 & 3);
  v34 = (a1 + v33);
  v35 = &v29[v33];
  v36 = &v28[v33];
  v37 = &v27[v33];
  v38 = &v26[v33];
  v68 = vmovn_s32(v47);
  v69 = v33;
  v70 = &v27[a5 + a5];
  v71 = &v27[a5];
  v72 = &a1->i8[a5 + a5];
  v73 = &a1->i8[a5];
  v74 = (v21 + 4 * v48);
  do
  {
    a15.i32[0] = *(a1->i32 + v48);
    a15 = vmovl_u8(a15).u64[0];
    a16.n128_u32[0] = *&v70[v48];
    v16.i32[0] = *&v71[v48];
    v75 = vaddl_u16(*&vmovl_u8(*v16.i8), a15);
    v76 = vmlaq_s32(vmulq_s32(vaddl_u16(*&vmovl_u8(a16.n128_u64[0]), a15), v43), v75, v44);
    v75.i32[0] = *&v72[v48];
    v77 = vaddl_u16(*&vmovl_u8(*v75.i8), a15);
    v78 = vmlaq_s32(v76, v77, v45);
    v77.i32[0] = *&v73[v48];
    v16 = vaddl_u16(*&vmovl_u8(*v77.i8), a15);
    a16 = vmlal_u16(vmlaq_s32(v78, v16, v46), v68, a15);
    *v74++ = a16;
    v73 += 4;
    v72 += 4;
    v71 += 4;
    v70 += 4;
    a1 = (a1 + 4);
    v69 -= 4;
  }

  while (v48 != v69);
  v23 = v537;
  if ((a4 & 3) != 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  v551 = v18;
  v554 = a3;
  v90 = &v30[v23];
  sub_1E5472274(a3, v21, a4, a8);
  v95 = vmovl_u16(*a8);
  v96 = a8[1].u16[0];
  if (v560 < 4)
  {
    v97 = 0;
    v98 = v561;
    v99 = v30;
    v100 = v29;
    v101 = v28;
    v102 = v27;
    v103 = v26;
    v104 = v537;
    goto LABEL_31;
  }

  v105 = vdupq_lane_s32(*v95.i8, 0);
  v106 = vdupq_lane_s32(*v95.i8, 1);
  v107 = vdupq_laneq_s32(v95, 2);
  v108 = vdupq_laneq_s32(v95, 3);
  v109 = v561;
  if (v560 >= 0x10)
  {
    v97 = v560 - (a4 & 0xF);
    v104 = v537;
    v91.i32[1] = -251;
    v92.i32[1] = -247;
    v93.i32[1] = -243;
    v94 = vdupq_n_s16(v96);
    v111 = v97;
    v112 = v21;
    v113 = v561;
    do
    {
      v114 = vqtbl1q_s8(*v113, xmmword_1E54929B0);
      v115 = vqtbl1q_s8(*v113, xmmword_1E54929C0);
      v116 = vqtbl1q_s8(*v113, xmmword_1E54929D0);
      v117 = vqtbl1q_s8(*v113, xmmword_1E54929E0);
      v118 = *(v113 + 5 * v537);
      v119 = *(v113 + 4 * v537);
      v120 = vqtbl1q_s8(v119, xmmword_1E54929B0);
      v121 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v118, xmmword_1E54929E0), v117), v105), vaddq_s32(vqtbl1q_s8(v119, xmmword_1E54929E0), v117), v106);
      v122 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v118, xmmword_1E54929D0), v116), v105), vaddq_s32(vqtbl1q_s8(v119, xmmword_1E54929D0), v116), v106);
      v123 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v118, xmmword_1E54929C0), v115), v105), vaddq_s32(vqtbl1q_s8(v119, xmmword_1E54929C0), v115), v106);
      v124 = *(v113 + 3 * v537);
      v125 = vmlaq_s32(vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v118, xmmword_1E54929B0), v114), v105), vaddq_s32(v120, v114), v106), vaddq_s32(vqtbl1q_s8(v124, xmmword_1E54929B0), v114), v107);
      v126 = vmlaq_s32(v123, vaddq_s32(vqtbl1q_s8(v124, xmmword_1E54929C0), v115), v107);
      v127 = vmlaq_s32(v122, vaddq_s32(vqtbl1q_s8(v124, xmmword_1E54929D0), v116), v107);
      v128 = vmlaq_s32(v121, vaddq_s32(vqtbl1q_s8(v124, xmmword_1E54929E0), v117), v107);
      v129 = *(v113 + 2 * v537);
      v130 = vmlaq_s32(v126, vaddq_s32(vqtbl1q_s8(v129, xmmword_1E54929C0), v115), v108);
      v131 = vmlaq_s32(v125, vaddq_s32(vqtbl1q_s8(v129, xmmword_1E54929B0), v114), v108);
      v132 = *(v113 + v537);
      v133 = vmovl_high_u8(v132);
      v134 = vmovl_u8(*v132.i8);
      v112[2] = vmlal_u16(vmlaq_s32(v127, vaddq_s32(vqtbl1q_s8(v129, xmmword_1E54929D0), v116), v108), *v94.i8, *v133.i8);
      v112[3] = vmlal_high_u16(vmlaq_s32(v128, vaddq_s32(vqtbl1q_s8(v129, xmmword_1E54929E0), v117), v108), v94, v133);
      *v112 = vmlal_u16(v131, *v94.i8, *v134.i8);
      v112[1] = vmlal_high_u16(v130, v94, v134);
      v112 += 4;
      ++v113;
      v111 -= 16;
    }

    while (v111);
    if ((a4 & 0xF) == 0)
    {
      goto LABEL_33;
    }

    if ((a4 & 0xF) < 4uLL)
    {
      v103 = &v26[v97];
      v102 = &v27[v97];
      v101 = &v28[v97];
      v100 = &v29[v97];
      v99 = &v30[v97];
      v98 = (v561 + v97);
LABEL_31:
      v149 = v560 - v97;
      v150 = v21 + v97;
      v151.i64[0] = 0xFF000000FFLL;
      v151.i64[1] = 0xFF000000FFLL;
      do
      {
        v153 = v98->u8[0];
        v98 = (v98 + 1);
        v152 = v153;
        LOWORD(v153) = *v99++;
        v154 = v153;
        LOWORD(v153) = *v100++;
        v155 = v153;
        LOWORD(v153) = *v101++;
        v156 = v153;
        v157.i16[0] = v154;
        v157.i16[1] = v155;
        LOWORD(v153) = *v102++;
        v157.i16[2] = v156;
        v157.i16[3] = v153;
        v158 = *v103++;
        *v150++ = vaddvq_s32(vmulq_s32(vaddq_s32(vdupq_n_s32(v152), vandq_s8(vmovl_u16(v157), v151)), v95)) + v158 * v96;
        --v149;
      }

      while (v149);
      goto LABEL_33;
    }

    v110 = v560 - (a4 & 0xF);
    v109 = v561;
  }

  else
  {
    v110 = 0;
  }

  v97 = v560 - (a4 & 3);
  v98 = (v109 + v97);
  v99 = &v30[v97];
  v100 = &v29[v97];
  v101 = &v28[v97];
  v102 = &v27[v97];
  v103 = &v26[v97];
  v135 = vdup_n_s16(v96);
  v136 = v97;
  v137 = v30;
  v138 = v29;
  v139 = v28;
  v140 = v27;
  v141 = v26;
  v142 = (v21 + 4 * v110);
  do
  {
    v91.i32[0] = *(v109->i32 + v110);
    v143 = vmovl_u8(v91).u64[0];
    v92.i32[0] = *&v137[v110];
    v93.i32[0] = *&v138[v110];
    v144 = vaddl_u16(*&vmovl_u8(v93), v143);
    v145 = vmlaq_s32(vmulq_s32(vaddl_u16(*&vmovl_u8(*v92.i8), v143), v105), v144, v106);
    v144.i32[0] = *&v139[v110];
    v94.i32[0] = *&v140[v110];
    v146 = vmlaq_s32(v145, vaddl_u16(*&vmovl_u8(*v144.i8), v143), v107);
    v93 = vmovl_u8(*v94.i8).u64[0];
    v147 = vaddl_u16(v93, v143);
    v148 = vmlaq_s32(v146, v147, v108);
    v147.i32[0] = *&v141[v110];
    v91 = vmovl_u8(*v147.i8).u64[0];
    v92 = vmlal_u16(v148, v135, v91);
    *v142++ = v92;
    v141 += 4;
    v140 += 4;
    v139 += 4;
    v138 += 4;
    v137 += 4;
    v109 = (v109 + 4);
    v136 -= 4;
  }

  while (v110 != v136);
  v104 = v537;
  if ((a4 & 3) != 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  v159 = &v90[v104];
  sub_1E5472274((v554 + 2 * a6), v21, a4, a8);
  v164 = vmovl_u16(*a8);
  v165 = a8[1].u16[0];
  if (v560 < 4)
  {
    v166 = 0;
    v167 = v561;
    v168 = v90;
    v169 = v30;
    v170 = v29;
    v171 = v28;
    v172 = v27;
    v173 = v26;
    goto LABEL_46;
  }

  v174 = vdupq_lane_s32(*v164.i8, 0);
  v175 = vdupq_lane_s32(*v164.i8, 1);
  v160 = vdupq_laneq_s32(v164, 2);
  v176 = vdupq_laneq_s32(v164, 3);
  v177 = v561;
  if (v560 >= 0x10)
  {
    v166 = v560 - (a4 & 0xF);
    v161.i32[1] = -251;
    v162.i32[1] = -247;
    v163.i32[1] = -243;
    v179 = vdupq_n_s16(v165);
    v180 = v166;
    v181 = v21;
    v182 = v561;
    do
    {
      v183 = vqtbl1q_s8(*v182, xmmword_1E54929B0);
      v184 = vqtbl1q_s8(*v182, xmmword_1E54929C0);
      v185 = vqtbl1q_s8(*v182, xmmword_1E54929D0);
      v186 = vqtbl1q_s8(*v182, xmmword_1E54929E0);
      v187 = *(v182 + 6 * v537);
      v188 = *(v182 + 5 * v537);
      v189 = vqtbl1q_s8(v188, xmmword_1E54929B0);
      v190 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v187, xmmword_1E54929E0), v186), v174), vaddq_s32(vqtbl1q_s8(v188, xmmword_1E54929E0), v186), v175);
      v191 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v187, xmmword_1E54929D0), v185), v174), vaddq_s32(vqtbl1q_s8(v188, xmmword_1E54929D0), v185), v175);
      v192 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v187, xmmword_1E54929C0), v184), v174), vaddq_s32(vqtbl1q_s8(v188, xmmword_1E54929C0), v184), v175);
      v193 = *(v182 + 4 * v537);
      v194 = vmlaq_s32(vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v187, xmmword_1E54929B0), v183), v174), vaddq_s32(v189, v183), v175), vaddq_s32(vqtbl1q_s8(v193, xmmword_1E54929B0), v183), v160);
      v195 = vmlaq_s32(v192, vaddq_s32(vqtbl1q_s8(v193, xmmword_1E54929C0), v184), v160);
      v196 = vmlaq_s32(v191, vaddq_s32(vqtbl1q_s8(v193, xmmword_1E54929D0), v185), v160);
      v197 = *(v182 + v537);
      v198 = *(v182 + 3 * v537);
      v199 = vaddl_high_u8(v198, v197);
      v200 = vaddl_u8(*v198.i8, *v197.i8);
      v201 = vmlaq_s32(v195, vmovl_high_u16(v200), v176);
      v202 = vmlaq_s32(v194, vmovl_u16(*v200.i8), v176);
      v203 = *(v182 + 2 * v537);
      v204 = vmovl_high_u8(v203);
      v205 = vmovl_u8(*v203.i8);
      v181[2] = vmlal_u16(vmlaq_s32(v196, vmovl_u16(*v199.i8), v176), *v179.i8, *v204.i8);
      v181[3] = vmlal_high_u16(vmlaq_s32(vmlaq_s32(v190, vaddq_s32(vqtbl1q_s8(v193, xmmword_1E54929E0), v186), v160), vmovl_high_u16(v199), v176), v179, v204);
      *v181 = vmlal_u16(v202, *v179.i8, *v205.i8);
      v181[1] = vmlal_high_u16(v201, v179, v205);
      v181 += 4;
      ++v182;
      v180 -= 16;
    }

    while (v180);
    if ((a4 & 0xF) == 0)
    {
      goto LABEL_48;
    }

    if ((a4 & 0xF) < 4uLL)
    {
      v173 = &v26[v166];
      v172 = &v27[v166];
      v171 = &v28[v166];
      v170 = &v29[v166];
      v169 = &v30[v166];
      v168 = &v90[v166];
      v167 = (v561 + v166);
LABEL_46:
      v222 = v560 - v166;
      v223 = v21 + v166;
      v224.i64[0] = 0xFF000000FFLL;
      v224.i64[1] = 0xFF000000FFLL;
      do
      {
        v226 = *v168++;
        v225 = v226;
        v228 = v167->u8[0];
        v167 = (v167 + 1);
        v227 = v228;
        LOWORD(v228) = *v169++;
        v229 = v228;
        LOWORD(v228) = *v170++;
        v230 = v228;
        v232 = *v173++;
        v231 = v232;
        LOWORD(v232) = *v171++;
        *v160.i8 = vand_s8(__PAIR64__(v231, v227), 0xFF000000FFLL);
        v233.i16[0] = v225;
        v233.i16[1] = v229;
        v234 = vzip1q_s32(v160, v160);
        v233.i16[2] = v230;
        v233.i16[3] = v232;
        v234.i32[2] = v160.i32[0];
        v160 = vmulq_s32(vaddq_s32(v234, vandq_s8(vmovl_u16(v233), v224)), v164);
        v235 = *v172++;
        *v223++ = vaddvq_s32(v160) + v235 * v165;
        --v222;
      }

      while (v222);
      goto LABEL_48;
    }

    v178 = v560 - (a4 & 0xF);
    v177 = v561;
  }

  else
  {
    v178 = 0;
  }

  v166 = v560 - (a4 & 3);
  v167 = (v177 + v166);
  v168 = &v90[v166];
  v169 = &v30[v166];
  v170 = &v29[v166];
  v171 = &v28[v166];
  v172 = &v27[v166];
  v173 = &v26[v166];
  v206 = vdup_n_s16(v165);
  v207 = v166;
  v208 = v90;
  v209 = v30;
  v210 = v29;
  v211 = v28;
  v212 = v27;
  v213 = v26;
  v214 = (v21 + 4 * v178);
  do
  {
    v161.i32[0] = *(v177->i32 + v178);
    v215 = vmovl_u8(v161).u64[0];
    v162.i32[0] = *&v208[v178];
    v163.i32[0] = *&v209[v178];
    v216 = vaddl_u16(*&vmovl_u8(v163), v215);
    v217 = vmlaq_s32(vmulq_s32(vaddl_u16(*&vmovl_u8(*v162.i8), v215), v174), v216, v175);
    v216.i32[0] = *&v210[v178];
    v216.i64[0] = vmovl_u8(*v216.i8).u64[0];
    v218 = vaddl_u16(*v216.i8, v215);
    v219 = vmlaq_s32(v217, v218, v160);
    v218.i32[0] = *&v213[v178];
    v216.i32[0] = *&v211[v178];
    v163 = vmovl_u8(*v216.i8).u64[0];
    v220 = vaddl_u16(v163, *&vmovl_u8(*v218.i8));
    v221 = vmlaq_s32(v219, v220, v176);
    v220.i32[0] = *&v212[v178];
    v161 = vmovl_u8(*v220.i8).u64[0];
    v162 = vmlal_u16(v221, v206, v161);
    *v214++ = v162;
    v213 += 4;
    v212 += 4;
    v211 += 4;
    v210 += 4;
    v209 += 4;
    v208 += 4;
    v177 = (v177 + 4);
    v207 -= 4;
  }

  while (v178 != v207);
  v21 = a2;
  if ((a4 & 3) != 0)
  {
    goto LABEL_46;
  }

LABEL_48:
  v543 = (v554 + 2 * a6 + 2 * a6);
  sub_1E5472274(v543, v21, a4, a8);
  v239 = a8->u16[0];
  v240 = a8->u16[1];
  v241 = a8->u16[2];
  v242 = a8->u16[3];
  v243 = a8[1].u16[0];
  if (v560 < 4)
  {
    v244 = 0;
    v245 = v561;
    v246 = v26;
    v247 = v159;
    v248 = v90;
    v249 = v30;
    v250 = v29;
    v251 = v28;
    v252 = v27;
    goto LABEL_61;
  }

  v253 = vdupq_n_s32(v239);
  v254 = vdupq_n_s32(v240);
  v255 = vdupq_n_s32(v241);
  v256 = vdupq_n_s32(v242);
  v257 = v561;
  if (v560 < 0x10)
  {
    v258 = 0;
LABEL_58:
    v244 = v560 - (a4 & 3);
    v245 = (v257 + v244);
    v246 = &v26[v244];
    v247 = &v159[v244];
    v248 = &v90[v244];
    v249 = &v30[v244];
    v250 = &v29[v244];
    v251 = &v28[v244];
    v252 = &v27[v244];
    v292 = vdup_n_s16(v243);
    v293 = v244;
    v294 = (v21 + 4 * v258);
    do
    {
      v236.i32[0] = *(v257->i32 + v258);
      v295 = vmovl_u8(v236).u64[0];
      v237.i32[0] = *&v159[v258];
      v238.i32[0] = *&v90[v258];
      v296 = vmulq_s32(vaddl_u16(*&vmovl_u8(*v237.i8), v295), v253);
      v297 = vmovl_u8(v238).u64[0];
      v298 = vaddl_u16(v297, v295);
      v299 = vmlaq_s32(v296, v298, v254);
      v298.i32[0] = *&v26[v258];
      v297.i32[0] = *&v30[v258];
      v300 = vmovl_u8(v297).u64[0];
      v301 = vaddl_u16(v300, *&vmovl_u8(*v298.i8));
      v302 = vmlaq_s32(v299, v301, v255);
      v301.i32[0] = *&v27[v258];
      v300.i32[0] = *&v29[v258];
      v238 = vmovl_u8(v300).u64[0];
      v303 = vaddl_u16(v238, *&vmovl_u8(*v301.i8));
      v304 = vmlaq_s32(v302, v303, v256);
      v303.i32[0] = *&v28[v258];
      v236 = vmovl_u8(*v303.i8).u64[0];
      v237 = vmlal_u16(v304, v292, v236);
      *v294++ = v237;
      v27 += 4;
      v28 += 4;
      v29 += 4;
      v30 += 4;
      v90 += 4;
      v159 += 4;
      v26 += 4;
      v257 = (v257 + 4);
      v293 -= 4;
    }

    while (v258 != v293);
    if ((a4 & 3) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  v259 = 0;
  v244 = v560 - (a4 & 0xF);
  v236.i32[1] = -251;
  v237.i32[1] = -247;
  v238.i32[1] = -243;
  v260 = vuzp1q_s16(v255, v255);
  v261 = vuzp1q_s16(v256, v256);
  v262 = vdupq_n_s16(v243);
  v263 = v21;
  do
  {
    v264 = v561[v259 / 0x10];
    v265 = vqtbl1q_s8(v264, xmmword_1E54929B0);
    v266 = vqtbl1q_s8(v264, xmmword_1E54929C0);
    v267 = vqtbl1q_s8(v264, xmmword_1E54929D0);
    v268 = vqtbl1q_s8(v264, xmmword_1E54929E0);
    v269 = *&v159[v259];
    v270 = vaddq_s32(vqtbl1q_s8(v269, xmmword_1E54929E0), v268);
    v271 = *&v90[v259];
    v272 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v269, xmmword_1E54929D0), v267), v253), vaddq_s32(vqtbl1q_s8(v271, xmmword_1E54929D0), v267), v254);
    v273 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v269, xmmword_1E54929C0), v266), v253), vaddq_s32(vqtbl1q_s8(v271, xmmword_1E54929C0), v266), v254);
    v274 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v269, xmmword_1E54929B0), v265), v253), vaddq_s32(vqtbl1q_s8(v271, xmmword_1E54929B0), v265), v254);
    v275 = *&v26[v259];
    v276 = *&v30[v259];
    v277 = vaddl_high_u8(v276, v275);
    v278 = vaddl_u8(*v276.i8, *v275.i8);
    v279 = vmlal_u16(v274, *v278.i8, *v260.i8);
    v280 = vmlal_high_u16(v273, v278, v260);
    v281 = vmlal_u16(v272, *v277.i8, *v260.i8);
    v282 = *&v27[v259];
    v283 = vmlal_high_u16(vmlaq_s32(vmulq_s32(v270, v253), vaddq_s32(vqtbl1q_s8(v271, xmmword_1E54929E0), v268), v254), v277, v260);
    v284 = *&v29[v259];
    v285 = vaddl_u8(*v284.i8, *v282.i8);
    v286 = vaddl_high_u8(v284, v282);
    v287 = vmlal_high_u16(v283, v286, v261);
    v288 = vmlal_u16(v281, *v286.i8, *v261.i8);
    v289 = *&v28[v259];
    v290 = vmovl_high_u8(v289);
    v291 = vmovl_u8(*v289.i8);
    v263[2] = vmlal_u16(v288, *v262.i8, *v290.i8);
    v263[3] = vmlal_high_u16(v287, v262, v290);
    *v263 = vmlal_u16(vmlal_u16(v279, *v285.i8, *v261.i8), *v262.i8, *v291.i8);
    v263[1] = vmlal_high_u16(vmlal_high_u16(v280, v285, v261), v262, v291);
    v263 += 4;
    v259 += 16;
  }

  while (v244 != v259);
  if ((a4 & 0xF) == 0)
  {
    goto LABEL_63;
  }

  if ((a4 & 0xF) >= 4uLL)
  {
    v258 = v560 - (a4 & 0xF);
    v257 = v561;
    goto LABEL_58;
  }

  v252 = &v27[v244];
  v251 = &v28[v244];
  v250 = &v29[v244];
  v249 = &v30[v244];
  v248 = &v90[v244];
  v247 = &v159[v244];
  v246 = &v26[v244];
  v245 = (v561 + v244);
LABEL_61:
  v305 = v560 - v244;
  v306 = v21 + v244;
  do
  {
    v308 = v245->u8[0];
    v245 = (v245 + 1);
    v307 = v308;
    v309 = *v247++;
    v310 = (v309 + v307) * v239;
    v311 = *v248++;
    v312 = v310 + (v311 + v307) * v240;
    v314 = *v246++;
    v313 = v314;
    v315 = *v249++;
    v316 = v312 + (v315 + v313) * v241;
    v318 = *v252++;
    v317 = v318;
    v319 = *v250++;
    v320 = v316 + (v319 + v317) * v242;
    v321 = *v251++;
    *v306++ = v320 + v321 * v243;
    --v305;
  }

  while (v305);
LABEL_63:
  v17 = a8;
  result = sub_1E5472274((v543 + 2 * a6), v21, a4, a8);
  v25 = v536;
  v18 = v551;
  a3 = v554;
  v22 = v546;
LABEL_64:
  v544 = (a3 + 2 * v22);
  v545 = a4;
  v322 = (a3 + 2 * v25 + v25 + v25);
  v547 = v18 - 4;
  if ((v18 - 4) < 5)
  {
    v552 = (a3 + 2 * v25 + v25 + v25);
    v323 = v560;
    v324 = v561;
  }

  else
  {
    v323 = v560;
    v324 = v561;
    if (a4)
    {
      v552 = (a3 + 2 * v25 + v25 + v25);
      v325 = a5;
      v541 = a4 & 0xF;
      v540 = v560 - v541;
      v539 = a4 & 3;
      v538 = v560 - v539;
      v326 = &v561->i8[3 * a5];
      v327 = &v561->i8[4 * a5];
      v328 = &v561->i8[5 * a5];
      v329 = &v561->i8[6 * a5];
      v330 = &v561->i8[7 * a5];
      v331 = &v561->i8[8 * a5];
      v332 = &v561->i8[2 * a5];
      v333 = &v561->i8[a5];
      v334.i64[0] = 0xFF000000FFLL;
      v334.i64[1] = 0xFF000000FFLL;
      v335 = 4;
      while (1)
      {
        v555 = v335;
        v336 = &v324->u8[v325];
        v337 = v324 + 8 * a5;
        v338 = v324 + 7 * a5;
        v339 = v324 + 6 * a5;
        v340 = v324 + 5 * a5;
        v341 = v324 + 4 * a5;
        v342 = v324 + 3 * a5;
        v343 = v324 + 2 * a5;
        v344 = vmovl_u16(*v17);
        v345 = v17[1].u16[0];
        v562 = v336;
        if (v323 >= 4)
        {
          v348 = vdupq_lane_s32(*v344.i8, 0);
          v349 = vdupq_lane_s32(*v344.i8, 1);
          v350 = vdupq_laneq_s32(v344, 2);
          v351 = vdupq_laneq_s32(v344, 3);
          if (v323 < 0x10)
          {
            v352 = 0;
LABEL_77:
            v347 = &v324->u8[v538];
            v336 += v538;
            v343 += v538;
            v337 += v538;
            v338 += v538;
            v339 += v538;
            v385 = vdup_n_s16(v345);
            v340 += v538;
            v341 += v538;
            v342 += v538;
            v386 = (a2 + 4 * v352);
            do
            {
              v40.i32[0] = *(v324->i32 + v352);
              v41.i32[0] = *&v331[v352];
              v387 = vmovl_u8(*v41.i8).u64[0];
              v388 = vmulq_s32(vaddl_u16(v387, *&vmovl_u8(*v40.i8)), v348);
              v387.i32[0] = *&v333[v352];
              v42.i32[0] = *&v330[v352];
              v389 = vmovl_u8(*v42.i8).u64[0];
              v390 = vaddl_u16(v389, *&vmovl_u8(v387));
              v391 = vmlaq_s32(v388, v390, v349);
              v390.i32[0] = *&v332[v352];
              v389.i32[0] = *&v329[v352];
              v392 = vmovl_u8(v389).u64[0];
              v393 = vaddl_u16(v392, *&vmovl_u8(*v390.i8));
              v394 = vmlaq_s32(v391, v393, v350);
              v393.i32[0] = *&v326[v352];
              v392.i32[0] = *&v328[v352];
              v42.i64[0] = vmovl_u8(v392).u64[0];
              v41 = vaddl_u16(*v42.i8, *&vmovl_u8(*v393.i8));
              v395 = vmlaq_s32(v394, v41, v351);
              v41.i32[0] = *&v327[v352];
              v41.i64[0] = vmovl_u8(*v41.i8).u64[0];
              v40 = vmlal_u16(v395, v385, *v41.i8);
              *v386++ = v40;
              v352 += 4;
            }

            while (v538 != v352);
            v346 = v560 - v539;
            if (!v539)
            {
              goto LABEL_67;
            }

            goto LABEL_80;
          }

          v353 = 0;
          v354 = vdupq_n_s16(v345);
          v355 = a2;
          do
          {
            v356 = v324[v353 / 0x10];
            v357 = *&v331[v353];
            v358 = vaddl_high_u8(v357, v356);
            v359 = vaddl_u8(*v357.i8, *v356.i8);
            v360 = *&v333[v353];
            v361 = *&v330[v353];
            v362 = vaddl_high_u8(v361, v360);
            v363 = vaddl_u8(*v361.i8, *v360.i8);
            v364 = vmlaq_s32(vmulq_s32(vmovl_high_u16(v358), v348), vmovl_high_u16(v362), v349);
            v365 = vmlaq_s32(vmulq_s32(vmovl_u16(*v358.i8), v348), vmovl_u16(*v362.i8), v349);
            v366 = vmlaq_s32(vmulq_s32(vmovl_high_u16(v359), v348), vmovl_high_u16(v363), v349);
            v367 = *&v332[v353];
            v368 = vmlaq_s32(vmulq_s32(vmovl_u16(*v359.i8), v348), vmovl_u16(*v363.i8), v349);
            v369 = *&v329[v353];
            v370 = vaddl_u8(*v369.i8, *v367.i8);
            v371 = vaddl_high_u8(v369, v367);
            v372 = vmlaq_s32(v368, vmovl_u16(*v370.i8), v350);
            v373 = vmlaq_s32(v366, vmovl_high_u16(v370), v350);
            v374 = vmlaq_s32(v365, vmovl_u16(*v371.i8), v350);
            v375 = vmlaq_s32(v364, vmovl_high_u16(v371), v350);
            v376 = *&v326[v353];
            v377 = *&v328[v353];
            v378 = vaddl_high_u8(v377, v376);
            v379 = vaddl_u8(*v377.i8, *v376.i8);
            v380 = vmlaq_s32(v373, vmovl_high_u16(v379), v351);
            v381 = vmlaq_s32(v372, vmovl_u16(*v379.i8), v351);
            v382 = *&v327[v353];
            v383 = vmovl_high_u8(v382);
            v384 = vmovl_u8(*v382.i8);
            v40 = vmlal_u16(v381, *v354.i8, *v384.i8);
            v41 = vmlal_high_u16(v380, v354, v384);
            v42 = vmlal_u16(vmlaq_s32(v374, vmovl_u16(*v378.i8), v351), *v354.i8, *v383.i8);
            *v355[4].i8 = v42;
            *v355[6].i8 = vmlal_high_u16(vmlaq_s32(v375, vmovl_high_u16(v378), v351), v354, v383);
            *v355->i8 = v40;
            *v355[2].i8 = v41;
            v355 += 8;
            v353 += 16;
          }

          while (v540 != v353);
          if (!v541)
          {
            goto LABEL_67;
          }

          v352 = v560 - v541;
          v336 = v562;
          if (v541 >= 4)
          {
            goto LABEL_77;
          }

          v342 += v540;
          v341 += v540;
          v340 += v540;
          v339 += v540;
          v338 += v540;
          v337 += v540;
          v343 += v540;
          v336 = &v562->u8[v540];
          v347 = &v324->u8[v540];
          v346 = v560 - v541;
        }

        else
        {
          v346 = 0;
          v347 = v324;
        }

LABEL_80:
        v396 = v560 - v346;
        v397 = a2 + v346;
        do
        {
          v399 = *v347++;
          v398 = v399;
          v401 = *v337++;
          v400 = v401;
          v403 = *v336++;
          v402 = v403;
          v405 = *v338++;
          v404 = v405;
          v407 = *v343++;
          v406 = v407;
          v409 = *v339++;
          v408 = v409;
          v411 = *v342++;
          v410 = v411;
          v412 = *v340++;
          v413.i16[0] = v398;
          v413.i16[1] = v402;
          v413.i16[2] = v406;
          v414.i16[0] = v400;
          v414.i16[1] = v404;
          v413.i16[3] = v410;
          v414.i16[2] = v408;
          v414.i16[3] = v412;
          v415 = *v341++;
          *v397++ = vaddvq_s32(vmulq_s32(vaddq_s32(vandq_s8(vmovl_u16(v414), v334), vandq_s8(vmovl_u16(v413), v334)), v344)) + v415 * v345;
          --v396;
        }

        while (v396);
LABEL_67:
        result = sub_1E5472274(v552, a2, v545, a8);
        v334.i64[0] = 0xFF000000FFLL;
        v334.i64[1] = 0xFF000000FFLL;
        v552 = (v552 + 2 * a6);
        v17 = a8;
        v335 = v555 + 1;
        v325 = a5;
        v326 += a5;
        v327 += a5;
        v328 += a5;
        v329 += a5;
        v330 += a5;
        v331 += a5;
        v332 += a5;
        v333 += a5;
        v323 = v560;
        v324 = v562;
        if (v555 + 1 == v547)
        {
          goto LABEL_87;
        }
      }
    }

    v416 = v18 - 8;
    v417 = v416;
    do
    {
      result = sub_1E5472274(v322, v21, 0, v17);
      v322 = (v322 + v25);
      --v417;
    }

    while (v417);
    v552 = v322;
    v323 = v560;
    v324 = (v561 + v416 * a5);
  }

LABEL_87:
  v418 = v537;
  v419 = &v324->i8[v537];
  v564 = v324;
  v565 = &v324->u8[v537];
  v420 = &v324->i8[v537 + v537];
  v566 = v420;
  v567 = &v324->u8[v537 + v418 + v418];
  v556 = v567;
  v421 = &v567[v537];
  v422 = &v567[v418 + v418];
  v568 = &v567[v537];
  v569 = v422;
  v423 = (v422 + v537);
  v424 = &v422->u8[v418 + v418];
  v570 = &v422->u8[v537];
  v571 = v424;
  v572[0] = v424;
  v572[1] = v424;
  v572[2] = v424;
  v572[3] = v424;
  v425 = v552;
  v426 = a2;
  if (v552 < v544)
  {
    if (v545)
    {
      v427 = 0;
      v542 = v323 - (v545 & 0xF);
      v428 = v323 - (v545 & 3);
      v429.i64[0] = 0xFF000000FFLL;
      v429.i64[1] = 0xFF000000FFLL;
      while (1)
      {
        v432 = v324;
        v433 = v556;
        v434 = v421;
        v435 = v422;
        v422 = v423;
        v423 = v424;
        v424 = v572[v427];
        v436 = vmovl_u16(*v17);
        v437 = v17[1].u16[0];
        v563 = v419;
        v550 = v556;
        v553 = v420;
        v556 = v421;
        v548 = v435;
        v438 = v425;
        if (v323 >= 4)
        {
          v449 = vdupq_lane_s32(*v436.i8, 0);
          v450 = vdupq_lane_s32(*v436.i8, 1);
          v451 = vdupq_laneq_s32(v436, 2);
          v452 = vdupq_laneq_s32(v436, 3);
          if (v323 < 0x10)
          {
            v453 = 0;
LABEL_100:
            v440 = (v432 + v428);
            v441 = &v419->u8[v428];
            v442 = &v420->u8[v428];
            v443 = &v424[v428];
            v444 = &v423->u8[v428];
            v445 = &v422->u8[v428];
            v446 = &v435->u8[v428];
            v447 = &v434->u8[v428];
            v448 = (v433 + v428);
            v498 = vdup_n_s16(v437);
            v499 = v428;
            v500 = v419;
            v501 = v420;
            v502 = v424;
            v503 = v423;
            v504 = v422;
            v505 = v434;
            v506 = (v426 + 4 * v453);
            do
            {
              v40.i32[0] = *(v432->i32 + v453);
              v41.i32[0] = *&v502[v453];
              v507 = vmovl_u8(*v41.i8).u64[0];
              v508 = vmulq_s32(vaddl_u16(v507, *&vmovl_u8(*v40.i8)), v449);
              v507.i32[0] = *(v500->i32 + v453);
              v42.i32[0] = *(v503->i32 + v453);
              v509 = vmovl_u8(*v42.i8).u64[0];
              v510 = vaddl_u16(v509, *&vmovl_u8(v507));
              v511 = vmlaq_s32(v508, v510, v450);
              v510.i32[0] = *(v501->i32 + v453);
              v509.i32[0] = *(v504->i32 + v453);
              v512 = vmovl_u8(v509).u64[0];
              v513 = vaddl_u16(v512, *&vmovl_u8(*v510.i8));
              v514 = vmlaq_s32(v511, v513, v451);
              v513.i32[0] = *(v433->i32 + v453);
              v512.i32[0] = *(v435->i32 + v453);
              v42.i64[0] = vmovl_u8(v512).u64[0];
              v41 = vaddl_u16(*v42.i8, *&vmovl_u8(*v513.i8));
              v515 = vmlaq_s32(v514, v41, v452);
              v41.i32[0] = *(v505->i32 + v453);
              v41.i64[0] = vmovl_u8(*v41.i8).u64[0];
              v40 = vmlal_u16(v515, v498, *v41.i8);
              *v506++ = v40;
              v433 = (v433 + 4);
              v505 = (v505 + 4);
              v435 = (v435 + 4);
              v504 = (v504 + 4);
              v503 = (v503 + 4);
              v502 += 4;
              v501 = (v501 + 4);
              v500 = (v500 + 4);
              v432 = (v432 + 4);
              v499 -= 4;
            }

            while (v453 != v499);
            v439 = v428;
            v426 = a2;
            v323 = v560;
            if ((v545 & 3) == 0)
            {
              goto LABEL_90;
            }

            goto LABEL_103;
          }

          v454 = v542;
          v455 = v426;
          v456 = v324;
          v457 = vdupq_n_s16(v437);
          v458 = v419;
          v459 = v420;
          v460 = v572[v427];
          v461 = v423;
          v462 = v422;
          v463 = v435;
          v464 = v434;
          do
          {
            v465 = *v456++;
            v466 = v465;
            v467 = *v460++;
            v468 = vaddl_high_u8(v467, v466);
            v469 = vaddl_u8(*v467.i8, *v466.i8);
            v470 = *v458++;
            v471 = v470;
            v472 = *v461++;
            v473 = vaddl_high_u8(v472, v471);
            v474 = vaddl_u8(*v472.i8, *v471.i8);
            v475 = vmlaq_s32(vmulq_s32(vmovl_high_u16(v468), v449), vmovl_high_u16(v473), v450);
            v476 = vmlaq_s32(vmulq_s32(vmovl_u16(*v468.i8), v449), vmovl_u16(*v473.i8), v450);
            v477 = vmlaq_s32(vmulq_s32(vmovl_high_u16(v469), v449), vmovl_high_u16(v474), v450);
            v478 = vmlaq_s32(vmulq_s32(vmovl_u16(*v469.i8), v449), vmovl_u16(*v474.i8), v450);
            v479 = *v459++;
            v480 = v479;
            v481 = *v462++;
            v482 = vaddl_u8(*v481.i8, *v480.i8);
            v483 = vaddl_high_u8(v481, v480);
            v484 = vmlaq_s32(v478, vmovl_u16(*v482.i8), v451);
            v485 = vmlaq_s32(v477, vmovl_high_u16(v482), v451);
            v486 = vmlaq_s32(v476, vmovl_u16(*v483.i8), v451);
            v487 = vmlaq_s32(v475, vmovl_high_u16(v483), v451);
            v488 = *v433++;
            v489 = v488;
            v490 = *v463++;
            v491 = vaddl_high_u8(v490, v489);
            v492 = vaddl_u8(*v490.i8, *v489.i8);
            v493 = vmlaq_s32(v485, vmovl_high_u16(v492), v452);
            v494 = vmlaq_s32(v484, vmovl_u16(*v492.i8), v452);
            v495 = *v464++;
            v496 = vmovl_high_u8(v495);
            v497 = vmovl_u8(*v495.i8);
            v40 = vmlal_u16(v494, *v457.i8, *v497.i8);
            v42 = vmlal_u16(vmlaq_s32(v486, vmovl_u16(*v491.i8), v452), *v457.i8, *v496.i8);
            *v455[4].i8 = v42;
            *v455[6].i8 = vmlal_high_u16(vmlaq_s32(v487, vmovl_high_u16(v491), v452), v457, v496);
            v41 = vmlal_high_u16(v493, v457, v497);
            *v455->i8 = v40;
            *v455[2].i8 = v41;
            v455 += 8;
            v454 -= 16;
          }

          while (v454);
          if ((v545 & 0xF) == 0)
          {
            goto LABEL_90;
          }

          v453 = v542;
          v433 = v550;
          v434 = v556;
          if ((v545 & 0xFu) >= 4uLL)
          {
            goto LABEL_100;
          }

          v439 = v542;
          v448 = (v550 + v542);
          v447 = &v556->u8[v542];
          v446 = &v435->u8[v542];
          v445 = &v422->u8[v542];
          v444 = &v423->u8[v542];
          v443 = &v424[v542];
          v442 = &v420->u8[v542];
          v441 = &v419->u8[v542];
          v440 = (v432 + v542);
        }

        else
        {
          v439 = 0;
          v440 = v324;
          v441 = v419;
          v442 = v420;
          v443 = v572[v427];
          v444 = v423;
          v445 = v422;
          v446 = v435;
          v447 = v434;
          v448 = v433;
        }

LABEL_103:
        v516 = v323 - v439;
        v517 = v426 + v439;
        do
        {
          v519 = v440->u8[0];
          v440 = (v440 + 1);
          v518 = v519;
          v521 = *v443++;
          v520 = v521;
          v523 = *v441++;
          v522 = v523;
          v525 = *v444++;
          v524 = v525;
          v527 = *v442++;
          v526 = v527;
          v529 = *v445++;
          v528 = v529;
          v531 = v448->u8[0];
          v448 = (v448 + 1);
          v530 = v531;
          v532 = *v446++;
          v533.i16[0] = v518;
          v533.i16[1] = v522;
          v533.i16[2] = v526;
          v534.i16[0] = v520;
          v534.i16[1] = v524;
          v533.i16[3] = v530;
          v534.i16[2] = v528;
          v534.i16[3] = v532;
          v535 = *v447++;
          *v517++ = vaddvq_s32(vmulq_s32(vaddq_s32(vandq_s8(vmovl_u16(v534), v429), vandq_s8(vmovl_u16(v533), v429)), v436)) + v535 * v437;
          --v516;
        }

        while (v516);
LABEL_90:
        ++v427;
        v430 = v438;
        v431 = v438;
        v17 = a8;
        result = sub_1E5472274(v431, v426, v545, a8);
        v429.i64[0] = 0xFF000000FFLL;
        v429.i64[1] = 0xFF000000FFLL;
        v323 = v560;
        v324 = v563;
        v425 = (v430 + 2 * a6);
        v420 = v550;
        v419 = v553;
        v421 = v548;
        if (v425 >= v544)
        {
          return result;
        }
      }
    }

    do
    {
      result = sub_1E5472274(v425, a2, 0, v17);
      v425 = (v425 + v536);
    }

    while (v425 < v544);
  }

  return result;
}

unsigned __int8 *sub_1E54702A4(unsigned __int8 *result, unsigned int *a2, unint64_t a3, int a4, unsigned int a5, unsigned int a6, int a7, const __int16 *a8)
{
  v9 = (a4 + 1);
  v10 = v9 >> 1;
  v11 = &a2[v10];
  v277[0] = a2;
  v277[1] = v11;
  v12 = &a2[v9 & 0xFFFFFFFE];
  v277[2] = v12;
  v13 = *a8;
  v14 = *(a8 + 1);
  *a2 = (v14 * *result + 2 * result[1] * v13 + 256) >> 9;
  v15 = (a2 + 1);
  v16 = (a4 - 1);
  if (v16 < 3)
  {
    LODWORD(v19) = 2;
  }

  else
  {
    v17 = v16 - 3;
    if (v16 - 3 >= 0x20 && ((v18 = v17 >> 1, &result[v17 & 0xFFFFFFFFFFFFFFFELL] <= a2) || result + 1 >= &a2[v18 + 2]))
    {
      v20 = v18 + 1;
      v21 = v20 & 0xF;
      if ((v20 & 0xF) == 0)
      {
        v21 = 16;
      }

      v22 = v20 - v21;
      v19 = 2 * v22 + 2;
      v23 = vdupq_n_s32(v13);
      v24 = (v15 + 4 * v22);
      v25 = (result + 2);
      v26 = vuzp1q_s16(v23, v23);
      v27 = vdupq_n_s16(v14);
      v28.i64[0] = 0x10000000100;
      v28.i64[1] = 0x10000000100;
      do
      {
        v29 = v25 - 1;
        v30 = vld2q_s8(v29);
        v278 = vld2q_s8(v25);
        v25 += 32;
        v31 = vaddl_high_u8(v278.val[1], v30);
        v32 = vaddl_u8(*v278.val[1].i8, *&v30);
        v33 = vmovl_u8(*v278.val[0].i8);
        v278.val[0] = vmovl_high_u8(v278.val[0]);
        v15[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v27.i8, *v278.val[0].i8), *v31.i8, *v26.i8), v28), 9uLL);
        v15[3] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v27, v278.val[0]), v31, v26), v28), 9uLL);
        *v15 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v27.i8, *v33.i8), *v32.i8, *v26.i8), v28), 9uLL);
        v15[1] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v27, v33), v32, v26), v28), 9uLL);
        v15 += 4;
        v22 -= 16;
      }

      while (v22);
      v15 = v24;
    }

    else
    {
      v19 = 2;
    }

    do
    {
      v15->i32[0] = ((result[v19 + 1] + result[v19 - 1]) * v13 + result[v19] * v14 + 256) >> 9;
      v15 = (v15 + 4);
      v19 += 2;
    }

    while (v19 < v16);
  }

  v34 = 2 * v13;
  if (v19 == v16)
  {
    v15->i32[0] = (result[v16] * v14 + v34 * result[a4 - 2] + 256) >> 9;
  }

  v35 = &result[a5];
  *v11 = (*v35 * v14 + v34 * v35[1] + 256) >> 9;
  v36 = (v11 + 1);
  if (v16 < 3)
  {
    LODWORD(v38) = 2;
  }

  else
  {
    v37 = v16 - 3;
    if (v16 - 3 >= 0x20 && (v11 >= &result[a5 + (v37 & 0xFFFFFFFFFFFFFFFELL)] || &result[a5 + 1] >= &a2[v10 + 2 + (v37 >> 1)]))
    {
      v39 = (v37 >> 1) + 1;
      v40 = v39 & 0xF;
      if ((v39 & 0xF) == 0)
      {
        v40 = 16;
      }

      v41 = v39 - v40;
      v38 = 2 * v41 + 2;
      v42 = (v36 + 4 * v41);
      v43 = vdupq_n_s32(v13);
      v44 = &result[a5 + 2];
      v45 = vuzp1q_s16(v43, v43);
      v46 = vdupq_n_s16(v14);
      v47.i64[0] = 0x10000000100;
      v47.i64[1] = 0x10000000100;
      do
      {
        v48 = v44 - 1;
        v49 = vld2q_s8(v48);
        v279 = vld2q_s8(v44);
        v44 += 32;
        v50 = vaddl_high_u8(v279.val[1], v49);
        v51 = vaddl_u8(*v279.val[1].i8, *&v49);
        v52 = vmovl_u8(*v279.val[0].i8);
        v279.val[0] = vmovl_high_u8(v279.val[0]);
        v36[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v46.i8, *v279.val[0].i8), *v50.i8, *v45.i8), v47), 9uLL);
        v36[3] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v46, v279.val[0]), v50, v45), v47), 9uLL);
        *v36 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v46.i8, *v52.i8), *v51.i8, *v45.i8), v47), 9uLL);
        v36[1] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v46, v52), v51, v45), v47), 9uLL);
        v36 += 4;
        v41 -= 16;
      }

      while (v41);
      v36 = v42;
    }

    else
    {
      v38 = 2;
    }

    do
    {
      v36->i32[0] = ((result[a5 + 1 + v38] + result[a5 - 1 + v38]) * v13 + result[a5 + v38] * v14 + 256) >> 9;
      v36 = (v36 + 4);
      v38 += 2;
    }

    while (v38 < v16);
  }

  if (v38 == v16)
  {
    v36->i32[0] = (v35[v16] * v14 + v34 * v35[a4 - 2] + 256) >> 9;
  }

  if (v9 >= 2)
  {
    if (v9 < 8)
    {
      v53 = 0;
LABEL_32:
      v54 = a2;
      goto LABEL_33;
    }

    v53 = 0;
    v170 = a3 + v10;
    v172 = &a2[2 * v10] > a3 && v11 < v170;
    v174 = (a8 + 2) > a3 && v170 > a8;
    v175 = v170 > a2 && v11 > a3;
    if (v175 || v172 || v174)
    {
      goto LABEL_32;
    }

    v176 = 4 * v10;
    if (v9 >= 0x20)
    {
      v177 = a8;
      v178 = vld1_dup_s16(v177++);
      v53 = v10 & 0x7FFFFFF0;
      v179 = vmovl_u16(v178);
      v180 = vld1_dup_s16(v177);
      v181 = vmovl_u16(v180);
      v182.i64[0] = 0x10000000100;
      v182.i64[1] = 0x10000000100;
      v183 = v53;
      v184 = a3;
      v185 = a2;
      do
      {
        v186 = vmulq_s32(*(&v185[3] + v176), v179);
        v187 = vmulq_s32(*(v185 + 4 * v10), v179);
        v188 = vmulq_s32(*(&v185[1] + v176), v179);
        v189 = vmulq_s32(*(&v185[2] + v176), v179);
        v284.val[2] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vaddq_s32(v189, v189), v185[2], v181), v182), 9uLL);
        v284.val[1] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vaddq_s32(v188, v188), v185[1], v181), v182), 9uLL);
        v284.val[0] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vaddq_s32(v187, v187), *v185, v181), v182), 9uLL);
        v284.val[3] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vaddq_s32(v186, v186), v185[3], v181), v182), 9uLL);
        *v184++ = vqtbl4q_s8(v284, xmmword_1E54929F0);
        v185 += 4;
        v183 -= 16;
      }

      while (v183);
      if (v53 == v10)
      {
        goto LABEL_35;
      }

      if ((v10 & 0xC) == 0)
      {
        v54 = &a2[v53];
        v11 += v53;
LABEL_33:
        v55 = v10 - v53;
        v56 = (a3 + v53);
        do
        {
          v57 = *v11++;
          v58 = v57 * *a8;
          v59 = *v54++;
          *v56++ = (v59 * *(a8 + 1) + 2 * v58 + 256) >> 9;
          --v55;
        }

        while (v55);
        goto LABEL_35;
      }
    }

    else
    {
      v53 = 0;
    }

    v190 = v53;
    v53 = v10 & 0x7FFFFFFC;
    v11 += v53;
    v54 = &a2[v53];
    v191 = a8;
    v192 = vld1_dup_s16(v191++);
    v193 = vmovl_u16(v192);
    v194 = vld1_dup_s16(v191);
    v195 = vmovl_u16(v194);
    v196 = &a2[v190];
    v197 = (a3 + v190);
    v198 = v190 - v53;
    do
    {
      v199 = vmulq_s32(*(v196 + 4 * v10), v193);
      v200 = *v196++;
      *v197++ = vuzp1_s8(vrshrn_n_s32(vmlaq_s32(vaddq_s32(v199, v199), v200, v195), 9uLL), *v193.i8).u32[0];
      v198 += 4;
    }

    while (v198);
    if (v53 != v10)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  v60 = a6;
  v61 = (a7 - 1);
  v62 = a3 + a6;
  if (v61 >= 3)
  {
    v259 = a7;
    v261 = a6;
    v63 = 0;
    v276 = a4 - 2;
    v260 = a3;
    v270 = v10;
    v64 = result + 1;
    v65 = 2 * a5;
    v66 = 3 * a5;
    v273 = &result[((v16 - 3) & 0xFFFFFFFFFFFFFFFELL) + 4];
    v275 = v16 - 3;
    v67 = ((v16 - 3) >> 1) + 1;
    v269 = (2 * (v16 - 3)) & 0xFFFFFFFFFFFFFFFCLL;
    v68 = v67 & 0xF;
    if ((v67 & 0xF) == 0)
    {
      v68 = 16;
    }

    v69 = v67 - v68;
    v267 = 2 * v69 + 2;
    v268 = v69;
    v266 = 4 * v69;
    v271 = a3 + v10 + a6 + a6 * ((v61 - 3) >> 1);
    v272 = a3 + a6;
    v71 = v62 < (a8 + 2) && a3 + v10 + a6 + a6 * ((v61 - 3) >> 1) > a8;
    v265 = v71;
    v72 = v10 & 0x7FFFFFF0;
    v258 = v72;
    v73 = v10 & 0x7FFFFFFC;
    v262 = v73;
    v264 = result + 2;
    v74 = 2;
    v75.i64[0] = 0x10000000100;
    v75.i64[1] = 0x10000000100;
    v76 = 2 * a5;
    v77 = v62;
    v78 = 2;
    v274 = v60;
    while (1)
    {
      v79 = v12;
      v80 = &result[v74 * a5];
      v81 = *a8;
      v82 = *(a8 + 1);
      *v79 = (v82 * *v80 + 2 * v80[1] * v81 + 256) >> 9;
      v83 = (v79 + 1);
      if (v16 < 3)
      {
        LODWORD(v97) = 2;
      }

      else
      {
        if (v275 >= 0x20 && ((v84 = (v65 + v65 * v63), v83 < v273 + v84) ? (v85 = &v64[v84] >= v79 + v269 + 8) : (v85 = 1), v85))
        {
          v86 = &v264[v76];
          v87 = (v83 + v266);
          v88 = vdupq_n_s32(v81);
          v89 = vuzp1q_s16(v88, v88);
          v90 = vdupq_n_s16(v82);
          v91 = v268;
          do
          {
            v92 = v86 - 1;
            v93 = vld2q_s8(v92);
            v280 = vld2q_s8(v86);
            v86 += 32;
            v94 = vaddl_high_u8(v280.val[1], v93);
            v95 = vaddl_u8(*v280.val[1].i8, *&v93);
            v96 = vmovl_u8(*v280.val[0].i8);
            v280.val[0] = vmovl_high_u8(v280.val[0]);
            v83[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v90.i8, *v280.val[0].i8), *v94.i8, *v89.i8), v75), 9uLL);
            v83[3] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v90, v280.val[0]), v94, v89), v75), 9uLL);
            *v83 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v90.i8, *v96.i8), *v95.i8, *v89.i8), v75), 9uLL);
            v83[1] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v90, v96), v95, v89), v75), 9uLL);
            v83 += 4;
            v91 -= 16;
          }

          while (v91);
          v97 = v267;
          v83 = v87;
        }

        else
        {
          v97 = 2;
        }

        do
        {
          v83->i32[0] = ((result[v76 + 1 + v97] + result[v76 - 1 + v97]) * v81 + result[v76 + v97] * v82 + 256) >> 9;
          v83 = (v83 + 4);
          v97 += 2;
        }

        while (v97 < v16);
      }

      v98 = 2 * v81;
      if (v97 == v16)
      {
        v83->i32[0] = (v80[v16] * v82 + v98 * v80[v276] + 256) >> 9;
      }

      if (v78 == 2)
      {
        v99 = 0;
      }

      else
      {
        v99 = v78 + 1;
      }

      v100 = v277[v99];
      v101 = &result[(v74 | 1) * a5];
      *v100 = (*v101 * v82 + v98 * v101[1] + 256) >> 9;
      v102 = (v100 + 1);
      if (v16 < 3)
      {
        if (v16 == 2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v103 = v9;
        if (v275 >= 0x20 && ((v104 = 3 * a5 + v65 * v63, v102 < v273 + v104) ? (v105 = &v64[v104] >= v100 + v269 + 8) : (v105 = 1), v105))
        {
          v106 = &v264[v66];
          v107 = (v102 + v266);
          v108 = vdupq_n_s32(v81);
          v109 = vuzp1q_s16(v108, v108);
          v110 = vdupq_n_s16(v82);
          v111 = v268;
          do
          {
            v112 = v106 - 1;
            v113 = vld2q_s8(v112);
            v281 = vld2q_s8(v106);
            v106 += 32;
            v114 = vaddl_high_u8(v281.val[1], v113);
            v115 = vaddl_u8(*v281.val[1].i8, *&v113);
            v116 = vmovl_u8(*v281.val[0].i8);
            v281.val[0] = vmovl_high_u8(v281.val[0]);
            v102[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v110.i8, *v281.val[0].i8), *v114.i8, *v109.i8), v75), 9uLL);
            v102[3] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v110, v281.val[0]), v114, v109), v75), 9uLL);
            *v102 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v110.i8, *v116.i8), *v115.i8, *v109.i8), v75), 9uLL);
            v102[1] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v110, v116), v115, v109), v75), 9uLL);
            v102 += 4;
            v111 -= 16;
          }

          while (v111);
          v117 = v267;
          v102 = v107;
        }

        else
        {
          v117 = 2;
        }

        do
        {
          v102->i32[0] = ((result[v66 + 1 + v117] + result[v66 - 1 + v117]) * v81 + result[v66 + v117] * v82 + 256) >> 9;
          v102 = (v102 + 4);
          v117 += 2;
        }

        while (v117 < v16);
        v9 = v103;
        v60 = v274;
        if (v117 == v16)
        {
LABEL_79:
          v102->i32[0] = (v101[v16] * v82 + v98 * v101[v276] + 256) >> 9;
        }
      }

      v78 = (v78 + 2) % 3;
      v12 = v277[v78];
      if (v9 >= 2)
      {
        if (v9 < 8)
        {
          v118 = 0;
          goto LABEL_83;
        }

        v118 = 0;
        v128 = v272 < &v12[v270] && v12 < v271;
        if (v272 < &v100[v270] && v100 < v271)
        {
          v128 = 1;
        }

        v130 = v128 || v265;
        v132 = v272 < &v79[v270] && v79 < v271;
        if (v130)
        {
          v119 = v277[v78];
          v120 = v79;
          v121 = v100;
          v60 = v274;
        }

        else
        {
          v60 = v274;
          if (v132)
          {
LABEL_83:
            v119 = v277[v78];
            v120 = v79;
            v121 = v100;
          }

          else if (v9 >= 0x20)
          {
            v134 = 0;
            v135 = a8;
            v136 = vld1_dup_s16(v135++);
            v137 = vmovl_u16(v136);
            v138 = vld1_dup_s16(v135);
            v139 = vmovl_u16(v138);
            v140 = v277[v78];
            v141 = v79;
            v142 = v100;
            do
            {
              v283.val[2] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmulq_s32(v141[2], v139), vaddq_s32(v142[2], v140[2]), v137), v75), 9uLL);
              v283.val[1] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmulq_s32(v141[1], v139), vaddq_s32(v142[1], v140[1]), v137), v75), 9uLL);
              v283.val[0] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmulq_s32(*v141, v139), vaddq_s32(*v142, *v140), v137), v75), 9uLL);
              v283.val[3] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmulq_s32(v141[3], v139), vaddq_s32(v142[3], v140[3]), v137), v75), 9uLL);
              *(v77 + v134) = vqtbl4q_s8(v283, xmmword_1E54929F0);
              v134 += 16;
              v142 += 4;
              v141 += 4;
              v140 += 4;
            }

            while (v72 != v134);
            if (v72 == v10)
            {
              goto LABEL_45;
            }

            v133 = v10 & 0x7FFFFFF0;
            if ((v10 & 0xC) != 0)
            {
              goto LABEL_112;
            }

            v121 = &v100[v258];
            v120 = &v79[v258];
            v119 = &v12[v258];
            v118 = v10 & 0x7FFFFFF0;
          }

          else
          {
            v133 = 0;
LABEL_112:
            v119 = &v12[v262];
            v120 = &v79[v262];
            v121 = &v100[v262];
            v143 = a8;
            v144 = vld1_dup_s16(v143++);
            v145 = vld1_dup_s16(v143);
            v146 = vmovl_u16(v144);
            v147 = vmovl_u16(v145);
            v148 = &v100[v133];
            v149 = &v79[v133];
            v150 = &v12[v133];
            do
            {
              v151 = *v150++;
              v152 = v151;
              v153 = *v148++;
              v154 = vaddq_s32(v153, v152);
              v155 = *v149++;
              *(v77 + v133) = vuzp1_s8(vrshrn_n_s32(vmlaq_s32(vmulq_s32(v155, v147), v154, v146), 9uLL), 0x10000000100).u32[0];
              v133 += 4;
            }

            while (v73 != v133);
            v118 = v10 & 0x7FFFFFFC;
            if (v73 == v10)
            {
              goto LABEL_45;
            }
          }
        }

        do
        {
          v123 = *v119++;
          v122 = v123;
          v124 = *v121++;
          v125 = v124 + v122;
          v126 = *v120++;
          *(v77 + v118++) = (v126 * *(a8 + 1) + v125 * *a8 + 256) >> 9;
        }

        while (v10 != v118);
      }

LABEL_45:
      v74 += 2;
      v77 += v60;
      ++v63;
      v76 += v65;
      v66 += v65;
      if (v74 >= v61)
      {
        v62 = v77;
        a6 = v261;
        a3 = v260;
        a7 = v259;
        if (v74 == v61)
        {
          goto LABEL_120;
        }

        return result;
      }
    }
  }

  v78 = 2;
  if (a7 != 3)
  {
    return result;
  }

LABEL_120:
  if (v62 >= a3 + ((a7 + 1) >> 1) * a6)
  {
    v156 = result;
    v157 = a5;
    v158 = a8;
    v159 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ImageProcessing/include/VIO/ImageProcessing/ConvolutionsFixedPoint.h", 846, "dst < dst_end", 13, "Invalid destination pointer", 27, sub_1E548FDE0);
    a5 = v157;
    a8 = v158;
    v160 = v159;
    result = v156;
    if (v160)
    {
      abort();
    }
  }

  v161 = v277[v78];
  v162 = v61 * a5;
  v163 = &result[v162];
  v164 = *a8;
  v165 = *(a8 + 1);
  *v161 = (v165 * result[v162] + 2 * result[v162 + 1] * v164 + 256) >> 9;
  v166 = (v161 + 1);
  if (v16 < 3)
  {
    LODWORD(v169) = 2;
  }

  else
  {
    v167 = v16 - 3;
    if (v16 - 3 >= 0x20 && ((v168 = v167 >> 1, v161 >= &result[v162 + (v167 & 0xFFFFFFFFFFFFFFFELL)]) || &result[v162 + 1] >= &v161[v168 + 2]))
    {
      v201 = v168 + 1;
      v202 = v201 & 0xF;
      if ((v201 & 0xF) == 0)
      {
        v202 = 16;
      }

      v203 = v201 - v202;
      v169 = 2 * v203 + 2;
      v204 = (v166 + 4 * v203);
      v205 = vdupq_n_s32(v164);
      v206 = &result[v162 + 2];
      v207 = vuzp1q_s16(v205, v205);
      v208 = vdupq_n_s16(v165);
      v209.i64[0] = 0x10000000100;
      v209.i64[1] = 0x10000000100;
      do
      {
        v210 = v206 - 1;
        v211 = vld2q_s8(v210);
        v282 = vld2q_s8(v206);
        v206 += 32;
        v212 = vaddl_high_u8(v282.val[1], v211);
        v213 = vaddl_u8(*v282.val[1].i8, *&v211);
        v214 = vmovl_u8(*v282.val[0].i8);
        v282.val[0] = vmovl_high_u8(v282.val[0]);
        v166[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v208.i8, *v282.val[0].i8), *v212.i8, *v207.i8), v209), 9uLL);
        v166[3] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v208, v282.val[0]), v212, v207), v209), 9uLL);
        *v166 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(*v208.i8, *v214.i8), *v213.i8, *v207.i8), v209), 9uLL);
        v166[1] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v208, v214), v213, v207), v209), 9uLL);
        v166 += 4;
        v203 -= 16;
      }

      while (v203);
      v166 = v204;
    }

    else
    {
      v169 = 2;
    }

    v215 = &result[v162 + 1];
    do
    {
      v166->i32[0] = ((*(v215 + v169) + *(v215 + v169 - 2)) * v164 + *(v215 + v169 - 1) * v165 + 256) >> 9;
      v166 = (v166 + 4);
      v169 += 2;
    }

    while (v169 < v16);
  }

  if (v169 == v16)
  {
    v166->i32[0] = (v163[v16] * v165 + 2 * v164 * v163[a4 - 2] + 256) >> 9;
  }

  if (v9 >= 2)
  {
    v216 = v277[(v78 + 2) % 3];
    if (v9 < 8)
    {
      v217 = 0;
LABEL_168:
      v218 = v277[(v78 + 2) % 3];
      v219 = v161;
      goto LABEL_169;
    }

    v217 = 0;
    v225 = v62 + v10;
    v227 = v62 < (a8 + 2) && v225 > a8;
    v229 = v62 < &v161[v10] && v161 < v225;
    v230 = v216 >= v225 || v62 >= v216 + 4 * v10;
    if (!v230 || v227 || v229)
    {
      goto LABEL_168;
    }

    if (v9 >= 0x20)
    {
      v231 = a8;
      v232 = vld1_dup_s16(v231++);
      v217 = v10 & 0x7FFFFFF0;
      v233 = vmovl_u16(v232);
      v234 = vld1_dup_s16(v231);
      v235 = vmovl_u16(v234);
      v236.i64[0] = 0x10000000100;
      v236.i64[1] = 0x10000000100;
      v237 = v217;
      v238 = v62;
      v239 = v277[(v78 + 2) % 3];
      v240 = v161;
      do
      {
        v241 = vmulq_s32(v239[3], v233);
        v242 = vmulq_s32(v239[2], v233);
        v243 = vmulq_s32(*v239, v233);
        v244 = vmulq_s32(v239[1], v233);
        v285.val[1] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vaddq_s32(v244, v244), v240[1], v235), v236), 9uLL);
        v285.val[0] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vaddq_s32(v243, v243), *v240, v235), v236), 9uLL);
        v285.val[2] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vaddq_s32(v242, v242), v240[2], v235), v236), 9uLL);
        v285.val[3] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vaddq_s32(v241, v241), v240[3], v235), v236), 9uLL);
        *v238++ = vqtbl4q_s8(v285, xmmword_1E54929F0);
        v240 += 4;
        v239 += 4;
        v237 -= 16;
      }

      while (v237);
      if (v217 == v10)
      {
        return result;
      }

      if ((v10 & 0xC) == 0)
      {
        v219 = &v161[v217];
        v218 = (v216 + 4 * v217);
        goto LABEL_169;
      }
    }

    else
    {
      v217 = 0;
    }

    v245 = v217;
    v217 = v10 & 0x7FFFFFFC;
    v218 = (v216 + 4 * v217);
    v219 = &v161[v217];
    v246 = a8;
    v247 = vld1_dup_s16(v246++);
    v248 = vmovl_u16(v247);
    v249 = vld1_dup_s16(v246);
    v250 = vmovl_u16(v249);
    v251 = &v161[v245];
    v252 = (v216 + 4 * v245);
    v253 = (v62 + v245);
    v254 = v245 - v217;
    do
    {
      v255 = *v252++;
      v256 = vmulq_s32(v255, v248);
      v257 = *v251++;
      *v253++ = vuzp1_s8(vrshrn_n_s32(vmlaq_s32(vaddq_s32(v256, v256), v257, v250), 9uLL), *v248.i8).u32[0];
      v254 += 4;
    }

    while (v254);
    if (v217 == v10)
    {
      return result;
    }

LABEL_169:
    v220 = v10 - v217;
    v221 = (v62 + v217);
    do
    {
      v222 = *v218++;
      v223 = v222 * *a8;
      v224 = *v219++;
      *v221++ = (v224 * *(a8 + 1) + 2 * v223 + 256) >> 9;
      --v220;
    }

    while (v220);
  }

  return result;
}

uint64_t sub_1E54712C8(uint64_t result, double a2, double a3, double a4, double a5, double a6, double a7, uint8x8_t a8, __n128 a9)
{
  v9 = *(result + 48);
  if (v9[2] >= 2uLL)
  {
    v10 = result;
    v11 = 0;
    v12 = *result;
    v13 = *(result + 56);
    v14 = *(result + 64);
    v15 = 1;
    do
    {
      v16 = vshrq_n_u64(vaddq_s64(v12, vdupq_n_s64(1uLL)), 1uLL);
      v17 = 144 * v9[3] * v15;
      v18 = v16.i64[0];
      v29 = v16;
      v19 = v16.i64[1];
      sub_1E546EC48(*(*(v14 + 48) + v11 + 88), *(v10 + 160), *(*(v13 + 48) + v17 + 88), v16.u32[0], *(*(v14 + 48) + v11 + 40), *(*(v13 + 48) + v17 + 40), v16.i64[1], qword_1E5492A24, *v16.i64, *v12.i64, a4, a5, a6, a7, a8, a9);
      sub_1E547261C(*(*(v13 + 48) + v17 + 88), *(v9[6] + v17 + 88), v18, *(*(v13 + 48) + v17 + 40), *(v9[6] + v17 + 40), v19);
      v17 += 144;
      sub_1E546EC48(*(*(v14 + 48) + v11 + 88), *(v10 + 160), *(*(v13 + 48) + v17 + 88), v18, *(*(v14 + 48) + v11 + 40), *(*(v13 + 48) + v17 + 40), v19, qword_1E5492A36, v20, v21, v22, v23, v24, v25, v26, v27);
      result = sub_1E547261C(*(*(v13 + 48) + v17 + 88), *(v9[6] + v17 + 88), v18, *(*(v13 + 48) + v17 + 40), *(v9[6] + v17 + 40), v19);
      v28 = v9[2];
      if (v15 < v28 - 1)
      {
        result = sub_1E54702A4(*(*(v14 + 48) + v11 + 88), *(v10 + 160), *(*(v14 + 48) + v11 + 232), v18, *(*(v14 + 48) + v11 + 40), *(*(v14 + 48) + v11 + 184), v19, word_1E5492A48);
        v28 = v9[2];
      }

      ++v15;
      v11 += 144;
      v12 = v29;
    }

    while (v15 < v28);
  }

  return result;
}

void sub_1E547148C(void *a1)
{
  *a1 = &unk_1F5F0A120;
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[12];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E6928650);
}

void *sub_1E547158C(void *a1)
{
  *a1 = &unk_1F5F0A120;
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[12];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void *sub_1E547167C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[9];
    if (v3)
    {
      v1[10] = v3;
      operator delete(v3);
    }

    v4 = v1[6];
    if (v4)
    {
      v5 = v1[7];
      v6 = v1[6];
      if (v5 != v4)
      {
        v7 = v5 - 18;
        v8 = v5 - 18;
        v9 = v5 - 18;
        do
        {
          v10 = *v9;
          v9 -= 18;
          (*v10)(v8);
          v7 -= 18;
          v11 = v8 == v4;
          v8 = v9;
        }

        while (!v11);
        v6 = v1[6];
      }

      v1[7] = v4;
      operator delete(v6);
    }

    MEMORY[0x1E6928650](v1, 0x1020C4024B85F43);
    return v2;
  }

  return result;
}

void *sub_1E547174C(void *result)
{
  if (result[2])
  {
    if (result[3])
    {
      MEMORY[0x1E6928AE0](&v1, result[1], *result, 8, 0);
      operator new();
    }
  }

  return result;
}

void sub_1E5471FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v13 = *(v10 + 120);
  if (v13)
  {
    *(v10 + 128) = v13;
    operator delete(v13);
  }

  sub_1E54368D0(a3);
  *(v9 + 56) = v10;
  sub_1E54440A8(va);
  sub_1E53F7E98(v11 - 144);
  _Unwind_Resume(a1);
}

void sub_1E5471FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  sub_1E54368D0(v33 + 8);
  sub_1E53F7E98(&a15);
  sub_1E53F7E98(v34 - 144);
  _Unwind_Resume(a1);
}

void sub_1E5472028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1E54440A8(va);
  sub_1E53F7E98(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_1E5472048(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

void sub_1E5472074(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E54720B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3vio16image_processing17ScaleSpacePyramidIhE23MakevImage_BufferSharedEPvEUlPhE_")
  {
    if (((v2 & "ZN4cv3d3vio16image_processing17ScaleSpacePyramidIhE23MakevImage_BufferSharedEPvEUlPhE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3vio16image_processing17ScaleSpacePyramidIhE23MakevImage_BufferSharedEPvEUlPhE_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3vio16image_processing17ScaleSpacePyramidIhE23MakevImage_BufferSharedEPvEUlPhE_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E5472118(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E5472158(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3vio16image_processing17ScaleSpacePyramidItE23MakevImage_BufferSharedEPvEUlPtE_")
  {
    if (((v2 & "ZN4cv3d3vio16image_processing17ScaleSpacePyramidItE23MakevImage_BufferSharedEPvEUlPtE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3vio16image_processing17ScaleSpacePyramidItE23MakevImage_BufferSharedEPvEUlPtE_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3vio16image_processing17ScaleSpacePyramidItE23MakevImage_BufferSharedEPvEUlPtE_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E54721BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E54721F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1E6928610);
  }

  return result;
}

uint64_t sub_1E5472214(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "N4cv3d3vio8cv_types12ArrayDeleterIjEE")
  {
    if (((v2 & "N4cv3d3vio8cv_types12ArrayDeleterIjEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3vio8cv_types12ArrayDeleterIjEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3vio8cv_types12ArrayDeleterIjEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

int16x8_t *sub_1E5472274(int16x4_t *a1, int32x2_t *a2, int a3, uint16x4_t *a4)
{
  v4 = *a2->i8;
  v5 = *a2->i8;
  v6 = vmovl_u16(*a4);
  v7 = HIDWORD(*a2);
  v8 = a4[1].u16[0];
  v9 = a2[2].u32[0];
  v10 = a2[2].i32[1];
  v11 = vextq_s8(v4, v4, 8uLL);
  v12 = vadd_s32(*a2, vdup_laneq_s32(*a2->i8, 3));
  v13 = vdupq_lane_s32(*v6.i8, 0);
  v14 = v13;
  v14.i32[0] = v5;
  v15.i32[0] = v8;
  v15.i32[1] = v10 + v5;
  v15.u64[1] = vadd_s32(a2[3], vdup_lane_s32(*a2, 0));
  v16 = vuzp2q_s32(*a2->i8, v6);
  v16.i32[1] = v6.i32[1];
  v17 = v15;
  v17.i32[3] = v7 + v5;
  v18 = vmulq_s32(v16, v17);
  v17.i32[0] = *&a2[1] + v5;
  v17.i32[1] = v17.i32[0];
  v17.i32[2] = v8;
  v17.i32[3] = v10 + v7;
  *v11.i8 = vadd_s32(vdup_n_s32(v9), vzip1_s32(*a2, *v11.i8));
  v19 = vzip1q_s32(v11, v11);
  v19.i32[2] = v11.i32[0];
  v20.i64[0] = v12.u32[0];
  v20.i64[1] = v12.u32[1];
  v21 = v20;
  v21.i32[1] = v20.i32[0];
  v21.i32[3] = v8;
  *a1 = vrshrn_n_s32(vmlaq_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vextq_s8(v6, vextq_s8(*a2->i8, v6, 0xCuLL), 4uLL), v21), v19, v6), vextq_s8(v6, vzip2q_s32(*a2->i8, v6), 8uLL), v17), vextq_s8(v18, v18, 0xCuLL)), v14, v15), 0xAuLL);
  result = &a1[1];
  v23 = (a3 - 4);
  if (v23 < 5)
  {
    LODWORD(v23) = 4;
  }

  else
  {
    v24 = v23 - 4;
    if ((v23 - 4) >= 8)
    {
      v26 = v23 - 5;
      v25 = 4;
      if ((a3 - 9) <= 0xFFFFFFF9 && (v26 & 0xFFFFFFF8) != 0xFFFFFFF8 && v26 <= 0xFFFFFFF8 && !HIDWORD(v26))
      {
        v27 = 0;
        v28 = v24 & 0xFFFFFFFFFFFFFFF8;
        v25 = v24 & 0xFFFFFFFFFFFFFFF8 | 4;
        v29 = vdupq_n_s32(v9);
        v30 = vdupq_laneq_s32(v4, 2);
        v31 = vdupq_lane_s32(*v4.i8, 1);
        v32 = vdupq_lane_s32(*v4.i8, 0);
        v33 = vdupq_lane_s32(*v6.i8, 1);
        v34 = vdupq_laneq_s32(v6, 2);
        v35 = (result + 2 * (v24 & 0xFFFFFFFFFFFFFFF8));
        v36 = vdupq_laneq_s32(v6, 3);
        v37 = (&a2[2] + 4);
        v38 = vdupq_n_s32(v8);
        do
        {
          v39 = v27 & 0xFFFFFFF8;
          v40 = v27 + 8;
          v41 = (a2 + 4 * ((v27 + 8) & 0xFFFFFFF8));
          v42 = *v41;
          v43 = v41[1];
          v44 = a2 + 4 * v39;
          v45 = vuzp2q_s32(vuzp2q_s32(v4, v29), v4);
          v46 = vextq_s8(v30, v45, 0xCuLL);
          v47 = vextq_s8(v31, v46, 0xCuLL);
          v48 = vextq_s8(v32, v47, 0xCuLL);
          v32 = *v37;
          v49 = vextq_s8(v29, *v37, 0xCuLL);
          v29 = v37[1];
          v50 = vextq_s8(*v37, v29, 0xCuLL);
          v45.i64[1] = v37->i64[0];
          v51 = vextq_s8(*v37, v29, 8uLL);
          v52 = vextq_s8(*v37, v29, 4uLL);
          v46.i32[3] = *v37;
          *result++ = vrshrn_high_n_s32(vrshrn_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vaddq_s32(v42, v48), v13), v49, v38), vaddq_s32(*(v44 + 28), v47), v33), vaddq_s32(*(v44 + 24), v46), v34), vaddq_s32(*v37, v45), v36), 0xAuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vaddq_s32(v43, v49), v13), v50, v38), vaddq_s32(*(v44 + 44), *v37), v33), vaddq_s32(*(v44 + 40), v52), v34), vaddq_s32(v29, v51), v36), 0xAuLL);
          v37 += 2;
          v27 = v40;
          v4 = v50;
          v30 = v51;
          v31 = v52;
        }

        while (v28 != v40);
        if (v24 == v28)
        {
          result = v35;
          goto LABEL_16;
        }

        v9 = v29.u32[3];
        v4 = vextq_s8(v32, v29, 0xCuLL);
        result = v35;
      }
    }

    else
    {
      v25 = 4;
    }

    v53 = v23 - v25;
    v54 = a2 + v25 + 1;
    v55 = v25 + 2;
    do
    {
      v56 = v55 + 2;
      v57 = a2 + v55++;
      v58 = *v54++;
      v59.i32[0] = a2->i32[v56];
      v59.i32[1] = a2->i32[v55];
      v59.i32[2] = *v57;
      v59.i32[3] = v58;
      result->i16[0] = (vaddvq_s32(vmulq_s32(vaddq_s32(v59, v4), v6)) + v9 * v8 + 512) >> 10;
      result = (result + 2);
      v4 = vextq_s8(v4, v6, 4uLL);
      v4.i32[3] = v9;
      v9 = v58;
      --v53;
    }

    while (v53);
  }

LABEL_16:
  v60 = a2->i32[(v23 + 3)];
  v61 = v60 + a2->i32[(v23 - 4)];
  v62 = a2->i32[(v23 - 3)] + v60;
  v63 = a2->i32[(v23 - 2)];
  v64 = a2->i32[(v23 + 2)];
  v65 = a2->i32[(v23 - 1)];
  v66 = a2->i32[(v23 + 1)];
  v67 = a2->i32[v23];
  result->i16[0] = (v62 * v6.i32[1] + v61 * v6.i32[0] + (v64 + v63) * v6.i32[2] + (v66 + v65) * v6.i32[3] + v67 * v8 + 512) >> 10;
  result->i16[1] = ((v63 + v60) * v6.i32[1] + v62 * v6.i32[0] + (v65 + v60) * v6.i32[2] + v66 * v8 + (v67 + v64) * v6.i32[3] + 512) >> 10;
  v68 = v67 + v60;
  result->i16[2] = (v64 * v8 + (v63 + v60) * v6.i32[0] + (v65 + v60) * v6.i32[1] + (v66 + v60) * v6.i32[3] + v68 * v6.i32[2] + 512) >> 10;
  result->i16[3] = ((v64 + v60) * v6.i32[3] + v60 * v8 + (v65 + v60) * v6.i32[0] + (v66 + v60) * v6.i32[2] + v68 * v6.i32[1] + 512) >> 10;
  return result;
}

uint64_t sub_1E547261C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 && a6)
  {
    v7 = result;
    v8 = 0;
    v12 = 2 * a4;
    v13 = 2 * a3;
    do
    {
      v9 = 0;
      v10 = v13;
      do
      {
        v11 = *(v7 + 2 * v9);
        if (v11 >= 0xFF01)
        {
          result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/GaussianPyramidGeneratorUtils.cpp", 39, "v <= 65280 && overflow detected resulting in invalid result", 61, &unk_1E549A011, 0, sub_1E548FDE0);
          if (result)
          {
            abort();
          }
        }

        *(a2 + v9++) = (v11 + 128) >> 8;
        v10 -= 2;
      }

      while (v10);
      ++v8;
      a2 += a5;
      v7 += v12;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t sub_1E547272C(uint64_t a1, int *a2)
{
  if (!a1)
  {
    return 4;
  }

  v4 = *(a2 + 2);
  v5 = *a2;
  if (!*a2)
  {
LABEL_5:
    if (v4.i64[0] > 0x280uLL || v4.i64[1] > 0x2000uLL)
    {
      v6 = vcvtq_f64_u64(v4);
      v7 = vdivq_f64(xmmword_1E5492CD0, v6);
      if (v7.f64[1] < v7.f64[0])
      {
        v7.f64[0] = v7.f64[1];
      }

      v32 = v7.f64[0];
      v8 = vcvtq_u64_f64(vrndaq_f64(vmulq_n_f64(v6, v7.f64[0])));
      v9 = xmmword_1E5492CE0;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v5 != 3)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (v4.i64[0] > 0x1000uLL || v4.i64[1] > 0x2000uLL)
  {
    v12 = vcvtq_f64_u64(v4);
    v13 = vdivq_f64(xmmword_1E5492CB0, v12);
    if (v13.f64[1] < v13.f64[0])
    {
      v13.f64[0] = v13.f64[1];
    }

    v32 = v13.f64[0];
    v8 = vcvtq_u64_f64(vrndaq_f64(vmulq_n_f64(v12, v13.f64[0])));
    v9 = xmmword_1E5492CC0;
LABEL_18:
    v4 = vbslq_s8(vcgtq_u64(v9, v8), v8, v9);
    v11 = v4.i64[0];
    v33 = v4;
    if (v4.i64[0] > 0x9FuLL)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_13:
  v32 = 1.0;
  v33 = *(a2 + 2);
  v11 = *(a2 + 1);
  if (v4.i64[0] > 0x9FuLL)
  {
    goto LABEL_20;
  }

LABEL_19:
  v14 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPAndDescriptorGeneratorInterface.cpp", 93, "image_processing_width >= 160 && illegal input image size", 59, &unk_1E549A011, 0, sub_1E548FDE0);
  v4 = v33;
  if (v14)
  {
    goto LABEL_62;
  }

LABEL_20:
  if (v4.i64[1] <= 0x9FuLL)
  {
    v15 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPAndDescriptorGeneratorInterface.cpp", 94, "image_processing_height >= 160 && illegal input image size", 60, &unk_1E549A011, 0, sub_1E548FDE0);
    v4 = v33;
    if (v15)
    {
LABEL_62:
      abort();
    }
  }

  v34[0] = *a2;
  *(v34 + 9) = *(a2 + 9);
  if (*(a2 + 55) < 0)
  {
    sub_1E53E53CC(&__p, *(a2 + 4), *(a2 + 5));
    v4 = v33;
  }

  else
  {
    __p = *(a2 + 2);
    v36 = *(a2 + 6);
  }

  v16 = *(a2 + 70);
  v50 = *(a2 + 66);
  v51 = v16;
  v49 = *(a2 + 62);
  v52 = *(a2 + 74);
  v45 = *(a2 + 46);
  v46 = *(a2 + 50);
  v47 = *(a2 + 54);
  v48 = *(a2 + 58);
  v41 = *(a2 + 30);
  v42 = *(a2 + 34);
  v43 = *(a2 + 38);
  v44 = *(a2 + 42);
  v37 = *(a2 + 14);
  v38 = *(a2 + 18);
  v39 = *(a2 + 22);
  v40 = *(a2 + 26);
  v17 = v52;
  *(v34 + 8) = v4;
  DWORD1(v48) = (v52 * ((v52 * v11) * v11));
  *(a1 + 312) = v32;
  if ((LODWORD(v34[0]) | 2) == 2)
  {
    v18 = v41;
    v19 = BYTE8(v47);
    if (BYTE9(v47) == 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v18 = 0;
    v19 = BYTE8(v47);
    if (BYTE9(v47) == 1)
    {
LABEL_27:
      v20 = (LODWORD(v34[0]) == 0) & v19;
      if (v19 ^ 1 | v18 & 1)
      {
        v20 = 1;
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }
  }

  v20 = v18 | (LODWORD(v34[0]) == 0) & v19;
  if (v19)
  {
LABEL_33:
    v22 = HIDWORD(v48) > 0x100 || DWORD2(v48) > 0x4000 || v17 < 0.0;
    if (v17 > 1.0)
    {
      v22 = 1;
    }

    if (v48 > 0x200)
    {
      v22 = 1;
    }

    v20 |= v22;
  }

LABEL_44:
  result = 1;
  if ((v20 & 1) == 0 && DWORD2(v37) <= 0x3F)
  {
    *(a1 + 8) = v34[0];
    *(a1 + 17) = *(v34 + 9);
    if ((a1 + 8) != v34)
    {
      if (*(a1 + 63) < 0)
      {
        if (v36 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v36 >= 0)
        {
          v24 = HIBYTE(v36);
        }

        else
        {
          v24 = *(&__p + 1);
        }

        sub_1E53E6DF0(a1 + 40, p_p, v24);
      }

      else if (v36 < 0)
      {
        sub_1E53E6D20((a1 + 40), __p, *(&__p + 1));
      }

      else
      {
        *(a1 + 40) = __p;
        *(a1 + 56) = v36;
      }
    }

    v25 = v50;
    *(a1 + 256) = v49;
    *(a1 + 272) = v25;
    *(a1 + 288) = v51;
    *(a1 + 304) = v52;
    v26 = v46;
    *(a1 + 192) = v45;
    *(a1 + 208) = v26;
    v27 = v48;
    *(a1 + 224) = v47;
    *(a1 + 240) = v27;
    v28 = v42;
    *(a1 + 128) = v41;
    *(a1 + 144) = v28;
    v29 = v44;
    *(a1 + 160) = v43;
    *(a1 + 176) = v29;
    v30 = v38;
    *(a1 + 64) = v37;
    *(a1 + 80) = v30;
    v31 = v40;
    *(a1 + 96) = v39;
    *(a1 + 112) = v31;
    operator new();
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p);
    return 1;
  }

  return result;
}

void sub_1E5472BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1E5472C10(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  return 4;
}

void sub_1E5473244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1E54368D0(v46 + 8);
  sub_1E54440A8(&a30);
  sub_1E54368D0(v47 - 200);
  sub_1E54736A4(&a29);
  _Unwind_Resume(a1);
}

void sub_1E54732C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29)
{
  sub_1E54735A0(&a10);
  sub_1E54736A4(&a29);
  _Unwind_Resume(a1);
}

void sub_1E54732F8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 2;
  *(a1 + 12) = 0;
  *(a1 + 16) = vdupq_n_s64(0x280uLL);
  *(a1 + 32) = 0;
  strcpy((a1 + 40), "/tmp/");
  *(a1 + 63) = 261;
  *(a1 + 68) = 0x90000002DLL;
  *(a1 + 80) = 5000;
  *(a1 + 88) = 1;
  *(a1 + 92) = 1061997773;
  *(a1 + 96) = 0;
  *(a1 + 104) = vdupq_n_s64(1uLL);
  *(a1 + 120) = 5;
  *(a1 + 128) = 256;
  *(a1 + 232) = 0;
  *(a1 + 236) = xmmword_1E5491B50;
  *(a1 + 252) = xmmword_1E5491B60;
  *(a1 + 300) = 0x3E4CCCCD00004000;
  *(a1 + 268) = xmmword_1E5492CF0;
  *(a1 + 284) = unk_1E5492D00;
  *(a1 + 312) = 0x3FF0000000000000;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = a1 + 344;
  sub_1E547B560(a1 + 360);
}

void sub_1E547340C(_Unwind_Exception *a1)
{
  sub_1E541B450(v1 + 336, *(v1 + 344));
  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  sub_1E547354C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1E547343C(uint64_t a1)
{
  v2 = *(a1 + 864);
  if (v2)
  {
    *(a1 + 872) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 736);
  if (v3)
  {
    *(a1 + 744) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 712);
  if (v4)
  {
    *(a1 + 720) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 688);
  if (v5)
  {
    *(a1 + 696) = v5;
    operator delete(v5);
  }

  sub_1E54734EC(a1 + 648, *(a1 + 656));
  sub_1E5427FA8(a1 + 456);
  v6 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v6)
  {
    (*(a1 + 312))();
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_1E54734EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1E54734EC(a1, *a2);
    sub_1E54734EC(a1, a2[1]);
    sub_1E5427FA8((a2 + 5));

    operator delete(a2);
  }
}

uint64_t *sub_1E547354C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1E547343C(v2);
    MEMORY[0x1E6928650](v4, 0x10B2C40FE7A4E93);
    return v3;
  }

  return v1;
}

uint64_t sub_1E54735A0(uint64_t result)
{
  if (*(result + 144) == 1)
  {
    *result = &unk_1F5F0A140;
    v1 = *(result + 120);
    if (v1)
    {
      *(result + 128) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    v3 = *(result + 112);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      result = v4;
    }

    v5 = *(result + 96);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = result;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return v6;
      }
    }
  }

  return result;
}

uint64_t **sub_1E54736A4(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      (v1[1])();
    }

    MEMORY[0x1E6928650](v1, 0xA0C40AFF93C70);
    return v2;
  }

  return result;
}

void sub_1E5473704(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5F0A268;
  *(a1 + 24) = xmmword_1E5492D48;
  *(a1 + 40) = unk_1E5492D58;
  *(a1 + 56) = xmmword_1E5492D68;
  *(a1 + 72) = unk_1E5492D78;
  *(a1 + 88) = xmmword_1E5492D88;
  *(a1 + 104) = unk_1E5492D98;
  *(a1 + 120) = xmmword_1E5492DA8;
  *(a1 + 136) = unk_1E5492DB8;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 48) = a2[2];
  *(a1 + 64) = v4;
  *(a1 + 32) = v3;
  *(a1 + 16) = v2;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 112) = a2[6];
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 176) = a2[10];
  *(a1 + 192) = v10;
  *(a1 + 144) = v8;
  *(a1 + 160) = v9;
  v11 = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 256) = *(a2 + 30);
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 208) = v11;
  if ((a1 + 16) != a2)
  {
    sub_1E54746E4((a1 + 264), *(a2 + 31), *(a2 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 32) - *(a2 + 31)) >> 3));
  }

  operator new();
}

void sub_1E5473868(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 264);
  if (v4)
  {
    *(v2 + 272) = v4;
    operator delete(v4);
    v5 = *v1;
    *v1 = 0;
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v1;
    *v1 = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  sub_1E545F9EC(v1, v5);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1E54738D4(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, _DWORD *a7)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  if (a3 >= 1)
  {
    v9 = *(a6 + 48);
    v8 = (a6 + 48);
    v10 = v9 + 144 * a4;
    if (*(v10 + 32) - 1 > a2 && *(v10 + 48) - 1 > a3)
    {
      v14 = *(*(*(v10 + 120) + 8 * a3) + 2 * a2);
      v15 = a4;
      sub_1E5474F64(a2, a3, a4, v8, a7);
      if (a7[13] != v14 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPValidatorAndRefiner.cpp", 57, "score == res_map_cube[1][1][1] && score mismatch", 50, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        abort();
      }

      v16 = &a7[18 * (v15 & 1)];
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2].i32[0];
      v20 = vmovl_s16(vdup_n_s16(v14));
      if (a5)
      {
        v21 = v19 > v14;
        v22 = vcgeq_s32(v20, v18);
        v23 = vcgeq_s32(v20, v17);
      }

      else
      {
        v21 = v19 < v14;
        v22 = vcgeq_s32(v18, v20);
        v23 = vcgeq_s32(v17, v20);
      }

      v24 = vmovn_s16(vuzp1q_s16(v22, v23));
      v24.i8[0] = vmaxv_u8(v24);
      return v21 & ~v24.i32[0];
    }
  }

  return result;
}