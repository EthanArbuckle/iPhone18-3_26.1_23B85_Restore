void sub_100159C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100159C94(uint64_t a1)
{
  v11 = *(a1 + 136);
  v2 = sub_1001589F4(*(a1 + 8), &v11, (v11 + 1), 10);
  if (!v2 || (*(*a1 + 40) & 0x103) == 0x100)
  {
    v3 = sub_100159614(a1);
    sub_1001594E8(a1, v3);
    return 1;
  }

  v5 = v2;
  if (v2 > 0)
  {
    *(a1 + 136) = v11;
    v6 = sub_100154BB4(a1, 13, 0x18uLL);
    v6[4] = v5;
    *(v6 + 20) = (*(*a1 + 40) & 0x100000) != 0;
    if (v5 > *(a1 + 184))
    {
      *(a1 + 184) = v5;
    }

    return 1;
  }

  v7 = **(a1 + 8) + 32;
  v8 = *(a1 + 136);
  v9 = (v8 - 1);
  do
  {
    *(a1 + 136) = v9;
    v10 = *v9--;
    --v8;
  }

  while (*(v7 + v10) != 12);
  sub_100154748(a1, 6, v8 - *(a1 + 120));
  return 0;
}

uint64_t sub_100159DA0(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = *(a1 + 136);
  v4 = (v2 + 1);
  *(a1 + 136) = v2 + 1;
  v5 = 1;
  while (1)
  {
    if (v2 + v5 == v3)
    {
      goto LABEL_10;
    }

    v6 = **(a1 + 8) + 32;
    v7 = v5;
    while (1)
    {
      v8 = v2 + v7 + 1;
      v9 = *(v6 + *(v2 + v7));
      v5 = v7 + 1;
      *(a1 + 136) = v8;
      if (v9 == 12)
      {
        break;
      }

      ++v7;
      if (v2 + v5 == v3)
      {
        goto LABEL_10;
      }
    }

    if (v8 == v3)
    {
      break;
    }

    if (*(v6 + *(v2 + v7 + 1)) == 47)
    {
      *(a1 + 136) = v2 + v7 + 2;
      v5 = v7;
LABEL_10:
      v10 = v5 - 1;
      if (v5 != 1)
      {
        do
        {
          v11 = *v4++;
          sub_1001594E8(a1, v11);
          --v10;
        }

        while (v10);
      }

      return 1;
    }
  }

  v13 = v3 - *(a1 + 120);
  sub_100007ECC(__p, "Unterminated \\Q...\\E sequence.");
  sub_100154EBC(a1, 5, v13, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_100159EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100159ED8(unsigned int **a1, signed int a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 == *a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (v3 - *a1) >> 3;
  do
  {
    v5 = v4 >> 1;
    v6 = &v2[2 * (v4 >> 1)];
    v7 = v6[1];
    v8 = v6 + 2;
    v4 += ~(v4 >> 1);
    if (v7 < a2)
    {
      v2 = v8;
    }

    else
    {
      v4 = v5;
    }
  }

  while (v4);
  if (v2 == v3 || v2[1] != a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *v2;
  }
}

char *sub_100159F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100154BB4(a1, 14, 0x28uLL);
  v5 = (a2 + 8);
  v6 = *a2;
  if (*a2 == a2 + 8)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = *a2;
    do
    {
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      ++v7;
      v8 = v10;
    }

    while (v10 != v5);
  }

  v4[4] = v7;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v4[5] = (&v13[-v12] >> 2) & 0x7FFFFFFF;
  v14 = *(a2 + 64);
  v15 = (a2 + 72);
  if (v14 == (a2 + 72))
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = v14[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v14[2];
          v11 = *v18 == v14;
          v14 = v18;
        }

        while (!v11);
      }

      ++v16;
      v14 = v18;
    }

    while (v18 != v15);
  }

  v4[6] = v16;
  v19 = *(a2 + 52);
  v4[7] = v19;
  v20 = *(a2 + 56);
  v4[8] = v20;
  v21 = *a1;
  if ((*(*a1 + 42) & 0x10) != 0)
  {
    v22 = *(a1 + 88);
    if ((v22 & ~v19) == 0 || (*(a1 + 92) & ~v19) == 0)
    {
      v4[7] = *(a1 + 96) | v19;
    }

    if ((v22 & ~v20) == 0 || (*(a1 + 92) & ~v20) == 0)
    {
      v4[8] = *(a1 + 96) | v20;
    }
  }

  *(v4 + 36) = *(a2 + 48);
  *(v4 + 37) = *(a2 + 49) ^ 1;
  v88 = *(v21 + 352);
  v89 = v4;
  v90 = a2;
  if (v6 != v5)
  {
    do
    {
      if (*(v6 + 25))
      {
        if (*(v6 + 26))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 1;
      }

      v24 = sub_10015AFCC((*a1 + 344), v23);
      v25 = *(v6 + 25);
      if (*(a1 + 24) == 1)
      {
        v26 = *(**(a1 + 8) + 8);
        LOBYTE(v25) = (*(*v26 + 40))(v26, v25);
      }

      *v24 = v25;
      if (*(v6 + 25))
      {
        v27 = *(v6 + 26);
        if (v27)
        {
          if (*(a1 + 24) == 1)
          {
            v28 = *(**(a1 + 8) + 8);
            v27 = (*(*v28 + 40))(v28);
          }

          v24[1] = v27;
          v24 += 2;
        }

        else
        {
          ++v24;
        }
      }

      *v24 = 0;
      v29 = v6[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v6[2];
          v11 = *v30 == v6;
          v6 = v30;
        }

        while (!v11);
      }

      v6 = v30;
    }

    while (v30 != v5);
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
  }

  if (v12 == v13)
  {
LABEL_138:
    v76 = *(v90 + 64);
    if (v76 != v15)
    {
      do
      {
        memset(&v96, 0, sizeof(v96));
        v77 = *(v76 + 26);
        v78 = v76 + 25;
        if (v77)
        {
          v97.__r_.__value_.__s.__data_[0] = *v78;
          *(&v97.__r_.__value_.__l.__data_ + 1) = v77;
          sub_100149660(**(a1 + 8), &v97, &v97.__r_.__value_.__s.__data_[2], &__p);
        }

        else
        {
          sub_100149660(**(a1 + 8), v78, v76 + 26, &__p);
          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }
        }

        v96 = __p;
        v79 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v80 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          size = v96.__r_.__value_.__l.__size_;
          if (!v96.__r_.__value_.__l.__size_)
          {
            goto LABEL_165;
          }
        }

        else
        {
          if (!*(&__p.__r_.__value_.__s + 23))
          {
            return 0;
          }

          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        v82 = sub_10015AFCC((*a1 + 344), size + 1);
        v83 = v82;
        if (v80 < 0)
        {
          v79 = v96.__r_.__value_.__l.__size_;
        }

        if (v79)
        {
          if (v80 >= 0)
          {
            v84 = &v96;
          }

          else
          {
            v84 = v96.__r_.__value_.__r.__words[0];
          }

          memmove(v82, v84, v79);
        }

        v83[v79] = 0;
        v85 = v76[1];
        if (v85)
        {
          do
          {
            v86 = v85;
            v85 = *v85;
          }

          while (v85);
        }

        else
        {
          do
          {
            v86 = v76[2];
            v11 = *v86 == v76;
            v76 = v86;
          }

          while (!v11);
        }

        if (v80 < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        v76 = v86;
      }

      while (v86 != v15);
    }

    result = v89 + *(*a1 + 352) - v88;
    *(a1 + 16) = result;
    return result;
  }

  v31 = (v12 + 3);
  v94 = v13;
  while (1)
  {
    v33 = v31 - 3;
    v32 = *(v31 - 3);
    v34 = *(v31 - 2);
    if (*(a1 + 24) == 1 && (v35 = *(**(a1 + 8) + 8), v32 = (*(*v35 + 40))(v35, *(v31 - 3)), (*(a1 + 24) & 1) != 0))
    {
      v36 = *(**(a1 + 8) + 8);
      LODWORD(v34) = (*(*v36 + 40))(v36, v34);
      v37 = *(v31 - 1);
      v38 = *v31;
      if (*(a1 + 24))
      {
        v39 = *(**(a1 + 8) + 8);
        v37 = (*(*v39 + 40))(v39, *(v31 - 1));
        if (*(a1 + 24))
        {
          v40 = *(**(a1 + 8) + 8);
          LOBYTE(v38) = (*(*v40 + 40))(v40, v38);
        }
      }
    }

    else
    {
      v37 = *(v31 - 1);
      LOBYTE(v38) = *v31;
    }

    memset(&v96, 0, sizeof(v96));
    memset(&__p, 0, sizeof(__p));
    if ((*(*a1 + 42) & 0x20) == 0)
    {
      if (v34)
      {
        v41.__i_ = &v96;
        std::string::insert(&v96, v41, v32);
        v42 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v96;
        }

        else
        {
          v43 = v96.__r_.__value_.__r.__words[0];
        }

        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v96.__r_.__value_.__l.__size_;
        }

        v44.__i_ = v43 + v42;
        std::string::insert(&v96, v44, v34);
      }

      else
      {
        v93 &= 0xFFFFFFFFFFFF0000;
        v96.__r_.__value_.__r.__words[0] = v93 & 0xFFFFFFFFFFFFFF00 | v32;
        *(&v96.__r_.__value_.__s + 23) = 1;
      }

      v45 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v45 = __p.__r_.__value_.__l.__size_;
      }

      else
      {
        p_p = &__p;
      }

      if (v38)
      {
        v47.__i_ = p_p + v45;
        std::string::insert(&__p, v47, v37);
        v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = &__p;
        }

        else
        {
          v49 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v48 = __p.__r_.__value_.__l.__size_;
        }

        v50.__i_ = v49 + v48;
        std::string::insert(&__p, v50, v38);
      }

      else
      {
        v51.__i_ = p_p + v45;
        std::string::insert(&__p, v51, v37);
      }

      goto LABEL_93;
    }

    sub_100149494(**(a1 + 8), &v97);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    v96 = v97;
    sub_100149494(**(a1 + 8), &v97);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v97;
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v96.__r_.__value_.__l.__size_)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
LABEL_86:
        v92 &= 0xFFFFFFFFFFFF0000;
        v96.__r_.__value_.__r.__words[0] = v92;
        v96.__r_.__value_.__l.__size_ = v97.__r_.__value_.__r.__words[0];
        *(&v96.__r_.__value_.__r.__words[1] + 7) = *(v97.__r_.__value_.__r.__words + 7);
        *(&v96.__r_.__value_.__s + 23) = 1;
      }
    }

    else if (!*(&v96.__r_.__value_.__s + 23))
    {
      goto LABEL_86;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_93;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_93;
    }

    v91 &= 0xFFFFFFFFFFFF0000;
    __p.__r_.__value_.__r.__words[0] = v91;
    __p.__r_.__value_.__l.__size_ = v97.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v97.__r_.__value_.__r.__words + 7);
    *(&__p.__r_.__value_.__s + 23) = 1;
LABEL_93:
    v52 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    v53 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v54 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &__p;
    }

    else
    {
      v56 = __p.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = v96.__r_.__value_.__l.__size_;
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v96;
    }

    else
    {
      v58 = v96.__r_.__value_.__r.__words[0];
    }

    if (v57 >= v55)
    {
      v59 = v55;
    }

    else
    {
      v59 = v57;
    }

    v60 = memcmp(v56, v58, v59);
    v61 = v55 < v57;
    if (v60)
    {
      v61 = v60 < 0;
    }

    if (v61)
    {
      break;
    }

    v62 = sub_10015AFCC((*a1 + 344), v57 + v55 + 2);
    v63 = v62;
    v64 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    v65 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    v66 = v96.__r_.__value_.__l.__size_;
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = v96.__r_.__value_.__l.__size_;
    }

    if (v67)
    {
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = &v96;
      }

      else
      {
        v68 = v96.__r_.__value_.__r.__words[0];
      }

      memmove(v62, v68, v67);
      v64 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      v66 = v96.__r_.__value_.__l.__size_;
      v65 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    if (v65 < 0)
    {
      v64 = v66;
    }

    v63[v64] = 0;
    v69 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v69 = v96.__r_.__value_.__l.__size_;
    }

    v70 = &v63[v69 + 1];
    v71 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v73 = __p.__r_.__value_.__l.__size_;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = __p.__r_.__value_.__l.__size_;
    }

    if (v74)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &__p;
      }

      else
      {
        v75 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v70, v75, v74);
      v71 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v73 = __p.__r_.__value_.__l.__size_;
      v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v72 < 0)
    {
      v71 = v73;
    }

    v70[v71] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    v31 += 4;
    if (v33 + 4 == v94)
    {
      goto LABEL_138;
    }
  }

  if (v53 < 0)
  {
    operator delete(v54);
    if ((*(&v96.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_165:
      operator delete(v96.__r_.__value_.__l.__data_);
    }
  }

  else if (v52 < 0)
  {
    goto LABEL_165;
  }

  return 0;
}

void sub_10015A868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_10015A8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100154BB4(a1, 15, 0x110uLL);
  v66 = *(a2 + 48);
  v4[1] = 0u;
  v5 = v4 + 1;
  v4[15] = 0u;
  v4[16] = 0u;
  v4[13] = 0u;
  v4[14] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v67 = v4;
  v4[2] = 0u;
  v6 = *a2;
  if (*a2 != a2 + 8)
  {
    do
    {
      for (i = 0; i != 256; ++i)
      {
        v8 = i;
        if (*(a1 + 24) == 1)
        {
          v9 = *(**(a1 + 8) + 8);
          v8 = (*(*v9 + 40))(v9, i);
          v10 = *(v6 + 25);
          if (*(a1 + 24))
          {
            v11 = *(**(a1 + 8) + 8);
            LOBYTE(v10) = (*(*v11 + 40))(v11, v10);
          }
        }

        else
        {
          LOBYTE(v10) = *(v6 + 25);
        }

        if (v8 == v10)
        {
          *(v5 + i) = 1;
        }
      }

      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != (a2 + 8));
  }

  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v68 = a2;
  if (v16 == v15)
  {
LABEL_83:
    v46 = v68;
    v47 = *(v68 + 52);
    v48 = *(*a1 + 40);
    if ((v48 & 0x100000) != 0 && ((*(a1 + 88) & ~v47) == 0 || (*(a1 + 92) & ~v47) == 0))
    {
      v47 |= *(a1 + 96);
    }

    if (v47)
    {
      for (j = 0; j != 256; ++j)
      {
        if (sub_100146404(*(a1 + 8), j, v47))
        {
          *(v5 + j) = 1;
        }
      }

      v48 = *(*a1 + 40);
    }

    v50 = *(v68 + 56);
    if ((v48 & 0x100000) != 0 && ((*(a1 + 88) & ~v50) == 0 || (*(a1 + 92) & ~v50) == 0))
    {
      v50 |= *(a1 + 96);
    }

    if (v50)
    {
      for (k = 0; k != 256; ++k)
      {
        if (!sub_100146404(*(a1 + 8), k, v50))
        {
          *(v5 + k) = 1;
        }
      }
    }

    v52 = *(v68 + 64);
    v69 = (v68 + 72);
    if (v52 == (v46 + 72))
    {
LABEL_136:
      if (!v66)
      {
        return v67;
      }

      v63 = 1;
      v64.i64[0] = 0x101010101010101;
      v64.i64[1] = 0x101010101010101;
      result = v67;
      do
      {
        v67[v63] = vandq_s8(vceqzq_s8(v67[v63]), v64);
        ++v63;
      }

      while (v63 != 17);
      return result;
    }

LABEL_103:
    memset(&v74, 0, sizeof(v74));
    sub_100149660(**(a1 + 8), v52 + 25, v52 + 26, &__p);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    v74 = __p;
    v53 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v74.__r_.__value_.__l.__size_;
      if (!v74.__r_.__value_.__l.__size_)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        return 0;
      }

      size = v74.__r_.__value_.__l.__size_;
    }

    v55 = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = size;
    }

    v71 = v74.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v74;
    }

    else
    {
      v57 = v74.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      LOWORD(v72.__r_.__value_.__l.__data_) = v55;
      sub_100149660(**(a1 + 8), &v72, &v72.__r_.__value_.__s.__data_[1], &__p);
      v58 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v59 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v58 = __p.__r_.__value_.__l.__size_;
      }

      if (v56 == v58)
      {
        v60 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        if (!memcmp(v57, v60, v56))
        {
          break;
        }
      }

      if (v59 < 0)
      {
        goto LABEL_123;
      }

LABEL_124:
      if (++v55 == 256)
      {
        v61 = *(v52 + 1);
        v62 = v52;
        if (v61)
        {
          do
          {
            v52 = v61;
            v61 = *v61;
          }

          while (v61);
        }

        else
        {
          do
          {
            v52 = *(v62 + 2);
            v14 = *v52 == v62;
            v62 = v52;
          }

          while (!v14);
        }

        if (v53 < 0)
        {
          operator delete(v71);
        }

        if (v52 == v69)
        {
          goto LABEL_136;
        }

        goto LABEL_103;
      }
    }

    *(v5 + v55) = 1;
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

