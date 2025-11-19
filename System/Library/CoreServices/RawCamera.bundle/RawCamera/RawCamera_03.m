uint64_t sub_233755950(uint64_t a1)
{
  *a1 = &unk_284903098;
  sub_233735DD8(a1 + 480, *(a1 + 488));
  sub_233735DD8(a1 + 456, *(a1 + 464));
  sub_233735DD8(a1 + 432, *(a1 + 440));
  sub_233735DD8(a1 + 408, *(a1 + 416));
  sub_233735DD8(a1 + 384, *(a1 + 392));
  sub_233735DD8(a1 + 360, *(a1 + 368));
  sub_233735DD8(a1 + 336, *(a1 + 344));
  sub_233735DD8(a1 + 312, *(a1 + 320));
  sub_233735DD8(a1 + 288, *(a1 + 296));
  sub_233735D24(a1 + 264, *(a1 + 272));
  sub_233735D24(a1 + 240, *(a1 + 248));
  sub_233735D24(a1 + 216, *(a1 + 224));
  sub_233735D24(a1 + 192, *(a1 + 200));
  sub_233735D24(a1 + 168, *(a1 + 176));
  sub_233735D24(a1 + 144, *(a1 + 152));
  sub_233735D24(a1 + 120, *(a1 + 128));

  v2 = *(a1 + 88);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_233755A84(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_233755A84(a1, *a2);
    sub_233755A84(a1, a2[1]);
    sub_233755AE0((a2 + 4));

    operator delete(a2);
  }
}

void sub_233755AE0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

id sub_233755B60(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v23 = a3;
  sub_233726A8C(&__p, &v23);
  sub_233725F08(v22, a2, &__p, 0);
  v6 = sub_233755CB8(a4);
  v7 = *a2;
  v19 = a4;
  sub_23374A9F8(v7, &v19, &__p);
  v11 = __p;
  v12 = v21;
  if (__p != v21)
  {
    do
    {
      v13 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v8, *v11, v9, v10);
      objc_msgSend_addObject_(v6, v14, v13, v15, v16);

      ++v11;
    }

    while (v11 != v12);
  }

  v17 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v8, v6, v9, v10);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  sub_233725FD4(v22);

  return v17;
}

void sub_233755C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_233755CB8(unint64_t a1)
{
  if (a1 >> 61)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (malloc_good_size(8 * a1) >> 32)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v5 = MEMORY[0x277CBEB18];

  return objc_msgSend_arrayWithCapacity_(v5, v2, a1, v3, v4);
}

id sub_233755D8C(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v23 = a3;
  sub_233726A8C(&__p, &v23);
  sub_233725F08(v22, a2, &__p, 0);
  v6 = sub_233755CB8(a4);
  v7 = *a2;
  v19 = a4;
  sub_23374AB5C(v7, &v19, &__p);
  v11 = __p;
  v12 = v21;
  if (__p != v21)
  {
    do
    {
      v13 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, *v11, v9, v10);
      objc_msgSend_addObject_(v6, v14, v13, v15, v16);

      ++v11;
    }

    while (v11 != v12);
  }

  v17 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v8, v6, v9, v10);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  sub_233725FD4(v22);

  return v17;
}

void sub_233755E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a13);
  _Unwind_Resume(a1);
}

id sub_233755F0C(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v23 = a3;
  sub_233726A8C(&__p, &v23);
  sub_233725F08(v22, a2, &__p, 0);
  v6 = sub_233755CB8(a4);
  v7 = *a2;
  v19 = a4;
  sub_233756064(v7, &v19, &__p);
  v11 = __p;
  v12 = v21;
  if (__p != v21)
  {
    do
    {
      v13 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v8, *v11, v9, v10);
      objc_msgSend_addObject_(v6, v14, v13, v15, v16);

      ++v11;
    }

    while (v11 != v12);
  }

  v17 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v8, v6, v9, v10);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  sub_233725FD4(v22);

  return v17;
}

void sub_233756018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_233756064@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = 2 * v5;
  sub_2337560FC(a3, v5);
  sub_233725540(a1, *a3, v6);
  result = sub_233725404(a1);
  if (result != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap32(*v8) >> 16;
      ++v8;
    }
  }

  return result;
}

void sub_2337560E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337560FC(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_233726290(result, a2);
  }

  return result;
}

void sub_233756158(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_23375619C(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v23 = a3;
  sub_233726A8C(&__p, &v23);
  sub_233725F08(v22, a2, &__p, 0);
  v6 = sub_233755CB8(a4);
  v7 = *a2;
  v19 = a4;
  sub_2337562F4(v7, &v19, &__p);
  v11 = __p;
  v12 = v21;
  if (__p != v21)
  {
    do
    {
      v13 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v8, *v11, v9, v10);
      objc_msgSend_addObject_(v6, v14, v13, v15, v16);

      ++v11;
    }

    while (v11 != v12);
  }

  v17 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v8, v6, v9, v10);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  sub_233725FD4(v22);

  return v17;
}

void sub_2337562A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_2337562F4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = 2 * v5;
  sub_233726218(a3, v5);
  sub_233725540(a1, *a3, v6);
  result = sub_233725404(a1);
  if (result != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap32(*v8) >> 16;
      ++v8;
    }
  }

  return result;
}

void sub_233756370(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_2337563B4(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v23 = a3;
  sub_233726A8C(&__p, &v23);
  sub_233725F08(v22, a2, &__p, 0);
  v6 = sub_233755CB8(a4);
  v7 = *a2;
  v19 = a4;
  sub_23375650C(v7, &v19, &__p);
  v11 = __p;
  v12 = v21;
  if (__p != v21)
  {
    do
    {
      v13 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, *v11, v9, v10);
      objc_msgSend_addObject_(v6, v14, v13, v15, v16);

      ++v11;
    }

    while (v11 != v12);
  }

  v17 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v8, v6, v9, v10);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  sub_233725FD4(v22);

  return v17;
}

void sub_2337564C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_23375650C@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = 4 * v5;
  sub_2337565A0(a3, v5);
  sub_233725540(a1, *a3, v6);
  result = sub_233725404(a1);
  if (result != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap32(*v8);
      ++v8;
    }
  }

  return result;
}

void sub_233756584(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337565A0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_233723580(result, a2);
  }

  return result;
}

void sub_2337565FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_233756640(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v23 = a3;
  sub_233726A8C(&__p, &v23);
  sub_233725F08(v22, a2, &__p, 0);
  v6 = sub_233755CB8(a4);
  v7 = *a2;
  v19 = a4;
  sub_233756798(v7, &v19, &__p);
  v11 = __p;
  v12 = v21;
  if (__p != v21)
  {
    do
    {
      v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v8, *v11, v9, v10);
      objc_msgSend_addObject_(v6, v14, v13, v15, v16);

      ++v11;
    }

    while (v11 != v12);
  }

  v17 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v8, v6, v9, v10);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  sub_233725FD4(v22);

  return v17;
}

void sub_23375674C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_233756798@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = 4 * v5;
  sub_23372630C(a3, v5);
  sub_233725540(a1, *a3, v6);
  result = sub_233725404(a1);
  if (result != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap32(*v8);
      ++v8;
    }
  }

  return result;
}

void sub_233756810(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_23375682C(void *a1)
{
  v2 = sub_2337563B4(a1[7], (*(a1[4] + 8) + 48), *(*(a1[5] + 8) + 48), 2 * *(*(a1[6] + 8) + 24));
  v7 = sub_233755CB8(*(*(a1[6] + 8) + 24));
  for (i = 0; i < objc_msgSend_count(v2, v3, v4, v5, v6); i = v20 + 1)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = objc_msgSend_objectAtIndexedSubscript_(v2, v9, i, v10, v11);
    objc_msgSend_doubleValue(v13, v14, v15, v16, v17);
    v19 = v18;
    v20 = i + 1;
    v24 = objc_msgSend_objectAtIndexedSubscript_(v2, v21, i + 1, v22, v23);
    objc_msgSend_doubleValue(v24, v25, v26, v27, v28);
    v34 = objc_msgSend_numberWithDouble_(v12, v30, v31, v32, v33, v19 / v29);
    objc_msgSend_addObject_(v7, v35, v34, v36, v37);
  }

  v38 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v9, v7, v10, v11);

  return v38;
}

id sub_2337569B8(void *a1)
{
  v2 = sub_233756640(a1[7], (*(a1[4] + 8) + 48), *(*(a1[5] + 8) + 48), 2 * *(*(a1[6] + 8) + 24));
  v7 = sub_233755CB8(*(*(a1[6] + 8) + 24));
  for (i = 0; i < objc_msgSend_count(v2, v3, v4, v5, v6); i = v20 + 1)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = objc_msgSend_objectAtIndexedSubscript_(v2, v9, i, v10, v11);
    objc_msgSend_doubleValue(v13, v14, v15, v16, v17);
    v19 = v18;
    v20 = i + 1;
    v24 = objc_msgSend_objectAtIndexedSubscript_(v2, v21, i + 1, v22, v23);
    objc_msgSend_doubleValue(v24, v25, v26, v27, v28);
    v34 = objc_msgSend_numberWithDouble_(v12, v30, v31, v32, v33, v19 / v29);
    objc_msgSend_addObject_(v7, v35, v34, v36, v37);
  }

  v38 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v9, v7, v10, v11);

  return v38;
}

id sub_233756B6C(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v25 = a3;
  sub_233726A8C(&__p, &v25);
  sub_233725F08(v24, a2, &__p, 0);
  v6 = sub_233755CB8(a4);
  v7 = *a2;
  v21 = a4;
  sub_233756CC4(v7, &v21, &__p);
  v13 = __p;
  v14 = v23;
  if (__p != v23)
  {
    do
    {
      LODWORD(v12) = *v13;
      v15 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v8, v9, v10, v11, v12);
      objc_msgSend_addObject_(v6, v16, v15, v17, v18);

      ++v13;
    }

    while (v13 != v14);
  }

  v19 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v8, v6, v10, v11);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  sub_233725FD4(v24);

  return v19;
}

void sub_233756C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_233756CC4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = 4 * v5;
  sub_233756D58(a3, v5);
  sub_233725540(a1, *a3, v6);
  result = sub_233725404(a1);
  if (result != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap32(*v8);
      ++v8;
    }
  }

  return result;
}

void sub_233756D3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233756D58(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_233723580(result, a2);
  }

  return result;
}

void sub_233756DB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233756DD0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = 8 * v5;
  sub_233730758(a3, v5);
  sub_233725540(a1, *a3, v6);
  result = sub_233725404(a1);
  if (result != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap64(*v8);
      ++v8;
    }
  }

  return result;
}

void sub_233756E48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233756E64(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2337261C8(result, a2);
  }

  return result;
}

