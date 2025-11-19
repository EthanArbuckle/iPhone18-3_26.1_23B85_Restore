char *sub_23F295368(uint64_t a1, char *__dst, _BYTE *__src, char *a4, unint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if ((v6 - v7) >= a5)
  {
    v13 = v7 - __dst;
    if ((v7 - __dst) >= a5)
    {
      v17 = &__dst[a5];
      v18 = (v7 - a5);
      v19 = *(a1 + 8);
      if (v7 >= a5)
      {
        if (a5 <= 0x1F)
        {
          goto LABEL_70;
        }

        v18 += a5 & 0x7FFFFFFFFFFFFFE0;
        v19 = (v7 + (a5 & 0x7FFFFFFFFFFFFFE0));
        v20 = (v7 + 16);
        v21 = (v7 + 16 - a5);
        v22 = a5 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v23 = *v21;
          *(v20 - 1) = *(v21 - 1);
          *v20 = v23;
          v20 += 2;
          v21 += 2;
          v22 -= 32;
        }

        while (v22);
        if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
        {
LABEL_70:
          do
          {
            v24 = *v18++;
            *v19++ = v24;
          }

          while (v18 != v7);
        }
      }

      *(a1 + 8) = v19;
      if (v7 != v17)
      {
        v25 = __src;
        v26 = a5;
        memmove(v17, __dst, v7 - v17);
        a5 = v26;
        __src = v25;
      }

      v27 = v5;
      v28 = __src;
      v29 = a5;
      goto LABEL_64;
    }

    v14 = &__src[v13];
    v15 = a4 - &__src[v13];
    if (a4 == &__src[v13])
    {
      v16 = *(a1 + 8);
    }

    else
    {
      v40 = &__src[v13];
      if (v15 < 0x20)
      {
        v16 = *(a1 + 8);
      }

      else
      {
        v16 = *(a1 + 8);
        if (v7 - v14 >= 0x20)
        {
          v40 = &v14[v15 & 0xFFFFFFFFFFFFFFE0];
          v16 = (v7 + (v15 & 0xFFFFFFFFFFFFFFE0));
          v41 = (v7 + 16);
          v42 = (v14 + 16);
          v43 = v15 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v44 = *v42;
            *(v41 - 1) = *(v42 - 1);
            *v41 = v44;
            v41 += 2;
            v42 += 2;
            v43 -= 32;
          }

          while (v43);
          if (v15 == (v15 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_48;
          }
        }
      }

      do
      {
        v54 = *v40++;
        *v16++ = v54;
      }

      while (v40 != a4);
    }

LABEL_48:
    *(a1 + 8) = v16;
    if (v13 < 1)
    {
      return v5;
    }

    v55 = &__dst[a5];
    v56 = &v16[-a5];
    if (&v16[-a5] >= v7)
    {
      v59 = v16;
    }

    else
    {
      v57 = v7 + a5 - v16;
      v58 = v57 >= 0x20 && a5 > 0x1F;
      v59 = v16;
      if (!v58)
      {
        goto LABEL_71;
      }

      v56 += v57 & 0xFFFFFFFFFFFFFFE0;
      v59 = &v16[v57 & 0xFFFFFFFFFFFFFFE0];
      v60 = v16 + 16;
      v61 = &v16[-a5 + 16];
      v62 = v57 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v63 = *v61;
        *(v60 - 1) = *(v61 - 1);
        *v60 = v63;
        v60 += 2;
        v61 += 2;
        v62 -= 32;
      }

      while (v62);
      if (v57 != (v57 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_71:
        do
        {
          v64 = *v56++;
          *v59++ = v64;
        }

        while (v56 != v7);
      }
    }

    *(a1 + 8) = v59;
    if (v16 != v55)
    {
      v65 = __src;
      memmove(v55, __dst, v16 - v55);
      __src = v65;
    }

    v27 = v5;
    v28 = __src;
    v29 = v13;
LABEL_64:
    memmove(v27, v28, v29);
    return v5;
  }

  v8 = *a1;
  v9 = v7 - *a1 + a5;
  if (v9 < 0)
  {
    sub_23EF62578();
  }

  v10 = (__dst - v8);
  v11 = v6 - v8;
  if (2 * v11 > v9)
  {
    v9 = 2 * v11;
  }

  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v9;
  }

  if (v12)
  {
    operator new();
  }

  v30 = (__dst - v8);
  v31 = &v10[a5];
  if (a5 < 8 || (__dst - &__src[v8]) < 0x20)
  {
    v32 = (__dst - v8);
    v33 = __src;
    goto LABEL_26;
  }

  if (a5 < 0x20)
  {
    v45 = 0;
    goto LABEL_42;
  }

  v45 = a5 & 0x7FFFFFFFFFFFFFE0;
  v46 = (__src + 16);
  v47 = v10 + 16;
  v48 = a5 & 0x7FFFFFFFFFFFFFE0;
  do
  {
    v49 = *v46;
    *(v47 - 1) = *(v46 - 1);
    *v47 = v49;
    v46 += 2;
    v47 += 2;
    v48 -= 32;
  }

  while (v48);
  if (v45 == a5)
  {
    goto LABEL_27;
  }

  if ((a5 & 0x18) != 0)
  {
LABEL_42:
    v32 = &v30[a5 & 0x7FFFFFFFFFFFFFF8];
    v33 = &__src[a5 & 0x7FFFFFFFFFFFFFF8];
    v50 = &__src[v45];
    v51 = (&__dst[v45] - v8);
    v52 = v45 - (a5 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v53 = *v50++;
      *v51++ = v53;
      v52 += 8;
    }

    while (v52);
    if ((a5 & 0x7FFFFFFFFFFFFFF8) == a5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v33 = &__src[v45];
  v32 = &v30[v45];
  do
  {
LABEL_26:
    v34 = *v33++;
    *v32++ = v34;
  }

  while (v32 != v31);
LABEL_27:
  v35 = *(a1 + 8) - __dst;
  memcpy(v31, __dst, v35);
  v37 = &v31[v35];
  *(a1 + 8) = v5;
  v38 = *a1;
  v39 = &v30[*a1 - v5];
  memcpy(v39, *a1, &v5[-*a1]);
  *a1 = v39;
  *(a1 + 8) = v37;
  *(a1 + 16) = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v30;
}

void *sub_23F295760(uint64_t a1, void **a2, unsigned __int8 **a3)
{
  v3 = *a2;
  if (a3[1] > 0)
  {
    sub_23EF2F9B0(v3, "{", 1);
    v6 = *a3;
    std::to_string(&v14, **a3);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v14;
    }

    else
    {
      v7 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    sub_23EF2F9B0(*a2, v7, size);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
      v9 = &a3[1][*a3];
      v10 = (v6 + 1);
      if (v10 == v9)
      {
        return sub_23EF2F9B0(*a2, "}", 1);
      }
    }

    else
    {
      v9 = &a3[1][*a3];
      v10 = (v6 + 1);
      if (v10 == v9)
      {
        return sub_23EF2F9B0(*a2, "}", 1);
      }
    }

    do
    {
      sub_23EF2F9B0(*a2, ",", 1);
      std::to_string(&v14, *v10);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v14;
      }

      else
      {
        v12 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v14.__r_.__value_.__l.__size_;
      }

      sub_23EF2F9B0(*a2, v12, v13);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      ++v10;
    }

    while (v10 != v9);
    return sub_23EF2F9B0(*a2, "}", 1);
  }

  return sub_23EF2F9B0(v3, "{}", 2);
}

void sub_23F2958E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F295938(uint64_t *a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_27E395EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395EC0))
  {
    sub_23F295B98();
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_23F04A2C0(a1, &__p);
  v4 = qword_27E395ED0;
  if (!qword_27E395ED0)
  {
    goto LABEL_41;
  }

  if (v23 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v23 >= 0)
  {
    v6 = HIBYTE(v23);
  }

  else
  {
    v6 = v22;
  }

  v7 = &qword_27E395ED0;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_27E395ED0)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278C744A8, MEMORY[0x277D82610]);
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 56);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_23F295B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F295B98()
{
  v0 = *MEMORY[0x277D85DE8];
  qword_27E395ED0 = 0;
  qword_27E395ED8 = 0;
  qword_27E395EC8 = &qword_27E395ED0;
  operator new();
}

void sub_23F295FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = a19;
  a19 = 0;
  if (v20)
  {
    sub_23F302A54(&a19, v20);
  }

  sub_23F04B948(&a11);
  sub_23F05CB64(qword_27E395ED0);
  _Unwind_Resume(a1);
}

void sub_23F29606C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v10 = *(a2 + 8);
  v12 = 0;
  *&v20 = v11;
  *(&v20 + 1) = "{";
  v21 = v11;
  v22 = "{";
  v23 = "{";
  v17[0] = &v20;
  sub_23EF42398(v17);
  v18 = 0;
  std::to_string(&v19, v2);
  *&v20 = v17;
  *(&v20 + 1) = &v19;
  v21 = v17;
  v22 = &v19;
  v23 = &v19;
  if (v18 == -1)
  {
    sub_23EF41D6C();
  }

  v24 = &v20;
  (off_28518BA60[v18])(&v24, v17);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v18 == -1)
  {
    sub_23EF41D6C();
  }

  *&v20 = &v19;
  (off_28518BA78[v18])(&v15, &v20, v17);
  if (v18 != -1)
  {
    (off_28518BA48[v18])(&v20, v17);
  }

  size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((*(&v15.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    v4 = (v15.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v15.__r_.__value_.__l.__size_ == v4)
    {
      if ((v15.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_12:
      operator new();
    }

    size = v15.__r_.__value_.__l.__size_;
    v5 = v15.__r_.__value_.__r.__words[0];
    ++v15.__r_.__value_.__l.__size_;
  }

  else
  {
    if (HIBYTE(v15.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_12;
    }

    *(&v15.__r_.__value_.__s + 23) = (*(&v15.__r_.__value_.__s + 23) + 1) & 0x7F;
    v5 = &v15;
  }

  *(&v5->__r_.__value_.__l.__data_ + size) = 32;
  v16 = v15;
  memset(&v15, 0, sizeof(v15));
  sub_23F301BE4(1, 1000000000, &v20);
  if (SHIBYTE(v21) >= 0)
  {
    v6 = &v20;
  }

  else
  {
    v6 = v20;
  }

  if (SHIBYTE(v21) >= 0)
  {
    v7 = HIBYTE(v21);
  }

  else
  {
    v7 = *(&v20 + 1);
  }

  v8 = std::string::append(&v16, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_23:
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_31:
      operator delete(v15.__r_.__value_.__l.__data_);
LABEL_24:
      *&v20 = v11;
      *(&v20 + 1) = __p;
      v21 = v11;
      v22 = __p;
      v23 = __p;
      if (v12 != -1)
      {
        v17[0] = &v20;
        (off_28518BA60[v12])(v17, v11);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p[0]);
        }

        *&v20 = v11;
        *(&v20 + 1) = ",";
        v21 = v11;
        v22 = ",";
        v23 = ",";
        if (v12 != -1)
        {
          v17[0] = &v20;
          (*(&off_28518BA30 + v12))(v17, v11);
          sub_23EF556F4();
        }

        sub_23EF41D6C();
      }

      sub_23EF41D6C();
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  goto LABEL_31;
}

void sub_23F2964F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(__p);
    sub_23EF41D10(&a18);
    _Unwind_Resume(a1);
  }

  sub_23EF41D10(&a18);
  _Unwind_Resume(a1);
}

void sub_23F296600(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_27E396128, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_27E396128))
  {
    *a1 = qword_27E396120;
  }

  else
  {
    sub_23EF2F798(&qword_27E396120);
    __cxa_guard_release(&qword_27E396128);
    *a1 = qword_27E396120;
  }
}

unint64_t sub_23F296694(unint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v4 = *(a1 + 23);
  v5 = a3 - a2;
  if (v4 < 0)
  {
    if (a3 == a2)
    {
      return a1;
    }

    v8 = *(a1 + 8);
    v10 = *(a1 + 16);
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = *a1;
    v6 = v10 >> 63;
    if (*a1 > a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return a1;
    }

    LODWORD(v6) = 0;
    v7 = 22;
    v8 = *(a1 + 23);
    v9 = a1;
    if (a1 > a2)
    {
      goto LABEL_11;
    }
  }

  if (v9 + v8 + 1 > a2)
  {
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_31;
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v18 = a3 - a2;
    memcpy(__dst, a2, v5);
    *(__dst + v5) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(a1, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }

    return a1;
  }

LABEL_11:
  if (v7 - v8 < v5)
  {
    if (0x7FFFFFFFFFFFFFF7 - v7 >= v8 + v5 - v7)
    {
      if ((v4 & 0x80000000) != 0)
      {
        v11 = *a1;
      }

      operator new();
    }

LABEL_31:
    sub_23EF2F8F4();
  }

  v12 = a1;
  if (v6)
  {
    v12 = *a1;
  }

  memmove((v12 + v8), a2, v5);
  *(v12 + v8 + v5) = 0;
  v13 = v8 + v5;
  if (*(a1 + 23) < 0)
  {
    *(a1 + 8) = v13;
  }

  else
  {
    *(a1 + 23) = v13 & 0x7F;
  }

  return a1;
}

void sub_23F2968E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F296904(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = (*(**(a2 + 8) + 16))(*(a2 + 8));
  v5 = (*(**(a2 + 8) + 24))(*(a2 + 8));
  v6 = (*(**(a2 + 8) + 32))(*(a2 + 8));
  v7 = v4 == 1 && v5 == 1;
  v8 = !v7;
  if (v7 && v6 == 11)
  {
    *a1 = 0;
    v9 = sub_23F297250(a2);
    v27 = v9[1];
    *&v28 = *(v9 + 11);
    operator new();
  }

  if (v6 != 12)
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5 == 1;
    }

    v11 = !v10;
    if (v10 && v6 == 11)
    {
      *a1 = 10;
      v12 = sub_23F297738(a2);
      v27 = v12[1];
      *&v28 = *(v12 + 11);
      operator new();
    }

    if (v6 != 12)
    {
      v11 = 1;
    }

    if (v11)
    {
      v15 = v4 == 1 && v5 == 2;
      v16 = !v15;
      if (v15 && v6 == 11)
      {
        *a1 = 100;
        v17 = sub_23F297C20(a2);
        v18 = v17[2];
        v27 = v17[1];
        v28 = v18;
        *v29 = *(v17 + 12);
        *&v29[4] = *(v17 + 15);
        operator new();
      }

      if (v6 != 12)
      {
        v16 = 1;
      }

      if (v16)
      {
        if (v4)
        {
          v21 = 0;
        }

        else
        {
          v21 = v5 == 2;
        }

        v22 = !v21;
        if (v21 && v6 == 11)
        {
          *a1 = 110;
          v23 = sub_23F298108(a2);
          sub_23F29EAE4(&v27, v23);
        }

        if (v6 != 12)
        {
          v22 = 1;
        }

        if ((v22 & 1) == 0)
        {
          *a1 = 111;
          v25 = sub_23F29837C(a2);
          sub_23F29ED08(&v27, v25);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278C744A8, MEMORY[0x277D82610]);
      }

      *a1 = 101;
      v24 = sub_23F297E94(a2);
      sub_23F29EBE4(&v27, v24);
    }

    *a1 = 11;
    v19 = sub_23F2979AC(a2);
    v20 = v19[2];
    v27 = v19[1];
    v28 = v20;
    *v29 = *(v19 + 19);
    operator new();
  }

  *a1 = 1;
  v13 = sub_23F2974C4(a2);
  v14 = v13[2];
  v27 = v13[1];
  v28 = v14;
  *v29 = *(v13 + 19);
  operator new();
}

void sub_23F297078(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_23F2985F0(v1);
  _Unwind_Resume(a1);
}

void sub_23F297094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F29EA6C(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F2970B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F29E8F0(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F2970CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F29EA6C(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F297110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F29E8F0(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F297140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F2A09B4(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F297170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0633AC(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F2971A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F2A09B4(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F2971D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0633AC(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void *sub_23F297250(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_28518CC00, &unk_28518C168, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_27E395638, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27E395638))
      {
        sub_23F29BB7C();
      }
    }

    sub_23F2A31EC(a1, byte_27E395620, "trying to cast camera");
  }

  return result;
}

void sub_23F2974AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_23F2974C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_28518CC00, &unk_28518C328, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_27E395658, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27E395658))
      {
        sub_23F29BFFC();
      }
    }

    sub_23F2A31EC(a1, byte_27E395640, "trying to cast camera");
  }

  return result;
}

void sub_23F297720(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_23F297738(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_28518CC00, &unk_28518C278, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_27E395678, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27E395678))
      {
        sub_23F29C47C();
      }
    }

    sub_23F2A31EC(a1, byte_27E395660, "trying to cast camera");
  }

  return result;
}

void sub_23F297994(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_23F2979AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_28518CC00, &unk_28518C438, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_27E395698, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27E395698))
      {
        sub_23F29C8FC();
      }
    }

    sub_23F2A31EC(a1, byte_27E395680, "trying to cast camera");
  }

  return result;
}

void sub_23F297C08(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_23F297C20(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_28518CC00, &unk_28518BDE8, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_27E3956B8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27E3956B8))
      {
        sub_23F29CD7C();
      }
    }

    sub_23F2A31EC(a1, byte_27E3956A0, "trying to cast camera");
  }

  return result;
}

void sub_23F297E7C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_23F297E94(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_28518CC00, &unk_28518BFA8, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_27E3956D8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27E3956D8))
      {
        sub_23F29D13C();
      }
    }

    sub_23F2A31EC(a1, byte_27E3956C0, "trying to cast camera");
  }

  return result;
}

