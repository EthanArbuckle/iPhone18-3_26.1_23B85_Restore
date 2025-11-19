void sub_2338E66A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 168);
  if (v35)
  {
    *(v33 - 160) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338E67D8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(&v3);
  v1 = sub_2338E6858(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338E6840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338E6858(uint64_t *a1)
{
  sub_233764DC0(a1, __p);
  v1 = sub_2337BF480(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2338E68B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (**sub_2338E68D4(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936000, &unk_233917B0C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E6920(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        return &unk_284936000;
      }

      if (a4)
      {
        v6 = sub_2337BF190(a4, &unk_284936000);
      }

      else
      {
        v6 = a5 == &unk_233917B0C;
      }

      if (v6)
      {
        return (a2 + 8);
      }

      else
      {
        return 0;
      }
    }

    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a3 = sub_2338E6920;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (!a1)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      sub_2337239E8(v7);
    }

    result = 0;
    goto LABEL_11;
  }

  v9 = *(a2 + 16);
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0;
  *a3 = sub_2338E6920;
  return result;
}

void *sub_2338E6ACC(void *a1, int *a2, unint64_t *a3, float64_t *a4, double *a5, int *a6, unint64_t *a7, float64_t *a8, float64x2_t a9, double a10, double a11, float64x2_t a12, double *a13, int *a14)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284902C38;
  *&a9.f64[0] = *a3;
  *&a12.f64[0] = *a7;
  sub_233730EF8((a1 + 3), *a2, *a6, *a14, a9, *a4, *a5, a12, *a8, *a13);
  return a1;
}

id sub_2338E6B50(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *a1, a4, a5);
  v15[0] = v6;
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, a1[1], v8, v9);
  v15[1] = v10;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v15, 2, v12);

  return v13;
}

void sub_2338E6C18(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2338E6C40(uint64_t a1)
{
  v7 = (*(*(a1 + 32) + 16))();
  v5 = sub_2338E6B50(&v7, v1, v2, v3, v4);

  return v5;
}

uint64_t (**sub_2338E6C8C(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936010, &unk_233917BA0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E6CD8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = sub_2338E6CD8;
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = sub_2338E6CD8;
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_284936010;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_284936010);
  }

  else
  {
    v6 = a5 == &unk_233917BA0;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E6D98(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2338E6DE4(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827C8], &unk_233917BA4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2338E6E30(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E6E30;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E6E30;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827C8];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D827C8]);
  }

  else
  {
    v6 = a5 == &unk_233917BA4;
  }

  if (v6)
  {
    return a2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E6EF8(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return MEMORY[0x2821F9670](v1, sel_numberWithLong_, v2, v3, v4);
}

uint64_t (**sub_2338E6F44(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827D0], &unk_233917BA8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E6F90(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = sub_2338E6F90;
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = sub_2338E6F90;
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827D0];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D827D0]);
  }

  else
  {
    v6 = a5 == &unk_233917BA8;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

id sub_2338E7050(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v1 = sub_2338E7270(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2338E70BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E70D8(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  sub_233729070(v5 + 8, *a2, a2[1], (a2[1] - *a2) >> 2);
  *&v5[0] = sub_2338E7348;
  if (v5 != a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v6[0] = 0;
      v6[1] = 0;
      v3(2, a1, v6, 0, 0);
      (*&v5[0])(2, v5, a1, 0, 0);
      (v6)[0](2, v6, v5, 0, 0);
      sub_2337BF090(v6);
    }

    else
    {
      *(a1 + 8) = *(v5 + 8);
      *(a1 + 24) = *(&v5[1] + 1);
      memset(v5 + 8, 0, 24);
      *a1 = sub_2338E7348;
      *&v5[0] = 0;
    }
  }

  sub_2337BF090(v5);
  return a1;
}

void sub_2338E7218(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2338E7224(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936020, &unk_233917BD0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2338E7270(unsigned int **a1)
{
  v5 = sub_233755CB8(a1[1] - *a1);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v2, *v6, v3, v4);
      objc_msgSend_addObject_(v5, v9, v8, v10, v11);

      ++v6;
    }

    while (v6 != v7);
  }

  v12 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v2, v5, v3, v4);

  return v12;
}

void *sub_2338E7348(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      a3[2] = 0;
      a3[3] = 0;
      a3[1] = 0;
      sub_233729070((a3 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 2);
      result = 0;
      *a3 = sub_2338E7348;
      return result;
    }

    v8 = a2[1];
    if (v8)
    {
      a2[2] = v8;
      operator delete(v8);
    }

    result = 0;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *(a3 + 1) = *(a2 + 1);
    a3[3] = a2[3];
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    *a3 = sub_2338E7348;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    return &unk_284936020;
  }

  if (a4)
  {
    v7 = sub_2337BF190(a4, &unk_284936020);
  }

  else
  {
    v7 = a5 == &unk_233917BD0;
  }

  if (v7)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

id sub_2338E7450(uint64_t a1)
{
  v7[0] = (*(*(a1 + 32) + 16))();
  v7[1] = v1;
  v5 = sub_2337D891C(v7, v1, v2, v3, v4);

  return v5;
}

uint64_t (**sub_2338E749C(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936030, &unk_233917BE4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E74E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E74E8;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E74E8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_284936030;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_284936030);
  }

  else
  {
    v6 = a5 == &unk_233917BE4;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

id sub_2338E75B0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v1 = sub_2338E77D0(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2338E761C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E7638(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  sub_233729070(v5 + 8, *a2, a2[1], (a2[1] - *a2) >> 2);
  *&v5[0] = sub_2338E78A8;
  if (v5 != a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v6[0] = 0;
      v6[1] = 0;
      v3(2, a1, v6, 0, 0);
      (*&v5[0])(2, v5, a1, 0, 0);
      (v6)[0](2, v6, v5, 0, 0);
      sub_2337BF090(v6);
    }

    else
    {
      *(a1 + 8) = *(v5 + 8);
      *(a1 + 24) = *(&v5[1] + 1);
      memset(v5 + 8, 0, 24);
      *a1 = sub_2338E78A8;
      *&v5[0] = 0;
    }
  }

  sub_2337BF090(v5);
  return a1;
}

void sub_2338E7778(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2338E7784(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936040, &unk_233917C0C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2338E77D0(unsigned int **a1)
{
  v5 = sub_233755CB8(a1[1] - *a1);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v2, *v6, v3, v4);
      objc_msgSend_addObject_(v5, v9, v8, v10, v11);

      ++v6;
    }

    while (v6 != v7);
  }

  v12 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v2, v5, v3, v4);

  return v12;
}

void *sub_2338E78A8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      a3[2] = 0;
      a3[3] = 0;
      a3[1] = 0;
      sub_233729070((a3 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 2);
      result = 0;
      *a3 = sub_2338E78A8;
      return result;
    }

    v8 = a2[1];
    if (v8)
    {
      a2[2] = v8;
      operator delete(v8);
    }

    result = 0;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *(a3 + 1) = *(a2 + 1);
    a3[3] = a2[3];
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    *a3 = sub_2338E78A8;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    return &unk_284936040;
  }

  if (a4)
  {
    v7 = sub_2337BF190(a4, &unk_284936040);
  }

  else
  {
    v7 = a5 == &unk_233917C0C;
  }

  if (v7)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E79B0(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2338E79FC(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936050, &unk_233917C28);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E7A48(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E7A48;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E7A48;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_284936050;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_284936050);
  }

  else
  {
    v6 = a5 == &unk_233917C28;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

id sub_2338E7B10(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v5 = sub_233729FBC(__p, v1, v2, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2338E7B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (**sub_2338E7B98(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936060, &unk_233917C6C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E7BE4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        return &unk_284936060;
      }

      if (a4)
      {
        v7 = sub_2337BF190(a4, &unk_284936060);
      }

      else
      {
        v7 = a5 == &unk_233917C6C;
      }

      if (v7)
      {
        return (a2 + 8);
      }

      else
      {
        return 0;
      }
    }

    v9 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *a3 = sub_2338E7BE4;
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
LABEL_11:
      operator delete(v8);
    }

LABEL_12:
    result = 0;
    *a2 = 0;
    return result;
  }

  if (*(a2 + 31) < 0)
  {
    sub_233731FB8((a3 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v11 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v11;
  }

  result = 0;
  *a3 = sub_2338E7BE4;
  return result;
}

uint64_t sub_2338E7CF8(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2338E7D44(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936070, &unk_233917C88);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E7D90(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E7D90;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E7D90;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_284936070;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_284936070);
  }

  else
  {
    v6 = a5 == &unk_233917C88;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_2338E7E58(uint64_t a1, int *a2)
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

uint64_t sub_2338E7F2C(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithFloat_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2338E7F74(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827B0], &unk_233917C8C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2338E7FC0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E7FC0;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E7FC0;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827B0];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D827B0]);
  }

  else
  {
    v6 = a5 == &unk_233917C8C;
  }

  if (v6)
  {
    return a2 + 8;
  }

  else
  {
    return 0;
  }
}

id sub_2338E8088(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v1 = sub_2338E8324(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2338E80F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E8110(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_233754F80(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_233728FF4(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_2338E818C(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  sub_233728FF4(v5 + 8, *a2, a2[1], (a2[1] - *a2) >> 1);
  *&v5[0] = sub_2338E83FC;
  if (v5 != a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v6[0] = 0;
      v6[1] = 0;
      v3(2, a1, v6, 0, 0);
      (*&v5[0])(2, v5, a1, 0, 0);
      (v6)[0](2, v6, v5, 0, 0);
      sub_2337BF090(v6);
    }

    else
    {
      *(a1 + 8) = *(v5 + 8);
      *(a1 + 24) = *(&v5[1] + 1);
      memset(v5 + 8, 0, 24);
      *a1 = sub_2338E83FC;
      *&v5[0] = 0;
    }
  }

  sub_2337BF090(v5);
  return a1;
}

void sub_2338E82CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2338E82D8(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936080, &unk_233917CB4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2338E8324(unsigned __int16 **a1)
{
  v5 = sub_233755CB8(a1[1] - *a1);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v2, *v6, v3, v4);
      objc_msgSend_addObject_(v5, v9, v8, v10, v11);

      ++v6;
    }

    while (v6 != v7);
  }

  v12 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v2, v5, v3, v4);

  return v12;
}

void *sub_2338E83FC(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      a3[2] = 0;
      a3[3] = 0;
      a3[1] = 0;
      sub_233728FF4((a3 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 1);
      result = 0;
      *a3 = sub_2338E83FC;
      return result;
    }

    v8 = a2[1];
    if (v8)
    {
      a2[2] = v8;
      operator delete(v8);
    }

    result = 0;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *(a3 + 1) = *(a2 + 1);
    a3[3] = a2[3];
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    *a3 = sub_2338E83FC;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    return &unk_284936080;
  }

  if (a4)
  {
    v7 = sub_2337BF190(a4, &unk_284936080);
  }

  else
  {
    v7 = a5 == &unk_233917CB4;
  }

  if (v7)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

id sub_2338E8504(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(&v3);
  v1 = sub_2337E1060(&v3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return v1;
}

void sub_2338E8570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E858C(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    sub_2337E004C(a1, a2);
  }

  else
  {
    sub_2337DF874(a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_2338E85D0()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  sub_2338E8744();
}

void sub_2338E86EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2338E86F8(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936090, &unk_233917CC4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E87BC(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_2338E8744(a3, a2[1]);
    }

    else
    {
      sub_2338E8878(a2);
    }

    return 0;
  }

  else if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = sub_2338E87BC;
    a3[1] = v8;
    *a2 = 0;
  }

  else if (a1 == 3)
  {
    if (a4)
    {
      v6 = sub_2337BF190(a4, &unk_284936090);
    }

    else
    {
      v6 = a5 == &unk_233917CC4;
    }

    if (v6)
    {
      return a2[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return &unk_284936090;
  }

  return result;
}

void sub_2338E8878(void *a1)
{
  v2 = a1[1];
  v3 = v2[1];
  if (v3)
  {
    v2[2] = v3;
    operator delete(v3);
  }

  operator delete(v2);
  *a1 = 0;
}

uint64_t sub_2338E88B8(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2338E8904(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849360A0, &unk_233917CD8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E8950(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E8950;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E8950;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849360A0;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849360A0);
  }

  else
  {
    v6 = a5 == &unk_233917CD8;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E8A18(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2338E8A64(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849360B0, &unk_233917CF0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E8AB0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E8AB0;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E8AB0;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849360B0;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849360B0);
  }

  else
  {
    v6 = a5 == &unk_233917CF0;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E8B78(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2338E8BC4(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849360C0, &unk_233917D0C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E8C10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E8C10;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E8C10;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849360C0;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849360C0);
  }

  else
  {
    v6 = a5 == &unk_233917D0C;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E8CD8(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2338E8D24(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849360D0, &unk_233917D28);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E8D70(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E8D70;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E8D70;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849360D0;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849360D0);
  }

  else
  {
    v6 = a5 == &unk_233917D28;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E8E38()
{
  if ((atomic_load_explicit(&qword_280C04F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C04F50))
  {
    operator new();
  }

  return qword_280C04F48;
}

void sub_2338E8EB0(_Unwind_Exception *a1)
{
  MEMORY[0x2383ABF10](v1, 0xA0C40E93CF5C4);
  __cxa_guard_abort(&qword_280C04F50);
  _Unwind_Resume(a1);
}

id sub_2338E8EE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2338E9364;
  v16 = sub_2338E9374;
  v17 = 0;
  v4 = sub_2338E937C();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2338E93C0;
  block[3] = &unk_2789F1068;
  v10 = &v12;
  v11 = a1;
  v9 = v3;
  v5 = v3;
  dispatch_sync(v4, block);

  v6 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v6;
}

id sub_2338E9010(void *a1)
{
  v1 = a1;
  v2 = sub_2338E8E38();
  v3 = sub_2338E9070(v2, v1);

  return v3;
}

id sub_2338E9070(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2338E9364;
  v16 = sub_2338E9374;
  v17 = 0;
  v4 = sub_2338E937C();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2338E9600;
  block[3] = &unk_2789F1068;
  v10 = &v12;
  v11 = a1;
  v9 = v3;
  v5 = v3;
  dispatch_sync(v4, block);

  v6 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v6;
}

void sub_2338E9198(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v3 = sub_2338E8E38();
  sub_2338E9200(v3, v4, a2);
}

void sub_2338E9200(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v9 = a2;
  if (objc_msgSend_isEqualToString_(v9, v5, @"unsupported", v6, v7))
  {
    if (qword_27DE3DE48 != -1)
    {
      sub_233900014();
    }

    v8 = qword_27DE3DE40;
  }

  else
  {
    v8 = sub_2338E8EE8(a1, v9);
  }

  if (v8)
  {
    sub_23386D780(v9, v8);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_2338E92D8()
{
  v5 = sub_23384AB9C(@"unsupported", @"camera");
  v3 = objc_msgSend_dictionaryWithContentsOfURL_(MEMORY[0x277CBEAC0], v0, v5, v1, v2);
  v4 = qword_27DE3DE40;
  qword_27DE3DE40 = v3;
}

uint64_t sub_2338E9364(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2338E937C()
{
  if ((atomic_load_explicit(&qword_280C04F60, memory_order_acquire) & 1) == 0)
  {
    sub_233900028();
  }

  v1 = qword_280C04F58;

  return v1;
}

void sub_2338E93C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 48);
  v7 = sub_2338E94CC(v6, *(a1 + 32), a3, a4, a5);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    sub_2338E9550(v6, &v15);
    if (v15)
    {
      v12 = sub_2338EB648(v15, *(a1 + 32));
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(v6 + 16), v10, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32), v11);
    if (v16)
    {
      sub_2337239E8(v16);
    }
  }
}

void sub_2338E9474(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(*(v14 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  __cxa_end_catch();
}

id sub_2338E94CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 16), a2, a2, a4, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *sub_2338E9550@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (!*result)
  {
    v2 = sub_2338E970C();
    sub_2338EB5EC(v2);
  }

  v3 = result[1];
  *a2 = *result;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338E95DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E9600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 48);
  v7 = sub_2338E94CC(v6, *(a1 + 32), a3, a4, a5);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    sub_2338E9550(v6, &v15);
    if (v15)
    {
      v12 = sub_2338EBEC0(v15, *(a1 + 32));
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(v6 + 16), v10, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32), v11);
    if (v16)
    {
      sub_2337239E8(v16);
    }
  }
}

void sub_2338E96B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(*(v14 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  __cxa_end_catch();
}

id sub_2338E970C()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = sub_2338E9778();
  v5 = objc_msgSend_fileURLWithPath_(v0, v2, v1, v3, v4);

  return v5;
}

__CFString *sub_2338E9778()
{
  v0 = sub_23384AC88();
  v5 = v0;
  if (v0)
  {
    v6 = objc_msgSend_bundleURL(v0, v1, v2, v3, v4);
    v11 = objc_msgSend_path(v6, v7, v8, v9, v10);
    v16 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15);

    if (v16)
    {
      if (objc_msgSend_containsString_(v16, v17, @"/RegressionTest.octest/Contents/Resources", v18, v19))
      {
        v24 = objc_msgSend_length(v16, v20, v21, v22, v23);
        objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v16, v25, @"/RegressionTest.octest/Contents/Resources", &stru_284938540, 0, 0, v24);
      }

      v26 = objc_msgSend_length(v16, v20, v21, v22, v23);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v16, v27, @"RawCamera.bundle", @"RawCameraSupport.bundle", 0, 0, v26);
      v32 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v28, v29, v30, v31);
      v36 = objc_msgSend_fileExistsAtPath_(v32, v33, v16, v34, v35);

      if (v36)
      {
        v37 = v16;
      }

      else
      {
        v37 = @"/System/Library/CoreServices/RawCameraSupport.bundle";
      }
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

void sub_2338E98B8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *sub_2338E9900(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  return a1;
}

void sub_2338E993C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E9954(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1[1];
  *a1 = v7;
  a1[1] = v6;
  if (v8)
  {
    sub_2337239E8(v8);
  }

  v9 = a1[2];

  return MEMORY[0x2821F9670](v9, sel_removeAllObjects, a3, a4, a5);
}

id sub_2338E99AC(void *a1, const char *a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_2338E9550(a1, &v10);
  if (v10)
  {
    v8 = sub_2338EC2B4(v10, a2, v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    sub_2337239E8(v11);
  }

  objc_autoreleasePoolPop(v4);

  return v8;
}

void sub_2338E9A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CreateListOfSupportedCamerasAndVersions(const char *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_2338E8E38();
  v4 = sub_2338E99AC(v3, a1);
  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_2338E9AB0(uint64_t a1)
{
  if ((*(*a1 + 176))(a1))
  {
    goto LABEL_2;
  }

  v10 = 0;
  (*(*a1 + 160))(&v8, a1);
  v2 = v8;
  sub_23372A488(__p, "IFD0:DNGPrivate:SR2Private:SR2SubIFD:WhiteLevel");
  v3 = (*(*v2 + 240))(v2, __p, &v10);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }

  if (v3)
  {
    goto LABEL_13;
  }

  (*(*a1 + 160))(&v8, a1);
  v4 = v8;
  sub_23372A488(__p, "IFD0:SR2Private:SR2SubIFD:0x7306");
  v5 = (*(*v4 + 240))(v4, __p, &v10);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }

  if (v5)
  {
LABEL_13:
    (*(*a1 + 848))(a1);
  }

  else
  {
LABEL_2:
    sub_2338D8F78(a1);
  }
}

void sub_2338E9C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E9CB0(uint64_t a1@<X0>, void **a2@<X8>)
{
  if ((*(*a1 + 176))(a1))
  {
    goto LABEL_9;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v9, a1);
  v4 = v9;
  sub_23372A488(__p, "IFD0:DNGPrivate:SR2Private:SR2SubIFD:BlackLevels");
  v5 = (*(*v4 + 248))(v4, __p, a2, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }

  if ((v5 & 1) == 0)
  {
    v6 = *a2;
    if (*a2)
    {
      a2[1] = v6;
      operator delete(v6);
    }

LABEL_9:
    sub_2338D50CC(a1, a2);
  }
}

void sub_2338E9DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E9E10(uint64_t a1)
{
  v2 = (*(*a1 + 2192))(a1);
  (*(*a1 + 2200))(__p, a1);
  v6 = 0;
  v7 = v2;
  v5 = &unk_284917748;
  (*(*a1 + 160))(&v3, a1);
  (*(*v3 + 600))(v3, __p, &v5, 3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2338E9F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E9F90()
{
  if ((atomic_load_explicit(&qword_280C04F80, memory_order_acquire) & 1) == 0)
  {
    sub_233900084();
  }

  return byte_280C04F78;
}

id sub_2338E9FC8()
{
  if ((atomic_load_explicit(&qword_280C04F90, memory_order_acquire) & 1) == 0)
  {
    sub_2339000E0();
  }

  v1 = qword_280C04F88;

  return v1;
}

id sub_2338EA00C()
{
  if (qword_280C04F68 != -1)
  {
    sub_23390013C();
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_2338EAA18;
  v8 = sub_2338EAA28;
  v9 = 0;
  v0 = sub_2338E9FC8();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2338EAA30;
  block[3] = &unk_2789EED30;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2338EA11C()
{
  v40 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch("com.apple.MobileAsset.RawCamera.Camera.ma.cached-metadata-updated", &unk_280C04F70, v1, &unk_284936CD0);

  v2 = objc_alloc(MEMORY[0x277D289D8]);
  v6 = objc_msgSend_initWithType_(v2, v3, qword_27DE37C70, v4, v5);
  MetaDataSync = objc_msgSend_queryMetaDataSync(v6, v7, v8, v9, v10);
  if (MetaDataSync)
  {
    v16 = sub_2338C0458();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_233900150();
    }
  }

  else
  {
    v21 = objc_msgSend_results(v6, v11, v12, v13, v14);
    v22 = qword_27DE3DE50;
    qword_27DE3DE50 = v21;
  }

  v23 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v17, v18, v19, v20, 0.0);
  v28 = objc_msgSend_lastFetchDate(v6, v24, v25, v26, v27);
  objc_msgSend_timeIntervalSinceDate_(v23, v29, v28, v30, v31);
  v33 = v32;

  if (v33 > 604800.0 || MetaDataSync == 2)
  {
    if (MetaDataSync == 2)
    {
      v34 = sub_2338C0458();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v38 = 136446210;
        v39 = "GetMobileAssetCatalog_block_invoke";
        v35 = "%{public}s MobileAsset catalog not present. Initiating download";
LABEL_13:
        _os_log_impl(&dword_23371F000, v34, OS_LOG_TYPE_INFO, v35, &v38, 0xCu);
      }
    }

    else
    {
      v34 = sub_2338C0458();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v38 = 136446210;
        v39 = "GetMobileAssetCatalog_block_invoke";
        v35 = "%{public}s MobileAsset may have been updated. Initiating download";
        goto LABEL_13;
      }
    }

    objc_msgSend_startCatalogDownload_then_(MEMORY[0x277D289C0], v36, qword_27DE37C70, &unk_284936CF0, v37);
  }

  if ((atomic_load_explicit(&qword_280C04FA0, memory_order_acquire) & 1) == 0)
  {
    sub_2339001CC();
  }

  if ((atomic_load_explicit(&qword_280C04FB0, memory_order_acquire) & 1) == 0)
  {
    sub_233900214();
  }

  dispatch_source_set_timer(qword_280C04FA8, 0x2260FF9290000uLL, 0x2260FF9290000uLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(qword_280C04FA8, &unk_284936D10);
  dispatch_resume(qword_280C04FA8);
  objc_autoreleasePoolPop(v0);
}

void sub_2338EA410()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = sub_2338C0458();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v17 = "GetMobileAssetCatalog_block_invoke_2";
    _os_log_impl(&dword_23371F000, v0, OS_LOG_TYPE_INFO, "%{public}s MobileAsset catalog was updated.", buf, 0xCu);
  }

  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277D289D8]);
  v6 = objc_msgSend_initWithType_(v2, v3, qword_27DE37C70, v4, v5);
  if (objc_msgSend_queryMetaDataSync(v6, v7, v8, v9, v10))
  {
    v11 = sub_2338C0458();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_233900150();
    }
  }

  else
  {
    v12 = sub_2338E9FC8();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2338EA618;
    block[3] = &unk_2789F10B0;
    v15 = v6;
    dispatch_async(v12, block);

    v13 = sub_2338C0458();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v17 = "GetMobileAssetCatalog_block_invoke_2";
      _os_log_impl(&dword_23371F000, v13, OS_LOG_TYPE_INFO, "%{public}s Updated catalog", buf, 0xCu);
    }

    v11 = v15;
  }

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_2338EA618(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_results(*(a1 + 32), a2, a3, a4, a5);
  v6 = qword_27DE3DE50;
  qword_27DE3DE50 = v5;

  return MEMORY[0x2821F96F8](v5, v6);
}

void sub_2338EA654(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = sub_2338C0458();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_23390026C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446466;
    v7 = "GetMobileAssetCatalog_block_invoke";
    v8 = 1024;
    v9 = 0;
    _os_log_impl(&dword_23371F000, v5, OS_LOG_TYPE_INFO, "%{public}s MobileAsset catalog download successful (Err: %d)", &v6, 0x12u);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_2338EA744()
{
  v33 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D289D8]);
  v5 = objc_msgSend_initWithType_(v1, v2, qword_27DE37C70, v3, v4);
  MetaDataSync = objc_msgSend_queryMetaDataSync(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v11, v12, v13, v14, 0.0);
  v20 = objc_msgSend_lastFetchDate(v5, v16, v17, v18, v19);
  objc_msgSend_timeIntervalSinceDate_(v15, v21, v20, v22, v23);
  v25 = v24;

  if (v25 > 604800.0 || MetaDataSync == 2)
  {
    if (MetaDataSync == 2)
    {
      v27 = sub_2338C0458();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v31 = 136446210;
        v32 = "GetMobileAssetCatalog_block_invoke";
        v28 = "%{public}s MobileAsset catalog not present. Initiating download";
LABEL_11:
        _os_log_impl(&dword_23371F000, v27, OS_LOG_TYPE_INFO, v28, &v31, 0xCu);
      }
    }

    else
    {
      v27 = sub_2338C0458();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v31 = 136446210;
        v32 = "GetMobileAssetCatalog_block_invoke";
        v28 = "%{public}s MobileAsset may have been updated. Initiating download";
        goto LABEL_11;
      }
    }

    objc_msgSend_startCatalogDownload_then_(MEMORY[0x277D289C0], v29, qword_27DE37C70, &unk_284936D30, v30);
  }

  objc_autoreleasePoolPop(v0);
}

void sub_2338EA934(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = sub_2338C0458();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_23390026C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "GetMobileAssetCatalog_block_invoke";
    _os_log_impl(&dword_23371F000, v5, OS_LOG_TYPE_INFO, "%{public}s MobileAsset catalog download successful", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_2338EAA18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2338EAA48(void *a1, int a2)
{
  v173 = *MEMORY[0x277D85DE8];
  v152 = a1;
  v151 = sub_2338EA00C();
  if (!v151)
  {
    v130 = 0;
    goto LABEL_46;
  }

  v2 = sub_23384AFB8();
  v153 = sub_23384B074(v2);

  v157 = objc_msgSend_lowercaseString(v152, v3, v4, v5, v6);
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = v151;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v162, v172, 16);
  if (v12)
  {
    v156 = 0;
    v155 = 0;
    v13 = *v163;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v163 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v162 + 1) + 8 * i);
        v16 = objc_msgSend_attributes(v15, v8, v9, v10, v11);
        v20 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"FormatVersion", v18, v19);

        if (objc_msgSend_intValue(v20, v21, v22, v23, v24) >= 2)
        {
          v29 = objc_msgSend_attributes(v15, v25, v26, v27, v28);
          v33 = objc_msgSend_objectForKeyedSubscript_(v29, v30, @"cameraVersionInfo", v31, v32);
          v37 = objc_msgSend_valueForKey_(v33, v34, v157, v35, v36);

          if (v37)
          {
            v41 = objc_msgSend_objectForKeyedSubscript_(v37, v38, @"cameraContentVersion", v39, v40);
            v46 = objc_msgSend_intValue(v41, v42, v43, v44, v45);

            v50 = objc_msgSend_objectForKeyedSubscript_(v37, v47, @"minRawCameraVersion", v48, v49);
            v51 = sub_23384B074(v50);

            if (v46 > a2 && v46 > v156 && v153 >= v51)
            {
              v52 = v15;

              v156 = v46;
              v155 = v52;
            }
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v162, v172, 16);
    }

    while (v12);

    if (!v155)
    {
      v155 = 0;
      v130 = 0;
      goto LABEL_45;
    }

    if (objc_msgSend_state(v155, v53, v54, v55, v56) == 1)
    {
      if ((atomic_load_explicit(&qword_27DE3DE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DE60))
      {
        qword_27DE3DE58 = objc_opt_new();
        __cxa_guard_release(&qword_27DE3DE60);
      }

      v61 = dispatch_time(0, 0);
      v65 = objc_msgSend_objectForKeyedSubscript_(qword_27DE3DE58, v62, v152, v63, v64);
      v70 = objc_msgSend_unsignedLongLongValue(v65, v66, v67, v68, v69);

      if (v61 > v70)
      {
        v71 = dispatch_semaphore_create(0);
        dispatch_time(0, 0);
        v159[0] = MEMORY[0x277D85DD0];
        v159[1] = 3221225472;
        v159[2] = sub_2338EB390;
        v159[3] = &unk_2789F10F8;
        v72 = v152;
        v160 = v72;
        v73 = v71;
        v161 = v73;
        objc_msgSend_startDownload_(v155, v74, v159, v75, v76);
        v77 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v73, v77);
        objc_msgSend_refreshState(v155, v78, v79, v80, v81);
        if (objc_msgSend_state(v155, v82, v83, v84, v85) == 2)
        {
          dispatch_time(0, 0);
          v89 = objc_msgSend_assetProperty_(v155, v86, @"cameraNames", v87, v88);
          v93 = objc_msgSend_componentsJoinedByString_(v89, v90, @", ", v91, v92);
          v94 = v93;
          if (v93)
          {
            v95 = v93;
          }

          else
          {
            v95 = v72;
          }

          v96 = v95;

          v97 = v96;
          AnalyticsSendEventLazy();
        }
      }
    }

    if (objc_msgSend_state(v155, v57, v58, v59, v60) == 4)
    {
      v102 = sub_2338C0458();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v167 = "GetAssetForKey";
        _os_log_impl(&dword_23371F000, v102, OS_LOG_TYPE_INFO, "%{public}s Asset is in the Downloading state", buf, 0xCu);
      }

      refreshed = objc_msgSend_refreshState(v155, v103, v104, v105, v106);
      v108 = sub_2338C0458();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
      {
        v113 = objc_msgSend_state(v155, v109, v110, v111, v112);
        v114 = "WAS NOT";
        v167 = "GetAssetForKey";
        *buf = 136446722;
        if (refreshed)
        {
          v114 = "was";
        }

        v168 = 2080;
        v169 = v114;
        v170 = 2048;
        v171 = v113;
        _os_log_impl(&dword_23371F000, v108, OS_LOG_TYPE_INFO, "%{public}s After calling refreshState the asset %s updated and the current state is %ld", buf, 0x20u);
      }
    }

    if (objc_msgSend_state(v155, v98, v99, v100, v101) == 2 || objc_msgSend_state(v155, v115, v116, v117, v118) == 3)
    {
      v119 = objc_msgSend_getLocalFileUrl(v155, v115, v116, v117, v118);
      v123 = objc_msgSend_URLByAppendingPathComponent_(v119, v120, v157, v121, v122);
      obj = objc_msgSend_URLByAppendingPathExtension_(v123, v124, @"camera", v125, v126);

      v130 = objc_msgSend_dictionaryWithContentsOfURL_(MEMORY[0x277CBEAC0], v127, obj, v128, v129);
      if (v130)
      {
        v131 = sub_2338C0458();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
        {
          v136 = objc_msgSend_attributes(v155, v132, v133, v134, v135);
          v140 = objc_msgSend_objectForKeyedSubscript_(v136, v137, @"cameraNames", v138, v139);
          v144 = objc_msgSend_componentsJoinedByString_(v140, v141, @", ", v142, v143);
          *buf = 136446722;
          v167 = "GetAssetForKey";
          v168 = 2112;
          v169 = v157;
          v170 = 2112;
          v171 = v144;
          _os_log_impl(&dword_23371F000, v131, OS_LOG_TYPE_INFO, "%{public}s Found asset for %@ (%@)", buf, 0x20u);
        }
      }

      goto LABEL_43;
    }

    obj = sub_2338C0458();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_INFO))
    {
      v150 = objc_msgSend_state(v155, v146, v147, v148, v149);
      *buf = 136446466;
      v167 = "GetAssetForKey";
      v168 = 2048;
      v169 = v150;
      _os_log_impl(&dword_23371F000, obj, OS_LOG_TYPE_INFO, "%{public}s Asset is not installed and has state %ld", buf, 0x16u);
    }
  }

  else
  {
    v155 = 0;
  }

  v130 = 0;
