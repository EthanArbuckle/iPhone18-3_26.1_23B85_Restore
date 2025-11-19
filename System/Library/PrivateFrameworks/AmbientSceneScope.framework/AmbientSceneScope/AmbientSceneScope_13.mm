void *sub_23F048C00(uint64_t a1, void *a2, uint64_t a3)
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

  a2[6] = v3 + 4;
  sub_23F294FCC(a2);
  sub_23F048D1C(&v13, a2, a3 + 8);
  v13 = "src";
  v14 = 3;
  v15 = a3 + 120;
  sub_23EF67B1C(a2, &v13);
  v13 = "dst";
  v14 = 3;
  v15 = a3 + 152;
  result = sub_23EF67B1C(a2, &v13);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

void sub_23F048D1C(uint64_t a1, void *a2, uint64_t a3)
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
  sub_23F294FCC(a2);
  sub_23F048DF8(a2, a3);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
}

double sub_23F048DF8(void *a1, uint64_t a2)
{
  v2 = a1[6];
  if (a1[7] <= v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v3 = *(a1[3] + v2);
  a1[6] = v2 + 1;
  *a2 = v3;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      if (*(a2 + 104))
      {
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 0;
      }

      v6 = a2 + 8;

      *&result = sub_23F0491B4(a1, v6).n128_u64[0];
    }

    else if (v3 == 5)
    {
      if (*(a2 + 104) != 1)
      {
        *(a2 + 88) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 1;
      }

      v5 = (a2 + 8);

      *&result = sub_23F0492F8(a1, v5).n128_u64[0];
    }
  }

  else if (v3 == 1)
  {

    sub_23F048F6C(a1, a2);
  }

  else if (v3 == 2)
  {

    *&result = sub_23F04908C(a1, a2).n128_u64[0];
  }

  return result;
}

void *sub_23F048F6C(void *result, uint64_t a2)
{
  if (*(a2 + 104) != 2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 104) = 2;
  }

  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xB)
  {
    goto LABEL_10;
  }

  v6 = (result[3] + v2);
  v7 = *v6;
  *(a2 + 16) = *(v6 + 2);
  *(a2 + 8) = v7;
  v8 = result[7];
  v9 = result[6] + 12;
  result[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0xB)
  {
LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v11 = result[3] + v9;
  v12 = *v11;
  *(a2 + 28) = *(v11 + 8);
  *(a2 + 20) = v12;
  result[6] += 12;
  return result;
}

__n128 sub_23F04908C(void *a1, uint64_t a2)
{
  if (*(a2 + 104) != 3)
  {
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 104) = 3;
  }

  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0x17)
  {
    goto LABEL_10;
  }

  v6 = (a1[3] + v2);
  v7 = *v6;
  *(a2 + 24) = *(v6 + 2);
  *(a2 + 8) = v7;
  v8 = a1[7];
  v9 = a1[6] + 24;
  a1[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0x17)
  {
LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v11 = (a1[3] + v9);
  result = *v11;
  *(a2 + 48) = v11[1].n128_u64[0];
  *(a2 + 32) = result;
  a1[6] += 24;
  return result;
}

__n128 sub_23F0491B4(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_11;
  }

  *a2 = *(a1[3] + v2);
  v6 = a1[7];
  v7 = a1[6] + 16;
  a1[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_11;
  }

  *(a2 + 16) = *(a1[3] + v7);
  v9 = a1[7];
  v10 = a1[6] + 16;
  a1[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0xF)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  result = *(a1[3] + v10);
  *(a2 + 32) = result;
  a1[6] += 16;
  return result;
}

__n128 sub_23F0492F8(void *a1, _OWORD *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0x1F)
  {
    goto LABEL_11;
  }

  v6 = (a1[3] + v2);
  v7 = v6[1];
  *a2 = *v6;
  a2[1] = v7;
  v8 = a1[7];
  v9 = a1[6] + 32;
  a1[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0x1F)
  {
    goto LABEL_11;
  }

  v11 = (a1[3] + v9);
  v12 = v11[1];
  a2[2] = *v11;
  a2[3] = v12;
  v13 = a1[7];
  v14 = a1[6] + 32;
  a1[6] = v14;
  v4 = v13 >= v14;
  v15 = v13 - v14;
  if (!v4)
  {
    v15 = 0;
  }

  if (v15 <= 0x1F)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v16 = a1[3] + v14;
  result = *v16;
  v18 = *(v16 + 16);
  a2[4] = *v16;
  a2[5] = v18;
  a1[6] += 32;
  return result;
}

void sub_23F049448(int *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 1;
    (*(*a2 + 104))(a2, &v8);
    if (v8 >= 2)
    {
      v7 = v8;
      if ((atomic_load_explicit(&qword_27E3945D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3945D8))
      {
        sub_23F302BD0("cv3d::kit::viz::Transform3Sample]", 0x20uLL, &stru_27E3945C0);
        __cxa_guard_release(&qword_27E3945D8);
        sub_23F2FF068(&stru_27E3945C0, v7, 1u);
      }

      sub_23F2FF068(&stru_27E3945C0, v7, 1u);
    }

    v5 = *a1;
  }

  if (v5 <= 0)
  {
    sub_23F0495F0(a2, a3);
  }

  else
  {
    (*(*a2 + 16))(a2);
    sub_23F0495F0(a2, a3);
    (*(*a2 + 24))(a2);
  }
}

void sub_23F0495F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 1;
  (*(v4 + 104))(a1, &v6);
  if (v5 < 1)
  {
    sub_23F049988(a1, (a2 + 8));
  }

  else
  {
    sub_23F0497E0(&v5, a1, (a2 + 8));
  }

  v7 = 0;
  (*(*a1 + 80))(a1, &v7);
  if (v7)
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 1;
    }

    (*(*a1 + 144))(a1, a2 + 120);
  }

  else if (*(a2 + 144))
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 144) = 0;
  }

  v8 = 0;
  (*(*a1 + 80))(a1, &v8);
  if (v8)
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 1;
    }

    (*(*a1 + 144))(a1, a2 + 152);
  }

  else if (*(a2 + 176))
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 176) = 0;
  }
}

uint64_t sub_23F0497E0(int *a1, _BYTE *a2, unsigned __int8 *a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_27E3945F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3945F8))
      {
        sub_23F302BD0("cv3d::kit::viz::SE3Sample]", 0x19uLL, &stru_27E3945E0);
        __cxa_guard_release(&qword_27E3945F8);
        sub_23F2FF068(&stru_27E3945E0, v8, 1u);
      }

      sub_23F2FF068(&stru_27E3945E0, v8, 1u);
    }

    v5 = *a1;
  }

  if (v5 <= 0)
  {
    return sub_23F049988(a2, a3);
  }

  (*(*a2 + 16))(a2);
  sub_23F049988(a2, a3);
  return (*(*a2 + 24))(a2);
}

uint64_t sub_23F049988(_BYTE *a1, unsigned __int8 *a2)
{
  v6 = a2;
  result = sub_23F049CD0(a1, &v6);
  v5 = *a2;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (*(a2 + 26))
      {
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 26) = 0;
      }

      v6 = a2 + 8;
      return sub_23F049E48(a1, &v6);
    }

    else if (v5 == 5)
    {
      if (*(a2 + 26) != 1)
      {
        *(a2 + 72) = 0u;
        *(a2 + 88) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 26) = 1;
      }

      v6 = a2 + 8;
      return sub_23F04A084(a1, &v6);
    }
  }

  else if (v5 == 1)
  {
    if (*(a2 + 26) != 2)
    {
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
      *(a2 + 26) = 2;
    }

    (*(*a1 + 128))(a1, a2 + 8);
    (*(*a1 + 128))(a1, a2 + 12);
    (*(*a1 + 128))(a1, a2 + 16);
    (*(*a1 + 128))(a1, a2 + 20);
    (*(*a1 + 128))(a1, a2 + 24);
    return (*(*a1 + 128))(a1, a2 + 28);
  }

  else if (v5 == 2)
  {
    if (*(a2 + 26) != 3)
    {
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 26) = 3;
    }

    (*(*a1 + 136))(a1, a2 + 8);
    (*(*a1 + 136))(a1, a2 + 16);
    (*(*a1 + 136))(a1, a2 + 24);
    (*(*a1 + 136))(a1, a2 + 32);
    (*(*a1 + 136))(a1, a2 + 40);
    return (*(*a1 + 136))(a1, a2 + 48);
  }

  return result;
}

uint64_t sub_23F049CD0(_BYTE *a1, _BYTE **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOBYTE(__p[0]) = 0;
  result = (*(*a1 + 80))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_23F049DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_23F302A54(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23F049E48(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 128))(a1, *a2);
  (*(*a1 + 128))(a1, v3 + 4);
  (*(*a1 + 128))(a1, v3 + 8);
  (*(*a1 + 128))(a1, v3 + 12);
  (*(*a1 + 128))(a1, v3 + 16);
  (*(*a1 + 128))(a1, v3 + 20);
  (*(*a1 + 128))(a1, v3 + 24);
  (*(*a1 + 128))(a1, v3 + 28);
  (*(*a1 + 128))(a1, v3 + 32);
  (*(*a1 + 128))(a1, v3 + 36);
  (*(*a1 + 128))(a1, v3 + 40);
  v4 = *(*a1 + 128);

  return v4(a1, v3 + 44);
}

uint64_t sub_23F04A084(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 136))(a1, *a2);
  (*(*a1 + 136))(a1, v3 + 8);
  (*(*a1 + 136))(a1, v3 + 16);
  (*(*a1 + 136))(a1, v3 + 24);
  (*(*a1 + 136))(a1, v3 + 32);
  (*(*a1 + 136))(a1, v3 + 40);
  (*(*a1 + 136))(a1, v3 + 48);
  (*(*a1 + 136))(a1, v3 + 56);
  (*(*a1 + 136))(a1, v3 + 64);
  (*(*a1 + 136))(a1, v3 + 72);
  (*(*a1 + 136))(a1, v3 + 80);
  v4 = *(*a1 + 136);

  return v4(a1, v3 + 88);
}

uint64_t *sub_23F04A2C0(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x245CAC7C0](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v16 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v17 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_18:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      if (v9)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      goto LABEL_28;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_18;
  }

  v17 = 2;
  v16 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (v9)
  {
    goto LABEL_28;
  }

LABEL_27:
  v17 |= 4u;
LABEL_28:
  std::ios_base::clear((a1 + *(v16 - 24)), *(a1 + *(v16 - 24) + 32) | v17);
  return a1;
}

void sub_23F04A550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x23F04A510);
  }

  __cxa_rethrow();
}

void *sub_23F04A600(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void *sub_23F04A668(void *a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >= 0xE)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/DataType.cpp", 43, "idx < static_cast<uint32_t>(DataType::End)", 0x2AuLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "idx < static_cast<uint32_t>(DataType::End)", 42, &unk_23F3091D6, 0);
        a1 = v3;
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "idx < static_cast<uint32_t>(DataType::End)", 42, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = &(&off_278C74550)[2 * v2];
  v9 = *v8;
  v10 = v8[1];

  return sub_23EF2F9B0(a1, v9, v10);
}

uint64_t sub_23F04A7B8(uint64_t a1)
{
  while (1)
  {
    v3 = *(a1 + 96);
    v2 = *(a1 + 104);
    if (v3 == v2)
    {
      break;
    }

    sub_23F04A8AC(a1, *(v2 - 2));
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    v3 = *(a1 + 96);
  }

  if (v3)
  {
    v5 = *(a1 + 104);
    v6 = v3;
    if (v5 != v3)
    {
      do
      {
        v7 = *(v5 - 1);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v5 -= 16;
      }

      while (v5 != v3);
      v6 = *(a1 + 96);
    }

    *(a1 + 104) = v3;
    operator delete(v6);
  }

  std::mutex::~mutex((a1 + 32));
  v8 = *(a1 + 24);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

uint64_t sub_23F04A8AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 96);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 16;
      if (v5 == v4)
      {
        return 0;
      }
    }
  }

  if (v5 == v4)
  {
    return 0;
  }

  (*(*a2 + 32))(a2, a1);
  v6 = *(a1 + 104);
  if (v5 + 16 != v6)
  {
    do
    {
      v7 = v5;
      v8 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v9 = *(v5 + 8);
      *v5 = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v5 += 16;
    }

    while (v7 + 32 != v6);
    v6 = *(a1 + 104);
  }

  for (; v6 != v5; v6 -= 16)
  {
    v11 = *(v6 - 8);
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  *(a1 + 104) = v5;
  return 1;
}

void sub_23F04AA54(uint64_t a1)
{
  sub_23F04A7B8(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F04AA8C(uint64_t a1)
{
  sub_23F04A7B8(a1 - 8);

  JUMPOUT(0x245CACD00);
}

void sub_23F04AD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a9);
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_23F04AD28(void *a1, void *a2)
{
  v5 = a1[12];
  v4 = a1[13];
  if (v5 != v4)
  {
    v6 = a1[12];
    while (*v6 != *a2)
    {
      v6 += 16;
      if (v6 == v4)
      {
        goto LABEL_8;
      }
    }

    if (v6 != v4)
    {
      return 0;
    }
  }

LABEL_8:
  v8 = a1[14];
  if (v4 >= v8)
  {
    v11 = (v4 - v5) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_23EF3AE74();
    }

    v13 = v8 - v5;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v18 = 16 * v11;
    v19 = *a2;
    *(16 * v11) = *a2;
    if (*(&v19 + 1))
    {
      atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v10 = (v18 + 16);
    v15 = a1[12];
    v16 = a1[13] - v15;
    v17 = v18 - v16;
    memcpy((v18 - v16), v15, v16);
    a1[12] = v17;
    a1[13] = v10;
    a1[14] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v9 = a2[1];
    *v4 = *a2;
    *(v4 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v4 + 16;
  }

  a1[13] = v10;
  (*(**a2 + 24))(*a2, a1);
  return 1;
}

uint64_t sub_23F04AEE0(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 32));
  v4 = *a2;
  v5 = a2[1];
  v8[0] = v4;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_23F04AD28(a1, v8);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::mutex::unlock((a1 + 32));
  return v6;
}