void sub_23F2980F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_23F298108(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_28518CC00, &unk_28518BEF8, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_27E3956F8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27E3956F8))
      {
        sub_23F29D524();
      }
    }

    sub_23F2A31EC(a1, byte_27E3956E0, "trying to cast camera");
  }

  return result;
}

void sub_23F298364(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_23F29837C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_28518CC00, &unk_28518C0B8, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_27E395718, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27E395718))
      {
        sub_23F29D8E4();
      }
    }

    sub_23F2A31EC(a1, byte_27E395700, "trying to cast camera");
  }

  return result;
}

void sub_23F2985D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void (**sub_23F2985F0(void (**a1)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*a1)
  {
    (*a1)(0, a1, 0, 0, 0);
  }

  return a1;
}

void sub_23F298638(uint64_t a1)
{
  v1 = *a1;
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (*a1 > 99)
  {
    if (v1 > 109)
    {
      if (v1 == 110)
      {
        if (v3)
        {
          v25 = v3(3, v2, 0, &unk_28517A998, &unk_23F312A08);
          if (v25)
          {
            sub_23F29E84C(v25);
            operator new();
          }
        }
      }

      else if (v3)
      {
        v43 = v3(3, v2, 0, &unk_28517A9E8, &unk_23F312AE0);
        if (v43)
        {
          sub_23F29E968(v43);
          operator new();
        }
      }
    }

    else if (v1 == 100)
    {
      if (v3)
      {
        v16 = v3(3, v2, 0, &unk_28517A8F8, &unk_23F312858);
        if (v16)
        {
          sub_23F29E84C(v16);
          operator new();
        }
      }
    }

    else if (v3)
    {
      v34 = v3(3, v2, 0, &unk_28517A948, &unk_23F312930);
      if (v34)
      {
        sub_23F29E968(v34);
        operator new();
      }
    }
  }

  else if (v1 > 9)
  {
    if (v1 == 10)
    {
      if (v3)
      {
        v17 = v3(3, v2, 0, &unk_28517A858, &unk_23F3126AC);
        if (v17)
        {
          v18 = v17[2];
          v19 = v17[3];
          *&v20 = *v17;
          v21 = v17[1];
          __asm { FMOV            V2.2S, #1.0 }

          v23 = vdiv_f32(_D2, *v17);
          *(*&v19 + 48) = *v17;
          *(*&v19 + 64) = DWORD1(v20);
          *(&v20 + 1) = v21;
          *(*&v19 + 16) = v20;
          *(*&v19 + 32) = v23;
          *(*&v19 + 40) = vmul_f32(v23, vneg_f32(v21));
          *(*&v19 + 56) = 0;
          *(*&v19 + 52) = 0;
          *(*&v19 + 68) = 0;
          *(*&v19 + 72) = v21;
          *(*&v19 + 80) = 1065353216;
          *(*&v19 + 88) = v18;
          v24 = v17[3];
          operator new();
        }
      }
    }

    else if (v3)
    {
      v35 = v3(3, v2, 0, &unk_28517A8A8, &unk_23F312780);
      if (v35)
      {
        v36 = *(v35 + 32);
        v37 = *(v35 + 40);
        v38 = *v35;
        v39 = *(v35 + 16);
        __asm { FMOV            V2.2D, #1.0 }

        v41 = vdivq_f64(_Q2, *v35);
        *(v37 + 16) = *v35;
        *(v37 + 32) = v39;
        *(v37 + 48) = v41;
        *(v37 + 64) = vmulq_f64(v41, vnegq_f64(v39));
        *(v37 + 80) = v38.f64[0];
        *(v37 + 96) = 0;
        *(v37 + 104) = 0;
        *(v37 + 88) = 0;
        *(v37 + 112) = v38.f64[1];
        *(v37 + 120) = 0;
        *(v37 + 128) = v39;
        *(v37 + 144) = 0x3FF0000000000000;
        *(v37 + 152) = v36;
        v42 = *(v35 + 40);
        operator new();
      }
    }
  }

  else if (v1)
  {
    if (v3)
    {
      v26 = v3(3, v2, 0, &unk_28517A808, &unk_23F3125D8);
      if (v26)
      {
        v27 = *(v26 + 32);
        v28 = *(v26 + 40);
        v29 = *v26;
        v30 = *(v26 + 16);
        __asm { FMOV            V2.2D, #1.0 }

        v32 = vdivq_f64(_Q2, *v26);
        *(v28 + 16) = *v26;
        *(v28 + 32) = v30;
        *(v28 + 48) = v32;
        *(v28 + 64) = vmulq_f64(v32, vnegq_f64(v30));
        *(v28 + 80) = v29.f64[0];
        *(v28 + 96) = 0;
        *(v28 + 104) = 0;
        *(v28 + 88) = 0;
        *(v28 + 112) = v29.f64[1];
        *(v28 + 120) = 0;
        *(v28 + 128) = v30;
        *(v28 + 144) = 0x3FF0000000000000;
        *(v28 + 152) = v27;
        v33 = *(v26 + 40);
        operator new();
      }
    }
  }

  else if (v3)
  {
    v4 = v3(3, v2, 0, &unk_28517A7B8, &unk_23F312504);
    if (v4)
    {
      v5 = v4[2];
      v6 = v4[3];
      *&v7 = *v4;
      v8 = v4[1];
      __asm { FMOV            V2.2S, #1.0 }

      v14 = vdiv_f32(_D2, *v4);
      *(*&v6 + 48) = *v4;
      *(*&v6 + 64) = DWORD1(v7);
      *(&v7 + 1) = v8;
      *(*&v6 + 16) = v7;
      *(*&v6 + 32) = v14;
      *(*&v6 + 40) = vmul_f32(v14, vneg_f32(v8));
      *(*&v6 + 56) = 0;
      *(*&v6 + 52) = 0;
      *(*&v6 + 68) = 0;
      *(*&v6 + 72) = v8;
      *(*&v6 + 80) = 1065353216;
      *(*&v6 + 88) = v5;
      v15 = v4[3];
      operator new();
    }
  }

  sub_23EFC9F68();
}

int *sub_23F298FB0(int *result)
{
  v1 = *result;
  if (*result > 99)
  {
    if (v1 > 109)
    {
      if (v1 == 110)
      {
        operator new();
      }

      if (v1 == 111)
      {
        operator new();
      }
    }

    else
    {
      if (v1 == 100)
      {
        operator new();
      }

      if (v1 == 101)
      {
        operator new();
      }
    }
  }

  else if (v1 > 9)
  {
    if (v1 == 10)
    {
      operator new();
    }

    if (v1 == 11)
    {
      operator new();
    }
  }

  else
  {
    if (!v1)
    {
      operator new();
    }

    if (v1 == 1)
    {
      operator new();
    }
  }

  return result;
}

void sub_23F2997E0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = (*(**(a2 + 8) + 16))(*(a2 + 8));
  v5 = (*(**(a2 + 8) + 24))(*(a2 + 8));
  v6 = (*(**(a2 + 8) + 32))(*(a2 + 8));
  v7 = v4 == 1 && v5 == 1;
  v8 = !v7;
  if (v7 && v6 == 11)
  {
    *a1 = 0;
    v9 = sub_23F297250(a2);
    v27 = v9[1];
    *&v28 = *(v9 + 11);
    operator new();
  }

  if (v6 != 12)
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5 == 1;
    }

    v11 = !v10;
    if (v10 && v6 == 11)
    {
      *a1 = 10;
      v12 = sub_23F297738(a2);
      v27 = v12[1];
      *&v28 = *(v12 + 11);
      operator new();
    }

    if (v6 != 12)
    {
      v11 = 1;
    }

    if (v11)
    {
      v15 = v4 == 1 && v5 == 2;
      v16 = !v15;
      if (v15 && v6 == 11)
      {
        *a1 = 100;
        v17 = sub_23F297C20(a2);
        v18 = v17[2];
        v27 = v17[1];
        v28 = v18;
        *v29 = *(v17 + 12);
        *&v29[4] = *(v17 + 15);
        operator new();
      }

      if (v6 != 12)
      {
        v16 = 1;
      }

      if (v16)
      {
        if (v4)
        {
          v21 = 0;
        }

        else
        {
          v21 = v5 == 2;
        }

        v22 = !v21;
        if (v21 && v6 == 11)
        {
          *a1 = 110;
          v23 = sub_23F298108(a2);
          sub_23F29EAE4(&v27, v23);
        }

        if (v6 != 12)
        {
          v22 = 1;
        }

        if ((v22 & 1) == 0)
        {
          *a1 = 111;
          v25 = sub_23F29837C(a2);
          sub_23F29ED08(&v27, v25);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278C744A8, MEMORY[0x277D82610]);
      }

      *a1 = 101;
      v24 = sub_23F297E94(a2);
      sub_23F29EBE4(&v27, v24);
    }

    *a1 = 11;
    v19 = sub_23F2979AC(a2);
    v20 = v19[2];
    v27 = v19[1];
    v28 = v20;
    *v29 = *(v19 + 19);
    operator new();
  }

  *a1 = 1;
  v13 = sub_23F2974C4(a2);
  v14 = v13[2];
  v27 = v13[1];
  v28 = v14;
  *v29 = *(v13 + 19);
  operator new();
}

void sub_23F299F54(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_23F2985F0(v1);
  _Unwind_Resume(a1);
}

void sub_23F299F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F29EA6C(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F299F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F29E8F0(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F299FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F29EA6C(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F299FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F29E8F0(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F29A01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F2A09B4(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F29A04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0633AC(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F29A07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F2A09B4(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F29A0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0633AC(&a9);
  sub_23F2985F0(v9);
  _Unwind_Resume(a1);
}

void sub_23F29A12C(uint64_t a1)
{
  v1 = *a1;
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (*a1 > 99)
  {
    if (v1 > 109)
    {
      if (v1 == 110)
      {
        if (v3)
        {
          v25 = v3(3, v2, 0, &unk_28517A998, &unk_23F312A08);
          if (v25)
          {
            sub_23F29E84C(v25);
            operator new();
          }
        }
      }

      else if (v3)
      {
        v43 = v3(3, v2, 0, &unk_28517A9E8, &unk_23F312AE0);
        if (v43)
        {
          sub_23F29E968(v43);
          operator new();
        }
      }
    }

    else if (v1 == 100)
    {
      if (v3)
      {
        v16 = v3(3, v2, 0, &unk_28517A8F8, &unk_23F312858);
        if (v16)
        {
          sub_23F29E84C(v16);
          operator new();
        }
      }
    }

    else if (v3)
    {
      v34 = v3(3, v2, 0, &unk_28517A948, &unk_23F312930);
      if (v34)
      {
        sub_23F29E968(v34);
        operator new();
      }
    }
  }

  else if (v1 > 9)
  {
    if (v1 == 10)
    {
      if (v3)
      {
        v17 = v3(3, v2, 0, &unk_28517A858, &unk_23F3126AC);
        if (v17)
        {
          v18 = v17[2];
          v19 = v17[3];
          *&v20 = *v17;
          v21 = v17[1];
          __asm { FMOV            V2.2S, #1.0 }

          v23 = vdiv_f32(_D2, *v17);
          *(*&v19 + 48) = *v17;
          *(*&v19 + 64) = DWORD1(v20);
          *(&v20 + 1) = v21;
          *(*&v19 + 16) = v20;
          *(*&v19 + 32) = v23;
          *(*&v19 + 40) = vmul_f32(v23, vneg_f32(v21));
          *(*&v19 + 56) = 0;
          *(*&v19 + 52) = 0;
          *(*&v19 + 68) = 0;
          *(*&v19 + 72) = v21;
          *(*&v19 + 80) = 1065353216;
          *(*&v19 + 88) = v18;
          v24 = v17[3];
          operator new();
        }
      }
    }

    else if (v3)
    {
      v35 = v3(3, v2, 0, &unk_28517A8A8, &unk_23F312780);
      if (v35)
      {
        v36 = *(v35 + 32);
        v37 = *(v35 + 40);
        v38 = *v35;
        v39 = *(v35 + 16);
        __asm { FMOV            V2.2D, #1.0 }

        v41 = vdivq_f64(_Q2, *v35);
        *(v37 + 16) = *v35;
        *(v37 + 32) = v39;
        *(v37 + 48) = v41;
        *(v37 + 64) = vmulq_f64(v41, vnegq_f64(v39));
        *(v37 + 80) = v38.f64[0];
        *(v37 + 96) = 0;
        *(v37 + 104) = 0;
        *(v37 + 88) = 0;
        *(v37 + 112) = v38.f64[1];
        *(v37 + 120) = 0;
        *(v37 + 128) = v39;
        *(v37 + 144) = 0x3FF0000000000000;
        *(v37 + 152) = v36;
        v42 = *(v35 + 40);
        operator new();
      }
    }
  }

  else if (v1)
  {
    if (v3)
    {
      v26 = v3(3, v2, 0, &unk_28517A808, &unk_23F3125D8);
      if (v26)
      {
        v27 = *(v26 + 32);
        v28 = *(v26 + 40);
        v29 = *v26;
        v30 = *(v26 + 16);
        __asm { FMOV            V2.2D, #1.0 }

        v32 = vdivq_f64(_Q2, *v26);
        *(v28 + 16) = *v26;
        *(v28 + 32) = v30;
        *(v28 + 48) = v32;
        *(v28 + 64) = vmulq_f64(v32, vnegq_f64(v30));
        *(v28 + 80) = v29.f64[0];
        *(v28 + 96) = 0;
        *(v28 + 104) = 0;
        *(v28 + 88) = 0;
        *(v28 + 112) = v29.f64[1];
        *(v28 + 120) = 0;
        *(v28 + 128) = v30;
        *(v28 + 144) = 0x3FF0000000000000;
        *(v28 + 152) = v27;
        v33 = *(v26 + 40);
        operator new();
      }
    }
  }

  else if (v3)
  {
    v4 = v3(3, v2, 0, &unk_28517A7B8, &unk_23F312504);
    if (v4)
    {
      v5 = v4[2];
      v6 = v4[3];
      *&v7 = *v4;
      v8 = v4[1];
      __asm { FMOV            V2.2S, #1.0 }

      v14 = vdiv_f32(_D2, *v4);
      *(*&v6 + 48) = *v4;
      *(*&v6 + 64) = DWORD1(v7);
      *(&v7 + 1) = v8;
      *(*&v6 + 16) = v7;
      *(*&v6 + 32) = v14;
      *(*&v6 + 40) = vmul_f32(v14, vneg_f32(v8));
      *(*&v6 + 56) = 0;
      *(*&v6 + 52) = 0;
      *(*&v6 + 68) = 0;
      *(*&v6 + 72) = v8;
      *(*&v6 + 80) = 1065353216;
      *(*&v6 + 88) = v5;
      v15 = v4[3];
      operator new();
    }
  }

  sub_23EFC9F68();
}

uint64_t sub_23F29AAA4(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    sub_23F29A12C(a1);
  }

  return 0;
}

void sub_23F29AC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F2A1D40(&a9);
  sub_23F2A1D40(&a12);
  _Unwind_Resume(a1);
}

void sub_23F29AC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F2A1D40(va);
  _Unwind_Resume(a1);
}

int *sub_23F29AC30(int *result)
{
  v1 = *result;
  if (*result > 99)
  {
    if (v1 > 109)
    {
      if (v1 == 110)
      {
        operator new();
      }

      if (v1 == 111)
      {
        operator new();
      }
    }

    else
    {
      if (v1 == 100)
      {
        operator new();
      }

      if (v1 == 101)
      {
        operator new();
      }
    }
  }

  else if (v1 > 9)
  {
    if (v1 == 10)
    {
      operator new();
    }

    if (v1 == 11)
    {
      operator new();
    }
  }

  else
  {
    if (!v1)
    {
      operator new();
    }

    if (v1 == 1)
    {
      operator new();
    }
  }

  return result;
}

void *sub_23F29B460(void *a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 99)
  {
    if (v2 > 109)
    {
      if (v2 == 110)
      {
        v3 = "CornerHeikkilaF";
        v4 = 15;
        return sub_23EF2F9B0(a1, v3, v4);
      }

      if (v2 == 111)
      {
        v3 = "CornerHeikkilaD";
        v4 = 15;
        return sub_23EF2F9B0(a1, v3, v4);
      }
    }

    else
    {
      if (v2 == 100)
      {
        v3 = "CenterHeikkilaF";
        v4 = 15;
        return sub_23EF2F9B0(a1, v3, v4);
      }

      if (v2 == 101)
      {
        v3 = "CenterHeikkilaD";
        v4 = 15;
        return sub_23EF2F9B0(a1, v3, v4);
      }
    }

LABEL_21:
    v3 = "invalid camera type";
    v4 = 19;
    return sub_23EF2F9B0(a1, v3, v4);
  }

  if (v2 > 9)
  {
    if (v2 == 10)
    {
      v3 = "CornerPinholeF";
      v4 = 14;
      return sub_23EF2F9B0(a1, v3, v4);
    }

    if (v2 == 11)
    {
      v3 = "CornerPinholeD";
      v4 = 14;
      return sub_23EF2F9B0(a1, v3, v4);
    }

    goto LABEL_21;
  }

  if (!v2)
  {
    v3 = "CenterPinholeF";
    v4 = 14;
    return sub_23EF2F9B0(a1, v3, v4);
  }

  if (v2 != 1)
  {
    goto LABEL_21;
  }

  v3 = "CenterPinholeD";
  v4 = 14;
  return sub_23EF2F9B0(a1, v3, v4);
}

uint64_t *sub_23F29B548(uint64_t *a1, _DWORD *a2)
{
  if ((atomic_load_explicit(&qword_27E395EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395EE0))
  {
    sub_23F29B7FC();
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_23F04A2C0(a1, &__p);
  v4 = qword_27E395EF0;
  if (!qword_27E395EF0)
  {
    goto LABEL_41;
  }

  if (v26 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v26 >= 0)
  {
    v6 = HIBYTE(v26);
  }

  else
  {
    v6 = v25;
  }

  v7 = &qword_27E395EF0;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_27E395EF0)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v20 = std::string::append(&v22, ", expected [Center|Corner][Pinhole|Heikkila][F|D]", 0x31uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v23);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278C744A8, MEMORY[0x277D82610]);
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 14);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_23F29B784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_8:
      if (a27 < 0)
      {
        operator delete(a22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

void sub_23F29B7FC()
{
  qword_27E395EF0 = 0;
  v0 = xmmword_23F342FD0;
  v1 = unk_23F342FE0;
  qword_27E395EF8 = 0;
  qword_27E395EE8 = &qword_27E395EF0;
  v2 = 0;
  sub_23EFC9AD8();
}

void sub_23F29BB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_23F05CB64(qword_27E395EF0);
    _Unwind_Resume(a1);
  }

  sub_23F05CB64(qword_27E395EF0);
  _Unwind_Resume(a1);
}

void sub_23F29BC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F29BC80(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float32");
  sub_23F302E84("cv3d::kit::cam::PixelOrigin::Center]", 35, &v13);
  sub_23EF42150(__p, v11, 2uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v12 < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F29BDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_23EF3291C(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void *sub_23F29BE18(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v12 = a2[1];
      operator new();
    }

    v7 = a2;
    v8 = a2[1];
    v9 = v8[4];
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = v10;
      }
    }

    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v11 = a2[1];
      *a3 = sub_23F29BE18;
      a3[1] = v11;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28517A7B8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit5camio19PinholeCameraSampleIfLNS0_3cam11PixelOriginE1ELj2EEE")
      {
        if (((v5 & "N4cv3d3kit5camio19PinholeCameraSampleIfLNS0_3cam11PixelOriginE1ELj2EEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit5camio19PinholeCameraSampleIfLNS0_3cam11PixelOriginE1ELj2EEE"))
        {
          return 0;
        }

        v13 = a2;
        v14 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5camio19PinholeCameraSampleIfLNS0_3cam11PixelOriginE1ELj2EEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v13;
        if (v14)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F312504)
    {
      return 0;
    }

    return a2[1];
  }

  return result;
}

void sub_23F29C0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F29C100(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float64");
  sub_23F302E84("cv3d::kit::cam::PixelOrigin::Center]", 35, &v13);
  sub_23EF42150(__p, v11, 2uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v12 < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F29C23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_23EF3291C(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void *sub_23F29C298(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v12 = a2[1];
      operator new();
    }

    v7 = a2;
    v8 = a2[1];
    v9 = v8[6];
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = v10;
      }
    }

    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v11 = a2[1];
      *a3 = sub_23F29C298;
      a3[1] = v11;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28517A808;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit5camio19PinholeCameraSampleIdLNS0_3cam11PixelOriginE1ELj2EEE")
      {
        if (((v5 & "N4cv3d3kit5camio19PinholeCameraSampleIdLNS0_3cam11PixelOriginE1ELj2EEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit5camio19PinholeCameraSampleIdLNS0_3cam11PixelOriginE1ELj2EEE"))
        {
          return 0;
        }

        v13 = a2;
        v14 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5camio19PinholeCameraSampleIdLNS0_3cam11PixelOriginE1ELj2EEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v13;
        if (v14)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3125D8)
    {
      return 0;
    }

    return a2[1];
  }

  return result;
}

void sub_23F29C550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F29C580(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float32");
  sub_23F302E84("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v13);
  sub_23EF42150(__p, v11, 2uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v12 < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F29C6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_23EF3291C(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void *sub_23F29C718(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v12 = a2[1];
      operator new();
    }

    v7 = a2;
    v8 = a2[1];
    v9 = v8[4];
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = v10;
      }
    }

    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v11 = a2[1];
      *a3 = sub_23F29C718;
      a3[1] = v11;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28517A858;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit5camio19PinholeCameraSampleIfLNS0_3cam11PixelOriginE0ELj2EEE")
      {
        if (((v5 & "N4cv3d3kit5camio19PinholeCameraSampleIfLNS0_3cam11PixelOriginE0ELj2EEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit5camio19PinholeCameraSampleIfLNS0_3cam11PixelOriginE0ELj2EEE"))
        {
          return 0;
        }

        v13 = a2;
        v14 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5camio19PinholeCameraSampleIfLNS0_3cam11PixelOriginE0ELj2EEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v13;
        if (v14)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3126AC)
    {
      return 0;
    }

    return a2[1];
  }

  return result;
}

void sub_23F29C9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F29CA00(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float64");
  sub_23F302E84("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v13);
  sub_23EF42150(__p, v11, 2uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v12 < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F29CB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_23EF3291C(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void *sub_23F29CB98(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v12 = a2[1];
      operator new();
    }

    v7 = a2;
    v8 = a2[1];
    v9 = v8[6];
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = v10;
      }
    }

    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v11 = a2[1];
      *a3 = sub_23F29CB98;
      a3[1] = v11;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28517A8A8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit5camio19PinholeCameraSampleIdLNS0_3cam11PixelOriginE0ELj2EEE")
      {
        if (((v5 & "N4cv3d3kit5camio19PinholeCameraSampleIdLNS0_3cam11PixelOriginE0ELj2EEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit5camio19PinholeCameraSampleIdLNS0_3cam11PixelOriginE0ELj2EEE"))
        {
          return 0;
        }

        v13 = a2;
        v14 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5camio19PinholeCameraSampleIdLNS0_3cam11PixelOriginE0ELj2EEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v13;
        if (v14)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F312780)
    {
      return 0;
    }

    return a2[1];
  }

  return result;
}

void sub_23F29CE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F29CE80(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v12 = a2[1];
      operator new();
    }

    v7 = a2;
    v8 = a2[1];
    v9 = v8[7];
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = v10;
      }
    }

    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v11 = a2[1];
      *a3 = sub_23F29CE80;
      a3[1] = v11;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28517A8F8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit5camio20HeikkilaCameraSampleIfLNS0_3cam11PixelOriginE1ELj2EEE")
      {
        if (((v5 & "N4cv3d3kit5camio20HeikkilaCameraSampleIfLNS0_3cam11PixelOriginE1ELj2EEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit5camio20HeikkilaCameraSampleIfLNS0_3cam11PixelOriginE1ELj2EEE"))
        {
          return 0;
        }

        v13 = a2;
        v14 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5camio20HeikkilaCameraSampleIfLNS0_3cam11PixelOriginE1ELj2EEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v13;
        if (v14)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F312858)
    {
      return 0;
    }

    return a2[1];
  }

  return result;
}

void sub_23F29D210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F29D240(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v12 = a2[1];
      operator new();
    }

    v7 = a2;
    v8 = a2[1];
    v9 = v8[11];
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = v10;
      }
    }

    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v11 = a2[1];
      *a3 = sub_23F29D240;
      a3[1] = v11;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28517A948;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit5camio20HeikkilaCameraSampleIdLNS0_3cam11PixelOriginE1ELj2EEE")
      {
        if (((v5 & "N4cv3d3kit5camio20HeikkilaCameraSampleIdLNS0_3cam11PixelOriginE1ELj2EEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit5camio20HeikkilaCameraSampleIdLNS0_3cam11PixelOriginE1ELj2EEE"))
        {
          return 0;
        }

        v13 = a2;
        v14 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5camio20HeikkilaCameraSampleIdLNS0_3cam11PixelOriginE1ELj2EEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v13;
        if (v14)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F312930)
    {
      return 0;
    }

    return a2[1];
  }

  return result;
}

void sub_23F29D5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F29D628(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v12 = a2[1];
      operator new();
    }

    v7 = a2;
    v8 = a2[1];
    v9 = v8[7];
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = v10;
      }
    }

    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v11 = a2[1];
      *a3 = sub_23F29D628;
      a3[1] = v11;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28517A998;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit5camio20HeikkilaCameraSampleIfLNS0_3cam11PixelOriginE0ELj2EEE")
      {
        if (((v5 & "N4cv3d3kit5camio20HeikkilaCameraSampleIfLNS0_3cam11PixelOriginE0ELj2EEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit5camio20HeikkilaCameraSampleIfLNS0_3cam11PixelOriginE0ELj2EEE"))
        {
          return 0;
        }

        v13 = a2;
        v14 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5camio20HeikkilaCameraSampleIfLNS0_3cam11PixelOriginE0ELj2EEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v13;
        if (v14)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F312A08)
    {
      return 0;
    }

    return a2[1];
  }

  return result;
}

