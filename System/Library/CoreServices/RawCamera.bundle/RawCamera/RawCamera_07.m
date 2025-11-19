void sub_2337ACC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337ACC90(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1184);
  if (v3)
  {
    LODWORD(v3) = sub_2337DE204(v3);
  }

  snprintf(__str, 0x10uLL, "%u", v3);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_23372A488(__p, "3fr");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "hasselblad");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337ACD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_2337ACDD4(void *a1)
{
  sub_2337ACE0C(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337ACE0C(void *a1)
{
  *a1 = &unk_28490A1B0;
  v2 = a1[151];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = a1[149];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return sub_2337557B4(a1);
}

uint64_t sub_2337ACF18(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28490A500;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_28490A1B0;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0xBFF0000000000000;
  return a1;
}

void sub_2337ACFD4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490A500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

int *sub_2337AD050(int *result, int *a2)
{
  if (!*a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *result /= *a2;
  return result;
}

int *sub_2337AD0B4(int *result, int *a2)
{
  v2 = *result * *a2;
  *result = v2;
  if (v2 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_2337AD1D0(void *a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908220;
  sub_2337AD22C((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t sub_2337AD22C(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v10 = a2[1];
  v16 = *a2;
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_233726998(&v15, a3);
  sub_233726998(&v14, a4);
  sub_233726998(&v13, a5);
  sub_233726998(&v12, a6);
  sub_2337B0510(a1, &v16, &v15, &v14, &v13, &v12);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  return a1;
}

void sub_2337AD2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    sub_2337239E8(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337AD310(unint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (!(a1 >> 20))
  {
    operator new();
  }

  operator new();
}

void sub_2337AD450(unint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (!(a1 >> 20))
  {
    operator new();
  }

  sub_2337AD870();
}

void sub_2337AD544(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337AD55C(uint64_t a1)
{
  *a1 = &unk_28490A550;
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(a1 + 8) == 1)
    {
      j__CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v2);
    }

    else
    {
      j__free_3(*(a1 + 32));
    }

    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_2337AD5D8(uint64_t a1)
{
  sub_2337AD55C(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337AD610(uint64_t a1)
{
  v2 = NSPageSize();
  v3 = *(a1 + 24);
  if (v3 <= v2)
  {
    *(a1 + 8) = 1;
    if (v3 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3;
    }

    result = sub_2338F60FC(*MEMORY[0x277CBECE8], v5, 0);
  }

  else
  {
    result = sub_2338F60BC(v3);
  }

  *(a1 + 32) = result;
  *(a1 + 16) = result;
  if (!result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_WORD *sub_2337AD6B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = sub_23378972C(a1);
  if (v1 >= 2)
  {
    v3 = v1 >> 1;
    do
    {
      *result = bswap32(*result) >> 16;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_2337AD71C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490A598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337AD79C(uint64_t a1)
{
  sub_2337AD55C(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337AD7F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490A638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337AD8DC(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28490A688;
  sub_233861A90(a1 + 3, *a2);
  return a1;
}

void sub_2337AD95C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490A688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337AD9D8(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5)
{
  v10 = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28490A6D8;
  v8 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_233723B40((a1 + 40), &v10);
  *(a1 + 44) = *a4;
  *(a1 + 52) = *a5;
  *(a1 + 68) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 65537;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 102) = 0;
  *(a1 + 110) = -1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 169) = 0u;
  *(a1 + 185) = 1;
  return a1;
}

void sub_2337ADAA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337ADAC8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  if (v2 <= 0)
  {
    v4 = *(result + 44);
  }

  else
  {
    for (i = 0; i < v2; ++i)
    {
      result = sub_2337ADCC4(v1);
      v4 = *(v1 + 44);
      if (v4 >= 1)
      {
        v5 = (result + 2 * (v4 * i));
        v6 = *(v1 + 108);
        v7 = *(v1 + 44);
        do
        {
          v8 = *v5;
          if (v8 > v6 && v8 < *(v1 + 110))
          {
            *(v1 + 108) = v8;
            v6 = v8;
          }

          ++v5;
          --v7;
        }

        while (v7);
      }

      v2 = *(v1 + 56);
    }
  }

  v9 = *(v1 + 64);
  if (*(v1 + 60) >= v4 || v9 < 1)
  {
    v11 = v9 + v2;
  }

  else
  {
    do
    {
      v12 = sub_2337ADCC4(v1);
      v13 = *(v1 + 52);
      if (v13 >= 1)
      {
        v14 = (v12 + 2 * *(v1 + 44) * v2);
        v15 = *(v1 + 108);
        do
        {
          v16 = *v14;
          if (v16 > v15 && v16 < *(v1 + 110))
          {
            *(v1 + 108) = v16;
            v15 = v16;
          }

          ++v14;
          --v13;
        }

        while (v13);
      }

      result = sub_2337ADCC4(v1);
      v17 = *(v1 + 44);
      v18 = *(v1 + 52);
      v19 = *(v1 + 60);
      if (v19 + v18 < v17)
      {
        v20 = *(v1 + 108);
        v21 = v18 + v19;
        do
        {
          v22 = *(result + 2 * v17 * v2 + 2 * v21);
          if (v22 > v20 && v22 < *(v1 + 110))
          {
            *(v1 + 108) = v22;
            v20 = v22;
          }

          ++v21;
        }

        while (v21 < v17);
      }

      ++v2;
      v11 = *(v1 + 64) + *(v1 + 56);
    }

    while (v2 < v11);
  }

  while (v11 < *(v1 + 48))
  {
    result = sub_2337ADCC4(v1);
    v23 = *(v1 + 44);
    if (v23 >= 1)
    {
      v24 = (result + 2 * v23 * v11);
      v25 = *(v1 + 108);
      do
      {
        v26 = *v24;
        if (v26 > v25 && v26 < *(v1 + 110))
        {
          *(v1 + 108) = v26;
          v25 = v26;
        }

        ++v24;
        --v23;
      }

      while (v23);
    }

    ++v11;
  }

  return result;
}

uint64_t sub_2337ADCC4(uint64_t a1)
{
  (*(*a1 + 112))(&v6);
  v2 = sub_23378972C(v6);
  v3 = *(v6 + 24);
  v4 = sub_2337AEFB8(a1);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2 + v3 - v4;
}

void sub_2337ADD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

_WORD *sub_2337ADD68(unsigned int *a1)
{
  v2 = a1[13];
  v3 = a1[14];
  v4 = a1[16];
  v44 = a1[15];
  v45 = v2;
  v43 = v4;
  sub_233726998(&v42, a1 + 11);
  sub_233726998(&v41, a1 + 12);
  if (v42 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v41 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  LODWORD(v40) = v2;
  v5 = sub_233753AB0(&v40, &v44);
  if (v42 < *v5)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  LODWORD(v40) = v3;
  v6 = sub_233753AB0(&v40, &v43);
  if (v41 < *v6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v7 = sub_2337ADCC4(a1);
  LODWORD(v40) = v3;
  LODWORD(v40) = *sub_23378007C(&v40, a1 + 11);
  v8 = *sub_233753AB0(&v40, &v45);
  LOWORD(v39) = (*(*a1 + 56))(a1);
  LODWORD(v40) = v8;
  v9 = (v7 + 2 * *sub_2337B0160(&v40, &v39));
  v10 = (*(*a1 + 128))(a1);
  v40 = v10;
  v11 = sub_2337AE2A8(a1);
  result = (*(*a1 + 72))(a1);
  v39 = result;
  if (v9 != v11 || v10 != result)
  {
    v38 = 2;
    v46 = v44;
    v13 = *sub_233726B58(&v46, &v38);
    v37 = (*(*a1 + 40))(a1);
    v46 = v13;
    v14 = *sub_2337B0160(&v46, &v37);
    if (v14 <= 3)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v15 = v11 + v39 * a1[17] + 2 * a1[17];
    v16 = (*(*a1 + 120))(a1);
    if (v15 >= v9)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v17 = v16;
    LODWORD(v38) = v43;
    if (v15 + *sub_233726B58(&v38, &v39) > v16)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    LODWORD(v38) = v43;
    result = sub_233726B58(&v38, &v40);
    if (v9 + *result > v17)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    if (*(a1 + 184) == 1)
    {
      result = sub_2337ADAC8(a1);
    }

    v18 = v43;
    if (v43)
    {
      v19 = 0;
      v21 = v39;
      v20 = v40;
      LOWORD(v22) = *(a1 + 54);
      do
      {
        if (v14 == 4)
        {
          LODWORD(v23) = 0;
          v26 = v22;
          v25 = v22;
          v24 = v22;
          v33 = v9;
          result = v15;
        }

        else
        {
          v23 = 0;
          v24 = v22;
          v25 = v22;
          v26 = v22;
          do
          {
            v27 = (v15 + v23);
            v28 = (v9 + v23);
            v29 = *(v9 + v23);
            *(v15 + v23) = v29;
            if (v29 > v24 && v29 < *(a1 + 55))
            {
              v24 = v29;
            }

            v30 = v28[1];
            v27[1] = v30;
            if (v30 > v25 && v30 < *(a1 + 55))
            {
              v25 = v30;
            }

            v31 = v28[2];
            v27[2] = v31;
            if (v31 > v26 && v31 < *(a1 + 55))
            {
              v26 = v31;
            }

            v32 = v28[3];
            v27[3] = v32;
            if (v32 > v22 && v32 < *(a1 + 55))
            {
              LOWORD(v22) = v32;
            }

            v23 += 8;
          }

          while (v14 - 4 > v23);
          result = (v15 + v23);
          v33 = (v9 + v23);
        }

        while (v14 > v23)
        {
          v35 = *v33++;
          v34 = v35;
          *result++ = v35;
          if (v35 > v24)
          {
            v24 = v34;
          }

          LODWORD(v23) = v23 + 2;
        }

        v36 = v25;
        if (v24 > v25)
        {
          v36 = v24;
        }

        if (v26 <= v22)
        {
          v22 = v22;
        }

        else
        {
          v22 = v26;
        }

        if (v36 > v22)
        {
          LOWORD(v22) = v36;
        }

        *(a1 + 54) = v22;
        v9 = (v9 + v20);
        v15 += v21;
        ++v19;
      }

      while (v19 != v18);
    }
  }

  return result;
}

uint64_t sub_2337AE2A8(uint64_t a1)
{
  (*(*a1 + 112))(&v3);
  v1 = sub_23378972C(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2337AE310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337AE328(_DWORD *a1)
{
  v2 = (*(*a1 + 72))(a1);
  v3 = v2 >> 1;
  v4 = a1[15];
  v5 = a1[16];
  v6 = sub_2337AE2A8(a1);
  if (v5)
  {
    v7 = 0;
    v8 = a1[17];
    v9 = v6 + 2 * v3 * v8;
    v10 = (v6 + v3 * (2 * v8 + 2));
    do
    {
      v11 = v8;
      v12 = 2 * v8;
      v13 = v8 + v4 - 2;
      v14 = v8 + v4;
      v15 = v10;
      v9 += 2 * v3;
      if (v8)
      {
        do
        {
          *v15++ = *(v9 + 2 * v12);
          *(v9 + 2 * v14++) = *(v9 + 2 * v13--);
          --v12;
          --v11;
        }

        while (v11);
      }

      ++v7;
      v10 += v3;
    }

    while (v7 != v5);
  }

  v16 = sub_2337AE2A8(a1);
  v17 = v2 & 0xFFFFFFFFFFFFFFFELL;
  v18 = a1[17];
  if (v18)
  {
    v19 = 0;
    v20 = (v16 + 2 * v3 * (v18 - 1));
    v21 = &v20[2 * v17];
    do
    {
      memcpy(v20, v21, v17);
      ++v19;
      v21 += v17;
      v20 -= 2 * v3;
    }

    while (v19 < a1[17]);
  }

  result = sub_2337AE2A8(a1);
  v23 = a1[17];
  if (v23)
  {
    v24 = 0;
    v25 = (result + 2 * v3 * (v23 + v5));
    v26 = &v25[-2 * v17];
    do
    {
      result = memcpy(v25, v26, v17);
      ++v24;
      v26 -= v17;
      v25 += v17;
    }

    while (v24 < a1[17]);
  }

  return result;
}

void *sub_2337AE4BC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = result[17];
  if (!v4)
  {
    (*(*result + 24))(&v7, result);
    v5 = v7;
    if (v8)
    {
      sub_2337239E8(v8);
    }

    if (v5)
    {
      if ((!*(v2 + 168) || !*(v2 + 172)) && (!*(v2 + 176) || !*(v2 + 180)))
      {
        (*(*v2 + 96))(v2);
        (*(*v2 + 104))(v2);
        sub_2337AE2A8(v2);
        (*(*v2 + 72))(v2);
        sub_23378972C(*(v2 + 88));
        (*(*v2 + 72))(v2);
        sub_2337B01C8();
      }

      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = result[18];
  *a2 = v4;
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

os_signpost_id_t sub_2337AE6F4@<X0>(os_signpost_id_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 136))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v3 = result;
    v4 = *(result + 152);
    if (!v4)
    {
      (*(**(result + 24) + 40))(*(result + 24), result + 40, 0);
      v5 = sub_23378E038();
      v6 = v5;
      if (v3 + 1 >= 2 && os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23371F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CUnpacker", &unk_233945DBE, buf, 2u);
      }

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_2337AE968;
      v13[3] = &unk_2789EE800;
      v13[4] = v3;
      v7 = MEMORY[0x2383AC810](v13);
      (*(*v3 + 168))(v3);
      v7[2](v7);

      v8 = sub_2337ADCC4(v3);
      (*(*v3 + 112))(buf, v3);
      v9 = v8 - sub_23378972C(*buf);
      if (*&buf[8])
      {
        sub_2337239E8(*&buf[8]);
      }

      v12 = v9;
      sub_2337B036C();
    }

    v10 = *(result + 160);
    *a2 = v4;
    a2[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void sub_2337AE928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337AE968(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_2337AE9F0(uint64_t result, uint64_t a2, unint64_t a3, unsigned int a4, char a5)
{
  if (a4 >= 0x11)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v5 = (1 << a4);
  if (v5 > a3)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = 0;
  v7 = vdupq_n_s64(v5 - 1);
  v8 = xmmword_233903BC0;
  v9 = xmmword_233903BD0;
  v10 = xmmword_233903BE0;
  v11 = xmmword_233903BB0;
  v12 = vdupq_n_s64(8uLL);
  v13 = (a2 + 8);
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v7, v11));
    if (vuzp1_s8(vuzp1_s16(v14, *v7.i8), *v7.i8).u8[0])
    {
      *(v13 - 4) = v6 << a5;
    }

    if (vuzp1_s8(vuzp1_s16(v14, *&v7), *&v7).i8[1])
    {
      *(v13 - 3) = (v6 + 1) << a5;
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v10))), *&v7).i8[2])
    {
      *(v13 - 2) = (v6 + 2) << a5;
      *(v13 - 1) = (v6 + 3) << a5;
    }

    v15 = vmovn_s64(vcgeq_u64(v7, v9));
    if (vuzp1_s8(*&v7, vuzp1_s16(v15, *&v7)).i32[1])
    {
      *v13 = (v6 + 4) << a5;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v15, *&v7)).i8[5])
    {
      v13[1] = (v6 + 5) << a5;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8)))).i8[6])
    {
      v13[2] = (v6 + 6) << a5;
      v13[3] = (v6 + 7) << a5;
    }

    v6 += 8;
    v9 = vaddq_s64(v9, v12);
    v10 = vaddq_s64(v10, v12);
    v11 = vaddq_s64(v11, v12);
    v8 = vaddq_s64(v8, v12);
    v13 += 8;
  }

  while (((v5 + 7) & 0xFFFFFFF8) != v6);
  v16 = *(result + 112);
  v17 = *(result + 120) - v16;
  if (v17)
  {
    v18 = v17 >> 1;
    if (v18 >= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      v20 = 0;
      do
      {
        *(a2 + 2 * v20) = *(v16 + 2 * v20) << a5;
        ++v20;
      }

      while (v19 > v20);
      if (v20 >= v5)
      {
        return result;
      }
    }

    else
    {
      LODWORD(v20) = 0;
    }

    v21 = v20 + 0xFFFFFFFFLL;
    v22 = (a2 + 2 * v20);
    v23 = v5 - v20;
    do
    {
      *v22++ = *(a2 + 2 * v21++);
      --v23;
    }

    while (v23);
  }

  return result;
}

_DWORD *sub_2337AEC44(uint64_t a1, _DWORD *a2)
{
  *(a1 + 104) = *a2;
  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v5 = *(a1 + 40);
  v6 = v3;
  result = sub_233757538(&v6, &v5);
  if (*result < *(a1 + 104))
  {
    if ((*(a1 + 185) & 1) == 0)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    *(a1 + 104) = *result;
  }

  return result;
}

char **sub_2337AED10(uint64_t a1, char **a2)
{
  result = (a1 + 112);
  if (result != a2)
  {
    return sub_233754F80(result, *a2, a2[1], (a2[1] - *a2) >> 1);
  }

  return result;
}

uint64_t sub_2337AED34@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  if (!*(result + 88))
  {
    if ((*(result + 60) - 1) < 0x1869F && (*(result + 64) - 100000) >= 0xFFFE7961)
    {
      if ((*(result + 44) - 1) < 0x1869F && (*(result + 48) - 100000) >= 0xFFFE7961)
      {
        v4 = (*(*result + 72))(result);
        v5 = v2[14];
        v6 = v4 - (*(*v2 + 128))(v2) * v5;
        v7 = v4 * v2[16];
        v8 = v2[12] + ~v2[14];
        v9 = v7 - (*(*v2 + 128))(v2) * v8;
        if (v6 > v9)
        {
          v9 = v6;
        }

        v10 = v9 & ~(v9 >> 63);
        v11 = (*(*v2 + 160))(v2);
        v12 = sub_2337AEFB8(v2);
        if (v11 <= v12 + v10)
        {
          v13 = v12 + v10;
        }

        else
        {
          v13 = v11;
        }

        sub_2337AD450(v13, &v15);
      }

      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v14 = *(result + 96);
  *a2 = *(result + 88);
  a2[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2337AEF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (v12)
  {
    sub_2337239E8(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337AEFB8(uint64_t a1)
{
  v3 = (*(*a1 + 144))(a1);
  v1 = sub_233723C18(&v4, &v3);
  sub_233753AB0(v1, &dword_233905B3C);
  return v4;
}

BOOL sub_2337AF018(uint64_t *a1, void *a2, uint64_t *a3)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v7 = a1[1];
  v8 = a2[1];
  if (v7 == v8)
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v14 = a1[1];
      *a1 = v12;
      a1[1] = v13;
      if (v14)
      {
        sub_2337239E8(v14);
      }
    }

    else
    {
      *a1 = v12;
      a1[1] = 0;
    }

    v15 = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v11 = a2[1];
      *a2 = v9;
      a2[1] = v10;
      if (v11)
      {
        sub_2337239E8(v11);
      }
    }

    else
    {
      *a2 = v9;
      a2[1] = 0;
    }

    v15 = v8;
  }

  std::__sp_mut::unlock(sp_mut);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  return v7 == v8;
}

uint64_t sub_2337AF0F4(unsigned int *a1)
{
  sub_233726998(&v4, a1 + 16);
  LODWORD(v3) = 2 * a1[17];
  sub_233753AB0(&v4, &v3);
  v3 = (*(*a1 + 136))(a1);
  sub_233726B58(&v4, &v3);
  return v4;
}

unint64_t sub_2337AF17C(int *a1)
{
  v1 = (2 * a1[17]) + a1[15];
  v2 = (*(*a1 + 40))(a1) * v1;
  if (((2 * v2) & 0x1E) != 0)
  {
    return (2 * v2 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  else
  {
    return 2 * v2;
  }
}

uint64_t sub_2337AF1EC(uint64_t a1)
{
  (*(*a1 + 112))(&v5);
  v2 = sub_23378972C(v5);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  (*(*a1 + 112))(&v5, a1);
  v3 = *(v5 + 24);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v2 + v3;
}

void sub_2337AF294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337AF2FC(_DWORD *a1)
{
  v2 = (*(*a1 + 72))(a1);
  v3 = a1[17];
  return v2 + 4 * v3 * (*(*a1 + 40))(a1);
}

uint64_t sub_2337AF38C(uint64_t result, int a2)
{
  if ((a2 - 5) <= 0xFFFFFFFB)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_2337AF3F4(uint64_t result, int a2)
{
  if ((a2 - 5) <= 0xFFFFFFFB)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *(result + 82) = a2;
  return result;
}

uint64_t (***sub_2337AF4B8(uint64_t a1))(void)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_2337B0898(v2);
  }

  result = *(a1 + 152);
  if (result)
  {

    return sub_2337B0898(result);
  }

  return result;
}

uint64_t sub_2337AF508(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    v3 = sub_2337B08C8(v2);
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    return v3 & sub_2337B08C8(v4);
  }

  return v3;
}

uint64_t sub_2337AF554(uint64_t result, void *a2, void *a3)
{
  *(result + 168) = *a2;
  *(result + 176) = *a3;
  return result;
}

void sub_2337AF568(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v68 = a4;
  if (!a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v4 = a3;
  if (*a3 < 0 || (v6 = a3 + 1, v5 = a3[1], (v5 & 0x80000000) != 0))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v8 = a3 + 2;
  v7 = a3[2];
  if ((v7 & 0x80000000) != 0 || (v10 = a3 + 3, v9 = a3[3], (v9 & 0x80000000) != 0))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v7 > 0x40000 || v9 > 0x40000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((a4 - 16777217) <= 0xFFFFFFFFFEFFFFFFLL)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v7 && v9)
  {
    if (*a3 > (v7 ^ 0x7FFFFFFF))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    if (v5 > (v9 ^ 0x7FFFFFFF))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v11 = a1;
    (*(*a1 + 24))(&v66);
    if (!v66 || !sub_2337B0628(v66))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*v4 < 0 || (v12 = v4[1], v12 < 0) || (v13 = *v8 + *v4, v13 >= 0) && v66[13] < v13 || (v14 = v4[3] + v12, v15 = v66[12], (v14 & 0x80000000) == 0) && v15 < v14)
    {
      v50 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v50, "RawCameraException");
      __cxa_throw(v50, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v69 = 2 * v66[14];
    v70[0] = v15;
    v58 = *sub_23375B354(v70, &v69);
    sub_23374340C(&v69, v8 + 1);
    v70[0] = v69;
    v57 = *sub_23375B354(v70, &v68);
    v65 = 0;
    v52 = v8 + 1;
    v54 = v11;
    v55 = v4;
    v53 = v4 + 1;
    v59 = v4 + 2;
    while (v65 < *v10)
    {
      if ((*(*v11 + 88))(v11))
      {
        v16 = (*(*v11 + 40))(v11);
        v17 = v16;
        if ((v16 - 5) <= 0xFFFBu || v16 == 2)
        {
          v47 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v47, "RawCameraException");
          __cxa_throw(v47, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        sub_23374340C(&v69, &v65);
        v70[0] = v69;
        v18 = *sub_233723BA0(v70, v6);
        v64 = 2 * v66[14];
        v70[0] = v18;
        v19 = *sub_23375B354(v70, &v64);
        sub_23374340C(&v62, v4);
        v70[0] = v17;
        v20 = *sub_23375B354(v70, &v62);
        v61 = 2;
        v70[0] = v20;
        v63 = *sub_23375B354(v70, &v61);
        v70[0] = v19;
        v21 = *sub_233743570(v70, &v63);
        sub_23374340C(&v69, &v65);
        v70[0] = v69;
        v22 = *sub_23375B354(v70, &v68);
        sub_23374340C(&v64, v8);
        v70[0] = v17;
        v23 = *sub_23375B354(v70, &v64);
        v63 = 2;
        v70[0] = v23;
        v69 = *sub_23375B354(v70, &v63);
        v60 = 4;
        sub_23374340C(&v63, &v60);
        sub_23374340C(&v62, v8);
        v70[0] = v63;
        v24 = *sub_23375B354(v70, &v62);
        v61 = 2;
        v70[0] = v24;
        v64 = *sub_23375B354(v70, &v61);
        v70[0] = v21;
        v25 = *sub_233743570(v70, &v69);
        v70[0] = v22;
        v26 = sub_233743570(v70, &v64);
        if (v58 < v25 || v57 < *v26)
        {
          v48 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v48, "RawCameraException");
          __cxa_throw(v48, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v27 = sub_2337B0628(v66);
        v28 = v21;
        if (qword_27DE175F0 != -1)
        {
          sub_2338FAAF8();
        }

        v29 = *v59;
        if (v29)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v27 + v28);
          v34 = HIWORD(xmmword_27DE175F8[0x1FFF]);
          v35 = (a2 + 4 + v22);
          do
          {
            if (v31 >= v69 >> 1 || v30 >= v64 >> 1)
            {
              v46 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](v46, "RawCameraException");
              __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            if (v17 == 1)
            {
              if (qword_27DE175F0 != -1)
              {
                sub_2338FAAF8();
              }

              v36 = *(xmmword_27DE175F8 + *v33);
              *v35 = v36;
              *(v35 - 1) = v36;
              v37 = v30;
            }

            else
            {
              if (qword_27DE175F0 != -1)
              {
                sub_2338FAAF8();
              }

              *(v35 - 2) = *(xmmword_27DE175F8 + *v33);
              if (qword_27DE175F0 != -1)
              {
                sub_2338FAAF8();
              }

              *(v35 - 1) = *(xmmword_27DE175F8 + v33[1]);
              if (qword_27DE175F0 != -1)
              {
                sub_2338FAAF8();
              }

              v36 = *(xmmword_27DE175F8 + v33[2]);
              v37 = (4 * v32) | 2;
            }

            *(a2 + v22 + 2 * v37) = v36;
            ++v32;
            v31 += v17;
            v35[1] = v34;
            v35 += 4;
            v30 += 4;
            v33 += v17;
            --v29;
          }

          while (v29);
        }

        v11 = v54;
        v4 = v55;
        v10 = v52;
        v6 = v53;
        v8 = v59;
      }

      else
      {
        sub_23374340C(&v69, &v65);
        v70[0] = v69;
        v38 = *sub_233723BA0(v70, v6);
        v64 = 2 * v66[14];
        v70[0] = v38;
        v39 = *sub_23375B354(v70, &v64);
        sub_23374340C(&v62, v4);
        v61 = 2;
        v70[0] = v62;
        v63 = *sub_23375B354(v70, &v61);
        v70[0] = v39;
        v40 = *sub_233743570(v70, &v63);
        sub_23374340C(&v69, &v65);
        v70[0] = v69;
        v41 = *sub_23375B354(v70, &v68);
        sub_23374340C(&v69, v8);
        v64 = 2;
        v70[0] = v69;
        v42 = *sub_23375B354(v70, &v64);
        v43 = sub_2337B0628(v66);
        v69 = v42;
        if (!v43)
        {
          goto LABEL_70;
        }

        if (v42)
        {
          v70[0] = v40;
          v44 = *sub_233743570(v70, &v69);
          v70[0] = v41;
          v45 = sub_233743570(v70, &v69);
          if (v44 > v58 || *v45 > v57)
          {
LABEL_70:
            v51 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v51, "RawCameraException");
            __cxa_throw(v51, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          memcpy((a2 + v41), (v43 + v40), v69);
        }
      }

      sub_2337AFFDC(&v65);
    }

    if (v67)
    {
      sub_2337239E8(v67);
    }
  }
}

void sub_2337AFFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_2337239E8(a26);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_2337AFFDC(_DWORD *result)
{
  if (__OFADD__((*result)++, 1))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

id sub_2337B003C()
{
  if ((atomic_load_explicit(&qword_280C04E48, memory_order_acquire) & 1) == 0)
  {
    sub_2338FAB20();
  }

  v1 = qword_280C04E40;

  return v1;
}

id sub_2337B0080()
{
  if ((atomic_load_explicit(&qword_280C04E58, memory_order_acquire) & 1) == 0)
  {
    sub_2338FAB7C();
  }

  v1 = qword_280C04E50;

  return v1;
}

int64x2_t sub_2337B00CC()
{
  v0 = 0;
  result = xmmword_233903BC0;
  v2 = xmmword_233903BD0;
  v3 = xmmword_233903BE0;
  v4 = vdupq_n_s32(0x477FFF00u);
  v5 = xmmword_233903BB0;
  v6 = vdupq_n_s64(8uLL);
  do
  {
    xmmword_27DE175F8[v0] = vcvt_hight_f16_f32(vcvt_f16_f32(vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v5)), vcvtq_f64_u64(v3)), v4)), vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v2)), vcvtq_f64_u64(result)), v4));
    v2 = vaddq_s64(v2, v6);
    v3 = vaddq_s64(v3, v6);
    v5 = vaddq_s64(v5, v6);
    result = vaddq_s64(result, v6);
    ++v0;
  }

  while (v0 != 0x2000);
  return result;
}

_DWORD *sub_2337B0160(_DWORD *result, unsigned __int16 *a2)
{
  v2 = *result * *a2;
  *result = v2;
  if ((v2 & 0xFFFFFFFF00000000) != 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_2337B027C(void *a1, void *a2, unint64_t *a3, unsigned int *a4, unsigned int *a5, unint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908220;
  sub_2337B02D8((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t sub_2337B02D8(uint64_t a1, void *a2, unint64_t *a3, unsigned int *a4, unsigned int *a5, unint64_t *a6)
{
  sub_233723C18(&v15, a3);
  sub_233726998(&v14, a4);
  sub_233726998(&v13, a5);
  sub_233723C18(&v12, a6);
  return sub_2337B0510(a1, a2, &v15, &v14, &v13, &v12);
}

void *sub_2337B0420(void *a1, void *a2, unint64_t *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908220;
  sub_2337B047C((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t sub_2337B047C(uint64_t a1, void *a2, unint64_t *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  sub_233723C18(&v15, a3);
  sub_233726998(&v14, a4);
  sub_233726998(&v13, a5);
  sub_233726998(&v12, a6);
  return sub_2337B0510(a1, a2, &v15, &v14, &v13, &v12);
}

uint64_t sub_2337B0510(uint64_t result, void *a2, unsigned int *a3, _DWORD *a4, int *a5, _DWORD *a6)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_28490A808;
  v6 = a2[1];
  *(result + 24) = *a2;
  *(result + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = *a3;
  v7 = *a5;
  *(result + 48) = *a4;
  *(result + 52) = v7;
  *(result + 56) = *a6;
  return result;
}

uint64_t sub_2337B0568(uint64_t a1)
{
  *a1 = &unk_28490A808;
  (***(a1 + 24))(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_2337B05F0(uint64_t a1)
{
  sub_2337B0568(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337B0658(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = *(a1 + 48);
  v5 = *(a1 + 52);
  v8 = 0;
  sub_2337238F0(&v9, v5, v6);
  if (sub_23385F3FC(a2, &v8))
  {
    v7 = *(a1 + 40) + 2 * (*a2 + *(a1 + 56) * a2[1]);
    sub_2337B1DB8();
  }

  sub_2337AD310(2 * a2[2] * a2[3], &v7);
}

void sub_2337B0854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_2337B0898(uint64_t a1))(void)
{
  result = *(a1 + 24);
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t sub_2337B08C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return (*(*v1 + 8))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2337B08FC(uint64_t a1, int *a2, __int16 a3)
{
  v7 = *(a1 + 48);
  v6 = *(a1 + 52);
  v19 = 0;
  sub_2337238F0(&v20, v6, v7);
  if (!sub_23385F3FC(a2, &v19))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception);
    sub_2338F83F4();
  }

  v8 = sub_23378972C(*(a1 + 24));
  v9 = a2[1];
  v10 = a2[3] + v9;
  if (v9 >= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = a2[2];
    do
    {
      if (v12 >= 1)
      {
        v13 = (v8 + *(a1 + 40) + 2 * *a2 + 2 * *(a1 + 56) * v9);
        v14 = &v13[v12];
        do
        {
          v15 = *v13++;
          v16 = v15 - a3;
          if (v11 < (v15 - a3))
          {
            v11 = v16;
          }
        }

        while (v13 < v14);
      }

      ++v9;
    }

    while (v10 != v9);
  }

  return (v11 + a3);
}

uint64_t sub_2337B0A18(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned int a4)
{
  v4 = a3;
  if (a4 > a3)
  {
    sub_233731694(__p, (a4 - a3 + 1));
    v8 = sub_23378972C(*(a1 + 24));
    v9 = a2[1];
    v10 = a2[3] + v9;
    v11 = v4;
    v12 = v4;
    if (v9 < v10)
    {
      v13 = *(a1 + 56);
      v14 = v8 + *(a1 + 40) + 2 * *a2;
      v15 = a2[2];
      v12 = v4;
      do
      {
        if (v15 >= 1)
        {
          v16 = (v14 + 2 * v13 * v9);
          v17 = &v16[v15];
          v18 = __p[0];
          do
          {
            v19 = *v16;
            if (v19 >= v4 && v19 <= a4)
            {
              v18[v19 - v4] = v18[v19 - v4] + 1.0;
              if (v19 > v12)
              {
                v12 = v19;
              }
            }

            ++v16;
          }

          while (v16 < v17);
        }

        ++v9;
      }

      while (v10 != v9);
      v11 = v12;
    }

    v21 = v12 + ((a4 - v11) & ((a4 - v11) >> 31));
    if (v4 < (v12 + ((a4 - v11) & ((a4 - v11) >> 31))))
    {
      v22 = (34953 * a4) >> 20;
      do
      {
        v23 = v21 - v22;
        v24 = v21 - 1;
        if (v23 < (v21 - 1))
        {
          v25 = 0;
          v26 = 0;
          v27 = (v21 - 1);
          do
          {
            if (v4 > v24)
            {
              LOWORD(v4) = v21;
              goto LABEL_30;
            }

            v28 = *(__p[0] + (v27 - v4));
            if (v28 != 0.0)
            {
              if (!v26)
              {
                v26 = v24;
              }

              v25 += llround(v28);
              if (v25 > 0xA)
              {
                LOWORD(v4) = v21;
                goto LABEL_33;
              }
            }

            v27 = --v24;
          }

          while (v23 < v24);
          if (v26)
          {
            goto LABEL_27;
          }
        }

        v26 = v21 - v22;
LABEL_27:
        v21 = v26;
      }

      while (v4 < v26);
    }

LABEL_30:
    if (__p[0])
    {
LABEL_33:
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return v4;
}

void sub_2337B0BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337B0BE8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 8 || *v3 || v3[1] != 1 || v3[2] != 1 || v3[3])
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_233723C18(&v24, (a1 + 40));
  v22 = 2 * *(a1 + 56);
  sub_233723C18(&v23, &v22);
  v25 = v24;
  v24 = *sub_2337B21A0(&v25, &v23);
  sub_233723C18(&v23, (a1 + 40));
  v22 = 2 * *(a1 + 56);
  sub_233723C18(&v20, &v22);
  v25 = v20;
  v21 = *sub_233757DB0(&v25, &v24);
  v25 = v23;
  v6 = *sub_2337580F8(&v25, &v21);
  v19 = 2;
  v25 = v6;
  v7 = sub_2337B21A0(&v25, &v19);
  if (*(a1 + 48))
  {
    v8 = 0;
    v9 = 0;
    v10 = *v7;
    v11 = *v7;
    do
    {
      LOBYTE(v11) = v11 ^ 1;
      v12 = sub_23378972C(*(a1 + 24));
      v13 = *(a1 + 52);
      if (((v10 + ~(v24 + v9)) & 1u) < v13)
      {
        v14 = (v11 ^ v24) & 1;
        do
        {
          v15 = v12 + *(a1 + 40) + 2 * *(a1 + 56) * v9;
          v16 = *(v15 + 2 * v14);
          if (v16 >= a3)
          {
            v17 = v8;
          }

          else
          {
            v17 = *(v15 + 2 * v14);
          }

          if (v16 > v8)
          {
            v8 = v17;
          }

          v14 += 2;
        }

        while (v14 < v13);
      }

      ++v9;
    }

    while (v9 < *(a1 + 48));
  }

  else
  {
    LOWORD(v8) = 0;
  }

  return v8;
}

double sub_2337B0DDC(uint64_t a1, int *a2)
{
  v5 = *(a1 + 48);
  v4 = *(a1 + 52);
  v21 = 0;
  sub_2337238F0(&v22, v4, v5);
  if (!sub_23385F3FC(a2, &v21))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception);
    sub_2338F83F4();
  }

  v6 = sub_23378972C(*(a1 + 24));
  v7 = a2[1];
  v8 = (a2[3] + v7);
  result = 0.0;
  if (v7 < v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = *a2;
    v13 = *(a1 + 56);
    v14 = (a2[2] + v12);
    v15 = v6 + *(a1 + 40) + 2 * v12;
    v16 = v7 * v13;
    do
    {
      if (v12 < v14)
      {
        v17 = (v15 + 2 * v16);
        v18 = v14 - v12;
        do
        {
          v19 = *v17++;
          v10 += v19;
          if (v19)
          {
            ++v11;
          }

          --v18;
        }

        while (v18);
      }

      ++v7;
      v16 += v13;
    }

    while (v7 != v8);
    if (v11)
    {
      return v10 / v11;
    }
  }

  return result;
}

void sub_2337B0EFC(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v7 = *(a1 + 48);
  v6 = *(a1 + 52);
  v13 = 0;
  sub_2337238F0(&v14, v6, v7);
  if (!sub_23385F3FC(a2, &v13))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception);
    sub_2338F83F4();
  }

  v13 = 0;
  sub_233731694(a3, 4uLL);
  v8 = sub_2337B1054(a1, a2, 0);
  if (a3[1] == *a3 || (**a3 = v8, v9 = sub_2337B1054(a1, a2, 1), a3[1] - *a3 < 9uLL) || (*(*a3 + 8) = v9, v10 = sub_2337B1054(a1, a2, 2), a3[1] - *a3 < 0x11uLL) || (*(*a3 + 16) = v10, v11 = sub_2337B1054(a1, a2, 3), a3[1] - *a3 <= 0x18uLL))
  {
    sub_2337306B0();
  }

  *(*a3 + 24) = v11;
}

void sub_2337B1028(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337B1054(uint64_t a1, int *a2, char a3)
{
  v6 = sub_23378972C(*(a1 + 24));
  v8 = *a2;
  v7 = a2[1];
  v9 = v7 & 1;
  if (v7 < 0)
  {
    v9 = -v9;
  }

  if (v9 == (a3 & 2))
  {
    v10 = a2[1];
  }

  else
  {
    v10 = v7 + 1;
  }

  v11 = *a2 & 1;
  if (v8 < 0)
  {
    v11 = -v11;
  }

  if (v11 == (a3 & 1))
  {
    v12 = *a2;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = a2[3] + v7;
  if (v10 >= v13)
  {
    return NAN;
  }

  v14 = 0;
  v15 = 0;
  v16 = a2[2] + v8;
  do
  {
    if (v12 < v16)
    {
      v17 = v6 + *(a1 + 40) + 2 * *(a1 + 56) * v10;
      v18 = v12;
      do
      {
        v14 += *(v17 + 2 * v18);
        if (*(v17 + 2 * v18))
        {
          ++v15;
        }

        v18 += 2;
      }

      while (v18 < v16);
    }

    v10 += 2;
  }

  while (v10 < v13);
  return v14 / v15;
}

double sub_2337B1140(uint64_t a1, int *a2, unsigned int a3, unsigned int a4, int a5, double a6)
{
  v13 = *(a1 + 48);
  v12 = *(a1 + 52);
  v34 = 0;
  sub_2337238F0(&v35, v12, v13);
  if (!sub_23385F3FC(a2, &v34))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception);
    sub_2338F83F4();
  }

  v14 = 0.0;
  if ((a2[2] * a2[3]) >= 2)
  {
    v15 = sub_23378972C(*(a1 + 24));
    v16 = a2[1];
    v17 = (a2[3] + v16);
    if (v16 < v17)
    {
      v18 = 0;
      v19 = *a2;
      v20 = *(a1 + 56);
      v21 = (a2[2] + v19);
      v22 = v15 + *(a1 + 40) + 2 * v19;
      v23 = v16 * v20;
      v24 = 0.0;
      do
      {
        if (v19 < v21)
        {
          v25 = (v22 + 2 * v23);
          v26 = v21 - v19;
          do
          {
            v27 = *v25++;
            v28 = v27 >= a3;
            v29 = v27 <= a4;
            v30 = v24 + (v27 - a6) * (v27 - a6);
            v18 += v28 && v29;
            if (v28 && v29)
            {
              v24 = v30;
            }

            --v26;
          }

          while (v26);
        }

        ++v16;
        v23 += v20;
      }

      while (v16 != v17);
      if (v18 < 2)
      {
        return 0.0;
      }

      else if (a5)
      {
        v31 = v24 / v18;
        return sqrtf(v31);
      }

      else
      {
        return sqrt(v24 / (v18 - 1));
      }
    }
  }

  return v14;
}

double sub_2337B12E8(uint64_t a1, int *a2, char a3, double a4)
{
  v9 = *(a1 + 48);
  v8 = *(a1 + 52);
  v11 = 0.0;
  sub_2337238F0(&v12, v8, v9);
  if (!sub_23385F3FC(a2, &v11))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_2338FAD28(a1, a2, a3, &v11, a4);
  return v11;
}

uint64_t sub_2337B13A8@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v9 = *(a1 + 48);
  v8 = *(a1 + 52);
  v28 = 0;
  sub_2337238F0(&v29, v8, v9);
  if (!sub_23385F3FC(a2, &v28))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception);
    sub_2338F83F4();
  }

  result = sub_233730758(a4, 4uLL);
  v11 = 0;
  do
  {
    v12 = *(*a3 + 8 * v11);
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v14 = ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v12 >= 0)
    {
      v14 = 0;
      v13 = 0;
    }

    v15 = v12 & 0x7FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v13 = 1;
    }

    v16 = v15 <= 0x7FF0000000000000;
    v17 = v15 == 0x7FF0000000000000 || v13;
    if (!v16)
    {
      v17 = 1;
    }

    if ((v17 | v14))
    {
      break;
    }

    sub_2338FABDC(a1, a2, v11, 1u, 0xFFFFu, *(*a3 + 8 * v11));
    v19 = *(*a3 + 8 * v11);
    v20 = llround(fmax(floor(v19 + v18 * -5.0), 0.0));
    if ((v20 & 0xFFFE) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 1;
    }

    result = sub_2338FABDC(a1, a2, v11, v21, vcvtpd_s64_f64(v19 + v18 * 5.0), *(*a3 + 8 * v11));
    v23 = (v22 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v24 = ((v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v22 >= 0)
    {
      v24 = 0;
      v23 = 0;
    }

    *(*a4 + 8 * v11) = v22;
    if ((v22 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v23 = 1;
    }

    v25 = (v22 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v23;
    if ((v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v25 = 1;
    }

    if ((v25 | v24))
    {
      break;
    }
  }

  while (v11++ != 3);
  return result;
}

void sub_2337B159C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337B1614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337B162C(uint64_t a1, double ***a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = **a2;
  v4 = (*a2)[1];
  v6 = 0.0;
  v7 = v4 - v5;
  if (v4 == v5)
  {
    v9 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v8 = *v5;
    if (v7 < 9)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v5[1];
      if (v7 != 16)
      {
        v6 = v5[2];
      }
    }
  }

  v10 = v3[3];
  v11 = v3[4] - v10;
  if (v11 == 32)
  {
    v12 = vcvt_f32_f64(*v10);
    v13 = v10[1].f64[0];
    v14 = v10[1].f64[1];
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
    v14 = 0.0;
  }

  v56 = v12;
  v57 = v13;
  v58 = v14;
  v16 = v3 + 6;
  v15 = v3[6];
  v17 = 0.0;
  v18 = v16[1] - v15;
  if (v18)
  {
    v19 = *v15;
    if (v18 >= 9)
    {
      v17 = v15[1];
    }
  }

  else
  {
    v19 = 0.0;
  }

  result = sub_23378972C(*(a1 + 24));
  v24 = *(a1 + 48);
  if (v24)
  {
    v25 = 0;
    v26 = 1.0 / 800.0 / 800.0;
    v27 = 1.0 / 2000.0 / 2000.0;
    v28 = result + *(a1 + 40);
    v29 = v4 == v5;
    v30 = *(a1 + 52);
    v31 = v11 != 32 || v4 == v5;
    v32 = 800.0;
    v33 = 2000.0;
    v34 = v11 == 32 && v4 == v5;
    if (v11 == 32)
    {
      v29 = 1;
    }

    v35 = 0.0;
    result = v30 >> 1;
    do
    {
      v36 = (v28 + 2 * (v30 * v25));
      if (v31)
      {
        if (v34)
        {
          if (v30 >= 2)
          {
            v44 = 0;
            do
            {
              LOWORD(v21) = *v36;
              v21 = LODWORD(v21);
              v23 = 1.0 - ((v21 * v21) * v26);
              if (v21 <= v32)
              {
                v21 = v21 + (v23 * (v56.f32[v44 & 1 | (2 * (v25 & 1))] * -0.5));
              }

              v22 = v21 + ((1.0 - ((v21 * v21) * v27)) * (v8 * -0.5));
              if (v21 <= v33)
              {
                v21 = v21 + ((1.0 - ((v21 * v21) * v27)) * (v8 * -0.5));
              }

              v45 = v21;
              if (v21 >= 0xFFFF)
              {
                v45 = 0xFFFF;
              }

              *v36++ = v45 & ~(v45 >> 31);
              ++v44;
            }

            while (result != v44);
            v37 = v30 >> 1;
          }

          else
          {
            v37 = 0;
          }

          if (v37 < v30)
          {
            do
            {
              LOWORD(v21) = *v36;
              v21 = LODWORD(v21);
              v23 = 1.0 - ((v21 * v21) * v26);
              if (v21 <= v32)
              {
                v21 = v21 + (v23 * (v56.f32[v37 & 1 | (2 * (v25 & 1))] * 0.5));
              }

              v22 = v21 + ((1.0 - ((v21 * v21) * v27)) * (v8 * 0.5));
              if (v21 <= v33)
              {
                v21 = v21 + ((1.0 - ((v21 * v21) * v27)) * (v8 * 0.5));
              }

              v46 = v21;
              if (v21 >= 0xFFFF)
              {
                v46 = 0xFFFF;
              }

              *v36++ = v46 & ~(v46 >> 31);
              ++v37;
            }

            while (v30 != v37);
          }
        }

        else
        {
          v21 = (v35 * (v17 * v35)) + (v19 * v35);
          if (v29)
          {
            if (v30 >= 2)
            {
              v22 = (v8 + v21) * -0.5;
              v48 = v30 >> 1;
              do
              {
                LOWORD(v23) = *v36;
                v23 = LODWORD(v23);
                if (v23 <= v33)
                {
                  v23 = v23 + ((1.0 - ((v23 * v23) * v27)) * v22);
                }

                v49 = v23;
                if (v23 >= 0xFFFF)
                {
                  v49 = 0xFFFF;
                }

                *v36++ = v49 & ~(v49 >> 31);
                --v48;
              }

              while (v48);
              v40 = v30 >> 1;
            }

            else
            {
              v40 = 0;
            }

            if (v30 > v40)
            {
              v21 = (v8 + v21) * 0.5;
              v50 = v30 - v40;
              do
              {
                LOWORD(v22) = *v36;
                v22 = LODWORD(v22);
                v23 = v22 + ((1.0 - ((v22 * v22) * v27)) * v21);
                if (v22 <= v33)
                {
                  v22 = v22 + ((1.0 - ((v22 * v22) * v27)) * v21);
                }

                v51 = v22;
                if (v22 >= 0xFFFF)
                {
                  v51 = 0xFFFF;
                }

                *v36++ = v51 & ~(v51 >> 31);
                --v50;
              }

              while (v50);
            }
          }

          else
          {
            if (v30 >= 2)
            {
              v52 = v30 >> 1;
              do
              {
                LOWORD(v22) = *v36;
                v22 = LODWORD(v22);
                v23 = v22 + ((1.0 - ((v22 * v22) * v27)) * ((v21 + ((v8 + (v9 * v22)) + ((v6 * v22) * v22))) * -0.5));
                if (v22 <= v33)
                {
                  v22 = v22 + ((1.0 - ((v22 * v22) * v27)) * ((v21 + ((v8 + (v9 * v22)) + ((v6 * v22) * v22))) * -0.5));
                }

                v53 = v22;
                if (v22 >= 0xFFFF)
                {
                  v53 = 0xFFFF;
                }

                *v36++ = v53 & ~(v53 >> 31);
                --v52;
              }

              while (v52);
              v47 = v30 >> 1;
            }

            else
            {
              v47 = 0;
            }

            if (v30 > v47)
            {
              v54 = v30 - v47;
              do
              {
                LOWORD(v22) = *v36;
                v22 = LODWORD(v22);
                v23 = v22 + ((1.0 - ((v22 * v22) * v27)) * ((v21 + ((v8 + (v9 * v22)) + ((v6 * v22) * v22))) * 0.5));
                if (v22 <= v33)
                {
                  v22 = v22 + ((1.0 - ((v22 * v22) * v27)) * ((v21 + ((v8 + (v9 * v22)) + ((v6 * v22) * v22))) * 0.5));
                }

                v55 = v22;
                if (v22 >= 0xFFFF)
                {
                  v55 = 0xFFFF;
                }

                *v36++ = v55 & ~(v55 >> 31);
                --v54;
              }

              while (v54);
            }
          }
        }
      }

      else
      {
        v38 = 2 * (v25 & 1);
        if (v30 >= 2)
        {
          v41 = 0;
          do
          {
            LOWORD(v21) = *v36;
            v21 = LODWORD(v21);
            if (v21 <= v32)
            {
              v21 = v21 + ((1.0 - ((v21 * v21) * v26)) * (v56.f32[v41 & 1 | v38] * -0.5));
            }

            v23 = 1.0 - ((v21 * v21) * v27);
            v22 = v21 + (v23 * (((v8 + (v9 * v21)) + ((v6 * v21) * v21)) * -0.5));
            if (v21 <= v33)
            {
              v21 = v21 + (v23 * (((v8 + (v9 * v21)) + ((v6 * v21) * v21)) * -0.5));
            }

            v42 = v21;
            if (v21 >= 0xFFFF)
            {
              v42 = 0xFFFF;
            }

            *v36++ = v42 & ~(v42 >> 31);
            ++v41;
          }

          while (result != v41);
          v39 = v30 >> 1;
        }

        else
        {
          v39 = 0;
        }

        if (v39 < v30)
        {
          do
          {
            LOWORD(v21) = *v36;
            v21 = LODWORD(v21);
            if (v21 <= v32)
            {
              v21 = v21 + ((1.0 - ((v21 * v21) * v26)) * (v56.f32[v39 & 1 | v38] * 0.5));
            }

            v23 = 1.0 - ((v21 * v21) * v27);
            v22 = v21 + (v23 * (((v8 + (v9 * v21)) + ((v6 * v21) * v21)) * 0.5));
            if (v21 <= v33)
            {
              v21 = v21 + (v23 * (((v8 + (v9 * v21)) + ((v6 * v21) * v21)) * 0.5));
            }

            v43 = v21;
            if (v21 >= 0xFFFF)
            {
              v43 = 0xFFFF;
            }

            *v36++ = v43 & ~(v43 >> 31);
            ++v39;
          }

          while (v30 != v39);
        }
      }

      ++v25;
      v35 = v35 + 1.0;
    }

    while (v25 != v24);
  }

  return result;
}

size_t sub_2337B1BAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  CC_SHA256_Init(&c);
  if (*(a1 + 48))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = sub_23378972C(*(a1 + 24));
      CC_SHA256_Update(&c, (v6 + *(a1 + 40) + v4 * *(a1 + 56)), 2 * *(a1 + 52));
      ++v5;
      v4 += 2;
    }

    while (v5 < *(a1 + 48));
  }

  CC_SHA256_Final(md, &c);
  v7 = 0;
  __s1[0] = 0;
  do
  {
    __s2 = 0;
    if (asprintf(&__s2, "%02xd", md[v7]) != 3)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v8 = __s2;
    strncat(__s1, __s2, 2uLL);
    if (v7 != 31 && (v7 & 1) != 0)
    {
      *&__s1[strlen(__s1)] = 58;
    }

    if (v8)
    {
      free(v8);
    }

    ++v7;
  }

  while (v7 != 32);
  result = strlen(__s1);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  v10 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __s1, result);
  }

  a2[v10] = 0;
  return result;
}

void *sub_2337B1E6C(void *a1, void *a2, unint64_t *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908220;
  sub_2337B1EC8((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t sub_2337B1EC8(uint64_t a1, void *a2, unint64_t *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  sub_233723C18(&v17, a3);
  sub_233726998(&v16, a4);
  sub_233726998(&v15, a5);
  v11 = *a6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28490A808;
  v12 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = v17;
  v13 = v15;
  *(a1 + 48) = v16;
  *(a1 + 52) = v13;
  *(a1 + 56) = v11;
  return a1;
}

void *sub_2337B203C(void *a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908220;
  sub_2337B2098((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t sub_2337B2098(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_233726998(&v17, a3);
  sub_233726998(&v16, a4);
  sub_233726998(&v15, a5);
  sub_233726998(&v14, a6);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28490A808;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = v17;
  v12 = v15;
  *(a1 + 48) = v16;
  *(a1 + 52) = v12;
  *(a1 + 56) = v14;
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return a1;
}

void sub_2337B217C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_2337B21A0(_DWORD *result, _DWORD *a2)
{
  if (!*a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *result /= *a2;
  return result;
}

void sub_2337B2204(uint64_t a1)
{
  v198 = MEMORY[0x28223BE20](a1);
  v212 = *MEMORY[0x277D85DE8];
  v1 = sub_23378E038();
  v2 = v1;
  if ((v198 + 1) >= 2 && os_signpost_enabled(v1))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v198, "CLosslessJpegUnpacker", &unk_233945DBE, buf, 2u);
  }

  v200[0] = MEMORY[0x277D85DD0];
  v200[1] = 3221225472;
  v200[2] = sub_2337B3530;
  v200[3] = &unk_2789EE800;
  v200[4] = v198;
  v3 = MEMORY[0x2383AC810](v200);
  v210 = 0u;
  v211 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v4 = v198;
  v5 = *(v198 + 44);
  v6 = *(v198 + 48);
  v7 = sub_2337ADCC4(v198);
  v8 = *(v198 + 40);
  v199 = (*(*v4 + 152))(v4);
  v201 = *(v198 + 40);
  v196 = v3;
  v197 = *sub_233723874(&v201, &v199);
  if (v197 <= v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(v198 + 192);
  v9 = *(v198 + 200);
  if (v10 != v9)
  {
    v11 = 0;
    v12 = &v202 + 2;
    v13 = v10 + 4;
    do
    {
      *v12 = *(v13 - 4);
      v12 += 6;
      if (v11 > 2)
      {
        break;
      }

      ++v11;
      v41 = v13 == v9;
      v13 += 4;
    }

    while (!v41);
  }

  if (SDWORD2(v202) < 1 || v204 < 1)
  {
    v188 = 0;
    v15 = 12;
    v16 = 8;
  }

  else
  {
    v16 = &v202 + 8;
    v15 = &v202 + 12;
    *&v202 = v7;
    HIDWORD(v202) = v6;
    LODWORD(v203) = v5 - DWORD2(v202);
    *(&v203 + 1) = &v7[DWORD2(v202)];
    DWORD1(v204) = v6;
    DWORD2(v204) = v5 - v204;
    if (SDWORD2(v205) >= 1)
    {
      *&v205 = &v7[DWORD2(v202) + v204];
      HIDWORD(v205) = v6;
      LODWORD(v206) = v5 - DWORD2(v205);
    }

    v188 = &v202;
  }

  (*(**(v198 + 24) + 32))(*(v198 + 24), v7, 4096);
  if (bswap32(*v7) >> 16 != 65496)
  {
    goto LABEL_179;
  }

  v184 = v6;
  v186 = v5;
  v183 = v7;
  v165 = v16;
  v166 = v15;
  v192 = 0;
  v194 = 0;
  v189 = 0;
  v190 = 0;
  v17 = v7 + 1;
  v210 = 0u;
  v211 = 0u;
  do
  {
    v18 = __rev16(*v17);
    if (v18 == 0xFFFF)
    {
      v17 = (v17 + 1);
    }

    else
    {
      if (v18 < 0xFF01)
      {
        goto LABEL_179;
      }

      v19 = __rev16(v17[1]) - 2;
      if (v19 >= 0x100)
      {
        goto LABEL_179;
      }

      v20 = (v17 + 2);
      v21 = v17 + v19 + 4;
      if (v18 == 65475)
      {
        v189 = *(v17 + 4);
        v190 = __rev16(*(v17 + 5));
        v192 = *(v17 + 9);
        v194 = __rev16(*(v17 + 7)) * v192;
      }

      else if (v18 == 65476)
      {
        while (v20 < v21)
        {
          v22 = *v20;
          if (v22 > 3)
          {
            break;
          }

          v23 = &v209[2048 * v22];
          *(&v210 + v22) = v23;
          v20 = sub_2337B4F10(v20 + 1, v23);
          if (!v20)
          {
            v159 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v159, "RawCameraException");
            __cxa_throw(v159, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }
      }

      v17 = v21;
      v4 = v198;
    }
  }

  while (v18 != 65498);
  if (v192 != 2 && v192 != 4 || v190 < 1 || v194 <= 0 || v194 >= 0x10000 || v189 - 17 <= 0xFFFFFFF6 || v190 * v194 > v184 * v186 || v188 && v204 + DWORD2(v202) + DWORD2(v205) != v186)
  {
    goto LABEL_179;
  }

  (*(*v4 + 176))(v4, buf, 0x10000, v189, 0);
  v24 = 1 << v189;
  v25 = 0x10000 - (-(1 << v189) >> 1);
  if (1 << v189 < v25)
  {
    v26 = 0;
    v27 = *&buf[2 * v24 - 2];
    v28 = v25 - v24;
    v29 = vdupq_n_s64(v28 - 1);
    v30 = &buf[2 * v24];
    v31 = (v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = v30 + 8;
    do
    {
      v33 = vdupq_n_s64(v26);
      v34 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v33, xmmword_233903BB0)));
      if (vuzp1_s8(vuzp1_s16(v34, *v29.i8), *v29.i8).u8[0])
      {
        *(v32 - 4) = v27;
      }

      if (vuzp1_s8(vuzp1_s16(v34, *&v29), *&v29).i8[1])
      {
        *(v32 - 3) = v27;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v33, xmmword_233903BE0)))), *&v29).i8[2])
      {
        *(v32 - 2) = v27;
        *(v32 - 1) = v27;
      }

      v35 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v33, xmmword_233903BD0)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v35, *&v29)).i32[1])
      {
        *v32 = v27;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v35, *&v29)).i8[5])
      {
        v32[1] = v27;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v33, xmmword_233903BC0))))).i8[6])
      {
        v32[2] = v27;
        v32[3] = v27;
      }

      v26 += 8;
      v32 += 8;
    }

    while (v31 != v26);
    v24 = 0x10000 - (-(1 << v189) >> 1);
  }

  if (!HIWORD(v24))
  {
    v36 = *buf;
    v37 = &buf[2 * v24];
    v38 = v24 + 1;
    do
    {
      *v37 = v36;
      v37 += 2;
      v41 = v38++ == 0x10000;
    }

    while (!v41);
  }

  v39 = *(&v210 + 1) ? *(&v210 + 1) : v210;
  v40 = v210 ? v210 : *(&v210 + 1);
  v41 = !v40 || v39 == 0;
  if (v41)
  {
LABEL_179:
    v160 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v160, "RawCameraException");
    __cxa_throw(v160, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v42 = 0;
  v185 = v17 - v7 + v8;
  do
  {
    v43 = *(v40 + 2 * v42);
    v44 = *(v39 + 2 * v42);
    if (v42 > 0x3FE)
    {
      break;
    }

    ++v42;
  }

  while (v43 == v44);
  v178 = v190 * v194;
  v181 = (v197 - v185) / ((v190 * v194 + 10239) / 0x2800u);
  v45 = 4 * v181;
  if (4 * v181 <= v194)
  {
    v45 = v194;
  }

  v180 = v45;
  v46 = NSPageSize();
  v47 = sub_2337AEFB8(v4);
  if (v197 - v185 <= 0)
  {
    v162 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v162, "RawCameraException");
    __cxa_throw(v162, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v52 = v47;
  v53 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v48, v49, v50, v51);
  active = objc_msgSend_activeProcessorCount(v53, v54, v55, v56, v57);

  if (active >= 31)
  {
    v58 = 31;
  }

  else
  {
    v58 = active;
  }

  v187 = v58;
  if (active >= 29)
  {
    v59 = 29;
  }

  else
  {
    v59 = active;
  }

  v60 = v59 + 2;
  if (active == 1)
  {
    v61 = 2;
  }

  else
  {
    v61 = v60;
  }

  v62 = NSPageSize();
  v63 = v62;
  v64 = -v46;
  v168 = (v183 + v46) & v64;
  v169 = __clz(__rbit32(v46));
  v65 = ((v183 - v168 + v52) & v64) >> v169;
  v66 = -v62;
  if (v62 <= v181)
  {
    v67 = (v197 - v185) / ((v190 * v194 + 10239) / 0x2800u);
  }

  else
  {
    v67 = v62;
  }

  v68 = 4 * v67 - 1;
  v69 = active <= 1 || v188 == 0;
  v70 = (2 * v180 + 2 * v62 - 1) & v66;
  v174 = (192 * v61 + (v187 << 6) + 1344);
  v71 = (v174 + v62) & v66;
  v72 = __clz(v68);
  v177 = 0xC0000u >> -v72;
  v175 = -v72;
  v73 = v177 << -v72;
  v74 = (v62 + ((v181 + 1) >> 1) + 7) & v66;
  v167 = v65;
  v75 = 2 * v65;
  if (v69)
  {
    v75 = 0;
  }

  v176 = (v62 + v75 - 1) & v66;
  v179 = v73;
  v171 = v71 + v62 + 2 * v74 + v176 + v73 + v70 * v61;
  v76 = sub_2338F6084(v171);
  v77 = v76;
  if (!v76)
  {
    v164 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v164, "RawCameraException");
    __cxa_throw(v164, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v78 = v74;
  v79 = v71 - v174;
  v80 = ((v76 + v63 - 1) & -v63);
  v81 = &v80[8 * v187 + 168];
  v82 = v81 + 192 * v61 + v79;
  v170 = v78;
  v172 = v82 + v70 * v61 + v78 + v179;
  v173 = v82 + v70 * v61 + v78;
  bzero(v80, v174);
  v80[2] = v77;
  *(v80 + 6) = v171;
  if ((active & 0x80000000) == 0)
  {
    v83 = 0;
    v84 = 160;
    do
    {
      v85 = &v80[v84];
      v80[v83 + 4] = &v80[v84];
      *v85 = v83;
      v85[1] = v80;
      ++v83;
      v84 += 8;
    }

    while (v187 + 1 != v83);
  }

  v86 = v172 + v170;
  if (v61 >= 1)
  {
    v87 = 0;
    v88 = v80 + 36;
    do
    {
      v88[v87] = v81;
      *(v81 + 64) = v82;
      v82 += v70;
      *(v88[v87] + 4) = v87;
      ++v87;
      v81 += 192;
    }

    while (v61 != v87);
  }

  *(v80 + 172) = 1 << v175;
  *(v80 + 173) = v177;
  *(v80 + 174) = v179;
  v80[88] = v173;
  v80[89] = v172;
  if (!v176)
  {
    v86 = 0;
  }

  v80[148] = v86;
  v89 = v80[4];
  *v80 = v183;
  v90 = v198;
  v80[1] = v183 + sub_2337AEFB8(v198);
  *(v80 + 134) = v187;
  *(v80 + 135) = v61;
  *(v80 + 136) = v180;
  *(v80 + 137) = v181;
  *(v80 + 138) = v178;
  atomic_store(v178, v80 + 139);
  *(v80 + 560) = 0;
  atomic_store(0, v80 + 561);
  *(v80 + 562) = v43 == v44;
  v80[71] = v40;
  v80[72] = v39;
  *(v80 + 148) = v190;
  *(v80 + 149) = v194;
  *(v80 + 150) = v192;
  v80[73] = buf;
  *v89 = 0;
  v89[4] = *(v90 + 216);
  v91 = sub_2337B3870;
  if (v43 == v44)
  {
    v91 = sub_2337B35B8;
  }

  v80[76] = v91;
  v92 = sub_2338FB424;
  if (v43 == v44)
  {
    v92 = sub_2338FAE30;
  }

  v80[77] = v92;
  v80[78] = v185;
  v80[79] = v197;
  v80[80] = v197;
  v80[81] = v185;
  v80[82] = v185;
  v93 = v185 & -*(v80 + 172);
  v80[83] = v93;
  v80[84] = v93;
  v80[85] = v93 + *(v80 + 174);
  atomic_store(*(v80 + 173), v80 + 180);
  v94 = dispatch_semaphore_create(0);
  v95 = v80[91];
  v80[91] = v94;

  v96 = v196;
  atomic_store(0, v80 + 184);
  v97 = dispatch_semaphore_create(0);
  v98 = v80[93];
  v80[93] = v97;

  v80[94] = 2097153;
  v80[95] = v80[88] + v185 - v80[83];
  *(v80 + 48) = *(v80 + 47);
  *(v80 + 196) = 0;
  v80[99] = 0;
  *(v80 + 200) = 0;
  *(v80 + 206) = 0;
  *(v80 + 101) = 0u;
  v80[104] = v183;
  v80[105] = v188;
  if (v188)
  {
    v99 = *v165;
    v100 = *v166 * *v165;
  }

  else
  {
    v99 = 0x7FFFFFFF;
    v100 = 0x7FFFFFFF;
  }

  *(v80 + 212) = v99;
  *(v80 + 213) = v100;
  *(v80 + 107) = vdupq_n_s32(1 << (v189 - 1));
  atomic_store(v167, v80 + 294);
  *(v80 + 295) = v169;
  v80[149] = v168;
  v101 = v80[148];
  if (v101)
  {
    v102 = 1 << v169;
    v103 = *(v80[36] + 64);
    v104 = v167 + 7;
    if (v167 < -7)
    {
      v104 = v167 + 14;
    }

    bzero(*(v80[36] + 64), v104 >> 3);
    v105 = 0;
    v106 = 0;
    v107 = -v102;
    v108 = v102;
    v96 = v196;
    while (2)
    {
      v109 = v188 + 24 * v105;
      v111 = *(v109 + 2);
      v110 = *(v109 + 3);
      if (v110 >= 1 && v111 >= 1)
      {
        v113 = 0;
        v114 = 2 * (*(v109 + 4) + v111);
        v115 = *v109 + 2 * v111;
        v116 = -2 * v111;
        do
        {
          v117 = (v115 + v116) & v107;
          if (v115 > v117)
          {
            v118 = (v117 - v168) >> v169;
            do
            {
              v119 = 1 << (v118 & 7);
              v120 = *(v103 + (v118 >> 3));
              if ((v119 & v120) == 0)
              {
                *(v103 + (v118 >> 3)) = v120 | v119;
                *(v101 + 2 * v106++) = v118;
                if (v106 >= v167)
                {
                  goto LABEL_127;
                }
              }

              v117 += v108;
              ++v118;
            }

            while (v117 < v115);
          }

          v115 += v114;
          ++v113;
        }

        while (v113 != v110);
        if (++v105 != 4)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_127:
  atomic_store(0, v80 + 290);
  atomic_store(0, v80 + 291);
  atomic_store(0, v80 + 292);
  atomic_store(0, v80 + 293);
  atomic_store(0, v80 + 300);
  atomic_store(0, v80 + 301);
  v121 = dispatch_semaphore_create(0);
  v122 = v80[151];
  v80[151] = v121;

  if (v61 > 0)
  {
    v123 = v80 + 36;
    do
    {
      atomic_fetch_or(v80 + 300, 1 << *(*v123 + 4));
      if ((atomic_fetch_add(v80 + 301, 1u) & 0x80000000) != 0)
      {
        dispatch_semaphore_signal(v80[151]);
      }

      ++v123;
      --v61;
    }

    while (v61);
  }

  atomic_store(0, v80 + 304);
  v124 = dispatch_semaphore_create(0);
  v125 = v80[153];
  v80[153] = v124;

  v126 = dispatch_group_create();
  v127 = dispatch_queue_create("Huffman Decode Block", MEMORY[0x277D85CD8]);
  if (active >= 1)
  {
    if (active <= 1)
    {
      v128 = sub_2337B4158;
    }

    else
    {
      v128 = sub_2337B3C44;
    }

    if (v187 <= 1)
    {
      v129 = 1;
    }

    else
    {
      v129 = v187;
    }

    v130 = (v80 + 5);
    do
    {
      v131 = *v130++;
      v131[4] = *(v198 + 216);
      dispatch_group_async_f(v126, v127, v131, v128);
      --v129;
    }

    while (v129);
  }

  v132 = v80[83];
  v133 = *(v80 + 172);
  v134 = v80[88];
  v195 = v80[89];
  v135 = *(v80 + 174);
  v136 = *(v198 + 24);
  v201 = v185;
  (*(*v136 + 40))(v136, &v201, 0);
  if (v132 < v197)
  {
    v137 = __clz(__rbit32(v133));
    v138 = v185 - v132;
    v191 = -v135;
    v193 = v133 - 1;
    do
    {
      v139 = atomic_load(v80 + 180);
      if (v139 < 1 || (v140 = atomic_load(v80 + 184), (v140 & 0x80000000) != 0))
      {
        LODWORD(v141) = 1;
      }

      else
      {
        v141 = (v195 - v134) >> v137;
        v142 = atomic_load(v80 + 180);
        if (v142 < v141)
        {
          LODWORD(v141) = v142;
        }
      }

      v143 = (v141 << v137);
      if (v197 - v132 >= v143)
      {
        v144 = v141;
      }

      else
      {
        v144 = (v193 + v197 - v132) >> v137;
      }

      if (v197 - v132 >= v143)
      {
        v145 = (v141 << v137);
      }

      else
      {
        v145 = v197 - v132;
      }

      v146 = atomic_load(v80 + 561);
      if (v146)
      {
        break;
      }

      if (atomic_fetch_add(v80 + 180, -v144) < v144)
      {
        dispatch_semaphore_wait(v80[91], 0xFFFFFFFFFFFFFFFFLL);
      }

      v147 = atomic_load(v80 + 561);
      if (v147)
      {
        break;
      }

      (*(**(v198 + 24) + 32))(*(v198 + 24), v134 + v138, v145 - v138);
      v148 = v134 + v145;
      if (v148 >= v195)
      {
        v149 = v191;
      }

      else
      {
        v149 = 0;
      }

      if (atomic_fetch_add(v80 + 184, v144) == -1)
      {
        dispatch_semaphore_signal(v80[93]);
      }

      v138 = 0;
      v134 = v148 + v149;
      v132 += v145;
      v96 = v196;
    }

    while (v132 < v197);
  }

  dispatch_group_wait(v126, 0xFFFFFFFFFFFFFFFFLL);
  if (active >= 1)
  {
    v150 = *(v198 + 216);
    if (v187 <= 1)
    {
      v151 = 1;
    }

    else
    {
      v151 = v187;
    }

    v152 = v80 + 5;
    do
    {
      v153 = *(*v152 + 16);
      if (v153 < v150)
      {
        v150 = *(*v152 + 16);
        *(v198 + 216) = v153;
      }

      ++v152;
      --v151;
    }

    while (v151);
  }

  v154 = atomic_load(v80 + 139);

  if (v80[2])
  {
    v155 = v80[91];
    v80[91] = 0;

    v156 = v80[93];
    v80[93] = 0;

    v157 = v80[151];
    v80[151] = 0;

    v158 = v80[153];
    v80[153] = 0;

    free(v80[2]);
  }

  if (v154 >= 1)
  {
    v163 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v163, "RawCameraException");
    __cxa_throw(v163, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v96[2](v96);
}

void sub_2337B343C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void (**a33)(void))
{
  __cxa_free_exception(v33);
  a33[2](a33);

  _Unwind_Resume(a1);
}

void sub_2337B3530(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CLosslessJpegUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337B35B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 24);
  v5 = *(a3 + 40);
  v6 = *(a1 + 568);
  *(a3 + 32) = 1;
  if (v5 >= v4)
  {
    v9 = 0;
    v7 = 0;
    v10 = v5;
    v8 = v5;
    do
    {
      if (!*--v8)
      {
        v13 = *(v10 - 2);
        v12 = v10 - 2;
        if (v13 == 255)
        {
          v8 = v12;
        }
      }

      v7 += 8;
      if (v9 > 0x3E)
      {
        break;
      }

      ++v9;
      v10 = v8;
    }

    while (v8 >= v4);
  }

  else
  {
    v7 = 0;
    v8 = v5;
  }

  bzero(v57, 0x201uLL);
  v14 = 0;
  v15 = v5;
  do
  {
    if (!v57[v14])
    {
      v16 = *v8;
      if (v16 == 255)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      if (v16 == 255)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      v19 = v8[v18];
      v20 = &v8[v17];
      if (v19 == 255)
      {
        ++v20;
      }

      v21 = *v20;
      v22 = (v16 << 24) | (v19 << 16);
      v23 = v21 == 255 ? 3 : 2;
      v24 = v21 == 255 ? 2 : 1;
      v25 = &v20[v23];
      v26 = v20[v24];
      v27 = v22 | (v21 << 8);
      v28 = v26 == 255 ? v25 + 1 : v25;
      v29 = v27 | v26;
      v30 = v14;
      v31 = v14;
      do
      {
        v32 = v30 - 16;
        if (v30 >= 16)
        {
          v33 = *v28;
          v34 = v29 << 16;
          if (v33 == 255)
          {
            v35 = 3;
          }

          else
          {
            v35 = 2;
          }

          if (v33 == 255)
          {
            v36 = 2;
          }

          else
          {
            v36 = 1;
          }

          v37 = v28[v36];
          v28 += v35;
          v38 = v34 | (v33 << 8);
          if (v37 == 255)
          {
            ++v28;
          }

          v29 = v38 | v37;
          v30 = v32;
        }

        v39 = v29 << v30;
        v40 = *(v6 + 2 * ((v29 << v30) >> 23));
        v41 = (v40 >> 10) & 0x1F;
        v30 += v41;
        v31 += v41;
        if (v40 <= 0x8000)
        {
          if ((v40 & 0x8000) != 0)
          {
            v40 = *(v6 + 2 * (HIWORD(v39) & 0x3FF));
            v42 = (v40 >> 10) & 0x1F;
            v30 += v42;
            v31 += v42;
          }

          v43 = v40 & 0x1F;
          if (v43)
          {
            v44 = v30 - 16;
            if (v30 >= 16)
            {
              v45 = *v28;
              v46 = v29 << 16;
              if (v45 == 255)
              {
                v47 = 3;
              }

              else
              {
                v47 = 2;
              }

              if (v45 == 255)
              {
                v48 = 2;
              }

              else
              {
                v48 = 1;
              }

              v49 = v28[v48];
              v28 += v47;
              v50 = v46 | (v45 << 8);
              if (v49 == 255)
              {
                ++v28;
              }

              v29 = v50 | v49;
              v30 = v44;
            }

            v30 += v43;
            v31 += v43;
          }
        }

        if (v31 > v7 - 32)
        {
          if (v31 > v7)
          {
            break;
          }

          if (!v14)
          {
            *(a3 + 36) = v29;
            *(a3 + 34) = v30;
            v15 = v28;
            *(a3 + 40) = v28;
          }
        }

        v51 = v57[v31];
        v57[v31] = v51 + 1;
      }

      while (!v51);
      if (v14 && v31 > v7)
      {
        v52 = *(a3 + 36);
        *(a3 + 32) = *(a3 + 33);
        v53 = 32;
        v15 = v5;
        goto LABEL_65;
      }
    }

    ++v14;
  }

  while (v14 != 32);
  v52 = *(a3 + 36);
  v53 = *(a3 + 34);
  if (v53 < 8)
  {
    goto LABEL_69;
  }

  do
  {
LABEL_65:
    v54 = v53;
    v55 = *v15;
    v52 = v55 | (v52 << 8);
    if (v55 == 255)
    {
      v56 = 2;
    }

    else
    {
      v56 = 1;
    }

    v15 += v56;
    v53 = v54 - 8;
  }

  while (v54 > 0xF);
LABEL_69:
  *(a3 + 36) = v52;
  *(a3 + 34) = v53;
  *(a3 + 40) = v15;
}

void sub_2337B3870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 24);
  v5 = *(a3 + 40);
  v6 = *(a1 + 568);
  v7 = *(a1 + 576);
  *(a3 + 32) = 1;
  if (v5 >= v4)
  {
    v10 = 0;
    v8 = 0;
    v11 = v5;
    v9 = v5;
    do
    {
      if (!*--v9)
      {
        v14 = *(v11 - 2);
        v13 = v11 - 2;
        if (v14 == 255)
        {
          v9 = v13;
        }
      }

      v8 += 8;
      if (v10 > 0x3E)
      {
        break;
      }

      ++v10;
      v11 = v9;
    }

    while (v9 >= v4);
  }

  else
  {
    v8 = 0;
    v9 = v5;
  }

  bzero(v89, 0x201uLL);
  v15 = 0;
  v16 = v5;
  do
  {
    if (!v89[v15])
    {
      v17 = *v9;
      if (v17 == 255)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      if (v17 == 255)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      v20 = &v9[v18];
      v21 = v9[v19];
      if (v21 == 255)
      {
        ++v20;
      }

      v22 = *v20;
      v23 = v22 == 255 ? 3 : 2;
      v24 = v22 == 255 ? 2 : 1;
      v25 = &v20[v23];
      v26 = v20[v24];
      v27 = v26 == 255 ? v25 + 1 : v25;
      if (v15 < 0x20)
      {
        v40 = (v17 << 24) | (v21 << 16) | (v22 << 8) | v26;
        v41 = v15;
      }

      else
      {
        v28 = *v27;
        if (v28 == 255)
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }

        if (v28 == 255)
        {
          v30 = 2;
        }

        else
        {
          v30 = 1;
        }

        v31 = &v27[v29];
        v32 = v27[v30];
        if (v32 == 255)
        {
          ++v31;
        }

        v33 = *v31;
        v34 = (v28 << 24) | (v32 << 16);
        v35 = v33 == 255 ? 3 : 2;
        v36 = v33 == 255 ? 2 : 1;
        v37 = v31[v36];
        v38 = &v31[v35];
        v39 = v34 | (v33 << 8);
        v27 = v37 == 255 ? v38 + 1 : v38;
        v40 = v39 | v37;
        v41 = v15 - 32;
      }

      v42 = v15;
      do
      {
        v43 = v41 - 16;
        if (v41 >= 16)
        {
          v44 = *v27;
          v45 = v40 << 16;
          if (v44 == 255)
          {
            v46 = 3;
          }

          else
          {
            v46 = 2;
          }

          if (v44 == 255)
          {
            v47 = 2;
          }

          else
          {
            v47 = 1;
          }

          v48 = v27[v47];
          v27 += v46;
          v49 = v45 | (v44 << 8);
          if (v48 == 255)
          {
            ++v27;
          }

          v40 = v49 | v48;
          v41 = v43;
        }

        v50 = v40 << v41;
        v51 = *(v6 + 2 * ((v40 << v41) >> 23));
        v52 = (v51 >> 10) & 0x1F;
        v53 = v52 + v41;
        v54 = v52 + v42;
        if (v51 <= 0x8000)
        {
          if ((v51 & 0x8000) != 0)
          {
            v51 = *(v6 + 2 * (HIWORD(v50) & 0x3FF));
            v55 = (v51 >> 10) & 0x1F;
            v53 += v55;
            v54 += v55;
          }

          v56 = v51 & 0x1F;
          if (v56)
          {
            v57 = v53 - 16;
            if (v53 >= 16)
            {
              v58 = *v27;
              v59 = v40 << 16;
              if (v58 == 255)
              {
                v60 = 3;
              }

              else
              {
                v60 = 2;
              }

              if (v58 == 255)
              {
                v61 = 2;
              }

              else
              {
                v61 = 1;
              }

              v62 = v27[v61];
              v27 += v60;
              v63 = v59 | (v58 << 8);
              if (v62 == 255)
              {
                ++v27;
              }

              v40 = v63 | v62;
              v53 = v57;
            }

            v53 += v56;
            v54 += v56;
          }
        }

        v64 = v53 - 16;
        if (v53 >= 16)
        {
          v65 = *v27;
          v66 = v40 << 16;
          if (v65 == 255)
          {
            v67 = 3;
          }

          else
          {
            v67 = 2;
          }

          if (v65 == 255)
          {
            v68 = 2;
          }

          else
          {
            v68 = 1;
          }

          v69 = v27[v68];
          v27 += v67;
          v70 = v66 | (v65 << 8);
          if (v69 == 255)
          {
            ++v27;
          }

          v40 = v70 | v69;
          v53 = v64;
        }

        v71 = v40 << v53;
        v72 = *(v7 + 2 * ((v40 << v53) >> 23));
        v73 = (v72 >> 10) & 0x1F;
        v41 = v73 + v53;
        v42 = v73 + v54;
        if (v72 <= 0x8000)
        {
          if ((v72 & 0x8000) != 0)
          {
            v72 = *(v7 + 2 * (HIWORD(v71) & 0x3FF));
            v74 = (v72 >> 10) & 0x1F;
            v41 += v74;
            v42 += v74;
          }

          v75 = v72 & 0x1F;
          if (v75)
          {
            v76 = v41 - 16;
            if (v41 >= 16)
            {
              v77 = *v27;
              v78 = v40 << 16;
              if (v77 == 255)
              {
                v79 = 3;
              }

              else
              {
                v79 = 2;
              }

              if (v77 == 255)
              {
                v80 = 2;
              }

              else
              {
                v80 = 1;
              }

              v81 = v27[v80];
              v27 += v79;
              v82 = v78 | (v77 << 8);
              if (v81 == 255)
              {
                ++v27;
              }

              v40 = v82 | v81;
              v41 = v76;
            }

            v41 += v75;
            v42 += v75;
          }
        }

        if (v42 > v8 - 64)
        {
          if (v42 > v8)
          {
            break;
          }

          if (!v15)
          {
            *(a3 + 36) = v40;
            *(a3 + 34) = v41;
            v16 = v27;
            *(a3 + 40) = v27;
          }
        }

        v83 = v89[v42];
        v89[v42] = v83 + 1;
      }

      while (!v83);
      if (v15 && v42 > v8)
      {
        v84 = *(a3 + 36);
        *(a3 + 32) = *(a3 + 33);
        v85 = 32;
        v16 = v5;
        goto LABEL_110;
      }
    }

    ++v15;
  }

  while (v15 != 64);
  v84 = *(a3 + 36);
  v85 = *(a3 + 34);
  if (v85 < 8)
  {
    goto LABEL_114;
  }

  do
  {
LABEL_110:
    v86 = v85;
    v87 = *v16;
    v84 = v87 | (v84 << 8);
    if (v87 == 255)
    {
      v88 = 2;
    }

    else
    {
      v88 = 1;
    }

    v16 += v88;
    v85 = v86 - 8;
  }

  while (v86 > 0xF);
LABEL_114:
  *(a3 + 36) = v84;
  *(a3 + 34) = v85;
  *(a3 + 40) = v16;
}

