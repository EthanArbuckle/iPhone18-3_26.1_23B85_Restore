void sub_2337D251C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a27)
  {
    sub_2337239E8(a27);
  }

  if (a29)
  {
    sub_2337239E8(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t (***sub_2337D260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void)
{
  result = sub_233738EC8(*(a1 + 32));
  if (result)
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 296);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3321888768;
    v18[2] = sub_2337D26FC;
    v18[3] = &unk_284910198;
    v17 = *(a1 + 40);
    v18[4] = v15;
    v19 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a2;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v25 = a3;
    dispatch_sync(v16, v18);
    if (v19)
    {
      sub_2337239E8(v19);
    }

    return sub_233738EB8(*(a1 + 32));
  }

  return result;
}

uint64_t sub_2337D26FC(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[9];
  v5 = a1[10];
  sub_2337D38E8(&v7, a1[7], a1[8]);
  sub_2337D38E8(&v8, v4, v5);
  return (*(*v2 + 368))(v2, v3, &v7, a1[11]);
}

void sub_2337D279C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337D2784);
}

uint64_t sub_2337D27A8(uint64_t result, uint64_t a2)
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

void sub_2337D27C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2337239E8(v1);
  }
}

id sub_2337D27D4(void *a1)
{
  v21[3] = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_2337269FC(&v16, a1 + 1);
  sub_2337D2AD8(&v16, &v18);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_2337D2B5C;
  v14[3] = &unk_2849101F8;
  v14[4] = v18;
  v15 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = MEMORY[0x2383AC810](v14);
  (*(*a1 + 432))(a1);
  v4 = v3;
  v5 = objc_alloc(MEMORY[0x277CBF758]);
  v6 = sub_2338F28E4();
  v7 = *MEMORY[0x277CBFA78];
  v20[0] = *MEMORY[0x277CBFA88];
  v20[1] = v7;
  v21[0] = &unk_284957B38;
  v21[1] = @"CRawImageFuji";
  v20[2] = *MEMORY[0x277CBFA00];
  v21[2] = MEMORY[0x277CBEC38];
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v21, v20, 3);
  v11 = objc_msgSend_initWithImageProvider_width_height_format_colorSpace_options_(v5, v10, v2, v4, v4 >> 32, *MEMORY[0x277CBF9D8], v6, v9);

  if (v15)
  {
    sub_2337239E8(v15);
  }

  if (v19)
  {
    sub_2337239E8(v19);
  }

  return v11;
}

void sub_2337D2A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15)
  {
    sub_2337239E8(a15);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  _Unwind_Resume(a1);
}

void *sub_2337D2AD8@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284904BA8, &unk_284918550, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_2337D2E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46)
{
  MEMORY[0x2383ABEF0](v46, 0x1000C80BDFB0063);
  if (a42)
  {
    sub_2337239E8(a42);
  }

  if (a46)
  {
    sub_2337239E8(a46);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337D2E4CLL);
}

uint64_t sub_2337D2F40(uint64_t result, uint64_t a2)
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

void sub_2337D2F5C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2337239E8(v1);
  }
}

id sub_2337D2F6C(void *a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (sub_233739B84(a1))
  {
    v5 = sub_233739B84(a1);
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_233739B8C(a1);
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 160))(&v30, a1);
  v7 = (*(*v30 + 544))(v30);
  if (v31)
  {
    sub_2337239E8(v31);
  }

  if (!v7)
  {
    v8 = sub_2337269FC(&v35, a1 + 1);
    sub_2337D2AD8(v8, &v30);
    if (v36)
    {
      sub_2337239E8(v36);
    }

    if (v30)
    {
      sub_2337D27D4(a1);
    }

    else
    {
      sub_2337D1FFC(a1);
    }
    v7 = ;
    if (v31)
    {
      sub_2337239E8(v31);
    }
  }

  v9 = (*(*a1 + 2752))(a1, v5);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_2337D3594;
  v34[3] = &unk_2789EEFE0;
  v34[4] = a1;
  v10 = MEMORY[0x2383AC810](v34);
  (*(*a1 + 160))(&v35, a1);
  (*(*v35 + 608))(&v30);
  v11 = sub_2337243C8(0, v9, v5, v6, &v30, v10);
  v37[0] = v33;
  sub_233723948(v37);
  v37[0] = v32;
  sub_233723948(v37);
  v37[0] = &v30;
  sub_233723948(v37);
  if (v36)
  {
    sub_2337239E8(v36);
  }

  (*(*a1 + 528))(a1);
  v15 = objc_msgSend_rcApplyFilters_withScaleFactor_(v7, v12, v11, v13, v14);

  if (sub_233739B94(a1))
  {
    (*(*a1 + 160))(&v35, a1);
    (*(*v35 + 608))(&v30);
    v16 = sub_2337243C8(1, v9, v5, v6, &v30, v10);

    v37[0] = v33;
    sub_233723948(v37);
    v37[0] = v32;
    sub_233723948(v37);
    v37[0] = &v30;
    sub_233723948(v37);
    if (v36)
    {
      sub_2337239E8(v36);
    }

    (*(*a1 + 528))(a1);
    v20 = objc_msgSend_rcApplyFilters_withScaleFactor_(v15, v17, v16, v18, v19);

    v11 = v16;
    v21 = v20;
  }

  else
  {
    v21 = v15;
  }

  if (sub_233739B84(a1) && !sub_233739B94(a1))
  {
    v26 = v21;
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = sub_233739BB4(a1);
    v26 = objc_msgSend_imageByTaggingWithColorSpace_(v21, v23, v22, v24, v25);

    if (!a2)
    {
      goto LABEL_31;
    }
  }

  (*(*a1 + 160))(&v30, a1);
  sub_2337269FC(&v28, a1 + 1);
  sub_23387546C(&v30, &v28);
  if (v29)
  {
    sub_2337239E8(v29);
  }

  if (v31)
  {
    sub_2337239E8(v31);
  }

LABEL_31:

  objc_autoreleasePoolPop(v4);

  return v26;
}

void sub_2337D34A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_2337D3594(uint64_t a1)
{
  v1 = (*(**(a1 + 32) + 616))(*(a1 + 32));

  return v1;
}

void *sub_2337D35EC(void *a1)
{
  *a1 = &unk_284910238;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[23];
  if (v4)
  {
    a1[24] = v4;
    operator delete(v4);
  }

  v5 = a1[19];
  if (v5)
  {
    a1[20] = v5;
    operator delete(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    a1[16] = v6;
    operator delete(v6);
  }

  v7 = a1[11];
  if (v7)
  {
    a1[12] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    a1[4] = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_2337D36AC(void *a1)
{
  sub_2337D35EC(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337D36E4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 120;
        v6 = (v3 - 24);
        sub_2337A6DEC(&v6);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_2337D3760(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_23377FC04(result, a4);
  }

  return result;
}

void sub_2337D37B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337D37D4(void *result, unint64_t a2)
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

void sub_2337D38CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_2337D38E8(_DWORD *a1, unint64_t a2, unint64_t a3)
{
  v6 = a3;
  v7 = a2;
  sub_233723B40(&v5, &v7);
  *a1 = v5;
  sub_233723B40(&v5, &v6);
  a1[1] = v5;
  return a1;
}

void sub_2337D3940(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(sub_2337595BC() + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_233758444(v2);
}

void sub_2337D39DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

void sub_2337D39F8()
{
  v0 = sub_2337595BC();
  v3 = *v1;
  v2 = v1[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = v0[1];
  *v0 = v3;
  v0[1] = v2;
  if (v4)
  {

    sub_2337239E8(v4);
  }
}

void *sub_2337D3A50(void *a1)
{
  v2 = *(*a1 + 40);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2337D39F8();
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

id sub_2337D3AB8(uint64_t *a1)
{
  v5 = sub_233755CB8(0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = v6;
      if (*(v6 + 23) < 0)
      {
        v8 = *v6;
      }

      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, v8, v3, v4);
      objc_msgSend_addObject_(v5, v10, v9, v11, v12);

      v6 += 24;
    }

    while (v6 != v7);
  }

  v13 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v2, v5, v3, v4);

  return v13;
}

void *sub_2337D3BA8(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void sub_2337D3C9C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284910268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337D3D18(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithBool_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2337D3D64(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D82798], &unk_2339061B8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2337D3DB0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2337D3DB0;
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
    *a3 = sub_2337D3DB0;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D82798];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D82798]);
  }

  else
  {
    v6 = a5 == &unk_2339061B8;
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

uint64_t sub_2337D3E78(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2337D3EC4(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849102B8, &unk_23390621C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2337D3F10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2337D3F10;
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
    *a3 = sub_2337D3F10;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849102B8;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849102B8);
  }

  else
  {
    v6 = a5 == &unk_23390621C;
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

uint64_t sub_2337D3FD8(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2337D4024(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849102C8, &unk_233906234);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2337D4070(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2337D4070;
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
    *a3 = sub_2337D4070;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849102C8;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849102C8);
  }

  else
  {
    v6 = a5 == &unk_233906234;
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

uint64_t sub_2337D4138(uint64_t a1)
{
  if ((*(*a1 + 176))(a1) && ((*(*a1 + 824))(a1) & 1) == 0)
  {
    v2 = *(*a1 + 832);
    v3 = a1;
  }

  else
  {
    v2 = *(*a1 + 840);
    v3 = a1;
  }

  return v2(v3);
}

uint64_t sub_2337D4260(uint64_t *a1)
{
  v2 = (*(*a1 + 176))(a1);
  v3 = *a1;
  if (v2)
  {
    v4 = *(v3 + 872);
    v5 = a1;
  }

  else
  {
    v4 = *(v3 + 880);
    v5 = a1;
  }

  return v4(v5);
}

uint64_t sub_2337D4320(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 512))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2337D43BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337D4484(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return *(a1 + 64);
  }

  v3 = (*(*a1 + 816))(a1);
  v2 = 65535.0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      (*(*a1 + 400))(&v22, a1);
      if (v22)
      {
        v8 = (*(*a1 + 864))(a1);
        v9 = (*(*a1 + 888))(a1);
        v10 = (*(*a1 + 120))(a1);
        v11 = v8 - 5;
        v12 = v22;
        if (v10 > 2)
        {
          v18 = *(v22 + 48);
          v17 = *(v22 + 52);
          *&v26 = 0;
          sub_2337238F0(&v26 + 2, v17, v18);
          v21 = v26;
          v19 = sub_2337B0A18(v12, &v21, v9, v11);
          if ((*(a1 + 72) & 1) == 0)
          {
            *(a1 + 72) = 1;
          }

          v2 = v19;
        }

        else
        {
          v14 = *(v22 + 48);
          v13 = *(v22 + 52);
          *&v26 = 0;
          sub_2337238F0(&v26 + 2, v13, v14);
          v21 = v26;
          v15 = sub_2337B08FC(v12, &v21, v11);
          if (v9 <= v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = v9;
          }

          if ((*(a1 + 72) & 1) == 0)
          {
            *(a1 + 72) = 1;
          }

          v2 = v16;
        }

        *(a1 + 64) = v2;
      }

      else
      {
        v2 = 65535.0;
      }

      if (v23)
      {
        sub_2337239E8(v23);
      }
    }

    else if (v3 == 4)
    {
      return (*(*a1 + 864))(a1);
    }
  }

  else if ((v3 - 1) >= 2)
  {
    if (!v3)
    {
      sub_2338FBB08(a1, a1 & 0xFFFFFFFFFFFFLL | 0xC2E4000000000000, &v26);
      return *&v26;
    }
  }

  else
  {
    (*(*a1 + 400))(&v24, a1);
    if (v25)
    {
      sub_2337239E8(v25);
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = sub_2337AED00(v4);
      v6 = (*(*a1 + 888))(a1);
      if (v6 <= v5)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }
  }

  return v2;
}

void sub_2337D479C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337D47EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 896))(a1);
  return sub_233731694(a2, 4uLL);
}