LABEL_123:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_124;
  }

  v70 = *(a2 + 32);
  while (1)
  {
    v17 = *v16;
    if (*(a1 + 24) == 1)
    {
      v18 = *(**(a1 + 8) + 8);
      v17 = (*(*v18 + 40))(v18, *v16);
      v19 = v16[2];
      if (*(a1 + 24))
      {
        v20 = *(**(a1 + 8) + 8);
        v19 = (*(*v20 + 40))(v20, v16[2]);
      }
    }

    else
    {
      v19 = v16[2];
    }

    if ((*(*a1 + 42) & 0x20) == 0)
    {
      if (v19 < v17)
      {
        return 0;
      }

      memset(v5 + v17, 1, (v19 - v17) + 1);
      goto LABEL_82;
    }

    v75 = v17;
    v76 = 0;
    sub_100149494(**(a1 + 8), &v74);
    v75 = v19;
    sub_100149494(**(a1 + 8), &__p);
    v21 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v23 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v74.__r_.__value_.__l.__size_;
    }

    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v74;
    }

    else
    {
      v27 = v74.__r_.__value_.__r.__words[0];
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(p_p, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      break;
    }

    for (m = 0; m != 256; ++m)
    {
      v75 = m;
      sub_100149494(**(a1 + 8), &v72);
      v32 = SHIBYTE(v72.__r_.__value_.__r.__words[2]);
      v33 = v72.__r_.__value_.__r.__words[0];
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v72.__r_.__value_.__l.__size_;
      }

      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v72;
      }

      else
      {
        v35 = v72.__r_.__value_.__r.__words[0];
      }

      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v74.__r_.__value_.__l.__size_;
      }

      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v74;
      }

      else
      {
        v37 = v74.__r_.__value_.__r.__words[0];
      }

      if (v36 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v36;
      }

      v39 = memcmp(v35, v37, v38);
      v40 = v34 >= v36;
      if (v39)
      {
        v40 = v39 >= 0;
      }

      if (v40)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v41 = __p.__r_.__value_.__l.__size_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &__p;
        }

        else
        {
          v42 = __p.__r_.__value_.__r.__words[0];
        }

        if (v34 >= v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = v34;
        }

        v44 = memcmp(v42, v35, v43);
        v45 = v41 >= v34;
        if (v44)
        {
          v45 = v44 >= 0;
        }

        if (v45)
        {
          *(v5 + m) = 1;
        }
      }

      if (v32 < 0)
      {
        operator delete(v33);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v15 = v70;
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

LABEL_82:
    v16 += 4;
    if (v16 == v15)
    {
      goto LABEL_83;
    }
  }

  if (v22 < 0)
  {
    operator delete(v23);
    v21 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  if (v21 < 0)
  {
LABEL_144:
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10015AF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10015AFCC(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  result = a1[2];
  if (v4 - result < a2)
  {
    sub_10015930C(a1, result + a2 - a1[1]);
    result = a1[2];
  }

  a1[2] = result + a2;
  return result;
}

void sub_10015B024(unsigned __int8 *__src@<X1>, uint64_t a2@<X0>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a2 + 352))
  {
    v8 = a3 - __src;
    goto LABEL_8;
  }

  v8 = a3 - __src;
  sub_10005D6A0(__p, __src, a3, a3 - __src);
  v9 = sub_10000F0D8(a2 + 336, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 344 == v9)
  {
LABEL_8:
    sub_10005D6A0(__p, __src, a3, v8);
    sub_10015B1BC(__p, &v15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v18 = v16;
    *__p = v15;
    v11 = HIBYTE(v16);
    if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
    {
      v13 = __p[1];
      if (__p[1])
      {
        v12 = __p[0];
LABEL_15:
        sub_10005D6A0(a4, v12, v12 + v13, v13);
        if ((v18 & 0x8000000000000000) == 0)
        {
          return;
        }

LABEL_22:
        operator delete(__p[0]);
        return;
      }
    }

    else if (HIBYTE(v16))
    {
      v12 = __p;
      v13 = SHIBYTE(v16);
      goto LABEL_15;
    }

    if (v8 == 1)
    {
      v14 = *__src;
      *(a4 + 23) = 1;
      *a4 = v14;
      if ((v11 & 0x80) == 0)
      {
        return;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if ((v11 & 0x80) == 0)
      {
        return;
      }
    }

    goto LABEL_22;
  }

  if (*(v9 + 79) < 0)
  {
    sub_10000FFF8(a4, *(v9 + 56), *(v9 + 64));
  }

  else
  {
    v10 = *(v9 + 56);
    *(a4 + 16) = *(v9 + 72);
    *a4 = v10;
  }
}

void sub_10015B198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_10015B1BC@<X0>(size_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = off_1002D56D0[0];
  if (*off_1002D56D0[0])
  {
    v5 = 0;
    v6 = *(result + 23);
    v8 = *result;
    v7 = *(result + 8);
    do
    {
      result = strlen(v4);
      v9 = result;
      if ((v6 & 0x80) != 0)
      {
        if (result == v7)
        {
          result = v8;
          if (v7 == -1)
          {
            sub_1000C3798();
          }

LABEL_8:
          result = memcmp(result, v4, v9);
          if (!result)
          {
            *(a2 + 23) = 1;
            *a2 = v5;
            *(a2 + 1) = 0;
            return result;
          }
        }
      }

      else
      {
        result = v2;
        if (v9 == v6)
        {
          goto LABEL_8;
        }
      }

      v4 = off_1002D56D0[++v5];
    }

    while (*v4);
  }

  v10 = off_1002D5AD8[0];
  if (!*off_1002D5AD8[0])
  {
LABEL_19:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v11 = *(v2 + 23);
  v12 = 1;
  v14 = *v2;
  v13 = *(v2 + 8);
  while (1)
  {
    result = strlen(v10);
    v15 = result;
    if ((v11 & 0x80) == 0)
    {
      break;
    }

    if (result == v13)
    {
      result = v14;
      if (v13 == -1)
      {
        sub_1000C3798();
      }

      goto LABEL_17;
    }

LABEL_18:
    v10 = off_1002D5AD8[v12++];
    if (!*v10)
    {
      goto LABEL_19;
    }
  }

  result = v2;
  if (v15 != v11)
  {
    goto LABEL_18;
  }

LABEL_17:
  result = memcmp(result, v10, v15);
  if (result)
  {
    goto LABEL_18;
  }

  return sub_100007ECC(a2, v10);
}

void sub_10015B344(uint64_t a1, uint64_t a2)
{
  sub_10015B9DC(a1, a2, v15);
  v5 = *(a1 + 128);
  v4 = *(a1 + 136);
  if (v5 == v4)
  {
    goto LABEL_9;
  }

  v6 = **(a1 + 8) + 32;
  if (*(v6 + *v4) == 14)
  {
    *(a1 + 136) = v4 + 1;
    if (v5 != v4 + 1)
    {
      if (*(v6 + v4[1]) == 10)
      {
        *(a1 + 136) = v4;
        goto LABEL_6;
      }

      sub_10015B9DC(a1, a2, v14);
      sub_10015BC60(a2, v15, v14);
      v10 = *(a1 + 136);
      v11 = **(a1 + 8) + 32;
      if (*(v11 + *v10) != 14)
      {
        return;
      }

      v12 = *(a1 + 128);
      v13 = v10 + 1;
      *(a1 + 136) = v10 + 1;
      if (v12 != v10 + 1)
      {
        if (*(v11 + *v13) == 10)
        {
          *(a1 + 136) = v10;
          return;
        }

        v7 = &v13[-*(a1 + 120)];
        v8 = a1;
        v9 = 11;
        goto LABEL_11;
      }

      v7 = &v12[-*(a1 + 120)];
LABEL_10:
      v8 = a1;
      v9 = 7;
LABEL_11:
      sub_100154748(v8, v9, v7);
      return;
    }

LABEL_9:
    v7 = &v5[-*(a1 + 120)];
    goto LABEL_10;
  }

LABEL_6:
  sub_10015BF3C(a2, v15);
  if (v15[1])
  {
    *(a2 + 49) = 1;
  }

  *(a2 + 60) = 0;
}

BOOL sub_10015B48C(std::string *a1, uint64_t a2)
{
  size = a1[5].__r_.__value_.__l.__size_;
  v4 = a1[5].__r_.__value_.__r.__words[2];
  a1[5].__r_.__value_.__r.__words[2] = (v4 + 1);
  if (size == v4 + 1)
  {
    v11 = &size[-a1[5].__r_.__value_.__r.__words[0]];
    sub_100007ECC(&__p, "Character class declaration starting with [ terminated prematurely - either no ] was found or the set had no content.");
    sub_100154EBC(a1, 7, v11, &__p);
    goto LABEL_7;
  }

  v6 = a1->__r_.__value_.__l.__size_;
  v7 = *v6;
  v8 = *v6 + 32;
  v9 = *(v8 + v4[1]);
  if (v9 == 37)
  {
    v18 = v4 + 2;
    a1[5].__r_.__value_.__r.__words[2] = (v4 + 2);
    if (size == v4 + 2 || (a1[5].__r_.__value_.__r.__words[2] = (v4 + 3), size == v4 + 3))
    {
LABEL_24:
      v22 = &size[-a1[5].__r_.__value_.__r.__words[0]];
      sub_100007ECC(&__p, "Character class declaration starting with [ terminated prematurely - either no ] was found or the set had no content.");
      sub_100154EBC(a1, 7, v22, &__p);
      goto LABEL_7;
    }

    v19 = v4 + 4;
    v20 = -4 - v4;
    while (1)
    {
      v21 = *(v8 + *(v19 - 1));
      a1[5].__r_.__value_.__r.__words[2] = v19;
      if (v21 == 37)
      {
        break;
      }

      --v20;
      v17 = v19++ == size;
      if (v17)
      {
        goto LABEL_24;
      }
    }

    if (v19 == size || *(v8 + *v19) != 10)
    {
      data = a1[5].__r_.__value_.__l.__data_;
      v25 = -v20;
      sub_100007ECC(&__p, "Character class declaration starting with [ terminated prematurely - either no ] was found or the set had no content.");
      sub_100154EBC(a1, 7, v25 - data, &__p);
      goto LABEL_7;
    }

    sub_10015B024(v18, *v6, v19 - 1, &__p);
    if (v41 < 0)
    {
      if (v40 - 3 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v38 = 0;
        p_p = __p;
        v37 = *__p;
        if (v40 > 1)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      }
    }

    else if (v41 - 3 > 0xFFFFFFFD)
    {
      v38 = 0;
      v37 = __p;
      if (v41 >= 2u)
      {
        p_p = &__p;
LABEL_54:
        v38 = p_p[1];
LABEL_56:
        sub_10015C038(a2, &v37);
        v30 = 0;
        ++a1[5].__r_.__value_.__r.__words[2];
LABEL_57:
        if (v41 < 0)
        {
          operator delete(__p);
        }

        return (v30 & 1) == 0;
      }

LABEL_55:
      v38 = 0;
      goto LABEL_56;
    }

    sub_100154748(a1, 3, &v18[-a1[5].__r_.__value_.__r.__words[0]]);
    v30 = 1;
    goto LABEL_57;
  }

  if (v9 != 36 || (*(a1->__r_.__value_.__r.__words[0] + 40) & 0x103) == 0x101)
  {
    a1[5].__r_.__value_.__r.__words[2] = v4;
    sub_10015B344(a1, a2);
    return 1;
  }

  v12 = v4 + 2;
  a1[5].__r_.__value_.__r.__words[2] = (v4 + 2);
  if (size == v4 + 2)
  {
    goto LABEL_24;
  }

  v13 = v4 + 3;
  a1[5].__r_.__value_.__r.__words[2] = (v4 + 3);
  if (size == v4 + 3)
  {
    goto LABEL_24;
  }

  v14 = -4 - v4;
  v15 = v4 + 4;
  while (1)
  {
    v16 = *(v8 + *(v15 - 1));
    a1[5].__r_.__value_.__r.__words[2] = v15;
    if (v16 == 36)
    {
      break;
    }

    --v14;
    v17 = v15++ == size;
    if (v17)
    {
      goto LABEL_24;
    }
  }

  if (v15 == size || *(v8 + *v15) != 10)
  {
    v29 = a1[5].__r_.__value_.__l.__data_;
    sub_100007ECC(&__p, "Character class declaration starting with [ terminated prematurely - either no ] was found or the set had no content.");
    sub_100154EBC(a1, 7, -v14 - v29, &__p);
LABEL_7:
    if (v41 < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v26 = *(v8 + *v12);
  if (v26 == 4)
  {
    v27 = v13;
  }

  else
  {
    v27 = v12;
  }

  v28 = sub_1001539DC(v7, v27, v15 - 1);
  if (v28)
  {
    if (v26 == 4)
    {
      *(a2 + 56) |= v28;
    }

    else
    {
      *(a2 + 52) |= v28;
    }

    *(a2 + 60) = 0;
    ++a1[5].__r_.__value_.__r.__words[2];
    return 1;
  }

  if (&v27[v14] == -2 && (*(a2 + 60) & 1) != 0)
  {
    v32 = a1[5].__r_.__value_.__l.__size_;
    v31 = a1[5].__r_.__value_.__r.__words[2];
    a1[5].__r_.__value_.__r.__words[2] = v31 + 1;
    if (v31 + 1 != v32)
    {
      v33 = *a1->__r_.__value_.__l.__size_ + 32;
      if (*(v33 + *(v31 + 1)) == 10)
      {
        v34 = *(v33 + *v27);
        if (v34 == 21)
        {
          a1[5].__r_.__value_.__r.__words[2] = v31 + 2;
          v35 = a1;
          v36 = 10;
          goto LABEL_65;
        }

        if (v34 == 20)
        {
          a1[5].__r_.__value_.__r.__words[2] = v31 + 2;
          v35 = a1;
          v36 = 9;
LABEL_65:
          sub_100154BB4(v35, v36, 0x10uLL);
          return 0;
        }
      }
    }
  }

  sub_100154748(a1, 4, &v27[-a1[5].__r_.__value_.__r.__words[0]]);
  return 0;
}

void sub_10015B998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015B9DC(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  v5 = a1[5].__r_.__value_.__r.__words[2];
  v6 = *a1->__r_.__value_.__l.__size_;
  v7 = v6 + 32;
  v8 = *(v6 + 32 + *v5);
  if (v8 != 9)
  {
    if (v8 == 12)
    {
      v10 = *(a1->__r_.__value_.__r.__words[0] + 40);
      a1[5].__r_.__value_.__r.__words[2] = (v5 + 1);
      if ((v10 & 0x10000) == 0)
      {
        *a3 = sub_100159614(a1);
        return;
      }

      goto LABEL_11;
    }

    if (v8 != 14 || (*(a2 + 60) & 1) != 0)
    {
LABEL_8:
      a1[5].__r_.__value_.__r.__words[2] = (v5 + 1);
LABEL_11:
      *a3 = *v5;
      return;
    }

    v9 = v5 + 1;
    a1[5].__r_.__value_.__r.__words[2] = (v5 + 1);
    if (v5 + 1 != a1[5].__r_.__value_.__l.__size_ && *(v7 + *v9) == 10)
    {
      a1[5].__r_.__value_.__r.__words[2] = v5;
      goto LABEL_8;
    }

    v18 = &v9[-a1[5].__r_.__value_.__r.__words[0]];
    v19 = a1;
    v20 = 11;
    goto LABEL_32;
  }

  size = a1[5].__r_.__value_.__l.__size_;
  v12 = v5 + 1;
  a1[5].__r_.__value_.__r.__words[2] = (v5 + 1);
  if (size == v5 + 1)
  {
    goto LABEL_21;
  }

  if (*(v7 + *v12) != 5)
  {
    a1[5].__r_.__value_.__r.__words[2] = v5;
    *a3 = *v5;
    a1[5].__r_.__value_.__r.__words[2] = v12;
    return;
  }

  v13 = v5 + 2;
  a1[5].__r_.__value_.__r.__words[2] = (v5 + 2);
  if (size == v5 + 2)
  {
LABEL_21:
    v18 = &size[-a1[5].__r_.__value_.__r.__words[0]];
LABEL_31:
    v19 = a1;
    v20 = 3;
LABEL_32:

    sub_100154748(v19, v20, v18);
    return;
  }

  v14 = v5 + 3;
  a1[5].__r_.__value_.__r.__words[2] = (v5 + 3);
  if (size == v5 + 3)
  {
    goto LABEL_30;
  }

  v15 = v5 + 3;
  while (1)
  {
    v16 = *v15++;
    v17 = *(v7 + v16);
    a1[5].__r_.__value_.__r.__words[2] = v15;
    if (v17 == 5)
    {
      break;
    }

    v14 = v15;
    if (v15 == size)
    {
      goto LABEL_30;
    }
  }

  if (v14 + 1 == size || *(v7 + v14[1]) != 10)
  {
LABEL_30:
    v18 = &v13[-a1[5].__r_.__value_.__r.__words[0]];
    goto LABEL_31;
  }

  a1[5].__r_.__value_.__r.__words[2] = (v14 + 2);
  sub_10015B024(v13, v6, v14, &__p);
  v21 = v26;
  if (v26 < 0)
  {
    v23 = v25;
    if (v25 - 3 >= 0xFFFFFFFFFFFFFFFELL)
    {
      p_p = __p;
      *a3 = *__p;
      if (v23 > 1)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

LABEL_36:
    sub_100154748(a1, 3, &v13[-a1[5].__r_.__value_.__r.__words[0]]);
    LOBYTE(v21) = v26;
    goto LABEL_40;
  }

  if (v26 - 3 <= 0xFFFFFFFD)
  {
    goto LABEL_36;
  }

  *a3 = __p;
  if (v21 >= 2)
  {
    p_p = &__p;
LABEL_38:
    *(a3 + 1) = p_p[1];
    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 1) = 0;
LABEL_40:
  if ((v21 & 0x80) != 0)
  {
    operator delete(__p);
  }
}

void sub_10015BC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10015BC60(uint64_t a1, char *a2, char *a3)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v7 >= v6)
  {
    v8 = sub_10015BD58((a1 + 24), a2);
    v6 = *(a1 + 40);
  }

  else
  {
    *v7 = *a2;
    v7[1] = a2[1];
    v8 = v7 + 2;
  }

  *(a1 + 32) = v8;
  if (v8 >= v6)
  {
    result = sub_10015BD58((a1 + 24), a3);
  }

  else
  {
    *v8 = *a3;
    v8[1] = a3[1];
    result = (v8 + 2);
  }

  *(a1 + 32) = result;
  if (a2[1])
  {
    *(a1 + 49) = 1;
    result = sub_10015BF3C(a1, a2);
    if (a2[1])
    {
      *(a1 + 49) = 1;
    }

    *(a1 + 60) = 0;
  }

  if (a3[1])
  {
    *(a1 + 49) = 1;
    result = sub_10015BF3C(a1, a3);
    if (a3[1])
    {
      *(a1 + 49) = 1;
    }
  }

  *(a1 + 60) = 0;
  return result;
}

uint64_t sub_10015BD58(void *a1, _BYTE *a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (v2 <= -2)
  {
    sub_100033FD0();
  }

  v5 = a1[2] - *a1;
  if (v5 <= v2 + 1)
  {
    v6 = v2 + 1;
  }

  else
  {
    v6 = a1[2] - *a1;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v15 = a1;
  if (v7)
  {
    sub_10015BEF8(a1, v7);
  }

  v8 = (2 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 2 * v2 + 2;
  v14 = 0;
  sub_10015BE7C(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += &v12[-v13 + 1] & 0xFFFFFFFFFFFFFFFELL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_10015BE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10015BE7C(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_10015BEF8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_10015BF3C(uint64_t a1, char *a2)
{
  v2 = *sub_10015BFD0(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_10015BFD0(uint64_t a1, void *a2, char *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 25);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 26);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_10015C038(uint64_t a1, char *a2)
{
  result = sub_10015BF3C(a1 + 64, a2);
  if (a2[1])
  {
    *(a1 + 49) = 1;
    result = sub_10015BF3C(a1, a2);
    if (a2[1])
    {
      *(a1 + 49) = 1;
    }
  }

  *(a1 + 60) = 0;
  return result;
}

uint64_t sub_10015C0A0(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = *(a1 + 136);
  v4 = (v2 + 1);
  *(a1 + 136) = v2 + 1;
  if (v2 + 1 == v3)
  {
    sub_100154748(a1, 8, &v4[-*(a1 + 120)]);
  }

  else
  {
    v5 = *v4;
    v6 = 0;
    switch(*(**(a1 + 8) + v5 + 32))
    {
      case 1:

        return sub_100155328(a1);
      case 2:
        return v6;
      case 7:
        if ((*(*a1 + 41) & 4) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v9 = 1;
        v10 = -1;
        goto LABEL_28;
      case 8:
        if ((*(*a1 + 41) & 4) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v9 = 0;
        v10 = 1;
LABEL_28:

        return sub_100155EAC(a1, v9, v10);
      case 0xB:
        if ((*(*a1 + 41) & 8) == 0)
        {
          goto LABEL_43;
        }

        return sub_100156874(a1);
      case 0xF:
        if ((*(*a1 + 41) & 2) != 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;

        return sub_100156308(a1, 1);
      case 0x10:
        if ((*(*a1 + 41) & 2) != 0)
        {
          goto LABEL_43;
        }

        v11 = &v4[-*(a1 + 120)];
        sub_100007ECC(&__p, "Found a closing repetition operator } with no corresponding {.");
        sub_100154EBC(a1, 9, v11, &__p);
        goto LABEL_58;
      case 0x11:

        return sub_100159C94(a1);
      case 0x12:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 7;
        goto LABEL_40;
      case 0x13:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 8;
        goto LABEL_40;
      case 0x14:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 9;
        goto LABEL_40;
      case 0x15:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 10;
        goto LABEL_40;
      case 0x18:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 11;
        goto LABEL_40;
      case 0x19:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 12;
LABEL_40:
        sub_100154BB4(a1, v8, 0x10uLL);
        return 1;
      default:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        HIDWORD(v13) = v5 - 67;
        LODWORD(v13) = HIDWORD(v13);
        v12 = v13 >> 2;
        if (v12 > 7)
        {
          if (v12 != 8)
          {
            if (v12 != 12)
            {
              if (v12 == 13)
              {
                __p = &v19;
                v19 = 0;
                v20 = 0;
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v29 = 0;
                v30 = 0;
                v28 = &v29;
                v24 = 0;
                v26 = 0;
                goto LABEL_55;
              }

              goto LABEL_43;
            }

            v17 = 0;
            goto LABEL_62;
          }
        }

        else if (v12)
        {
          if (v12 != 4)
          {
            if (v12 == 5)
            {
              __p = &v19;
              v19 = 0;
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v29 = 0;
              v30 = 0;
              v28 = &v29;
              v26 = 0;
              v24 = 1;
LABEL_55:
              v25 = *(a1 + 80);
              v27 = 0;
              v14 = sub_100159480(a1, &__p);
              v6 = v14 != 0;
              v15 = *(a1 + 136);
              if (v14)
              {
                *(a1 + 136) = v15 + 1;
              }

              else
              {
                sub_100154748(a1, 4, v15 - *(a1 + 120));
              }

              sub_10015949C(&__p);
              return v6;
            }

LABEL_43:

            return sub_100154E4C(a1);
          }

          v17 = 1;
LABEL_62:

          return sub_10015C518(a1, v17);
        }

        v16 = &v4[-*(a1 + 120)];
        sub_100007ECC(&__p, "The \\c and \\C escape sequences are not supported by POSIX basic regular expressions: try the Perl syntax instead.");
        sub_100154EBC(a1, 5, v16, &__p);
LABEL_58:
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p);
        }

        break;
    }
  }

  return 0;
}

void sub_10015C4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10015C518(uint64_t a1, int a2)
{
  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  v5 = v3 + 1;
  *(a1 + 136) = v3 + 1;
  if (v3 + 1 == v4)
  {
    v7 = **(a1 + 8) + 32;
    do
    {
      *(a1 + 136) = v3;
      v8 = *v3--;
      --v5;
    }

    while (*(v7 + v8) != 12);
    sub_100154748(a1, 5, &v5[-*(a1 + 120)]);
    return 0;
  }

  v16 = 0u;
  v15 = &v16;
  v18 = 0;
  v19 = 0;
  __p = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 1;
  if (a2)
  {
    LOBYTE(v20) = 1;
  }

  v6 = *v5;
  if (v6 <= 0x2D)
  {
    if (*v5 > 0x26u)
    {
      switch(v6)
      {
        case '\'':
          v14 = 39;
          sub_10015BF3C(&v15, &v14);
          if (HIBYTE(v14))
          {
            HIBYTE(v20) = 1;
          }

          v23 = 0;
          v14 = 44;
          sub_10015BF3C(&v15, &v14);
          if (HIBYTE(v14))
          {
            HIBYTE(v20) = 1;
          }

          v23 = 0;
          v14 = 35;
          sub_10015BF3C(&v15, &v14);
          goto LABEL_65;
        case '(':
          v14 = 40;
          sub_10015BF3C(&v15, &v14);
          if (HIBYTE(v14))
          {
            HIBYTE(v20) = 1;
          }

          v23 = 0;
          v14 = 91;
          sub_10015BF3C(&v15, &v14);
          if (HIBYTE(v14))
          {
            HIBYTE(v20) = 1;
          }

          v23 = 0;
          v14 = 123;
          sub_10015BF3C(&v15, &v14);
          goto LABEL_65;
        case ')':
          v14 = 41;
          sub_10015BF3C(&v15, &v14);
          if (HIBYTE(v14))
          {
            HIBYTE(v20) = 1;
          }

          v23 = 0;
          v14 = 93;
          sub_10015BF3C(&v15, &v14);
          if (HIBYTE(v14))
          {
            HIBYTE(v20) = 1;
          }

          v23 = 0;
          v14 = 125;
          sub_10015BF3C(&v15, &v14);
          goto LABEL_65;
      }

      goto LABEL_72;
    }

    if (v6 != 32)
    {
      if (v6 == 34)
      {
        v14 = 34;
        sub_10015BF3C(&v15, &v14);
        if (HIBYTE(v14))
        {
          HIBYTE(v20) = 1;
        }

        v23 = 0;
        v14 = 39;
        sub_10015BF3C(&v15, &v14);
        if (HIBYTE(v14))
        {
          HIBYTE(v20) = 1;
        }

        v23 = 0;
        v14 = 96;
        sub_10015BF3C(&v15, &v14);
        goto LABEL_65;
      }

      goto LABEL_72;
    }

    goto LABEL_35;
  }

  if (*v5 > 0x5Eu)
  {
    if (v6 == 95)
    {
      v14 = 36;
      sub_10015BF3C(&v15, &v14);
      if (HIBYTE(v14))
      {
        HIBYTE(v20) = 1;
      }

      v23 = 0;
      v14 = 38;
      sub_10015BF3C(&v15, &v14);
      if (HIBYTE(v14))
      {
        HIBYTE(v20) = 1;
      }

      v23 = 0;
      v14 = 42;
      sub_10015BF3C(&v15, &v14);
      if (HIBYTE(v14))
      {
        HIBYTE(v20) = 1;
      }

      v23 = 0;
      v14 = 43;
      sub_10015BF3C(&v15, &v14);
      if (HIBYTE(v14))
      {
        HIBYTE(v20) = 1;
      }

      v23 = 0;
      v14 = 45;
      sub_10015BF3C(&v15, &v14);
      if (HIBYTE(v14))
      {
        HIBYTE(v20) = 1;
      }

      v23 = 0;
      v14 = 95;
      sub_10015BF3C(&v15, &v14);
      if (HIBYTE(v14))
      {
        HIBYTE(v20) = 1;
      }

      v23 = 0;
      v14 = 60;
      sub_10015BF3C(&v15, &v14);
      if (HIBYTE(v14))
      {
        HIBYTE(v20) = 1;
      }

      v23 = 0;
      v14 = 62;
      sub_10015BF3C(&v15, &v14);
      goto LABEL_65;
    }

    if (v6 == 119)
    {
      v10 = *(a1 + 80);
      goto LABEL_49;
    }

    if (v6 != 115)
    {
      goto LABEL_72;
    }

LABEL_35:
    v10 = *(a1 + 84);
LABEL_49:
    v21 = v10;
    goto LABEL_67;
  }

  if (v6 == 46)
  {
    v11 = sub_1001539DC(**(a1 + 8), "punct", "");
    v10 = v21 | v11;
    goto LABEL_49;
  }

  if (v6 != 60)
  {
    if (v6 == 62)
    {
      v14 = 10;
      sub_10015BF3C(&v15, &v14);
      if (HIBYTE(v14))
      {
        HIBYTE(v20) = 1;
      }

      v23 = 0;
      v14 = 12;
      sub_10015BF3C(&v15, &v14);
      goto LABEL_65;
    }

LABEL_72:
    sub_100154748(a1, 4, &v5[-*(a1 + 120)]);
    v9 = 0;
    goto LABEL_73;
  }

  v14 = 59;
  sub_10015BF3C(&v15, &v14);
LABEL_65:
  if (HIBYTE(v14))
  {
    HIBYTE(v20) = 1;
  }

LABEL_67:
  v23 = 0;
  if (HIBYTE(v20) == 1)
  {
    v12 = sub_100159F38(a1, &v15);
  }

  else
  {
    v12 = sub_10015A8D4(a1, &v15);
  }

  v5 = *(a1 + 136);
  if (!v12)
  {
    goto LABEL_72;
  }

  *(a1 + 136) = v5 + 1;
  v9 = 1;
LABEL_73:
  sub_10001C4B0(&v24, v25[0]);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  sub_10001C4B0(&v15, v16);
  return v9;
}

void sub_10015CAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10015949C(va);
  _Unwind_Resume(a1);
}

std::string *sub_10015CB18(std::string *result, int a2, uint64_t a3, std::string *this, uint64_t a5)
{
  v8 = result;
  v9 = result->__r_.__value_.__r.__words[0];
  if (!*(result->__r_.__value_.__r.__words[0] + 44))
  {
    *(v9 + 44) = a2;
  }

  data = result[5].__r_.__value_.__l.__data_;
  size = result[5].__r_.__value_.__l.__size_;
  result[5].__r_.__value_.__r.__words[2] = size;
  v12 = 10;
  if (a3 > 10)
  {
    v12 = a3;
  }

  v13 = v12 - 10;
  if (a5 == a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = a5;
  }

  v15 = size - data;
  if (v15 >= a3 + 10)
  {
    v16 = a3 + 10;
  }

  else
  {
    v16 = v15;
  }

  if (a2 != 17)
  {
    if (v15 <= a3 + 10 && v14 == 0)
    {
      v18 = "  The error occurred while parsing the regular expression: '";
    }

    else
    {
      v18 = "  The error occurred while parsing the regular expression fragment: '";
    }

    std::string::append(this, v18);
    if (v14 != v16)
    {
      sub_10005D6A0(&__p, (v8[5].__r_.__value_.__r.__words[0] + v14), (v8[5].__r_.__value_.__r.__words[0] + a3), a3 - v14);
      if ((v25 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__vftable;
      }

      if ((v25 & 0x80u) == 0)
      {
        imp = v25;
      }

      else
      {
        imp = __p.__imp_.__imp_;
      }

      std::string::append(this, p_p, imp);
      if (v25 < 0)
      {
        operator delete(__p.__vftable);
      }

      std::string::append(this, ">>>HERE>>>");
      sub_10005D6A0(&__p, (v8[5].__r_.__value_.__r.__words[0] + a3), (v8[5].__r_.__value_.__r.__words[0] + v16), v16 - a3);
      if ((v25 & 0x80u) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__vftable;
      }

      if ((v25 & 0x80u) == 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = __p.__imp_.__imp_;
      }

      std::string::append(this, v21, v22);
      if (v25 < 0)
      {
        operator delete(__p.__vftable);
      }
    }

    result = std::string::append(this, "'.");
    v9 = v8->__r_.__value_.__r.__words[0];
  }

  if ((*(v9 + 42) & 4) == 0)
  {
    std::runtime_error::runtime_error(&__p, this);
    __p.__vftable = &off_1002B4440;
    v24 = a2;
    v26 = a3;
    sub_10014A2E0(&__p);
  }

  return result;
}

void sub_10015CCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10015CD0C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    while (1)
    {
      v2 = *a2;
      if (*a2 <= 21)
      {
        switch(v2)
        {
          case 16:
            goto LABEL_6;
          case 17:
            goto LABEL_5;
          case 18:
LABEL_4:
            v3 = *(result + 28);
            *(result + 28) = v3 + 1;
            *(a2 + 304) = v3;
LABEL_5:
            *(a2 + 24) = 0uLL;
            *(a2 + 280) = 0;
            *(a2 + 248) = 0uLL;
            *(a2 + 264) = 0uLL;
            *(a2 + 216) = 0uLL;
            *(a2 + 232) = 0uLL;
            *(a2 + 184) = 0uLL;
            *(a2 + 200) = 0uLL;
            *(a2 + 152) = 0uLL;
            *(a2 + 168) = 0uLL;
            *(a2 + 120) = 0uLL;
            *(a2 + 136) = 0uLL;
            *(a2 + 88) = 0uLL;
            *(a2 + 104) = 0uLL;
            *(a2 + 56) = 0uLL;
            *(a2 + 72) = 0uLL;
            *(a2 + 40) = 0uLL;
LABEL_6:
            *(a2 + 16) += a2;
            break;
        }
      }

      else
      {
        if ((v2 - 22) < 4)
        {
          goto LABEL_4;
        }

        if (v2 == 29)
        {
          *(result + 48) = 1;
        }
      }

      v4 = *(a2 + 8);
      if (!v4)
      {
        *(a2 + 8) = 0;
        return result;
      }

      *(a2 + 8) = a2 + v4;
      a2 += v4;
    }
  }

  return result;
}

uint64_t sub_10015CDC8(uint64_t result, int *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = a2;
    do
    {
      if (*v4 == 29)
      {
        v7 = *(v4 + 2);
        if (v7 >= 0x40000000)
        {
          result = sub_100159ED8(*v3, v7);
          v7 = result;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = a2;
          while (*v8 || v7 != v8[4])
          {
            v8 = *(v8 + 1);
            if (!v8)
            {
              goto LABEL_18;
            }
          }

          *(v4 + 2) = v8;
          while (1)
          {
            v8 = *(v8 + 1);
            if (!v8)
            {
              goto LABEL_21;
            }

            v10 = *v8;
            if ((*v8 - 22) >= 4)
            {
              if (v10 == 1)
              {
                if (v7 == v8[4])
                {
                  goto LABEL_21;
                }

                continue;
              }

              if (v10 != 18)
              {
                continue;
              }
            }

            v11 = v8[76];
            if (v11)
            {
              if (v11 >= 1)
              {
                v4[6] = v11 - 1;
              }

              goto LABEL_21;
            }
          }
        }

LABEL_18:
        v9 = *v3;
        if (!*(*v3 + 11))
        {
          *(v9 + 11) = 2;
        }

        v9[6] = 0;
        v9[7] = 0;
        if ((*(v9 + 42) & 4) == 0)
        {
          sub_100007ECC(&v15, "Encountered a forward reference to a recursive sub-expression that does not exist.");
          std::runtime_error::runtime_error(&v12, &v15);
          v12.__vftable = &off_1002B4440;
          v13 = 2;
          v14 = 0;
          sub_10014A2E0(&v12);
        }
      }

      else if (*v4 == 27)
      {
        v5 = v4[4];
        if (v5 <= -1073741825)
        {
          result = sub_100159ED8(*v3, ~v5);
          if (result <= 0)
          {
            v6 = *v3;
            if (!*(*v3 + 11))
            {
              *(v6 + 11) = 2;
            }

            v6[6] = 0;
            v6[7] = 0;
            if ((*(v6 + 42) & 4) == 0)
            {
              sub_100007ECC(&v15, "Encountered a forward reference to a marked sub-expression that does not exist.");
              std::runtime_error::runtime_error(&v12, &v15);
              v12.__vftable = &off_1002B4440;
              v13 = 2;
              v14 = 0;
              sub_10014A2E0(&v12);
            }
          }
        }
      }

LABEL_21:
      v4 = *(v4 + 1);
    }

    while (v4);
  }

  return result;
}

void sub_10015CFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::runtime_error::~runtime_error(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10015D00C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 24);
  __p = 0;
  v28 = 0;
  v29 = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v5 = *v3;
      if (*v3 <= 0x1C)
      {
        if (((1 << v5) & 0x3C60000) != 0)
        {
          v6 = *(a1 + 24);
          v7 = v28;
          if (v28 >= v29)
          {
            v9 = (v28 - __p) >> 4;
            v10 = v9 + 1;
            if ((v9 + 1) >> 60)
            {
              sub_100033FD0();
            }

            v11 = v29 - __p;
            if ((v29 - __p) >> 3 > v10)
            {
              v10 = v11 >> 3;
            }

            if (v11 >= 0x7FFFFFFFFFFFFFF0)
            {
              v12 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v10;
            }

            if (v12)
            {
              sub_10015DFF8(&__p, v12);
            }

            v13 = 16 * v9;
            *v13 = v6;
            *(v13 + 8) = v3;
            v8 = 16 * v9 + 16;
            v14 = (v13 - (v28 - __p));
            memcpy(v14, __p, v28 - __p);
            v15 = __p;
            __p = v14;
            v28 = v8;
            v29 = 0;
            if (v15)
            {
              operator delete(v15);
            }
          }

          else
          {
            *v28 = v6;
            *(v7 + 1) = v3;
            v8 = (v7 + 16);
          }

          v28 = v8;
        }

        else if (v5 == 26)
        {
          v16 = sub_10015DDCC(a1, *(v3 + 1));
          v3[4] = v16;
          if (v16 < 0)
          {
            v17 = *a1;
            if (!*(*a1 + 44))
            {
              *(v17 + 44) = 2;
            }

            *(v17 + 48) = 0;
            *(v17 + 56) = 0;
            if ((*(v17 + 42) & 4) == 0)
            {
              sub_100007ECC(&v26, "Invalid lookbehind assertion encountered in the regular expression.");
              std::runtime_error::runtime_error(&v23, &v26);
              v23.__vftable = &off_1002B4440;
              v24 = 2;
              v25 = 0;
              sub_10014A2E0(&v23);
            }
          }
        }

        else if (v5 == 28)
        {
          *(a1 + 24) = *(v3 + 16);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3);
    while (1)
    {
      v22 = __p;
      if (__p == v28)
      {
        break;
      }

      if (*(a1 + 48) == 1)
      {
        v18 = *(*a1 + 64);
        LOBYTE(v23.__vftable) = 0;
        sub_10015D310((a1 + 56), v18 + 1, &v23);
      }

      v19 = v28 - 16;
      *(a1 + 24) = *(v28 - 16);
      v20 = *(v19 + 1);
      v28 = v19;
      *(a1 + 40) = 0;
      sub_10015D400(a1, *(v20 + 8), (v20 + 24), (v20 + 280), 1);
      *(a1 + 40) = 0;
      if (*(a1 + 48) == 1)
      {
        v21 = *(*a1 + 64);
        LOBYTE(v23.__vftable) = 0;
        sub_10015D310((a1 + 56), v21 + 1, &v23);
      }

      sub_10015D400(a1, *(v20 + 16), (v20 + 24), (v20 + 280), 2);
      *v20 = sub_10015DF80(a1, v20);
    }

    *(a1 + 24) = v2;
    if (v22)
    {
      v28 = v22;
      operator delete(v22);
    }
  }
}

void sub_10015D2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19)
{
  std::runtime_error::~runtime_error(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void *sub_10015D310(void **a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = 2 * v6;
      if (2 * v6 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      sub_10000BDA8(a1, v9);
    }

    sub_100033FD0();
  }

  v10 = a1[1];
  v11 = v10 - result;
  if (v10 - result >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10 - result;
  }

  if (v12)
  {
    result = memset(result, *a3, v12);
  }

  v13 = a2 >= v11;
  v14 = a2 - v11;
  if (v14 != 0 && v13)
  {
    v15 = a1[1];
    result = memset(v15, *a3, v14);
    v16 = &v15[v14];
  }

  else
  {
    v16 = *a1 + a2;
  }

  a1[1] = v16;
  return result;
}

void sub_10015D400(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4, uint64_t a5)
{
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = (a1 + 56);
  v61 = 0;
  v62 = 0;
  v63 = 0;
  sub_10000E4DC(&v61, v9, v10, v10 - v9);
  v64 = v11;
  if (!a2)
  {
    goto LABEL_138;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *(a1 + 24);
  v16 = vdupq_n_s8(a5);
  v17 = 1;
  while (2)
  {
    v18 = *a2;
    switch(*a2)
    {
      case 0:
        if (*(a2 + 16) != -3)
        {
          goto LABEL_31;
        }

        a2 = *(*(a2 + 8) + 8);
        goto LABEL_32;
      case 1:
        v24 = *(a2 + 16);
        if ((v24 & 0x80000000) == 0)
        {
          if (v12 && v14 && v14 == v24)
          {
            v12 = 0;
            a2 = v13;
          }

          else
          {
            if (v24)
            {
              if (*(*a1 + 400))
              {
                v25 = *(*a1 + 72);
                if (v25)
                {
                  while (1)
                  {
                    if (*v25 == 29)
                    {
                      v26 = *(v25 + 16);
                      if (!*v26 && v26[4] == v24)
                      {
                        break;
                      }
                    }

                    v25 = *(v25 + 8);
                    if (!v25)
                    {
                      goto LABEL_31;
                    }
                  }

                  if ((*(*v11 + v24) & 2) == 0)
                  {
                    *(*v11 + v24) |= 2u;
                    v55 = v16;
                    sub_10015D400(a1, *(v25 + 8), a3, a4, a5);
                    v16 = v55;
                  }
                }
              }
            }

LABEL_31:
            a2 = *(a2 + 8);
          }

LABEL_32:
          ++v17;
          if (!a2)
          {
            goto LABEL_138;
          }

          continue;
        }

        if (!a3)
        {
          goto LABEL_122;
        }

        if (!*a3)
        {
LABEL_120:
          *(a3 + 15) = v16;
          *(a3 + 225) = v16;
          *(a3 + 209) = v16;
          *(a3 + 193) = v16;
          *(a3 + 177) = v16;
          *(a3 + 161) = v16;
          *(a3 + 145) = v16;
          *(a3 + 129) = v16;
          *(a3 + 113) = v16;
          *(a3 + 97) = v16;
          *(a3 + 81) = v16;
          *(a3 + 65) = v16;
          *(a3 + 49) = v16;
          *(a3 + 33) = v16;
          *(a3 + 17) = v16;
          v50 = a5;
          *(a3 + 1) = v16;
          goto LABEL_121;
        }

        for (i = 0; i != 256; i += 16)
        {
          *&a3[i] = vorrq_s8(*&a3[i], v16);
        }

LABEL_119:
        v50 = *a3;
LABEL_121:
        *a3 = v50 | 4;
LABEL_122:
        if (a4)
        {
LABEL_123:
          *a4 |= a5;
        }

LABEL_138:
        v52 = v64;
        v53 = *v64;
        *v64 = v61;
        v52[1] = v62;
        v54 = v52[2];
        v52[2] = v63;
        v61 = v53;
        v63 = v54;
        if (v53)
        {
          v62 = v53;
          operator delete(v53);
        }

        return;
      case 2:
        if (a3)
        {
          v43 = 0;
          *a3 |= 4u;
          v44 = *(a2 + 24);
          do
          {
            v45 = v43;
            if (v15)
            {
              v46 = *(**(a1 + 8) + 8);
              LOBYTE(v45) = (*(*v46 + 40))(v46, v45);
            }

            if (v44 == v45)
            {
              a3[v43] |= a5;
            }

            ++v43;
          }

          while (v43 != 256);
        }

        goto LABEL_138;
      case 4:
        if (a3)
        {
          *a3 |= 4u;
          a3[10] |= a5;
          a3[13] |= a5;
          a3[12] |= a5;
          a3[133] |= a5;
        }

        if (a4)
        {
          sub_10015D400(a1, *(a2 + 8), 0, a4, a5);
        }

        goto LABEL_138;
      case 5:
        goto LABEL_110;
      case 6:
      case 0x1F:
        if (!a3)
        {
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_120;
        }

        for (j = 0; j != 256; j += 16)
        {
          *&a3[j] = vorrq_s8(*&a3[j], v16);
        }

        goto LABEL_119;
      case 9:
        sub_10015D400(a1, *(a2 + 8), a3, a4, a5);
        if (a3)
        {
          v41 = 0;
          *a3 |= 4u;
          v42 = ~a5;
          do
          {
            if (!sub_100146404(*(a1 + 8), v41, *(a1 + 80)))
            {
              a3[v41] &= v42;
            }

            ++v41;
          }

          while (v41 != 256);
        }

        goto LABEL_138;
      case 0xA:
        sub_10015D400(a1, *(a2 + 8), a3, a4, a5);
        if (a3)
        {
          v39 = 0;
          *a3 |= 4u;
          v40 = ~a5;
          do
          {
            if (sub_100146404(*(a1 + 8), v39, *(a1 + 80)))
            {
              a3[v39] &= v40;
            }

            ++v39;
          }

          while (v39 != 256);
        }

        goto LABEL_138;
      case 0xC:
        goto LABEL_122;
      case 0xD:
        goto LABEL_108;
      case 0xE:
        if (!a3)
        {
          goto LABEL_138;
        }

        if (*(a2 + 37) == 1)
        {
          v38 = 0;
          *a3 |= 4u;
          do
          {
            LOBYTE(v57.__vftable) = v38;
            if (&v57 != sub_10015E040(&v57, &v57.__vftable + 1, a2, *a1, v15 & 1))
            {
              a3[v38] |= a5;
            }

            ++v38;
          }

          while (v38 != 256);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        for (k = 0; k != 256; k += 16)
        {
          *&a3[k] = vorrq_s8(*&a3[k], v16);
        }

        goto LABEL_114;
      case 0xF:
        if (a3)
        {
          v34 = 0;
          *a3 |= 4u;
          v35 = a2 + 16;
          do
          {
            v36 = v34;
            if (v15)
            {
              v37 = *(**(a1 + 8) + 8);
              LOBYTE(v36) = (*(*v37 + 40))(v37, v36);
            }

            if (*(v35 + v36))
            {
              a3[v34] |= a5;
            }

            ++v34;
          }

          while (v34 != 256);
        }

        goto LABEL_138;
      case 0x10:
        a2 = *(a2 + 16);
        v17 = -1;
        goto LABEL_32;
      case 0x11:
      case 0x12:
      case 0x16:
      case 0x17:
      case 0x18:
      case 0x19:
        if ((*(a2 + 24) & 4) != 0)
        {
          if (a3)
          {
            v32 = 0;
            *a3 |= 4u;
            do
            {
              if ((*(a2 + 24 + v32) & 3) != 0)
              {
                a3[v32] |= a5;
              }

              ++v32;
            }

            while (v32 != 256);
          }

          if (a4 && (*(a2 + 280) & 3) != 0)
          {
            goto LABEL_123;
          }

          goto LABEL_138;
        }

        if ((v18 - 22) >= 4 && v18 != 18)
        {
          goto LABEL_127;
        }

        v28 = *(a2 + 304);
        if (v28 <= 0x3F)
        {
          v29 = *(a1 + 40);
          v30 = 1 << v28;
          if ((v29 & v30) == 0)
          {
            if ((v18 - 22) < 4 || v18 == 18)
            {
              *(a1 + 40) = v29 | v30;
            }

LABEL_127:
            sub_10015D400(a1, *(a2 + 8), a3, a4, a5);
            if (*a2 == 17 || !*(a2 + 288) || !v17)
            {
              sub_10015D400(a1, *(a2 + 16), a3, a4, a5);
            }

            goto LABEL_138;
          }
        }

        if (!a3)
        {
          goto LABEL_122;
        }

        if (*a3)
        {
          for (m = 0; m != 256; m += 16)
          {
            *&a3[m] = vorrq_s8(*&a3[m], v16);
          }

          goto LABEL_119;
        }

        goto LABEL_120;
      case 0x14:
        if (a3)
        {
          *a3 |= 4u;
          a3[10] |= a5;
          a3[13] |= a5;
        }

        goto LABEL_122;
      case 0x1C:
        v15 = *(a2 + 16);
        goto LABEL_31;
      case 0x1D:
        v21 = *(a2 + 16);
        v14 = *(v21 + 16);
        v22 = *v11;
        v23 = *(*v11 + v14);
        if (v23)
        {
          v47 = *a1;
          if (!*(*a1 + 44))
          {
            *(v47 + 44) = 2;
          }

          *(v47 + 48) = 0;
          *(v47 + 56) = 0;
          if ((*(v47 + 42) & 4) == 0)
          {
            sub_100007ECC(&v60, "Encountered an infinite recursion.");
            std::runtime_error::runtime_error(&v57, &v60);
            v57.__vftable = &off_1002B4440;
            v58 = 2;
            v59 = 0;
            sub_10014A2E0(&v57);
          }

          v23 = v22[v14];
LABEL_107:
          v22[v14] = v23 | 1;
LABEL_108:
          if (a4)
          {
            *a4 |= a5;
          }

LABEL_110:
          if (a3)
          {
            if (*a3)
            {
              for (n = 0; n != 256; n += 16)
              {
                *&a3[n] = vorrq_s8(*&a3[n], v16);
              }

LABEL_114:
              LOBYTE(a5) = *a3;
            }

            else
            {
LABEL_136:
              *(a3 + 15) = v16;
              *(a3 + 225) = v16;
              *(a3 + 209) = v16;
              *(a3 + 193) = v16;
              *(a3 + 177) = v16;
              *(a3 + 161) = v16;
              *(a3 + 145) = v16;
              *(a3 + 129) = v16;
              *(a3 + 113) = v16;
              *(a3 + 97) = v16;
              *(a3 + 81) = v16;
              *(a3 + 65) = v16;
              *(a3 + 49) = v16;
              *(a3 + 33) = v16;
              *(a3 + 17) = v16;
              *(a3 + 1) = v16;
            }

            *a3 = a5 | 4;
          }

          goto LABEL_138;
        }

        if (v12)
        {
          goto LABEL_107;
        }

        v13 = *(a2 + 8);
        v22[v14] = v23 | 1;
        v12 = a2;
        a2 = v21;
        goto LABEL_32;
      case 0x20:
        if (a3)
        {
          if (*a3)
          {
            for (ii = 0; ii != 256; ii += 16)
            {
              *&a3[ii] = vorrq_s8(*&a3[ii], v16);
            }

            v20 = *a3;
          }

          else
          {
            *(a3 + 15) = v16;
            *(a3 + 225) = v16;
            *(a3 + 209) = v16;
            *(a3 + 193) = v16;
            *(a3 + 177) = v16;
            *(a3 + 161) = v16;
            *(a3 + 145) = v16;
            *(a3 + 129) = v16;
            *(a3 + 113) = v16;
            *(a3 + 97) = v16;
            *(a3 + 81) = v16;
            *(a3 + 65) = v16;
            *(a3 + 49) = v16;
            *(a3 + 33) = v16;
            *(a3 + 17) = v16;
            v20 = a5;
            *(a3 + 1) = v16;
          }

          *a3 = v20 | 4;
        }

        goto LABEL_31;
      default:
        goto LABEL_31;
    }
  }
}

void sub_10015DC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::runtime_error a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, void *a22, void *a23, void **a24)
{
  std::runtime_error::~runtime_error(&a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  v25 = a24;
  v26 = *a24;
  *a24 = a21;
  v25[1] = a22;
  v27 = v25[2];
  v25[2] = a23;
  a21 = v26;
  a23 = v27;
  if (v26)
  {
    a22 = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10015DCD4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  while (1)
  {
    v2 = *a2;
    if (*a2 >= 2u)
    {
      break;
    }

    a2 = *(a2 + 8);
    if (!a2)
    {
      return 0;
    }
  }

  if (v2 > 10)
  {
    if (v2 == 11)
    {
      return 3;
    }

    else
    {
      if (v2 != 21)
      {
        return 0;
      }

      return 4;
    }
  }

  else
  {
    if (v2 != 3)
    {
      return v2 == 9;
    }

    return 2;
  }
}

uint64_t sub_10015DD3C(uint64_t result, int *a2)
{
  do
  {
    v2 = *a2;
    if (*a2 > 0x19)
    {
      break;
    }

    if (((1 << v2) & 0x201F9A) == 0)
    {
      if (v2)
      {
        if (((1 << v2) & 0x3C00000) != 0 && (*(result + 32) & 1) == 0)
        {
          *(a2 + 308) = 1;
        }

        return result;
      }

      v3 = a2[4];
      if ((v3 & 0x80000000) != 0)
      {
        if (v3 < 0xFFFFFFFE)
        {
          if (v3 != -3)
          {
            return result;
          }

          v4 = (a2 + 2);
        }

        else
        {
          v4 = (*(a2 + 1) + 16);
        }

        a2 = *v4;
      }
    }

    a2 = *(a2 + 1);
  }

  while (a2);
  return result;
}

uint64_t sub_10015DDCC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  v4 = 0;
  while (1)
  {
    while (1)
    {
      v5 = *v2;
      if (*v2 > 13)
      {
        break;
      }

      if (v5 <= 0)
      {
        if (!v5)
        {
          v7 = *(v2 + 16);
          if (v7 < 0xFFFFFFFE)
          {
            if (v7 != -3)
            {
              goto LABEL_37;
            }

            v8 = *(v2 + 8);
          }

          else
          {
            v8 = *(*(v2 + 8) + 16);
          }

          v6 = (v8 + 8);
          goto LABEL_14;
        }

LABEL_37:
        v11 = (v2 + 8);
        goto LABEL_38;
      }

      if (v5 <= 4)
      {
        if (v5 == 1)
        {
          if (*(v2 + 16) > 0xFFFFFFFD)
          {
            return v4;
          }
        }

        else if (v5 == 2)
        {
          v4 = (*(v2 + 16) + v4);
        }

        goto LABEL_37;
      }

      if (v5 == 5)
      {
        goto LABEL_36;
      }

      if (v5 != 13)
      {
        goto LABEL_37;
      }

LABEL_17:
      v9 = sub_10015DF80(a1, v2);
      *v2 = v9;
      if ((v9 - 22) >= 3 && (v9 != 25 || !*(*(v2 + 8) + 37)))
      {
        return 0xFFFFFFFFLL;
      }

      v10 = *(v2 + 296);
      if (v10 != *(v2 + 288))
      {
        return 0xFFFFFFFFLL;
      }

      v11 = (v2 + 16);
      v4 = (v4 + v10);
LABEL_38:
      v2 = *v11;
      if (!*v11)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (v5 > 0x1A)
    {
      goto LABEL_30;
    }

    if (v5 != 16)
    {
      break;
    }

    v6 = (v2 + 16);
LABEL_14:
    v2 = *v6;
    if (!*v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (((1 << v5) & 0x7CC0000) != 0)
  {
    goto LABEL_17;
  }

  if (v5 != 17)
  {
LABEL_30:
    if (v5 == 14)
    {
      if (!*(v2 + 37))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v5 != 15)
    {
      goto LABEL_37;
    }

LABEL_36:
    v4 = (v4 + 1);
    goto LABEL_37;
  }

  v13 = sub_10015DDCC(a1, *(v2 + 8));
  if (v13 != sub_10015DDCC(a1, *(v2 + 16)) || v13 <= -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v13 + v4);
  }
}

uint64_t sub_10015DF80(uint64_t a1, unsigned int *a2)
{
  result = *a2;
  if (result == 18)
  {
    v3 = *(a2 + 1);
    if (*(*(v3 + 8) + 8) == *(a2 + 2))
    {
      v4 = *v3;
      if (*v3 > 13)
      {
        if (v4 == 14)
        {
          if (*(v3 + 37))
          {
            return 25;
          }
        }

        else if (v4 == 15)
        {
          return 24;
        }
      }

      else if (v4 == 2)
      {
        return 23;
      }

      else if (v4 == 5)
      {
        return 22;
      }
    }
  }

  return result;
}

void sub_10015DFF8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100033BCC();
}

char *sub_10015E040(char *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  if (a1 == a2)
  {
    return v5;
  }

  v9 = (a3 + 40);
  v10 = *(a4 + 24);
  if (*(a3 + 16))
  {
    v12 = 0;
    do
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = v5;
        do
        {
          v15 = *v14;
          if (a5)
          {
            LOBYTE(v15) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v15);
            v13 = *v9;
          }

          if (v15 != v13)
          {
            break;
          }

          v16 = *++v9;
          v13 = v16;
          ++v14;
        }

        while (v16 && v14 != a2);
        if (!v13)
        {
          if (v14 == v5)
          {
            v36 = v5 + 1;
          }

          else
          {
            v36 = v14;
          }

          if ((*(a3 + 36) & 1) == 0)
          {
            return v36;
          }

          return v5;
        }

          ;
        }
      }

      else
      {
        v19 = *v5;
        if (a5)
        {
          LODWORD(v19) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v19);
        }

        if (!v19)
        {
          goto LABEL_93;
        }

        ++v9;
      }

      ++v12;
    }

    while (v12 < *(a3 + 16));
  }

  v20 = *v5;
  if (a5)
  {
    v20 = (*(**(*v10 + 8) + 40))(*(*v10 + 8), *v5);
  }

  if (!*(a3 + 20))
  {
    if (!*(a3 + 24))
    {
      goto LABEL_89;
    }

    memset(&v41, 0, sizeof(v41));
    goto LABEL_64;
  }

  memset(&v41, 0, sizeof(v41));
  if ((*(a4 + 42) & 0x20) != 0)
  {
    v39 = v20;
    v40 = 0;
    sub_100149494(*v10, &v38);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41 = v38;
  }

  else
  {
    std::string::assign(&v41, 1uLL, v20);
  }

  if (!*(a3 + 20))
  {
LABEL_64:
    if (!*(a3 + 24))
    {
      goto LABEL_83;
    }

    v39 = v20;
    v40 = 0;
    sub_100149660(*v10, &v39, &v40, &v38);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41 = v38;
    if (!*(a3 + 24))
    {
LABEL_83:
      v33 = 1;
      goto LABEL_85;
    }

    v29 = 0;
    while (1)
    {
      if (!*v9)
      {
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v30 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
          if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 1)
          {
            v31 = &v41;
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        if (v41.__r_.__value_.__l.__size_ == 1)
        {
          v31 = v41.__r_.__value_.__r.__words[0];
LABEL_77:
          v30 = v31->__r_.__value_.__s.__data_[0];
LABEL_78:
          if (!v30)
          {
            goto LABEL_84;
          }

          goto LABEL_79;
        }

        if (!v41.__r_.__value_.__l.__size_)
        {
          goto LABEL_84;
        }
      }

LABEL_79:
      if (!std::string::compare(&v41, v9))
      {
        goto LABEL_84;
      }

      ++v9;
        ;
      }

      if (++v29 >= *(a3 + 24))
      {
        goto LABEL_83;
      }
    }
  }

  v21 = 0;
  while (1)
  {
    if (!*v9)
    {
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v41.__r_.__value_.__l.__size_)
        {
          goto LABEL_36;
        }

        if (v41.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_35;
        }

        v26 = v41.__r_.__value_.__r.__words[0];
        goto LABEL_52;
      }

      if (!*(&v41.__r_.__value_.__s + 23))
      {
        goto LABEL_36;
      }

      if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 1)
      {
        v26 = &v41;
LABEL_52:
        if (!v26->__r_.__value_.__s.__data_[0])
        {
          goto LABEL_36;
        }
      }
    }

LABEL_35:
    if (std::string::compare(&v41, v9) < 0)
    {
      v22 = v9 + 1;
        ;
      }

      goto LABEL_61;
    }

LABEL_36:
    v22 = v9 + 1;
      ;
    }

    if (*v22)
    {
      goto LABEL_60;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v41.__r_.__value_.__l.__size_ != 1)
      {
        if (!v41.__r_.__value_.__l.__size_)
        {
          break;
        }

        goto LABEL_60;
      }

      v25 = v41.__r_.__value_.__r.__words[0];
    }

    else
    {
      v24 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      if (HIBYTE(v41.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_59;
      }

      v25 = &v41;
    }

    v24 = v25->__r_.__value_.__s.__data_[0];
LABEL_59:
    if (!v24)
    {
      break;
    }

LABEL_60:
    if (std::string::compare(&v41, v22) <= 0)
    {
      break;
    }

LABEL_61:
    v9 = v22 + 1;
      ;
    }

    if (++v21 >= *(a3 + 20))
    {
      goto LABEL_64;
    }
  }