void sub_23F04AF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF3AE8C(&a9);
  std::mutex::unlock((v9 + 32));
  _Unwind_Resume(a1);
}

std::__shared_weak_count *sub_23F04AFB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 128);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 120);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

std::__shared_weak_count *sub_23F04B000@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(a1 + 128);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(a1 + 120);
    }
  }

  return result;
}

std::__shared_weak_count *sub_23F04B044@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 16);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_23F04B094(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 32));
  v4 = *(a1 + 96);
  for (i = *(a1 + 104); v4 != i; v4 += 2)
  {
    (*(**v4 + 16))(*v4, a2);
  }

  std::mutex::unlock((a1 + 32));
  return a1 + 8;
}

uint64_t sub_23F04B12C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 88);
  for (i = *(a1 + 96); v4 != i; v4 += 2)
  {
    (*(**v4 + 16))(*v4, a2);
  }

  std::mutex::unlock((a1 + 24));
  return a1;
}

uint64_t sub_23F04B1C4(uint64_t result)
{
  v1 = *(result + 24);
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

void sub_23F04B23C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_23F04B2B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F04B344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F04B3D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::mutex::lock((v4 + 32));
  v5 = *(v4 + 96);
  for (i = *(v4 + 104); v5 != i; v5 += 2)
  {
    (*(**v5 + 16))(*v5, a2);
  }

  std::mutex::unlock((v4 + 32));
  return a1 + 8;
}

uint64_t sub_23F04B478(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  std::mutex::lock((v4 + 32));
  v5 = *(v4 + 96);
  for (i = *(v4 + 104); v5 != i; v5 += 2)
  {
    (*(**v5 + 16))(*v5, a2);
  }

  std::mutex::unlock((v4 + 32));
  return a1;
}

std::__shared_weak_count *sub_23F04B51C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = *(v3 + 128);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(v3 + 120);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

std::__shared_weak_count *sub_23F04B56C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = 0;
  a2[1] = 0;
  result = *(v2 + 128);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(v2 + 120);
    }
  }

  return result;
}

std::__shared_weak_count *sub_23F04B5B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = *(v3 + 24);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(v3 + 16);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

void sub_23F04B628(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517BEA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F04B688(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    sub_23F04B794();
  }

  v6[0] = a2;
  v6[1] = "nullptr";
  v6[2] = a2;
  v6[3] = "nullptr";
  v6[4] = "nullptr";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    sub_23EF41D6C();
  }

  __p = v6;
  return (off_28517BF10[v3])(&__p);
}

void sub_23F04B778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F04B920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23F302A54(&a10, v11);
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F04B948(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_28517BEE0[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_23F04B9A4(uint64_t a1, char *a2, size_t a3)
{
  result = (*(*a1 + 56))();
  if ((v9 & 1) == 0)
  {
    if (a3)
    {
      v10 = a3;
      do
      {
        if (!v10)
        {
          goto LABEL_7;
        }

        v11 = a2[--v10];
      }

      while (v11 != 46);
      if (v10 == -1)
      {
LABEL_7:
        v7 = 0;
        v8 = 256;
        *&v16[7] = 256;
        LOBYTE(__p[0]) = 0;
        goto LABEL_18;
      }

      if (a3 >= v10)
      {
        a3 = v10;
      }

      if (a3 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = a3;
      if (v10)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      *__p = __dst;
      *v16 = v18;
      v16[8] = 1;
      v7 = HIBYTE(v18);
      v8 = *(&__dst + 1);
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      v16[8] = 0;
    }

LABEL_18:
    if ((v7 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v7 & 0x80u) == 0)
    {
      v13 = v7;
    }

    else
    {
      v13 = v8;
    }

    result = (*(*a1 + 64))(a1, v12, v13);
    if (v16[8] == 1 && (v16[7] & 0x80000000) != 0)
    {
      v14 = result;
      operator delete(__p[0]);
      return v14;
    }
  }

  return result;
}

void sub_23F04BB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F04BB84(uint64_t a1, const void **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 8);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    return v2;
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

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return v7;
    }

    return v2;
  }

  else
  {
    if (v6 < v15)
    {
      return v2;
    }

    return v7;
  }
}

void sub_23F04BCA0(_BYTE *__src@<X0>, uint64_t __len@<X1>, uint64_t a3@<X8>)
{
  v47[2] = *MEMORY[0x277D85DE8];
  if (!__len)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 80) = 0;
    goto LABEL_111;
  }

  v7 = 0;
  v8 = __len;
  while (__src[v7] != 35)
  {
    if (__len == ++v7)
    {
      v9 = 0;
      LOBYTE(v10) = 0;
      goto LABEL_16;
    }
  }

  LOBYTE(v10) = 0;
  v9 = 0;
  if (__len != v7 && v7 != -1)
  {
    v11 = __len >= v7 ? v7 : __len;
    v8 = __len >= v11 ? v11 : __len;
    v9 = ~v7;
    v10 = 1;
    if (!v11)
    {
      v13 = 0;
      v14 = v9 + __len;
      if (__len < v9 + __len)
      {
        v14 = __len;
      }

      v15 = __len - v14;
      v16 = v14;
      if (__len >= v14)
      {
        goto LABEL_24;
      }

      goto LABEL_115;
    }
  }

LABEL_16:
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v41) = v8;
  memmove(&__dst, __src, v8);
  *(&__dst + v8) = 0;
  v13 = __dst;
  v47[0] = v41;
  *(v47 + 7) = *(&v41 + 7);
  v3 = HIBYTE(v41);
  __dst = 0;
  v41 = 0uLL;
  if (v10)
  {
    v10 = 0;
    v14 = v9 + __len;
    if (__len < v9 + __len)
    {
      v14 = __len;
    }

    v15 = __len - v14;
    v16 = v14;
    if (__len >= __len - v14)
    {
LABEL_24:
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_23EF2F8F4();
      }

      if (v17 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v39) = v17;
      if (v17)
      {
        memmove(&v38, &__src[v15], v17);
      }

      *(&v38 + v17) = 0;
      v18 = v38;
      v45[0] = v39;
      *(v45 + 7) = *(&v39 + 7);
      v12 = HIBYTE(v39);
      v39 = 0uLL;
      v38 = 0;
      v46[0] = v45[0];
      *(v46 + 7) = *(v45 + 7);
      v45[0] = 0;
      *(v45 + 7) = 0;
      if (v10)
      {
        *a3 = 0;
        *(a3 + 24) = 0;
        v20 = (v3 & 0x80u) != 0;
        *(a3 + 32) = 0;
        *(a3 + 80) = 0;
        v21 = 1;
        goto LABEL_106;
      }

      v19 = 1;
      goto LABEL_37;
    }

LABEL_115:
    sub_23EF35C64("string_view::substr");
  }

  v18 = 0;
  v19 = 0;