uint64_t sub_2337D48BC(uint64_t a1)
{
  v2 = (*(*a1 + 896))(a1);
  (*(*a1 + 1016))(&v6, a1);
  if (v7 - v6 == 32)
  {
    v3 = llround(v2) - llround(fmax(*v6, fmax(v6[1], fmax(v6[2], v6[3]))));
    if (v3 >= 0xFFFF)
    {
      v4 = -1;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
    if (!v6)
    {
      return v4;
    }
  }

  v7 = v6;
  operator delete(v6);
  return v4;
}

void sub_2337D49B0(uint64_t a1)
{
  if ((*(*a1 + 176))(a1) && (*(*a1 + 208))(a1))
  {
    (*(*a1 + 160))(&v3, a1);
    (*(*v3 + 352))();
    goto LABEL_6;
  }

  if ((*(*a1 + 128))(a1))
  {
    (*(*a1 + 160))(&v3, a1);
    (*(*v3 + 352))();
LABEL_6:
    if (v4)
    {
      sub_2337239E8(v4);
    }

    return;
  }

  v2 = *(*a1 + 1712);

  v2(a1);
}

void sub_2337D4B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D4BE8(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = *(*a1 + 968);

  return v2(a1);
}

void sub_2337D4CC8(uint64_t a1)
{
  (*(*a1 + 160))(&v1);
  (*(*v1 + 256))();
  if (v2)
  {
    sub_2337239E8(v2);
  }
}

void sub_2337D4D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D4D80(void *a1@<X0>, void **a2@<X8>)
{
  if ((*(*a1 + 120))(a1) <= 6 && (*(*a1 + 120))(a1) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *&v56[0] = 0;
  sub_233731694(a2, 4uLL);
  v4 = (*(*a1 + 960))(a1);
  if (v4 <= 9)
  {
    if ((v4 - 1) >= 9)
    {
      if (v4)
      {
        goto LABEL_35;
      }
    }

    else
    {
      (*(*a1 + 2144))(a1);
      v5 = a1[15];
      v6 = a1[16];
      v7 = v6 - v5;
      if (v6 != v5)
      {
        if ((v7 >> 3) >= 4 && a1 + 15 != a2)
        {
          sub_23373176C(a2, v5, v6, v7 >> 3);
        }

        goto LABEL_35;
      }
    }

    (*(*a1 + 1128))(v56, a1);
    v13 = *&v56[0];
    if (*(&v56[0] + 1) - *&v56[0] <= 7uLL)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    LOWORD(v14) = **&v56[0];
    v15 = v14;
    v16 = *a2;
    *v16 = v15;
    LOWORD(v15) = v13[1];
    v17 = *&v15;
    v16[1] = v17;
    LOWORD(v17) = v13[2];
    v18 = *&v17;
    v16[2] = v18;
    LOWORD(v18) = v13[3];
    v16[3] = *&v18;
    goto LABEL_33;
  }

  if (v4 <= 12)
  {
    if ((v4 - 10) >= 2)
    {
      if (v4 == 12)
      {
        sub_2337D4CC8(a1);
        v9 = *a2;
        if (*a2)
        {
          a2[1] = v9;
          operator delete(v9);
        }

        *a2 = v56[0];
        a2[2] = *&v56[1];
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (v4 == 13)
  {
LABEL_25:
    (*(*a1 + 1000))(v56, a1);
    v12 = *&v56[0];
    if (*(&v56[0] + 1) - *&v56[0] == 32 && v56 != a2)
    {
      sub_23373176C(a2, *&v56[0], *(&v56[0] + 1), 4uLL);
      v12 = *&v56[0];
    }

    if (v12)
    {
      *(&v56[0] + 1) = v12;
      v13 = v12;
LABEL_34:
      operator delete(v13);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (v4 == 14)
  {
    if ((*(*a1 + 120))(a1) > 6)
    {
      (*(*a1 + 1032))(&__p, a1);
      v27 = __p;
      v28 = (*(*a1 + 256))(a1);
      (*(*a1 + 264))(a1);
      (**v27)(v56, v27, v28);
      v29 = *a2;
      if (*a2)
      {
        a2[1] = v29;
        operator delete(v29);
      }

      v30 = *&v56[0];
      *a2 = *&v56[0];
      v31 = *(&v56[0] + 1);
      *(a2 + 1) = *(v56 + 8);
      memset(v56, 0, 24);
      if (v55)
      {
        sub_2337239E8(v55);
        v30 = *a2;
        v32 = a2[1];
      }

      else
      {
        v32 = v31;
      }

      if (v32 - v30 == 32)
      {
        goto LABEL_35;
      }

      v51 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v51, "RawCameraException");
LABEL_80:
      __cxa_throw(v51, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

LABEL_79:
    v51 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v51, "RawCameraException");
    goto LABEL_80;
  }

  if (v4 != 15)
  {
    goto LABEL_35;
  }

  if ((*(*a1 + 120))(a1) <= 6)
  {
    goto LABEL_79;
  }

  (*(*a1 + 1032))(&__p, a1);
  v10 = __p;
  v11 = (*(*a1 + 256))(a1);
  (*(*a1 + 264))(a1);
  (**v10)(v56, v10, v11);
  if (v55)
  {
    sub_2337239E8(v55);
  }

  if ((*(*a1 + 176))(a1))
  {
    sub_2337D4CC8(a1);
  }

  else
  {
    (*(*a1 + 1000))(&__p, a1);
  }

  if (*(&v56[0] + 1) - *&v56[0] != 32 || (v33 = __p, v34 = v55, v55 - __p != 32))
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v53, "RawCameraException");
    __cxa_throw(v53, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v35 = *(*&v56[0] + 16);
  v36 = *(__p + 2);
  v37 = *(__p + 1);
  v38 = **&v56[0];
  v39 = v37 > vmuld_lane_f64(0.75, **&v56[0], 1);
  v40.f64[0] = v35;
  v40.f64[1] = **&v56[0];
  __asm { FMOV            V7.2D, #1.25 }

  v45.f64[0] = v36;
  v45.f64[1] = *__p;
  v46 = vmulq_f64(v40, xmmword_233906250);
  *&_Q7.f64[0] = vmovn_s32(vuzp1q_s32(vcgtq_f64(vmulq_f64(**&v56[0], _Q7), *__p), vcgtq_f64(v46, v45)));
  HIWORD(_Q7.f64[0]) = vuzp1_s16(*__p, vmovn_s64(vcgtq_f64(v45, v46))).i16[3];
  if ((vminv_u16(*&_Q7.f64[0]) & 1) == 0 || !v39 || v36 <= v35 * 0.75 || (v47 = *(__p + 3), v48 = *(*&v56[0] + 24), v47 <= v48 * 0.75) || v47 >= v48 * 1.25 || (v49 = (v37 + v36) * 0.5, v50 = (*(&v38 + 1) + v35) * 0.5, (*__p - v49) * (*&v38 - v50) < 0.0) || (v47 - v49) * (v48 - v50) < 0.0)
  {
    if (&__p == a2)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v34 = *(&v56[0] + 1);
  v33 = *&v56[0];
  if (v56 != a2)
  {
LABEL_67:
    sub_23373176C(a2, v33, v34, 4uLL);
  }

LABEL_68:
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  v13 = *&v56[0];
  if (*&v56[0])
  {
LABEL_33:
    *(&v56[0] + 1) = v13;
    goto LABEL_34;
  }

LABEL_35:
  if ((*(*a1 + 120))(a1) <= 2)
  {
    v19 = *a2;
    v20 = a2[1];
    while (v19 != v20)
    {
      *v19 = round(*v19);
      ++v19;
    }
  }

  (*(*a1 + 1072))(v56, a1);
  v21 = *&v56[0];
  v22 = *a2;
  if (*(&v56[0] + 1) - *&v56[0] == a2[1] - *a2 && *(&v56[0] + 1) != *&v56[0])
  {
    v24 = (*(&v56[0] + 1) - *&v56[0]) >> 3;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v25 = *&v56[0];
    do
    {
      v26 = *v25++;
      *v22 = v26 * *v22;
      ++v22;
      --v24;
    }

    while (v24);
    goto LABEL_50;
  }

  if (*&v56[0])
  {
LABEL_50:
    *(&v56[0] + 1) = v21;
    operator delete(v21);
  }
}

void sub_2337D5640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D5774@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 960))(a1);
  if ((result - 1) > 8 || (result = (*(*a1 + 2144))(a1), v5 = a1[18], v6 = a1[19], v6 == v5))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;

    return sub_2337236E0(a2, v5, v6, (v6 - v5) >> 3);
  }

  return result;
}

void sub_2337D5880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D5934(uint64_t a1)
{
  if ((*(*a1 + 2104))(a1))
  {
    return (*(*a1 + 1064))(a1) ^ 1;
  }

  else
  {
    return 1;
  }
}

BOOL sub_2337D59C0(uint64_t a1)
{
  (*(*a1 + 1024))(&v4);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v2 - v1 == 32;
}

double sub_2337D5A68(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return 5.0;
}

void sub_2337D5AE8(uint64_t a1@<X0>, double **a2@<X8>)
{
  if (((*(*a1 + 1064))(a1) & 1) == 0)
  {
    __p[0] = 0xBFF0000000000000;
LABEL_11:
    sub_233731694(a2, 4uLL);
    return;
  }

  if (!(*(*a1 + 1056))(a1))
  {
    __p[0] = COERCE_VOID_((*(*a1 + 2080))(a1));
    goto LABEL_11;
  }

  (*(*a1 + 1024))(__p, a1);
  sub_233730758(a2, 4uLL);
  (*(*a1 + 744))(&v15, a1);
  v4 = v15;
  v5 = v16 - v15;
  if (v16 == v15)
  {
    goto LABEL_23;
  }

  v6 = __p[0];
  v7 = *a2;
  **a2 = *v15 * 0.00305175781 * *__p[0];
  if (v5 < 9)
  {
    goto LABEL_23;
  }

  v7[1] = v4[1] * 0.00305175781 * v6[1];
  if (v5 == 16)
  {
    goto LABEL_23;
  }

  v7[2] = v4[2] * 0.00305175781 * v6[2];
  v8 = (*(*a1 + 120))(a1);
  v9 = v15;
  v10 = v16 - v15;
  if (v8 > 2)
  {
    v12 = v10 >> 3;
    v13 = 3;
    if (v12 <= 3)
    {
      v13 = 1;
    }

    if (v12 > v13)
    {
      v11 = &v15[v13];
      goto LABEL_17;
    }

LABEL_23:
    sub_2337306B0();
  }

  if (v10 >= 0x19)
  {
    v11 = v15 + 3;
LABEL_17:
    (*a2)[3] = *v11 * 0.00305175781 * *(__p[0] + 3);
LABEL_18:
    v16 = v9;
    operator delete(v9);
    v14 = __p[0];
    goto LABEL_19;
  }

  v14 = __p[0];
  (*a2)[3] = *(__p[0] + 3) * 0.00305175781;
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v14)
  {
    __p[1] = v14;
    operator delete(v14);
  }
}

void sub_2337D5D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337D5DD8(uint64_t a1)
{
  (*(*a1 + 2056))(&v3);
  v1 = v3;
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1 != 0;
}

uint64_t sub_2337D5E40(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = *(*a1 + 2064);

  return v2(a1);
}

uint64_t sub_2337D5F08(uint64_t a1)
{
  (*(*a1 + 256))(a1);
  (*(*a1 + 264))(a1);
  (*(*a1 + 128))(a1);
  (*(*a1 + 1624))(a1);
  (*(*a1 + 1632))(a1);
  (*(*a1 + 1640))(a1);
  (*(*a1 + 1648))(a1);
  (*(*a1 + 1656))(a1);
  (*(*a1 + 1664))(a1);
  return (*(*a1 + 1704))(a1);
}

double sub_2337D61F8(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = -1.0;
  if ((*(*a1 + 1064))(a1))
  {
    if ((*(*a1 + 1056))(a1))
    {
      sub_2337D5AE8(a1, &__p);
      v2 = fmax(*__p, fmax(*(__p + 1), fmax(*(__p + 2), *(__p + 3))));
      v8 = __p;
      operator delete(__p);
    }

    else
    {
      (*(*a1 + 1120))(&__p, a1);
      v5 = 1;
      if (__p)
      {
        if (!sub_2337BF190(&unk_2849102D8, &unk_2849102D8))
        {
          v3 = __p;
          v4 = (*(*a1 + 256))(a1);
          (*(*a1 + 264))(a1);
          v2 = (**v3)(v3, llround(v4));
          if (v2 >= 0.0)
          {
            v5 = 0;
          }
        }
      }

      if (v8)
      {
        sub_2337239E8(v8);
      }

      if (v5)
      {
        return (*(*a1 + 2072))(a1);
      }
    }
  }

  return v2;
}

void sub_2337D6460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D6488(_BYTE *a1)
{
  if ((*(*a1 + 120))(a1) <= 6 && (*(*a1 + 120))(a1) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((a1[112] & 1) == 0)
  {
    a1[112] = 1;
    (*(*a1 + 2920))(a1);
    if ((*(*a1 + 960))(a1) < 1 || (*(*a1 + 960))(a1) > 8)
    {
      if ((*(*a1 + 960))(a1) == 9)
      {
        (*(*a1 + 1008))(a1);
        if (HIDWORD(v2))
        {
          v3 = v2 == 0;
        }

        else
        {
          v3 = 1;
        }

        if (!v3)
        {
          (*(*a1 + 1096))(a1);
        }
      }
    }

    else
    {
      (*(*a1 + 1088))(a1);
    }
  }

  return a1[112];
}

void sub_2337D66D8(void *a1)
{
  v2 = (*(*a1 + 960))(a1);
  v3 = v2 < 9;
  (*(*a1 + 384))(&v36, a1);
  if (v36)
  {
    v4 = sub_2337B0628(v36);
    v5 = (*(*a1 + 432))(a1);
    v7 = v6;
    v8 = (*(*a1 + 408))(a1);
    v9 = (v2 - 3) & 0xFFFFFFFA;
    v10 = v3 & (0x142u >> v2);
    v11 = v5 - 16;
    if (v2 != 4)
    {
      v11 = v5;
    }

    if (v10)
    {
      v12 = HIDWORD(v5);
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = HIDWORD(v5);
    }

    v14 = v9 == 0;
    if (v9)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 + v7;
    if (v14)
    {
      v17 = v11;
    }

    else
    {
      v17 = 0;
    }

    v18 = v8 - v17;
    if ((v3 & (0x1A0u >> v2)) != 0)
    {
      v18 = v16;
    }

    v19 = v8 - v18;
    v20 = v17 + v12 * v8;
    v21 = HIDWORD(v8) - v13 - (v12 + HIDWORD(v7));
    if ((v3 & (0x144u >> v2)) == 0)
    {
      v21 = 0;
    }

    v22 = v8 - v17 - v18 + v21 * v8;
    if (v20 + v19 * (HIDWORD(v7) - 1) + v22 >= 1)
    {
      v23 = *(v36 + 56);
      if (v10)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23 * HIDWORD(v5);
      }

      v25 = (v4 + 32 * (v2 == 4) + 2 * v24);
      if (v20 < 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = 0;
        do
        {
          v27 = *v25++;
          v26 += v27;
          --v20;
        }

        while (v20);
      }

      if (SHIDWORD(v7) > 1)
      {
        v28 = 0;
        v29 = v18 - v8 + v23;
        do
        {
          v25 += v29;
          if (v19 < 1)
          {
            v30 = 0;
          }

          else
          {
            LOWORD(v30) = 0;
            v31 = v19;
            do
            {
              v32 = *v25++;
              LOWORD(v30) = v32 + v30;
              --v31;
            }

            while (v31);
            v30 = v30;
          }

          v26 += v30;
          ++v28;
        }

        while (v28 != HIDWORD(v7) - 1);
      }

      if (v22 >= 1)
      {
        v33 = 0;
        v34 = &v25[v18];
        do
        {
          v26 += v34[v33++];
        }

        while (v33 < v22);
      }

      sub_233731694(v35, 4uLL);
      sub_2338FBB98(a1, v35);
    }
  }

  if (v37)
  {
    sub_2337239E8(v37);
  }
}

void sub_2337D69AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D69D0(void **a1)
{
  if ((*(*a1 + 15))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = a1 + 15;
  if (a1[16] == a1[15])
  {
    (*(*a1 + 359))(&v13, a1);
    v3 = v13;
    if (*(&v13 + 1))
    {
      sub_2337239E8(*(&v13 + 1));
    }

    if (v3)
    {
      (*(*a1 + 48))(&v17, a1);
      v4 = v17;
      if (v17)
      {
        *&v13 = (*(*a1 + 126))(a1);
        *(&v13 + 1) = v5;
        v6 = sub_2337B0DDC(v4, &v13);
        v16 = v6;
        v7 = (*(*a1 + 15))(a1);
        if (v7 <= 2)
        {
          v8 = v6;
          v6 = v8;
          v16 = v8;
        }

        v9 = v17;
        *&v13 = (*(*a1 + 126))(a1);
        *(&v13 + 1) = v10;
        v15 = sub_2337B12E8(v9, &v13, v7 < 3, v6);
        sub_233731694(&v13, 4uLL);
        v11 = *v2;
        if (*v2)
        {
          a1[16] = v11;
          operator delete(v11);
          *v2 = 0;
          a1[16] = 0;
          a1[17] = 0;
        }

        *(a1 + 15) = v13;
        a1[17] = v14;
        sub_233731694(&v13, 4uLL);
        v12 = a1[18];
        if (v12)
        {
          a1[19] = v12;
          operator delete(v12);
          a1[18] = 0;
          a1[19] = 0;
          a1[20] = 0;
        }

        *(a1 + 9) = v13;
        a1[20] = v14;
      }

      if (v18)
      {
        sub_2337239E8(v18);
      }
    }
  }
}

void sub_2337D6C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D6C78(void *a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (a1[16] == a1[15])
  {
    (*(*a1 + 2872))(&v13, a1);
    v2 = v13;
    if (v14)
    {
      sub_2337239E8(v14);
    }

    if (v2)
    {
      (*(*a1 + 384))(&v15, a1);
      v3 = v15;
      if (v15)
      {
        __p = (*(*a1 + 1008))(a1);
        v12 = v4;
        sub_2337B0EFC(v3, &__p, &v13);
        v5 = v13;
        if (v14 - v13 == 32)
        {
          if ((*(*a1 + 120))(a1) <= 2)
          {
            v6 = v13;
            v7 = vcvtq_f64_f32(vcvt_f32_f64(*(v13 + 1)));
            *v13 = vcvtq_f64_f32(vcvt_f32_f64(*v13));
            v6[1] = v7;
          }

          v8 = v15;
          v10[0] = (*(*a1 + 1008))(a1);
          v10[1] = v9;
          sub_2337B13A8(v8, v10, &v13, &__p);
          if (a1 + 15 != &v13)
          {
            sub_23373176C(a1 + 15, v13, v14, (v14 - v13) >> 3);
          }

          if (a1 + 18 != &__p)
          {
            sub_23373176C(a1 + 18, __p, v12, (v12 - __p) >> 3);
          }

          if (__p)
          {
            v12 = __p;
            operator delete(__p);
          }

          v5 = v13;
        }

        if (v5)
        {
          v14 = v5;
          operator delete(v5);
        }
      }

      if (v16)
      {
        sub_2337239E8(v16);
      }
    }
  }
}

void sub_2337D6EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337D6F44(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = (*(*a1 + 1048))(a1);
  result = -1.0;
  if ((v2 & 1) == 0)
  {
    v4 = ((*(*a1 + 2664))(a1, 0, 0, -1.0) + -0.25) * 2.2;
    v5 = 1.0;
    if (v4 <= 1.0)
    {
      v5 = v4;
    }

    v6 = v4 < 0.0;
    result = 0.0;
    if (!v6)
    {
      return v5;
    }
  }

  return result;
}

uint64_t sub_2337D7068(uint64_t a1)
{
  v2 = (*(*a1 + 1368))(a1);
  v9 = v2;
  if (v2)
  {
    (*(*a1 + 2864))(&v7, a1);
    LOBYTE(v2) = sub_23381E00C(v7, &v9, v3, v4, v5);
    v9 = v2;
    if (v8)
    {
      sub_2337239E8(v8);
      LOBYTE(v2) = v9;
    }
  }

  return v2 & 1;
}

void sub_2337D7120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D7138(uint64_t a1)
{
  if ((*(*a1 + 1224))(a1))
  {
    return 1;
  }

  if ((*(*a1 + 1048))(a1))
  {
    return 0;
  }

  result = (*(*a1 + 2104))(a1);
  if (result)
  {
    v3 = (*(*a1 + 1672))(a1);
    v4 = (*(*a1 + 1680))(a1);
    v5 = (*(*a1 + 1688))(a1);
    v6 = (*(*a1 + 256))(a1);
    v7 = (*(*a1 + 264))(a1);
    v8 = (*(*a1 + 1696))(a1);
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        return v3 < v6;
      }

      else
      {
        if (v8 != 2)
        {
          return 0;
        }

        v9 = v7;
        v10 = v4;
        return v9 > v10;
      }
    }

    else
    {
      switch(v8)
      {
        case 3:
          v11 = v7;
          v12 = v4;
          return v11 > v12 || v3 < v6;
        case 4:
          v13 = v7;
          v14 = v5;
          return v13 < v14 && v3 < v6;
        case 9:
          return 1;
        default:
          return 0;
      }
    }
  }

  return result;
}

double sub_2337D7404(uint64_t a1)
{
  v2 = (*(*a1 + 1424))(a1);
  if (((*(*a1 + 1048))(a1) & 1) == 0)
  {
    v2 = v2 + (1.0 - (*(*a1 + 2088))(a1)) * 3.0;
  }

  return fmin(fmax(v2, 0.0), 20.0);
}

void sub_2337D7520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337D7538(_DWORD *a1)
{
  (*(*a1 + 2864))(&v8);
  v7 = 0;
  v5 = (sub_23381E568(v8, &v7, v2, v3, v4) & 1) != 0 || a1[70] == 1;
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2337D75C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D75E0(uint64_t a1@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v4);
  sub_2337D76B4(&v4, &v6);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  if (v6)
  {
    v3 = sub_233786820(v6);
    if (v3 != a2)
    {
      sub_233723454(a2, *v3, v3[1], (v3[1] - *v3) >> 2);
    }
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2337D7684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337D76B4@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284905530, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_2337D7738(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&__p, a1);
    (*(*__p + 384))(&v7);
    if (v4)
    {
      sub_2337239E8(v4);
    }

    v6 = (*(*a1 + 336))(a1);
    v5 = (*(*a1 + 408))(a1);
    __p = (*(*a1 + 432))(a1);
    v4 = v2;
    sub_2337D8718();
  }
}

void sub_2337D7928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  v16 = *(v14 - 32);
  if (v16)
  {
    sub_2337239E8(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D7984(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = &unk_284910F28;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:ColorBalance1");
  (*(*a1 + 2976))(a1, a2, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337D7A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D7A68(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  sub_2337D76B4(&v3, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v5)
  {
    v1 = (*(*v5 + 800))(v5);
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v1;
}

void sub_2337D7B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337D7B34(uint64_t a1)
{
  v1 = (*(*a1 + 2992))(a1);
  result = 0.6;
  if (!v1)
  {
    return 1.0;
  }

  return result;
}

void sub_2337D7B88(uint64_t a1@<X0>, double **a2@<X8>)
{
  v4 = (*(*a1 + 3000))(a1);
  if ((*(*a1 + 2984))(a1))
  {
    v5 = (*(*a1 + 3008))(a1);
    if (v5 == 4)
    {
      (*(*a1 + 2960))(&v17, a1, v4);
      v7 = v17;
      v8 = v18;
    }

    else
    {
      if (v5 != 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v20 = &unk_284910F70;
      v21 = v4;
      (*(*a1 + 160))(&v15, a1);
      v6 = v15;
      sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:ColorBalance1");
      (*(*v6 + 600))(&v17, v6, __p, &v20, 3);
      v7 = v17;
      v8 = v18;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if (v16)
      {
        sub_2337239E8(v16);
      }
    }

    if ((v8 - v7) <= 0x10)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v11, "RawCameraException");
      __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    sub_233730758(a2, 3uLL);
    v10 = *a2;
    *v10 = v7[1] / *v7;
    v10[1] = v7[1] / v7[1];
    v10[2] = v7[1] / v7[2];
    operator delete(v7);
  }

  else
  {
    v9 = *(*a1 + 2960);

    v9(a1, v4);
  }
}

uint64_t sub_2337D7EF4(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D7FB8(v2, @"cameraMultipliersOffset", v3, &unk_2849102E8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337D7FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D7FB8(uint64_t a1, void *a2, int a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if (a1 + 32 == v9)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2337D87BC;
    v28[3] = &unk_2789EEF70;
    v12 = v8;
    v29 = v12;
    sub_23386DB28(a1, v7, v28, &p_p);
    v17 = p_p;
    if (p_p)
    {
      v18 = sub_23386FD70(p_p, v13, v14, v15, v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = objc_msgSend_longLongValue(v18, v19, v20, v21, v22);
    }

    else
    {
      v11 = 0;
    }

    if (v33)
    {
      sub_2337239E8(v33);
    }

    if (!v17)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v23 = sub_2337BEEAC(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v24 = (v23 + 56);
    v31[1] = v11;
    v31[0] = sub_2337D8854;
    if (v31 != (v23 + 56))
    {
      v25 = *v24;
      if (*v24)
      {
        p_p = 0;
        v33 = 0;
        v25(2, v24, &p_p, 0, 0);
        v31[0](2, v31, v24, 0, 0);
        (p_p)(2, &p_p, v31, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v23 + 64) = v11;
        *(v23 + 56) = sub_2337D8854;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2337D8808((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337D8294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2337D8324()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t sub_2337D8380(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D7FB8(v2, @"cameraMultipliersChannelCount", v3, &unk_284910308);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337D842C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_2337D844C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEqualToString_(v3, v4, @"aspectRatioCrop", v5, v6))
  {
    v31 = 0;
    v32 = 0;
    v10 = (*(*a1 + 432))(a1);
    v12 = v11;
    (*(*a1 + 160))(&v27, a1);
    sub_2337D76B4(&v27, &v29);
    if (v28)
    {
      sub_2337239E8(v28);
    }

    if (v29)
    {
      v10 = (*(*v29 + 792))(v29);
      v12 = v13;
    }

    v31 = v10;
    v32 = v12;
    v17 = sub_2337D891C(&v31, v13, v14, v15, v16);
    v18 = v30;
    if (!v30)
    {
      goto LABEL_17;
    }

LABEL_16:
    sub_2337239E8(v18);
    goto LABEL_17;
  }

  if (!objc_msgSend_isEqualToString_(v3, v7, @"firmwareVersion", v8, v9))
  {
    v17 = sub_233814A54(a1, v3);
    goto LABEL_17;
  }

  (*(*a1 + 160))(&v29, a1);
  sub_2337D76B4(&v29, &v31);
  if (v30)
  {
    sub_2337239E8(v30);
  }

  if (v31)
  {
    v22 = sub_23375D000(v31);
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v23, v22, v24, v25);
  }

  else
  {
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, 0, v20, v21);
  }
  v17 = ;
  v18 = v32;
  if (v32)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v17;
}

uint64_t sub_2337D8674(uint64_t a1, uint64_t a2, void **a3, unsigned int a4, uint64_t *a5)
{
  v6 = a4;
  if (a4 == 3)
  {
    a4 = 4;
  }

  v7 = sub_2337BF918(a1, a2, a3, a4, a5);
  if (v6 == 3 && v7)
  {
    sub_23372630C(&v13, 3uLL);
    v8 = *a5;
    v9 = 2 * **a5;
    v10 = v13;
    *a5 = v13;
    *v10 = v9;
    v10[1] = v8[2] + v8[1];
    v10[2] = 2 * v8[3];
    v11 = a5[2];
    a5[2] = v14;
    *(&v13 + 1) = v8;
    v14 = v11;
    *&v13 = v8;
    operator delete(v8);
  }

  return 1;
}

uint64_t sub_2337D87BC(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedShort_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2337D8808(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827E8], &unk_2339062F0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2337D8854(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2337D8854;
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
    *a3 = sub_2337D8854;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827E8];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D827E8]);
  }

  else
  {
    v6 = a5 == &unk_2339062F0;
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

id sub_2337D891C(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *a1, a4, a5);
  v23[0] = v6;
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, a1[1], v8, v9);
  v23[1] = v10;
  v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, a1[2], v12, v13);
  v23[2] = v14;
  v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, a1[3], v16, v17);
  v23[3] = v18;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v23, 4, v20);

  return v21;
}

uint64_t sub_2337D8A60(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = a1;
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284910FA0;
  *(v5 + 16) = 0u;
  v23 = v5 + 16;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  v6 = sub_233725614(*a3);
  if (v6)
  {
    v7 = 0;
    v8 = v4;
    do
    {
      __src = 0;
      v25 = 0;
      v9 = 19;
      v26 = 0;
      do
      {
        v10 = sub_23372574C(*a3);
        v11 = v25;
        if (v25 >= v26)
        {
          v13 = __src;
          v14 = v25 - __src;
          v15 = (v25 - __src) >> 3;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            sub_2337235BC();
          }

          v17 = v26 - __src;
          if ((v26 - __src) >> 2 > v16)
          {
            v16 = v17 >> 2;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            sub_233723798(&__src, v18);
          }

          *(8 * v15) = v10;
          v12 = 8 * v15 + 8;
          memcpy(0, v13, v14);
          v19 = __src;
          __src = 0;
          v25 = v12;
          v26 = 0;
          if (v19)
          {
            operator delete(v19);
          }

          v4 = v8;
        }

        else
        {
          *v25 = v10;
          v12 = (v11 + 1);
        }

        v25 = v12;
        --v9;
      }

      while (v9);
      sub_2337D8C7C(v23, &__src);
      if (__src)
      {
        v25 = __src;
        operator delete(__src);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v20 = sub_23372574C(*a3);
  v21 = sub_23372574C(*a3);
  *(v4 + 64) = v20;
  *(v4 + 72) = v21;
  *(v4 + 80) = sub_233725614(*a3);
  return v4;
}

void sub_2337D8C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11)
{
  __p = (v11 + 40);
  sub_2337A6DEC(&__p);
  __p = a9;
  sub_2337A6DEC(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2337D8C7C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_2337D9188(a1, a2);
  }

  else
  {
    sub_2337D9134(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2337D8CC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_2337236E0(a2, *v2, v2[1], (v2[1] - *v2) >> 3);
}

id sub_2337D8CE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73[6] = *MEMORY[0x277D85DE8];
  v69 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v70 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v13 = *(a1 + 16);
  for (i = *(a1 + 24); v13 != i; v13 += 3)
  {
    v72[0] = @"kr0";
    v15 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v9, v10, v11, v12, **v13);
    v73[0] = v15;
    v72[1] = @"kr1";
    v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, v18, v19, (*v13)[1]);
    v73[1] = v20;
    v72[2] = @"kr2";
    v25 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v21, v22, v23, v24, (*v13)[2]);
    v73[2] = v25;
    v72[3] = @"kr3";
    v30 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v26, v27, v28, v29, (*v13)[3]);
    v73[3] = v30;
    v72[4] = @"kt0";
    v35 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v31, v32, v33, v34, (*v13)[4]);
    v73[4] = v35;
    v72[5] = @"kt1";
    v40 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v36, v37, v38, v39, (*v13)[5]);
    v73[5] = v40;
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, v73, v72, 6);
    objc_msgSend_addObject_(v70, v43, v42, v44, v45);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v69, v9, v70, @"CoefficientSets", v12);
  v46 = *(a1 + 72);
  v51 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v47, v48, v49, v50, *(a1 + 64));
  v71[0] = v51;
  v56 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v52, v53, v54, v55, v46);
  v71[1] = v56;
  v59 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, v71, 2, v58);
  objc_msgSend_setObject_forKeyedSubscript_(v69, v60, v59, @"NormalizedCenter", v61);

  v62 = [RAWOpcodeWarpRectilinear alloc];
  v66 = objc_msgSend_initWithArguments_(v62, v63, v69, v64, v65);

  return v66;
}

