void sub_23EF569A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_23EF47ABC(&a24);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF569C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0655DC((v9 + 8), 6);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF56A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 97) < 0)
  {
    operator delete(*(v9 - 120));
    sub_23EF47C2C(&a9);
    _Unwind_Resume(a1);
  }

  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF56A7C(void *a1, uint64_t a2)
{
  v2 = *a1;
  **a1 = &unk_285179588;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
  }

  v2[1] = v3;
  v2[2] = v4;
  v8 = *(a2 + 24);
  *(v2 + 8) = *(a2 + 32);
  v2[3] = v8;
  v2[5] = v5;
  *(v2 + 12) = v6;
  *(v2 + 26) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

__n128 sub_23EF56B68(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  *v2 = &unk_285179288;
  *(v2 + 8) = v4;
  *(v2 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 24);
  v6 = *(a2 + 40);
  *(v2 + 54) = *(a2 + 54);
  *(v2 + 40) = v6;
  *(v2 + 24) = result;
  return result;
}

void sub_23EF56BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF56C58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 32);
  *(a2 + 8) = *(result + 40);
  return result;
}

void sub_23EF56E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF570DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF57120(_DWORD *a1, void *a2, int a3)
{
  sub_23F0845A0(a1, a2, a3, &v4);
  if ((v5 & 1) == 0)
  {
    v7[0] = "save";
    v7[1] = 4;
    v6 = a3;
    sub_23F0843B0("Failure during ", v7, " from stream with file format ");
  }
}