LABEL_84:
  v33 = 0;
  v5 += *(a3 + 36) ^ 1;
LABEL_85:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if (v33)
    {
      goto LABEL_89;
    }
  }

  else
  {
    if ((v33 & 1) == 0)
    {
      return v5;
    }

LABEL_89:
    if (!sub_100146404(v10, v20, *(a3 + 28)))
    {
      v34 = *(a3 + 32);
      if (!v34 || sub_100146404(v10, v20, v34))
      {
        v35 = *(a3 + 36);
        goto LABEL_94;
      }
    }

LABEL_93:
    v35 = *(a3 + 36) ^ 1;
LABEL_94:
    v5 += v35;
  }

  return v5;
}

void sub_10015E484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10015E4A8(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10015E4EC(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(&std::mutex::~mutex, a2, a3);
}

uint64_t sub_10015E50C(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(&std::string::~string, a2, a3);
}

void sub_10015E52C(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = *a2;
  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  v15 = 0uLL;
  v16 = 0;
  if (sub_1000B06AC(&v15, "com.apple.Telephony.RCSMessageProvisioning") || sub_1000B06AC(&v15, "com.apple.Telephony.RCSMessageSessionSetup") || sub_1000B06AC(&v15, "com.apple.Telephony.RCSPagerMessageSendReceive") || sub_1000B06AC(&v15, "com.apple.Telephony.RCSMSRPMessageSendReceive") || sub_1000B06AC(&v15, "com.apple.Telephony.RCSMessageSIPOptions") || sub_1000B06AC(&v15, "com.apple.Telephony.RCSSIPRefer") || sub_1000B06AC(&v15, "com.apple.Telephony.RCSMessageSessionEnd") || sub_1000B06AC(&v15, "com.apple.Telephony.metricCCStwCPSummary") || sub_1000B06AC(&v15, "com.apple.Telephony.metricCCStwRequest") || sub_1000B06AC(&v15, "com.apple.Telephony.metricCCStwMessageOutgoing") || sub_1000B06AC(&v15, "com.apple.telephony.metricCCStwMessageIncoming") || sub_1000B06AC(&v15, "com.apple.IDS.QualifiedContacts") || sub_1000B06AC(&v15, "com.apple.Messages.IMMetricsCollectorEventSMSSentMessageSingleComponent") || sub_1000B06AC(&v15, "com.apple.Messages.IMMetricsCollectorEventIMessageSentMessageSingleComponent") || sub_1000B06AC(&v15, "com.apple.IDS.OffTheGridMode") || sub_1000B06AC(&v15, "com.apple.Telephony.atm_Registration_Result") || sub_1000B06AC(&v15, "com.apple.setupassistant.ios.activation") || sub_1000B06AC(&v15, "com.apple.Messages.IMMetricsCollectorEventSentMessage") || sub_1000B06AC(&v15, "com.apple.Telephony.DNSResolution") || sub_1000B06AC(&v15, "com.apple.Telephony.RCSServerTermination") || sub_1000B06AC(&v15, "com.apple.Telephony.UnifiedCTMessage"))
  {
    v6 = *a2;
    v17 = 0uLL;
    v18 = 0;
    ctu::cf::assign();
    *v11 = v17;
    v12 = v18;
    if (v18 >= 0)
    {
      v7 = v11;
    }

    else
    {
      v7 = v11[0];
    }

    sub_100007ECC(__p, v7);
    sub_10015ED9C(&v8, a3);
    sub_10015EDD4(&v8, v9);
    sub_1000AFBD4(__p, v9);
    sub_1000D3F90(&v10, v9[0]);
    if (v8)
    {
      CFRelease(v8);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
  {
    sub_10020C1B8(&v16 + 7, &v15);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }
}

void sub_10015E90C(void *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  sub_10002205C(a1);
}

void sub_10015E934(uint64_t a1, const void **a2)
{
  if (sub_10015EF30())
  {
    sub_10015ED9C(&cf, a2);
    sub_10015EDD4(&cf, v13);
    if (cf)
    {
      CFRelease(cf);
    }

    sub_100007ECC(__p, "calling_client");
    sub_10015EF9C("", v13, __p, buf);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = buf[0].__r_.__value_.__l.__size_ != 28 || *buf[0].__r_.__value_.__l.__data_ != 0x72616C756C6C6543 || *(buf[0].__r_.__value_.__r.__words[0] + 8) != 0x6761694461746144 || *(buf[0].__r_.__value_.__r.__words[0] + 16) != 0x5373636974736F6ELL || *(buf[0].__r_.__value_.__r.__words[0] + 24) != 1702127989;
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    else
    {
      v3 = 1;
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = *(qword_1002DBE98 + 112);
    if (!v3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10020C268(v8);
      }

      sub_10015F020(v9);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
      *(buf[0].__r_.__value_.__r.__words + 4) = "CellularDataDiagnosticsSuite";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "cahandler:#I Speed is not called by: %s and hence skipping", buf, 0xCu);
    }

    sub_1000D3F90(&v14, v13[0]);
  }

  else
  {
    v4 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10020C224(v4);
    }
  }
}

void sub_10015ED64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    if (a16 < 0)
    {
      operator delete(__p);
    }

    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10015ED9C(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void sub_10015EDD4(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v8 = 0uLL;
  v9 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v7 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v11 = 0;
  sub_1000D0E2C(__p, v10, 1, v4);
  *a2 = v4[0];
  v4[0] = 0;
  *(a2 + 8) = v5;
  v5 = 0;
  sub_1000D3F90(&v5, 0);
  sub_1000D3F10(v10);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10015EEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_1000D3F10(&a24);
  if (a2 == 1)
  {
    sub_10020C358(a1);
    __cxa_end_catch();
    JUMPOUT(0x10015EE78);
  }

  sub_1000D3F90(v24, 0);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10015EF30()
{
  sub_1000A91A4(2, &__p);
  v0 = sub_100039EB8(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v0;
}

void sub_10015EF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015EF9C(char *__s@<X2>, unsigned __int8 *a2@<X0>, const void **a3@<X1>, std::string *a4@<X8>)
{
  sub_100007ECC(__p, __s);
  sub_10015FEE8(a2, a3, __p, a4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10015F004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015F020(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = 0;
  v4 = 0;
  v1[16] = 0;
  v2 = 0;
  sub_1001603DC(v1, 0, 0, 0, 2);
}

void sub_10015F93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, char a45, uint64_t a46, char a47)
{
  sub_1000D3F90(&a10, a9);
  sub_1000D3F90((v51 - 144), *(v51 - 152));
  sub_1000D3F90((v50 + 8), *(v51 - 136));
  sub_1000D3F90((v49 + 8), *(v51 - 120));
  sub_1000D3F90(v48, *v47);
  _Unwind_Resume(a1);
}

void sub_10015FB2C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 3);
  *(v1 + 3) = 0;
  operator new();
}

void sub_10015FD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, char a12)
{
  std::locale::~locale(&a11);
  sub_100008350(v12);
  sub_100008350(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_10015FD44(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_1000C3984(a1);
    sub_100007ECC(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use push_back() with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(308, &v11, exception);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    result = sub_100160B5C(v3, a2);
  }

  else
  {
    sub_1000D4E30(*(v3 + 8), a2);
    result = v4 + 16;
    *(v3 + 8) = v4 + 16;
  }

  *(v3 + 8) = result;
  return result;
}

std::string *sub_10015FEE8@<X0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sub_1000C3984(a1);
    sub_100007ECC(&v14, v11);
    v12 = std::string::insert(&v14, 0, "cannot use value() with ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18 = v12->__r_.__value_.__r.__words[2];
    v17 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(306, &v17, exception);
  }

  *&v17 = a1;
  v18 = 0;
  v19 = 0;
  v20 = 0x8000000000000000;
  *(&v17 + 1) = sub_10000F0D8(*(a1 + 1), a2);
  *&v14.__r_.__value_.__l.__data_ = a1;
  v14.__r_.__value_.__r.__words[2] = 0;
  v15 = 0;
  v16 = 0x8000000000000000;
  v7 = *a1;
  if (v7 == 2)
  {
    v14.__r_.__value_.__r.__words[2] = *(*(a1 + 1) + 8);
  }

  else if (v7 == 1)
  {
    v14.__r_.__value_.__l.__size_ = *(a1 + 1) + 8;
  }

  else
  {
    v16 = 1;
  }

  result = sub_100160210(&v17, &v14);
  if (result)
  {
    if (*(a3 + 23) < 0)
    {
      return sub_10000FFF8(a4, *a3, *(a3 + 8));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a3;
      a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
    }
  }

  else
  {
    v9 = sub_1001600C4(&v17);
    return sub_1000C22F0(v9, a4);
  }

  return result;
}

void sub_100160064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

_BYTE *sub_1001600C4(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_100007ECC(v6, "cannot get value");
    sub_1000D4B64(214, v6, exception);
  }

  if (*(a1 + 32))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_100007ECC(v6, "cannot get value");
    sub_1000D4B64(214, v6, v4);
  }

  return result;
}

void sub_1001601D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100160210(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_100007ECC(v7, "cannot compare iterators of different containers");
    sub_1000D4B64(212, v7, exception);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[4];
    v4 = a2[4];
  }

  return v3 == v4;
}