uint64_t sub_2337D9048(uint64_t a1)
{
  *a1 = &unk_284910FA0;
  v2 = (a1 + 16);
  v4 = (a1 + 40);
  sub_2337A6DEC(&v4);
  v4 = v2;
  sub_2337A6DEC(&v4);
  return a1;
}

uint64_t sub_2337D90B0(uint64_t a1)
{
  *a1 = &unk_284910FA0;
  v2 = (a1 + 16);
  v4 = (a1 + 40);
  sub_2337A6DEC(&v4);
  v4 = v2;
  sub_2337A6DEC(&v4);
  return MEMORY[0x2383ABF10](a1, 0x10A1C40FFDD1797);
}

uint64_t sub_2337D9134(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_2337236E0(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_2337D9188(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2337235BC();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_2337A6910(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_2337236E0(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_2337A6968(&v14);
  return v8;
}

void sub_2337D92A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2337A6968(va);
  _Unwind_Resume(a1);
}

void sub_2337D9474(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2337D9B50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2337D9B6C(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWRadialLensCorrection", &unk_233945DBE, v5, 2u);
  }
}

double sub_2337D9BF4(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    return 0.0;
  }

  else
  {
    return sub_2337D9C38(*(a1 + 32), a3, a4, a5, a6, *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60));
  }
}

double sub_2337D9C38(void *a1, double a2, double a3, double a4, double a5, float a6, float a7, float a8, float a9)
{
  v13 = a1;
  v15 = *MEMORY[0x277CBF398];
  v14 = *(MEMORY[0x277CBF398] + 8);
  v17 = *(MEMORY[0x277CBF398] + 16);
  v16 = *(MEMORY[0x277CBF398] + 24);
  v42 = a2;
  v39 = a3 + a5;
  v40 = a5;
  v38 = a2 + a4;
  v18 = 0.0;
  v19 = 0.0;
  do
  {
    v55.origin.x = sub_2337DAB80(v13, v42 + a4 * v19, a3, a6, a7, a8, a9);
    v55.origin.y = v20;
    v55.size.width = 0.0;
    v55.size.height = 0.0;
    v46.origin.x = v15;
    v46.origin.y = v14;
    v46.size.width = v17;
    v46.size.height = v16;
    v47 = CGRectUnion(v46, v55);
    x = v47.origin.x;
    y = v47.origin.y;
    width = v47.size.width;
    height = v47.size.height;
    v56.origin.x = sub_2337DAB80(v13, v42 + a4 * (1.0 - v19), v39, a6, a7, a8, a9);
    v56.origin.y = v25;
    v56.size.width = 0.0;
    v56.size.height = 0.0;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v49 = CGRectUnion(v48, v56);
    v26 = v49.origin.x;
    v27 = v49.origin.y;
    v28 = v49.size.width;
    v29 = v49.size.height;
    v57.origin.x = sub_2337DAB80(v13, v42, a3 + v40 * (1.0 - v19), a6, a7, a8, a9);
    v57.origin.y = v30;
    v57.size.width = 0.0;
    v57.size.height = 0.0;
    v50.origin.x = v26;
    v50.origin.y = v27;
    v50.size.width = v28;
    v50.size.height = v29;
    v51 = CGRectUnion(v50, v57);
    v31 = v51.origin.x;
    v32 = v51.origin.y;
    v33 = v51.size.width;
    v34 = v51.size.height;
    v58.origin.x = sub_2337DAB80(v13, v38, a3 + v40 * v19, a6, a7, a8, a9);
    v58.origin.y = v35;
    v58.size.width = 0.0;
    v58.size.height = 0.0;
    v52.origin.x = v31;
    v52.origin.y = v32;
    v52.size.width = v33;
    v52.size.height = v34;
    v53 = CGRectUnion(v52, v58);
    v15 = v53.origin.x;
    v14 = v53.origin.y;
    v17 = v53.size.width;
    v16 = v53.size.height;
    v18 = v18 + 0.125;
    v19 = v18;
  }

  while (v18 < 0.99999);
  v54 = CGRectIntegral(v53);
  *&v36 = CGRectInset(v54, -2.0, -2.0);

  return v36;
}

void sub_2337DA8CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2337DA8E8(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWRadialLensCorrectionRB", &unk_233945DBE, v5, 2u);
  }
}

double sub_2337DA970(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    return 0.0;
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 60);
  v14 = *(a1 + 64);
  v13 = *(a1 + 68);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = sub_2337D9C38(v15, a3, a4, a5, a6, v11, v12, v14, v13);
  v27 = v18;
  v28 = v17;
  v25 = v20;
  v26 = v19;
  v32.origin.x = sub_2337D9C38(v16, a3, a4, a5, a6, v11, v12, v14, v13);
  v32.origin.y = v21;
  v32.size.width = v22;
  v32.size.height = v23;
  v29.origin.y = v27;
  v29.origin.x = v28;
  v29.size.height = v25;
  v29.size.width = v26;
  v30 = CGRectUnion(v29, v32);
  v31 = CGRectIntegral(v30);
  *&v6 = CGRectInset(v31, -2.0, -2.0);

  return v6;
}

double sub_2337DAB80(void *a1, double a2, double a3, float a4, float a5, float a6, float a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v14 - a4;
  v20 = a6 * hypotf(v14 - a4, v15 - a5);
  v21 = 1.0;
  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  v22 = v20 < 0.0;
  v23 = 0.0;
  if (!v22)
  {
    v23 = v21;
  }

  v24 = a7 * v23;
  objc_msgSend_valueAtIndex_(v13, v17, vcvtms_u32_f32(a7 * v23), v18, v19);
  v26 = v25;
  objc_msgSend_valueAtIndex_(v13, v27, vcvtps_u32_f32(v24), v28, v29);
  v30 = floorf(v24);
  v31 = v26;
  *&v32 = v32;
  v33 = (a4 + (v16 * (((v24 - v30) * *&v32) + (v31 * (1.0 - (v24 - v30))))));

  return v33;
}