intptr_t sub_2337B3C44(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v2 + 872;
  v4 = v2 + 904;
  v55 = *(v2 + 616);
  do
  {
LABEL_2:
    while (1)
    {
      v5 = atomic_load((v2 + 1164));
      if ((v5 & 0x80000000) != 0)
      {
        break;
      }

      v6 = v5 & 0x1F;
      v7 = atomic_load((v3 + v6));
      if (v7 == 2)
      {
        v8 = *(v4 + 8 * v6);
        v9 = v5;
        atomic_compare_exchange_strong((v2 + 1164), &v9, v5 + 1);
        if (v9 == v5)
        {
          v10 = (v3 + v6);
          atomic_store(3u, (v3 + v6));
          if (*(v8 + 16) == 1 && (*(v8 + 17) & 1) == 0)
          {
            v55(v2, a1);
          }

          atomic_store(4u, v10);
          v11 = 1;
          goto LABEL_11;
        }
      }

      else
      {
        __dmb(0xBu);
        v12 = atomic_load((v2 + 1164));
        if (v5 == v12)
        {
          break;
        }
      }
    }

    v11 = 0;
LABEL_11:
    v13 = atomic_load((v2 + 1168));
    v14 = atomic_load((v2 + 1168));
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    v15 = 0;
    do
    {
      while (1)
      {
        v16 = v14 & 0x1F;
        v17 = atomic_load((v3 + v16));
        if (v17 != 4)
        {
          break;
        }

        v18 = *(v4 + 8 * v16);
        v19 = v14;
        atomic_compare_exchange_strong((v2 + 1168), &v19, v14 | 0x80000000);
        if (v19 != v14)
        {
          goto LABEL_22;
        }

        v20 = (v3 + v16);
        atomic_store(5u, (v3 + v16));
        sub_2337B471C(v2, a1, v18);
        sub_2337B492C(v2, v18);
        sub_2337B4BC0(v2, v18);
        atomic_store(6u, v20);
        atomic_fetch_add((v2 + 1168), 0x80000001);
        if (v15)
        {
          while (1)
          {
            v21 = atomic_load((v2 + 1216));
            if (v21 < 2)
            {
              break;
            }

            v22 = v21;
            atomic_compare_exchange_strong((v2 + 1216), &v22, v21 - 1);
            if (v22 == v21)
            {
              dispatch_semaphore_signal(*(v2 + 1224));
              break;
            }
          }
        }

        ++v15;
        v14 = atomic_load((v2 + 1168));
        v11 = 1;
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      __dmb(0xBu);
      v23 = atomic_load((v2 + 1168));
      if (v14 == v23)
      {
        goto LABEL_25;
      }

LABEL_22:
      v14 = atomic_load((v2 + 1168));
    }

    while ((v14 & 0x80000000) == 0);
    do
    {
      while (1)
      {
LABEL_25:
        v25 = atomic_load((v2 + 1172));
        if ((v25 & 0x80000000) != 0)
        {
LABEL_32:
          if ((v11 & 1) == 0)
          {
            v31 = atomic_load((v2 + 1168));
            if (v13 != v31)
            {
              goto LABEL_72;
            }

            v32 = atomic_load((v2 + 1216));
            if (v32 <= 0)
            {
              v46 = atomic_load((v2 + 1204));
              if (v46 > 0)
              {
                goto LABEL_72;
              }
            }

            v33 = *(v2 + 1180);
            v34 = *(v2 + 1184);
            v35 = *(v2 + 1192);
            v36 = atomic_load((v2 + 1168));
            if (v13 != v36)
            {
              goto LABEL_72;
            }

            v37 = 0;
            while (1)
            {
              v38 = atomic_load((v2 + 1216));
              if (v38 <= 0)
              {
                v39 = atomic_load((v2 + 1204));
                if (v39 > 0)
                {
                  break;
                }
              }

              add = atomic_fetch_add((v2 + 1176), 0xFFFFFFFF);
              v41 = __OFSUB__(add, 1);
              v42 = add - 1;
              if (v42 < 0 != v41)
              {
                break;
              }

              if (v34)
              {
                v42 = *(v34 + 2 * v42);
              }

              v43 = (v35 + (v42 << v33));
              if (v43 >= *v2 && v43 < *(v2 + 8))
              {
                v44 = NSPageSize();
                madvise(v43, v44, 3);
              }

              v45 = atomic_load((v2 + 1168));
              --v37;
              if (v13 != v45)
              {
                goto LABEL_2;
              }
            }

            if (!v37)
            {
LABEL_72:
              if (atomic_fetch_add((v2 + 1216), 1u))
              {
                dispatch_semaphore_wait(*(v2 + 1224), 0xFFFFFFFFFFFFFFFFLL);
              }

              else
              {
                while (1)
                {
                  sub_2337B4438(v2);
                  v47 = sub_2337B4578(v2);
                  v48 = atomic_fetch_add((v2 + 1160), 1u);
                  *v47 = v48;
                  v49 = v48 & 0x1F;
                  *(v4 + 8 * v49) = v47;
                  atomic_store(0, (v3 + ((v48 + 1) & 0x1F)));
                  atomic_store(1u, (v3 + v49));
                  sub_2337B45E8(v2, v47);
                  *(v47 + 12) = 0;
                  if ((*(v47 + 17) & 1) == 0)
                  {
                    (*(v2 + 608))(v2, a1, v47);
                    if ((*(v47 + 32) & 1) == 0)
                    {
                      v50 = 0;
                      do
                      {
                        v51 = *(v47 + 40) - 128;
                        if (v51 < *(v47 + 24))
                        {
                          v51 = *(v47 + 24);
                        }

                        *(v47 + 40) = v51;
                        (*(v2 + 608))(v2, a1, v47);
                        if (*(v47 + 32))
                        {
                          break;
                        }
                      }

                      while (v50++ < 6);
                    }
                  }

                  *(v2 + 648) += *(v47 + 40) - *(v47 + 24);
                  *(v2 + 752) = *(v47 + 32);
                  v53 = *(v2 + 760);
                  if (v53 >= *(v2 + 712))
                  {
                    *(v2 + 760) = v53 - *(v2 + 696);
                  }

                  atomic_store(2u, (v3 + v49));
                  if (atomic_fetch_add((v2 + 1216), 0xFFFFFFFF) < 2)
                  {
                    break;
                  }

                  dispatch_semaphore_signal(*(v2 + 1224));
                }
              }
            }
          }

          goto LABEL_2;
        }

        v26 = atomic_load((v3 + (v25 & 0x1F)));
        if (v26 == 6)
        {
          break;
        }

        __dmb(0xBu);
        v24 = atomic_load((v2 + 1172));
        if (v25 == v24)
        {
          goto LABEL_32;
        }
      }

      v27 = *(v4 + 8 * (v25 & 0x1F));
      v28 = v25;
      atomic_compare_exchange_strong((v2 + 1172), &v28, v25 + 1);
    }

    while (v28 != v25);
    result = sub_2337B4C54(v2, a1, v27);
    v30 = *(v27 + 17);
    if (atomic_fetch_add((v27 + 8), 0xFFFFFFFF) <= 1)
    {
      atomic_fetch_or((v2 + 1200), 1 << *(v27 + 4));
      if ((atomic_fetch_add((v2 + 1204), 1u) & 0x80000000) != 0)
      {
        result = dispatch_semaphore_signal(*(v2 + 1208));
        if (v30)
        {
          break;
        }

        goto LABEL_2;
      }
    }
  }

  while ((v30 & 1) == 0);
  atomic_store(1u, (v2 + 561));
  if (atomic_fetch_add((v2 + 720), 1u) == -1)
  {
    v54 = *(v2 + 728);

    return dispatch_semaphore_signal(v54);
  }

  return result;
}

intptr_t sub_2337B4158(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 8);
  v4 = *(v3 + 616);
  do
  {
    sub_2337B4438(v3);
    v5 = sub_2337B4578(v3);
    *v5 = v2;
    sub_2337B45E8(v3, v5);
    if ((*(v5 + 17) & 1) == 0 && *(v5 + 33) == 1)
    {
      v6 = *(v5 + 36);
      v7 = *(v5 + 34);
      v8 = *(v5 + 40);
      if (v7 >= 8)
      {
        do
        {
          v9 = v7;
          v10 = *v8;
          v6 = v10 | (v6 << 8);
          if (v10 == 255)
          {
            v11 = 2;
          }

          else
          {
            v11 = 1;
          }

          v8 += v11;
          v7 = v9 - 8;
        }

        while (v9 > 0xF);
      }

      *(v5 + 36) = v6;
      *(v5 + 34) = v7;
      *(v5 + 40) = v8;
    }

    *(v3 + 648) += *(v5 + 40) - *(v5 + 24);
    *(v3 + 752) = *(v5 + 32);
    v12 = *(v3 + 760);
    if (v12 >= *(v3 + 712))
    {
      *(v3 + 760) = v12 - *(v3 + 696);
    }

    if (*(v5 + 16) == 1 && (*(v5 + 17) & 1) == 0)
    {
      v4(v3, a1, v5);
    }

    sub_2337B471C(v3, a1, v5);
    sub_2337B492C(v3, v5);
    sub_2337B4BC0(v3, v5);
    result = sub_2337B4C54(v3, a1, v5);
    v14 = *(v5 + 17);
    if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) <= 1)
    {
      atomic_fetch_or((v3 + 1200), 1 << *(v5 + 4));
      if ((atomic_fetch_add((v3 + 1204), 1u) & 0x80000000) != 0)
      {
        result = dispatch_semaphore_signal(*(v3 + 1208));
      }
    }

    ++v2;
  }

  while (!v14);
  atomic_store(1u, (v3 + 561));
  if (atomic_fetch_add((v3 + 720), 1u) == -1)
  {
    v15 = *(v3 + 728);

    return dispatch_semaphore_signal(v15);
  }

  return result;
}