LABEL_43:

LABEL_45:
LABEL_46:

  return v130;
}

void sub_2338EB1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15)
{
  __cxa_guard_abort(&qword_27DE3DE60);

  _Unwind_Resume(a1);
}

void sub_2338EB390(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  if (a2)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = dispatch_time(0, 3600000000000);
    v13 = objc_msgSend_numberWithUnsignedLongLong_(v8, v10, v9, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(qword_27DE3DE58, v14, v13, *(a1 + 32), v15);

    v16 = sub_2338C0458();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_2339002E8();
    }
  }

  else
  {
    objc_msgSend_removeObjectForKey_(qword_27DE3DE58, v4, *(a1 + 32), v5, v6);
    v16 = sub_2338C0458();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = 136446210;
      v18 = "GetAssetForKey_block_invoke";
      _os_log_impl(&dword_23371F000, v16, OS_LOG_TYPE_INFO, "%{public}s Download asset successful", &v17, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  objc_autoreleasePoolPop(v7);
}

id sub_2338EB4FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = @"CameraName";
  v11[1] = @"DownloadTime";
  v12[0] = v6;
  v7 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], a2, v5 / 0xF4240, a4, a5);
  v12[1] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v12, v11, 2);

  return v9;
}

NSObject *sub_2338EB648(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v52 = v3;
  if (v3)
  {
    v4 = sub_2338EBA48(a1, v3, @"cam");
    v8 = objc_msgSend_valueForKeyPath_(v4, v5, @"version.contentVersion", v6, v7);
    v13 = objc_msgSend_intValue(v8, v9, v10, v11, v12);

    v15 = sub_2338EBDE4(v14, v52, @"cam", v13);
    v19 = v15;
    if (v15)
    {
      v20 = v15;

      v4 = v20;
    }

    v51 = v19;
    v21 = objc_msgSend_objectForKeyedSubscript_(v4, v16, @"alias", v17, v18);
    if (v21)
    {
      v53 = a1;
      v22 = 0;
      do
      {
        if (v22 == 2)
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = v4;
          v54 = sub_2338EB648(v53, v21);
          if (!v54)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v4 = objc_msgSend_mutableCopy(v4, v23, v24, v25, v26);
          objc_msgSend_removeObjectForKey_(v4, v27, @"alias", v28, v29);
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v30 = v54;
          v21 = 0;
          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v56, v60, 16);
          if (v35)
          {
            v36 = *v57;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v57 != v36)
                {
                  objc_enumerationMutation(v30);
                }

                v38 = *(*(&v56 + 1) + 8 * i);
                if (objc_msgSend_isEqualToString_(v38, v32, @"alias", v33, v34))
                {
                  objc_msgSend_objectForKeyedSubscript_(v30, v39, v38, v40, v41);
                  v21 = v42 = v21;
                }

                else
                {
                  v43 = objc_msgSend_objectForKeyedSubscript_(v4, v39, v38, v40, v41);
                  v44 = v43 == 0;

                  if (!v44)
                  {
                    continue;
                  }

                  v42 = objc_msgSend_objectForKeyedSubscript_(v30, v32, v38, v33, v34);
                  objc_msgSend_setObject_forKeyedSubscript_(v4, v45, v42, v38, v46);
                }
              }

              v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v56, v60, 16);
            }

            while (v35);
          }
        }

        ++v22;
      }

      while (v21);
    }

    v47 = v4;

    v48 = v47;
  }

  else
  {
    v47 = sub_2338C0458();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_233900364();
    }

    v48 = 0;
  }

  return v48;
}

NSObject *sub_2338EBA48(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v11 = v6;
  if (!v5)
  {
    v21 = sub_2338C0458();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_23390065C();
    }

    goto LABEL_31;
  }

  if (!v6)
  {
    v21 = sub_2338C0458();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_2339005DC();
    }

    goto LABEL_31;
  }

  v12 = objc_msgSend_lowercaseString(v5, v7, v8, v9, v10);
  sub_2338EBF64(a1, &v29);
  v16 = v29;
  if (v29)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@.%@", v14, v15, v12, v11);
    sub_23386CC6C(v16, v17, &v27);

    if (!v27)
    {
      v20 = sub_2338C0458();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_2339004DC();
      }

      v21 = 0;
      v23 = 0;
      goto LABEL_25;
    }

    v18 = sub_23378972C(v27);
    v19 = *MEMORY[0x277CBECE8];
    v20 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v18, *(v27 + 24), *MEMORY[0x277CBED00]);
    if (v20)
    {
      v21 = CFPropertyListCreateWithData(v19, v20, 0, 0, 0);
      if (v21)
      {
        v22 = sub_2338C0458();
        v23 = 1;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v32 = "resourceFromArchive";
          v33 = 2112;
          v34 = v12;
          _os_log_impl(&dword_23371F000, v22, OS_LOG_TYPE_INFO, "%{public}s Loaded asset data for %@", buf, 0x16u);
        }

        goto LABEL_24;
      }

      v22 = sub_2338C0458();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_2339003E4();
      }
    }

    else
    {
      v22 = sub_2338C0458();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_233900460();
      }
    }

    v21 = 0;
    v23 = 0;
LABEL_24:

LABEL_25:
    if (v28)
    {
      sub_2337239E8(v28);
    }

    goto LABEL_27;
  }

  v24 = sub_2338C0458();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_23390055C();
  }

  v21 = 0;
  v23 = 0;
LABEL_27:
  if (v30)
  {
    sub_2337239E8(v30);
  }

  if (v23)
  {
    v21 = v21;
    v25 = v21;
    goto LABEL_32;
  }

LABEL_31:
  v25 = 0;
LABEL_32:

  return v25;
}

void sub_2338EBD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(a1);
}

id sub_2338EBDE4(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v6 = a2;
  if ((sub_2338E9F90() & 1) == 0)
  {
    if (v6)
    {
      if (a3)
      {
        v7 = sub_2338EAA48(v6, a4);
        goto LABEL_11;
      }

      v8 = sub_2338C0458();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_2339006DC();
      }
    }

    else
    {
      v8 = sub_2338C0458();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_23390075C();
      }
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

id sub_2338EBEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_2338EBA48(a1, v3, @"ln");
  }

  else
  {
    v5 = sub_2338C0458();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_2339007DC();
    }

    v4 = 0;
  }

  return v4;
}

uint64_t sub_2338EBF64@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  if ((*(result + 56) & 1) == 0)
  {
    sub_2338EC240(result);
    objc_claimAutoreleasedReturnValue();
    v4 = MEMORY[0x277CBEBC0];
    v9 = sub_2338EC144(v2, v5, v6, v7, v8);
    v13 = objc_msgSend_fileURLWithPath_(v4, v10, v9, v11, v12);
    sub_23386C20C(v13);
  }

  v14 = *(result + 40);
  *a2 = *(result + 32);
  a2[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338EC0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

id sub_2338EC144(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2338EC1E4(a1, a2, a3, a4, a5);
  v8 = objc_msgSend_URLForResource_withExtension_(v5, v6, @"PlugIns", @"assets", v7);

  if (v8)
  {
    v13 = objc_msgSend_path(v8, v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_2338EC1E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (!v6)
  {
    v7 = objc_msgSend_bundleWithURL_(MEMORY[0x277CCA8D8], a2, *(a1 + 8), a4, a5);
    v8 = *a1;
    *a1 = v7;

    v6 = *a1;
  }

  return v6;
}

id sub_2338EC240(uint64_t a1)
{
  v1 = CFBundleCopyInfoDictionaryInDirectory(*(a1 + 8));
  v5 = v1;
  if (v1)
  {
    v6 = sub_233739A60(v1, @"CFBundleShortVersionString", v2, v3, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_2338EC2B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v299[2] = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    if (a2)
    {
      v273 = 0;
    }

    else
    {
      sub_2338EBF64(a1, &v292);
      if (v292)
      {
        v9 = sub_23386D030(v292, v5, v6, v7, v8);
        v270 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11, v12, v13);
        v267 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15, v16, v17);
        for (i = 0; ; i = v291 + 1)
        {
          v291 = i;
          if (i >= objc_msgSend_count(v9, v18, v19, v20, v21))
          {
            break;
          }

          v27 = sub_23386E0B8(v9, &v291, v24, v25, v26);
          if (objc_msgSend_hasSuffix_(v27, v28, @".cam", v29, v30))
          {
            v35 = objc_msgSend_length(v27, v31, v32, v33, v34);
            v38 = objc_msgSend_substringWithRange_(v27, v36, 0, v35 - 4, v37);
            v39 = sub_2338EB648(a1, v38);
            v40 = v39;
            if (v39)
            {
              v41 = sub_2338AE7EC(v39, @"rawImageClass", @"supportedMethods");
              v42 = sub_2338ED080(v40, @"version", @"cameraName");
              v47 = v42;
              if (v41 && v42)
              {
                v48 = objc_msgSend_string(MEMORY[0x277CCAB68], v43, v44, v45, v46);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_msgSend_appendString_(v48, v49, v47, v50, v51);
                }

                else
                {
                  v61 = v47;
                  for (j = 0; ; j = v290 + 1)
                  {
                    v290 = j;
                    if (j >= objc_msgSend_count(v61, v57, v58, v59, v60))
                    {
                      break;
                    }

                    if (objc_msgSend_length(v48, v63, v64, v65, v66))
                    {
                      objc_msgSend_appendString_(v48, v67, @"/", v69, v70);
                    }

                    v71 = sub_23386E0B8(v61, &v290, v68, v69, v70);
                    objc_msgSend_appendString_(v48, v72, v71, v73, v74);
                  }
                }

                v75 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v52, v53, v54, v55);
                objc_msgSend_setObject_forKeyedSubscript_(v75, v76, v41, @"supportedMethods", v77);
                objc_msgSend_setObject_forKeyedSubscript_(v75, v78, v27, @"id", v79);
                if ((objc_msgSend_containsObject_(v267, v80, v48, v81, v82) & 1) == 0)
                {
                  objc_msgSend_addObject_(v267, v83, v48, v84, v85);
                }

                if (sub_233739ACC(v270, v48))
                {
                  v93 = sub_2338ED114(v270, v48, v87, v88, v89);
                }

                else
                {
                  v93 = objc_msgSend_array(MEMORY[0x277CBEB18], v86, v87, v88, v89);
                  objc_msgSend_setObject_forKeyedSubscript_(v270, v94, v93, v48, v95);
                }

                objc_msgSend_addObject_(v93, v90, v75, v91, v92);
              }

              v56 = v41;
            }

            else
            {
              v56 = 0;
              v47 = 0;
            }
          }
        }

        v298[0] = @"keyArray";
        v298[1] = @"camDict";
        v299[0] = v267;
        v299[1] = v270;
        v197 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v299, v298, 2);
        v273 = objc_msgSend_mutableCopy(v197, v198, v199, v200, v201);
      }

      else
      {
        v273 = 0;
      }

      if (v293)
      {
        sub_2337239E8(v293);
      }
    }

    goto LABEL_95;
  }

  v273 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  sub_2338EBF64(a1, &v292);
  v96 = v292;
  if (!v292)
  {
    goto LABEL_66;
  }

  v97 = sub_23384AFB8();
  v254 = sub_23384B074(v97);

  sub_23386D030(v96, v98, v99, v100, v101);
  v288 = 0u;
  v289 = 0u;
  v286 = 0u;
  obj = v287 = 0u;
  v259 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v102, &v286, v297, 16);
  if (!v259)
  {
    goto LABEL_65;
  }

  v258 = *v287;
  do
  {
    v268 = 0;
    do
    {
      if (*v287 != v258)
      {
        objc_enumerationMutation(obj);
      }

      v107 = *(*(&v286 + 1) + 8 * v268);
      v108 = objc_msgSend_pathExtension(v107, v103, v104, v105, v106);
      isEqualToString = objc_msgSend_isEqualToString_(v108, v109, @"cam", v110, v111);

      if (isEqualToString)
      {
        v257 = objc_msgSend_stringByDeletingPathExtension(v107, v103, v104, v105, v106);
        v113 = sub_2338EBA48(a1, v257, @"cam");
        if (v113)
        {
          v265 = v113;
          v117 = objc_msgSend_valueForKeyPath_(v113, v114, @"version.minRawCameraVersion", v115, v116);
          v118 = sub_23384B074(v117);

          if (v254 < v118)
          {
            v261 = 0;
            v263 = 0;
            v122 = 0;
            goto LABEL_39;
          }

          v271 = objc_msgSend_valueForKeyPath_(v265, v119, @"version.cameraName", v120, v121);
          v126 = objc_msgSend_valueForKeyPath_(v265, v123, @"alias", v124, v125);
          v263 = v126;
          if (v126)
          {
            v130 = sub_2338EBA48(a1, v126, @"cam");

            v131 = v130;
          }

          else
          {
            v131 = v265;
          }

          v265 = v131;
          v132 = objc_msgSend_valueForKeyPath_(v131, v127, @"version.showInSystemProfiler", v128, v129);
          v136 = objc_msgSend_valueForKeyPath_(v265, v133, @"rawImageClass.supportedMethods", v134, v135);
          v140 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v137, &unk_284936D50, v138, v139);
          v261 = v132;
          v122 = objc_msgSend_filteredArrayUsingPredicate_(v136, v141, v140, v142, v143);

          if (v265 && v122 && v271 && (!v132 || objc_msgSend_BOOLValue(v132, v144, v145, v146, v147)))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v151 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v148, v271, v149, v150);
            }

            else
            {
              v151 = v271;
            }

            v284 = 0u;
            v285 = 0u;
            v282 = 0u;
            v283 = 0u;
            v271 = v151;
            v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v271, v152, &v282, v296, 16);
            if (v156)
            {
              v157 = *v283;
              do
              {
                for (k = 0; k != v156; ++k)
                {
                  if (*v283 != v157)
                  {
                    objc_enumerationMutation(v271);
                  }

                  v159 = *(*(&v282 + 1) + 8 * k);
                  v164 = objc_msgSend_objectForKeyedSubscript_(v273, v153, v159, v154, v155);
                  if (!v164)
                  {
                    v164 = objc_msgSend_array(MEMORY[0x277CBEB18], v160, v161, v162, v163);
                  }

                  objc_msgSend_addObjectsFromArray_(v164, v160, v122, v162, v163);
                  v165 = MEMORY[0x277CBEB18];
                  v169 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v166, v164, v167, v168);
                  v174 = objc_msgSend_allObjects(v169, v170, v171, v172, v173);
                  v178 = objc_msgSend_arrayWithArray_(v165, v175, v174, v176, v177);

                  objc_msgSend_sortUsingSelector_(v178, v179, sel_compare_, v180, v181);
                  objc_msgSend_setObject_forKeyedSubscript_(v273, v182, v178, v159, v183);
                }

                v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v271, v153, &v282, v296, 16);
              }

              while (v156);
            }
          }
        }

        else
        {
          v261 = 0;
          v263 = 0;
          v122 = 0;
          v265 = 0;
LABEL_39:
          v271 = 0;
        }
      }

      ++v268;
    }

    while (v268 != v259);
    v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v103, &v286, v297, 16);
    v259 = v184;
  }

  while (v184);
LABEL_65:

LABEL_66:
  if (v293)
  {
    sub_2337239E8(v293);
  }

  v185 = objc_alloc(MEMORY[0x277D289D8]);
  v260 = objc_msgSend_initWithType_(v185, v186, qword_27DE37C70, v187, v188);
  if (objc_msgSend_queryMetaDataSync(v260, v189, v190, v191, v192))
  {
    v262 = sub_2338C0458();
    if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
    {
      sub_23390085C();
    }
  }

  else
  {
    v280 = 0u;
    v281 = 0u;
    v278 = 0u;
    v279 = 0u;
    v262 = objc_msgSend_results(v260, v193, v194, v195, v196);
    v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(v262, v202, &v278, v295, 16);
    if (v203)
    {
      v264 = *v279;
      v266 = v203;
      do
      {
        for (m = 0; m != v266; m = m + 1)
        {
          if (*v279 != v264)
          {
            objc_enumerationMutation(v262);
          }

          v269 = objc_msgSend_attributes(*(*(&v278 + 1) + 8 * m), v204, v205, v206, v207);
          v211 = objc_msgSend_objectForKeyedSubscript_(v269, v208, @"showInSystemProfiler", v209, v210);
          v216 = objc_msgSend_BOOLValue(v211, v212, v213, v214, v215);

          if (v216)
          {
            v276 = 0u;
            v277 = 0u;
            v274 = 0u;
            v275 = 0u;
            v220 = objc_msgSend_objectForKeyedSubscript_(v269, v217, @"cameraNames", v218, v219);
            v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v221, &v274, v294, 16);
            if (v225)
            {
              v226 = *v275;
              do
              {
                for (n = 0; n != v225; ++n)
                {
                  if (*v275 != v226)
                  {
                    objc_enumerationMutation(v220);
                  }

                  v228 = *(*(&v274 + 1) + 8 * n);
                  v233 = objc_msgSend_objectForKeyedSubscript_(v273, v222, v228, v223, v224);
                  if (!v233)
                  {
                    v233 = objc_msgSend_array(MEMORY[0x277CBEB18], v229, v230, v231, v232);
                  }

                  objc_msgSend_addObjectsFromArray_(v233, v229, MEMORY[0x277CBEBF8], v231, v232);
                  v234 = MEMORY[0x277CBEB18];
                  v238 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v235, v233, v236, v237);
                  v243 = objc_msgSend_allObjects(v238, v239, v240, v241, v242);
                  v247 = objc_msgSend_arrayWithArray_(v234, v244, v243, v245, v246);

                  objc_msgSend_sortUsingSelector_(v247, v248, sel_compare_, v249, v250);
                  objc_msgSend_setObject_forKeyedSubscript_(v273, v251, v247, v228, v252);
                }

                v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v222, &v274, v294, 16);
              }

              while (v225);
            }
          }
        }

        v266 = objc_msgSend_countByEnumeratingWithState_objects_count_(v262, v204, &v278, v295, 16);
      }

      while (v266);
    }
  }

LABEL_95:

  return v273;
}

void sub_2338ECE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56)
{
  if (a56)
  {
    sub_2337239E8(a56);
  }

  _Unwind_Resume(a1);
}

id sub_2338ED080(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_233739994(a1, a2, 0);
  v10 = objc_msgSend_objectForKeyedSubscript_(v6, v7, v5, v8, v9);

  return v10;
}

void *sub_2338ED114(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a2, a4, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

uint64_t sub_2338ED180(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_hasSuffix_(v2, v3, @"p", v4, v5))
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_msgSend_isEqualToString_(v2, v6, @"0", v7, v8) ^ 1;
  }

  return v9;
}

void sub_2338ED298(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284936D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338ED2F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void sub_2338EDACC(uint64_t a1)
{
  v5 = &unk_28490E658;
  (*(*a1 + 160))(&v3);
  v2 = 11;
  strcpy(v1, "CaptureInfo");
  (*(*v3 + 600))();
  if (v2 < 0)
  {
    operator delete(v1[0]);
  }

  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_2338EDBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338EDBFC(uint64_t a1)
{
  (*(*a1 + 432))(a1);
  v3 = v2;
  v4 = (*(*a1 + 432))(a1);
  if ((v4 & 0x100000000) != 0)
  {
    v5 = -11;
  }

  else
  {
    v5 = -10;
  }

  v6 = v5 + HIDWORD(v4);
  v7 = (*(*a1 + 432))(a1);
  if (v6 * v3 >= 4001)
  {
    v7 += (v3 - 4000 / v6) / 2;
  }

  return v7 | 0x500000000;
}

void sub_2338EDD10(uint64_t a1)
{
  if (((*(*a1 + 176))(a1) & 1) == 0)
  {
    sub_2338EDF14(a1, &v8);
    sub_2338EF318(v8, &v6);
    sub_2338EE000(a1, &v8, &v6);
    sub_2338EE3A4(a1);
    v4 = sub_2338EE708(v2, v3, &v6);
    sub_2338EE77C(v4, v5, &v6);
    if (v7)
    {
      sub_2337239E8(v7);
    }

    if (v9)
    {
      sub_2337239E8(v9);
    }
  }
}

void sub_2338EDDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338EDDEC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  v5 = __dynamic_cast(v3, &unk_284903320, &unk_284937F70, 0);
  if (!v5)
  {
    v7 = __dynamic_cast(v3, &unk_284903320, &unk_284937C18, 0);
    if (v7)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_2338F5060(v7, a2);
      goto LABEL_10;
    }

LABEL_14:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2338F665C(v5, a2);
LABEL_10:
  if (v6)
  {

    sub_2337239E8(v6);
  }
}

void sub_2338EDEF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338EDF14(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 160))(&v4);
  sub_2338EDDEC(&v4, a2);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_2338EDFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338EE000(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (sub_2338798F0(*a3))
  {
    v6 = *(*a2 + 172);
    v7 = *(*a2 + 144);
    v40 = sub_2337DE858(*a2);
    sub_233726998(&v38, &v40);
    v8 = v38;
    if (v38 >> 4 >= 0x271)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v40 = sub_2337DE858(*a2);
    sub_233726998(&v38, &v40 + 1);
    v9 = v38;
    if (v38 >> 4 >= 0x271)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v10 = *a3;
    v40 = &unk_28492CFA0;
    v11 = v10[16];
    v12 = v10[17];
    v41 = v11;
    v42 = v12;
    v13 = v10[18];
    v14 = v10[19];
    v43 = v13;
    v44 = v14;
    v15 = v10[20];
    v16 = v10[21];
    v45 = v15;
    v46 = v16;
    v17 = v10[22];
    v18 = v10[23];
    v47 = v17;
    v48 = v18;
    v19 = *(*a2 + 176);
    if (v6)
    {
      v20 = v11;
    }

    else
    {
      v20 = v12;
    }

    if (v6)
    {
      v21 = v13;
    }

    else
    {
      v21 = v14;
    }

    if (v6)
    {
      v22 = v15;
    }

    else
    {
      v22 = v16;
    }

    (*(*a1 + 384))(&v38, a1);
    v23 = v19;
    v24 = v21 + (v17 * (v23 - v18));
    if (v24 >= 0.0)
    {
      v25 = v7;
    }

    else
    {
      v25 = 0;
    }

    if (v24 >= 0.0)
    {
      v26 = v8;
    }

    else
    {
      v26 = v7;
    }

    if (v25 >= v8 || v26 > v8 || v25 >= v26)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v27 = 0.0;
    if (*(*a2 + 72) >= 3)
    {
      v27 = *(*a2 + 116);
    }

    if (v9)
    {
      v28 = 0;
      v29 = v38;
      do
      {
        v30 = sub_2337B0628(v29);
        v29 = v38;
        v32 = (v30 + 2 * (*(v38 + 56) * v28));
        if (v24 >= 0.0)
        {
          v36 = v26 - v7;
          if (v26 > v7)
          {
            do
            {
              LOWORD(v31) = *v32;
              v31 = fminf(fmaxf(((v20 + (v24 * (LODWORD(v31) - v27))) + ((v22 * (LODWORD(v31) - v27)) * (LODWORD(v31) - v27))) + LODWORD(v31), 0.0), 65535.0);
              *v32++ = llroundf(v31);
              --v36;
            }

            while (v36);
          }
        }

        else
        {
          v33 = v26;
          do
          {
            LOWORD(v31) = *v32;
            v34 = LODWORD(v31);
            v35 = (v20 + (v24 * (v34 - v27))) + ((v22 * (v34 - v27)) * (v34 - v27));
            v31 = fminf(fmaxf(v34 - ((v35 * v34) / fmaxf(v35 + v34, 0.001)), 0.0), 65535.0);
            *v32++ = llroundf(v31);
            --v33;
          }

          while (v33);
        }

        ++v28;
      }

      while (v28 != v9);
    }

    if (v39)
    {
      sub_2337239E8(v39);
    }
  }
}

void sub_2338EE3A4(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v30[0x4000] = *MEMORY[0x277D85DE8];
  if (sub_233879900(*v2) && (*(*v5 + 172) & 1) == 0)
  {
    (*(*v6 + 384))(&v28, v6);
    v30[0] = sub_2337DE858(*v5);
    sub_233726998(&__p, v30);
    v7 = __p;
    if (__p >> 4 >= 0x271)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v30[0] = sub_2337DE858(*v5);
    sub_233726998(&__p, v30 + 1);
    v8 = __p;
    if (__p >> 4 >= 0x271)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v24, "RawCameraException");
      __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v9 = 0.0;
    if (*(*v5 + 72) >= 3)
    {
      v9 = *(*v5 + 116);
    }

    v10 = *v3;
    v26 = 0;
    v27 = 0;
    __p = 0;
    sub_233729070(&__p, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 2);
    v11 = __p;
    v12 = v26 - __p;
    if (v26 == __p)
    {
      sub_2337306B0();
    }

    if ((v12 >> 2) <= 1)
    {
      sub_2337306B0();
    }

    if (v12 == 8)
    {
      sub_2337306B0();
    }

    if ((v12 >> 2) <= 3)
    {
      sub_2337306B0();
    }

    v13 = 0;
    v14 = *__p;
    v15 = *(__p + 1);
    v16 = *(__p + 2);
    v17 = *(__p + 3);
    do
    {
      *(v30 + v13) = llroundf(fminf(fmaxf((((v14 + (v15 * (v13 - v9))) + ((v16 * (v13 - v9)) * (v13 - v9))) + (((v13 - v9) * (v17 * (v13 - v9))) * (v13 - v9))) + v13, 0.0), 65535.0));
      ++v13;
    }

    while (v13 != 0x10000);
    if (v8)
    {
      v18 = 0;
      v19 = v28;
      do
      {
        v20 = sub_2337B0628(v19);
        v19 = v28;
        if (v7)
        {
          v21 = (v20 + 2 * (*(v28 + 56) * v18));
          v22 = v7;
          do
          {
            *v21 = *(v30 + *v21);
            ++v21;
            --v22;
          }

          while (v22);
        }

        ++v18;
      }

      while (v18 != v8);
      v11 = __p;
    }

    if (v11)
    {
      v26 = v11;
      operator delete(v11);
    }

    if (v29)
    {
      sub_2337239E8(v29);
    }
  }
}

void sub_2338EE69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_2337239E8(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2338EE708(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_233879914(*a3);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

BOOL sub_2338EE77C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_233879924(*a3);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

id sub_2338EE7F0(uint64_t a1, void *a2)
{
  v2 = sub_2338D3C20(a1, a2);

  return v2;
}

void sub_2338EE81C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_2338EE8D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338EE8C4);
}

void sub_2338EE8E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338EE8F8(uint64_t *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 48))();
  LODWORD(v17[0]) = sub_233725414(*a2);
  LODWORD(v19[0]) = v4;
  LODWORD(v19[0]) = *sub_233725A80(v19, v17);
  sub_233754E8C(v20, a2, v19);
  v5 = sub_233725614(*a2);
  if (v5 != 1229539657 && v5 != 1296911693)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v5 == 1296911693)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  *a1 = v7;
  sub_233735A18(v19, a2, v7);
  v8 = sub_233725614(*a2);
  v18 = sub_233725614(*a2);
  if (v8 != 1382119235 && v8 != 1382119252)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v15, "RawCameraException");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233723AE0(&v16, &v18);
  sub_233725F08(v17, a2, &v16, 0);
  v9 = sub_233725614(*a2);
  sub_233725614(*a2);
  if (v9 > 0x1FF)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v13, "RawCameraException");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  for (; v9; --v9)
  {
    v10 = sub_233725614(*a2);
    sub_233725614(*a2);
    v16 = sub_233725614(*a2);
    v11 = sub_233725614(*a2);
    sub_2338EEBE4(a1, v10, &v16, v11, a2);
  }

  sub_233725FD4(v17);
  sub_233735A90(v19);
  return sub_233754F18(v20);
}

void sub_2338EEB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __cxa_free_exception(v15);
  sub_233735A90(&a15);
  sub_233754F18(v16 - 56);
  _Unwind_Resume(a1);
}