uint64_t sub_2337DAC88(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 4) = 1;
  *(a1 + 60) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v4 = (a1 + 96);
  *(a1 + 112) = 0;
  v5 = (a1 + 112);
  *(a1 + 120) = 0;
  v6 = (a1 + 120);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 42) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 144) = 0x3FF0000000000000;
  *(a1 + 128) = xmmword_233906368;
  *(a1 + 152) = 0;
  v7 = (a1 + 152);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0x200000000;
  *(a1 + 184) = 0x3FF0000000000000;
  *(a1 + 192) = 3;
  *(a1 + 200) = 0;
  sub_233725614(*a2);
  *a1 = sub_233725510(*a2);
  *(a1 + 2) = sub_233725510(*a2) != 0;
  v8 = sub_2337256DC(*a2);
  *(a1 + 4) = v8;
  if (v8 != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *(a1 + 8) = sub_2337256DC(*a2);
  *(a1 + 16) = COERCE_FLOAT(sub_233725614(*a2));
  v39 = sub_233725614(*a2);
  sub_233754E04(v38, a2);
  v9 = sub_233725510(*a2);
  *(a1 + 24) = v9;
  if (v9 == 1)
  {
    LOWORD(v35[0]) = sub_2337256DC(*a2);
    sub_2337DB630((a1 + 26), v35);
    *(a1 + 28) = sub_233725510(*a2);
    *(a1 + 30) = sub_233725510(*a2);
    *(a1 + 32) = sub_233725510(*a2);
    *(a1 + 34) = sub_233725510(*a2);
    *(a1 + 36) = sub_233725510(*a2);
    sub_233725510(*a2);
  }

  sub_233725FD4(v38);
  v10 = *a2;
  sub_2337268D8(v38, &v39);
  (*(*v10 + 40))(v10, v38, 1);
  v37 = sub_233725614(*a2);
  sub_233754E04(v38, a2);
  v11 = sub_233725510(*a2);
  *(a1 + 38) = v11;
  if (v11 == 1)
  {
    LODWORD(v35[0]) = sub_233725614(*a2);
    sub_233726938((a1 + 40), v35);
    *(a1 + 44) = sub_233725510(*a2);
    *(a1 + 46) = sub_233725510(*a2);
    *(a1 + 48) = sub_233725510(*a2);
    *(a1 + 50) = sub_233725510(*a2);
    *(a1 + 52) = sub_2337256DC(*a2);
    *(a1 + 54) = sub_2337256DC(*a2);
    *(a1 + 56) = sub_2337256DC(*a2);
    *(a1 + 60) = sub_233725614(*a2);
    *(a1 + 64) = sub_2337256DC(*a2);
    *(a1 + 68) = sub_2337256DC(*a2);
    *(a1 + 72) = sub_233725614(*a2);
    *(a1 + 76) = sub_2337256DC(*a2);
    *(a1 + 80) = sub_233725614(*a2);
    if (*(a1 + 40) < 5u)
    {
      *(a1 + 84) = 0x400000000;
      v14 = 0.0;
    }

    else
    {
      *(a1 + 84) = sub_233725614(*a2);
      v12 = sub_233725510(*a2);
      v13 = *(a1 + 40);
      *(a1 + 88) = v12;
      v14 = 0.0;
      if (v13 == 6)
      {
        v14 = COERCE_FLOAT(sub_233725614(*a2));
      }
    }

    *v4 = v14;
    v36 = sub_233725614(*a2);
    sub_233754E04(v35, a2);
    *(a1 + 104) = sub_233725510(*a2);
    sub_233725614(*a2);
    v34 = sub_233725614(*a2);
    sub_2337DB690((a1 + 106), &v34);
    v34 = sub_233725614(*a2);
    sub_2337DB690((a1 + 108), &v34);
    v34 = sub_233725614(*a2);
    sub_2337DB690((a1 + 110), &v34);
    v34 = sub_233725614(*a2);
    sub_2337DB690(v5, &v34);
    v34 = sub_233725614(*a2);
    sub_2337DB690((a1 + 114), &v34);
    v34 = sub_233725614(*a2);
    sub_2337DB690((a1 + 116), &v34);
    LOWORD(v34) = sub_2337256DC(*a2);
    sub_2337DB630((a1 + 118), &v34);
    v15 = *a2;
    v34 = 36;
    (*(*v15 + 40))(v15, &v34, 1);
    LOWORD(v34) = sub_2337256DC(*a2);
    sub_2337DB6F0(v6, &v34);
    sub_233725614(*a2);
    sub_233725614(*a2);
    sub_233725614(*a2);
    *(a1 + 128) = COERCE_FLOAT(sub_233725614(*a2));
    *(a1 + 136) = COERCE_FLOAT(sub_233725614(*a2));
    *(a1 + 144) = COERCE_FLOAT(sub_233725614(*a2));
    sub_233725FD4(v35);
    v16 = *a2;
    sub_2337268D8(v35, &v36);
    (*(*v16 + 40))(v16, v35, 1);
    if (*(a1 + 40) < 7u || (*v4 = COERCE_FLOAT(sub_233725614(*a2)), *(a1 + 40) < 8u) || (*v7 = sub_233725510(*a2), *(a1 + 156) = sub_2337256DC(*a2), LOWORD(v35[0]) = sub_2337256DC(*a2), sub_2337DB630((a1 + 158), v35), *(a1 + 160) = sub_233725614(*a2), *(a1 + 40) < 9u))
    {
      LODWORD(v35[0]) = 0;
      *(a1 + 164) = *sub_2337DB690((a1 + 166), v35);
      LODWORD(v35[0]) = 0;
      *(a1 + 168) = *sub_2337DB690((a1 + 170), v35);
      LODWORD(v35[0]) = 0;
      *(a1 + 172) = *sub_2337DB690((a1 + 174), v35);
    }

    else
    {
      v35[0] = sub_233725510(*a2);
      sub_233725510(*a2);
      v17 = *a2;
      sub_233723B40(&v34, v35);
      (*(*v17 + 40))(v17, &v34, 1);
      *(a1 + 164) = sub_2337255C0(*a2);
      *(a1 + 166) = sub_2337255C0(*a2);
      *(a1 + 168) = sub_2337255C0(*a2);
      *(a1 + 170) = sub_2337255C0(*a2);
      *(a1 + 172) = sub_2337255C0(*a2);
      *(a1 + 174) = sub_2337255C0(*a2);
    }

    if (*(a1 + 40) >= 0xAu)
    {
      *(a1 + 176) = sub_233725614(*a2);
      *(a1 + 180) = sub_2337256DC(*a2);
      if (*(a1 + 40) >= 0xBu)
      {
        v18 = sub_2337256DC(*a2);
        if (v18 >= 1)
        {
          LOWORD(v19) = 0;
          do
          {
            sub_233725614(*a2);
            sub_233725614(*a2);
            v19 = (v19 + 1);
          }

          while (v19 < v18);
        }

        if (*(a1 + 40) <= 0xBu)
        {
          *(a1 + 184) = 0x3FF0000000000000;
        }

        else
        {
          v20 = COERCE_FLOAT(sub_233725614(*a2));
          v21 = *(a1 + 40);
          *(a1 + 184) = v20;
          if (v21 >= 0xD)
          {
            *(a1 + 192) = sub_233725510(*a2);
            v22 = sub_2337256DC(*a2);
            if (v22 >= 1)
            {
              LOWORD(v23) = 0;
              do
              {
                sub_233725614(*a2);
                sub_233725614(*a2);
                v23 = (v23 + 1);
              }

              while (v23 < v22);
            }

            goto LABEL_26;
          }
        }

        *(a1 + 200) = 25;
        *(a1 + 224) = 0;
        *(a1 + 232) = 0;
        *(a1 + 216) = 0;
        goto LABEL_43;
      }
    }

    *(a1 + 184) = 0x3FF0000000000000;
LABEL_26:
    *(a1 + 216) = 0;
    v24 = (a1 + 216);
    v25 = *(a1 + 40);
    *(a1 + 200) = 25;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    if (v25 >= 0xE)
    {
      v26 = sub_233725510(*a2);
      v27 = v26 <= 3 ? v26 : 25;
      *(a1 + 200) = v27;
      if (v26 <= 3)
      {
        if (v26 - 2 >= 2)
        {
          if (v26 == 1)
          {
            for (i = 0; i != 32; i += 8)
            {
              *(a1 + 208 + i) = sub_2337DB754(a2);
            }
          }
        }

        else
        {
          v28 = sub_233725510(*a2);
          if (v28 >= 2)
          {
            v29 = 2;
          }

          else
          {
            v29 = v28;
          }

          *(a1 + 208) = v29;
          v30 = -1;
          do
          {
            *v24++ = sub_2337DB754(a2);
            ++v30;
          }

          while (v30 < *(a1 + 208));
        }
      }
    }
  }

LABEL_43:
  sub_233725FD4(v38);
  v32 = *a2;
  sub_2337268D8(v38, &v37);
  (*(*v32 + 40))(v32, v38, 1);
  return a1;
}

void sub_2337DB504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

_WORD *sub_2337DB630(_WORD *result, unsigned __int16 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_WORD *sub_2337DB690(_WORD *result, unsigned int *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2 >= 0x10000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_2337DB6F0(_DWORD *result, __int16 *a2)
{
  v2 = *a2;
  v3 = *a2;
  *result = v2;
  if (v3 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

double sub_2337DB754(uint64_t *a1)
{
  v2 = sub_233725404(*a1);
  v3 = sub_233725614(*a1);
  if (v2 == 1)
  {
    v4 = sub_233725614(*a1) | (v3 << 32);
  }

  else
  {
    v4 = v3 | (sub_233725614(*a1) << 32);
  }

  return *&v4;
}

void sub_2337DB7C0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_2337DBD24();
}

void sub_2337DB804(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337DB7F4);
}

void sub_2337DB810(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337DB838(_WORD *a1)
{
  v2 = a1[55];
  v3 = a1[57];
  sub_2337DB89C(a1);
  sub_2337DB8F0(a1);
  return v2 | (v3 << 32);
}

uint64_t sub_2337DB89C(_WORD *a1)
{
  v3 = a1[53];
  v4 = *sub_2337DBE68(&v3, a1 + 55);
  return *sub_2337DBE68(&v4, a1 + 56);
}

uint64_t sub_2337DB8F0(_WORD *a1)
{
  v3 = a1[54];
  v4 = *sub_2337DBE68(&v3, a1 + 57);
  return *sub_2337DBE68(&v4, a1 + 58);
}

uint64_t sub_2337DB964(uint64_t a1)
{
  v1 = (*(a1 + 96) + 3600.0) % 360;
  switch(v1)
  {
    case 90:
      v2 = 6;
      break;
    case 180:
      v2 = 3;
      break;
    case 270:
      v2 = 8;
      break;
    default:
      v2 = 1;
      break;
  }

  v4 = v2;
  sub_2337DB690(&v5, &v4);
  return v5;
}

double sub_2337DBA00(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 164))
  {
    if (*(a1 + 166))
    {
      return *(a1 + 164) / *(a1 + 166);
    }
  }

  return result;
}

double sub_2337DBA24(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 168))
  {
    if (*(a1 + 170))
    {
      return *(a1 + 168) / *(a1 + 170);
    }
  }

  return result;
}

double sub_2337DBA48(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 172))
  {
    if (*(a1 + 174))
    {
      return *(a1 + 172) / *(a1 + 174);
    }
  }

  return result;
}

uint64_t sub_2337DBADC(__int16 *a1)
{
  result = *a1;
  if ((result & 0x80000000) != 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

double sub_2337DBB34@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *sub_233730758(a2, 3uLL);
  *v3 = *(a1 + 128);
  *(v3 + 8) = *(a1 + 136);
  result = *(a1 + 144);
  *(v3 + 16) = result;
  return result;
}

size_t sub_2337DBB7C@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1[13];
  v5 = sub_2337DBCC4(a1 + 14);
  v6 = sub_2337DBCC4(a1 + 15);
  v7 = sub_2337DBCC4(a1 + 16);
  v8 = sub_2337DBCC4(a1 + 17);
  v9 = sub_2337DBCC4(a1 + 18);
  snprintf(__str, 0x14uLL, "%04d:%02d:%02d %02d:%02d:%02d", v4, v5, v6, v7, v8, v9);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  v11 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v11] = 0;
  return result;
}

uint64_t sub_2337DBCC4(_WORD *a1)
{
  if (*a1 >= 0x100u)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return *a1;
}

void *sub_2337DBD90(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284910FE8;
  sub_2337DAC88((a1 + 3), a2);
  return a1;
}

void sub_2337DBE0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284910FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