void sub_23EF57430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (*(v33 - 161) < 0)
  {
    operator delete(*(v33 - 184));
    if ((v32 & 1) == 0)
    {
LABEL_6:
      sub_23EF574C0(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

uint64_t sub_23EF574C0(uint64_t result)
{
  if ((*(result + 120) & 1) == 0 && *(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(*(result + 80));
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(*(result + 48));
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(*(result + 16));
      return v3;
    }
  }

  return result;
}

uint64_t sub_23EF57560(uint64_t result)
{
  if (*(result + 120))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28517BD08;
    __cxa_throw(exception, &unk_28517BCE0, std::exception::~exception);
  }

  return result;
}

uint64_t sub_23EF575B8(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    if (*(result + 104) != 1)
    {
      goto LABEL_5;
    }

    if (*(result + 103) < 0)
    {
      v2 = result;
      operator delete(*(result + 80));
      result = v2;
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
LABEL_5:
        if (*(result + 40) != 1)
        {
          return result;
        }

LABEL_6:
        if (*(result + 39) < 0)
        {
          v1 = result;
          operator delete(*(result + 16));
          return v1;
        }

        return result;
      }
    }

    else if ((*(result + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v3 = result;
    operator delete(*(result + 48));
    result = v3;
    if (*(v3 + 40) != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_23EF57668(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_23EF34EA4(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      v6 = a2;
      sub_23EF34EA4((a1 + 32), *(a2 + 4), *(a2 + 5));
      a2 = v6;
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = *(a2 + 7);
    if (*(a2 + 87) < 0)
    {
      sub_23EF34EA4((a1 + 64), *(a2 + 8), *(a2 + 9));
    }

    else
    {
      v7 = a2[4];
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 64) = v7;
    }

    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_23EF5776C(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  sub_23EF577C4(v2);
  if ((*(v1 + 24) & 1) != 0 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EF577C4(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    if ((*(result + 55) & 0x80000000) == 0)
    {
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_6:
      v2 = result;
      operator delete(*result);
      return v2;
    }

    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 23) < 0)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_23EF57834(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    if (*(result + 88) != 1)
    {
      goto LABEL_5;
    }

    if (*(result + 87) < 0)
    {
      v2 = result;
      operator delete(*(result + 64));
      result = v2;
      if ((*(v2 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        if (*(result + 24) != 1)
        {
          return result;
        }

LABEL_6:
        if (*(result + 23) < 0)
        {
          v1 = result;
          operator delete(*result);
          return v1;
        }

        return result;
      }
    }

    else if ((*(result + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v3 = result;
    operator delete(*(result + 32));
    result = v3;
    if (*(v3 + 24) != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

void sub_23EF578E8(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF57920(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_23EF57994(uint64_t a1)
{
  v2 = *(a1 + 104);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 56);
    if (v4 < v5)
    {
      *(a1 + 96) = v5;
      v4 = v5;
    }

    v6 = *(a1 + 48);
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v19 = 0;
      goto LABEL_12;
    }

    v6 = *(a1 + 24);
    v3 = *(a1 + 40) - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_23EF2F8F4();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v19 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = *a1;
  if (*(*a1 + 88) != 1 || *(v9 + 80) != 7 || ((v10 = *(v9 + 72), v11 = *v10, v12 = *(v10 + 3), v11 == *"version") ? (v13 = v12 == *"sion") : (v13 = 0), !v13))
  {
    LOBYTE(v20) = 6;
    v21 = v8;
    v14 = sub_23F2E72C0(v9);
    v15 = *v14;
    *v14 = 6;
    LOBYTE(v20) = v15;
    v16 = v14[1];
    v14[1] = v21;
    v21 = v16;
    sub_23F0655DC(&v21, v15);
    v9 = *a1;
  }

  v17 = __dst[0];
  if (v7 >= 0)
  {
    v17 = __dst;
  }

  v20 = v17;
  v21 = v8;
  sub_23F2E76F4(v9, &v20);
}

void sub_23EF57C0C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF551A0(v10, a2);
  sub_23EF57D3C(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF57D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23EF57D3C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v47[0] = (v6 + 16);
    sub_23F2FD25C(v47, 2u);
    sub_23F2F887C(*(a1 + 24));
    v7 = *(a1 + 24);
    if (*(v7 + 40) != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v47[0] = (v7 + 16);
    sub_23F2FD5D0(v47, *(a2 + 8));
    v8 = *(a2 + 16);
    v48 = *(a2 + 16);
    v9 = *(a1 + 24);
    if (*(v9 + 40) != 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v47[0] = (v9 + 16);
    sub_23F2FC63C(v47, &v48);
    goto LABEL_11;
  }

  sub_23F2FD4DC(v47, (v6 + 8));
  sub_23F2F887C(*(a1 + 24));
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_23F2FDB18((v7 + 8), *(a2 + 8));
  v8 = *(a2 + 16);
  v48 = *(a2 + 16);
  v9 = *(a1 + 24);
  if (*(v9 + 40) == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v8 < 0)
  {
    LOBYTE(v47[0]) = -52;
    BYTE1(v47[0]) = v8;
  }

  else
  {
    LOBYTE(v47[0]) = v8;
  }

  v10 = *(v9 + 8);
  std::ostream::write();
LABEL_11:
  v11 = *(a1 + 24);
  v12 = *(v11[11] - 8);
  sub_23F2F866C(v11 + 6, v11[2] - v12 - 9);
  v13 = v11[6];
  if (v13)
  {
    memmove((v11[3] + v12), v11[7], v13);
  }

  v11[6] = 0;
  v14 = v11[10];
  v15 = v11[11] - 8;
  v11[11] = v15;
  if (v14 == v15)
  {
    v16 = *v11;
    v18 = v11[2];
    v17 = v11[3];
    std::ostream::write();
    if (*(v11 + 40) == 1)
    {
      free(v11[3]);
      *(v11 + 40) = 0;
    }
  }

  if (*(a2 + 48) == 1)
  {
    v48 = 1;
    v19 = *(a1 + 24);
    if (*(v19 + 40) == 1)
    {
      v47[0] = (v19 + 16);
      sub_23F2FC63C(v47, &v48);
      v20 = *(a1 + 24);
      if (*(v20 + 40) != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v47[0]) = 1;
      v23 = *(v19 + 8);
      std::ostream::write();
      v20 = *(a1 + 24);
      if (*(v20 + 40) != 1)
      {
LABEL_19:
        result = sub_23F2FE7C4((v20 + 8), (a2 + 24));
        if (a3 < 4)
        {
          return result;
        }

        goto LABEL_28;
      }
    }

    v47[0] = (v20 + 16);
    result = sub_23F2FE3A8(v47, (a2 + 24));
    if (a3 < 4)
    {
      return result;
    }
  }

  else
  {
    v48 = 0;
    v22 = *(a1 + 24);
    if (*(v22 + 40) == 1)
    {
      v47[0] = (v22 + 16);
      result = sub_23F2FC63C(v47, &v48);
      if (a3 < 4)
      {
        return result;
      }
    }

    else
    {
      LOBYTE(v47[0]) = 0;
      v24 = *(v22 + 8);
      result = std::ostream::write();
      if (a3 < 4)
      {
        return result;
      }
    }
  }

LABEL_28:
  v47[0] = "custom_timestamp";
  v47[1] = 16;
  v47[2] = (a2 + 56);
  result = sub_23EF5842C(a1, v47);
  if (a3 != 5)
  {
    if (a3 < 6)
    {
      return result;
    }

    if (*(a2 + 104) != 1)
    {
      v48 = 0;
      v30 = *(a1 + 24);
      if (*(v30 + 40) == 1)
      {
        v47[0] = (v30 + 16);
        sub_23F2FC63C(v47, &v48);
        if (*(a2 + 136) == 1)
        {
LABEL_50:
          v48 = 1;
          v34 = *(a1 + 24);
          if (*(v34 + 40) == 1)
          {
            v47[0] = (v34 + 16);
            sub_23F2FC63C(v47, &v48);
            v35 = *(a1 + 24);
            if (*(v35 + 40) != 1)
            {
              goto LABEL_52;
            }
          }

          else
          {
            LOBYTE(v47[0]) = 1;
            v39 = *(v34 + 8);
            std::ostream::write();
            v35 = *(a1 + 24);
            if (*(v35 + 40) != 1)
            {
LABEL_52:
              sub_23F2FE7C4((v35 + 8), (a2 + 112));
              if (*(a2 + 168) == 1)
              {
LABEL_60:
                v48 = 1;
                v40 = *(a1 + 24);
                if (*(v40 + 40) == 1)
                {
                  v47[0] = (v40 + 16);
                  sub_23F2FC63C(v47, &v48);
                }

                else
                {
                  LOBYTE(v47[0]) = 1;
                  v41 = *(v40 + 8);
                  std::ostream::write();
                }

                v42 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
                v43 = *(a1 + 24);
                if (*(v43 + 40) == 1)
                {
                  v47[0] = (v43 + 16);
                  result = sub_23F2FDC5C(v47, v42);
                  v45 = *(a2 + 144);
                  v44 = *(a2 + 152);
                  v46 = *(a1 + 24);
                  if (*(v46 + 40) != 1)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  result = sub_23F2FDF70((v43 + 8));
                  v45 = *(a2 + 144);
                  v44 = *(a2 + 152);
                  v46 = *(a1 + 24);
                  if (*(v46 + 40) != 1)
                  {
LABEL_65:
                    while (v45 != v44)
                    {
                      result = sub_23F2FE7C4((v46 + 8), v45);
                      v45 += 3;
                    }

                    return result;
                  }
                }

                for (v47[0] = (v46 + 16); v45 != v44; v45 += 3)
                {
                  result = sub_23F2FE3A8(v47, v45);
                }

                return result;
              }

LABEL_55:
              v48 = 0;
              v37 = *(a1 + 24);
              if (*(v37 + 40) == 1)
              {
                v47[0] = (v37 + 16);
                return sub_23F2FC63C(v47, &v48);
              }

              else
              {
                LOBYTE(v47[0]) = 0;
                v38 = *(v37 + 8);
                return std::ostream::write();
              }
            }
          }

          v47[0] = (v35 + 16);
          sub_23F2FE3A8(v47, (a2 + 112));
          if (*(a2 + 168) == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_55;
        }
      }

      else
      {
        LOBYTE(v47[0]) = 0;
        v33 = *(v30 + 8);
        std::ostream::write();
        if (*(a2 + 136) == 1)
        {
          goto LABEL_50;
        }
      }

LABEL_46:
      v48 = 0;
      v32 = *(a1 + 24);
      if (*(v32 + 40) == 1)
      {
        v47[0] = (v32 + 16);
        sub_23F2FC63C(v47, &v48);
        if (*(a2 + 168) == 1)
        {
          goto LABEL_60;
        }
      }

      else
      {
        LOBYTE(v47[0]) = 0;
        v36 = *(v32 + 8);
        std::ostream::write();
        if (*(a2 + 168) == 1)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_55;
    }

    v48 = 1;
    v27 = *(a1 + 24);
    if (*(v27 + 40) == 1)
    {
      v47[0] = (v27 + 16);
      sub_23F2FC63C(v47, &v48);
      v28 = *(a1 + 24);
      if (*(v28 + 40) != 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v47[0]) = 1;
      v31 = *(v27 + 8);
      std::ostream::write();
      v28 = *(a1 + 24);
      if (*(v28 + 40) != 1)
      {
LABEL_37:
        sub_23F2FE7C4((v28 + 8), (a2 + 80));
        if (*(a2 + 136) == 1)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }
    }

    v47[0] = (v28 + 16);
    sub_23F2FE3A8(v47, (a2 + 80));
    if (*(a2 + 136) == 1)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (*(a2 + 104) != 1)
  {
    goto LABEL_55;
  }

  v48 = 1;
  v25 = *(a1 + 24);
  if (*(v25 + 40) == 1)
  {
    v47[0] = (v25 + 16);
    sub_23F2FC63C(v47, &v48);
    v26 = *(a1 + 24);
    if (*(v26 + 40) != 1)
    {
      return sub_23F2FE7C4((v26 + 8), (a2 + 80));
    }
  }

  else
  {
    LOBYTE(v47[0]) = 1;
    v29 = *(v25 + 8);
    std::ostream::write();
    v26 = *(a1 + 24);
    if (*(v26 + 40) != 1)
    {
      return sub_23F2FE7C4((v26 + 8), (a2 + 80));
    }
  }

  v47[0] = (v26 + 16);
  return sub_23F2FE3A8(v47, (a2 + 80));
}

uint64_t sub_23EF5842C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (*(v3 + 16) != 1)
  {
    v22 = 0;
    v10 = *(a1 + 24);
    if (*(v10 + 40) != 1)
    {
      LOBYTE(v23) = 0;
      v13 = *(v10 + 8);
      std::ostream::write();
      return a1;
    }

    v23 = (v10 + 16);
    sub_23F2FC63C(&v23, &v22);
    return a1;
  }

  v22 = 1;
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v23 = (v4 + 16);
    sub_23F2FC63C(&v23, &v22);
    v5 = *(a1 + 24);
    if (*(v5 + 40) != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    LOBYTE(v23) = 1;
    v12 = *(v4 + 8);
    std::ostream::write();
    v5 = *(a1 + 24);
    if (*(v5 + 40) != 1)
    {
LABEL_4:
      sub_23F2FD4DC(&v23, (v5 + 8));
      sub_23F2F887C(*(a1 + 24));
      v6 = *(a1 + 24);
      if (*(v6 + 40) != 1)
      {
        goto LABEL_5;
      }

LABEL_13:
      v23 = (v6 + 16);
      sub_23F2FD5D0(&v23, *v3);
      v7 = *(v3 + 8);
      v22 = *(v3 + 8);
      v8 = *(a1 + 24);
      if (*(v8 + 40) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  v23 = (v5 + 16);
  sub_23F2FD25C(&v23, 2u);
  sub_23F2F887C(*(a1 + 24));
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23F2FDB18((v6 + 8), *v3);
  v7 = *(v3 + 8);
  v22 = *(v3 + 8);
  v8 = *(a1 + 24);
  if (*(v8 + 40) != 1)
  {
LABEL_6:
    if (v7 < 0)
    {
      LOBYTE(v23) = -52;
      BYTE1(v23) = v7;
    }

    else
    {
      LOBYTE(v23) = v7;
    }

    v9 = *(v8 + 8);
    std::ostream::write();
    goto LABEL_18;
  }

LABEL_14:
  v23 = (v8 + 16);
  sub_23F2FC63C(&v23, &v22);
LABEL_18:
  v14 = *(a1 + 24);
  v15 = *(v14[11] - 8);
  sub_23F2F866C(v14 + 6, v14[2] - v15 - 9);
  v16 = v14[6];
  if (v16)
  {
    memmove((v14[3] + v15), v14[7], v16);
  }

  v14[6] = 0;
  v17 = v14[10];
  v18 = v14[11] - 8;
  v14[11] = v18;
  if (v17 != v18)
  {
    return a1;
  }

  v19 = *v14;
  v21 = v14[2];
  v20 = v14[3];
  std::ostream::write();
  if (*(v14 + 40) != 1)
  {
    return a1;
  }

  free(v14[3]);
  *(v14 + 40) = 0;
  return a1;
}

void sub_23EF586A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v35 = (v4 + 16);
    sub_23F2FD25C(&v35, 2u);
  }

  else
  {
    sub_23F2FD4DC(&v35, (v4 + 8));
  }

  sub_23F2F887C(*(a1 + 24));
  *v32 = *a2;
  *&v32[12] = *(a2 + 12);
  v33[0] = 0;
  v34 = -1;
  v5 = *(a2 + 96);
  if (v5 != -1)
  {
    v35 = v33;
    (off_285178F68[v5])(&v35, a2 + 32);
    v34 = v5;
  }

  LOWORD(v48[0]) = *v32;
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v35 = (v6 + 16);
    sub_23F2FCB5C(&v35, v48);
  }

  else if (*v32 > 0x7Fu)
  {
    if (*v32 > 0xFFu)
    {
      LOBYTE(v35) = -51;
      *(&v35 + 1) = __rev16(*v32);
    }

    else
    {
      LOBYTE(v35) = -52;
      BYTE1(v35) = v32[0];
    }

    v8 = *(v6 + 8);
    std::ostream::write();
  }

  else
  {
    LOBYTE(v35) = v32[0];
    v7 = *(v6 + 8);
    std::ostream::write();
  }

  v9 = *(a1 + 24);
  if (*(v9 + 40) == 1)
  {
    v35 = (v9 + 16);
    sub_23F2FD25C(&v35, 2u);
  }

  else
  {
    LOBYTE(v35) = 2;
    v10 = *(v9 + 8);
    std::ostream::write();
  }

  sub_23F2F887C(*(a1 + 24));
  v11 = *(a1 + 24);
  if (*(v11 + 40) == 1)
  {
    v35 = (v11 + 16);
    sub_23F2FDC5C(&v35, *&v32[8]);
  }

  else
  {
    sub_23F2FDF70((v11 + 8));
  }

  v12 = *(a1 + 24);
  if (*(v12 + 40) == 1)
  {
    v35 = (v12 + 16);
    sub_23F2FD25C(&v35, *&v32[16]);
    sub_23F2FD25C(&v35, *&v32[20]);
  }

  else
  {
    sub_23F2FD4DC(&v35, (v12 + 8));
    sub_23F2FD4DC(&v35, (v12 + 8));
  }

  v13 = *(a1 + 24);
  v14 = *(v13[11] - 8);
  sub_23F2F866C(v13 + 6, v13[2] - v14 - 9);
  v15 = v13[6];
  if (v15)
  {
    memmove((v13[3] + v14), v13[7], v15);
  }

  v13[6] = 0;
  v16 = v13[10];
  v17 = v13[11] - 8;
  v13[11] = v17;
  if (v16 == v17)
  {
    v18 = *v13;
    v20 = v13[2];
    v19 = v13[3];
    std::ostream::write();
    if (*(v13 + 40) == 1)
    {
      free(v13[3]);
      *(v13 + 40) = 0;
    }
  }

  if (*v32 == 1)
  {
    sub_23F094978(v32, &v35);
    sub_23F0971F0(a1, &v35);
    v21 = v37;
    if (!v37)
    {
LABEL_33:
      v23 = v34;
      if (v34 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v22 = sub_23F096D6C(*v32);
    sub_23F094978(v32, v48);
    v35 = a1;
    v36 = MEMORY[0x277D82868] + 16;
    MEMORY[0x245CACAF0](&v37);
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v36 = MEMORY[0x277D82878] + 16;
    v41 = 0u;
    v42 = 0u;
    v43 = 24;
    sub_23EF36F98(&v36);
    v45.__loc_ = 0;
    v44 = MEMORY[0x277D82850] + 24;
    v45.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v45, &v36);
    v46 = 0;
    v47 = -1;
    sub_23EF57120(v48, &v44, v22);
    sub_23EF58C14(&v35);
    v21 = v49;
    if (!v49)
    {
      goto LABEL_33;
    }
  }

  if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  v23 = v34;
  if (v34 != -1)
  {
LABEL_34:
    (off_285178E58[v23])(&v35, v33);
  }

LABEL_35:
  v24 = *(a1 + 24);
  v25 = *(v24[11] - 8);
  sub_23F2F866C(v24 + 6, v24[2] - v25 - 9);
  v26 = v24[6];
  if (v26)
  {
    memmove((v24[3] + v25), v24[7], v26);
  }

  v24[6] = 0;
  v27 = v24[10];
  v28 = v24[11] - 8;
  v24[11] = v28;
  if (v27 == v28)
  {
    v29 = *v24;
    v31 = v24[2];
    v30 = v24[3];
    std::ostream::write();
    if (*(v24 + 40) == 1)
    {
      free(v24[3]);
      *(v24 + 40) = 0;
    }
  }
}

void sub_23EF58B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23EF58C14(&a22);
  sub_23EF47ABC(v36 - 120);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF58BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF47ABC(&a22);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_23EF58C14(uint64_t *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v15 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_29:
      sub_23EF2F8F4();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v15 = v3;
  if (v3)
  {
    memmove(__p, v6, v3);
  }

LABEL_12:
  *(__p + v3) = 0;
  v7 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v8 = v15;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = *(*a1 + 24);
  if (*(v9 + 40) == 1)
  {
    v18[0] = (v9 + 16);
    sub_23F2FDC5C(v18, v8);
  }

  else
  {
    sub_23F2FDF70((v9 + 8));
  }

  v10 = __p[0];
  if (v7 >= 0)
  {
    v10 = __p;
  }

  v11 = *a1;
  v16[0] = v10;
  v16[1] = v8;
  v12 = *(v11 + 24);
  if (*(v12 + 40) == 1)
  {
    v17 = (v12 + 16);
    LODWORD(v18[0]) = v8;
    v18[1] = v10;
    sub_23F2FC17C(&v17, v18);
  }

  else
  {
    sub_23F2FC430((v12 + 8), v16);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    std::ostream::~ostream();
    a1[1] = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:
    operator delete(a1[9]);
    goto LABEL_25;
  }

  std::ostream::~ostream();
  a1[1] = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  a1[1] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(a1 + 2);
  return a1;
}

void sub_23EF58E64(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23EF551A0(v3, a2);
  sub_23EF58F94(a1, v3);
}

void sub_23EF58F7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF58F94(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_23F07903C(a1 + 48, (a1 + 40));
  v5 = sub_23F2E6C78(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v6 = *(a1 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v13 = 2;
    v10 = sub_23F2E6C78(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_23F06357C(&v13, v11);
  }

  sub_23EF594F0(a1, (a2 + 8));
}

void sub_23EF594F0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  if (*v3 > 1u)
  {
    v6 = (a1 + 88);
    v4 = a1 + 72;
    v7 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v4 == *"version" && *(*v4 + 3) == *"sion")
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 72) = "ns";
    v4 = a1 + 72;
    v6 = (a1 + 88);
    v5 = *(a1 + 88);
    *(a1 + 80) = 2;
    v7 = (a1 + 80);
    if ((v5 & 1) == 0)
    {
      *v6 = 1;
    }
  }

  v13 = *a2;
  v9 = sub_23F2E6C78(a1);
  v10 = *v9;
  *v9 = 5;
  v11 = v9[1];
  v9[1] = v13;
  v13 = v11;
  sub_23F06357C(&v13, v10);
  v3 = *(a1 + 40);
LABEL_11:
  if (*v3 <= 1u)
  {
    v12 = *v6;
    *v4 = "clock_type";
    *v7 = 10;
    if ((v12 & 1) == 0)
    {
      *v6 = 1;
    }
  }

  v14 = 0;
  sub_23EF556F4();
}

void sub_23EF596DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF596F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF5970C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF59720(int *a1, uint64_t a2, __int128 *a3)
{
  sub_23F07903C(a2 + 48, (a2 + 40));
  v6 = sub_23F2E6C78(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 >= 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v32 = 6;
  v33 = 2;
  v16 = sub_23F2E6C78(a2);
  v17 = *v16;
  *v16 = 6;
  v32 = v17;
  v18 = v16[1];
  v16[1] = v33;
  v33 = v18;
  sub_23F06357C(&v33, v17);
  v13 = *a1;
  if (*a1 >= 1)
  {
LABEL_15:
    v14 = *(a2 + 40);
    v19 = *(a2 + 88);
    if (v13 == 2)
    {
      if (*v14 > 1u)
      {
        if ((*(a2 + 88) & 1) != 0 && *v7 == 7 && **v9 == *"version" && *(*v9 + 3) == *"sion")
        {
          v19 = 0;
          *(a2 + 96) = 2;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
          v31 = *a3;
          if (*v14 <= 1u)
          {
LABEL_34:
            *v9 = "ns";
            *v7 = 2;
            if ((v19 & 1) == 0)
            {
              *(a2 + 88) = 1;
            }

            goto LABEL_42;
          }

LABEL_37:
          if ((v19 & (*v7 == 7)) != 1)
          {
            goto LABEL_42;
          }

          if (**v9 != *"version" || *(*v9 + 3) != *"sion")
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      else
      {
        *v9 = "min_version";
        *v7 = 11;
        if ((v19 & 1) == 0)
        {
          *(a2 + 88) = 1;
        }
      }

      v32 = 6;
      v33 = 2;
      v22 = sub_23F2E6C78(a2);
      v23 = *v22;
      *v22 = 6;
      v32 = v23;
      v24 = v22[1];
      v22[1] = v33;
      v33 = v24;
      sub_23F06357C(&v33, v23);
      v14 = *(a2 + 40);
      v19 = *(a2 + 88);
    }

    v31 = *a3;
    if (*v14 <= 1u)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_10:
  v31 = *a3;
  v14 = *(a2 + 40);
  v15 = *(a2 + 88);
  if (*v14 <= 1u)
  {
    *v9 = "ns";
    *v7 = 2;
    if ((v15 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_42;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v20 = *(*v9 + 3) == *"sion") : (v20 = 0), !v20))
  {
LABEL_42:
    v32 = 5;
    v33 = v31;
    v26 = sub_23F2E6C78(a2);
    v27 = *v26;
    *v26 = 5;
    v32 = v27;
    v28 = v26[1];
    v26[1] = v33;
    v33 = v28;
    sub_23F06357C(&v33, v27);
    v14 = *(a2 + 40);
  }

LABEL_43:
  if (*v14 <= 1u)
  {
    v29 = *(a2 + 88);
    *(a2 + 72) = "clock_type";
    *(a2 + 80) = 10;
    if ((v29 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_23EF59B3C(a2, &v31 + 8);
  v30 = *(a2 + 56);
  *(a2 + 40) = *(v30 - 8);
  *(a2 + 56) = v30 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_23EF59B3C(uint64_t a1, unsigned __int8 *a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    v11 = 0;
    sub_23EF556F4();
  }

  v2 = *(a1 + 88) == 1 && *(a1 + 80) == 7;
  if (!v2 || ((v3 = *(a1 + 72), v4 = *v3, v5 = *(v3 + 3), v4 == *"version") ? (v6 = v5 == *"sion") : (v6 = 0), !v6))
  {
    v10 = *a2;
    v7 = sub_23F2E6C78(a1);
    v8 = *v7;
    *v7 = 6;
    v9 = v7[1];
    v7[1] = v10;
    v10 = v9;
    sub_23F06357C(&v10, v8);
  }
}

void sub_23EF59CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF59CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF59CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF59CF0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_23F07903C(a1 + 48, v3);
  v6 = sub_23F2E6C78(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    LOBYTE(v19) = 6;
    v20 = 2;
    v11 = sub_23F2E6C78(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v19) = v12;
    v13 = v11[1];
    v11[1] = v20;
    v20 = v13;
    sub_23F06357C(&v20, v12);
  }

  *&v16[12] = *(v5 + 12);
  *v16 = *v5;
  v17 = 0;
  v18 = -1;
  v14 = *(v5 + 96);
  if (v14 != -1)
  {
    v19 = &v17;
    (off_285178F68[v14])(&v19, v5 + 32);
    v18 = v14;
  }

  if (**v3 <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "io_format";
    *(a1 + 80) = 9;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v21 = 0;
  sub_23EF56C78();
}

void sub_23EF5A3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_23EF47ABC(&a24);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF5A3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F06357C((v9 + 8), 6);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF5A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 97) < 0)
  {
    operator delete(*(v9 - 120));
    sub_23EF47C2C(&a9);
    _Unwind_Resume(a1);
  }

  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF5A4A8(uint64_t a1)
{
  v2 = *(a1 + 104);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 56);
    if (v4 < v5)
    {
      *(a1 + 96) = v5;
      v4 = v5;
    }

    v6 = *(a1 + 48);
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v19 = 0;
      goto LABEL_12;
    }

    v6 = *(a1 + 24);
    v3 = *(a1 + 40) - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_23EF2F8F4();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v19 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = *a1;
  if (*(*a1 + 88) != 1 || *(v9 + 80) != 7 || ((v10 = *(v9 + 72), v11 = *v10, v12 = *(v10 + 3), v11 == *"version") ? (v13 = v12 == *"sion") : (v13 = 0), !v13))
  {
    LOBYTE(v20) = 6;
    v21 = v8;
    v14 = sub_23F2E6C78(v9);
    v15 = *v14;
    *v14 = 6;
    LOBYTE(v20) = v15;
    v16 = v14[1];
    v14[1] = v21;
    v21 = v16;
    sub_23F06357C(&v21, v15);
    v9 = *a1;
  }

  v17 = __dst[0];
  if (v7 >= 0)
  {
    v17 = __dst;
  }

  v20 = v17;
  v21 = v8;
  sub_23F2E7154(v9, &v20);
}

void sub_23EF5A720(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF551A0(v10, a2);
  sub_23EF5A850(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF5A838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF5A850(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v6, &__p, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), 2);
  v7 = *(a1 + 40);
  *(a1 + 40) = v7 + 1;
  if (v7 != -1)
  {
    v8 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v8, &__p, 1);
  }

  MEMORY[0x245CAC950](*(a1 + 24), *(a2 + 8));
  ++*(a1 + 40);
  __p.__r_.__value_.__s.__data_[0] = *(a2 + 16);
  sub_23F2F3D94(a1, &__p);
  v9 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v10 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v10, &__p, 1);
  }

  v11 = *(a1 + 24);
  __p.__r_.__value_.__s.__data_[0] = v9;
  sub_23EF2F9B0(v11, &__p, 1);
  ++*(a1 + 40);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    sub_23F2F3D94(a1, &__p);
    sub_23F2F45C4(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_23F2F3D94(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  sub_23EF5ACCC(a1, a2 + 56);
  if (a3 == 5)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      sub_23F2F3D94(a1, &__p);
      sub_23F2F45C4(a1, a2 + 80);
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      sub_23F2F3D94(a1, &__p);
    }

    return;
  }

  if (a3 < 6)
  {
    return;
  }

  if (*(a2 + 104) != 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_23F2F3D94(a1, &__p);
    if (*(a1 + 40))
    {
      v15 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_23EF2F9B0(v15, &__p, 1);
      ++*(a1 + 40);
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 40) = 1;
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

LABEL_17:
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_23F2F3D94(a1, &__p);
    if (*(a1 + 40))
    {
      v13 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_23EF2F9B0(v13, &__p, 1);
      v14 = *(a1 + 40) + 1;
    }

    else
    {
      v14 = 1;
    }

    *(a1 + 40) = v14;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v26 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  __p.__r_.__value_.__s.__data_[0] = 1;
  sub_23F2F3D94(a1, &__p);
  sub_23F2F45C4(a1, a2 + 80);
  v12 = *(a2 + 136);
  if (v12 != 1)
  {
    goto LABEL_17;
  }

LABEL_28:
  __p.__r_.__value_.__s.__data_[0] = v12;
  sub_23F2F3D94(a1, &__p);
  sub_23F2F45C4(a1, a2 + 112);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v26 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_25:
    v24.__r_.__value_.__s.__data_[0] = 0;
    sub_23F2F3D94(a1, &v24);
    if (*(a1 + 40))
    {
      v16 = *(a1 + 24);
      v24.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_23EF2F9B0(v16, &v24, 1);
      ++*(a1 + 40);
    }

    else
    {
      *(a1 + 40) = 1;
    }

    return;
  }

LABEL_29:
  v17 = *(a2 + 144);
  v18 = *(a2 + 152);
  if (v17 == v18)
  {
LABEL_46:
    sub_23EF42BD0(v17, v18, ";", 1uLL, &v24);
  }

  else
  {
    v19 = *(a2 + 144);
    while (1)
    {
      v20 = *(v19 + 23);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = *v19;
      }

      if ((v20 & 0x80u) != 0)
      {
        v20 = v19[1];
      }

      if (v20)
      {
        v22 = 0;
        while (1)
        {
          v23 = *(v21 + v22);
          if (v23 == 59 || v23 == 92)
          {
            break;
          }

          if (v20 == ++v22)
          {
            goto LABEL_31;
          }
        }

        if (v20 != v22 && v22 != -1)
        {
          break;
        }
      }

LABEL_31:
      v19 += 3;
      if (v19 == v18)
      {
        goto LABEL_46;
      }
    }

    sub_23EF55F2C(v17, 0, *(a2 + 152), ";", 1uLL, &v24);
  }

  __p = v24;
  v26 = 1;
  v24.__r_.__value_.__s.__data_[0] = 1;
  sub_23F2F3D94(a1, &v24);
  sub_23F2F45C4(a1, &__p);
  if ((v26 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23EF5ACA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF5ACCC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    v11 = 1;
    sub_23F2F3D94(a1, &v11);
    if (*(a1 + 40))
    {
      v4 = *(a1 + 24);
      v13 = *(a1 + 32);
      sub_23EF2F9B0(v4, &v13, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), 2);
    v5 = *(a1 + 40);
    *(a1 + 40) = v5 + 1;
    if (v5 != -1)
    {
      v6 = *(a1 + 24);
      v14 = *(a1 + 32);
      sub_23EF2F9B0(v6, &v14, 1);
    }

    MEMORY[0x245CAC950](*(a1 + 24), *a2);
    ++*(a1 + 40);
    v12 = *(a2 + 8);
    sub_23F2F3D94(a1, &v12);
    v7 = *(a1 + 34);
    if (*(a1 + 40))
    {
      v8 = *(a1 + 24);
      v15 = *(a1 + 32);
      sub_23EF2F9B0(v8, &v15, 1);
    }

    v9 = *(a1 + 24);
    v16 = v7;
    sub_23EF2F9B0(v9, &v16, 1);
    ++*(a1 + 40);
  }

  else
  {
    v10 = 0;
    sub_23F2F3D94(a1, &v10);
  }
}

void *sub_23EF5ADF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_23EF2F9B0(v4, &v31, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), 2);
  v5 = *(a1 + 40) + 1;
  *(a1 + 40) = v5;
  *v28 = *a2;
  *&v28[12] = *(a2 + 12);
  v29[0] = 0;
  v30 = -1;
  v6 = *(a2 + 96);
  if (v6 != -1)
  {
    v31 = v29;
    (off_285178F68[v6])(&v31, a2 + 32);
    v30 = v6;
    v5 = *(a1 + 40);
  }

  if (v5)
  {
    v7 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_23EF2F9B0(v7, &v31, 1);
  }

  MEMORY[0x245CAC940](*(a1 + 24), *v28);
  v8 = *(a1 + 40);
  *(a1 + 40) = v8 + 1;
  if (v8 != -1)
  {
    v9 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_23EF2F9B0(v9, &v31, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), 2);
  v10 = *(a1 + 40);
  v11 = *&v28[8];
  *(a1 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v12 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_23EF2F9B0(v12, &v31, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v11);
  v13 = *(a1 + 40);
  *(a1 + 40) = v13 + 1;
  if (v13 != -1)
  {
    v14 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_23EF2F9B0(v14, &v31, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), *&v28[16]);
  v15 = *(a1 + 40);
  *(a1 + 40) = v15 + 1;
  if (v15 != -1)
  {
    v16 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_23EF2F9B0(v16, &v31, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), *&v28[20]);
  v17 = *(a1 + 40);
  v18 = *(a1 + 34);
  *(a1 + 40) = v17 + 1;
  if (v17 != -1)
  {
    v19 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_23EF2F9B0(v19, &v31, 1);
  }

  v20 = *(a1 + 24);
  LOBYTE(v31) = v18;
  sub_23EF2F9B0(v20, &v31, 1);
  ++*(a1 + 40);
  if (*v28 == 1)
  {
    sub_23F094978(v28, &v31);
    sub_23F0971F0(a1, &v31);
    v21 = v33;
    if (!v33)
    {
LABEL_22:
      v23 = v30;
      if (v30 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v22 = sub_23F096D6C(*v28);
    sub_23F094978(v28, v44);
    v31 = a1;
    v32 = MEMORY[0x277D82868] + 16;
    MEMORY[0x245CACAF0](&v33);
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v32 = MEMORY[0x277D82878] + 16;
    v37 = 0u;
    v38 = 0u;
    v39 = 24;
    sub_23EF36F98(&v32);
    v41.__loc_ = 0;
    v40 = MEMORY[0x277D82850] + 24;
    v41.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v41, &v32);
    v42 = 0;
    v43 = -1;
    sub_23EF57120(v44, &v40, v22);
    sub_23EF5B2AC(&v31);
    v21 = v45;
    if (!v45)
    {
      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  v23 = v30;
  if (v30 != -1)
  {
LABEL_23:
    (off_285178E58[v23])(&v31, v29);
  }

LABEL_24:
  v24 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v25 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_23EF2F9B0(v25, &v31, 1);
  }

  v26 = *(a1 + 24);
  LOBYTE(v31) = v24;
  result = sub_23EF2F9B0(v26, &v31, 1);
  ++*(a1 + 40);
  return result;
}

void sub_23EF5B204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23EF5B2AC(&a22);
  sub_23EF47ABC(v36 - 120);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF5B264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF47ABC(&a22);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_23EF5B2AC(uint64_t *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v16 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_25:
      sub_23EF2F8F4();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v16 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v8 = v16;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = *a1;
  if (*(*a1 + 40))
  {
    v10 = *(v9 + 24);
    LOBYTE(v14[0]) = *(v9 + 32);
    sub_23EF2F9B0(v10, v14, 1);
  }

  MEMORY[0x245CAC960](*(v9 + 24), v8);
  ++*(v9 + 40);
  v11 = __dst[0];
  if (v7 >= 0)
  {
    v11 = __dst;
  }

  v12 = *a1;
  v14[0] = v11;
  v14[1] = v8;
  sub_23F2F47A8(v12, v14);
  if (v16 < 0)
  {
    operator delete(__dst[0]);
    std::ostream::~ostream();
    a1[1] = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    operator delete(a1[9]);
    goto LABEL_21;
  }

  std::ostream::~ostream();
  a1[1] = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  a1[1] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(a1 + 2);
  return a1;
}

uint64_t sub_23EF5B4CC(uint64_t a1, uint64_t a2)
{
  LODWORD(__src) = 2;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  sub_23F294D84(a1);
  *v11 = *a2;
  *&v11[12] = *(a2 + 12);
  v12[0] = 0;
  v13 = -1;
  v4 = *(a2 + 96);
  if (v4 != -1)
  {
    __src = v12;
    (off_285178F68[v4])(&__src, a2 + 32);
    v13 = v4;
  }

  LOWORD(__src) = *v11;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 2, 2uLL);
  LODWORD(__src) = 2;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  sub_23F294D84(a1);
  __src = *&v11[8];
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v15, 8uLL);
  sub_23F295368(a1 + 24, *(a1 + 32), &v11[16], &v11[24], 8uLL);
  v5 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v5 + 10) = *(a1 + 32) - v5 - 18;
  *(a1 + 56) -= 8;
  if (*v11 == 1)
  {
    sub_23F094978(v11, &__src);
    sub_23F0971F0(a1, &__src);
    v6 = v16;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = sub_23F096D6C(*v11);
    sub_23F094978(v11, v27);
    __src = a1;
    v15 = MEMORY[0x277D82868] + 16;
    MEMORY[0x245CACAF0](&v16);
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v15 = MEMORY[0x277D82878] + 16;
    v20 = 0u;
    v21 = 0u;
    v22 = 24;
    sub_23EF36F98(&v15);
    v24.__loc_ = 0;
    v23 = MEMORY[0x277D82850] + 24;
    v24.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v24, &v15);
    v25 = 0;
    v26 = -1;
    sub_23EF57120(v27, &v23, v7);
    sub_23EF5BFE4(&__src);
    v6 = v28;
    if (!v28)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v8 = v13;
    if (v13 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  v8 = v13;
  if (v13 != -1)
  {
LABEL_9:
    (off_285178E58[v8])(&__src, v12);
  }

LABEL_10:
  v9 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v9 + 10) = *(a1 + 32) - v9 - 18;
  *(a1 + 56) -= 8;
  return a1;
}

void sub_23EF5B814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23EF5BFE4(&a22);
  sub_23EF47ABC(v36 - 120);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF5B874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF47ABC(&a22);
  sub_23EF47C2C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF5B8BC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF551A0(v10, a2);
  sub_23EF5B9EC(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF5B9D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

char *sub_23EF5B9EC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(v33) = 2;
  sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 4, 4uLL);
  sub_23F294D84(a1);
  sub_23F295368(a1 + 24, *(a1 + 32), (a2 + 8), (a2 + 16), 8uLL);
  LOBYTE(v33) = *(a2 + 16);
  sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
  v6 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v6 + 10) = *(a1 + 32) - v6 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 48) != 1)
  {
    LOBYTE(v33) = 0;
    result = sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
    if (a3 < 4)
    {
      return result;
    }

LABEL_13:
    v33 = "custom_timestamp";
    v34[0] = 16;
    v34[1] = a2 + 56;
    result = sub_23EF5BEC0(a1, &v33);
    if (a3 == 5)
    {
      if (*(a2 + 104) == 1)
      {
        LOBYTE(v33) = 1;
        sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
        v12 = *(a2 + 103);
        if (v12 < 0)
        {
          v12 = *(a2 + 88);
        }

        v33 = v12;
        sub_23F295368(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
        v13 = *(a2 + 103);
        if (v13 >= 0)
        {
          v14 = (a2 + 80);
        }

        else
        {
          v14 = *(a2 + 80);
        }

        if (v13 >= 0)
        {
          v15 = *(a2 + 103);
        }

        else
        {
          v15 = *(a2 + 88);
        }

        v16 = *(a1 + 32);
        v17 = a1 + 24;
        v18 = v14 + v15;
        return sub_23F295368(v17, v16, v14, v18, v15);
      }

LABEL_36:
      LOBYTE(v33) = 0;
      v16 = *(a1 + 32);
      v17 = a1 + 24;
      v14 = &v33;
      v18 = &v33 + 1;
      v15 = 1;
      return sub_23F295368(v17, v16, v14, v18, v15);
    }

    if (a3 < 6)
    {
      return result;
    }

    if (*(a2 + 104) == 1)
    {
      LOBYTE(v33) = 1;
      sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
      v19 = *(a2 + 103);
      if (v19 < 0)
      {
        v19 = *(a2 + 88);
      }

      v33 = v19;
      sub_23F295368(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
      v20 = *(a2 + 103);
      if (v20 >= 0)
      {
        v21 = (a2 + 80);
      }

      else
      {
        v21 = *(a2 + 80);
      }

      if (v20 >= 0)
      {
        v22 = *(a2 + 103);
      }

      else
      {
        v22 = *(a2 + 88);
      }

      sub_23F295368(a1 + 24, *(a1 + 32), v21, &v21[v22], v22);
      if (*(a2 + 136) != 1)
      {
LABEL_35:
        LOBYTE(v33) = 0;
        sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
        if (*(a2 + 168) != 1)
        {
          goto LABEL_36;
        }

LABEL_48:
        LOBYTE(v33) = 1;
        sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
        __src = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
        result = sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v36, 8uLL);
        v28 = *(a2 + 144);
        for (i = *(a2 + 152); v28 != i; v28 += 24)
        {
          v29 = *(v28 + 23);
          if (v29 < 0)
          {
            v29 = *(v28 + 8);
          }

          v33 = v29;
          sub_23F295368(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
          v30 = *(v28 + 23);
          if (v30 >= 0)
          {
            v31 = v28;
          }

          else
          {
            v31 = *v28;
          }

          if (v30 >= 0)
          {
            v32 = *(v28 + 23);
          }

          else
          {
            v32 = *(v28 + 8);
          }

          result = sub_23F295368(a1 + 24, *(a1 + 32), v31, &v31[v32], v32);
        }

        return result;
      }
    }

    else
    {
      LOBYTE(v33) = 0;
      sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
      if (*(a2 + 136) != 1)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v33) = 1;
    sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
    v23 = *(a2 + 135);
    if (v23 < 0)
    {
      v23 = *(a2 + 120);
    }

    v33 = v23;
    sub_23F295368(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
    v24 = *(a2 + 135);
    if (v24 >= 0)
    {
      v25 = (a2 + 112);
    }

    else
    {
      v25 = *(a2 + 112);
    }

    if (v24 >= 0)
    {
      v26 = *(a2 + 135);
    }

    else
    {
      v26 = *(a2 + 120);
    }

    sub_23F295368(a1 + 24, *(a1 + 32), v25, &v25[v26], v26);
    if (*(a2 + 168) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  LOBYTE(v33) = 1;
  sub_23F295368(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
  v7 = *(a2 + 47);
  if (v7 < 0)
  {
    v7 = *(a2 + 32);
  }

  v33 = v7;
  sub_23F295368(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
  v8 = *(a2 + 47);
  if (v8 >= 0)
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 24);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 47);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  result = sub_23F295368(a1 + 24, *(a1 + 32), v9, &v9[v10], v10);
  if (a3 >= 4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_23EF5BEC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3[16] == 1)
  {
    __src = 1;
    sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v8, 1uLL);
    v8 = 2;
    sub_23F295368(a1 + 24, *(a1 + 32), &v8, v9, 4uLL);
    sub_23F294D84(a1);
    sub_23F295368(a1 + 24, *(a1 + 32), v3, v3 + 8, 8uLL);
    v10 = v3[8];
    sub_23F295368(a1 + 24, *(a1 + 32), &v10, &v11, 1uLL);
    v4 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v4 + 10) = *(a1 + 32) - v4 - 18;
    *(a1 + 56) -= 8;
  }

  else
  {
    v6 = 0;
    sub_23F295368(a1 + 24, *(a1 + 32), &v6, &__src, 1uLL);
  }

  return a1;
}

uint64_t sub_23EF5BFE4(uint64_t a1)
{
  v2 = *(a1 + 104);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 56);
    if (v4 < v5)
    {
      *(a1 + 96) = v5;
      v4 = v5;
    }

    v6 = *(a1 + 48);
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    v6 = *(a1 + 24);
    v3 = *(a1 + 40) - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_23:
      sub_23EF2F8F4();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v13 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v13;
  v8 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  v11 = v7;
  sub_23F295368(*a1 + 24, *(*a1 + 32), &v11, __dst, 8uLL);
  if (v8 >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  sub_23F295368(*a1 + 24, *(*a1 + 32), v9, v9 + v11, v11);
  if (v13 < 0)
  {
    operator delete(__dst[0]);
    std::ostream::~ostream();
    *(a1 + 8) = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    operator delete(*(a1 + 72));
    goto LABEL_19;
  }

  std::ostream::~ostream();
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  return a1;
}

int *sub_23EF5C1F0(int *a1, uint64_t a2)
{
  v4 = a1[2];
  *v8 = 2;
  (*(*a1 + 104))(a1, v8);
  if (v4 < 1)
  {
    *v8 = *a2;
    *&v8[6] = *(a2 + 12);
    v9[0] = 0;
    v10 = -1;
    v7 = *(a2 + 96);
    if (v7 != -1)
    {
      v11 = v9;
      (off_285178F68[v7])(&v11, a2 + 32);
      v10 = v7;
    }

    sub_23EF5D0A8(a1, v8);
    if (v10 != -1)
    {
      (off_285178E58[v10])(&v11, v9);
    }

    return a1;
  }

  else
  {
    if (v4 == 2)
    {
      *v8 = 2;
      (*(*a1 + 104))(a1, v8);
    }

    (*(*a1 + 16))(a1);
    *v8 = *a2;
    *&v8[6] = *(a2 + 12);
    v9[0] = 0;
    v10 = -1;
    v5 = *(a2 + 96);
    if (v5 != -1)
    {
      v11 = v9;
      (off_285178F68[v5])(&v11, a2 + 32);
      v10 = v5;
    }

    sub_23EF5D0A8(a1, v8);
    if (v10 != -1)
    {
      (off_285178E58[v10])(&v11, v9);
    }

    (*(*a1 + 24))(a1);
    return a1;
  }
}

void sub_23EF5C460(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF551A0(v10, a2);
  sub_23EF5C590(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF5C578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF5C590(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_23EF5CDBC(&__p, a1, a2 + 8);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  if (*(a2 + 72) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    sub_23EF5CDBC(&__p, a1, a2 + 56);
    if (a3 != 5)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      return;
    }

    goto LABEL_25;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  if (a3 == 5)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (a3 < 6)
  {
    return;
  }

  if ((*(a1 + 12) & 4) == 0)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
LABEL_11:
        __p.__r_.__value_.__s.__data_[0] = 0;
        (*(*a1 + 80))(a1, &__p);
        v7 = *(a2 + 168);
        if (v7 != 1)
        {
          goto LABEL_25;
        }

LABEL_22:
        __p.__r_.__value_.__s.__data_[0] = v7;
        (*(*a1 + 80))(a1, &__p);
        __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
        (*(*a1 + 120))(a1, &__p);
        v10 = *(a2 + 144);
        for (i = *(a2 + 152); v10 != i; v10 += 24)
        {
          (*(*a1 + 144))(a1, v10);
        }

        return;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = v6;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    v7 = *(a2 + 168);
    if (v7 != 1)
    {
LABEL_25:
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      return;
    }

    goto LABEL_22;
  }

  if (*(a2 + 104) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 80);
    v8 = *(a2 + 136);
    if (v8 != 1)
    {
      goto LABEL_18;
    }

LABEL_27:
    __p.__r_.__value_.__s.__data_[0] = v8;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    __p.__r_.__value_.__s.__data_[0] = 0;
    v20 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_23F31034F);
  v8 = *(a2 + 136);
  if (v8 == 1)
  {
    goto LABEL_27;
  }

LABEL_18:
  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_23F31034F);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v20 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_19:
    v18.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &v18);
    (*(*a1 + 288))(a1, &unk_23F31034F);
    return;
  }

LABEL_28:
  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  if (v11 == v12)
  {
LABEL_45:
    sub_23EF42BD0(v11, v12, ";", 1uLL, &v18);
  }

  else
  {
    v13 = *(a2 + 144);
    while (1)
    {
      v14 = *(v13 + 23);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = *v13;
      }

      if ((v14 & 0x80u) != 0)
      {
        v14 = v13[1];
      }

      if (v14)
      {
        v16 = 0;
        while (1)
        {
          v17 = *(v15 + v16);
          if (v17 == 59 || v17 == 92)
          {
            break;
          }

          if (v14 == ++v16)
          {
            goto LABEL_30;
          }
        }

        if (v14 != v16 && v16 != -1)
        {
          break;
        }
      }

LABEL_30:
      v13 += 3;
      if (v13 == v12)
      {
        goto LABEL_45;
      }
    }

    sub_23EF55F2C(v11, 0, *(a2 + 152), ";", 1uLL, &v18);
  }

  __p = v18;
  v20 = 1;
  v18.__r_.__value_.__s.__data_[0] = 1;
  (*(*a1 + 80))(a1, &v18);
  (*(*a1 + 144))(a1, &__p);
  if ((v20 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23EF5CD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF5CDBC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2[2];
  v7 = 2;
  (*(*a2 + 104))(a2, &v7);
  if (v5 < 1)
  {
    (*(*a2 + 72))(a2, a3);
    return sub_23EF5CF40(a2, (a3 + 8));
  }

  else
  {
    if (v5 == 2)
    {
      v8 = 2;
      (*(*a2 + 104))(a2, &v8);
    }

    (*(*a2 + 16))(a2);
    (*(*a2 + 72))(a2, a3);
    sub_23EF5CF40(a2, (a3 + 8));
    return (*(*a2 + 24))(a2);
  }
}

uint64_t sub_23EF5CF40(_BYTE *a1, _BYTE *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_23EF556F4();
  }

  v3[0] = *a2;
  return (*(*a1 + 80))(a1, v3);
}

void sub_23EF5D064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF5D080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF5D094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF5D0A8(int *a1, unsigned __int16 *a2)
{
  if ((a1[3] & 2) != 0)
  {
    LODWORD(v11) = 0;
    sub_23EF56C78();
  }

  LOWORD(v8) = *a2;
  (*(*a1 + 96))(a1, &v8);
  v4 = a1[2];
  LODWORD(v8) = 2;
  (*(*a1 + 104))(a1, &v8);
  if (v4 < 1)
  {
    sub_23EF5D584(a1, a2 + 1);
    (*(*a1 + 104))(a1, a2 + 8);
    (*(*a1 + 104))(a1, a2 + 10);
    v5 = *a2;
    if (v5 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 == 2)
    {
      LODWORD(v8) = 2;
      (*(*a1 + 104))(a1, &v8);
    }

    (*(*a1 + 16))(a1);
    sub_23EF5D584(a1, a2 + 1);
    (*(*a1 + 104))(a1, a2 + 8);
    (*(*a1 + 104))(a1, a2 + 10);
    (*(*a1 + 24))(a1);
    v5 = *a2;
    if (v5 == 1)
    {
LABEL_8:
      sub_23F094978(a2, &v8);
      sub_23F0971F0(a1, &v8);
      v6 = v10;
      if (!v10)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  v7 = sub_23F096D6C(v5);
  sub_23F094978(a2, v21);
  v8 = a1;
  v9 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](&v10);
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v9 = MEMORY[0x277D82878] + 16;
  v14 = 0u;
  v15 = 0u;
  v16 = 24;
  sub_23EF36F98(&v9);
  v18.__loc_ = 0;
  v17 = MEMORY[0x277D82850] + 24;
  v18.__vftable = (MEMORY[0x277D82850] + 64);
  std::ios_base::init(&v18, &v9);
  v19 = 0;
  v20 = -1;
  sub_23EF57120(v21, &v17, v7);
  sub_23EF5D6EC(&v8);
  v6 = v22;
  if (!v22)
  {
    return;
  }

LABEL_12:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_23EF5D4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF5D6EC(va);
  sub_23EF47ABC(v4 - 120);
  _Unwind_Resume(a1);
}

void sub_23EF5D4D8(_Unwind_Exception *exception_object)
{
  if (*(v2 - 97) < 0)
  {
    operator delete(*(v1 + 272));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF5D584(_BYTE *a1, void *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_23EF56ED4();
  }

  v3[0] = *a2;
  return (*(*a1 + 120))(a1, v3);
}

void sub_23EF5D6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF5D6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF5D6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void *sub_23EF5D6EC(void *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v15 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_23EF2F8F4();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v15 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v15;
  v8 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  v13 = v7;
  (*(**a1 + 120))(*a1, &v13);
  v9 = __dst[0];
  if (v8 >= 0)
  {
    v9 = __dst;
  }

  v10 = *a1;
  v12[0] = v9;
  v12[1] = v13;
  (*(*v10 + 272))(v10, v12);
  if (v15 < 0)
  {
    operator delete(__dst[0]);
    std::ostream::~ostream();
    a1[1] = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    operator delete(a1[9]);
    goto LABEL_18;
  }

  std::ostream::~ostream();
  a1[1] = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  a1[1] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(a1 + 2);
  return a1;
}

void sub_23EF5D92C(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a1 + 32);
  v4 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v5);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v5[0] = "version";
  v5[1] = 7;
  v6 = 6;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, &v6);
  if (v6 >= 3)
  {
    sub_23EF5DC38(a1, a2);
  }

  sub_23EF5DA2C(v5, a1);
}

void sub_23EF5DA2C(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  sub_23EF5F56C(a2, v2);
}

void sub_23EF5DBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF5DC38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7[0] = *(a1 + 32);
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v7);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8[0] = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, v8);
  if (v8[0] >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v8[0];
  }

  sub_23EF5E1E8(a1, (a2 + 8), v6);
}

void sub_23EF5DEB8(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  v4 = a1[1];
  if ((v3 & 0x80000000) == 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if ((v3 & 0x80000000) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5)
  {
    v8 = memchr(v6, 92, v5);
    if (v8 && v8 - v6 != -1)
    {
      v10 = 0;
      v11 = v3 >> 63;
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      while (1)
      {
        if (v11)
        {
          v14 = *a1;
        }

        else
        {
          v14 = a1;
        }

        v15 = v14[v10];
        if (v15 != 59)
        {
          if (v15 == 92)
          {
            ++v10;
          }

          v18 = v14[v10];
          if (SHIBYTE(v23) < 0)
          {
            v19 = ((v23 & 0x7FFFFFFFFFFFFFFFLL) - 1);
            if (__p[1] == v19)
            {
              if ((v23 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
                sub_23EF2F8F4();
              }

LABEL_37:
              operator new();
            }

            v21 = __p[0];
            v20 = __p[1]++;
          }

          else
          {
            if (HIBYTE(v23) == 22)
            {
              goto LABEL_37;
            }

            v20 = HIBYTE(v23);
            HIBYTE(v23) = (HIBYTE(v23) + 1) & 0x7F;
            v21 = __p;
          }

          v20[v21] = v18;
          v12 = &v20[v21 + 1];
          goto LABEL_17;
        }

        v16 = a2[1];
        if (v16 >= a2[2])
        {
          a2[1] = sub_23EF350D8(a2, __p);
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_34;
          }
        }

        else if (SHIBYTE(v23) < 0)
        {
          sub_23EF34EA4(a2[1], __p[0], __p[1]);
          a2[1] = v16 + 24;
          if (SHIBYTE(v23) < 0)
          {
LABEL_34:
            v12 = __p[0];
            __p[1] = 0;
            goto LABEL_17;
          }
        }

        else
        {
          v17 = *__p;
          *(v16 + 16) = v23;
          *v16 = v17;
          a2[1] = v16 + 24;
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_34;
          }
        }

        HIBYTE(v23) = 0;
        v12 = __p;
LABEL_17:
        *v12 = 0;
        ++v10;
        v13 = *(a1 + 23);
        v11 = v13 >> 63;
        if ((v13 & 0x80000000) != 0)
        {
          v13 = a1[1];
        }

        if (v10 >= v13)
        {
          sub_23EF53F60(a2, __p);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }
      }
    }
  }

  sub_23EF5EC84(v6, v5, ";", 1, 1, a2);
}

void sub_23EF5E1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3291C(v15);
  _Unwind_Resume(a1);
}

void sub_23EF5E1E8(uint64_t a1, char **a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_23F2EB9A4(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_23F070408(v6, &v12);
    *a2 = v12;
    v7 = (a2 + 1);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v12 = v7;
    sub_23EF5E344(a1);
  }

  v13 = 0;
  v9 = *(a1 + 104);
  *(a1 + 88) = "ns";
  *(a1 + 96) = 2;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v10 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  v14 = 0;
  sub_23F070408(v10, &v14);
  v12 = v14;
  v11 = *(a1 + 104);
  *(a1 + 88) = "clock_type";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v14 = &v13;
  sub_23EF5E344(a1);
}

void sub_23EF5E344(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F0707E4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EF5E434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EF5E4C8(void *a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (*sub_23F2EB9A4(a1))
  {
    v4 = sub_23F2EB9A4(a1);
    ++a1[14];
    v10 = 0uLL;
    v9 = 0;
    sub_23F0707E4(v4, &v9);
    v5 = v9;
    v11[0] = v10;
    *(v11 + 7) = *(&v10 + 7);
    v6 = HIBYTE(v10);
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }

    v7 = v11[0];
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 15) = *(v11 + 7);
    *(a2 + 23) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EF5E5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF5E5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v11[0] = *(a2 + 32);
  v6 = sub_23F2EB9A4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v6;
  sub_23F2EB5F4(a2 + 40, v11);
  sub_23F294EB4(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_23F2ECE4C(a2, &v12);
  v7 = v12;
  if (v5 >= 1)
  {
    if (v5 == 2)
    {
      v8 = v12;
      sub_23EF5E864(a2, a3, v12);
      v7 = v8;
    }

    if (v7 >= 2)
    {
      v7 = 2;
    }
  }

  sub_23EF5E708(a2, a3, v7);
  v9 = *(a2 + 48);
  *(a2 + 32) = *(v9 - 8);
  v10 = *(a2 + 72);
  *(a2 + 112) = *(v10 - 8);
  *(a2 + 48) = v9 - 8;
  *(a2 + 72) = v10 - 8;
}

void sub_23EF5E708(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v14 = 0;
    v9 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v9 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v10 = sub_23F2EB9A4(a1);
    ++*(a1 + 112);
    v15 = 0;
    sub_23F070408(v10, &v15);
    v13 = v15;
    v11 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v11 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v15 = &v14;
    sub_23EF5E95C(a1, &v15);
    v12 = v14;
    *a2 = v13;
    *(a2 + 8) = v12;
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_23F2EB9A4(a1);
    ++*(a1 + 112);
    v13 = 0;
    sub_23F070408(v6, &v13);
    *a2 = v13;
    v7 = (a2 + 8);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v13 = v7;
    sub_23EF5E95C(a1, &v13);
  }
}

void sub_23EF5E864(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = 2;
    v3 = *(a1 + 104);
    *(a1 + 88) = "min_version";
    *(a1 + 96) = 11;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_23F2ECE4C(a1, &v5);
    if (v5 >= 3)
    {
      v4 = v5;
      if ((atomic_load_explicit(&qword_27E3940D8, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_27E3940D8))
        {
          sub_23F302BD0("cv3d::kit::timeio::TimestampSample]", 0x22uLL, &stru_27E3940C0);
          __cxa_guard_release(&qword_27E3940D8);
          sub_23F2FF068(&stru_27E3940C0, v4, 2u);
        }
      }

      sub_23F2FF068(&stru_27E3940C0, v4, 2u);
    }
  }
}

void sub_23EF5E95C(uint64_t a1, _BYTE **a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    v4 = sub_23F2EB9A4(a1);
    ++*(a1 + 112);
    v8 = 0;
    v7 = 0uLL;
    sub_23F0707E4(v4, &v7);
    v6 = v8;
    *__p = v7;
    operator new();
  }

  LOBYTE(v7) = 0;
  sub_23F2ECBEC(a1, &v7);
  **a2 = v7;
}

void sub_23EF5EA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EF5EB00(void *a1, uint64_t a2)
{
  if (*sub_23F2EB9A4(a1))
  {
    v4 = sub_23F2EB9A4(a1);
    ++a1[14];
    v16 = 0uLL;
    v17 = 0;
    sub_23F2EF108(v4, &v16);
    v5 = v16;
    v6 = v17;
    if (*(a2 + 24))
    {
      v7 = *a2;
      if (*a2)
      {
        v15 = v16;
        v8 = *(a2 + 8);
        v9 = *a2;
        if (v8 != v7)
        {
          do
          {
            v10 = *(v8 - 1);
            v8 -= 3;
            if (v10 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v7);
          v9 = *a2;
        }

        *(a2 + 8) = v7;
        operator delete(v9);
        v5 = v15;
      }
    }

    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = *(a2 + 8);
        v13 = *a2;
        if (v12 != v11)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v13 = *a2;
        }

        *(a2 + 8) = v11;
        operator delete(v13);
      }

      *(a2 + 24) = 0;
    }
  }
}

void sub_23EF5EC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF3291C(va1);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23EF5EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23EF5EC84(char *__src@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v8 = a6;
  v28 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v25 = __src;
    __p[0] = __src;
    v10 = &__src[a2];
    if (a4)
    {
      v12 = 0;
      while (1)
      {
        v13 = __src;
        if (__src != v10)
        {
          v13 = __src;
LABEL_9:
          v14 = a4;
          v15 = a3;
          while (*v15 != *v13)
          {
            ++v15;
            if (!--v14)
            {
              if (++v13 != v10)
              {
                goto LABEL_9;
              }

              v13 = v10;
              break;
            }
          }
        }

        v25 = v13;
        if (a5 == 1 || v13 != __src)
        {
          if (v12 >= *(v8 + 16))
          {
            v12 = sub_23EF5F080(v8, __p, &v25);
          }

          else
          {
            v16 = v13 - __src;
            if ((v13 - __src) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_56;
            }

            if (v16 > 0x16)
            {
              operator new();
            }

            v12[23] = v16;
            if (v13 != __src)
            {
              memmove(v12, __src, v13 - __src);
            }

            v12[v16] = 0;
            v12 += 24;
          }

          v8 = a6;
          v13 = v25;
          a6[1] = v12;
        }

        __src = v13 + 1;
        __p[0] = v13 + 1;
        if (v13 == v10)
        {
          goto LABEL_42;
        }
      }
    }

    if (a5 != 1)
    {
      v17 = 0;
      while (1)
      {
        if (v10 == __src)
        {
          v19 = 0;
        }

        else
        {
          v19 = v10 - __src;
        }

        v18 = &__src[v19];
        v25 = &__src[v19];
        if (v19)
        {
          if (v17 >= *(v8 + 16))
          {
            v17 = sub_23EF5F080(v8, __p, &v25);
          }

          else
          {
            if (v19 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_56;
            }

            if (v19 >= 0x17)
            {
              operator new();
            }

            v17[23] = v19;
            memmove(v17, __src, v19);
            v17[v19] = 0;
            v17 += 24;
          }

          v8 = a6;
          v18 = v25;
          a6[1] = v17;
        }

        __src = v18 + 1;
        __p[0] = v18 + 1;
        if (v18 == v10)
        {
          goto LABEL_42;
        }
      }
    }

    v21 = 0;
    do
    {
      if (v10 == __src)
      {
        v23 = 0;
      }

      else
      {
        v23 = v10 - __src;
      }

      v25 = &__src[v23];
      if (v21 >= *(v8 + 16))
      {
        v21 = sub_23EF5F080(v8, __p, &v25);
      }

      else
      {
        if (v23 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_56:
          sub_23EF2F8F4();
        }

        if (v23 >= 0x17)
        {
          operator new();
        }

        v21[23] = v23;
        if (v23)
        {
          memmove(v21, __src, v23);
        }

        v21[v23] = 0;
        v21 += 24;
      }

      v8 = a6;
      v22 = v25;
      a6[1] = v21;
      __src = v22 + 1;
      __p[0] = v22 + 1;
    }

    while (v22 != v10);
  }

  else if (a5)
  {
    v27 = 0;
    LOBYTE(__p[0]) = 0;
    sub_23EF42150(a6, __p, 1uLL);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }

LABEL_42:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23EF5F02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_23EF5F080(uint64_t a1, const void **a2, const void **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v7 = *a2;
  v8 = *a3;
  v9 = *a3 - *a2;
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (v9 > 0x16)
  {
    operator new();
  }

  *(8 * ((*(a1 + 8) - *a1) >> 3) + 0x17) = v9;
  if (v8 != v7)
  {
    memmove(v6, v7, v9);
  }

  v6[v9] = 0;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v6[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v6 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v6 + 24;
}

void sub_23EF5F22C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23EF5F240(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = a2;
        v5 = *(a1 + 8);
        v6 = *a1;
        if (v5 != v3)
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

          while (v5 != v3);
          v6 = *a1;
        }

        *(a1 + 8) = v3;
        operator delete(v6);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        a2 = v4;
      }

      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(a1 + 8);
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 1);
          v9 -= 3;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v8);
        v10 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v10);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }
}