LABEL_37:
  *&v43[7] = *(v47 + 7);
  v42 = v13;
  *v43 = v47[0];
  v44 = v3;
  v47[0] = 0;
  *(v47 + 7) = 0;
  if ((v3 & 0x80u) == 0)
  {
    v22 = &v42;
  }

  else
  {
    v22 = v13;
  }

  v23 = *v43;
  if ((v3 & 0x80u) == 0)
  {
    v23 = v3;
  }

  if (!v23)
  {
    goto LABEL_104;
  }

  v24 = v22;
  if (v23 < 8)
  {
LABEL_118:
    v37 = v22 + v23;
    do
    {
      if (*v24 == 35)
      {
        *v24 = 95;
      }

      ++v24;
    }

    while (v24 != v37);
    goto LABEL_103;
  }

  if (v23 < 0x10)
  {
    v25 = 0;
    goto LABEL_46;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFF0;
  v29 = v22 + 7;
  v30.i64[0] = 0x2323232323232323;
  v30.i64[1] = 0x2323232323232323;
  v31 = v23 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v32 = vceqq_s8(*(v29 - 7), v30);
    if (v32.i8[0])
    {
      *(v29 - 7) = 95;
      if ((v32.i8[1] & 1) == 0)
      {
LABEL_71:
        if ((v32.i8[2] & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_88;
      }
    }

    else if ((v32.i8[1] & 1) == 0)
    {
      goto LABEL_71;
    }

    *(v29 - 6) = 95;
    if ((v32.i8[2] & 1) == 0)
    {
LABEL_72:
      if ((v32.i8[3] & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_89;
    }

LABEL_88:
    *(v29 - 5) = 95;
    if ((v32.i8[3] & 1) == 0)
    {
LABEL_73:
      if ((v32.i8[4] & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_90;
    }

LABEL_89:
    *(v29 - 4) = 95;
    if ((v32.i8[4] & 1) == 0)
    {
LABEL_74:
      if ((v32.i8[5] & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_91;
    }

LABEL_90:
    *(v29 - 3) = 95;
    if ((v32.i8[5] & 1) == 0)
    {
LABEL_75:
      if ((v32.i8[6] & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_92;
    }

LABEL_91:
    *(v29 - 2) = 95;
    if ((v32.i8[6] & 1) == 0)
    {
LABEL_76:
      if ((v32.i8[7] & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_93;
    }

LABEL_92:
    *(v29 - 1) = 95;
    if ((v32.i8[7] & 1) == 0)
    {
LABEL_77:
      if ((v32.i8[8] & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_94;
    }

LABEL_93:
    *v29 = 95;
    if ((v32.i8[8] & 1) == 0)
    {
LABEL_78:
      if ((v32.i8[9] & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_95;
    }

LABEL_94:
    v29[1] = 95;
    if ((v32.i8[9] & 1) == 0)
    {
LABEL_79:
      if ((v32.i8[10] & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_96;
    }

LABEL_95:
    v29[2] = 95;
    if ((v32.i8[10] & 1) == 0)
    {
LABEL_80:
      if ((v32.i8[11] & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_97;
    }

LABEL_96:
    v29[3] = 95;
    if ((v32.i8[11] & 1) == 0)
    {
LABEL_81:
      if ((v32.i8[12] & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_98;
    }

LABEL_97:
    v29[4] = 95;
    if ((v32.i8[12] & 1) == 0)
    {
LABEL_82:
      if ((v32.i8[13] & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_99;
    }

LABEL_98:
    v29[5] = 95;
    if ((v32.i8[13] & 1) == 0)
    {
LABEL_83:
      if (v32.i8[14])
      {
        goto LABEL_100;
      }

      goto LABEL_84;
    }

LABEL_99:
    v29[6] = 95;
    if (v32.i8[14])
    {
LABEL_100:
      v29[7] = 95;
      if ((v32.i8[15] & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_101;
    }

LABEL_84:
    if ((v32.i8[15] & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_101:
    v29[8] = 95;
LABEL_68:
    v29 += 16;
    v31 -= 16;
  }

  while (v31);
  if (v23 == v25)
  {
    goto LABEL_103;
  }

  if ((v23 & 8) == 0)
  {
    v24 = v22 + v25;
    goto LABEL_118;
  }

LABEL_46:
  v24 = v22 + (v23 & 0xFFFFFFFFFFFFFFF8);
  v26 = v25 - (v23 & 0xFFFFFFFFFFFFFFF8);
  v27 = v22 + v25 + 3;
  while (2)
  {
    v28 = vceq_s8(*(v27 - 3), 0x2323232323232323);
    if (v28.i8[0])
    {
      *(v27 - 3) = 95;
      if (v28.i8[1])
      {
        goto LABEL_58;
      }

LABEL_50:
      if ((v28.i8[2] & 1) == 0)
      {
        goto LABEL_51;
      }

LABEL_59:
      *(v27 - 1) = 95;
      if (v28.i8[3])
      {
        goto LABEL_60;
      }

LABEL_52:
      if ((v28.i8[4] & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_61:
      v27[1] = 95;
      if (v28.i8[5])
      {
        goto LABEL_62;
      }

LABEL_54:
      if ((v28.i8[6] & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_63:
      v27[3] = 95;
      if (v28.i8[7])
      {
LABEL_64:
        v27[4] = 95;
      }
    }

    else
    {
      if ((v28.i8[1] & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_58:
      *(v27 - 2) = 95;
      if (v28.i8[2])
      {
        goto LABEL_59;
      }

LABEL_51:
      if ((v28.i8[3] & 1) == 0)
      {
        goto LABEL_52;
      }

LABEL_60:
      *v27 = 95;
      if (v28.i8[4])
      {
        goto LABEL_61;
      }

LABEL_53:
      if ((v28.i8[5] & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_62:
      v27[2] = 95;
      if (v28.i8[6])
      {
        goto LABEL_63;
      }

LABEL_55:
      if (v28.i8[7])
      {
        goto LABEL_64;
      }
    }

    v27 += 8;
    v26 += 8;
    if (v26)
    {
      continue;
    }

    break;
  }

  if (v23 != (v23 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_118;
  }

LABEL_103:
  v13 = v42;
  v3 = v44;
LABEL_104:
  v33 = *v43;
  v34 = *&v43[7];
  *a3 = v13;
  *(a3 + 8) = v33;
  *(a3 + 15) = v34;
  *(a3 + 23) = v3;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 80) = 0;
  if (v19)
  {
    v13 = 0;
    v20 = 0;
    v21 = 0;
LABEL_106:
    v35 = v46[0];
    *(a3 + 32) = v18;
    *(a3 + 40) = v35;
    *(a3 + 47) = *(v46 + 7);
    *(a3 + 55) = v12;
    v46[0] = 0;
    *(v46 + 7) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 80) = 1;
    if ((v21 & 1) == 0)
    {
      if (v20)
      {
        operator delete(v13);
      }

      goto LABEL_109;
    }
  }

  else
  {
LABEL_109:
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__dst);
    }
  }

LABEL_111:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_23F04C2BC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0 && v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F04C2D8(void *a1)
{
  v1 = a1;
  sub_23EF2F9B0(a1, "{", 1);
  sub_23F04D2C4();
}

BOOL sub_23F04C458(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(*a2 + 24);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(v2 + 23);
    if (v8 >= 0)
    {
      v9 = *(v2 + 23);
    }

    else
    {
      v9 = v2[1];
    }

    v10 = *(v3 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = v3[1];
    }

    if (v9 != v10)
    {
      return 0;
    }

    if (v8 < 0)
    {
      v2 = *v2;
    }

    if (v11 < 0)
    {
      v3 = *v3;
    }

    v12 = a1;
    v13 = a2;
    v14 = memcmp(v2, v3, v9);
    a2 = v13;
    v15 = v14;
    a1 = v12;
    if (v15)
    {
      return 0;
    }
  }

  v16 = a1[1];
  v17 = a2[1];
  v18 = *(v16 + 16);
  v19 = *(v17 + 16);
  if (v18 != v19 || v18 == 0)
  {
    if (v18 != v19)
    {
      return 0;
    }
  }

  else if (*v16 != *v17 || *(v16 + 8) != *(v17 + 8))
  {
    return 0;
  }

  v21 = a1[2];
  v22 = a2[2];
  v23 = *(v21 + 24);
  v24 = *(v22 + 24);
  if (v23 != v24 || v23 == 0)
  {
    if (v23 != v24)
    {
      return 0;
    }
  }

  else
  {
    v26 = *(v21 + 23);
    if (v26 >= 0)
    {
      v27 = *(v21 + 23);
    }

    else
    {
      v27 = v21[1];
    }

    v28 = *(v22 + 23);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = v22[1];
    }

    if (v27 != v28)
    {
      return 0;
    }

    if (v26 < 0)
    {
      v21 = *v21;
    }

    if (v29 < 0)
    {
      v22 = *v22;
    }

    v30 = a1;
    v31 = a2;
    v32 = memcmp(v21, v22, v27);
    a2 = v31;
    v33 = v32;
    a1 = v30;
    if (v33)
    {
      return 0;
    }
  }

  v34 = a1[3];
  v35 = a2[3];
  v36 = *(v34 + 48);
  v37 = *(v35 + 48);
  if (v36 != v37 || v36 == 0)
  {
    if (v36 != v37)
    {
      return 0;
    }
  }

  else
  {
    v39 = *(v34 + 23);
    if (v39 >= 0)
    {
      v40 = *(v34 + 23);
    }

    else
    {
      v40 = v34[1];
    }

    v41 = *(v35 + 23);
    v42 = v41;
    if ((v41 & 0x80u) != 0)
    {
      v41 = v35[1];
    }

    if (v40 != v41)
    {
      return 0;
    }

    if (v39 < 0)
    {
      v34 = *v34;
    }

    if (v42 < 0)
    {
      v35 = *v35;
    }

    v43 = a1;
    v44 = a2;
    v45 = memcmp(v34, v35, v40);
    a2 = v44;
    v46 = v45;
    a1 = v43;
    if (v46)
    {
      return 0;
    }
  }

  v47 = a1[4];
  v48 = a2[4];
  v49 = *(v48 + 24);
  v50 = *(v47 + 24);
  result = v50 == v49;
  if (v50 != v49 || !*(v47 + 24))
  {
    return result;
  }

  v52 = *v47;
  v51 = v47[1];
  v53 = *v48;
  if (v51 - *v47 != v48[1] - *v48)
  {
    return 0;
  }

  if (v52 != v51)
  {
    v54 = 0;
    while (1)
    {
      v55 = v53 + v54;
      v56 = v52 + v54;
      v57 = *(v52 + v54 + 24);
      v58 = *(v53 + v54 + 24);
      if (v57 != v58 || v57 == 0)
      {
        if (v57 != v58)
        {
          return 0;
        }
      }

      else
      {
        v60 = *(v56 + 23);
        if (v60 >= 0)
        {
          v61 = *(v56 + 23);
        }

        else
        {
          v61 = *(v56 + 8);
        }

        v62 = *(v55 + 23);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = *(v55 + 8);
        }

        if (v61 != v62)
        {
          return 0;
        }

        v64 = v60 >= 0 ? (v52 + v54) : *v56;
        v65 = v63 >= 0 ? (v53 + v54) : *v55;
        if (memcmp(v64, v65, v61))
        {
          return 0;
        }
      }

      v66 = v52 + v54;
      v67 = v53 + v54;
      v68 = *(v52 + v54 + 80);
      v69 = *(v53 + v54 + 80);
      if (v68 != v69 || v68 == 0)
      {
        if (v68 != v69)
        {
          return 0;
        }
      }

      else
      {
        v71 = *(v66 + 55);
        if (v71 >= 0)
        {
          v72 = *(v66 + 55);
        }

        else
        {
          v72 = *(v66 + 40);
        }

        v73 = *(v67 + 55);
        v74 = v73;
        if ((v73 & 0x80u) != 0)
        {
          v73 = *(v67 + 40);
        }

        if (v72 != v73)
        {
          return 0;
        }

        v77 = *(v66 + 32);
        v75 = v66 + 32;
        v76 = v77;
        v78 = (v71 >= 0 ? v75 : v76);
        v81 = *(v67 + 32);
        v79 = v67 + 32;
        v80 = v81;
        v82 = (v74 >= 0 ? v79 : v80);
        if (memcmp(v78, v82, v72))
        {
          return 0;
        }
      }

      v54 += 96;
      result = 1;
      if (v52 + v54 == v51)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_23F04C7F8(uint64_t result)
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

void sub_23F04C870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F04C8FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "data_", 5, &unk_23F3091D6, 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 24);

  return v8();
}

uint64_t sub_23F04CA54(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "data_", 5, &unk_23F3091D6, 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 16);

  return v8();
}

void sub_23F04CBAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *&v16 = v2;
  *(&v16 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    HIBYTE(v14) = 0;
    LOBYTE(__p[0]) = 0;
    if (!v3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v11 = *(a1 + 8);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 32))(&v19);
  v6 = std::string::insert(&v19, 0, ",", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v3 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
LABEL_14:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

LABEL_16:
  if ((atomic_load_explicit(qword_27E395B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27E395B40))
  {
    sub_23EF3F240(&xmmword_27E395B78, "viz::SharedData");
    __cxa_guard_release(qword_27E395B40);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v8;
  v18 = -1;
  if (byte_27E395B8F < 0)
  {
    sub_23EF34EA4(&v16, xmmword_27E395B78, *(&xmmword_27E395B78 + 1));
  }

  else
  {
    v16 = xmmword_27E395B78;
    v17 = unk_27E395B88;
  }

  v18 = 1;
  v19.__r_.__value_.__r.__words[0] = &v16;
  v19.__r_.__value_.__l.__size_ = "{";
  v19.__r_.__value_.__r.__words[2] = &v16;
  v20 = "{";
  v21 = "{";
  sub_23EF4248C(&v19.__r_.__value_.__r.__words[2], &v16);
  sub_23F04B688(&v15, &v16, &v10);
  v19.__r_.__value_.__r.__words[0] = &v16;
  v19.__r_.__value_.__l.__size_ = __p;
  v19.__r_.__value_.__r.__words[2] = &v16;
  v20 = __p;
  v21 = __p;
  if (v18 == -1)
  {
    sub_23EF41D6C();
  }

  v22 = &v19;
  (off_28517C030[v18])(&v22, &v16);
  v19.__r_.__value_.__r.__words[0] = &v16;
  v19.__r_.__value_.__l.__size_ = "}";
  v19.__r_.__value_.__r.__words[2] = &v16;
  v20 = "}";
  v21 = "}";
  if (v18 == -1)
  {
    sub_23EF41D6C();
  }

  v22 = &v19;
  (*(&off_28517C048 + v18))(&v22, &v16);
  if (v18 == -1)
  {
    sub_23EF41D6C();
  }

  v19.__r_.__value_.__r.__words[0] = &v22;
  (off_28517C018[v18])(&v19, &v16);
  if (v18 != -1)
  {
    (off_28517C000[v18])(&v19, &v16);
  }

  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

LABEL_32:
    operator delete(__p[0]);
    return;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_32;
  }
}

void sub_23F04CF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  __cxa_guard_abort(qword_27E395B40);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23F04CFF4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "data_", 5, &unk_23F3091D6, 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 40);

  return v8();
}

uint64_t sub_23F04D15C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "data_", 5, &unk_23F3091D6, 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 48);

  return v8();
}

void sub_23F04D494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F04D4F0(uint64_t a1, void **a2, uint64_t a3)
{
  if (*(a3 + 48) == 1)
  {
    operator new();
  }

  v3 = *a2;

  return sub_23EF2F9B0(v3, "nullopt", 7);
}

void sub_23F04D718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F04D774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = *a3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v8 = *(a3 + 8);
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

  *(&__dst + v3) = 0;
  v9[0] = a2;
  v9[1] = &__dst;
  v9[2] = a2;
  v9[3] = &__dst;
  v9[4] = &__dst;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v10 = v9;
  (off_28517BFE8[v6])(&v10, a2);
  if (v8 < 0)
  {
    operator delete(__dst);
  }
}

void sub_23F04D894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F04D8B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F04D8EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_23F04D91C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F04D97C(void *a1)
{
  *a1 = &unk_285179488;
  sub_23EF44860((a1 + 12));
  result = a1;
  a1[1] = &unk_2851794D0;
  a1[2] = &unk_285179518;
  v3 = a1[4];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23F04DA5C(void *a1)
{
  *a1 = &unk_285179488;
  sub_23EF44860((a1 + 12));
  a1[1] = &unk_2851794D0;
  a1[2] = &unk_285179518;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F04DB50(uint64_t *a1, uint64_t a2, void *__src, size_t __len)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v8 = __len;
  if (__len)
  {
    memmove(&v7, __src, __len);
    *(&v7 + __len) = 0;
    v6 = *a1;
    if (*a1)
    {
LABEL_5:
      LOBYTE(__p[0]) = 0;
      LOBYTE(v11) = 0;
      if (*(v6 + 264) == 1)
      {
        if (*(v6 + 263) < 0)
        {
          sub_23EF34EA4(__p, *(v6 + 240), *(v6 + 248));
        }

        else
        {
          *__p = *(v6 + 240);
          v10 = *(v6 + 256);
        }

        LOBYTE(v11) = 1;
      }

LABEL_13:
      operator new();
    }
  }

  else
  {
    LOBYTE(v7) = 0;
    v6 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }
  }

  LOBYTE(__p[0]) = 0;
  LOBYTE(v11) = 0;
  goto LABEL_13;
}

void sub_23F04E298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F04E398(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_10;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_10:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_21:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_21;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = v3[4];
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_21;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_21;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void sub_23F04E548(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 80);
  v3 = (v1 + 88);
  *__p = 0u;
  v52 = 0;
  v53 = 0;
  if (v2 == v3)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_66;
  }

  v4 = 0;
  v5 = v2;
  do
  {
    v6 = v4;
    v7 = v5[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    ++v4;
    v5 = v8;
  }

  while (v8 != v3);
  v10 = v6 + 2;
  v11 = (v6 + 2) >> 9;
  if ((v10 & 0x1FF) != 0)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    operator new();
  }

  v14 = 0;
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v4 + (-MEMORY[0] >> 3);
  if (v18 < 1)
  {
    v19 = -8 * ((511 - v18) >> 9);
    v20 = *v19 + 8 * (~(511 - v18) & 0x1FF);
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v19 = 8 * (v18 >> 9);
    v20 = *v19 + 8 * (v18 & 0x1FF);
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  do
  {
    v21 = v20;
    if (v17 != v19)
    {
      v21 = *v17 + 4096;
    }

    if (v15 == v21)
    {
      v21 = v15;
    }

    else
    {
      v22 = v15;
      do
      {
        *v22++ = v2[4];
        v23 = v2[1];
        v24 = v2;
        if (v23)
        {
          do
          {
            v2 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v2 = v24[2];
            v9 = *v2 == v24;
            v24 = v2;
          }

          while (!v9);
        }
      }

      while (v22 != v21);
    }

    v16 += (v21 - v15) >> 3;
    if (v17 == v19)
    {
      break;
    }

    v25 = v17[1];
    ++v17;
    v15 = v25;
  }

  while (v25 != v20);
  v55 = v16;
  if (v16)
  {
    do
    {
      v26 = *(v14 + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8));
      v27 = *(v26 + 8 * (v12 & 0x1FF));
      if (!**(v27 + 32))
      {
        v30 = *(v27 + 40);
        v31 = atomic_load(*(a1 + 40));
        atomic_exchange(v30, v31);
        v32 = *(*(v26 + 8 * (v12 & 0x1FF)) + 48);
        v33 = *(v32 + 80);
        v34 = (v32 + 88);
        v14 = __p[1];
        v16 = v55;
        v12 = v53;
        if (v33 != (v32 + 88))
        {
          v35 = v52;
          do
          {
            if (v35 == v14)
            {
              v36 = 0;
            }

            else
            {
              v36 = ((v35 - v14) << 6) - 1;
            }

            v37 = v12 + v16;
            if (v36 == v12 + v16)
            {
              if (v12 < 0x200)
              {
                operator new();
              }

              v54 = v12 - 512;
              v40 = *v14;
              v38 = (v14 + 1);
              v39 = v40;
              __p[1] = v38;
              if (!v35)
              {
                if (!v38)
                {
                  operator new();
                }

                v41 = ((v38 >> 3) + 1 + (((v38 >> 3) + 1) >> 63)) >> 1;
                v42 = (v38 - 8 * v41);
                if (v35 != v38)
                {
                  memmove((v38 - 8 * v41), v38, &v35[-v38]);
                }

                v35 = &v35[v42 - v38];
                __p[1] = v42;
              }

              *v35 = v39;
              v52 = v35 + 8;
              v14 = __p[1];
              v35 += 8;
              v16 = v55;
              v12 = v54;
              v37 = v54 + v55;
            }

            (*(v14 + ((v37 >> 6) & 0x3FFFFFFFFFFFFF8)))[v37 & 0x1FF] = v33[4];
            v55 = ++v16;
            v43 = v33[1];
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
                v44 = v33[2];
                v9 = *v44 == v33;
                v33 = v44;
              }

              while (!v9);
            }

            v33 = v44;
          }

          while (v44 != v34);
        }
      }

      --v16;
      v28 = v12 + 1;
      v53 = v12 + 1;
      v55 = v16;
      if (v12 + 1 >= 0x400)
      {
        v29 = *v14++;
        operator delete(v29);
        v28 = v12 - 511;
        __p[1] = v14;
        v53 = v12 - 511;
      }

      v12 = v28;
    }

    while (v16);
    v13 = v52;
    if (((v52 - v14) >> 3) >= 3)
    {
      v13 = v52;
      v45 = v52 - v14 - 8;
      do
      {
        v46 = *v14++;
        operator delete(v46);
        v47 = v45 >> 3;
        v45 -= 8;
      }

      while (v47 > 2);
    }
  }

LABEL_66:
  if (v14 != v13)
  {
    v48 = v14;
    do
    {
      v49 = *v48++;
      operator delete(v49);
    }

    while (v48 != v13);
  }
}

void sub_23F04F110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (a13 == a12)
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_23F04F124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
    if (a13 == a12)
    {
LABEL_3:
      v15 = a11;
      if (!a11)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a13 == a12)
  {
    goto LABEL_3;
  }

  v15 = a11;
  if (!a11)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v15);
  _Unwind_Resume(a1);
}

void sub_23F04F1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v11);
  sub_23F0530B8(&a11);
  _Unwind_Resume(a1);
}

void sub_23F04F23C(uint64_t a1, const void *a2, size_t __len)
{
  *a1 = &unk_28517C130;
  if (__len < 0x7FFFFFFFFFFFFFF8)
  {
    if (__len < 0x17)
    {
      *(a1 + 31) = __len;
      v4 = (a1 + 8);
      if (__len)
      {
        memmove(v4, a2, __len);
      }

      *(v4 + __len) = 0;
      operator new();
    }

    operator new();
  }

  sub_23EF2F8F4();
}

void sub_23F04F36C(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x245CACD00](v4, 0x1000C4077774924);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F04F3C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_23F052518(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x245CACD00](v3, 0x80C40B8603338);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x245CACD00](v4, 0x1000C4077774924);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_23F04F45C(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_23F052518(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x245CACD00](v3, 0x80C40B8603338);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x245CACD00](v4, 0x1000C4077774924);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F04F500(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (a2)
  {
    v5 = (*v3 + 72);
    std::__shared_mutex_base::lock(v5);
    v6 = *(a1 + 32);
    if (!*v6)
    {
      operator new();
    }

    if (*v6 != a2)
    {
      *v6 = a2;
      v7 = *v3;
      v8 = *(v7 + 8);
      std::mutex::lock(v8);
      v9 = *(v7 + 16);
      v10 = (v7 + 24);
      if (v9 != v10)
      {
        do
        {
          v11 = *(a1 + 31);
          if (v11 >= 0)
          {
            v12 = a1 + 8;
          }

          else
          {
            v12 = *(a1 + 8);
          }

          if (v11 >= 0)
          {
            v13 = *(a1 + 31);
          }

          else
          {
            v13 = *(a1 + 16);
          }

          (*(*v9[4] + 16))(v9[4], v12, v13, a2);
          v14 = v9[1];
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = v9[2];
              v16 = *v15 == v9;
              v9 = v15;
            }

            while (!v16);
          }

          v9 = v15;
        }

        while (v15 != v10);
      }

      std::mutex::unlock(v8);
    }

    goto LABEL_25;
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    if (*(a1 + 31))
    {
      goto LABEL_21;
    }

LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set root context to inherit its enable-state");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_27;
  }

LABEL_21:
  v5 = (*v3 + 72);
  std::__shared_mutex_base::lock(v5);
  if (**(a1 + 32))
  {
    v17 = *(a1 + 40);
    v18 = atomic_load(*(v3[9] + 40));
    atomic_exchange(v17, v18);
    sub_23F04E548(a1);
    operator new();
  }

LABEL_25:
  std::__shared_mutex_base::unlock(v5);
}

void *sub_23F04F92C(uint64_t a1, char *a2, size_t a3)
{
  std::__shared_mutex_base::lock((a1 + 72));
  v6 = sub_23F04FAD8(a1, a2, a3);
  std::__shared_mutex_base::unlock((a1 + 72));
  return v6;
}

unint64_t sub_23F04F9A4(uint64_t a1, const void *a2, size_t a3)
{
  std::__shared_mutex_base::lock((a1 + 72));
  v6 = *(a1 + 56);
  if (!v6)
  {
    goto LABEL_32;
  }

  v7 = (a1 + 56);
  do
  {
    while (1)
    {
      v8 = *(v6 + 55);
      v9 = v8 >= 0 ? v6 + 4 : v6[4];
      v10 = v8 >= 0 ? *(v6 + 55) : v6[5];
      v11 = v10 >= a3 ? a3 : v10;
      v12 = memcmp(a2, v9, v11);
      if (v12)
      {
        break;
      }

      if (a3 <= v10)
      {
        goto LABEL_17;
      }

LABEL_3:
      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
LABEL_18:
  if (v7 == (a1 + 56))
  {
    goto LABEL_32;
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

  if (v15 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(a2, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    v20 = 0;
    v19 = 0;
  }

  else
  {
    if (a3 < v15)
    {
      goto LABEL_32;
    }

LABEL_30:
    v18 = v7[7];
    v19 = v18 & 0xFFFFFFFFFFFFFF00;
    v20 = v18;
  }

  std::__shared_mutex_base::unlock((a1 + 72));
  return v19 | v20;
}

void *sub_23F04FAD8(uint64_t a1, char *a2, size_t a3)
{
  v5 = &a2[a3];
  v6 = 0;
  if (a3)
  {
    while (a2[v6] != 46)
    {
      if (a3 == ++v6)
      {
        v6 = a3;
        break;
      }
    }
  }

  v7 = 0;
  v8 = *(a1 + 40);
  v38[0] = a2;
  v38[1] = &a2[a3];
  v38[2] = a2;
  v38[3] = a2;
  v38[4] = v6;
  v39 = 46;
  v40 = &unk_23F3143B8;
  v41 = &unk_23F3143B8;
  v42 = &unk_23F3143B8;
  v43 = &unk_23F3143B8;
  v44 = 0;
  v45 = 0;
  if (a3 && a2 != &unk_23F3143B8)
  {
    v7 = 0;
    v9 = a2;
    do
    {
      ++v7;
      v10 = &v9[v6];
      if (v10 == v5)
      {
        break;
      }

      v9 = v10 + 1;
      if (v10 + 1 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        while (v9[v6] != 46)
        {
          if (v5 - v9 == ++v6)
          {
            v6 = v5 - v9;
            break;
          }
        }
      }
    }

    while (v9 != &unk_23F3143B8);
  }

  v46 = v7;
  v36 = v8;
  LOBYTE(v37[0]) = 0;
  sub_23F05260C(v8, v38, 0, &v36);
  if ((v37[0] & 1) == 0)
  {
    v11 = v36[6];
    v37[0] = 0;
    v37[1] = 0;
    v36 = v37;
    v12 = *(v11 + 80);
    v35 = v11;
    v13 = (v11 + 88);
    if (v12 == (v11 + 88))
    {
LABEL_62:
      operator new();
    }

LABEL_21:
    v15 = v12[4];
    v16 = *(v15 + 31);
    if ((v16 & 0x8000000000000000) != 0)
    {
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v16 <= a3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = (v15 + 8);
      if (v16 <= a3)
      {
        goto LABEL_27;
      }
    }

    if (a3)
    {
      if (v16 < a3)
      {
        goto LABEL_27;
      }

      v21 = &v17[v16];
      v22 = *a2;
      v23 = v16;
      v24 = v17;
      while (1)
      {
        v25 = v23 - a3;
        if (v25 == -1)
        {
          goto LABEL_27;
        }

        v26 = memchr(v24, v22, v25 + 1);
        if (!v26)
        {
          goto LABEL_27;
        }

        v27 = v26;
        if (!memcmp(v26, a2, a3))
        {
          break;
        }

        v24 = v27 + 1;
        v23 = v21 - (v27 + 1);
        if (v23 < a3)
        {
          goto LABEL_27;
        }
      }

      if (v27 == v21 || v17 != v27 || v16 <= a3 + 1 || v17[a3] != 46)
      {
        goto LABEL_27;
      }

      v28 = a3;
      while (v17[v28 + 1] == 46)
      {
        if (v16 - 1 == ++v28)
        {
          goto LABEL_27;
        }
      }

      if (v28 == -2)
      {
LABEL_27:
        v18 = v12[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v12[2];
            v20 = *v19 == v12;
            v12 = v19;
          }

          while (!v20);
        }

        goto LABEL_20;
      }
    }

    for (i = v37[0]; ; i = *v30)
    {
      if (!i)
      {
LABEL_54:
        operator new();
      }

      while (1)
      {
        v30 = i;
        v31 = i[4];
        if (v15 < v31)
        {
          break;
        }

        if (v31 >= v15)
        {
          v32 = v12[1];
          v33 = v12;
          if (v32)
          {
            do
            {
              v19 = v32;
              v32 = *v32;
            }

            while (v32);
          }

          else
          {
            do
            {
              v19 = v33[2];
              v20 = *v19 == v33;
              v33 = v19;
            }

            while (!v20);
          }

          if (v35[10] == v12)
          {
            v35[10] = v19;
          }

          v14 = v35[11];
          --v35[12];
          sub_23EF36BE4(v14, v12);
          operator delete(v12);
LABEL_20:
          v12 = v19;
          if (v19 == v13)
          {
            goto LABEL_62;
          }

          goto LABEL_21;
        }

        i = v30[1];
        if (!i)
        {
          goto LABEL_54;
        }
      }
    }
  }

  return v36;
}

uint64_t sub_23F05046C(uint64_t a1, unint64_t a2)
{
  std::__shared_mutex_base::lock((a1 + 72));
  v21 = *(a1 + 8);
  v22 = a1;
  std::mutex::lock(v21);
  v24[0] = 0;
  v24[1] = 0;
  v3 = *(a1 + 48);
  v23 = v24;
  if (v3 != (a1 + 56))
  {
    do
    {
      v12 = *(v3[7] + 32);
      if (v12)
      {
        v13 = *v12;
        operator new();
      }

      v14 = v3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != (a1 + 56));
  }

  v5 = a1 + 24;
  v4 = *(v22 + 24);
  if (!v4)
  {
LABEL_24:
    operator new();
  }

  v6 = v22 + 24;
  v7 = *(v22 + 24);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 == v5 || *(v6 + 32) > a2)
  {
    while (1)
    {
      while (1)
      {
        v17 = v4;
        v18 = v4[4];
        if (v18 <= a2)
        {
          break;
        }

        v4 = *v17;
        if (!*v17)
        {
          goto LABEL_24;
        }
      }

      if (v18 >= a2)
      {
        break;
      }

      v4 = v17[1];
      if (!v4)
      {
        goto LABEL_24;
      }
    }

    (*(*a2 + 32))(a2, &v23);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  sub_23EF53700(&v23, v24[0]);
  std::mutex::unlock(v21);
  std::__shared_mutex_base::unlock((v22 + 72));
  return v11;
}

uint64_t sub_23F0507F4(void *a1, unint64_t a2)
{
  v4 = a1[1];
  std::mutex::lock(v4);
  v6 = a1 + 3;
  v5 = a1[3];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = a1 + 3;
  v8 = a1[3];
  do
  {
    v9 = v8[4];
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v7 = v8;
    }

    v8 = v8[v11];
  }

  while (v8);
  if (v7 != v6 && v7[4] <= a2)
  {
    v14 = a1 + 3;
    v15 = a1[3];
    do
    {
      v16 = v15[4];
      v10 = v16 >= a2;
      v17 = v16 < a2;
      if (v10)
      {
        v14 = v15;
      }

      v15 = v15[v17];
    }

    while (v15);
    if (v14 != v6 && v14[4] <= a2)
    {
      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        v20 = v14;
        do
        {
          v19 = v20[2];
          v21 = *v19 == v20;
          v20 = v19;
        }

        while (!v21);
      }

      if (a1[2] == v14)
      {
        a1[2] = v19;
      }

      --a1[4];
      sub_23EF36BE4(v5, v14);
      operator delete(v14);
    }

    v12 = 1;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  std::mutex::unlock(v4);
  return v12;
}

void sub_23F050914(uint64_t a1, void *a2)
{
  v26 = 0;
  LOBYTE(__p[0]) = 0;
  v4 = sub_23F04BB84(a2, __p);
  if (v26 < 0)
  {
    v6 = v4;
    operator delete(__p[0]);
    v5 = a2 + 1;
    if (a2 + 1 == v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = a2 + 1;
    if (a2 + 1 == v4)
    {
      goto LABEL_8;
    }
  }

  v26 = 0;
  LOBYTE(__p[0]) = 0;
  v7 = sub_23F04BB84(a2, __p);
  if (v26 < 0)
  {
    v8 = v7;
    operator delete(__p[0]);
    v7 = v8;
  }

  if (!*(v7 + 56))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set root context to inherit its enable-state");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

LABEL_8:
  std::__shared_mutex_base::lock((a1 + 72));
  v9 = *a2;
  if (*a2 != v5)
  {
    do
    {
      v10 = *(v9 + 55);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = v9[4];
        v10 = v9[5];
      }

      else
      {
        v11 = (v9 + 4);
      }

      v12 = sub_23F04FAD8(a1, v11, v10);
      v13 = *(v9 + 56);
      v14 = v12[4];
      if (*(v9 + 56))
      {
        if (!*v14)
        {
          operator new();
        }

        if (*v14 != v13)
        {
          *v14 = v13;
        }
      }

      else if (*v14)
      {
        v15 = v12[5];
        v16 = atomic_load(*(*(v12[6] + 72) + 40));
        atomic_exchange(v15, v16);
        sub_23F04E548(v12);
        operator new();
      }

      v17 = v9[1];
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
          v18 = v9[2];
          v19 = *v18 == v9;
          v9 = v18;
        }

        while (!v19);
      }

      v9 = v18;
    }

    while (v18 != v5);
  }

  v20 = *(a1 + 8);
  std::mutex::lock(v20);
  v21 = *(a1 + 16);
  if (v21 != (a1 + 24))
  {
    do
    {
      (*(*v21[4] + 24))(v21[4], a2);
      v22 = v21[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v21[2];
          v19 = *v23 == v21;
          v21 = v23;
        }

        while (!v19);
      }

      v21 = v23;
    }

    while (v23 != (a1 + 24));
  }

  std::mutex::unlock(v20);
  std::__shared_mutex_base::unlock((a1 + 72));
}

void sub_23F050C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F050C70(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28517C1E0;
  operator new();
}

void sub_23F05146C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  sub_23F052DD0(&a19);
  v27 = *(a15 + 8);
  *(a15 + 8) = 0;
  if (!v27)
  {
    _Unwind_Resume(a1);
  }

  (*(*v27 + 8))(v27);
  _Unwind_Resume(a1);
}

void *sub_23F0515E8(void *result)
{
  v1 = result[1];
  *result = &unk_28517C1E0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_23F05165C(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_28517C1E0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0516EC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  return sub_23F05046C(v3, a2);
}

uint64_t sub_23F051834(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  return sub_23F0507F4(v3, a2);
}

void *sub_23F05197C(uint64_t a1, char *a2, size_t a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

LABEL_10:
  std::__shared_mutex_base::lock((v5 + 72));
  v11 = sub_23F04FAD8(v5, a2, a3);
  std::__shared_mutex_base::unlock((v5 + 72));
  return v11;
}

unint64_t sub_23F051AF8(uint64_t a1, const void *a2, size_t a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v5 = a1;
    v6 = a2;
    v7 = a3;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v8 = qword_27E396178, v9 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v4 = *(v5 + 8);
        a3 = v7;
        a2 = v6;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = qword_27E396178;
      v9 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v8 != v9);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  return sub_23F04F9A4(v4, a2, a3);
}

void sub_23F051C48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  sub_23F050914(v3, a2);
}

uint64_t sub_23F051D90(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return v1 + 240;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_27E3961A8 == 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, &unk_23F3091D6, 0);
      }

      while (v4 != v5);
      if (byte_27E3961A0)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
  return *(a1 + 8) + 240;
}

void sub_23F051EF8(uint64_t a1)
{
  sub_23F052E98(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F051F30(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_26:
    abort();
  }

LABEL_10:
  v11 = *(v5 + 40);
  v12 = **(v11 + 48);
  std::__shared_mutex_base::lock_shared((v12 + 72));
  v13 = &a2[a3];
  v14 = 0;
  if (a3)
  {
    while (a2[v14] != 46)
    {
      if (a3 == ++v14)
      {
        v14 = a3;
        break;
      }
    }
  }

  v15 = 0;
  v21[0] = a2;
  v21[1] = &a2[a3];
  v21[2] = a2;
  v21[3] = a2;
  v21[4] = v14;
  v22 = 46;
  v23 = &unk_23F3143B8;
  v24 = &unk_23F3143B8;
  v25 = &unk_23F3143B8;
  v26 = &unk_23F3143B8;
  v27 = 0;
  v28 = 0;
  if (a3 && a2 != &unk_23F3143B8)
  {
    v15 = 0;
    do
    {
      ++v15;
      v16 = &a2[v14];
      if (v16 == v13)
      {
        break;
      }

      a2 = v16 + 1;
      if (v16 + 1 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        while (a2[v14] != 46)
        {
          if (v13 - a2 == ++v14)
          {
            v14 = v13 - a2;
            break;
          }
        }
      }
    }

    while (a2 != &unk_23F3143B8);
  }

  v29 = v15;
  v19 = v11;
  v20 = 0;
  sub_23F05260C(v11, v21, 0, &v19);
  v17 = v19;
  std::__shared_mutex_base::unlock_shared((v12 + 72));
  return v17;
}

void *sub_23F052174(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_6:
      MEMORY[0x245CACD00](v1, 0x1012C4045E9F9B4);
      return v2;
    }

    operator delete(*v1);
    goto LABEL_6;
  }

  return result;
}

void *sub_23F0521F4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_23F052380(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void sub_23F052518(uint64_t a1)
{
  sub_23F053068(*(a1 + 88));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 16);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F05260C(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
LABEL_1:
  v35 = a1;
  v36 = a4;
  v34 = *(a1 + 48);
  v5 = v34[6];
  v4 = v34[7];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  v7 = a2[12];
  v31 = v7;
  v32 = a3;
  if (v7 >= v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  }

  v30 = v7;
  v8 = v7 - a3;
  v9 = v6 - a3;
  if (v6 < a3)
  {
    v9 = 0;
  }

  if (v6 < v9)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  }

  v10 = (v5 + 24 * (v6 - v9));
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v10) >> 3);
  if (v11 >= v8)
  {
    v11 = v8;
  }

  v12 = &v10[3 * v11];
  v33 = a2;
  sub_23F0528D0(v37, a2, a3, v8);
  v13 = v38;
  v14 = v39;
  v15 = v40;
  v16 = v41;
  v17 = v42;
  v18 = v43;
  v19 = v44;
  v20 = v45;
LABEL_10:
  while (1)
  {
    if (v10 == v12)
    {
      v21 = v20 == v18 && v15 == v13;
      if (v21 || v14 == v19)
      {
        break;
      }
    }

    v22 = *(v10 + 23);
    if (v22 < 0)
    {
      v23 = *v10;
      if (v16 != v10[1])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = v10;
      if (v16 != v22)
      {
        goto LABEL_27;
      }
    }

    if (memcmp(v14, v23, v16))
    {
LABEL_27:
      a4 = v36;
      if (*v36 != v35)
      {
        return 0;
      }

      v25 = v34[9];
      if (!v25)
      {
        return 1;
      }

      *v36 = v25;
      a1 = v34[9];
      a3 = v32;
      a2 = v33;
LABEL_31:

      goto LABEL_1;
    }

    v10 += 3;
    v15 = &v14[v16];
    v14 = v15;
    v16 = 0;
    if (v15 != v13)
    {
      v16 = 0;
      v14 = v15 + 1;
      if (v15 + 1 != v13)
      {
        v16 = 0;
        while (v14[v16] != v17)
        {
          if (v13 - v14 == ++v16)
          {
            v16 = v13 - v14;
            goto LABEL_10;
          }
        }
      }
    }
  }

  if (v31 > v6)
  {
    *v36 = v35;
    v26 = v34[10];
    if (v26 != v34 + 11)
    {
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * ((*(*(v26[4] + 48) + 56) - *(*(v26[4] + 48) + 48)) >> 3) <= v33[12] && (sub_23F05260C() & 1) != 0)
        {
          break;
        }

        v27 = v26[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v26[2];
            v21 = *v28 == v26;
            v26 = v28;
          }

          while (!v21);
        }

        v26 = v28;
      }

      while (v28 != v34 + 11);
    }

    return 1;
  }

  a4 = v36;
  if (v6 > v31)
  {
    v29 = v34[9];
    if (v29)
    {
      *v36 = v29;
      a1 = v34[9];
      a2 = v33;
      a3 = v30;
      goto LABEL_31;
    }

    return 1;
  }

  *v36 = v35;
  result = 1;
  *(v36 + 8) = 1;
  return result;
}

uint64_t sub_23F0528D0(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v7 = a2[4];
  v9 = *(a2 + 40);
  v11 = a2[7];
  v10 = a2[8];
  v12 = a2[9];
  v13 = v12 == v11;
  if (v8 == v5 && v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    if (v6 != v10)
    {
      v4 = 0;
      v15 = a2[2];
      v16 = a2[4];
      do
      {
        v15 += v16;
        if (v15 == v5)
        {
          v16 = 0;
          ++v4;
          if (v12 == v11)
          {
            break;
          }
        }

        else if (++v15 == v5)
        {
          v16 = 0;
          ++v4;
        }

        else
        {
          v17 = 0;
          v16 = v5 - v15;
          while (*(v15 + v17) != v9)
          {
            if (v16 == ++v17)
            {
              ++v4;
              goto LABEL_14;
            }
          }

          v16 = v17;
          ++v4;
        }

LABEL_14:
        ;
      }

      while (v15 != v10);
      v14 = 0;
      v18 = a2[4];
      v19 = a2[2];
      do
      {
        v19 += v18;
        if (v19 == v5)
        {
          v18 = 0;
          ++v14;
          if (v12 == v11)
          {
            break;
          }
        }

        else if (++v19 == v5)
        {
          v18 = 0;
          ++v14;
        }

        else
        {
          v20 = 0;
          v18 = v5 - v19;
          while (*(v19 + v20) != v9)
          {
            if (v18 == ++v20)
            {
              ++v14;
              goto LABEL_26;
            }
          }

          v18 = v20;
          ++v14;
        }

LABEL_26:
        ;
      }

      while (v19 != v10);
    }
  }

  v21 = v4 >= a3;
  v22 = v4 - a3;
  if (!v21)
  {
    v22 = 0;
  }

  if (v14 < v22)
  {
    v22 = v14;
  }

  v23 = v14 - v22;
  if (v23 >= 1)
  {
    do
    {
      v8 = v6 + v7;
      if (v6 + v7 == v5)
      {
        v7 = 0;
        v6 = v8;
      }

      else
      {
        v6 = v8 + 1;
        if (v8 + 1 == v5)
        {
          v7 = 0;
        }

        else
        {
          v7 = 0;
          while (*(v6 + v7) != v9)
          {
            if (v5 - v6 == ++v7)
            {
              v7 = v5 - v6;
              break;
            }
          }
        }
      }

      v34 = v23-- > 1;
    }

    while (v34);
  }

  v24 = 0;
  v25 = v12 == v11 && v8 == v5;
  if (!v25 && v6 != v10)
  {
    v24 = 0;
    v26 = v7;
    v27 = v6;
    do
    {
      v27 += v26;
      if (v27 == v5)
      {
        v26 = 0;
        ++v24;
        if (v13)
        {
          break;
        }
      }

      else if (++v27 == v5)
      {
        v26 = 0;
        ++v24;
      }

      else
      {
        v28 = 0;
        v26 = v5 - v27;
        while (*(v27 + v28) != v9)
        {
          if (v26 == ++v28)
          {
            ++v24;
            goto LABEL_50;
          }
        }

        v26 = v28;
        ++v24;
      }

LABEL_50:
      ;
    }

    while (v27 != v10);
  }

  if (v24 >= a4)
  {
    v29 = a4;
  }

  else
  {
    v29 = v24;
  }

  v30 = *a2;
  v31 = v6;
  v32 = v8;
  v33 = v7;
  if (v29 >= 1)
  {
    v31 = v6;
    v33 = v7;
    do
    {
      v32 = v31 + v33;
      if (v31 + v33 == v5)
      {
        v33 = 0;
        v31 = v32;
      }

      else
      {
        v31 = v32 + 1;
        if (v32 + 1 == v5)
        {
          v33 = 0;
        }

        else
        {
          v33 = 0;
          while (*(v31 + v33) != v9)
          {
            if (v5 - v31 == ++v33)
            {
              v33 = v5 - v31;
              break;
            }
          }
        }
      }

      v34 = v29-- > 1;
    }

    while (v34);
  }

  v35 = 0;
  v36 = v8 == v5;
  *result = v30;
  *(result + 8) = v5;
  *(result + 16) = v6;
  *(result + 24) = v8;
  *(result + 32) = v7;
  *(result + 40) = v9;
  v37 = *(a2 + 41);
  *(result + 41) = v37;
  v38 = *(a2 + 11);
  *(result + 44) = v38;
  *(result + 48) = v30;
  *(result + 56) = v5;
  *(result + 64) = v31;
  *(result + 72) = v32;
  *(result + 80) = v33;
  *(result + 88) = v9;
  *(result + 92) = v38;
  v39 = v32 == v5 && v36;
  *(result + 89) = v37;
  if (!v39 && v6 != v31)
  {
    v35 = 0;
    do
    {
      v6 += v7;
      if (v6 == v5)
      {
        v7 = 0;
        ++v35;
        if (v32 == v5)
        {
          break;
        }
      }

      else if (++v6 == v5)
      {
        v7 = 0;
        ++v35;
      }

      else
      {
        v40 = 0;
        v7 = v5 - v6;
        while (*(v6 + v40) != v9)
        {
          if (v7 == ++v40)
          {
            ++v35;
            goto LABEL_92;
          }
        }

        v7 = v40;
        ++v35;
      }

LABEL_92:
      ;
    }

    while (v6 != v31);
  }

  *(result + 96) = v35;
  return result;
}

void sub_23F052CD8(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_23F052518(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x245CACD00](v3, 0x80C40B8603338);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x245CACD00](v4, 0x1000C4077774924);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x245CACD00);
}

std::mutex **sub_23F052D7C(std::mutex **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    std::mutex::~mutex(v2);
    MEMORY[0x245CACD00]();
    return v3;
  }

  return v1;
}

uint64_t sub_23F052DD0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v3)
    {
      sub_23F052518(v3);
    }

    v4 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v4)
    {
      MEMORY[0x245CACD00](v4, 0x80C40B8603338);
    }

    v5 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v5)
    {
      MEMORY[0x245CACD00](v5, 0x1000C4077774924);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x245CACD00](v2, 0x10B3C406DCED8F8);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_23F052E98(uint64_t a1)
{
  *a1 = &unk_28517C188;
  if (*(a1 + 264) == 1 && *(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  std::condition_variable::~condition_variable((a1 + 184));
  std::condition_variable::~condition_variable((a1 + 136));
  std::mutex::~mutex((a1 + 72));
  sub_23F053264(*(a1 + 56));
  sub_23F053068(*(a1 + 24));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    std::mutex::~mutex(v2);
    MEMORY[0x245CACD00]();
  }

  return a1;
}

void sub_23F052F44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F052F7C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
LABEL_6:

        JUMPOUT(0x245CACD00);
      }
    }

    else if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*v1);
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_23F053008(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F053068(void *a1)
{
  if (a1)
  {
    sub_23F053068(*a1);
    sub_23F053068(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_23F0530B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_23F053184(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v3)
      {
        v4 = *(v3 + 48);
        *(v3 + 48) = 0;
        if (v4)
        {
          sub_23F052518(v4);
        }

        v5 = *(v3 + 40);
        *(v3 + 40) = 0;
        if (v5)
        {
          MEMORY[0x245CACD00](v5, 0x80C40B8603338);
        }

        v6 = *(v3 + 32);
        *(v3 + 32) = 0;
        if (v6)
        {
          MEMORY[0x245CACD00](v6, 0x1000C4077774924);
        }

        if (*(v3 + 31) < 0)
        {
          operator delete(*(v3 + 8));
        }

        MEMORY[0x245CACD00](v3, 0x10B3C406DCED8F8);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_23F053264(char *a1)
{
  if (a1)
  {
    sub_23F053264(*a1);
    sub_23F053264(*(a1 + 1));
    v2 = *(a1 + 7);
    *(a1 + 7) = 0;
    if (v2)
    {
      v3 = *(v2 + 48);
      *(v2 + 48) = 0;
      if (v3)
      {
        sub_23F052518(v3);
      }

      v4 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v4)
      {
        MEMORY[0x245CACD00](v4, 0x80C40B8603338);
      }

      v5 = *(v2 + 32);
      *(v2 + 32) = 0;
      if (v5)
      {
        MEMORY[0x245CACD00](v5, 0x1000C4077774924);
      }

      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      MEMORY[0x245CACD00](v2, 0x10B3C406DCED8F8);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v6 = a1;
    }

    else
    {
      v6 = a1;
    }

    operator delete(v6);
  }
}

void sub_23F053364(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 200) & 1) != 0 || *(a1 + 160) == 1)
  {
    sub_23EF53784(v15, a1);
    v3 = v16;
    *(a2 + 24) = 0;
    *(a2 + 8) = v3;
    *(a2 + 48) = 0;
    if (v19 == 1)
    {
      *(a2 + 24) = *v17;
      *(a2 + 40) = v18;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      *(a2 + 48) = 1;
    }

    v4 = v20;
    *(a2 + 80) = 0;
    *(a2 + 56) = v4;
    *(a2 + 72) = v21;
    *(a2 + 104) = 0;
    v5 = v24;
    if (v24 == 1)
    {
      *(a2 + 80) = *v22;
      *(a2 + 96) = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 0;
      v6 = a2 + 112;
      *(a2 + 136) = 0;
      v7 = v27;
      if (v27 != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(a2 + 112) = 0;
      v6 = a2 + 112;
      *(a2 + 136) = 0;
      v7 = v27;
      if (v27 != 1)
      {
LABEL_7:
        *(a2 + 144) = 0;
        *(a2 + 168) = 0;
        if (v30 == 1)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    *v6 = *__p;
    *(v6 + 16) = v26;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    *(a2 + 136) = 1;
    *(a2 + 144) = 0;
    *(a2 + 168) = 0;
    if (v30 == 1)
    {
LABEL_8:
      *(a2 + 144) = v28;
      *(a2 + 160) = v29;
      v29 = 0;
      v28 = 0uLL;
      *(a2 + 168) = 1;
      *(a2 + 176) = 0;
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_12:
    *(a2 + 176) = 0;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (*(a1 + 96) == 1)
  {
    sub_23F053844(v15, a1);
    *(a2 + 8) = v16;
    *(a2 + 24) = 0;
    *(a2 + 48) = 0;
    if (v19 == 1)
    {
      *(a2 + 24) = *v17;
      *(a2 + 40) = v18;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      *(a2 + 48) = 1;
    }

    v9 = v20;
    *(a2 + 80) = 0;
    *(a2 + 56) = v9;
    *(a2 + 72) = v21;
    *(a2 + 104) = 0;
    v5 = v24;
    if (v24 == 1)
    {
      *(a2 + 80) = *v22;
      *(a2 + 96) = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 0;
      v10 = a2 + 112;
      *(a2 + 136) = 0;
      v11 = v27;
      if (v27 != 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *(a2 + 112) = 0;
      v10 = a2 + 112;
      *(a2 + 136) = 0;
      v11 = v27;
      if (v27 != 1)
      {
LABEL_27:
        *(a2 + 144) = 0;
        *(a2 + 168) = 0;
        if (v30 == 1)
        {
          goto LABEL_28;
        }

LABEL_39:
        *(a2 + 176) = 1;
        if (!v11)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    *v10 = *__p;
    *(v10 + 16) = v26;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    *(a2 + 136) = 1;
    *(a2 + 144) = 0;
    *(a2 + 168) = 0;
    if (v30 == 1)
    {
LABEL_28:
      *(a2 + 144) = v28;
      *(a2 + 160) = v29;
      v29 = 0;
      v28 = 0uLL;
      *(a2 + 168) = 1;
      *(a2 + 176) = 1;
      if (!v11)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    goto LABEL_39;
  }

  sub_23F053C8C(v15, a1);
  *(a2 + 8) = v16;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  if (v19 == 1)
  {
    *(a2 + 24) = *v17;
    *(a2 + 40) = v18;
    v17[1] = 0;
    v18 = 0;
    v17[0] = 0;
    *(a2 + 48) = 1;
  }

  v12 = v20;
  *(a2 + 80) = 0;
  *(a2 + 56) = v12;
  *(a2 + 72) = v21;
  *(a2 + 104) = 0;
  v5 = v24;
  if (v24 == 1)
  {
    *(a2 + 80) = *v22;
    *(a2 + 96) = v23;
    v22[1] = 0;
    v23 = 0;
    v22[0] = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 0;
    v13 = a2 + 112;
    *(a2 + 136) = 0;
    v14 = v27;
    if (v27 != 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *(a2 + 112) = 0;
    v13 = a2 + 112;
    *(a2 + 136) = 0;
    v14 = v27;
    if (v27 != 1)
    {
LABEL_34:
      *(a2 + 144) = 0;
      *(a2 + 168) = 0;
      if (v30 == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  *v13 = *__p;
  *(v13 + 16) = v26;
  __p[1] = 0;
  v26 = 0;
  __p[0] = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 168) = 0;
  if (v30 == 1)
  {
LABEL_35:
    *(a2 + 144) = v28;
    *(a2 + 160) = v29;
    v29 = 0;
    v28 = 0uLL;
    *(a2 + 168) = 1;
    *(a2 + 176) = 2;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_43:
  *(a2 + 176) = 2;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
    v5 = v24;
  }

LABEL_15:
  if ((v5 & 1) != 0 && SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v19 == 1 && SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23F0537E8(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2 != -1)
  {
    (off_28517C338[v2])(&v4, a1);
  }

  *(a1 + 176) = -1;
  return a1;
}

uint64_t sub_23F053844(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 39) < 0)
    {
      sub_23EF34EA4((a1 + 24), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 40) = a2[4];
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v7 = *(a2 + 56);
    *(a1 + 56) = a2[6];
    *(a1 + 64) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      sub_23EF34EA4((a1 + 80), a2[9], a2[10]);
    }

    else
    {
      v9 = *(a2 + 9);
      *(a1 + 96) = a2[11];
      *(a1 + 80) = v9;
    }

    *(a1 + 104) = 1;
  }

  if (*(a2 + 160) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_23EF34EA4(&v12, a2[14], a2[15]);
    }

    else
    {
      v12 = *(a2 + 7);
      v13 = a2[16];
    }

    *(a1 + 112) = v12;
    *(a1 + 128) = v13;
    *(a1 + 136) = 1;
    if ((a2[25] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 136) = 0;
    if ((a2[25] & 1) == 0)
    {
LABEL_21:
      v10 = 0;
      *(a1 + 144) = 0;
      goto LABEL_22;
    }
  }

  sub_23F053A58(a2 + 22, &v12);
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  v10 = 1;
LABEL_22:
  *(a1 + 168) = v10;
  return a1;
}

void sub_23F0539E0(_Unwind_Exception *exception_object)
{
  if (v1[104] == 1 && v1[103] < 0)
  {
    operator delete(*v3);
  }

  if (v1[48] == 1 && v1[47] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F053A58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1;
  v8 = 0;
  v7 = 0uLL;
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  sub_23F053B44(v5, v4, &v7);
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_23F053B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_23EF53BCC();
  }

  return a3;
}

void sub_23F053C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F053C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F053C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F053C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F053C8C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 39) < 0)
    {
      sub_23EF34EA4((a1 + 24), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 40) = a2[4];
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v7 = *(a2 + 56);
    *(a1 + 56) = a2[6];
    *(a1 + 64) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      sub_23EF34EA4((a1 + 80), a2[9], a2[10]);
    }

    else
    {
      v9 = *(a2 + 9);
      *(a1 + 96) = a2[11];
      *(a1 + 80) = v9;
    }

    *(a1 + 104) = 1;
  }

  if (*(a2 + 160) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_23EF34EA4(&v12, a2[14], a2[15]);
    }

    else
    {
      v12 = *(a2 + 7);
      v13 = a2[16];
    }

    *(a1 + 112) = v12;
    *(a1 + 128) = v13;
    *(a1 + 136) = 1;
    if ((a2[25] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 136) = 0;
    if ((a2[25] & 1) == 0)
    {
LABEL_21:
      v10 = 0;
      *(a1 + 144) = 0;
      goto LABEL_22;
    }
  }

  sub_23F053EA0(a2 + 22, &v12);
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  v10 = 1;
LABEL_22:
  *(a1 + 168) = v10;
  return a1;
}

void sub_23F053E28(_Unwind_Exception *exception_object)
{
  if (v1[104] == 1 && v1[103] < 0)
  {
    operator delete(*v3);
  }

  if (v1[48] == 1 && v1[47] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F053EA0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1;
  v8 = 0;
  v7 = 0uLL;
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  sub_23F053F8C(v5, v4, &v7);
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_23F053F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_23EF53BCC();
  }

  return a3;
}

void sub_23F05407C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F054098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F0540AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F0540C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F0540FC(int a1@<W1>, void *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      operator new();
    case 2:
      sub_23F2C5C10();
    case 3:
      sub_23F2C8774();
    case 4:
      sub_23F2C8D18();
    case 5:
      sub_23F2A1B94();
    case 6:
      sub_23F062938();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      sub_23F2BB380();
    case 10:
      operator new();
    case 11:
      sub_23F05A6E8();
    case 12:
      sub_23F2BD934();
    case 13:
      sub_23F2BDF34();
    default:
      *a2 = 0;
      a2[1] = 0;
      v2 = *MEMORY[0x277D85DE8];
      return;
  }
}

void sub_23F055B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_23F0537E8(&v23[1].__shared_weak_owners_);
  sub_23EF44860(v24 + 16);
  sub_23F2A1D40(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_23F2A1D40(&a9);
  _Unwind_Resume(a1);
}

void sub_23F055BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_23EF44860(v24 + 16);
  sub_23EF3AE8C(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F055C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_23EF44860(v24 + 16);
  sub_23EF3AE8C(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F055C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_23EF44860(v24 + 16);
  sub_23EF3AE8C(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F055C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_23EF44860(v24 + 16);
  sub_23EF3AE8C(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F055CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_23EF44860(v24 + 16);
  sub_23EF3AE8C(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F055E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F055ED8(char **lpsrc@<X2>, int a2@<W1>, void *a3@<X8>)
{
  switch(a2)
  {
    case 1:
      v11 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517C108, 0))
      {
        goto LABEL_93;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/IData.h", 839, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v12 = qword_27E396178, v13 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_92:
          qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
LABEL_93:
          operator new();
        }
      }

      else
      {
        v12 = qword_27E396178;
        v13 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v43 = *v12;
        v42 = *(v12 + 8);
        v12 += 16;
        v43(v42, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      }

      while (v12 != v13);
      if (byte_27E3961A0)
      {
        goto LABEL_92;
      }

      goto LABEL_104;
    case 2:
      v6 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_285179DD8, 0))
      {
        goto LABEL_78;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v22 = qword_27E396178, v23 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_77:
          qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
LABEL_78:
          operator new();
        }
      }

      else
      {
        v22 = qword_27E396178;
        v23 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v37 = *v22;
        v36 = *(v22 + 8);
        v22 += 16;
        v37(v36, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      }

      while (v22 != v23);
      if (byte_27E3961A0)
      {
        goto LABEL_77;
      }

      goto LABEL_104;
    case 3:
      v7 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517A0D0, 0))
      {
        goto LABEL_83;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v24 = qword_27E396178, v25 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_82:
          qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
LABEL_83:
          operator new();
        }
      }

      else
      {
        v24 = qword_27E396178;
        v25 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v39 = *v24;
        v38 = *(v24 + 8);
        v24 += 16;
        v39(v38, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      }

      while (v24 != v25);
      if (byte_27E3961A0)
      {
        goto LABEL_82;
      }

      goto LABEL_104;
    case 4:
      v3 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517A3C8, 0))
      {
        goto LABEL_63;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v16 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_62:
          qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
LABEL_63:
          operator new();
        }
      }

      else
      {
        v16 = qword_27E396178;
        v17 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v31 = *v16;
        v30 = *(v16 + 8);
        v16 += 16;
        v31(v30, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      }

      while (v16 != v17);
      if (byte_27E3961A0)
      {
        goto LABEL_62;
      }

      goto LABEL_104;
    case 5:
      sub_23F057960(&v48, lpsrc);
    case 6:
      v15 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_285178D08, 0))
      {
        goto LABEL_103;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v28 = qword_27E396178, v29 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_102:
          qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
LABEL_103:
          operator new();
        }
      }

      else
      {
        v28 = qword_27E396178;
        v29 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v47 = *v28;
        v46 = *(v28 + 8);
        v28 += 16;
        v47(v46, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      }

      while (v28 != v29);
      if (byte_27E3961A0)
      {
        goto LABEL_102;
      }

      goto LABEL_104;
    case 7:
      v8 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517BCC8, 0))
      {
        goto LABEL_88;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/IData.h", 839, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v9 = qword_27E396178, v10 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_87:
          qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
LABEL_88:
          operator new();
        }
      }

      else
      {
        v9 = qword_27E396178;
        v10 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v41 = *v9;
        v40 = *(v9 + 8);
        v9 += 16;
        v41(v40, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      }

      while (v9 != v10);
      if (byte_27E3961A0)
      {
        goto LABEL_87;
      }

      goto LABEL_104;
    case 8:
      sub_23F0575FC(&v48, lpsrc);
    case 9:
      v5 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517B0A0, 0))
      {
        goto LABEL_73;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v20 = qword_27E396178, v21 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_72:
          qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
LABEL_73:
          operator new();
        }
      }

      else
      {
        v20 = qword_27E396178;
        v21 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v35 = *v20;
        v34 = *(v20 + 8);
        v20 += 16;
        v35(v34, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      }

      while (v20 != v21);
      if (byte_27E3961A0)
      {
        goto LABEL_72;
      }

      goto LABEL_104;
    case 10:
      sub_23F057C68(&v48, lpsrc);
    case 11:
      sub_23F0580A4(&v48, lpsrc);
    case 12:
      v4 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517B930, 0))
      {
        goto LABEL_68;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_67:
          qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
LABEL_68:
          operator new();
        }
      }

      else
      {
        v18 = qword_27E396178;
        v19 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v33 = *v18;
        v32 = *(v18 + 8);
        v18 += 16;
        v33(v32, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      }

      while (v18 != v19);
      if (byte_27E3961A0)
      {
        goto LABEL_67;
      }

      goto LABEL_104;
    case 13:
      v14 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517BBF0, 0))
      {
        goto LABEL_98;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1)
        {
          goto LABEL_97;
        }

        v26 = qword_27E396178;
        v27 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v26 = qword_27E396178;
        v27 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v45 = *v26;
        v44 = *(v26 + 8);
        v26 += 16;
        v45(v44, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      }

      while (v26 != v27);
      if ((byte_27E3961A0 & 1) == 0)
      {
LABEL_104:
        abort();
      }