char **sub_2337B4340(uint64_t a1, char **a2)
{
  result = (a1 + 192);
  if (result != a2)
  {
    return sub_233723454(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

void *sub_2337B4364(void *a1)
{
  *a1 = &unk_28490A870;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  return sub_233723A54(a1);
}

void sub_2337B43C4(void *a1)
{
  *a1 = &unk_28490A870;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

intptr_t sub_2337B4438(intptr_t result)
{
  v1 = *(result + 632);
  if (*(result + 648) + *(result + 548) + 8 >= v1)
  {
    v2 = *(result + 632);
  }

  else
  {
    v2 = *(result + 648) + *(result + 548) + 8;
  }

  if (v2 > *(result + 672))
  {
    v3 = result;
    do
    {
      if (atomic_fetch_add((v3 + 736), 0xFFFFFFFF) <= 0)
      {
        result = dispatch_semaphore_wait(*(v3 + 744), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 = *(v3 + 672) + *(v3 + 688);
      *(v3 + 672) = v4;
      v5 = *(v3 + 680);
      if (v4 > v5)
      {
        v5 += *(v3 + 696);
        *(v3 + 680) = v5;
      }

      if (v1 - 32 < v4)
      {
        v6 = *(v3 + 640);
        if (v1 >= v6)
        {
          v1 = v6 - 32;
          v7 = *(v3 + 712);
          v8 = (v7 + v6 - 32 - v5);
          if (v8 < *(v3 + 704))
          {
            v8 += *(v3 + 696);
          }

          v9 = v4 - v1;
          if (v4 - v1 >= 1)
          {
            v10 = 0;
            if (v9 >= 0x20)
            {
              v9 = 32;
            }

            v11 = v6 - 33;
            while (1)
            {
              v13 = *v8++;
              v12 = v13;
              if (v8 > v7)
              {
                v8 -= *(v3 + 696);
              }

              v14 = v12 | (v10 << 8);
              if (v14 == 65497)
              {
                break;
              }

              ++v11;
              v10 = v14;
              if (!--v9)
              {
                goto LABEL_24;
              }
            }

            *(v3 + 632) = v11;
          }
        }
      }

LABEL_24:
      ;
    }

    while (v2 > v4);
  }

  return result;
}

uint64_t sub_2337B4578(uint64_t a1)
{
  if (atomic_fetch_add((a1 + 1204), 0xFFFFFFFF) <= 0)
  {
    dispatch_semaphore_wait(*(a1 + 1208), 0xFFFFFFFFFFFFFFFFLL);
  }

  do
  {
    v2 = atomic_load((a1 + 1200));
    v3 = v2;
    atomic_compare_exchange_strong((a1 + 1200), &v3, (v2 - 1) & v2);
  }

  while (v3 != v2);
  return *(a1 + 8 * __clz(__rbit32(v2)) + 288);
}

int *sub_2337B45E8(int *result, uint64_t a2)
{
  v3 = *(result + 81);
  v4 = v3 + result[137];
  v5 = *(result + 79);
  v6 = v5 - v3;
  v7 = v4 < v5;
  v8 = v4 >= v5;
  if (v7)
  {
    v6 = result[137];
  }

  v9 = *(result + 47);
  *(a2 + 32) = 0;
  *(a2 + 16) = v9;
  *(a2 + 33) = v8;
  *(a2 + 34) = 32;
  *(a2 + 40) = *(a2 + 24) + v6;
  if (v6 < 1 || (v10 = result, v11 = atomic_load(result + 139), v11 < 1) || *(a2 + 17) == 1)
  {
    *(a2 + 32) = *(a2 + 16);
    *(a2 + 32) = 257;
    *(a2 + 48) = *(a2 + 32);
    *(a2 + 72) = 0;
  }

  else
  {
    v12 = *(a2 + 40);
    result = *(result + 89);
    if (v12 + 8 > result)
    {
      v13 = result - *(a2 + 24);
      v14 = v12 - result + 8;
      if (v14 <= v13)
      {
        v16 = *(v10 + 88);

        return memmove(result, v16, v14);
      }

      else
      {
        result = memmove((*(v10 + 88) - v13), (result - v13), v13);
        v15 = v10[174];
        *(a2 + 24) -= v15;
        *(a2 + 40) -= v15;
      }
    }
  }

  return result;
}

uint64_t sub_2337B471C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = (a3 + 16);
  v7 = (*(result + 824) + *(result + 784)) & 1;
  v8 = *(a3 + 16) & *(result + 768) & (*(result + 562) | (((*(result + 824) + *(result + 784)) & 1) == 0));
  *(a3 + 16) = v8;
  if ((v8 & 1) == 0)
  {
    *(a3 + 12) = v7;
    *v6 = *(result + 768);
    if (*(a3 + 17))
    {
      if (*(result + 560) == 1)
      {
        *(a3 + 72) = 0;
        v9 = *v6;
        *(a3 + 32) = *v6;
        *(a3 + 48) = v9;
      }
    }

    else
    {
      v10 = *(a3 + 24);
      if (v10 < *(result + 704))
      {
        v10 += *(result + 696);
        *(a3 + 24) = v10;
      }

      if (v10 > *(a3 + 40))
      {
        *(a3 + 24) = v10 - *(result + 696);
      }

      result = (*(result + 616))(result, a2, a3);
    }
  }

  v11 = *(a3 + 72);
  v12 = atomic_load((v5 + 556));
  if (v11 > v12 && (*(a3 + 33) & 1) == 0)
  {
    v13 = *(a3 + 24);
    v14 = *(a3 + 56) - 2;
    if (v13 <= v14)
    {
      v15 = *(a3 + 24);
      while (*v15 != 255 || v15[1] != 217)
      {
        ++v15;
        ++v13;
        if (v15 > v14)
        {
          goto LABEL_35;
        }
      }

      v16 = 0;
      v17 = *(v5 + 696);
      if (v15 >= *(v5 + 704))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v5 + 696);
      }

      v19 = *(v5 + 712);
      if (&v15[v18] > v19)
      {
        v20 = -v17;
      }

      else
      {
        v20 = 0;
      }

      v21 = v18 + *(v5 + 680) + v20;
      if ((v21 - v19 + v13) >= *(v5 + 664))
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v5 + 696);
      }

      v23 = v21 + v22;
      if ((v23 - v19 + v13) <= *(v5 + 672))
      {
        v17 = 0;
      }

      *(v5 + 632) = v23 - v17 - v19 + v13;
      for (i = 40; i > 0xF; i -= 8)
      {
        v25 = *v15;
        v16 = v25 | (v16 << 8);
        if (v25 == 255)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        v15 += v26;
      }

      *(a3 + 40) = v15;
      *(a3 + 32) = 256;
      *(a3 + 36) = v16;
      result = (*(v5 + 616))(v5, a2, a3);
      *(a3 + 48) = *(a3 + 32);
      *(v5 + 560) = 1;
    }
  }

LABEL_35:
  atomic_fetch_add((v5 + 556), -*(a3 + 72));
  return result;
}

unint64_t sub_2337B492C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 596);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  v7 = (result + 784);
  v8 = *(result + 824);
  v9 = v8 + v6;
  v10 = *(result + 784) + v8 + v6;
  v11 = *(result + 552);
  v12 = v11 - (*(result + 784) + v8);
  v13 = (v12 & (v12 >> 31)) + v8;
  v14 = v12 & ~(v12 >> 31);
  if (v11 < v10)
  {
    v9 = v13 + v14;
  }

  v15 = *(result + 816);
  if (v11 < v10)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v8 + v6) % v4;
  }

  if (v11 < v10)
  {
    v17 = v13;
  }

  else
  {
    v17 = *(result + 824);
  }

  if (v11 < v10)
  {
    v18 = v14;
  }

  else
  {
    v18 = *(a2 + 72);
  }

  if (v9 >= v4 || v17 < 1)
  {
    if ((v17 & 3) != 0)
    {
      if (v17)
      {
        v19 = *v5++;
        v15[v17++] = v19;
        --v18;
      }

      if ((v17 & 2) != 0)
      {
        v20 = &v15[v17];
        *v20 = *v5;
        v20[1] = v5[1];
        v17 += 2;
        v5 += 2;
        v18 -= 2;
      }
    }
  }

  else
  {
    memmove(&v5[v17], *(a2 + 64), 2 * v18);
    result = memmove(v5, v15, 2 * v17);
    v15 = 0;
    v18 += v17;
    v17 = 0;
  }

  *(v3 + 792) = v5;
  *(v3 + 800) = v18 - v16;
  *(v3 + 816) = v15;
  *(v3 + 824) = v17;
  v22 = *(v7 + 3);
  v21 = *(v7 + 4);
  v23 = *(v7 + 2);
  *(a2 + 160) = *(v7 + 10);
  *(a2 + 128) = v22;
  *(a2 + 144) = v21;
  *(a2 + 112) = v23;
  v24 = *(v7 + 1);
  *(a2 + 80) = *v7;
  *(a2 + 96) = v24;
  if (v16 <= 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  atomic_store(v25, (a2 + 8));
  v26 = *(v3 + 824);
  v27 = 816;
  if (!v26)
  {
    v27 = 792;
  }

  v28 = *(v3 + v27);
  v29 = *(v3 + 832);
  v30 = *(v3 + 840);
  v31 = *(v3 + 784);
  v32 = *(v3 + 848);
  v33 = *(v3 + 852);
  v34 = *(v3 + 800);
  if (v34 + v26 >= 1)
  {
    v35 = v31 + v26;
    if (v26)
    {
      v36 = 0;
    }

    else
    {
      v36 = *(v3 + 800);
    }

    result = (v35 + v36);
    v37 = *(v3 + 784);
    while (1)
    {
      if (v31 == result)
      {
        if (v31 != v35)
        {
          goto LABEL_47;
        }

        v28 = *(v3 + 792);
        result = (v35 + v34);
        if (!v34)
        {
          break;
        }
      }

      if (v31 == v32)
      {
        if (v31 == v33)
        {
          v38 = *(v30 + 24);
          v30 += 24;
          v29 = v38;
          v33 = v31 + *(v30 + 12) * *(v30 + 8);
        }

        else
        {
          v29 += 2 * *(v30 + 16);
        }

        v32 = *(v30 + 8) + v31;
      }

      if (v31 == v37)
      {
        *(v3 + 856) = vaddw_s16(*(v3 + 856), *v28);
        v37 = v31 + v4;
      }

      if (v32 >= result)
      {
        v39 = result;
      }

      else
      {
        v39 = v32;
      }

      if (v37 < v39)
      {
        v39 = v37;
      }

      v40 = v39 - v31;
      v28 = (v28 + 2 * v40);
      v29 += 2 * v40;
      v31 = v39;
    }

    v31 = v35;
  }

LABEL_47:
  *(v3 + 784) = v31;
  *(v3 + 832) = v29;
  *(v3 + 840) = v30;
  *(v3 + 848) = v32;
  *(v3 + 852) = v33;
  *(v3 + 792) = 0;
  *(v3 + 800) = 0;
  *(v3 + 824) = 0;
  *(v3 + 808) = 0u;
  if (v16 >= 1)
  {
    *(v3 + 808) = a2;
    *(v3 + 816) = v28;
    *(v3 + 824) = v16;
  }

  return result;
}