void sub_233756EBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_233756ED8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_233756ED8(a1, *a2);
    sub_233756ED8(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_233756F2C(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t sub_233756FF8(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2383ABE20](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_2337570B4(a1);
  return a1;
}

void sub_23375708C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2337570B4(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_2337571BC(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2383ABDA0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_233757364(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2383ABDB0](v13);
  return a1;
}

void sub_2337572FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2383ABDB0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2337572DCLL);
}

uint64_t sub_233757364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      sub_2337477D0(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2337574D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337574EC(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_233757538(_DWORD *result, int *a2)
{
  v2 = *result - *a2;
  v3 = v2 << 31 >> 31;
  *result = v2;
  if (v3 != v2 || v3 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_2337575A8(uint64_t a1, void **a2)
{
  result = *sub_233757640(a1, &v3, a2);
  if (!result)
  {
    sub_2337576C8();
  }

  return result;
}

void *sub_233757640(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_233735EBC(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_233735EBC(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_233757764(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_233757780(v3, v2);
  _Unwind_Resume(a1);
}

void sub_233757780(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_2337577E4(uint64_t a1, void **a2)
{
  v2 = *sub_233757640(a1, &v4, a2);
  if (!v2)
  {
    sub_23375788C();
  }

  return v2;
}

uint64_t sub_233757930(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_233735D80(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_23375797C(uint64_t a1, void **a2)
{
  v2 = *sub_233757640(a1, &v4, a2);
  if (!v2)
  {
    sub_233757A24();
  }

  return v2;
}

uint64_t sub_233757AC8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_233755AE0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_233757B14(uint64_t a1, void **a2)
{
  v2 = *sub_233757640(a1, &v4, a2);
  if (!v2)
  {
    sub_233757BBC();
  }

  return v2;
}

uint64_t sub_233757C60(uint64_t a1, void **a2)
{
  result = *sub_233757640(a1, &v3, a2);
  if (!result)
  {
    sub_233757CF8();
  }

  return result;
}

void sub_233757D94(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_233757780(v3, v2);
  _Unwind_Resume(a1);
}

_DWORD *sub_233757DB0(_DWORD *result, unsigned int *a2)
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

uint64_t sub_233757E18(uint64_t a1, void **a2)
{
  result = *sub_233757640(a1, &v3, a2);
  if (!result)
  {
    sub_233757EB0();
  }

  return result;
}

void sub_233757F4C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_233757780(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_233757FF4(void *a1, void *a2, int *a3, unsigned int *a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284904F98;
  sub_2338606A8((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_23375807C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284904F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

_DWORD *sub_2337580F8(_DWORD *result, _DWORD *a2)
{
  v2 = *result >= *a2;
  *result -= *a2;
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_2337581E8(void *a1, uint64_t a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284904FE8;
  sub_2337DF2BC(a1 + 3, a2, *a3);
  return a1;
}

void sub_233758268(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284904FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233758308(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return a1;
}

__CFString *sub_2337584A8(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 9)
  {
    return @"0";
  }

  else
  {
    return off_2789EEB68[v1];
  }
}

uint64_t sub_2337584D4(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 9)
  {
    return 0;
  }

  else
  {
    return dword_233904320[v1];
  }
}

void *sub_2337584FC(void *a1, __int128 *a2, void *a3)
{
  *a1 = &unk_284905038;
  v5 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5[2] = *(a2 + 2);
    *v5 = v6;
  }

  v7 = a3[1];
  a1[4] = *a3;
  a1[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t sub_233758580(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  *a1 = &unk_284905038;
  sub_23372A488((a1 + 8), "best");
  v6 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(&unk_284959608, v8, v7, v9, v10);
    if (v11)
    {
      v12 = v7;
      v17 = objc_msgSend_UTF8String(v12, v13, v14, v15, v16);
      sub_23372610C((a1 + 8), v17);
    }
  }

  return a1;
}

void sub_23375866C(_Unwind_Exception *a1)
{
  v6 = *(v2 + 40);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337586B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  *a1 = &unk_284905038;
  sub_23372A488((a1 + 8), "best");
  v6 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend_unsignedLongValue(v7, v8, v9, v10, v11);
    if (v12 < objc_msgSend_count(&unk_2849549E8, v13, v14, v15, v16))
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(&unk_2849549E8, v17, v12, v18, v19);
      v21 = v20;
      v26 = objc_msgSend_UTF8String(v21, v22, v23, v24, v25);
      sub_23372610C((a1 + 8), v26);
    }
  }

  return a1;
}

void sub_2337587BC(_Unwind_Exception *a1)
{
  v6 = v5;

  v8 = *(v2 + 40);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void sub_233758808(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v7 = v3;
  *a2 = 0;
  a2[1] = 0;
  if (v3)
  {
    v8 = *MEMORY[0x277CD3640];
    v9 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x277CD3640], v5, v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_2337583E0(v9);
    }

    v13 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v8, v11, v12);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_233758444(v13);
    }
  }

  sub_233759470();
}

void sub_2337589A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (v11)
  {
    sub_2337239E8(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_233758A0C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v10[0] = xmmword_2339042B0;
  v10[1] = unk_2339042C0;
  v11 = 0xA00000009;
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_233758F1C(&__p, v10, &v12, 0xAuLL);
  v2 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }

    v2 = *v2;
  }

  else if (!*(a1 + 31))
  {
    goto LABEL_9;
  }

  v3 = *v2;
  if (v3 >= 48)
  {
    v4 = (v3 - 48);
    if (v4 < (v8 - __p) >> 2)
    {
      v5 = *(__p + v4);
      goto LABEL_10;
    }
  }

LABEL_9:
  v5 = 2;
LABEL_10:
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

uint64_t sub_233758B00(uint64_t a1)
{
  v1 = *(a1 + 31);
  if (v1 < 0)
  {
    if (*(a1 + 16) != 4 || *(*(a1 + 8) + 3) != 100)
    {
      v1 = *(a1 + 16);
      goto LABEL_9;
    }

    return 1;
  }

  if (v1 == 4 && *(a1 + 11) == 100)
  {
    return 1;
  }

LABEL_9:
  if (v1 != 5)
  {
    return 0;
  }

  std::string::basic_string(&__p, (a1 + 8), 1uLL, 4uLL, &v5);
  v2 = std::string::compare(&__p, ".dng") == 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

uint64_t sub_233758BC4(uint64_t a1)
{
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 16))
    {
      return std::string::compare((a1 + 8), "best") == 0;
    }
  }

  else if (*(a1 + 31))
  {
    return std::string::compare((a1 + 8), "best") == 0;
  }

  return 1;
}

uint64_t sub_233758C10(uint64_t a1, uint64_t *a2)
{
  v4 = sub_233758A0C(a1);
  if (v4 != sub_233758A0C(*a2))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = sub_233758B00(a1);
  if (v5 != sub_233758B00(*a2))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }
  }

  else if (*(a1 + 31))
  {
LABEL_5:
    v6 = std::string::compare((a1 + 8), "best") == 0;
    goto LABEL_8;
  }

  v6 = 1;
LABEL_8:
  v7 = *a2;
  if ((*(*a2 + 31) & 0x8000000000000000) == 0)
  {
    if (*(*a2 + 31))
    {
      goto LABEL_10;
    }

LABEL_13:
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v6 != (std::string::compare((v7 + 8), "best") == 0))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

id sub_233758CEC(uint64_t a1)
{
  v1 = sub_233758A0C(a1);
  if (objc_msgSend_count(&unk_284954A00, v2, v3, v4, v5) <= v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = objc_msgSend_objectAtIndexedSubscript_(&unk_284954A00, v6, v1, v7, v8);

  return v9;
}

id sub_233758D94(uint64_t a1)
{
  v1 = sub_233758A0C(a1);
  if (objc_msgSend_count(&unk_284954A18, v2, v3, v4, v5) <= v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = objc_msgSend_objectAtIndexedSubscript_(&unk_284954A18, v6, v1, v7, v8);

  return v9;
}

id sub_233758E3C(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  if (sub_233758B00(a1))
  {
    v3 = @"%@.dng";
  }

  else
  {
    v3 = @"%@";
  }

  v4 = sub_233758D94(a1);
  v8 = objc_msgSend_stringWithFormat_(v2, v5, v3, v6, v7, v4);

  return v8;
}

void sub_233758EE4(uint64_t a1)
{
  sub_233759560(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233758F1C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_233723580(result, a4);
  }

  return result;
}

void sub_233758F74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_233758FB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284905068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23375902C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_284905038;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v4;
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2337239E8(v3);
  }

  return a1;
}

void *sub_233759110(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284905068;
  sub_23375916C(a1 + 3, a2, a3);
  return a1;
}

void *sub_23375916C(void *a1, __int128 *a2, void *a3)
{
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2337584FC(a1, a2, v6);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return a1;
}

void sub_2337591C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233759254(void *a1, void **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284905068;
  sub_2337592B0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_2337592B0(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_233758580(a1, v4, v7);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  return a1;
}

void sub_233759310(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23375939C(void *a1, void **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284905068;
  sub_2337593F8((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_2337593F8(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2337586B8(a1, v4, v7);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  return a1;
}

void sub_233759458(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337594DC(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284905068;
  *(a1 + 24) = &unk_284905038;
  sub_23372A488((a1 + 32), a2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_233759560(uint64_t a1)
{
  *a1 = &unk_284905038;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_2337595BC()
{
  if (!*off_281947F30())
  {
    sub_2338F8ADC();
  }

  return off_281947F18();
}

void *sub_2337596A8(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a3;
  v9 = 64;
  v10 = a2;
  v11 = a3;
  v5 = sub_233723BA0(&v11, &v9);
  v6 = malloc_type_malloc(*v5, 0x100004077774924uLL);
  v7 = *(a1 + 24);
  sub_233723AE0(&v11, &v10);
  (*(*v7 + 40))(v7, &v11, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v6, v4);
  return v6;
}

void sub_233759784(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x23375976CLL);
}

void sub_2337597AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const UInt8 *a9, CFIndex a10)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  cf = 0;
  pixelBuffer = 0;
  CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a9, a10, *MEMORY[0x277CBED00]);
  if (!CMPhotoDecompressionSessionCreate())
  {
    v22 = *MEMORY[0x277CF6D90];
    v20 = *MEMORY[0x277CF6D70];
    v21 = &unk_284954A30;
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v21, &v20, 1);
    v23[0] = v11;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v23, &v22, 1);
    objc_claimAutoreleasedReturnValue();

    if (!CMPhotoDecompressionSessionCreateContainer())
    {
      v16 = 0;
      CMPhotoDecompressionContainerGetImageCount();
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v14, "RawCameraException");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](v13, "RawCameraException");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_233759F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a2)
  {
    v28 = *(v26 - 184);
    if (v28)
    {
      *(v26 - 176) = v28;
      operator delete(v28);
    }

    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x233759D4CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23375A0B4(uint64_t *a1)
{
  result = *a1;
  if (result < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_23375A10C(os_signpost_id_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGLossyUnpacker", &unk_233945DBE, buf, 2u);
  }

  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = sub_23375AAC8;
  v89[3] = &unk_2789EE800;
  v89[4] = a1;
  v68 = MEMORY[0x2383AC810](v89);
  v5 = *(a1 + 44);
  v4 = *(a1 + 48);
  v75 = *(a1 + 228);
  v76 = *(a1 + 224);
  __src = ((*(a1 + 240) - *(a1 + 232)) >> 2);
  sub_233723C18(&__p, &__src);
  if (v5 >> 5 >= 0xC35 || v4 > 0x1869F || v76 > 0x1869F || v75 > 0x1869F || (v6 = __p, __p >> 5 >= 0x271))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((((v4 + v75 - 1) / v75) >> (*(a1 + 216) != 0)) * ((v5 + v76 - 1) / v76) != __p)
  {
    v66 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v66, "RawCameraException");
    __cxa_throw(v66, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = *(a1 + 256);
  v8 = *(a1 + 264);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      LODWORD(__src) = v9;
      v9 = *sub_233723874(&__src, v7++);
    }

    while (v7 != v8);
  }

  v10 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if ((v9 & 0x80000000) == 0 && v9 >= v10)
  {
    goto LABEL_82;
  }

  v11 = 0;
  v12 = xmmword_233904370;
  v13.i64[0] = 0x1010101010101010;
  v13.i64[1] = 0x1010101010101010;
  do
  {
    *&buf[v11] = v12;
    v11 += 16;
    v12 = vaddq_s8(v12, v13);
  }

  while (v11 != 256);
  v14 = *(a1 + 192);
  v15 = *(a1 + 200);
  v16 = v15 - v14;
  v17 = (v15 - v14) >> 1;
  if (v17 >= 0x101)
  {
LABEL_82:
    v67 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v67, "RawCameraException");
    __cxa_throw(v67, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v15 != v14)
  {
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v18 = buf;
    v19 = v17;
    do
    {
      v20 = *v14;
      v14 += 2;
      *v18++ = v20;
      --v19;
    }

    while (v19);
    if (v16 != 512)
    {
      memset(&buf[v17], buf[(v17 - 1)], (255 - v17) + 1);
    }
  }

  v70 = v6;
  v74 = v5;
  group = dispatch_group_create();
  queue = dispatch_queue_create("Lossy DNG Unpacker I/O Queue", 0);
  v72 = dispatch_queue_create("Lossy DNG Unpacker Queue", MEMORY[0x277D85CD8]);
  v22 = *(a1 + 288);
  v21 = *(a1 + 296);
  if (v21 - v22 != 48 || v22 == v21)
  {
    v24 = sub_233726218(&__src, 0x10000);
    sub_23375AB50(0.416666667, 12.92, v24, __src, 255);
    v25 = __src;
    for (i = 312; i != 1848; i += 512)
    {
      memcpy((a1 + i), v25, 0x200uLL);
    }

    v91 = v25;
    operator delete(v25);
  }

  else
  {
    do
    {
      v27 = *v22;
      if (*v22 && (v27 = __dynamic_cast(v27, &unk_2849027A8, &unk_284934FF8, 0)) != 0)
      {
        v28 = *(v22 + 8);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v27 + 7);
      if (v29 <= 2)
      {
        v30 = v27[6];
        v31 = v27[7];
        v32 = (v31 - v30) >> 3;
        __src = 0;
        v91 = 0;
        *&v92 = 0;
        sub_2337236E0(&__src, v30, v31, v32);
        v33 = 0;
        v34 = v32 - 1;
        v35 = __src;
        v36 = (v91 - __src) >> 3;
        v37 = a1 + 312 + (v29 << 9);
        do
        {
          v38 = 0;
          v39 = 0.0;
          v40 = 1;
          do
          {
            if (v36 <= v38)
            {
              break;
            }

            v41 = v35[v38];
            v39 = v39 + v41 * pow(v33 / 255.0, (v40 - 1));
            v38 = v40;
            v60 = v34 >= v40++;
          }

          while (v60);
          *(v37 + 2 * v33++) = (v39 * 65535.0);
        }

        while (v33 != 256);
        if (v35)
        {
          v91 = v35;
          operator delete(v35);
        }
      }

      if (v28)
      {
        sub_2337239E8(v28);
      }

      v22 += 16;
    }

    while (v22 != v21);
  }

  v42 = sub_2337ADCC4(a1);
  __p = 0;
  v88 = 0uLL;
  if (v70)
  {
    sub_23375B2C8(&__src, v70, 0, &__p);
    v43 = v91 - (v88 - __p);
    memcpy(v43, __p, v88 - __p);
    v44 = __p;
    v45 = *(&v88 + 1);
    __p = v43;
    v88 = v92;
    *&v92 = v44;
    *(&v92 + 1) = v45;
    __src = v44;
    v91 = v44;
    if (v44)
    {
      operator delete(v44);
    }

    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = v88;
    v50 = v74;
    v51 = v70;
    do
    {
      if (v49 >= *(&v88 + 1))
      {
        v52 = 0xAAAAAAAAAAAAAAABLL * ((v49 - __p) >> 2);
        v53 = v52 + 1;
        if ((v52 + 1) > 0x1555555555555555)
        {
          sub_2337235BC();
        }

        if (0x5555555555555556 * ((*(&v88 + 1) - __p) >> 2) > v53)
        {
          v53 = 0x5555555555555556 * ((*(&v88 + 1) - __p) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&v88 + 1) - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v54 = 0x1555555555555555;
        }

        else
        {
          v54 = v53;
        }

        sub_23375B2C8(&__src, v54, v52, &__p);
        v55 = v92;
        *v92 = v46;
        *(v55 + 4) = v47;
        *(v55 + 8) = v48;
        *&v92 = v55 + 12;
        v56 = v91 - (v88 - __p);
        memcpy(v56, __p, v88 - __p);
        v57 = __p;
        v58 = *(&v88 + 1);
        __p = v56;
        v59 = v92;
        v88 = v92;
        *&v92 = v57;
        *(&v92 + 1) = v58;
        __src = v57;
        v91 = v57;
        if (v57)
        {
          v69 = v59;
          operator delete(v57);
          v59 = v69;
        }

        v49 = v59;
        v50 = v74;
        v51 = v70;
      }

      else
      {
        *v49 = v46;
        *(v49 + 1) = v47;
        *(v49 + 2) = v48;
        v49 += 12;
      }

      *&v88 = v49;
      v60 = v48 + v76 >= v50;
      if (v48 + v76 >= v50)
      {
        v48 = 0;
      }

      else
      {
        v48 += v76;
      }

      v61 = v75;
      if (!v60)
      {
        v61 = 0;
      }

      v47 += v61;
      ++v46;
    }

    while (v51 != v46);
  }

  else
  {
    v49 = v88;
  }

  v62 = __p;
  if (__p != v49)
  {
    v63 = MEMORY[0x277D85DD0];
    do
    {
      block[0] = v63;
      block[1] = 3221225472;
      block[2] = sub_23375AE6C;
      block[3] = &unk_2789EEBC0;
      v80 = a1;
      v81 = v62;
      v64 = group;
      v78 = v64;
      v79 = v72;
      v82 = v42;
      v83 = buf;
      v84 = v74;
      v85 = v76;
      v86 = v75;
      dispatch_group_async(v64, queue, block);

      v62 += 12;
    }

    while (v62 != v49);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (__p)
  {
    *&v88 = __p;
    operator delete(__p);
  }

  v68[2](v68);
}

void sub_23375A9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void (**a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  a10[2](a10);
  _Unwind_Resume(a1);
}

void sub_23375AAC8(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGLossyUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23375AB50(double a1, double a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0.0;
  v28 = 0.0;
  if (a5 <= 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v26 = fabs(a2);
  if (v26 >= 1.0e-10)
  {
    v12 = fabs(a1);
    *(&v27 + (a2 >= 1.0)) = 1.0;
    v25 = 0.0;
    if ((a1 + -1.0) * (a2 + -1.0) <= 0.0)
    {
      v14 = 48;
      do
      {
        v13 = (v27 + v28) * 0.5;
        v15 = fabs(v13);
        if (v12 <= 1.0e-10 || v15 <= 1.0e-10)
        {
          if (v15 <= 1.0e-10)
          {
            break;
          }

          v16 = v13 / exp(1.0 - 1.0 / v13) < a2;
        }

        else
        {
          v16 = (pow(v13 / a2, -a1) + -1.0) / a1 + -1.0 / v13 > -1.0;
        }

        *(&v27 + v16) = v13;
        --v14;
      }

      while (v14);
      if (v12 > 1.0e-10)
      {
        v25 = (1.0 / a1 + -1.0) * v13;
      }
    }

    else
    {
      v13 = 0.0;
    }

    v17 = 0;
    v24 = fabs(v13);
    v18 = 1.0 / a1;
    while (1)
    {
      *(a4 + 2 * v17) = -1;
      v19 = v17 / a5;
      if (v19 < 1.0)
      {
        break;
      }

LABEL_34:
      if (++v17 == 0x10000)
      {
        return;
      }
    }

    if (v19 >= v13)
    {
      if (v12 <= 1.0e-10)
      {
        v21 = v19 + -1.0;
        if (v24 > 1.0e-10)
        {
          v21 = v21 / v13;
        }

        v19 = exp(v21);
      }

      else
      {
        v20 = (v25 + v19) / (v25 + 1.0);
        if (v20 <= 0.0)
        {
          LOWORD(v23) = 0;
LABEL_33:
          *(a4 + 2 * v17) = v23;
          goto LABEL_34;
        }

        v19 = pow(v20, v18);
      }
    }

    else if (v26 > 1.0e-10)
    {
      v19 = v19 / a2;
    }

    v22 = v19 * 65536.0;
    if (v22 > 65535.0)
    {
      v22 = 65535.0;
    }

    v23 = v22;
    goto LABEL_33;
  }

  v8 = 0;
  v9 = xmmword_233903BA0;
  v10.i64[0] = 0x8000800080008;
  v10.i64[1] = 0x8000800080008;
  do
  {
    *(a4 + v8) = v9;
    v9 = vaddq_s16(v9, v10);
    v8 += 16;
  }

  while (v8 != 0x20000);
}

double sub_23375AE6C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = sub_2337596A8(v2, *(*(v2 + 232) + 4 * **(a1 + 56)), *(*(v2 + 256) + 4 * **(a1 + 56)));
  if (v3)
  {
    v5 = *(a1 + 56);
    v6 = *(v5 + 1);
    v7 = *v5;
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23375AF40;
    block[3] = &unk_2789EE840;
    block[4] = v2;
    v14 = *(a1 + 80);
    v12 = *(a1 + 64);
    *&v10 = *(a1 + 84);
    *(&v10 + 1) = v6;
    v15 = v10;
    v13 = v3;
    v16 = v7;
    dispatch_group_async(v9, v8, block);
  }

  return result;
}

void sub_23375AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2337597AC(*(a1 + 32), *(a1 + 40), *(a1 + 64), a4, *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 56), *(*(*(a1 + 32) + 256) + 4 * *(a1 + 84)));
  v5 = *(a1 + 56);

  free(v5);
}

void *sub_23375AFA4(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  v7 = (a1 + 232);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 256);
  if ((a1 + 256) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

unint64_t sub_23375B01C(int *a1)
{
  v2 = (2 * a1[17]) + a1[70];
  result = 2 * (*(*a1 + 40))(a1) * v2;
  if ((result & 0x1E) != 0)
  {
    v4 = (2 * a1[17]) + a1[15];
    return (2 * v4 * (*(*a1 + 40))(a1) + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  return result;
}

void *sub_23375B0D0(uint64_t a1)
{
  *a1 = &unk_2849050B8;
  v2 = *(a1 + 1848);
  if (v2)
  {
    *(a1 + 1856) = v2;
    operator delete(v2);
  }

  v7 = (a1 + 288);
  sub_233723948(&v7);
  v3 = *(a1 + 256);
  if (v3)
  {
    *(a1 + 264) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 232);
  if (v4)
  {
    *(a1 + 240) = v4;
    operator delete(v4);
  }

  *a1 = &unk_28491FFD8;
  v5 = *(a1 + 192);
  if (v5)
  {
    *(a1 + 200) = v5;
    operator delete(v5);
  }

  return sub_233723A54(a1);
}

uint64_t sub_23375B188(uint64_t a1)
{
  *a1 = &unk_2849050B8;
  v2 = *(a1 + 1848);
  if (v2)
  {
    *(a1 + 1856) = v2;
    operator delete(v2);
  }

  v8 = (a1 + 288);
  sub_233723948(&v8);
  v3 = *(a1 + 256);
  if (v3)
  {
    *(a1 + 264) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 232);
  if (v4)
  {
    *(a1 + 240) = v4;
    operator delete(v4);
  }

  *a1 = &unk_28491FFD8;
  v5 = *(a1 + 192);
  if (v5)
  {
    *(a1 + 200) = v5;
    operator delete(v5);
  }

  v6 = sub_233723A54(a1);
  return MEMORY[0x2383ABF10](v6, 0x10B1C40966DFF51);
}

uint64_t sub_23375B254(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_233723580(result, a4);
  }

  return result;
}

void sub_23375B2AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23375B2C8(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x1555555555555556)
    {
      operator new();
    }

    sub_2337236AC();
  }

  *result = 0;
  result[1] = 12 * a3;
  result[2] = 12 * a3;
  result[3] = 0;
  return result;
}

void *sub_23375B354(void *result, void *a2)
{
  v2 = (*result * *a2) >> 64;
  *result *= *a2;
  if (v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_23375B3BC(void *result, unsigned __int16 *a2)
{
  v2 = (*result * *a2) >> 64;
  *result *= *a2;
  if (v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

id sub_23375B690(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC38];
  v42[1] = @"com.canon.cr2-raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".cr2.";
  v42[3] = &unk_284955618;
  v42[4] = &unk_284955630;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_2338F8B5C, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_23375B988, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_23375B994, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_23375B9A0, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_23375B9AC, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_23375B9B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_23375E340();
}

uint64_t sub_23375BA54(uint64_t a1)
{
  *a1 = &unk_284907B40;
  sub_233735DD8(a1 + 1224, *(a1 + 1232));
  v2 = *(a1 + 1184);
  if (v2)
  {
    *(a1 + 1192) = v2;
    operator delete(v2);
  }

  return sub_2337557B4(a1);
}

uint64_t sub_23375BAC8(uint64_t a1)
{
  sub_23372A488(v7, "IFD0:EXIF:MAKERNOTE:ShotInfo");
  (*(*a1 + 392))(__p, a1, v7);
  v2 = sub_233735E3C(a1 + 192, __p);
  if (a1 + 200 == v2 || (v3 = *(v2 + 56), *(v2 + 64) == v3))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *v3;
    v5 = 1;
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
    if (v5)
    {
      return v4;
    }

    return sub_233733118(a1);
  }

  if ((v5 & 1) == 0)
  {
    return sub_233733118(a1);
  }

  return v4;
}

void sub_23375BBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_23375BBFC(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  sub_2338F9C58(a1, a2, a3);
  v6 = *a3;
  if (v6 > 0x99)
  {
    if (*a3 > 0x4017u)
    {
      if (v6 == 16408)
      {
        if (a3[1] == 4 && *(a3 + 1) >= 4u)
        {
          sub_2337338AC(a1, &__p);
          LODWORD(__src[0]) = *(a3 + 2);
          sub_233723AE0(v76, __src);
          sub_233725F08(&__str, &__p, v76, 0);
          if (__p.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(__p.__r_.__value_.__l.__size_);
          }

          sub_2337338AC(a1, v76);
          LODWORD(__src[0]) = *(a3 + 1);
          sub_233725C7C(v76[0], __src, &__p);
          if (v76[1])
          {
            sub_2337239E8(v76[1]);
          }

          v52 = __p.__r_.__value_.__r.__words[0];
          *(a1 + 1249) = *(__p.__r_.__value_.__r.__words[0] + 12) != 0;
          __p.__r_.__value_.__l.__size_ = v52;
          operator delete(v52);
          sub_233725FD4(&__str);
        }
      }

      else if (v6 == 16417 && a3[1] == 4 && *(a3 + 1) == 5)
      {
        sub_2337338AC(a1, &__p);
        LODWORD(__src[0]) = *(a3 + 2);
        sub_233723AE0(v76, __src);
        sub_233725F08(&__str, &__p, v76, 0);
        if (__p.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__p.__r_.__value_.__l.__size_);
        }

        sub_2337338AC(a1, v76);
        LODWORD(__src[0]) = *(a3 + 1);
        sub_233725C7C(v76[0], __src, &__p);
        if (v76[1])
        {
          sub_2337239E8(v76[1]);
        }

        v25 = __p.__r_.__value_.__r.__words[0];
        if (*__p.__r_.__value_.__l.__data_ == 20)
        {
          *(a1 + 1256) = *(__p.__r_.__value_.__r.__words[0] + 4) != 0;
        }

        __p.__r_.__value_.__l.__size_ = v25;
        operator delete(v25);
        sub_233725FD4(&__str);
      }

      return;
    }

    if (v6 == 154)
    {
      if (a3[1] == 4 && *(a3 + 1) == 5)
      {
        sub_2337338AC(a1, &__p);
        LODWORD(__src[0]) = *(a3 + 2);
        sub_233723AE0(v76, __src);
        sub_233725F08(&__str, &__p, v76, 0);
        if (__p.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__p.__r_.__value_.__l.__size_);
        }

        sub_2337338AC(a1, v76);
        LODWORD(__src[0]) = *(a3 + 1);
        sub_233725C7C(v76[0], __src, &__p);
        if (v76[1])
        {
          sub_2337239E8(v76[1]);
        }

        v41 = *(__p.__r_.__value_.__r.__words[0] + 4);
        v42 = *(__p.__r_.__value_.__r.__words[0] + 8);
        sub_2337238F0(v76, *(__p.__r_.__value_.__r.__words[0] + 12), *(__p.__r_.__value_.__r.__words[0] + 16));
        sub_2337238F0(&v76[1], v41, v42);
        *(a1 + 1260) = *v76;
        v43 = *(a1 + 1260);
        v44 = *(a1 + 1268);
        if (v43 >= v44 || (v45 = *(a1 + 1264), v46 = *(a1 + 1272), v45 >= v46) || *(a1 + 1208) == 1 && (v44 > *(a1 + 1210) || v46 > *(a1 + 1212) || v43 > *(a1 + 1218) || v45 > *(a1 + 1220)))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](exception, "RawCameraException");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        sub_2338F8CCC(&__p, &__str);
      }

      return;
    }

    if (v6 != 16385 || ((*(*a1 + 56))(a1) & 1) != 0)
    {
      return;
    }

    sub_2337338AC(a1, &__p);
    LODWORD(__src[0]) = *(a3 + 2);
    sub_233723AE0(v76, __src);
    sub_233725F08(&__str, &__p, v76, 0);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_2337239E8(__p.__r_.__value_.__l.__size_);
    }

    v12 = *(a3 + 1);
    if (v12 - 8193 < 0xFFFFE000)
    {
LABEL_197:
      sub_233725FD4(&__str);
      return;
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
    sub_2337551CC(&__p, v13 + 14);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
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

    strcpy(p_p + v13, ":ColorBalance1");
    sub_2337338AC(a1, __src);
    LODWORD(v69[0]) = v12;
    sub_233725B60(__src[0], v69, v76);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    __src[1] = 0;
    v72 = 0;
    __src[0] = 0;
    sub_23375E2CC(__src, v76[0], v76[1], (v76[1] - v76[0]) >> 1);
    v69[0] = &__p;
    v16 = sub_2337577E4(a1 + 120, &__p.__r_.__value_.__l.__data_);
    v17 = v16[7];
    if (v17)
    {
      v16[8] = v17;
      operator delete(v17);
      v16[7] = 0;
      v16[8] = 0;
      v16[9] = 0;
    }

    v18 = __src[0];
    *(v16 + 7) = *__src;
    v16[9] = v72;
    v19 = v76[0];
    v20 = *v76[0];
    if (v20 <= 0xA)
    {
      if (*v76[0] > 8u)
      {
        if (v20 == 9)
        {
          goto LABEL_40;
        }

        if (v20 == 10)
        {
          if (v12 >= 0x514)
          {
            v21 = 504;
          }

          else
          {
            v21 = 479;
          }

          goto LABEL_172;
        }
      }

      else
      {
        if (v20 - 2 < 6)
        {
LABEL_40:
          v21 = 231;
LABEL_172:
          if (v12 >= v21 + 4)
          {
            v53 = 0;
            __src[0] = 0;
            __src[1] = 0;
            v54 = 2 * v21;
            v55 = 4;
            v72 = 0;
            do
            {
              LOWORD(v18) = *(v76[0] + v54);
              v56 = v18;
              if (v53 >= v72)
              {
                v57 = __src[0];
                v58 = v53 - __src[0];
                v59 = (v53 - __src[0]) >> 3;
                v60 = v59 + 1;
                if ((v59 + 1) >> 61)
                {
                  sub_2337235BC();
                }

                v61 = v72 - __src[0];
                if ((v72 - __src[0]) >> 2 > v60)
                {
                  v60 = v61 >> 2;
                }

                if (v61 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v62 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v62 = v60;
                }

                if (v62)
                {
                  sub_233723798(__src, v62);
                }

                v63 = (v53 - __src[0]) >> 3;
                v64 = (8 * v59);
                v65 = (8 * v59 - 8 * v63);
                *v64 = v56;
                v53 = v64 + 1;
                memcpy(v65, v57, v58);
                v66 = __src[0];
                __src[0] = v65;
                __src[1] = v53;
                v72 = 0;
                if (v66)
                {
                  operator delete(v66);
                }
              }

              else
              {
                *v53++ = v56;
              }

              __src[1] = v53;
              v54 += 2;
              --v55;
            }

            while (v55);
            sub_2337530DC(":BLACKLEVELS", a2, v69);
            v75 = v69;
            v67 = (sub_23375E520(a1 + 264, v69) + 56);
            if (v67 != __src)
            {
              sub_23373176C(v67, __src[0], __src[1], (__src[1] - __src[0]) >> 3);
            }

            if (v70 < 0)
            {
              operator delete(v69[0]);
            }

            if (__src[0])
            {
              __src[1] = __src[0];
              operator delete(__src[0]);
            }

            v19 = v76[0];
            if (!v76[0])
            {
              goto LABEL_195;
            }
          }

          goto LABEL_194;
        }

        if (v20 == 1)
        {
          v21 = 196;
          goto LABEL_172;
        }
      }

LABEL_194:
      v76[1] = v19;
      operator delete(v19);
LABEL_195:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_197;
    }

    if (*v76[0] > 0xEu)
    {
      if (*v76[0] > 0xFFFBu)
      {
        if (v20 == 65532)
        {
          v21 = 333;
          goto LABEL_172;
        }

        if (v20 == 65533)
        {
          v21 = 264;
          goto LABEL_172;
        }

        goto LABEL_194;
      }

      if (v20 != 15)
      {
        if (v20 == 16)
        {
          v21 = 329;
          goto LABEL_172;
        }

        goto LABEL_194;
      }
    }

    else
    {
      if (*v76[0] <= 0xCu)
      {
        if (v20 == 11)
        {
          v21 = 276;
          goto LABEL_172;
        }

        if (v20 == 12)
        {
          v21 = 778;
          goto LABEL_172;
        }

        goto LABEL_194;
      }

      if (v20 != 13)
      {
        v21 = 556;
        goto LABEL_172;
      }
    }

    v21 = 326;
    goto LABEL_172;
  }

  if (*a3 > 0x28u)
  {
    if (v6 == 41)
    {
      if ((*(*a1 + 56))(a1))
      {
        return;
      }

      sub_2337338AC(a1, &__p);
      LODWORD(__src[0]) = *(a3 + 2);
      sub_233723AE0(v76, __src);
      sub_233725F08(&__str, &__p, v76, 0);
      if (__p.__r_.__value_.__l.__size_)
      {
        sub_2337239E8(__p.__r_.__value_.__l.__size_);
      }

      v47 = *(a3 + 1);
      if (v47 <= 0x2000)
      {
        sub_2337338AC(a1, v76);
        LODWORD(__src[0]) = v47;
        sub_233725C7C(v76[0], __src, &__p);
        if (v76[1])
        {
          sub_2337239E8(v76[1]);
        }

        if (*(a2 + 23) >= 0)
        {
          v48 = *(a2 + 23);
        }

        else
        {
          v48 = *(a2 + 8);
        }

        sub_2337551CC(v76, v48 + 15);
        if (v77 >= 0)
        {
          v49 = v76;
        }

        else
        {
          v49 = v76[0];
        }

        if (v48)
        {
          if (*(a2 + 23) >= 0)
          {
            v50 = a2;
          }

          else
          {
            v50 = *a2;
          }

          memmove(v49, v50, v48);
        }

        strcpy(v49 + v48, ":G9WhiteBalance");
        __src[0] = v76;
        v51 = (sub_23375E5EC(a1 + 120, v76) + 56);
        if (v51 != &__p)
        {
          sub_233723454(v51, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
        }

        sub_2338F8BCC(&v77, &__p, v76);
      }
    }

    else
    {
      if (v6 != 153 || ((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 4)
      {
        return;
      }

      sub_2337338AC(a1, &__p);
      LODWORD(__src[0]) = sub_233749410(a3);
      sub_233726A8C(v76, __src);
      sub_233725F08(&__str, &__p, v76, 0);
      if (__p.__r_.__value_.__l.__size_)
      {
        sub_2337239E8(__p.__r_.__value_.__l.__size_);
      }

      if (*(a2 + 23) >= 0)
      {
        v22 = *(a2 + 23);
      }

      else
      {
        v22 = *(a2 + 8);
      }

      v23 = &__p;
      sub_2337551CC(&__p, v22 + 4);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      if (v22)
      {
        if (*(a2 + 23) >= 0)
        {
          v24 = a2;
        }

        else
        {
          v24 = *a2;
        }

        memmove(v23, v24, v22);
      }

      strcpy(v23 + v22, ":CF2");
      (*(*a1 + 784))(a1, &__p, *(a3 + 1));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    sub_233725FD4(&__str);
    return;
  }

  if (v6 == 4)
  {
    if ((*(*a1 + 56))(a1))
    {
      return;
    }

    sub_2337338AC(a1, &__p);
    LODWORD(__src[0]) = *(a3 + 2);
    sub_233723AE0(v76, __src);
    sub_233725F08(&__str, &__p, v76, 0);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_2337239E8(__p.__r_.__value_.__l.__size_);
    }

    v26 = *(a3 + 1);
    if ((v26 - 257) < 0xFFFFFF07)
    {
      goto LABEL_197;
    }

    if (*(a2 + 23) >= 0)
    {
      v27 = *(a2 + 23);
    }

    else
    {
      v27 = *(a2 + 8);
    }

    v28 = &__p;
    sub_2337551CC(&__p, v27 + 9);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = __p.__r_.__value_.__r.__words[0];
    }

    if (v27)
    {
      if (*(a2 + 23) >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      memmove(v28, v29, v27);
    }

    strcpy(v28 + v27, ":ShotInfo");
    sub_2337338AC(a1, __src);
    LODWORD(v69[0]) = v26;
    sub_233725B60(__src[0], v69, v76);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    v30 = v76[0];
    v31 = *(v76[0] + 2);
    if (v31 >= 0x1C1)
    {
      v32 = exp2f(vcvts_n_f32_u32(*(v76[0] + 1), 5uLL)) * 100.0;
      v33 = (exp2f(vcvts_n_f32_u32(v31, 5uLL)) * 100.0) * 0.03125;
      if (v33 == INFINITY || v32 == INFINITY)
      {
LABEL_98:
        v76[1] = v30;
        operator delete(v30);
LABEL_99:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_197;
      }

      v35 = (v33 * v32) / 100.0;
      v36 = *"(knO20CCanonCR2ImageParser";
      if (v35 <= 4000000000.0)
      {
        v36 = v35;
      }

      v37 = v35 < 0.0;
      v38 = 0.0;
      if (!v37)
      {
        v38 = v36;
      }

      LODWORD(v69[0]) = rintf(v38);
      __src[0] = &__p;
      v39 = sub_2337577E4(a1 + 192, &__p.__r_.__value_.__l.__data_);
      sub_23375538C((v39 + 56), v69, v69 + 4, 1uLL);
      v30 = v76[0];
    }

    LODWORD(v69[0]) = v30[7];
    __src[0] = &__p;
    v40 = sub_2337577E4(a1 + 168, &__p.__r_.__value_.__l.__data_);
    sub_23375538C((v40 + 56), v69, v69 + 4, 1uLL);
    v30 = v76[0];
    if (!v76[0])
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  if (v6 == 7 && a3[1] == 2)
  {
    memset(&__str, 0, sizeof(__str));
    if (sub_23375168C(a1, a3, &__str, 1))
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        v9 = p_str + size;
        v10 = p_str;
        while (2)
        {
          for (i = 0; i != 11; ++i)
          {
            if (v10->__r_.__value_.__s.__data_[0] == a0123456789[i])
            {
              if (v10 != v9 && v10 - p_str != -1)
              {
                LODWORD(v76[1]) = 0;
                v76[0] = 0;
                std::string::basic_string(&__p, &__str, v10 - p_str, size - (v10 - p_str), __src);
                sub_2338F8C0C(__src, &__p, v76, a1);
              }

              goto LABEL_147;
            }
          }

          v10 = (v10 + 1);
          if (v10 != v9)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_147:
    sub_2338F8878(&__str);
  }
}

void sub_23375CA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23375CCC4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 - 260 < 0xFFFFFF00)
  {
    return 0;
  }

  sub_2337338AC(a1, &v21);
  v20 = a3;
  sub_233725C7C(v21, &v20, __p);
  if (v22)
  {
    sub_2337239E8(v22);
  }

  v5 = __p[0];
  v6 = *(__p[0] + 1);
  if (v6)
  {
    v7 = a3 >= 6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10 = 2;
    v11 = 1;
    v12 = 5;
    v8 = 1;
    while (v5[v10] == v11 && v5[v10 + 1] >= 8u)
    {
      v13 = v5[v10 + 2];
      if (v13)
      {
        v14 = 0;
        do
        {
          v15 = v14 + v12;
          if (v14 + v12 + 2 >= a3)
          {
            break;
          }

          v16 = v5[v15 + 1];
          if (v16 < 1 || (v17 = v14 + 2, v18 = v17 + v12, v16 + v17 + v12 > a3))
          {
LABEL_30:
            v8 = 0;
            goto LABEL_9;
          }

          v19 = v5[v15];
          if (v19 == 259)
          {
            *(a1 + 1250) = v5[v18] != 0;
          }

          else if (v19 == 515)
          {
            if (v16 != 1)
            {
              goto LABEL_30;
            }

            *(a1 + 1249) = v5[v18] != 0;
          }

          v14 = v16 + v17;
          --v13;
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      if (++v11 <= v6)
      {
        v10 = v14 + v12;
        v12 += v14 + 3;
        if (v12 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v8 = 1;
LABEL_9:
  __p[1] = v5;
  operator delete(v5);
  return v8;
}

void sub_23375CE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23375CE5C(uint64_t a1)
{
  if (getenv("RAWCAMERA_DUALPIXEL_SECOND_IMAGE"))
  {
    sub_23372A488(__p, "IFD4");
  }

  else
  {
    sub_23372A488(__p, "IFD3");
  }

  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_23375CEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23375CF08(uint64_t a1)
{
  if (getenv("RAWCAMERA_DUALPIXEL_SECOND_IMAGE"))
  {
    sub_23372A488(__p, "IFD4");
  }

  else
  {
    sub_23372A488(__p, "IFD3");
  }

  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_23375CF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23375D064(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = sub_233786818(a1);
  snprintf(__str, 0x10uLL, "%u", v4);
  sub_23372A488(__p, "cr2");
  sub_233735478(a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "canon");
  sub_233735478(a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23378614C(a1))
  {
    sub_23372A488(__p, "sraw");
    sub_233735478(a2, __p);
  }

  else
  {
    v5 = (*(*a1 + 440))(a1);
    v6 = HIDWORD(v5);
    snprintf(__s, 0x10uLL, "%d", v5);
    snprintf(v9, 0x10uLL, "%d", v6);
    sub_23372A488(__p, __s);
    sub_233735478(a2, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    sub_23372A488(__p, v9);
    sub_233735478(a2, __p);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23375D248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

id sub_23375D2A8(uint64_t a1)
{
  v37[80] = *MEMORY[0x277D85DE8];
  v2 = sub_23374CF00();
  v7 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);

  v36[0] = &unk_284955648;
  v34[1] = @"Namespace";
  v35[0] = @"CanonCameraSettings";
  v34[0] = @"Name";
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_23375DCC8;
  v29[3] = &unk_2789EEAE0;
  v29[4] = a1;
  v8 = MEMORY[0x2383AC810](v29);
  v35[1] = v8;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v35, v34, 2);
  v37[0] = v10;
  v36[1] = &unk_284955660;
  v32[1] = @"Namespace";
  v33[0] = @"CanonFocalLength";
  v32[0] = @"Name";
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_23375E058;
  v28[3] = &unk_2789EEAE0;
  v28[4] = a1;
  v11 = MEMORY[0x2383AC810](v28);
  v33[1] = v11;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v33, v32, 2);
  v37[1] = v13;
  v37[2] = &unk_284959630;
  v36[2] = &unk_284955678;
  v36[3] = &unk_284955690;
  v37[3] = &unk_284959658;
  v37[4] = &unk_284959680;
  v36[4] = &unk_2849556A8;
  v36[5] = &unk_2849556C0;
  v37[5] = &unk_2849596A8;
  v37[6] = &unk_2849596D0;
  v36[6] = &unk_2849556D8;
  v36[7] = &unk_2849556F0;
  v37[7] = &unk_2849596F8;
  v37[8] = &unk_284959720;
  v36[8] = &unk_284955708;
  v36[9] = &unk_284955720;
  v37[9] = &unk_284959748;
  v37[10] = &unk_284959770;
  v36[10] = &unk_284955618;
  v36[11] = &unk_284955738;
  v37[11] = &unk_284959798;
  v37[12] = &unk_2849597C0;
  v36[12] = &unk_284955750;
  v36[13] = &unk_284955768;
  v37[13] = &unk_2849597E8;
  v37[14] = &unk_284959810;
  v36[14] = &unk_284955780;
  v36[15] = &unk_284955798;
  v37[15] = &unk_284959838;
  v37[16] = &unk_284959860;
  v36[16] = &unk_2849557B0;
  v36[17] = &unk_2849557C8;
  v37[17] = &unk_284959888;
  v37[18] = &unk_2849598B0;
  v36[18] = &unk_2849557E0;
  v36[19] = &unk_2849557F8;
  v37[19] = &unk_2849598D8;
  v37[20] = &unk_284959900;
  v36[20] = &unk_284955810;
  v36[21] = &unk_284955828;
  v37[21] = &unk_284959928;
  v37[22] = &unk_284959950;
  v36[22] = &unk_284955840;
  v36[23] = &unk_284955858;
  v37[23] = &unk_284959978;
  v37[24] = &unk_2849599A0;
  v36[24] = &unk_284955870;
  v36[25] = &unk_284955888;
  v37[25] = &unk_2849599C8;
  v37[26] = &unk_2849599F0;
  v36[26] = &unk_2849558A0;
  v36[27] = &unk_2849558B8;
  v37[27] = &unk_284959A18;
  v37[28] = &unk_284959A40;
  v36[28] = &unk_2849558D0;
  v36[29] = &unk_2849558E8;
  v37[29] = &unk_284959A68;
  v37[30] = &unk_284959A90;
  v36[30] = &unk_284955900;
  v36[31] = &unk_284955918;
  v37[31] = &unk_284959AB8;
  v37[32] = &unk_284959AE0;
  v36[32] = &unk_284955930;
  v36[33] = &unk_284955948;
  v37[33] = &unk_284959B08;
  v37[34] = &unk_284959B30;
  v36[34] = &unk_284955960;
  v36[35] = &unk_284955978;
  v37[35] = &unk_284959B58;
  v37[36] = &unk_284959B80;
  v36[36] = &unk_284955990;
  v36[37] = &unk_2849559A8;
  v37[37] = &unk_284959BA8;
  v37[38] = &unk_284959BD0;
  v36[38] = &unk_2849559C0;
  v36[39] = &unk_2849559D8;
  v37[39] = &unk_284959BF8;
  v37[40] = &unk_284959C20;
  v36[40] = &unk_2849559F0;
  v36[41] = &unk_284955A08;
  v37[41] = &unk_284959C48;
  v37[42] = &unk_284959C70;
  v36[42] = &unk_284955A20;
  v36[43] = &unk_284955A38;
  v37[43] = &unk_284959C98;
  v37[44] = &unk_284959CC0;
  v36[44] = &unk_284955A50;
  v36[45] = &unk_284955A68;
  v37[45] = &unk_284959CE8;
  v37[46] = &unk_284959D10;
  v36[46] = &unk_284955A80;
  v36[47] = &unk_284955A98;
  v37[47] = &unk_284959D38;
  v37[48] = &unk_284959D60;
  v36[48] = &unk_284955AB0;
  v36[49] = &unk_284955AC8;
  v37[49] = &unk_284959D88;
  v37[50] = &unk_284959DB0;
  v36[50] = &unk_284955AE0;
  v36[51] = &unk_284955AF8;
  v37[51] = &unk_284959DD8;
  v37[52] = &unk_284959E00;
  v36[52] = &unk_284955B10;
  v36[53] = &unk_284955B28;
  v37[53] = &unk_284959E28;
  v37[54] = &unk_284959E50;
  v36[54] = &unk_284955B40;
  v36[55] = &unk_284955B58;
  v37[55] = &unk_284959E78;
  v37[56] = &unk_284959EA0;
  v36[56] = &unk_284955B70;
  v36[57] = &unk_284955B88;
  v37[57] = &unk_284959EC8;
  v37[58] = &unk_284959EF0;
  v36[58] = &unk_284955BA0;
  v36[59] = &unk_284955BB8;
  v37[59] = &unk_284959F18;
  v37[60] = &unk_284959F40;
  v36[60] = &unk_284955BD0;
  v36[61] = &unk_284955BE8;
  v30[1] = @"Namespace";
  v31[0] = @"SensorInfo";
  v30[0] = @"Name";
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23375E120;
  v27[3] = &unk_2789EEAE0;
  v27[4] = a1;
  v14 = MEMORY[0x2383AC810](v27);
  v31[1] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v31, v30, 2);
  v37[61] = v16;
  v37[62] = &unk_284959F68;
  v36[62] = &unk_284955C00;
  v36[63] = &unk_284955C18;
  v36[64] = &unk_284955C30;
  v37[63] = &unk_284959F90;
  v37[64] = &unk_284959FB8;
  v36[65] = &unk_284955C48;
  v37[65] = &unk_284959FE0;
  v36[66] = &unk_284955C60;
  v37[66] = &unk_28495A008;
  v36[67] = &unk_284955C78;
  v37[67] = &unk_28495A030;
  v36[68] = &unk_284955C90;
  v37[68] = &unk_28495A058;
  v36[69] = &unk_284955CA8;
  v37[69] = &unk_28495A080;
  v36[70] = &unk_284955CC0;
  v37[70] = &unk_28495A0A8;
  v36[71] = &unk_284955CD8;
  v37[71] = &unk_28495A0D0;
  v36[72] = &unk_284955CF0;
  v37[72] = &unk_28495A0F8;
  v36[73] = &unk_284955D08;
  v37[73] = &unk_28495A120;
  v36[74] = &unk_284955D20;
  v37[74] = &unk_28495A148;
  v36[75] = &unk_284955D38;
  v37[75] = &unk_28495A170;
  v36[76] = &unk_284955D50;
  v37[76] = &unk_28495A198;
  v36[77] = &unk_284955D68;
  v37[77] = &unk_28495A1C0;
  v36[78] = &unk_284955D80;
  v37[78] = &unk_28495A1E8;
  v36[79] = &unk_284955D98;
  v37[79] = &unk_28495A210;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v37, v36, 80);
  objc_msgSend_addEntriesFromDictionary_(v7, v19, v18, v20, v21);

  v25 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v22, v7, v23, v24);

  return v25;
}

id sub_23375DCCC(uint64_t a1, const char *a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284955DB0;
  v4[1] = &unk_284955648;
  v5[0] = &unk_28495A238;
  v5[1] = &unk_28495A260;
  v4[2] = &unk_284955660;
  v4[3] = &unk_284955678;
  v5[2] = &unk_28495A288;
  v5[3] = &unk_28495A2B0;
  v4[4] = &unk_284955690;
  v4[5] = &unk_2849556A8;
  v5[4] = &unk_28495A2D8;
  v5[5] = &unk_28495A300;
  v4[6] = &unk_2849556D8;
  v4[7] = &unk_284955708;
  v5[6] = &unk_28495A328;
  v5[7] = &unk_28495A350;
  v4[8] = &unk_284955720;
  v4[9] = &unk_284955DC8;
  v5[8] = &unk_28495A378;
  v5[9] = &unk_28495A3A0;
  v4[10] = &unk_284955618;
  v4[11] = &unk_284955738;
  v5[10] = &unk_28495A3C8;
  v5[11] = &unk_28495A3F0;
  v4[12] = &unk_284955750;
  v4[13] = &unk_284955768;
  v5[12] = &unk_28495A418;
  v5[13] = &unk_28495A440;
  v4[14] = &unk_284955780;
  v4[15] = &unk_284955798;
  v5[14] = &unk_28495A468;
  v5[15] = &unk_28495A490;
  v4[16] = &unk_2849557B0;
  v4[17] = &unk_2849557C8;
  v5[16] = &unk_28495A4B8;
  v5[17] = &unk_28495A4E0;
  v4[18] = &unk_284955DE0;
  v4[19] = &unk_284955DF8;
  v5[18] = &unk_28495A508;
  v5[19] = &unk_28495A530;
  v4[20] = &unk_284955E10;
  v4[21] = &unk_284955E28;
  v5[20] = &unk_28495A558;
  v5[21] = &unk_28495A580;
  v4[22] = &unk_284955E40;
  v4[23] = &unk_2849557F8;
  v5[22] = &unk_28495A5A8;
  v5[23] = &unk_28495A5D0;
  v4[24] = &unk_284955E58;
  v4[25] = &unk_284955810;
  v5[24] = &unk_28495A5F8;
  v5[25] = &unk_28495A620;
  v4[26] = &unk_284955828;
  v4[27] = &unk_284955E70;
  v5[26] = &unk_28495A648;
  v5[27] = &unk_28495A670;
  v4[28] = &unk_284955E88;
  v4[29] = &unk_284955EA0;
  v5[28] = &unk_28495A698;
  v5[29] = &unk_28495A6C0;
  v4[30] = &unk_284955858;
  v4[31] = &unk_284955870;
  v5[30] = &unk_28495A6E8;
  v5[31] = &unk_28495A710;
  v4[32] = &unk_284955888;
  v4[33] = &unk_2849558B8;
  v5[32] = &unk_28495A738;
  v5[33] = &unk_28495A760;
  v4[34] = &unk_2849558D0;
  v4[35] = &unk_2849558E8;
  v5[34] = &unk_28495A788;
  v5[35] = &unk_28495A7B0;
  v4[36] = &unk_284955EB8;
  v4[37] = &unk_284955ED0;
  v5[36] = &unk_28495A7D8;
  v5[37] = &unk_28495A800;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 38);

  return v2;
}

id sub_23375E05C(uint64_t a1, const char *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284955DB0;
  v4[1] = &unk_284955648;
  v5[0] = &unk_28495A828;
  v5[1] = &unk_28495A850;
  v4[2] = &unk_284955660;
  v4[3] = &unk_284955678;
  v5[2] = &unk_28495A878;
  v5[3] = &unk_28495A8A0;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 4);

  return v2;
}

id sub_23375E124(uint64_t a1, const char *a2)
{
  v5[11] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284955DB0;
  v4[1] = &unk_284955648;
  v5[0] = &unk_28495A8C8;
  v5[1] = &unk_28495A8F0;
  v4[2] = &unk_284955660;
  v4[3] = &unk_284955678;
  v5[2] = &unk_28495A918;
  v5[3] = &unk_28495A940;
  v4[4] = &unk_284955690;
  v4[5] = &unk_2849556A8;
  v5[4] = &unk_28495A968;
  v5[5] = &unk_28495A990;
  v4[6] = &unk_2849556C0;
  v4[7] = &unk_2849556D8;
  v5[6] = &unk_28495A9B8;
  v5[7] = &unk_28495A9E0;
  v4[8] = &unk_2849556F0;
  v4[9] = &unk_284955708;
  v5[8] = &unk_28495AA08;
  v5[9] = &unk_28495AA30;
  v4[10] = &unk_284955720;
  v5[10] = &unk_28495AA58;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 11);

  return v2;
}

void sub_23375E27C(uint64_t a1)
{
  sub_23375BA54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23375E2CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_233723580(result, a4);
  }

  return result;
}

void sub_23375E324(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23375E3E4(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284905558;
  sub_233785D40(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_2849051F8;
  *(a1 + 1273) = 0;
  *(a1 + 1276) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1284) = 0u;
  return a1;
}

void sub_23375E4A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284905558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23375E520(uint64_t a1, void **a2)
{
  v2 = *sub_233757640(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_23375E5EC(uint64_t a1, void **a2)
{
  v2 = *sub_233757640(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

id sub_23375E6B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC28];
  v42[1] = @"com.konicaminolta.raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".mrw.";
  v42[3] = &unk_284955EE8;
  v42[4] = &unk_284955F00;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_2338F8D08, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_23375E9B0, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_23375E9BC, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_23375E9C8, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_23375E9D4, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_23375E9E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_23375F920();
}

uint64_t *sub_23375EA7C(uint64_t a1)
{
  sub_2337338AC(a1, &v25);
  LODWORD(v23[0]) = 4;
  sub_233725F08(v27, &v25, v23, 0);
  if (v26)
  {
    sub_2337239E8(v26);
  }

  sub_2337338AC(a1, &v25);
  v2 = sub_233725614(v25);
  if (v26)
  {
    sub_2337239E8(v26);
  }

  sub_2337338AC(a1, &v25);
  v3 = (*(*v25 + 16))(v25);
  LODWORD(__p) = 8;
  LODWORD(v23[0]) = v3;
  v4 = *sub_233757538(v23, &__p);
  if (v26)
  {
    sub_2337239E8(v26);
  }

  if (v2 >= v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a1 + 1208) = v2 + 8;
  while (1)
  {
    sub_2337338AC(a1, &v25);
    v5 = (*(*v25 + 48))(v25);
    v6 = *(a1 + 1208);
    if (v26)
    {
      sub_2337239E8(v26);
    }

    v7 = v5;
    if (v6 <= v5)
    {
      break;
    }

    sub_2337338AC(a1, &v25);
    v8 = sub_233725614(v25);
    if (v26)
    {
      sub_2337239E8(v26);
    }

    sub_2337338AC(a1, &v25);
    v9 = sub_233725614(v25);
    if (v26)
    {
      sub_2337239E8(v26);
    }

    switch(v8)
    {
      case 5263940:
        sub_2337338AC(a1, &v25);
        *(a1 + 1184) = sub_233725660(v25);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        sub_2337338AC(a1, &v25);
        *(a1 + 1194) = sub_2337255C0(v25);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        sub_2337338AC(a1, &v25);
        *(a1 + 1192) = sub_2337255C0(v25);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        sub_2337338AC(a1, &v25);
        *(a1 + 1198) = sub_2337255C0(v25);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        sub_2337338AC(a1, &v25);
        *(a1 + 1196) = sub_2337255C0(v25);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        sub_2337338AC(a1, &v25);
        *(a1 + 1200) = sub_233725510(v25);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        sub_2337338AC(a1, &v25);
        *(a1 + 1201) = sub_233725510(v25);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        sub_2337338AC(a1, &v25);
        *(a1 + 1202) = sub_233725510(v25);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        v14 = *(a1 + 1194);
        if (v14 & 1) != 0 || (v15 = *(a1 + 1192), (v15) || v14 - 10000 < 0xFFFFDCD9 || v15 - 10000 <= 0xFFFFDCD8 || v14 < *(a1 + 1198) || v15 < *(a1 + 1196))
        {
          v18 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v18, "RawCameraException");
          __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        break;
      case 5526615:
        sub_2337338AC(a1, v23);
        sub_2337338AC(a1, &__p);
        LODWORD(p_p) = (*(*__p + 48))(__p);
        sub_233754E8C(&v25, v23, &p_p);
        if (v21)
        {
          sub_2337239E8(v21);
        }

        if (v23[1])
        {
          sub_2337239E8(v23[1]);
        }

        sub_23374B9D8(a1);
        sub_233754F18(&v25);
        break;
      case 5718599:
        sub_2337338AC(a1, &v25);
        v10 = v25;
        v23[0] = 4;
        sub_233723B40(&__p, v23);
        (*(*v10 + 40))(v10, &__p, 1);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        sub_2337338AC(a1, v23);
        v11 = v23[0];
        LODWORD(p_p) = 4;
        sub_233726998(&__p, &p_p);
        sub_233725B60(v11, &__p, &v25);
        if (v23[1])
        {
          sub_2337239E8(v23[1]);
        }

        v23[1] = 0;
        v24 = 0;
        v23[0] = 0;
        sub_23375E2CC(v23, v25, v26, (v26 - v25) >> 1);
        sub_23372A488(&__p, "MinoltaSegmentWBG");
        p_p = &__p;
        v12 = sub_23375E5EC(a1 + 120, &__p);
        v13 = v12[7];
        if (v13)
        {
          v12[8] = v13;
          operator delete(v13);
          v12[7] = 0;
          v12[8] = 0;
          v12[9] = 0;
        }

        *(v12 + 7) = *v23;
        v12[9] = v24;
        v23[1] = 0;
        v24 = 0;
        v23[0] = 0;
        if (v22 < 0)
        {
          operator delete(__p);
          if (v23[0])
          {
            v23[1] = v23[0];
            operator delete(v23[0]);
          }
        }

        if (v25)
        {
          v26 = v25;
          operator delete(v25);
        }

        break;
    }

    sub_2337338AC(a1, &v25);
    v16 = v25;
    v23[0] = (v7 + v9 + 8);
    sub_2337268D8(&__p, v23);
    (*(*v16 + 40))(v16, &__p, 0);
    if (v26)
    {
      sub_2337239E8(v26);
    }
  }

  return sub_233725FD4(v27);
}

void sub_23375F0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23)
{
  if (a21)
  {
    sub_2337239E8(a21);
  }

  sub_233725FD4(&a23);
  _Unwind_Resume(a1);
}

void sub_23375F214(uint64_t a1, void **a2, unsigned __int16 *a3)
{
  v6 = *a3;
  if (v6 == 279)
  {
    if (a3[1] - 3 <= 1)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (sub_23375134C(a1, a3, &v27))
      {
        v18 = v28 - v27;
        if (((v28 - v27) & 0x3FFFFFFFCLL) != 0)
        {
          sub_2337338AC(a1, &v25);
          v19 = (*(*v25 + 2))(v25);
          v20 = *v27;
          if (v26)
          {
            sub_2337239E8(v26);
          }

          if (v19 < v20)
          {
            v21 = v27;
            v22 = (v18 >> 2);
            do
            {
              *v21 = bswap32(*v21);
              ++v21;
              --v22;
            }

            while (v22);
          }
        }

        v25 = a2;
        v23 = (sub_2337577E4(a1 + 800, a2) + 56);
        if (v23 != &v27)
        {
          sub_233723454(v23, v27, v28, (v28 - v27) >> 2);
        }
      }

      sub_2338F884C(&v27);
    }
  }

  else if (v6 == 273)
  {
    if (a3[1] - 3 <= 1)
    {
      sub_2337338AC(a1, &v27);
      v7 = sub_233725414(v27);
      if (v28)
      {
        sub_2337239E8(v28);
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (sub_23375134C(a1, a3, &v27))
      {
        v8 = v28 - v27;
        if (((v28 - v27) & 0x3FFFFFFFCLL) != 0)
        {
          sub_2337338AC(a1, &v25);
          v9 = (*(*v25 + 2))(v25);
          v10 = *v27;
          if (v26)
          {
            sub_2337239E8(v26);
          }

          if (v9 < v10)
          {
            v11 = v27;
            v12 = (v8 >> 2);
            do
            {
              *v11 = bswap32(*v11);
              ++v11;
              --v12;
            }

            while (v12);
          }

          if (v7)
          {
            v13 = 0;
            v14 = (v8 >> 2);
            v15 = v27;
            do
            {
              LODWORD(v25) = v7;
              v24 = *sub_233723874(&v25, &v15[v13]);
              v16 = sub_233751844(&v24);
              v15 = v27;
              v27[v13++] = v16;
              --v14;
            }

            while (v14);
          }
        }

        v25 = a2;
        v17 = (sub_2337577E4(a1 + 776, a2) + 56);
        if (v17 != &v27)
        {
          sub_233723454(v17, v27, v28, (v28 - v27) >> 2);
        }
      }

      sub_2338F884C(&v27);
    }
  }

  else
  {

    sub_23374FA0C(a1, a2, a3);
  }
}

void sub_23375F4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23375F548(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  nullsub_6();
  v5 = *a3;
  if (v5 <= 0x88)
  {
    if (v5 != 4)
    {
      if (v5 == 136 && a3[1] == 4 && *(a3 + 1) == 1)
      {
        sub_2337338AC(a1, &v13);
        v6 = sub_233725414(v13);
        LODWORD(v9) = *(a3 + 2);
        LODWORD(v11) = v6;
        *(a1 + 1216) = *sub_233723874(&v11, &v9);
        if (v14)
        {
          sub_2337239E8(v14);
        }
      }

      return;
    }

    goto LABEL_9;
  }

  if (v5 == 276)
  {
LABEL_9:
    if (a3[1] == 7)
    {
      v7 = v5 == 4 ? 140 : 160;
      if ((v7 | 2uLL) <= *(a3 + 1))
      {
        sub_2337338AC(a1, &v11);
        v9 = v7 + *(a3 + 2);
        sub_233723B40(&v10, &v9);
        sub_233725F08(&v13, &v11, &v10, 0);
        if (v12)
        {
          sub_2337239E8(v12);
        }

        sub_2337338AC(a1, &v11);
        v8 = sub_2337255C0(v11);
        sub_2338F8D30(&v11, a1, v8, &v13);
      }
    }

    return;
  }

  if (v5 == 137)
  {
    sub_2338F8D94(a3, a1);
  }
}

void sub_23375F6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_2337239E8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_23375F738(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233753B14(a1, a2);
  sub_2337268D8(&v5, (a1 + 1216));
  v4 = *(a1 + 1224);
  sub_23373401C(a1, &v5, &v4, *(a1 + 1228), &v6);
  if (v6)
  {
    sub_233753C74(a2, &v6);
  }

  if (*(&v6 + 1))
  {
    sub_2337239E8(*(&v6 + 1));
  }
}

void sub_23375F7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  sub_233723948(&a11);
  _Unwind_Resume(a1);
}

void sub_23375F7F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_23372A488(&__p, "mrw");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "minolta");
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

void sub_23375F8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_23375F8E8(uint64_t a1)
{
  sub_2337557B4(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23375F9C4(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284905900;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_2849055C8;
  *(a1 + 1208) = 0u;
  *(a1 + 1223) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1240) = 0;
  return a1;
}

void sub_23375FA84(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284905900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_23375FB00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC28];
  v42[1] = @"com.olympus.raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".orf.";
  v42[3] = &unk_284955F18;
  v42[4] = &unk_284955F30;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_23375FDF8, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_23375FE00, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_23375FE0C, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_23375FE18, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_23375FE24, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_23375FE30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_2337636A0();
}

void sub_23375FEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  if (v13)
  {
    sub_2337239E8(v13);
  }

  _Unwind_Resume(a1);
}

double sub_23375FF28(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  sub_23374B844(a1, a2, a3, a4, a5);
  *v5 = &unk_284905970;
  *(v5 + 1180) = 0;
  result = 0.0;
  *(v5 + 1328) = 0u;
  *(v5 + 1184) = 0u;
  *(v5 + 1200) = 0u;
  *(v5 + 1216) = 0u;
  *(v5 + 1232) = 0u;
  *(v5 + 1248) = 0u;
  *(v5 + 1258) = 0u;
  *(v5 + 1276) = 0;
  *(v5 + 1284) = 0;
  *(v5 + 1288) = 0u;
  *(v5 + 1304) = 0u;
  *(v5 + 1320) = v5 + 1328;
  *(v5 + 1344) = 0;
  *(v5 + 1348) = 0;
  *(v5 + 1350) = 0;
  *(v5 + 1352) = 0;
  *(v5 + 1354) = 0;
  return result;
}

BOOL sub_23375FFB4(uint64_t a1)
{
  memset(&__str, 0, sizeof(__str));
  sub_2337338AC(a1, &__p);
  v2 = (*(*__p + 48))(__p);
  if (v29)
  {
    sub_2337239E8(v29);
  }

  v31 = v2;
  sub_2337338AC(a1, &__p);
  v3 = __p;
  LODWORD(v25) = 8;
  sub_233726998(&v26, &v25);
  v4 = sub_2337257E8(v3, &v26, &__str);
  if (v29)
  {
    sub_2337239E8(v29);
  }

  if (!v4)
  {
LABEL_19:
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 5)
      {
        p_str = &__str;
        goto LABEL_24;
      }

LABEL_28:
      v10 = 0;
      goto LABEL_29;
    }

LABEL_22:
    if (__str.__r_.__value_.__l.__size_ == 5)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (__str.__r_.__value_.__l.__size_ == 7 && *__str.__r_.__value_.__l.__data_ == 1297697871 && *(__str.__r_.__value_.__r.__words[0] + 3) == 1398100045)
    {
      goto LABEL_37;
    }

    if (__str.__r_.__value_.__l.__size_ != 8)
    {
      goto LABEL_22;
    }

    p_str = __str.__r_.__value_.__r.__words[0];
LABEL_18:
    if (p_str->__r_.__value_.__r.__words[0] != 0x4554535953204D4FLL)
    {
      goto LABEL_19;
    }

LABEL_37:
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (__str.__r_.__value_.__l.__size_ != 8)
      {
        goto LABEL_73;
      }

      v12 = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 8)
      {
        goto LABEL_73;
      }

      v12 = &__str;
    }

    if (v12->__r_.__value_.__r.__words[0] == 0x4554535953204D4FLL)
    {
      __p = 0;
      v29 = 0;
      v30 = 0;
      sub_2337338AC(a1, &v26);
      v14 = v26.__r_.__value_.__r.__words[0];
      v27 = 4;
      sub_233726998(&v25, &v27);
      v15 = sub_2337257E8(v14, &v25, &__p);
      if (v26.__r_.__value_.__l.__size_)
      {
        sub_2337239E8(v26.__r_.__value_.__l.__size_);
      }

      if (!v15)
      {
        goto LABEL_87;
      }

      sub_2337520B4(&__str.__r_.__value_.__l.__data_, &__p, &v26);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v26;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_ != 9)
        {
          goto LABEL_87;
        }

        v16 = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) != 9)
        {
          goto LABEL_87;
        }

        v16 = &__str;
      }

      v17 = v16->__r_.__value_.__r.__words[0];
      v18 = v16->__r_.__value_.__s.__data_[8];
      if (v17 == 0x4554535953204D4FLL && v18 == 77)
      {
        v20 = HIBYTE(v30);
        if (v30 < 0)
        {
          v20 = v29;
        }

        if (v20 <= 4)
        {
          sub_2337338AC(a1, &v26);
          v21 = v26.__r_.__value_.__r.__words[0];
          v22 = HIBYTE(v30);
          if (v30 < 0)
          {
            v22 = v29;
          }

          v25 = 3 - v22;
          sub_233723B40(&v27, &v25);
          (*(*v21 + 40))(v21, &v27, 1);
          if (v26.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(v26.__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_73;
        }
      }

LABEL_87:
      sub_2338F8878(&__p);
      goto LABEL_28;
    }

LABEL_73:
    sub_2337338AC(a1, &__p);
    v23 = sub_2337255C0(__p);
    if (v29)
    {
      sub_2337239E8(v29);
    }

    v10 = v23 == 19789 || v23 == 18761;
    if (v23 == 18761 || v23 == 19789)
    {
      if (v23 == 19789)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      (*(*a1 + 128))(a1, v24);
      sub_2337268D8(&__p, &v31);
      (*(*a1 + 144))(a1, &__p);
      std::string::operator=((a1 + 1248), &__str);
      sub_2337338AC(a1, &__p);
      *(a1 + 1272) = sub_2337255C0(__p);
      if (v29)
      {
        sub_2337239E8(v29);
      }

      sub_2337338AC(a1, &__p);
      LODWORD(v26.__r_.__value_.__l.__data_) = (*(*__p + 48))(__p);
      LODWORD(v25) = *sub_2337639F0(&v26, &v31);
      (*(*a1 + 160))(a1, &v25);
      if (v29)
      {
        sub_2337239E8(v29);
      }
    }

    goto LABEL_29;
  }

  p_str = &__str;
  if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 5)
  {
    if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 7)
    {
      if (LODWORD(__str.__r_.__value_.__l.__data_) != 1297697871 || *(__str.__r_.__value_.__r.__words + 3) != 1398100045)
      {
        goto LABEL_28;
      }

      goto LABEL_73;
    }

    if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 8)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

LABEL_24:
  data = p_str->__r_.__value_.__l.__data_;
  v8 = p_str->__r_.__value_.__s.__data_[4];
  if (data != 1297697871 || v8 != 80)
  {
    goto LABEL_28;
  }

  std::string::operator=((a1 + 1248), &__str);
  sub_2337338AC(a1, &__p);
  *(a1 + 1272) = sub_2337255C0(__p);
  if (v29)
  {
    sub_2337239E8(v29);
  }

  sub_2337338AC(a1, &__p);
  LODWORD(v26.__r_.__value_.__l.__data_) = (*(*__p + 48))(__p);
  (*(*a1 + 160))(a1, &v26);
  if (v29)
  {
    sub_2337239E8(v29);
  }

  v10 = 1;
LABEL_29:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_23376054C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_2337605F0(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  nullsub_6();
  v6 = *a3;
  if (v6 <= 0x1017)
  {
    if (*a3 > 0x1011u)
    {
      if (v6 == 4114)
      {
        if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 3 && *(a3 + 1) == 4)
        {
          sub_2337338AC(a1, &__src);
          sub_23374AEDC(a3, &__src, &__str.__r_.__value_.__l.__data_);
          p_str = a2;
          v16 = sub_233757B14(a1 + 264, a2);
          v17 = v16[7];
          if (v17)
          {
            v16[8] = v17;
            operator delete(v17);
            v16[7] = 0;
            v16[8] = 0;
            v16[9] = 0;
          }

          *(v16 + 7) = __str;
          memset(&__str, 0, sizeof(__str));
          if (v34[0])
          {
            sub_2337239E8(v34[0]);
          }
        }
      }

      else if (v6 == 4119)
      {
        sub_2338F8DB4(a1, a3);
      }
    }

    else if (v6 == 256)
    {
      if (a3[1] == 7)
      {
        v15 = *(a3 + 2);
        sub_2337338AC(a1, &__str);
        LODWORD(__src) = sub_233725414(__str.__r_.__value_.__l.__data_);
        *(a1 + 1276) = sub_233751844(&__src) + v15;
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        *(a1 + 1280) = *(a3 + 1);
      }
    }

    else if (v6 == 519 && a3[1] == 2 && *(a3 + 1) <= 0x3Fu)
    {
      memset(&__str, 0, sizeof(__str));
      if (sub_23375168C(a1, a3, &__str, 1))
      {
        std::string::operator=((a1 + 1296), &__str);
      }

      sub_2338F8878(&__str);
    }
  }

  else if (*a3 <= 0x201Fu)
  {
    if (v6 == 4120)
    {
      if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 3)
      {
        LODWORD(__src) = 0;
        sub_233726998(&__str, &__src);
        v22 = sub_23374B704(a3, &__str);
        *(a1 + 1352) = v22;
        *(a1 + 1354) = 1;
        if (*(a1 + 1350) == 1)
        {
          LODWORD(__src) = *(a1 + 1348);
          HIDWORD(__src) = 256;
          LODWORD(v34[0]) = v22;
          sub_2337530DC(":redBlueBalance", a2, &__str.__r_.__value_.__l.__data_);
          p_str = &__str;
          v23 = sub_23375E5EC(a1 + 120, &__str.__r_.__value_.__l.__data_);
          sub_23375538C((v23 + 56), &__src, v34 + 4, 3uLL);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else if (v6 == 8208)
    {
      v11 = a3[1];
      if (v11 == 7 || v11 == 13)
      {
        sub_2337338AC(a1, &__src);
        v30 = *(a3 + 2);
        sub_233723AE0(&p_str, &v30);
        sub_233725F08(&__str, &__src, &p_str, 0);
        if (v34[0])
        {
          sub_2337239E8(v34[0]);
        }

        if (*(a2 + 23) >= 0)
        {
          v12 = *(a2 + 23);
        }

        else
        {
          v12 = *(a2 + 8);
        }

        v13 = v28;
        sub_2337551CC(v28, v12 + 15);
        if (v29 < 0)
        {
          v13 = v28[0];
        }

        if (v12)
        {
          if (*(a2 + 23) >= 0)
          {
            v14 = a2;
          }

          else
          {
            v14 = *a2;
          }

          memmove(v13, v14, v12);
        }

        strcpy(v13 + v12, ":CameraSettings");
        sub_233760D38();
        if (v29 < 0)
        {
          operator delete(v28[0]);
        }

        sub_233725FD4(&__str);
      }
    }
  }

  else if (v6 == 8224)
  {
    v18 = a3[1];
    if (v18 == 7 || v18 == 13)
    {
      sub_2337338AC(a1, &__src);
      v30 = *(a3 + 2);
      sub_233723AE0(&p_str, &v30);
      sub_233725F08(&__str, &__src, &p_str, 0);
      if (v34[0])
      {
        sub_2337239E8(v34[0]);
      }

      if (*(a2 + 23) >= 0)
      {
        v19 = *(a2 + 23);
      }

      else
      {
        v19 = *(a2 + 8);
      }

      v20 = v26;
      sub_2337551CC(v26, v19 + 15);
      if (v27 < 0)
      {
        v20 = v26[0];
      }

      if (v19)
      {
        if (*(a2 + 23) >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        memmove(v20, v21, v19);
      }

      strcpy(v20 + v19, ":CameraSettings");
      sub_233760E44();
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      sub_233725FD4(&__str);
    }
  }

  else if ((v6 == 8256 || v6 == 12288) && ((*(*a1 + 56))(a1) & 1) == 0)
  {
    v7 = a3[1];
    if (v7 <= 0xD && ((1 << v7) & 0x2088) != 0)
    {
      sub_2337338AC(a1, &__src);
      v30 = *(a3 + 2);
      sub_233723AE0(&p_str, &v30);
      sub_233725F08(&__str, &__src, &p_str, 0);
      if (v34[0])
      {
        sub_2337239E8(v34[0]);
      }

      if (*(a2 + 23) >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      v9 = __p;
      sub_2337551CC(__p, v8 + 16);
      if (v25 < 0)
      {
        v9 = __p[0];
      }

      if (v8)
      {
        if (*(a2 + 23) >= 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = *a2;
        }

        memmove(v9, v10, v8);
      }

      strcpy(v9 + v8, ":ImageProcessing");
      sub_233760F50();
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      sub_233725FD4(&__str);
    }
  }
}

void sub_233760C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 48);
  if (v35)
  {
    sub_2337239E8(v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233760D38()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v4 = sub_23374DF5C(v0, v1, &v10);
  if (v4)
  {
    v5 = &v11;
    v6 = v4;
    do
    {
      if (*(v2 + 23) < 0)
      {
        sub_233731FB8(__p, *v2, *(v2 + 8));
      }

      else
      {
        *__p = *v2;
        v9 = *(v2 + 16);
      }

      (*(*v3 + 800))(v3, __p, v5);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = (v5 + 12);
      --v6;
    }

    while (v6);
  }

  return 1;
}

void sub_233760E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233760E44()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v4 = sub_23374DF5C(v0, v1, &v10);
  if (v4)
  {
    v5 = &v11;
    v6 = v4;
    do
    {
      if (*(v2 + 23) < 0)
      {
        sub_233731FB8(__p, *v2, *(v2 + 8));
      }

      else
      {
        *__p = *v2;
        v9 = *(v2 + 16);
      }

      (*(*v3 + 808))(v3, __p, v5);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = (v5 + 12);
      --v6;
    }

    while (v6);
  }

  return 1;
}

void sub_233760F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233760F50()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v4 = sub_23374DF5C(v0, v1, &v10);
  if (v4)
  {
    v5 = &v11;
    v6 = v4;
    do
    {
      if (*(v2 + 23) < 0)
      {
        sub_233731FB8(__p, *v2, *(v2 + 8));
      }

      else
      {
        *__p = *v2;
        v9 = *(v2 + 16);
      }

      (*(*v3 + 816))(v3, __p, v5);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = (v5 + 12);
      --v6;
    }

    while (v6);
  }

  return 1;
}

void sub_233761040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23376105C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  sub_2337338AC(a1, &v9);
  sub_233754E04(v11, &v9);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  v5 = *a3;
  switch(v5)
  {
    case 257:
      if (a3[1] == 4 && *(a3 + 1) == 1)
      {
        v6 = *(a3 + 2);
        sub_2337338AC(a1, &v9);
        v8 = sub_233725414(v9);
        *(a1 + 1288) = sub_233751844(&v8) + v6;
        if (v10)
        {
          sub_2337239E8(v10);
        }
      }

      break;
    case 256:
      sub_2338F8E5C(a3, a1);
      break;
    case 258:
      sub_2338F8E3C(a3, a1);
      break;
  }

  return sub_233725FD4(v11);
}

void sub_23376113C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23376117C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_2337338AC(a1, &v17);
  sub_233754E04(v19, &v17);
  if (*(&v17 + 1))
  {
    sub_2337239E8(*(&v17 + 1));
  }

  v6 = *a3;
  if (v6 <= 0x614)
  {
    if (*a3 <= 0x611u)
    {
      if (v6 == 256)
      {
        if (a3[1] == 3)
        {
          v10 = *(a3 + 1);
          if (v10 == 2 || v10 == 4)
          {
            sub_2337338AC(a1, &v16);
            sub_23374B2FC(a3, &v16, &v17);
            if (v16.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v16.__r_.__value_.__l.__size_);
            }

            if (*(a2 + 23) < 0)
            {
              sub_233731FB8(&v16, *a2, *(a2 + 8));
            }

            else
            {
              v16 = *a2;
            }

            std::string::append(&v16, ":WBRedBlueLevels", 0x10uLL);
            v11 = (*(&v17 + 1) - v17) >> 1;
            if (v11 == 4)
            {
              v13 = *(v17 + 4);
              LODWORD(__src) = *v17;
              HIDWORD(__src) = v13;
              v22 = *(v17 + 2);
              v20 = &v16;
              v14 = sub_2337577E4(a1 + 120, &v16.__r_.__value_.__l.__data_);
              sub_23375538C((v14 + 56), &__src, v23, 3uLL);
            }

            else if (v11 == 2)
            {
              LODWORD(__src) = *v17;
              HIDWORD(__src) = 256;
              v22 = *(v17 + 2);
              v20 = &v16;
              v12 = sub_2337577E4(a1 + 120, &v16.__r_.__value_.__l.__data_);
              sub_23375538C((v12 + 56), &__src, v23, 3uLL);
            }

            sub_2338F8F94(&v16, &v17, &v17 + 1);
          }
        }
      }

      else if (v6 == 1536 && a3[1] == 3 && *(a3 + 1) == 4)
      {
        sub_2337338AC(a1, &v16);
        sub_23374AEDC(a3, &v16, &v17);
        __src = a2;
        v8 = sub_233757B14(a1 + 264, a2);
        v9 = v8[7];
        if (v9)
        {
          v8[8] = v9;
          operator delete(v9);
          v8[7] = 0;
          v8[8] = 0;
          v8[9] = 0;
        }

        *(v8 + 7) = v17;
        v8[9] = v18;
        v18 = 0;
        v17 = 0uLL;
        if (v16.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(v16.__r_.__value_.__l.__size_);
        }
      }
    }

    else
    {
      switch(v6)
      {
        case 0x612u:
          if (a3[1] == 3 && (*(a3 + 1) - 1) <= 1)
          {
            LODWORD(v16.__r_.__value_.__l.__data_) = 0;
            sub_233726998(&v17, &v16);
            *(a1 + 1216) = sub_23374B704(a3, &v17);
          }

          break;
        case 0x613u:
          if (a3[1] == 3 && (*(a3 + 1) - 1) <= 1)
          {
            LODWORD(v16.__r_.__value_.__l.__data_) = 0;
            sub_233726998(&v17, &v16);
            *(a1 + 1220) = sub_23374B704(a3, &v17);
          }

          break;
        case 0x614u:
          sub_2338F8FFC(a3, a1);
          break;
      }
    }
  }

  else if (*a3 > 0x1112u)
  {
    if (v6 == 4371)
    {
      if (a3[1] == 3 && *(a3 + 1) == 4)
      {
        sub_2337338AC(a1, &v16);
        sub_23374B2FC(a3, &v16, &v17);
        sub_2338F8EF4(&v16, &v17, a1);
      }
    }

    else if (v6 == 5378)
    {
      if (a3[1] == 1 && *(a3 + 1) == 1)
      {
        LODWORD(v16.__r_.__value_.__l.__data_) = 0;
        sub_233726998(&v17, &v16);
        *(a1 + 1180) = (sub_233754BB0(a3, &v17) & 3) != 0;
      }
    }

    else if (v6 == 5386 && a3[1] == 11 && *(a3 + 1) == 4)
    {
      sub_2337338AC(a1, &v16);
      sub_23374AEDC(a3, &v16, &v17);
      sub_2338F8E84(a1, &v16, &v17);
    }
  }

  else if (v6 == 1557)
  {
    sub_2338F8FD8(a3, a1);
  }

  else if (v6 == 1568)
  {
    if (a3[1] == 3 && *(a3 + 1) == 1)
    {
      LODWORD(v16.__r_.__value_.__l.__data_) = 0;
      sub_233726998(&v17, &v16);
      *(a1 + 1344) = sub_23374B704(a3, &v17);
    }
  }

  else if (v6 == 4112 && a3[1] == 3 && *(a3 + 1) == 1)
  {
    LODWORD(v16.__r_.__value_.__l.__data_) = 0;
    sub_233726998(&v17, &v16);
    v7 = sub_23374B704(a3, &v17);
    *&v17 = a2;
    *(sub_233757C60(a1 + 1320, a2) + 56) = v7;
  }

  return sub_233725FD4(v19);
}

void sub_233761694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_233761760(uint64_t a1)
{
  if (*(a1 + 1224) && *(a1 + 1228))
  {
    return *(a1 + 1216);
  }

  else
  {
    return sub_233733A70(a1);
  }
}

double sub_2337617A0(int *a1)
{
  (*(*a1 + 592))(&v7);
  if (v7)
  {
    v2 = sub_2337DE858(v7);
    v3 = a1[311];
    v4 = a1[310] / v2;
    if (v4 < v3 / SHIDWORD(v2))
    {
      v4 = v3 / SHIDWORD(v2);
    }

    v5 = 1.0 / v4 * a1[308] / v2;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
  }

  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_2337618AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337618C4(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_23372A488(__p, "IFD0");
  v4 = sub_233735E3C(a1 + 704, __p);
  v5 = v4;
  if (a1 + 712 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 56);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v6 - 9) >= 0xFFFFFFF8 || a1 + 712 == v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  sub_233753B14(a1, a2);
  if (*(a1 + 1284))
  {
    sub_233723AE0(&v10, (a1 + 1288));
    v11 = *(a1 + 1292);
    sub_23373401C(a1, &v10, &v11, v8, __p);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
  }

  sub_233723AE0(&v11, (a1 + 1276));
  v9 = *(a1 + 1280);
  sub_23373401C(a1, &v11, &v9, v8, &v10);
  if (__p[0])
  {
    sub_233753C74(a2, __p);
  }

  if (v10)
  {
    sub_233753C74(a2, &v10);
  }

  if (*(&v10 + 1))
  {
    sub_2337239E8(*(&v10 + 1));
  }

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }
}

uint64_t sub_233761A6C(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233761AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233761AE4(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233761B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_233761B5C(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233761BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233761BD4(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233735E3C(a1 + 656, __p);
  if (a1 + 664 == v2 || (v3 = *(v2 + 56), *(v2 + 64) == v3))
  {
    LOBYTE(v4) = 0;
    v5 = 0;
  }

  else
  {
    v4 = *v3;
    v5 = 1;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOWORD(result) = sub_233733AF4();
    return result;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_7:
  LODWORD(result) = ~(-1 << v4);
  return result;
}

void sub_233761C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233761CF0(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:ImageProcessing");
  v2 = sub_233735E3C(a1 + 1320, __p);
  if (a1 + 1328 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 56) & 1;
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_233761D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233761D80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_23372A488(__p, "orf");
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "olympus");
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_233754418(a2, (a1 + 1296));
}

uint64_t *sub_233761E54(std::string *a1, uint64_t a2, uint64_t a3)
{
  sub_2337338AC(a1, &__p);
  sub_233754E04(v8, &__p);
  if (__p.__r_.__value_.__l.__size_)
  {
    sub_2337239E8(__p.__r_.__value_.__l.__size_);
  }

  v5 = *a3 == 256 && *(a3 + 2) == 2;
  if (v5 && *(a3 + 4) <= 0x3Fu)
  {
    memset(&__p, 0, sizeof(__p));
    if (sub_23375168C(a1, a3, &__p, 1))
    {
      std::string::operator=(a1 + 54, &__p);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return sub_233725FD4(v8);
}

void sub_233761F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a15);
  _Unwind_Resume(a1);
}

id sub_233761F40(uint64_t a1)
{
  v49[5] = *MEMORY[0x277D85DE8];
  v2 = sub_23374CF00();
  v30 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);

  v48[0] = &unk_284955F48;
  v46[1] = @"Namespace";
  v47[0] = @"EquipmentIFD";
  v46[0] = @"Name";
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2337623D0;
  v37[3] = &unk_2789EEC00;
  v37[4] = a1;
  v32 = MEMORY[0x2383AC810](v37);
  v47[1] = v32;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v47, v46, 2);
  v49[0] = v29;
  v48[1] = &unk_284955F60;
  v44[1] = @"Namespace";
  v45[0] = @"CameraSettingsIFD";
  v44[0] = @"Name";
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_233762648;
  v36[3] = &unk_2789EEC00;
  v36[4] = a1;
  v31 = MEMORY[0x2383AC810](v36);
  v45[1] = v31;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v45, v44, 2);
  v49[1] = v9;
  v48[2] = &unk_284955F78;
  v42[1] = @"Namespace";
  v43[0] = @"RawDevelopmentIFD";
  v42[0] = @"Name";
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_233762CA8;
  v35[3] = &unk_2789EEC00;
  v35[4] = a1;
  v10 = MEMORY[0x2383AC810](v35);
  v43[1] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v43, v42, 2);
  v49[2] = v12;
  v48[3] = &unk_284955F90;
  v40[1] = @"Namespace";
  v41[0] = @"ImageProcessingIFD";
  v40[0] = @"Name";
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_233762E40;
  v34[3] = &unk_2789EEC00;
  v34[4] = a1;
  v13 = MEMORY[0x2383AC810](v34);
  v41[1] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v41, v40, 2);
  v49[3] = v15;
  v48[4] = &unk_284955FA8;
  v38[1] = @"Namespace";
  v39[0] = @"FocusInfoIFD";
  v38[0] = @"Name";
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2337633B0;
  v33[3] = &unk_2789EEC00;
  v33[4] = a1;
  v16 = MEMORY[0x2383AC810](v33);
  v39[1] = v16;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v39, v38, 2);
  v49[4] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v49, v48, 5);
  objc_msgSend_addEntriesFromDictionary_(v30, v21, v20, v22, v23);

  v27 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v24, v30, v25, v26);

  return v27;
}