_WORD *sub_2337DBE68(_WORD *result, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *result - v2;
  *result -= v2;
  if ((v3 & 0xFFFF0000) != 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_WORD *sub_2337DBED0(_WORD *result, int *a2)
{
  if (!*a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *result = *result / *a2;
  return result;
}

double sub_2337DBF74(double a1, double a2, double a3, double a4)
{
  if (!v5 & v4)
  {
    a4 = v6;
  }

  return a3 * (v6 - a4) + a4 * a1;
}

_WORD *sub_2337DC024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12)
{
  a12 = v12;

  return sub_2337DBED0(&a12, &a10);
}

uint64_t sub_2337DC0D4(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  *a1 = &unk_284911038;
  *(a1 + 96) = 0;
  v6 = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  v7 = a1 + 128;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  v78 = (*(**a2 + 48))();
  if (*a3 <= 0x1FFu)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v77 = 0;
  v8 = *a2;
  LODWORD(v69) = 4;
  sub_233726998(&v74, &v69);
  if (!sub_2337257E8(v8, &v74, __p))
  {
    goto LABEL_6;
  }

  if (SHIBYTE(v77) < 0)
  {
    if (__p[1] == 4 && *__p[0] == 1313423687)
    {
      operator delete(__p[0]);
      goto LABEL_10;
    }

LABEL_6:
    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v9, "RawCameraException");
    __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(v77) != 4 || LODWORD(__p[0]) != 1313423687)
  {
    goto LABEL_6;
  }

LABEL_10:
  sub_233725614(*a2);
  *(a1 + 8) = sub_233725614(*a2);
  *(a1 + 12) = sub_233725614(*a2);
  *(a1 + 16) = sub_233725614(*a2);
  *(a1 + 20) = sub_233725614(*a2);
  if (sub_233725614(*a2) <= 0x1FF)
  {
    v63 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v63, "RawCameraException");
    __cxa_throw(v63, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a1 + 28) = sub_233725614(*a2);
  *(a1 + 32) = sub_2337255C0(*a2);
  *(a1 + 34) = sub_2337255C0(*a2);
  *(a1 + 36) = sub_233725510(*a2);
  *(a1 + 37) = sub_233725510(*a2);
  *(a1 + 38) = sub_233725510(*a2);
  *(a1 + 39) = sub_233725510(*a2);
  *(a1 + 40) = sub_233725510(*a2);
  *(a1 + 41) = sub_233725510(*a2);
  *(a1 + 42) = sub_2337255C0(*a2);
  *(a1 + 44) = sub_2337255C0(*a2);
  *(a1 + 46) = sub_2337255C0(*a2);
  *(a1 + 48) = sub_2337255C0(*a2);
  *(a1 + 50) = sub_2337255C0(*a2);
  *(a1 + 52) = sub_2337255C0(*a2);
  *(a1 + 54) = sub_2337255C0(*a2);
  *(a1 + 56) = sub_2337255C0(*a2);
  *(a1 + 58) = sub_2337255C0(*a2);
  *(a1 + 60) = sub_2337255C0(*a2);
  *(a1 + 62) = sub_2337255C0(*a2);
  *(a1 + 64) = sub_2337255C0(*a2);
  *(a1 + 66) = sub_2337255C0(*a2);
  *(a1 + 68) = sub_233725614(*a2);
  *(a1 + 72) = sub_233725614(*a2);
  *(a1 + 76) = sub_2337255C0(*a2);
  *(a1 + 78) = sub_2337255C0(*a2);
  *(a1 + 80) = sub_2337255C0(*a2);
  for (i = 82; i != 88; i += 2)
  {
    *(a1 + i) = sub_2337255C0(*a2);
  }

  *(a1 + 88) = sub_233725614(*a2);
  *(a1 + 92) = sub_233725614(*a2);
  v11 = sub_233725614(*a2);
  if (v11)
  {
    sub_233754E04(__p, a2);
    v12 = *a2;
    LODWORD(v74) = v11;
    v79 = *sub_2337DE388(&v74, &v78);
    sub_233726A8C(&v69, &v79);
    (*(*v12 + 40))(v12, &v69, 0);
    v13 = *(a1 + 32);
    if (v13 < 0x1E)
    {
      if (v13 <= 0x13)
      {
        v15 = 15;
      }

      else
      {
        v15 = 10;
      }
    }

    else
    {
      sub_233725614(*a2);
      sub_233725614(*a2);
      v14 = sub_233725614(*a2);
      v15 = sub_233725614(*a2);
      v16 = *a2;
      *&v74 = v14 - 16;
      sub_233723B40(&v69, &v74);
      (*(*v16 + 40))(v16, &v69, 1);
    }

    v17 = v15 * *(a1 + 46);
    if (v17 >= 0x493E0 || (*&v74 = 2 * v17, LODWORD(v69) = v11, *sub_233792784(&v69, &v74) >= *a3))
    {
      v65 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v65, "RawCameraException");
      __cxa_throw(v65, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    sub_233756D58(&v74, v17);
    v18 = *v6;
    if (*v6)
    {
      *(a1 + 104) = v18;
      operator delete(v18);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
    }

    *(a1 + 96) = v74;
    *(a1 + 112) = v75;
    if (v17)
    {
      v19 = 0;
      v20 = 4 * v17;
      do
      {
        *(*(a1 + 96) + v19) = sub_2337256DC(*a2) / (1 << *(a1 + 41));
        v19 += 4;
      }

      while (v20 != v19);
    }

    sub_233725FD4(__p);
  }

  *(a1 + 120) = sub_233725614(*a2);
  *(a1 + 124) = sub_233725614(*a2);
  v21 = sub_233725614(*a2);
  v79 = v21;
  if (v21)
  {
    __p[0] = 2;
    LODWORD(v74) = v21;
    if (*sub_233792784(&v74, __p) >= *a3)
    {
      v66 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v66, "RawCameraException");
      __cxa_throw(v66, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    sub_233754E04(__p, a2);
    v22 = *a2;
    LODWORD(v74) = v79;
    v73 = *sub_2337DE388(&v74, &v78);
    sub_233726A8C(&v69, &v73);
    (*(*v22 + 40))(v22, &v69, 0);
    v23 = sub_2337255C0(*a2);
    v73 = 4;
    LODWORD(v74) = v23;
    v24 = *sub_23378007C(&v74, &v73);
    *&v74 = 2;
    LODWORD(v69) = v24;
    v25 = *sub_233726B58(&v69, &v74);
    *&v74 = 2;
    LODWORD(v69) = v25;
    LODWORD(v69) = *sub_233792784(&v69, &v74);
    if (*sub_233753AB0(&v69, &v79) >= *a3)
    {
      v67 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v67, "RawCameraException");
      __cxa_throw(v67, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v26 = v23;
    sub_2337DE248(&v74, v23);
    v27 = *v7;
    if (*v7)
    {
      *(a1 + 136) = v27;
      operator delete(v27);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    *(a1 + 128) = v74;
    *(a1 + 144) = v75;
    if (v23)
    {
      v28 = 0;
      v29 = 12 * v26;
      do
      {
        *(*v7 + v28) = sub_2337255C0(*a2);
        *(*v7 + v28 + 4) = sub_2337255C0(*a2);
        *(*v7 + v28 + 8) = sub_2337255C0(*a2);
        *(*v7 + v28 + 10) = sub_2337255C0(*a2);
        v28 += 12;
      }

      while (v29 != v28);
    }

    sub_233725FD4(__p);
  }

  *(a1 + 152) = sub_233725614(*a2);
  for (j = 156; j != 172; j += 2)
  {
    *(a1 + j) = sub_2337255C0(*a2);
  }

  *(a1 + 172) = sub_2337255C0(*a2);
  *(a1 + 174) = sub_2337255C0(*a2);
  *(a1 + 176) = sub_233725614(*a2);
  *(a1 + 180) = sub_233725614(*a2);
  v31 = sub_233725614(*a2);
  LODWORD(v69) = 22;
  LODWORD(__p[0]) = v31;
  v32 = *sub_233726AE8(__p, &v69);
  __p[0] = 10;
  LODWORD(v74) = v32;
  if (*sub_233792784(&v74, __p) >= *a3)
  {
    v64 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v64, "RawCameraException");
    __cxa_throw(v64, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233754E04(__p, a2);
  v33 = *a2;
  LODWORD(v74) = v31;
  v79 = *sub_2337DE388(&v74, &v78);
  sub_233726A8C(&v69, &v79);
  (*(*v33 + 40))(v33, &v69, 0);
  v34 = sub_2337255C0(*a2);
  v35 = sub_2337255C0(*a2);
  v36 = sub_2337255C0(*a2);
  v37 = v36;
  *(a1 + 200) = v35 | (v36 << 32);
  v38 = sub_2337255C0(*a2);
  v39 = sub_2337255C0(*a2);
  v73 = v39;
  if (v34 && v38 && v39 && v35 && v37 && v34 == 1)
  {
    LODWORD(v74) = v38;
    v40 = *sub_2337AD0B4(&v74, &v73);
    v79 = 4;
    LODWORD(v74) = v40;
    LODWORD(v69) = *sub_2337AD0B4(&v74, &v79);
    sub_233726938(&v72, &v69);
    if (v72 < 0xBEBC201)
    {
      v71 = 22;
      LODWORD(v74) = v31;
      v41 = *sub_233726AE8(&v74, &v71);
      *&v74 = 10;
      LODWORD(v69) = v41;
      v42 = *sub_233792784(&v69, &v74);
      *&v69 = 2;
      v79 = v72;
      v70 = *sub_233726B58(&v79, &v69);
      v79 = v42;
      if (*sub_233753AB0(&v79, &v70) < *a3)
      {
        v43 = *a2;
        LODWORD(v74) = v31;
        v44 = *sub_2337DE388(&v74, &v78);
        v70 = 22;
        LODWORD(v74) = v44;
        v45 = *sub_233726AE8(&v74, &v70);
        *&v74 = 10;
        LODWORD(v69) = v45;
        v71 = *sub_233792784(&v69, &v74);
        sub_233726A8C(&v79, &v71);
        (*(*v43 + 40))(v43, &v79, 0);
        *&v69 = 2;
        v79 = v72;
        v46 = sub_233726B58(&v79, &v69);
        sub_2337AD310(*v46, &v74);
      }
    }

    v68 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v68, "RawCameraException");
    __cxa_throw(v68, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233725FD4(__p);
  v47 = 3;
  do
  {
    sub_233725614(*a2);
    --v47;
  }

  while (v47);
  *(a1 + 212) = sub_2337255C0(*a2);
  *(a1 + 214) = sub_2337255C0(*a2);
  *(a1 + 216) = sub_2337255C0(*a2);
  for (k = 218; k != 228; k += 2)
  {
    *(a1 + k) = sub_2337255C0(*a2);
  }

  v49 = 0;
  v50 = 1;
  do
  {
    v51 = v50;
    v52 = sub_233725614(*a2);
    v50 = 0;
    *(a1 + 228 + 4 * v49) = v52;
    v49 = 1;
  }

  while ((v51 & 1) != 0);
  *(a1 + 236) = sub_2337255C0(*a2);
  *(a1 + 238) = sub_2337255C0(*a2);
  v53 = sub_2337255C0(*a2);
  sub_2337255C0(*a2);
  v54 = vcvts_n_f32_u32(v53, 0xEuLL);
  if (!v53)
  {
    v54 = 1.0;
  }

  *(a1 + 240) = v54;
  *(a1 + 244) = sub_233725614(*a2);
  *(a1 + 248) = sub_233725614(*a2);
  sub_233756D58(__p, 4uLL);
  v55 = *(a1 + 256);
  if (v55)
  {
    *(a1 + 264) = v55;
    operator delete(v55);
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
  }

  v56 = 0;
  v57 = 0;
  *(a1 + 256) = *__p;
  *(a1 + 272) = v77;
  do
  {
    v58 = sub_2337255C0(*a2);
    v59 = v58;
    v57 |= v58 != 0;
    v60 = *(a1 + 256);
    *&v60[v56] = v59 / (0x10000 << *(a1 + 41));
    v56 += 4;
  }

  while (v56 != 16);
  if ((v57 & 1) == 0)
  {
    *(a1 + 264) = v60;
    operator delete(v60);
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
  }

  *(a1 + 280) = sub_233725614(*a2);
  *(a1 + 284) = sub_233725614(*a2);
  return a1;
}

void sub_2337DCF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  sub_233725FD4(&__p);
  v28 = v24[32];
  if (v28)
  {
    v24[33] = v28;
    operator delete(v28);
  }

  v29 = v24[24];
  if (v29)
  {
    sub_2337239E8(v29);
  }

  v30 = *v26;
  if (*v26)
  {
    v24[17] = v30;
    operator delete(v30);
  }

  v31 = *v25;
  if (*v25)
  {
    v24[13] = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_2337DD128(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_2337DE5E8();
}

void sub_2337DD170(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337DD160);
}

void sub_2337DD17C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337DD194(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*(*a2 + 48) == *(a1 + 46))
  {
    v4 = *(result + 52);
    if (v4 == *(a1 + 44) && *(result + 56) == v4 && *(a1 + 104) != *(a1 + 96))
    {
      sub_2337B0628(result);
      operator new[]();
    }
  }

  return result;
}

void sub_2337DD890(_Unwind_Exception *a1)
{
  MEMORY[0x2383ABEF0](v1, 0x1000C8052888210);
  if (v2)
  {
    MEMORY[0x2383ABEF0](v2, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

void sub_2337DD910(uint64_t a1, uint64_t *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 184);
  if (v2)
  {
    v4 = *(a1 + 44);
    if (v4 >> 4 > 0x270 || (v5 = *(a1 + 46), v5 >> 4 > 0x270) || ((v8 = v2 + 48, v7 = *(v2 + 48), v6 = *(v8 + 4), v9 = (v6 >> 2) * *(a1 + 200), v10 = v7 * *(a1 + 204), v4 >= v9) ? (v11 = v5 >= v10) : (v11 = 0), !v11 || ((v12 = ((v4 - v9) >> 1) & 0x7FFFFFFE, v13 = v9 + v12 - 2, v12 < v4 >> 1) ? (v14 = (v4 >> 1) < v13) : (v14 = 0), v14 ? (v15 = v13 <= v4) : (v15 = 0), !v15 || ((v16 = ((v5 - v10) >> 1) & 0x7FFFFFFE, v17 = v10 + v16 - 2, v16 < v5 >> 1) ? (v18 = (v5 >> 1) < v17) : (v18 = 0), v18 ? (v19 = v17 <= v5) : (v19 = 0), !v19))))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v21 = v7 * v6;
    sub_2337565A0(v66, v21);
    sub_2337565A0(v65, v21);
    v54 = a2;
    sub_233756D58(&__p, v21);
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v23 = *(sub_2337B0628(*(a1 + 184)) + 2 * i);
        *(v66[0] + i) = v23;
        if (v23)
        {
          v24 = 0xFFFFFFFF / v23;
        }

        else
        {
          v24 = -1;
        }

        *(v65[0] + i) = v24;
      }
    }

    v25 = sub_2337B0628(*(a1 + 184));
    vDSP_vfltu16(v25, 1, __p, 1, (v64 - __p) >> 2);
    v26 = (v9 >> 1) & 0xFFFE;
    v27 = (v10 >> 1) & 0xFFFE;
    v28 = (__p + 4 * ((*(*(a1 + 184) + 52) & 0xFFFFFFFC) * ((v27 / *(a1 + 204)) >> 1) + 4 * ((v26 / *(a1 + 200)) >> 1)));
    v61 = llroundf((*v28 / (((*v28 + v28[1]) + v28[2]) + v28[3])) * 16384.0);
    sub_2337268D8(&v62, &v61);
    v29 = (__p + 4 * ((*(*(a1 + 184) + 52) & 0xFFFFFFFC) * ((v27 / *(a1 + 204)) >> 1) + 4 * (((v26 | 1) / *(a1 + 200)) >> 1)));
    v30 = v29[1];
    v31 = v29[3];
    v32 = (v30 + *v29) + v29[2];
    v67[0] = v62;
    v59 = llroundf((v30 / (v32 + v31)) * 16384.0);
    sub_2337268D8(&v60, &v59);
    v67[1] = v60;
    v33 = (__p + 4 * ((*(*(a1 + 184) + 52) & 0xFFFFFFFC) * (((v27 | 1) / *(a1 + 204)) >> 1) + 4 * ((v26 / *(a1 + 200)) >> 1)));
    v57 = llroundf((v33[2] / (v33[3] + (v33[2] + (*v33 + v33[1])))) * 16384.0);
    sub_2337268D8(&v58, &v57);
    v67[2] = v58;
    v34 = (__p + 4 * ((*(*(a1 + 184) + 52) & 0xFFFFFFFC) * (((v27 | 1) / *(a1 + 204)) >> 1) + 4 * (((v26 | 1) / *(a1 + 200)) >> 1)));
    v55 = llroundf((v34[3] / (((*v34 + v34[1]) + v34[2]) + v34[3])) * 16384.0);
    sub_2337268D8(&v56, &v55);
    v67[3] = v56;
    v35 = *(a1 + 200);
    v36 = sub_2337B0628(*v54);
    v37 = *(a1 + 46);
    if (*(a1 + 46))
    {
      v38 = 0;
      v39 = 0;
      v40 = *(a1 + 204);
      v41 = *(*(a1 + 184) + 52);
      v42 = v65[0];
      v43 = v66[0];
      v44 = *(a1 + 44);
      do
      {
        if (v44)
        {
          v45 = 0;
          v46 = (v38 + v17 + (v39 & 1)) & ((v38 + v17 + (v39 & 1)) >> 31);
          v47 = v41 * ((((v39 & 1) - ((v38 + v16 + (v39 & 1) - v46) & ((v38 + v16 + (v39 & 1) - v46) >> 31))) / v40) >> 1);
          v48 = v12;
          v49 = v9 + v12 - 2;
          do
          {
            v50 = v48 + (v45 & 1) - ((v49 + (v45 & 1)) & ((v49 + (v45 & 1)) >> 31));
            v51 = v47 + 4 * ((((v45 & 1) - (v50 & (v50 >> 31))) * (0xFFFF / v35)) >> 17);
            v52 = (((v67[v45 & 1 | (2 * (v39 & 1))] * vaddvq_s32(*&v43[4 * v51]) * v42[v51 + (v45 & 1 | (2 * (v39 & 1)))]) >> 32) * *v36) >> 14;
            if (v52 >= 0xFFFF)
            {
              v52 = 0xFFFF;
            }

            *v36++ = v52 & ~(v52 >> 31);
            ++v45;
            v44 = *(a1 + 44);
            --v49;
            --v48;
          }

          while (v45 < v44);
          v37 = *(a1 + 46);
        }

        v38 = ~v39++;
      }

      while (v39 < v37);
    }

    if (v36 != (sub_2337B0628(*v54) + 2 * *(a1 + 44) * *(a1 + 46)))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
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
}

void sub_2337DDE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337DDEF4(uint64_t result, uint64_t *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(result + 128);
  if (*(result + 136) != v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v8 = *(*a2 + 48);
    v7 = *(*a2 + 52);
    do
    {
      v9 = (v2 + 12 * v5);
      if (*(v9 + 1) != 4)
      {
        result = sub_2337B0628(*a2);
        v10 = *v9;
        if (v7 > v10)
        {
          v11 = v9[4];
          if (v8 > v11)
          {
            v12 = v10 - 2;
            v13 = v10 + 2;
            do
            {
              if ((v11 & 1) + (v10 & 1) == 1)
              {
                v14 = 0;
                v15 = 0;
                v16 = &byte_2339063E1;
                do
                {
                  v17 = v11 + *(v16 - 1);
                  v18 = *v16 + v10;
                  if (v17 >= v8 || v18 >= v7)
                  {
                    v20 = 0;
                  }

                  else
                  {
                    v20 = *(result + 2 * (v18 + v17 * v7));
                  }

                  v16 += 2;
                  v35[v14 + 4] = v20;
                  v15 += v20;
                  ++v14;
                }

                while (v14 != 4);
                v21 = 0;
                v22 = 0;
                do
                {
                  v23 = 4 * v35[v21 + 4] - v15;
                  if (v23 < 0)
                  {
                    v23 = v15 - 4 * v35[v21 + 4];
                  }

                  v35[v21] = v23;
                  if (v35[v22] < v23)
                  {
                    v22 = v21;
                  }

                  ++v21;
                }

                while (v21 != 4);
                v24 = (v15 - v35[v22 + 4]) / 3.0 + 0.5;
                v25 = v7 * v11;
              }

              else
              {
                v26 = 0;
                v27 = 4;
                v28 = &byte_2339063E9;
                do
                {
                  v29 = v11 + *(v28 - 1);
                  v30 = *v28 + v10;
                  if (v29 >= v8 || v30 >= v7)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = *(result + 2 * (v30 + v29 * v7));
                  }

                  v28 += 2;
                  v26 += v32;
                  --v27;
                }

                while (v27);
                if (v12 >= v7)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = *(result + 2 * (v12 + v7 * v11));
                }

                v25 = v7 * v11;
                if (v13 >= v7)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = *(result + 2 * (v25 + v13));
                }

                v24 = v26 * 0.0732233 + 0.5 + (v34 + v33) * 0.3535534;
              }

              *(result + 2 * (v25 + v10)) = v24;
              ++v11;
            }

            while (v11 != v8);
          }
        }
      }

      v2 = *(v4 + 128);
      v5 = ++v6;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 136) - v2) >> 2) > v6);
  }

  return result;
}

void sub_2337DE210(void *a1)
{
  sub_2337DE754(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337DE248(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2337DE2E4(result, a2);
  }

  return result;
}

void sub_2337DE2C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337DE2E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_2337DE330(a1, a2);
  }

  sub_2337235BC();
}

void sub_2337DE330(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_2337236AC();
}

_DWORD *sub_2337DE388(_DWORD *result, void *a2)
{
  v2 = *result;
  v3 = __OFADD__(v2, *a2);
  v4 = v2 + *a2;
  *result = v4;
  if (v3 || HIDWORD(v4))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_2337DE4A8(void *a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908220;
  sub_2337DE504((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t sub_2337DE504(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v10 = a2[1];
  v16 = *a2;
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_233726998(&v15, a3);
  sub_233726938(&v14, a4);
  sub_233726938(&v13, a5);
  sub_233726938(&v12, a6);
  sub_2337B0510(a1, &v16, &v15, &v14, &v13, &v12);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  return a1;
}

void sub_2337DE5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    sub_2337239E8(v12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337DE65C(void *a1, uint64_t *a2, _DWORD *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284911068;
  sub_2337DC0D4((a1 + 3), a2, a3);
  return a1;
}

void sub_2337DE6D8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284911068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337DE754(void *a1)
{
  *a1 = &unk_284911038;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[24];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_2337DE7D0(uint64_t result, void *a2, int a3)
{
  *result = &unk_2849110B8;
  *(result + 8) = *a2;
  *(result + 16) = a3;
  *(result + 20) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_2337DE800(void *a1)
{
  *a1 = &unk_2849110B8;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_2337DE860()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_2337DEA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337DEA98(uint64_t result, char a2)
{
  if (*(result + 24))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    sub_2338F90E4(exception);
  }

  *(result + 52) = a2;
  return result;
}

CGColorSpaceRef sub_2337DEAFC(CGColorSpaceRef result, CGColorSpaceRef space)
{
  if (space)
  {
    v3 = result;
    v4 = *(result + 3);
    if (v4)
    {
      CFRelease(v4);
    }

    result = CGColorSpaceRetain(space);
    *(v3 + 3) = result;
  }

  return result;
}

void *sub_2337DEB40(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_2337DE7D0(a1, a2, a3);
  *result = &unk_284911120;
  result[4] = a4;
  result[5] = a5;
  return result;
}

id sub_2337DEB98(uint64_t a1)
{
  v8 = (*(*a1 + 16))(a1);
  sub_233723C18(&v9, &v8);
  v2 = v9;
  v8 = (*(*a1 + 24))(a1);
  sub_233723C18(&v9, &v8);
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"{%u, %u}", v4, v5, v2, v9);

  return v6;
}

void sub_2337DEC64(void *a1)
{
  sub_2337DE800(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337DEC9C(uint64_t a1, int a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284911190;
  *(v5 + 16) = 0u;
  v6 = v5 + 16;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  for (i = sub_233725614(*a3); i; --i)
  {
    v8 = sub_23372574C(*a3);
    v9 = sub_23372574C(*a3);
    v10 = sub_23372574C(*a3);
    v11 = sub_23372574C(*a3);
    *v18 = v8;
    *&v18[1] = v9;
    *&v18[2] = v10;
    *&v18[3] = v11;
    v16 = 0;
    v17 = 0;
    __p = 0;
    sub_233764ED4(&__p, v18, &v19, 4uLL);
    sub_2337A521C(v6, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  v12 = sub_23372574C(*a3);
  v13 = sub_23372574C(*a3);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  return a1;
}

void sub_2337DEDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2337A6DEC(va);
  _Unwind_Resume(a1);
}

void sub_2337DEE20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2337DEE0CLL);
}

id sub_2337DEE3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v59 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v60 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v13 = *(a1 + 16);
  for (i = *(a1 + 24); v13 != i; v13 += 3)
  {
    v62[0] = @"kr0";
    v15 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v9, v10, v11, v12, **v13);
    v63[0] = v15;
    v62[1] = @"kr1";
    v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, v18, v19, (*v13)[1]);
    v63[1] = v20;
    v62[2] = @"kr2";
    v25 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v21, v22, v23, v24, (*v13)[2]);
    v63[2] = v25;
    v62[3] = @"kr3";
    v30 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v26, v27, v28, v29, (*v13)[3]);
    v63[3] = v30;
    v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v63, v62, 4);
    objc_msgSend_addObject_(v60, v33, v32, v34, v35);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v59, v9, v60, @"CoefficientSets", v12);
  v36 = *(a1 + 48);
  v41 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v37, v38, v39, v40, *(a1 + 40));
  v61[0] = v41;
  v46 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v42, v43, v44, v45, v36);
  v61[1] = v46;
  v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v47, v61, 2, v48);
  objc_msgSend_setObject_forKeyedSubscript_(v59, v50, v49, @"NormalizedCenter", v51);

  v52 = [RAWOpcodeWarpFisheye alloc];
  v56 = objc_msgSend_initWithArguments_(v52, v53, v59, v54, v55);

  return v56;
}