void sub_1001602E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_100160338(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B5070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001603DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v9 = 32 * a3;
    v10 = (a2 + 16);
    while (1)
    {
      v11 = *v10;
      if (**v10 != 2 || *(*(v11 + 1) + 8) - **(v11 + 1) != 32 || *sub_1001606A8(v11, 0) != 3)
      {
        break;
      }

      v10 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (a5 != 1)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_100007ECC(&v15, "cannot create object from initializer list");
        sub_1000C3840(301, &v15, exception);
      }

      if (!v13)
      {
LABEL_18:
        *a1 = 2;
        v15 = a2;
        sub_10016062C();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v12 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

uint64_t sub_1001606A8(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_1000C3984(a1);
    sub_100007ECC(&v8, v5);
    v6 = std::string::insert(&v8, 0, "cannot use operator[] with a numeric argument with ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(305, &v9, exception);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_100160778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_1001607D8(uint64_t a1, const void **a2)
{
  v2 = *sub_100068404(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1001608B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D5454(result, a4);
  }

  return result;
}

void sub_10016091C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000D551C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10016093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_1001609C8(a4, v5);
      v5 += 32;
      a4 = v7 + 16;
      v7 += 16;
    }

    while (v5 != a3);
  }

  return a4;
}

uint64_t sub_1001609C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  if (v3 == 1)
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    sub_1000D4E30(v8, v4);
    v5 = v8[0];
    v6 = v9;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  v8[0] = 0;
  v9 = 0;
  sub_1000D3F90(&v9, 0);
  return a1;
}