uint64_t *sub_2338EEBE4(uint64_t *result, int a2, unsigned int *a3, int a4, uint64_t *a5)
{
  v7 = result;
  v45 = a4;
  if (a2 <= 522)
  {
    switch(a2)
    {
      case 256:
        if (a4 == 2)
        {
          v8 = 8;
        }

        else
        {
          v8 = 1;
        }

        *(result + 46) = v8;
        return result;
      case 259:
        *(result + 42) = *&a4;
        return result;
      case 261:
        *(result + 20) = *&a4;
        return result;
      case 263:
        v24 = (result + 11);
        if (result[12] != result[11])
        {
          return result;
        }

        sub_233723AE0(&v41, &v45);
        sub_233725F08(v44, a5, &v41, 0);
        sub_23374B25C(v24, 3uLL);
        *&v41 = COERCE_FLOAT(sub_233725614(*a5));
        sub_2337F207C(v24, &v41);
        *&v41 = COERCE_FLOAT(sub_233725614(*a5));
        sub_2337F207C(v24, &v41);
        *&v41 = COERCE_FLOAT(sub_233725614(*a5));
        sub_2337F207C(v24, &v41);
        break;
      case 264:
        *(result + 2) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 265:
        *(result + 3) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 266:
        *(result + 4) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 267:
        *(result + 5) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 268:
        *(result + 6) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 269:
        *(result + 7) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 270:
        *(result + 18) = *&a4;
        return result;
      case 271:
        LODWORD(v44[0]) = sub_233725414(*a5);
        LODWORD(v44[0]) = *sub_233723874(v44, &v45);
        result = sub_233751844(v44);
        v7[4] = result;
        *(v7 + 10) = *a3;
        return result;
      case 272:
        sub_233723AE0(&v41, &v45);
        sub_233725F08(v44, a5, &v41, 0);
        sub_233878ED4(&v41);
      case 274:
        v25 = *a5;
        LODWORD(v44[0]) = -4;
        (*(*v25 + 40))(v25, v44, 1);
        *(v7 + 56) = sub_2337255C0(*a5);
        result = sub_2337255C0(*a5);
        *(v7 + 57) = result;
        return result;
      default:
        return result;
    }

    return sub_233725FD4(v44);
  }

  if (a2 > 545)
  {
    if (a2 > 767)
    {
      if (a2 == 768)
      {
        *(result + 19) = *&a4;
        return result;
      }

      if (a2 == 769)
      {
        sub_233723AE0(&v41, &v45);
        sub_233725F08(v44, a5, &v41, 0);
        if (*a3 <= 0x95)
        {
          v41 = 0uLL;
          v42 = 0;
          sub_2337257E8(*a5, a3, &v41);
          sub_2338F8878(&v41);
        }

        return sub_233725FD4(v44);
      }
    }

    else
    {
      if (a2 == 546)
      {
        *(result + 36) = *&a4;
        return result;
      }

      if (a2 == 547)
      {
        sub_233723AE0(&v41, &v45);
        sub_233725F08(v44, a5, &v41, 0);
        v43 = 2;
        LODWORD(v41) = *a3;
        v9 = *sub_2337B21A0(&v41, &v43);
        sub_23374B668(v7 + 15, v9);
        for (; v9; LODWORD(v9) = v9 - 1)
        {
          v10 = sub_2337256DC(*a5);
          v12 = v7[16];
          v11 = v7[17];
          if (v12 >= v11)
          {
            v14 = v7[15];
            v15 = v12 - v14;
            v16 = (v12 - v14) >> 1;
            if (v16 <= -2)
            {
              sub_2337235BC();
            }

            v17 = v11 - v14;
            if (v17 <= v16 + 1)
            {
              v18 = v16 + 1;
            }

            else
            {
              v18 = v17;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v19 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              sub_2337262C8((v7 + 15), v19);
            }

            v20 = (v12 - v14) >> 1;
            v21 = (2 * v16);
            v22 = (2 * v16 - 2 * v20);
            *v21 = v10;
            v13 = v21 + 1;
            memcpy(v22, v14, v15);
            v23 = v7[15];
            v7[15] = v22;
            v7[16] = v13;
            v7[17] = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v12 = v10;
            v13 = v12 + 2;
          }

          v7[16] = v13;
        }

        return sub_233725FD4(v44);
      }
    }
  }

  else if (a2 > 539)
  {
    if (a2 == 540)
    {
      sub_233723AE0(&v41, &v45);
      sub_233725F08(v44, a5, &v41, 0);
      v43 = 4;
      LODWORD(v41) = *a3;
      v26 = *sub_2337B21A0(&v41, &v43);
      sub_233754C14(v7 + 6, v26);
      for (; v26; LODWORD(v26) = v26 - 1)
      {
        v27 = sub_233725614(*a5);
        v29 = v7[7];
        v28 = v7[8];
        if (v29 >= v28)
        {
          v31 = v7[6];
          v32 = v29 - v31;
          v33 = (v29 - v31) >> 2;
          v34 = v33 + 1;
          if ((v33 + 1) >> 62)
          {
            sub_2337235BC();
          }

          v35 = v28 - v31;
          if (v35 >> 1 > v34)
          {
            v34 = v35 >> 1;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v36 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            sub_2337235D4((v7 + 6), v36);
          }

          v37 = (v29 - v31) >> 2;
          v38 = (4 * v33);
          v39 = (4 * v33 - 4 * v37);
          *v38 = v27;
          v30 = v38 + 1;
          memcpy(v39, v31, v32);
          v40 = v7[6];
          v7[6] = v39;
          v7[7] = v30;
          v7[8] = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v29 = v27;
          v30 = v29 + 4;
        }

        v7[7] = v30;
      }

      return sub_233725FD4(v44);
    }

    if (a2 == 541)
    {
      *(result + 29) = *&a4;
    }
  }

  else if (a2 == 523)
  {
    *(result + 172) = a4 != 0;
  }

  else if (a2 == 528)
  {
    *(result + 22) = *&a4;
  }

  return result;
}

uint64_t sub_2338EF318@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 152);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = *(result + 160);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338EF3A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284937980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338EF408(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  return a1;
}

double sub_2338EF468(uint32x2_t *a1, unsigned int a2, unsigned int a3)
{
  sub_2338EF5E0(a1, a2);
  v7 = v6;
  if (a2)
  {
    v8 = a2 % 3 < 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[29].u32[0];
  if (a1[30].i32[0])
  {
    v10 = v8 | (2 * (((a2 - 1) / 3) & ~(((a2 - 1) / 3) >> 31)));
    if (a3 % v9)
    {
      v11 = dword_233917E10[v10];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 + v7;
    if (a3 % v9 == v9 - 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = dword_233917E28[6 * ((a1[26].i32[0] >> 1) & ~(-1 << a1[27].i32[0])) + v10];
    }

    return (v12 + v13);
  }

  return v7;
}

double sub_2338EF5E0(uint32x2_t *a1, int a2)
{
  v2 = a1[27].i32[0];
  v3 = vshr_n_u32(a1[26], 1uLL);
  if (v2)
  {
    v4 = v2 - (a2 + 2) / 3u;
    v5 = v2 - 1;
    if (v4 < v5)
    {
      v5 = v4;
    }

    v6 = ~v5;
    do
    {
      v3 = vsra_n_u32(vand_s8(v3, 0x100000001), v3, 1uLL);
    }

    while (!__CFADD__(v6++, 1));
  }

  return 0.0;
}

void sub_2338EF6A4(uint32x2_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v12 = a3;
  v16 = objc_msgSend_objectForKeyedSubscript_(v11, v13, @"subband_headers", v14, v15);
  v20 = objc_msgSend_objectForKeyedSubscript_(v11, v17, @"dc_mode", v18, v19);
  v25 = objc_msgSend_intValue(v20, v21, v22, v23, v24);

  v29 = objc_msgSend_objectAtIndexedSubscript_(v16, v26, a5, v27, v28);
  if (!v29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  v30 = sub_2338EF468(a1, a5, a4);
  v32 = v31;
  *(a6 + 32) = v30;
  *(a6 + 40) = v31;
  *a6 = sub_2338EF5E0(a1, a5);
  *(a6 + 8) = v33;
  *(a6 + 16) = v34;
  *(a6 + 24) = v35;
  sub_2337A916C((a6 + 48), v30 * v32);
  if (a5)
  {
    v39 = 0;
  }

  else
  {
    v39 = v25 == 1;
  }

  v40 = v39;
  v41 = objc_msgSend_objectForKeyedSubscript_(v29, v36, @"stuffing_data_length", v37, v38);
  objc_msgSend_unsignedIntValue(v41, v42, v43, v44, v45);

  sub_2338F1EA8(v40, v30, v32, v12, (a6 + 48), 0);
  v48 = 0;
  v49 = 0;
  __p = 0;
  sub_233728FF4(&__p, *(a6 + 48), *(a6 + 56), (*(a6 + 56) - *(a6 + 48)) >> 1);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }
}

void sub_2338EF88C(_Unwind_Exception *a1)
{
  v9 = *v6;
  if (*v6)
  {
    *(v5 + 56) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_2338EF8F8(uint32x2_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, __int128 *a6@<X8>)
{
  v10 = a2;
  v174 = a3;
  v11 = a4;
  v168 = a5;
  v169 = v11;
  v171 = v10;
  v172 = a1;
  LODWORD(a5) = a1[27].i32[0];
  v177 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"subband_headers", v13, v14);
  v18 = objc_msgSend_objectForKeyedSubscript_(v11, v15, @"tile_index", v16, v17);
  v170 = objc_msgSend_unsignedIntValue(v18, v19, v20, v21, v22);
  v23 = (3 * a5 + 1);

  sub_2338F26E8(v193, v23);
  v175 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25, v26, v27);
  if (3 * a5 != -1)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = objc_msgSend_objectAtIndexedSubscript_(v177, v28, v31, v29, v30);
      v37 = objc_msgSend_objectForKeyedSubscript_(v33, v34, @"subband_data_length", v35, v36);
      v42 = objc_msgSend_unsignedIntValue(v37, v38, v39, v40, v41);

      v45 = objc_msgSend_subdataWithRange_(v174, v43, v32, v42, v44);
      objc_msgSend_addObject_(v175, v46, v45, v47, v48);

      v32 += v42;
      ++v31;
    }

    while (v23 != v31);
    v49 = 0;
    v50 = 48;
    do
    {
      v51 = objc_msgSend_objectAtIndexedSubscript_(v175, v28, v49, v29, v30);
      sub_2338EF6A4(v172, v171, v51, v170, v49, &v188);
      v52 = v193[0] + v50;
      v53 = v190;
      v54 = v188;
      *(v52 - 32) = v189;
      *(v52 - 16) = v53;
      *(v52 - 48) = v54;
      v55 = *v52;
      if (*v52)
      {
        *(v52 + 8) = v55;
        operator delete(v55);
        *v52 = 0;
        *(v52 + 8) = 0;
        *(v52 + 16) = 0;
      }

      *v52 = v191;
      *(v52 + 16) = v192;
      v191 = 0uLL;
      v192 = 0;

      ++v49;
      v50 += 72;
    }

    while (v23 != v49);
  }

  v56 = objc_msgSend_objectForKeyedSubscript_(*&v172[25], v28, @"version", v29, v30);
  v61 = objc_msgSend_unsignedIntValue(v56, v57, v58, v59, v60);

  if (v61 == 512)
  {
    v65 = objc_msgSend_objectForKeyedSubscript_(*&v172[25], v62, @"tile_width", v63, v64);
    v70 = objc_msgSend_unsignedIntValue(v65, v66, v67, v68, v69);

    v74 = objc_msgSend_objectForKeyedSubscript_(*&v172[25], v71, @"tile_height", v72, v73);
    v79 = objc_msgSend_unsignedIntValue(v74, v75, v76, v77, v78);

    if ((v70 & 0xF) != 0)
    {
      v80 = (v70 >> 4) + 1;
    }

    else
    {
      v80 = v70 >> 4;
    }

    if ((v79 & 3) != 0)
    {
      v81 = (v79 >> 2) + 1;
    }

    else
    {
      v81 = v79 >> 2;
    }

    v188 = 0uLL;
    *&v189 = 0;
    sub_2337A916C(&v188, v81 * v80);
    v85 = objc_msgSend_objectForKeyedSubscript_(v169, v82, @"qp_stuffing_data_length", v83, v84);
    objc_msgSend_unsignedIntValue(v85, v86, v87, v88, v89);

    sub_2338F1EA8(1, v80, v81, v168, &v188, 1);
    if (v23)
    {
      v90 = 0;
      v91 = v81 - 1;
      do
      {
        v92 = v193[0] + 72 * v90;
        v93 = *(v92 + 32);
        v94 = *(v92 + 40);
        v95 = *(v92 + 48);
        if (v90 >= 7)
        {
          v96 = 1;
        }

        else
        {
          v96 = 2;
        }

        v176 = v90;
        if (v90 >= 4)
        {
          v97 = v96;
        }

        else
        {
          v97 = 4;
        }

        sub_2337560FC(v187, v94 * v93);
        if (v93)
        {
          v101 = 0;
          v102 = v176 < 7;
          if (v176 < 7)
          {
            v103 = 1;
          }

          else
          {
            v103 = 2;
          }

          if (v176 < 4)
          {
            v102 = 2;
            v103 = 0;
          }

          v104 = v188;
          v105 = v187[0];
          do
          {
            if (v94)
            {
              for (i = 0; i != v94; ++i)
              {
                v107 = 0;
                v108 = i << v102;
                v109 = v97;
                do
                {
                  if (v91 >= v108)
                  {
                    v110 = v108;
                  }

                  else
                  {
                    v110 = v91;
                  }

                  v98 = *(v104 + 2 * ((v101 >> v103) + v110 * v80));
                  v107 += v98;
                  ++v108;
                  --v109;
                }

                while (v109);
                v105[v101 + i * v93] = v107 >> v102;
              }
            }

            ++v101;
          }

          while (v101 != v93);
        }

        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v98, @"subband_%d", v99, v100, v176);

        v114 = objc_msgSend_objectAtIndexedSubscript_(v177, v111, v176, v112, v113);
        v118 = objc_msgSend_objectForKeyedSubscript_(v114, v115, @"mtx_a", v116, v117);
        v123 = objc_msgSend_intValue(v118, v119, v120, v121, v122);

        v173 = objc_msgSend_objectAtIndexedSubscript_(v177, v124, v176, v125, v126);
        v130 = objc_msgSend_objectForKeyedSubscript_(v173, v127, @"mtx_b", v128, v129);
        v135 = objc_msgSend_intValue(v130, v131, v132, v133, v134);

        if (v93)
        {
          v136 = 0;
          v137 = v187[0];
          do
          {
            if (v94)
            {
              v138 = 0;
              v139 = v94;
              do
              {
                v140 = v135 + ((dword_233917EE8[*&v137[v138]] * v123) >> 3);
                if (v140 >= 1474560)
                {
                  v140 = 1474560;
                }

                if (v140 <= 1)
                {
                  LOWORD(v140) = 1;
                }

                *(v95 + v138) *= v140;
                v138 += 2 * v93;
                --v139;
              }

              while (v139);
            }

            ++v136;
            v137 += 2;
            v95 += 2;
          }

          while (v136 != v93);
        }

        v141 = v193[0] + 72 * v176;
        v143 = *(v141 + 16);
        v142 = *(v141 + 32);
        v181 = *v141;
        v182 = v143;
        v183 = v142;
        v185 = 0;
        v186 = 0;
        __p = 0;
        sub_233728FF4(&__p, *(v141 + 48), *(v141 + 56), (*(v141 + 56) - *(v141 + 48)) >> 1);
        if (__p)
        {
          v185 = __p;
          operator delete(__p);
        }

        if (v187[0])
        {
          v187[1] = v187[0];
          operator delete(v187[0]);
        }

        v90 = v176 + 1;
      }

      while (v176 + 1 != v23);
    }

    if (v188)
    {
      *(&v188 + 1) = v188;
      operator delete(v188);
    }
  }

  else if (v23)
  {
    for (j = 0; j != v23; ++j)
    {
      v145 = objc_msgSend_objectAtIndexedSubscript_(v177, v62, j, v63, v64);
      v149 = objc_msgSend_objectForKeyedSubscript_(v145, v146, @"ini_qp", v147, v148);
      v154 = objc_msgSend_intValue(v149, v150, v151, v152, v153);

      v155 = v193[0];
      if ((v154 - 10) <= 0x75)
      {
        v156 = v193[0] + 72 * j;
        v157 = (*(v156 + 40) * *(v156 + 32));
        if (v157 >= 1)
        {
          v158 = dword_233917EE8[v154];
          v159 = *(v156 + 48);
          do
          {
            *v159++ *= v158;
            --v157;
          }

          while (v157);
        }
      }

      v179 = 0;
      v180 = 0;
      v178 = 0;
      sub_233728FF4(&v178, *(v155 + 72 * j + 48), *(v155 + 72 * j + 56), (*(v155 + 72 * j + 56) - *(v155 + 72 * j + 48)) >> 1);
      if (v178)
      {
        v179 = v178;
        operator delete(v178);
      }
    }
  }

  v160 = v193[0];
  v161 = objc_msgSend_objectForKeyedSubscript_(v171, v62, @"plane_index", v63, v64);
  v166 = objc_msgSend_unsignedIntValue(v161, v162, v163, v164, v165);
  sub_2338F011C(v172, v160, v170, v166, a6);

  *&v188 = v193;
  sub_2338F2840(&v188);
}

void sub_2338EFFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22)
{
  v25 = *(v23 - 184);
  if (v25)
  {
    *(v23 - 176) = v25;
    operator delete(v25);
  }

  *(v23 - 184) = v23 - 112;
  sub_2338F2840((v23 - 184));

  _Unwind_Resume(a1);
}

void sub_2338F011C(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v8 = a2[1];
  *a5 = *a2;
  a5[1] = v8;
  a5[2] = a2[2];
  *(a5 + 6) = 0;
  *(a5 + 7) = 0;
  *(a5 + 8) = 0;
  v45 = (a5 + 3);
  sub_233728FF4((a5 + 3), *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 1);
  if (a1[54])
  {
    v9 = 0;
    v10 = 3;
    do
    {
      v11 = a5[1];
      v118 = *a5;
      v119 = v11;
      v120 = a5[2];
      v122 = 0;
      v123 = 0;
      v121 = 0;
      sub_233728FF4(&v121, *(a5 + 6), *(a5 + 7), (*(a5 + 7) - *(a5 + 6)) >> 1);
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"tile_%d_plane_%d_level_%d_canon_subband_LL", v13, v14, a3, a4, v9, v45);

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      v15 = (a2 + 72 * v10 - 144);
      v16 = v15[1];
      v112 = *v15;
      v113 = v16;
      v114 = v15[2];
      v116 = 0;
      v117 = 0;
      v115 = 0;
      sub_233728FF4(&v115, *(v15 + 6), *(v15 + 7), (*(v15 + 7) - *(v15 + 6)) >> 1);
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"tile_%d_plane_%d_level_%d_canon_subband_HL", v18, v19, a3, a4, v9);

      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      v20 = (a2 + 72 * v10 - 72);
      v21 = v20[1];
      v106 = *v20;
      v107 = v21;
      v108 = v20[2];
      v110 = 0;
      v111 = 0;
      __p = 0;
      sub_233728FF4(&__p, *(v20 + 6), *(v20 + 7), (*(v20 + 7) - *(v20 + 6)) >> 1);
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"tile_%d_plane_%d_level_%d_canon_subband_LH", v23, v24, a3, a4, v9);

      if (__p)
      {
        v110 = __p;
        operator delete(__p);
      }

      v25 = (a2 + 72 * v10);
      v26 = v25[1];
      v100 = *v25;
      v101 = v26;
      v102 = v25[2];
      v104 = 0;
      v105 = 0;
      v103 = 0;
      sub_233728FF4(&v103, *(v25 + 6), *(v25 + 7), (*(v25 + 7) - *(v25 + 6)) >> 1);
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"tile_%d_plane_%d_level_%d_canon_subband_HH", v28, v29, a3, a4, v9);

      if (v103)
      {
        v104 = v103;
        operator delete(v103);
      }

      v30 = a5[1];
      v91[0] = *a5;
      v91[1] = v30;
      v91[2] = a5[2];
      v93 = 0;
      v94 = 0;
      v92 = 0;
      sub_233728FF4(&v92, *(a5 + 6), *(a5 + 7), (*(a5 + 7) - *(a5 + 6)) >> 1);
      v31 = v15[1];
      v87[0] = *v15;
      v87[1] = v31;
      v87[2] = v15[2];
      v89 = 0;
      v90 = 0;
      v88 = 0;
      sub_233728FF4(&v88, *(v15 + 6), *(v15 + 7), (*(v15 + 7) - *(v15 + 6)) >> 1);
      sub_2338F08E4(a1, v91, v87, 1, a3, v9, &v95);
      if (v88)
      {
        v89 = v88;
        operator delete(v88);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      v32 = v20[1];
      v78[0] = *v20;
      v78[1] = v32;
      v78[2] = v20[2];
      v80 = 0;
      v81 = 0;
      v79 = 0;
      sub_233728FF4(&v79, *(v20 + 6), *(v20 + 7), (*(v20 + 7) - *(v20 + 6)) >> 1);
      v33 = v25[1];
      v74[0] = *v25;
      v74[1] = v33;
      v74[2] = v25[2];
      v76 = 0;
      v77 = 0;
      v75 = 0;
      sub_233728FF4(&v75, *(v25 + 6), *(v25 + 7), (*(v25 + 7) - *(v25 + 6)) >> 1);
      sub_2338F08E4(a1, v78, v74, 1, a3, v9, &v82);
      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      v67[0] = v95;
      v67[1] = v96;
      v67[2] = v97;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      sub_233728FF4(&v68, v98, v99, (v99 - v98) >> 1);
      v63[0] = v82;
      v63[1] = v83;
      v63[2] = v84;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      sub_233728FF4(&v64, v85, v86, (v86 - v85) >> 1);
      sub_2338F08E4(a1, v67, v63, 0, a3, v9, v71);
      v34 = v71[1];
      *a5 = v71[0];
      a5[1] = v34;
      a5[2] = v71[2];
      v35 = *(a5 + 6);
      if (v35)
      {
        *(a5 + 7) = v35;
        operator delete(v35);
      }

      a5[3] = v72;
      *(a5 + 8) = v73;
      v73 = 0;
      v72 = 0uLL;
      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      v57 = v95;
      v58 = v96;
      v59 = v97;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      sub_233728FF4(&v60, v98, v99, (v99 - v98) >> 1);
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"tile_%d_plane_%d_level_%d_canon_outTop", v37, v38, a3, a4, v9);

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      v51 = v82;
      v52 = v83;
      v53 = v84;
      v55 = 0;
      v56 = 0;
      v54 = 0;
      sub_233728FF4(&v54, v85, v86, (v86 - v85) >> 1);
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"tile_%d_plane_%d_level_%d_canon_outBottom", v40, v41, a3, a4, v9);

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      v49 = 0;
      v50 = 0;
      v48 = 0;
      sub_233728FF4(&v48, *(a5 + 6), *(a5 + 7), (*(a5 + 7) - *(a5 + 6)) >> 1);
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"tile_%d_plane_%d_level_%d_canon_out", v43, v44, a3, a4, v9);

      if (v48)
      {
        v49 = v48;
        operator delete(v48);
      }

      if (v85)
      {
        v86 = v85;
        operator delete(v85);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      ++v9;
      v10 += 3;
    }

    while (v9 < a1[54]);
  }
}

void sub_2338F0768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v55 = STACK[0x328];
  if (STACK[0x328])
  {
    STACK[0x330] = v55;
    operator delete(v55);
  }

  v56 = STACK[0x408];
  if (STACK[0x408])
  {
    STACK[0x410] = v56;
    operator delete(v56);
  }

  v57 = *a12;
  if (*a12)
  {
    *(v53 + 56) = v57;
    operator delete(v57);
  }

  _Unwind_Resume(a1);
}