uint64_t sub_2337DF134(uint64_t a1)
{
  *a1 = &unk_284911190;
  v3 = (a1 + 16);
  sub_2337A6DEC(&v3);
  return a1;
}

uint64_t sub_2337DF18C(uint64_t a1)
{
  *a1 = &unk_284911190;
  v3 = (a1 + 16);
  sub_2337A6DEC(&v3);
  return MEMORY[0x2383ABF10](a1, 0x10A1C40C9E8D6FDLL);
}

void *sub_2337DF200(void *a1, void *a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_2337DE7D0(a1, a2, a3);
  *v8 = &unk_2849111D8;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0;
  sub_233729070((v8 + 4), *a4, a4[1], (a4[1] - *a4) >> 2);
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  sub_233729070((a1 + 7), *a5, a5[1], (a5[1] - *a5) >> 2);
  return a1;
}

void sub_2337DF290(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  sub_2337DE800(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2337DF2D0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 >= (*(a1 + 40) - v2) >> 2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 4 * a2);
  }
}

uint64_t sub_2337DF2F0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 56);
  if (a2 >= (*(a1 + 64) - v2) >> 2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 4 * a2);
  }
}

uint64_t sub_2337DF310(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == v1)
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_2337DF32C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  result = 0;
  v4 = v2 - v1;
  if (v4)
  {
    v5 = v4 >> 2;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v6 = *v1++;
      result += v6;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_2337DF35C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_233754E04(v22, a2);
  if ((*(*a1 + 72))(a1) == 1)
  {
    v21 = (*(*a1 + 16))(a1);
    v6 = *a2;
    sub_2337268D8(&v20, &v21);
    (*(*v6 + 40))(v6, &v20, 0);
    v7 = *a2;
    v8 = (*(*a1 + 24))(a1);
    v9 = (*(*v7 + 32))(v7, a3, v8);
    if ((*(*a1 + 24))(a1) != v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    v11 = (*(*a1 + 24))(a1);
    v12 = sub_2337DE858(a1) >> 32;
    if (v11 != 3 * v12 * sub_2337DE858(a1))
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v18, "RawCameraException");
      __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    for (i = 0; i < (*(*a1 + 72))(a1); ++i)
    {
      v21 = (*(*a1 + 80))(a1, i);
      v14 = *a2;
      sub_2337268D8(&v20, &v21);
      (*(*v14 + 40))(v14, &v20, 0);
      v15 = *a2;
      v16 = (*(*a1 + 88))(a1, i);
      LODWORD(v15) = (*(*v15 + 32))(v15, a3, v16);
      if ((*(*a1 + 88))(a1, i) != v15)
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v17, "RawCameraException");
        __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      a3 += (*(*a1 + 88))(a1, i);
    }
  }

  return sub_233725FD4(v22);
}

void sub_2337DF758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2337DF7C0(void *a1)
{
  sub_2337DF7F8(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337DF7F8(void *a1)
{
  *a1 = &unk_2849111D8;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return sub_2337DE800(a1);
}

double sub_2337DF868(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_2337DF874(void *a1, void *a2)
{
  *a1 = *a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  sub_2337236E0((a1 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 3);
  return a1;
}

uint64_t sub_2337DF8BC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 8) = 0;
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = a3 * a2;
  if (!a3)
  {
    if (a2 < 0x64)
    {
      goto LABEL_5;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3 > 0x63 || a2 > 0x63 || (v4 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_2337DF998((a1 + 8), v4);
  return a1;
}

void sub_2337DF96C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_2337DF998(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_2337E1170(a1, a2 - v2);
  }
}

uint64_t sub_2337DF9CC(uint64_t a1, unsigned int a2, unsigned int a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 8) = 0;
  v12 = (a1 + 8);
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v13 = a3 * a2;
  if (!a3)
  {
    if (a2 < 0x64)
    {
      goto LABEL_5;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3 > 0x63 || a2 > 0x63 || (v13 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_2337DF998((a1 + 8), v13);
  **(a1 + 8) = a4;
  v20 = &a10;
  v14 = (*(a1 + 4) * *a1);
  if (v14 >= 2)
  {
    v15 = (*v12 + 8);
    v16 = v14 - 1;
    do
    {
      v17 = v20++;
      *v15++ = *v17;
      --v16;
    }

    while (v16);
  }

  return a1;
}

void sub_2337DFAD8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337DFB04(uint64_t a1, unsigned int a2, unsigned int a3, char **a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = a3 * a2;
  v7 = a4[1];
  if (v6 != (v7 - *a4) >> 3)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v8 = a2 > 0x63 || (v6 & 0xFFFFFFFF00000000) != 0;
    if (a3 <= 0x63 && !v8)
    {
      goto LABEL_8;
    }

LABEL_12:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a2 >= 0x64)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((a1 + 8) != a4)
  {
    sub_23373176C((a1 + 8), *a4, v7, v6);
  }

  return a1;
}

void sub_2337DFBF4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

double *sub_2337DFC28@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_2337DF8BC(a2, a1, a1);
  if (a1)
  {
    v5 = 0;
    do
    {
      v6 = 0;
      do
      {
        if (v5 == v6)
        {
          v7 = 1.0;
        }

        else
        {
          v7 = 0.0;
        }

        v9[0] = sub_2337DFCEC(a2, v5);
        v9[1] = v8;
        result = sub_2337DFD6C(v9, v6);
        *result = v7;
        ++v6;
      }

      while (a1 != v6);
      ++v5;
    }

    while (v5 != a1);
  }

  return result;
}

void sub_2337DFCD0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337DFCEC(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  result = *(a1 + 4);
  if (result * a2 >= ((*(a1 + 16) - *(a1 + 8)) >> 3))
  {
    sub_2337306B0();
  }

  return result;
}

uint64_t sub_2337DFD6C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*a1 <= a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return v2 + 8 * a2;
}

double sub_2337DFDF8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t *sub_2337DFE04@<X0>(uint64_t *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = result[1] - *result;
  if (v3 && (v3 >> 3) < 0x64)
  {
    v4 = result;
    result = sub_2337DF8BC(a2, v3 >> 3, 1u);
    v5 = *v4;
    if (v4[1] != *v4)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v5 + 8 * v6);
        v10[0] = sub_2337DFCEC(a2, v7);
        v10[1] = v9;
        result = sub_2337DFD6C(v10, 0);
        *result = v8;
        v5 = *v4;
        v6 = ++v7;
      }

      while (v7 < ((v4[1] - *v4) >> 3));
    }
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_2337DFEC4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337DFEE0(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1] - *a1;
  if (v3 && (v3 >> 3) < 0x64)
  {
    v5 = sub_2337DF8BC(a2, v3 >> 3, v3 >> 3);
    sub_2337DFFC4(v5);
    v6 = *a1;
    if (a1[1] != *a1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(v6 + 8 * v7);
        v11[0] = sub_2337DFCEC(a2, v8);
        v11[1] = v10;
        *sub_2337DFD6C(v11, v8) = v9;
        v6 = *a1;
        v7 = ++v8;
      }

      while (v8 < ((a1[1] - *a1) >> 3));
    }
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }
}

void sub_2337DFFA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337DFFC4(_DWORD *a1)
{
  sub_233731694(__p, (a1[1] * *a1));
  sub_2337E0E4C(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2337E0020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337E004C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    v5 = 0uLL;
    v6 = 0;
    sub_2337236E0(&v5, a2[1], a2[2], (a2[2] - a2[1]) >> 3);
    v3 = a1[1];
    if (v3)
    {
      a1[2] = v3;
      operator delete(v3);
    }

    *(a1 + 1) = v5;
    a1[3] = v6;
  }

  return a1;
}

double *sub_2337E00C8@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2337DF8BC(a3, *a1, a1[1]);
  v7 = *a1;
  if (*a1 != *a2 || (v8 = a1[1], v8 != a2[1]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      if (v8)
      {
        for (j = 0; j < v8; ++j)
        {
          v19[0] = sub_2337DFCEC(a1, i);
          v19[1] = v11;
          v12 = *sub_2337DFD6C(v19, j);
          v18[0] = sub_2337DFCEC(a2, i);
          v18[1] = v13;
          v14 = *sub_2337DFD6C(v18, j);
          v17[0] = sub_2337DFCEC(a3, i);
          v17[1] = v15;
          result = sub_2337DFD6C(v17, j);
          *result = v12 + v14;
          v8 = a1[1];
        }

        v7 = *a1;
      }
    }
  }

  return result;
}

void sub_2337E020C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2337E0244@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = sub_2337DF8BC(a2, *a1, a1[1]);
  v7 = *a1;
  if (*a1)
  {
    v8 = 0;
    v9 = a1[1];
    do
    {
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v15[0] = sub_2337DFCEC(a1, v8);
          v15[1] = v11;
          v12 = *sub_2337DFD6C(v15, i);
          v14[0] = sub_2337DFCEC(a2, v8);
          v14[1] = v13;
          result = sub_2337DFD6C(v14, i);
          *result = v12 * a3;
          v9 = a1[1];
        }

        v7 = *a1;
      }

      ++v8;
    }

    while (v8 < v7);
  }

  return result;
}

void sub_2337E030C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2337E032C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2337DF8BC(a3, *a1, a2[1]);
  if (a1[1] != *a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = 0;
    v9 = a2[1];
    do
    {
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v21 = sub_2337DFCEC(a3, v8);
          v22 = v11;
          result = sub_2337DFD6C(&v21, i);
          *result = 0.0;
          if (a1[1])
          {
            v12 = 0;
            do
            {
              v21 = sub_2337DFCEC(a1, v8);
              v22 = v13;
              v14 = *sub_2337DFD6C(&v21, v12);
              v20[0] = sub_2337DFCEC(a2, v12);
              v20[1] = v15;
              v16 = *sub_2337DFD6C(v20, i);
              v19[0] = sub_2337DFCEC(a3, v8);
              v19[1] = v17;
              result = sub_2337DFD6C(v19, i);
              *result = *result + v14 * v16;
              ++v12;
            }

            while (v12 < a1[1]);
          }

          v9 = a2[1];
        }

        v7 = *a1;
      }

      ++v8;
    }

    while (v8 < v7);
  }

  return result;
}

void sub_2337E04AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2337E04E8@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2337DF8BC(a3, *a1, a1[1]);
  v7 = *a1;
  if (v7 != (a2[1] - *a2) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*a1)
  {
    v8 = 0;
    v9 = a1[1];
    do
    {
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v17[0] = sub_2337DFCEC(a1, v8);
          v17[1] = v11;
          v12 = *sub_2337DFD6C(v17, i);
          v13 = *(*a2 + 8 * v8);
          v16[0] = sub_2337DFCEC(a3, v8);
          v16[1] = v14;
          result = sub_2337DFD6C(v16, i);
          *result = v12 * v13;
          v9 = a1[1];
        }

        v7 = *a1;
      }

      ++v8;
    }

    while (v8 < v7);
  }

  return result;
}

void sub_2337E060C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337E0640@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2337DF8BC(a2, a1[1], *a1);
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = a1[1];
    do
    {
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v13[0] = sub_2337DFCEC(a1, v6);
          v13[1] = v9;
          v10 = *sub_2337DFD6C(v13, i);
          v12[0] = sub_2337DFCEC(a2, i);
          v12[1] = v11;
          result = sub_2337DFD6C(v12, v6);
          *result = v10;
          v7 = a1[1];
        }

        v5 = *a1;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return result;
}

void sub_2337E0700(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337E0720(unsigned int *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  if (*a1 == 3 && v4 == 3)
  {
    v36 = COERCE_DOUBLE(sub_2337DFCEC(a1, 0));
    v37 = v6;
    v7 = *sub_2337DFD6C(&v36, 0);
    v36 = COERCE_DOUBLE(sub_2337DFCEC(a1, 0));
    v37 = v8;
    v9 = *sub_2337DFD6C(&v36, 1u);
    v36 = COERCE_DOUBLE(sub_2337DFCEC(a1, 0));
    v37 = v10;
    v11 = *sub_2337DFD6C(&v36, 2u);
    v36 = COERCE_DOUBLE(sub_2337DFCEC(a1, 1u));
    v37 = v12;
    v13 = *sub_2337DFD6C(&v36, 0);
    v36 = COERCE_DOUBLE(sub_2337DFCEC(a1, 1u));
    v37 = v14;
    v15 = *sub_2337DFD6C(&v36, 1u);
    v36 = COERCE_DOUBLE(sub_2337DFCEC(a1, 1u));
    v37 = v16;
    v17 = *sub_2337DFD6C(&v36, 2u);
    v36 = COERCE_DOUBLE(sub_2337DFCEC(a1, 2u));
    v37 = v18;
    v19 = *sub_2337DFD6C(&v36, 0);
    v36 = COERCE_DOUBLE(sub_2337DFCEC(a1, 2u));
    v37 = v20;
    v21 = *sub_2337DFD6C(&v36, 1u);
    v36 = COERCE_DOUBLE(sub_2337DFCEC(a1, 2u));
    v37 = v22;
    v23 = *sub_2337DFD6C(&v36, 2u);
    v36 = v15 * v23 - v21 * v17;
    *&v37 = v21 * v11 - v9 * v23;
    v38 = v9 * v17 - v15 * v11;
    v39 = v19 * v17 - v13 * v23;
    v40 = v7 * v23 - v19 * v11;
    v41 = v13 * v11 - v7 * v17;
    v42 = v13 * v21 - v19 * v15;
    v43 = v19 * v9 - v7 * v21;
    v44 = v7 * v15 - v13 * v9;
    v24 = v9 * v39 + v7 * v36 + v11 * v42;
    if (fabs(v24) >= 1.0e-10)
    {
      sub_2337DF8BC(a2, a1[1], *a1);
      v25 = 0;
      v26 = &v36;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          v28 = v26[i];
          v33 = sub_2337DFCEC(a2, v25);
          v34 = v29;
          *sub_2337DFD6C(&v33, i) = v28 / v24;
        }

        ++v25;
        v26 += 3;
      }

      while (v25 != 3);
      return;
    }

LABEL_13:
    *a2 = 0u;
    a2[1] = 0u;
    return;
  }

  if (*a1 == v4)
  {
    goto LABEL_13;
  }

  sub_2337E0640(a1, &v36);
  sub_2337E032C(&v36, a1, &v33);
  sub_2337E0720(&v30, &v33);
  sub_2337E032C(&v30, &v36, a2);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (*&v37 != 0.0)
  {
    v38 = *&v37;
    operator delete(v37);
  }
}