uint64_t sub_100160B5C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1000D44D8(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  sub_1000D4E30(16 * v2, a2);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = 16 * v2 + *a1 - v8;
  sub_1000D4520(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1000D4600(&v14);
  return v13;
}

void sub_100160C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

char *sub_100160C6C@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  if (*result < 0)
  {
    v4 = *a2;
  }

  return result;
}

const char *sub_100160C84(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return (&off_1002B5310)[a1];
  }
}

dispatch_group_t *sub_100160CA8(dispatch_group_t *a1, NSObject **a2, NSObject **a3, NSObject **a4)
{
  v7 = *a2;
  *a1 = *a2;
  if (v7)
  {
    dispatch_retain(v7);
    if (*a1)
    {
      dispatch_group_enter(*a1);
    }
  }

  v8 = *a3;
  a1[1] = *a3;
  if (v8)
  {
    dispatch_retain(v8);
    v9 = a1[1];
    if (v9)
    {
      dispatch_group_enter(v9);
    }
  }

  v10 = *a4;
  a1[2] = *a4;
  if (v10)
  {
    dispatch_retain(v10);
    v11 = a1[2];
    if (v11)
    {
      dispatch_group_enter(v11);
    }
  }

  return a1;
}

void sub_100160D30(NSObject **a1@<X0>, NSObject **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  if (v2)
  {
    dispatch_retain(v2);

    dispatch_group_enter(v2);
  }
}