void sub_2338F08E4(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16) + v10;
  if (a4)
  {
    v13 = 0;
    v12 += *(a3 + 16);
    v14 = *a2;
  }

  else
  {
    v13 = *(a3 + 24);
    v14 = *(a2 + 8);
  }

  v15 = *(a2 + 24);
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  *a7 = v10;
  *(a7 + 8) = v11;
  *(a7 + 16) = (v12 - v10);
  *(a7 + 24) = (v15 + v13);
  *(a7 + 32) = *(a7 + 16);
  if (!a4)
  {
    LOBYTE(v12) = v13 + v11 + v15;
  }

  if (v14)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v12)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = a1[58];
  v19 = a5 % v18;
  v20 = v18 - 1;
  v21 = a1[54];
  v22 = ~(-1 << v21);
  if (a4)
  {
    if (a1[60])
    {
      v23 = a1[52];
      if (v19)
      {
        v24 = *&dword_233917E10[2 * a6];
      }

      else
      {
        v24 = 0;
      }

      if (v19 == v20)
      {
LABEL_25:
        v25 = 0;
        v26 = 0;
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  else if (a1[61])
  {
    v23 = a1[53];
    if (v18 <= a5)
    {
      v24 = *&dword_233917E10[2 * a6];
    }

    else
    {
      v24 = 0;
    }

    if (a5 / v18 == a1[59] - 1)
    {
      goto LABEL_25;
    }

LABEL_22:
    v27 = &dword_233917E28[6 * (v22 & (v23 >> 1))];
    v26 = v27[2 * a6];
    v25 = v27[(2 * a6) | 1];
    goto LABEL_26;
  }

  v25 = 0;
  v26 = 0;
  v24 = 0;
LABEL_26:
  v112 = v24;
  if (a1[60] && a6 + 1 < v21)
  {
    v28 = 0.0;
    v29 = 2 * (a6 + 1);
    v30 = 0.0;
    if (v19)
    {
      LODWORD(v30) = dword_233917E10[v29];
      v30 = *&v30;
    }

    if (v19 != v20)
    {
      LODWORD(v28) = dword_233917E28[6 * (v22 & (a1[52] >> 1)) + v29];
      v28 = *&v28;
    }

    *(a7 + 32) = v28 + v30 + *(a7 + 32);
  }

  sub_2337A916C((a7 + 48), *(a7 + 40) * *(a7 + 32));
  v34 = *(a7 + 48);
  v35 = (HIDWORD(v112) + v25);
  if (a4)
  {
    if (*(a3 + 32) - *(a3 + 16) != v35 || *(a2 + 32) - *(a2 + 16) != (v112 + v26))
    {
      goto LABEL_98;
    }
  }

  else if (*(a3 + 40) - *(a3 + 24) != v35 || *(a2 + 40) - *(a2 + 24) != (v112 + v26))
  {
LABEL_98:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v36 = 40;
  if (a4)
  {
    v36 = 32;
  }

  v37 = *(a7 + v36);
  v110 = v16;
  if (v16 <= v112 + HIDWORD(v112))
  {
    v38 = v112 + HIDWORD(v112);
  }

  else
  {
    v38 = v16;
  }

  v39 = v26 + v25;
  if (v17 > v26 + v25)
  {
    v39 = v17;
  }

  v40 = v38 + v37 + v39;
  v105 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v31, 2 * v40, v32, v33);
  v41 = v105;
  v46 = objc_msgSend_mutableBytes(v105, v42, v43, v44, v45);
  v109 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v47, 2 * v37, v48, v49);
  v54 = objc_msgSend_mutableBytes(v109, v50, v51, v52, v53);
  v55 = v16;
  if (v16 < v112 + HIDWORD(v112) || v112 || (v14 & 1) != 0)
  {
    v103 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v103, "RawCameraException");
    __cxa_throw(v103, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v56 = *(a7 + 32);
  v57 = *(a7 + 40);
  if (!a4)
  {
    v57 = *(a7 + 32);
  }

  v58 = v57;
  v59 = v109;
  if (v58)
  {
    v60 = 0;
    v61 = *(a2 + 32);
    v62 = *(a3 + 32);
    if (a4)
    {
      v63 = 1;
    }

    else
    {
      v63 = *(a2 + 32);
    }

    if (a4)
    {
      v64 = 1;
    }

    else
    {
      v64 = *(a3 + 32);
    }

    v65 = 40;
    if (a4)
    {
      v65 = 32;
    }

    v66 = *(a3 + v65);
    v108 = *(a2 + 48);
    v67 = *(a3 + 48);
    v68 = v37 >> 1;
    v69 = (v68 + 1);
    v107 = *(a2 + 32);
    v106 = v67;
    do
    {
      v70 = v61;
      v71 = v61;
      v72 = v62;
      if ((a4 & 1) == 0)
      {
        v70 = *(a2 + 40);
        v71 = 1;
        v72 = 1;
      }

      v73 = (v67 + 2 * (v72 * v60));
      *v46 = *v73;
      v74 = v69;
      v75 = v54;
      v76 = v55;
      if (v40 >= 2)
      {
        v77 = v69;
        v78 = v62;
        v79 = v58;
        v80 = 0;
        v81 = (v108 + 2 * (v71 * v60));
        v82 = -v37;
        v83 = 1;
        v84 = HIDWORD(v112);
        do
        {
          v85 = v80 >= v70;
          v86 = v83 & 1;
          if ((v83 & 1) == 0)
          {
            v85 = v84 >= v66;
          }

          v87 = &v73[v84 * v64];
          v88 = v80 + v86;
          if (v83)
          {
            v87 = &v81[v80 * v63];
          }

          v89 = v86 == 0;
          if (v83)
          {
            v90 = (v70 + ~(v82 >> 1)) * v63;
          }

          else
          {
            v90 = (v66 - 2 - (v82 >> 1)) * v64;
          }

          if (v89)
          {
            v91 = v73;
          }

          else
          {
            v91 = v81;
          }

          v92 = &v91[v90];
          if (!v85)
          {
            v92 = v87;
            v84 += !(v83 & 1);
            v80 = v88;
          }

          v46[v83++] = *v92;
          ++v82;
        }

        while (v83 < v40);
        v69 = v77;
        v74 = v77;
        v75 = v54;
        v55 = v110;
        v76 = v110;
        v59 = v109;
        v58 = v79;
        v62 = v78;
        v67 = v106;
        v68 = v37 >> 1;
        v61 = v107;
      }

      do
      {
        v93 = v46[v76 - 1] + v46[v76 + 1];
        v94 = v93 + 2;
        v95 = v93 + 5;
        if (v94 >= 0)
        {
          v95 = v94;
        }

        *v75 = v46[v76] - (v95 >> 2);
        v75 += 2;
        v76 += 2;
        --v74;
      }

      while (v74);
      v96 = v68;
      v98 = v46 + 2;
      v97 = (v54 + 4);
      if (v37 >= 2)
      {
        do
        {
          v99 = *v98;
          v98 += 2;
          *(v97 - 1) = v99 + (*v97 + *(v97 - 2)) / 2;
          v97 += 2;
          --v96;
        }

        while (v96);
      }

      if (v37)
      {
        for (i = 0; i != v37; ++i)
        {
          if (a4)
          {
            v101 = v60;
          }

          else
          {
            v101 = i;
          }

          if (a4)
          {
            v102 = i;
          }

          else
          {
            v102 = v60;
          }

          *(v34 + 2 * (v102 + v101 * v56)) = *(v54 + 2 * i);
        }
      }

      ++v60;
    }

    while (v60 != v58);
  }
}

void sub_2338F0FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15)
{
  v17 = *a14;
  if (*a14)
  {
    *(v15 + 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_2338F1074(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CCanonCR3Unpacker", &unk_233945DBE, buf, 2u);
  }

  v233[0] = MEMORY[0x277D85DD0];
  v233[1] = 3221225472;
  v233[2] = sub_2338F1BB8;
  v233[3] = &unk_2789EE800;
  v233[4] = a1;
  v200 = MEMORY[0x2383AC810](v233);
  if (*(a1 + 224) != 4 || *(a1 + 188) >= 0x11u)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a1 + 48) != *(a1 + 212))
  {
    v199 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v199, "RawCameraException");
    __cxa_throw(v199, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *(a1 + 44);
  v213 = (a1 + 24);
  *buf = (*(**(a1 + 24) + 48))(*(a1 + 24));
  v203 = sub_233751844(buf);
  v210 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 200), v5, @"tile_headers", v6, v7);
  if (*(a1 + 228))
  {
    v11 = 0;
    v202 = 2 * (v4 + 1);
    v208 = 2 * v4;
    v201 = 2 * v4;
    do
    {
      v212 = v11;
      v12 = objc_msgSend_objectAtIndexedSubscript_(v210, v8, v11, v9, v10);
      v209 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"plane_headers", v14, v15);

      *buf = 0;
      v227 = buf;
      v228 = 0x4812000000;
      v229 = sub_2338F1C40;
      v230 = sub_2338F1C64;
      v231 = "";
      sub_2338F26E8(v232, *(a1 + 224));
      v225 = v203;
      if (v212)
      {
        v19 = objc_msgSend_objectAtIndexedSubscript_(v210, v16, v212 - 1, v17, v18);
        v23 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"tile_data_length", v21, v22);
        v28 = objc_msgSend_unsignedIntValue(v23, v24, v25, v26, v27);
        v225 += v28;
      }

      v29 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 200), v16, @"version", v17, v18);
      v34 = objc_msgSend_unsignedIntValue(v29, v30, v31, v32, v33);

      if (v34 == 512)
      {
        v39 = objc_msgSend_objectAtIndexedSubscript_(v210, v35, v212, v37, v38);
        v43 = objc_msgSend_objectForKeyedSubscript_(v39, v40, @"tile_qpinfo_flag", v41, v42);
        v48 = objc_msgSend_BOOLValue(v43, v44, v45, v46, v47);

        if (v48)
        {
          v52 = objc_msgSend_objectAtIndexedSubscript_(v210, v49, v212, v50, v51);
          v56 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"qp_data_length", v54, v55);
          v61 = objc_msgSend_unsignedIntValue(v56, v57, v58, v59, v60);

          v65 = objc_msgSend_objectAtIndexedSubscript_(v210, v62, v212, v63, v64);
          v69 = objc_msgSend_objectForKeyedSubscript_(v65, v66, @"qp_stuffing_data_length", v67, v68);
          LODWORD(v56) = objc_msgSend_unsignedIntValue(v69, v70, v71, v72, v73);

          sub_233723AE0(&v223, &v225);
          sub_233725F08(v224, v213, &v223, 0);
          v77 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v74, v56 + v61, v75, v76);
          v78 = *v213;
          v211 = v77;
          v83 = objc_msgSend_mutableBytes(v211, v79, v80, v81, v82);
          v88 = objc_msgSend_length(v211, v84, v85, v86, v87);
          sub_233725540(v78, v83, v88);
          sub_233725FD4(v224);
        }

        else
        {
          v211 = 0;
        }

        v89 = objc_msgSend_objectAtIndexedSubscript_(v210, v49, v212, v50, v51);
        v93 = objc_msgSend_objectForKeyedSubscript_(v89, v90, @"qp_data_length", v91, v92);
        v98 = objc_msgSend_unsignedIntValue(v93, v94, v95, v96, v97);
        v225 += v98;

        v102 = objc_msgSend_objectAtIndexedSubscript_(v210, v99, v212, v100, v101);
        v106 = objc_msgSend_objectForKeyedSubscript_(v102, v103, @"qp_stuffing_data_length", v104, v105);
        v111 = objc_msgSend_unsignedIntValue(v106, v107, v108, v109, v110);
        v225 += v111;
      }

      else
      {
        v211 = 0;
      }

      v112 = objc_msgSend_array(MEMORY[0x277CBEB18], v35, v36, v37, v38);
      if (*(a1 + 224))
      {
        v113 = 0;
        do
        {
          sub_233723AE0(&v223, &v225);
          sub_233725F08(v224, v213, &v223, 0);
          v117 = objc_msgSend_objectAtIndexedSubscript_(v209, v114, v113, v115, v116);
          v121 = objc_msgSend_objectForKeyedSubscript_(v117, v118, @"plane_data_length", v119, v120);
          v126 = objc_msgSend_unsignedIntValue(v121, v122, v123, v124, v125);

          v130 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v127, v126, v128, v129);
          v131 = *v213;
          v132 = v130;
          v137 = objc_msgSend_mutableBytes(v132, v133, v134, v135, v136);
          v142 = objc_msgSend_length(v130, v138, v139, v140, v141);
          sub_233725540(v131, v137, v142);
          objc_msgSend_addObject_(v112, v143, v130, v144, v145);
          v225 += v126;

          sub_233725FD4(v224);
          ++v113;
        }

        while (v113 < *(a1 + 224));
      }

      v146 = dispatch_group_create();
      v204 = (*(*a1 + 192))(a1);
      v147 = v146;
      if (*(a1 + 224))
      {
        v148 = 0;
        v149 = MEMORY[0x277D85DD0];
        do
        {
          block[0] = v149;
          block[1] = 3221225472;
          block[2] = sub_2338F1C90;
          block[3] = &unk_2789F1168;
          v219 = buf;
          v220 = a1;
          v221 = v148;
          v215 = v209;
          v216 = v112;
          v217 = v210;
          v222 = v212;
          v218 = v211;
          dispatch_group_async(v146, v204, block);

          ++v148;
        }

        while (v148 < *(a1 + 224));
      }

      dispatch_group_wait(v146, 0xFFFFFFFFFFFFFFFFLL);
      v150 = sub_2337ADCC4(a1);
      v151 = *(a1 + 212);
      if (v151)
      {
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v155 = *(v227 + 6);
        v156 = *(v155 + 48);
        v157 = *(v155 + 120);
        v158 = *(v155 + 192);
        v159 = *(v155 + 264);
        v160 = *(v155 + 16);
        v161 = *(a1 + 208);
        v162 = v150 + 2 * (v161 * v212);
        v207 = v162 + v202;
        v205 = v162 + 2;
        v206 = v162 + v201;
        do
        {
          if (v161)
          {
            v163 = 0;
            v164 = v206 + 2 * v152;
            v165 = (v205 + 2 * v152);
            v167 = *(a1 + 248);
            v166 = *(a1 + 252);
            v168 = 1 << (v166 - 1);
            v169 = ~(-1 << v166);
            v170 = v153;
            do
            {
              v171 = *(v157 + 2 * v170);
              v172 = *(v158 + 2 * v170);
              v173 = *(v159 + 2 * v170);
              v174 = v168 + *(v156 + 2 * v170);
              if (v174 >= v169)
              {
                v175 = v169;
              }

              else
              {
                v175 = v168 + *(v156 + 2 * v170);
              }

              if (v167)
              {
                v176 = v175 << 10;
                if (v174 < 0)
                {
                  v176 = 0;
                }

                v177 = -168 * v171 - 585 * v173 + v176;
                if (v177 < 0)
                {
                  v178 = -((512 - v177) >> 10);
                }

                else
                {
                  v178 = (v177 + 512) >> 10;
                }

                v188 = v176 + 1510 * v173;
                v189 = 2 * v178;
                v190 = v172 + 2 * v178;
                v191 = v189 - v172;
                v192 = v176 + 1927 * v171;
                v193 = (v188 + 512) >> 10;
                if (v188 < 0)
                {
                  v193 = 0;
                }

                if (v190 >= 0)
                {
                  v194 = (v190 + 1) >> 1;
                }

                else
                {
                  v194 = 0;
                }

                if (v191 >= 0)
                {
                  v195 = (v191 + 1) >> 1;
                }

                else
                {
                  v195 = 0;
                }

                if (v192 >= 0)
                {
                  v196 = (v192 + 512) >> 10;
                }

                else
                {
                  v196 = 0;
                }

                if (v193 >= v169)
                {
                  LOWORD(v193) = v169;
                }

                if (v194 >= v169)
                {
                  LOWORD(v194) = v169;
                }

                if (v195 >= v169)
                {
                  v197 = v169;
                }

                else
                {
                  v197 = v195;
                }

                *(v165 - 1) = v193;
                if (v196 >= v169)
                {
                  v187 = v169;
                }

                else
                {
                  v187 = v196;
                }

                *v165 = v194;
                *(v164 + 2 * v163) = v197;
                v147 = v146;
              }

              else
              {
                if (v174 >= 0)
                {
                  v179 = v175;
                }

                else
                {
                  v179 = 0;
                }

                *(v165 - 1) = v179;
                v180 = v168 + v171;
                if (v180 >= v169)
                {
                  v181 = v169;
                }

                else
                {
                  v181 = v180;
                }

                if (v180 >= 0)
                {
                  v182 = v181;
                }

                else
                {
                  v182 = 0;
                }

                *v165 = v182;
                v183 = v168 + v172;
                if (v183 >= v169)
                {
                  v184 = v169;
                }

                else
                {
                  v184 = v183;
                }

                if (v183 >= 0)
                {
                  v185 = v184;
                }

                else
                {
                  v185 = 0;
                }

                *(v164 + 2 * v163) = v185;
                if (v168 + v173 >= v169)
                {
                  v186 = v169;
                }

                else
                {
                  v186 = v168 + v173;
                }

                if (v168 + v173 >= 0)
                {
                  v187 = v186;
                }

                else
                {
                  v187 = 0;
                }
              }

              *(v207 + 2 * v152 + 2 * v163) = v187;
              v163 += 2;
              ++v170;
              v165 += 2;
            }

            while (v163 < v161);
          }

          v154 += 2;
          v153 += v160;
          v152 += v208;
        }

        while (v154 < v151);
      }

      _Block_object_dispose(buf, 8);
      v224[0] = v232;
      sub_2338F2840(v224);

      v11 = v212 + 1;
    }

    while (v212 + 1 < *(a1 + 228));
  }

  v200[2](v200);
}

void sub_2338F1BB8(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CCanonCR3Unpacker", &unk_233945DBE, v5, 2u);
  }
}

__n128 sub_2338F1C40(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2338F1C90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 72);
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, *(a1 + 80), a4, a5);
  v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v8, *(a1 + 80), v9, v10);
  v15 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v12, *(a1 + 84), v13, v14);
  sub_2338EF8F8(v6, v7, v11, v15, *(a1 + 56), v20);
  v16 = *(*(*(a1 + 64) + 8) + 48) + 72 * *(a1 + 80);
  v17 = v20[0];
  v18 = v20[2];
  *(v16 + 16) = v20[1];
  *(v16 + 32) = v18;
  *v16 = v17;
  v19 = *(v16 + 48);
  if (v19)
  {
    *(v16 + 56) = v19;
    operator delete(v19);
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
  }

  *(v16 + 48) = v21;
  *(v16 + 64) = v22;
  v21 = 0uLL;
  v22 = 0;
}

void sub_2338F1D94(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338F1D7CLL);
}

void *sub_2338F1DCC(uint64_t a1)
{
  *a1 = &unk_2849379D0;
  v2 = *(a1 + 272);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return sub_233723A54(a1);
}

void sub_2338F1E30(uint64_t a1)
{
  *a1 = &unk_2849379D0;
  v2 = *(a1 + 272);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338F1EA8(int a1, unsigned int a2, int a3, void *a4, uint64_t *a5, int a6)
{
  v9 = a4;
  v66 = v9;
  v14 = objc_msgSend_bytes(v66, v10, v11, v12, v13);
  v19 = objc_msgSend_length(v9, v15, v16, v17, v18);
  v20 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = v19;
  v85 = bswap32(*v14);
  v86 = v14;
  if ((a1 & 1) == 0)
  {
    v20 = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
  }

  v72 = v20;
  v75 = 0;
  v73 = 0;
  v76 = 0;
  v21 = 0;
  v22 = 0;
  v79 = a2 - 1;
  v80 = 0;
  if (a6)
  {
    v23 = 7;
  }

  else
  {
    v23 = 15;
  }

  v78 = a3 * a2;
  if (a6)
  {
    v24 = 24;
  }

  else
  {
    v24 = 42;
  }

  if (a6)
  {
    v25 = 8;
  }

  else
  {
    v25 = 21;
  }

  v68 = v25;
  v71 = v24;
  v69 = v23;
  v70 = v24 - 1;
  do
  {
    v26 = sub_2337BD6C0(&v81, 1);
    if (v80 >= v78 || !v26)
    {
      break;
    }

    v28 = v22 == 0;
    v29 = v22 == v79;
    if (a1)
    {
      if (!v21)
      {
        goto LABEL_26;
      }

      if (!v22)
      {
        goto LABEL_28;
      }

      v30 = *a5;
      v31 = *(*a5 + 2 * (v22 + v21 * a2 - 1));
      v32 = v22 + (v21 - 1) * a2;
      v33 = *(*a5 + 2 * (v32 - 1));
      v34 = *(*a5 + 2 * v32);
    }

    else
    {
      if (!v21)
      {
LABEL_26:
        v35 = 0;
        v33 = 0;
        v34 = 0;
        if (v22)
        {
          v31 = *(*a5 + 2 * (v22 - 1));
        }

        else
        {
          v31 = 0;
        }

        goto LABEL_31;
      }

      if (!v22)
      {
LABEL_28:
        v36 = (v21 - 1) * a2;
        v33 = *(*a5 + 2 * v36);
        v35 = *(*a5 + 2 * (v36 + 1));
        v34 = v33;
        v31 = v33;
        goto LABEL_31;
      }

      v30 = *a5;
      v31 = *(*a5 + 2 * (v22 + v21 * a2 - 1));
      v32 = v22 + (v21 - 1) * a2;
      v34 = *(*a5 + 2 * v32);
      v33 = *(*a5 + 2 * (v32 - 1));
    }

    if (v22 == v79)
    {
      v28 = 0;
      LOWORD(v35) = 0;
      v29 = 1;
      v22 = a2 - 1;
      goto LABEL_88;
    }

    v35 = *(v30 + 2 * (v32 + 1));
LABEL_31:
    if (v22 != v79 && (a6 & 1) == 0)
    {
      if (!a1)
      {
        if (v31 | v34)
        {
          v29 = 0;
          goto LABEL_88;
        }

        if (v35)
        {
          v29 = 0;
          LOWORD(v34) = 0;
          LOWORD(v31) = 0;
          goto LABEL_88;
        }

LABEL_40:
        v67 = v35;
        v37 = dword_23391817C[v75];
        if (!sub_2337BD5E8(&v81))
        {
          goto LABEL_68;
        }

        v38 = 0;
        v39 = a2 - v22;
        v40 = 1 << v37;
        while (sub_2337BD5E8(&v81))
        {
          v38 += v40;
          if (v38 < v39)
          {
            if (v75 <= 30)
            {
              v40 = 1 << dword_23391817C[++v75];
            }

            if (v38 != a2 - v22 - 1)
            {
              continue;
            }
          }

          v41 = a2 - v22;
          goto LABEL_52;
        }

        v42 = v75;
        if (v75 >= 4)
        {
          v38 += sub_2337BD4C4(&v81, dword_23391817C[v75]);
          v42 = v75;
        }

        v75 = v42 - (v42 > 0);
        v41 = v38 + 1;
LABEL_52:
        if (v41 <= 0)
        {
LABEL_68:
          v29 = 0;
          v76 = 1;
          LOWORD(v35) = v67;
          v28 = v22 == 0;
          goto LABEL_88;
        }

        if (v39 < v41)
        {
          v41 = a2 - v22;
        }

        if (v39)
        {
          v43 = *a5;
          if (v41 <= 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = v41;
          }

          v45 = v22;
          do
          {
            *(v43 + 2 * (v21 * a2 + v45)) = v31;
            if ((a1 & 1) == 0)
            {
              v72[v45] = 0;
            }

            ++v45;
            --v44;
          }

          while (v44);
        }

        v22 += v41;
        v80 += v41;
        v29 = v22 == v79;
        if (a1)
        {
          if (v21)
          {
            if (!v22)
            {
              v50 = (v21 - 1) * a2;
              v33 = *(*a5 + 2 * v50);
              LOWORD(v35) = *(*a5 + 2 * (v50 + 1));
              v76 = 1;
              v28 = 1;
              LOWORD(v34) = v33;
              LOWORD(v31) = v33;
              goto LABEL_88;
            }

            LOWORD(v31) = *(*a5 + 2 * (v22 + v21 * a2 - 1));
            v46 = v22 + (v21 - 1) * a2;
            v33 = *(*a5 + 2 * (v46 - 1));
            LOWORD(v34) = *(*a5 + 2 * v46);
            if (v22 == v79)
            {
              v28 = 0;
              LOWORD(v35) = 0;
              v76 = 1;
              v22 = a2 - 1;
              v29 = 1;
              goto LABEL_88;
            }

            v28 = 0;
            v29 = 0;
            LOWORD(v35) = *(*a5 + 2 * (v46 + 1));
            goto LABEL_83;
          }

          if (v22)
          {
            v28 = 0;
            LOWORD(v35) = 0;
            v33 = 0;
            goto LABEL_77;
          }

          LOWORD(v35) = 0;
          v33 = 0;
          goto LABEL_86;
        }

        if (v21)
        {
          v47 = (v21 - 1) * a2;
          if (v22)
          {
            v48 = v22 + v47;
            v49 = *a5;
            if (v22 == v79)
            {
              LOWORD(v35) = 0;
            }

            else
            {
              LOWORD(v35) = *(v49 + 2 * (v48 + 1));
            }

            v28 = 0;
            LOWORD(v34) = *(v49 + 2 * v48);
            LOWORD(v31) = *(v49 + 2 * (v22 + v21 * a2 - 1));
            goto LABEL_83;
          }

          LOWORD(v31) = 0;
          LOWORD(v34) = *(*a5 + 2 * v47);
          LOWORD(v35) = *(*a5 + 2 * (v47 + 1));
        }

        else
        {
          if (v22)
          {
            v28 = 0;
            LOWORD(v35) = 0;
LABEL_77:
            LOWORD(v34) = 0;
            LOWORD(v31) = *(*a5 + 2 * (v22 - 1));
LABEL_83:
            v76 = 1;
            goto LABEL_88;
          }

          LOWORD(v35) = 0;
LABEL_86:
          LOWORD(v34) = 0;
          LOWORD(v31) = 0;
        }

        v76 = 1;
        v28 = 1;
        goto LABEL_88;
      }

      v29 = 0;
      if (v31 == v34 && v34 == v35)
      {
        goto LABEL_40;
      }
    }

LABEL_88:
    if (v22 < a2)
    {
      v51 = v33;
      v52 = v35;
      v53 = v34;
      if (v31 <= v34)
      {
        v54 = v34;
      }

      else
      {
        v54 = v31;
      }

      if (v31 >= v34)
      {
        v55 = v34;
      }

      else
      {
        v55 = v31;
      }

      if (a1)
      {
        if (v51 >= v54)
        {
          v54 = v55;
        }

        else if (v51 > v55)
        {
          v54 = v34 - v51 + v31;
        }

        if (v76)
        {
          v34 = v34;
        }

        else
        {
          v34 = v54;
        }
      }

      else
      {
        v34 = 0;
      }

      v56 = sub_2337BD638(&v81, v71);
      v57 = v56;
      if (v56 >= v70)
      {
        if (v56 != v70)
        {
          break;
        }

        v57 = sub_2337BD4C4(&v81, v68);
      }

      else if (v73)
      {
        v57 = sub_2337BD4C4(&v81, v73) | (v56 << v73);
      }

      if ((v57 & 0x80000000) != 0)
      {
        break;
      }

      if (v57 >= 0x20)
      {
        if (v57)
        {
          v58 = -((v57 + 1) >> 1);
        }

        else
        {
          v58 = v57 >> 1;
        }

        if ((a1 & 1) == 0)
        {
          goto LABEL_117;
        }

LABEL_122:
        v59 = v73;
      }

      else
      {
        v58 = dword_2339180FC[v57 & 0x1F];
        if (a1)
        {
          goto LABEL_122;
        }

LABEL_117:
        if ((v76 ^ 1))
        {
          goto LABEL_122;
        }

        v59 = v73;
        if ((a6 & 1) == 0)
        {
          if (v57)
          {
            v58 = (v57 + 1) >> 1;
          }

          else
          {
            v58 = -((v57 + 2) >> 1);
          }
        }
      }

      v60 = v58 + v34;
      if (a6)
      {
        if (v28 && v21 == 0)
        {
          v60 += 4;
        }

        if (v60 >= 127)
        {
          v60 = 127;
        }

        v60 &= ~(v60 >> 31);
      }

      if (v21 && ((v29 | a1 ^ 1) & 1) == 0)
      {
        v61 = v52 - v53;
        if (v61 < 0)
        {
          v61 = v53 - v52;
        }

        v57 = v61 + (v57 >> 1);
      }

      if (v57 >> v59 <= 5)
      {
        if (v57 >> v59 <= 2)
        {
          if (v57 >= 1 << v59 >> 1)
          {
            v62 = 0;
          }

          else
          {
            v62 = -1;
          }
        }

        else
        {
          v62 = 1;
        }
      }

      else
      {
        v62 = 2;
      }

      v63 = v59 + v62;
      if (v21)
      {
        v64 = a1;
      }

      else
      {
        v64 = 1;
      }

      if (((v64 | v29) & 1) == 0 && v72[v22 + 1] - v63 > 1)
      {
        ++v63;
      }

      v65 = v69;
      if (v63 <= v69)
      {
        v65 = v63 & ~(v63 >> 31);
      }

      if (v60 <= -32768)
      {
        v60 = -32768;
      }

      if (v60 >= 0x7FFF)
      {
        LOWORD(v60) = 0x7FFF;
      }

      *(*a5 + 2 * (v22 + v21 * a2)) = v60;
      if ((a1 & 1) == 0)
      {
        v72[v22] = v65;
      }

      v73 = v65;
      v76 = 0;
      ++v22;
      ++v80;
    }

    if (v22 == a2)
    {
      if ((byte_27DE3DEF8 & 0x40) != 0 && a6)
      {
        sub_2337BD4B8(&v81);
      }

      v76 = 0;
      v22 = 0;
      ++v21;
    }
  }

  while (v80 != v78);
  sub_2337BD4B8(&v81);
  if (v72)
  {
    free(v72);
  }

  if (v82)
  {
    sub_2337239E8(v82);
  }
}

void sub_2338F26A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_2337239E8(a23);
  }

  _Unwind_Resume(a1);
}

void *sub_2338F26E8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2338F2794(result, a2);
  }

  return result;
}

void sub_2338F2794(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_2338F27E4(a1, a2);
  }

  sub_2337235BC();
}

void sub_2338F27E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_2337236AC();
}