id sub_2337623D4(uint64_t a1, const char *a2)
{
  v5[25] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284955FC0;
  v4[1] = &unk_284955FD8;
  v5[0] = &unk_28495AA80;
  v5[1] = &unk_28495AAA8;
  v4[2] = &unk_284955FF0;
  v4[3] = &unk_284956008;
  v5[2] = &unk_28495AAD0;
  v5[3] = &unk_28495AAF8;
  v4[4] = &unk_284956020;
  v4[5] = &unk_284956038;
  v5[4] = &unk_28495AB20;
  v5[5] = &unk_28495AB48;
  v4[6] = &unk_284956050;
  v4[7] = &unk_284956068;
  v5[6] = &unk_28495AB70;
  v5[7] = &unk_28495AB98;
  v4[8] = &unk_284956080;
  v4[9] = &unk_284956098;
  v5[8] = &unk_28495ABC0;
  v5[9] = &unk_28495ABE8;
  v4[10] = &unk_2849560B0;
  v4[11] = &unk_2849560C8;
  v5[10] = &unk_28495AC10;
  v5[11] = &unk_28495AC38;
  v4[12] = &unk_2849560E0;
  v4[13] = &unk_2849560F8;
  v5[12] = &unk_28495AC60;
  v5[13] = &unk_28495AC88;
  v4[14] = &unk_284956110;
  v4[15] = &unk_284956128;
  v5[14] = &unk_28495ACB0;
  v5[15] = &unk_28495ACD8;
  v4[16] = &unk_284956140;
  v4[17] = &unk_284956158;
  v5[16] = &unk_28495AD00;
  v5[17] = &unk_28495AD28;
  v4[18] = &unk_284956170;
  v4[19] = &unk_284956188;
  v5[18] = &unk_28495AD50;
  v5[19] = &unk_28495AD78;
  v4[20] = &unk_2849561A0;
  v4[21] = &unk_2849561B8;
  v5[20] = &unk_28495ADA0;
  v5[21] = &unk_28495ADC8;
  v4[22] = &unk_2849561D0;
  v4[23] = &unk_2849561E8;
  v5[22] = &unk_28495ADF0;
  v5[23] = &unk_28495AE18;
  v4[24] = &unk_284956200;
  v5[24] = &unk_28495AE40;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 25);

  return v2;
}