void sub_100160D80(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    dispatch_retain(*(a1 + 16));
    dispatch_group_enter(v6);
  }

  v7 = *(a1 + 8);
  v8 = *a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_100160E78;
  v9[3] = &unk_1002B5100;
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  v9[4] = a3;
  dispatch_group_notify(v7, v8, v9);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }
}

void sub_100160E88(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    dispatch_retain(*(a1 + 16));
    dispatch_group_enter(v6);
  }

  v7 = *(a1 + 8);
  v8 = *a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_100160F7C;
  v9[3] = &unk_1002B5138;
  v9[4] = a3;
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  dispatch_group_notify(v7, v8, v9);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }
}

void sub_100160F7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  group = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  (*(v1 + 16))(v1, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_100160FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100161190(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001611AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1001611BC(void *a1)
{
  sub_100161234(a1, "ServiceManager", QOS_CLASS_DEFAULT, "svcmgr");
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void sub_10016121C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100161234(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

uint64_t sub_100161460(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  v4 = v2[6];
  v3 = v2[7];
  if (v4 >= v3)
  {
    v7 = v2[5];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_100033FD0();
    }

    v11 = v3 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v20[4] = v2 + 5;
    if (v13)
    {
      sub_1000C63BC((v2 + 5), v13);
    }

    v14 = v9;
    v15 = (8 * v9);
    v16 = *v1;
    *v1 = 0;
    v17 = &v15[-v14];
    *v15 = v16;
    v6 = v15 + 1;
    memcpy(v17, v7, v8);
    v18 = v2[5];
    v2[5] = v17;
    v2[6] = v6;
    v19 = v2[7];
    v2[7] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_100162968(v20);
  }

  else
  {
    v5 = *v1;
    *v1 = 0;
    *v4 = v5;
    v6 = v4 + 8;
  }

  v2[6] = v6;
  return result;
}

uint64_t sub_10016155C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100161578(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_100161588()
{
  v0 = dispatch_group_create();
  v1 = v0;
  if (v0)
  {
    dispatch_retain(v0);
    dispatch_group_enter(v1);
    dispatch_release(v1);
  }

  v3 = 20;
  strcpy(__p, "ServiceManager-start");
  sub_100008BF8(__p);
}

void sub_100161788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001617B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "service:#N Startup in progress", &buf, 2u);
  }

  v3 = 0;
  v4 = 10000000000;
  v35 = 256;
  v36 = 2;
  v5 = "???";
  do
  {
    v6 = *(v1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(&v35 + v3);
      v8 = v5;
      if (v7 <= 2)
      {
        v8 = (&off_1002B5340)[v7];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "service:#N ---- Startup stage %s", &buf, 0xCu);
    }

    v9 = dispatch_group_create();
    v10 = dispatch_group_create();
    v11 = dispatch_group_create();
    v12 = v11;
    if (v11)
    {
      dispatch_retain(v11);
      dispatch_group_enter(v12);
      dispatch_release(v12);
    }

    if (v10)
    {
      dispatch_retain(v10);
      dispatch_group_enter(v10);
    }

    v34 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v33 = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    v32 = v10;
    if (v10)
    {
      dispatch_retain(v10);
      sub_100160CA8(&buf, &v34, &v33, &v32);
      dispatch_release(v10);
    }

    else
    {
      sub_100160CA8(&buf, &v34, &v33, &v32);
    }

    v13 = v5;
    if (v12)
    {
      dispatch_release(v12);
    }

    v14 = v4;
    if (v9)
    {
      dispatch_release(v9);
    }

    v15 = *(v1 + 40);
    v16 = *(v1 + 48);
    if (v15 != v16)
    {
      v17 = *(&v35 + v3);
      do
      {
        (*(**v15 + 40))(*v15, v17, &buf);
        ++v15;
      }

      while (v15 != v16);
    }

    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    v4 = v14;
    if (*(&buf + 1))
    {
      dispatch_group_leave(*(&buf + 1));
      if (*(&buf + 1))
      {
        dispatch_release(*(&buf + 1));
      }
    }

    v5 = v13;
    if (buf)
    {
      dispatch_group_leave(buf);
      if (buf)
      {
        dispatch_release(buf);
      }
    }

    v18 = dispatch_time(0, v4);
    v19 = dispatch_group_wait(v9, v18);
    v20 = *(v1 + 32);
    if (v19 && os_log_type_enabled(*(v1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(&v35 + v3);
      v22 = v13;
      if (v21 <= 2)
      {
        v22 = (&off_1002B5340)[v21];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "service:#E    - Startup stage %s: Perform :: TIME-OUT! proceeding anyway", &buf, 0xCu);
      v20 = *(v1 + 32);
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(&v35 + v3);
      v24 = v13;
      if (v23 <= 2)
      {
        v24 = (&off_1002B5340)[v23];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "service:#N   -- Startup stage %s: Perform :: ", &buf, 0xCu);
    }

    if (v12)
    {
      dispatch_group_leave(v12);
      dispatch_release(v12);
    }

    if (v10)
    {
      dispatch_group_leave(v10);
      dispatch_release(v10);
    }

    v25 = dispatch_time(0, v4);
    v26 = dispatch_group_wait(v10, v25);
    v27 = *(v1 + 32);
    if (v26 && os_log_type_enabled(*(v1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(&v35 + v3);
      v29 = v13;
      if (v28 <= 2)
      {
        v29 = (&off_1002B5340)[v28];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "service:#E    - Startup stage %s: Perform :: TIME-OUT! proceeding anyway", &buf, 0xCu);
      v27 = *(v1 + 32);
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(&v35 + v3);
      v31 = v13;
      if (v30 <= 2)
      {
        v31 = (&off_1002B5340)[v30];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "service:#N   -- Startup stage %s: Done.", &buf, 0xCu);
    }

    if (v10)
    {
      dispatch_release(v10);
    }

    if (v9)
    {
      dispatch_release(v9);
    }

    ++v3;
  }

  while (v3 != 3);
}

void sub_100161C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100161CD8(va);
  if (v8)
  {
    dispatch_group_leave(v8);
    dispatch_release(v8);
    if (!v9)
    {
LABEL_6:
      dispatch_release(v8);
      goto LABEL_7;
    }
  }

  else if (!v9)
  {
LABEL_7:
    if (v7)
    {
      dispatch_release(v7);
    }

    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v9);
  dispatch_release(v9);
  if (!v8)
  {
    goto LABEL_7;
  }

  goto LABEL_6;
}

dispatch_group_t *sub_100161CD8(dispatch_group_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  if (*a1)
  {
    dispatch_group_leave(*a1);
    if (*a1)
    {
      dispatch_release(*a1);
    }
  }

  return a1;
}

void sub_100161D44(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_100161D9C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void sub_100161DF8(void *a1@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
    dispatch_release(v5);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_100161F84;
  v7[3] = &unk_1002B51F8;
  v7[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  sub_1000081C8(&v11, a1);
  v6 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10016287C;
  block[3] = &unk_1002B5290;
  block[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v10)
  {
    sub_100008350(v10);
  }

  if (v12)
  {
    sub_100008350(v12);
  }

  *a2 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }
}

void sub_100161F84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "service:#N Shutdown in progress", buf, 2u);
  }

  v53[0] = 0;
  v53[1] = 0;
  *buf = v53;
  v3 = v1[5];
  v47 = v1[6];
  if (v3 != v47)
  {
    v46 = v1;
    do
    {
      (*(**v3 + 24))(v54);
      v4 = *v54;
      v5 = *&v54[8];
      if (*v54 != *&v54[8])
      {
        do
        {
          v51 = *v4;
          v53[4] = &v51;
          v6 = sub_100162A14(buf, &v51);
          v7 = v6;
          v8 = *v3;
          v10 = v6[6];
          v9 = v6[7];
          if (v10 >= v9)
          {
            v12 = v6[5];
            v13 = (v10 - v12) >> 3;
            if ((v13 + 1) >> 61)
            {
              sub_100033FD0();
            }

            v14 = v9 - v12;
            v15 = v14 >> 2;
            if (v14 >> 2 <= (v13 + 1))
            {
              v15 = v13 + 1;
            }

            if (v14 >= 0x7FFFFFFFFFFFFFF8)
            {
              v16 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v16 = v15;
            }

            if (v16)
            {
              sub_1000962C4((v6 + 5), v16);
            }

            v17 = (8 * v13);
            *v17 = v8;
            v11 = 8 * v13 + 8;
            v18 = v6[5];
            v19 = v6[6] - v18;
            v20 = v17 - v19;
            memcpy(v17 - v19, v18, v19);
            v21 = v7[5];
            v7[5] = v20;
            v7[6] = v11;
            v7[7] = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v10 = v8;
            v11 = (v10 + 1);
          }

          v7[6] = v11;
          ++v4;
        }

        while (v4 != v5);
        v4 = *v54;
      }

      if (v4)
      {
        *&v54[8] = v4;
        operator delete(v4);
      }

      ++v3;
    }

    while (v3 != v47);
    v22 = *buf;
    v23 = v46;
    if (*buf != v53)
    {
      while (1)
      {
        v24 = v23[4];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_100160C84(*(v22 + 32));
          v26 = v22[6] - v22[5];
          *v54 = 136315394;
          *&v54[4] = v25;
          *&v54[12] = 2048;
          *&v54[14] = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "service:#N ---- Shutdown stage %s: Notify :: %zd interested parties", v54, 0x16u);
        }

        v27 = dispatch_group_create();
        v28 = dispatch_group_create();
        v29 = dispatch_group_create();
        v30 = v29;
        if (v29)
        {
          dispatch_retain(v29);
          dispatch_group_enter(v30);
          dispatch_release(v30);
        }

        if (v28)
        {
          dispatch_retain(v28);
          dispatch_group_enter(v28);
        }

        v50 = v27;
        if (v27)
        {
          dispatch_retain(v27);
        }

        v49 = v30;
        if (v30)
        {
          dispatch_retain(v30);
        }

        v48 = v28;
        if (!v28)
        {
          break;
        }

        dispatch_retain(v28);
        sub_100160CA8(v54, &v50, &v49, &v48);
        dispatch_release(v28);
        if (v30)
        {
          goto LABEL_36;
        }

LABEL_37:
        if (v27)
        {
          dispatch_release(v27);
        }

        v31 = v22[5];
        v32 = v22[6];
        while (v31 != v32)
        {
          (*(**v31 + 32))(*v31, *(v22 + 32), v54);
          ++v31;
        }

        if (*&v54[16])
        {
          dispatch_group_leave(*&v54[16]);
          if (*&v54[16])
          {
            dispatch_release(*&v54[16]);
          }
        }

        v23 = v46;
        if (*&v54[8])
        {
          dispatch_group_leave(*&v54[8]);
          if (*&v54[8])
          {
            dispatch_release(*&v54[8]);
          }
        }

        if (*v54)
        {
          dispatch_group_leave(*v54);
          if (*v54)
          {
            dispatch_release(*v54);
          }
        }

        v33 = dispatch_time(0, 10000000000);
        v34 = dispatch_group_wait(v27, v33);
        v35 = v46[4];
        if (v34 && os_log_type_enabled(v46[4], OS_LOG_TYPE_DEFAULT))
        {
          v36 = sub_100160C84(*(v22 + 32));
          *v54 = 136315138;
          *&v54[4] = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "service:#E    - Shutdown stage %s: Perform :: TIME-OUT! proceeding anyway", v54, 0xCu);
          v35 = v46[4];
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v37 = sub_100160C84(*(v22 + 32));
          *v54 = 136315138;
          *&v54[4] = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "service:#N   -- Shutdown stage %s: Perform :: ", v54, 0xCu);
        }

        if (v30)
        {
          dispatch_group_leave(v30);
          dispatch_release(v30);
        }

        if (v28)
        {
          dispatch_group_leave(v28);
          dispatch_release(v28);
        }

        v38 = dispatch_time(0, 10000000000);
        v39 = dispatch_group_wait(v28, v38);
        v40 = v46[4];
        if (v39 && os_log_type_enabled(v46[4], OS_LOG_TYPE_DEFAULT))
        {
          v41 = sub_100160C84(*(v22 + 32));
          *v54 = 136315138;
          *&v54[4] = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "service:#E    - Shutdown stage %s: Perform :: TIME-OUT! proceeding anyway", v54, 0xCu);
          v40 = v46[4];
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v42 = sub_100160C84(*(v22 + 32));
          *v54 = 136315138;
          *&v54[4] = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "service:#N   -- Shutdown stage %s: Done.", v54, 0xCu);
        }

        if (v28)
        {
          dispatch_release(v28);
        }

        if (v27)
        {
          dispatch_release(v27);
        }

        v43 = v22[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v22[2];
            v45 = *v44 == v22;
            v22 = v44;
          }

          while (!v45);
        }

        v22 = v44;
        if (v44 == v53)
        {
          goto LABEL_78;
        }
      }

      sub_100160CA8(v54, &v50, &v49, &v48);
      if (!v30)
      {
        goto LABEL_37;
      }

LABEL_36:
      dispatch_release(v30);
      goto LABEL_37;
    }
  }

LABEL_78:
  sub_10010A660(buf, v53[0]);
}

void sub_100162684(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_100162758);
  __cxa_rethrow();
}

void sub_1001626C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100162718(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100162758(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 40);
    sub_1001627BC(&v2);
    ctu::OsLogLogger::~OsLogLogger((v1 + 4));
    sub_100032AD8(v1);
    operator delete();
  }

  return result;
}