uint64_t sub_23EF5F384(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 48) = 0;
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  if (*(a1 + 104) != *(a2 + 104))
  {
    if (!*(a1 + 104))
    {
      v11 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v11;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *(a1 + 104) = 1;
      v9 = *(a1 + 136);
      if (v9 == *(a2 + 136))
      {
        goto LABEL_22;
      }

LABEL_27:
      if (v9)
      {
        if (*(a1 + 135) < 0)
        {
          operator delete(*(a1 + 112));
        }

        *(a1 + 136) = 0;
      }

      else
      {
        v12 = *(a2 + 112);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 112) = v12;
        *(a2 + 120) = 0;
        *(a2 + 128) = 0;
        *(a2 + 112) = 0;
        *(a1 + 136) = 1;
      }

      goto LABEL_32;
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 104) = 0;
LABEL_21:
    v9 = *(a1 + 136);
    if (v9 == *(a2 + 136))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (!*(a1 + 104))
  {
    goto LABEL_21;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v8 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v8;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  v9 = *(a1 + 136);
  if (v9 != *(a2 + 136))
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v9)
  {
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    v10 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v10;
    *(a2 + 135) = 0;
    *(a2 + 112) = 0;
  }

LABEL_32:
  sub_23EF5F240(a1 + 144, a2 + 144);
  return a1;
}