id sub_23376264C(uint64_t a1, const char *a2)
{
  v5[68] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284955FC0;
  v4[1] = &unk_284955FD8;
  v5[0] = &unk_28495BAC0;
  v5[1] = &unk_28495BAE8;
  v4[2] = &unk_284955FF0;
  v4[3] = &unk_284956008;
  v5[2] = &unk_28495BB10;
  v5[3] = &unk_28495BB38;
  v4[4] = &unk_284956488;
  v4[5] = &unk_284956050;
  v5[4] = &unk_28495BB60;
  v5[5] = &unk_28495BB88;
  v4[6] = &unk_284956068;
  v4[7] = &unk_284956080;
  v5[6] = &unk_28495BBB0;
  v5[7] = &unk_28495BBD8;
  v4[8] = &unk_284956098;
  v4[9] = &unk_2849564A0;
  v5[8] = &unk_28495BC00;
  v5[9] = &unk_28495BC28;
  v4[10] = &unk_284956140;
  v4[11] = &unk_284956158;
  v5[10] = &unk_28495BC50;
  v5[11] = &unk_28495BC78;
  v4[12] = &unk_284956170;
  v4[13] = &unk_284956188;
  v5[12] = &unk_28495BCA0;
  v5[13] = &unk_28495BCC8;
  v4[14] = &unk_284956758;
  v4[15] = &unk_284956848;
  v5[14] = &unk_28495BCF0;
  v5[15] = &unk_28495BD18;
  v4[16] = &unk_284956860;
  v4[17] = &unk_284956770;
  v5[16] = &unk_28495BD40;
  v5[17] = &unk_28495BD68;
  v4[18] = &unk_284956878;
  v4[19] = &unk_284956890;
  v5[18] = &unk_28495BD90;
  v5[19] = &unk_28495BDB8;
  v4[20] = &unk_2849561A0;
  v4[21] = &unk_2849568A8;
  v5[20] = &unk_28495BDE0;
  v5[21] = &unk_28495BE08;
  v4[22] = &unk_2849568C0;
  v4[23] = &unk_2849568D8;
  v5[22] = &unk_28495BE30;
  v5[23] = &unk_28495BE58;
  v4[24] = &unk_2849568F0;
  v4[25] = &unk_284956908;
  v5[24] = &unk_28495BE80;
  v5[25] = &unk_28495BEA8;
  v4[26] = &unk_284956920;
  v4[27] = &unk_284956938;
  v5[26] = &unk_28495BED0;
  v5[27] = &unk_28495BEF8;
  v4[28] = &unk_284956950;
  v4[29] = &unk_284956968;
  v5[28] = &unk_28495BF20;
  v5[29] = &unk_28495BF48;
  v4[30] = &unk_284956980;
  v4[31] = &unk_284956998;
  v5[30] = &unk_28495BF70;
  v5[31] = &unk_28495BF98;
  v4[32] = &unk_2849569B0;
  v4[33] = &unk_2849569C8;
  v5[32] = &unk_28495BFC0;
  v5[33] = &unk_28495BFE8;
  v4[34] = &unk_2849569E0;
  v4[35] = &unk_2849569F8;
  v5[34] = &unk_28495C010;
  v5[35] = &unk_28495C038;
  v4[36] = &unk_284956A10;
  v4[37] = &unk_284956A28;
  v5[36] = &unk_28495C060;
  v5[37] = &unk_28495C088;
  v4[38] = &unk_284956A40;
  v4[39] = &unk_284956A58;
  v5[38] = &unk_28495C0B0;
  v5[39] = &unk_28495C0D8;
  v4[40] = &unk_284956A70;
  v4[41] = &unk_284956A88;
  v5[40] = &unk_28495C100;
  v5[41] = &unk_28495C128;
  v4[42] = &unk_284956AA0;
  v4[43] = &unk_284956AB8;
  v5[42] = &unk_28495C150;
  v5[43] = &unk_28495C178;
  v4[44] = &unk_284956AD0;
  v4[45] = &unk_284956AE8;
  v5[44] = &unk_28495C1A0;
  v5[45] = &unk_28495C1C8;
  v4[46] = &unk_284956B00;
  v4[47] = &unk_284956B18;
  v5[46] = &unk_28495C1F0;
  v5[47] = &unk_28495C218;
  v4[48] = &unk_284956B30;
  v4[49] = &unk_284956B48;
  v5[48] = &unk_28495C240;
  v5[49] = &unk_28495C268;
  v4[50] = &unk_284956B60;
  v4[51] = &unk_284956B78;
  v5[50] = &unk_28495C290;
  v5[51] = &unk_28495C2B8;
  v4[52] = &unk_284956B90;
  v4[53] = &unk_284956BA8;
  v5[52] = &unk_28495C2E0;
  v5[53] = &unk_28495C308;
  v4[54] = &unk_284956BC0;
  v4[55] = &unk_284956BD8;
  v5[54] = &unk_28495C330;
  v5[55] = &unk_28495C358;
  v4[56] = &unk_284956BF0;
  v4[57] = &unk_2849564E8;
  v5[56] = &unk_28495C380;
  v5[57] = &unk_28495C3A8;
  v4[58] = &unk_284956C08;
  v4[59] = &unk_284956C20;
  v5[58] = &unk_28495C3D0;
  v5[59] = &unk_28495C3F8;
  v4[60] = &unk_284956C38;
  v4[61] = &unk_284956C50;
  v5[60] = &unk_28495C420;
  v5[61] = &unk_28495C448;
  v4[62] = &unk_284956C68;
  v4[63] = &unk_284956C80;
  v5[62] = &unk_28495C470;
  v5[63] = &unk_28495C498;
  v4[64] = &unk_284956C98;
  v5[64] = &unk_28495C4C0;
  v4[65] = &unk_284956CB0;
  v5[65] = &unk_28495C4E8;
  v4[66] = &unk_284956CC8;
  v5[66] = &unk_28495C510;
  v4[67] = &unk_284956CE0;
  v5[67] = &unk_28495C538;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 68);

  return v2;
}