void sub_2338F2840(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2338F2894(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2338F2894(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

CFTypeRef sub_2338F28E4()
{
  if ((atomic_load_explicit(&qword_27DE3DE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DE70))
  {
    qword_27DE3DE68 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
    __cxa_guard_release(&qword_27DE3DE70);
  }

  CGColorSpaceRetain(qword_27DE3DE68);
  v0 = qword_27DE3DE68;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F297C()
{
  if ((atomic_load_explicit(&qword_27DE3DE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DE80))
  {
    qword_27DE3DE78 = CGColorSpaceCreateCalibratedGray(dbl_233918200, 0, 1.0);
    __cxa_guard_release(&qword_27DE3DE80);
  }

  CGColorSpaceRetain(qword_27DE3DE78);
  v0 = qword_27DE3DE78;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2A18()
{
  if ((atomic_load_explicit(&qword_27DE3DE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DE90))
  {
    qword_27DE3DE88 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], byte_233918218, 476, *MEMORY[0x277CBED00]);
    __cxa_guard_release(&qword_27DE3DE90);
  }

  if ((atomic_load_explicit(&qword_27DE3DEA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEA0))
  {
    qword_27DE3DE98 = CGColorSpaceCreateWithICCData(qword_27DE3DE88);
    __cxa_guard_release(&qword_27DE3DEA0);
  }

  CGColorSpaceRetain(qword_27DE3DE98);
  v0 = qword_27DE3DE98;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2B1C()
{
  if ((atomic_load_explicit(&qword_27DE3DEB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEB0))
  {
    qword_27DE3DEA8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF410]);
    __cxa_guard_release(&qword_27DE3DEB0);
  }

  CGColorSpaceRetain(qword_27DE3DEA8);
  v0 = qword_27DE3DEA8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2BB4()
{
  if ((atomic_load_explicit(&qword_27DE3DEC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEC0))
  {
    qword_27DE3DEB8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3D0]);
    __cxa_guard_release(&qword_27DE3DEC0);
  }

  qword_27DE3DEB8 = CGColorSpaceCreateExtendedLinearized(qword_27DE3DEB8);
  CGColorSpaceRetain(qword_27DE3DEB8);
  v0 = qword_27DE3DEB8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2C54()
{
  if ((atomic_load_explicit(&qword_27DE3DED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DED0))
  {
    qword_27DE3DEC8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    __cxa_guard_release(&qword_27DE3DED0);
  }

  CGColorSpaceRetain(qword_27DE3DEC8);
  v0 = qword_27DE3DEC8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2CEC()
{
  if ((atomic_load_explicit(&qword_280C04FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C04FC0))
  {
    qword_280C04FB8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3D0]);
    __cxa_guard_release(&qword_280C04FC0);
  }

  CGColorSpaceRetain(qword_280C04FB8);
  v0 = qword_280C04FB8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2D84()
{
  if ((atomic_load_explicit(&qword_280C04FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C04FD0))
  {
    qword_280C04FC8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
    __cxa_guard_release(&qword_280C04FD0);
  }

  CGColorSpaceRetain(qword_280C04FC8);
  v0 = qword_280C04FC8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2E1C()
{
  if ((atomic_load_explicit(&qword_27DE3DEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEE0))
  {
    qword_27DE3DED8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF480]);
    __cxa_guard_release(&qword_27DE3DEE0);
  }

  CGColorSpaceRetain(qword_27DE3DED8);
  v0 = qword_27DE3DED8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2EB4()
{
  if ((atomic_load_explicit(&qword_27DE3DEF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEF0))
  {
    qword_27DE3DEE8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF478]);
    __cxa_guard_release(&qword_27DE3DEF0);
  }

  CGColorSpaceRetain(qword_27DE3DEE8);
  v0 = qword_27DE3DEE8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2F4C(void *a1)
{
  v1 = a1;
  v2 = CGColorSpaceCreateWithName(v1);
  if (v2)
  {
    v3 = CFAutorelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2338F2FA0(uint64_t a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = sub_2338F4DD0(a1, a2);
  *v17 = &unk_284937AC0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *v19 = a3;
  *&v19[1] = a4;
  *&v19[2] = a5;
  *&v19[3] = a6;
  *&v19[4] = a7;
  sub_233755258((v17 + 16), v19, &v20, 5uLL);
  *(a1 + 40) = a8;
  *(a1 + 48) = a9;
  return a1;
}

void sub_2338F3098(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F30B8(uint64_t a1, int a2, uint64_t *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284937AC0;
  *(v5 + 16) = 0u;
  v6 = (v5 + 16);
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v7 = sub_23372574C(*a3);
  v8 = sub_23372574C(*a3);
  v9 = sub_23372574C(*a3);
  v10 = sub_23372574C(*a3);
  v11 = sub_23372574C(*a3);
  v12 = sub_23372574C(*a3);
  v13 = sub_23372574C(*a3);
  *v15 = v7;
  *&v15[1] = v8;
  *&v15[2] = v9;
  *&v15[3] = v10;
  *&v15[4] = v11;
  sub_233755258(v6, v15, &v16, 5uLL);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  return a1;
}

void sub_2338F31EC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338F3228(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60[5] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v59[0] = @"kr0";
  v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, v9, v10, **(a1 + 16));
  v60[0] = v11;
  v59[1] = @"k1";
  v16 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, v13, v14, v15, *(*(a1 + 16) + 8));
  v60[1] = v16;
  v59[2] = @"k2";
  v21 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v17, v18, v19, v20, *(*(a1 + 16) + 16));
  v60[2] = v21;
  v59[3] = @"k3";
  v26 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v22, v23, v24, v25, *(*(a1 + 16) + 24));
  v60[3] = v26;
  v59[4] = @"k4";
  v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v27, v28, v29, v30, *(*(a1 + 16) + 32));
  v60[4] = v31;
  v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v60, v59, 5);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v34, v33, @"Coefficients", v35);

  v36 = *(a1 + 48);
  v41 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v37, v38, v39, v40, *(a1 + 40));
  v58[0] = v41;
  v46 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v42, v43, v44, v45, v36);
  v58[1] = v46;
  v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v47, v58, 2, v48);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v50, v49, @"NormalizedCenter", v51);

  v52 = [RAWOpcodeFixVignetteRadial alloc];
  v56 = objc_msgSend_initWithArguments_(v52, v53, v6, v54, v55);

  return v56;
}

void *sub_2338F34F4(void *a1)
{
  *a1 = &unk_284937AC0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2338F3544(void *a1)
{
  *a1 = &unk_284937AC0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_2338F37DC(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWCropFilter", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338F441C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338F4438(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWGainMap", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338F45C8(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPacked14SwappedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_2338F4D48;
  v77[3] = &unk_2789EE800;
  v77[4] = a1;
  v67 = MEMORY[0x2383AC810](v77);
  v4 = *(a1 + 44);
  v5 = (*(*a1 + 40))(a1);
  v6 = *(a1 + 48);
  v64 = (a1 + 200);
  v7 = *(a1 + 200) != 0;
  v8 = (*(*a1 + 152))(a1);
  v9 = (v6 * v5) >> v7;
  v10 = (v4 + 9) / 0xA;
  v11 = 16 * v10 * v9;
  v12 = 8 * v10;
  if (v11 == v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = (14 * v4) >> 3;
  }

  if (v11 == v8)
  {
    v14 = 8;
  }

  else
  {
    v14 = 7;
  }

  v15 = *(a1 + 188);
  if (v13 * v9 > (*(*a1 + 152))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v73 = *(a1 + 192);
  v74 = a1;
  v72 = v9;
  if (v73 == 2)
  {
    v16 = v67;
    v75 = ((*(*a1 + 152))(a1) >> 1) - v13 * (v9 >> 1);
    sub_233723AE0(buf, &v75);
    v68 = *buf;
    if (!*v64)
    {
LABEL_44:
      v45 = 0;
      v46 = 0;
      v47 = v4 & 0xFFFFFFFC;
      do
      {
        v48 = sub_2337ADCC4(v74);
        v70 = v45;
        if (v45 < v72)
        {
          v49 = (v48 + 2 * v4 * v45);
          v50 = v46;
          do
          {
            v51 = 2 * v4 - v13;
            (*(**(v74 + 24) + 32))(*(v74 + 24), &v49[v51], v13);
            if (v45)
            {
              v52 = 0;
            }

            else
            {
              v52 = v15;
            }

            if (v45)
            {
              v46 = v50;
            }

            else
            {
              v46 = v15;
            }

            if (v47)
            {
              v53 = 0;
              v54 = &v49[v51 + 3 + v50];
              do
              {
                v55 = *(v54 - 2);
                v56 = *v54;
                v57 = v54[2];
                v58 = *(v54 - 3) | ((v55 & 0x3F) << 8);
                v59 = v54[3];
                v60 = (4 * *(v54 - 1)) & 0xC3FF | ((v56 & 0xF) << 10) | (v55 >> 6);
                v61 = (16 * v54[1]) & 0xCFFF | ((v57 & 3) << 12) | (v56 >> 4);
                *v49 = v58;
                *(v49 + 1) = v60;
                *(v49 + 2) = v61;
                *(v49 + 3) = (v57 >> 2) | (v59 << 6);
                v49 += 8;
                v53 += 4;
                v54 += v14;
              }

              while (v53 < v47);
            }

            v13 += v52;
            v49 += 2 * (v73 - 1) * v4;
            LODWORD(v45) = v45 + v73;
            v50 = v46;
          }

          while (v45 < v72);
        }

        v16 = v67;
        if (v68 && !v70)
        {
          v62 = *(v74 + 24);
          *buf = v68;
          (*(*v62 + 40))(v62, buf, 1);
        }

        v45 = v70 + 1;
      }

      while (v70 + 1 != v73);
      goto LABEL_61;
    }
  }

  else
  {
    v16 = v67;
    if (!*v64)
    {
      if (!v73)
      {
        goto LABEL_61;
      }

      v68 = 0;
      goto LABEL_44;
    }

    v68 = 0;
  }

  v17 = 0;
  v18 = 0;
  v71 = 2 * v4;
  v19 = 1;
  do
  {
    v65 = v19;
    v20 = v74;
    if (v17)
    {
      v21 = *(v74 + 24);
      sub_233723B40(buf, v64);
      (*(*v21 + 40))(v21, buf, 0);
      v16 = v67;
    }

    if (v73)
    {
      v22 = 0;
      v66 = v18 * v73 * v4;
      v23 = 0;
      do
      {
        v24 = sub_2337ADCC4(v20);
        v69 = v23;
        if (v23 < v72)
        {
          v25 = (v24 + 2 * v4 * v23 + 2 * v66);
          do
          {
            (*(**(v74 + 24) + 32))(*(v74 + 24), &v25[v71 - v13], v13);
            v26 = &v25[v71 - v13 + v22];
            if (v23)
            {
              v27 = 0;
            }

            else
            {
              v27 = v15;
            }

            if (!v23)
            {
              v22 = v15;
            }

            if (v4 == v4 % 0xA)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              do
              {
                v29 = v26[1];
                v30 = *v26 | ((v29 & 0xF) << 8);
                LOWORD(v29) = (v29 >> 4) | (16 * v26[2]);
                v31 = v26[4];
                v32 = v26[3] | ((v31 & 0xF) << 8);
                LOWORD(v31) = (v31 >> 4) | (16 * v26[5]);
                *v25 = v30;
                *(v25 + 1) = v29;
                v33 = v26[7];
                v34 = v26[6] | ((v33 & 0xF) << 8);
                LOWORD(v33) = (v33 >> 4) | (16 * v26[8]);
                *(v25 + 2) = v32;
                *(v25 + 3) = v31;
                v35 = v26[10];
                v36 = v26[9] | ((v35 & 0xF) << 8);
                v37 = (v35 >> 4) | (16 * v26[11]);
                *(v25 + 4) = v34;
                *(v25 + 5) = v33;
                v38 = v26[13];
                v39 = v26[12] | ((v38 & 0xF) << 8);
                v40 = (v38 >> 4) | (16 * v26[14]);
                *(v25 + 6) = v36;
                *(v25 + 7) = v37;
                *(v25 + 8) = v39;
                *(v25 + 9) = v40;
                v26 += v14;
                v25 += 20;
                v28 += 10;
              }

              while (v28 < 10 * (v4 / 0xA));
            }

            while (v28 < v4)
            {
              v41 = v26[1];
              v42 = *v26 | ((v41 & 0xF) << 8);
              v43 = (v41 >> 4) | (16 * v26[2]);
              *v25 = v42;
              *(v25 + 1) = v43;
              v26 += 3;
              v25 += 4;
              v28 += 2;
            }

            v13 += v27;
            v25 += 2 * (2 * v73 - 1) * v4;
            LODWORD(v23) = v23 + v73;
          }

          while (v23 < v72);
        }

        v16 = v67;
        v20 = v74;
        if (v68 && !v69)
        {
          v44 = *(v74 + 24);
          *buf = v68;
          (*(*v44 + 40))(v44, buf, 1);
        }

        v23 = v69 + 1;
      }

      while (v69 + 1 != v73);
    }

    v19 = 0;
    v17 = 1;
    v18 = 1;
  }

  while ((v65 & 1) != 0);
LABEL_61:
  v16[2](v16);
}

void sub_2338F4D48(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPacked14SwappedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_2338F4DD0(uint64_t result, int a2)
{
  *result = &unk_284937BF8;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_2338F5060@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 504);
  if (!v4)
  {
    sub_2337338AC(result, &v7);
    LODWORD(v6) = 0;
    sub_233725F08(v8, &v7, &v6, 0);
    if (*(&v7 + 1))
    {
      sub_2337239E8(*(&v7 + 1));
    }

    sub_2337338AC(v2, &v6);
    sub_2338EE81C(&v7);
  }

  v5 = *(result + 512);
  *a2 = v4;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338F5180(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a3)
  {
    sub_2337239E8(a3);
  }

  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338F55FC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2338F5B00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338F5B1C(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWLensCorrectionDNG", &unk_233945DBE, v5, 2u);
  }
}

float64_t sub_2338F5BA4(uint64_t a1, float64_t a2, float64_t a3)
{
  v4 = *(*(a1 + 32) + 88);
  v5 = *(*(a1 + 32) + 96);
  v10 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v6, v7, v8, v9, *(a1 + 48), *(a1 + 52));
  objc_msgSend_X(v4, v11, v12, v13, v14);
  v16 = v15;
  objc_msgSend_Y(v4, v17, v18, v19, v20);
  v22 = v21;
  objc_msgSend_Z(v4, v23, v24, v25, v26);
  v28 = v27;
  objc_msgSend_W(v4, v29, v30, v31, v32);
  v34 = v33;
  objc_msgSend_X(v5, v35, v36, v37, v38);
  v74 = v39;
  objc_msgSend_Y(v5, v40, v41, v42, v43);
  v73 = v44;
  objc_msgSend_X(v10, v45, v46, v47, v48);
  v72 = v49;
  objc_msgSend_Y(v10, v50, v51, v52, v53);
  v54.f64[0] = v73;
  v54.f64[1] = v74;
  v55 = vcvt_f32_f64(v54);
  *v54.f64 = v34;
  v56 = v28;
  v57 = v22;
  v58 = v16;
  v59.f64[1] = v72;
  *&v59.f64[0] = vcvt_f32_f64(v59);
  v60 = *(a1 + 40);
  *&v60 = v60;
  _Q7.f64[0] = a3;
  _Q7.f64[1] = a2;
  *&_Q7.f64[0] = vdiv_f32(vsub_f32(vcvt_f32_f64(_Q7), *&v59.f64[0]), vdup_lane_s32(*&v60, 0));
  _S17 = HIDWORD(_Q7.f64[0]);
  __asm { FMLA            S16, S17, V7.S[1] }

  *&v54.f64[0] = vmul_n_f32(*&_Q7.f64[0], (((_S16 * v57) + v58) + (v56 * (_S16 * _S16))) + (*v54.f64 * (_S16 * (_S16 * _S16))));
  v68 = vcvtq_f64_f32(*&_Q7.f64[0]);
  v69 = vaddq_f64(v68, v68);
  v70 = vcvtq_f64_f32(v55);
  v77 = vcvtq_f64_f32(vadd_f32(vmul_n_f32(vadd_f32(*&v54.f64[0], vcvt_f32_f64(vmlaq_n_f64(vmulq_f64(vmlaq_f64(vdupq_lane_s64(COERCE__INT64(_S16), 0), v68, v69), vextq_s8(v70, v70, 8uLL)), v70, vmulq_laneq_f64(v68, v69, 1).f64[0]))), *&v60), *&v59.f64[0]));

  return v77.f64[1];
}

double sub_2338F5D84(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v29 = a3 + a5;
  v7 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v28 = a2 + a4;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    r1_12 = v10;
    v44.origin.x = (*(*(a1 + 32) + 16))(a2 + a4 * v11, a3);
    v44.origin.y = v12;
    v44.size.width = 0.0;
    v44.size.height = 0.0;
    v36.origin.x = v7;
    v36.origin.y = v6;
    v36.size.width = v9;
    v36.size.height = v8;
    v37 = CGRectUnion(v36, v44);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    v45.origin.x = (*(*(a1 + 32) + 16))(a2 + a4 * (1.0 - v11), v29);
    v45.origin.y = v17;
    v45.size.width = 0.0;
    v45.size.height = 0.0;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectUnion(v38, v45);
    r1 = v39.origin.x;
    v18 = v39.origin.y;
    v19 = v39.size.width;
    v20 = v39.size.height;
    v46.origin.x = (*(*(a1 + 32) + 16))(a2, a3 + a5 * (1.0 - v11));
    v46.origin.y = v21;
    v46.size.width = 0.0;
    v46.size.height = 0.0;
    v40.origin.x = r1;
    v40.origin.y = v18;
    v40.size.width = v19;
    v40.size.height = v20;
    v41 = CGRectUnion(v40, v46);
    v22 = v41.origin.x;
    v23 = v41.origin.y;
    v24 = v41.size.width;
    v25 = v41.size.height;
    v47.origin.x = (*(*(a1 + 32) + 16))(v28, a3 + a5 * v11);
    v47.origin.y = v26;
    v47.size.width = 0.0;
    v47.size.height = 0.0;
    v42.origin.x = v22;
    v42.origin.y = v23;
    v42.size.width = v24;
    v42.size.height = v25;
    v43 = CGRectUnion(v42, v47);
    v7 = v43.origin.x;
    v6 = v43.origin.y;
    v9 = v43.size.width;
    v8 = v43.size.height;
    v10 = r1_12 + 0.125;
    v11 = (r1_12 + 0.125);
  }

  while (v11 < 0.99999);
  return v7;
}

void *sub_2338F6024(size_t a1, size_t a2)
{
  v2 = malloc_type_calloc(a1, a2, 0x3EABCC12uLL);
  if (!v2)
  {
    sub_2338F605C();
  }

  return v2;
}

void *sub_2338F6084(size_t a1)
{
  v1 = malloc_type_malloc(a1, 0xB569D1EEuLL);
  if (!v1)
  {
    sub_2338F605C();
  }

  return v1;
}

void *sub_2338F60BC(size_t a1)
{
  v1 = malloc_type_valloc(a1, 0x105E89C7uLL);
  if (!v1)
  {
    sub_2338F605C();
  }

  return v1;
}

uint64_t sub_2338F60FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2383AB420](a1, a2, 3072040773, a3);
  if (!v3)
  {
    sub_2338F605C();
  }

  return v3;
}

id sub_2338F613C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC28];
  v42[1] = @"com.phaseone.raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".iiq.";
  v42[3] = &unk_2849588E8;
  v42[4] = &unk_284958900;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_233900AE0, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_2338F6434, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_2338F6440, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_2338F644C, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_2338F6458, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_2338F6464(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_2338F7138();
}

void sub_2338F6500(void **a1)
{
  sub_23374B9D8(a1);
  v2 = (*(*a1 + 50))(a1);
  if (v2)
  {
    v16 = v2;
    v3 = sub_2337854A4(v2, *MEMORY[0x277CD3490], 0);
    v4 = *MEMORY[0x277CD34B8];
    v8 = objc_msgSend_objectForKeyedSubscript_(v3, v5, *MEMORY[0x277CD34B8], v6, v7);

    if (!v8)
    {
      v9 = MEMORY[0x277CCABB0];
      sub_2338F665C(a1, &v17);
      v13 = objc_msgSend_numberWithUnsignedShort_(v9, v10, *(v17 + 184), v11, v12);
      objc_msgSend_setObject_forKeyedSubscript_(v3, v14, v13, v4, v15);

      if (v18)
      {
        sub_2337239E8(v18);
      }
    }

    v2 = v16;
  }
}

void sub_2338F6614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, std::__shared_weak_count *a12)
{
  v14 = v13;

  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338F665C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1192);
  if (!v4)
  {
    sub_2337338AC(result, &v7);
    sub_2337268D8(&v6, (v2 + 1184));
    sub_233725F08(v8, &v7, &v6, 0);
    if (*(&v7 + 1))
    {
      sub_2337239E8(*(&v7 + 1));
    }

    sub_2337338AC(v2, &v6);
    sub_2338EE81C(&v7);
  }

  v5 = *(result + 1200);
  *a2 = v4;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338F6784(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a3)
  {
    sub_2337239E8(a3);
  }

  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2338F67D8(uint64_t a1)
{
  sub_2337338AC(a1, &v3);
  *(a1 + 1184) = (*(*v3 + 48))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return 1;
}

void sub_2338F6848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6860(uint64_t a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF2E8(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F68A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F68C0(uint64_t a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF2F0(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6920(uint64_t a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_233731020(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6980(uint64_t a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2337DE858(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F69C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F69E0(uint64_t a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF2F8(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6A48(uint64_t a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF304();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338F6AA8(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a1 + 392))(__p);
  if ((v18 & 0x80000000) == 0)
  {
    if (v18 == 11)
    {
      v10 = __p;
      goto LABEL_6;
    }

LABEL_10:
    sub_233733E44(a1, a2, a3, a4, a5);
    goto LABEL_11;
  }

  if (__p[1] != 11)
  {
    goto LABEL_10;
  }

  v10 = __p[0];
LABEL_6:
  v11 = *v10;
  v12 = *(v10 + 3);
  if (v11 != 0x4965727574706143 || v12 != 0x6F666E4965727574)
  {
    goto LABEL_10;
  }

  sub_2338F665C(a1, &v15);
  v14 = v15;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  sub_2337236E0(a5, *(v14 + 88), *(v14 + 96), (*(v14 + 96) - *(v14 + 88)) >> 3);
  if (v16)
  {
    sub_2337239E8(v16);
  }

LABEL_11:
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2338F6BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6C14(uint64_t a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF310();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338F6C74(uint64_t a1)
{
  sub_2338F665C(a1, &v4);
  sub_2337338AC(a1, &v2);
  (*(*a1 + 424))(a1);
  sub_233841054(&v4, &v3);
}

void sub_2338F6DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338F6E18(uint64_t a1, uint64_t a2, int a3)
{
  (*(*a1 + 392))(__p);
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

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 296 == v7 || v8 <= 0.0)
  {
    if (a3)
    {
      (*(*a1 + 392))(__p, a1, a2);
      v9 = sub_233735E3C(a1 + 312, __p);
      if (a1 + 320 == v9)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = *(v9 + 56);
      }

      v12 = v10 > -100.0 && a1 + 320 != v9;
      if (v16 < 0)
      {
        operator delete(__p[0]);
        if (v12)
        {
          return sub_23373341C(v10);
        }
      }

      else if (v12)
      {
        return sub_23373341C(v10);
      }
    }

    return sub_233733290(a1, a2, a3);
  }

  return v8;
}

void sub_2338F6F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338F6FAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_23372A488(&__p, "iq");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "phaseone");
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

void sub_2338F7060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_2338F70A4(void *a1)
{
  sub_2338F70DC(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338F70DC(void *a1)
{
  *a1 = &unk_284937C60;
  v2 = a1[150];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return sub_2337557B4(a1);
}

uint64_t sub_2338F71DC(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284937F98;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_284937C60;
  *(a1 + 1208) = -1;
  *(a1 + 1216) = 0u;
  return a1;
}

void sub_2338F7290(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284937F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338F730C(uint64_t a1)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v2 = (a1 + 64);
  v5 = (v4 - v3) >> 3;
  sub_233730758(v38, v5);
  v6 = *v2;
  if (v4 != v3)
  {
    v7 = *(a1 + 40);
    v8 = v38[0];
    if (v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v4 - v3) >> 3;
    }

    v10 = *v2;
    do
    {
      v11 = *v7++;
      v12 = v11;
      v13 = *v10++;
      *v8++ = v12 * 100.0 / (v13 + 100.0);
      --v9;
    }

    while (v9);
  }

  v14 = v5 - 1;
  if (v6[v5 - 1] <= 0.0)
  {
    v17 = vcvtd_n_f64_s32(*(a1 + 12), 2uLL);
    v18 = hypot(v17, vcvtd_n_f64_s32(*(a1 + 8), 1uLL));
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v15 = v17 / v18;
    if (v20 != v19)
    {
      v21 = v20 - v19;
      v20 = *(a1 + 40);
      do
      {
        v22 = v21 >> 1;
        v23 = &v20[v21 >> 1];
        v25 = *v23;
        v24 = v23 + 1;
        v21 += ~(v21 >> 1);
        if (v15 < v25)
        {
          v21 = v22;
        }

        else
        {
          v20 = v24;
        }
      }

      while (v21);
    }

    v26 = v20 - v19;
    if (v26 >= v14)
    {
      v26 = v5 - 1;
    }

    v27 = 8 * v26 - 8;
    v28 = (v15 - *(v19 + v27)) / (v19[v26] - *(v19 + v27));
    v16 = v28 * *(v38[0] + v26) + (1.0 - v28) * *(v38[0] + v27);
  }

  else
  {
    v15 = *(*(a1 + 40) + 8 * v14);
    v16 = *(v38[0] + v14);
  }

  v29 = v15 / v16;
  sub_233730758(&__p, (v4 - v3) >> 3);
  if (v4 != v3)
  {
    v30 = 0;
    v31 = v38[0];
    v32 = __p;
    if (v5 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = (v4 - v3) >> 3;
    }

    do
    {
      v34 = v31[v30];
      v35 = 1.0 / v29;
      if (v34 != 0.0)
      {
        v35 = *(*(a1 + 40) + 8 * v30) / (v29 * v34);
      }

      v32[v30++] = v35;
    }

    while (v33 != v30);
  }

  if (v2 != &__p)
  {
    sub_23373176C(v2, __p, v37, (v37 - __p) >> 3);
  }

  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }
}

void sub_2338F7514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338F7548(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  sub_233730758(v66, (v2 - v3) >> 3);
  v4 = *(a1 + 64);
  if (v2 != v3)
  {
    v5 = *(a1 + 40);
    v6 = v66[0];
    if (((v2 - v3) >> 3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (v2 - v3) >> 3;
    }

    v8 = *(a1 + 64);
    do
    {
      v9 = *v5++;
      v10 = v9;
      v11 = *v8++;
      *v6++ = v10 * 100.0 / (v11 + 100.0);
      --v7;
    }

    while (v7);
  }

  v12 = (*(a1 + 72) - v4) >> 3;
  __p = 0;
  sub_233731694(v65, v12);
  v13 = (*(a1 + 72) - *(a1 + 64)) >> 3;
  v62 = 0;
  sub_233731694(&__p, v13);
  v14 = hypot(vcvtd_n_f64_s32(*(a1 + 12), 1uLL), vcvtd_n_f64_s32(*(a1 + 8), 1uLL));
  v15 = hypot(vcvtd_n_f64_s32(*(a1 + 20), 1uLL), vcvtd_n_f64_s32(*(a1 + 16), 1uLL));
  v17 = *(a1 + 64);
  v16 = *(a1 + 72);
  v18 = (v16 - v17) >> 3;
  if (v16 != v17)
  {
    v19 = __p;
    v20 = *(a1 + 40);
    v21 = v65[0];
    if (v18 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = (v16 - v17) >> 3;
    }

    v23 = *(a1 + 64);
    do
    {
      v24 = *v23++;
      *v19++ = 100.0 / (v24 + 100.0);
      v25 = *v20++;
      *v21++ = v25;
      --v22;
    }

    while (v22);
  }

  if (*(v16 - 8) > 0.0 && v16 != v17)
  {
    v27 = __p;
    v26 = v64;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    do
    {
      *v27 = *v27 / *(v26 - 1);
      ++v27;
      --v18;
    }

    while (v18);
  }

  v28 = [Curve alloc];
  v29 = v14;
  v30 = *(a1 + 72) - *(a1 + 64);
  v31 = v29;
  v34 = objc_msgSend_initWithCount_domainMin_domainMax_values_(v28, v32, v30 >> 3, __p, v33, *v65[0] * v29, *(v65[0] + v30 - 8) * v29);
  v35 = [Curve alloc];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_2338F794C;
  v60[3] = &unk_2789EEFC0;
  v36 = v34;
  v61 = v36;
  v40 = objc_msgSend_initWithBlock_domainMin_domainMax_(v35, v37, v60, v38, v39, 0.0, v31);
  v41 = [Curve alloc];
  v55 = MEMORY[0x277D85DD0];
  v56 = 3221225472;
  v57 = sub_2338F79C0;
  v58 = &unk_2789EEFC0;
  v43 = v40;
  v59 = v43;
  v42 = v15;
  v44 = v42;
  v52 = objc_msgSend_initWithBlock_domainMin_domainMax_(v41, v45, &v55, v46, v47, 0.0, v44);
  if (*(a1 + 72) != *(a1 + 64))
  {
    v53 = 0;
    do
    {
      v54 = objc_msgSend_function(v52, v48, v49, v50, v51, v55, v56, v57, v58);
      *(*(a1 + 64) + 8 * v53) = v54[2](*(*(a1 + 40) + 8 * v53) * v44);

      ++v53;
    }

    while (v53 < (*(a1 + 72) - *(a1 + 64)) >> 3);
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }
}

void sub_2338F78B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

double sub_2338F794C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = a6;
  if (a6 >= 0.00001)
  {
    v7 = objc_msgSend_function(*(a1 + 32), a2, a3, a4, a5);
    v6 = v7[2](v6) * v6;
  }

  return v6;
}

double sub_2338F79C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = 1.0;
  if (a6 >= 0.00001)
  {
    v8 = objc_msgSend_inverse(*(a1 + 32), a2, a3, a4, a5);
    v7 = v8[2](a6) / a6;
  }

  return v7;
}

void sub_2338F7A3C(void *a1)
{
  sub_2338F7A74(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338F7A74(void *a1)
{
  *a1 = &unk_284937FE8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2338F8154(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338F8170(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWEdgeSharpen", &unk_233945DBE, v5, 2u);
  }
}

BOOL sub_2338F8294(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  bzero(v6, 0xCCuLL);
  v2 = sub_233721A74(a1, **(a1 + 232), **(a1 + 256));
  JxlDecoderCreate();
  JxlDecoderSubscribeEvents();
  if (JxlDecoderSetInput() || JxlDecoderProcessInput() != 64 || JxlDecoderGetBasicInfo())
  {
    goto LABEL_10;
  }

  if (v7)
  {
    v3 = 1;
    goto LABEL_9;
  }

  if (JxlDecoderProcessInput() != 256 || (ColorAsEncodedProfile = JxlDecoderGetColorAsEncodedProfile(), v3 = ColorAsEncodedProfile == 0, !ColorAsEncodedProfile) && JxlDecoderSetPreferredColorProfile())
  {
LABEL_10:
    v3 = 0;
  }

LABEL_9:
  JxlDecoderDestroy();
  free(v2);
  return v3;
}

void sub_2338F8444(uint64_t a1)
{
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
}

void sub_2338F8494()
{
  if (__cxa_guard_acquire(&qword_280C04DA0))
  {
    qword_280C04DA8 = 0;
    unk_280C04DB0 = 0;

    __cxa_guard_release(&qword_280C04DA0);
  }
}

void sub_2338F84FC(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWLocalToneMap outputImage]";
  v3 = 2080;
  v4 = "[RAWLocalToneMap outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338F858C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  *a3 = 1;
}

void sub_2338F85D0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  *a3 = 2;
}

void sub_2338F8614(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWVignetteTable outputImage]";
  v3 = 2080;
  v4 = "[RAWVignetteTable outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338F880C(uint64_t a1, uint64_t a2, void *__p)
{
  if (__p)
  {
    *(a2 + 8) = __p;
    operator delete(__p);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }
}

void sub_2338F884C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void sub_2338F8878(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_2338F88A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 2);
  if (v3 == 4 || v3 == 13)
  {
    return (*(*a2 + 720))(a2, a3, result);
  }

  return result;
}

uint64_t sub_2338F892C(uint64_t a1, uint64_t a2)
{
  sub_2337582E4();
  v4 = (*(v3 + 56))();
  if (*(a2 + 2) == 5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (*(a2 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void sub_2338F8988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2337582E4();
  if (((*(v6 + 56))() & 1) == 0 && *(a2 + 2) == 1)
  {
    v8 = *(a2 + 4);
    v7 = *(a2 + 8);

    sub_233800478(a1, a3, v7, v8);
  }
}

uint64_t sub_2338F8A14()
{
  sub_2337582E4();
  if ((*(v0 + 56))())
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    sub_2337582F0();
    if (v3)
    {
      v4 = v2 == 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = !v4;
    v1 = v5 << 31 >> 31;
  }

  return v1 & 1;
}

uint64_t sub_2338F8A78(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a1 + 264))(a1, a3);
  if (result == 0xFFFF)
  {
    result = sub_233751308(a4);
    a1[508] = result;
  }

  return result;
}

void sub_2338F8ADC()
{
  *off_281947F30() = 1;
  v0 = objc_autoreleasePoolPush();
  v1 = off_281947F18();
  _tlv_atexit(sub_233758308, v1);

  objc_autoreleasePoolPop(v0);
}

void sub_2338F8BCC(char *a1, uint64_t a2, void **a3)
{
  if (*a1 < 0)
  {
    operator delete(*a3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }
}

void sub_2338F8C0C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = a3 + 1;
  v9 = a3 + 2;
  sscanf(v7, "%d.%d.%d", a3, a3 + 1, a3 + 2);
  v10 = 1000000 * *a3;
  if (v10 == v10)
  {
    v11 = 1000 * *v8;
    if (v11 == v11)
    {
      v12 = __OFADD__(v10, v11);
      v13 = v10 + v11;
      if (!v12)
      {
        v12 = __OFADD__(v13, *v9);
        v14 = v13 + *v9;
        if (!v12)
        {
          *(a4 + 1252) = v14;
        }
      }
    }
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t *sub_2338F8CCC(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return sub_233725FD4(a2);
}

uint64_t *sub_2338F8D30(uint64_t a1, uint64_t a2, __int16 a3, uint64_t *a4)
{
  v7 = *(a1 + 8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  if (a3 == 76)
  {
    v8 = 6;
  }

  else
  {
    v8 = 1;
  }

  if (a3 == 82)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  *(a2 + 1228) = v9;
  return sub_233725FD4(a4);
}

uint64_t sub_2338F8D94(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1224) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338F8DB4(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0 && *(a2 + 2) == 3)
  {
    v6 = 0;
    sub_233726998(&v5, &v6);
    result = sub_23374B704(a2, &v5);
    *(a1 + 1348) = result;
    *(a1 + 1350) = 1;
  }

  return result;
}

uint64_t sub_2338F8E3C(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1292) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338F8E5C(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1284) = *(result + 8) == 1;
  }

  return result;
}

void sub_2338F8E84(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[148];
  if (v6)
  {
    a1[149] = v6;
    operator delete(v6);
    a1[148] = 0;
    a1[149] = 0;
    a1[150] = 0;
  }

  *(a1 + 74) = *a3;
  a1[150] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 8);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2338F8EF4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *a2;
  if (*(a2 + 8) - *a2 == 8)
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2] - v7 + 1;
    v10 = v6[3] - v8 + 1;
    a3[308] = v7;
    a3[309] = v8;
    a3[310] = v9;
    a3[311] = v10;
    a3[304] += v7;
    a3[305] += v8;
    a3[306] = v9;
    a3[307] = v10;
LABEL_5:
    *(a2 + 8) = v6;
    operator delete(v6);
    return;
  }

  if (v6)
  {
    goto LABEL_5;
  }
}

void sub_2338F8F94(uint64_t a1, void **a2, void *a3)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v5 = *a2;
  if (*a2)
  {
    *a3 = v5;
    operator delete(v5);
  }
}

uint64_t sub_2338F8FD8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    v3 = *(result + 8);
    *(a2 + 1228) = v3;
    *(a2 + 1212) = v3;
  }

  return result;
}

uint64_t sub_2338F8FFC(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    v3 = *(result + 8);
    *(a2 + 1224) = v3;
    *(a2 + 1208) = v3;
  }

  return result;
}

BOOL sub_2338F9020(unsigned __int8 *a1, unint64_t a2, unsigned __int16 *a3)
{
  if (a2 >= 4)
  {
    v3 = *a1;
    if (v3 == 77)
    {
      if (a1[1] == 77)
      {
        v6 = *a3;
        if (a1[2] == v6 >> 8)
        {
          return a1[3] == v6;
        }
      }
    }

    else if (v3 == 73 && a1[1] == 73)
    {
      v4 = *a3;
      if (a1[2] == v4 && a1[3] == v4 >> 8)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_2338F910C(uint64_t a1)
{
  v2 = sub_23376A688(a1);
  if (v2)
  {
    *(v3 + 8) = v2;
    operator delete(v2);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

uint64_t sub_2338F9144(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 7 && *(result + 4) == 4)
  {
    v11 = v2;
    v12 = v3;
    v6 = result;
    v7 = 0;
    v9 = 0;
    do
    {
      sub_233726998(&v10, &v9);
      result = sub_233754BB0(v6, &v10);
      v7 = (result - 48) | (v7 << 8);
      v8 = v9++;
    }

    while (v8 < 3);
    *(a2 + 1180) = v7;
  }

  return result;
}

uint64_t sub_2338F91D0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1184) = result;
  }

  return result;
}

uint64_t sub_2338F9210(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1186) = result;
  }

  return result;
}

uint64_t sub_2338F9250(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1188) = result;
  }

  return result;
}

uint64_t sub_2338F9290(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1190) = result;
  }

  return result;
}

uint64_t sub_2338F92D0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1192) = result;
  }

  return result;
}

uint64_t sub_2338F9310(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1194) = result;
  }

  return result;
}

uint64_t sub_2338F9350(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1228) = result;
  }

  return result;
}

uint64_t sub_2338F9390(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1266) = result;
    *(a2 + 1268) = 1;
  }

  return result;
}

uint64_t sub_2338F93D8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1338) = result;
    *(a2 + 1340) = 1;
  }

  return result;
}

uint64_t sub_2338F9420(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1346) = result;
    *(a2 + 1348) = 1;
  }

  return result;
}

uint64_t sub_2338F9468(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1350) = result;
    *(a2 + 1352) = 1;
  }

  return result;
}

uint64_t sub_2338F94B0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1204) = *(result + 8);
    *(a2 + 1208) = 1;
  }

  return result;
}

uint64_t sub_2338F94D8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1358) = result;
    *(a2 + 1360) = 1;
  }

  return result;
}

uint64_t sub_2338F9520(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1362) = result;
    *(a2 + 1364) = 1;
  }

  return result;
}

uint64_t *sub_2338F9568(uint64_t *result, uint64_t a2)
{
  if (*(result + 1) == 7)
  {
    v2 = *(result + 1);
    v3 = *(result + 2);
    *(a2 + 1196) = v3;
    *(a2 + 1200) = v2;
    return sub_233767154(a2, v3, v2);
  }

  return result;
}

uint64_t sub_2338F9590(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1212) = result;
    *(a2 + 1216) = 1;
  }

  return result;
}