void sub_1001627BC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100162810(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_100162810(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_10016288C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001628A8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1001628D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B52D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10016292C(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100162968(uint64_t a1)
{
  sub_1001629A0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1001629A0(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *sub_100162A14(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

Swift::Int sub_100162C68(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  Hasher._combine(_:)(*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  Hasher._combine(_:)(*&v5);
  return Hasher._finalize()();
}

void sub_100162CEC()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  Hasher._combine(_:)(*&v3);
}

Swift::Int sub_100162D40()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  Hasher._combine(_:)(*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}

int *sub_100162DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  v22 = type metadata accessor for PrivateServicePrediction();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  result = type metadata accessor for InternalServicePrediction();
  v24 = (a9 + result[5]);
  *v24 = a2;
  v24[1] = a3;
  v25 = a9 + result[6];
  *v25 = a4;
  *(v25 + 8) = a5;
  *(v25 + 16) = a6 & 1;
  v26 = a9 + result[7];
  *v26 = a7;
  *(v26 + 8) = a8 & 1;
  v27 = a9 + result[8];
  *v27 = a10;
  *(v27 + 8) = a11 & 1;
  v28 = (a9 + result[9]);
  *v28 = a12;
  v28[1] = a13;
  *(a9 + result[10]) = a14;
  return result;
}

uint64_t sub_100162F14(_BYTE *a1)
{
  v3 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10003D4B8();
  if (result)
  {
    PrivateServicePrediction.source.getter();
    v9 = (*(v4 + 88))(v7, v3);
    if (v9 == enum case for PrivateServicePrediction.ServicePredictionSource.cellularLearning(_:))
    {
      return (a1[16] & 1) != 0;
    }

    if (v9 == enum case for PrivateServicePrediction.ServicePredictionSource.userDataLearning(_:))
    {
      if (a1[17])
      {
        return *(v1 + *(type metadata accessor for InternalServicePrediction() + 40)) != 1;
      }
    }

    else
    {
      if (v9 != enum case for PrivateServicePrediction.ServicePredictionSource.navigation(_:))
      {
        (*(v4 + 8))(v7, v3);
        return 1;
      }

      if (a1[18])
      {
        PrivateServicePrediction.predictedDuration.getter();
        return v10 >= 180.0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100163158()
{
  v1 = type metadata accessor for Date();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  __chkstk_darwin(v1);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(113);
  v14._countAndFlagsBits = 0xD000000000000020;
  v14._object = 0x800000010025ACF0;
  String.append(_:)(v14);
  PrivateServicePrediction.type.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v10 + 8))(v13, v9);
  v15._countAndFlagsBits = 0x656372756F73202CLL;
  v15._object = 0xEA0000000000203ALL;
  String.append(_:)(v15);
  PrivateServicePrediction.source.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v5 + 8))(v8, v4);
  v16._object = 0x800000010025AD20;
  v16._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v16);
  v17 = (v0 + *(type metadata accessor for InternalServicePrediction() + 20));
  if (v17[1])
  {
    v18 = *v17;
    v19 = v17[1];
  }

  else
  {
    v19 = 0xE300000000000000;
    v18 = 7104878;
  }

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0xD000000000000016;
  v21._object = 0x800000010025AD40;
  String.append(_:)(v21);
  v22 = v29;
  PrivateServicePrediction.predictedStartTime.getter();
  sub_100164090(&qword_1002D5B88, &type metadata accessor for Date);
  v23 = v31;
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  (*(v30 + 8))(v22, v23);
  v25._countAndFlagsBits = 0xD000000000000015;
  v25._object = 0x800000010025AD60;
  String.append(_:)(v25);
  PrivateServicePrediction.predictedDuration.getter();
  Double.write<A>(to:)();
  v26._countAndFlagsBits = 41;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  return v32;
}

void sub_100163548()
{
  type metadata accessor for PrivateServicePrediction();
  sub_100164090(&qword_1002D5B90, &type metadata accessor for PrivateServicePrediction);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for InternalServicePrediction();
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    v3 = *v2;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = v0 + v1[6];
  if (*(v4 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *v4;
    v5 = *(v4 + 8);
    Hasher._combine(_:)(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
  }

  v9 = v0 + v1[7];
  if (*(v9 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v10 = *v9;
    Hasher._combine(_:)(1u);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    Hasher._combine(_:)(v11);
  }

  v12 = v0 + v1[8];
  if (*(v12 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v13);
  }

  v14 = (v0 + v1[9]);
  if (v14[1])
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + v1[10]));
}

Swift::Int sub_100163730()
{
  Hasher.init(_seed:)();
  sub_100163548();
  return Hasher._finalize()();
}

Swift::Int sub_100163774()
{
  Hasher.init(_seed:)();
  sub_100163548();
  return Hasher._finalize()();
}

uint64_t sub_1001637B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = type metadata accessor for PrivateServicePrediction.ConfidenceScore();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v51 = type metadata accessor for Date();
  v45 = *(v51 - 8);
  v18 = *(v45 + 64);
  v19 = __chkstk_darwin(v51);
  v47 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v43 - v21;
  WIS.SimulatedPredictionItem.startTime.getter();
  v46 = v22;
  v55 = a2;
  static Date.+ infix(_:_:)();
  v23 = v12;
  v24 = *(v12 + 104);
  v25 = v11;
  v24(v17, enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:), v11);
  v56 = a1;
  v27 = WIS.SimulatedPredictionItem.impact.getter();
  v28 = v26;
  if (v27 == 7827308 && v26 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v27 == 108 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v29 = v25;
    (*(v23 + 8))(v17, v25);

    v30 = &enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:);
  }

  else
  {
    if (v27 == 6579565 && v28 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v27 == 109 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v29 = v25;
      (*(v23 + 8))(v17, v25);
    }

    else
    {
      if (v27 == 0x6D756964656DLL && v28 == 0xE600000000000000)
      {
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v29 = v25;
      (*(v23 + 8))(v17, v25);
    }

    v30 = &enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:);
  }

  v24(v17, *v30, v29);
LABEL_9:
  if (WIS.SimulatedPredictionItem.confidence.getter() == 7827308 && v31 == 0xE300000000000000)
  {

LABEL_13:
    v33 = v25;
    goto LABEL_14;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_13;
  }

  if (WIS.SimulatedPredictionItem.confidence.getter() == 6579565 && v41 == 0xE300000000000000)
  {

    v33 = v25;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();

    v33 = v25;
  }

LABEL_14:
  v44 = v33;
  (*(v23 + 16))(v48, v17);
  (*(v49 + 104))(v52, enum case for PrivateServicePrediction.ServicePredictionSource.userDataLearning(_:), v50);
  v35 = v45;
  v34 = v46;
  v36 = v51;
  (*(v45 + 16))(v47, v46, v51);
  v37 = v56;
  WIS.SimulatedPredictionItem.duration.getter();
  PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
  PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
  v38 = *(v35 + 8);
  v38(v55, v36);
  v39 = type metadata accessor for WIS.SimulatedPredictionItem();
  (*(*(v39 - 8) + 8))(v37, v39);
  (*(v23 + 8))(v17, v44);
  return (v38)(v34, v36);
}

uint64_t sub_100163E4C(uint64_t a1, uint64_t a2)
{
  if ((static PrivateServicePrediction.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v4 = type metadata accessor for InternalServicePrediction();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_39;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_39;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 16);
  v16 = a2 + v13;
  if (v15)
  {
    if ((*(v16 + 16) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (*(v16 + 16))
    {
      goto LABEL_39;
    }

    if (*v14 != *v16 || v14[1] != *(v16 + 8))
    {
      goto LABEL_39;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      return v22 & 1;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_39;
    }
  }

  v23 = v4[8];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v22 = *(a2 + v23 + 8);
  if ((v25 & 1) == 0)
  {
    if (*v24 != *v26)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_39;
    }

LABEL_32:
    v27 = v4[9];
    v28 = (a1 + v27);
    v29 = *(a1 + v27 + 8);
    v30 = (a2 + v27);
    v31 = v30[1];
    if (v29)
    {
      if (v31)
      {
        if (*v28 == *v30 && v29 == v31)
        {
          goto LABEL_37;
        }

        v32 = v4;
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v4 = v32;
        if (v33)
        {
          goto LABEL_37;
        }
      }
    }

    else if (!v31)
    {
LABEL_37:
      LOBYTE(v22) = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
      return v22 & 1;
    }

LABEL_39:
    LOBYTE(v22) = 0;
    return v22 & 1;
  }

  if (v22)
  {
    goto LABEL_32;
  }

  return v22 & 1;
}

unint64_t sub_100163FF4()
{
  result = qword_1002D5B98;
  if (!qword_1002D5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5B98);
  }

  return result;
}

uint64_t sub_100164090(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100164100()
{
  type metadata accessor for PrivateServicePrediction();
  if (v0 <= 0x3F)
  {
    sub_100164220(319, &unk_1002D7D10);
    if (v1 <= 0x3F)
    {
      sub_100164220(319, &qword_1002D5BF8);
      if (v2 <= 0x3F)
      {
        sub_100164220(319, &qword_1002D5C00);
        if (v3 <= 0x3F)
        {
          sub_100164220(319, qword_1002D8100);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100164220(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for InternalServicePrediction.PredictedLocation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for InternalServicePrediction.PredictedLocation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InternalServicePrediction.PredictedLocation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

Class sub_1001642D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100164AEC(0, &qword_1002D5C60, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

NSString sub_100164378()
{
  v1 = *v0;
  v2 = v0[1];
  return String._bridgeToObjectiveC()();
}

NSString sub_100164398(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_1001643E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100164498(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1001643E0(a1, a2, v6);
}

unint64_t sub_100164510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100164A3C(&qword_1002D5C68, &qword_10024AB20);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100164498(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100164614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  aBlock[4] = sub_100164A1C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001642D4;
  aBlock[3] = &unk_1002B5588;
  v6 = _Block_copy(aBlock);

  sub_100164A3C(&qword_1002D5C48, &qword_100249878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002497B0;
  *(inited + 32) = String.init(cString:)();
  *(inited + 40) = v8;
  sub_100164AEC(0, &qword_1002D5C50, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  sub_100164510(inited);
  swift_setDeallocating();
  sub_100164A84(inited + 32);
  sub_100164AEC(0, &qword_1002D5C60, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEventLazyWithOptions();

  _Block_release(v6);
}

uint64_t sub_1001647D0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  sub_100014E1C(a3, v3);
  v5 = (*(v4 + 8))(v3, v4);
  sub_100164A3C(&qword_1002D5C68, &qword_10024AB20);
  result = static _DictionaryStorage.copy(original:)();
  v7 = result;
  v8 = 0;
  v9 = v5 + 64;
  v31 = result;
  v32 = v5;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v30 = result + 64;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = (*(v32 + 48) + 16 * v17);
      v19 = v18[1];
      v34 = *v18;
      sub_100164B34(*(v32 + 56) + 40 * v17, v35);
      v21 = v36;
      v20 = v37;
      sub_100014E1C(v35, v36);
      v22 = *(v20 + 8);

      v23 = v22(v21, v20);
      result = sub_100164B98(v35);
      v7 = v31;
      *(v30 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v24 = (v31[6] + 16 * v17);
      *v24 = v34;
      v24[1] = v19;
      *(v31[7] + 8 * v17) = v23;
      v25 = v31[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v31[2] = v27;
      v12 = v33;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        sub_100164614(a1, a2, v7);
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v33 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100164A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100164A3C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100164A84(uint64_t a1)
{
  v2 = sub_100164A3C(&qword_1002D5C58, qword_100249880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100164AEC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100164B34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100164B98(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100164BE4(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 10:
    case 13:
      result = 0xD000000000000020;
      break;
    case 5:
    case 8:
    case 20:
      result = 0xD000000000000019;
      break;
    case 6:
    case 21:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0xD000000000000024;
      break;
    case 11:
    case 15:
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000028;
      break;
    case 14:
      result = 0xD00000000000002BLL;
      break;
    case 16:
      result = 0xD00000000000001ELL;
      break;
    case 17:
      result = 0xD000000000000027;
      break;
    case 19:
      result = 0xD00000000000002ALL;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100164E38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100166728();
  *a2 = result;
  return result;
}

unint64_t sub_100164E68@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100164BE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100164E9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100166728();
  *a1 = result;
  return result;
}

uint64_t sub_100164EDC(uint64_t a1)
{
  v2 = sub_100167D44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100164F18(uint64_t a1)
{
  v2 = sub_100167D44();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100164F54(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
    case 7:
    case 21:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 10:
    case 11:
      result = 0xD000000000000018;
      break;
    case 4:
    case 8:
    case 18:
    case 19:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 12:
    case 17:
      result = 0xD000000000000013;
      break;
    case 13:
    case 16:
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000022;
      break;
    case 15:
      result = 0xD00000000000001ELL;
      break;
    case 20:
    case 24:
      result = 0xD00000000000001BLL;
      break;
    case 22:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100165184(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_100165230(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001652B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_100165324(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016538C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10016677C();
  *a2 = result;
  return result;
}

unint64_t sub_1001653BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100164F54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001653F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016677C();
  *a1 = result;
  return result;
}

uint64_t sub_100165424(uint64_t a1)
{
  v2 = sub_100167CF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100165460(uint64_t a1)
{
  v2 = sub_100167CF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001654A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100164498(0xD00000000000001ELL, 0x800000010025ADA0), (v5 & 1) != 0) && (sub_1001675EC(*(a1 + 56) + 32 * v4, v86), (swift_dynamicCast() & 1) != 0))
  {
    v84 = *&v85;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v84 = 0x3FEE666666666666;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v6 = sub_100164498(0xD000000000000013, 0x800000010025ADC0);
  if (v7)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v6, v86);
    if (swift_dynamicCast())
    {
      v83 = *&v85;
      if (!*(a1 + 16))
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  v83 = 0x4069000000000000;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = sub_100164498(0xD00000000000001BLL, 0x800000010025ADE0);
  if (v9)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v8, v86);
    if (swift_dynamicCast())
    {
      v10 = LOBYTE(v85);
      if (!*(a1 + 16))
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }
  }

LABEL_16:
  v10 = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

LABEL_17:
  v11 = sub_100164498(0xD000000000000020, 0x800000010025AE00);
  if (v12)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v11, v86);
    if (swift_dynamicCast())
    {
      v13 = LOBYTE(v85);
      if (!*(a1 + 16))
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  v13 = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

LABEL_22:
  v14 = sub_100164498(0xD00000000000001BLL, 0x800000010025AE30);
  if (v15)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v14, v86);
    if (swift_dynamicCast())
    {
      v16 = LOBYTE(v85);
      if (!*(a1 + 16))
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

LABEL_26:
  v16 = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

LABEL_27:
  v17 = sub_100164498(0xD000000000000019, 0x800000010025AE50);
  if (v18)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v17, v86);
    if (swift_dynamicCast())
    {
      v19 = *&v85;
      if (!*(a1 + 16))
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }
  }

LABEL_31:
  v19 = 70;
  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

LABEL_32:
  v20 = sub_100164498(0xD000000000000018, 0x800000010025AE70);
  if (v21)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v20, v86);
    if (swift_dynamicCast())
    {
      v82 = *&v85;
      if (!*(a1 + 16))
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

LABEL_36:
  v82 = 0x3FEE666666666666;
  if (!*(a1 + 16))
  {
LABEL_40:
    v24 = 0.25;
    goto LABEL_41;
  }

LABEL_37:
  v22 = sub_100164498(0xD000000000000021, 0x800000010025AE90);
  if ((v23 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_1001675EC(*(a1 + 56) + 32 * v22, v86);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v24 = v85;
LABEL_41:
  v81 = v24;
  if (*(a1 + 16) && (v25 = sub_100164498(0xD000000000000019, 0x800000010025AEC0), (v26 & 1) != 0) && (sub_1001675EC(*(a1 + 56) + 32 * v25, v86), (swift_dynamicCast() & 1) != 0))
  {
    v27 = *&v85;
  }

  else
  {
    v27 = 0x3FD999999999999ALL;
  }

  v80 = v27;
  if (*(a1 + 16) && (v28 = sub_100164498(0xD000000000000024, 0x800000010025AEE0), (v29 & 1) != 0) && (sub_1001675EC(*(a1 + 56) + 32 * v28, v86), (swift_dynamicCast() & 1) != 0))
  {
    v30 = *&v85;
  }

  else
  {
    v30 = 0x3FE8F5C28F5C28F6;
  }

  v79 = v30;
  if (*(a1 + 16) && (v31 = sub_100164498(0xD000000000000020, 0x800000010025AF10), (v32 & 1) != 0) && (sub_1001675EC(*(a1 + 56) + 32 * v31, v86), (swift_dynamicCast() & 1) != 0))
  {
    v33 = v85;
    if (!*(a1 + 16))
    {
      goto LABEL_60;
    }
  }

  else
  {
    v33 = 0.0;
    if (!*(a1 + 16))
    {
LABEL_60:
      v36 = 0.0;
      goto LABEL_61;
    }
  }

  v34 = sub_100164498(0xD00000000000001FLL, 0x800000010025AF40);
  if ((v35 & 1) == 0)
  {
    goto LABEL_60;
  }

  sub_1001675EC(*(a1 + 56) + 32 * v34, v86);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_60;
  }

  v36 = v85;
LABEL_61:
  v78 = v36;
  if (*(a1 + 16) && (v37 = sub_100164498(0xD000000000000028, 0x800000010025AF60), (v38 & 1) != 0) && (sub_1001675EC(*(a1 + 56) + 32 * v37, v86), (swift_dynamicCast() & 1) != 0))
  {
    v39 = v85;
  }

  else
  {
    v39 = 0.75;
  }

  v77 = v39;
  if (*(a1 + 16) && (v40 = sub_100164498(0xD000000000000020, 0x800000010025AF90), (v41 & 1) != 0) && (sub_1001675EC(*(a1 + 56) + 32 * v40, v86), (swift_dynamicCast() & 1) != 0))
  {
    v76 = *&v85;
    if (!*(a1 + 16))
    {
      goto LABEL_76;
    }
  }

  else
  {
    v76 = 0x3FEE666666666666;
    if (!*(a1 + 16))
    {
      goto LABEL_76;
    }
  }

  v42 = sub_100164498(0xD00000000000002BLL, 0x800000010025AFC0);
  if ((v43 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v42, v86), (swift_dynamicCast() & 1) == 0))
  {
LABEL_76:
    v44 = 0x3FD3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  v44 = *&v85;
  if (!*(a1 + 16))
  {
    goto LABEL_81;
  }

LABEL_77:
  v45 = sub_100164498(0xD00000000000001FLL, 0x800000010025AFF0);
  if ((v46 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v45, v86), (swift_dynamicCast() & 1) == 0))
  {
LABEL_81:
    v47 = 6;
    if (!*(a1 + 16))
    {
      goto LABEL_86;
    }

    goto LABEL_82;
  }

  v47 = *&v85;
  if (!*(a1 + 16))
  {
    goto LABEL_86;
  }

LABEL_82:
  v48 = sub_100164498(0xD00000000000001ELL, 0x800000010025B010);
  if ((v49 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v48, v86), (swift_dynamicCast() & 1) == 0))
  {
LABEL_86:
    v50 = 0x3FEE666666666666;
    if (!*(a1 + 16))
    {
      goto LABEL_91;
    }

    goto LABEL_87;
  }

  v50 = *&v85;
  if (!*(a1 + 16))
  {
    goto LABEL_91;
  }

LABEL_87:
  v51 = sub_100164498(0xD000000000000027, 0x800000010025B030);
  if ((v52 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v51, v86), (swift_dynamicCast() & 1) == 0))
  {
LABEL_91:
    v53 = 0x3FE999999999999ALL;
    if (!*(a1 + 16))
    {
      goto LABEL_96;
    }

    goto LABEL_92;
  }

  v53 = *&v85;
  if (!*(a1 + 16))
  {
    goto LABEL_96;
  }

LABEL_92:
  v54 = sub_100164498(0xD00000000000001FLL, 0x800000010025B060);
  if ((v55 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v54, v86), (swift_dynamicCast() & 1) == 0))
  {
LABEL_96:
    v56 = 0x3FDCCCCCCCCCCCCDLL;
    if (!*(a1 + 16))
    {
      goto LABEL_101;
    }

    goto LABEL_97;
  }

  v56 = *&v85;
  if (!*(a1 + 16))
  {
    goto LABEL_101;
  }

LABEL_97:
  v57 = sub_100164498(0xD00000000000002ALL, 0x800000010025B080);
  if ((v58 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v57, v86), (swift_dynamicCast() & 1) == 0))
  {
LABEL_101:
    v59 = 0x3FE8F5C28F5C28F6;
    if (!*(a1 + 16))
    {
      goto LABEL_106;
    }

    goto LABEL_102;
  }

  v59 = *&v85;
  if (!*(a1 + 16))
  {
    goto LABEL_106;
  }

LABEL_102:
  v60 = sub_100164498(0xD000000000000019, 0x800000010025B0B0);
  if ((v61 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v60, v86), (swift_dynamicCast() & 1) == 0))
  {
LABEL_106:
    v62 = 0.5;
    if (*(a1 + 16))
    {
      goto LABEL_107;
    }

LABEL_110:
    v65 = 0.75;
    goto LABEL_111;
  }

  v62 = v85;
  if (!*(a1 + 16))
  {
    goto LABEL_110;
  }

LABEL_107:
  v63 = sub_100164498(0xD000000000000018, 0x800000010025B0D0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_110;
  }

  sub_1001675EC(*(a1 + 56) + 32 * v63, v86);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_110;
  }

  v65 = v85;
LABEL_111:
  if (*(a1 + 16) && (v66 = sub_100164498(0xD000000000000017, 0x800000010025B0F0), (v67 & 1) != 0) && (sub_1001675EC(*(a1 + 56) + 32 * v66, v86), (swift_dynamicCast() & 1) != 0))
  {
    v68 = v85;
  }

  else
  {
    v68 = 0.75;
  }

  sub_1001668E0(a1, v86);
  *a2 = v84;
  *(a2 + 8) = v83;
  *(a2 + 16) = v10;
  *(a2 + 17) = v13;
  *(a2 + 18) = v16;
  *(a2 + 24) = v19;
  *(a2 + 32) = v82;
  *(a2 + 40) = v81;
  *(a2 + 48) = v80;
  *(a2 + 56) = v79;
  *(a2 + 64) = v33;
  *(a2 + 72) = v78;
  *(a2 + 80) = v77;
  *(a2 + 88) = v76;
  *(a2 + 96) = v44;
  *(a2 + 104) = v47;
  *(a2 + 112) = v50;
  *(a2 + 120) = v53;
  *(a2 + 128) = v56;
  *(a2 + 136) = v59;
  *(a2 + 144) = v62;
  *(a2 + 152) = v65;
  *(a2 + 160) = v68;
  v69 = v86[1];
  *(a2 + 168) = v86[0];
  v70 = v86[5];
  *(a2 + 232) = v86[4];
  v71 = v86[2];
  *(a2 + 216) = v86[3];
  *(a2 + 200) = v71;
  *(a2 + 184) = v69;
  v72 = v86[7];
  *(a2 + 264) = v86[6];
  *(a2 + 280) = v72;
  *(a2 + 248) = v70;
  v73 = v91;
  *(a2 + 344) = v90;
  *(a2 + 360) = v73;
  v74 = v89;
  *(a2 + 312) = v88;
  *(a2 + 328) = v74;
  result = *&v87;
  *(a2 + 296) = v87;
  return result;
}

unint64_t sub_10016601C()
{
  _StringGuts.grow(_:)(33);
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x800000010025B4C0;
  String.append(_:)(v1);
  v2 = *v0;
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  String.append(_:)(v4);

  _StringGuts.grow(_:)(22);
  v5._countAndFlagsBits = 0xD000000000000013;
  v5._object = 0x800000010025B4E0;
  String.append(_:)(v5);
  v6 = v0[1];
  Double.write<A>(to:)();
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  String.append(_:)(v8);

  _StringGuts.grow(_:)(92);
  v9._countAndFlagsBits = 0x506D756E20534F4FLL;
  v9._object = 0xED0000203A766572;
  String.append(_:)(v9);
  v52 = v0[3];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._object = 0x800000010025B500;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12 = v0[4];
  Double.write<A>(to:)();
  v13._object = 0x800000010025B520;
  v13._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v13);
  v14 = v0[5];
  Double.write<A>(to:)();
  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = 0x800000010025B540;
  String.append(_:)(v15);
  v16 = v0[6];
  Double.write<A>(to:)();
  v17._countAndFlagsBits = 0x746867696577202CLL;
  v17._object = 0xEA0000000000203ALL;
  String.append(_:)(v17);
  v18 = v0[7];
  Double.write<A>(to:)();
  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  String.append(_:)(v20);

  _StringGuts.grow(_:)(99);
  v21._countAndFlagsBits = 0xD000000000000014;
  v21._object = 0x800000010025B560;
  String.append(_:)(v21);
  v53 = v0[8];
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._object = 0x800000010025B500;
  v23._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v23);
  v24 = v0[9];
  Double.write<A>(to:)();
  v25._object = 0x800000010025B520;
  v25._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v25);
  v26 = v0[10];
  Double.write<A>(to:)();
  v27._countAndFlagsBits = 0xD000000000000016;
  v27._object = 0x800000010025B540;
  String.append(_:)(v27);
  v28 = v0[11];
  Double.write<A>(to:)();
  v29._countAndFlagsBits = 0x746867696577202CLL;
  v29._object = 0xEA0000000000203ALL;
  String.append(_:)(v29);
  v30 = v0[12];
  Double.write<A>(to:)();
  v31._countAndFlagsBits = 10;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  String.append(_:)(v32);

  _StringGuts.grow(_:)(93);
  v33._countAndFlagsBits = 0x6D756E2050525352;
  v33._object = 0xEE00203A76657250;
  String.append(_:)(v33);
  v54 = v0[13];
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  v35._object = 0x800000010025B500;
  v35._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v35);
  v36 = v0[14];
  Double.write<A>(to:)();
  v37._object = 0x800000010025B520;
  v37._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v37);
  Double.write<A>(to:)();
  v38._countAndFlagsBits = 0xD000000000000016;
  v38._object = 0x800000010025B540;
  String.append(_:)(v38);
  v39 = v0[16];
  Double.write<A>(to:)();
  v40._countAndFlagsBits = 0x746867696577202CLL;
  v40._object = 0xEA0000000000203ALL;
  String.append(_:)(v40);
  Double.write<A>(to:)();
  v41._countAndFlagsBits = 10;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  String.append(_:)(v42);

  _StringGuts.grow(_:)(49);
  v43._countAndFlagsBits = 0xD000000000000015;
  v43._object = 0x800000010025B580;
  String.append(_:)(v43);
  v44 = v0[18];
  Double.write<A>(to:)();
  v45._countAndFlagsBits = 0x3A7472617473202CLL;
  v45._object = 0xE900000000000020;
  String.append(_:)(v45);
  v46 = v0[19];
  Double.write<A>(to:)();
  v47._countAndFlagsBits = 0x697461727564202CLL;
  v47._object = 0xEC000000203A6E6FLL;
  String.append(_:)(v47);
  v48 = v0[20];
  Double.write<A>(to:)();
  v49._countAndFlagsBits = 10;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  String.append(_:)(v50);

  return 0xD000000000000023;
}

uint64_t sub_100166728()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10016677C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1001667D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100164A3C(&qword_1002D5CB0, &qword_100249BB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100167D98(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100164498(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100167E08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001668E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100164498(0xD00000000000001DLL, 0x800000010025B110), (v5 & 1) != 0) && (sub_1001675EC(*(a1 + 56) + 32 * v4, v85), (swift_dynamicCast() & 1) != 0))
  {
    v83 = *&v84;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v83 = 0x3FE3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v6 = sub_100164498(0xD00000000000001DLL, 0x800000010025B130);
  if ((v7 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v6, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    v82 = 0x409C200000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v82 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = sub_100164498(0xD000000000000011, 0x800000010025B150);
  if ((v9 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v8, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_16:
    v10 = -115;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v10 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

LABEL_17:
  v11 = sub_100164498(0xD000000000000018, 0x800000010025B170);
  if ((v12 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v11, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    v81 = 0x40AC200000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v81 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

LABEL_22:
  v13 = sub_100164498(0xD000000000000019, 0x800000010025B190);
  if ((v14 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v13, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_26:
    v80 = 0x405E000000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v80 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

LABEL_27:
  v15 = sub_100164498(0xD000000000000028, 0x800000010025B1B0);
  if ((v16 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v15, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_31:
    v79 = 0x4087700000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v79 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

LABEL_32:
  v17 = sub_100164498(0xD000000000000021, 0x800000010025B1E0);
  if ((v18 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v17, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_36:
    v78 = 0x3FE3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v78 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_41;
  }

LABEL_37:
  v19 = sub_100164498(0xD000000000000019, 0x800000010025B230);
  if ((v20 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v19, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_41:
    v77 = 0x3FD3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  v77 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_46;
  }

LABEL_42:
  v21 = sub_100164498(0xD00000000000001DLL, 0x800000010025B210);
  if ((v22 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v21, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_46:
    v76 = 0x3FD3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v76 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_51;
  }

LABEL_47:
  v23 = sub_100164498(0xD000000000000012, 0x800000010025B250);
  if ((v24 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v23, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_51:
    v75 = 0x3FD3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v75 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_56;
  }

LABEL_52:
  v25 = sub_100164498(0xD000000000000018, 0x800000010025B270);
  if ((v26 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v25, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_56:
    v74 = 0x3FE6666666666666;
    if (!*(a1 + 16))
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  v74 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_61;
  }

LABEL_57:
  v27 = sub_100164498(0xD000000000000018, 0x800000010025B290);
  if ((v28 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v27, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_61:
    v73 = 0x3FE6666666666666;
    if (!*(a1 + 16))
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  v73 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_66;
  }

LABEL_62:
  v29 = sub_100164498(0xD000000000000013, 0x800000010025B2B0);
  if ((v30 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v29, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_66:
    v72 = 0x3FE3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

  v72 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_71;
  }

LABEL_67:
  v31 = sub_100164498(0xD00000000000001ALL, 0x800000010025B2D0);
  if ((v32 & 1) == 0 || (sub_1001675EC(*(a1 + 56) + 32 * v31, v85), (swift_dynamicCast() & 1) == 0))
  {
LABEL_71:
    v71 = 0x3FD3333333333333;
    if (*(a1 + 16))
    {
      goto LABEL_72;
    }

LABEL_75:
    v35 = 0x3FE999999999999ALL;
    goto LABEL_76;
  }

  v71 = *&v84;
  if (!*(a1 + 16))
  {
    goto LABEL_75;
  }

LABEL_72:
  v33 = sub_100164498(0xD000000000000022, 0x800000010025B2F0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_75;
  }

  sub_1001675EC(*(a1 + 56) + 32 * v33, v85);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_75;
  }

  v35 = *&v84;
LABEL_76:
  v70 = v35;
  if (*(a1 + 16) && (v36 = sub_100164498(0xD00000000000001ALL, 0x800000010025B340), (v37 & 1) != 0) && (sub_1001675EC(*(a1 + 56) + 32 * v36, v85), (swift_dynamicCast() & 1) != 0))
  {
    v69 = *&v84;
    if (!*(a1 + 16))
    {
      goto LABEL_86;
    }
  }

  else
  {
    v69 = 0x3FE3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_86;
    }
  }

  v38 = sub_100164498(0xD00000000000001ELL, 0x800000010025B320);
  if (v39)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v38, v85);
    if (swift_dynamicCast())
    {
      v68 = *&v84;
      if (!*(a1 + 16))
      {
        goto LABEL_91;
      }

      goto LABEL_87;
    }
  }

LABEL_86:
  v68 = 0x3FE3333333333333;
  if (!*(a1 + 16))
  {
    goto LABEL_91;
  }

LABEL_87:
  v40 = sub_100164498(0xD000000000000013, 0x800000010025B360);
  if (v41)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v40, v85);
    if (swift_dynamicCast())
    {
      v42 = *&v84;
      if (!*(a1 + 16))
      {
        goto LABEL_96;
      }

      goto LABEL_92;
    }
  }

LABEL_91:
  v42 = 0x3FD3333333333333;
  if (!*(a1 + 16))
  {
    goto LABEL_96;
  }

LABEL_92:
  v43 = sub_100164498(0xD000000000000019, 0x800000010025B380);
  if (v44)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v43, v85);
    if (swift_dynamicCast())
    {
      v45 = *&v84;
      if (!*(a1 + 16))
      {
        goto LABEL_101;
      }

      goto LABEL_97;
    }
  }

LABEL_96:
  v45 = 0x3FE999999999999ALL;
  if (!*(a1 + 16))
  {
    goto LABEL_101;
  }

LABEL_97:
  v46 = sub_100164498(0xD000000000000019, 0x800000010025B3A0);
  if (v47)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v46, v85);
    if (swift_dynamicCast())
    {
      v48 = *&v84;
      if (!*(a1 + 16))
      {
        goto LABEL_106;
      }

      goto LABEL_102;
    }
  }

LABEL_101:
  v48 = 0x3FE999999999999ALL;
  if (!*(a1 + 16))
  {
    goto LABEL_106;
  }

LABEL_102:
  v49 = sub_100164498(0xD00000000000001BLL, 0x800000010025B3C0);
  if (v50)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v49, v85);
    if (swift_dynamicCast())
    {
      v51 = *&v84;
      if (!*(a1 + 16))
      {
        goto LABEL_111;
      }

      goto LABEL_107;
    }
  }

LABEL_106:
  v51 = 0x3FD3333333333333;
  if (!*(a1 + 16))
  {
    goto LABEL_111;
  }

LABEL_107:
  v52 = sub_100164498(0xD00000000000001DLL, 0x800000010025B3E0);
  if (v53)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v52, v85);
    if (swift_dynamicCast())
    {
      v54 = *&v84;
      if (!*(a1 + 16))
      {
        goto LABEL_116;
      }

      goto LABEL_112;
    }
  }

LABEL_111:
  v54 = 0x3FE999999999999ALL;
  if (!*(a1 + 16))
  {
    goto LABEL_116;
  }

LABEL_112:
  v55 = sub_100164498(0xD00000000000001CLL, 0x800000010025B400);
  if (v56)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v55, v85);
    if (swift_dynamicCast())
    {
      v57 = *&v84;
      if (!*(a1 + 16))
      {
        goto LABEL_121;
      }

      goto LABEL_117;
    }
  }

LABEL_116:
  v57 = 0x3FE999999999999ALL;
  if (!*(a1 + 16))
  {
    goto LABEL_121;
  }

LABEL_117:
  v58 = sub_100164498(0xD000000000000023, 0x800000010025B420);
  if (v59)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v58, v85);
    if (swift_dynamicCast())
    {
      v60 = *&v84;
      if (!*(a1 + 16))
      {
        goto LABEL_126;
      }

      goto LABEL_122;
    }
  }

LABEL_121:
  v60 = 0x3FE999999999999ALL;
  if (!*(a1 + 16))
  {
    goto LABEL_126;
  }

LABEL_122:
  v61 = sub_100164498(0xD00000000000001BLL, 0x800000010025B450);
  if (v62)
  {
    sub_1001675EC(*(a1 + 56) + 32 * v61, v85);
    if (swift_dynamicCast())
    {
      v63 = *&v84;
      if (!*(a1 + 16))
      {
        goto LABEL_130;
      }

      goto LABEL_127;
    }
  }

LABEL_126:
  v63 = 0x3FE999999999999ALL;
  if (!*(a1 + 16))
  {
LABEL_130:

    goto LABEL_131;
  }

LABEL_127:
  v64 = sub_100164498(0xD00000000000001ALL, 0x800000010025B470);
  if ((v65 & 1) == 0)
  {
    goto LABEL_130;
  }

  sub_1001675EC(*(a1 + 56) + 32 * v64, v85);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_131:
    v67 = 0.75;
    goto LABEL_132;
  }

  v67 = v84;
LABEL_132:
  *a2 = v83;
  a2[1] = v82;
  a2[2] = v10;
  a2[3] = v81;
  a2[4] = v80;
  a2[5] = v79;
  a2[6] = v78;
  a2[7] = v77;
  a2[8] = v76;
  a2[9] = v75;
  a2[10] = v74;
  a2[11] = v73;
  a2[12] = v72;
  a2[13] = v71;
  a2[14] = v70;
  a2[15] = v69;
  a2[16] = v68;
  a2[17] = v42;
  a2[18] = v45;
  a2[19] = v48;
  a2[20] = v51;
  a2[21] = v54;
  a2[22] = v57;
  a2[23] = v60;
  a2[24] = v63;
  *(a2 + 25) = v67;
  return result;
}

uint64_t sub_1001675EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10016764C()
{
  result = qword_1002D5C70;
  if (!qword_1002D5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C70);
  }

  return result;
}

unint64_t sub_1001676A4()
{
  result = qword_1002D5C78;
  if (!qword_1002D5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C78);
  }

  return result;
}

unint64_t sub_1001676FC()
{
  result = qword_1002D5C80;
  if (!qword_1002D5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C80);
  }

  return result;
}

unint64_t sub_100167754()
{
  result = qword_1002D5C88;
  if (!qword_1002D5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C88);
  }

  return result;
}

unint64_t sub_1001677AC()
{
  result = qword_1002D5C90;
  if (!qword_1002D5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C90);
  }

  return result;
}

unint64_t sub_100167804()
{
  result = qword_1002D5C98;
  if (!qword_1002D5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C98);
  }

  return result;
}

uint64_t sub_100167860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 376))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001678B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 376) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 376) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServicePredictionControllerConfig.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServicePredictionControllerConfig.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100167AC4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_100167B00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 208))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}