LABEL_97:
      qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
LABEL_98:
      operator new();
    default:
      *a3 = 0;
      a3[1] = 0;
      return;
  }
}

void sub_23F0574C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF3AE8C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_23F0574E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF3AE8C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_23F057508(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_23F057524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF3AE8C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_23F057544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF3AE8C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_23F057564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF3AE8C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_23F057584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF3AE8C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_23F0575A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF3AE8C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_23F0575FC(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_285178A90, 0))
  {
LABEL_10:
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "ptr != nullptr", 14, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F057904(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
    std::__shared_weak_count::~__shared_weak_count(v1);
    operator delete(v4);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_23F057960(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517A6C0, 0))
  {
LABEL_10:
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "ptr != nullptr", 14, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F057C38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F0537E8(&v2[1].__shared_weak_owners_);
  sub_23F2A1D40(va);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_23F057C68(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517B3B0, 0))
  {
LABEL_10:
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "ptr != nullptr", 14, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F057FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    std::__shared_weak_count::~__shared_weak_count(v28);
    operator delete(v30);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a9);
  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v31);
  _Unwind_Resume(a1);
}

void sub_23F05805C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_23F058074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0537E8(&v9[1].__shared_weak_owners_);
  sub_23EF531B0(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_23F0580A4(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (__dynamic_cast(lpsrc, &unk_28517BFA0, &unk_28517B670, 0))
  {
LABEL_10:
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "ptr != nullptr", 14, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "ptr != nullptr", 14, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F058420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 == 1 && a16 < 0)
  {
    operator delete(a11);
  }

  if (a10)
  {
    MEMORY[0x245CACD00](a10, 0x1000C4072FAA15ELL);
    std::__shared_weak_count::~__shared_weak_count(v24);
    operator delete(v26);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v27);
  _Unwind_Resume(a1);
}

uint64_t sub_23F0584F0(uint64_t a1, unsigned int a2)
{
  if (a2 - 1 < 0xD)
  {
    v5 = 0;
    operator new();
  }

  v5 = 0;
  v7 = v4;
  p_dst = "unknown type id ";
  v9 = v4;
  v10 = "unknown type id ";
  v11 = "unknown type id ";
  __dst.__r_.__value_.__r.__words[0] = &v7;
  sub_23F059C54(&__dst);
  std::to_string(&__dst, a2);
  v7 = v4;
  p_dst = &__dst;
  v9 = v4;
  v10 = &__dst;
  v11 = &__dst;
  if (v5 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v7;
  (off_28517C450[v5])(&v12, v4);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_23EF41D6C();
  }

  v7 = &__dst;
  result = (off_28517C480[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_28517C468[v5])(&v7, v4);
  }

  return result;
}

void sub_23F0588AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a17;
  a17 = 0;
  if (v18)
  {
    sub_23F302A54(&a17, v18);
  }

  sub_23EF41D10(&a10);
  _Unwind_Resume(a1);
}