void sub_23F29D9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F29D9E8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v12 = a2[1];
      operator new();
    }

    v7 = a2;
    v8 = a2[1];
    v9 = v8[11];
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = v10;
      }
    }

    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v11 = a2[1];
      *a3 = sub_23F29D9E8;
      a3[1] = v11;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28517A9E8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit5camio20HeikkilaCameraSampleIdLNS0_3cam11PixelOriginE0ELj2EEE")
      {
        if (((v5 & "N4cv3d3kit5camio20HeikkilaCameraSampleIdLNS0_3cam11PixelOriginE0ELj2EEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit5camio20HeikkilaCameraSampleIdLNS0_3cam11PixelOriginE0ELj2EEE"))
        {
          return 0;
        }

        v13 = a2;
        v14 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5camio20HeikkilaCameraSampleIdLNS0_3cam11PixelOriginE0ELj2EEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v13;
        if (v14)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F312AE0)
    {
      return 0;
    }

    return a2[1];
  }

  return result;
}

void sub_23F29DCEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518BD10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29DE70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518BAE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29DFF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518BB30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29E150(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518BB80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29E2AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518BBD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29E430(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518BC20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29E5B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518BC70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29E710(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518BCC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F29E84C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  v4 = *(a1 + 32);
  v6 = v3 == 0.0 && v2 == 0.0;
  *&v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 36);
  v10 = *(a1 + 48);
  *(v10 + 92) = HIDWORD(*a1);
  __asm { FMOV            V5.2S, #1.0 }

  v15 = vdiv_f32(_D5, *&v7);
  *(v10 + 76) = v7;
  *(&v7 + 1) = v8;
  *(v10 + 16) = v7;
  *(v10 + 32) = v1;
  *(v10 + 40) = v2;
  *(v10 + 44) = v3;
  *(v10 + 48) = v4;
  *(v10 + 52) = 0xA3727C5ACLL;
  *(v10 + 60) = v15;
  *(v10 + 68) = vmul_f32(v15, vneg_f32(v8));
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 100) = v8;
  *(v10 + 108) = 1065353216;
  *(v10 + 112) = v6 && v4 == 0.0;
  *(v10 + 113) = v4 == 0.0;
  *(v10 + 120) = v9;
  return *(a1 + 48);
}

uint64_t sub_23F29E8F0(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_23F29E968(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v1 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = v3 == 0.0;
  if (v4 != 0.0)
  {
    v6 = 0;
  }

  v7 = *a1;
  __asm { FMOV            V6.2D, #1.0 }

  v13 = vdivq_f64(_Q6, *a1);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v2;
  *(v15 + 48) = v1;
  *(v15 + 64) = v3;
  *(v15 + 72) = v4;
  *(v15 + 80) = v5;
  *(v15 + 88) = 0x3EE4F8B588E368F1;
  *(v15 + 96) = 10;
  *(v15 + 104) = v13;
  *(v15 + 120) = vmulq_f64(v13, vnegq_f64(v2));
  *(v15 + 136) = v7.f64[0];
  *(v15 + 160) = 0;
  *(v15 + 168) = v7.f64[1];
  *(v15 + 144) = 0uLL;
  *(v15 + 176) = 0;
  *(v15 + 184) = v2;
  *(v15 + 200) = 0x3FF0000000000000;
  *(v15 + 208) = v6 && v5 == 0.0;
  *(v15 + 209) = v5 == 0.0;
  *(v15 + 216) = v14;
  result = *(a1 + 80);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F29EA6C(uint64_t result)
{
  v1 = *(result + 88);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F29EAE4(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  v2 = *(a2 + 32);
  *(a1 + 32) = *(a2 + 48);
  *(a1 + 16) = v2;
  *(a1 + 36) = *(a2 + 120);
  operator new();
}

void sub_23F29EBE4(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 16) = *(a2 + 32);
  v2 = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 64) = *(a2 + 80);
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 72) = *(a2 + 216);
  operator new();
}

void sub_23F29ED08(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 16) = *(a2 + 32);
  v2 = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 64) = *(a2 + 80);
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 72) = *(a2 + 216);
  operator new();
}

void sub_23F29EE4C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C460;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29EEE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29EF84(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29F020(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29F0BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C5A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29F158(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C5F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29F1F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C640;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29F290(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C690;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F29F4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F29F538(void *a1, uint64_t a2)
{
  sub_23EF2F9B0(a1, "{fx,fy: ", 8);
  v3 = *(a2 + 8);
  sub_23F29F608();
}

void sub_23F29F884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F29FB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F29FC10(uint64_t a1, uint64_t a2, float *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v3))(&v17);
  sub_23EF8158C(&v12, a2, a3);
  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v6))(&v17, a2);
  sub_23EF8158C(&v12, a2, a3 + 1);
  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v7))(&v17, a2);
  sub_23EF8158C(&v12, a2, a3 + 2);
  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v8))(&v17, a2);
  sub_23EF8158C(&v12, a2, a3 + 3);
  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v9))(&v17, a2);
  sub_23EF8158C(&v12, a2, a3 + 4);
  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_8:
    sub_23EF41D6C();
  }

  v17 = &v12;
  return (*(&off_28518C6E8 + v10))(&v17, a2);
}

void sub_23F29FFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A0008(void *a1, uint64_t a2)
{
  sub_23EF2F9B0(a1, "{fx,fy: ", 8);
  v3 = *(a2 + 8);
  sub_23F2A00DC();
}

void sub_23F2A0358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2A03E0(uint64_t a1, uint64_t a2, double *a3)
{
  v9 = a2;
  v10 = "{";
  v11 = a2;
  v12 = "{";
  v13 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_5;
  }

  v14 = &v9;
  (*(&off_28518C6E8 + v3))(&v14);
  sub_23F05B5C8(&v9, a2, a3);
  v9 = a2;
  v10 = ",";
  v11 = a2;
  v12 = ",";
  v13 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_5;
  }

  v14 = &v9;
  (*(&off_28518C6E8 + v6))(&v14, a2);
  sub_23F05B5C8(&v9, a2, a3 + 1);
  v9 = a2;
  v10 = "}";
  v11 = a2;
  v12 = "}";
  v13 = "}";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
LABEL_5:
    sub_23EF41D6C();
  }

  v14 = &v9;
  return (*(&off_28518C6E8 + v7))(&v14, a2);
}

void sub_23F2A0760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2A07E8(uint64_t a1, uint64_t a2, double *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v3))(&v17);
  sub_23F05B5C8(&v12, a2, a3);
  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v6))(&v17, a2);
  sub_23F05B5C8(&v12, a2, a3 + 1);
  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v7))(&v17, a2);
  sub_23F05B5C8(&v12, a2, a3 + 2);
  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v8))(&v17, a2);
  sub_23F05B5C8(&v12, a2, a3 + 3);
  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
    goto LABEL_8;
  }

  v17 = &v12;
  (*(&off_28518C6E8 + v9))(&v17, a2);
  sub_23F05B5C8(&v12, a2, a3 + 4);
  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_8:
    sub_23EF41D6C();
  }

  v17 = &v12;
  return (*(&off_28518C6E8 + v10))(&v17, a2);
}