void sub_23EF5F56C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7[0] = *(a1 + 32);
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v7);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, &v8);
  if (v8 >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v8;
  }

  sub_23EF5E1E8(a1, (a2 + 8), v6);
}

void sub_23EF5F6AC(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v6);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, &v7);
  if (v7 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "io_format";
    *(a1 + 96) = 9;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6[0] = a2;
    sub_23EF601FC(a1);
  }

  v6[0] = &unk_285179288;
  sub_23EF60D90();
}

void sub_23EF60164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF60D14(&a22);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF60180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EF60D14(va);
  _Unwind_Resume(a1);
}

void sub_23EF6019C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF47C2C(&a22);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF601B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF4F970(v9);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF601D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EF47F24(va);
  _Unwind_Resume(a1);
}

void sub_23EF601FC(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F0707E4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EF602EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EF60380(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F0707E4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EF60470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EF60504()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &unk_285179288;
  sub_23EF60D90();
}

void sub_23EF60C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_23EF57834(v41 + 16);
  sub_23EF574C0(&a25);
  sub_23EF47F24(&a41);
  _Unwind_Resume(a1);
}

void sub_23EF60C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  sub_23EF57834(v55 + 16);
  sub_23EF575B8(&a55);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  sub_23EF574C0(v56 - 240);
  sub_23EF47F24(&a41);
  _Unwind_Resume(a1);
}