void sub_23F0588F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C3C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F058990(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F0589E4(uint64_t a1)
{
  *(a1 + 24) = &unk_2851796A0;
  *(a1 + 32) = &unk_285179700;
  v2 = *(a1 + 240);
  if (v2)
  {
    *(a1 + 248) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v4, a1 + 40);
  }

  *(a1 + 216) = -1;
}

void sub_23F058AB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C4C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F058B04(uint64_t a1)
{
  *(a1 + 24) = &unk_285179C58;
  *(a1 + 32) = &unk_285179CB8;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_28517C498[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_23F058C18(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F058C6C(uint64_t a1)
{
  *(a1 + 24) = &unk_285179F50;
  *(a1 + 32) = &unk_285179FB0;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_28517C498[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_23F058D80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F058DD4(uint64_t a1)
{
  *(a1 + 24) = &unk_28517A248;
  *(a1 + 32) = &unk_28517A2A8;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_28517C498[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_23F058EE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C5B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void *sub_23F058F3C(void *result)
{
  v1 = result;
  v2 = result[29];
  result[3] = &unk_28517A540;
  result[4] = &unk_28517A5A0;
  if (v2)
  {
    result = v2(0);
  }

  v3 = *(v1 + 54);
  if (v3 != -1)
  {
    result = (off_285178F08[v3])(&v4, v1 + 5);
  }

  *(v1 + 54) = -1;
  return result;
}

void sub_23F05901C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F059070(uint64_t a1)
{
  *(a1 + 24) = &unk_28517AAB8;
  *(a1 + 32) = &unk_28517AB18;
  v2 = *(a1 + 232);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_28517C498[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_23F059184(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F059220(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C6A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F059274(uint64_t a1)
{
  *(a1 + 24) = &unk_28517AF20;
  *(a1 + 32) = &unk_28517AF80;
  v2 = *(a1 + 240);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_28517C498[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_23F059388(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C6F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0593E8(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_23EF34EA4(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 6);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 6);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_23EF34EA4((a1 + 32), *(a2 + 4), *(a2 + 5));
LABEL_6:
  *(a1 + 56) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    sub_23EF34EA4((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_23EF34EA4((a1 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v7;
  }

  return a1;
}

void sub_23F0594D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_23F05956C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F0595C0(uint64_t a1)
{
  *(a1 + 24) = &unk_28517B528;
  *(a1 + 32) = &unk_28517B588;
  if (*(a1 + 400) == 1 && *(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
    if (*(a1 + 368) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 368) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

LABEL_7:
  v2 = *(a1 + 216);
  if (v2 != -1)
  {
    (off_28517C498[v2])(&v3, a1 + 40);
  }

  *(a1 + 216) = -1;
}

void sub_23F0597D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10[176] == 1 && v10[175] < 0)
  {
    operator delete(*v12);
  }

  if (v10[144] == 1 && v10[143] < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F05986C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F0598C0(uint64_t a1)
{
  *(a1 + 24) = &unk_28517B7E8;
  *(a1 + 32) = &unk_28517B848;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_28517C498[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_23F0599D4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C7E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F059A28(uint64_t a1)
{
  *(a1 + 24) = &unk_28517BAA8;
  *(a1 + 32) = &unk_28517BB08;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_28517C498[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_23F059B3C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F059BD8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517C880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

size_t sub_23F059C54(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517C468[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

BOOL sub_23F059D58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  v5 = v3 != 5 && v3 != 2;
  v6 = *a2;
  v7 = *(*a2 + 136);
  v9 = v7 == 5 || v7 == 2;
  if (v5 == v9 || ((v3 & 0xFE) == 4) == ((v7 & 0xFE) != 4))
  {
    return 0;
  }

  result = 0;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      if (*(v2 + 128) || *(v6 + 128))
      {
        goto LABEL_77;
      }

      if (*v2 != *v6 || *(v2 + 4) != *(v6 + 4) || *(v2 + 8) != *(v6 + 8) || *(v2 + 12) != *(v6 + 12) || *(v2 + 16) != *(v6 + 16) || *(v2 + 20) != *(v6 + 20) || *(v2 + 24) != *(v6 + 24) || *(v2 + 28) != *(v6 + 28) || *(v2 + 32) != *(v6 + 32) || *(v2 + 36) != *(v6 + 36) || *(v2 + 40) != *(v6 + 40) || *(v2 + 44) != *(v6 + 44) || *(v2 + 48) != *(v6 + 48) || *(v2 + 52) != *(v6 + 52) || *(v2 + 56) != *(v6 + 56) || *(v2 + 60) != *(v6 + 60))
      {
        return 0;
      }
    }

    else
    {
      if (v3 != 5)
      {
        return result;
      }

      if (*(v2 + 128) != 1 || *(v6 + 128) != 1)
      {
        goto LABEL_77;
      }

      if (*v2 != *v6 || *(v2 + 8) != *(v6 + 8) || *(v2 + 16) != *(v6 + 16) || *(v2 + 24) != *(v6 + 24) || *(v2 + 32) != *(v6 + 32) || *(v2 + 40) != *(v6 + 40) || *(v2 + 48) != *(v6 + 48) || *(v2 + 56) != *(v6 + 56) || *(v2 + 64) != *(v6 + 64) || *(v2 + 72) != *(v6 + 72) || *(v2 + 80) != *(v6 + 80) || *(v2 + 88) != *(v6 + 88) || *(v2 + 96) != *(v6 + 96) || *(v2 + 104) != *(v6 + 104) || *(v2 + 112) != *(v6 + 112) || *(v2 + 120) != *(v6 + 120))
      {
        return 0;
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      if (*(v2 + 128) == 3 && *(v6 + 128) == 3)
      {
        return *v2 == *v6 && *(v2 + 8) == *(v6 + 8) && *(v2 + 16) == *(v6 + 16) && *(v2 + 24) == *(v6 + 24) && *(v2 + 32) == *(v6 + 32) && *(v2 + 40) == *(v6 + 40);
      }

LABEL_77:
      sub_23EF41D6C();
    }

    if (*(v2 + 128) != 2 || *(v6 + 128) != 2)
    {
      goto LABEL_77;
    }

    if (*v2 != *v6 || *(v2 + 4) != *(v6 + 4) || *(v2 + 8) != *(v6 + 8) || *(v2 + 12) != *(v6 + 12) || *(v2 + 16) != *(v6 + 16) || *(v2 + 20) != *(v6 + 20))
    {
      return 0;
    }
  }

  return 1;
}

void sub_23F05A11C(void *a1, uint64_t a2)
{
  sub_23EF2F9B0(a1, "{", 1);
  v3 = *(*a2 + 136);
  v4 = 0;
  operator new();
}

void sub_23F05A608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 73) < 0)
  {
    operator delete(*(v16 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_23F05A688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F05A69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 73) < 0)
  {
    operator delete(*(v5 - 96));
    sub_23EF41D10(va);
    _Unwind_Resume(a1);
  }

  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F05A6E8()
{
  if ((atomic_load_explicit(&qword_27E395B98, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395B98))
    {
      operator new();
    }
  }

  operator new();
}

BOOL sub_23F05A7EC(uint64_t a1, uint64_t a2)
{
  result = sub_23F059D58(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 31);
    if (v8 >= 0)
    {
      v9 = *(a1 + 31);
    }

    else
    {
      v9 = *(a1 + 16);
    }

    v10 = *(a2 + 31);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 16);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = (a2 + 8);
    v13 = v8 >= 0 ? (a1 + 8) : *(a1 + 8);
    v14 = *v12;
    v15 = (v11 >= 0 ? a2 + 8 : *v12);
    if (memcmp(v13, v15, v9))
    {
      return 0;
    }
  }

  v16 = *(a2 + 64);
  v17 = *(a1 + 64);
  result = v17 == v16;
  if (v17 != v16 || !*(a1 + 64))
  {
    return result;
  }

  v18 = *(a1 + 63);
  if (v18 >= 0)
  {
    v19 = *(a1 + 63);
  }

  else
  {
    v19 = *(a1 + 48);
  }

  v20 = *(a2 + 63);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 48);
  }

  if (v19 != v20)
  {
    return 0;
  }

  v22 = (a2 + 40);
  if (v18 >= 0)
  {
    v23 = (a1 + 40);
  }

  else
  {
    v23 = *(a1 + 40);
  }

  v24 = *v22;
  if (v21 >= 0)
  {
    v25 = (a2 + 40);
  }

  else
  {
    v25 = *v22;
  }

  return memcmp(v23, v25, v19) == 0;
}

void sub_23F05A924(void *a1, uint64_t *a2)
{
  sub_23EF2F9B0(a1, "Transform3{src: ", 16);
  if (*(a2 + 32) == 1)
  {
    v19 = 34;
    v4 = sub_23EF2F9B0(a1, &v19, 1);
    v5 = *(a2 + 31);
    if (v5 >= 0)
    {
      v6 = (a2 + 1);
    }

    else
    {
      v6 = a2[1];
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 31);
    }

    else
    {
      v7 = a2[2];
    }

    v8 = sub_23EF2F9B0(v4, v6, v7);
    v20 = 34;
    v9 = &v20;
    v10 = 1;
  }

  else
  {
    v9 = "world";
    v8 = a1;
    v10 = 5;
  }

  sub_23EF2F9B0(v8, v9, v10);
  sub_23EF2F9B0(a1, ", dst: ", 7);
  if (*(a2 + 64) == 1)
  {
    v21 = 34;
    v11 = sub_23EF2F9B0(a1, &v21, 1);
    v12 = *(a2 + 63);
    if (v12 >= 0)
    {
      v13 = (a2 + 5);
    }

    else
    {
      v13 = a2[5];
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 63);
    }

    else
    {
      v14 = a2[6];
    }

    v15 = sub_23EF2F9B0(v11, v13, v14);
    v22 = 34;
    v16 = &v22;
    v17 = 1;
  }

  else
  {
    v16 = "world";
    v15 = a1;
    v17 = 5;
  }

  sub_23EF2F9B0(v15, v16, v17);
  sub_23EF2F9B0(a1, ", transform:", 12);
  v18 = *a2;
  operator new();
}

uint64_t sub_23F05AB08(uint64_t a1, uint64_t a2, float *a3)
{
  v11 = a2;
  v12 = "{";
  v13 = a2;
  v14 = "{";
  v15 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_28517C8D8 + v3))(&v16);
  sub_23EF8158C(&v11, a2, a3);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_28517C8D8 + v6))(&v16, a2);
  sub_23EF8158C(&v11, a2, a3 + 1);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_28517C8D8 + v7))(&v16, a2);
  sub_23EF8158C(&v11, a2, a3 + 2);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_28517C8D8 + v8))(&v16, a2);
  sub_23EF8158C(&v11, a2, a3 + 3);
  v11 = a2;
  v12 = "}";
  v13 = a2;
  v14 = "}";
  v15 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_7:
    sub_23EF41D6C();
  }

  v16 = &v11;
  return (*(&off_28517C8D8 + v9))(&v16, a2);
}

size_t sub_23F05AC94(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517C8C0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

_BYTE *sub_23F05AD98(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F05B198(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23F05AE98(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517C8C0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F05AF8C(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28517C8C0[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23F05B14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F05B198(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
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
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_23F05B334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

size_t sub_23F05B348(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517C8C0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_23F05B43C(uint64_t a1, uint64_t a2, double *a3)
{
  v11 = a2;
  v12 = "{";
  v13 = a2;
  v14 = "{";
  v15 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_28517C8D8 + v3))(&v16);
  sub_23F05B5C8(&v11, a2, a3);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_28517C8D8 + v6))(&v16, a2);
  sub_23F05B5C8(&v11, a2, a3 + 1);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_28517C8D8 + v7))(&v16, a2);
  sub_23F05B5C8(&v11, a2, a3 + 2);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_28517C8D8 + v8))(&v16, a2);
  sub_23F05B5C8(&v11, a2, a3 + 3);
  v11 = a2;
  v12 = "}";
  v13 = a2;
  v14 = "}";
  v15 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_7:
    sub_23EF41D6C();
  }

  v16 = &v11;
  return (*(&off_28517C8D8 + v9))(&v16, a2);
}

void sub_23F05B5C8(uint64_t a1, uint64_t a2, double *a3)
{
  std::to_string(&v19, *a3);
  v5 = v19.__r_.__value_.__r.__words[0];
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v8 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (!size)
    {
      size = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (size != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_17;
      }

LABEL_15:
      v20 = a2;
      p_p = &v19;
      v22 = a2;
      v23 = &v19;
      v24 = &v19;
      v10 = *(a2 + 24);
      if (v10 == -1)
      {
        sub_23EF41D6C();
      }

      goto LABEL_16;
    }

    v9 = v8[size--];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (size == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (strtod(v5, 0) != *a3)
  {
    v20 = a2;
    p_p = &v19;
    v22 = a2;
    v23 = &v19;
    v24 = &v19;
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      sub_23EF41D6C();
    }

LABEL_16:
    __p = &v20;
    (off_28517C8F0[v10])(&__p, a2);
    goto LABEL_38;
  }

  v11 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v19;
  }

  else
  {
    v12 = v19.__r_.__value_.__r.__words[0];
  }

  v13 = 1;
  if (v12->__r_.__value_.__s.__data_[size] == 46)
  {
    v13 = 2;
  }

  v14 = v13 + size;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v19.__r_.__value_.__l.__size_;
  }

  if (v11 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  v18 = v15;
  if (v15)
  {
    memmove(&__p, v12, v15);
  }

  *(&__p + v15) = 0;
  v20 = a2;
  p_p = &__p;
  v22 = a2;
  v23 = &__p;
  v24 = &__p;
  v16 = *(a2 + 24);
  if (v16 == -1)
  {
    sub_23EF41D6C();
  }

  v25 = &v20;
  (off_28517C908[v16])(&v25, a2);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  operator delete(__p);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_41:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_23F05B848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

size_t sub_23F05B8B4(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517C8C0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

float sub_23F05B9A8(uint64_t a1, uint64_t *a2)
{
  *a1 = *(*a2 + 136);
  LODWORD(v2) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0;
  v3 = *a2;
  v4 = *(*a2 + 136);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (!*(v3 + 32))
      {
        LODWORD(v2) = *v3;
        v19 = *(v3 + 1);
        v20 = *(v3 + 4);
        v21 = *(v3 + 5);
        v22 = *(v3 + 8);
        v23 = *(v3 + 9);
        v24 = *(v3 + 12);
        v25 = *(v3 + 13);
        v26 = *(v3 + 2);
        v27 = *(v3 + 6);
        v28 = *(v3 + 10);
        v29 = *(v3 + 14);
        *(a1 + 8) = *v3;
        *(a1 + 12) = v20;
        *(a1 + 16) = v22;
        *(a1 + 20) = v24;
        *(a1 + 24) = v19;
        *(a1 + 28) = v21;
        *(a1 + 32) = v23;
        *(a1 + 36) = v25;
        *(a1 + 40) = v26;
        *(a1 + 44) = v27;
        *(a1 + 48) = v28;
        *(a1 + 52) = v29;
        return *&v2;
      }
    }

    else
    {
      if (v4 != 5)
      {
        return *&v2;
      }

      if (*(v3 + 32) == 1)
      {
        *&v2 = *v3;
        v7 = *(v3 + 1);
        v8 = *(v3 + 4);
        v9 = *(v3 + 5);
        v10 = *(v3 + 8);
        v11 = *(v3 + 9);
        v12 = *(v3 + 12);
        v13 = *(v3 + 13);
        v14 = *(v3 + 2);
        v15 = *(v3 + 6);
        v16 = *(v3 + 10);
        v17 = *(v3 + 14);
        *(a1 + 8) = *v3;
        *(a1 + 16) = v8;
        *(a1 + 104) = 1;
        *(a1 + 24) = v10;
        *(a1 + 32) = v12;
        *(a1 + 40) = v7;
        *(a1 + 48) = v9;
        *(a1 + 56) = v11;
        *(a1 + 64) = v13;
        *(a1 + 72) = v14;
        *(a1 + 80) = v15;
        *(a1 + 88) = v16;
        *(a1 + 96) = v17;
        return *&v2;
      }
    }

LABEL_15:
    sub_23EF41D6C();
  }

  if (v4 == 1)
  {
    if (*(v3 + 32) == 2)
    {
      *(a1 + 104) = 2;
      v2 = *v3;
      v18 = *(v3 + 2);
      *(a1 + 8) = *v3;
      *(a1 + 24) = v18;
      return *&v2;
    }

    goto LABEL_15;
  }

  if (v4 != 2)
  {
    return *&v2;
  }

  if (*(v3 + 32) != 3)
  {
    goto LABEL_15;
  }

  *(a1 + 104) = 3;
  v2 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *(a1 + 8) = *v3;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return *&v2;
}

uint64_t *sub_23F05BAF8(uint64_t *a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_27E395BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395BA0))
  {
    sub_23F05BDAC();
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_23F04A2C0(a1, &__p);
  v4 = qword_27E395BB0;
  if (!qword_27E395BB0)
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

  v7 = &qword_27E395BB0;
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
  if (v7 == &qword_27E395BB0)
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
    v20 = std::string::append(&v22, ", expected [Algebra|Affine][F|D]", 0x20uLL);
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
  *a2 = *(v7 + 56);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_23F05BD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void sub_23F05BDAC()
{
  v0 = 84148737;
  qword_27E395BB8 = 0;
  qword_27E395BB0 = 0;
  qword_27E395BA8 = &qword_27E395BB0;
  v1 = 0;
  sub_23F041BC0();
}

void sub_23F05C018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_23F05CB64(qword_27E395BB0);
    _Unwind_Resume(a1);
  }

  sub_23F05CB64(qword_27E395BB0);
  _Unwind_Resume(a1);
}

void sub_23F05C068(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 112);
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      if (!v2)
      {
        v7 = *(a1 + 16);
        v8 = *(a1 + 32);
        v9 = *(a1 + 48);
        v10 = *(a1 + 36);
        v11 = *(a1 + 52);
        v12 = *(a1 + 24);
        v13 = *(a1 + 40);
        v14 = *(a1 + 56);
        __asm { FMOV            V0.4S, #1.0 }

        LODWORD(_Q0) = *(a1 + 28);
        DWORD1(_Q0) = *(a1 + 44);
        DWORD2(_Q0) = *(a1 + 60);
        operator new();
      }
    }

    else if (v2 == 1)
    {
      v27 = *(a1 + 16);
      v26 = *(a1 + 24);
      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      v30 = *(a1 + 48);
      v31 = *(a1 + 56);
      v32 = *(a1 + 80);
      v33 = *(a1 + 88);
      v34 = *(a1 + 64);
      v35 = *(a1 + 96);
      v36 = *(a1 + 72);
      __asm { FMOV            V0.2D, #1.0 }

      *&_Q0 = *(a1 + 104);
      operator new();
    }
  }

  else if (v1 == 1)
  {
    if (v2 == 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 24);
      v5 = *(a1 + 28);
      v6 = *(a1 + 36);
      operator new();
    }
  }

  else if (v2 == 3)
  {
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    operator new();
  }

  sub_23EF41D6C();
}