uint64_t sub_2338F95D8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1220) = result;
    *(a2 + 1224) = 1;
  }

  return result;
}

uint64_t sub_2338F9620(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1440) = result;
    *(a2 + 1442) = 1;
  }

  return result;
}

uint64_t sub_2338F9668(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1444) = result;
    *(a2 + 1446) = 1;
  }

  return result;
}

uint64_t sub_2338F96B0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1448) = result;
    *(a2 + 1450) = 1;
  }

  return result;
}

uint64_t sub_2338F96F8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1452) = result;
    *(a2 + 1454) = 1;
  }

  return result;
}

uint64_t sub_2338F9740(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1456) = result;
    *(a2 + 1458) = 1;
  }

  return result;
}

uint64_t sub_2338F9788(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1528) = result;
    *(a2 + 1530) = 1;
  }

  return result;
}

uint64_t sub_2338F97D0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1532) = result;
    *(a2 + 1534) = 1;
  }

  return result;
}

void sub_2338F9818(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_23376A680(v2, a1);
  }
}

uint64_t sub_2338F985C(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  if ((*a3 | 8) == 0x140B)
  {
    v10 = v3;
    v11 = v4;
    if (a3[1] == 3 && *(a3 + 1) == 1)
    {
      v7 = result;
      v8 = 0;
      sub_233726998(&v9, &v8);
      result = sub_23374B704(a3, &v9);
      *(v7 + 1440) = result;
    }
  }

  return result;
}

unsigned int *sub_2338F9908(unsigned int *result, unsigned int **a2, uint64_t a3)
{
  v3 = *result;
  if (v3 > 1)
  {
    return fwrite("eFujiCD_RawDataOffset: Array index out of bounds\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  *(a3 + 8 * v3) = **a2;
  return result;
}

uint64_t sub_2338F9A38(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1256) = *(result + 8);
  }

  return result;
}

id sub_2338F9A58(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 144);
    if (v3 || (CGImagePluginGetProperties(), v4 = objc_claimAutoreleasedReturnValue(), v5 = *(a1 + 144), *(a1 + 144) = v4, v5, (v3 = *(a1 + 144)) != 0))
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_2338F9AC0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return MEMORY[0x282122B10]();
  }

  return result;
}

void sub_2338F9AD4(id *a1, id *a2, void *a3)
{
  v5 = a3[16];
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = a3[13];
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = a3[10];
  if (v7)
  {
    sub_2337239E8(v7);
  }

  v8 = a3[4];
  if (v8)
  {
    sub_2337239E8(v8);
  }

  v9 = a3[2];
  if (v9)
  {

    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_2338F9B5C()
{
  if (__cxa_guard_acquire(&qword_280C04DC0))
  {
    qword_280C04DB8[0] = dispatch_queue_create("Provider_Queue_Sync", 0);

    __cxa_guard_release(&qword_280C04DC0);
  }
}

void sub_2338F9BB8()
{
  if (__cxa_guard_acquire(&qword_280C04DC8))
  {
    qword_280C04DD0 = dispatch_queue_create("Provider_Queue_1", 0);
    qword_280C04DD8 = dispatch_queue_create("Provider_Queue_2", 0);
    qword_280C04DE0 = dispatch_queue_create("Provider_Queue_3", 0);
    qword_280C04DE8 = dispatch_queue_create("Provider_Queue_4", 0);

    __cxa_guard_release(&qword_280C04DC8);
  }
}

uint64_t sub_2338F9C58(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  result = nullsub_6();
  v6 = *a3;
  switch(v6)
  {
    case 224:
      if (a3[1] == 3)
      {
        result = sub_233786484(a1, a3);
        v8 = *(a1 + 1184);
        v9 = *(a1 + 1192);
        if (v8 == v9)
        {
          v10 = *(a1 + 1200);
          if (v8 >= v10)
          {
            v11 = v10 - v8;
            v12 = v11 >> 1;
            if ((v11 >> 1) <= 1)
            {
              v12 = 1;
            }

            if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v13 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v12;
            }

            sub_2337235D4(a1 + 1184, v13);
          }

          *v9 = *(a1 + 1210);
          *(a1 + 1192) = v9 + 1;
        }
      }

      break;
    case 16:
      if (a3[1] == 4 && *(a3 + 1) == 1)
      {
        *(a1 + 1180) = *(a3 + 2);
      }

      break;
    case 147:
      result = (*(*a1 + 56))(a1);
      if ((result & 1) == 0 && a3[1] == 3)
      {

        return sub_2337862B8(a1, a3);
      }

      break;
    default:
      if (v6 == 1 && a3[1] == 3)
      {

        return sub_233786158(a1, a3);
      }

      break;
  }

  return result;
}

void sub_2338F9ED0(uint64_t a1, unsigned int *a2, uint32x4_t *a3, int a4)
{
  v7 = *(a1 + 8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  v8 = sub_233751844(a2);
  sub_233788044(a3, v8, a4, 1u);
}

void sub_2338F9F28()
{
  if (__cxa_guard_acquire(&qword_280C04DF8))
  {
    v0 = os_log_create("com.apple.rawcamera", "parse");
    v1 = sub_23378E148(v0, &qword_280C04DF0);

    __cxa_guard_release(v1);
  }
}

void sub_2338F9F84()
{
  if (__cxa_guard_acquire(&qword_280C04E08))
  {
    v0 = os_log_create("com.apple.rawcamera", "unpack");
    v1 = sub_23378E148(v0, &qword_280C04E00);

    __cxa_guard_release(v1);
  }
}

void sub_2338F9FE0()
{
  if (__cxa_guard_acquire(&qword_280C04E18))
  {
    v0 = os_log_create("com.apple.rawcamera", "plugin");
    v1 = sub_23378E148(v0, &qword_280C04E10);

    __cxa_guard_release(v1);
  }
}

void sub_2338FA03C()
{
  if (__cxa_guard_acquire(&qword_280C04E28))
  {
    v0 = os_log_create("com.apple.rawcamera", "render");
    v1 = sub_23378E148(v0, &qword_280C04E20);

    __cxa_guard_release(v1);
  }
}

void sub_2338FA098()
{
  if (__cxa_guard_acquire(&qword_280C04E38))
  {
    v0 = os_log_create("com.apple.rawcamera", "cifilter");
    v1 = sub_23378E148(v0, &qword_280C04E30);

    __cxa_guard_release(v1);
  }
}

void *sub_2338FA0F4(void *result, void **a2, unsigned __int16 *a3)
{
  if (*a3 == 34866)
  {
    if (a3[1] == 4)
    {
      v9 = v3;
      v10 = v4;
      v6 = *(a3 + 2);
      v8 = a2;
      v5 = sub_2337577E4((result + 24), a2);
      return sub_23375538C((v5 + 56), &v6, v7, 1uLL);
    }
  }

  else
  {

    return sub_233752384(result, a2, a3);
  }

  return result;
}

uint64_t sub_2338FA17C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  result = nullsub_6();
  v6 = *a3;
  if (v6 == 45057)
  {
    if (a3[1] == 3 && *(a3 + 1) == 1)
    {
      v9 = 0;
      sub_233726998(&v10, &v9);
      result = sub_23374B704(a3, &v10);
      *(a1 + 1264) = result;
    }
  }

  else if (v6 == 8201 && a3[1] == 3 && *(a3 + 1) == 1)
  {
    v9 = 0;
    sub_233726998(&v10, &v9);
    result = sub_23374B704(a3, &v10);
    *(a1 + 1268) = result;
  }

  return result;
}

uint64_t sub_2338FA234(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1372) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA254(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1368) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA274(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1336) = result;
  }

  return result;
}

uint64_t sub_2338FA2B4(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1304) = result;
  }

  return result;
}

uint64_t sub_2338FA2F4(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1272) = result;
  }

  return result;
}

uint64_t sub_2338FA334(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 2) == 3) & ~(*(*a1 + 56))(a1);
  if (*(a2 + 4) == 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338FA398(_BYTE *a1, unint64_t a2, void *a3)
{
  if (a2 >= 4 && *a1 == 73 && a1[1] == 73 && a1[2] == 42 && !a1[3])
  {
    return sub_23378E728(@"com.sony.raw-image", a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338FA3E4(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1224) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA404(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1216) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA424(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1208) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA444(uint64_t result, int a2, uint64_t a3)
{
  v3 = a2 + ((result - a2) & ~((result - a2) >> 31));
  if (v3 == result)
  {
    v4 = result;
  }

  else
  {
    v4 = result + 1;
  }

  v5 = (v3 - v4) / 0x168u;
  if (v3 != result)
  {
    ++v5;
  }

  v6 = result + 360 * v5;
  if ((v6 - a2) >= 0x167)
  {
    v7 = 359;
  }

  else
  {
    v7 = v6 - a2;
  }

  v8 = (v6 - a2 - v7 + 359) % 0x168u - (359 - v7);
  if (v8)
  {
    switch(v8)
    {
      case 0x10Eu:
        v9 = 8;
        break;
      case 0xB4u:
        v9 = 3;
        break;
      case 0x5Au:
        v9 = 6;
        break;
      default:
        return result;
    }
  }

  else
  {
    v9 = 1;
  }

  *(a3 + 1182) = v9;
  return result;
}

uint64_t sub_2338FA4DC()
{
  sub_2337AA77C();
  result = (*(v3 + 56))();
  if ((result & 1) == 0 && *(v1 + 2) == 7)
  {
    result = sub_233754AA0(v2, "IFD0");
    if (result & 1) != 0 || (result = sub_233754AA0(v2, "IFD0:SUBIFD0"), (result))
    {
      v5 = *(v0 + 1988);
      v6 = *(v1 + 8);
      *(v0 + 1976) = *v1;
      *(v0 + 1984) = v6;
      if ((v5 & 1) == 0)
      {
        *(v0 + 1988) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_2338FA578()
{
  sub_2337AA77C();
  result = (*(v3 + 56))();
  if ((result & 1) == 0 && *(v1 + 2) == 7)
  {
    result = sub_233754AA0(v2, "IFD0");
    if (result & 1) != 0 || (result = sub_233754AA0(v2, "IFD0:SUBIFD0"), (result))
    {
      v5 = *(v0 + 1972);
      v6 = *(v1 + 8);
      *(v0 + 1960) = *v1;
      *(v0 + 1968) = v6;
      if ((v5 & 1) == 0)
      {
        *(v0 + 1972) = 1;
      }
    }
  }

  return result;
}

void sub_2338FA614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 520 == a1 || *(a1 + 56) != 0;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  v7 = *(a3 + 2) != 3 || v6;
  if ((v7 & 1) == 0 && *(a3 + 4) == 1)
  {
    *(a2 + 1236) = sub_233751308(a3);
  }
}

void sub_2338FA69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    *(a3 + 1272) = *v6;
    *(a3 + 1280) = v6[1];
LABEL_5:
    *(a2 + 8) = v6;
    operator delete(v6);
    return;
  }

  if (v6)
  {
    goto LABEL_5;
  }
}

uint64_t sub_2338FA6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 + 520 == a1)
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    return 1;
  }

  v3 = *(a1 + 56);
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    return v3 != 0;
  }

  operator delete(*a3);
  return v3 != 0;
}

void sub_2338FA764(_WORD **a1, char a2, uint64_t a3)
{
  v4 = *a1;
  if ((a2 & 1) == 0 || v4 == a1[1])
  {
    if (!v4)
    {
      return;
    }
  }

  else
  {
    *(a3 + 1240) = *v4;
  }

  a1[1] = v4;
  operator delete(v4);
}

void sub_2338FA7AC(int a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = sub_2338C0490();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&dword_23371F000, v2, OS_LOG_TYPE_INFO, "Unhandled TIFF Tag by AdobeDNGImageParser %d", v3, 8u);
  }
}

uint64_t sub_2338FA854(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = !sub_23379FDD4(a2, (a1 + 1184));
  if (*(a3 + 2) != 1)
  {
    v4 = 1;
  }

  return *(a3 + 4) != 4 || v4;
}

void sub_2338FA8A4(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 264) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 240) = v6;

    operator delete(v6);
  }
}

uint64_t sub_2338FA900(uint64_t *a1)
{
  (*(*a1 + 440))(a1);
  result = a1[150];
  if (result)
  {
    v3 = sub_2337DB88C(result);
    v4 = sub_2337DB894(a1[150]);
    sub_2337DB944(a1[150]);
    sub_2337DB94C(a1[150]);
    return v3 | (v4 << 32);
  }

  return result;
}

_WORD *sub_2338FA9B0(void *a1)
{
  (*(*a1 + 440))(a1);
  result = a1[150];
  if (result)
  {
    return sub_2337DB838(result);
  }

  return result;
}

void sub_2338FAA0C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1200);
  if (v2)
  {
    if (*a2)
    {
      sub_2338FBCF8(v2, a2);
    }
  }
}

void sub_2338FAA24(const void **a1, uint64_t a2, uint64_t a3)
{
  sub_23372A488(__p, "IFD0");
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = v15;
  v9 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v7 != v8)
  {
    v12 = 1;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v6 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if ((v15 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = memcmp(v10, v11, v7) != 0;
  if (v9 < 0)
  {
LABEL_16:
    operator delete(__p[0]);
  }

LABEL_17:
  if (!v12)
  {
    v13 = *(a2 + 4);
    *(a3 + 1184) = *(a2 + 8);
    *(a3 + 1192) = v13;
    *(a3 + 1216) = 0;
  }
}

void sub_2338FAB20()
{
  if (__cxa_guard_acquire(&qword_280C04E48))
  {
    qword_280C04E40 = dispatch_queue_create("Unpacker I/O Queue", 0);

    __cxa_guard_release(&qword_280C04E48);
  }
}

void sub_2338FAB7C()
{
  if (__cxa_guard_acquire(&qword_280C04E58))
  {
    qword_280C04E50 = dispatch_queue_create("Unpacker Decompress Queue", MEMORY[0x277D85CD8]);

    __cxa_guard_release(&qword_280C04E58);
  }
}

uint64_t sub_2338FABDC(uint64_t a1, unsigned int *a2, char a3, unsigned int a4, unsigned int a5, double a6)
{
  result = sub_23378972C(*(a1 + 24));
  v14 = *a2;
  v13 = a2[1];
  if (v13 % 2 == (a3 & 2))
  {
    v15 = a2[1];
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v14 % 2 == (a3 & 1))
  {
    v16 = *a2;
  }

  else
  {
    v16 = v14 + 1;
  }

  v17 = a2[3] + v13;
  v18 = 0.0;
  if (v15 < v17)
  {
    v19 = 0;
    v20 = result + *(a1 + 40);
    v21 = a2[2] + v14;
    do
    {
      if (v16 < v21)
      {
        v22 = v16;
        do
        {
          v23 = *(v20 + 2 * *(a1 + 56) * v15 + 2 * v22);
          result = v23 >= a4;
          v24 = v23 <= a5;
          v19 += result & v24;
          if ((result & v24) != 0)
          {
            v18 = v18 + (v23 - a6) * (v23 - a6);
          }

          v22 += 2;
        }

        while (v22 < v21);
      }

      v15 += 2;
    }

    while (v15 < v17);
  }

  return result;
}

void sub_2338FAD28(uint64_t a1, int *a2, char a3, double *a4, double a5)
{
  if ((a5 < 0.0 || ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&a5 - 1) > 0xFFFFFFFFFFFFELL)
  {
    v15 = 0.0;
  }

  else
  {
    v12 = sub_2337B1140(a1, a2, 1u, 0xFFFFu, a3 & 1, a5);
    v13 = llround(fmax(floor(a5 + v12 * -5.0), 0.0));
    if ((v13 & 0xFFFE) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = sub_2337B1140(a1, a2, v14, vcvtpd_s64_f64(a5 + v12 * 5.0), a3 & 1, a5);
    if ((*&v15 <= -1 || ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v15 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v15 = 0.0;
    }
  }

  *a4 = v15;
}

unsigned __int8 *sub_2338FAE30(unsigned __int8 *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 71);
  v4 = *(a3 + 64);
  v5 = *(a3 + 20);
  v6 = *(a3 + 18);
  v7 = *(a3 + 24);
  v8 = *(a3 + 40);
  v9 = v4 + 2 * *(result + 136);
  v10 = v9 - 8;
  v11 = v9 - 2;
  if (v7 >= v8 - 40 || v4 >= v10)
  {
    v82 = *(a3 + 64);
  }

  else
  {
    result = *(a3 + 64);
    do
    {
      v13 = v6 - 16;
      if (v6 >= 16)
      {
        v14 = *v7;
        v15 = v5 << 16;
        if (v14 == 255)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        if (v14 == 255)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v18 = v7[v17];
        v7 += v16;
        v19 = v15 | (v14 << 8);
        if (v18 == 255)
        {
          ++v7;
        }

        v5 = v19 | v18;
        v6 = v13;
      }

      v20 = *(v3 + 2 * ((v5 << v6) >> 23));
      v21 = ((v20 >> 10) & 0x1F) + v6;
      if (v20 > 0x8000)
      {
        LOWORD(v20) = v20;
      }

      else
      {
        if ((v20 & 0x8000) != 0)
        {
          v20 = *(v3 + 2 * (((v5 << v6) >> 16) & 0x3FF));
          v21 += (v20 >> 10) & 0x1F;
        }

        v22 = v20 & 0x1F;
        if ((v20 & 0x1F) != 0)
        {
          v23 = v21 - 16;
          if (v21 >= 16)
          {
            v24 = *v7;
            v25 = v5 << 16;
            if (v24 == 255)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            if (v24 == 255)
            {
              v27 = 2;
            }

            else
            {
              v27 = 1;
            }

            v28 = v7[v27];
            v7 += v26;
            v29 = v25 | (v24 << 8);
            if (v28 == 255)
            {
              ++v7;
            }

            v5 = v29 | v28;
            v21 = v23;
          }

          v20 = ((v5 << v21) >> -v22) - ((((v5 << v21) >> 31) - 1) >> -v22);
          v21 += v22;
        }

        else
        {
          LOWORD(v20) = (v20 << 8) & 0x8000;
        }
      }

      *result = v20;
      v30 = v21 - 16;
      if (v21 >= 16)
      {
        v31 = *v7;
        v32 = v5 << 16;
        if (v31 == 255)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        if (v31 == 255)
        {
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }

        v35 = v7[v34];
        v7 += v33;
        v36 = v32 | (v31 << 8);
        if (v35 == 255)
        {
          ++v7;
        }

        v5 = v36 | v35;
        v21 = v30;
      }

      v37 = v5 << v21;
      v38 = *(v3 + 2 * ((v5 << v21) >> 23));
      v39 = ((v38 >> 10) & 0x1F) + v21;
      if (v38 > 0x8000)
      {
        LOWORD(v38) = v38;
      }

      else
      {
        if ((v38 & 0x8000) != 0)
        {
          v38 = *(v3 + 2 * (HIWORD(v37) & 0x3FF));
          v39 += (v38 >> 10) & 0x1F;
        }

        v40 = v38 & 0x1F;
        if ((v38 & 0x1F) != 0)
        {
          v41 = v39 - 16;
          if (v39 >= 16)
          {
            v42 = *v7;
            v43 = v5 << 16;
            if (v42 == 255)
            {
              v44 = 3;
            }

            else
            {
              v44 = 2;
            }

            if (v42 == 255)
            {
              v45 = 2;
            }

            else
            {
              v45 = 1;
            }

            v46 = v7[v45];
            v7 += v44;
            v47 = v43 | (v42 << 8);
            if (v46 == 255)
            {
              ++v7;
            }

            v5 = v47 | v46;
            v39 = v41;
          }

          v38 = ((v5 << v39) >> -v40) - ((((v5 << v39) >> 31) - 1) >> -v40);
          v39 += v40;
        }

        else
        {
          LOWORD(v38) = (v38 << 8) & 0x8000;
        }
      }

      *(result + 1) = v38;
      v48 = v39 - 16;
      if (v39 >= 16)
      {
        v49 = *v7;
        v50 = v5 << 16;
        if (v49 == 255)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        if (v49 == 255)
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }

        v53 = v7[v52];
        v7 += v51;
        v54 = v50 | (v49 << 8);
        if (v53 == 255)
        {
          ++v7;
        }

        v5 = v54 | v53;
        v39 = v48;
      }

      v55 = v5 << v39;
      v56 = *(v3 + 2 * ((v5 << v39) >> 23));
      v57 = ((v56 >> 10) & 0x1F) + v39;
      if (v56 > 0x8000)
      {
        LOWORD(v56) = v56;
      }

      else
      {
        if ((v56 & 0x8000) != 0)
        {
          v56 = *(v3 + 2 * (HIWORD(v55) & 0x3FF));
          v57 += (v56 >> 10) & 0x1F;
        }

        v58 = v56 & 0x1F;
        if ((v56 & 0x1F) != 0)
        {
          v59 = v57 - 16;
          if (v57 >= 16)
          {
            v60 = *v7;
            v61 = v5 << 16;
            if (v60 == 255)
            {
              v62 = 3;
            }

            else
            {
              v62 = 2;
            }

            if (v60 == 255)
            {
              v63 = 2;
            }

            else
            {
              v63 = 1;
            }

            v64 = v7[v63];
            v7 += v62;
            v65 = v61 | (v60 << 8);
            if (v64 == 255)
            {
              ++v7;
            }

            v5 = v65 | v64;
            v57 = v59;
          }

          v56 = ((v5 << v57) >> -v58) - ((((v5 << v57) >> 31) - 1) >> -v58);
          v57 += v58;
        }

        else
        {
          LOWORD(v56) = (v56 << 8) & 0x8000;
        }
      }

      *(result + 2) = v56;
      v66 = v57 - 16;
      if (v57 >= 16)
      {
        v67 = *v7;
        v68 = v5 << 16;
        if (v67 == 255)
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        if (v67 == 255)
        {
          v70 = 2;
        }

        else
        {
          v70 = 1;
        }

        v71 = v7[v70];
        v7 += v69;
        v72 = v68 | (v67 << 8);
        if (v71 == 255)
        {
          ++v7;
        }

        v5 = v72 | v71;
        v57 = v66;
      }

      v73 = *(v3 + 2 * ((v5 << v57) >> 23));
      v6 = ((v73 >> 10) & 0x1F) + v57;
      if (v73 > 0x8000)
      {
        LOWORD(v73) = v73;
      }

      else
      {
        if ((v73 & 0x8000) != 0)
        {
          v73 = *(v3 + 2 * (((v5 << v57) >> 16) & 0x3FF));
          v6 += (v73 >> 10) & 0x1F;
        }

        v74 = v73 & 0x1F;
        if ((v73 & 0x1F) != 0)
        {
          v75 = v6 - 16;
          if (v6 >= 16)
          {
            v76 = *v7;
            v77 = v5 << 16;
            if (v76 == 255)
            {
              v78 = 3;
            }

            else
            {
              v78 = 2;
            }

            if (v76 == 255)
            {
              v79 = 2;
            }

            else
            {
              v79 = 1;
            }

            v80 = v7[v79];
            v7 += v78;
            v81 = v77 | (v76 << 8);
            if (v80 == 255)
            {
              ++v7;
            }

            v5 = v81 | v80;
            v6 = v75;
          }

          v73 = ((v5 << v6) >> -v74) - ((((v5 << v6) >> 31) - 1) >> -v74);
          v6 += v74;
        }

        else
        {
          LOWORD(v73) = (v73 << 8) & 0x8000;
        }
      }

      v82 = result + 8;
      *(result + 3) = v73;
      v83 = v7 >= v8 - 40 || v82 >= v10;
      result += 8;
    }

    while (!v83);
  }

  *(a3 + 48) = 0;
  if (v7 > v8 || v82 >= v11)
  {
    v107 = 0;
    goto LABEL_187;
  }

  while (1)
  {
    if (v6 < 16)
    {
      goto LABEL_140;
    }

    if (v7 >= v8)
    {
      v85 = 0;
    }

    else
    {
      v86 = *v7++;
      v85 = v86;
    }

    if (v7 >= v8)
    {
      v87 = 0;
    }

    else
    {
      v88 = *v7++;
      v87 = v88;
    }

    if (v85 != 255)
    {
      goto LABEL_133;
    }

    if (v7 < v8)
    {
      v89 = *v7++;
      v87 = v89;
LABEL_133:
      v90 = v85 << 8;
      if (v7 >= v8)
      {
        result = v7;
      }

      else
      {
        result = v7 + 1;
      }

      if (v87 == 255)
      {
        v87 = 255;
        v7 = result;
      }

      goto LABEL_139;
    }

    v87 = 0;
    v90 = 65280;
LABEL_139:
    v5 = (v90 + (v5 << 16)) | v87;
    v6 -= 16;
LABEL_140:
    v91 = *(v3 + 2 * ((v5 << v6) >> 23));
    v92 = ((v91 >> 10) & 0x1F) + v6;
    if (v91 > 0x8000)
    {
      LOWORD(v91) = v91;
      goto LABEL_164;
    }

    if ((v91 & 0x8000) != 0)
    {
      v91 = *(v3 + 2 * (((v5 << v6) >> 16) & 0x3FF));
      v92 += (v91 >> 10) & 0x1F;
    }

    v93 = v91 & 0x1F;
    if ((v91 & 0x1F) == 0)
    {
      LOWORD(v91) = (v91 << 8) & 0x8000;
      goto LABEL_164;
    }

    v94 = v92 - 16;
    if (v92 >= 16)
    {
      if (v7 >= v8)
      {
        v95 = 0;
      }

      else
      {
        v96 = *v7++;
        v95 = v96;
      }

      if (v7 >= v8)
      {
        v97 = 0;
      }

      else
      {
        v98 = *v7++;
        v97 = v98;
      }

      if (v95 != 255)
      {
        goto LABEL_156;
      }

      if (v7 >= v8)
      {
        v97 = 0;
        v100 = 65280;
      }

      else
      {
        v99 = *v7++;
        v97 = v99;
LABEL_156:
        v100 = v95 << 8;
        if (v7 >= v8)
        {
          v101 = v7;
        }

        else
        {
          v101 = v7 + 1;
        }

        if (v97 == 255)
        {
          v97 = 255;
          v7 = v101;
        }
      }

      v5 = (v100 + (v5 << 16)) | v97;
      v92 = v94;
    }

    result = -v93;
    v91 = ((v5 << v92) >> -v93) - ((((v5 << v92) >> 31) - 1) >> -v93);
    v92 += v93;
LABEL_164:
    *v82++ = v91;
    if (v7 >= v8 || v92 < 8)
    {
      v6 = v92;
    }

    else
    {
      do
      {
        v103 = *v7++;
        v5 = v103 | (v5 << 8);
        if (v103 == 255 && v7 < v8)
        {
          ++v7;
        }

        v6 = v92 - 8;
        v105 = v92 < 0x10 || v7 >= v8;
        v92 -= 8;
      }

      while (!v105);
    }

    if (v7 == v8)
    {
      v106 = *(a3 + 34);
      if (v6 >= v106)
      {
        break;
      }
    }

    v107 = 0;
    if (v7 > v8 || v82 >= v11)
    {
      goto LABEL_187;
    }
  }

  v107 = v6 == v106;
LABEL_187:
  *(a3 + 72) = (v82 - v4) >> 1;
  *(a3 + 52) = v5;
  *(a3 + 50) = v6;
  *(a3 + 56) = v7;
  *(a3 + 48) = v107 & *(a3 + 32);
  *(a3 + 49) = *(a3 + 33);
  return result;
}

uint64_t sub_2338FB424(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = result + 568;
  v5 = *(a3 + 64);
  v6 = *(a3 + 20);
  v7 = *(a3 + 18);
  v8 = *(a3 + 24);
  v9 = *(a3 + 40);
  v10 = v5 + 2 * *(result + 544);
  v11 = v10 - 4;
  v12 = v10 - 2;
  if (v8 >= v9 - 24 || v5 >= v11)
  {
    v51 = *(a3 + 64);
  }

  else
  {
    v14 = *(v4 + 8 * (v3 & 1));
    result = *(v4 + 8 * !(v3 & 1));
    v15 = *(a3 + 64);
    do
    {
      v16 = v7 - 16;
      if (v7 >= 16)
      {
        v17 = *v8;
        v18 = v6 << 16;
        if (v17 == 255)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        if (v17 == 255)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }

        v21 = v8[v20];
        v8 += v19;
        v22 = v18 | (v17 << 8);
        if (v21 == 255)
        {
          ++v8;
        }

        v6 = v22 | v21;
        v7 = v16;
      }

      v23 = v6 << v7;
      v24 = *(v14 + 2 * ((v6 << v7) >> 23));
      v25 = ((v24 >> 10) & 0x1F) + v7;
      if (v24 > 0x8000)
      {
        LOWORD(v24) = v24;
      }

      else
      {
        if ((v24 & 0x8000) != 0)
        {
          v24 = *(v14 + 2 * (HIWORD(v23) & 0x3FF));
          v25 += (v24 >> 10) & 0x1F;
        }

        v26 = v24 & 0x1F;
        if ((v24 & 0x1F) != 0)
        {
          v27 = v25 - 16;
          if (v25 >= 16)
          {
            v28 = *v8;
            v29 = v6 << 16;
            if (v28 == 255)
            {
              v30 = 3;
            }

            else
            {
              v30 = 2;
            }

            if (v28 == 255)
            {
              v31 = 2;
            }

            else
            {
              v31 = 1;
            }

            v32 = v8[v31];
            v8 += v30;
            v33 = v29 | (v28 << 8);
            if (v32 == 255)
            {
              ++v8;
            }

            v6 = v33 | v32;
            v25 = v27;
          }

          v24 = ((v6 << v25) >> -v26) - ((((v6 << v25) >> 31) - 1) >> -v26);
          v25 += v26;
        }

        else
        {
          LOWORD(v24) = (v24 << 8) & 0x8000;
        }
      }

      *v15 = v24;
      v34 = v25 - 16;
      if (v25 >= 16)
      {
        v35 = *v8;
        v36 = v6 << 16;
        if (v35 == 255)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        if (v35 == 255)
        {
          v38 = 2;
        }

        else
        {
          v38 = 1;
        }

        v39 = v8[v38];
        v8 += v37;
        v40 = v36 | (v35 << 8);
        if (v39 == 255)
        {
          ++v8;
        }

        v6 = v40 | v39;
        v25 = v34;
      }

      v41 = v6 << v25;
      v42 = *(result + 2 * ((v6 << v25) >> 23));
      v7 = ((v42 >> 10) & 0x1F) + v25;
      if (v42 > 0x8000)
      {
        LOWORD(v42) = v42;
      }

      else
      {
        if ((v42 & 0x8000) != 0)
        {
          v42 = *(result + 2 * (HIWORD(v41) & 0x3FF));
          v7 += (v42 >> 10) & 0x1F;
        }

        v43 = v42 & 0x1F;
        if ((v42 & 0x1F) != 0)
        {
          v44 = v7 - 16;
          if (v7 >= 16)
          {
            v45 = *v8;
            v46 = v6 << 16;
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

            v49 = v8[v48];
            v8 += v47;
            v50 = v46 | (v45 << 8);
            if (v49 == 255)
            {
              ++v8;
            }

            v6 = v50 | v49;
            v7 = v44;
          }

          v42 = ((v6 << v7) >> -v43) - ((((v6 << v7) >> 31) - 1) >> -v43);
          v7 += v43;
        }

        else
        {
          LOWORD(v42) = (v42 << 8) & 0x8000;
        }
      }

      v51 = v15 + 2;
      v15[1] = v42;
      v52 = v8 >= v9 - 24 || v51 >= v11;
      v15 += 2;
    }

    while (!v52);
  }

  *(a3 + 48) = 0;
  if (v8 > v9 || v51 >= v12)
  {
    v72 = 0;
  }

  else
  {
    while (1)
    {
      if (v7 >= 16)
      {
        v54 = *v8;
        v55 = v6 << 16;
        if (v54 == 255)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        if (v54 == 255)
        {
          v57 = 2;
        }

        else
        {
          v57 = 1;
        }

        v58 = v8[v57];
        v8 += v56;
        v59 = v55 | (v54 << 8);
        if (v58 == 255)
        {
          ++v8;
        }

        v6 = v59 | v58;
        v7 -= 16;
      }

      result = *(v4 + 8 * (v3 & 1));
      v60 = *(result + 2 * ((v6 << v7) >> 23));
      v61 = ((v60 >> 10) & 0x1F) + v7;
      if (v60 > 0x8000)
      {
        LOWORD(v60) = v60;
      }

      else
      {
        if ((v60 & 0x8000) != 0)
        {
          v60 = *(result + 2 * (((v6 << v7) >> 16) & 0x3FF));
          v61 += (v60 >> 10) & 0x1F;
        }

        result = v60 & 0x1F;
        if ((v60 & 0x1F) != 0)
        {
          v62 = v61 - 16;
          if (v61 >= 16)
          {
            v63 = *v8;
            v64 = v6 << 16;
            if (v63 == 255)
            {
              v65 = 3;
            }

            else
            {
              v65 = 2;
            }

            if (v63 == 255)
            {
              v66 = 2;
            }

            else
            {
              v66 = 1;
            }

            v67 = v8[v66];
            v8 += v65;
            v68 = v64 | (v63 << 8);
            if (v67 == 255)
            {
              ++v8;
            }

            v6 = v68 | v67;
            v61 = v62;
          }

          v60 = ((v6 << v61) >> -result) - ((((v6 << v61) >> 31) - 1) >> -result);
          v61 += result;
        }

        else
        {
          result = v60 << 8;
          LOWORD(v60) = (v60 << 8) & 0x8000;
        }
      }

      *v51++ = v60;
      if (v61 < 8)
      {
        v7 = v61;
      }

      else
      {
        do
        {
          v69 = *v8;
          v6 = v69 | (v6 << 8);
          if (v69 == 255)
          {
            result = 2;
          }

          else
          {
            result = 1;
          }

          v8 += result;
          v7 = v61 - 8;
          v70 = v61 > 0xF;
          v61 -= 8;
        }

        while (v70);
      }

      if (v8 == v9)
      {
        v71 = *(a3 + 34);
        if (v7 >= v71)
        {
          break;
        }
      }

      v72 = 0;
      LOBYTE(v3) = v3 + 1;
      if (v8 > v9 || v51 >= v12)
      {
        goto LABEL_110;
      }
    }

    v72 = v7 == v71;
  }

LABEL_110:
  *(a3 + 72) = (v51 - v5) >> 1;
  *(a3 + 52) = v6;
  *(a3 + 50) = v7;
  *(a3 + 56) = v8;
  *(a3 + 48) = v72 & *(a3 + 32);
  *(a3 + 49) = *(a3 + 33);
  return result;
}

void sub_2338FB7FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[150];
  if (v6)
  {
    a1[151] = v6;
    operator delete(v6);
    a1[150] = 0;
    a1[151] = 0;
    a1[152] = 0;
  }

  *(a1 + 75) = *a3;
  a1[152] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 8);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