id sub_233762CAC(uint64_t a1, const char *a2)
{
  v5[14] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284955FC0;
  v4[1] = &unk_284955FD8;
  v5[0] = &unk_28495C560;
  v5[1] = &unk_28495C588;
  v4[2] = &unk_284955FF0;
  v4[3] = &unk_284956008;
  v5[2] = &unk_28495C5B0;
  v5[3] = &unk_28495C5D8;
  v4[4] = &unk_284956020;
  v4[5] = &unk_284956038;
  v5[4] = &unk_28495C600;
  v5[5] = &unk_28495C628;
  v4[6] = &unk_284956218;
  v4[7] = &unk_284956230;
  v5[6] = &unk_28495C650;
  v5[7] = &unk_28495C678;
  v4[8] = &unk_284956248;
  v4[9] = &unk_284956260;
  v5[8] = &unk_28495C6A0;
  v5[9] = &unk_28495C6C8;
  v4[10] = &unk_284956278;
  v4[11] = &unk_284956290;
  v5[10] = &unk_28495C6F0;
  v5[11] = &unk_28495C718;
  v4[12] = &unk_2849562A8;
  v4[13] = &unk_2849562C0;
  v5[12] = &unk_28495C740;
  v5[13] = &unk_28495C768;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 14);

  return v2;
}