uint64_t sub_23F2A09B4(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F2A0A2C(void *a1, float32x2_t *a2)
{
  *&v4 = *a2;
  v5 = a2[1];
  __asm { FMOV            V2.2S, #1.0 }

  v11 = vdiv_f32(_D2, *a2);
  v17 = a2->u32[0];
  *&v18 = DWORD1(v4);
  *(&v4 + 1) = v5;
  v15 = v4;
  *&v16 = v11;
  *(&v16 + 1) = vmul_f32(v11, vneg_f32(v5));
  *(&v18 + 1) = v5;
  v19 = 1065353216;
  v12 = a2[2];
  v13 = a2[3];
  v20 = &unk_28518C190;
  v25 = 1065353216;
  v23 = v17;
  v24 = v18;
  v21 = v4;
  v22 = v16;
  v26 = v12;
  memmove((*&v13 + 16), &v15, 0x44uLL);
  *(*&v13 + 88) = v26;
  v14 = a2[3];
  *a1 = v14[2];
  a1[1] = v14[3];
  a1[2] = v14[11];
  operator new();
}

void sub_23F2A0BEC(void *a1, float32x2_t *a2)
{
  *&v4 = *a2;
  v5 = a2[1];
  __asm { FMOV            V2.2S, #1.0 }

  v11 = vdiv_f32(_D2, *a2);
  v17 = a2->u32[0];
  *&v18 = DWORD1(v4);
  *(&v4 + 1) = v5;
  v15 = v4;
  *&v16 = v11;
  *(&v16 + 1) = vmul_f32(v11, vneg_f32(v5));
  *(&v18 + 1) = v5;
  v19 = 1065353216;
  v12 = a2[2];
  v13 = a2[3];
  v20 = &unk_28518C190;
  v25 = 1065353216;
  v23 = v17;
  v24 = v18;
  v21 = v4;
  v22 = v16;
  v26 = v12;
  memmove((*&v13 + 16), &v15, 0x44uLL);
  *(*&v13 + 88) = v26;
  v14 = a2[3];
  *a1 = v14[2];
  a1[1] = v14[3];
  a1[2] = v14[11];
  operator new();
}

void sub_23F2A0DAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v4;
  __asm { FMOV            V2.2D, #1.0 }

  v14 = vdivq_f64(_Q2, v13[0]);
  v15 = vmulq_f64(v14, vnegq_f64(v4));
  v16 = *&v13[0].f64[0];
  v17 = 0uLL;
  v18 = v13[0].f64[1];
  v19 = 0;
  v20 = v4;
  v21 = 0x3FF0000000000000;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v22 = &unk_28518C350;
  v29 = *&v13[0].f64[1];
  v30 = v4;
  v27 = *&v13[0].f64[0];
  v28 = 0uLL;
  v23 = v13[0];
  v24 = v4;
  v25 = v14;
  v26 = v15;
  v31 = 0x3FF0000000000000;
  v32 = v10;
  memmove((v11 + 16), v13, 0x88uLL);
  *(v11 + 152) = v32;
  v12 = *(a2 + 40);
  *a1 = *(v12 + 16);
  *(a1 + 16) = *(v12 + 32);
  *(a1 + 32) = *(v12 + 152);
  operator new();
}

void sub_23F2A0F9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v4;
  __asm { FMOV            V2.2D, #1.0 }

  v14 = vdivq_f64(_Q2, v13[0]);
  v15 = vmulq_f64(v14, vnegq_f64(v4));
  v16 = *&v13[0].f64[0];
  v17 = 0uLL;
  v18 = v13[0].f64[1];
  v19 = 0;
  v20 = v4;
  v21 = 0x3FF0000000000000;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v22 = &unk_28518C350;
  v29 = *&v13[0].f64[1];
  v30 = v4;
  v27 = *&v13[0].f64[0];
  v28 = 0uLL;
  v23 = v13[0];
  v24 = v4;
  v25 = v14;
  v26 = v15;
  v31 = 0x3FF0000000000000;
  v32 = v10;
  memmove((v11 + 16), v13, 0x88uLL);
  *(v11 + 152) = v32;
  v12 = *(a2 + 40);
  *a1 = *(v12 + 16);
  *(a1 + 16) = *(v12 + 32);
  *(a1 + 32) = *(v12 + 152);
  operator new();
}

void sub_23F2A11AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2A1248(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2A12E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C7C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2A1380(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2A141C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2A14B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C8B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2A1554(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2A15F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518C958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2A18A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A1B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F2A1D40(void *result)
{
  *result = &unk_28518C9A8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F2A1DD4(void *a1)
{
  *a1 = &unk_28518C9A8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

BOOL sub_23F2A1E7C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != (*(**(a2 + 8) + 16))(*(a2 + 8)))
  {
    return 0;
  }

  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (v5 != (*(**(a2 + 8) + 24))(*(a2 + 8)))
  {
    return 0;
  }

  v6 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (v6 != (*(**(a2 + 8) + 32))(*(a2 + 8)))
  {
    return 0;
  }

  v110 = 0;
  v7 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v8 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if (v7 == 1 && v9 == 11)
      {
        v61 = *(a1 + 8);
        if (!v61)
        {
          return v110;
        }

        v62 = **v61;
        v63 = __dynamic_cast(v61, &unk_28518CC00, &unk_28518CA08, 0);
        if (!v63)
        {
          return v110;
        }

        v64 = v63;
        v65 = *(a2 + 8);
        if (!v65 || (v66 = **v65, (v67 = __dynamic_cast(v65, &unk_28518CC00, &unk_28518CA08, 0)) == 0))
        {
          sub_23F2A5740();
          sub_23F2A31EC(a2, byte_27E395F40, "trying to cast camera");
        }
      }

      else
      {
        if (v7 == 1 && v9 == 12)
        {
          v89 = *(a1 + 8);
          if (!v89)
          {
            return v110;
          }

          v90 = **v89;
          v91 = __dynamic_cast(v89, &unk_28518CC00, &unk_28518CA38, 0);
          if (!v91)
          {
            return v110;
          }

          v92 = v91;
          v93 = *(a2 + 8);
          if (!v93 || (v94 = **v93, (v95 = __dynamic_cast(v93, &unk_28518CC00, &unk_28518CA38, 0)) == 0))
          {
            sub_23F2A5A7C();
            sub_23F2A31EC(a2, byte_27E395F58, "trying to cast camera");
          }

          if (v92[2] == v95[2] && v92[3] == v95[3] && v92[4] == v95[4] && v92[5] == v95[5] && v92[6] == v95[6] && v92[7] == v95[7] && v92[8] == v95[8] && v92[9] == v95[9] && *(v92 + 10) == *(v95 + 10) && *(v92 + 48) == *(v95 + 48))
          {
            return *(v92 + 49) == *(v95 + 49);
          }

          return 0;
        }

        if (v7)
        {
          v36 = 0;
        }

        else
        {
          v36 = v9 == 11;
        }

        if (!v36)
        {
          if (!v7 && v9 == 12)
          {
            v37 = sub_23F2A5068(*(a1 + 8));
            sub_23F2A4F10(&v110, a2, v37, v38);
          }

          return v110;
        }

        v105 = *(a1 + 8);
        if (!v105)
        {
          return v110;
        }

        v106 = **v105;
        v107 = __dynamic_cast(v105, &unk_28518CC00, &unk_28518CA68, 0);
        if (!v107)
        {
          return v110;
        }

        v64 = v107;
        v108 = *(a2 + 8);
        if (!v108 || (v109 = **v108, (v67 = __dynamic_cast(v108, &unk_28518CC00, &unk_28518CA68, 0)) == 0))
        {
          sub_23F2A5DB8();
          sub_23F2A31EC(a2, byte_27E395F70, "trying to cast camera");
        }
      }

      if (v64[4] != v67[4] || v64[5] != v67[5] || v64[6] != v67[6] || v64[7] != v67[7] || v64[8] != v67[8] || v64[9] != v67[9] || v64[10] != v67[10] || v64[11] != v67[11] || *(v64 + 6) != *(v67 + 6) || *(v64 + 28) != *(v67 + 28))
      {
        return 0;
      }

      return *(v64 + 29) == *(v67 + 29);
    }

    if (v8 == 4)
    {
      if (v7 == 1 && v9 == 11)
      {
        v47 = *(a1 + 8);
        if (!v47)
        {
          return v110;
        }

        v48 = **v47;
        v49 = __dynamic_cast(v47, &unk_28518CC00, &unk_28518CAC8, 0);
        if (!v49)
        {
          return v110;
        }

        v50 = v49;
        v51 = *(a2 + 8);
        if (!v51 || (v52 = **v51, (v53 = __dynamic_cast(v51, &unk_28518CC00, &unk_28518CAC8, 0)) == 0))
        {
          sub_23F2A6430();
          sub_23F2A31EC(a2, byte_27E395FA0, "trying to cast camera");
        }

        if (v50[4] != v53[4] || v50[5] != v53[5] || v50[6] != v53[6] || v50[7] != v53[7] || v50[8] != v53[8] || v50[9] != v53[9] || v50[10] != v53[10] || v50[11] != v53[11] || v50[12] != v53[12] || v50[13] != v53[13] || v50[14] != v53[14] || *(v50 + 8) != *(v53 + 8) || *(v50 + 32) != *(v53 + 32))
        {
          return 0;
        }

        return *(v50 + 33) == *(v53 + 33);
      }

      else
      {
        if (v7 == 1 && v9 == 12)
        {
          v75 = *(a1 + 8);
          if (!v75)
          {
            return v110;
          }

          v76 = **v75;
          v77 = __dynamic_cast(v75, &unk_28518CC00, &unk_28518CAF8, 0);
          if (!v77)
          {
            return v110;
          }

          v78 = v77;
          v79 = *(a2 + 8);
          if (!v79 || (v80 = **v79, (v81 = __dynamic_cast(v79, &unk_28518CC00, &unk_28518CAF8, 0)) == 0))
          {
            sub_23F2A676C();
            sub_23F2A31EC(a2, byte_27E395FB8, "trying to cast camera");
          }

          if (v78[2] == v81[2] && v78[3] == v81[3] && v78[4] == v81[4] && v78[5] == v81[5] && v78[6] == v81[6] && v78[7] == v81[7] && v78[8] == v81[8] && v78[9] == v81[9] && v78[10] == v81[10] && v78[11] == v81[11] && v78[12] == v81[12] && *(v78 + 13) == *(v81 + 13) && *(v78 + 54) == *(v81 + 54))
          {
            return *(v78 + 55) == *(v81 + 55);
          }

          return 0;
        }

        if (v7 || v9 != 11)
        {
          if (!v7 && v9 == 12)
          {
            v98 = sub_23F2A5278(*(a1 + 8));
            sub_23F2A50F0(&v110, a2, v98, v99);
          }

          return v110;
        }

        v22 = *(a1 + 8);
        if (v22)
        {
          v23 = **v22;
          v24 = __dynamic_cast(v22, &unk_28518CC00, &unk_28518CB28, 0);
          if (v24)
          {
            v25 = v24;
            v26 = *(a2 + 8);
            if (!v26 || (v27 = **v26, (v28 = __dynamic_cast(v26, &unk_28518CC00, &unk_28518CB28, 0)) == 0))
            {
              sub_23F2A6AA8();
              sub_23F2A31EC(a2, byte_27E395FD0, "trying to cast camera");
            }

            if (v25[4] == v28[4] && v25[5] == v28[5] && v25[6] == v28[6])
            {
              return v25[7] == v28[7] && v25[8] == v28[8] && v25[9] == v28[9] && v25[10] == v28[10] && v25[11] == v28[11] && v25[12] == v28[12] && v25[13] == v28[13] && v25[14] == v28[14] && *(v25 + 8) == *(v28 + 8) && *(v25 + 32) == *(v28 + 32) && *(v25 + 33) == *(v28 + 33);
            }

            return 0;
          }
        }
      }
    }
  }

  else
  {
    if (v8 == 1)
    {
      if (v7 == 1 && v9 == 11)
      {
        v54 = *(a1 + 8);
        if (!v54)
        {
          return v110;
        }

        v55 = **v54;
        v56 = __dynamic_cast(v54, &unk_28518CC00, &unk_28518C168, 0);
        if (!v56)
        {
          return v110;
        }

        v57 = v56;
        v58 = *(a2 + 8);
        if (!v58 || (v59 = **v58, (v60 = __dynamic_cast(v58, &unk_28518CC00, &unk_28518C168, 0)) == 0))
        {
          sub_23F2A5300();
          sub_23F2A31EC(a2, byte_27E395620, "trying to cast camera");
        }

        if (v57[4] != v60[4] || v57[5] != v60[5] || v57[6] != v60[6] || v57[7] != v60[7] || *(v57 + 22) != *(v60 + 22))
        {
          return 0;
        }
      }

      else
      {
        if (v7 == 1 && v9 == 12)
        {
          v82 = *(a1 + 8);
          if (!v82)
          {
            return v110;
          }

          v83 = **v82;
          v84 = __dynamic_cast(v82, &unk_28518CC00, &unk_28518C328, 0);
          if (!v84)
          {
            return v110;
          }

          v85 = v84;
          v86 = *(a2 + 8);
          if (!v86 || (v87 = **v86, (v88 = __dynamic_cast(v86, &unk_28518CC00, &unk_28518C328, 0)) == 0))
          {
            sub_23F2A5388();
            sub_23F2A31EC(a2, byte_27E395640, "trying to cast camera");
          }

          if (v85[2] == v88[2] && v85[3] == v88[3] && v85[4] == v88[4] && v85[5] == v88[5] && *(v85 + 38) == *(v88 + 38))
          {
            return *(v85 + 39) == *(v88 + 39);
          }

          return 0;
        }

        if (v7)
        {
          v31 = 0;
        }

        else
        {
          v31 = v9 == 11;
        }

        if (!v31)
        {
          if (!v7 && v9 == 12)
          {
            v32 = sub_23F2A4C84(*(a1 + 8));
            sub_23F2A4B7C(&v110, a2, v32, v33);
          }

          return v110;
        }

        v100 = *(a1 + 8);
        if (!v100)
        {
          return v110;
        }

        v101 = **v100;
        v102 = __dynamic_cast(v100, &unk_28518CC00, &unk_28518C278, 0);
        if (!v102)
        {
          return v110;
        }

        v57 = v102;
        v103 = *(a2 + 8);
        if (!v103 || (v104 = **v103, (v60 = __dynamic_cast(v103, &unk_28518CC00, &unk_28518C278, 0)) == 0))
        {
          sub_23F2A5410();
          sub_23F2A31EC(a2, byte_27E395660, "trying to cast camera");
        }

        if (v57[4] != v60[4] || v57[5] != v60[5] || v57[6] != v60[6] || v57[7] != v60[7] || *(v57 + 22) != *(v60 + 22))
        {
          return 0;
        }
      }

      return *(v57 + 23) == *(v60 + 23);
    }

    if (v8 == 2)
    {
      if (v7 == 1 && v9 == 11)
      {
        v39 = *(a1 + 8);
        if (!v39)
        {
          return v110;
        }

        v40 = **v39;
        v41 = __dynamic_cast(v39, &unk_28518CC00, &unk_28518BDE8, 0);
        if (!v41)
        {
          return v110;
        }

        v15 = v41;
        v42 = *(a2 + 8);
        if (!v42 || (v43 = **v42, (v18 = __dynamic_cast(v42, &unk_28518CC00, &unk_28518BDE8, 0)) == 0))
        {
          sub_23F2A5520();
          sub_23F2A31EC(a2, byte_27E3956A0, "trying to cast camera");
        }

        goto LABEL_87;
      }

      if (v7 == 1 && v9 == 12)
      {
        v68 = *(a1 + 8);
        if (!v68)
        {
          return v110;
        }

        v69 = **v68;
        v70 = __dynamic_cast(v68, &unk_28518CC00, &unk_28518BFA8, 0);
        if (!v70)
        {
          return v110;
        }

        v71 = v70;
        v72 = *(a2 + 8);
        if (!v72 || (v73 = **v72, (v74 = __dynamic_cast(v72, &unk_28518CC00, &unk_28518BFA8, 0)) == 0))
        {
          sub_23F2A55A8();
          sub_23F2A31EC(a2, byte_27E3956C0, "trying to cast camera");
        }

        if (v71[2] == v74[2] && v71[3] == v74[3] && v71[4] == v74[4] && v71[5] == v74[5] && v71[6] == v74[6] && v71[7] == v74[7] && v71[8] == v74[8] && v71[9] == v74[9])
        {
          v44 = 0;
          if (v71[10] != v74[10] || v71[11] != v74[11] || *(v71 + 24) != *(v74 + 24))
          {
            return v44;
          }

          if (*(v71 + 54) == *(v74 + 54))
          {
            v45 = *(v71 + 55);
            v46 = *(v74 + 55);
            return v45 == v46;
          }
        }

        return 0;
      }

      if (v7 || v9 != 11)
      {
        if (!v7 && v9 == 12)
        {
          v96 = sub_23F2A4E88(*(a1 + 8));
          sub_23F2A4D0C(&v110, a2, v96, v97);
        }

        return v110;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = **v12;
        v14 = __dynamic_cast(v12, &unk_28518CC00, &unk_28518BEF8, 0);
        if (v14)
        {
          v15 = v14;
          v16 = *(a2 + 8);
          if (!v16 || (v17 = **v16, (v18 = __dynamic_cast(v16, &unk_28518CC00, &unk_28518BEF8, 0)) == 0))
          {
            sub_23F2A5630();
            sub_23F2A31EC(a2, byte_27E3956E0, "trying to cast camera");
          }

LABEL_87:
          if (v15[4] == v18[4] && v15[5] == v18[5] && v15[6] == v18[6] && v15[7] == v18[7] && v15[8] == v18[8] && v15[9] == v18[9] && v15[10] == v18[10] && v15[11] == v18[11])
          {
            v44 = 0;
            if (v15[12] != v18[12] || v15[13] != v18[13] || *(v15 + 14) != *(v18 + 14))
            {
              return v44;
            }

            if (*(v15 + 30) == *(v18 + 30))
            {
              v45 = *(v15 + 31);
              v46 = *(v18 + 31);
              return v45 == v46;
            }
          }

          return 0;
        }
      }
    }
  }

  return v110;
}

void sub_23F2A31EC(uint64_t a1, const char *a2, uint64_t a3)
{
  __cxa_allocate_exception(0x10uLL);
  v5 = a3;
  v7 = 0;
  v8 = v6;
  v9 = "Invalid argument ";
  v10 = v6;
  v11 = "Invalid argument ";
  v12 = "Invalid argument ";
  v13 = &v8;
  sub_23F1B9530(&v13);
  v8 = v6;
  v9 = a2;
  v10 = v6;
  v11 = a2;
  v12 = a2;
  if (v7 == -1)
  {
    sub_23EF41D6C();
  }

  v13 = &v8;
  (off_28518CBA0[v7])(&v13, v6);
  v8 = v6;
  v9 = " ";
  v10 = v6;
  v11 = " ";
  v12 = " ";
  if (v7 == -1)
  {
    sub_23EF41D6C();
  }

  v13 = &v8;
  (*(&off_28518CBB8 + v7))(&v13, v6);
  if (a3)
  {
    v8 = v6;
    v9 = &v5;
    v10 = v6;
    v11 = &v5;
    v12 = &v5;
    if (v7 != -1)
    {
      v13 = &v8;
      (off_28518CBD0[v7])(&v13, v6);
LABEL_11:
      v8 = v6;
      v9 = " ";
      v10 = v6;
      v11 = " ";
      v12 = " ";
      if (v7 == -1)
      {
        sub_23EF41D6C();
      }

      v13 = &v8;
      (*(&off_28518CBB8 + v7))(&v13, v6);
      sub_23EFC80FC();
    }
  }

  else
  {
    v8 = v6;
    v9 = "nullptr";
    v10 = v6;
    v11 = "nullptr";
    v12 = "nullptr";
    if (v7 != -1)
    {
      v13 = &v8;
      (off_28518CB88[v7])(&v13, v6);
      goto LABEL_11;
    }
  }

  sub_23EF41D6C();
}

void sub_23F2A3470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *sub_23F2A34C8(void *a1, uint64_t a2)
{
  v4 = (*(**(a2 + 8) + 16))(*(a2 + 8));
  v5 = (*(**(a2 + 8) + 24))(*(a2 + 8));
  v6 = (*(**(a2 + 8) + 32))(*(a2 + 8));
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (v4 == 1 && v6 == 11)
      {
        v37 = *(a2 + 8);
        if (v37)
        {
          v38 = **v37;
          if (__dynamic_cast(v37, &unk_28518CC00, &unk_28518CA08, 0))
          {
            sub_23EF2F9B0(a1, "Camera{Type: ", 13);
            sub_23F2AACE0();
          }
        }

        goto LABEL_118;
      }

      if (v4 == 1 && v6 == 12)
      {
        v45 = *(a2 + 8);
        if (v45)
        {
          v46 = **v45;
          if (__dynamic_cast(v45, &unk_28518CC00, &unk_28518CA38, 0))
          {
            sub_23EF2F9B0(a1, "Camera{Type: ", 13);
            sub_23F2AACE0();
          }
        }

        goto LABEL_118;
      }

      if (v4)
      {
        v27 = 0;
      }

      else
      {
        v27 = v6 == 11;
      }

      if (v27)
      {
        v53 = *(a2 + 8);
        if (v53)
        {
          v54 = **v53;
          if (__dynamic_cast(v53, &unk_28518CC00, &unk_28518CA68, 0))
          {
            sub_23EF2F9B0(a1, "Camera{Type: ", 13);
            sub_23F2AACE0();
          }
        }

        goto LABEL_118;
      }

      if (v4)
      {
        v28 = 0;
      }

      else
      {
        v28 = v6 == 12;
      }

      if (!v28)
      {
        goto LABEL_118;
      }

      v29 = sub_23F2A5068(*(a2 + 8));
      if ((sub_23F2A76F8(a1, v29, v30) & 1) == 0)
      {
        goto LABEL_118;
      }
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_118;
      }

      if (v4 == 1 && v6 == 11)
      {
        v33 = *(a2 + 8);
        if (v33)
        {
          v34 = **v33;
          if (__dynamic_cast(v33, &unk_28518CC00, &unk_28518CAC8, 0))
          {
            sub_23EF2F9B0(a1, "Camera{Type: ", 13);
            sub_23F2AACE0();
          }
        }

        goto LABEL_118;
      }

      if (v4 == 1 && v6 == 12)
      {
        v41 = *(a2 + 8);
        if (v41)
        {
          v42 = **v41;
          if (__dynamic_cast(v41, &unk_28518CC00, &unk_28518CAF8, 0))
          {
            sub_23EF2F9B0(a1, "Camera{Type: ", 13);
            sub_23F2AACE0();
          }
        }

        goto LABEL_118;
      }

      if (v4)
      {
        v15 = 0;
      }

      else
      {
        v15 = v6 == 11;
      }

      if (v15)
      {
        v49 = *(a2 + 8);
        if (v49)
        {
          v50 = **v49;
          if (__dynamic_cast(v49, &unk_28518CC00, &unk_28518CB28, 0))
          {
            sub_23EF2F9B0(a1, "Camera{Type: ", 13);
            sub_23F2AACE0();
          }
        }

        goto LABEL_118;
      }

      if (v4)
      {
        v16 = 0;
      }

      else
      {
        v16 = v6 == 12;
      }

      if (!v16)
      {
        goto LABEL_118;
      }

      v17 = sub_23F2A5278(*(a2 + 8));
      if ((sub_23F2A79E4(a1, v17, v18) & 1) == 0)
      {
        goto LABEL_118;
      }
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        if (v4 == 1 && v6 == 11)
        {
          v31 = *(a2 + 8);
          if (v31)
          {
            v32 = **v31;
            if (__dynamic_cast(v31, &unk_28518CC00, &unk_28518BDE8, 0))
            {
              sub_23EF2F9B0(a1, "Camera{Type: ", 13);
              sub_23F2AACE0();
            }
          }
        }

        else if (v4 == 1 && v6 == 12)
        {
          v39 = *(a2 + 8);
          if (v39)
          {
            v40 = **v39;
            if (__dynamic_cast(v39, &unk_28518CC00, &unk_28518BFA8, 0))
            {
              sub_23EF2F9B0(a1, "Camera{Type: ", 13);
              sub_23F2AACE0();
            }
          }
        }

        else
        {
          if (v4)
          {
            v9 = 0;
          }

          else
          {
            v9 = v6 == 11;
          }

          if (v9)
          {
            v47 = *(a2 + 8);
            if (v47)
            {
              v48 = **v47;
              if (__dynamic_cast(v47, &unk_28518CC00, &unk_28518BEF8, 0))
              {
                sub_23EF2F9B0(a1, "Camera{Type: ", 13);
                sub_23F2AACE0();
              }
            }
          }

          else
          {
            if (v4)
            {
              v10 = 0;
            }

            else
            {
              v10 = v6 == 12;
            }

            if (v10)
            {
              v11 = sub_23F2A4E88(*(a2 + 8));
              if (sub_23F2A740C(a1, v11, v12))
              {
                return a1;
              }
            }
          }
        }
      }

LABEL_118:
      sub_23EF2F9B0(a1, "Camera{Type: ", 13);
      (*(**(a2 + 8) + 16))(*(a2 + 8));
      sub_23F2AACE0();
    }

    if (v4 == 1 && v6 == 11)
    {
      v35 = *(a2 + 8);
      if (v35)
      {
        v36 = **v35;
        if (__dynamic_cast(v35, &unk_28518CC00, &unk_28518C168, 0))
        {
          sub_23EF2F9B0(a1, "Camera{Type: ", 13);
          sub_23F2AACE0();
        }
      }

      goto LABEL_118;
    }

    if (v4 == 1 && v6 == 12)
    {
      v43 = *(a2 + 8);
      if (v43)
      {
        v44 = **v43;
        if (__dynamic_cast(v43, &unk_28518CC00, &unk_28518C328, 0))
        {
          sub_23EF2F9B0(a1, "Camera{Type: ", 13);
          sub_23F2AACE0();
        }
      }

      goto LABEL_118;
    }

    if (v4)
    {
      v21 = 0;
    }

    else
    {
      v21 = v6 == 11;
    }

    if (v21)
    {
      v51 = *(a2 + 8);
      if (v51)
      {
        v52 = **v51;
        if (__dynamic_cast(v51, &unk_28518CC00, &unk_28518C278, 0))
        {
          sub_23EF2F9B0(a1, "Camera{Type: ", 13);
          sub_23F2AACE0();
        }
      }

      goto LABEL_118;
    }

    if (v4)
    {
      v22 = 0;
    }

    else
    {
      v22 = v6 == 12;
    }

    if (!v22)
    {
      goto LABEL_118;
    }

    v23 = sub_23F2A4C84(*(a2 + 8));
    if ((sub_23F2A7120(a1, v23, v24) & 1) == 0)
    {
      goto LABEL_118;
    }
  }

  return a1;
}