double sub_2338FB86C(double *a1, uint64_t a2)
{
  if (((*(*a1 + 56))(a1) & 1) == 0 && *(a2 + 2) == 3 && *(a2 + 4) == 1)
  {
    v12 = 0;
    v6 = sub_233726998(&v11, &v12);
    v7 = sub_2337B7D44(v6);
    if (v7)
    {
      v8 = v7 == 5000 || v7 == 6000;
      v9 = 21.0;
      if (v8)
      {
        v10 = 3800;
      }

      else
      {
        v9 = 0.0;
        v10 = v7;
      }

      return sub_23381946C(a1 + 148, v10, v9);
    }
  }

  return result;
}

uint64_t sub_2338FB91C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    v10 = sub_2337B7D20(result, a2, a3, a4, a5, a6, a7, a8, v11, v12, HIDWORD(v12));
    result = sub_2337B7D44(v10);
    *(v8 + 1230) = result;
  }

  return result;
}

uint64_t sub_2338FB964(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    v10 = sub_2337B7D20(result, a2, a3, a4, a5, a6, a7, a8, v11, v12, HIDWORD(v12));
    result = sub_2337B7D44(v10);
    *(v8 + 1228) = result;
  }

  return result;
}

uint64_t sub_2338FB9AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    v10 = sub_2337B7D20(result, a2, a3, a4, a5, a6, a7, a8, v11, v12, HIDWORD(v12));
    result = sub_2337B7D44(v10);
    *(v8 + 1224) = result;
  }

  return result;
}

uint64_t sub_2338FB9F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    v10 = sub_2337B7D20(result, a2, a3, a4, a5, a6, a7, a8, v11, v12, HIDWORD(v12));
    result = sub_2337B7D44(v10);
    *(v8 + 1226) = result;
  }

  return result;
}

void sub_2338FBA3C(std::__shared_weak_count **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

uint64_t sub_2338FBAA0(uint64_t result, int a2)
{
  if ((a2 - 3) >= 0xFFFFFFFE)
  {
    *(result + 192) = a2;
  }

  return result;
}

void sub_2338FBAB4()
{
  if (__cxa_guard_acquire(&qword_280C04E68))
  {
    byte_280C04E60 = 1;
    byte_280C04E64 = 1;

    __cxa_guard_release(&qword_280C04E68);
  }
}

double sub_2338FBB08(uint64_t a1, uint64_t a2, double *a3)
{
  v5 = (*(*a1 + 1136))(a1);
  result = (*(*a1 + 848))(a1) * v5;
  *a3 = result;
  return result;
}

__n128 sub_2338FBB98(void *a1, __n128 *a2)
{
  v5 = a1 + 15;
  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  result = *a2;
  *(a1 + 15) = *a2;
  a1[17] = a2[1].n128_u64[0];
  return result;
}

void sub_2338FBBF0()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2337463C0();
  _os_log_error_impl(&dword_23371F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", v1, 0x16u);
}

void sub_2338FBC74()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2337463C0();
  _os_log_error_impl(&dword_23371F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", v1, 0x16u);
}

void sub_2338FBCF8(uint64_t a1, uint64_t *a2)
{
  if (getenv("RAWCAMERA_OVERRIDE_STITCHING"))
  {
    sub_2337DC0B0();

    __asm { BRAA            X1, X16 }
  }

  v7 = *a2;
  if (*(*a2 + 48) == *(a1 + 108) && *(v7 + 52) == *(a1 + 106))
  {
    v8 = sub_2337B0628(v7);
    v16 = v8;
    v17 = *(a1 + 200);
    if (v17 == 3)
    {
      v32 = *(a1 + 208);
      if (v32 == 2)
      {
        if (*(a1 + 108))
        {
          sub_2337DC088();
          do
          {
            sub_2337DC024(v64, v65, v66, v67, v68, v69, v70, v71, v76, v2, v78, v79);
            sub_2337DC05C();
            if (v25)
            {
              sub_2337DBFA0();
              do
              {
                sub_2337DBFEC();
                sub_2337DC040();
                sub_2337DC014();
                *(v73 + 2 * v72) = v74;
                sub_2337DC014();
                sub_2337DC074(v75);
              }

              while (!v25);
            }

            sub_2337DBFD8();
          }

          while (!v25);
        }
      }

      else if (v32 == 1)
      {
        if (*(a1 + 108))
        {
          sub_2337DC088();
          do
          {
            sub_2337DC024(v52, v53, v54, v55, v56, v57, v58, v59, v76, v2, v78, v79);
            sub_2337DC05C();
            if (v25)
            {
              sub_2337DBFA0();
              do
              {
                sub_2337DBFEC();
                sub_2337DC040();
                sub_2337DC014();
                *(v61 + 2 * v60) = v62;
                sub_2337DC014();
                sub_2337DC074(v63);
              }

              while (!v25);
            }

            sub_2337DBFD8();
          }

          while (!v25);
        }
      }

      else if (!*(a1 + 208) && *(a1 + 108))
      {
        v33 = *(a1 + 216) * 0.5;
        v34 = *(a1 + 106);
        do
        {
          v77 = 2;
          v79 = v34;
          sub_2337DBED0(&v79, &v77);
          if (*(a1 + 106) >= 2u)
          {
            sub_2337DBFA0();
            v39 = v16 + v37 + 2 * v38;
            do
            {
              v40 = *(v36 + 2 * v35);
              v42 = (sub_2337DBF74(v40, *(v39 + 2 * v35), v40 - v33, v40 * v40 * 0.000000238418579) + 0.5);
              if (v42 >= 0xFFFF)
              {
                v42 = 0xFFFF;
              }

              *(v36 + 2 * v41) = v42 & ~(v42 >> 31);
              v47 = (v44 * v46 + v45 * v43 + 0.5);
              if (v47 >= 0xFFFF)
              {
                v47 = 0xFFFF;
              }

              *(v39 + 2 * v41) = v47 & ~(v47 >> 31);
              v35 = v41 + 1;
            }

            while (v35 < *(a1 + 106) >> 1);
          }

          sub_2337DBFD8();
        }

        while (!v25);
      }
    }

    else if (v17 == 2)
    {
      v26 = *(a1 + 208);
      if (v26 == 2)
      {
        if (*(a1 + 108))
        {
          do
          {
            sub_2337DC024(v8, v9, v10, v11, v12, v13, v14, v15, v76, 2, v78, v79);
            sub_2337DC05C();
            if (v25)
            {
              sub_2337DBF48();
              do
              {
                sub_2337DBFB4();
                sub_2337DC068();
                sub_2337DBF34();
                *v50 = v51;
                sub_2337DBF34();
                sub_2337DBF5C();
              }

              while (!v25);
            }

            sub_2337DBFC8();
          }

          while (!v25);
        }
      }

      else if (v26 == 1)
      {
        if (*(a1 + 108))
        {
          do
          {
            sub_2337DC024(v8, v9, v10, v11, v12, v13, v14, v15, v76, 2, v78, v79);
            sub_2337DC05C();
            if (v25)
            {
              sub_2337DBF48();
              do
              {
                sub_2337DBFB4();
                sub_2337DC068();
                sub_2337DBF34();
                *v48 = v49;
                sub_2337DBF34();
                sub_2337DBF5C();
              }

              while (!v25);
            }

            sub_2337DBFC8();
          }

          while (!v25);
        }
      }

      else if (!*(a1 + 208) && *(a1 + 108))
      {
        v27 = *(a1 + 216) * 0.5;
        do
        {
          sub_2337DC024(v8, v9, v10, v11, v12, v13, v14, v15, v76, 2, v78, v79);
          sub_2337DC05C();
          if (v25)
          {
            sub_2337DBF48();
            do
            {
              v28 = sub_2337DBFB4();
              sub_2337DBF74(v28, v29, v28 - v27, v28 * v28 * 0.000000238418579);
              sub_2337DC068();
              sub_2337DBF34();
              *v30 = v31;
              sub_2337DBF34();
              sub_2337DBF5C();
            }

            while (!v25);
          }

          sub_2337DBFC8();
        }

        while (!v25);
      }
    }

    else if (v17 == 1 && *(a1 + 108))
    {
      v18 = *(a1 + 106);
      do
      {
        v77 = 2;
        v79 = v18;
        sub_2337DBED0(&v79, &v77);
        if (*(a1 + 106) >= 2u)
        {
          sub_2337DBF48();
          do
          {
            sub_2337DC068();
            sub_2337DC09C();
            *v19 = v20;
            sub_2337DC09C();
            *(v22 + 2 * v21) = v23;
          }

          while (v24 + 1 < (*(a1 + 106) >> 1));
        }

        sub_2337DBFC8();
      }

      while (!v25);
    }
  }

  sub_2337DC0B0();
}

uint64_t sub_2338FC300(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1184) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FC320(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1180) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FC3F0(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    *(result + 188) = a2;
  }

  return result;
}

void sub_2338FC400()
{
  if (__cxa_guard_acquire(&qword_280C04E80))
  {
    byte_280C04E78 = getenv("RAWCAMERA_SIMPLELENSCORRECTION_LOGGING") != 0;
    __cxa_guard_release(&qword_280C04E80);
  }
}

void sub_2338FC448(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWSimpleLensCorrectionFilter outputImage]";
  v3 = 2080;
  v4 = "[RAWSimpleLensCorrectionFilter outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FC578(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_2338103E8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  __cxa_end_catch();
}

void sub_2338FC640(uint64_t a1)
{
  (*(*a1 + 16))(a1);
  sub_2338103E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_2338FC70C(uint64_t a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  if (a4 && a5)
  {
    *&v27 = a4;
    *(&v27 + 1) = a5;
    atomic_store(0, &v28);
    *(&v28 + 1) = sub_2338F6084(16 * a2);
    atomic_store(0, &v29);
    DWORD1(v29) = a2;
  }

  bzero(v22, 0xB0uLL);
  v24 = a1;
  v25 = a2;
  v26 = &v27;
  v8 = sub_2338F6084(16 * a2);
  v22[0] = v8;
  if (!v8)
  {
    return;
  }

  v9 = (a2 - 1);
  if (a2 >= 1)
  {
    if (a2 == 1)
    {
      v12 = 0;
    }

    else
    {
      v10 = 0;
      v11 = a2 & 0x7FFFFFFE;
      v12 = v9 - v11;
      v13 = &v8[16 * v9];
      do
      {
        *v13 = a3;
        *(v13 - 2) = a3;
        *(v13 + 2) = v10;
        *(v13 - 2) = v10 + 1;
        v10 += 2;
        v13 -= 32;
      }

      while (v11 != v10);
      if (v11 == a2)
      {
        goto LABEL_13;
      }
    }

    v14 = v12 + 1;
    v15 = ~v12 + a2;
    v16 = &v8[16 * v12 + 8];
    do
    {
      *(v16 - 1) = a3;
      *v16 = v15;
      v16 -= 4;
      ++v15;
      --v14;
    }

    while (v14);
  }

LABEL_13:
  atomic_store(a2, &v23);
  dispatch_apply_f(a2, 0, v22, sub_233818D54);
  v17 = v26;
  if (atomic_load(v26 + 8))
  {
    while (1)
    {
      v19 = atomic_load(v17 + 2);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      atomic_compare_exchange_strong(v17 + 2, &v20, *v19);
      if (v20 == v19)
      {
        if (!v19[1])
        {
          break;
        }

        (*(v17 + 1))(a3);
      }
    }

    v21 = *(v17 + 3);
    if (v21)
    {
      j__free_3(v21);
    }
  }

  j__free_3(v22[0]);
}

double sub_2338FC8E8(uint64_t a1, uint64_t a2)
{
  result = 0.3457;
  *a1 = xmmword_233908960;
  v3 = *a2;
  if (*(a2 + 8) - *a2 == 24)
  {
    result = *v3;
    v4 = *v3 + v3[1] + v3[2];
    if (v4 > 0.0)
    {
      *a1 = result / v4;
      result = v3[1] / v4;
      *(a1 + 8) = result;
    }
  }

  return result;
}

void sub_2338FC938(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    *(a2 + 16) = v5;
    operator delete(v5);
  }
}

void sub_2338FC97C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

double sub_2338FC9A8(uint64_t a1, double *a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    *(a1 + 16) = v8;
    operator delete(v8);
  }

  result = *a2;
  v10 = *a3;
  *a4 = *a2;
  a4[1] = v10;
  return result;
}

void sub_2338FC9F8(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWGamutMap outputImage]";
  v3 = 2080;
  v4 = "[RAWGamutMap outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

uint64_t sub_2338FCA88(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 336);
  if (v6 <= 7)
  {
    result = sub_23381D4B4(result, 8);
    v6 = *(v5 + 336);
  }

  v7 = *(v5 + 328);
  v8 = v6 - 8;
  v9 = *(a2 + 4 * (v7 >> (v6 - 8)) + 1192);
  if (v9)
  {
    *(v5 + 336) = v6 - v9;
    v10 = *(a2 + 4 * (v7 >> (v6 - 8)) + 2216);
  }

  else
  {
    v11 = (v7 >> (v6 - 8));
    *(v5 + 336) = v8;
    if (v11 <= *(a2 + 1116))
    {
      v14 = 8;
    }

    else
    {
      v12 = 280;
      do
      {
        if (!v8)
        {
          result = sub_23381D4B4(v5, 1);
          v8 = *(v5 + 336);
          v7 = *(v5 + 328);
        }

        *(v5 + 336) = --v8;
        v11 = (v7 >> v8) & 1 | (2 * v11);
        v13 = *(a2 + 4 * v12++);
      }

      while (v11 > v13);
      if ((v12 - 273) > 0xF)
      {
        v10 = 0;
        goto LABEL_14;
      }

      v14 = v12 - 272;
    }

    v10 = *(a2 + v11 + *(a2 + 2 * v14 + 1156) - *(a2 + 2 * v14 + 1048) + 17);
  }

LABEL_14:
  *a3 = v10;
  return result;
}

uint64_t sub_2338FCBC8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1212) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FCC14(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if ((*(result + 208) & 1) == 0)
  {
    return sub_233840B90(result, *(result + 288) * *a2, *(a3 + 8));
  }

  return result;
}

void sub_2338FCC34(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *a1;
  if (a2)
  {
    *(a3 + 1280) = *v4;
    v5 = v4[3];
    v6 = v4[4];
    *(a3 + 1284) = 0;
    *(a3 + 1292) = v5;
    *(a3 + 1296) = v6;
  }

  else if (!v4)
  {
    return;
  }

  *(a1 + 8) = v4;
  operator delete(v4);
}

void sub_2338FCC88(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

CGColorSpaceRef sub_2338FCCC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1584);
  if (v4)
  {
    CFRelease(v4);
  }

  v9 = 0;
  sub_233726998(&v8, &v9);
  v5 = sub_23374B704(a2, &v8);
  if (v5 == 2)
  {
    v6 = sub_2338F2CEC();
  }

  else if (v5 == 4)
  {
    v6 = sub_2338F2EB4();
  }

  else
  {
    v6 = sub_2338F2C54();
  }

  result = CGColorSpaceRetain(v6);
  *(a1 + 1584) = result;
  return result;
}

uint64_t sub_2338FCD48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    return (*(*a2 + 720))(a2, a3, result);
  }

  return result;
}

uint64_t sub_2338FCD9C()
{
  sub_23384AB88();
  result = (*(v2 + 56))();
  if ((result & 1) == 0 && *(v1 + 4) == 1)
  {
    result = sub_233751308(v1);
    *(v0 + 1332) = result;
  }

  return result;
}

uint64_t sub_2338FCDF4()
{
  sub_23384AB88();
  result = (*(v2 + 56))();
  if ((result & 1) == 0)
  {
    *(v0 + 1268) = *(v1 + 8);
  }

  return result;
}

uint64_t *sub_2338FCE3C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return sub_233725FD4(a2);
}

uint64_t sub_2338FCE74(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 1 && *(result + 4) == 1)
  {
    v9 = v2;
    v10 = v3;
    v6 = result;
    v8 = 0;
    sub_233726998(&v7, &v8);
    result = sub_233754BB0(v6, &v7);
    if (result == 1)
    {
      *(a2 + 1348) = 1;
    }
  }

  return result;
}

void sub_2338FCF0C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "DNGJPEGXLBayerUnpacker: deinterleaving would cause OOB access, maxSrcIndex=%llu, bufferSize=%llu", &v3, 0x16u);
}

void sub_2338FCF94(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_23371F000, a2, OS_LOG_TYPE_ERROR, "DNGJPEGXLBayerUnpacker: SafeInt overflow in deinterleaving: %s", &v4, 0xCu);
}

void sub_2338FD040(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 80);
  v5 = *(a1 + 84);
  v6 = (*(*a2 + 16))(a2);
  v7[0] = 67109634;
  v7[1] = v4;
  v8 = 1024;
  v9 = v5;
  v10 = 2080;
  v11 = v6;
  _os_log_error_impl(&dword_23371F000, a3, OS_LOG_TYPE_ERROR, "DNGJPEGXLBayerUnpacker: unpackTile failed for tile at (%u, %u): %s", v7, 0x18u);
}

void sub_2338FD114(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_233857B14(a1, v1);
  }
}

void sub_2338FD13C(void *a1, uint64_t a2, uint64_t a3, double **a4)
{
  if (a1)
  {
    operator delete(a1);
  }

  v6 = *a4;
  v7 = a4[1];
  if (*a4 != v7)
  {
    v8 = (a3 + 12);
    v9 = *a4;
    do
    {
      v10 = *v9++;
      v11 = v10;
      *v8 = v11;
      v8 += 4;
    }

    while (v9 != v7);
  }

  if (v6)
  {
    operator delete(v6);
  }
}

void sub_2338FD1AC()
{
  if (__cxa_guard_acquire(&qword_280C04EC0))
  {
    byte_280C04EB8 = getenv("RAWCAMERA_ENABLE_INFO_OVERLAY") != 0;

    __cxa_guard_release(&qword_280C04EC0);
  }
}

uint64_t *sub_2338FD208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v7;
    operator delete(v7);
  }

  return sub_233725FD4(a4);
}

void sub_2338FD250()
{
  if (__cxa_guard_acquire(&qword_280C04D98))
  {
    byte_27DE37C58 = getenv("RAWCAMERA_ENABLE_PRELIMINARY_SUPPORT") != 0;

    __cxa_guard_release(&qword_280C04D98);
  }
}

void sub_2338FD2B4()
{
  if (__cxa_guard_acquire(&qword_280C04EE0))
  {
    qword_280C04ED8 = dispatch_queue_create("CoreAnalytics Logging", 0);

    __cxa_guard_release(&qword_280C04EE0);
  }
}

void sub_2338FD324()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2337463C0();
  _os_log_error_impl(&dword_23371F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", v1, 0x16u);
}

void sub_2338FD3A8()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2337463C0();
  _os_log_error_impl(&dword_23371F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", v1, 0x16u);
}

void sub_2338FD42C(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWLinearSpacePlaceholder outputImage]";
  v3 = 2080;
  v4 = "[RAWLinearSpacePlaceholder outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD624(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWHueMagnet outputImage]";
  v3 = 2080;
  v4 = "[RAWHueMagnet outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD6B4(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWReduceNoise outputImage]";
  v3 = 2080;
  v4 = "[RAWReduceNoise outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD744(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWTemperatureAdjust outputImage]";
  v3 = 2080;
  v4 = "[RAWTemperatureAdjust outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD7D4(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWAdjustExposureAndBias outputImage]";
  v3 = 2080;
  v4 = "[RAWAdjustExposureAndBias outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD864(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWVignetteRadial outputImage]";
  v3 = 2080;
  v4 = "[RAWVignetteRadial outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD8F4(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWConvert outputImage]";
  v3 = 2080;
  v4 = "[RAWConvert outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD984(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWDefringeFilter outputImage]";
  v3 = 2080;
  v4 = "[RAWDefringeFilter outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void *sub_2338FDA14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (result)
  {
    result = __dynamic_cast(result, &unk_28492EBB0, &unk_2849312A8, 0);
    if (result)
    {
      if (a7)
      {
        v10 = *(a4 + 4);
        if ((v10 - 1000001) >= 0xFFF0BDC0)
        {
          LODWORD(v11) = *(a4 + 8);
          v12 = bswap32(v11);
          if (a6)
          {
            v11 = v12;
          }

          else
          {
            v11 = v11;
          }

          result[19] = v11;
          result[20] = v10;
        }
      }
    }
  }

  return result;
}

double sub_2338FDAC4(uint64_t a1, double result, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a5 + 4) >= 4u)
  {
    v24 = 0u;
    v25 = 0u;
    LODWORD(v10) = *(a5 + 8);
    v11 = bswap32(v10);
    v10 = a7 ? v11 : v10;
    if (sub_2338A9730(a1, &v24, 32, a6, v10) == 32)
    {
      if (a7)
      {
        v16 = *(a5 + 4);
        if (v16)
        {
          v17 = &v24;
          do
          {
            *v17 = bswap32(*v17);
            ++v17;
            --v16;
          }

          while (v16);
        }
      }

      LODWORD(v12) = DWORD1(v24);
      LODWORD(result) = v24;
      *&v18 = v12;
      v19 = *&result / *&v18;
      LODWORD(v13) = HIDWORD(v24);
      LODWORD(v18) = DWORD2(v24);
      *&v20 = v13;
      v21 = v18 / *&v20;
      LODWORD(v14) = DWORD1(v25);
      LODWORD(v20) = v25;
      *&v22 = v14;
      v23 = v20 / *&v22;
      LODWORD(v15) = HIDWORD(v25);
      LODWORD(v22) = DWORD2(v25);
      sub_2338ACBFC(a1, v19, v21, v23, v22 / v15);
    }
  }

  return result;
}

void sub_2338FDBD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = *(a4 + 2);
  if (v11 > 0x6F)
  {
    v12 = 0;
    v14 = 1;
  }

  else
  {
    v12 = qword_233916070[*(a4 + 2)];
    v13 = v11 == 3 || v11 == 8;
    v14 = !v13;
  }

  v15 = v12 * *(a4 + 4);
  if (v15 <= 0x28)
  {
    sub_2338B23D8();
    if (v15 < 5)
    {
      if ((v14 | a6 ^ 1))
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    v17 = *(a4 + 8);
    v18 = bswap32(v17);
    if (a6)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = sub_2338A9730(a1, v23, v15, a5, v19);
    v21 = a6 ^ 1;
    if (v20 != v15)
    {
      v21 = 1;
    }

    if (((v21 | v14) & 1) == 0)
    {
      v16 = *(a4 + 4);
LABEL_18:
      if (v16)
      {
        do
        {
          sub_2338B23B8();
        }

        while (!v13 & v22);
      }
    }
  }

LABEL_20:
}

void sub_2338FDD20()
{
  sub_2338B23E8();
  v42[5] = *MEMORY[0x277D85DE8];
  v5 = v4;
  v6 = *(v2 + 2);
  if (v6 > 0x6F)
  {
    v7 = 0;
    v9 = 1;
  }

  else
  {
    v7 = qword_233916070[*(v2 + 2)];
    v8 = v6 == 3 || v6 == 8;
    v9 = !v8;
  }

  v10 = v7 * *(v2 + 4);
  if (v10 <= 0x28)
  {
    sub_2338B23D8();
    v18 = *(v2 + 8);
    if (v10 < 5)
    {
      LODWORD(v42[0]) = *(v2 + 8);
    }

    else
    {
      v19 = bswap32(v18);
      if (v3)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      if (sub_2338B2420(v11, v12, v13, v14, v20, v15, v16, v17, v42[0]) != v10)
      {
        goto LABEL_26;
      }
    }

    if (((v9 | v3 ^ 1) & 1) == 0 && *(v2 + 4))
    {
      do
      {
        sub_2338B23B8();
      }

      while (!v8 & v21);
    }

    v22 = sub_2338A9B94(v1);
    v23 = sub_2338A9BFC(v0);
    v24 = sub_2338A9B78(v0);
    v25 = sub_2338AE880(v22, v23, v24);

    if (v10)
    {
      v26 = v25;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      sub_2338A9B94(v1);
      objc_claimAutoreleasedReturnValue();
      v27 = sub_2338B2400();
      v28 = sub_2338A9BFC(v27);
      sub_2338A9B78(v0);
      objc_claimAutoreleasedReturnValue();
      v29 = sub_2338B240C();
      v32 = sub_2338AD358(v29, v30, v31);

      v36 = 0;
      v37 = 0;
      do
      {
        objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v33, *(v42 + v36), v34, v35, v42[0]);
        objc_claimAutoreleasedReturnValue();
        v38 = sub_2338B2400();
        objc_msgSend_addObject_(v38, v39, v1, v40, v41);

        v36 = ++v37;
      }

      while (v10 > v37);
    }
  }

LABEL_26:
}

void sub_2338FDF90()
{
  sub_2338B23E8();
  v37[5] = *MEMORY[0x277D85DE8];
  v5 = v4;
  v6 = *(v2 + 2);
  if (v6 > 0x6F)
  {
    v7 = 0;
    v9 = 1;
  }

  else
  {
    v7 = qword_233916070[*(v2 + 2)];
    v8 = v6 == 3 || v6 == 8;
    v9 = !v8;
  }

  v10 = v7 * *(v2 + 4);
  if (v10 <= 0x28)
  {
    sub_2338B23D8();
    v18 = *(v2 + 8);
    if (v10 >= 5)
    {
      v19 = bswap32(v18);
      if (v3)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      if (sub_2338B2420(v11, v12, v13, v14, v20, v15, v16, v17, v37[0]) != v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(v37[0]) = *(v2 + 8);
    }

    if (((v9 | v3 ^ 1) & 1) == 0 && *(v2 + 4))
    {
      do
      {
        sub_2338B23B8();
      }

      while (!v8 & v21);
    }

    if (v10 >= 5)
    {
      sub_2338A9B94(v1);
      objc_claimAutoreleasedReturnValue();
      v22 = sub_2338B2400();
      v23 = sub_2338A9BFC(v22);
      sub_2338A9B78(v0);
      objc_claimAutoreleasedReturnValue();
      v24 = sub_2338B240C();
      v27 = sub_2338AD358(v24, v25, v26);

      v31 = 4;
      v32 = 4;
      do
      {
        objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v28, *(v37 + v31), v29, v30, v37[0]);
        objc_claimAutoreleasedReturnValue();
        v33 = sub_2338B2400();
        objc_msgSend_addObject_(v33, v34, v1, v35, v36);

        v31 = ++v32;
      }

      while (v10 > v32);
    }
  }

LABEL_22:
}

uint64_t sub_2338FE234(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
    v2 = *a1;
    if (v2 == 77)
    {
      if (a1[1] == 77 && !a1[2] && a1[3] == 42 && a1[8] == 186 && a1[9] == 176 && a1[10] == 172 && a1[11] == 187)
      {
        return 1;
      }
    }

    else if (v2 == 73 && a1[1] == 73 && a1[2] == 42 && !a1[3] && a1[8] == 67 && a1[9] == 82 && a1[10] == 2 && !a1[11])
    {
      return 1;
    }
  }

  return 0;
}