id sub_233762E44(uint64_t a1, const char *a2)
{
  v5[58] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284955FC0;
  v4[1] = &unk_284955FD8;
  v5[0] = &unk_28495AE68;
  v5[1] = &unk_28495AE90;
  v4[2] = &unk_284956008;
  v4[3] = &unk_284956020;
  v5[2] = &unk_28495AEB8;
  v5[3] = &unk_28495AEE0;
  v4[4] = &unk_284956038;
  v4[5] = &unk_284956218;
  v5[4] = &unk_28495AF08;
  v5[5] = &unk_28495AF30;
  v4[6] = &unk_284956230;
  v4[7] = &unk_284956248;
  v5[6] = &unk_28495AF58;
  v5[7] = &unk_28495AF80;
  v4[8] = &unk_284956260;
  v4[9] = &unk_284956278;
  v5[8] = &unk_28495AFA8;
  v5[9] = &unk_28495AFD0;
  v4[10] = &unk_284956290;
  v4[11] = &unk_2849562A8;
  v5[10] = &unk_28495AFF8;
  v5[11] = &unk_28495B020;
  v4[12] = &unk_2849562C0;
  v4[13] = &unk_2849562D8;
  v5[12] = &unk_28495B048;
  v5[13] = &unk_28495B070;
  v4[14] = &unk_2849562F0;
  v4[15] = &unk_284956308;
  v5[14] = &unk_28495B098;
  v5[15] = &unk_28495B0C0;
  v4[16] = &unk_284956320;
  v4[17] = &unk_284956338;
  v5[16] = &unk_28495B0E8;
  v5[17] = &unk_28495B110;
  v4[18] = &unk_284956350;
  v4[19] = &unk_284956368;
  v5[18] = &unk_28495B138;
  v5[19] = &unk_28495B160;
  v4[20] = &unk_284956380;
  v4[21] = &unk_284956398;
  v5[20] = &unk_28495B188;
  v5[21] = &unk_28495B1B0;
  v4[22] = &unk_2849563B0;
  v4[23] = &unk_2849563C8;
  v5[22] = &unk_28495B1D8;
  v5[23] = &unk_28495B200;
  v4[24] = &unk_2849563E0;
  v4[25] = &unk_2849563F8;
  v5[24] = &unk_28495B228;
  v5[25] = &unk_28495B250;
  v4[26] = &unk_284956410;
  v4[27] = &unk_284956428;
  v5[26] = &unk_28495B278;
  v5[27] = &unk_28495B2A0;
  v4[28] = &unk_284956440;
  v4[29] = &unk_284956458;
  v5[28] = &unk_28495B2C8;
  v5[29] = &unk_28495B2F0;
  v4[30] = &unk_284956470;
  v4[31] = &unk_284956488;
  v5[30] = &unk_28495B318;
  v5[31] = &unk_28495B340;
  v4[32] = &unk_2849564A0;
  v4[33] = &unk_284956140;
  v5[32] = &unk_28495B368;
  v5[33] = &unk_28495B390;
  v4[34] = &unk_2849564B8;
  v4[35] = &unk_2849564D0;
  v5[34] = &unk_28495B3B8;
  v5[35] = &unk_28495B3E0;
  v4[36] = &unk_2849564E8;
  v4[37] = &unk_284956500;
  v5[36] = &unk_28495B408;
  v5[37] = &unk_28495B430;
  v4[38] = &unk_284956518;
  v4[39] = &unk_284956530;
  v5[38] = &unk_28495B458;
  v5[39] = &unk_28495B480;
  v4[40] = &unk_284956548;
  v4[41] = &unk_284956560;
  v5[40] = &unk_28495B4A8;
  v5[41] = &unk_28495B4D0;
  v4[42] = &unk_284956578;
  v4[43] = &unk_284956590;
  v5[42] = &unk_28495B4F8;
  v5[43] = &unk_28495B520;
  v4[44] = &unk_2849565A8;
  v4[45] = &unk_2849565C0;
  v5[44] = &unk_28495B548;
  v5[45] = &unk_28495B570;
  v4[46] = &unk_2849565D8;
  v4[47] = &unk_2849565F0;
  v5[46] = &unk_28495B598;
  v5[47] = &unk_28495B5C0;
  v4[48] = &unk_284956608;
  v4[49] = &unk_284956620;
  v5[48] = &unk_28495B5E8;
  v5[49] = &unk_28495B610;
  v4[50] = &unk_284956638;
  v4[51] = &unk_284956650;
  v5[50] = &unk_28495B638;
  v5[51] = &unk_28495B660;
  v4[52] = &unk_284956668;
  v4[53] = &unk_284956680;
  v5[52] = &unk_28495B688;
  v5[53] = &unk_28495B6B0;
  v4[54] = &unk_284956698;
  v4[55] = &unk_2849566B0;
  v5[54] = &unk_28495B6D8;
  v5[55] = &unk_28495B700;
  v4[56] = &unk_2849566C8;
  v4[57] = &unk_2849566E0;
  v5[56] = &unk_28495B728;
  v5[57] = &unk_28495B750;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 58);

  return v2;
}

id sub_2337633B4(uint64_t a1, const char *a2)
{
  v5[21] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284955FC0;
  v4[1] = &unk_2849566F8;
  v5[0] = &unk_28495B778;
  v5[1] = &unk_28495B7A0;
  v4[2] = &unk_284956710;
  v4[3] = &unk_284956728;
  v5[2] = &unk_28495B7C8;
  v5[3] = &unk_28495B7F0;
  v4[4] = &unk_284956740;
  v4[5] = &unk_2849564A0;
  v5[4] = &unk_28495B818;
  v5[5] = &unk_28495B840;
  v4[6] = &unk_284956140;
  v4[7] = &unk_284956170;
  v5[6] = &unk_28495B868;
  v5[7] = &unk_28495B890;
  v4[8] = &unk_284956188;
  v4[9] = &unk_284956758;
  v5[8] = &unk_28495B8B8;
  v5[9] = &unk_28495B8E0;
  v4[10] = &unk_284956770;
  v4[11] = &unk_284956788;
  v5[10] = &unk_28495B908;
  v5[11] = &unk_28495B930;
  v4[12] = &unk_284956638;
  v4[13] = &unk_284956668;
  v5[12] = &unk_28495B958;
  v5[13] = &unk_28495B980;
  v4[14] = &unk_2849567A0;
  v4[15] = &unk_2849567B8;
  v5[14] = &unk_28495B9A8;
  v5[15] = &unk_28495B9D0;
  v4[16] = &unk_2849567D0;
  v4[17] = &unk_2849567E8;
  v5[16] = &unk_28495B9F8;
  v5[17] = &unk_28495BA20;
  v4[18] = &unk_284956800;
  v4[19] = &unk_284956818;
  v5[18] = &unk_28495BA48;
  v5[19] = &unk_28495BA70;
  v4[20] = &unk_284956830;
  v5[20] = &unk_28495BA98;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 21);

  return v2;
}

void sub_2337635DC(uint64_t a1)
{
  sub_233763614(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233763614(uint64_t a1)
{
  *a1 = &unk_284905970;
  sub_233735DD8(a1 + 1320, *(a1 + 1328));
  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
  }

  if (*(a1 + 1271) < 0)
  {
    operator delete(*(a1 + 1248));
  }

  v2 = *(a1 + 1184);
  if (v2)
  {
    *(a1 + 1192) = v2;
    operator delete(v2);
  }

  return sub_2337557B4(a1);
}

void *sub_233763744(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284905CD0;
  sub_233763E38((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_2337637CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284905CD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337638EC(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284905D20;
  sub_233764C6C((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_233763974(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284905D20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

int *sub_2337639F0(int *result, void *a2)
{
  v2 = *result;
  v3 = __OFSUB__(v2, *a2);
  v4 = v2 - *a2;
  *result = v4;
  if (v3 || (v4 - 0x80000000) <= 0xFFFFFFFEFFFFFFFFLL)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

id sub_233763A68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC28];
  v42[1] = @"com.olympus.or-raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".orf.";
  v42[3] = &unk_284956CF8;
  v42[4] = &unk_284956D10;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_233763D60, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_233763D6C, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_233763D78, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_233763D84, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_233763D90, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_233763D9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_2337636A0();
}

_DWORD *sub_233763E74@<X0>(_DWORD *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  *a2 = 0;
  a2[1] = 0;
  v3 = result[336];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      (*(*result + 384))(&v4, result);
      (*(*v2 + 424))(v2);
      sub_233764520();
    }

    if (v3 == 16)
    {
      (*(*result + 384))(&v4, result);
      (*(*v2 + 424))(v2);
      sub_2337646DC();
    }
  }

  else
  {
    if (v3 == 1)
    {
      (*(*result + 384))(&v4, result);
      (*(*v2 + 424))(v2);
      sub_23376419C();
    }

    if (v3 == 2)
    {
      (*(*result + 384))(&v4, result);
      (*(*v2 + 424))(v2);
      sub_233764364();
    }
  }

  return result;
}

void sub_233764154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233764240(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849060F0;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28490B2B8;
  *(a1 + 212) = 16;
  *(a1 + 216) = 0;
  return a1;
}

void sub_2337642E8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849060F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233764408(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284906140;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_28490AE08;
  return a1;
}

void sub_2337644A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284906140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337645C4(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284906190;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_28491FCE8;
  return a1;
}

void sub_233764660(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284906190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233764780(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849061E0;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28490B0D8;
  *(a1 + 212) = 0x100000000;
  *(a1 + 220) = 0;
  return a1;
}

void sub_23376482C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849061E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_2337648A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC28];
  v42[1] = @"com.olympus.sr-raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".orf.";
  v42[3] = &unk_284956D28;
  v42[4] = &unk_284956D40;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_2338F90A0, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_233764BA0, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_233764BAC, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_233764BB8, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_233764BC4, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_233764BD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_233763848();
}

double sub_233764CF4(uint64_t a1, uint64_t *a2)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = _Q0;
  *(a1 + 16) = xmmword_233904640;
  *(a1 + 32) = xmmword_233903E50;
  *(a1 + 48) = xmmword_233904650;
  *(a1 + 64) = 0x3FF0000000000000;
  v7 = *a2;
  if (a2[1] - *a2 != 64)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    sub_2338F90E4(exception);
  }

  *a1 = *v7;
  *(a1 + 16) = *(v7 + 8);
  *(a1 + 8) = *(v7 + 16);
  *(a1 + 32) = *(v7 + 24);
  *(a1 + 24) = *(v7 + 32);
  *(a1 + 48) = *(v7 + 40);
  *(a1 + 40) = *(v7 + 48);
  result = *(v7 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t sub_233764DC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v2 = vextq_s8(*(a1 + 3), *(a1 + 3), 8uLL);
  v5 = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
  v6 = v2;
  v7 = vextq_s8(*(a1 + 5), *(a1 + 5), 8uLL);
  v8 = a1[7];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_233764ED4(a2, &v4, &v9, 8uLL);
}

double sub_233764E58(uint64_t a1)
{
  v1 = *(a1 + 48) + *(a1 + 40) * 0.2;
  *(a1 + 64) = 0x3FF4000000000000;
  result = (1.25 - v1) / 0.3;
  *(a1 + 56) = result;
  return result;
}

float sub_233764E8C@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  v2 = *a1;
  *a2 = v2;
  *(a2 + 4) = vrev64q_s32(vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 8)), *(a1 + 24)));
  *(a2 + 20) = vrev64_s32(vcvt_f32_f64(*(a1 + 40)));
  result = *(a1 + 56);
  *(a2 + 28) = result;
  return result;
}

uint64_t sub_233764ED4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_23372375C(result, a4);
  }

  return result;
}

void sub_233764F2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_233764FFC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849065B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337650C4(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849065B0;
  sub_233764CF4((a1 + 3), a2);
  return a1;
}

id sub_233765120(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_2337656C0, a4, a5);
  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v6, sub_2337656CC, v7, v8);
  v13 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v10, sub_2337656D8, v11, v12);
  v43 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v14, sub_23378BC54, v15, v16);
  v42 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v17, sub_2337656E4, v18, v19);
  v50 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_2337656F0, v21, v22);
  v48 = *MEMORY[0x277CD3720];
  v57[0] = *MEMORY[0x277CD3700];
  v49 = v57[0];
  v57[1] = v48;
  v67[0] = MEMORY[0x277CBEC28];
  v67[1] = @"com.panasonic.raw-image";
  v46 = *MEMORY[0x277CD3718];
  v58 = *MEMORY[0x277CD36E0];
  v47 = v58;
  v59 = v46;
  v67[2] = @".raw.";
  v67[3] = &unk_284956D58;
  v44 = *MEMORY[0x277CD3710];
  v60 = *MEMORY[0x277CD3708];
  v45 = v60;
  v61 = v44;
  v67[4] = &unk_284956D70;
  v67[5] = v5;
  v24 = *MEMORY[0x277CD36E8];
  v62 = *MEMORY[0x277CD36C8];
  v23 = v62;
  v63 = v24;
  v67[6] = v9;
  v67[7] = v13;
  v25 = v9;
  v27 = *MEMORY[0x277CD36F0];
  v64 = *MEMORY[0x277CD36D0];
  v26 = v64;
  v65 = v27;
  v67[8] = v43;
  v67[9] = v42;
  v66 = *MEMORY[0x277CD36F8];
  v28 = v66;
  v67[10] = v50;
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v67, v57, 11);
  v68[0] = v41;
  v55[0] = v49;
  v55[1] = v48;
  v56[0] = MEMORY[0x277CBEC28];
  v56[1] = @"com.panasonic.rw2-raw-image";
  v55[2] = v47;
  v55[3] = v46;
  v56[2] = @".rw2.";
  v56[3] = &unk_284956D58;
  v55[4] = v45;
  v55[5] = v44;
  v56[4] = &unk_284956D70;
  v56[5] = v5;
  v55[6] = v23;
  v55[7] = v24;
  v56[6] = v25;
  v56[7] = v13;
  v55[8] = v26;
  v55[9] = v27;
  v56[8] = v43;
  v56[9] = v42;
  v55[10] = v28;
  v56[10] = v50;
  v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v56, v55, 11);
  v68[1] = v40;
  v53[0] = v49;
  v53[1] = v48;
  v54[0] = MEMORY[0x277CBEC28];
  v54[1] = @"com.leica.raw-image";
  v53[2] = v47;
  v53[3] = v46;
  v54[2] = @".raw.";
  v54[3] = &unk_284956D58;
  v53[4] = v45;
  v53[5] = v44;
  v54[4] = &unk_284956D70;
  v54[5] = v5;
  v53[6] = v23;
  v53[7] = v24;
  v54[6] = v25;
  v54[7] = v13;
  v53[8] = v26;
  v53[9] = v27;
  v54[8] = v43;
  v54[9] = v42;
  v53[10] = v28;
  v54[10] = v50;
  v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v54, v53, 11);
  v68[2] = v39;
  v51[0] = v49;
  v51[1] = v48;
  v52[0] = MEMORY[0x277CBEC28];
  v52[1] = @"com.leica.rwl-raw-image";
  v51[2] = v47;
  v51[3] = v46;
  v52[2] = @".rwl.";
  v52[3] = &unk_284956D58;
  v51[4] = v45;
  v51[5] = v44;
  v52[4] = &unk_284956D70;
  v52[5] = v5;
  v51[6] = v23;
  v51[7] = v24;
  v52[6] = v25;
  v52[7] = v13;
  v32 = v13;
  v51[8] = v26;
  v51[9] = v27;
  v52[8] = v43;
  v52[9] = v42;
  v51[10] = v28;
  v52[10] = v50;
  v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v52, v51, 11);
  v68[3] = v34;
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v68, 4, v36);

  return v37;
}

void sub_2337656FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_233769204();
}

double sub_233765798(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  sub_23374B844(a1, a2, a3, a4, a5);
  *v5 = &unk_284906620;
  *(v5 + 1208) = 0;
  *(v5 + 1212) = 0;
  *(v5 + 1216) = 0;
  *(v5 + 1220) = 0;
  *(v5 + 1224) = 0;
  *(v5 + 1180) = 0;
  result = 0.0;
  *(v5 + 1188) = 0u;
  *(v5 + 1204) = 0;
  *(v5 + 1228) = 1;
  *(v5 + 1240) = 0u;
  *(v5 + 1232) = v5 + 1240;
  *(v5 + 1266) = 0;
  *(v5 + 1268) = 0;
  *(v5 + 1270) = 0;
  *(v5 + 1272) = 0;
  *(v5 + 1340) = 0;
  *(v5 + 1342) = 0;
  *(v5 + 1344) = 0;
  *(v5 + 1346) = 0;
  *(v5 + 1348) = 0;
  *(v5 + 1350) = 0;
  *(v5 + 1352) = 0;
  *(v5 + 1354) = 0;
  *(v5 + 1356) = 0;
  *(v5 + 1358) = 0;
  *(v5 + 1360) = 0;
  *(v5 + 1362) = 0;
  *(v5 + 1364) = 0;
  *(v5 + 1366) = 0;
  *(v5 + 1368) = 0;
  *(v5 + 1376) = 0;
  *(v5 + 1400) = 0;
  *(v5 + 1408) = 0;
  *(v5 + 1432) = 0;
  *(v5 + 1440) = 0;
  *(v5 + 1442) = 0;
  *(v5 + 1444) = 0;
  *(v5 + 1446) = 0;
  *(v5 + 1448) = 0;
  *(v5 + 1450) = 0;
  *(v5 + 1452) = 0;
  *(v5 + 1454) = 0;
  *(v5 + 1456) = 0;
  *(v5 + 1458) = 0;
  *(v5 + 1464) = 0;
  *(v5 + 1488) = 0;
  *(v5 + 1496) = 0;
  *(v5 + 1520) = 0;
  *(v5 + 1528) = 0;
  *(v5 + 1530) = 0;
  *(v5 + 1532) = 0;
  *(v5 + 1534) = 0;
  *(v5 + 1536) = 0;
  *(v5 + 1560) = 0;
  *(v5 + 1568) = 0;
  *(v5 + 1592) = 0;
  *(v5 + 1600) = 0;
  *(v5 + 1624) = 0;
  *(v5 + 1632) = 0;
  *(v5 + 1656) = 0;
  *(v5 + 1664) = 0;
  *(v5 + 1688) = 0;
  *(v5 + 1264) = 0;
  *(v5 + 1256) = 0;
  *(v5 + 1280) = 0u;
  *(v5 + 1296) = 0u;
  *(v5 + 1312) = 0;
  *(v5 + 1330) = 0;
  *(v5 + 1314) = 0u;
  *(v5 + 1338) = 0;
  return result;
}