intptr_t sub_2337B4BC0(intptr_t result, uint64_t a2)
{
  v2 = *(a2 + 56) - *(a2 + 24) + *(result + 656);
  *(result + 656) = v2;
  *(result + 768) = *(a2 + 48);
  v3 = *(result + 664);
  v4 = v2 - v3;
  v5 = *(result + 688);
  if (v5 <= v4)
  {
    v6 = result;
    do
    {
      *(v6 + 664) = v3 + v5;
      if (atomic_fetch_add((v6 + 720), 1u) == -1)
      {
        result = dispatch_semaphore_signal(*(v6 + 728));
      }

      v3 = *(v6 + 664);
      v5 = *(v6 + 688);
    }

    while (v5 <= *(v6 + 656) - v3);
  }

  return result;
}

uint64_t sub_2337B4C54(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 584);
  v4 = *(a2 + 16);
  v5 = *(a3 + 120);
  v6 = 112;
  if (!v5)
  {
    v6 = 88;
  }

  v7 = *(a3 + v6);
  v9 = *(a3 + 128);
  v8 = *(a3 + 136);
  v10 = *(a3 + 80);
  v12 = *(a3 + 144);
  v11 = *(a3 + 148);
  v13 = v10 + v5;
  v14 = v10 + v5;
  if (!v5)
  {
    v14 = *(a3 + 96) + v13;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *(result + 596);
  v20 = *(result + 600);
  v21 = *(a3 + 80);
  v41 = a3;
  v44 = result;
  v39 = v19;
  v40 = v10 + v5;
  v38 = v20;
  while (v10 != v14)
  {
LABEL_14:
    if (v10 == v12)
    {
      if (v10 == v11)
      {
        v24 = *(v8 + 24);
        v8 += 24;
        v9 = v24;
        v11 = v10 + *(v8 + 12) * *(v8 + 8);
      }

      else
      {
        v9 += *(v8 + 16);
      }

      v12 = *(v8 + 8) + v10;
    }

    if (v10 == v21)
    {
      v25 = *(a3 + 152);
      *(a3 + 152) = vaddw_s16(v25, *v7);
      v16 = v25.i32[1];
      v21 = v10 + v19;
      v17 = v25.u16[4];
      v18 = v25.i32[3];
      v15 = v25.i32[0];
    }

    if (v12 >= v14)
    {
      v26 = v14;
    }

    else
    {
      v26 = v12;
    }

    if (v21 < v26)
    {
      v26 = v21;
    }

    v27 = v26 - v10;
    v28 = (v7 + 2 * (v26 - v10));
    v10 = v26;
    if (v20 == 2)
    {
      if (v27 >= 1)
      {
        do
        {
          v15 += v7->u16[0];
          v29 = (v7 + 4);
          v16 += v7->u16[1];
          v30 = *(v3 + 2 * v15);
          v31 = *(v3 + 2 * v16);
          if (v4 > v30)
          {
            v32 = *(v3 + 2 * v15);
          }

          else
          {
            v32 = v4;
          }

          *v9 = v30;
          v9[1] = v31;
          if (v32 > v31)
          {
            v4 = v31;
          }

          else
          {
            v4 = v32;
          }

          v9 += 2;
          v7 = v29;
        }

        while (v29 < v28);
        goto LABEL_47;
      }
    }

    else if (v27 >= 1)
    {
      do
      {
        v15 += v7->u16[0];
        v33 = *(v3 + 2 * v15);
        v16 += v7->u16[1];
        v34 = *(v3 + 2 * v16);
        *v9 = v33;
        if (v4 <= v33)
        {
          v33 = v4;
        }

        v9[1] = v34;
        if (v33 > v34)
        {
          v33 = v34;
        }

        v17 += v7->u16[2];
        v29 = v7 + 1;
        v18 += v7->u16[3];
        v35 = *(v3 + 2 * v17);
        v36 = *(v3 + 2 * v18);
        if (v33 > v35)
        {
          v33 = *(v3 + 2 * v17);
        }

        v9[2] = v35;
        v9[3] = v36;
        if (v33 > v36)
        {
          v4 = v36;
        }

        else
        {
          v4 = v33;
        }

        v9 += 4;
        v7 = v29;
      }

      while (v29 < v28);
LABEL_47:
      v10 = v26;
      v7 = v29;
    }
  }

  if (v10 == v13)
  {
    v22 = *(a3 + 104);
    if (v22)
    {
      if (atomic_fetch_add((v22 + 8), 0xFFFFFFFF) <= 1)
      {
        *(a3 + 104) = 0;
        atomic_fetch_or((result + 1200), 1 << *(v22 + 4));
        if ((atomic_fetch_add((result + 1204), 1u) & 0x80000000) != 0)
        {
          v43 = v8;
          v42 = v11;
          dispatch_semaphore_signal(*(v44 + 1208));
          v20 = v38;
          v19 = v39;
          v11 = v42;
          v13 = v40;
          v8 = v43;
          result = v44;
          a3 = v41;
        }
      }
    }

    v23 = *(a3 + 96);
    if (v23)
    {
      v7 = *(a3 + 88);
      v14 = v23 + v13;
      goto LABEL_14;
    }
  }

  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_2337B4F10(unsigned __int8 *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = 0;
    v3 = 0;
    v4 = 16;
    v5 = a1;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v4 - 1;
      if (v7)
      {
        v9 = ((v6 - 1) << v8) + v3;
        if ((((1 << v8) | v3 | v9) & 0xFFFF007F) != 0 && (~(v3 & v9) & 0xFE00) != 0)
        {
          break;
        }
      }

      v2 += v6;
      v3 += v6 << v8;
      if (!--v4)
      {
        operator new[]();
      }
    }
  }

  return 0;
}