void sub_23F2A4A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL *sub_23F2A4B7C(BOOL *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = result;
    v6 = *(a2 + 8);
    if (!v6 || (v8 = **v6, (result = __dynamic_cast(v6, &unk_28518CC00, &unk_28518C438, 0)) == 0))
    {
      sub_23F2A5498();
      sub_23F2A31EC(a2, byte_27E395680, "trying to cast camera");
    }

    v9 = *(a3 + 16) == *(result + 2) && *(a3 + 24) == *(result + 3) && *(a3 + 32) == *(result + 4) && *(a3 + 40) == *(result + 5) && *(a3 + 152) == *(result + 38) && *(a3 + 156) == *(result + 39);
    *v4 = v9;
  }

  return result;
}

unint64_t sub_23F2A4C84(char **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = **a1;
  v2 = __dynamic_cast(a1, &unk_28518CC00, &unk_28518C438, 0);
  v3 = v2 & 0xFFFFFFFFFFFFFF00;
  v4 = v2;
  if (!v2)
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

BOOL *sub_23F2A4D0C(BOOL *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = result;
    v6 = *(a2 + 8);
    if (!v6 || (v8 = **v6, (result = __dynamic_cast(v6, &unk_28518CC00, &unk_28518C0B8, 0)) == 0))
    {
      sub_23F2A56B8();
      sub_23F2A31EC(a2, byte_27E395700, "trying to cast camera");
    }

    if (*(a3 + 16) != *(result + 2) || *(a3 + 24) != *(result + 3) || *(a3 + 32) != *(result + 4) || *(a3 + 40) != *(result + 5) || *(a3 + 48) != *(result + 6) || *(a3 + 56) != *(result + 7) || *(a3 + 64) != *(result + 8) || *(a3 + 72) != *(result + 9))
    {
      goto LABEL_17;
    }

    v9 = 0;
    if (*(a3 + 80) != *(result + 10) || *(a3 + 88) != *(result + 11) || *(a3 + 96) != *(result + 24))
    {
      goto LABEL_18;
    }

    if (*(a3 + 216) == *(result + 54))
    {
      v9 = *(a3 + 220) == *(result + 55);
    }

    else
    {
LABEL_17:
      v9 = 0;
    }

LABEL_18:
    *v4 = v9;
  }

  return result;
}

unint64_t sub_23F2A4E88(char **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = **a1;
  v2 = __dynamic_cast(a1, &unk_28518CC00, &unk_28518C0B8, 0);
  v3 = v2 & 0xFFFFFFFFFFFFFF00;
  v4 = v2;
  if (!v2)
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

BOOL *sub_23F2A4F10(BOOL *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = result;
    v6 = *(a2 + 8);
    if (!v6 || (v8 = **v6, (result = __dynamic_cast(v6, &unk_28518CC00, &unk_28518CA98, 0)) == 0))
    {
      sub_23F2A60F4();
      sub_23F2A31EC(a2, byte_27E395F88, "trying to cast camera");
    }

    v9 = *(a3 + 16) == *(result + 2) && *(a3 + 24) == *(result + 3) && *(a3 + 32) == *(result + 4) && *(a3 + 40) == *(result + 5) && *(a3 + 48) == *(result + 6) && *(a3 + 56) == *(result + 7) && *(a3 + 64) == *(result + 8) && *(a3 + 72) == *(result + 9) && *(a3 + 80) == *(result + 10) && *(a3 + 192) == *(result + 48) && *(a3 + 196) == *(result + 49);
    *v4 = v9;
  }

  return result;
}

unint64_t sub_23F2A5068(char **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = **a1;
  v2 = __dynamic_cast(a1, &unk_28518CC00, &unk_28518CA98, 0);
  v3 = v2 & 0xFFFFFFFFFFFFFF00;
  v4 = v2;
  if (!v2)
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

BOOL *sub_23F2A50F0(BOOL *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = result;
    v6 = *(a2 + 8);
    if (!v6 || (v8 = **v6, (result = __dynamic_cast(v6, &unk_28518CC00, &unk_28518CB58, 0)) == 0))
    {
      sub_23F2A6DE4();
      sub_23F2A31EC(a2, byte_27E395FE8, "trying to cast camera");
    }

    v9 = *(a3 + 16) == *(result + 2) && *(a3 + 24) == *(result + 3) && *(a3 + 32) == *(result + 4) && *(a3 + 40) == *(result + 5) && *(a3 + 48) == *(result + 6) && *(a3 + 56) == *(result + 7) && *(a3 + 64) == *(result + 8) && *(a3 + 72) == *(result + 9) && *(a3 + 80) == *(result + 10) && *(a3 + 88) == *(result + 11) && *(a3 + 96) == *(result + 12) && *(a3 + 104) == *(result + 13) && *(a3 + 216) == *(result + 54) && *(a3 + 220) == *(result + 55);
    *v4 = v9;
  }

  return result;
}