void sub_233765900(uint64_t a1, char *a2, unsigned __int16 *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  sub_23374FA0C(a1, a2, a3);
  v6 = a2[23];
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 < 0)
  {
    v6 = *(a2 + 1);
  }

  if (v6 >= 18)
  {
    v8 = &v7[v6];
    v9 = v7;
    do
    {
      v10 = memchr(v9, 69, v6 - 17);
      if (!v10)
      {
        break;
      }

      if (*v10 == 0x6465646465626D45 && *(v10 + 1) == 0x69616E626D756854 && *(v10 + 8) == 14956)
      {
        if (v10 == v7)
        {
          return;
        }

        break;
      }

      v9 = v10 + 1;
      v6 = v8 - v9;
    }

    while (v8 - v9 >= 18);
  }

  v13 = *a3;
  if (v13 > 0x117)
  {
    if (v13 == 280)
    {
      sub_2338F94B0(a3, a1);
      return;
    }

    if (v13 == 281)
    {
      if (a3[1] != 7 || *(a3 + 1) != 32 || *(a1 + 1224) != 1 || *(a1 + 1220) < 4)
      {
        return;
      }

      sub_2337338AC(a1, __p);
      LODWORD(v71) = sub_233749410(a3);
      sub_233726A8C(&p_src, &v71);
      sub_233725F08(&__src, __p, &p_src, 0);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      *__p = 0u;
      v76 = 0u;
      sub_2337338AC(a1, &v71);
      v69 = sub_233749410(a3);
      sub_233726A8C(&v70, &v69);
      sub_233725F08(&p_src, &v71, &v70, 0);
      if (v72)
      {
        sub_2337239E8(v72);
      }

      sub_2337338AC(a1, &v71);
      (*(*v71 + 32))(v71, __p, 32);
      if (v72)
      {
        sub_2337239E8(v72);
      }

      sub_233725FD4(&p_src);
      sub_2337338AC(a1, &v71);
      v58 = v71;
      v69 = 16;
      sub_233726998(&v70, &v69);
      sub_233725B60(v58, &v70, &p_src);
      if (v72)
      {
        sub_2337239E8(v72);
      }

      v15 = p_src;
      if (v74 - p_src != 32)
      {
        goto LABEL_242;
      }

      v59 = 0;
      v60 = 0;
      v61 = &v76;
      v62 = 12;
      do
      {
        v59 = (*(v61 - 12) + 73 * v59) % 0xFFEF;
        v63 = *v61++;
        v60 = (v63 + 73 * v60) % 0xFFEF;
        --v62;
      }

      while (v62);
      v64 = 0;
      v65 = __p + 3;
      v66 = 14;
      do
      {
        v64 = (*(v65 - 1) + 73 * v64) % 0xFFEF;
        v67 = *v65;
        v65 += 2;
        v62 = (v67 + 73 * v62) % 0xFFEF;
        --v66;
      }

      while (v66);
      if (v59 != *(p_src + 1) || v60 != *(p_src + 14))
      {
        goto LABEL_242;
      }

      if (v64 == *p_src && v62 == *(p_src + 15))
      {
        if ((*(p_src + 7) & 0xF) == 1)
        {
          *(a1 + 1270) = 1;
          *(a1 + 1272) = *(v15 + 24);
          *(a1 + 1280) = vcvtd_n_f64_s32(*(v15 + 10), 0xFuLL);
          *(a1 + 1288) = vcvtd_n_f64_s32(*(v15 + 16), 0xFuLL);
          *(a1 + 1296) = vcvtd_n_f64_s32(*(v15 + 8), 0xFuLL);
          *(a1 + 1304) = vcvtd_n_f64_s32(*(v15 + 22), 0xFuLL);
        }
      }

      else
      {
LABEL_242:
        if (!p_src)
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
      if (v13 != 283 || a3[1] != 7 || *(a3 + 1) != 64 || *(a1 + 1224) != 1 || *(a1 + 1220) < 4)
      {
        return;
      }

      sub_2337338AC(a1, __p);
      LODWORD(v71) = sub_233749410(a3);
      sub_233726A8C(&p_src, &v71);
      sub_233725F08(&__src, __p, &p_src, 0);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      memset(v77, 0, sizeof(v77));
      *__p = 0u;
      v76 = 0u;
      sub_2337338AC(a1, &v71);
      v69 = sub_233749410(a3);
      sub_233726A8C(&v70, &v69);
      sub_233725F08(&p_src, &v71, &v70, 0);
      if (v72)
      {
        sub_2337239E8(v72);
      }

      sub_2337338AC(a1, &v71);
      (*(*v71 + 32))(v71, __p, 64);
      if (v72)
      {
        sub_2337239E8(v72);
      }

      sub_233725FD4(&p_src);
      sub_2337338AC(a1, &v71);
      v14 = v71;
      v69 = 32;
      sub_233726998(&v70, &v69);
      sub_233725B60(v14, &v70, &p_src);
      if (v72)
      {
        sub_2337239E8(v72);
      }

      v15 = p_src;
      if (v74 - p_src != 64)
      {
        goto LABEL_240;
      }

      v16 = 0;
      v17 = 0;
      v18 = v77;
      v19 = 28;
      do
      {
        v17 = (*(v18 - 28) + 73 * v17) % 0xFFEF;
        v20 = *v18++;
        v16 = (v20 + 73 * v16) % 0xFFEF;
        --v19;
      }

      while (v19);
      v21 = 0;
      v22 = __p + 3;
      v23 = 30;
      do
      {
        v19 = (*(v22 - 1) + 73 * v19) % 0xFFEF;
        v24 = *v22;
        v22 += 2;
        v21 = (v24 + 73 * v21) % 0xFFEF;
        --v23;
      }

      while (v23);
      if (v17 != *(p_src + 1) || v16 != *(p_src + 30))
      {
        goto LABEL_240;
      }

      if (v19 == *p_src && v21 == *(p_src + 31))
      {
        if (*(p_src + 29) << 8 == 256)
        {
          *(a1 + 1312) = 1;
          v26 = *(v15 + 34);
          *(a1 + 1314) = v26;
          v27 = *(v15 + 32);
          *(a1 + 1316) = v27;
          v28 = *(v15 + 8);
          *(a1 + 1318) = v28;
          v29 = *(v15 + 22);
          *(a1 + 1320) = v29;
          *(a1 + 1322) = *(v15 + 24);
          *(a1 + 1324) = *(v15 + 46);
          *(a1 + 1326) = *(v15 + 16);
          *(a1 + 1328) = *(v15 + 52);
          *(a1 + 1330) = *(v15 + 54);
          *(a1 + 1332) = *(v15 + 20);
          *(a1 + 1334) = *(v15 + 40);
          *(a1 + 1336) = *(v15 + 58);
          if (!__PAIR64__(v26, v27) && !v28 && !v29)
          {
            *(a1 + 1312) = 0;
          }
        }
      }

      else
      {
LABEL_240:
        if (!p_src)
        {
          goto LABEL_55;
        }
      }
    }

    v74 = v15;
    operator delete(v15);
LABEL_55:
    sub_233725FD4(&__src);
    return;
  }

  switch(*a3)
  {
    case 1u:
      sub_2338F9144(a3, a1);
      break;
    case 2u:
      sub_2338F91D0(a3, a1);
      break;
    case 3u:
      sub_2338F9210(a3, a1);
      break;
    case 4u:
      sub_2338F9250(a3, a1);
      break;
    case 5u:
      sub_2338F9290(a3, a1);
      break;
    case 6u:
      sub_2338F92D0(a3, a1);
      break;
    case 7u:
      sub_2338F9310(a3, a1);
      break;
    case 9u:
      sub_2338F9350(a3, a1);
      break;
    case 0xAu:
      sub_2338F9390(a3, a1);
      break;
    case 0xBu:
      sub_2338F9590(a3, a1);
      break;
    case 0x11u:
      sub_2338F93D8(a3, a1);
      break;
    case 0x12u:
      if (a3[1] == 3 && *(a3 + 1) == 1)
      {
        v38 = sub_233751308(a3);
        *(a1 + 1342) = v38;
        *(a1 + 1344) = 1;
        if (*(a1 + 1340) == 1)
        {
          __src.n128_u32[0] = *(a1 + 1338);
          __src.n128_u32[1] = 256;
          __src.n128_u32[2] = v38;
          sub_23372A488(__p, "redGreenBlue");
          p_src = __p;
          v39 = sub_23375E5EC(a1 + 120, __p);
          sub_23375538C((v39 + 56), &__src, &__src.n128_i8[12], 3uLL);
          goto LABEL_167;
        }
      }

      break;
    case 0x17u:
      if (a3[1] == 3 && *(a3 + 1) == 1)
      {
        __src.n128_u32[0] = sub_233751308(a3);
        __p[0] = a2;
        v37 = sub_2337577E4(a1 + 192, a2);
        sub_23375538C((v37 + 56), &__src, &__src.n128_i8[4], 1uLL);
      }

      break;
    case 0x1Cu:
      sub_2338F9420(a3, a1);
      break;
    case 0x1Du:
      sub_2338F9468(a3, a1);
      break;
    case 0x1Eu:
      if (a3[1] == 3 && *(a3 + 1) == 1)
      {
        v41 = sub_233751308(a3);
        *(a1 + 1354) = v41;
        *(a1 + 1356) = 1;
        if (*(a1 + 1348) == 1 && *(a1 + 1352) == 1)
        {
          LOWORD(v42) = *(a1 + 1346);
          LOWORD(v43) = *(a1 + 1350);
          *__p = v42;
          *&__p[1] = v43;
          *&v76 = v43;
          *(&v76 + 1) = v41;
          sub_2337530DC(":OBCorrection", a2, &__src);
          p_src = &__src;
          v44 = sub_23375E520(a1 + 264, &__src);
          sub_233755258((v44 + 56), __p, v77, 4uLL);
          if (v79 < 0)
          {
            v45 = __src.n128_u64[0];
            goto LABEL_169;
          }
        }
      }

      break;
    case 0x24u:
      sub_2338F94D8(a3, a1);
      break;
    case 0x25u:
      sub_2338F9520(a3, a1);
      break;
    case 0x26u:
      if (a3[1] == 3 && *(a3 + 1) == 1)
      {
        v49 = sub_233751308(a3);
        *(a1 + 1366) = v49;
        *(a1 + 1368) = 1;
        if (*(a1 + 1360) == 1 && *(a1 + 1364) == 1)
        {
          v50 = *(a1 + 1362);
          __src.n128_u32[0] = *(a1 + 1358);
          *(__src.n128_u64 + 4) = __PAIR64__(v49, v50);
          sub_23372A488(__p, "redGreenBlue");
          p_src = __p;
          v51 = sub_23375E5EC(a1 + 120, __p);
          sub_23375538C((v51 + 56), &__src, &__src.n128_i8[12], 3uLL);
LABEL_167:
          if (SBYTE7(v76) < 0)
          {
            v45 = __p[0];
LABEL_169:
            operator delete(v45);
          }
        }
      }

      break;
    case 0x2Du:
      sub_2338F95D8(a3, a1);
      break;
    case 0x2Eu:
      sub_2338F9568(a3, a1);
      break;
    case 0x2Fu:
      if (a3[1] == 3 && *(a3 + 1) == 1)
      {
        v47 = sub_233751308(a3);
        *(a1 + 1256) = v47;
        if (v47)
        {
          goto LABEL_184;
        }
      }

      break;
    case 0x30u:
      if (a3[1] == 3 && *(a3 + 1) == 1)
      {
        v35 = sub_233751308(a3);
        *(a1 + 1258) = v35;
        if (v35)
        {
          goto LABEL_184;
        }
      }

      break;
    case 0x31u:
      if (a3[1] == 3 && *(a3 + 1) == 1)
      {
        v40 = sub_233751308(a3);
        *(a1 + 1260) = v40;
        if (v40)
        {
          goto LABEL_184;
        }
      }

      break;
    case 0x32u:
      if (a3[1] == 3 && *(a3 + 1) == 1)
      {
        v53 = sub_233751308(a3);
        *(a1 + 1262) = v53;
        if (v53)
        {
LABEL_184:
          *(a1 + 1264) = 1;
        }
      }

      break;
    case 0x37u:
      if (a3[1] == 4 && *(a3 + 1) == 1)
      {
        __src.n128_u32[0] = *(a3 + 2);
        __p[0] = a2;
        v57 = sub_2337577E4(a1 + 192, a2);
        sub_23375538C((v57 + 56), &__src, &__src.n128_i8[4], 1uLL);
      }

      break;
    case 0x39u:
      if (a3[1] == 7 && *(a3 + 1) >= 2u)
      {
        sub_2337338AC(a1, &__src);
        LODWORD(v71) = sub_233749410(a3);
        sub_233726A8C(&p_src, &v71);
        sub_233725F08(__p, &__src, &p_src, 0);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        sub_2337338AC(a1, &__src);
        v36 = sub_2337255C0(__src.n128_i64[0]);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        if (((4 * v36) | 2uLL) <= *(a3 + 1))
        {
          sub_2337338AC(a1, &p_src);
          LODWORD(v71) = v36;
          sub_233756798(p_src, &v71, &__src);
          sub_233767718(a1 + 1376, &__src);
          sub_2338F910C(&__src);
        }

        goto LABEL_193;
      }

      break;
    case 0x3Au:
      if (a3[1] == 7 && *(a3 + 1) >= 2u)
      {
        sub_2337338AC(a1, &__src);
        LODWORD(v71) = sub_233749410(a3);
        sub_233726A8C(&p_src, &v71);
        sub_233725F08(__p, &__src, &p_src, 0);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        sub_2337338AC(a1, &__src);
        v33 = sub_2337255C0(__src.n128_i64[0]);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        if (*(a3 + 1) >= ((4 * v33) | 2u))
        {
          sub_2337338AC(a1, &p_src);
          v34 = p_src;
          v70 = 2 * v33;
          sub_233726998(&v71, &v70);
          sub_2337562F4(v34, &v71, &__src);
          sub_233767718(a1 + 1408, &__src);
          if (__src.n128_u64[0])
          {
            __src.n128_u64[1] = __src.n128_u64[0];
            operator delete(__src.n128_u64[0]);
          }

          if (v74)
          {
            sub_2337239E8(v74);
          }
        }

        goto LABEL_205;
      }

      break;
    case 0x3Bu:
      sub_2338F9620(a3, a1);
      break;
    case 0x3Cu:
      sub_2338F9668(a3, a1);
      break;
    case 0x3Du:
      sub_2338F96B0(a3, a1);
      break;
    case 0x3Eu:
      sub_2338F96F8(a3, a1);
      break;
    case 0x3Fu:
      sub_2338F9740(a3, a1);
      break;
    case 0x40u:
      if (a3[1] == 7 && *(a3 + 1) >= 2u)
      {
        sub_2337338AC(a1, &__src);
        LODWORD(v71) = sub_233749410(a3);
        sub_233726A8C(&p_src, &v71);
        sub_233725F08(__p, &__src, &p_src, 0);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        sub_2337338AC(a1, &__src);
        v31 = sub_2337255C0(__src.n128_i64[0]);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        if (*(a3 + 1) >= ((4 * v31) | 2u))
        {
          sub_2337338AC(a1, &p_src);
          v32 = p_src;
          v70 = 2 * v31;
          sub_233726998(&v71, &v70);
          sub_2337562F4(v32, &v71, &__src);
          sub_233767718(a1 + 1464, &__src);
          if (__src.n128_u64[0])
          {
            __src.n128_u64[1] = __src.n128_u64[0];
            operator delete(__src.n128_u64[0]);
          }

          if (v74)
          {
            sub_2337239E8(v74);
          }
        }

        goto LABEL_205;
      }

      break;
    case 0x41u:
      if (a3[1] == 7 && *(a3 + 1) >= 2u)
      {
        sub_2337338AC(a1, &__src);
        LODWORD(v71) = sub_233749410(a3);
        sub_233726A8C(&p_src, &v71);
        sub_233725F08(__p, &__src, &p_src, 0);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        sub_2337338AC(a1, &__src);
        v54 = sub_2337255C0(__src.n128_i64[0]);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        if (2 * v54 + 2 <= *(a3 + 1))
        {
          sub_2337338AC(a1, &p_src);
          LODWORD(v71) = v54;
          sub_2337562F4(p_src, &v71, &__src);
          sub_233767718(a1 + 1496, &__src);
          sub_2338F910C(&__src);
        }

        goto LABEL_193;
      }

      break;
    case 0x42u:
      sub_2338F9788(a3, a1);
      break;
    case 0x43u:
      sub_2338F97D0(a3, a1);
      break;
    case 0x44u:
      if (a3[1] == 7 && *(a3 + 1) >= 2u)
      {
        sub_2337338AC(a1, &__src);
        LODWORD(v71) = sub_233749410(a3);
        sub_233726A8C(&p_src, &v71);
        sub_233725F08(__p, &__src, &p_src, 0);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        sub_2337338AC(a1, &__src);
        v48 = sub_2337255C0(__src.n128_i64[0]);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        if (((4 * v48) | 2uLL) <= *(a3 + 1))
        {
          sub_2337338AC(a1, &p_src);
          LODWORD(v71) = v48;
          sub_23375650C(p_src, &v71, &__src);
          sub_233767718(a1 + 1536, &__src);
          sub_2338F910C(&__src);
        }

        goto LABEL_193;
      }

      break;
    case 0x45u:
      if (a3[1] == 7 && *(a3 + 1) >= 2u)
      {
        sub_2337338AC(a1, &__src);
        LODWORD(v71) = sub_233749410(a3);
        sub_233726A8C(&p_src, &v71);
        sub_233725F08(__p, &__src, &p_src, 0);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        sub_2337338AC(a1, &__src);
        v55 = sub_2337255C0(__src.n128_i64[0]);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        if (2 * v55 + 2 <= *(a3 + 1))
        {
          sub_2337338AC(a1, &p_src);
          v56 = p_src;
          v70 = 2 * v55;
          sub_233726998(&v71, &v70);
          sub_2337562F4(v56, &v71, &__src);
          sub_233767718(a1 + 1568, &__src);
          if (__src.n128_u64[0])
          {
            __src.n128_u64[1] = __src.n128_u64[0];
            operator delete(__src.n128_u64[0]);
          }

          if (v74)
          {
            sub_2337239E8(v74);
          }
        }

LABEL_205:
        sub_233725FD4(__p);
      }

      break;
    case 0x46u:
      if (a3[1] == 7 && *(a3 + 1) >= 2u)
      {
        sub_2337338AC(a1, &__src);
        LODWORD(v71) = sub_233749410(a3);
        sub_233726A8C(&p_src, &v71);
        sub_233725F08(__p, &__src, &p_src, 0);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        sub_2337338AC(a1, &__src);
        v52 = sub_2337255C0(__src.n128_i64[0]);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        if (((4 * v52) | 2uLL) <= *(a3 + 1))
        {
          sub_2337338AC(a1, &p_src);
          LODWORD(v71) = v52;
          sub_23375650C(p_src, &v71, &__src);
          sub_233767718(a1 + 1600, &__src);
          sub_2338F910C(&__src);
        }

        goto LABEL_193;
      }

      break;
    case 0x47u:
      if (a3[1] == 7 && *(a3 + 1) >= 2u)
      {
        sub_2337338AC(a1, &__src);
        LODWORD(v71) = sub_233749410(a3);
        sub_233726A8C(&p_src, &v71);
        sub_233725F08(__p, &__src, &p_src, 0);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        sub_2337338AC(a1, &__src);
        v46 = sub_2337255C0(__src.n128_i64[0]);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        if (v46 && 2 * v46 + 2 <= *(a3 + 1))
        {
          sub_2337338AC(a1, &p_src);
          LODWORD(v71) = v46;
          sub_2337562F4(p_src, &v71, &__src);
          sub_233767718(a1 + 1632, &__src);
          sub_2338F910C(&__src);
        }

        goto LABEL_193;
      }

      break;
    case 0x48u:
      if (a3[1] == 7 && *(a3 + 1) >= 2u)
      {
        sub_2337338AC(a1, &__src);
        LODWORD(v71) = sub_233749410(a3);
        sub_233726A8C(&p_src, &v71);
        sub_233725F08(__p, &__src, &p_src, 0);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        sub_2337338AC(a1, &__src);
        v30 = sub_2337255C0(__src.n128_i64[0]);
        if (__src.n128_u64[1])
        {
          sub_2337239E8(__src.n128_u64[1]);
        }

        if (v30 && 2 * v30 + 2 <= *(a3 + 1))
        {
          sub_2337338AC(a1, &p_src);
          LODWORD(v71) = v30;
          sub_2337562F4(p_src, &v71, &__src);
          sub_233767718(a1 + 1664, &__src);
          sub_2338F910C(&__src);
        }

LABEL_193:
        sub_233725FD4(__p);
      }

      break;
    default:
      return;
  }
}