uint64_t sub_2337B5820(unsigned __int8 *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = 0;
    v3 = 0x10000;
    v4 = 16;
    v5 = a1;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v4 - 1;
      v3 -= v7 << (v4 - 1);
      if (v7)
      {
        v9 = 1 << v8;
        v10 = v3 + ((v6 - 1) << v8);
        v11 = (v3 | v9 | v10) & 0xFFFF007F;
        v12 = (v10 | v3) & 0xFE00;
        if (v11 && v12 != 0)
        {
          break;
        }
      }

      v2 += v6;
      if (!--v4)
      {
        operator new[]();
      }
    }
  }

  return 0;
}

id sub_2337B5E58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC38];
  v42[1] = @"com.kodak.raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".dcr.";
  v42[3] = &unk_284957970;
  v42[4] = &unk_284957988;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_233720EC8, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_2337B6150, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_2337B615C, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_2337B6168, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_2337B6174, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_2337B6180(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_2337B7608();
}

uint64_t sub_2337B621C(uint64_t a1)
{
  v6 = 1;
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_23374C360(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void sub_2337B628C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337B62A8(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337B6304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337B6320(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337B637C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337B6398(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337B63F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337B6410(uint64_t a1)
{
  v1 = *(a1 + 1208);
  if (v1 == *(a1 + 1200))
  {
    v8 = 0;
    sub_23372A488(__p, "IFD0:SUBIFD1");
    v4 = sub_23374C438(a1, __p, 0, &v8);
    v5 = v4;
    if (v7 < 0)
    {
      operator delete(__p[0]);
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else if (v4)
    {
LABEL_5:
      LOWORD(result) = v8;
      return result;
    }

    LOWORD(result) = sub_233733AF4();
    return result;
  }

  LOWORD(result) = *(v1 - 2);
  return result;
}

void sub_2337B64A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337B64C4(uint64_t a1, uint64_t a2, char a3)
{
  sub_23372A488(__p, "IFD0");
  v6 = sub_233735E3C(a1 + 288, __p);
  v7 = v6;
  if (a1 + 296 == v6)
  {
    v8 = -1.0;
  }

  else
  {
    v8 = *(v6 + 56);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 296 == v7)
  {
    return sub_233733290(a1, a2, a3);
  }

  return v8;
}

void sub_2337B6574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337B6590(uint64_t a1)
{
  if (sub_233819A7C((a1 + 1184)))
  {
    return *(a1 + 1184);
  }

  else
  {
    return sub_23373386C();
  }
}

void sub_2337B65D0(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  sub_23374FA0C(a1, a2, a3);
  v6 = *a3;
  if (v6 == 33424)
  {
    if (a3[1] == 4)
    {
      sub_2337338AC(a1, &__p);
      __src = *(a3 + 2);
      sub_233723AE0(&v22, &__src);
      sub_233725F08(&v20, &__p, &v22, 0);
      if (v17)
      {
        sub_2337239E8(v17);
      }

      if (*(a2 + 23) >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 8);
      }

      p_p = &__p;
      sub_2337551CC(&__p, v13 + 12);
      if (v18 < 0)
      {
        p_p = __p;
      }

      if (v13)
      {
        if (*(a2 + 23) >= 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = *a2;
        }

        memmove(p_p, v15, v13);
      }

      strcpy(p_p + v13, ":KodakSubIFD");
      (*(*a1 + 768))(a1, &__p);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      sub_233725FD4(&v20);
    }
  }

  else if (v6 == 37397 && a3[1] == 5 && *(a3 + 1) == 1)
  {
    sub_2337338AC(a1, &__p);
    sub_23374AEDC(a3, &__p, &v20);
    if (v17)
    {
      sub_2337239E8(v17);
    }

    v8 = v20;
    if (v21 - v20 == 8)
    {
      __src = *v20;
      if (*(a2 + 23) >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      v10 = &__p;
      sub_2337551CC(&__p, v9 + 16);
      if (v18 < 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        if (*(a2 + 23) >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        memmove(v10, v11, v9);
      }

      strcpy(v10 + v9, ":EPExposureIndex");
      v22 = &__p;
      v12 = sub_23375E5EC(a1 + 192, &__p);
      sub_23375538C((v12 + 56), &__src, &v20, 1uLL);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      v8 = v20;
    }

    if (v8)
    {
      v21 = v8;
      operator delete(v8);
    }
  }
}

void sub_2337B6870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337B68E8(double *a1, const void **a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  nullsub_6();
  v12 = *a3;
  if (v12 <= 0x3ED)
  {
    switch(v12)
    {
      case 0x3EBu:
        sub_2338FB9F4(a3, a1, v6, v7, v8, v9, v10, v11);
        break;
      case 0x3ECu:
        sub_2338FB9AC(a3, a1, v6, v7, v8, v9, v10, v11);
        break;
      case 0x3EDu:
        sub_2338FB964(a3, a1, v6, v7, v8, v9, v10, v11);
        break;
    }
  }

  else if (*a3 > 0x84Cu)
  {
    if (v12 == 2125)
    {
      if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 5 && *(a3 + 1) == 3)
      {
        sub_2337338AC(a1, &__p);
        sub_23374AEDC(a3, &__p, v21);
        if (v19)
        {
          sub_2337239E8(v19);
        }

        if (*(a2 + 23) >= 0)
        {
          v13 = *(a2 + 23);
        }

        else
        {
          v13 = a2[1];
        }

        p_p = &__p;
        sub_2337551CC(&__p, v13 + 11);
        if (v20 < 0)
        {
          p_p = __p;
        }

        if (v13)
        {
          if (*(a2 + 23) >= 0)
          {
            v15 = a2;
          }

          else
          {
            v15 = *a2;
          }

          memmove(p_p, v15, v13);
        }

        strcpy(p_p + v13, ":WhitePoint");
        v16 = *(v21[0] + 1);
        __src[0] = v16 / *v21[0];
        __src[1] = 1.0;
        __src[2] = v16 / *(v21[0] + 2);
        v21[5] = &__p;
        v17 = sub_233757B14((a1 + 18), &__p);
        sub_233755258((v17 + 56), __src, &v23, 3uLL);
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v21[0])
        {
          v21[1] = v21[0];
          operator delete(v21[0]);
        }
      }
    }

    else if (v12 == 2317 && ((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 3)
    {
      sub_2337338AC(a1, &__p);
      sub_23374B2FC(a3, &__p, v21);
      sub_2338FB7FC(a1, &__p, v21);
    }
  }

  else if (v12 == 1006)
  {
    sub_2338FB91C(a3, a1, v6, v7, v8, v9, v10, v11);
  }

  else if (v12 == 2118)
  {
    sub_2338FB86C(a1, a3);
  }
}

void sub_2337B6BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337B6C10(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 536))(a1);
  if (v4 < 2)
  {
    (*(*a1 + 384))(&v11, a1);
    v10 = (*(*a1 + 424))(a1);
    sub_2337B77DC();
  }

  if (v4 == 7)
  {
    (*(*a1 + 384))(&v11, a1);
    v10 = (*(*a1 + 424))(a1);
    sub_2337B7998();
  }

  if (v4 == 65000)
  {
    v9 = 0;
    sub_23372A488(__p, "IFD0:SUBIFD1");
    v5 = sub_23374C3F0(a1, __p, &v9);
    v6 = v9 == 32803 && v5;
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (v6)
      {
LABEL_9:
        (*(*a1 + 384))(&v11, a1);
        v10 = (*(*a1 + 424))(a1);
        sub_2337B7B64();
      }
    }

    else if (v6)
    {
      goto LABEL_9;
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_2337B70F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_2337239E8(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337B714C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_23372A488(&__p, "dcr");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "kodak");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2337355A8(a1, &__p);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2337B7200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

id sub_2337B7240(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23374C650(a1);
  v7 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);

  v24 = &unk_2849579A0;
  v22[0] = @"Name";
  v22[1] = @"Type";
  v23[0] = @"KodakSubIFD";
  v23[1] = &unk_2849579B8;
  v22[2] = @"Namespace";
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2337B7428;
  v21[3] = &unk_2789EEC00;
  v21[4] = a1;
  v8 = MEMORY[0x2383AC810](v21);
  v23[2] = v8;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v23, v22, 3);
  v25[0] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v25, &v24, 1);
  objc_msgSend_addEntriesFromDictionary_(v7, v13, v12, v14, v15);

  v19 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v16, v7, v17, v18);

  return v19;
}

id sub_2337B7458(uint64_t a1, const char *a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_2849579D0;
  v4[1] = &unk_2849579E8;
  v5[0] = &unk_28495D370;
  v5[1] = &unk_28495D398;
  v4[2] = &unk_284957A00;
  v4[3] = &unk_284957A18;
  v5[2] = &unk_28495D3C0;
  v5[3] = &unk_28495D3E8;
  v4[4] = &unk_284957A30;
  v4[5] = &unk_284957A48;
  v5[4] = &unk_28495D410;
  v5[5] = &unk_28495D438;
  v4[6] = &unk_284957A60;
  v4[7] = &unk_284957A78;
  v5[6] = &unk_28495D460;
  v5[7] = &unk_28495D488;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 8);

  return v2;
}

void sub_2337B7570(void *a1)
{
  sub_2337B75A8(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337B75A8(void *a1)
{
  *a1 = &unk_28490A988;
  v2 = a1[150];
  if (v2)
  {
    a1[151] = v2;
    operator delete(v2);
  }

  return sub_2337557B4(a1);
}

uint64_t sub_2337B76AC(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28490ACC8;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_28490A988;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  return a1;
}

void sub_2337B7760(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490ACC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337B7880(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28490AD18;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_284921430;
  return a1;
}

void sub_2337B791C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490AD18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337B7A3C(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28490AD68;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28490A870;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = -1;
  return a1;
}

void sub_2337B7AE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490AD68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337B7C08(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28490ADB8;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_284921340;
  return a1;
}

void sub_2337B7CA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490ADB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

_DWORD *sub_2337B7D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  a11 = 0;

  return sub_233726998(&a10, &a11);
}

uint64_t sub_2337B7D44(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_23374B704(v1, va);
}

void sub_2337B7D5C(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "COlympusE300Unpacker", &unk_233945DBE, buf, 2u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2337B80D8;
  v29[3] = &unk_2789EE800;
  v29[4] = a1;
  v4 = MEMORY[0x2383AC810](v29);
  v5 = *(a1 + 44);
  v6 = *(a1 + 48);
  v7 = (2 * ((3435973837u * (v5 + 9)) >> 32)) & 0xFFFFFFF0;
  if ((*(*a1 + 152))(a1) < v7 * v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = sub_2337ADCC4(a1);
  if (v6)
  {
    v9 = v8;
    for (i = 0; i != v6; ++i)
    {
      v11 = &v9[v5] - v7;
      (*(**(a1 + 24) + 32))(*(a1 + 24), v11, v7);
      if (v5 == v5 % 0xA)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        do
        {
          v13 = v11[1];
          v14 = *v11 | ((v13 & 0xF) << 8);
          LOWORD(v13) = (v13 >> 4) | (16 * v11[2]);
          v15 = v11[4];
          v16 = v11[3] | ((v15 & 0xF) << 8);
          LOWORD(v15) = (v15 >> 4) | (16 * v11[5]);
          *v9 = v14;
          v9[1] = v13;
          v17 = v11[7];
          v18 = v11[6] | ((v17 & 0xF) << 8);
          LOWORD(v17) = (v17 >> 4) | (16 * v11[8]);
          v9[2] = v16;
          v9[3] = v15;
          v19 = v11[10];
          v20 = v11[9] | ((v19 & 0xF) << 8);
          v21 = (v19 >> 4) | (16 * v11[11]);
          v9[4] = v18;
          v9[5] = v17;
          v22 = v11[13];
          v23 = v11[12] | ((v22 & 0xF) << 8);
          v24 = (v22 >> 4) | (16 * v11[14]);
          v9[6] = v20;
          v9[7] = v21;
          v9[8] = v23;
          v9[9] = v24;
          v11 += 16;
          v9 += 10;
          v12 += 10;
        }

        while (v12 < 10 * (v5 / 0xA));
      }

      while (v12 < v5)
      {
        v25 = v11[1];
        v26 = *v11 | ((v25 & 0xF) << 8);
        v27 = (v25 >> 4) | (16 * v11[2]);
        *v9 = v26;
        v9[1] = v27;
        v11 += 3;
        v9 += 2;
        v12 += 2;
      }
    }
  }

  v4[2](v4);
}

void sub_2337B80D8(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "COlympusE300Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337B8164(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337B819C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v44 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CSonyA100Unpacker", &unk_233945DBE, buf, 2u);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2337B8680;
  v38[3] = &unk_2789EE800;
  v38[4] = v1;
  v4 = MEMORY[0x2383AC810](v38);
  if (!sub_2337B5820(byte_233905D4A, v43))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = sub_2337ADCC4(v1);
  v30 = v4;
  v34 = *(v1 + 44);
  v35 = *(v1 + 48);
  v6 = (*(**(v1 + 24) + 16))(*(v1 + 24));
  v37 = (*(**(v1 + 24) + 48))(*(v1 + 24));
  v7 = sub_233751844(&v37);
  bzero(buf, 0x2008uLL);
  v9 = v34;
  v10 = v35;
  if (v34 != -1)
  {
    v11 = 0;
    v8 = 0;
    v12 = &v42;
    v13 = &v41;
    v14 = v35 + 8;
    v15 = (v6 - v7);
    v16 = 2 * (2 * v34);
    v17 = 32;
    v18 = v34;
    v31 = v5 + 2 * v34;
    v33 = v1;
    do
    {
      v19 = 0;
      v20 = v18;
      v21 = 1;
      do
      {
        v32 = v21;
        if (v19 < v14)
        {
          v22 = (v31 + 2 * v34 * v19);
          do
          {
            if (v12 > v13)
            {
              if (v15 >= 0x2000)
              {
                v23 = 0x2000;
              }

              else
              {
                v13 = &buf[v15 + 4];
                v23 = v15;
              }

              *buf = v41;
              if (v15)
              {
                v36 = v11;
                v24 = v8;
                (*(**(v33 + 24) + 32))(*(v33 + 24), &v40, v23);
                v8 = v24;
                v10 = v35;
                v11 = v36;
                v16 = 2 * (2 * v34);
                v9 = v34;
              }

              v12 -= 0x2000;
              v15 -= v23;
              *&buf[v23 + 4] = 0;
            }

            if (v17 >= 16)
            {
              v8 = (v8 << 16) | (*v12 << 8) | v12[1];
              v12 += 2;
              v17 -= 16;
            }

            v25 = v8 << v17;
            v26 = v43[v8 << v17 >> 23];
            v17 += (v26 >> 10) & 0x1F;
            if (v26 > 0x8000)
            {
              v26 = v26;
            }

            else
            {
              if ((v26 & 0x8000) != 0)
              {
                v26 = v43[HIWORD(v25) & 0x1FF | 0x200];
                v17 += (v26 >> 10) & 0x1F;
              }

              v27 = v26 & 0x1F;
              if ((v26 & 0x1F) == 0)
              {
                if (v20 < v9 && v19 < v10)
                {
                  v28 = (v26 << 8) & 0x8000;
                  if (v12 >= v13)
                  {
                    v28 = -1;
                  }

                  *v22 = v28 + v11;
                }

                goto LABEL_37;
              }

              if (v17 >= 16)
              {
                v8 = (v8 << 16) | (*v12 << 8) | v12[1];
                v12 += 2;
                v17 -= 16;
              }

              v26 = (v8 << v17 >> -v27) - (((v8 << v17 >> 31) - 1) >> -v27);
              v17 += v27;
            }

            v11 += v26;
            if (v20 < v9 && v19 < v10)
            {
              *v22 = v11;
            }

            LODWORD(v19) = v19 + 2;
            v22 = (v22 + v16);
          }

          while (v19 < v14);
        }

        v21 = 0;
        v19 = 1;
      }

      while ((v32 & 1) != 0);
      v18 = v20 - 1;
      v31 -= 2;
    }

    while (v20);
  }

LABEL_37:
  v30[2](v30, v8);
}

void sub_2337B8680(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSonyA100Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337B8708(uint64_t a1)
{
  v204 = MEMORY[0x28223BE20](a1);
  v213[256] = *MEMORY[0x277D85DE8];
  v1 = sub_23378E038();
  v2 = v1;
  if ((v204 + 1) >= 2 && os_signpost_enabled(v1))
  {
    buf[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v204, "CNikonCompressedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v209[0] = MEMORY[0x277D85DD0];
  v209[1] = 3221225472;
  v209[2] = sub_2337B9A3C;
  v209[3] = &unk_2789EE800;
  v209[4] = v204;
  v200 = MEMORY[0x2383AC810](v209);
  v3 = sub_2337AF4A8(v204);
  v4 = *(v204 + 24);
  v5 = *(v204 + 32);
  v206 = v4;
  v207 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v208 = 0;
  if (v4)
  {
    v208 = sub_233725404(v4);
    sub_23372540C(v206, v3);
  }

  v6 = *(v204 + 48);
  v198 = *(v204 + 44);
  v7 = sub_2337ADCC4(v204);
  v8 = *(v204 + 40);
  v9 = v8 + (*(*v204 + 152))(v204);
  v10 = v9 == (v9 << 31) >> 31 && (v9 & 0x1FFFFFFFFLL) == (v9 & 0x1FFFFFFFFLL);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v203 = v9 - v8;
  if (v9 <= v8)
  {
    v170 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v170, "RawCameraException");
    goto LABEL_194;
  }

  v11 = *(v204 + 24);
  v12 = *(v204 + 192);
  v205 = v12;
  if (v12 != v12)
  {
    v171 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v171, "RawCameraException");
    __cxa_throw(v171, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v192 = v9;
  v193 = v7;
  v197 = v8;
  (*(*v11 + 40))(v11, &v205, 0);
  v13 = sub_233725510(*(v204 + 24));
  v14 = sub_233725510(*(v204 + 24));
  v15 = v14;
  if (v13 == 73 || v14 == 88)
  {
    v16 = *(v204 + 24);
    v205 = 2110;
    (*(*v16 + 40))(v16, &v205, 1);
  }

  v17 = 2 * (v13 == 70);
  if (*(v204 + 200) == 14)
  {
    v18 = v17 + 3;
  }

  else
  {
    v18 = v17;
  }

  v191 = sub_2337255C0(*(v204 + 24));
  v190 = sub_2337255C0(*(v204 + 24));
  v189 = sub_2337255C0(*(v204 + 24));
  v188 = sub_2337255C0(*(v204 + 24));
  v19 = sub_2337255C0(*(v204 + 24));
  v20 = v19;
  v21 = *(v204 + 200);
  v22 = (1 << v21) & 0x7FFF;
  if (v19 < 2)
  {
    v23 = 0;
    if (v13 != 68)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v15 == 64)
    {
      v23 = (v22 / (v19 - 1)) >> 2;
    }

    else
    {
      v23 = v22 / (v19 - 1);
    }

    if (v13 != 68)
    {
LABEL_46:
      if (v13 == 70 || v19 >= 0x4002)
      {
        v41 = xmmword_233903BA0;
        v42 = v211;
        v43 = 0x4000;
        v44.i64[0] = 0x8000800080008;
        v44.i64[1] = 0x8000800080008;
        v45.i64[0] = 0x10001000100010;
        v45.i64[1] = 0x10001000100010;
        do
        {
          v42[-1] = v41;
          *v42 = vaddq_s16(v41, v44);
          v41 = vaddq_s16(v41, v45);
          v42 += 2;
          v43 -= 16;
        }

        while (v43);
        goto LABEL_92;
      }

      if (v19)
      {
        v34 = v19;
        v35 = buf;
        do
        {
          *v35 = sub_2337255C0(*(v204 + 24));
          v35 += 2;
          --v34;
        }

        while (v34);
      }

      if (v20 <= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v20;
      }

      v37 = 0x10000 - ((0x10000 - v20) >> 1);
      if (v37 <= v20)
      {
        goto LABEL_77;
      }

      v38 = buf[v36 - 1];
      v39 = v37 - v20;
      if (v39 < 4)
      {
        v40 = v20;
        goto LABEL_73;
      }

      if (v39 >= 0x10)
      {
        v46 = v39 & 0xFFFFFFFFFFFFFFF0;
        v47 = vdupq_n_s16(v38);
        v48 = &v211[v20];
        v49 = v39 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v48[-1] = v47;
          *v48 = v47;
          v48 += 2;
          v49 -= 16;
        }

        while (v49);
        if (v39 == v46)
        {
          goto LABEL_76;
        }

        if ((v39 & 0xC) == 0)
        {
          v40 = v46 + v20;
LABEL_73:
          v53 = &buf[v40];
          v54 = v40 - v37;
          do
          {
            *v53 = v38;
            v53 += 2;
          }

          while (!__CFADD__(v54++, 1));
          goto LABEL_76;
        }
      }

      else
      {
        v46 = 0;
      }

      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + v20;
      v50 = vdup_n_s16(v38);
      v51 = v46 - (v39 & 0xFFFFFFFFFFFFFFFCLL);
      v52 = &buf[v46 + v20];
      do
      {
        *v52 = v50;
        v52 += 8;
        v51 += 4;
      }

      while (v51);
      if (v39 != (v39 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_73;
      }

LABEL_76:
      v10 = v20 == 0xFFFF;
      v20 = 0x10000 - ((0x10000 - v20) >> 1);
      if (v10)
      {
        goto LABEL_92;
      }

LABEL_77:
      v56 = buf[0];
      v57 = 0x10000 - v20;
      if (v57 < 4)
      {
        v58 = v20;
        goto LABEL_90;
      }

      if (v57 >= 0x10)
      {
        v59 = v57 & 0xFFFFFFFFFFFFFFF0;
        v60 = vdupq_n_s16(buf[0]);
        v61 = &v211[v20];
        v62 = v57 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v61[-1] = v60;
          *v61 = v60;
          v61 += 2;
          v62 -= 16;
        }

        while (v62);
        if (v57 == v59)
        {
          goto LABEL_92;
        }

        if ((-v20 & 0xC) == 0)
        {
          v58 = v59 + v20;
LABEL_90:
          v66 = v58;
          do
          {
            buf[v66++] = v56;
          }

          while (v66 != 0x10000);
          goto LABEL_92;
        }
      }

      else
      {
        v59 = 0;
      }

      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL) + v20;
      v63 = vdup_n_s16(v56);
      v64 = v59 - (v57 & 0xFFFFFFFFFFFFFFFCLL);
      v65 = &buf[v59 + v20];
      do
      {
        *v65 = v63;
        v65 += 8;
        v64 += 4;
      }

      while (v64);
      if (v57 != (v57 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_90;
      }

LABEL_92:
      if (sub_2337B4F10(&byte_233905D80[32 * v18], v212))
      {
        v33 = v212;
        v32 = v6;
        goto LABEL_94;
      }

      goto LABEL_193;
    }
  }

  v24 = v15 == 64 || v15 == 32;
  if (!v24 || !v23)
  {
    goto LABEL_46;
  }

  if (v19)
  {
    v25 = buf;
    v26 = v19;
    do
    {
      *v25 = sub_2337255C0(*(v204 + 24));
      v25 += 2 * v23;
      --v26;
    }

    while (v26);
  }

  if (v21 <= 0xE)
  {
    v27 = 0;
    if (v22 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v22;
    }

    do
    {
      buf[v27] = ((v23 - v27 % v23) * buf[v27 / v23 * v23] + v27 % v23 * buf[v27 / v23 * v23 + v23]) / v23;
      ++v27;
    }

    while (v28 != v27);
  }

  v29 = *(v204 + 24);
  v30 = *(v204 + 192);
  v205 = v30 + 562;
  if ((v30 - 2147483086) <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v173 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v173, "RawCameraException");
    __cxa_throw(v173, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  (*(*v29 + 40))(v29, &v205, 0);
  v31 = sub_2337255C0(*(v204 + 24));
  v32 = v31;
  if (!v31 || v6 <= v31)
  {
    goto LABEL_92;
  }

  if (!sub_2337B4F10(&byte_233905D80[32 * v18], v212) || (v33 = v213, !sub_2337B4F10(&byte_233905D80[32 * (v18 + 1)], v213)))
  {
LABEL_193:
    v170 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v170, "RawCameraException");
LABEL_194:
    __cxa_throw(v170, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

LABEL_94:
  v186 = v32;
  v187 = v6;
  v185 = v33;
  v183 = v212 == v33;
  v184 = v6 * v198;
  v195 = v203 / ((v6 * v198 + 10239) / 10240);
  v67 = 4 * v195;
  if (4 * v195 <= v198)
  {
    v67 = v198;
  }

  v194 = v67;
  v182 = NSPageSize();
  v181 = sub_2337AEFB8(v204);
  if (v203 <= 0)
  {
    v172 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v172, "RawCameraException");
    __cxa_throw(v172, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v72 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v68, v69, v70, v71);
  active = objc_msgSend_activeProcessorCount(v72, v73, v74, v75, v76);

  if (active >= 31)
  {
    v78 = 31;
  }

  else
  {
    v78 = active;
  }

  v201 = v78;
  if (active >= 29)
  {
    v79 = 29;
  }

  else
  {
    v79 = active;
  }

  v80 = v79 + 2;
  v180 = active;
  if (active == 1)
  {
    v81 = 2;
  }

  else
  {
    v81 = v80;
  }

  v82 = NSPageSize();
  v83 = v82;
  v84 = -v82;
  v85 = (2 * v82 + 2 * v194 - 1) & v84;
  v86 = v85 * v81;
  v175 = 192 * v81;
  v87 = (v201 << 6) + v175 + 1280;
  v88 = (v87 + v82) & v84;
  if (v82 <= v195)
  {
    v89 = v195;
  }

  else
  {
    v89 = v82;
  }

  v90 = __clz(4 * v89 - 1);
  v179 = 0xC0000u >> -v90;
  v177 = -v90;
  v91 = (v82 + (v195 + 1) / 2 + 3) & v84;
  v178 = v179 << -v90;
  v92 = v88 + v82 + 2 * v91 + v178 + v86;
  v93 = sub_2338F6084(v92);
  v94 = v93;
  if (!v93)
  {
    v174 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v174, "RawCameraException");
    __cxa_throw(v174, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v95 = v91;
  v96 = v88 - v87;
  v97 = ((v93 + v83 - 1) & -v83);
  v98 = v97 + 152;
  v99 = &v97[8 * v201 + 160];
  v100 = v99 + v175 + v96;
  v176 = v100 + v86 + v95;
  bzero(v97, v87);
  v97[2] = v94;
  *(v97 + 6) = v92;
  if ((v180 & 0x80000000) == 0)
  {
    v101 = (v201 + 1);
    if (v180)
    {
      v102 = 0;
      v103 = 0;
      v104 = (v201 + 1) & 0x3E;
      v98 += 8 * v104;
      v105 = 4;
      do
      {
        v106 = &v97[v102];
        v107 = &v97[v105];
        *v107 = &v97[v102 + 152];
        v107[1] = &v97[v102 + 160];
        *(v106 + 304) = v103;
        *(v106 + 320) = v103 + 1;
        v106[153] = v97;
        v106[161] = v97;
        v103 += 2;
        v102 += 16;
        v105 += 2;
      }

      while (v104 != v103);
      if (v104 == v101)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v104 = 0;
    }

    do
    {
      v97[v104 + 4] = v98;
      *v98 = v104;
      v98[1] = v97;
      ++v104;
      v98 += 8;
    }

    while (v101 != v104);
  }

LABEL_118:
  if (v81 >= 1)
  {
    for (i = 0; i != v81; ++i)
    {
      v97[i + 36] = v99;
      *(v99 + 64) = v100;
      v100 += v85;
      *(v99 + 4) = i;
      v99 += 192;
    }
  }

  *(v97 + 170) = 1 << v177;
  *(v97 + 171) = v179;
  *(v97 + 172) = v178;
  v97[87] = v176;
  v97[88] = v176 + v178;
  v109 = v97[4];
  *v97 = v193;
  v97[1] = v193 + sub_2337AEFB8(v204);
  *(v97 + 134) = v201;
  *(v97 + 135) = v81;
  *(v97 + 136) = v194;
  *(v97 + 137) = v195;
  *(v97 + 138) = v184;
  atomic_store(v184, v97 + 139);
  *(v97 + 560) = 0;
  atomic_store(0, v97 + 561);
  *(v97 + 562) = v183;
  v97[71] = v212;
  v97[72] = v185;
  *(v97 + 148) = v187;
  *(v97 + 149) = v198;
  v97[73] = buf;
  *(v97 + 150) = v186 * v198;
  v110 = sub_2337B9AC4;
  v111 = sub_2337B9F4C;
  if (v212 == v185)
  {
    v113 = 0x7FFFFFFF;
  }

  else
  {
    v112 = v184 * v195 / v203 + 0.5;
    v113 = (v186 * v198 + v112 / 2) / v112 + 1;
    v110 = sub_2337B9D04;
    v111 = sub_2337BA438;
  }

  *(v97 + 151) = v113;
  *v109 = 0;
  v97[76] = v110;
  v97[77] = v111;
  v97[78] = v197;
  v97[79] = v192;
  v97[80] = v197;
  v97[81] = v197;
  v114 = v197 & -*(v97 + 170);
  v97[82] = v114;
  v97[83] = v114;
  v97[84] = *(v97 + 172) + v114;
  atomic_store(*(v97 + 171), v97 + 178);
  v115 = dispatch_semaphore_create(0);
  v116 = v97[90];
  v97[90] = v115;

  atomic_store(0, v97 + 182);
  v117 = dispatch_semaphore_create(0);
  v118 = v97[92];
  v97[92] = v117;

  v119 = -v182;
  v97[93] = 2097153;
  v97[94] = v97[87] + v197 - v97[82];
  v120 = (v182 + v193) & v119;
  *(v97 + 95) = *(v97 + 93);
  *(v97 + 194) = 0;
  v121 = __clz(__rbit32(v182));
  v97[98] = 0;
  *(v97 + 198) = 0;
  *(v97 + 204) = 0;
  *(v97 + 50) = 0u;
  v97[103] = v193;
  *(v97 + 208) = 0;
  *(v97 + 209) = v191;
  *(v97 + 210) = v190;
  *(v97 + 211) = v189;
  *(v97 + 212) = v188;
  atomic_store(((v193 - v120 + v181) & v119) >> v121, v97 + 290);
  *(v97 + 291) = v121;
  v97[146] = v120;
  atomic_store(0, v97 + 286);
  atomic_store(0, v97 + 287);
  atomic_store(0, v97 + 288);
  atomic_store(0, v97 + 289);
  atomic_store(0, v97 + 294);
  atomic_store(0, v97 + 295);
  v122 = dispatch_semaphore_create(0);
  v123 = v97[148];
  v97[148] = v122;

  if (v81 > 0)
  {
    v124 = v97 + 36;
    do
    {
      atomic_fetch_or(v97 + 294, 1 << *(*v124 + 4));
      if ((atomic_fetch_add(v97 + 295, 1u) & 0x80000000) != 0)
      {
        dispatch_semaphore_signal(v97[148]);
      }

      ++v124;
      --v81;
    }

    while (v81);
  }

  atomic_store(0, v97 + 298);
  v125 = dispatch_semaphore_create(0);
  v126 = v97[150];
  v97[150] = v125;

  v127 = dispatch_group_create();
  v128 = dispatch_queue_create("Huffman Decode Block", MEMORY[0x277D85CD8]);
  if (v180 >= 1)
  {
    if (v180 == 1)
    {
      v129 = sub_2337BB264;
    }

    else
    {
      v129 = sub_2337BA7DC;
    }

    if (v201 <= 1)
    {
      v130 = 1;
    }

    else
    {
      v130 = v201;
    }

    v131 = (v97 + 5);
    do
    {
      v132 = *v131++;
      dispatch_group_async_f(v127, v128, v132, v129);
      --v130;
    }

    while (v130);
  }

  v133 = v97[82];
  v134 = *(v97 + 170);
  v135 = v97[87];
  v202 = v97[88];
  v196 = *(v97 + 172);
  v136 = *(v204 + 24);
  v205 = v197;
  (*(*v136 + 40))(v136, &v205, 0);
  v137 = v192 - v133;
  if (v192 > v133)
  {
    v138 = __clz(__rbit32(v134));
    v199 = v134 - 1;
    v139 = atomic_load(v97 + 178);
    if (v139 < 1 || (v140 = atomic_load(v97 + 182), (v140 & 0x80000000) != 0))
    {
      LODWORD(v141) = 1;
    }

    else
    {
      v141 = (v202 - v135) >> v138;
      v142 = atomic_load(v97 + 178);
      if (v142 < v141)
      {
        LODWORD(v141) = v142;
      }
    }

    v143 = (v141 << v138);
    v144 = v137 >= v143 ? v141 : (v199 + v137) >> v138;
    v145 = v137 >= v143 ? (v141 << v138) : v192 - v133;
    v146 = atomic_load(v97 + 561);
    if ((v146 & 1) == 0)
    {
      if (atomic_fetch_add(v97 + 178, -v144) < v144)
      {
        dispatch_semaphore_wait(v97[90], 0xFFFFFFFFFFFFFFFFLL);
      }

      v147 = atomic_load(v97 + 561);
      if ((v147 & 1) == 0)
      {
        (*(**(v204 + 24) + 32))(*(v204 + 24), v135 + v197 - v133, v145 - (v197 - v133));
        v148 = -v196;
        if (v135 + v145 < v202)
        {
          v148 = 0;
        }

        if (atomic_fetch_add(v97 + 182, v144) == -1)
        {
          v150 = v148;
          dispatch_semaphore_signal(v97[92]);
          v148 = v150;
          v149 = v145 + v133;
          if (v145 + v133 >= v192)
          {
            goto LABEL_185;
          }
        }

        else
        {
          v149 = v145 + v133;
          if (v145 + v133 >= v192)
          {
            goto LABEL_185;
          }
        }

        v151 = v135 + v145 + v148;
        do
        {
          v152 = atomic_load(v97 + 178);
          if (v152 < 1)
          {
            LODWORD(v155) = 1;
            v154 = v192;
          }

          else
          {
            v153 = atomic_load(v97 + 182);
            v154 = v192;
            if ((v153 & 0x80000000) != 0)
            {
              LODWORD(v155) = 1;
            }

            else
            {
              v155 = (v202 - v151) >> v138;
              v156 = atomic_load(v97 + 178);
              if (v156 < v155)
              {
                LODWORD(v155) = v156;
              }
            }
          }

          v157 = (v155 << v138);
          v158 = v154 - v149;
          if (v158 >= v157)
          {
            v159 = v155;
          }

          else
          {
            v159 = (v199 + v158) >> v138;
          }

          if (v158 >= v157)
          {
            v160 = (v155 << v138);
          }

          else
          {
            v160 = v158;
          }

          v161 = atomic_load(v97 + 561);
          if (v161)
          {
            break;
          }

          if (atomic_fetch_add(v97 + 178, -v159) < v159)
          {
            dispatch_semaphore_wait(v97[90], 0xFFFFFFFFFFFFFFFFLL);
          }

          v162 = atomic_load(v97 + 561);
          if (v162)
          {
            break;
          }

          (*(**(v204 + 24) + 32))(*(v204 + 24), v151, v160);
          v163 = v151 + v160;
          if (v151 + v160 >= v202)
          {
            v164 = -v196;
          }

          else
          {
            v164 = 0;
          }

          if (atomic_fetch_add(v97 + 182, v159) == -1)
          {
            dispatch_semaphore_signal(v97[92]);
          }

          v151 = v163 + v164;
          v149 += v160;
        }

        while (v149 < v192);
      }
    }
  }

LABEL_185:
  dispatch_group_wait(v127, 0xFFFFFFFFFFFFFFFFLL);
  atomic_load(v97 + 139);

  if (v97[2])
  {
    v165 = v97[90];
    v97[90] = 0;

    v166 = v97[92];
    v97[92] = 0;

    v167 = v97[148];
    v97[148] = 0;

    v168 = v97[150];
    v97[150] = 0;

    free(v97[2]);
  }

  if (v206)
  {
    sub_23372540C(v206, v208);
  }

  sub_2338FBA3C(&v207);
  v200[2](v200);
}

void sub_2337B9930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (**a28)(void), uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_233735A90(&a33);
  a28[2](a28);

  _Unwind_Resume(a1);
}

void sub_2337B9A3C(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CNikonCompressedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337B9AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 24);
  v5 = *(a3 + 40);
  v6 = *(a1 + 568);
  *(a3 + 32) = 1;
  if (v5 >= v4)
  {
    v9 = 0;
    v7 = 0;
    v8 = v5;
    do
    {
      v8 = (v8 - 1);
      v7 += 8;
      if (v9 > 0x3E)
      {
        break;
      }

      ++v9;
    }

    while (v8 >= v4);
  }

  else
  {
    v7 = 0;
    v8 = v5;
  }

  bzero(v28, 0x201uLL);
  v10 = 0;
  v11 = v7 - 32;
  v12 = v5;
  while (1)
  {
    if (!v28[v10])
    {
      v13 = bswap32(*v8);
      v14 = v8 + 1;
      v15 = v10;
      v16 = v10;
      while (1)
      {
        if (v15 >= 16)
        {
          v13 = (v13 << 16) | (*v14 << 8) | *(v14 + 1);
          v14 = (v14 + 2);
          v15 -= 16;
        }

        v18 = v13 << v15;
        v19 = *(v6 + 2 * ((v13 << v15) >> 23));
        v20 = (v19 >> 10) & 0x1F;
        v15 += v20;
        v16 += v20;
        if (v19 > 0x8000)
        {
          goto LABEL_16;
        }

        if ((v19 & 0x8000) != 0)
        {
          break;
        }

        v21 = v19 & 0x1F;
        if (v21)
        {
          goto LABEL_19;
        }

LABEL_16:
        if (v16 > v11)
        {
          goto LABEL_22;
        }

LABEL_10:
        v17 = v28[v16];
        v28[v16] = v17 + 1;
        if (v17)
        {
          goto LABEL_25;
        }
      }

      v22 = *(v6 + 2 * (HIWORD(v18) & 0x3FF));
      v23 = (v22 >> 10) & 0x1F;
      v15 += v23;
      v16 += v23;
      v21 = v22 & 0x1F;
      if (!v21)
      {
        goto LABEL_16;
      }

LABEL_19:
      if (v15 >= 16)
      {
        v13 = (v13 << 16) | (*v14 << 8) | *(v14 + 1);
        v14 = (v14 + 2);
        v15 -= 16;
      }

      v15 += v21;
      v16 += v21;
      if (v16 <= v11)
      {
        goto LABEL_10;
      }

LABEL_22:
      if (v16 <= v7)
      {
        if (!v10)
        {
          *(a3 + 36) = v13;
          *(a3 + 34) = v15;
          v12 = v14;
          *(a3 + 40) = v14;
        }

        goto LABEL_10;
      }

LABEL_25:
      if (v10 && v16 > v7)
      {
        break;
      }
    }

    if (++v10 == 32)
    {
      v24 = *(a3 + 36);
      v25 = *(a3 + 34);
      if (v25 >= 8)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  v24 = *(a3 + 36);
  *(a3 + 32) = *(a3 + 33);
  v25 = 32;
  v12 = v5;
  do
  {
LABEL_29:
    v26 = v25;
    v27 = *v12;
    v12 = (v12 + 1);
    v24 = v27 | (v24 << 8);
    v25 -= 8;
  }

  while (v26 > 0xF);
LABEL_30:
  *(a3 + 36) = v24;
  *(a3 + 34) = v25;
  *(a3 + 40) = v12;
}

void sub_2337B9D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 24);
  v5 = *(a3 + 40);
  v6 = *(a1 + 8 * *(a3 + 12) + 568);
  *(a3 + 32) = 1;
  if (v5 >= v4)
  {
    v9 = 0;
    v7 = 0;
    v8 = v5;
    do
    {
      v8 = (v8 - 1);
      v7 += 8;
      if (v9 > 0x3E)
      {
        break;
      }

      ++v9;
    }

    while (v8 >= v4);
  }

  else
  {
    v7 = 0;
    v8 = v5;
  }

  bzero(v28, 0x201uLL);
  v10 = 0;
  v11 = v7 - 32;
  v12 = v5;
  while (1)
  {
    if (!v28[v10])
    {
      v13 = bswap32(*v8);
      v14 = v8 + 1;
      v15 = v10;
      v16 = v10;
      while (1)
      {
        if (v15 >= 16)
        {
          v13 = (v13 << 16) | (*v14 << 8) | *(v14 + 1);
          v14 = (v14 + 2);
          v15 -= 16;
        }

        v18 = v13 << v15;
        v19 = *(v6 + 2 * ((v13 << v15) >> 23));
        v20 = (v19 >> 10) & 0x1F;
        v15 += v20;
        v16 += v20;
        if (v19 > 0x8000)
        {
          goto LABEL_16;
        }

        if ((v19 & 0x8000) != 0)
        {
          break;
        }

        v21 = v19 & 0xF;
        if (v21)
        {
          goto LABEL_19;
        }

LABEL_16:
        if (v16 > v11)
        {
          goto LABEL_22;
        }

LABEL_10:
        v17 = v28[v16];
        v28[v16] = v17 + 1;
        if (v17)
        {
          goto LABEL_25;
        }
      }

      v22 = *(v6 + 2 * (HIWORD(v18) & 0x3FF));
      v23 = (v22 >> 10) & 0x1F;
      v15 += v23;
      v16 += v23;
      v21 = v22 & 0xF;
      if (!v21)
      {
        goto LABEL_16;
      }

LABEL_19:
      if (v15 >= 16)
      {
        v13 = (v13 << 16) | (*v14 << 8) | *(v14 + 1);
        v14 = (v14 + 2);
        v15 -= 16;
      }

      v15 += v21;
      v16 += v21;
      if (v16 <= v11)
      {
        goto LABEL_10;
      }

LABEL_22:
      if (v16 <= v7)
      {
        if (!v10)
        {
          *(a3 + 36) = v13;
          *(a3 + 34) = v15;
          v12 = v14;
          *(a3 + 40) = v14;
        }

        goto LABEL_10;
      }

LABEL_25:
      if (v10 && v16 > v7)
      {
        break;
      }
    }

    if (++v10 == 32)
    {
      v24 = *(a3 + 36);
      v25 = *(a3 + 34);
      if (v25 >= 8)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  v24 = *(a3 + 36);
  *(a3 + 32) = *(a3 + 33);
  v25 = 32;
  v12 = v5;
  do
  {
LABEL_29:
    v26 = v25;
    v27 = *v12;
    v12 = (v12 + 1);
    v24 = v27 | (v24 << 8);
    v25 -= 8;
  }

  while (v26 > 0xF);
LABEL_30:
  *(a3 + 36) = v24;
  *(a3 + 34) = v25;
  *(a3 + 40) = v12;
}

uint64_t sub_2337B9F4C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 568);
  v4 = *(a3 + 64);
  v5 = *(a3 + 20);
  v6 = *(a3 + 18);
  v7 = *(a3 + 24);
  v8 = *(a3 + 40);
  if (v7 < v8 - 20)
  {
    v9 = *(a3 + 64);
    while (1)
    {
      if (v6 >= 16)
      {
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v6 -= 16;
      }

      v12 = v5 << v6;
      v13 = *(v3 + 2 * ((v5 << v6) >> 23));
      v14 = ((v13 >> 10) & 0x1F) + v6;
      if (v13 > 0x8000)
      {
        *v9 = v13;
        v17 = v14 - 16;
        if (v14 < 16)
        {
          goto LABEL_16;
        }

LABEL_15:
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v14 = v17;
        goto LABEL_16;
      }

      if ((v13 & 0x8000) != 0)
      {
        v13 = *(v3 + 2 * (HIWORD(v12) & 0x3FF));
        v14 += (v13 >> 10) & 0x1F;
        v15 = v13 & 0x1F;
        if ((v13 & 0x1F) == 0)
        {
LABEL_41:
          *v9 = (v13 << 8) & 0x8000;
          v17 = v14 - 16;
          if (v14 >= 16)
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v15 = v13 & 0x1F;
        if ((v13 & 0x1F) == 0)
        {
          goto LABEL_41;
        }
      }

      if (v14 >= 16)
      {
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v14 -= 16;
      }

      v16 = ((v5 << v14) >> -v15) - ((((v5 << v14) >> 31) - 1) >> -v15);
      v14 += v15;
      *v9 = v16;
      v17 = v14 - 16;
      if (v14 >= 16)
      {
        goto LABEL_15;
      }

LABEL_16:
      v18 = v5 << v14;
      v19 = *(v3 + 2 * ((v5 << v14) >> 23));
      v20 = ((v19 >> 10) & 0x1F) + v14;
      if (v19 > 0x8000)
      {
        v9[1] = v19;
        v23 = v20 - 16;
        if (v20 < 16)
        {
          goto LABEL_25;
        }

LABEL_24:
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v20 = v23;
        goto LABEL_25;
      }

      if ((v19 & 0x8000) != 0)
      {
        v19 = *(v3 + 2 * (HIWORD(v18) & 0x3FF));
        v20 += (v19 >> 10) & 0x1F;
        v21 = v19 & 0x1F;
        if ((v19 & 0x1F) == 0)
        {
LABEL_44:
          v9[1] = (v19 << 8) & 0x8000;
          v23 = v20 - 16;
          if (v20 >= 16)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v21 = v19 & 0x1F;
        if ((v19 & 0x1F) == 0)
        {
          goto LABEL_44;
        }
      }

      if (v20 >= 16)
      {
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v20 -= 16;
      }

      v22 = ((v5 << v20) >> -v21) - ((((v5 << v20) >> 31) - 1) >> -v21);
      v20 += v21;
      v9[1] = v22;
      v23 = v20 - 16;
      if (v20 >= 16)
      {
        goto LABEL_24;
      }

LABEL_25:
      v24 = v5 << v20;
      v25 = *(v3 + 2 * ((v5 << v20) >> 23));
      v26 = ((v25 >> 10) & 0x1F) + v20;
      if (v25 > 0x8000)
      {
        v9[2] = v25;
        v29 = v26 - 16;
        if (v26 < 16)
        {
          goto LABEL_34;
        }

LABEL_33:
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v26 = v29;
        goto LABEL_34;
      }

      if ((v25 & 0x8000) != 0)
      {
        v25 = *(v3 + 2 * (HIWORD(v24) & 0x3FF));
        v26 += (v25 >> 10) & 0x1F;
        v27 = v25 & 0x1F;
        if ((v25 & 0x1F) == 0)
        {
LABEL_47:
          v9[2] = (v25 << 8) & 0x8000;
          v29 = v26 - 16;
          if (v26 >= 16)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v27 = v25 & 0x1F;
        if ((v25 & 0x1F) == 0)
        {
          goto LABEL_47;
        }
      }

      if (v26 >= 16)
      {
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v26 -= 16;
      }

      v28 = ((v5 << v26) >> -v27) - ((((v5 << v26) >> 31) - 1) >> -v27);
      v26 += v27;
      v9[2] = v28;
      v29 = v26 - 16;
      if (v26 >= 16)
      {
        goto LABEL_33;
      }

LABEL_34:
      v30 = v5 << v26;
      v10 = *(v3 + 2 * ((v5 << v26) >> 23));
      result = (v10 >> 10) & 0x1F;
      v6 = result + v26;
      if (v10 > 0x8000)
      {
        LOWORD(v10) = v10;
      }

      else
      {
        if ((v10 & 0x8000) != 0)
        {
          v10 = *(v3 + 2 * (HIWORD(v30) & 0x3FF));
          v6 += (v10 >> 10) & 0x1F;
          v31 = v10 & 0x1F;
          if ((v10 & 0x1F) != 0)
          {
LABEL_37:
            if (v6 >= 16)
            {
              v5 = (v5 << 16) | (*v7 << 8) | v7[1];
              v7 += 2;
              v6 -= 16;
            }

            result = -v31;
            v10 = ((v5 << v6) >> -v31) - ((((v5 << v6) >> 31) - 1) >> -v31);
            v6 += v31;
            goto LABEL_4;
          }
        }

        else
        {
          v31 = v10 & 0x1F;
          if ((v10 & 0x1F) != 0)
          {
            goto LABEL_37;
          }
        }

        LOWORD(v10) = (v10 << 8) & 0x8000;
      }

LABEL_4:
      v11 = v9 + 4;
      v9[3] = v10;
      v9 += 4;
      if (v7 >= v8 - 20)
      {
        goto LABEL_52;
      }
    }
  }

  v11 = *(a3 + 64);
LABEL_52:
  *(a3 + 48) = 0;
  while (v7 <= v8)
  {
    if (v6 >= 16)
    {
      v5 = (v5 << 16) | (*v7 << 8) | v7[1];
      v7 += 2;
      v6 -= 16;
    }

    v32 = *(v3 + 2 * ((v5 << v6) >> 23));
    v33 = ((v32 >> 10) & 0x1F) + v6;
    if (v32 > 0x8000)
    {
      *v11++ = v32;
      if (v33 >= 8)
      {
        goto LABEL_67;
      }

LABEL_70:
      v6 = v33;
      if (v7 == v8)
      {
LABEL_71:
        v38 = *(a3 + 34);
        if (v6 >= v38)
        {
          v39 = v6 == v38;
          goto LABEL_74;
        }
      }
    }

    else
    {
      if ((v32 & 0x8000) == 0)
      {
        v34 = v32 & 0x1F;
        if ((v32 & 0x1F) != 0)
        {
          goto LABEL_59;
        }

LABEL_66:
        *v11++ = (v32 << 8) & 0x8000;
        if (v33 >= 8)
        {
          goto LABEL_67;
        }

        goto LABEL_70;
      }

      v32 = *(v3 + 2 * (((v5 << v6) >> 16) & 0x3FF));
      v33 += (v32 >> 10) & 0x1F;
      v34 = v32 & 0x1F;
      if ((v32 & 0x1F) == 0)
      {
        goto LABEL_66;
      }

LABEL_59:
      if (v33 >= 16)
      {
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v33 -= 16;
      }

      result = (v5 << v33) >> -v34;
      v35 = result - ((((v5 << v33) >> 31) - 1) >> -v34);
      v33 += v34;
      *v11++ = v35;
      if (v33 < 8)
      {
        goto LABEL_70;
      }

      do
      {
LABEL_67:
        v36 = *v7++;
        v5 = v36 | (v5 << 8);
        v6 = v33 - 8;
        v37 = v33 > 0xF;
        v33 -= 8;
      }

      while (v37);
      if (v7 == v8)
      {
        goto LABEL_71;
      }
    }
  }

  v39 = 0;
LABEL_74:
  *(a3 + 72) = (v11 - v4) >> 1;
  *(a3 + 52) = v5;
  *(a3 + 50) = v6;
  *(a3 + 56) = v7;
  *(a3 + 48) = v39 & *(a3 + 32);
  *(a3 + 49) = *(a3 + 33);
  return result;
}

uint64_t sub_2337BA438(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8 * *(a3 + 12) + 568);
  v4 = *(a3 + 64);
  v5 = *(a3 + 20);
  v6 = *(a3 + 18);
  v7 = *(a3 + 24);
  v8 = *(a3 + 40);
  if (v7 < v8 - 12)
  {
    v9 = *(a3 + 64);
    while (1)
    {
      if (v6 >= 16)
      {
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v6 -= 16;
      }

      v12 = v5 << v6;
      v13 = *(v3 + 2 * ((v5 << v6) >> 23));
      v14 = ((v13 >> 10) & 0x1F) + v6;
      if (v13 > 0x8000)
      {
        *v9 = v13;
        v19 = v14 - 16;
        if (v14 < 16)
        {
          goto LABEL_19;
        }

LABEL_18:
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v14 = v19;
        goto LABEL_19;
      }

      if ((v13 & 0x8000) != 0)
      {
        v13 = *(v3 + 2 * (HIWORD(v12) & 0x3FF));
        v14 += (v13 >> 10) & 0x1F;
        v15 = v13 & 0xF;
        if ((v13 & 0xF) == 0)
        {
LABEL_27:
          *v9 = (v13 << 8) & 0x8000;
          v19 = v14 - 16;
          if (v14 >= 16)
          {
            goto LABEL_18;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v15 = v13 & 0xF;
        if ((v13 & 0xF) == 0)
        {
          goto LABEL_27;
        }
      }

      if (v14 >= 16)
      {
        v5 = (v5 << 16) | (*v7 << 8) | v7[1];
        v7 += 2;
        v14 -= 16;
      }

      v16 = (v13 >> 4) & 0x3F;
      v17 = ((v5 << v14) >> -v15) - ((((v5 << v14) >> 31) - 1) >> -v15);
      v14 += v15;
      if (v16)
      {
        v18 = ((((v17 << v16) >> 31) | 1) << (v16 - 1)) + (v17 << v16);
      }

      else
      {
        v18 = v17;
      }

      *v9 = v18;
      v19 = v14 - 16;
      if (v14 >= 16)
      {
        goto LABEL_18;
      }

LABEL_19:
      v20 = v5 << v14;
      v21 = *(v3 + 2 * ((v5 << v14) >> 23));
      result = (v21 >> 10) & 0x1F;
      v6 = result + v14;
      if (v21 > 0x8000)
      {
        LOWORD(v10) = v21;
      }

      else
      {
        if ((v21 & 0x8000) != 0)
        {
          v21 = *(v3 + 2 * (HIWORD(v20) & 0x3FF));
          v6 += (v21 >> 10) & 0x1F;
          result = v21 & 0xF;
          if ((v21 & 0xF) != 0)
          {
LABEL_22:
            if (v6 >= 16)
            {
              v5 = (v5 << 16) | (*v7 << 8) | v7[1];
              v7 += 2;
              v6 -= 16;
            }

            v22 = (v21 >> 4) & 0x3F;
            v10 = ((v5 << v6) >> -result) - ((((v5 << v6) >> 31) - 1) >> -result);
            v6 += result;
            if (v22)
            {
              v23 = v10 << v22;
              result = (v23 >> 31) | 1u;
              v10 = (result << (v22 - 1)) + v23;
            }

            goto LABEL_4;
          }
        }

        else
        {
          result = v21 & 0xF;
          if ((v21 & 0xF) != 0)
          {
            goto LABEL_22;
          }
        }

        LOWORD(v10) = (v21 << 8) & 0x8000;
      }

LABEL_4:
      v11 = v9 + 2;
      v9[1] = v10;
      v9 += 2;
      if (v7 >= v8 - 12)
      {
        goto LABEL_32;
      }
    }
  }

  v11 = *(a3 + 64);
LABEL_32:
  *(a3 + 48) = 0;
  while (v7 <= v8)
  {
    if (v6 >= 16)
    {
      v5 = (v5 << 16) | (*v7 << 8) | v7[1];
      v7 += 2;
      v6 -= 16;
    }

    v24 = *(v3 + 2 * ((v5 << v6) >> 23));
    v25 = ((v24 >> 10) & 0x1F) + v6;
    if (v24 > 0x8000)
    {
      LOWORD(v24) = v24;
      goto LABEL_45;
    }

    if ((v24 & 0x8000) != 0)
    {
      v24 = *(v3 + 2 * (((v5 << v6) >> 16) & 0x3FF));
      v25 += (v24 >> 10) & 0x1F;
      v26 = v24 & 0xF;
      if ((v24 & 0xF) == 0)
      {
LABEL_50:
        *v11++ = (v24 << 8) & 0x8000;
        if (v25 >= 8)
        {
          goto LABEL_46;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v26 = v24 & 0xF;
      if ((v24 & 0xF) == 0)
      {
        goto LABEL_50;
      }
    }

    if (v25 >= 16)
    {
      v5 = (v5 << 16) | (*v7 << 8) | v7[1];
      v7 += 2;
      v25 -= 16;
    }

    v27 = (v24 >> 4) & 0x3F;
    result = -v26;
    v24 = ((v5 << v25) >> -v26) - ((((v5 << v25) >> 31) - 1) >> -v26);
    v25 += v26;
    if (v27)
    {
      *v11++ = ((((v24 << v27) >> 31) | 1) << (v27 - 1)) + (v24 << v27);
      if (v25 < 8)
      {
        goto LABEL_51;
      }

      do
      {
LABEL_46:
        v28 = *v7++;
        v5 = v28 | (v5 << 8);
        v6 = v25 - 8;
        v29 = v25 > 0xF;
        v25 -= 8;
      }

      while (v29);
      if (v7 == v8)
      {
        goto LABEL_52;
      }
    }

    else
    {
LABEL_45:
      *v11++ = v24;
      if (v25 >= 8)
      {
        goto LABEL_46;
      }

LABEL_51:
      v6 = v25;
      if (v7 == v8)
      {
LABEL_52:
        v30 = *(a3 + 34);
        if (v6 >= v30)
        {
          v31 = v6 == v30;
          goto LABEL_55;
        }
      }
    }
  }

  v31 = 0;
LABEL_55:
  *(a3 + 72) = (v11 - v4) >> 1;
  *(a3 + 52) = v5;
  *(a3 + 50) = v6;
  *(a3 + 56) = v7;
  *(a3 + 48) = v31 & *(a3 + 32);
  *(a3 + 49) = *(a3 + 33);
  return result;
}

intptr_t sub_2337BA7DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 + 856;
  v3 = v1 + 888;
  v124 = (v1 + 744);
  v117 = *(v1 + 616);
  do
  {
LABEL_3:
    v4 = atomic_load((v1 + 1148));
    if ((v4 & 0x80000000) != 0)
    {
LABEL_9:
      v10 = 0;
      v11 = atomic_load((v1 + 1152));
      v122 = v11;
      v12 = atomic_load((v1 + 1152));
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_72;
      }

LABEL_10:
      v13 = 0;
LABEL_13:
      while (2)
      {
        v15 = v12 & 0x1F;
        v16 = atomic_load((v2 + v15));
        if (v16 == 4)
        {
          v17 = *(v3 + 8 * v15);
          v18 = v12;
          atomic_compare_exchange_strong((v1 + 1152), &v18, v12 | 0x80000000);
          if (v18 == v12)
          {
            v121 = v13;
            atomic_store(5u, (v2 + v15));
            sub_2337BB714(v1, a1, v17);
            v19 = *(v1 + 596);
            v20 = *(v17 + 64);
            v21 = *(v1 + 808);
            v22 = *(v1 + 816);
            v23 = v22 + *(v17 + 72);
            v24 = *(v1 + 776) + v23;
            v25 = *(v1 + 552);
            v26 = v25 - (*(v1 + 776) + v22);
            v27 = (v26 & (v26 >> 31)) + v22;
            v28 = v26 & ~(v26 >> 31);
            if (v25 >= v24)
            {
              v29 = v23 % v19;
            }

            else
            {
              v23 = v27 + v28;
              v29 = 0;
            }

            if (v25 < v24)
            {
              v30 = v27;
            }

            else
            {
              v30 = *(v1 + 816);
            }

            if (v25 < v24)
            {
              v31 = v28;
            }

            else
            {
              v31 = *(v17 + 72);
            }

            v32 = v23 >= v19 || v30 < 1;
            if (v32)
            {
              if (v30)
              {
                v33 = *v20++;
                *(v21 + 2 * v30++) = v33;
                --v31;
              }
            }

            else
            {
              v118 = *(v1 + 808);
              v119 = v30;
              v120 = v29;
              memmove(&v20[v119], v20, 2 * v31);
              memmove(v20, v118, v119 * 2);
              v29 = v120;
              v21 = 0;
              v31 += v30;
              v30 = 0;
            }

            *(v1 + 784) = v20;
            *(v1 + 792) = v31 - v29;
            *(v1 + 808) = v21;
            *(v1 + 816) = v30;
            *(v17 + 80) = *(v1 + 776);
            v34 = *(v1 + 792);
            v35 = *(v1 + 808);
            v36 = *(v1 + 840);
            *(v17 + 128) = *(v1 + 824);
            *(v17 + 144) = v36;
            *(v17 + 96) = v34;
            *(v17 + 112) = v35;
            if (v29 <= 0)
            {
              v37 = 1;
            }

            else
            {
              v37 = 2;
            }

            atomic_store(v37, (v17 + 8));
            v38 = *(v1 + 816);
            v39 = 808;
            if (!v38)
            {
              v39 = 784;
            }

            v40 = *(v1 + v39);
            v41 = *(v1 + 824);
            v42 = *(v1 + 832);
            v43 = *(v1 + 776);
            if (*(v1 + 792) + v38 < 1)
            {
              v48 = v121;
              goto LABEL_53;
            }

            v44 = v43 + v38;
            if (v38)
            {
              v45 = 0;
            }

            else
            {
              v45 = *(v1 + 792);
            }

            v46 = v45 + v44;
            v47 = *(v1 + 776);
            v48 = v121;
            while (1)
            {
              if (v43 == v46)
              {
                if (v43 != v44)
                {
                  goto LABEL_53;
                }

                v40 = *(v1 + 784);
                v51 = *(v1 + 792);
                if (!v51)
                {
                  v43 = v44;
LABEL_53:
                  *(v1 + 776) = v43;
                  *(v1 + 824) = v41;
                  *(v1 + 832) = v42;
                  *(v1 + 784) = 0;
                  *(v1 + 792) = 0;
                  *(v1 + 800) = 0;
                  *(v1 + 808) = 0;
                  *(v1 + 816) = 0;
                  if (v29 >= 1)
                  {
                    *(v1 + 800) = v17;
                    *(v1 + 808) = v40;
                    *(v1 + 816) = v29;
                  }

                  v54 = *(v17 + 56) - *(v17 + 24) + *(v1 + 648);
                  *(v1 + 648) = v54;
                  *(v1 + 760) = *(v17 + 48);
                  v55 = *(v1 + 656);
                  for (i = v54 - v55; ; i = *(v1 + 648) - v55)
                  {
                    v57 = *(v1 + 680);
                    if (v57 > i)
                    {
                      break;
                    }

                    *(v1 + 656) = v55 + v57;
                    if (atomic_fetch_add((v1 + 712), 1u) == -1)
                    {
                      dispatch_semaphore_signal(*(v1 + 720));
                    }

                    v55 = *(v1 + 656);
                  }

                  atomic_store(6u, (v2 + v15));
                  atomic_fetch_add((v1 + 1152), 0x80000001);
                  if (v48)
                  {
                    do
                    {
                      v58 = atomic_load((v1 + 1192));
                      if (v58 < 2)
                      {
                        goto LABEL_64;
                      }

                      v59 = v58;
                      atomic_compare_exchange_strong((v1 + 1192), &v59, v58 - 1);
                    }

                    while (v59 != v58);
                    dispatch_semaphore_signal(*(v1 + 1200));
                  }

LABEL_64:
                  v13 = v48 + 1;
                  v12 = atomic_load((v1 + 1152));
                  v10 = 1;
                  if ((v12 & 0x80000000) != 0)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_13;
                }

                v46 = v51 + v44;
              }

              if (v43 == v47)
              {
                v52 = (v1 + 836 + 4 * v42);
                v53 = v52[1] + v40[1];
                *v52 += *v40;
                v52[1] = v53;
                v42 ^= 2u;
                v47 = v43 + v19;
              }

              if (v47 >= v46)
              {
                v49 = v46;
              }

              else
              {
                v49 = v47;
              }

              v50 = 2 * (v49 - v43);
              v40 = (v40 + v50);
              v41 += v50;
              v43 = v49;
            }
          }
        }

        else
        {
          __dmb(0xBu);
          v14 = atomic_load((v1 + 1152));
          if (v12 == v14)
          {
            goto LABEL_72;
          }
        }

        v12 = atomic_load((v1 + 1152));
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_72;
        }

        continue;
      }
    }

    while (1)
    {
      v7 = v4 & 0x1F;
      v8 = atomic_load((v2 + v7));
      if (v8 == 2)
      {
        break;
      }

      __dmb(0xBu);
      v9 = atomic_load((v1 + 1148));
      if (v4 == v9)
      {
        goto LABEL_9;
      }

LABEL_6:
      v4 = atomic_load((v1 + 1148));
      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_9;
      }
    }

    v5 = *(v3 + 8 * v7);
    v6 = v4;
    atomic_compare_exchange_strong((v1 + 1148), &v6, v4 + 1);
    if (v6 != v4)
    {
      goto LABEL_6;
    }

    v60 = (v2 + v7);
    atomic_store(3u, (v2 + v7));
    if (*(v5 + 16) == 1 && (*(v5 + 17) & 1) == 0)
    {
      v117(v1, a1);
    }

    atomic_store(4u, v60);
    v10 = 1;
    v61 = atomic_load((v1 + 1152));
    v122 = v61;
    v12 = atomic_load((v1 + 1152));
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    while (1)
    {
LABEL_72:
      v63 = atomic_load((v1 + 1156));
      if ((v63 & 0x80000000) != 0)
      {
LABEL_78:
        v69 = v122;
        if ((v10 & 1) == 0)
        {
          v70 = atomic_load((v1 + 1152));
          if (v122 != v70)
          {
            goto LABEL_153;
          }

          v71 = atomic_load((v1 + 1192));
          if (v71 <= 0)
          {
            v84 = atomic_load((v1 + 1180));
            if (v84 > 0)
            {
              goto LABEL_153;
            }
          }

          v72 = *(v1 + 1164);
          v73 = *(v1 + 1168);
          v74 = atomic_load((v1 + 1152));
          if (v122 != v74)
          {
            goto LABEL_153;
          }

          v75 = 0;
          while (1)
          {
            v77 = atomic_load((v1 + 1192));
            if (v77 <= 0)
            {
              v78 = atomic_load((v1 + 1180));
              if (v78 > 0)
              {
                break;
              }
            }

            add = atomic_fetch_add((v1 + 1160), 0xFFFFFFFF);
            v80 = __OFSUB__(add, 1);
            v81 = add - 1;
            if (v81 < 0 != v80)
            {
              break;
            }

            v82 = (v73 + (v81 << v72));
            if (v82 >= *v1 && v82 < *(v1 + 8))
            {
              v83 = NSPageSize();
              madvise(v82, v83, 3);
              v69 = v122;
            }

            v76 = atomic_load((v1 + 1152));
            --v75;
            if (v69 != v76)
            {
              goto LABEL_3;
            }
          }

          if (!v75)
          {
LABEL_153:
            if (atomic_fetch_add((v1 + 1192), 1u))
            {
              dispatch_semaphore_wait(*(v1 + 1200), 0xFFFFFFFFFFFFFFFFLL);
            }

            else
            {
              while (1)
              {
                if (*(v1 + 640) + *(v1 + 548) + 4 >= *(v1 + 632))
                {
                  v90 = *(v1 + 632);
                }

                else
                {
                  v90 = *(v1 + 640) + *(v1 + 548) + 4;
                }

                v91 = *(v1 + 664);
                while (v90 > v91)
                {
                  if (atomic_fetch_add((v1 + 728), 0xFFFFFFFF) <= 0)
                  {
                    dispatch_semaphore_wait(*(v1 + 736), 0xFFFFFFFFFFFFFFFFLL);
                  }

                  v91 = *(v1 + 664) + *(v1 + 680);
                  *(v1 + 664) = v91;
                  v92 = *(v1 + 672);
                  if (v91 > v92)
                  {
                    *(v1 + 672) = v92 + *(v1 + 688);
                  }
                }

                if (atomic_fetch_add((v1 + 1180), 0xFFFFFFFF) <= 0)
                {
                  dispatch_semaphore_wait(*(v1 + 1184), 0xFFFFFFFFFFFFFFFFLL);
                }

                do
                {
                  v93 = atomic_load((v1 + 1176));
                  v94 = v93;
                  atomic_compare_exchange_strong((v1 + 1176), &v94, (v93 - 1) & v93);
                }

                while (v94 != v93);
                v95 = *(v1 + 288 + 8 * __clz(__rbit32(v93)));
                v96 = atomic_fetch_add((v1 + 1144), 1u);
                *v95 = v96;
                v97 = v96 & 0x1F;
                *(v3 + 8 * v97) = v95;
                atomic_store(0, (v2 + ((v96 + 1) & 0x1F)));
                atomic_store(1u, (v2 + v97));
                v98 = *(v1 + 548);
                v99 = *(v1 + 640);
                v100 = v99 + v98;
                v101 = *(v1 + 632);
                v102 = v101 - v99;
                v32 = v100 < v101;
                v103 = v100 >= v101;
                if (!v32)
                {
                  v98 = v102;
                }

                *(v95 + 1) = *v124;
                *(v95 + 32) = 0;
                v104 = v95 + 8;
                *(v95 + 33) = v103;
                *(v95 + 17) = 32;
                *(v95 + 5) = *(v95 + 3) + v98;
                if (v98 < 1 || (v105 = atomic_load((v1 + 556)), v105 < 1) || *(v95 + 17) == 1)
                {
                  *v104 = *(v95 + 1);
                  *(v95 + 16) = 257;
                  *(v95 + 3) = *v104;
                  v95[18] = 0;
                }

                else
                {
                  v85 = *(v95 + 5);
                  v86 = *(v1 + 704);
                  if (v85 + 4 > v86)
                  {
                    v87 = &v86[-*(v95 + 3)];
                    v88 = v85 - v86 + 4;
                    if (v88 <= v87)
                    {
                      memmove(v86, *(v1 + 696), v88);
                    }

                    else
                    {
                      memmove((*(v1 + 696) - v87), &v86[-v87], v87);
                      v89 = *(v1 + 688);
                      *(v95 + 3) -= v89;
                      *(v95 + 5) -= v89;
                    }
                  }
                }

                v106 = *v95;
                v107 = *(v1 + 604);
                v95[3] = *v95 >= v107;
                if ((*(v95 + 17) & 1) == 0 && (v106 < v107 || *(v95 + 33) == 1))
                {
                  (*(v1 + 608))(v1, a1, v95);
                  if ((v95[8] & 1) == 0)
                  {
                    v108 = *(v95 + 5) - 128;
                    if (v108 < *(v95 + 3))
                    {
                      v108 = *(v95 + 3);
                    }

                    *(v95 + 5) = v108;
                    (*(v1 + 608))(v1, a1, v95);
                    if ((v95[8] & 1) == 0)
                    {
                      v109 = *(v95 + 5) - 128;
                      if (v109 < *(v95 + 3))
                      {
                        v109 = *(v95 + 3);
                      }

                      *(v95 + 5) = v109;
                      (*(v1 + 608))(v1, a1, v95);
                      if ((v95[8] & 1) == 0)
                      {
                        v110 = *(v95 + 5) - 128;
                        if (v110 < *(v95 + 3))
                        {
                          v110 = *(v95 + 3);
                        }

                        *(v95 + 5) = v110;
                        (*(v1 + 608))(v1, a1, v95);
                        if ((v95[8] & 1) == 0)
                        {
                          v111 = *(v95 + 5) - 128;
                          if (v111 < *(v95 + 3))
                          {
                            v111 = *(v95 + 3);
                          }

                          *(v95 + 5) = v111;
                          (*(v1 + 608))(v1, a1, v95);
                          if ((v95[8] & 1) == 0)
                          {
                            v112 = *(v95 + 5) - 128;
                            if (v112 < *(v95 + 3))
                            {
                              v112 = *(v95 + 3);
                            }

                            *(v95 + 5) = v112;
                            (*(v1 + 608))(v1, a1, v95);
                            if ((v95[8] & 1) == 0)
                            {
                              v113 = *(v95 + 5) - 128;
                              if (v113 < *(v95 + 3))
                              {
                                v113 = *(v95 + 3);
                              }

                              *(v95 + 5) = v113;
                              (*(v1 + 608))(v1, a1, v95);
                              if ((v95[8] & 1) == 0)
                              {
                                v114 = *(v95 + 5) - 128;
                                if (v114 < *(v95 + 3))
                                {
                                  v114 = *(v95 + 3);
                                }

                                *(v95 + 5) = v114;
                                (*(v1 + 608))(v1, a1, v95);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                *(v1 + 640) += *(v95 + 5) - *(v95 + 3);
                *v124 = *v104;
                v115 = *(v1 + 752);
                if (v115 >= *(v1 + 704))
                {
                  *(v1 + 752) = v115 - *(v1 + 688);
                }

                atomic_store(2u, (v2 + v97));
                if (atomic_fetch_add((v1 + 1192), 0xFFFFFFFF) < 2)
                {
                  break;
                }

                dispatch_semaphore_signal(*(v1 + 1200));
              }
            }
          }
        }

        goto LABEL_3;
      }

      v64 = atomic_load((v2 + (v63 & 0x1F)));
      if (v64 == 6)
      {
        break;
      }

      __dmb(0xBu);
      v62 = atomic_load((v1 + 1156));
      if (v63 == v62)
      {
        goto LABEL_78;
      }
    }

    v65 = *(v3 + 8 * (v63 & 0x1F));
    v66 = v63;
    atomic_compare_exchange_strong((v1 + 1156), &v66, v63 + 1);
    if (v66 != v63)
    {
      goto LABEL_72;
    }

    result = sub_2337BBB9C(v1, v65);
    v68 = *(v65 + 17);
    if (atomic_fetch_add((v65 + 8), 0xFFFFFFFF) <= 1)
    {
      atomic_fetch_or((v1 + 1176), 1 << *(v65 + 4));
      if ((atomic_fetch_add((v1 + 1180), 1u) & 0x80000000) != 0)
      {
        result = dispatch_semaphore_signal(*(v1 + 1184));
      }
    }
  }

  while ((v68 & 1) == 0);
  atomic_store(1u, (v1 + 561));
  if (atomic_fetch_add((v1 + 712), 1u) == -1)
  {
    v116 = *(v1 + 720);

    return dispatch_semaphore_signal(v116);
  }

  return result;
}

intptr_t sub_2337BB264(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 8);
  v4 = (v3 + 744);
  v38 = *(v3 + 616);
  do
  {
    if (*(v3 + 640) + *(v3 + 548) + 4 >= *(v3 + 632))
    {
      v5 = *(v3 + 632);
    }

    else
    {
      v5 = *(v3 + 640) + *(v3 + 548) + 4;
    }

    v6 = *(v3 + 664);
    while (v5 > v6)
    {
      if (atomic_fetch_add((v3 + 728), 0xFFFFFFFF) <= 0)
      {
        dispatch_semaphore_wait(*(v3 + 736), 0xFFFFFFFFFFFFFFFFLL);
      }

      v6 = *(v3 + 664) + *(v3 + 680);
      *(v3 + 664) = v6;
      v7 = *(v3 + 672);
      if (v6 > v7)
      {
        *(v3 + 672) = v7 + *(v3 + 688);
      }
    }

    if (atomic_fetch_add((v3 + 1180), 0xFFFFFFFF) <= 0)
    {
      dispatch_semaphore_wait(*(v3 + 1184), 0xFFFFFFFFFFFFFFFFLL);
    }

    do
    {
      v8 = atomic_load((v3 + 1176));
      v9 = v8;
      atomic_compare_exchange_strong((v3 + 1176), &v9, (v8 - 1) & v8);
    }

    while (v9 != v8);
    v10 = *(v3 + 288 + 8 * __clz(__rbit32(v8)));
    *v10 = v2;
    v11 = *(v3 + 548);
    v12 = *(v3 + 640);
    v13 = v12 + v11;
    v14 = *(v3 + 632);
    v15 = v14 - v12;
    v16 = v13 < v14;
    v17 = v13 >= v14;
    if (!v16)
    {
      v11 = v15;
    }

    *(v10 + 16) = *v4;
    *(v10 + 32) = 0;
    v18 = (v10 + 32);
    *(v10 + 33) = v17;
    *(v10 + 34) = 32;
    *(v10 + 40) = *(v10 + 24) + v11;
    if (v11 < 1 || (v19 = atomic_load((v3 + 556)), v19 < 1) || *(v10 + 17) == 1)
    {
      *v18 = *(v10 + 16);
      *(v10 + 32) = 257;
      *(v10 + 48) = *v18;
      *(v10 + 72) = 0;
    }

    else
    {
      v32 = *(v10 + 40);
      v33 = *(v3 + 704);
      if (v32 + 4 > v33)
      {
        v34 = &v33[-*(v10 + 24)];
        v35 = v32 - v33 + 4;
        if (v35 <= v34)
        {
          memmove(v33, *(v3 + 696), v35);
        }

        else
        {
          memmove((*(v3 + 696) - v34), &v33[-v34], v34);
          v36 = *(v3 + 688);
          *(v10 + 24) -= v36;
          *(v10 + 40) -= v36;
        }
      }
    }

    if (*(v10 + 17) == 1)
    {
      v20 = *(v10 + 40);
    }

    else
    {
      v20 = *(v10 + 40);
      if (*(v10 + 33) == 1)
      {
        v21 = *(v10 + 36);
        v22 = *(v10 + 34);
        if (v22 >= 8)
        {
          do
          {
            v23 = v22;
            v24 = *v20++;
            v21 = v24 | (v21 << 8);
            v22 -= 8;
          }

          while (v23 > 0xF);
        }

        *(v10 + 36) = v21;
        *(v10 + 34) = v22;
        *(v10 + 40) = v20;
      }
    }

    *(v3 + 640) += &v20[-*(v10 + 24)];
    *v4 = *v18;
    v25 = *(v3 + 752);
    if (v25 >= *(v3 + 704))
    {
      *(v3 + 752) = v25 - *(v3 + 688);
    }

    if (*(v10 + 16) == 1 && (*(v10 + 17) & 1) == 0)
    {
      v38(v3, a1, v10);
    }

    sub_2337BB714(v3, a1, v10);
    sub_2337BB96C(v3, v10);
    v26 = *(v10 + 56) - *(v10 + 24) + *(v3 + 648);
    *(v3 + 648) = v26;
    *(v3 + 760) = *(v10 + 48);
    v27 = *(v3 + 656);
    for (i = v26 - v27; ; i = *(v3 + 648) - v27)
    {
      v29 = *(v3 + 680);
      if (v29 > i)
      {
        break;
      }

      *(v3 + 656) = v27 + v29;
      if (atomic_fetch_add((v3 + 712), 1u) == -1)
      {
        dispatch_semaphore_signal(*(v3 + 720));
      }

      v27 = *(v3 + 656);
    }

    result = sub_2337BBB9C(v3, v10);
    v31 = *(v10 + 17);
    if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) <= 1)
    {
      atomic_fetch_or((v3 + 1176), 1 << *(v10 + 4));
      if ((atomic_fetch_add((v3 + 1180), 1u) & 0x80000000) != 0)
      {
        result = dispatch_semaphore_signal(*(v3 + 1184));
      }
    }

    ++v2;
  }

  while (!v31);
  atomic_store(1u, (v3 + 561));
  if (atomic_fetch_add((v3 + 712), 1u) == -1)
  {
    v37 = *(v3 + 720);

    return dispatch_semaphore_signal(v37);
  }

  return result;
}

void sub_2337BB664(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337BB69C(uint64_t result)
{
  v1 = *(result + 8);
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

uint64_t sub_2337BB714(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 816) + *(result + 776);
  v5 = *(result + 600);
  v6 = v4 >= v5;
  if (*(result + 562))
  {
    v7 = 1;
  }

  else
  {
    v8 = *(a3 + 72) + v4 > v5;
    v9 = *(a3 + 12);
    v7 = v9 == v6 && v9 == v8;
  }

  v11 = (a3 + 16);
  v12 = v7 & *(a3 + 16) & *(result + 760);
  *(a3 + 16) = v12;
  if ((v12 & 1) == 0)
  {
    *(a3 + 12) = v6;
    *v11 = *(result + 760);
    if (*(a3 + 17))
    {
      if (*(result + 560) == 1)
      {
        *(a3 + 72) = 0;
        v13 = *v11;
        *(a3 + 32) = *v11;
        *(a3 + 48) = v13;
      }
    }

    else
    {
      v14 = *(a3 + 24);
      if (v14 < *(result + 696))
      {
        v14 += *(result + 688);
        *(a3 + 24) = v14;
      }

      if (v14 > *(a3 + 40))
      {
        *(a3 + 24) = v14 - *(result + 688);
      }

      v15 = result;
      v16 = a3;
      (*(result + 616))(result, a2);
      result = v15;
      a3 = v16;
      if (!v7)
      {
        v17 = *(v15 + 600);
        v18 = *(v16 + 72) + v4 > v17;
        v19 = *(v16 + 12);
        if (v19 != v18)
        {
          v20 = *(v16 + 64);
          v21 = v17 - v4;
          *(v16 + 72) = v21;
          v22 = *(v16 + 20);
          v23 = *(v16 + 18);
          v24 = *(v16 + 24);
          if (v21 >= 1)
          {
            v25 = *(v15 + 8 * v19 + 568);
            v26 = v21;
            do
            {
              if (v23 >= 16)
              {
                v22 = (v22 << 16) | (*v24 << 8) | v24[1];
                v24 += 2;
                v23 -= 16;
              }

              v27 = v22 << v23;
              v28 = *(v25 + 2 * ((v22 << v23) >> 23));
              v23 += (v28 >> 10) & 0x1F;
              if (v28 <= 0x8000)
              {
                if ((v28 & 0x8000) != 0)
                {
                  v28 = *(v25 + 2 * (HIWORD(v27) & 0x3FF));
                  v23 += (v28 >> 10) & 0x1F;
                }

                v29 = v28 & 0xF;
                if (v29)
                {
                  if (v23 >= 16)
                  {
                    v22 = (v22 << 16) | (*v24 << 8) | v24[1];
                    v24 += 2;
                    v23 -= 16;
                  }

                  v23 += v29;
                }
              }

              --v26;
            }

            while (v26);
          }

          *(v16 + 20) = v22;
          *(v16 + 18) = v23;
          *(v16 + 24) = v24;
          *(v16 + 12) = v18;
          *(v16 + 64) = v20 + 2 * v21;
          (*(v15 + 616))(v15, a2, v16);
          result = v15;
          a3 = v16;
          *(v16 + 64) = v20;
          *(v16 + 72) += v21;
        }
      }
    }
  }

  atomic_fetch_add((result + 556), -*(a3 + 72));
  return result;
}