void sub_23EF60CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_23EF61BF8(v41 - 88);
  sub_23EF47F24(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF60D14(uint64_t a1)
{
  std::istream::~istream();
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_23EF60D90()
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  sub_23F264670(v0, &v2, &v3, 1, &v1, 1, 0);
  operator new();
}

void sub_23EF60F48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(v2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EF60F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23EF60FD0()
{
  if ((atomic_load_explicit(&qword_27E394018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394018))
  {
    sub_23EF61080();
  }

  if (byte_27E394017 >= 0)
  {
    return &qword_27E394000;
  }

  else
  {
    return qword_27E394000;
  }
}

void sub_23EF6114C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF6117C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Gray8u]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
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

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EF61260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23EF6129C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF612D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_23EF61304(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23EF613D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285178F88;
  a2[1] = v2;
  return result;
}

double sub_23EF61400@<D0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  if (*a3)
  {
    v7 = *(a1 + 8);
    if (*(v7 + 32) != *a2)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (*(v7 + 56) == v6 && *(v7 + 36) == a2[1])
    {
      goto LABEL_33;
    }

    goto LABEL_16;
  }

  v8 = a2;
  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/include/Kit/ImageIO/ImageIO.h", 386, "format != img::Format::Dynamic", 0x1EuLL, "loader must specify the format to load as", 0x29uLL, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1)
    {
      goto LABEL_11;
    }

    v9 = qword_27E396178;
    v10 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = qword_27E396178;
    v10 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_34;
    }
  }

  do
  {
    v12 = *v9;
    v11 = *(v9 + 8);
    v9 += 16;
    v12(v11, "format != img::Format::Dynamic", 30, "loader must specify the format to load as", 41);
  }

  while (v9 != v10);
  if ((byte_27E3961A0 & 1) == 0)
  {
LABEL_34:
    abort();
  }

LABEL_11:
  qword_27E396190(*algn_27E396198, "format != img::Format::Dynamic", 30, "loader must specify the format to load as", 41);
  a2 = v8;
  v7 = *(a1 + 8);
  if (*(v7 + 32) == *v8)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (v6)
  {
    v15 = *(v7 + 8);
    v14 = *(v7 + 16);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v15;
    v31 = v14;
    v32 = &v30;
    v33 = a2;
    v34 = &v35;
    sub_23F21DCE0(v6, &v32, &v27);
  }

  else
  {
    v17 = *(v7 + 8);
    v16 = *(v7 + 16);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v17;
    v31 = v16;
    v18 = *(v7 + 56);
    v32 = &v30;
    v33 = a2;
    v34 = &v35;
    sub_23F21DCE0(v18, &v32, &v27);
  }

  v19 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(a1 + 8);
  v21 = v28;
  v28 = 0uLL;
  v22 = *(v20 + 16);
  *(v20 + 8) = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *v29;
  v24 = *&v29[16];
  *(v20 + 54) = *&v29[30];
  *(v20 + 40) = v24;
  *(v20 + 24) = v23;
  v25 = *(&v28 + 1);
  if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v7 = *(a1 + 8);
LABEL_33:
  v27 = &unk_285179008;
  sub_23EF61880(v7, &v28);
  *a4 = &unk_285179008;
  *(a4 + 8) = v28;
  *(a4 + 24) = *v29;
  result = *&v29[14];
  *(a4 + 38) = *&v29[14];
  *(a4 + 120) = 1;
  return result;
}

void sub_23EF61768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EF6177C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF61790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_23EF61808(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23EF61880(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v13 = 0;
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  if (v4)
  {
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v8;
      }
    }

    v9 = (*(*v4 + 104))(v4);
    *(a2 + 44) = v9 & ((v9 >> 1) >> 15);
    v5 = v13;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(a2 + 44) = 0;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v10 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = v14;
  if (!v14)
  {
    return;
  }

LABEL_13:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_23EF61A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_23EF3AE8C(v3);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23EF61AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF61B40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 24);
  *(a2 + 8) = *(result + 32);
  return result;
}

uint64_t sub_23EF61B54(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_23EF61BF8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23EF61C84(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v5;
      }
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v4 = result;
      operator delete(*(result + 16));
      return v4;
    }
  }

  return result;
}

uint64_t sub_23EF61D8C(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_23EF36F98(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  v5 = sub_23F2EB9A4(a2);
  ++a2[14];
  __n.__r_.__value_.__r.__words[0] = 0;
  sub_23F0702B4(v5, &__n);
  v6 = __n.__r_.__value_.__r.__words[0];
  memset(&__n, 0, sizeof(__n));
  if (v6)
  {
    std::string::append(&__n, v6, 0);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_n = &__n;
    }

    else
    {
      p_n = __n.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    p_n = &__n;
  }

  v10[0] = p_n;
  v10[1] = v6;
  v8 = sub_23F2EB9A4(a2);
  ++a2[14];
  sub_23F2EBAF0(v8, v10);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&__n.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&__n.__r_.__value_.__l + 2);
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  sub_23EF36F98(a1);
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23EF61F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_23EF57920(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF61FDC(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
    (off_285178E58[v2])(&v4, a1 + 32);
  }

  *(a1 + 96) = -1;
  return a1;
}

__n128 sub_23EF62038(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_285179588;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  *(v2 + 38) = *(a2 + 38);
  *(v2 + 24) = result;
  return result;
}

__n128 sub_23EF62078(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_285179288;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  v4 = *(a2 + 40);
  *(v2 + 54) = *(a2 + 54);
  *(v2 + 40) = v4;
  *(v2 + 24) = result;
  return result;
}

__n128 sub_23EF620C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 64);
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  if (v5)
  {
    (off_285178E58[v5])(&v10, v4);
LABEL_8:
    *(v4 + 64) = -1;
    *v4 = &unk_285179588;
    *(v4 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = *(a3 + 24);
    *(v4 + 38) = *(a3 + 38);
    *(v4 + 24) = result;
    *(v4 + 64) = 0;
    return result;
  }

  v6 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 16);
  *(a2 + 8) = v6;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = a2;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      a2 = v8;
    }
  }

  result = *(a3 + 24);
  *(a2 + 38) = *(a3 + 38);
  *(a2 + 24) = result;
  return result;
}

__n128 sub_23EF621E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 64);
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    (off_285178E58[v5])(&v12, v4);
LABEL_8:
    *(v4 + 64) = -1;
    *v4 = &unk_285179288;
    *(v4 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = *(a3 + 24);
    v11 = *(a3 + 40);
    *(v4 + 54) = *(a3 + 54);
    *(v4 + 40) = v11;
    *(v4 + 24) = result;
    *(v4 + 64) = 1;
    return result;
  }

  v6 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 16);
  *(a2 + 8) = v6;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = a2;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      a2 = v8;
    }
  }

  result = *(a3 + 24);
  v10 = *(a3 + 40);
  *(a2 + 54) = *(a3 + 54);
  *(a2 + 40) = v10;
  *(a2 + 24) = result;
  return result;
}

void sub_23EF62320(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    sub_23EF62590(&v11, a2, a3, a4);
  }

  else
  {
    v12 = 0;
    sub_23F2F80F8(*(a2 + 48), &v12);
    v7 = a2 + 16;
    *&v11 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v11 + 1) = v12;
    sub_23EF62458(a2 + 24, &v11);
    if (a4 >= 6)
    {
      v8 = 6;
    }

    else
    {
      v8 = a4;
    }

    sub_23EF6279C(a2, a3, v8);
    v9 = *(a2 + 32);
    v10 = *(v9 - 16) - (*(*v7 + 32))(a2 + 16) + *(v9 - 8);
    if (v10)
    {
      (*(*v7 + 40))(a2 + 16, v10);
    }

    *(a2 + 32) -= 16;
  }
}