unint64_t sub_23F2A5278(char **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = **a1;
  v2 = __dynamic_cast(a1, &unk_28518CC00, &unk_28518CB58, 0);
  v3 = v2 & 0xFFFFFFFFFFFFFF00;
  v4 = v2;
  if (!v2)
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

void sub_23F2A5300()
{
  if ((atomic_load_explicit(&qword_27E395638, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395638))
    {
      sub_23F29BB7C();
    }
  }
}

void sub_23F2A5388()
{
  if ((atomic_load_explicit(&qword_27E395658, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395658))
    {
      sub_23F29BFFC();
    }
  }
}

void sub_23F2A5410()
{
  if ((atomic_load_explicit(&qword_27E395678, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395678))
    {
      sub_23F29C47C();
    }
  }
}

void sub_23F2A5498()
{
  if ((atomic_load_explicit(&qword_27E395698, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395698))
    {
      sub_23F29C8FC();
    }
  }
}

void sub_23F2A5520()
{
  if ((atomic_load_explicit(&qword_27E3956B8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3956B8))
    {
      sub_23F29CD7C();
    }
  }
}

void sub_23F2A55A8()
{
  if ((atomic_load_explicit(&qword_27E3956D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3956D8))
    {
      sub_23F29D13C();
    }
  }
}

void sub_23F2A5630()
{
  if ((atomic_load_explicit(&qword_27E3956F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3956F8))
    {
      sub_23F29D524();
    }
  }
}

void sub_23F2A56B8()
{
  if ((atomic_load_explicit(&qword_27E395718, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395718))
    {
      sub_23F29D8E4();
    }
  }
}

void sub_23F2A5740()
{
  if ((atomic_load_explicit(&qword_27E395F00, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395F00))
    {
      sub_23F2A57BC();
    }
  }
}

void sub_23F2A59C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_23EF3291C(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23F2A5A7C()
{
  if ((atomic_load_explicit(&byte_27E395F08, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&byte_27E395F08))
    {
      sub_23F2A5AF8();
    }
  }
}

void sub_23F2A5D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_23EF3291C(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23F2A5DB8()
{
  if ((atomic_load_explicit(&qword_27E395F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395F10))
    {
      sub_23F2A5E34();
    }
  }
}

void sub_23F2A6040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_23EF3291C(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23F2A60F4()
{
  if ((atomic_load_explicit(&qword_27E395F18, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395F18))
    {
      sub_23F2A6170();
    }
  }
}

void sub_23F2A637C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_23EF3291C(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23F2A6430()
{
  if ((atomic_load_explicit(&qword_27E395F20, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395F20))
    {
      sub_23F2A64AC();
    }
  }
}

void sub_23F2A66B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_23EF3291C(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23F2A676C()
{
  if ((atomic_load_explicit(&dword_27E395F28, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&dword_27E395F28))
    {
      sub_23F2A67E8();
    }
  }
}

void sub_23F2A69F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_23EF3291C(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23F2A6AA8()
{
  if ((atomic_load_explicit(&qword_27E395F30, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395F30))
    {
      sub_23F2A6B24();
    }
  }
}

void sub_23F2A6D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_23EF3291C(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23F2A6DE4()
{
  if ((atomic_load_explicit(&qword_27E395F38, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395F38))
    {
      sub_23F2A6E60();
    }
  }
}

void sub_23F2A706C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_23EF3291C(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_23F2A7120(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_23EF2F9B0(a1, "Camera{Type: ", 13);
    sub_23F2AACE0();
  }

  return a3 & 1;
}

void sub_23F2A73B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2A740C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_23EF2F9B0(a1, "Camera{Type: ", 13);
    sub_23F2AACE0();
  }

  return a3 & 1;
}

void sub_23F2A769C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2A76F8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_23EF2F9B0(a1, "Camera{Type: ", 13);
    sub_23F2AACE0();
  }

  return a3 & 1;
}

void sub_23F2A7988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2A79E4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_23EF2F9B0(a1, "Camera{Type: ", 13);
    sub_23F2AACE0();
  }

  return a3 & 1;
}

void sub_23F2A7C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A7EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A8174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A83F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A8674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A8988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A8C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A8F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A923C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A952C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A97D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2A9F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2AA230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2AA978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2AAC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2AAECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2AB108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2AB164@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_23EF303E4(v21);
  v4 = &v22 + *(v22 - 24);
  v19 = *(v4 + 2);
  v5 = *(v4 + 3);
  *(v4 + 3) = 0;
  v34[0] = 91;
  sub_23EF2F9B0(&v22, v34, 1);
  __dst = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = 0;
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    do
    {
      v9 = a1[1];
      if (v9)
      {
        for (i = 0; i < v11; ++i)
        {
          *(v25 + *(v22 - 24)) = v8;
          MEMORY[0x245CAC910](&v22, *(*(a1 + 2) + 4 * (v7 + a1[2] * i)));
          v11 = a1[1];
          if (i != v11 - 1)
          {
            v34[0] = 44;
            sub_23EF2F9B0(&v22, v34, 1);
            v11 = a1[1];
          }
        }

        v6 = *a1;
        v9 = v11 > 1;
      }

      if (v7 != v6 - 1)
      {
        if (v9)
        {
          v12 = ";\n ";
        }

        else
        {
          v12 = ";";
        }

        if (v9)
        {
          v13 = 3;
        }

        else
        {
          v13 = 1;
        }

        sub_23EF2F9B0(&v22, v12, v13);
        v6 = *a1;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  sub_23EF2F9B0(&v22, "   ]", 4);
  *(&v22 + *(v22 - 24) + 8) = v19;
  if ((v32 & 0x10) != 0)
  {
    v15 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v15 = v28;
    }

    v16 = v27;
    v14 = v15 - v27;
    if (v15 - v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v14 = 0;
      a2[23] = 0;
      goto LABEL_31;
    }

    v16 = v25[0];
    v14 = v26 - v25[0];
    if ((v26 - v25[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_35:
      sub_23EF2F8F4();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v14;
  if (v14)
  {
    memmove(__dst, v16, v14);
  }

LABEL_31:
  __dst[v14] = 0;
  v21[0] = *MEMORY[0x277D82818];
  v17 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22 = v17;
  v23 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CACBF0](&v33);
}

void sub_23F2AB52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF327C8(va);
  _Unwind_Resume(a1);
}

void sub_23F2AB540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF327C8(va);
  _Unwind_Resume(a1);
}

void sub_23F2AB554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF327C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2AB568@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_23EF303E4(v41);
  v4 = &v42 + *(v42 - 24);
  v5 = *(v4 + 2);
  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v6)
  {
    if (v6 <= (v7 + 2))
    {
      v6 = v7 + 2;
    }

    v8 = v6 + ~v7;
    v9 = __exp10(-v7);
    v10 = v8 - 1;
    if (v8 - 1 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_84;
    }

    v11 = v9;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__b.__r_.__value_.__s + 23) = v8 - 1;
    if (v8 == 1)
    {
      LODWORD(v8) = 1;
      __b.__r_.__value_.__s.__data_[0] = 0;
      v12 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
      __dst = a2;
      if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = __exp10(-v7);
    v10 = 3;
    *(&__b.__r_.__value_.__s + 23) = 3;
    LODWORD(v8) = 4;
  }

  memset(&__b, 32, v10);
  __b.__r_.__value_.__s.__data_[v10] = 0;
  v12 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
  __dst = a2;
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
LABEL_8:
    size = __b.__r_.__value_.__l.__size_;
    if ((__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 - __b.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __b.__r_.__value_.__l.__size_ + 2 - ((__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1))
      {
        sub_23EF2F8F4();
      }

LABEL_15:
      operator new();
    }

    p_b = __b.__r_.__value_.__r.__words[0];
    *(__b.__r_.__value_.__r.__words[0] + __b.__r_.__value_.__l.__size_) = 8240;
    v15 = size + 2;
    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    *(&__b.__r_.__value_.__s + 23) = v15 & 0x7F;
    goto LABEL_20;
  }

LABEL_14:
  if ((v12 - 21) < 2)
  {
    goto LABEL_15;
  }

  p_b = &__b;
  *(&__b.__r_.__value_.__l.__data_ + v12) = 8240;
  v15 = v12 + 2;
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  __b.__r_.__value_.__l.__size_ = v15;
LABEL_20:
  p_b->__r_.__value_.__s.__data_[v15] = 0;
  v57 = __b;
  memset(&__b, 0, sizeof(__b));
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  v55 = v7;
  if (v7)
  {
    memset(v54, 32, v7);
  }

  *(v54 + v7) = 0;
  if ((v55 & 0x80u) == 0)
  {
    v16 = v54;
  }

  else
  {
    v16 = v54[0];
  }

  if ((v55 & 0x80u) == 0)
  {
    v17 = v55;
  }

  else
  {
    v17 = v54[1];
  }

  v18 = std::string::append(&v57, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v59 = v18->__r_.__value_.__r.__words[2];
  v58 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v55 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_69:
    operator delete(v57.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_70:
    operator delete(__b.__r_.__value_.__l.__data_);
    goto LABEL_35;
  }

  operator delete(v54[0]);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_69;
  }

LABEL_34:
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_35:
  *(v45 + *(v42 - 24)) = 0;
  v57.__r_.__value_.__s.__data_[0] = 91;
  sub_23EF2F9B0(&v42, &v57, 1);
  v21 = *a1;
  if (!*a1)
  {
    goto LABEL_64;
  }

  v22 = 0;
  v23 = v8 + v7 + 1;
  while (2)
  {
    v24 = a1[1];
    if (!v24)
    {
      goto LABEL_56;
    }

    for (i = 0; i < v31; ++i)
    {
      v26 = *(*(a1 + 2) + 4 * (v22 + a1[2] * i));
      v20.n128_f64[0] = v26;
      v27 = v42;
      v28 = &v42 + *(v42 - 24);
      if (v28[9])
      {
        if (v26 != 0.0)
        {
          *(v28 + 3) = v23;
          *(&v43 + *(v27 - 24)) |= 0x400u;
          *(&v44.__locale_ + *(v27 - 24)) = (v7 - 3);
          MEMORY[0x245CAC8F0](&v42, v20);
          goto LABEL_53;
        }
      }

      else if (fabs(v20.n128_f64[0]) >= v11)
      {
        *(v28 + 3) = v23;
        *(&v43 + *(v27 - 24)) = *(&v43 + *(v27 - 24)) & 0xFFFFFEFB | 4;
        *(&v43 + *(v27 - 24)) |= 0x400u;
        *(&v44.__locale_ + *(v27 - 24)) = v7;
        MEMORY[0x245CAC8F0](&v42);
        goto LABEL_53;
      }

      if (v59 >= 0)
      {
        v29 = &v58;
      }

      else
      {
        v29 = v58;
      }

      if (v59 >= 0)
      {
        v30 = HIBYTE(v59);
      }

      else
      {
        v30 = *(&v58 + 1);
      }

      sub_23EF2F9B0(&v42, v29, v30);
LABEL_53:
      v31 = a1[1];
      if (i != v31 - 1)
      {
        v57.__r_.__value_.__s.__data_[0] = 44;
        sub_23EF2F9B0(&v42, &v57, 1);
        v31 = a1[1];
      }
    }

    v21 = *a1;
    v24 = v31 > 1;
LABEL_56:
    if (v22 != v21 - 1)
    {
      if (v24)
      {
        v32 = ";\n ";
      }

      else
      {
        v32 = ";";
      }

      if (v24)
      {
        v33 = 3;
      }

      else
      {
        v33 = 1;
      }

      sub_23EF2F9B0(&v42, v32, v33);
      v21 = *a1;
    }

    if (++v22 < v21)
    {
      continue;
    }

    break;
  }

LABEL_64:
  sub_23EF2F9B0(&v42, "   ]", 4);
  *(&v42 + *(v42 - 24) + 8) = v5;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
    v34 = v52;
    if ((v52 & 0x10) != 0)
    {
      goto LABEL_72;
    }

LABEL_66:
    if ((v34 & 8) == 0)
    {
      v35 = 0;
      __dst[23] = 0;
      goto LABEL_80;
    }

    v37 = v45[0];
    v35 = v46 - v45[0];
    if ((v46 - v45[0]) <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_75;
    }

LABEL_84:
    sub_23EF2F8F4();
  }

  v34 = v52;
  if ((v52 & 0x10) == 0)
  {
    goto LABEL_66;
  }

LABEL_72:
  v36 = v51;
  if (v51 < v48)
  {
    v51 = v48;
    v36 = v48;
  }

  v37 = v47;
  v35 = v36 - v47;
  if (v36 - v47 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_84;
  }

LABEL_75:
  if (v35 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v35;
  if (v35)
  {
    memmove(__dst, v37, v35);
  }

LABEL_80:
  __dst[v35] = 0;
  v41[0] = *MEMORY[0x277D82818];
  v38 = *(MEMORY[0x277D82818] + 72);
  *(v41 + *(v41[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v42 = v38;
  v43 = MEMORY[0x277D82878] + 16;
  if (v50 < 0)
  {
    operator delete(__p);
  }

  v43 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v44);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CACBF0](&v53);
}

void sub_23F2ABD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 - 177) < 0)
  {
    operator delete(*(v4 - 200));
    sub_23EF327C8(va);
    _Unwind_Resume(a1);
  }

  sub_23EF327C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2ABE40@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_23EF303E4(v40);
  v4 = &v41 + *(v41 - 24);
  v5 = *(v4 + 2);
  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v6)
  {
    if (v6 <= (v7 + 2))
    {
      v6 = v7 + 2;
    }

    v8 = v6 + ~v7;
    v9 = __exp10(-v7);
    v10 = v8 - 1;
    if (v8 - 1 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_84;
    }

    v11 = v9;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__b.__r_.__value_.__s + 23) = v8 - 1;
    if (v8 == 1)
    {
      LODWORD(v8) = 1;
      __b.__r_.__value_.__s.__data_[0] = 0;
      v12 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
      __dst = a2;
      if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = __exp10(-v7);
    v10 = 3;
    *(&__b.__r_.__value_.__s + 23) = 3;
    LODWORD(v8) = 4;
  }

  memset(&__b, 32, v10);
  __b.__r_.__value_.__s.__data_[v10] = 0;
  v12 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
  __dst = a2;
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
LABEL_8:
    size = __b.__r_.__value_.__l.__size_;
    if ((__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 - __b.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __b.__r_.__value_.__l.__size_ + 2 - ((__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1))
      {
        sub_23EF2F8F4();
      }

LABEL_15:
      operator new();
    }

    p_b = __b.__r_.__value_.__r.__words[0];
    *(__b.__r_.__value_.__r.__words[0] + __b.__r_.__value_.__l.__size_) = 8240;
    v15 = size + 2;
    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    *(&__b.__r_.__value_.__s + 23) = v15 & 0x7F;
    goto LABEL_20;
  }

LABEL_14:
  if ((v12 - 21) < 2)
  {
    goto LABEL_15;
  }

  p_b = &__b;
  *(&__b.__r_.__value_.__l.__data_ + v12) = 8240;
  v15 = v12 + 2;
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  __b.__r_.__value_.__l.__size_ = v15;
LABEL_20:
  p_b->__r_.__value_.__s.__data_[v15] = 0;
  v56 = __b;
  memset(&__b, 0, sizeof(__b));
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  v54 = v7;
  if (v7)
  {
    memset(v53, 32, v7);
  }

  *(v53 + v7) = 0;
  if ((v54 & 0x80u) == 0)
  {
    v16 = v53;
  }

  else
  {
    v16 = v53[0];
  }

  if ((v54 & 0x80u) == 0)
  {
    v17 = v54;
  }

  else
  {
    v17 = v53[1];
  }

  v18 = std::string::append(&v56, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v58 = v18->__r_.__value_.__r.__words[2];
  v57 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v54 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_69:
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_70:
    operator delete(__b.__r_.__value_.__l.__data_);
    goto LABEL_35;
  }

  operator delete(v53[0]);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_69;
  }

LABEL_34:
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_35:
  *(v44 + *(v41 - 24)) = 0;
  v56.__r_.__value_.__s.__data_[0] = 91;
  sub_23EF2F9B0(&v41, &v56, 1);
  v20 = *a1;
  if (!*a1)
  {
    goto LABEL_64;
  }

  v21 = 0;
  v22 = v8 + v7 + 1;
  while (2)
  {
    v23 = a1[1];
    if (!v23)
    {
      goto LABEL_56;
    }

    for (i = 0; i < v30; ++i)
    {
      v25 = *(*(a1 + 2) + 8 * (v21 + a1[2] * i));
      v26 = v41;
      v27 = &v41 + *(v41 - 24);
      if (v27[9])
      {
        if (v25 != 0.0)
        {
          *(v27 + 3) = v22;
          *(&v42 + *(v26 - 24)) |= 0x400u;
          *(&v43.__locale_ + *(v26 - 24)) = (v7 - 3);
          MEMORY[0x245CAC8F0](&v41);
          goto LABEL_53;
        }
      }

      else if (fabs(v25) >= v11)
      {
        *(v27 + 3) = v22;
        *(&v42 + *(v26 - 24)) = *(&v42 + *(v26 - 24)) & 0xFFFFFEFB | 4;
        *(&v42 + *(v26 - 24)) |= 0x400u;
        *(&v43.__locale_ + *(v26 - 24)) = v7;
        MEMORY[0x245CAC8F0](&v41);
        goto LABEL_53;
      }

      if (v58 >= 0)
      {
        v28 = &v57;
      }

      else
      {
        v28 = v57;
      }

      if (v58 >= 0)
      {
        v29 = HIBYTE(v58);
      }

      else
      {
        v29 = *(&v57 + 1);
      }

      sub_23EF2F9B0(&v41, v28, v29);
LABEL_53:
      v30 = a1[1];
      if (i != v30 - 1)
      {
        v56.__r_.__value_.__s.__data_[0] = 44;
        sub_23EF2F9B0(&v41, &v56, 1);
        v30 = a1[1];
      }
    }

    v20 = *a1;
    v23 = v30 > 1;
LABEL_56:
    if (v21 != v20 - 1)
    {
      if (v23)
      {
        v31 = ";\n ";
      }

      else
      {
        v31 = ";";
      }

      if (v23)
      {
        v32 = 3;
      }

      else
      {
        v32 = 1;
      }

      sub_23EF2F9B0(&v41, v31, v32);
      v20 = *a1;
    }

    if (++v21 < v20)
    {
      continue;
    }

    break;
  }

LABEL_64:
  sub_23EF2F9B0(&v41, "   ]", 4);
  *(&v41 + *(v41 - 24) + 8) = v5;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
    v33 = v51;
    if ((v51 & 0x10) != 0)
    {
      goto LABEL_72;
    }

LABEL_66:
    if ((v33 & 8) == 0)
    {
      v34 = 0;
      __dst[23] = 0;
      goto LABEL_80;
    }

    v36 = v44[0];
    v34 = v45 - v44[0];
    if ((v45 - v44[0]) <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_75;
    }

LABEL_84:
    sub_23EF2F8F4();
  }

  v33 = v51;
  if ((v51 & 0x10) == 0)
  {
    goto LABEL_66;
  }

LABEL_72:
  v35 = v50;
  if (v50 < v47)
  {
    v50 = v47;
    v35 = v47;
  }

  v36 = v46;
  v34 = v35 - v46;
  if (v35 - v46 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_84;
  }

LABEL_75:
  if (v34 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v34;
  if (v34)
  {
    memmove(__dst, v36, v34);
  }

LABEL_80:
  __dst[v34] = 0;
  v40[0] = *MEMORY[0x277D82818];
  v37 = *(MEMORY[0x277D82818] + 72);
  *(v40 + *(v40[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v41 = v37;
  v42 = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(__p);
  }

  v42 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v43);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CACBF0](&v52);
}

void sub_23F2AC650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 - 177) < 0)
  {
    operator delete(*(v4 - 200));
    sub_23EF327C8(va);
    _Unwind_Resume(a1);
  }

  sub_23EF327C8(va);
  _Unwind_Resume(a1);
}