void sub_233766D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_233767154(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24 = a2;
  sub_2337338AC(a1, &v22);
  v5 = (*(*v22 + 16))(v22);
  if (v23)
  {
    sub_2337239E8(v23);
  }

  if (v5 <= a3)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_2337338AC(a1, &v20);
  sub_2337268D8(&v18, &v24);
  sub_233725F08(&v22, &v20, &v18, 0);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v18);
  sub_233735A18(&v20, &v18, 2);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  sub_2337338AC(a1, &v18);
  v6 = sub_2337255C0(v18);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  if ((*(*a1 + 616))(a1, v6))
  {
    while (1)
    {
      sub_2337338AC(a1, &v18);
      v7 = sub_2337255C0(v18);
      if (v19)
      {
        sub_2337239E8(v19);
      }

      sub_2337338AC(a1, &v18);
      v8 = sub_2337255C0(v18);
      if (v19)
      {
        sub_2337239E8(v19);
      }

      sub_2337338AC(a1, &v18);
      v9 = (*(*v18 + 48))(v18);
      if (v19)
      {
        sub_2337239E8(v19);
      }

      v10 = v7 < 0xFF01;
      if (v7 < 0xFF01)
      {
        break;
      }

      if (v7 == 65505)
      {
        sub_2337338AC(a1, &v18);
        (*(*v18 + 32))(v18, &__p, 6);
        if (v19)
        {
          sub_2337239E8(v19);
        }

        if (__p != 1718188101)
        {
          goto LABEL_33;
        }

        sub_2337338AC(a1, &v18);
        v25 = (*(*v18 + 48))(v18);
        v14 = *sub_2337639F0(&v25, &v24);
        if (v19)
        {
          sub_2337239E8(v19);
        }
      }

      else
      {
        v14 = 0;
      }

      v11 = v8 - 2;
      LODWORD(a3) = a3 - 4 - (v8 - 2);
      if ((a3 & 0x80000000) == 0)
      {
        sub_2337338AC(a1, &v18);
        v12 = v18;
        __p = (v9 + v11);
        sub_2337268D8(&v25, &__p);
        (*(*v12 + 40))(v12, &v25, 0);
        if (v19)
        {
          sub_2337239E8(v19);
        }

        if (a3 >= 5 && !v14 && v7 != 65498)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    v14 = 0;
  }

  else
  {
LABEL_33:
    v14 = 0;
    v10 = 1;
  }

LABEL_34:
  sub_233735A90(&v20);
  result = sub_233725FD4(&v22);
  if (!v10 && v14)
  {
    sub_2337338AC(a1, &v20);
    v18 = v24 + v14;
    sub_2337268D8(&__p, &v18);
    sub_233754E8C(&v22, &v20, &__p);
    if (v21)
    {
      sub_2337239E8(v21);
    }

    sub_2337338AC(a1, &v18);
    LODWORD(__p) = 0;
    sub_233725F08(&v20, &v18, &__p, 0);
    if (v19)
    {
      sub_2337239E8(v19);
    }

    sub_2337338AC(a1, &__p);
    sub_233735A18(&v18, &__p, 2);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    sub_23372A488(&__p, "EmbeddedThumbnail:");
    (*(*a1 + 672))(a1, &__p, 42);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    sub_233735A90(&v18);
    sub_233725FD4(&v20);
    return sub_233754F18(&v22);
  }

  return result;
}

uint64_t sub_233767718(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_233769074(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_23376777C(uint64_t a1, void **a2, uint64_t a3)
{
  result = nullsub_6();
  if (*a3 == 73 && *(a3 + 2) == 3 && *(a3 + 4) == 1)
  {
    v10 = 0;
    sub_233726998(&v11, &v10);
    v9 = sub_23374B704(a3, &v11);
    v11 = a2;
    result = sub_233757C60(a1 + 1232, a2);
    *(result + 56) = v9;
  }

  return result;
}

uint64_t sub_233767818(uint64_t a1)
{
  if (*(a1 + 1208) == 1)
  {
    return *(a1 + 1204);
  }

  sub_23372A488(__p, "IFD0");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233767888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337678A4(uint64_t a1)
{
  if (*(a1 + 1208) == 1)
  {
    sub_2337338AC(a1, &__p);
    v2 = (*(*__p + 16))(__p);
    if ((*(a1 + 1208) & 1) == 0)
    {
      sub_233728FA8();
    }

    v8 = v2;
    v3 = *sub_2337580F8(&v8, (a1 + 1204));
    if (v6)
    {
      sub_2337239E8(v6);
    }
  }

  else
  {
    sub_23372A488(&__p, "IFD0");
    v3 = sub_233753DFC(a1, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return v3;
}

void sub_233767974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337679D8(uint64_t a1)
{
  v1 = *(a1 + 1184);
  if (*(a1 + 1264) == 1)
  {
    v2 = *(a1 + 1258);
    if ((*(a1 + 1262) - v2) > v1)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v3 = *(a1 + 1256);
    if (*(a1 + 1260) - v3 > *(a1 + 1186))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }
  }

  else
  {
    v2 = *(a1 + 1190);
    if (*(a1 + 1194) + v2 > v1)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v3 = *(a1 + 1188);
    if (*(a1 + 1192) + v3 > *(a1 + 1186))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }
  }

  return v2 | (v3 << 32);
}

uint64_t sub_233767B14(uint64_t a1)
{
  if (*(a1 + 1268) == 1)
  {
    return *(a1 + 1266);
  }

  else
  {
    return sub_233733AFC();
  }
}

void sub_233767B2C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2338BC3B8();
  v8 = v4;
  if (*(a1 + 1656) == 1 && objc_msgSend_BOOLForKey_(v4, v5, @"USE_MULTISIZE_TILES", v6, v7))
  {
    if ((*(a1 + 1530) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((*(a1 + 1656) & 1) == 0)
    {
      sub_233728FA8();
    }

    v9 = *(a1 + 1528);
    if (!*(a1 + 1528) || (v10 = *(a1 + 1632), v9 > (*(a1 + 1640) - v10) >> 1))
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v14, "RawCameraException");
      __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    __p = 0;
    v18 = 0;
    v19 = 0;
    sub_2337690C8(&__p, v10, v10 + 2 * v9, v9);
    v11 = __p;
    v12 = v18;
    if (__p == v18)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        v20 = v13;
        v13 = *sub_23376913C(&v20, v11++);
      }

      while (v11 != v12);
    }

    if (v13 != *(a1 + 1184))
    {
      v16 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v16, "RawCameraException");
      __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_233728FF4(a2, __p, v18, (v18 - __p) >> 1);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_233767D68(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2338BC3B8();
  v8 = v4;
  if (*(a1 + 1688) == 1 && objc_msgSend_BOOLForKey_(v4, v5, @"USE_MULTISIZE_TILES", v6, v7))
  {
    if ((*(a1 + 1534) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((*(a1 + 1688) & 1) == 0)
    {
      sub_233728FA8();
    }

    v9 = *(a1 + 1532);
    if (!*(a1 + 1532) || (v10 = *(a1 + 1664), v9 > (*(a1 + 1672) - v10) >> 1))
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v14, "RawCameraException");
      __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    __p = 0;
    v18 = 0;
    v19 = 0;
    sub_2337690C8(&__p, v10, v10 + 2 * v9, v9);
    v11 = __p;
    v12 = v18;
    if (__p == v18)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        v20 = v13;
        v13 = *sub_23376913C(&v20, v11++);
      }

      while (v11 != v12);
    }

    if (v13 != *(a1 + 1186))
    {
      v16 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v16, "RawCameraException");
      __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_233728FF4(a2, __p, v18, (v18 - __p) >> 1);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t sub_233767FA4(uint64_t a1)
{
  if ((*(*a1 + 56))(a1))
  {
    return 0;
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_2337338AC(a1, &v15);
  v3 = (*(*v15 + 48))(v15);
  if (v16)
  {
    sub_2337239E8(v16);
  }

  sub_2337338AC(a1, &v15);
  v4 = v15;
  v13 = 12;
  sub_233726998(&v14, &v13);
  v5 = sub_2337257E8(v4, &v14, &__p);
  if (v16)
  {
    sub_2337239E8(v16);
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  if (SHIBYTE(v19) < 0)
  {
    if (v18 == 9 && *__p == 0x696E6F73616E6150 && *(__p + 8) == 99)
    {
      goto LABEL_33;
    }

    if (v18 != 5)
    {
LABEL_29:
      v2 = 0;
      goto LABEL_30;
    }

    p_p = __p;
    goto LABEL_25;
  }

  if (HIBYTE(v19) == 5)
  {
    p_p = &__p;
LABEL_25:
    v9 = *p_p;
    v10 = p_p[4];
    if (v9 != 1128875340 || v10 != 65)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (HIBYTE(v19) != 9)
  {
    goto LABEL_29;
  }

  if (__p != 0x696E6F73616E6150 || v18 != 99)
  {
    goto LABEL_29;
  }

LABEL_33:
  v15 = v3 + 12;
  sub_2337268D8(&v14, &v15);
  (*(*a1 + 160))(a1, &v14);
  v2 = 1;
LABEL_30:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_2337681B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337681F0(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233753B14(a1, a2);
  sub_233723AE0(__p, (a1 + 1196));
  v10 = *(a1 + 1200);
  sub_23373401C(a1, __p, &v10, 1, &v11);
  if (v11)
  {
    sub_23372A488(__p, "IFD0");
    v4 = sub_233735E3C(a1 + 704, __p);
    v5 = v4;
    v6 = a1 + 712;
    if (v6 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v4 + 56);
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v6 != v5 && v7)
    {
      *(v11 + 16) = v7;
    }

    sub_233753C74(a2, &v11);
  }

  if (*(&v11 + 1))
  {
    sub_2337239E8(*(&v11 + 1));
  }
}

void sub_2337682D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_2337239E8(a17);
  }

  sub_233723948(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23376831C(uint64_t a1)
{
  if (*(a1 + 1228) - 2 > 2)
  {
    return 2492765332;
  }

  else
  {
    return dword_2339048C4[(*(a1 + 1228) - 2)];
  }
}

double sub_233768380(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 1312);
  *(a2 + 2) = *(a1 + 1314);
  result = *(a1 + 1330);
  *(a2 + 18) = result;
  return result;
}

BOOL sub_2337683A0(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE");
  v2 = sub_233735E3C(a1 + 1232, __p);
  v3 = v2;
  if (a1 + 1240 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 56);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1240 == v3)
  {
    sub_23372A488(__p, "EmbeddedThumbnail:IFD0:EXIF:MAKERNOTE");
    v6 = sub_233735E3C(a1 + 1232, __p);
    v7 = v6;
    if (v3 != v6)
    {
      v4 = *(v6 + 56);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    return v3 != v7 && v4 == 2;
  }

  else
  {
    return v4 == 2;
  }
}

void sub_233768470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233768490(_DWORD *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = &v18;
  (*(*a1 + 216))(&v18);
  v5 = v20;
  v6 = v20;
  v7 = v18;
  v8 = v19;
  if ((v20 & 0x80u) == 0)
  {
    v9 = &v18 + v20;
  }

  else
  {
    v9 = v18 + v19;
  }

  if ((v20 & 0x80u) != 0)
  {
    v4 = v18;
  }

  if (v4 != v9)
  {
    do
    {
      *v4 = __toupper(*v4);
      ++v4;
    }

    while (v4 != v9);
    v5 = v20;
    v7 = v18;
    v8 = v19;
    v6 = v20;
  }

  if ((v6 & 0x80u) == 0)
  {
    v10 = &v18;
  }

  else
  {
    v10 = v7;
  }

  if ((v6 & 0x80u) != 0)
  {
    v5 = v8;
  }

  if (v5 >= 5)
  {
    v11 = v10 + v5;
    v12 = v10;
    do
    {
      v13 = memchr(v12, 76, v5 - 4);
      if (!v13)
      {
        break;
      }

      if (*v13 == 1128875340 && v13[4] == 65)
      {
        if (v13 == v11 || v13 - v10 == -1)
        {
          break;
        }

        if (a1[295] >= 0x30000u)
        {
          v15 = "rwl";
        }

        else
        {
          v15 = "raw";
        }

        sub_23372A488(&__p, v15);
        sub_233735478(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_23372A488(&__p, "leica");
        sub_233735478(a2, &__p);
        goto LABEL_37;
      }

      v12 = (v13 + 1);
      v5 = v11 - v12;
    }

    while (v11 - v12 >= 5);
  }

  if (a1[295] >= 0x30000u)
  {
    v16 = "rw2";
  }

  else
  {
    v16 = "raw";
  }

  sub_23372A488(&__p, v16);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "panasonic");
  sub_233735478(a2, &__p);
LABEL_37:
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

  if (v20 < 0)
  {
    operator delete(v18);
  }
}

void sub_2337686C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_233735AD4(&a15);
  _Unwind_Resume(a1);
}

void sub_23376875C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1216))
  {
    *a2 = 0;
    a2[1] = 0;
    if ((*(a1 + 1224) & 1) == 0)
    {
      v3 = *(a1 + 1212);
      if ((v3 - 34826) <= 4 && ((1 << (v3 - 10)) & 0x15) != 0)
      {
        sub_23372A488(__p, "D-LUX2");
        sub_23372A488(v14, "D-LUX 3");
        sub_23372A488(v15, "DIGILUX 3");
        sub_23372A488(v16, "DMC-L1");
        sub_23372A488(v17, "DMC-LX1");
        sub_23372A488(v18, "DMC-LX2");
        sub_233769590(&v9, __p, 6);
        v5 = 0;
        while (1)
        {
          if (v18[v5 + 23] < 0)
          {
            operator delete(*&v18[v5]);
          }

          v5 -= 24;
          if (v5 == -144)
          {
            (*(*a1 + 224))(__p, a1);
            v6 = sub_233735E3C(&v9, __p);
            if (v13 < 0)
            {
              operator delete(__p[0]);
            }

            if (&v10 != v6)
            {
              (*(*a1 + 384))(&v8, a1);
              (*(*a1 + 424))(a1);
              (*(*a1 + 504))(a1);
              sub_2337698DC();
            }

            (*(*a1 + 384))(&v8, a1);
            (*(*a1 + 424))(a1);
            sub_233769AB0();
          }
        }
      }

      if (v3 == 34316)
      {
        (*(*a1 + 384))(&v9, a1);
        v8 = (*(*a1 + 424))(a1);
        sub_2337693AC();
      }

      NSLog(&cfstr_D_0.isa, *(a1 + 1212));
      return;
    }
  }

  else
  {
    if ((*(a1 + 1224) & 1) == 0)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    *a2 = 0;
    a2[1] = 0;
  }

  v7 = *(a1 + 1220);
  if (v7 <= 5)
  {
    if (v7 == 4)
    {
      (*(*a1 + 384))(&v9, a1);
      v8 = (*(*a1 + 424))(a1);
      if (*(a1 + 1224))
      {
        v11 = 1;
        (*(*a1 + 520))(a1);
        sub_233769C6C();
      }

      sub_233728FA8();
    }

    if (v7 == 5)
    {
      (*(*a1 + 384))(&v9, a1);
      v8 = (*(*a1 + 424))(a1);
      sub_233769FA8();
    }
  }

  else
  {
    switch(v7)
    {
      case 8:
        (*(*a1 + 384))(&v9, a1);
        v8 = (*(*a1 + 424))(a1);
        sub_23376A0D0();
      case 7:
        (*(*a1 + 384))(&v9, a1);
        v8 = (*(*a1 + 424))(a1);
        sub_233769DD4();
      case 6:
        (*(*a1 + 384))(&v9, a1);
        v8 = (*(*a1 + 424))(a1);
        if (*(a1 + 1224))
        {
          v11 = 0;
          (*(*a1 + 520))(a1);
          sub_233769C6C();
        }

        sub_233728FA8();
    }
  }
}

void sub_233768F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_23376903C(uint64_t a1)
{
  sub_2337691A0(a1);

  JUMPOUT(0x2383ABF10);
}

__n128 sub_233769074(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_2337690C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_233726290(result, a4);
  }

  return result;
}

void sub_233769120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_23376913C(_DWORD *result, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = __OFADD__(*result, v2);
  *result += v2;
  if (v3)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_2337691A0(uint64_t a1)
{
  *a1 = &unk_284906620;
  sub_233729E40(a1 + 1376);
  sub_233735DD8(a1 + 1232, *(a1 + 1240));

  return sub_2337557B4(a1);
}

void *sub_2337692A8(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284906970;
  sub_233765798((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_233769330(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284906970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233769460(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, int *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849069C0;
  v7 = *a6;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_284922BE0;
  *(a1 + 212) = v7;
  *(a1 + 216) = 1;
  *(a1 + 220) = 12;
  return a1;
}

void sub_233769514(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849069C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233769590(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_233769614(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

void *sub_233769614(void *a1, uint64_t a2, void **a3)
{
  result = *sub_233769698(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_23376982C();
  }

  return result;
}

void **sub_233769698(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (sub_233735EBC(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((sub_233735EBC(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_233735EBC((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((sub_233735EBC(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_233757640(a1, a3, a5);
}

void sub_2337698C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_233757780(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_233769990(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, int *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284906A10;
  v7 = *a6;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28490B498;
  *(a1 + 212) = v7;
  return a1;
}

void sub_233769A34(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284906A10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233769B54(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284906A60;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_28490B3A8;
  return a1;
}

void sub_233769BF0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284906A60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233769D38(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, int *a6, char *a7, int *a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849069C0;
  v9 = *a6;
  v10 = *a7;
  v11 = *a8;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_284922BE0;
  *(a1 + 212) = v9;
  *(a1 + 216) = v10;
  *(a1 + 220) = v11;
  return a1;
}

uint64_t sub_233769E88(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, char *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284906AB0;
  v7 = *a6;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28492DBB0;
  *(a1 + 211) = v7;
  return a1;
}

void sub_233769F2C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284906AB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23376A04C(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284906AB0;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28492DBB0;
  *(a1 + 211) = 1;
  return a1;
}

void *sub_23376A188(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284906B00;
  sub_23376A284((a1 + 3), a2, *a3, a4, a5, a6);
  return a1;
}

void sub_23376A208(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284906B00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23376A284(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5, uint64_t a6)
{
  v9 = sub_2337AD9D8(a1, a2, a3, a4, a5);
  *v9 = &unk_284902978;
  sub_23376A318((v9 + 24), a6);
  *(a1 + 512) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = *a4;
  *(a1 + 131656) = 0;
  return a1;
}

uint64_t sub_23376A318(uint64_t a1, uint64_t a2)
{
  v4 = sub_23376A4E8(a1, a2);
  sub_23376A58C(v4 + 32, a2 + 32);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 64) = v5;
  sub_23376A58C(a1 + 88, a2 + 88);
  sub_23376A58C(a1 + 120, a2 + 120);
  v6 = *(a2 + 152);
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 152) = v6;
  sub_23376A630(a1 + 160, a2 + 160);
  sub_23376A58C(a1 + 192, a2 + 192);
  sub_23376A630(a1 + 224, a2 + 224);
  sub_23376A58C(a1 + 256, a2 + 256);
  sub_23376A58C(a1 + 288, a2 + 288);
  return a1;
}

void sub_23376A3C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 280) == 1)
  {
    v3 = *(v1 + 256);
    if (v3)
    {
      *(v1 + 264) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 248) == 1)
  {
    v4 = *(v1 + 224);
    if (v4)
    {
      *(v1 + 232) = v4;
      operator delete(v4);
    }
  }

  if (*(v1 + 216) == 1)
  {
    v5 = *(v1 + 192);
    if (v5)
    {
      *(v1 + 200) = v5;
      operator delete(v5);
    }
  }

  if (*(v1 + 184) == 1)
  {
    v6 = *(v1 + 160);
    if (v6)
    {
      *(v1 + 168) = v6;
      operator delete(v6);
    }
  }

  if (*(v1 + 144) == 1)
  {
    v7 = *(v1 + 120);
    if (v7)
    {
      *(v1 + 128) = v7;
      operator delete(v7);
    }
  }

  if (*(v1 + 112) == 1)
  {
    v8 = *(v1 + 88);
    if (v8)
    {
      *(v1 + 96) = v8;
      operator delete(v8);
    }
  }

  if (*(v1 + 56) == 1)
  {
    v9 = *(v1 + 32);
    if (v9)
    {
      *(v1 + 40) = v9;
      operator delete(v9);
    }
  }

  if (*(v1 + 24) == 1)
  {
    v10 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v10;
      operator delete(v10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23376A4E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_23376A538(a1, a2);
  return a1;
}

void sub_23376A518(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_2338F9818(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23376A538(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_233729070(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_23376A58C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_23376A5DC(a1, a2);
  return a1;
}

void sub_23376A5BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_2338F9818(v1);
  }

  _Unwind_Resume(exception_object);
}