void sub_23EF62458(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_23EF62578();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_23EF62590(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  *&v26 = 0;
  BYTE8(v26) = 0;
  LOBYTE(v27) = 0;
  v29 = 0;
  sub_23EF62EAC(a2, v25, a4);
  *&v10[8] = v26;
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (v29 == 1)
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_23EF34EA4(v11, v27, *(&v27 + 1));
    }

    else
    {
      *v11 = v27;
      v12 = v28;
    }

    v13 = 1;
  }

  v14 = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v24 = 0;
  sub_23EF5F384(a3, v10);
  if (v24 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v23;
      v7 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v23 = v5;
      operator delete(v7);
    }
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF62750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF6279C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = 2;
  sub_23F2F7EFC(*(a1 + 48), &v11);
  sub_23EF62A9C(&v11, a1, a2 + 8, v11);
  LOBYTE(v11) = 0;
  sub_23F2F7BA4(*(a1 + 48), &v11);
  if (v11)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    sub_23F2F856C(*(a1 + 48), (a2 + 24));
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }

  if (a3 >= 4)
  {
    v10 = 0;
    sub_23F2F7BA4(*(a1 + 48), &v10);
    if (v10)
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 72) = 1;
      }

      v11 = 2;
      sub_23F2F7EFC(*(a1 + 48), &v11);
      sub_23EF62A9C(&v11, a1, a2 + 56, v11);
    }

    else if (*(a2 + 72))
    {
      *(a2 + 72) = 0;
    }

    if (a3 == 5)
    {
      LOBYTE(v11) = 0;
      sub_23F2F7BA4(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        sub_23F2F856C(*(a1 + 48), (a2 + 80));
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }
    }

    else if (a3 >= 6)
    {
      LOBYTE(v11) = 0;
      sub_23F2F7BA4(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        sub_23F2F856C(*(a1 + 48), (a2 + 80));
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }

      LOBYTE(v11) = 0;
      sub_23F2F7BA4(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 136) & 1) == 0)
        {
          *(a2 + 112) = 0;
          *(a2 + 120) = 0;
          *(a2 + 128) = 0;
          *(a2 + 136) = 1;
        }

        sub_23F2F856C(*(a1 + 48), (a2 + 112));
      }

      else if (*(a2 + 136))
      {
        if (*(a2 + 135) < 0)
        {
          operator delete(*(a2 + 112));
        }

        *(a2 + 136) = 0;
      }

      LOBYTE(v11) = 0;
      sub_23F2F7BA4(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 168) & 1) == 0)
        {
          *(a2 + 144) = 0;
          *(a2 + 152) = 0;
          *(a2 + 160) = 0;
          *(a2 + 168) = 1;
        }

        sub_23EF62C04(a1, (a2 + 144));
      }

      else if (*(a2 + 168))
      {
        v6 = *(a2 + 144);
        if (v6)
        {
          v7 = *(a2 + 152);
          v8 = *(a2 + 144);
          if (v7 != v6)
          {
            do
            {
              v9 = *(v7 - 1);
              v7 -= 3;
              if (v9 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v8 = *(a2 + 144);
          }

          *(a2 + 152) = v6;
          operator delete(v8);
        }

        *(a2 + 168) = 0;
      }
    }
  }
}

void sub_23EF62A9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 1)
  {
    *&v10 = 0;
    BYTE8(v10) = 0;
    sub_23F2F7FF8(*(a2 + 48), &v10);
    LOBYTE(v9) = 0;
    sub_23F2F7BA4(*(a2 + 48), &v9);
    v8 = v9;
    *a3 = v10;
    *(a3 + 8) = v8;
  }

  else
  {
    v9 = 0;
    sub_23F2F80F8(*(a2 + 48), &v9);
    *&v10 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v10 + 1) = v9;
    sub_23EF62458(a2 + 24, &v10);
    sub_23F2F7FF8(*(a2 + 48), a3);
    LOBYTE(v10) = 0;
    sub_23F2F7BA4(*(a2 + 48), &v10);
    *(a3 + 8) = v10;
    v6 = *(a2 + 32);
    v7 = *(v6 - 16) - (*(*(a2 + 16) + 32))(a2 + 16) + *(v6 - 8);
    if (v7)
    {
      (*(*(a2 + 16) + 40))(a2 + 16, v7);
    }

    *(a2 + 32) -= 16;
  }
}

void sub_23EF62C04(uint64_t a1, void ***a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  sub_23F2F80F8(*(a1 + 48), &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a2);
  if (v11 > v5)
  {
    sub_23EF62D00(a2, v11 - v5);
    v8 = a2;
    v6 = *a2;
    v7 = v8[1];
    if (v7 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v11 >= v5)
  {
    v7 = a2[1];
    v6 = *a2;
    if (v4 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = &(*a2)[3 * v11];
  while (v4 != v7)
  {
    v9 = *(v4 - 1);
    v4 -= 3;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  v6 = *a2;
  if (v7 != v6)
  {
LABEL_12:
    v10 = *(a1 + 48);
    do
    {
      sub_23F2F856C(v10, v6);
      v6 += 3;
    }

    while (v6 != v7);
  }
}

void sub_23EF62D00(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_23EF62EAC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = 2;
  sub_23F2F7EFC(*(a1 + 48), &v7);
  sub_23EF62A9C(&v6, a1, a2 + 8, v7);
  if (a3 >= 2)
  {
    v8 = 0;
    sub_23F2F7BA4(*(a1 + 48), &v8);
    if (v8)
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 1;
      }

      sub_23F2F856C(*(a1 + 48), (a2 + 24));
    }

    else if (*(a2 + 48))
    {
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 48) = 0;
    }
  }
}

void sub_23EF62F94(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  if (a3 <= 1)
  {
    *&v11 = &unk_285179288;
    sub_23EF60D90();
  }

  v10 = 0;
  sub_23F2F80F8(*(a1 + 48), &v10);
  *&v11 = (*(*(a1 + 16) + 32))(a1 + 16);
  *(&v11 + 1) = v10;
  sub_23EF62458(a1 + 24, &v11);
  LOWORD(v11) = 0;
  sub_23F2F7D50(*(a1 + 48), &v11);
  *a2 = v11;
  LODWORD(v11) = 2;
  sub_23F2F7EFC(*(a1 + 48), &v11);
  if (v11 <= 1)
  {
    *(&v11 + 1) = 0;
    v10 = 0;
    sub_23F2F80F8(*(a1 + 48), &v10);
    *&v11 = v10;
    v9 = *(a1 + 48);
    sub_23F2F7EFC(v9, &v11 + 2);
    sub_23F2F7EFC(v9, (&v11 | 0xC));
    *(a2 + 4) = v11;
    v8 = *a2;
    if (v8 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    sub_23F2F80F8(*(a1 + 48), &v10);
    *&v11 = (*(*(a1 + 16) + 32))(a1 + 16);
    *(&v11 + 1) = v10;
    sub_23EF62458(a1 + 24, &v11);
    *&v11 = 0;
    sub_23F2F80F8(*(a1 + 48), &v11);
    *(a2 + 1) = v11;
    v5 = *(a1 + 48);
    sub_23F2F7EFC(v5, a2 + 4);
    sub_23F2F7EFC(v5, a2 + 5);
    v6 = *(a1 + 32);
    v7 = *(v6 - 16) - (*(*(a1 + 16) + 32))(a1 + 16) + *(v6 - 8);
    if (v7)
    {
      (*(*(a1 + 16) + 40))(a1 + 16, v7);
    }

    *(a1 + 32) -= 16;
    v8 = *a2;
    if (v8 != 1)
    {
LABEL_6:
      sub_23F096D6C(v8);
      sub_23EF638AC(&v11, a1);
      sub_23EF60504();
    }
  }

  sub_23F094E7C(a2);
}

void sub_23EF63814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_23EF60D14(&a31);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF6384C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_23EF47C2C(&a31);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF63868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF4F970(v9);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF638AC(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_23EF36F98(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  __n = 0;
  sub_23F2F80F8(*(a2 + 48), &__n);
  memset(&v9, 0, sizeof(v9));
  if (__n)
  {
    std::string::append(&v9, __n, 0);
    v5 = __n;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v5 = 0;
    v6 = &v9;
  }

  v8[0] = v6;
  v8[1] = v5;
  sub_23F2F8A98(a2, v8);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v9.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v9.__r_.__value_.__l + 2);
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  sub_23EF36F98(a1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23EF63A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_23EF57920(v16);
  _Unwind_Resume(a1);
}

void sub_23EF63AE0(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a1 + 32);
  v4 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v5);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v5[0] = "version";
  v5[1] = 7;
  v6 = 6;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, &v6);
  if (v6 >= 3)
  {
    sub_23EF63DEC(a1, a2);
  }

  sub_23EF63BE0(v5, a1);
}

void sub_23EF63BE0(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  sub_23EF64B08(a2, v2);
}

void sub_23EF63DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF63DEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7[0] = *(a1 + 32);
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v7);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8[0] = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, v8);
  if (v8[0] >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v8[0];
  }

  sub_23EF6406C(a1, (a2 + 8), v6);
}

void sub_23EF6406C(uint64_t a1, char **a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_23F2EB70C(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_23F06FC08(v6, &v12);
    *a2 = v12;
    v7 = (a2 + 1);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v12 = v7;
    sub_23EF641C8(a1);
  }

  v13 = 0;
  v9 = *(a1 + 104);
  *(a1 + 88) = "ns";
  *(a1 + 96) = 2;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v10 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  v14 = 0;
  sub_23F06FC08(v10, &v14);
  v12 = v14;
  v11 = *(a1 + 104);
  *(a1 + 88) = "clock_type";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v14 = &v13;
  sub_23EF641C8(a1);
}

void sub_23EF641C8(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F06FFE4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EF642B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EF6434C(void *a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (*sub_23F2EB70C(a1))
  {
    v4 = sub_23F2EB70C(a1);
    ++a1[14];
    v10 = 0uLL;
    v9 = 0;
    sub_23F06FFE4(v4, &v9);
    v5 = v9;
    v11[0] = v10;
    *(v11 + 7) = *(&v10 + 7);
    v6 = HIBYTE(v10);
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }

    v7 = v11[0];
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 15) = *(v11 + 7);
    *(a2 + 23) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EF6445C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF64478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v11[0] = *(a2 + 32);
  v6 = sub_23F2EB70C(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v6;
  sub_23F2EB5F4(a2 + 40, v11);
  sub_23F294EB4(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_23F2EBEC0(a2, &v12);
  v7 = v12;
  if (v5 >= 1)
  {
    if (v5 == 2)
    {
      v8 = v12;
      sub_23EF646E8(a2, a3, v12);
      v7 = v8;
    }

    if (v7 >= 2)
    {
      v7 = 2;
    }
  }

  sub_23EF6458C(a2, a3, v7);
  v9 = *(a2 + 48);
  *(a2 + 32) = *(v9 - 8);
  v10 = *(a2 + 72);
  *(a2 + 112) = *(v10 - 8);
  *(a2 + 48) = v9 - 8;
  *(a2 + 72) = v10 - 8;
}

void sub_23EF6458C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v14 = 0;
    v9 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v9 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v10 = sub_23F2EB70C(a1);
    ++*(a1 + 112);
    v15 = 0;
    sub_23F06FC08(v10, &v15);
    v13 = v15;
    v11 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v11 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v15 = &v14;
    sub_23EF647E0(a1, &v15);
    v12 = v14;
    *a2 = v13;
    *(a2 + 8) = v12;
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_23F2EB70C(a1);
    ++*(a1 + 112);
    v13 = 0;
    sub_23F06FC08(v6, &v13);
    *a2 = v13;
    v7 = (a2 + 8);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v13 = v7;
    sub_23EF647E0(a1, &v13);
  }
}

void sub_23EF646E8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = 2;
    v3 = *(a1 + 104);
    *(a1 + 88) = "min_version";
    *(a1 + 96) = 11;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_23F2EBEC0(a1, &v5);
    if (v5 >= 3)
    {
      v4 = v5;
      if ((atomic_load_explicit(&qword_27E3940D8, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_27E3940D8))
        {
          sub_23F302BD0("cv3d::kit::timeio::TimestampSample]", 0x22uLL, &stru_27E3940C0);
          __cxa_guard_release(&qword_27E3940D8);
          sub_23F2FF068(&stru_27E3940C0, v4, 2u);
        }
      }

      sub_23F2FF068(&stru_27E3940C0, v4, 2u);
    }
  }
}

void sub_23EF647E0(uint64_t a1, _BYTE **a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    v4 = sub_23F2EB70C(a1);
    ++*(a1 + 112);
    v8 = 0;
    v7 = 0uLL;
    sub_23F06FFE4(v4, &v7);
    v6 = v8;
    *__p = v7;
    operator new();
  }

  LOBYTE(v7) = 0;
  sub_23F2EBC60(a1, &v7);
  **a2 = v7;
}

void sub_23EF648F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EF64984(void *a1, uint64_t a2)
{
  if (*sub_23F2EB70C(a1))
  {
    v4 = sub_23F2EB70C(a1);
    ++a1[14];
    v16 = 0uLL;
    v17 = 0;
    sub_23F2EE4C0(v4, &v16);
    v5 = v16;
    v6 = v17;
    if (*(a2 + 24))
    {
      v7 = *a2;
      if (*a2)
      {
        v15 = v16;
        v8 = *(a2 + 8);
        v9 = *a2;
        if (v8 != v7)
        {
          do
          {
            v10 = *(v8 - 1);
            v8 -= 3;
            if (v10 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v7);
          v9 = *a2;
        }

        *(a2 + 8) = v7;
        operator delete(v9);
        v5 = v15;
      }
    }

    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = *(a2 + 8);
        v13 = *a2;
        if (v12 != v11)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v13 = *a2;
        }

        *(a2 + 8) = v11;
        operator delete(v13);
      }

      *(a2 + 24) = 0;
    }
  }
}

void sub_23EF64AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF3291C(va1);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23EF64AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23EF64B08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7[0] = *(a1 + 32);
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v7);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, &v8);
  if (v8 >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v8;
  }

  sub_23EF6406C(a1, (a2 + 8), v6);
}

void sub_23EF64C48(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v6);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, &v7);
  if (v7 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "io_format";
    *(a1 + 96) = 9;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6[0] = a2;
    sub_23EF65798(a1);
  }

  v6[0] = &unk_285179288;
  sub_23EF60D90();
}

void sub_23EF65700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF60D14(&a22);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF6571C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EF60D14(va);
  _Unwind_Resume(a1);
}

void sub_23EF65738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF47C2C(&a22);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF65754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF4F970(v9);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF65770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EF47F24(va);
  _Unwind_Resume(a1);
}