void sub_23F2AC714(void *a1, uint64_t *a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *(a1 + *(*a1 - 24) + 24) = 0;
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v15[0] = v6;
  v15[1] = v4;
  v15[3] = 0;
  v15[4] = 205;
  v15[2] = a3;
  v16 = v20;
  *__len = xmmword_23F344780;
  v18 = sub_23F2ACDFC;
  v19 = 0;
  __p = v20;
  v14[0] = 2;
  v14[1] = v15;
  v14[2] = 205;
  sub_23F2ACEA0(&v16, "{:<{}}", 6, v14);
  v7 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (__len[1] >= 0x17)
  {
    operator new();
  }

  v13 = __len[1];
  if (!__len[1])
  {
    LOBYTE(v12[0]) = 0;
    v8 = __p;
    if (__p == v20)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  memmove(v12, __p, __len[1]);
  *(v12 + v7) = 0;
  v8 = __p;
  if (__p != v20)
  {
LABEL_10:
    operator delete(v8);
  }

LABEL_11:
  if ((v13 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12[1];
  }

  sub_23EF2F9B0(a1, v9, v10);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23F2AC8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2AC924(void *a1, uint64_t *a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *(a1 + *(*a1 - 24) + 24) = 0;
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v15[0] = v6;
  v15[1] = v4;
  v15[3] = 0;
  v15[4] = 205;
  v15[2] = a3;
  v16 = v20;
  *__len = xmmword_23F344780;
  v18 = sub_23F2ACDFC;
  v19 = 0;
  __p = v20;
  v14[0] = 2;
  v14[1] = v15;
  v14[2] = 205;
  sub_23F2ACEA0(&v16, "{:>{}}", 6, v14);
  v7 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (__len[1] >= 0x17)
  {
    operator new();
  }

  v13 = __len[1];
  if (!__len[1])
  {
    LOBYTE(v12[0]) = 0;
    v8 = __p;
    if (__p == v20)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  memmove(v12, __p, __len[1]);
  *(v12 + v7) = 0;
  v8 = __p;
  if (__p != v20)
  {
LABEL_10:
    operator delete(v8);
  }

LABEL_11:
  if ((v13 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12[1];
  }

  sub_23EF2F9B0(a1, v9, v10);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23F2ACB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ACB34(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v8 && (v7 >= 0 ? (v10 = a2) : (v10 = *a2), (v11 = memchr(v10, 46, v8), v12 = v11 - v10, v11) ? (v13 = v12 == -1) : (v13 = 1), !v13 ? (v14 = a4 > v12) : (v14 = 0), v14))
  {
    v16 = a4 - v12;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v24[0] = &unk_23F3091D6;
    v24[1] = 0;
    v24[3] = 0;
    v24[4] = 237;
    v24[2] = a4 - v12;
    v25 = v29;
    *__len = xmmword_23F344780;
    v27 = sub_23F2ACDFC;
    v28 = 0;
    __src = v29;
    v23[0] = 2;
    v23[1] = v24;
    v23[2] = 237;
    sub_23F2ACEA0(&v25, "{:{}}", 5, v23);
    v17 = __len[1];
    if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    if (__len[1] >= 0x17)
    {
      operator new();
    }

    v22 = __len[1];
    if (__len[1])
    {
      memmove(__p, __src, __len[1]);
    }

    *(__p + v17) = 0;
    if (__src != v29)
    {
      operator delete(__src);
    }

    if ((v22 & 0x80u) == 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v19 = v22;
    }

    else
    {
      v19 = __p[1];
    }

    sub_23EF2F9B0(a1, v18, v19);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    sub_23F2AC714(a1, a2, (a3 - v16));
    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = *MEMORY[0x277D85DE8];

    sub_23F2AC714(a1, a2, a3);
  }
}

void sub_23F2ACDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2ACDFC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }

  return result;
}

uint64_t *sub_23F2ACEA0(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  result = sub_23F2ACF6C(v14, &v9);
  if (v13 == 1)
  {
    v6 = result;
    std::locale::~locale(&v12);
    return v6;
  }

  return result;
}

void sub_23F2ACF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F2ACF6C(unsigned __int8 **a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  if (v3 != v4)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_12;
      }

      if (++v3 == v4)
      {
        sub_23F2AD0A0("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_12:
        v8 = v5[4];
        if (!v8 || (v10 = *v8, v9 = v8[1], v8[1] = v9 + 1, v9 < v10))
        {
          v11 = *v5;
          v12 = v5[2];
          v5[2] = v12 + 1;
          *(v11 + v12) = v7;
          if (v5[2] == v5[1])
          {
            v13 = v3;
            (v5[3])(v5, 2);
            v3 = v13;
          }
        }

        if (++v3 == v4)
        {
          return v5;
        }
      }

      else
      {
        *a2 = v5;
        v3 = sub_23F2AD0FC(v3, v4, a1, a2);
        v5 = *a2;
        if (v3 == v4)
        {
          return v5;
        }
      }
    }

    if (++v3 == v4 || *v3 != 125)
    {
      sub_23F2AD0A0("The format string contains an invalid escape sequence");
    }

    goto LABEL_12;
  }

  return v5;
}

void sub_23F2AD0A0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23F2AD23C(exception, a1);
  __cxa_throw(exception, &unk_28518CC20, std::runtime_error::~runtime_error);
}