void sub_2337E0A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337E0A98@<D0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, _OWORD *a3@<X8>)
{
  if (*a2 && (v5 = a2[1]) != 0 && ((v6 = a1[1], *a1 != v6) ? (v7 = v6 == *a2) : (v7 = 0), v7 ? (v8 = *a1 == v5) : (v8 = 0), v8))
  {
    sub_2337E032C(a2, a1, &v13);
    sub_2337E0720(&v13, &v11);
    v10 = v11;
    if (v11)
    {
      sub_2337E032C(&v11, a2, a3);
    }

    if (*(&v11 + 1))
    {
      v12 = *(&v11 + 1);
      operator delete(*(&v11 + 1));
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (!v10)
    {
      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {

    sub_2337E0720(a1, a3);
  }

  return result;
}

void sub_2337E0B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2337E0BB0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a3 <= 1.0e-10)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  result = sub_2337DF8BC(a2, *a1, a1[1]);
  v7 = *a1;
  if (*a1)
  {
    v8 = 0;
    v9 = a1[1];
    do
    {
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v15[0] = sub_2337DFCEC(a1, v8);
          v15[1] = v11;
          v12 = *sub_2337DFD6C(v15, i);
          v14[0] = sub_2337DFCEC(a2, v8);
          v14[1] = v13;
          result = sub_2337DFD6C(v14, i);
          *result = 1.0 / a3 * round(v12 * a3);
          v9 = a1[1];
        }

        v7 = *a1;
      }

      ++v8;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t sub_2337E0CF0(unsigned int *a1, _DWORD *a2, double a3)
{
  v9 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  v28[2] = v8;
  v28[3] = v7;
  v28[4] = v6;
  v28[5] = v5;
  v28[12] = v3;
  v28[13] = v4;
  v12 = a1[1];
  if (v12 != a2[1])
  {
    return 0;
  }

  if (v9)
  {
    v14 = 0;
    while (!v12)
    {
LABEL_13:
      ++v14;
      result = 1;
      if (v14 >= v9)
      {
        return result;
      }
    }

    v15 = 0;
    while (1)
    {
      v28[0] = sub_2337DFCEC(a1, v14);
      v28[1] = v16;
      v17 = sub_2337DFD6C(v28, v15);
      v27[0] = sub_2337DFCEC(a2, v14);
      v27[1] = v18;
      v19 = sub_2337DFD6C(v27, v15);
      v20 = *v17 >= *v19 ? *v17 : *v19;
      v26[0] = sub_2337DFCEC(a1, v14);
      v26[1] = v21;
      v22 = *sub_2337DFD6C(v26, v15);
      v25[0] = sub_2337DFCEC(a2, v14);
      v25[1] = v23;
      if (v20 - fmin(v22, *sub_2337DFD6C(v25, v15)) > a3)
      {
        return 0;
      }

      ++v15;
      v12 = a1[1];
      if (v15 >= v12)
      {
        v9 = *a1;
        goto LABEL_13;
      }
    }
  }

  return 1;
}

char **sub_2337E0E4C(_DWORD *a1, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = (v4 - v3) >> 3;
  if (v6 != a1[1] * *a1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  result = (a1 + 2);
  if (result != a2)
  {

    return sub_23373176C(result, v3, v4, v6);
  }

  return result;
}

double sub_2337E0EE4(unsigned int *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return -INFINITY;
  }

  v3 = 0;
  v4 = a1[1];
  v5 = -INFINITY;
  do
  {
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v10[0] = sub_2337DFCEC(a1, v3);
        v10[1] = v7;
        v8 = sub_2337DFD6C(v10, i);
        if (*v8 > v5)
        {
          v5 = *v8;
        }

        v4 = a1[1];
      }

      v1 = *a1;
    }

    ++v3;
  }

  while (v3 < v1);
  return v5;
}

double sub_2337E0F94(unsigned int *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return INFINITY;
  }

  v3 = 0;
  v4 = a1[1];
  v5 = INFINITY;
  do
  {
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v10[0] = sub_2337DFCEC(a1, v3);
        v10[1] = v7;
        v8 = sub_2337DFD6C(v10, i);
        if (*v8 < v5)
        {
          v5 = *v8;
        }

        v4 = a1[1];
      }

      v1 = *a1;
    }

    ++v3;
  }

  while (v3 < v1);
  return v5;
}

uint64_t sub_2337E1044@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_2337236E0(a2, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
}

id sub_2337E1060(unsigned int *a1)
{
  if (*a1 && (v2 = a1[1]) != 0)
  {
    v3 = sub_233755CB8(v2 * *a1);
    v4 = *a1;
    if (*a1)
    {
      v5 = 0;
      v6 = a1[1];
      do
      {
        if (v6)
        {
          for (i = 0; i < v6; ++i)
          {
            v8 = MEMORY[0x277CCABB0];
            v20[0] = sub_2337DFCEC(a1, v5);
            v20[1] = v9;
            v10 = sub_2337DFD6C(v20, i);
            v15 = objc_msgSend_numberWithDouble_(v8, v11, v12, v13, v14, *v10);
            objc_msgSend_addObject_(v3, v16, v15, v17, v18);

            v6 = a1[1];
          }

          v4 = *a1;
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_2337E1170(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_2337235BC();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_233723798(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

id sub_2337E12A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC38];
  v42[1] = @"com.sony.sr2-raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".sr2.";
  v42[3] = &unk_284957B50;
  v42[4] = &unk_284957B68;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_233720DC0, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_2337E1598, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_2337E15A4, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_2337E15B0, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_2337E15BC, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_2337E15C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_2337E2CD0();
}

void sub_2337E166C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  sub_23374FA0C(a1, a2, a3);
  v6 = *a3;
  if (v6 > 0x7305)
  {
    if (*a3 <= 0x74A1u)
    {
      if (v6 != 29446)
      {
        if (v6 == 29856)
        {
          v7 = a1;
          v8 = a3;
          v9 = 2;
        }

        else
        {
          if (v6 != 29857)
          {
            return;
          }

          v7 = a1;
          v8 = a3;
          v9 = 3;
        }

        goto LABEL_109;
      }

      if (a3[1] != 3 || *(a3 + 1) != 4)
      {
        return;
      }

      sub_2337338AC(a1, v51);
      sub_23374B2FC(a3, v51, &v53);
      if (v51[1])
      {
        sub_2337239E8(v51[1]);
      }

      v16 = v53;
      if (v54 - v53 != 8)
      {
        goto LABEL_104;
      }

      LOWORD(v30) = *(v53 + 2);
      LOWORD(v31) = *(v53 + 3);
      v32 = v31;
      v33 = fmax(v30, v32);
      LOWORD(v32) = *(v53 + 1);
      v34 = *&v32;
      v35 = fmax(v34, v33);
      LOWORD(v34) = *v53;
      __src = COERCE_VOID_(fmax(*&v34, v35));
      if (*(a2 + 23) >= 0)
      {
        v36 = *(a2 + 23);
      }

      else
      {
        v36 = *(a2 + 8);
      }

      v37 = v51;
      sub_2337551CC(v51, v36 + 7);
      if (v52 < 0)
      {
        v37 = v51[0];
      }

      if (v36)
      {
        if (*(a2 + 23) >= 0)
        {
          v38 = a2;
        }

        else
        {
          v38 = *a2;
        }

        memmove(v37, v38, v36);
      }

      strcpy(v37 + v36, ":0x7306");
      __p[0] = v51;
      v39 = sub_23375E520(a1 + 240, v51);
      sub_233755258((v39 + 56), &__src, &v56, 1uLL);
      goto LABEL_101;
    }

    if (v6 == 29858)
    {
      v7 = a1;
      v8 = a3;
      v9 = 0;
    }

    else
    {
      if (v6 != 29859)
      {
        if (v6 == 50740 && a3[1] == 1 && *(a3 + 1) == 4)
        {
          v17 = *(a2 + 23);
          if (v17 < 0)
          {
            if (*(a2 + 8) != 4)
            {
              return;
            }

            v18 = *a2;
          }

          else
          {
            v18 = a2;
            if (v17 != 4)
            {
              return;
            }
          }

          if (*v18 == 809780809)
          {
            sub_2337338AC(a1, &v53);
            v40 = sub_233725404(v53);
            v41 = *(a3 + 2);
            v42 = bswap32(v41);
            if (v40 == 2)
            {
              v43 = v42;
            }

            else
            {
              v43 = v41;
            }

            if (v54)
            {
              sub_2337239E8(v54);
            }

            __p[0] = v43;
            sub_2337338AC(a1, v51);
            sub_2337268D8(&__src, __p);
            sub_233725F08(&v53, v51, &__src, 0);
            if (v51[1])
            {
              sub_2337239E8(v51[1]);
            }

            if (*(a2 + 23) >= 0)
            {
              v44 = *(a2 + 23);
            }

            else
            {
              v44 = *(a2 + 8);
            }

            v45 = v51;
            sub_2337551CC(v51, v44 + 11);
            if (v52 < 0)
            {
              v45 = v51[0];
            }

            if (v44)
            {
              if (*(a2 + 23) >= 0)
              {
                v46 = a2;
              }

              else
              {
                v46 = *a2;
              }

              memmove(v45, v46, v44);
            }

            strcpy(v45 + v44, ":SR2Private");
            (*(*a1 + 704))(a1, 0, v51);
            if (SHIBYTE(v52) < 0)
            {
              operator delete(v51[0]);
            }

            sub_233725FD4(&v53);
          }
        }

        return;
      }

      v7 = a1;
      v8 = a3;
      v9 = 1;
    }

LABEL_109:

    sub_2337E24C4(v7, v8, v9);
    return;
  }

  if (*a3 <= 0x7220u)
  {
    if (v6 == 29184)
    {
      sub_2338FC320(a3, a1);
    }

    else if (v6 == 29185)
    {
      sub_2338FC300(a3, a1);
    }

    return;
  }

  if (v6 == 29217)
  {
    if (a3[1] != 7 || *(a3 + 1) != 4)
    {
      return;
    }

    sub_2337338AC(a1, &v53);
    v24 = sub_233725404(v53);
    v25 = bswap32(*(a3 + 2));
    if (v24 == 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(a3 + 2);
    }

    if (v54)
    {
      sub_2337239E8(v54);
    }

    if (*(a2 + 23) >= 0)
    {
      v27 = *(a2 + 23);
    }

    else
    {
      v27 = *(a2 + 8);
    }

    v28 = v49;
    sub_2337551CC(v49, v27 + 10);
    if (v50 < 0)
    {
      v28 = v49[0];
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

    strcpy(v28 + v27, ":SR2SubIFD");
    sub_2337E1FF8(a1, v49, *(a1 + 1180), *(a1 + 1184), v26);
    if ((v50 & 0x80000000) == 0)
    {
      return;
    }

    v16 = v49[0];
LABEL_106:
    operator delete(v16);
    return;
  }

  if (v6 == 29440)
  {
    if (a3[1] != 3 || *(a3 + 1) != 4)
    {
      return;
    }

    sub_2337338AC(a1, v51);
    sub_23374B2FC(a3, v51, &v53);
    if (v51[1])
    {
      sub_2337239E8(v51[1]);
    }

    v16 = v53;
    if (v54 - v53 != 8)
    {
      goto LABEL_104;
    }

    if (*(a2 + 23) >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    v20 = v51;
    sub_2337551CC(v51, v19 + 12);
    if (v52 < 0)
    {
      v20 = v51[0];
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

    strcpy(v20 + v19, ":BlackLevels");
    __p[1] = 0;
    v48 = 0;
    __p[0] = 0;
    sub_2337924A4(__p, v53, v54, (v54 - v53) >> 1);
    __src = v51;
    v22 = sub_233757B14(a1 + 264, v51);
    v23 = v22[7];
    if (v23)
    {
      v22[8] = v23;
      operator delete(v23);
      v22[7] = 0;
      v22[8] = 0;
      v22[9] = 0;
    }

    *(v22 + 7) = *__p;
    v22[9] = v48;
LABEL_101:
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    v16 = v53;
LABEL_104:
    if (!v16)
    {
      return;
    }

    v54 = v16;
    goto LABEL_106;
  }

  if (v6 == 29443 && a3[1] == 3 && *(a3 + 1) == 4)
  {
    sub_2337338AC(a1, v51);
    sub_23374B2FC(a3, v51, &v53);
    if (v51[1])
    {
      sub_2337239E8(v51[1]);
    }

    v10 = v53;
    if (v54 - v53 == 8)
    {
      v51[0] = 0;
      v51[1] = 0;
      v52 = 0;
      sub_23375E2CC(v51, v53, v54, 4uLL);
      if (*(a2 + 23) >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      v12 = __p;
      sub_2337551CC(__p, v11 + 9);
      if (v48 < 0)
      {
        v12 = __p[0];
      }

      if (v11)
      {
        if (*(a2 + 23) >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        memmove(v12, v13, v11);
      }

      strcpy(v12 + v11, ":WBLevels");
      __src = __p;
      v14 = sub_23375E5EC(a1 + 120, __p);
      v15 = v14[7];
      if (v15)
      {
        v14[8] = v15;
        operator delete(v15);
        v14[7] = 0;
        v14[8] = 0;
        v14[9] = 0;
      }

      *(v14 + 7) = *v51;
      v14[9] = v52;
      v51[1] = 0;
      v52 = 0;
      v51[0] = 0;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
        if (v51[0])
        {
          v51[1] = v51[0];
          operator delete(v51[0]);
        }
      }

      v10 = v53;
    }

    if (v10)
    {
      v54 = v10;
      v16 = v10;
      goto LABEL_106;
    }
  }
}

void sub_2337E1EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_2337E1FF8(uint64_t result, uint64_t a2, int a3, unsigned int a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = a3;
  if (a3 && a4 && a4 - 0x4000 >= 0xFFFFC801 && (a4 & 3) == 0)
  {
    v6 = result;
    v7 = 0;
    memset(v31, 0, sizeof(v31));
    do
    {
      a5 = 48828125 * a5 + 1;
      *(v31 + v7) = a5;
      v7 += 4;
    }

    while (v7 != 16);
    v8 = 0;
    v9 = DWORD2(v31[0]);
    v10 = v31[0];
    v11 = (*(&v31[0] + 1) ^ LODWORD(v31[0])) >> 31;
    HIDWORD(v31[0]) = v11;
    do
    {
      v12 = v9 ^ v10;
      v10 = *(v31 + v8 + 4);
      v9 = v11;
      HIDWORD(v13) = v12;
      LODWORD(v13) = v11 ^ v10;
      v11 = v13 >> 31;
      *(&v31[1] + v8) = v11;
      v8 += 4;
    }

    while (v8 != 492);
    LODWORD(v14) = a4 >> 2;
    sub_23372630C(&__p, a4 >> 2);
    sub_2337338AC(v6, &v26);
    sub_233754E04(v28, &v26);
    if (v27)
    {
      sub_2337239E8(v27);
    }

    sub_2337338AC(v6, &v24);
    sub_233735A18(&v26, &v24, 2);
    if (v25)
    {
      sub_2337239E8(v25);
    }

    sub_2337338AC(v6, &v24);
    v15 = v24;
    sub_233723AE0(&v23, &v30);
    (*(*v15 + 40))(v15, &v23, 0);
    if (v25)
    {
      sub_2337239E8(v25);
    }

    v16 = 0;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v14;
    }

    while (1)
    {
      sub_2337338AC(v6, &v24);
      v17 = sub_233725614(v24);
      *(__p + v16) = v17;
      if (v25)
      {
        sub_2337239E8(v25);
      }

      v16 += 4;
      if (4 * v14 == v16)
      {
        v18 = 192;
        v19 = __p;
        v20 = v14;
        do
        {
          v21 = *(v31 + (v18 & 0x7F)) ^ *(v31 + ((v18 - 64) & 0x7F));
          *(v31 + ((v18 - 65) & 0x7F)) = v21;
          *v19++ ^= v21;
          ++v18;
          --v20;
        }

        while (v20);
        v22 = __p;
        do
        {
          *v22 = bswap32(*v22);
          ++v22;
          --v14;
        }

        while (v14);
        sub_233735A90(&v26);
        LODWORD(v24) = a4;
        sub_233725138();
      }
    }
  }

  return result;
}

void sub_2337E23F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337E24C4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 3 && *(a2 + 2) == 5 && *(a2 + 4) == 1)
  {
    v7 = (*(*a1 + 400))(a1);
    if (v7)
    {
      v23 = 0.0;
      sub_2337338AC(a1, &v21);
      v9 = sub_23374ABCC(a2, &v23, &v21, v8);
      if (v22)
      {
        sub_2337239E8(v22);
      }

      if (v9)
      {
        v10 = sub_2337854A4(v7, *MEMORY[0x277CD2F50], 0);
        sub_2337E2674(v10, @"LensInfo");
          ;
        }

        v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, v18, v19, v23);
        sub_2337E2744(i, v20, a3);
      }
    }
  }
}

id sub_2337E2674(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4, v6, v7);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11, v12);

    v8 = v13;
    objc_msgSend_setObject_forKey_(v3, v14, v13, v4, v15);
  }

  return v8;
}

void sub_2337E2744(void *a1, void *a2, unint64_t a3)
{
  v13 = a1;
  v9 = a2;
  if (v13)
  {
    if (!v9 || objc_msgSend_count(v13, v5, v6, v7, v8) < a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    objc_msgSend_insertObject_atIndex_(v13, v10, v9, a3, v11);
  }
}

void sub_2337E2824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);

  _Unwind_Resume(a1);
}