void sub_23EF65798(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F06FFE4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EF65888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EF6591C(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F06FFE4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EF65A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF65AA0(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_23EF36F98(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  v5 = sub_23F2EB70C(a2);
  ++a2[14];
  __n.__r_.__value_.__r.__words[0] = 0;
  sub_23F06FAB4(v5, &__n);
  v6 = __n.__r_.__value_.__r.__words[0];
  memset(&__n, 0, sizeof(__n));
  if (v6)
  {
    std::string::append(&__n, v6, 0);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_n = &__n;
    }

    else
    {
      p_n = __n.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    p_n = &__n;
  }

  v10[0] = p_n;
  v10[1] = v6;
  v8 = sub_23F2EB70C(a2);
  ++a2[14];
  sub_23F2EB858(v8, v10);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&__n.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&__n.__r_.__value_.__l + 2);
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  sub_23EF36F98(a1);
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23EF65C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_23EF57920(v17);
  _Unwind_Resume(a1);
}

void sub_23EF65CF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  *&v26 = 0;
  BYTE8(v26) = 0;
  LOBYTE(v27) = 0;
  v29 = 0;
  sub_23EF66940(a2, v25, a4);
  *&v10[8] = v26;
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (v29 == 1)
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_23EF34EA4(v11, v27, *(&v27 + 1));
    }

    else
    {
      *v11 = v27;
      v12 = v28;
    }

    v13 = 1;
  }

  v14 = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v24 = 0;
  sub_23EF5F384(a3, v10);
  if (v24 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v23;
      v7 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v23 = v5;
      operator delete(v7);
    }
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF65EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF65EFC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a1, __p);
  if (LODWORD(__p[0]) > 1)
  {
    sub_23F2F5B70(a1, (a2 + 8));
    LOBYTE(__p[0]) = 0;
    sub_23F2F4C14(a1, __p);
    *(a2 + 16) = __p[0];
    while (1)
    {
      if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_17;
      }

      sub_23F2F7390(a1, __p);
      if (SHIBYTE(v29) < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
          goto LABEL_13;
        }

LABEL_3:
        v6 = 1;
        if (SHIBYTE(v29) < 0)
        {
          goto LABEL_14;
        }

LABEL_4:
        if ((v6 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (SHIBYTE(v29) != 1 || *(a1 + 72) != LOBYTE(__p[0]))
        {
          goto LABEL_3;
        }

LABEL_13:
        v6 = 0;
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

LABEL_14:
        operator delete(__p[0]);
        if ((v6 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  sub_23F2F5B70(a1, __p);
  LOBYTE(v25[0]) = 0;
  sub_23F2F4C14(a1, v25);
  v7 = v25[0];
  *(a2 + 8) = __p[0];
  *(a2 + 16) = v7;
LABEL_17:
  LOBYTE(v25[0]) = 0;
  sub_23F2F4C14(a1, v25);
  if (LOBYTE(v25[0]))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_23F2F7390(a1, __p);
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 24) = *__p;
      *(a2 + 40) = v29;
      ++*(a1 + 104);
    }
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }

  if (a3 >= 4)
  {
    sub_23EF66650(a1, a2 + 56);
    if (a3 == 5)
    {
      LOBYTE(v25[0]) = 0;
      sub_23F2F4C14(a1, v25);
      if (LOBYTE(v25[0]))
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        ++*(a1 + 80);
        if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
        {
          *(a1 + 132) = 1;
        }

        else
        {
          sub_23F2F7390(a1, __p);
          if (*(a2 + 103) < 0)
          {
            operator delete(*(a2 + 80));
          }

          *(a2 + 80) = *__p;
          *(a2 + 96) = v29;
          ++*(a1 + 104);
        }
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }

      return;
    }

    if (a3 < 6)
    {
      return;
    }

    LOBYTE(v25[0]) = 0;
    sub_23F2F4C14(a1, v25);
    if (LOBYTE(v25[0]))
    {
      if ((*(a2 + 104) & 1) == 0)
      {
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        *(a2 + 104) = 1;
      }

      ++*(a1 + 80);
      if (*(a1 + 128) != 1 || (v8 = *(a1 + 131), v8 != 1))
      {
        sub_23F2F7390(a1, __p);
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 80) = *__p;
        *(a2 + 96) = v29;
LABEL_63:
        ++*(a1 + 104);
LABEL_64:
        LOBYTE(v25[0]) = 0;
        sub_23F2F4C14(a1, v25);
        if (LOBYTE(v25[0]))
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            *(a2 + 128) = 0;
            *(a2 + 136) = 1;
          }

          ++*(a1 + 80);
          if (*(a1 + 128) != 1 || (v9 = *(a1 + 131), v9 != 1))
          {
            sub_23F2F7390(a1, __p);
            if (*(a2 + 135) < 0)
            {
              operator delete(*(a2 + 112));
            }

            *(a2 + 112) = *__p;
            *(a2 + 128) = v29;
            goto LABEL_84;
          }
        }

        else
        {
          if (*(a2 + 136))
          {
            if (*(a2 + 135) < 0)
            {
              operator delete(*(a2 + 112));
            }

            *(a2 + 136) = 0;
          }

          ++*(a1 + 80);
          if (*(a1 + 128) != 1 || (v9 = *(a1 + 131), v9 != 1))
          {
            sub_23F2F7390(a1, __p);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_84:
            ++*(a1 + 104);
            LOBYTE(v23[0]) = 0;
            sub_23F2F4C14(a1, v23);
            if (LOBYTE(v23[0]))
            {
LABEL_85:
              __p[0] = 0;
              __p[1] = 0;
              v29 = 0;
              v30 = 1;
              ++*(a1 + 80);
              if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
              {
                *(a1 + 132) = 1;
              }

              else
              {
                sub_23F2F7390(a1, v25);
                v10 = *(a1 + 104);
                *__p = *v25;
                v29 = v26;
                *(a1 + 104) = v10 + 1;
              }

              sub_23EF5DEB8(__p, v23);
              *v25 = *v23;
              v26 = v24;
              v23[1] = 0;
              v24 = 0;
              v23[0] = 0;
              v27 = 1;
              sub_23EF5F240(a2 + 144, v25);
              if (v27 == 1)
              {
                v11 = v25[0];
                if (v25[0])
                {
                  v12 = v25[1];
                  v13 = v25[0];
                  if (v25[1] != v25[0])
                  {
                    do
                    {
                      v14 = *(v12 - 1);
                      v12 -= 3;
                      if (v14 < 0)
                      {
                        operator delete(*v12);
                      }
                    }

                    while (v12 != v11);
                    v13 = v25[0];
                  }

                  v25[1] = v11;
                  operator delete(v13);
                }
              }

              v19 = v23[0];
              if (v23[0])
              {
                v20 = v23[1];
                v21 = v23[0];
                if (v23[1] != v23[0])
                {
                  do
                  {
                    v22 = *(v20 - 1);
                    v20 -= 3;
                    if (v22 < 0)
                    {
                      operator delete(*v20);
                    }
                  }

                  while (v20 != v19);
                  v21 = v23[0];
                }

                v23[1] = v19;
                operator delete(v21);
              }

              if ((v30 & 1) != 0 && SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              return;
            }

            goto LABEL_79;
          }
        }

        *(a1 + 132) = v9;
        LOBYTE(v23[0]) = 0;
        sub_23F2F4C14(a1, v23);
        if (LOBYTE(v23[0]))
        {
          goto LABEL_85;
        }

LABEL_79:
        ++*(a1 + 80);
        if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
        {
          *(a1 + 132) = 1;
        }

        else
        {
          sub_23F2F7390(a1, v25);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(v25[0]);
          }

          ++*(a1 + 104);
        }

        if (*(a2 + 168) == 1)
        {
          v15 = *(a2 + 144);
          if (v15)
          {
            v16 = *(a2 + 152);
            v17 = *(a2 + 144);
            if (v16 != v15)
            {
              do
              {
                v18 = *(v16 - 1);
                v16 -= 3;
                if (v18 < 0)
                {
                  operator delete(*v16);
                }
              }

              while (v16 != v15);
              v17 = *(a2 + 144);
            }

            *(a2 + 152) = v15;
            operator delete(v17);
          }

          *(a2 + 168) = 0;
        }

        return;
      }
    }

    else
    {
      if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }

      ++*(a1 + 80);
      if (*(a1 + 128) != 1 || (v8 = *(a1 + 131), v8 != 1))
      {
        sub_23F2F7390(a1, __p);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_63;
      }
    }

    *(a1 + 132) = v8;
    goto LABEL_64;
  }
}

void sub_23EF6662C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if ((a23 & 1) != 0 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF66650(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_23F2F4C14(a1, &v6);
  if (v6)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    LODWORD(__p) = 2;
    sub_23F2F5830(a1, &__p);
    if (__p > 1)
    {
      sub_23F2F5B70(a1, a2);
      LOBYTE(__p) = 0;
      sub_23F2F4C14(a1, &__p);
      *(a2 + 8) = __p;
      while (1)
      {
        if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
        {
          return;
        }

        sub_23F2F7390(a1, &__p);
        if (v10 < 0)
        {
          if (v9 == 1 && *(a1 + 72) == *__p)
          {
LABEL_15:
            v4 = 0;
            if (v10 < 0)
            {
              goto LABEL_18;
            }

            goto LABEL_6;
          }
        }

        else if (v10 == 1 && *(a1 + 72) == __p)
        {
          goto LABEL_15;
        }

        v4 = 1;
        if (v10 < 0)
        {
LABEL_18:
          operator delete(__p);
        }

LABEL_6:
        if ((v4 & 1) == 0)
        {
          return;
        }
      }
    }

    __p = 0;
    LOBYTE(v9) = 0;
    sub_23F2F5B70(a1, &__p);
    v7 = 0;
    sub_23F2F4C14(a1, &v7);
    v5 = v7;
    *a2 = __p;
    *(a2 + 8) = v5;
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }
}

void sub_23EF667E0(uint64_t a1, void *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_23F2F5EB0(a1, &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  if (v11 <= v5)
  {
    if (v11 >= v5)
    {
      v7 = a2[1];
      i = *a2;
      if (v4 != i)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = *a2 + 24 * v11;
      while (v4 != v7)
      {
        v9 = *(v4 - 1);
        v4 -= 3;
        if (v9 < 0)
        {
          operator delete(*v4);
        }
      }

      a2[1] = v7;
      for (i = *a2; i != v7; ++*(a1 + 104))
      {
LABEL_16:
        while (1)
        {
          ++*(a1 + 80);
          if (*(a1 + 128) != 1 || *(a1 + 131) != 1)
          {
            break;
          }

          *(a1 + 132) = 1;
          i += 24;
          if (i == v7)
          {
            return;
          }
        }

        sub_23F2F7390(a1, &v12);
        if (*(i + 23) < 0)
        {
          operator delete(*i);
        }

        v10 = v12;
        *(i + 16) = v13;
        *i = v10;
        i += 24;
      }
    }
  }

  else
  {
    sub_23EF62D00(a2, v11 - v5);
    v8 = a2;
    i = *a2;
    v7 = v8[1];
    if (v7 != i)
    {
      goto LABEL_16;
    }
  }
}

void sub_23EF66940(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a1, __p);
  if (LODWORD(__p[0]) > 1)
  {
    sub_23F2F5B70(a1, (a2 + 8));
    LOBYTE(__p[0]) = 0;
    sub_23F2F4C14(a1, __p);
    *(a2 + 16) = __p[0];
    while (1)
    {
      if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_17;
      }

      sub_23F2F7390(a1, __p);
      if (SHIBYTE(v10) < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
LABEL_12:
          v6 = 0;
          if (SHIBYTE(v10) < 0)
          {
            goto LABEL_15;
          }

          goto LABEL_3;
        }
      }

      else if (SHIBYTE(v10) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_12;
      }

      v6 = 1;
      if (SHIBYTE(v10) < 0)
      {
LABEL_15:
        operator delete(__p[0]);
      }

LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  sub_23F2F5B70(a1, __p);
  v8 = 0;
  sub_23F2F4C14(a1, &v8);
  v7 = v8;
  *(a2 + 8) = __p[0];
  *(a2 + 16) = v7;
LABEL_17:
  if (a3 >= 2)
  {
    v8 = 0;
    sub_23F2F4C14(a1, &v8);
    if (v8)
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 1;
      }

      ++*(a1 + 80);
      if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
      {
        *(a1 + 132) = 1;
      }

      else
      {
        sub_23F2F7390(a1, __p);
        if (*(a2 + 47) < 0)
        {
          operator delete(*(a2 + 24));
        }

        *(a2 + 24) = *__p;
        *(a2 + 40) = v10;
        ++*(a1 + 104);
      }
    }

    else if (*(a2 + 48))
    {
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 48) = 0;
    }
  }
}

void sub_23EF66FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF60D14(&a22);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF66FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF47C2C(&a22);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF66FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF4F970(v9);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF67018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EF47F24(va);
  _Unwind_Resume(a1);
}

void sub_23EF67040(uint64_t a1, unsigned __int16 *a2)
{
  LOWORD(__p[0]) = 0;
  sub_23F2F51B0(a1, __p);
  *a2 = __p[0];
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a1, __p);
  if (LODWORD(__p[0]) <= 1)
  {
    __p[1] = 0;
    v8 = 0;
    sub_23F2F5EB0(a1, &v8);
    __p[0] = v8;
    sub_23F2F5830(a1, &__p[1]);
    sub_23F2F5830(a1, (__p | 0xC));
    *(a2 + 4) = *__p;
LABEL_17:
    v5 = *a2;
    if (v5 == 1)
    {
      sub_23F094E7C(a2);
    }

    sub_23F096D6C(v5);
    sub_23EF673E0(__p, a1);
    sub_23EF60504();
  }

  __p[0] = 0;
  sub_23F2F5EB0(a1, __p);
  *(a2 + 1) = __p[0];
  sub_23F2F5830(a1, a2 + 4);
  sub_23F2F5830(a1, a2 + 5);
  while (1)
  {
    if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
    {
      goto LABEL_17;
    }

    sub_23F2F7390(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      goto LABEL_17;
    }
  }
}

uint64_t sub_23EF673E0(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_23EF36F98(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  __n = 0;
  sub_23F2F5EB0(a2, &__n);
  memset(&v9, 0, sizeof(v9));
  if (__n)
  {
    std::string::append(&v9, __n, 0);
    v5 = __n;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v5 = 0;
    v6 = &v9;
  }

  v8[0] = v6;
  v8[1] = v5;
  sub_23F2F75D0(a2, v8);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v9.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v9.__r_.__value_.__l + 2);
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  sub_23EF36F98(a1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23EF67584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_23EF57920(v16);
  _Unwind_Resume(a1);
}

void sub_23EF67614(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 2)
  {
    sub_23EF67724(&v14, a2, a3, v7);
  }

  else
  {
    sub_23F294FCC(a2);
    if (v7 >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v7;
    }

    sub_23EF67968(a2, a3, v10);
    v11 = a2[12];
    v12 = a2[9];
    a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
    a2[9] = v12 - 8;
    a2[12] = v11 - 8;
  }
}

void sub_23EF67724(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  *&v28 = 0;
  BYTE8(v28) = 0;
  LOBYTE(v29) = 0;
  v31 = 0;
  sub_23EF67C10(&v12, a2, &v28);
  if (a4 >= 2)
  {
    v12 = "name";
    *&v13 = 4;
    *(&v13 + 1) = &v29;
    sub_23EF67B1C(a2, &v12);
  }

  v13 = v28;
  LOBYTE(v14[0]) = 0;
  v16 = 0;
  if (v31 == 1)
  {
    if (SHIBYTE(v30) < 0)
    {
      sub_23EF34EA4(v14, v29, *(&v29 + 1));
    }

    else
    {
      *v14 = v29;
      v15 = v30;
    }

    v16 = 1;
  }

  v17 = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v21 = 0;
  LOBYTE(v22) = 0;
  v24 = 0;
  LOBYTE(__p) = 0;
  v27 = 0;
  sub_23EF5F384(a3, &v12);
  if (v27 == 1)
  {
    v7 = __p;
    if (__p)
    {
      v8 = v26;
      v9 = __p;
      if (v26 != __p)
      {
        do
        {
          v10 = *(v8 - 1);
          v8 -= 3;
          if (v10 < 0)
          {
            operator delete(*v8);
          }
        }

        while (v8 != v7);
        v9 = __p;
      }

      v26 = v7;
      operator delete(v9);
    }
  }

  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v16 == 1 && SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (v31 == 1 && SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23EF6791C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 64) == 1 && *(v18 - 65) < 0)
  {
    operator delete(*(v18 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF67968(void *a1, uint64_t a2, unsigned int a3)
{
  sub_23EF67C10(&v9, a1, a2 + 8);
  v9 = "name";
  v10 = 4;
  v11 = a2 + 24;
  sub_23EF67B1C(a1, &v9);
  if (a3 >= 4)
  {
    v6 = a1[6];
    if (a1[7] <= v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_23EF35CC0(exception, "Not enough data to read");
      __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
    }

    v7 = *(a1[3] + v6);
    a1[6] = v6 + 1;
    if (v7)
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 72) = 1;
      }

      sub_23EF67C10(&v9, a1, a2 + 56);
    }

    else if (*(a2 + 72))
    {
      *(a2 + 72) = 0;
    }

    if (a3 == 5)
    {
      v9 = "space";
      v10 = 5;
      v11 = a2 + 80;
      sub_23EF67B1C(a1, &v9);
    }

    else if (a3 >= 6)
    {
      v9 = "space";
      v10 = 5;
      v11 = a2 + 80;
      sub_23EF67B1C(a1, &v9);
      v9 = "instance_id";
      v10 = 11;
      v11 = a2 + 112;
      sub_23EF67B1C(a1, &v9);
      sub_23EF67EE4(&v9, a1, a2 + 144);
    }
  }
}