unsigned __int8 *sub_23F2AD0FC(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = sub_23F2AD2AC(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v21 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    sub_23F2AD0A0("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = &v21;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v23) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v22 = v13;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14;
  }

  (loc_23F2AD478)(v20, &v22);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    sub_23F2AD0A0("The replacement field misses a terminating '}'");
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17 + 1;
}

std::runtime_error *sub_23F2AD23C(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_28518CC48;
  return result;
}

void sub_23F2AD274(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

unsigned __int8 *sub_23F2AD2AC(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        sub_23F2AD0A0("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      sub_23F2AD0A0("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          sub_23F2AD0A0("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      sub_23F2AD0A0("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

uint64_t sub_23F2ADA94(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v10 = 0;
  v11 = -1;
  v12 = 32;
  v13 = 0;
  v14 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = sub_23F2ADDD4(&v10, *a1, 311);
    if (BYTE1(v10) - 2 >= 6)
    {
      if (BYTE1(v10) > 0x13u || ((1 << SBYTE1(v10)) & 0x80401) == 0)
      {
        sub_23F2AE878();
      }

      v7 = v5;
      sub_23F2AEB1C(&v10, 48, "a character", -1);
      v5 = v7;
      if ((v10 & 7) == 0)
      {
        LOBYTE(v10) = v10 | 1;
      }
    }

    *v4 = v5;
  }

  v8 = *(a1 + 8);
  result = sub_23F2B2498(&v10, v3, v8);
  *v8 = result;
  return result;
}

uint64_t sub_23F2ADB94(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v12 = 0;
  v13 = -1;
  v14 = 32;
  v15 = 0;
  v16 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = sub_23F2ADDD4(&v12, *a1, 292);
    if (BYTE1(v12) - 8 >= 2 && BYTE1(v12) != 0)
    {
      sub_23F2AE878();
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v8 = sub_23F2AF2AC(&v12, v7);
  v10 = 1536;
  if ((v8 & 0xFF00) == 0x900)
  {
    v10 = 1792;
  }

  result = sub_23F2BA728(v3, v7, v8 & 0xFFFFFFFFFFFF00FFLL | v10 | 0x20, v9, 0);
  *v7 = result;
  return result;
}

uint64_t sub_23F2ADC74(uint64_t a1, unsigned int a2)
{
  v15 = 0;
  v16 = -1;
  v17 = 32;
  v18 = 0;
  v19 = 0;
  if (**(a1 + 16))
  {
    v4 = *a1;
    v5 = sub_23F2ADDD4(&v15, *a1, 311);
    if (BYTE1(v15) - 2 < 6)
    {
      *v4 = v5;
      v6 = *(a1 + 8);
LABEL_4:
      v7 = sub_23F2AF2AC(&v15, v6);
      result = sub_23F2AF460(a2, v6, v7, v8, 0);
      *v6 = result;
      return result;
    }

    if (BYTE1(v15) > 1u)
    {
      sub_23F2AE878();
    }

    v12 = v5;
    sub_23F2AEB1C(&v15, 48, "a BOOL", -1);
    if ((v15 & 7) != 0)
    {
      v13 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v13 > 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      LOBYTE(v15) = v15 | 1;
      v14 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v14 > 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v10 = sub_23F2AF2AC(&v15, v6);
  result = sub_23F2AF0B4(a2, v6, v10, v11);
  *v6 = result;
  return result;
}

unsigned __int8 *sub_23F2ADDD4(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v18 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = a1;
  v10 = sub_23F2AE01C(a1, &v18, v5);
  result = v18;
  if (v10)
  {
    if (v18 == v5)
    {
      return result;
    }
  }

  if (a3)
  {
    v13 = *v18;
    v11 = v9;
    v12 = a2;
    switch(v13)
    {
      case ' ':
        v14 = *v9 | 0x18;
        break;
      case '+':
        v14 = *v9 & 0xE7 | 0x10;
        break;
      case '-':
        v14 = *v9 & 0xE7 | 8;
        break;
      default:
        goto LABEL_16;
    }

    *v9 = v14;
    v18 = ++result;
    if (result == v5)
    {
      return result;
    }
  }

  else
  {
    v11 = v9;
    v12 = a2;
  }

LABEL_16:
  if ((a3 & 2) == 0 || *result != 35 || (*v11 |= 0x20u, ++result, v18 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_24;
    }

    if ((*v11 & 7) == 0)
    {
      *v11 |= 4u;
    }

    v18 = ++result;
    if (result != v5)
    {
LABEL_24:
      v15 = sub_23F2AE17C(v11, &v18, v5, v12);
      result = v18;
      if (!v15 || v18 != v5)
      {
        v16 = v9;
        if ((a3 & 8) != 0)
        {
          v17 = sub_23F2AE2FC(v9, &v18, v5, a2);
          result = v18;
          if (v17)
          {
            v16 = v9;
            if (v18 == v5)
            {
              return result;
            }
          }

          else
          {
            v16 = v9;
          }
        }

        if ((a3 & 0x10) == 0 || *result != 76 || (*v16 |= 0x40u, ++result, v18 = result, result != v5))
        {
          if ((a3 & 0x80) == 0 || *result != 110 || (*v16 |= 0x80u, ++result, v18 = result, result != v5))
          {
            if ((a3 & 0x20) != 0)
            {
              sub_23F2AE4B4(v16, &v18);
              result = v18;
            }

            if ((a3 & 0x100) != 0 && result != v5 && *result != 125)
            {
              sub_23F2AD0A0("The format specifier should consume the input or end with a '}'");
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23F2AE01C(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v16[0] = *a2;
  v16[1] = a3;
  if ((sub_23F2AE670(v16) & 0x80000000) != 0)
  {
    sub_23F2AD0A0("The format specifier contains malformed Unicode characters");
  }

  v6 = v16[0];
  if (v16[0] < a3)
  {
    v7 = *v16[0];
    switch(v7)
    {
      case '<':
        v8 = 1;
        goto LABEL_17;
      case '>':
        v8 = 3;
        goto LABEL_17;
      case '^':
        v8 = 2;
LABEL_17:
        *a1 = *a1 & 0xF8 | v8;
        v13 = *a2;
        v14 = v6 - *a2;
        if (v14 == 1)
        {
          v15 = *v13;
          if (v15 == 123)
          {
            sub_23F2AD0A0("The fill option contains an invalid value");
          }

          a1[12] = v15;
        }

        else if (v6 != v13)
        {
          memmove(a1 + 12, v13, v6 - *a2);
        }

        v11 = &(*a2)[v14];
        goto LABEL_23;
    }
  }

  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t sub_23F2AE17C(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    *a2 = v6 + 1;
    if (v6 + 1 == a3)
    {
      sub_23F2AD0A0("End of input while parsing an argument index");
    }

    v11 = sub_23F2AD2AC(v6 + 1, a3, a4);
    if (v11 == a3 || *v11 != 125)
    {
      sub_23F2AD0A0("The argument index is invalid");
    }

    v12 = v11 + 1;
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    LODWORD(v8) = v7 - 48;
    if (v7 == 48)
    {
      sub_23F2AD0A0("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v13 = v6 + 9;
    if (a3 - v6 <= 9)
    {
      v13 = a3;
    }

    v12 = v6 + 1;
    if (v6 + 1 == v13)
    {
LABEL_17:
      if (v12 == a3)
      {
        v12 = a3;
      }

      else
      {
        v15 = *v12;
        if ((v15 - 48) <= 9)
        {
          v8 = v15 + 10 * v8 - 48;
          if (v8 >> 31 || (v12 = v6 + 2, v6 + 2 != a3) && *v12 - 48 <= 9)
          {
            sub_23F2AD0A0("The numeric value of the format specifier is too large");
          }
        }
      }
    }

    else
    {
      v6 = v13 - 1;
      while (1)
      {
        v14 = *v12;
        if ((v14 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        LODWORD(v8) = v14 + 10 * v8 - 48;
        if (++v12 == v13)
        {
          v12 = v13;
          goto LABEL_17;
        }
      }
    }
  }

  *(a1 + 4) = v8;
  *a2 = v12;
  return 1;
}

BOOL sub_23F2AE2FC(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v6 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      sub_23F2AD0A0("End of input while parsing format specifier precision");
    }

    v7 = *v6;
    if (v7 == 123)
    {
      *a2 = v4 + 2;
      if (v4 + 2 == a3)
      {
        sub_23F2AD0A0("End of input while parsing an argument index");
      }

      v9 = a2;
      v11 = sub_23F2AD2AC(v4 + 2, a3, a4);
      if (v11 == a3 || *v11 != 125)
      {
        sub_23F2AD0A0("The argument index is invalid");
      }

      v13 = v11 + 1;
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v12;
      a2 = v9;
    }

    else
    {
      if ((v7 - 58) <= 0xFFFFFFF5)
      {
        sub_23F2AD0A0("The precision option does not contain a value or an argument index");
      }

      if (a3 - v6 <= 9)
      {
        v14 = a3;
      }

      else
      {
        v14 = v4 + 10;
      }

      LODWORD(v15) = v7 - 48;
      v13 = v4 + 2;
      if (v13 == v14)
      {
        v14 = v13;
        if (v13 == a3)
        {
LABEL_23:
          v13 = a3;
        }

        else
        {
LABEL_17:
          v17 = *v14;
          if ((v17 - 48) > 9)
          {
            v13 = v14;
          }

          else
          {
            v15 = v17 + 10 * v15 - 48;
            if (v15 >> 31 || (v13 = v6 + 2, v6 + 2 != a3) && *v13 - 48 <= 9)
            {
              sub_23F2AD0A0("The numeric value of the format specifier is too large");
            }
          }
        }
      }

      else
      {
        v6 = v14 - 1;
        while (1)
        {
          v16 = *v13;
          if ((v16 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          LODWORD(v15) = v16 + 10 * v15 - 48;
          if (++v13 == v14)
          {
            if (v14 == a3)
            {
              goto LABEL_23;
            }

            goto LABEL_17;
          }
        }
      }

      *(a1 + 8) = v15;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v13;
  }

  return v5 == 46;
}

uint64_t sub_23F2AE4B4(uint64_t result, void *a2)
{
  v2 = *a2;
  v3 = 12;
  switch(**a2)
  {
    case '?':
      v3 = 19;
      goto LABEL_20;
    case 'A':
      goto LABEL_20;
    case 'B':
      v3 = 3;
      goto LABEL_20;
    case 'E':
      v3 = 14;
      goto LABEL_20;
    case 'F':
      v3 = 16;
      goto LABEL_20;
    case 'G':
      v3 = 18;
      goto LABEL_20;
    case 'P':
      v3 = 9;
      goto LABEL_20;
    case 'X':
      v3 = 7;
      goto LABEL_20;
    case 'a':
      v3 = 11;
      goto LABEL_20;
    case 'b':
      v3 = 2;
      goto LABEL_20;
    case 'c':
      v3 = 10;
      goto LABEL_20;
    case 'd':
      v3 = 5;
      goto LABEL_20;
    case 'e':
      v3 = 13;
      goto LABEL_20;
    case 'f':
      v3 = 15;
      goto LABEL_20;
    case 'g':
      v3 = 17;
      goto LABEL_20;
    case 'o':
      v3 = 4;
      goto LABEL_20;
    case 'p':
      v3 = 8;
      goto LABEL_20;
    case 's':
      v3 = 1;
      goto LABEL_20;
    case 'x':
      v3 = 6;
LABEL_20:
      *(result + 1) = v3;
      *a2 = v2 + 1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23F2AE670(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

    goto LABEL_28;
  }

  if (v2 != 3)
  {
    if (v2 == 4 && a1[1] - v1 >= 4)
    {
      v6 = (v1[1] & 0xC0) == 128;
      if ((v1[1] & 0xC0) == 0x80)
      {
        v6 = (v1[2] & 0xC0) == 128;
        if ((v1[2] & 0xC0) == 0x80)
        {
          v6 = (v1[3] & 0xC0) == 128;
        }
      }

      if (v6)
      {
        *a1 = v1 + 1;
        v7 = *v1 & 7;
        *a1 = v1 + 2;
        v8 = (v7 << 12) | ((v1[1] & 0x3F) << 6);
        *a1 = v1 + 3;
        v9 = v1[2];
        *a1 = v1 + 4;
        if (v8 >= 0x400)
        {
          v10 = v1[3] & 0x3F | ((v8 | v9 & 0x3F) << 6);
          if (v8 >> 10 >= 0x11)
          {
            return 2147549181;
          }

          else
          {
            return v10;
          }
        }

        return 2147549181;
      }
    }

LABEL_28:
    *a1 = v1 + 1;
    return 2147549181;
  }

  if (a1[1] - v1 < 3)
  {
    goto LABEL_28;
  }

  v11 = (v1[1] & 0xC0) == 128;
  if ((v1[1] & 0xC0) == 0x80)
  {
    v11 = (v1[2] & 0xC0) == 128;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  *a1 = v1 + 1;
  v12 = *v1 & 0xF;
  *a1 = v1 + 2;
  v13 = (v12 << 12) | ((v1[1] & 0x3F) << 6);
  *a1 = v1 + 3;
  if (v13 < 0x800)
  {
    return 2147549181;
  }

  v14 = v13 | v1[2] & 0x3F;
  if ((v13 & 0xF800) == 0xD800)
  {
    return 2147549181;
  }

  else
  {
    return v14;
  }
}

void sub_23F2AEAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2AEB1C(uint64_t result, char a2, uint64_t a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    sub_23F2AEC10();
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    sub_23F2AEC10();
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    sub_23F2AEC10();
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    sub_23F2AEC10();
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    sub_23F2AEC10();
  }

  v4 = *(result + 1);
  if (!*(result + 1))
  {
    if (a4)
    {
      return result;
    }

LABEL_16:
    sub_23F2AE878();
  }

  if (v4 >= 0x20)
  {
    sub_23F2AD0A0("The type does not fit in the mask");
  }

  if (((1 << v4) & a4) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

void sub_23F2AEFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(a30);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(a10);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

uint64_t sub_23F2AF0B4(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      MEMORY[0x245CACAF0](__p);
      v12 = (a2 + 32);
      if (*(a2 + 40) == 1)
      {
        std::locale::operator=(v12, __p);
      }

      else
      {
        std::locale::locale(v12, __p);
        *(a2 + 40) = 1;
      }

      std::locale::~locale(__p);
    }

    std::locale::locale(&v20, (a2 + 32));
    v13 = std::locale::use_facet(&v20, MEMORY[0x277D826C0]);
    std::locale::~locale(&v20);
    v14 = v13->__vftable;
    if (a1)
    {
      (v14[2].~facet)(__p, v13);
    }

    else
    {
      (v14[2].~facet_0)(__p, v13);
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __p[1];
    }

    result = sub_23F2AF5B4(v15, v16, *a2, a3, a4);
    if (v19 < 0)
    {
      v17 = result;
      operator delete(__p[0]);
      return v17;
    }
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return sub_23F2AF788(v10, v8, v9, a3, a4, v8);
  }

  return result;
}

void sub_23F2AF27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23F2AF2AC(char *a1, void *a2)
{
  *&v27[23] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) != 0)
  {
    v9 = *(a1 + 1);
    v10 = a2[1];
    if (v10 <= v9)
    {
      LOBYTE(v11) = 0;
    }

    else if (v10 > 0xC)
    {
      v13 = a2[2] + 32 * v9;
      v9 = *v13;
      v2 = *(v13 + 8);
      LOBYTE(v11) = *(v13 + 16);
      v23[0] = *(v13 + 17);
      *(v23 + 7) = *(v13 + 24);
    }

    else
    {
      v11 = (a2[3] >> (5 * v9)) & 0x1FLL;
      v12 = (a2[2] + 16 * v9);
      v9 = *v12;
      v2 = v12[1];
    }

    v24 = v9;
    v25 = v2;
    v26 = v11;
    *v27 = v23[0];
    *&v27[7] = *(v23 + 7);
    v7 = sub_23F2B0D10(&v22, &v24);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
LABEL_3:
      v8 = *(a1 + 2);
      goto LABEL_16;
    }
  }

  v14 = *(a1 + 2);
  v15 = a2[1];
  if (v15 <= v14)
  {
    LOBYTE(v16) = 0;
  }

  else if (v15 > 0xC)
  {
    v18 = a2[2] + 32 * v14;
    v14 = *v18;
    v2 = *(v18 + 8);
    LOBYTE(v16) = *(v18 + 16);
    v23[0] = *(v18 + 17);
    *(v23 + 7) = *(v18 + 24);
  }

  else
  {
    v16 = (a2[3] >> (5 * v14)) & 0x1FLL;
    v17 = (a2[2] + 16 * v14);
    v14 = *v17;
    v2 = v17[1];
  }

  v24 = v14;
  v25 = v2;
  v26 = v16;
  *v27 = v23[0];
  *&v27[7] = *(v23 + 7);
  v8 = sub_23F2B0D10(&v22, &v24);
LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
  v20 = v8 | (*(a1 + 3) << 32);
  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

uint64_t sub_23F2AF460(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v15 = *MEMORY[0x277D85DE8];
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

    v9 = &v15;
LABEL_18:
    result = sub_23F2B0DF0(a1, a2, v8, a4, a5, v12, v9, v7, v11);
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

    v9 = v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = sub_23F2B0DF0(a1, a2, a3, a4, a5, v12, v13, 0, 0xAu);
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

  result = sub_23F2B0DF0(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, v14, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F2AF5B4(unsigned __int8 *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = __src;
  v7 = HIDWORD(a4);
  if (a4 <= 0)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), v6, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      v6 += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  if (a2)
  {
    if (*__src < 0)
    {
      v11 = a4;
      v12 = a5;
    }

    else
    {
      v8 = 0;
      v9 = &__src[v7];
      __src = &__src[v7 - 1];
      while (1)
      {
        if (a2 - 1 == v8)
        {
          v19 = a2;
          goto LABEL_36;
        }

        if (v7 - 1 == v8)
        {
          break;
        }

        v10 = v6[++v8];
        if (v10 < 0)
        {
          v11 = a4;
          v12 = a5;
          v7 = v7 - v8 + 1;
          __src = &v6[v8 - 1];
          goto LABEL_21;
        }
      }

      if ((*v9 & 0x80000000) == 0)
      {
        v19 = HIDWORD(a4);
        goto LABEL_36;
      }

      v11 = a4;
      v12 = a5;
      v7 = 1;
    }

LABEL_21:
    v20 = (__src - v6);
    v21 = a2;
    v22 = sub_23F2AF9D0(__src, &v6[a2], v7, 1);
    a2 = v21;
    v19 = &v20[v22];
    a5 = v12;
    a4 = v11;
  }

  else
  {
    v19 = 0;
  }

LABEL_36:

  return sub_23F2AF788(v6, a2, a3, a4, a5, v19);
}

uint64_t sub_23F2AF788(char *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), __src, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      __src += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v27 = v9 >> 1;
      v9 -= v9 >> 1;
      v11 = sub_23F2B0B48(a3, v27, SHIDWORD(a5));
      v12 = *(v11 + 32);
      if (v12)
      {
        goto LABEL_18;
      }

LABEL_41:
      v21 = a2;
      goto LABEL_42;
    }

LABEL_17:
    v9 = 0;
    v11 = sub_23F2B0B48(a3, (a4 >> 32) - a6, SHIDWORD(a5));
    v12 = *(v11 + 32);
    if (v12)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  if ((a4 & 7) == 0)
  {
    goto LABEL_17;
  }

  v11 = sub_23F2B0B48(a3, 0, SHIDWORD(a5));
  v12 = *(v11 + 32);
  if (!v12)
  {
    goto LABEL_41;
  }

LABEL_18:
  v20 = *v12;
  v19 = v12[1];
  if (*v12 - v19 >= a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = *v12 - v19;
  }

  v12[1] = v19 + a2;
  if (v20 > v19 && v21 != 0)
  {
LABEL_42:
    v28 = *(v11 + 16);
    do
    {
      v29 = *(v11 + 8) - v28;
      if (v29 < v21 + 1)
      {
        (*(v11 + 24))(v11, v21 + 2);
        v28 = *(v11 + 16);
        v29 = *(v11 + 8) - v28;
      }

      if (v29 >= v21)
      {
        v30 = v21;
      }

      else
      {
        v30 = v29;
      }

      if (v30)
      {
        memmove((*v11 + v28), __src, v30);
        v28 = *(v11 + 16);
      }

      v28 += v30;
      *(v11 + 16) = v28;
      __src += v30;
      v24 = v21 > v29;
      v21 -= v30;
    }

    while (v24);
  }

  return sub_23F2B0B48(v11, v9, v10);
}

uint64_t sub_23F2AF9D0(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v104 = a1;
  v105 = a2;
  v7 = sub_23F2AE670(&v104);
  v8 = v7 & 0x7FFFFFFF;
  v106 = v7 & 0x7FFFFFFF;
  v9 = (v7 << 11) | 0x7FF;
  v10 = 1496;
  v11 = &unk_23F3447B8;
  do
  {
    v12 = v10 >> 1;
    v13 = &v11[v10 >> 1];
    v15 = *v13;
    v14 = v13 + 1;
    v10 += ~(v10 >> 1);
    if (v9 >= v15)
    {
      v11 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  while (v10);
  if (v11 == &unk_23F3447B8 || (v16 = *(v11 - 1), ((v16 >> 4) & 0x7F) + (v16 >> 11) < v8))
  {
    v107 = 16;
    v108 = 0;
    v109 = 0;
  }

  else
  {
    v26 = v16 & 0xF;
    v107 = v26;
    v108 = 0;
    v109 = 0;
    if (v26 == 9)
    {
      v25 = 3;
      goto LABEL_25;
    }

    if (v26 == 3)
    {
      v25 = 2;
      goto LABEL_25;
    }
  }

  v17 = 201;
  v18 = &unk_23F345F18;
  do
  {
    v19 = v17 >> 1;
    v20 = &v18[v17 >> 1];
    v22 = *v20;
    v21 = v20 + 1;
    v17 += ~(v17 >> 1);
    if (v9 >= v22)
    {
      v18 = v21;
    }

    else
    {
      v17 = v19;
    }
  }

  while (v17);
  if (v18 != &unk_23F345F18)
  {
    v23 = *(v18 - 1);
    v24 = (v23 & 3) == 0 && ((v23 >> 2) & 0x1FF) + (v23 >> 11) >= v8;
    if (v24)
    {
      v25 = 1;
LABEL_25:
      LODWORD(v108) = v25;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  if (v104 != v105)
  {
    v101 = a2;
    v102 = a3;
    v27 = 0;
LABEL_35:
    v31 = v8;
    while (1)
    {
      v32 = v104;
      if (v104 == v105)
      {
LABEL_75:
        if (v31 - 262142 < 0xFFFC1102)
        {
          goto LABEL_29;
        }

        v55 = &unk_23F34623C;
        v56 = 107;
        do
        {
          v57 = v56 >> 1;
          v58 = &v55[v56 >> 1];
          v60 = *v58;
          v59 = v58 + 1;
          v56 += ~(v56 >> 1);
          if (((v31 << 14) | 0x3FFF) >= v60)
          {
            v55 = v59;
          }

          else
          {
            v56 = v57;
          }
        }

        while (v56);
        if (v55 == &unk_23F34623C)
        {
LABEL_29:
          v28 = v27 + 1;
          v29 = v102;
          if (a4)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v24 = (*(v55 - 1) & 0x3FFF) + (*(v55 - 1) >> 14) >= v31;
          v61 = 1;
          if (v24)
          {
            v61 = 2;
          }

          v28 = v61 + v27;
          v29 = v102;
          if (a4)
          {
LABEL_31:
            v30 = v32 == v101 || v28 > v29;
            v27 = v28;
            if (v30)
            {
              return v27;
            }

            goto LABEL_35;
          }
        }

        if (v28 <= v29)
        {
          goto LABEL_31;
        }

        return v27;
      }

      v33 = (__clz(*v104 ^ 0xFF) - 24);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          if (v105 - v104 >= 3)
          {
            v41 = (v104[1] & 0xC0) == 128;
            if ((v104[1] & 0xC0) == 0x80)
            {
              v41 = (v104[2] & 0xC0) == 128;
            }

            if (v41)
            {
              ++v104;
              v42 = *v32 & 0xF;
              v104 = v32 + 2;
              v43 = (v42 << 12) | ((v32[1] & 0x3F) << 6);
              v104 = v32 + 3;
              v36 = -2147418115;
              if (v43 >= 0x800)
              {
                v36 = v43 | v32[2] & 0x3F;
                if ((v43 & 0xF800) == 0xD800)
                {
                  v36 = -2147418115;
                }
              }

              goto LABEL_64;
            }
          }
        }

        else if (v33 == 4 && v105 - v104 >= 4)
        {
          v37 = (v104[1] & 0xC0) == 128;
          if ((v104[1] & 0xC0) == 0x80)
          {
            v37 = (v104[2] & 0xC0) == 128;
            if ((v104[2] & 0xC0) == 0x80)
            {
              v37 = (v104[3] & 0xC0) == 128;
            }
          }

          if (v37)
          {
            ++v104;
            v38 = *v32 & 7;
            v104 = v32 + 2;
            v39 = (v38 << 12) | ((v32[1] & 0x3F) << 6);
            v104 = v32 + 3;
            v40 = v32[2];
            v104 = v32 + 4;
            v36 = -2147418115;
            if (v39 >= 0x400)
            {
              v36 = v32[3] & 0x3F | ((v39 | v40 & 0x3F) << 6);
              if (v39 >> 10 >= 0x11)
              {
                v36 = -2147418115;
              }
            }

            goto LABEL_64;
          }
        }
      }

      else
      {
        if (!v33)
        {
          ++v104;
          v36 = *v32;
          goto LABEL_64;
        }

        if (v33 == 2 && v105 - v104 >= 2)
        {
          v34 = v104 + 1;
          if ((v104[1] & 0xC0) == 0x80)
          {
            ++v104;
            v35 = *v32 & 0x1F;
            v104 = v32 + 2;
            v36 = -2147418115;
            if (v35 >= 2)
            {
              v36 = *v34 & 0x3F | (v35 << 6);
            }

            goto LABEL_64;
          }
        }
      }

      ++v104;
      v36 = -2147418115;
LABEL_64:
      v44 = &unk_23F3447B8;
      v45 = 1496;
      do
      {
        v46 = v45 >> 1;
        v47 = &v44[v45 >> 1];
        v49 = *v47;
        v48 = v47 + 1;
        v45 += ~(v45 >> 1);
        if (((v36 << 11) | 0x7FFu) >= v49)
        {
          v44 = v48;
        }

        else
        {
          v45 = v46;
        }
      }

      while (v45);
      v8 = v36 & 0x7FFFFFFF;
      if (v44 == &unk_23F3447B8)
      {
        v53 = 16;
      }

      else
      {
        v50 = *(v44 - 1);
        v51 = ((v50 >> 4) & 0x7F) + (v50 >> 11);
        v52 = v50 & 0xF;
        if (v51 >= v8)
        {
          v53 = v52;
        }

        else
        {
          v53 = 16;
        }
      }

      v54 = sub_23F2B0228(&v106, v8, v53);
      v106 = v8;
      v107 = v53;
      if (v54)
      {
        goto LABEL_75;
      }
    }
  }

  if (v8 - 262142 >= 0xFFFC1102)
  {
    v63 = (v7 << 14) | 0x3FFF;
    if (a4)
    {
      if (v104 == a2)
      {
        v79 = 107;
        v80 = &unk_23F34623C;
        do
        {
          v81 = v79 >> 1;
          v82 = &v80[v79 >> 1];
          v84 = *v82;
          v83 = v82 + 1;
          v79 += ~(v79 >> 1);
          if (v63 >= v84)
          {
            v80 = v83;
          }

          else
          {
            v79 = v81;
          }
        }

        while (v79);
        if (v80 == &unk_23F34623C)
        {
          return 1;
        }

        else if ((*(v80 - 1) & 0x3FFFu) + (*(v80 - 1) >> 14) < v8)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        v27 = 0;
        do
        {
          while (1)
          {
            v64 = &unk_23F34623C;
            v65 = 107;
            do
            {
              v66 = v65 >> 1;
              v67 = &v64[v65 >> 1];
              v69 = *v67;
              v68 = v67 + 1;
              v65 += ~(v65 >> 1);
              if (v63 >= v69)
              {
                v64 = v68;
              }

              else
              {
                v65 = v66;
              }
            }

            while (v65);
            if (v64 != &unk_23F34623C)
            {
              break;
            }

            if (++v27 > a3)
            {
              return v27;
            }
          }

          if ((*(v64 - 1) & 0x3FFFu) + (*(v64 - 1) >> 14) < v8)
          {
            v70 = 1;
          }

          else
          {
            v70 = 2;
          }

          v27 += v70;
        }

        while (v27 <= a3);
      }
    }

    else if (v104 == a2)
    {
      v92 = 107;
      v93 = &unk_23F34623C;
      do
      {
        v94 = v92 >> 1;
        v95 = &v93[v92 >> 1];
        v97 = *v95;
        v96 = v95 + 1;
        v92 += ~(v92 >> 1);
        if (v63 >= v97)
        {
          v93 = v96;
        }

        else
        {
          v92 = v94;
        }
      }

      while (v92);
      if (v93 == &unk_23F34623C)
      {
        v98 = 1;
      }

      else
      {
        v98 = 1;
        if ((*(v93 - 1) & 0x3FFFu) + (*(v93 - 1) >> 14) >= v8)
        {
          v98 = 2;
        }
      }

      if (v98 <= a3)
      {
        return v98;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v71 = 0;
      do
      {
        while (1)
        {
          v27 = v71;
          v72 = &unk_23F34623C;
          v73 = 107;
          do
          {
            v74 = v73 >> 1;
            v75 = &v72[v73 >> 1];
            v77 = *v75;
            v76 = v75 + 1;
            v73 += ~(v73 >> 1);
            if (v63 >= v77)
            {
              v72 = v76;
            }

            else
            {
              v73 = v74;
            }
          }

          while (v73);
          if (v72 != &unk_23F34623C)
          {
            break;
          }

          v71 = v27 + 1;
          if (v27 + 1 > a3)
          {
            return v27;
          }
        }

        if ((*(v72 - 1) & 0x3FFFu) + (*(v72 - 1) >> 14) < v8)
        {
          v78 = 1;
        }

        else
        {
          v78 = 2;
        }

        v71 = v78 + v27;
      }

      while (v71 <= a3);
    }
  }

  else
  {
    v27 = a4 != 0 || a3 != 0;
    if ((a4 != 0 || a3 != 0) && v104 != a2)
    {
      if (a4)
      {
        if (a3 + 1 > 1)
        {
          return a3 + 1;
        }

        else
        {
          return 1;
        }
      }

      if (a3 <= 1)
      {
        v85 = 1;
      }

      else
      {
        v85 = a3;
      }

      v24 = v85 != 0;
      v86 = v85 - 1;
      if (__PAIR128__(v24 - 1, v86) >= a3)
      {
        v86 = a3;
      }

      if (v86 && (a3 <= 1 ? (v87 = 1) : (v87 = a3), (v24 = v87 != 0, v88 = v87 - 1, __PAIR128__(v24 - 1, v88) >= a3) ? (v89 = a3) : (v89 = v88), (~v89 & 0xFFFFFFFFFFFFFFFELL) != 0))
      {
        v99 = v86 + 1;
        v27 = (v86 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v90 = (v86 + 1) | 1;
        v100 = v27;
        do
        {
          v100 -= 2;
        }

        while (v100);
        if (v99 == v27)
        {
          return v27;
        }
      }

      else
      {
        v90 = 1;
      }

      do
      {
        v91 = v90 + 1;
        if (v90 > a3)
        {
          break;
        }

        ++v90;
      }

      while (v91 <= a3);
      return v91 - 1;
    }
  }

  return v27;
}