void sub_2338FE300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(a4 + 4);
  v9 = *(a4 + 8);
  v10 = bswap32(v9);
  if (a6)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a4 + 2);
  if (v12 > 0x6F)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_2339165C0[v12];
  }

  v40 = 0;
  v14 = v13 * v8;
  v39 = 0;
  sub_2338B8334(a1);
  sub_2338BB998();
  v18 = v18 || v15 == -2147483255;
  if (!v18)
  {
    if (v14 < 6)
    {
      return;
    }

    v15 = sub_2338BBA90(v15, &v40, v16, v17, v11 + 4);
    if (v15 == 2)
    {
      sub_2338BB9F0();
      LOWORD(v40) = v32;
      v32 = (v32 & 0x8000u) == 0 ? v32 : -v32;
      if (v32 <= 0xF)
      {
        v33 = sub_2338A9B94(a1);
        v34 = sub_2338A9BFC(a3);
        v38 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v35, v40, v36, v37);
        sub_2337830C4(v33, v34, *MEMORY[0x277CD3150], v38);
      }
    }
  }

  if (v14 < 0x16)
  {
    if (v14 < 8)
    {
      return;
    }
  }

  else
  {
    v15 = sub_2338BBA90(v15, &v40 + 2, v16, v17, v11 + 20);
    if (v15 == 2)
    {
      sub_2338BB9F0();
      HIWORD(v40) = v19;
      v20 = sub_2338A9B94(a1);
      v24 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v21, HIWORD(v40), v22, v23);
      sub_2337830C4(v20, @"{PictStyleNormalized}", @"PictureStyle", v24);
    }
  }

  if (sub_2338BBA90(v15, &v39, v16, v17, v11 + 6) == 2)
  {
    sub_2338BB9F0();
    v39 = v25;
    v26 = sub_2338A9B94(a1);
    v27 = sub_2338A9BFC(a3);
    v31 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v28, v39, v29, v30);
    sub_2337830C4(v26, v27, @"SharpnessFreq", v31);
  }
}

void sub_2338FE594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v156 = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 8);
  v10 = bswap32(v9);
  if (a6)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a4 + 2);
  if (v12 > 0x6F)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_2339165C0[v12];
  }

  v14 = *(a4 + 4);
  v153 = 0;
  v154 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  if (sub_2338B8334(a1) == -2147483647)
  {
    v144 = 0;
    v133 = 0;
    sub_2338BB9E4();
    v6 = 65;
    v16 = 66;
    sub_2338BB9D8();
    v17 = 75;
LABEL_45:
    sub_2338BBAC0();
    sub_2338BBA04();
    sub_2338BB944();
    v138 = 1;
    v139 = v26;
LABEL_48:
    v134 = 0xFFFFFFFFLL;
    v23 = 1;
    goto LABEL_49;
  }

  sub_2338BB998();
  if (v15)
  {
    sub_2338BB974();
    v141 = 0;
    sub_2338BBA34();
    v131 = 87;
    v24 = 85;
    goto LABEL_37;
  }

  sub_2338BB998();
  if (!v15)
  {
    sub_2338BB998();
    if (v15)
    {
      goto LABEL_27;
    }

    sub_2338BB998();
    if (v15)
    {
      sub_2338BB974();
      sub_2338BBA34();
      v18 = 2355;
      goto LABEL_39;
    }

    sub_2338BB998();
    if (v15)
    {
LABEL_27:
      v138 = 0;
      v133 = 0;
      sub_2338BB9E4();
      v137 = 110;
      v136 = 111;
      v135 = 115;
      v16 = 114;
      sub_2338BB9D8();
      v17 = 108;
      goto LABEL_47;
    }

    sub_2338BB998();
    if (v15)
    {
      sub_2338BB974();
      sub_2338BBA34();
      v18 = 2347;
      goto LABEL_39;
    }

    sub_2338BB998();
    if (v15)
    {
      v130 = 0;
      v138 = 0;
      v139 = 0;
      v144 = 0;
      sub_2338BB9E4();
      v134 = 23;
      v129 = 208;
      sub_2338BB9D8();
      v17 = 108;
      sub_2338BBAC0();
      v16 = 0xFFFFFFFFLL;
      sub_2338BB944();
      sub_2338BBA74();
LABEL_49:
      v143 = v23;
      v132 = 0xFFFFFFFFLL;
      v131 = 0xFFFFFFFFLL;
      goto LABEL_50;
    }

    sub_2338BB998();
    if (!v15)
    {
      sub_2338BB998();
      if (v15)
      {
        goto LABEL_32;
      }

      sub_2338BB998();
      if (!v15)
      {
        sub_2338BB998();
        if (v15)
        {
LABEL_35:
          sub_2338BB974();
          v141 = 0;
          sub_2338BBA34();
          v131 = 86;
          v24 = 84;
LABEL_37:
          v132 = v24;
          v134 = 25;
          v17 = 0xFFFFFFFFLL;
          sub_2338BB9D8();
LABEL_42:
          sub_2338BBA04();
          goto LABEL_43;
        }

        sub_2338BB998();
        if (v15)
        {
          sub_2338BB960();
          v131 = 82;
          sub_2338BB9A4();
          v17 = 171;
          goto LABEL_41;
        }

        sub_2338BB998();
        if (!v15)
        {
          sub_2338BB998();
          if (!v15)
          {
            sub_2338BB998();
            if (!v15)
            {
              sub_2338BB998();
              if (!v15)
              {
                sub_2338BB998();
                if (!v15)
                {
                  return;
                }

                v144 = 0;
                v133 = 0;
                sub_2338BB9E4();
                v6 = 71;
                v16 = 72;
                sub_2338BB9D8();
                v17 = 81;
                goto LABEL_45;
              }

              goto LABEL_35;
            }

            sub_2338BB960();
            v131 = 86;
            sub_2338BB9A4();
            v17 = 176;
LABEL_41:
            sub_2338BBAC0();
            goto LABEL_42;
          }

LABEL_32:
          sub_2338BB960();
          v131 = 82;
          sub_2338BB9A4();
          v17 = 167;
          goto LABEL_41;
        }

        sub_2338BB974();
        sub_2338BBA34();
        v18 = 2359;
LABEL_39:
        sub_2338BBA40();
        v17 = 0xFFFFFFFFLL;
        sub_2338BB9D8();
        sub_2338BBA04();
        v16 = 0xFFFFFFFFLL;
        sub_2338BB944();
        sub_2338BBA74();
        v141 = v25;
        goto LABEL_51;
      }

      v138 = 0;
      v133 = 0;
      sub_2338BB9E4();
      v137 = 118;
      v136 = 119;
      v135 = 117;
      v16 = 116;
      sub_2338BB9D8();
      v17 = 115;
LABEL_47:
      sub_2338BBAC0();
      sub_2338BBA04();
      v139 = 1;
      v144 = 1;
      v6 = 0xFFFFFFFFLL;
      goto LABEL_48;
    }
  }

  v128 = 0;
  sub_2338BB960();
  sub_2338BBA40();
  v129 = 0xFFFFFFFFLL;
  v127 = 374;
  v17 = 134;
  v130 = 1;
LABEL_43:
  v16 = 0xFFFFFFFFLL;
  sub_2338BB944();
  sub_2338BBA74();
LABEL_50:
  v18 = 0xFFFFFFFFLL;
LABEL_51:
  v27 = v13 * v14;
  if (v13 * v14 >= (v22 + 2))
  {
    v19 = sub_2338A9730(a1, &v153, 2, a5, v22 + v11);
    if (v19 == 2)
    {
      sub_2338BB984();
      if (v15)
      {
        v28 = v29;
      }

      LOWORD(v153) = v28;
      if ((v28 - 1) <= 0xFFFDu)
      {
        v30 = sub_2338A9B94(a1);
        v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v31, v153, v32, v33);
        sub_2338BBA5C(v14, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68]);

        if ((v141 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_60:
        v19 = sub_2338A9730(a1, v155, 64, a5, v18 + v11);
        if (v19 <= 0x40)
        {
          v155[v19] = 0;
          v19 = sub_2338A9524(a1, v155);
          if ((v19 & 1) == 0)
          {
            v34 = sub_2338A9B94(a1);
            v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v155, v36, v37);
            sub_2338BBA5C(v14, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F78]);
          }
        }

        goto LABEL_63;
      }
    }
  }

  if (v141)
  {
    goto LABEL_60;
  }

LABEL_63:
  v155[0] = 0;
  v38 = v140;
  if (v27 <= v17)
  {
    v38 = 0;
  }

  if (v38 == 1)
  {
    v19 = sub_2338BB9BC(v19, v155, v20, v21, v17 + v11);
    if (v19 == 1)
    {
      v39 = sub_2338A9B94(a1);
      v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v40, v155[0], v41, v42);
      sub_2338BBA5C(v14, @"{PictStyleNormalized}", @"PictureStyle");
    }
  }

  v149 = 0;
  v43 = v139;
  if (v27 <= v16)
  {
    v43 = 0;
  }

  if (v43 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v149, v20, v21, v16 + v11);
    if (v19 == 1)
    {
      v44 = v149;
      if (v149 < 0)
      {
        v44 = -v149;
      }

      if (v44 <= 0xF)
      {
        v45 = sub_2338A9B94(a1);
        objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v46, v149, v47, v48);
        objc_claimAutoreleasedReturnValue();
        sub_2338BBA84();
        sub_2338BBA5C(v49, v50, *MEMORY[0x277CD3150]);
      }
    }
  }

  v148 = 0;
  v51 = v138;
  if (v27 <= v6)
  {
    v51 = 0;
  }

  if (v51 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v148, v20, v21, v6 + v11);
    if (v19 == 1)
    {
      v52 = sub_2338A9B94(a1);
      objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v53, v148, v54, v55);
      objc_claimAutoreleasedReturnValue();
      sub_2338BBA84();
      sub_2338BBA5C(v56, v57, @"SharpnessFreq");
    }
  }

  v147 = 0;
  v58 = v144;
  if (v27 <= v137)
  {
    v58 = 0;
  }

  if (v58 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v147, v20, v21, v137 + v11);
    if (v19 == 1)
    {
      v59 = v147;
      if (v147 < 0)
      {
        v59 = -v147;
      }

      if (v59 <= 0xF)
      {
        v60 = sub_2338A9B94(a1);
        objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v61, v147, v62, v63);
        objc_claimAutoreleasedReturnValue();
        sub_2338BBA84();
        sub_2338BBA5C(v64, v65, *MEMORY[0x277CD3128]);
      }
    }
  }

  v146 = 0;
  v66 = v144;
  if (v27 <= v136)
  {
    v66 = 0;
  }

  if (v66 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v146, v20, v21, v136 + v11);
    if (v19 == 1)
    {
      v67 = sub_2338A9B94(a1);
      objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v68, v146, v69, v70);
      objc_claimAutoreleasedReturnValue();
      sub_2338BBA84();
      sub_2338BBA5C(v71, v72, @"ColorTone");
    }
  }

  v145 = 0;
  v73 = v144;
  if (v27 <= v135)
  {
    v73 = 0;
  }

  if (v73 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v145, v20, v21, v135 + v11);
    if (v19 == 1)
    {
      v74 = sub_2338A9B94(a1);
      objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v75, v145, v76, v77);
      objc_claimAutoreleasedReturnValue();
      sub_2338BBA84();
      sub_2338BBA5C(v78, v79, *MEMORY[0x277CD3018]);
    }
  }

  v80 = v133;
  if (v27 <= v134)
  {
    v80 = 0;
  }

  v81 = MEMORY[0x277CD33B8];
  if (v80 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v152, v20, v21, v134 + v11);
    if (v19 == 1)
    {
      v82 = sub_2338A9B94(a1);
      v86 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v83, v152 - 128, v84, v85);
      sub_2338BBA5C(v86, *v81, @"CameraTemperatur");
    }
  }

  v87 = v143;
  if (v27 < v132 + 2)
  {
    v87 = 1;
  }

  if ((v87 & 1) == 0)
  {
    v19 = sub_2338BBA14(v19, &v151);
    if (v19 == 2)
    {
      sub_2338BB984();
      if (v15)
      {
        v88 = v89;
      }

      v151 = v88;
      v90 = sub_2338A9B94(a1);
      LOWORD(v91) = v151;
      *&v92 = sub_2338BBAAC(v91);
      v98 = objc_msgSend_numberWithFloat_(v93, v94, v95, v96, v97, v92);
      sub_2338BBA5C(v98, *v81, @"FocusDistanceUpper");
    }
  }

  v99 = v143;
  if (v27 < v131 + 2)
  {
    v99 = 1;
  }

  if ((v99 & 1) == 0)
  {
    v19 = sub_2338BBA14(v19, &v150);
    if (v19 == 2)
    {
      sub_2338BB984();
      if (v15)
      {
        v100 = v101;
      }

      v150 = v100;
      v102 = sub_2338A9B94(a1);
      LOWORD(v103) = v150;
      *&v104 = sub_2338BBAAC(v103);
      v110 = objc_msgSend_numberWithFloat_(v105, v106, v107, v108, v109, v104);
      sub_2338BBA5C(v110, *v81, @"FocusDistanceLower");
    }
  }

  v111 = v130;
  if (v27 < v129 + 2)
  {
    v111 = 1;
  }

  if ((v111 & 1) != 0 || sub_2338BBA14(v19, &v153 + 2) != 2)
  {
    v112 = 0;
  }

  else
  {
    sub_2338BB984();
    if (!v15)
    {
      LOWORD(v112) = v113;
    }

    v112 = v112;
    v154 = v112;
  }

  v114 = v128;
  if (v27 < v127 + 4)
  {
    v114 = 1;
  }

  if ((v114 & 1) == 0)
  {
    v115 = sub_2338A9730(a1, &v154, 4, a5, v127 + v11);
    v112 = v154;
    if (v115 == 4)
    {
      v116 = bswap32(v154);
      if (a6)
      {
        v112 = v116;
      }

      v154 = v112;
    }
  }

  if (v112 >= 2)
  {
    v117 = sub_2338A9B94(a1);
    v118 = *MEMORY[0x277CD2F50];
    v119 = *MEMORY[0x277CD2F60];
    v120 = sub_2338AE900(v117, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F60]);

    v121 = v154;
    if (v154 > v120)
    {
      v122 = sub_2338A9B94(a1);
      v126 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v123, v121, v124, v125);
      sub_2337830C4(v122, v118, v119, v126);
    }
  }
}

void sub_2338FF1E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v73 = a2;
  v10 = *(a4 + 4);
  v11 = *(a4 + 2);
  if (v11 > 0x6F)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_2339165C0[v11];
  }

  if ((v12 * v10) > 0x4000)
  {
    goto LABEL_90;
  }

  sub_233726154(&v81, v12 * v10);
  v13 = *(a4 + 8);
  v14 = bswap32(v13);
  if (a6)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = sub_2338A9730(a1, v81, v82 - v81, a5, v15);
  v17 = v81;
  if (v16 == v82 - v81)
  {
    v18 = sub_2338B8334(a1);
    if (v16 >= 8)
    {
      v22 = *v81;
      v23 = 88;
      if ((v22 | 0x40) == 0xFF)
      {
        v24 = 0;
        goto LABEL_11;
      }

      if (v22 >= 0x91)
      {
        v36 = 0;
      }

      else
      {
        v36 = 130;
      }

      v19 = 69;
      if (v22 >= 0x91)
      {
        LODWORD(v23) = 88;
      }

      else
      {
        LODWORD(v23) = 69;
      }

      if (v22 >= 0x82)
      {
        v37 = v36;
      }

      else
      {
        v37 = 95;
      }

      if (v22 < 0x82)
      {
        LODWORD(v23) = 68;
      }

      if (v22 >= 0x5F)
      {
        v38 = v37;
      }

      else
      {
        v38 = 62;
      }

      if (v22 < 0x5F)
      {
        LODWORD(v23) = 67;
      }

      if (v22 >= 0x3E)
      {
        v39 = v38;
      }

      else
      {
        v39 = 31;
      }

      if (v22 < 0x3E)
      {
        LODWORD(v23) = 66;
      }

      if (v22 >= 0x1F)
      {
        v24 = v39;
      }

      else
      {
        v24 = 2;
      }

      if (v22 >= 0x1F)
      {
        v23 = v23;
      }

      else
      {
        v23 = 65;
      }

      if (v24 <= v22)
      {
LABEL_11:
        v71 = v18;
        v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%c%.2d", v20, v21, v23, (v22 - v24) >> 1);
        v29 = v25;
        v30 = 0;
        for (i = 0; ; ++i)
        {
          v32 = sub_2338B9DE0(v25, i, v26, v27, v28);

          if (!v32)
          {
            break;
          }

          v35 = objc_msgSend_substringWithRange_(v32, v33, 0, 3, v34);
          if (!sub_2338BA75C(v29, v35, 0))
          {
            if ((i & 0x40) != 0)
            {
              v40 = 0;
            }

            else
            {
              v40 = 1 << i;
            }

            if ((i & 0x40) != 0)
            {
              v41 = 1 << i;
            }

            else
            {
              v41 = 0;
            }

            sub_2338B11B8(a1, v40, v41, 0);

            break;
          }

          v30 = v32;
        }

        v72 = a1;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (sub_2338B9D7C(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", v44))
        {
          v46 = sub_2338B9D7C(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", v44 + 6);
          v47 = sub_2338B9D7C(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", v44 + 9);
          v48 = sub_2338B9D7C(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", v44 + 8);
          v49 = (v46 - 48);
          if (v49 < v16 && ((v47 + 16 * v48 + 208) & v81[v49]) != 0)
          {
            v50 = 1 << v45;
            if ((v45 & 0x40) != 0)
            {
              v51 = 0;
            }

            else
            {
              v51 = 1 << v45;
            }

            if ((v45 & 0x40) == 0)
            {
              v50 = 0;
            }

            v43 |= v50;
            v42 |= v51;
          }

          v44 += 12;
          ++v45;
        }

        sub_2338B1254(v72, v42, v43, 0);
        v52 = sub_2338AC594(v72, 0, 0, sub_2338BA7E8);
        v56 = 0;
        v80[0] = 0;
        v80[1] = 0;
        LODWORD(v79) = 0;
        while (1)
        {
          v57 = sub_2338B9DE0(v52, v56, v53, v54, v55);
          v58 = sub_2338B9BF8(v57, v71, v57, v80, &v79);

          if (!v58)
          {
            break;
          }

          v56 = (v56 + 1);
        }

        __p = 0;
        v77 = 0;
        v78 = 0;
        v75 = 0;
        if (v56)
        {
          v59 = 0;
          do
          {
            v74 = 0uLL;
            v60 = sub_2338B9DE0(v52, v59, v53, v54, v55);
            v61 = sub_2338B9BF8(v60, v71, v60, &v74, &v75);

            v62 = v59;
            if (v61)
            {
              v63 = v77;
              if (v77 >= v78)
              {
                v65 = (v77 - __p) >> 4;
                v66 = v65 + 1;
                if ((v65 + 1) >> 60)
                {
                  sub_2337235BC();
                }

                v67 = v78 - __p;
                if ((v78 - __p) >> 3 > v66)
                {
                  v66 = v67 >> 3;
                }

                if (v67 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v68 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v68 = v66;
                }

                if (v68)
                {
                  sub_23377FC40(&__p, v68);
                }

                v69 = (16 * v65);
                *v69 = v74;
                v64 = 16 * v65 + 16;
                v70 = (16 * v65 - (v77 - __p));
                memcpy(v69 - (v77 - __p), __p, v77 - __p);
                v52 = __p;
                __p = v70;
                v77 = v64;
                v78 = 0;
                if (v52)
                {
                  operator delete(v52);
                }
              }

              else
              {
                *v77 = v74;
                v64 = (v63 + 16);
              }

              v77 = v64;
              v62 = v56;
            }

            v59 = (v59 + 1);
            v56 = v62;
          }

          while (v59 < v62);
          if (v62)
          {
            sub_2338B1160(v72, &__p, 0);
            sub_2338B1194(v72, &v75, 0);
          }
        }

        if (__p)
        {
          v77 = __p;
          operator delete(__p);
        }
      }
    }

    v17 = v81;
  }

  if (v17)
  {
    v82 = v17;
    operator delete(v17);
  }

LABEL_90:
}

void sub_2338FF6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338FF798(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 < 4)
  {
    goto LABEL_19;
  }

  v6 = *a1;
  if (v6 == 77)
  {
    if (a1[1] != 77)
    {
      goto LABEL_19;
    }

    if (a1[2])
    {
      goto LABEL_19;
    }

    if (a1[3] != 42)
    {
      goto LABEL_19;
    }

    v10 = bswap32(*(a1 + 1));
    v8 = (v10 + 2);
    if (v8 > a2)
    {
      goto LABEL_19;
    }

    v7 = (v10 + 1);
    v9 = 1;
    v11 = v10;
  }

  else
  {
    if (v6 != 73)
    {
      goto LABEL_19;
    }

    if (a1[1] != 73)
    {
      goto LABEL_19;
    }

    if (a1[2] != 42)
    {
      goto LABEL_19;
    }

    if (a1[3])
    {
      goto LABEL_19;
    }

    v7 = *(a1 + 1);
    v8 = (v7 + 2);
    if (v8 > a2)
    {
      goto LABEL_19;
    }

    v9 = 0;
    v10 = (v7 + 1);
    v11 = *(a1 + 1);
  }

  v12 = a1[v7] | (a1[v10] << 8);
  if ((v8 + 12 * v12) <= a2 && v12 != 0)
  {
    v16 = &a1[v11 + 3];
    while (1)
    {
      if (v9)
      {
        if (*(v16 - 1) != 134)
        {
          goto LABEL_27;
        }

        v17 = *v16;
      }

      else
      {
        if (*v16 != 134)
        {
          goto LABEL_27;
        }

        v17 = *(v16 - 1);
      }

      if (v17 == 6)
      {
        v14 = 1;
        goto LABEL_20;
      }

LABEL_27:
      v14 = 0;
      --v12;
      v16 += 12;
      if (!v12)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v14 = 0;
LABEL_20:

  return v14;
}

void sub_2338FF8E0()
{
  if (__cxa_guard_acquire(&qword_280C04EF0))
  {
    v0 = os_log_create("com.apple.rawcamera", "general");
    v1 = sub_23378E148(v0, &qword_280C04EE8);

    __cxa_guard_release(v1);
  }
}

void sub_2338FF93C()
{
  if (__cxa_guard_acquire(&qword_280C04F00))
  {
    v0 = os_log_create("com.apple.rawcamera", "mobileasset");
    v1 = sub_23378E148(v0, &qword_280C04EF8);

    __cxa_guard_release(v1);
  }
}

void sub_2338FF998()
{
  if (__cxa_guard_acquire(qword_280C04F10))
  {
    v0 = os_log_create("com.apple.rawcamera", "render");
    v1 = sub_23378E148(v0, &qword_280C04F08);

    __cxa_guard_release(v1);
  }
}

void sub_2338FF9F4()
{
  if (__cxa_guard_acquire(qword_280C04F30))
  {
    v0 = os_log_create("com.apple.rawcamera", "compile");
    v1 = sub_23378E148(v0, &qword_280C04F28);

    __cxa_guard_release(v1);
  }
}

uint64_t *sub_2338FFA78(int a1, unsigned int *a2, uint64_t *a3, BOOL *a4)
{
  v4 = a1 == 4 && bswap32(*a2) == 5067341;
  *a4 = v4;
  return sub_233725FD4(a3);
}

uint64_t sub_2338FFABC(uint64_t a1, int a2, uint64_t a3)
{
  result = a3;
  if ((a3 + 3) <= 6)
  {
    if (a2 - 2) <= 9 && ((0x2CFu >> (a2 - 2)))
    {
      return sub_2338C7F4C(a3 + 3);
    }

    else
    {
      return (a3 + 3);
    }
  }

  return result;
}

uint64_t sub_2338FFAF8(uint64_t a1, int a2, uint64_t a3)
{
  result = a3;
  if ((a3 + 3) <= 6)
  {
    if (a2 - 2) <= 7 && ((0xCFu >> (a2 - 2)))
    {
      return sub_2338C7F4C(a3 + 3);
    }

    else
    {
      return (a3 + 3);
    }
  }

  return result;
}

uint64_t sub_2338FFB34(uint64_t a1, _DWORD *a2, unint64_t a3, unsigned int a4, unsigned __int8 a5)
{
  if (a3 < 0xC)
  {
    return 0;
  }

  v18 = v5;
  v19 = v6;
  v10 = a2 + 1;
  *v16 = *a2;
  v17 = 0;
  result = atoi(v16);
  if (result >= 0xC9)
  {
    if (a4)
    {
      v12 = byte_2339173E8[a5];
      v13 = byte_2339173E8[((BYTE2(a4) ^ BYTE1(a4) ^ a4) ^ HIBYTE(a4)) + 256];
      v14 = a3 - 4;
      v15 = 96;
      do
      {
        v13 += v15 * v12;
        ++v15;
        *v10++ ^= v13;
        --v14;
      }

      while (v14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2338FFBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 4);
  v7 = *(a4 + 2);
  if (v7 > 0x6F)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_233917600[v7];
  }

  v9 = v8 * v6;
  if ((v8 * v6) <= 0x63)
  {
    sub_2338C7F58();
    if (sub_2338A9730(a1, v21, v9, v10, v11) == v9)
    {
      v21[v9] = 0;
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v21, v13, v14);
      v17 = sub_2338C3068(v20, off_2789F04C8, &v20, v15, v16);
      v18 = sub_2338A9B78(a3);
      v19 = v20;
      sub_2338AD018(a1, @"{PictureStyle}", v18, v20, v17, v17);

      if (v17 == 11)
      {
        sub_2338ACF60(a1, @"Monochrome", 1);
      }
    }
  }
}

double sub_2338FFD80(uint64_t a1, double result, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a5 + 4) >= 4u)
  {
    v25 = 0u;
    v26 = 0u;
    sub_2338C7F58();
    if (sub_2338A9730(v10, &v25, 32, v11, v12) == 32)
    {
      if (a7)
      {
        v17 = *(a5 + 4);
        if (v17)
        {
          v18 = &v25;
          do
          {
            *v18 = bswap32(*v18);
            ++v18;
            --v17;
          }

          while (v17);
        }
      }

      LODWORD(v13) = DWORD1(v25);
      LODWORD(result) = v25;
      *&v19 = v13;
      v20 = *&result / *&v19;
      LODWORD(v14) = HIDWORD(v25);
      LODWORD(v19) = DWORD2(v25);
      *&v21 = v14;
      v22 = v19 / *&v21;
      LODWORD(v15) = DWORD1(v26);
      LODWORD(v21) = v26;
      *&v23 = v15;
      v24 = v21 / *&v23;
      LODWORD(v16) = HIDWORD(v26);
      LODWORD(v23) = DWORD2(v26);
      sub_2338ACBFC(a1, v20, v22, v24, v23 / v16);
    }
  }

  return result;
}

BOOL sub_2338FFE88(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    v2 = *a1;
    if (v2 != 77)
    {
      return v2 == 73 && a1[1] == 73 && (a1[2] == 82 && a1[3] == 79 || a1[2] == 82 && a1[3] == 83);
    }

    if (a1[1] == 77 && a1[2] == 79 && a1[3] == 82)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2338FFF18(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    v2 = *a1;
    if (v2 == 77)
    {
      if (a1[1] == 77 && !a1[2] && a1[3] == 85)
      {
        return 1;
      }
    }

    else if (v2 == 73 && a1[1] == 73 && a1[2] == 85 && !a1[3])
    {
      return 1;
    }
  }

  return 0;
}

uint64_t *sub_2338FFF88(int a1, unsigned __int8 *a2, uint64_t *a3, char *a4)
{
  if (a1 != 4)
  {
    goto LABEL_15;
  }

  v4 = *a2;
  if (v4 == 77)
  {
    v5 = a2[1] == 77 && a2[2] == 0;
    if (!v5 || a2[3] != 85)
    {
      goto LABEL_15;
    }
  }

  else if (v4 != 73 || a2[1] != 73 || a2[2] != 85 || a2[3])
  {
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  v6 = 1;
LABEL_16:
  *a4 = v6;
  return sub_233725FD4(a3);
}

void sub_233900028()
{
  if (__cxa_guard_acquire(&qword_280C04F60))
  {
    qword_280C04F58 = dispatch_queue_create("RawCameraSupport Queue", 0);

    __cxa_guard_release(&qword_280C04F60);
  }
}

void sub_233900084()
{
  if (__cxa_guard_acquire(&qword_280C04F80))
  {
    byte_280C04F78 = getenv("RAWCAMERA_USE_RAWCAMERASUPPORT") != 0;

    __cxa_guard_release(&qword_280C04F80);
  }
}

void sub_2339000E0()
{
  if (__cxa_guard_acquire(&qword_280C04F90))
  {
    qword_280C04F88 = dispatch_queue_create("RawCamera_Catalog_Access_Queue", 0);

    __cxa_guard_release(&qword_280C04F90);
  }
}

void sub_233900150()
{
  sub_2338ED34C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2339001CC()
{
  if (__cxa_guard_acquire(&qword_280C04FA0))
  {
    qword_280C04F98 = dispatch_queue_create("RawCamera_Update_MobileAsset_Catalog", 0);
    __cxa_guard_release(&qword_280C04FA0);
  }
}

void sub_233900214()
{
  if (__cxa_guard_acquire(&qword_280C04FB0))
  {
    qword_280C04FA8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, qword_280C04F98);
    __cxa_guard_release(&qword_280C04FB0);
  }
}

void sub_23390026C()
{
  sub_2338ED34C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2339002E8()
{
  sub_2338ED34C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2339003E4()
{
  sub_2338ED36C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_233900460()
{
  sub_2338ED36C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_2339004DC()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2338ED36C();
  _os_log_debug_impl(&dword_23371F000, v0, OS_LOG_TYPE_DEBUG, "%{public}s No preinstalled asset available for %@", v1, 0x16u);
}

void sub_23390085C()
{
  sub_2338ED34C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2339008D8(_DWORD *a1)
{
  if (!a1[10])
  {
    sub_23373C93C(a1);
    if (a1[10] == 1)
    {

      sub_2338EDD10(a1);
    }
  }
}

void sub_233900930(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWCropFilter outputImage]";
  v3 = 2080;
  v4 = "[RAWCropFilter outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2339009C0(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWGainMap outputImage]";
  v3 = 2080;
  v4 = "[RAWGainMap outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_233900A50(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWLensCorrectionDNG outputImage]";
  v3 = 2080;
  v4 = "[RAWLensCorrectionDNG outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

BOOL sub_233900AE0(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 < 0x10)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v7 = 42;
  result = sub_2338F9020(a1, a2, &v7);
  if (result)
  {
    v6 = *a1;
    if (v6 == 73)
    {
      if (a1[8] != 73 || a1[9] != 73 || a1[10] != 73 || a1[11] != 73 || a1[13] != 119 || a1[14] != 97 || a1[15] != 82)
      {
        return 0;
      }
    }

    else if (v6 != 77 || a1[8] != 77 || a1[9] != 77 || a1[10] != 77 || a1[11] != 77 || a1[12] != 82 || a1[13] != 97 || a1[14] != 119)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

void sub_233900BFC(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWEdgeSharpen outputImage]";
  v3 = 2080;
  v4 = "[RAWEdgeSharpen outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}