void *sub_23EF67B1C(void *result, uint64_t a2)
{
  v2 = result[6];
  if (result[7] <= v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v3 = *(a2 + 16);
  v4 = *(result[3] + v2);
  result[6] = v2 + 1;
  if (v4)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
    }

    v5 = result;
    sub_23F295150(result, v3);
    return v5;
  }

  else if (*(v3 + 24))
  {
    if (*(v3 + 23) < 0)
    {
      v6 = result;
      v7 = v3;
      operator delete(*v3);
      result = v6;
      *(v7 + 24) = 0;
    }

    else
    {
      *(v3 + 24) = 0;
    }
  }

  return result;
}

void *sub_23EF67C10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v9 <= 1)
  {
    v15 = 0;
    v16 = 0;
    result = sub_23EF67E04(a2, &v15);
    v13 = v16;
    *a3 = v15;
    *(a3 + 8) = v13;
  }

  else
  {
    sub_23F294FCC(a2);
    result = sub_23EF67D24(a2, a3);
    v11 = a2[12];
    v12 = a2[9];
    a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
    a2[9] = v12 - 8;
    a2[12] = v11 - 8;
  }

  return result;
}

void *sub_23EF67D24(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7 || (*a2 = *(result[3] + v2), v6 = result[6], v7 = result[7], result[6] = v6 + 8, v7 <= v6 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v8 = *(result[3] + v6 + 8);
  result[6] = v6 + 9;
  *(a2 + 8) = v8;
  return result;
}

void *sub_23EF67E04(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7 || (*a2 = *(result[3] + v2), v6 = result[6], v7 = result[7], result[6] = v6 + 8, v7 <= v6 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v8 = *(result[3] + v6 + 8);
  result[6] = v6 + 9;
  *(a2 + 8) = v8;
  return result;
}

void sub_23EF67EE4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  if (a2[7] <= v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v5 = *(a2[3] + v3);
  a2[6] = v3 + 1;
  if (v5)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    sub_23EF68008(a2, a3);
  }

  else if (*(a3 + 24))
  {
    v6 = *a3;
    if (*a3)
    {
      v7 = *(a3 + 8);
      v8 = *a3;
      if (v7 != v6)
      {
        do
        {
          v9 = *(v7 - 1);
          v7 -= 3;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = *a3;
      }

      *(a3 + 8) = v6;
      operator delete(v8);
    }

    *(a3 + 24) = 0;
  }
}

void sub_23EF68008(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = v9 - *a2;
  v11 = *(a1[3] + v3);
  a1[6] = v3 + 8;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  if (v11 > v12)
  {
    sub_23EF62D00(a2, v11 - v12);
    v15 = a2;
    i = *a2;
    v14 = v15[1];
    if (v14 == i)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v11 >= v12)
  {
    v14 = v9;
    i = *a2;
    if (v9 == *a2)
    {
      return;
    }

    goto LABEL_15;
  }

  v14 = (v8 + 24 * v11);
  while (v9 != v14)
  {
    v16 = *(v9 - 1);
    v9 -= 3;
    if (v16 < 0)
    {
      operator delete(*v9);
    }
  }

  a2[1] = v14;
  for (i = *a2; i != v14; i += 24)
  {
LABEL_15:
    sub_23F295150(a1, i);
  }
}

void sub_23EF68144(void *a1, unsigned __int16 *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    goto LABEL_23;
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  if (v8 <= 1)
  {
    *&v27 = &unk_285179288;
    sub_23EF60D90();
  }

  sub_23F294FCC(a1);
  v9 = a1[6];
  v10 = a1[7];
  v11 = v10 - v9;
  if (v10 < v9)
  {
    v11 = 0;
  }

  if (v11 <= 1)
  {
    goto LABEL_23;
  }

  v12 = a1[3];
  v13 = *(v12 + v9);
  a1[6] = v9 + 2;
  *a2 = v13;
  v4 = v10 >= v9 + 2;
  v14 = v10 - (v9 + 2);
  if (!v4)
  {
    v14 = 0;
  }

  if (v14 <= 3)
  {
    goto LABEL_23;
  }

  v15 = *(v12 + v9 + 2);
  a1[6] = v9 + 6;
  if (v15 <= 1)
  {
    v27 = 1uLL;
    sub_23EF68AEC(a1, &v27);
    *(a2 + 4) = v27;
    v25 = *a2;
    if (v25 != 1)
    {
LABEL_19:
      sub_23F096D6C(v25);
      sub_23EF68BD0(&v27, a1);
      sub_23EF60504();
    }

LABEL_22:
    sub_23F094E7C(a2);
  }

  sub_23F294FCC(a1);
  v17 = a1[6];
  v16 = a1[7];
  v18 = v16 - v17;
  if (v16 < v17)
  {
    v18 = 0;
  }

  if (v18 <= 7)
  {
LABEL_23:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
  }

  else
  {
    v19 = a1[3];
    v20 = *(v19 + v17);
    v21 = v17 + 8;
    a1[6] = v21;
    *(a2 + 1) = v20;
    v4 = v16 >= v21;
    v22 = v16 - v21;
    if (!v4)
    {
      v22 = 0;
    }

    if (v22 > 7)
    {
      *(a2 + 2) = *(v19 + v21);
      a1[6] += 8;
      v23 = a1[12];
      v24 = a1[9];
      a1[6] = *(v23 - 8) + *(v24 - 8) + 8;
      a1[9] = v24 - 8;
      a1[12] = v23 - 8;
      v25 = *a2;
      if (v25 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
  }

  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF689F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_23EF60D14(&a31);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF68A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF68A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_23EF47C2C(&a31);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF68A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF4F970(v9);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void *sub_23EF68AEC(void *result, void *a2)
{
  v3 = result[6];
  v2 = result[7];
  v4 = v2 - v3;
  if (v2 < v3)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    goto LABEL_10;
  }

  v5 = result[3];
  v6 = *(v5 + v3);
  v7 = v3 + 8;
  result[6] = v7;
  *a2 = v6;
  v8 = v2 >= v7;
  v9 = v2 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
LABEL_10:
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  a2[1] = *(v5 + v7);
  result[6] += 8;
  return result;
}

uint64_t sub_23EF68BD0(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_23EF36F98(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  v5 = a2[6];
  v6 = a2[7];
  v7 = v6 - v5;
  if (v6 < v5)
  {
    v7 = 0;
  }

  if (v7 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Not enough data to read");
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v8 = *(a2[3] + v5);
  v9 = v5 + 8;
  a2[6] = v9;
  memset(&v16, 0, sizeof(v16));
  if (v8)
  {
    std::string::append(&v16, v8, 0);
    v9 = a2[6];
    v6 = a2[7];
  }

  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (!v10)
  {
    v11 = 0;
  }

  if (v11 < v8)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "Not enough data to read binary blob");
    v15->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v15, off_278C74498, MEMORY[0x277D825F8]);
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v16;
  }

  else
  {
    v12 = v16.__r_.__value_.__r.__words[0];
  }

  memcpy(v12, (a2[3] + v9), v8);
  a2[6] += v8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v16.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v16.__r_.__value_.__l + 2);
  *(&v16.__r_.__value_.__s + 23) = 0;
  v16.__r_.__value_.__s.__data_[0] = 0;
  sub_23EF36F98(a1);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23EF68E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_23EF57920(v15);
  _Unwind_Resume(a1);
}

void sub_23EF68F0C(int *a1, void **a2, uint64_t a3, unsigned int a4)
{
  v4 = a4;
  v7 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 3)
    {
LABEL_17:
      sub_23EF69318(&v13, a2, a3, v4);
      return;
    }

    v12 = 3;
    (*(*a2 + 13))(a2, &v12);
    if (v12 >= 7)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_27E3940F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3940F8))
      {
        sub_23EF690F8();
      }

      sub_23F2FF068(&stru_27E3940E0, v11, 6u);
    }

    v7 = *a1;
  }

  if (v4 < 3 || v7 <= 0)
  {
    if (v4 >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v4;
    }

    if (v4 > 2)
    {
      sub_23EF69524(a2, a3, v10);
      return;
    }

    v4 = v10;
    goto LABEL_17;
  }

  (*(*a2 + 2))(a2);
  if (v4 >= 6)
  {
    v9 = 6;
  }

  else
  {
    v9 = v4;
  }

  sub_23EF69524(a2, a3, v9);
  (*(*a2 + 3))(a2);
}

void sub_23EF691CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF691FC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("6U]", 2, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
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

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EF692E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23EF69318(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  *&v26 = 0;
  BYTE8(v26) = 0;
  LOBYTE(v27) = 0;
  v29 = 0;
  sub_23EF6A4C4(a2, v25, a4);
  *&v10[8] = v26;
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (v29 == 1)
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_23EF34EA4(v11, v27, *(&v27 + 1));
    }

    else
    {
      *v11 = v27;
      v12 = v28;
    }

    v13 = 1;
  }

  v14 = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v24 = 0;
  sub_23EF5F384(a3, v10);
  if (v24 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v23;
      v7 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v23 = v5;
      operator delete(v7);
    }
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF694D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF69524(void **a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v24[0] = a1[1];
  LODWORD(__p) = 2;
  v6[13](a1, &__p);
  if (SLODWORD(v24[0]) < 1)
  {
    if (__p < 2)
    {
      __p = 0;
      LOBYTE(v30) = 0;
      (*(*a1 + 9))(a1, &__p);
      v26[0] = &v30;
      sub_23EF6A05C(a1, v26);
      v7 = v30;
      *(a2 + 8) = __p;
      *(a2 + 16) = v7;
    }

    else
    {
      (*(*a1 + 9))(a1, a2 + 8);
      __p = (a2 + 16);
      sub_23EF6A05C(a1, &__p);
    }
  }

  else
  {
    sub_23EF69DD0(v24, a1, a2 + 8, __p);
  }

  LOBYTE(__p) = 0;
  (*(*a1 + 10))(a1, &__p);
  if (__p)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    (*(*a1 + 18))(a1, a2 + 24);
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }

  if (a3 >= 4)
  {
    sub_23EF6A1D4(a1, a2 + 56);
    if (a3 == 5)
    {
      LOBYTE(__p) = 0;
      (*(*a1 + 10))(a1, &__p);
      if (__p)
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        (*(*a1 + 18))(a1, a2 + 80);
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }
    }

    else if (a3 >= 6)
    {
      if ((*(a1 + 12) & 4) != 0)
      {
        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 104) & 1) == 0)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
            *(a2 + 96) = 0;
            *(a2 + 104) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 80);
        }

        else
        {
          if (*(a2 + 104))
          {
            if (*(a2 + 103) < 0)
            {
              operator delete(*(a2 + 80));
            }

            *(a2 + 104) = 0;
          }

          (*(*a1 + 35))(a1, v26);
        }

        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            *(a2 + 128) = 0;
            *(a2 + 136) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 112);
        }

        else
        {
          if (*(a2 + 136))
          {
            if (*(a2 + 135) < 0)
            {
              operator delete(*(a2 + 112));
            }

            *(a2 + 136) = 0;
          }

          (*(*a1 + 35))(a1, v26);
        }

        LOBYTE(__p) = 0;
        v32 = 0;
        LOBYTE(v26[0]) = 0;
        (*(*a1 + 10))(a1, v26);
        if (LOBYTE(v26[0]))
        {
          if ((v32 & 1) == 0)
          {
            __p = 0;
            v30 = 0;
            v31 = 0;
            v32 = 1;
          }

          (*(*a1 + 18))(a1, &__p);
        }

        else
        {
          if (v32)
          {
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p);
            }

            v32 = 0;
          }

          (*(*a1 + 35))(a1, v24);
        }

        if (v32 == 1)
        {
          sub_23EF5DEB8(&__p, v24);
          *v26 = *v24;
          v27 = v25;
          v24[1] = 0;
          v25 = 0;
          v24[0] = 0;
          v28 = 1;
          sub_23EF5F240(a2 + 144, v26);
          if (v28 == 1)
          {
            v12 = v26[0];
            if (v26[0])
            {
              v13 = v26[1];
              v14 = v26[0];
              if (v26[1] != v26[0])
              {
                do
                {
                  v15 = *(v13 - 1);
                  v13 -= 3;
                  if (v15 < 0)
                  {
                    operator delete(*v13);
                  }
                }

                while (v13 != v12);
                v14 = v26[0];
              }

              v26[1] = v12;
              operator delete(v14);
            }
          }

          v20 = v24[0];
          if (v24[0])
          {
            v21 = v24[1];
            v22 = v24[0];
            if (v24[1] != v24[0])
            {
              do
              {
                v23 = *(v21 - 1);
                v21 -= 3;
                if (v23 < 0)
                {
                  operator delete(*v21);
                }
              }

              while (v21 != v20);
              v22 = v24[0];
            }

            v24[1] = v20;
            operator delete(v22);
          }
        }

        else if (*(a2 + 168) == 1)
        {
          v16 = *(a2 + 144);
          if (v16)
          {
            v17 = *(a2 + 152);
            v18 = *(a2 + 144);
            if (v17 != v16)
            {
              do
              {
                v19 = *(v17 - 1);
                v17 -= 3;
                if (v19 < 0)
                {
                  operator delete(*v17);
                }
              }

              while (v17 != v16);
              v18 = *(a2 + 144);
            }

            *(a2 + 152) = v16;
            operator delete(v18);
          }

          *(a2 + 168) = 0;
        }

        if (v32 == 1 && SHIBYTE(v31) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 104) & 1) == 0)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
            *(a2 + 96) = 0;
            *(a2 + 104) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 80);
        }

        else if (*(a2 + 104))
        {
          if (*(a2 + 103) < 0)
          {
            operator delete(*(a2 + 80));
          }

          *(a2 + 104) = 0;
        }

        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            *(a2 + 128) = 0;
            *(a2 + 136) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 112);
        }

        else if (*(a2 + 136))
        {
          if (*(a2 + 135) < 0)
          {
            operator delete(*(a2 + 112));
          }

          *(a2 + 136) = 0;
        }

        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 168) & 1) == 0)
          {
            *(a2 + 144) = 0;
            *(a2 + 152) = 0;
            *(a2 + 160) = 0;
            *(a2 + 168) = 1;
          }

          sub_23EF6A390(a1, (a2 + 144));
        }

        else if (*(a2 + 168))
        {
          v8 = *(a2 + 144);
          if (v8)
          {
            v9 = *(a2 + 152);
            v10 = *(a2 + 144);
            if (v9 != v8)
            {
              do
              {
                v11 = *(v9 - 1);
                v9 -= 3;
                if (v11 < 0)
                {
                  operator delete(*v9);
                }
              }

              while (v9 != v8);
              v10 = *(a2 + 144);
            }

            *(a2 + 152) = v8;
            operator delete(v10);
          }

          *(a2 + 168) = 0;
        }
      }
    }
  }
}