uint64_t sub_2337E2850(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337E28AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337E28C8(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337E2924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337E2940(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337E299C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337E29B8(uint64_t a1)
{
  v6 = 1;
  sub_23372A488(__p, "IFD0:SUBIFD0");
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

void sub_2337E2A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337E2A44(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(*a1 + 536))(a1) == 1)
  {
    (*(*a1 + 384))(&v4, a1);
    (*(*a1 + 424))(a1);
    sub_23376419C();
  }

  sub_233733B14(a2);
}

void sub_2337E2B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337E2BA4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_23372A488(&__p, "sr2");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "sony");
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

void sub_2337E2C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_2337E2C98(uint64_t a1)
{
  sub_2337557B4(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337E2D74(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849115B8;
  sub_23374B844((a1 + 3), a2, *a3, *a4, *a5);
  a1[3] = &unk_284911280;
  return a1;
}

void sub_2337E2E18(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849115B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E2E94(uint64_t a1)
{
  v7 = 0;
  v6 = &unk_28490CE28;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "IFD0:SR2Private:SR2SubIFD:WBLevels");
  (*(*v1 + 600))(v1, __p, &v6, 3);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_2337E2F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337E2FA8(uint64_t a1)
{
  if ((*(*a1 + 176))(a1))
  {
    goto LABEL_8;
  }

  v8 = 0;
  (*(*a1 + 160))(&v6, a1);
  v2 = v6;
  sub_23372A488(__p, "IFD0:SR2Private:SR2SubIFD:0x7306");
  v3 = (*(*v2 + 240))(v2, __p, &v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  if ((v3 & 1) == 0)
  {
LABEL_8:
    sub_2338D8F78(a1);
  }

  else
  {
    (*(*a1 + 848))(a1);
  }
}

void sub_2337E30DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
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

void sub_2337E310C(uint64_t a1@<X0>, void **a2@<X8>)
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
  sub_23372A488(__p, "IFD0:SR2Private:SR2SubIFD:BlackLevels");
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

void sub_2337E3224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void sub_2337E32F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 400);
  v3 = *(a1 + 408);
  if (v3 == v2)
  {
    sub_23373804C(a1, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_2337E4684(a2, v2, v3, 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  }
}

void sub_2337E3320(uint64_t a1)
{
  (*(*a1 + 160))(&__p);
  sub_2337D04B8(&__p, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v5)
  {
    (*(*a1 + 1016))(&__p, a1);
    (*(*a1 + 896))(a1);
    (*(*a1 + 2168))(a1);
    sub_2337A493C(v5);
    sub_233861334();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_2337E34B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337E34F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 160))(__p);
  sub_2337D04B8(__p, &v5);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if (v5)
  {
    if (sub_2337A4944(v5))
    {
      sub_2337A4988(v5, __p);
      sub_233842BC8();
    }

    *&v4 = sub_2337A493C(v5);
    sub_233842B30();
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_2337E35E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v12 = *(v10 - 24);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337E361C(uint64_t a1)
{
  (*(*a1 + 160))(&v9);
  sub_2337D04B8(&v9, &v11);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (v11)
  {
    if (sub_2337A4944(v11))
    {
      sub_2337A4988(v11, &v9);
      v2 = v9;
      if ((v10 - v9) <= 8)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v3 = sqrt(v9[1] + *v9 * 0.18);
      v4 = 100.0;
    }

    else
    {
      v6 = (*(*a1 + 256))(a1);
      v2 = 0;
      v3 = sqrt(v6 / 100.0) * sub_2337A493C(v11);
      v4 = 0.2;
    }

    v5 = fmin(fmax(v3 * v4, 0.1), 5.0);
  }

  else
  {
    v2 = 0;
    v5 = 1.0;
  }

  if (v12)
  {
    sub_2337239E8(v12);
  }

  if (v2)
  {
    operator delete(v2);
  }

  return v5;
}

void sub_2337E37B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337E3800(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233731694(a2, 4uLL);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  (*(*a1 + 160))(&v25, a1);
  v4 = v25;
  sub_23372A488(&__p, "IFD0:SUBIFD0");
  v5 = (*(*v4 + 248))(v4, &__p, &v33, 0);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    sub_2337239E8(v26);
  }

  if ((v5 & 1) == 0)
  {
    (*(*a1 + 160))(&v25, a1);
    v6 = v25;
    sub_23372A488(&__p, "IFD0");
    (*(*v6 + 248))(v6, &__p, &v33, 0);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      sub_2337239E8(v26);
    }
  }

  (*(*a1 + 160))(&v25, a1);
  v7 = v25;
  sub_23372A488(&__p, "IFD0:SUBIFD0:DeltaH");
  v8 = (*(*v7 + 248))(v7, &__p, &v30, 0);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    sub_2337239E8(v26);
  }

  if ((v8 & 1) == 0)
  {
    (*(*a1 + 160))(&v25, a1);
    v9 = v25;
    sub_23372A488(&__p, "IFD0:DeltaH");
    (*(*v9 + 248))(v9, &__p, &v30, 0);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      sub_2337239E8(v26);
    }
  }

  (*(*a1 + 160))(&v25, a1);
  v10 = v25;
  sub_23372A488(&__p, "IFD0:SUBIFD0:DeltaV");
  v11 = (*(*v10 + 248))(v10, &__p, &v27, 0);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    sub_2337239E8(v26);
  }

  if ((v11 & 1) == 0)
  {
    (*(*a1 + 160))(&v25, a1);
    v12 = v25;
    sub_23372A488(&__p, "IFD0:DeltaV");
    (*(*v12 + 248))(v12, &__p, &v27, 0);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      sub_2337239E8(v26);
    }
  }

  v25 = 0;
  sub_233731694(&__p, 4uLL);
  v13 = *a2;
  if (*a2)
  {
    a2[1] = v13;
    operator delete(v13);
  }

  v14 = __p;
  *a2 = __p;
  v15 = v24;
  *(a2 + 1) = v24;
  v16 = v27;
  if (v15 != v14)
  {
    v17 = 0;
    v18 = v33;
    v19 = v34 - v33;
    v20 = v30;
    v21 = (v31 - v30) >> 3;
    v22 = (v28 - v27) >> 3;
    do
    {
      if (v19 > v17)
      {
        v14[v17] = v18[v17] + v14[v17];
      }

      if (v21 > v17)
      {
        v14[v17] = v20[v17] + v14[v17];
      }

      if (v22 > v17)
      {
        v14[v17] = v16[v17] + v14[v17];
      }

      ++v17;
    }

    while (v15 - v14 > v17);
  }

  if (v16)
  {
    v28 = v16;
    operator delete(v16);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }
}

void sub_2337E3CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    *(v22 - 48) = v24;
    operator delete(v24);
  }

  v25 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337E3D80(uint64_t a1)
{
  (*(*a1 + 160))(&v10);
  sub_2337D04B8(&v10, &v12);
  if (*(&v10 + 1))
  {
    sub_2337239E8(*(&v10 + 1));
  }

  if (v12)
  {
    sub_2337A3898(v12, 14, &v10);
    v1 = v10;
    if (*(&v10 + 1) != v10)
    {
      if (*v10)
      {
        v2 = __dynamic_cast(*v10, &unk_2849027A8, &unk_284910FC0, 0);
        if (v2)
        {
          v3 = v2;
          v4 = *(v1 + 8);
          if (v4)
          {
            atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (((0xAAAAAAAAAAAAAAABLL * ((v3[3] - v3[2]) >> 3)) | 2) == 3)
          {
            goto LABEL_17;
          }

          if (v4)
          {
            sub_2337239E8(v4);
          }
        }
      }
    }

    sub_2337A3898(v12, 1, &v8);
    sub_2337A6858(&v10);
    v10 = v8;
    v11 = v9;
    v9 = 0;
    v8 = 0uLL;
    v14 = &v8;
    sub_233723948(&v14);
    v5 = v10;
    if (*(&v10 + 1) == v10 || !*v10 || !__dynamic_cast(*v10, &unk_2849027A8, &unk_284923B50, 0))
    {
LABEL_19:
      *&v8 = &v10;
      sub_233723948(&v8);
      v6 = 7;
      goto LABEL_21;
    }

    v4 = *(v5 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_17:
    if (v4)
    {
      sub_2337239E8(v4);
    }

    goto LABEL_19;
  }

  v6 = 0;
LABEL_21:
  if (v13)
  {
    sub_2337239E8(v13);
  }

  return v6;
}

void sub_2337E3F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_233723948(&a9);
  v15 = *(v13 - 32);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  _Unwind_Resume(a1);
}

void sub_2337E3FC8(uint64_t a1@<X0>, const void **a2@<X8>)
{
  (*(*a1 + 160))(&v10);
  sub_2337D04B8(&v10, &v12);
  if (*(&v10 + 1))
  {
    sub_2337239E8(*(&v10 + 1));
  }

  if (!v12)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_25;
  }

  sub_2337A3898(v12, 14, &v10);
  v3 = v10;
  if (*(&v10 + 1) - v10 == 16)
  {
    if (*v10)
    {
      v4 = __dynamic_cast(*v10, &unk_2849027A8, &unk_284910FC0, 0);
      if (v4)
      {
        v5 = *(v3 + 8);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (((0xAAAAAAAAAAAAAAABLL * ((v4[3] - v4[2]) >> 3)) | 2) == 3)
        {
          sub_2337D8CC0(v4, a2);
          goto LABEL_21;
        }

        if (v5)
        {
          sub_2337239E8(v5);
        }
      }
    }
  }

  sub_2337A3898(v12, 1, &v8);
  sub_2337A6858(&v10);
  v10 = v8;
  v11 = v9;
  v9 = 0;
  v8 = 0uLL;
  v14 = &v8;
  sub_233723948(&v14);
  v6 = v10;
  if (*(&v10 + 1) - v10 != 16 || !*v10 || (v7 = __dynamic_cast(*v10, &unk_2849027A8, &unk_284923B50, 0)) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_24;
  }

  v5 = *(v6 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (((0xAAAAAAAAAAAAAAABLL * ((v7[3] - v7[2]) >> 3)) | 2) != 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (!v5)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  sub_23384FCD4(v7, a2);
LABEL_21:
  if (v5)
  {
LABEL_22:
    sub_2337239E8(v5);
  }

LABEL_24:
  *&v8 = &v10;
  sub_233723948(&v8);
LABEL_25:
  if (v13)
  {
    sub_2337239E8(v13);
  }
}

void sub_2337E421C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    sub_2337239E8(v13);
  }

  a9 = &a13;
  sub_233723948(&a9);
  v16 = *(v14 - 32);
  if (v16)
  {
    sub_2337239E8(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337E4264(uint64_t a1)
{
  (*(*a1 + 160))(&v5);
  sub_2337D04B8(&v5, &v7);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  if (v7)
  {
    sub_2337A3898(v7, 9, &v5);
    v1 = v5;
    if (v5 != v6 && v5->__vftable && __dynamic_cast(v5->__vftable, &unk_2849027A8, &unk_28491F0E8, 0))
    {
      shared_owners = v1->__shared_owners_;
      v3 = 1;
      if (shared_owners)
      {
        atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_2337239E8(shared_owners);
      }
    }

    else
    {
      v3 = 0;
    }

    v9 = &v5;
    sub_233723948(&v9);
  }

  else
  {
    v3 = 0;
  }

  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v3;
}

void sub_2337E4384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_2337239E8(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337E439C(uint64_t a1)
{
  if (!(*(*a1 + 2808))(a1))
  {
    return 0;
  }

  (*(*a1 + 2816))(&v4, a1);
  v2 = v5 != v4;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v2;
}

double sub_2337E444C(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  sub_2337D04B8(&v3, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  v1 = 5.0;
  if (v5 && (sub_2337A639C(v5) || sub_2337A53B0(v5)))
  {
    v1 = 0.0;
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v1;
}

void sub_2337E44EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337E4504(uint64_t a1)
{
  v2 = sub_233738B48();
  (*(*a1 + 160))(&v4, a1);
  sub_2337D04B8(&v4, &v6);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  if (v6)
  {
    v2 = sub_2337A4934(v6);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337E45A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337E45B8(uint64_t a1)
{
  *a1 = &unk_2849121B8;
  v3 = (a1 + 400);
  sub_233735AD4(&v3);
  return sub_233736628(a1);
}

uint64_t sub_2337E4614(uint64_t a1)
{
  *a1 = &unk_2849121B8;
  v4 = (a1 + 400);
  sub_233735AD4(&v4);
  v2 = sub_233736628(a1);
  return MEMORY[0x2383ABF10](v2, 0x10A1C4009B45E12);
}

uint64_t sub_2337E4684(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2337E470C(result, a4);
  }

  return result;
}

void sub_2337E46EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_233735AD4(&a9);
  _Unwind_Resume(a1);
}

void sub_2337E470C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_233735B78(a1, a2);
  }

  sub_2337235BC();
}

char *sub_2337E4758(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_233731FB8(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_2337E4818(v9);
  return v4;
}

uint64_t sub_2337E4818(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2337E4850(a1);
  }

  return a1;
}

void sub_2337E4850(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

vImage_Error sub_2337E4A6C(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, vImagePixelCount a6, vImagePixelCount a7)
{
  v14 = *(a1 + 32);
  v19 = objc_msgSend_bytes(v14, v15, v16, v17, v18);
  v20 = *(a1 + 40);
  src.data = (v19 + v20 * a5 + 4 * a4);
  src.height = a7;
  src.width = a6;
  src.rowBytes = v20;
  v22.data = a2;
  v22.height = a7;
  v22.width = a6;
  v22.rowBytes = a3;
  return vImageConvert_PlanarFtoPlanar16F(&src, &v22, 0);
}

uint64_t sub_2337E5240(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_27DE37DD8 = objc_msgSend_kernelWithName_(LTMKernels, a2, @"profileGainTableMap", a4, a5);

  return MEMORY[0x2821F96F8]();
}

void sub_2337E5288(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWProfileGainTableMap", &unk_233945DBE, v5, 2u);
  }
}

double sub_2337E5310(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    *&v29.a = *(a1 + 32);
    *&v29.c = v7;
    *&v29.tx = *(a1 + 64);
    v30 = CGRectApplyAffineTransform(*&result, &v29);
    v31 = CGRectIntegral(v30);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = v12;
    v31.size.height = v13;
    MinX = CGRectGetMinX(v31);
    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = v12;
    v32.size.height = v13;
    MinY = CGRectGetMinY(v32);
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = v12;
    v33.size.height = v13;
    MaxX = CGRectGetMaxX(v33);
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = v12;
    v34.size.height = v13;
    MaxY = CGRectGetMaxY(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v15 = CGRectGetMinX(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v16 = CGRectGetMinY(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v17 = CGRectGetMaxX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v18 = CGRectGetMaxY(v38);
    v19 = fmax(v15, MinX);
    v20 = fmin(v17, MaxX) - v19;
    if (v15 >= MaxX)
    {
      v20 = 2.0;
      v19 = MaxX + -1.0;
    }

    if (v17 > MinX)
    {
      v21 = v19;
    }

    else
    {
      v20 = 2.0;
      v21 = MinX + -1.0;
    }

    v22 = fmax(v16, MinY);
    v23 = fmin(v18, MaxY) - v22;
    if (v16 >= MaxY)
    {
      v23 = 2.0;
      v22 = MaxY + -1.0;
    }

    if (v18 <= MinY)
    {
      v24 = 2.0;
    }

    else
    {
      v24 = v23;
    }

    if (v18 <= MinY)
    {
      v22 = MinY + -1.0;
    }

    v25 = v21;
    return COERCE_DOUBLE(CGRectInset(*(&v20 - 2), -1.0, -1.0)) * *(a1 + 96);
  }

  return result;
}

void sub_2337E560C()
{
  if (qword_280C04E70 != -1)
  {
    sub_2338FC3DC();
  }
}

void sub_2337E5D94(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E5E3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E5E28);
}

void sub_2337E5F2C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284912DF8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E5FEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284912DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E6068(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E6110(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E60FCLL);
}

void sub_2337E6200(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284912E88;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E62C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284912E88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E633C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E63E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E63D0);
}

void sub_2337E64D4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284912F18;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E6594(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284912F18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E6610(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E66B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E66A4);
}

void sub_2337E67A8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284912FA8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E6868(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284912FA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E68E4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E698C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E6978);
}

void sub_2337E6A7C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913038;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E6B3C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E6BB8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E6C60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E6C4CLL);
}

void sub_2337E6D50(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849130C8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E6E10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849130C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E6E8C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E6F34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E6F20);
}

void sub_2337E7024(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913158;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E70E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E7160(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E7208(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E71F4);
}

void sub_2337E72F8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849131E8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E73B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849131E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E7434(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E74DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E74C8);
}

void sub_2337E75CC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913278;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E768C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E7708(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E77B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E779CLL);
}

void sub_2337E78A0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913308;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E7960(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E79DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E7A84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E7A70);
}

void sub_2337E7B74(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913398;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E7C34(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913398;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E7CB0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E7D58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E7D44);
}

void sub_2337E7E48(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913428;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E7F10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E7F8C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E8034(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E8020);
}

void sub_2337E8124(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849134B8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E81E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849134B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E8260(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E8308(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E82F4);
}

void sub_2337E83F8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913548;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E84B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E8534(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E85DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E85C8);
}

void sub_2337E86CC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849135D8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E878C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849135D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E8808(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E88B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E889CLL);
}

void sub_2337E89A0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913668;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E8A60(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E8ADC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E8B84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E8B70);
}

void sub_2337E8C74(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849136F8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E8D34(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849136F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E8DB0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E8E58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E8E44);
}

void sub_2337E8F48(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913788;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E9008(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E9084(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E912C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E9118);
}

void sub_2337E921C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284913818;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E92DC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284913818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E9358(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E9400(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E93ECLL);
}

void sub_2337E94F0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284914458;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E95B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284914458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E962C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E96D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E96C0);
}

void sub_2337E97C4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284915098;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E9884(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284915098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E9900(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E99A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E9994);
}

void sub_2337E9A98(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284915128;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E9B5C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284915128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E9BD8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E9C80(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E9C6CLL);
}

void sub_2337E9D70(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849151B8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337E9E30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849151B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337E9EAC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337E9F54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337E9F40);
}

void sub_2337EA044(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284915248;
  sub_233737534((a1 + 3), a2);
}

void sub_2337EA104(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284915248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337EA180(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337EA228(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337EA214);
}

void sub_2337EA318(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849152D8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337EA3D8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849152D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337EA454(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337EA4FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337EA4E8);
}

void sub_2337EA5EC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284915368;
  sub_233737534((a1 + 3), a2);
}

void sub_2337EA6AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284915368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337EA728(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337EA7D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337EA7BCLL);
}

void sub_2337EA8C0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849153F8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337EA980(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849153F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337EA9FC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337EAAA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337EAA90);
}

void sub_2337EAB94(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284916058;
  sub_233737534((a1 + 3), a2);
}

void sub_2337EAC54(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284916058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337EACD0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337EAD78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337EAD64);
}