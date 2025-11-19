void sub_233801F7C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

double sub_233801FD8(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337F5668(v2, @"olympusFallbackBlackLevel", v3, &unk_28491AF00);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_23380208C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338020AC(void *a1)
{
  (*(*a1 + 2888))(&v7);
  if (v8 != v7)
  {
    v2 = *v7;
    if (*v7 == 2)
    {
      (*(*a1 + 160))(&v5, a1);
      (*(*v5 + 384))(&v6);
      (*(*a1 + 336))(a1);
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_233802980();
    }

    v3 = v8 - v7;
    if (v2 == 7)
    {
      if (v3 > 1)
      {
        (*(*a1 + 160))(&v5, a1);
        (*(*v5 + 384))(&v6);
        (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_233802A24();
      }

LABEL_16:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v2 == 4)
    {
      if (v3 > 1 && (v7[1] & 0x80000000) == 0)
      {
        (*(*a1 + 160))(&v5, a1);
        (*(*v5 + 384))(&v6);
        (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_233802844();
      }

      goto LABEL_16;
    }
  }

  sub_23373C7EC(a1);
  if (!a1[3])
  {
    goto LABEL_16;
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }
}

void sub_23380262C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_2337239E8(a18);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  v20 = *(v18 - 48);
  if (v20)
  {
    *(v18 - 40) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338026E4(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_233802730(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_28491BAF8, &unk_2339083D0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_23380277C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_23380277C;
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
    *a3 = sub_23380277C;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_28491BAF8;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_28491BAF8);
  }

  else
  {
    v6 = a5 == &unk_2339083D0;
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

uint64_t sub_2338028F8(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, int *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849060F0;
  v7 = *a6;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28490B2B8;
  *(a1 + 212) = v7;
  *(a1 + 216) = 0;
  return a1;
}

uint64_t sub_233802AC8(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28491BB18;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28490B1C8;
  *(a1 + 212) = 0;
  return a1;
}

void sub_233802B68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28491BB18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233802BE4(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&v2, a1);
    (*(*v2 + 384))(&v3);
    (*(*a1 + 336))(a1);
    (*(*a1 + 408))(a1);
    (*(*a1 + 432))(a1);
    sub_2337F3AEC();
  }
}

void sub_233802D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_233802DAC(uint64_t a1)
{
  v2 = (*(*a1 + 2192))(a1);
  v8 = 0;
  v9 = v2;
  v7 = &unk_284917748;
  (*(*a1 + 160))(&v5, a1);
  v4 = 17;
  strcpy(__p, "MinoltaSegmentWBG");
  (*(*v5 + 600))();
  if (v4 < 0)
  {
    operator delete(*__p);
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }
}

void sub_233802EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_233803170(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&v2, a1);
    (*(*v2 + 384))(&v3);
    (*(*a1 + 336))(a1);
    (*(*a1 + 408))(a1);
    (*(*a1 + 432))(a1);
    sub_233803554();
  }
}

void sub_23380330C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_233803340(uint64_t a1, uint64_t a2)
{
  v6 = &unk_284910F70;
  v7 = 0;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE");
  (*(*a1 + 2976))(a1, a2, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_233803408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233803424(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_2337C0120(&v5, &unk_233908488, &unk_2339084E8, 0xCuLL);
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE");
  v2 = (*(*a1 + 2968))(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 2960))(a1, v2);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }
}

void sub_23380351C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338035F8(void *a1)
{
  sub_23373C7EC(a1);
  if (a1[3])
  {
    return;
  }

  (*(*a1 + 160))(&v10, a1);
  sub_2337D0764(&v10, &v12);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  if (v12)
  {
    (*(*a1 + 2888))(&v10, a1);
    if ((v11 - v10) < 5)
    {
      v2 = (*(*v12 + 816))(v12);
    }

    else
    {
      v2 = *(v10 + 1);
    }

    if (v2 > 6)
    {
      if (v2 <= 9)
      {
        if (v2 != 7)
        {
          if (v2 != 8)
          {
            (*(*a1 + 160))(v7, a1);
            (*(*v7[0] + 384))(&v9);
            v8 = (*(*a1 + 336))(a1);
            (*(*a1 + 408))(a1);
            (*(*a1 + 432))(a1);
            sub_2337F3AEC();
          }

          (*(*a1 + 160))(v7, a1);
          (*(*v7[0] + 384))(&v9);
          v8 = (*(*a1 + 336))(a1);
          (*(*a1 + 408))(a1);
          (*(*a1 + 432))(a1);
          sub_23380647C();
        }

        (*(*a1 + 160))(v7, a1);
        (*(*v7[0] + 384))(&v9);
        v8 = (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_2337F3A48();
      }

      if ((v2 - 13) < 2)
      {
        v6 = a1[4];
        a1[3] = 0;
        a1[4] = 0;
        if (v6)
        {
          sub_2337239E8(v6);
        }
      }

      else if (v2 == 10 || v2 == 100006)
      {
        (*(*a1 + 160))(v7, a1);
        (*(*v7[0] + 384))(&v9);
        v8 = (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_2338062B0();
      }

LABEL_38:
      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      goto LABEL_40;
    }

    if (v2 <= 2)
    {
      if (v2 != 1)
      {
        if (v2 == 2)
        {
          v4 = (*(*a1 + 576))(a1);
          if (v4 == 12)
          {
            (*(*a1 + 160))(v7, a1);
            (*(*v7[0] + 384))(&v9);
            v8 = (*(*a1 + 336))(a1);
            (*(*a1 + 408))(a1);
            (*(*a1 + 432))(a1);
            sub_2337F3AEC();
          }

          if (v4 == 14)
          {
            (*(*a1 + 160))(v7, a1);
            (*(*v7[0] + 384))(&v9);
            v8 = (*(*a1 + 336))(a1);
            (*(*a1 + 408))(a1);
            (*(*a1 + 432))(a1);
            sub_2337F3A48();
          }
        }

        goto LABEL_38;
      }
    }

    else if ((v2 - 3) >= 2)
    {
      if (v2 == 5)
      {
        (*(*a1 + 160))(v7, a1);
        (*(*v7[0] + 384))(&v9);
        v8 = (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_233806654();
      }

      if (v2 == 6)
      {
        (*(*a1 + 160))(v7, a1);
        (*(*v7[0] + 384))(&v9);
        v8 = (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_23380620C();
      }

      goto LABEL_38;
    }

    (*(*v12 + 384))(&v9);
    (*(*a1 + 336))(a1);
    v8 = (*(*a1 + 408))(a1);
    v7[0] = (*(*a1 + 432))(a1);
    v7[1] = v5;
    (*(*v12 + 520))(v12);
    (*(*v12 + 800))(v12);
    sub_233806020();
  }

LABEL_40:
  if (v13)
  {
    sub_2337239E8(v13);
  }
}

void sub_23380464C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20)
{
  if (a18)
  {
    sub_2337239E8(a18);
  }

  if (a15)
  {
    sub_2337239E8(a15);
  }

  v22 = *(v20 - 64);
  if (v22)
  {
    *(v20 - 56) = v22;
    operator delete(v22);
  }

  v23 = *(v20 - 32);
  if (v23)
  {
    sub_2337239E8(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338047A8(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  sub_2337D0764(&v3, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v5)
  {
    v1 = (*(*v5 + 792))(v5);
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

void sub_23380485C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23380487C(uint64_t a1)
{
  (*(*a1 + 160))(&v17);
  v2 = v17;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE");
  v3 = (*(*v2 + 264))(v2, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v17 + 1))
  {
    sub_2337239E8(*(&v17 + 1));
  }

  if (!v3)
  {
    v3 = sub_233739024(a1);
    if (!v3)
    {
      (*(*a1 + 160))(&v17, a1);
      v4 = v17;
      sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:ISOInfo");
      v3 = (*(*v4 + 264))(v4, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(&v17 + 1))
      {
        sub_2337239E8(*(&v17 + 1));
      }

      if (!v3)
      {
        (*(*a1 + 224))(__p, a1);
        v5 = v20;
        if (v20 < 0)
        {
          if (__p[1] != 13)
          {
            goto LABEL_21;
          }

          v6 = __p[0];
        }

        else
        {
          if (v20 != 13)
          {
            goto LABEL_21;
          }

          v6 = __p;
        }

        v7 = *v6;
        v8 = *(v6 + 5);
        if (v7 == 0x205849504C4F4F43 && v8 == 0x3030303750205849)
        {
          v3 = 6400;
LABEL_47:
          if (v5 < 0)
          {
            operator delete(__p[0]);
          }

          return v3;
        }

LABEL_21:
        (*(*a1 + 224))(&v17, a1);
        if (v18 < 0)
        {
          if (*(&v17 + 1) == 13)
          {
            v13 = 0x434F4F4C50495820;
            v14 = bswap64(*v17);
            if (v14 == 0x434F4F4C50495820 && (v13 = 0x4958205037313030, v14 = bswap64(*(v17 + 5)), v14 == 0x4958205037313030))
            {
              v15 = 0;
            }

            else if (v14 < v13)
            {
              v15 = -1;
            }

            else
            {
              v15 = 1;
            }

            if (v15)
            {
              v3 = 0;
            }

            else
            {
              v3 = 6400;
            }
          }

          else
          {
            v3 = 0;
          }

          operator delete(v17);
        }

        else if (v18 == 13)
        {
          v10 = 0x434F4F4C50495820;
          v11 = bswap64(v17);
          if (v11 == 0x434F4F4C50495820 && (v10 = 0x4958205037313030, v11 = bswap64(*(&v17 + 5)), v11 == 0x4958205037313030))
          {
            v12 = 0;
          }

          else if (v11 < v10)
          {
            v12 = -1;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            v3 = 0;
          }

          else
          {
            v3 = 6400;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = v20;
        goto LABEL_47;
      }
    }
  }

  return v3;
}

void sub_233804BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233804BFC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376D0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_233804D14;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_233804CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233804D14(uint64_t a1)
{
  (*(**(a1 + 32) + 160))(&v3);
  v1 = (*(*v3 + 512))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233804DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_233804DCC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_msgSend_isEqualToString_(v4, v5, @"highSpeedCropMode", v6, v7))
  {
    v11 = (*(*a1 + 2968))(a1);
    v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, v11, v13, v14);
LABEL_26:
    v2 = v15;
    goto LABEL_27;
  }

  if (objc_msgSend_isEqualToString_(v4, v8, @"isMultipleExposure", v9, v10))
  {
    v19 = (*(*a1 + 2952))(a1);
    v20 = MEMORY[0x277CBEC28];
    if (v19)
    {
      v20 = MEMORY[0x277CBEC38];
    }

    v15 = v20;
    goto LABEL_26;
  }

  if (!objc_msgSend_isEqualToString_(v4, v16, @"NEFCompression", v17, v18))
  {
    if (objc_msgSend_isEqualToString_(v4, v21, @"sensorBitDepth", v22, v23))
    {
      v30 = (*(*a1 + 176))(a1);
      v31 = *a1;
      if (v30)
      {
        v35 = (*(v31 + 864))(a1);
        if (v35 < 0)
        {
          v36 = 16;
        }

        else
        {
          v36 = 16;
          v37 = 0x8000;
          do
          {
            if (!--v36)
            {
              break;
            }

            v38 = v35 & (v37 >> 1);
            v37 >>= 1;
          }

          while (!v38);
        }
      }

      else
      {
        v36 = (*(v31 + 576))(a1);
      }

      v15 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v32, v36, v33, v34);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  (*(*a1 + 160))(&v40, a1);
  sub_2337D0764(&v40, &v42);
  if (v41)
  {
    sub_2337239E8(v41);
  }

  v24 = v42;
  if (v42)
  {
    v25 = MEMORY[0x277CCABB0];
    v26 = (*(*v42 + 816))(v42);
    v2 = objc_msgSend_numberWithInt_(v25, v27, v26, v28, v29);
  }

  if (v43)
  {
    sub_2337239E8(v43);
  }

  if (!v24)
  {
LABEL_22:
    v15 = sub_2338D3C20(a1, v4);
    goto LABEL_26;
  }

LABEL_27:

  return v2;
}

uint64_t sub_2338050C8(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  sub_2337D0764(&v3, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v5)
  {
    v1 = (*(*v5 + 784))(v5);
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

void sub_23380517C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_233805194(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 2200))(&v30);
  if (v32 < 0)
  {
    if (v31 != 9 || (*v30 == 0x6574707972636E65 ? (v5 = *(v30 + 8) == 100) : (v5 = 0), !v5))
    {
      if (v31 != 10)
      {
        goto LABEL_16;
      }

      v4 = v30;
LABEL_12:
      v6 = *v4;
      v7 = *(v4 + 4);
      if (v6 == 0x6574707972636E65 && v7 == 12900)
      {
        v25 = &unk_28490E658;
        (*(*a1 + 160))(&__p, a1);
        v16 = __p;
        sub_23372A488(v27, "encrypted2");
        (*(*v16 + 600))(v16, v27, &v25, 3);
        goto LABEL_44;
      }

LABEL_16:
      if ((v32 & 0x80) == 0 || v31 != 24)
      {
        goto LABEL_31;
      }

      v9 = *v30 == 0x4958453A30444649 && v30[1] == 0x4E52454B414D3A46;
      if (!v9 || v30[2] != 0x343178303A45544FLL)
      {
        goto LABEL_31;
      }

      v25 = &unk_28490E658;
      (*(*a1 + 160))(&__p, a1);
      v11 = __p;
      sub_23372A488(v27, "IFD0:EXIF:MAKERNOTE:0x14");
      (*(*v11 + 600))(v11, v27, &v25, 3);
LABEL_44:
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      goto LABEL_32;
    }
  }

  else
  {
    if (v32 != 9)
    {
      if (v32 != 10)
      {
LABEL_31:
        v13 = (*(*a1 + 2192))(a1);
        LODWORD(v27[1]) = 0;
        HIDWORD(v27[1]) = v13;
        v27[0] = &unk_284917748;
        (*(*a1 + 160))(&__p, a1);
        (*(*__p + 600))(__p, &v30, v27, 3);
LABEL_32:
        if (v23)
        {
          sub_2337239E8(v23);
        }

        goto LABEL_34;
      }

      v4 = &v30;
      goto LABEL_12;
    }

    if (v30 != 0x6574707972636E65 || v31 != 100)
    {
      goto LABEL_31;
    }
  }

  v29 = &unk_28490E658;
  (*(*a1 + 160))(&v25, a1);
  v14 = v25;
  sub_23372A488(&__p, "encrypted");
  (*(*v14 + 600))(v27, v14, &__p, &v29, 3);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    sub_2337239E8(v26);
  }

  v15 = v27[1];
  if (v27[1] != v27[0])
  {
    *a2 = v27[0];
    *(a2 + 8) = v15;
    *(a2 + 16) = v28;
    goto LABEL_34;
  }

  (*(*a1 + 2208))(&__p, a1);
  v17 = v24;
  v18 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v17 = v23;
  }

  if (v17)
  {
    v19 = (*(*a1 + 2192))(a1);
    LODWORD(v26) = 0;
    HIDWORD(v26) = v19;
    v25 = &unk_284917748;
    (*(*a1 + 160))(&v20, a1);
    (*(*v20 + 600))(v20, &__p, &v25, 3);
    if (v21)
    {
      sub_2337239E8(v21);
    }

    if ((v24 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  *a2 = *v27;
  *(a2 + 16) = v28;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  if ((v18 & 0x80) != 0)
  {
LABEL_52:
    operator delete(__p);
  }

LABEL_53:
  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

LABEL_34:
  if (v32 < 0)
  {
    operator delete(v30);
  }
}

void sub_233805778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_23380584C(uint64_t a1@<X0>, void **a2@<X8>)
{
  v4 = (*(*a1 + 960))(a1);
  if (v4 == 11)
  {
LABEL_10:
    (*(*a1 + 72))(&__p, a1);
    v8 = __p;
    v9 = off_27DE37618[0];
    v10 = (*(*a1 + 120))(a1);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_233805AC4;
    v11[3] = &unk_2789EEF48;
    v11[4] = a1;
    sub_2337BE5F8(v8, v9, v10, v11, a2);
    if (v13)
    {
      sub_2337239E8(v13);
    }

    return;
  }

  if (v4 == 10)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    (*(*a1 + 160))(&v15, a1);
    v5 = v15;
    sub_23372A488(&__p, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
    v6 = (*(*v5 + 248))(v5, &__p, a2, 0);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v16)
    {
      sub_2337239E8(v16);
    }

    if ((v6 & 1) == 0)
    {
      v7 = *a2;
      if (*a2)
      {
        a2[1] = v7;
        operator delete(v7);
      }

      goto LABEL_10;
    }
  }

  else
  {

    sub_2338D50CC(a1, a2);
  }
}

void sub_233805A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 40);
  if (v22)
  {
    sub_2337239E8(v22);
  }

  v23 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233805ACC(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  sub_2337D0764(&v6, &v8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  if (v8 && (*(*v8 + 848))(v8) && (*(*v8 + 840))(v8) && ((*(*v8 + 856))(v8) && (*(*v8 + 856))(v8) != 2 || (v2 = v8, v3 = (*(*a1 + 2776))(a1), ((*(*v2 + 936))(v2, v3) & 1) != 0)))
  {
    v4 = 9;
  }

  else
  {
    v4 = sub_2337D11FC(a1);
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v4;
}

void sub_233805C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233805CFC(uint64_t a1)
{
  if (sub_233739B74(a1))
  {
    return 0;
  }

  if ((*(*a1 + 312))(a1))
  {
    return 1;
  }

  v3 = *(*a1 + 2800);

  return v3(a1);
}

uint64_t sub_233805DAC(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  sub_2337D0764(&v6, &v8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  if (v8 && ((*(*v8 + 904))(v8) && (*(*v8 + 896))(v8) && (*(*v8 + 896))(v8) != 2 || (v2 = v8) != 0 && (v3 = (*(*a1 + 2776))(a1), ((*(*v2 + 960))(v2, v3) & 1) != 0)))
  {
    v4 = 2;
  }

  else
  {
    v4 = sub_2337D13A0(a1);
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v4;
}

void sub_233805F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233805FAC(uint64_t a1)
{
  if (sub_233739B7C(a1))
  {
    return 0;
  }

  v3 = *(*a1 + 320);

  return v3(a1);
}

uint64_t sub_2338060DC(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, int *a6, uint64_t *a7)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28491DEC0;
  v8 = *a6;
  v9 = *a7;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28490AFE8;
  *(a1 + 216) = v9;
  *(a1 + 224) = v8;
  return a1;
}

void sub_233806190(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28491DEC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233806354(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28491DF10;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_284937B08;
  *(a1 + 212) = 0x100000000;
  a1[28] = 0;
  return a1;
}

void sub_233806400(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28491DF10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233806530(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, int *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28491DF60;
  v7 = *a6;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28491FEC8;
  *(a1 + 212) = v7;
  *(a1 + 216) = 0;
  return a1;
}

void sub_2338065D8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28491DF60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338066F8(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28491DFB0;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_2849225F0;
  return a1;
}

void sub_233806794(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28491DFB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

char **sub_233806810(void *a1, char **a2)
{
  result = sub_23381C448(a1, a2);
  v4 = a1[36];
  if (a1[37] - v4 != 0x20000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v5 = a1[24];
  v6 = a1[25];
  v7 = v6 - v5;
  if (v7 > 0x10000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v6 != v5)
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = v7;
    v9 = a1[36];
    do
    {
      v10 = *v5++;
      *v9++ = v10;
      --v8;
    }

    while (v8);
    if (v7 < 0x10000)
    {
      v11 = *(v4 + 2 * (v7 - 1));
      v12 = v7 + 1;
      do
      {
        *(v4 + 2 * v7) = v11;
        v7 = v12;
      }

      while (v12++ < 0x10000uLL);
    }
  }

  return result;
}

void sub_233806904(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, unint64_t a6, unsigned int *a7)
{
  if ((*(*a1 + 56))(a1) != 1 || (v14 = a7[2], v14 > 99999) || (v15 = a7[3], v15 > 99999))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v47 = a2;
  v17 = *a5;
  v16 = a5[1];
  v19 = *a7;
  v18 = a7[1];
  v20 = a5[2];
  if (v16 <= v18)
  {
    v21 = a7[1];
  }

  else
  {
    v21 = a5[1];
  }

  v22 = v18 + v15;
  if (v22 >= a5[3] + v16)
  {
    v23 = a5[3] + v16;
  }

  else
  {
    v23 = v22;
  }

  if (v17 <= v19)
  {
    v24 = *a7;
  }

  else
  {
    v24 = *a5;
  }

  v25 = v19 + v14;
  if (v25 >= v20 + v17)
  {
    v25 = v20 + v17;
  }

  v48 = v25;
  v26 = *(a1 + 280);
  LODWORD(v59) = *(a1 + 220);
  LODWORD(__p) = v26;
  v60 = *sub_233757DB0(&__p, &v59);
  sub_233726998(&v59, a7 + 2);
  LODWORD(__p) = v60;
  v27 = *sub_233757DB0(&__p, &v59);
  if (v27 <= 7)
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v44, "RawCameraException");
    __cxa_throw(v44, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  LODWORD(v58) = 8;
  LODWORD(__p) = v27;
  v59 = *sub_23380A918(&__p, &v58);
  v58 = v24 - *a7;
  sub_233723C18(&v57, &v58);
  LODWORD(__p) = v57;
  v45 = a3;
  v46 = a6;
  v28 = *sub_233757DB0(&__p, &v60);
  LODWORD(v52) = 8;
  LODWORD(__p) = v28;
  v29 = v21;
  v30 = v23;
  v57 = *sub_23380A918(&__p, &v52);
  __p = (v23 - v21);
  sub_233723C18(&v56, &__p);
  sub_233723C18(&v52, &v59);
  LODWORD(__p) = v52;
  v31 = sub_233757DB0(&__p, &v56);
  sub_233726154(&__p, *v31);
  if (v21 < v23)
  {
    v32 = 0;
    do
    {
      v52 = v29 + v32 - a7[1];
      sub_233723C18(&v53, &v52);
      sub_233723C18(v61, &v59);
      LODWORD(v52) = v53;
      LODWORD(v50) = *sub_233757DB0(&v52, v61);
      LODWORD(v52) = a4;
      v33 = *sub_233753AB0(&v52, &v50);
      sub_233723C18(&v51, &v57);
      LODWORD(v52) = v33;
      v34 = *sub_233753AB0(&v52, &v51);
      if (v34 >= (*(**(a1 + 24) + 16))(*(a1 + 24)))
      {
        v40 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v40, "RawCameraException");
        __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v35 = (*(**(a1 + 24) + 16))(*(a1 + 24));
      v52 = v34;
      LODWORD(v50) = v35;
      v36 = *sub_23380A97C(&v50, &v52);
      if (v59 < v36)
      {
        v36 = v59;
      }

      v52 = v36;
      sub_233723C18(v61, &v52);
      LODWORD(v50) = v34;
      v37 = *sub_233753AB0(&v50, v61);
      if ((*(**(a1 + 24) + 16))(*(a1 + 24)) < v37)
      {
        v41 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v41, "RawCameraException");
        __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v38 = *(a1 + 24);
      v50 = v34;
      sub_233723B40(v61, &v50);
      (*(*v38 + 40))(v38, v61, 0);
      sub_233723C18(&v51, &v59);
      v50 = v32;
      sub_233723C18(&v49, &v50);
      v61[0] = v51;
      v39 = *sub_233757DB0(v61, &v49);
      if (v55 - __p <= v39 || v52 + v39 > v55 - __p)
      {
        v42 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v42, "RawCameraException");
        __cxa_throw(v42, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      (*(**(a1 + 24) + 32))(*(a1 + 24), __p + v39);
      if (v59 > v52)
      {
        bzero(__p + v52 + v39, v59 - v52);
      }

      ++v32;
    }

    while (v29 + v32 < v30);
  }

  if ((*(a1 + 312) & 1) != 0 && (*(*a1 + 224))(a1) == 1)
  {
    sub_233807150(a1, v47, v45, &__p, a5, v46, v29, v30, v24, v48, v59);
  }

  else if ((*(*a1 + 224))(a1) == 1)
  {
    sub_233807D2C(a1, v47, v45, &__p, a5, v46, v29, v30, v24, v48, v59);
  }

  else if ((*(*a1 + 224))(a1) == 2)
  {
    sub_23380842C(a1, v47, v45, &__p, a5, v46, v29, v30, v24, v48, v59);
  }

  else if ((*(*a1 + 224))(a1) == 3)
  {
    sub_233808A98(a1, v47, v45, &__p, a5, v46, v29, v30, v24, v48, v59);
  }

  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }
}

void sub_23380706C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  __cxa_begin_catch(a1);
  fwrite("DNGUncompressedUnpacker: Tile processing failed - security check violation or malformed data", 0x5CuLL, 1uLL, *MEMORY[0x277D85DF8]);
  __cxa_end_catch();
  JUMPOUT(0x233806ECCLL);
}

void sub_233807150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, ...)
{
  va_start(va, a10);
  v89 = *MEMORY[0x277D85DE8];
  v84 = 4;
  v85 = a6;
  v72 = a10 - a9;
  if (2 * a3 < 8 * (a8 - a7) * (a10 - a9))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v11 = sub_2337AF4A8(a1);
  if (qword_27DE175F0 != -1)
  {
    sub_2338FC514();
  }

  if (a8 > a7)
  {
    v12 = HIWORD(xmmword_27DE175F8[0x1FFF]);
    v68 = a2 + 2 * a3;
    v13 = a7;
    do
    {
      v75 = v13;
      v82 = v13 - a7;
      sub_233723C18(&v83, &v82);
      sub_233723C18(&v81, va);
      v86 = v83;
      v14 = *sub_233757DB0(&v86, &v81);
      v15 = *a4;
      v82 = v75 - a5[1];
      sub_233723C18(&v83, &v82);
      sub_233723C18(&v81, &v85);
      v86 = v83;
      v16 = *sub_233757DB0(&v86, &v81);
      v82 = a9 - *a5;
      sub_233723C18(&v83, &v82);
      if (a10 < a9)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v17 = v83;
      v82 = a10 - a9;
      sub_233723C18(&v81, &v82);
      sub_233723C18(&v86, &v84);
      LODWORD(v82) = v81;
      v18 = (a2 + v16 + 2 * v17);
      if (&v18[*sub_233757DB0(&v82, &v86)] > v68)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v19 = (v15 + v14);
      v20 = *(a1 + 280);
      if (v20 <= 0xB)
      {
        if (v20 == 8)
        {
          if ((v72 & 3) != 0)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          v82 = v72 >> 2;
          sub_233723C18(&v80, &v82);
          v78 = 4;
          sub_233726998(&v79, &v78);
          v86 = v80;
          if (&v19[*sub_233757DB0(&v86, &v79)] > a4[1])
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          for (i = a9; i < a10; v19 += 4)
          {
            v62 = *(*(a1 + 288) + 2 * *v19);
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
            }

            LOWORD(v86) = *(xmmword_27DE175F8 + v62);
            v63 = *(*(a1 + 288) + 2 * v19[1]);
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
            }

            HIWORD(v86) = *(xmmword_27DE175F8 + v63);
            v64 = *(*(a1 + 288) + 2 * v19[2]);
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
            }

            v87 = *(xmmword_27DE175F8 + v64);
            v65 = *(*(a1 + 288) + 2 * v19[3]);
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
            }

            v66 = 0;
            v88 = *(xmmword_27DE175F8 + v65);
            do
            {
              v67 = *(&v86 + v66);
              *v18 = v67;
              v18[1] = v67;
              v18[2] = v67;
              v18[3] = v12;
              v18 += 4;
              v66 += 2;
            }

            while (v66 != 8);
            i += 4;
          }
        }

        else if (v20 == 10)
        {
          if ((v72 & 3) != 0)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          v82 = v72 >> 2;
          sub_233723C18(&v80, &v82);
          v78 = 5;
          sub_233726998(&v79, &v78);
          v86 = v80;
          if (&v19[*sub_233757DB0(&v86, &v79)] > a4[1])
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          for (j = a9; j < a10; j += 4)
          {
            v30 = v19[1];
            v31 = v19[2];
            v32 = v19[3];
            v33 = v19[4];
            v34 = *(*(a1 + 288) + 2 * ((v30 >> 6) | (4 * *v19)));
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
            }

            LOWORD(v86) = *(xmmword_27DE175F8 + v34);
            v35 = *(*(a1 + 288) + 2 * ((v31 >> 4) & 0xFFFFFC0F | (16 * (v30 & 0x3F))));
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
            }

            HIWORD(v86) = *(xmmword_27DE175F8 + v35);
            v36 = *(*(a1 + 288) + 2 * ((v32 >> 2) & 0xFFFFFC3F | ((v31 & 0xF) << 6)));
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
            }

            v87 = *(xmmword_27DE175F8 + v36);
            v37 = *(*(a1 + 288) + 2 * (v33 & 0xFFFFFCFF | ((v32 & 3) << 8)));
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
            }

            v38 = 0;
            v19 += 5;
            v88 = *(xmmword_27DE175F8 + v37);
            do
            {
              v39 = *(&v86 + v38);
              *v18 = v39;
              v18[1] = v39;
              v18[2] = v39;
              v18[3] = v12;
              v18 += 4;
              v38 += 2;
            }

            while (v38 != 8);
          }
        }
      }

      else
      {
        switch(v20)
        {
          case 0xCu:
            if (v72)
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            v82 = v72 >> 1;
            sub_233723C18(&v80, &v82);
            v78 = 3;
            sub_233726998(&v79, &v78);
            v86 = v80;
            if (&v19[*sub_233757DB0(&v86, &v79)] > a4[1])
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            for (k = a9; k < a10; k += 2)
            {
              v41 = v19[1];
              v42 = v19[2];
              v43 = *(*(a1 + 288) + 2 * ((v41 >> 4) | (16 * *v19)));
              if (qword_27DE175F0 != -1)
              {
                sub_2338FC528();
              }

              v44 = *(xmmword_27DE175F8 + v43);
              v45 = *(*(a1 + 288) + 2 * (v42 & 0xFFFFF0FF | ((v41 & 0xF) << 8)));
              if (qword_27DE175F0 != -1)
              {
                sub_2338FC528();
              }

              v19 += 3;
              v46 = *(xmmword_27DE175F8 + v45);
              v47 = 1;
              do
              {
                v48 = v47;
                *v18 = v44;
                v18[1] = v44;
                v18[2] = v44;
                v18[3] = v12;
                v18 += 4;
                v44 = v46;
                v47 = 0;
              }

              while ((v48 & 1) != 0);
            }

            break;
          case 0xEu:
            if ((v72 & 3) != 0)
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            v82 = v72 >> 2;
            sub_233723C18(&v80, &v82);
            v78 = 7;
            sub_233726998(&v79, &v78);
            v86 = v80;
            if (&v19[*sub_233757DB0(&v86, &v79)] > a4[1])
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            for (m = a9; m < a10; m += 4)
            {
              v50 = v19[1];
              v51 = v19[2];
              v52 = v19[3];
              v76 = v19[4];
              v53 = v19[5];
              v54 = v19[6];
              v55 = *(*(a1 + 288) + 2 * ((v50 >> 2) | (*v19 << 6)));
              if (qword_27DE175F0 != -1)
              {
                sub_2338FC528();
              }

              LOWORD(v86) = *(xmmword_27DE175F8 + v55);
              v56 = *(*(a1 + 288) + 2 * ((16 * v51) & 0xFFFFCFFF | ((v50 & 3) << 12) | (v52 >> 4)));
              if (qword_27DE175F0 != -1)
              {
                sub_2338FC528();
              }

              HIWORD(v86) = *(xmmword_27DE175F8 + v56);
              v57 = *(*(a1 + 288) + 2 * ((4 * v76) & 0xFFFFC3FF | ((v52 & 0xF) << 10) | (v53 >> 6)));
              if (qword_27DE175F0 != -1)
              {
                sub_2338FC528();
              }

              v87 = *(xmmword_27DE175F8 + v57);
              v58 = *(*(a1 + 288) + 2 * (v54 & 0xFFFFC0FF | ((v53 & 0x3F) << 8)));
              if (qword_27DE175F0 != -1)
              {
                sub_2338FC528();
              }

              v59 = 0;
              v19 += 7;
              v88 = *(xmmword_27DE175F8 + v58);
              do
              {
                v60 = *(&v86 + v59);
                *v18 = v60;
                v18[1] = v60;
                v18[2] = v60;
                v18[3] = v12;
                v18 += 4;
                v59 += 2;
              }

              while (v59 != 8);
            }

            break;
          case 0x10u:
            v82 = a10 - a9;
            sub_233723C18(&v80, &v82);
            v78 = 2;
            sub_233726998(&v79, &v78);
            v86 = v80;
            if (&v19[*sub_233757DB0(&v86, &v79)] > a4[1])
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            if (a10 > a9)
            {
              v21 = (v15 + (v11 == 1) + v14);
              v22 = (v15 + (v11 != 1) + v14);
              v23 = a10 - a9;
              do
              {
                v25 = *v21;
                v21 += 2;
                v24 = v25;
                v26 = *v22;
                v22 += 2;
                v27 = *(*(a1 + 288) + ((2 * v26) | (v24 << 9)));
                if (qword_27DE175F0 != -1)
                {
                  sub_2338FC528();
                }

                v28 = *(xmmword_27DE175F8 + v27);
                *v18 = v28;
                v18[1] = v28;
                v18[2] = v28;
                v18[3] = v12;
                v18 += 4;
                --v23;
              }

              while (v23);
            }

            break;
        }
      }

      v13 = v75 + 1;
    }

    while (v75 + 1 != a8);
  }
}

unsigned int *sub_233807D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, ...)
{
  va_start(va, a10);
  v63 = a6;
  result = sub_2337AF4A8(a1);
  v54 = a8;
  v56 = a7;
  if (a7 < a8)
  {
    v51 = result != 1;
    v50 = result == 1;
    v16 = a10 - a9;
    v52 = (a10 - a9) & 3;
    v53 = a2 + 2 * a3;
    do
    {
      v61 = a7 - v56;
      sub_233723C18(&v62, &v61);
      sub_233723C18(&v60, va);
      v64 = v62;
      v17 = *sub_233757DB0(&v64, &v60);
      v18 = *a4;
      v61 = a7 - a5[1];
      sub_233723C18(&v62, &v61);
      sub_233723C18(&v60, &v63);
      v64 = v62;
      v19 = *sub_233757DB0(&v64, &v60);
      v61 = a9 - *a5;
      result = sub_233723C18(&v62, &v61);
      if (a10 < a9)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      if ((v16 & 0x8000000000000000) != 0 || (v20 = (a2 + v19 + 2 * v62), &v20[v16] > v53))
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v21 = (v18 + v17);
      v22 = *(a1 + 280);
      if (v22 <= 0xB)
      {
        if (v22 == 8)
        {
          if (v52)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          v61 = (a10 - a9) >> 2;
          sub_233723C18(&v60, &v61);
          v58 = 4;
          sub_233726998(&v59, &v58);
          v64 = v60;
          result = sub_233757DB0(&v64, &v59);
          if (&v21[*result] > a4[1])
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          if (a10 > a9)
          {
            v48 = *(a1 + 288);
            v49 = a9;
            do
            {
              *v20 = *(v48 + 2 * *v21);
              v20[1] = *(v48 + 2 * v21[1]);
              v20[2] = *(v48 + 2 * v21[2]);
              v20[3] = *(v48 + 2 * v21[3]);
              v20 += 4;
              v49 += 4;
              v21 += 4;
            }

            while (v49 < a10);
          }
        }

        else if (v22 == 10)
        {
          if (v52)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          v61 = (a10 - a9) >> 2;
          sub_233723C18(&v60, &v61);
          v58 = 5;
          sub_233726998(&v59, &v58);
          v64 = v60;
          result = sub_233757DB0(&v64, &v59);
          if (&v21[*result] > a4[1])
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          if (a10 > a9)
          {
            v30 = *(a1 + 288);
            v31 = a9;
            do
            {
              v32 = v21[1];
              v33 = v21[2];
              v34 = v21[3];
              v35 = v21[4];
              *v20 = *(v30 + 2 * ((v32 >> 6) | (4 * *v21)));
              v20[1] = *(v30 + 2 * ((v33 >> 4) & 0xFFFFFC0F | (16 * (v32 & 0x3F))));
              v20[2] = *(v30 + 2 * ((v34 >> 2) & 0xFFFFFC3F | ((v33 & 0xF) << 6)));
              v20[3] = *(v30 + 2 * (v35 & 0xFFFFFCFF | ((v34 & 3) << 8)));
              v20 += 4;
              v31 += 4;
              v21 += 5;
            }

            while (v31 < a10);
          }
        }
      }

      else
      {
        switch(v22)
        {
          case 0xCu:
            if (v16)
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            v61 = (a10 - a9) >> 1;
            sub_233723C18(&v60, &v61);
            v58 = 3;
            sub_233726998(&v59, &v58);
            v64 = v60;
            result = sub_233757DB0(&v64, &v59);
            if (&v21[*result] > a4[1])
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            if (a10 > a9)
            {
              v36 = *(a1 + 288);
              v37 = a9;
              do
              {
                v38 = v21[1];
                v39 = v21[2];
                *v20 = *(v36 + 2 * ((v38 >> 4) | (16 * *v21)));
                v20[1] = *(v36 + 2 * (v39 & 0xFFFFF0FF | ((v38 & 0xF) << 8)));
                v20 += 2;
                v37 += 2;
                v21 += 3;
              }

              while (v37 < a10);
            }

            break;
          case 0xEu:
            if (v52)
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            v61 = (a10 - a9) >> 2;
            sub_233723C18(&v60, &v61);
            v58 = 7;
            sub_233726998(&v59, &v58);
            v64 = v60;
            result = sub_233757DB0(&v64, &v59);
            if (&v21[*result] > a4[1])
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            if (a10 > a9)
            {
              v40 = *(a1 + 288);
              v41 = a9;
              do
              {
                v42 = v21[1];
                v43 = v21[2];
                v44 = v21[3];
                v45 = v21[4];
                v46 = v21[5];
                v47 = v21[6];
                *v20 = *(v40 + 2 * ((v42 >> 2) | (*v21 << 6)));
                v20[1] = *(v40 + 2 * ((16 * v43) & 0xFFFFCFFF | ((v42 & 3) << 12) | (v44 >> 4)));
                v20[2] = *(v40 + 2 * ((4 * v45) & 0xFFFFC3FF | ((v44 & 0xF) << 10) | (v46 >> 6)));
                v20[3] = *(v40 + 2 * (v47 & 0xFFFFC0FF | ((v46 & 0x3F) << 8)));
                v20 += 4;
                v41 += 4;
                v21 += 7;
              }

              while (v41 < a10);
            }

            break;
          case 0x10u:
            v61 = a10 - a9;
            sub_233723C18(&v60, &v61);
            v58 = 2;
            sub_233726998(&v59, &v58);
            v64 = v60;
            result = sub_233757DB0(&v64, &v59);
            if (&v21[*result] > a4[1])
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            if (a10 > a9)
            {
              v23 = *(a1 + 288);
              v24 = (v18 + v50 + v17);
              v25 = (v18 + v51 + v17);
              v26 = a10 - a9;
              do
              {
                v28 = *v24;
                v24 += 2;
                v27 = v28;
                v29 = *v25;
                v25 += 2;
                *v20++ = *(v23 + ((2 * v29) | (v27 << 9)));
                --v26;
              }

              while (v26);
            }

            break;
        }
      }

      ++a7;
    }

    while (a7 != v54);
  }

  return result;
}

unsigned int *sub_23380842C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, ...)
{
  va_start(va, a10);
  v57 = a6;
  result = sub_2337AF4A8(a1);
  v48 = a8;
  v50 = a7;
  if (a7 < a8)
  {
    v16 = a10 - a9;
    v45 = result == 1;
    v46 = (a10 - a9) & 3;
    v47 = a2 + 2 * a3;
    v17 = 1;
    if (result != 1)
    {
      v17 = 2;
    }

    v44 = v17;
    do
    {
      v55 = a7 - v50;
      sub_233723C18(&v56, &v55);
      sub_233723C18(&v54, va);
      v58 = v56;
      v18 = *sub_233757DB0(&v58, &v54);
      v19 = *a4;
      v55 = a7 - a5[1];
      sub_233723C18(&v56, &v55);
      sub_233723C18(&v54, &v57);
      v58 = v56;
      v20 = *sub_233757DB0(&v58, &v54);
      v55 = a9 - *a5;
      result = sub_233723C18(&v56, &v55);
      if (a10 < a9)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      if ((v16 & 0x8000000000000000) != 0 || (v21 = (a2 + v20 + 2 * v56), &v21[v16] > v47))
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v22 = (v19 + v18);
      v23 = *(a1 + 280);
      if (v23 <= 0xB)
      {
        if (v23 == 8)
        {
          if (v46)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          v55 = (a10 - a9) >> 1;
          sub_233723C18(&v54, &v55);
          v52 = 4;
          sub_233726998(&v53, &v52);
          v58 = v54;
          result = sub_233757DB0(&v58, &v53);
          if (&v22[*result] > a4[1])
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          if (a10 > a9)
          {
            v42 = *(a1 + 288);
            v43 = a9;
            do
            {
              *v21 = *(v42 + 2 * *v22);
              v21[1] = *(v42 + 2 * v22[2]);
              v21 += 2;
              v43 += 2;
              v22 += 4;
            }

            while (v43 < a10);
          }
        }

        else if (v23 == 10)
        {
          if (v46)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          v55 = (a10 - a9) >> 1;
          sub_233723C18(&v54, &v55);
          v52 = 5;
          sub_233726998(&v53, &v52);
          v58 = v54;
          result = sub_233757DB0(&v58, &v53);
          if (&v22[*result] > a4[1])
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          if (a10 > a9)
          {
            v31 = *(a1 + 288);
            v32 = a9;
            do
            {
              v33 = v22[2];
              v34 = v22[3];
              *v21 = *(v31 + ((v22[1] >> 5) & 6 | (8 * *v22)));
              v21[1] = *(v31 + ((v34 >> 1) & 0x7E | ((v33 & 0xF) << 7)));
              v21 += 2;
              v32 += 2;
              v22 += 5;
            }

            while (v32 < a10);
          }
        }
      }

      else
      {
        switch(v23)
        {
          case 0xCu:
            v55 = a10 - a9;
            sub_233723C18(&v54, &v55);
            v52 = 3;
            sub_233726998(&v53, &v52);
            v58 = v54;
            result = sub_233757DB0(&v58, &v53);
            if (&v22[*result] > a4[1])
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            if (a10 > a9)
            {
              v35 = *(a1 + 288);
              v36 = a10 - a9;
              do
              {
                *v21++ = *(v35 + ((v22[1] >> 3) & 0x1E | (32 * *v22)));
                v22 += 3;
                --v36;
              }

              while (v36);
            }

            break;
          case 0xEu:
            if (v46)
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            v55 = (a10 - a9) >> 1;
            sub_233723C18(&v54, &v55);
            v52 = 7;
            sub_233726998(&v53, &v52);
            v58 = v54;
            result = sub_233757DB0(&v58, &v53);
            if (&v22[*result] > a4[1])
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            if (a10 > a9)
            {
              v37 = *(a1 + 288);
              v38 = a9;
              do
              {
                v39 = v22[3];
                v40 = v22[4];
                v41 = v22[5];
                *v21 = *(v37 + ((v22[1] >> 1) & 0x7E | (*v22 << 7)));
                v21[1] = *(v37 + 2 * ((4 * v40) & 0xFFFFFFFFFFFFC3FFLL | ((v39 & 0xF) << 10) | (v41 >> 6)));
                v21 += 2;
                v38 += 2;
                v22 += 7;
              }

              while (v38 < a10);
            }

            break;
          case 0x10u:
            v55 = a10 - a9;
            sub_233723C18(&v54, &v55);
            v52 = 4;
            sub_233726998(&v53, &v52);
            v58 = v54;
            result = sub_233757DB0(&v58, &v53);
            if (&v22[*result] > a4[1])
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            if (a10 > a9)
            {
              v24 = *(a1 + 288);
              v25 = (v19 + v45 + v18);
              v26 = (v19 + v44 + v18);
              v27 = a10 - a9;
              do
              {
                v29 = *v25;
                v25 += 4;
                v28 = v29;
                v30 = *v26;
                v26 += 4;
                *v21++ = *(v24 + ((2 * v30) | (v28 << 9)));
                --v27;
              }

              while (v27);
            }

            break;
        }
      }

      ++a7;
    }

    while (a7 != v48);
  }

  return result;
}

void sub_233808A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, ...)
{
  va_start(va, a10);
  v50 = a6;
  if ((*(a1 + 312) & 1) == 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v11 = a7;
  v49 = 4;
  if (2 * a3 < 8 * (a8 - a7) * (a10 - a9))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v36 = sub_2337AF4A8(a1);
  if (qword_27DE175F0 != -1)
  {
    sub_2338FC514();
  }

  if (a8 > v11)
  {
    v38 = a8;
    if (v36 == 1)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v35 = v14;
    v15 = v11;
    v37 = v11;
    v39 = HIWORD(xmmword_27DE175F8[0x1FFF]);
    do
    {
      v47 = v15 - v11;
      sub_233723C18(&v48, &v47);
      sub_233723C18(&v46, va);
      v51[0] = v48;
      v16 = *sub_233757DB0(v51, &v46);
      v17 = *a4;
      v42 = v15;
      v47 = v15 - a5[1];
      sub_233723C18(&v48, &v47);
      sub_233723C18(&v46, &v50);
      v51[0] = v48;
      v18 = *sub_233757DB0(v51, &v46);
      v47 = a9 - *a5;
      sub_233723C18(&v48, &v47);
      sub_233723C18(&v46, &v49);
      v51[0] = v48;
      v19 = sub_233757DB0(v51, &v46);
      if (a10 < a9)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v20 = a2 + v18 + 2 * *v19;
      v47 = a10 - a9;
      sub_233723C18(&v48, &v47);
      sub_233723C18(v51, &v49);
      LODWORD(v47) = v48;
      if (v20 + 2 * *sub_233757DB0(&v47, v51) > a2 + 2 * a3)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v21 = (v17 + v16);
      v47 = a10 - a9;
      sub_233723C18(&v46, &v47);
      v44 = 6;
      sub_233726998(&v45, &v44);
      v51[0] = v46;
      if (v17 + v16 + *sub_233757DB0(v51, &v45) > a4[1])
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      if (*(a1 + 313))
      {
        if (v36 == 1)
        {
          v22 = a10 - a9;
          if (a10 > a9)
          {
            do
            {
              if ((*v21 & 0x7FFFu) >= 0x7C00)
              {
                __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0]();
                sub_2338F83F4();
              }

              if ((v21[1] & 0x7FFFu) >= 0x7C00)
              {
                __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0]();
                sub_2338F83F4();
              }

              if ((v21[2] & 0x7FFFu) >= 0x7C00)
              {
                __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0]();
                sub_2338F83F4();
              }

              WORD1(v23) = v21[1];
              WORD2(v23) = v21[2];
              HIWORD(v23) = v39;
              LOWORD(v23) = *v21;
              *v20 = v23;
              v20 += 8;
              v21 += 3;
              --v22;
            }

            while (v22);
          }
        }

        else if (a10 > a9)
        {
          v31 = a10 - a9;
          do
          {
            if ((v16 ^ v17))
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            v32 = bswap32(*v21);
            if ((HIWORD(v32) & 0x7FFF) >= 0x7C00u)
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            v33 = bswap32(v21[1]) >> 16;
            if ((v33 & 0x7FFF) >= 0x7C00)
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            v34 = bswap32(v21[2]) >> 16;
            if ((v34 & 0x7FFF) >= 0x7C00)
            {
              __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0]();
              sub_2338F83F4();
            }

            *v20 = HIWORD(v32);
            *(v20 + 2) = v33;
            *(v20 + 4) = v34;
            *(v20 + 6) = v39;
            v20 += 8;
            v21 += 3;
            --v31;
          }

          while (v31);
        }
      }

      else
      {
        v24 = v39;
        if (a10 > a9)
        {
          v25 = (v17 + v35 + v16);
          v26 = (v17 + ((v36 != 1) | 2) + v16);
          v27 = a10 - a9;
          do
          {
            v28 = *(*(a1 + 288) + ((2 * *(v26 - 2)) | (*(v25 - 2) << 9)));
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
              v24 = v39;
            }

            *v20 = *(xmmword_27DE175F8 + v28);
            v29 = *(*(a1 + 288) + ((2 * *v26) | (*v25 << 9)));
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
              v24 = v39;
            }

            *(v20 + 2) = *(xmmword_27DE175F8 + v29);
            v30 = *(*(a1 + 288) + ((2 * v26[2]) | (v25[2] << 9)));
            if (qword_27DE175F0 != -1)
            {
              sub_2338FC528();
              v24 = v39;
            }

            *(v20 + 4) = *(xmmword_27DE175F8 + v30);
            *(v20 + 6) = v24;
            v25 += 6;
            v26 += 6;
            v20 += 8;
            --v27;
          }

          while (v27);
        }
      }

      ++v15;
      v11 = v37;
    }

    while (v42 + 1 != v38);
  }
}

void sub_2338090F0(os_signpost_id_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGUncompressedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_233809890;
  v21[3] = &unk_2789EE800;
  v21[4] = a1;
  MEMORY[0x2383AC810](v21);
  if ((*(a1 + 216) - 1) > 1 || *(a1 + 280) != 16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = sub_2337AF4A8(a1);
  sub_233735A18(buf, (a1 + 24), v4);
  v5 = *(a1 + 44);
  if ((v5 - 100000) < 0xFFFE7961 || (v17 = *(a1 + 48), v17 - 100000 < 0xFFFE7961))
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v15, "RawCameraException");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a1 + 216) == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v22 = v6;
  sub_233726998(v18, &v22);
  LODWORD(v23) = v5;
  sub_233757DB0(&v23, v18);
  v7 = (*(a1 + 216) - 1) < 2;
  v18[0] = *(a1 + 280);
  LODWORD(v23) = v5;
  v8 = *sub_233757DB0(&v23, v18);
  v22 = 7;
  LODWORD(v23) = v8;
  v9 = *sub_233726AE8(&v23, &v22);
  v19 = 8;
  LODWORD(v23) = v9;
  v10 = *sub_23380A918(&v23, &v19);
  v23 = xmmword_2339086C0;
  v11 = *(a1 + 216);
  if (v11 == 2)
  {
    DWORD1(v23) = v5;
    v12 = -v5;
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_16;
    }

    v12 = 1 - v5;
    LODWORD(v23) = v5 + 1;
    DWORD1(v23) = 1 - v5;
    DWORD2(v23) = v5 + 1;
  }

  HIDWORD(v23) = v12;
LABEL_16:
  v22 = v10;
  v18[0] = v17 >> v7;
  v13 = *sub_233757DB0(v18, &v22);
  if ((*(*a1 + 152))(a1) >= v13)
  {
    sub_2337AF4A8(a1);
    operator new[]();
  }

  v16 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](v16, "RawCameraException");
  __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_233809890(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGUncompressedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_233809918(uint64_t result, int a2)
{
  if ((a2 - 17) <= 0xFFFFFFF6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *(result + 280) = a2;
  return result;
}

void *sub_233809978(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  if ((a2 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((a3 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v11 != a5[1] - *a5)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v10 == v9)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v11 > 0x1387C)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v13 = 0;
  do
  {
    v14 = *a5;
    v15 = *&(*a5)[4 * v13];
    if (!v15)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    if (v15 < 0)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v16 = *&v9[4 * v13];
    if (v16 < 0)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v20 = 0;
    v20 = *&v14[4 * v13];
    v21 = v16;
    v17 = sub_233753AB0(&v21, &v20);
    v9 = *a4;
    if (*v17 < *&(*a4)[4 * v13])
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    ++v13;
    v18 = a4[1];
  }

  while (v13 < (v18 - v9) >> 2);
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  if ((a1 + 232) != a4)
  {
    sub_233723454((a1 + 232), v9, v18, (v18 - v9) >> 2);
  }

  result = (a1 + 256);
  if ((a1 + 256) != a5)
  {
    return sub_233723454(result, *a5, a5[1], (a5[1] - *a5) >> 2);
  }

  return result;
}

void sub_233809C04(os_signpost_id_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v59 = a4;
  v7 = sub_23378E038();
  v8 = v7;
  if (a1 + 1 >= 2 && os_signpost_enabled(v7))
  {
    LOWORD(v41) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGUncompressedUnpacker", &unk_233945DBE, &v41, 2u);
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_23380A630;
  v58[3] = &unk_2789EE800;
  v58[4] = a1;
  v9 = MEMORY[0x2383AC810](v58);
  if (*(a1 + 216) || (*(*a1 + 224))(a1) != 1 && (*(*a1 + 224))(a1) != 2 && (*(*a1 + 224))(a1) != 3 || *(a1 + 280) - 17 <= 0xFFFFFFF6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(a1 + 44);
  v56 = *(a1 + 48);
  v57 = v10;
  v11 = *(a1 + 224);
  v54 = *(a1 + 228);
  v55 = v11;
  v41 = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723B40(&v52, &v41);
  v53 = v52;
  v12 = *(a1 + 256);
  v13 = *(a1 + 264);
  if (*(a1 + 240) - *(a1 + 232) != v13 - v12 || (v57 - 100000) < 0xFFFE7961 || v56 - 100000 < 0xFFFE7961 || v55 - 200000 < 0xFFFCF2C1 || v54 - 200000 < 0xFFFCF2C1 || v52 - 20000 <= 0xFFFFB1E0)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v35, "RawCameraException");
    __cxa_throw(v35, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      LODWORD(v41) = v14;
      v14 = *sub_233723874(&v41, v12++);
    }

    while (v12 != v13);
  }

  v15 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if ((v14 & 0x80000000) == 0 && v15 < v14)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v36, "RawCameraException");
    __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v53)
  {
    for (i = 0; i < v53; ++i)
    {
      v17 = *(*(a1 + 232) + 4 * i);
      v18 = *(a1 + 256);
      v52 = 0;
      v52 = *(v18 + 4 * i);
      LODWORD(v41) = v17;
      v19 = *sub_233753AB0(&v41, &v52);
      if ((*(**(a1 + 24) + 16))(*(a1 + 24)) < v19)
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v34, "RawCameraException");
        __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }
  }

  sub_233726998(&v52, &v57);
  sub_233726998(&v51, &v55);
  LODWORD(v41) = v52;
  v20 = *sub_233753AB0(&v41, &v51);
  v49 = 1;
  sub_233726998(&v50, &v49);
  LODWORD(v41) = v20;
  v21 = *sub_2337580F8(&v41, &v50);
  sub_233726998(&v50, &v55);
  LODWORD(v41) = v21;
  v51 = *sub_2337B21A0(&v41, &v50);
  v52 = sub_23380A6B8(&v51);
  sub_233726998(&v51, &v56);
  sub_233726998(&v50, &v54);
  LODWORD(v41) = v51;
  v22 = *sub_233753AB0(&v41, &v50);
  v48 = 1;
  sub_233726998(&v49, &v48);
  LODWORD(v41) = v22;
  v23 = *sub_2337580F8(&v41, &v49);
  sub_233726998(&v51, &v54);
  LODWORD(v41) = v23;
  v51 = *sub_2337B21A0(&v41, &v51) >> (*(a1 + 216) != 0);
  sub_233726998(&v50, &v52);
  sub_233726998(&v49, &v51);
  LODWORD(v41) = v50;
  v24 = *sub_233757DB0(&v41, &v49);
  sub_233726998(&v41, &v53);
  if (v24 != v41)
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v37, "RawCameraException");
    __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233726998(&v49, &v52);
  sub_233726998(&v48, &v55);
  LODWORD(v41) = v49;
  v50 = *sub_233757DB0(&v41, &v48);
  sub_233726998(&v48, &v51);
  sub_233726998(&v47, &v54);
  LODWORD(v41) = v48;
  v49 = *sub_233757DB0(&v41, &v47);
  sub_23380A6B8(&v50);
  sub_23380A6B8(&v49);
  sub_233726998(&v48, (a3 + 12));
  sub_233723C18(&v47, &v59);
  LODWORD(v41) = v48;
  v25 = *sub_233757DB0(&v41, &v47);
  v26 = *(a1 + 280);
  v46 = *(a1 + 220);
  LODWORD(v41) = v26;
  v27 = *sub_233757DB0(&v41, &v46);
  sub_233726998(&v46, &v55);
  LODWORD(v41) = v27;
  v28 = *sub_233757DB0(&v41, &v46);
  if (v28 <= 7)
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v38, "RawCameraException");
    __cxa_throw(v38, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v45 = 8;
  LODWORD(v41) = v28;
  v46 = *sub_23380A918(&v41, &v45);
  if (!v46)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v39, "RawCameraException");
    __cxa_throw(v39, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v53)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    do
    {
      LODWORD(v41) = *(*(a1 + 256) + 4 * v29);
      v44 = *sub_2337B21A0(&v41, &v46);
      sub_233726A8C(&v45, &v44);
      v32 = v45;
      if (*(*(a1 + 256) + 4 * v29) % v46)
      {
        v44 = 1;
        LODWORD(v41) = v45;
        v32 = *sub_233725A80(&v41, &v44);
        v45 = v32;
      }

      v41 = __PAIR64__(v31, v30);
      v42 = v55;
      v43 = v32;
      if (sub_23385F470(&v41, a3))
      {
        sub_233806904(a1, a2, v25, *(*(a1 + 232) + 4 * v29), a3, v59, &v41);
      }

      if ((v55 + v30) >= v57)
      {
        v33 = v54;
      }

      else
      {
        v33 = 0;
      }

      v31 += v33;
      if ((v55 + v30) >= v57)
      {
        v30 = 0;
      }

      else
      {
        v30 += v55;
      }

      ++v29;
    }

    while (v29 < v53);
  }

  v9[2](v9);
}

void sub_23380A630(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGUncompressedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_23380A6B8(unsigned int *a1)
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

void *sub_23380A710(void *a1)
{
  *a1 = &unk_28491E000;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[32];
  if (v3)
  {
    a1[33] = v3;
    operator delete(v3);
  }

  v4 = a1[29];
  if (v4)
  {
    a1[30] = v4;
    operator delete(v4);
  }

  *a1 = &unk_28491FFD8;
  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  return sub_233723A54(a1);
}

void sub_23380A7BC(void *a1)
{
  *a1 = &unk_28491E000;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[32];
  if (v3)
  {
    a1[33] = v3;
    operator delete(v3);
  }

  v4 = a1[29];
  if (v4)
  {
    a1[30] = v4;
    operator delete(v4);
  }

  *a1 = &unk_28491FFD8;
  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

int64x2_t sub_23380A884()
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

_DWORD *sub_23380A918(_DWORD *result, int *a2)
{
  v2 = *a2;
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *result = *result / v2;
  return result;
}

_DWORD *sub_23380A97C(_DWORD *result, unint64_t *a2)
{
  v2 = *result;
  v3 = v2 >= *a2;
  v4 = v2 - *a2;
  *result = v4;
  if (!v3 || HIDWORD(v4))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

int *sub_23380A9E8(int *result, void *a2)
{
  v2 = *result;
  v3 = v2 >> 63;
  v4 = __CFADD__(v2, *a2);
  v5 = v2 + *a2;
  if (v4)
  {
    ++v3;
  }

  *result = v5;
  v6 = v5 ^ v5 | (v3 ^ (v5 >> 63)) & 1;
  if (v3 << 63 >> 63 != v3 || v6 != 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_23380AA7C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23380AB0C;
  block[3] = &unk_2789EE800;
  block[4] = a1;
  if (*(a1 + 320) != -1)
  {
    dispatch_once((a1 + 320), block);
  }

  return *(a1 + 288);
}

void sub_23380AB0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 200) - *(v1 + 192);
  if (v2 && v2 <= 0x20000)
  {
    sub_2337A916C((v1 + 288), 0x10000uLL);
    *(v1 + 312) = 1;
    v4 = *(v1 + 192);
    v3 = *(v1 + 200);
    v5 = *(v1 + 288);
    v6 = v3 - v4;
    if (v3 == v4)
    {
      LODWORD(v7) = 0;
      v9 = (v5 + 0x1FFFFFFFELL);
    }

    else
    {
      LODWORD(v7) = 0;
      v8 = v6 >> 1;
      v9 = (v5 - 2);
      do
      {
        v10 = *v4;
        v4 += 2;
        v9[1] = v10;
        ++v9;
        v7 = (v7 + 1);
      }

      while (v8 > v7);
      if (WORD1(v7))
      {
        return;
      }
    }

    v37 = *v9;
    v38 = (v5 + 2 * v7);
    v39 = v7 + 1;
    do
    {
      *v38++ = v37;
    }

    while (v39++ != 0x10000);
    return;
  }

  v11 = (v1 + 288);
  if (*(v1 + 336) - *(v1 + 328) == 48)
  {
    sub_2337A916C(v11, 0x30000uLL);
    *(v1 + 312) = 3;
    v12 = *(v1 + 328);
    for (i = *(v1 + 336); v12 != i; v12 += 16)
    {
      v14 = *v12;
      if (*v12 && (v14 = __dynamic_cast(v14, &unk_2849027A8, &unk_284934FF8, 0)) != 0)
      {
        v15 = *(v12 + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = *(v14 + 7);
      if (v16 <= 2)
      {
        v17 = v14[6];
        v18 = v14[7];
        v19 = (v18 - v17) >> 3;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        sub_2337236E0(&v41, v17, v18, v19);
        v20 = 0;
        v21 = v19 - 1;
        v22 = v41;
        v23 = *(v1 + 288) + (v16 << 17);
        do
        {
          v24 = 0;
          v25 = 0.0;
          do
          {
            v26 = v22[v24];
            v25 = v25 + v26 * pow((v20 / 65535.0), v24++);
          }

          while (v21 >= v24);
          *(v23 + 2 * v20++) = (v25 * 65535.0);
        }

        while (v20 != 0x10000);
        v42 = v22;
        operator delete(v22);
      }

      if (v15)
      {
        sub_2337239E8(v15);
      }
    }
  }

  else
  {
    sub_2337A916C(v11, 0x10000uLL);
    *(v1 + 312) = 1;
    v28 = *(v1 + 288);
    v27 = *(v1 + 296);
    if (v28 != v27)
    {
      v29 = 0;
      v30 = (v27 - v28 - 2) >> 1;
      v31 = vdupq_n_s64(v30);
      v32 = (v30 & 0x7FFFFFFFFFFFFFF8) + 8;
      v33 = (v28 + 8);
      do
      {
        v34 = vdupq_n_s64(v29);
        v35 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_233903BB0)));
        if (vuzp1_s8(vuzp1_s16(v35, *v31.i8), *v31.i8).u8[0])
        {
          *(v33 - 4) = v29;
        }

        if (vuzp1_s8(vuzp1_s16(v35, *&v31), *&v31).i8[1])
        {
          *(v33 - 3) = v29 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_233903BE0)))), *&v31).i8[2])
        {
          *(v33 - 2) = v29 | 2;
          *(v33 - 1) = v29 | 3;
        }

        v36 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_233903BD0)));
        if (vuzp1_s8(*&v31, vuzp1_s16(v36, *&v31)).i32[1])
        {
          *v33 = v29 | 4;
        }

        if (vuzp1_s8(*&v31, vuzp1_s16(v36, *&v31)).i8[5])
        {
          v33[1] = v29 | 5;
        }

        if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_233903BC0))))).i8[6])
        {
          v33[2] = v29 | 6;
          v33[3] = v29 | 7;
        }

        v29 += 8;
        v33 += 8;
      }

      while (v32 != v29);
    }
  }
}

void sub_23380AEC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23380AEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = *(a2 + 4);
  v12 = *a2;
  v10 = 64;
  sub_23374340C(&v11, &v10);
  v13 = v6;
  v7 = sub_233743570(&v13, &v11);
  sub_233726154(a4, *v7);
  v8 = *(a1 + 24);
  sub_233723AE0(&v13, &v12);
  (*(*v8 + 40))(v8, &v13, 0);
  return (*(**(a1 + 24) + 32))(*(a1 + 24), *a4, v6);
}

void sub_23380AFE0(void *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  __cxa_begin_catch(a1);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x23380AFACLL);
}

void sub_23380B030(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  spid = v1;
  v31[7] = *MEMORY[0x277D85DE8];
  v6 = sub_23378E038();
  v7 = v6;
  if (spid + 1 >= 2 && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CDNGLosslessJpegUnpacker::unpackTile", &unk_233945DBE, buf, 2u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_23380C230;
  v29[3] = &unk_2789EE800;
  v29[4] = spid;
  MEMORY[0x2383AC810](v29);
  v27 = 0u;
  v28 = 0;
  if (v3 <= 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (bswap32(*v5) >> 16 != 65496)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v24, "RawCameraException");
    __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v25 = v5 + v3;
  v8 = (v5 + 1);
  memset(v31, 0, 32);
  while (1)
  {
    v9 = v8 + 4;
    if (v25 < (v8 + 4))
    {
      goto LABEL_29;
    }

    v10 = v8;
    v11 = __rev16(*v8);
    if (v11 < 0xFF01 || (v12 = __rev16(*(v8 + 1)), v12 >= 0x102))
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v20, "RawCameraException");
      __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v25 < &v9[v12 - 2])
    {
      v21 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v21, "RawCameraException");
      __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v8 = &v9[v12 - 2];
    if (v11 > 65475)
    {
      if (v11 == 65498)
      {
        v16 = &v9[2 * *v9];
        if (v25 < (v16 + 1) || (v17 = v16 + 3, v25 < v17))
        {
          v22 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v22, "RawCameraException");
          __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        LODWORD(v27) = v27 - (*v17 & 0xF);
      }

      else if (v11 == 65476)
      {
        while (v9 < v8)
        {
          v14 = *v9;
          if (v14 > 3)
          {
            break;
          }

          v15 = &buf[2048 * v14];
          v31[v14] = v15;
          v9 = sub_2337B4F10(v9 + 1, v15);
          if (!v9)
          {
            v18 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v18, "RawCameraException");
            __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }
      }

      goto LABEL_24;
    }

    if (v11 == 65472)
    {
      break;
    }

    if (v11 == 65475)
    {
      v13 = ((v10[11] >> 4) * v10[11] - 1) & 3;
      v28 = v13;
LABEL_20:
      LODWORD(v27) = v10[4];
      HIDWORD(v27) = v13 + v10[9];
    }

LABEL_24:
    if (v11 == 65498)
    {
      if ((HIDWORD(v27) - 5) > 0xFFFFFFFB)
      {
        operator new[]();
      }

LABEL_29:
      v19 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v19, "RawCameraException");
      __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v13 = v28;
  goto LABEL_20;
}

void sub_23380C094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a2)
  {
    MEMORY[0x2383ABEF0](a32, 0x1000C8077774924);
    MEMORY[0x2383ABEF0](a20, 0x1000C8077774924);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x23380BC78);
  }

  _Unwind_Resume(exception_object);
}

void sub_23380C220(void *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  JUMPOUT(0x23380C0C8);
}

void sub_23380C230(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGLosslessJpegUnpacker::unpackTile", &unk_233945DBE, v5, 2u);
  }
}

void sub_23380C2B8(os_signpost_id_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGLosslessJpegUnpacker", &unk_233945DBE, buf, 2u);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_23380C814;
  v31[3] = &unk_2789EE800;
  v31[4] = a1;
  v20 = MEMORY[0x2383AC810](v31);
  if (*(a1 + 216) || (*(*a1 + 224))(a1) == 2)
  {
    sub_23380C89C(a1);
  }

  v4 = *(a1 + 44);
  v23 = *(a1 + 48);
  v5 = *(a1 + 224);
  v6 = *(a1 + 228);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723C18(&v27, buf);
  v7 = v27.u32[0];
  v8 = (*(*a1 + 40))(a1);
  if (*(a1 + 240) - *(a1 + 232) != *(a1 + 264) - *(a1 + 256) || v4 - 100000 < 0xFFFE7961 || (v23 - 100000) < 0xFFFE7961 || v5 - 100000 < 0xFFFE7961 || v6 - 100000 < 0xFFFE7961 || v7 >> 6 >= 0x271)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((((v23 + v6 - 1) / v6) >> (*(a1 + 216) != 0)) * ((v4 + v5 - 1) / v5) != v7)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v19, "RawCameraException");
    __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = v8;
  v22 = sub_2337ADCC4(a1);
  if (v7)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v21 = 2 * v4 * v9;
    v24 = 4 * v7;
    do
    {
      v32[0] = *(*(a1 + 232) + v10);
      v32[1] = *(*(a1 + 256) + v10);
      sub_23380AEDC(a1, v32, 2, buf);
      v13 = *buf;
      if (*buf != v30)
      {
        v14 = *(*(a1 + 256) + v10);
        v15 = sub_2337AEFB8(a1);
        v27 = 0;
        sub_2337238F0(&v28, v4, v23);
        sub_2337238F0(&v25, v11, v12);
        sub_2337238F0(&v26, v5, v6);
        v16 = sub_23380AA7C(a1);
        sub_23380E018(a1, v22, v15 >> 1, &v27, v21, &v25, v13, v14, v16, 0x10000uLL, 1);
        v13 = *buf;
      }

      if (v11 + v5 >= v4)
      {
        v17 = v6;
      }

      else
      {
        v17 = 0;
      }

      if (v11 + v5 >= v4)
      {
        v11 = 0;
      }

      else
      {
        v11 += v5;
      }

      if (v13)
      {
        v30 = v13;
        operator delete(v13);
      }

      v10 += 4;
      v12 += v17;
    }

    while (v24 != v10);
  }

  v20[2](v20);
}

void sub_23380C768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  a12[2](a12);

  _Unwind_Resume(a1);
}

void sub_23380C814(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGLosslessJpegUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23380C89C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v22 = *MEMORY[0x277D85DE8];
  v21 = xmmword_2339086F0;
  v20 = xmmword_2339086C0;
  v2 = *(v1 + 48);
  v15 = *(v1 + 224);
  v16 = *(v1 + 228);
  v17 = *(v1 + 44);
  v18 = (*(v1 + 240) - *(v1 + 232)) >> 2;
  sub_233723C18(&v19, &v18);
  if ((v17 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v2 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v15 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v16 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v19 >> 6 >= 0x271)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = *(v1 + 216);
  if ((((v2 + v16 - 1) / v16) >> (v3 != 0)) * ((v17 + v15 - 1) / v15) != v19)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v3 == 1)
  {
    v4 = 1 - v17;
    LODWORD(v20) = v17 + 1;
    DWORD1(v20) = 1 - v17;
    DWORD2(v20) = v17 + 1;
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    DWORD1(v20) = v17;
    v4 = -v17;
  }

  HIDWORD(v20) = v4;
LABEL_12:
  v5 = *(v1 + 256);
  v6 = *(v1 + 264);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      LODWORD(v18) = v7;
      v7 = *sub_233723874(&v18, v5++);
    }

    while (v5 != v6);
  }

  v8 = (*(**(v1 + 24) + 16))(*(v1 + 24));
  if ((v7 & 0x80000000) != 0 || v7 < v8)
  {
    v9 = *(v1 + 256);
    v10 = *(v1 + 264);
    if (v9 != v10 && v9 + 1 != v10)
    {
      v11 = *v9;
      v12 = v9 + 1;
      do
      {
        v14 = *v12++;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13;
        }
      }

      while (v12 != v10);
    }

    operator new[]();
  }

  __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0]();
  sub_2338F83F4();
}

void sub_23380E018(os_signpost_id_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, int32x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char a11)
{
  if ((atomic_load_explicit(&qword_27DE37DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE37DE8))
  {
    byte_27DE37DE0 = sub_233810148();
    __cxa_guard_release(&qword_27DE37DE8);
  }

  if (byte_27DE37DE0 != 1)
  {

    sub_23380B030(a1);
  }

  sub_23380E97C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void *sub_23380E168(uint64_t a1, int a2, int a3, char **a4, char **a5)
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

uint64_t sub_23380E1E0(_DWORD *a1)
{
  v1 = a1[17];
  if (((a1[70] + 2 * v1) & 0xFLL) != 0)
  {
    return (2 * (a1[15] + 2 * v1) + 31) & 0x3FFFFFFE0;
  }

  else
  {
    return 2 * (a1[70] + 2 * v1);
  }
}

void sub_23380E218(os_signpost_id_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = sub_23378E038();
  v9 = v8;
  if (a1 + 1 >= 2 && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGLosslessJpegUnpacker", &unk_233945DBE, buf, 2u);
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_23380E808;
  v45[3] = &unk_2789EE800;
  v45[4] = a1;
  v10 = MEMORY[0x2383AC810](v45);
  if (*(a1 + 216) || (*(*a1 + 224))(a1) == 2 || (v11 = *(a1 + 240) - *(a1 + 232), v11 == 4))
  {
    sub_2337AF568(a1, a2, a3, a4);
  }

  else
  {
    v12 = *(a1 + 48);
    v32 = *(a1 + 44);
    v13 = *(a1 + 224);
    v14 = *(a1 + 228);
    *buf = v11 >> 2;
    sub_233723B40(&v44, buf);
    if (*(a1 + 240) - *(a1 + 232) != *(a1 + 264) - *(a1 + 256) || (v32 - 100000) < 0xFFFE7961 || (v12 - 100000) < 0xFFFE7961 || v13 - 100000 < 0xFFFE7961 || v14 - 100000 < 0xFFFE7961 || (v27 = v10, v15 = v44, v44 >= 40000))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v29 = a2;
    v16 = v32;
    if ((((v12 + v14 - 1) / v14) >> (*(a1 + 216) != 0)) * ((v32 + v13 - 1) / v13) != v44)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v26, "RawCameraException");
      __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    group = dispatch_group_create();
    v30 = dispatch_queue_create("Lossless DNG Tile Unpacker Queue", MEMORY[0x277D85CD8]);
    if (v15)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 4 * v15;
      v28 = v14;
      do
      {
        *&v44 = __PAIR64__(v19, v18);
        *(&v44 + 1) = __PAIR64__(v14, v13);
        if (sub_23385F470(&v44, a3))
        {
          v46[0] = *(*(a1 + 232) + v17);
          v46[1] = *(*(a1 + 256) + v17);
          sub_23380AEDC(a1, v46, 2, buf);
          v21 = *buf;
          if (*buf != v43)
          {
            v22 = a4;
            v23 = *(*(a1 + 256) + v17);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3321888768;
            block[2] = sub_23380E890;
            block[3] = &unk_28491E140;
            block[4] = a1;
            v35 = 0;
            v36 = 0;
            __p = 0;
            sub_2337957D0(&__p, *buf, v43, v43 - *buf);
            v40 = v23;
            v37 = v29;
            v38 = a3;
            a4 = v22;
            v39 = v22;
            v41 = v44;
            dispatch_group_async(group, v30, block);
            if (__p)
            {
              v35 = __p;
              operator delete(__p);
            }

            v21 = *buf;
            v16 = v32;
            v14 = v28;
          }

          if (v21)
          {
            v43 = v21;
            operator delete(v21);
          }
        }

        if ((v18 + v13) >= v16)
        {
          v24 = v14;
        }

        else
        {
          v24 = 0;
        }

        v19 += v24;
        if ((v18 + v13) >= v16)
        {
          v18 = 0;
        }

        else
        {
          v18 += v13;
        }

        v17 += 4;
      }

      while (v20 != v17);
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

    v10 = v27;
  }

  v10[2](v10);
}

void sub_23380E744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  v32[2](v32);

  _Unwind_Resume(a1);
}

void sub_23380E808(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGLosslessJpegUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23380E890(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = (v7 * v6[1].i32[1]) >> 1;
  v9 = sub_23380AA7C(v2);
  sub_23380E018(v2, v5, v8, v6, v7, (a1 + 92), v3, v4, v9, 0x10000uLL, 0);
}

void sub_23380E924(void *a1)
{
  __cxa_begin_catch(a1);
  v1 = sub_2338C0420();
  sub_2338FC578(v1);
  JUMPOUT(0x23380E908);
}

uint64_t sub_23380E94C(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_2337957D0(v2, *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
}

void sub_23380E964(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_23380E97C(os_signpost_id_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, int32x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char a11)
{
  v19 = sub_23378E038();
  v20 = v19;
  if (a1 + 1 >= 2 && os_signpost_enabled(v19))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v20, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGLosslessJpegUnpacker::unpackTile", &unk_233945DBE, buf, 2u);
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_23380EEAC;
  v51[3] = &unk_2789EE800;
  v51[4] = a1;
  v21 = MEMORY[0x2383AC810](v51);
  context = objc_autoreleasePoolPush();
  v49 = xmmword_28491E170;
  v50 = qword_28491E180;
  if (!applejpeg_decode_create())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v47 = a7;
  v48 = a8;
  if (applejpeg_decode_open_mem())
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v34, "RawCameraException");
    __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (applejpeg_decode_get_image_info())
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v35, "RawCameraException");
    __cxa_throw(v35, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  precision = applejpeg_decode_get_precision();
  if (precision - 17 <= 0xFFFFFFF6)
  {
    goto LABEL_25;
  }

  if (v46 <= 2)
  {
    if (v46 == 1 || v46 == 2)
    {
      goto LABEL_15;
    }

LABEL_25:
    v36 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v36, "RawCameraException");
    __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v46 != 3 && v46 != 4)
  {
    goto LABEL_25;
  }

LABEL_15:
  if (applejpeg_decode_set_option_outformat())
  {
    goto LABEL_25;
  }

  v43 = 0;
  v44 = 0;
  if (applejpeg_decode_get_output_buffer_size())
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v37, "RawCameraException");
    __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v26 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v23, v44, v24, v25);
  v27 = v26;
  v41 = objc_msgSend_mutableBytes(v27, v28, v29, v30, v31);
  v42 = v44;
  if (applejpeg_decode_image_all())
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v38, "RawCameraException");
    __cxa_throw(v38, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v32 = (*(*a1 + 88))(a1) & (a11 ^ 1);
  if (precision < 9)
  {
    sub_23380F848(a1, buf, v45, v43, a2, a3, a5, a4, a6, a9, a10, v32);
  }

  else
  {
    sub_23380EF44(a1, buf, v45, v43, a2, a3, a5, a4, a6, a9, a10, v32);
  }

  applejpeg_decode_destroy();
  objc_autoreleasePoolPop(context);
  v21[2](v21);
}

void sub_23380EE04(void *a1)
{
  __cxa_free_exception(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23380EC3CLL);
}

void sub_23380EEAC(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGLosslessJpegUnpacker::unpackTile", &unk_233945DBE, v5, 2u);
  }
}

void sub_23380EF44(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int32x2_t *a8, int32x2_t *a9, uint64_t a10, unint64_t a11, char a12)
{
  v82 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v16 = *(a3 + 4);
  v76 = v16;
  if (v16 == 4 || v16 == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (a12)
  {
    v19 = 4;
  }

  else
  {
    v19 = 1;
  }

  v74 = v19;
  v75 = v18;
  v20 = vmax_s32(*a8, *a9);
  v21 = vsub_s32(vmin_s32(vadd_s32(a9[1], *a9), vadd_s32(a8[1], *a8)), v20);
  v72 = v20;
  v73 = v21;
  sub_23374340C(&v80, a2 + 10);
  sub_23374340C(&v71, a2 + 11);
  *buf = v80;
  v22 = *sub_23375B354(buf, &v71);
  sub_23374340C(&v70, &v76);
  *buf = v22;
  v23 = *sub_23375B354(buf, &v70);
  sub_23374340C(&v80, &a9[1]);
  sub_23374340C(&v71, &a9[1] + 1);
  *buf = v80;
  v24 = *sub_23375B354(buf, &v71);
  sub_23374340C(&v70, &v75);
  *buf = v24;
  if (v23 != *sub_23375B354(buf, &v70) || v72.i32[0] < 0 || v72.i32[1] < 0 || v73.i32[0] < 0 || v73.i32[1] < 0 || !sub_23385F3FC(&v72, a9))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v25 = vsub_s32(v72, *a9);
  v70 = vsub_s32(v72, *a8);
  v71 = v25;
  sub_23374340C(&v80, &v71 + 1);
  *buf = a4;
  v26 = *sub_23375B354(buf, &v80);
  v27 = *a2;
  sub_23374340C(&v80, &v75);
  v69 = 2;
  *buf = v80;
  v28 = *sub_23375B354(buf, &v69);
  sub_23374340C(&v68, &v71);
  *buf = v28;
  v29 = *sub_23375B354(buf, &v68);
  sub_23374340C(&v80, &v70 + 1);
  *buf = a7;
  v30 = *sub_23375B354(buf, &v80);
  sub_23374340C(&v80, &v74);
  v69 = 2;
  *buf = v80;
  v31 = *sub_23375B354(buf, &v69);
  sub_23374340C(&v68, &v70);
  *buf = v31;
  v32 = *sub_23375B354(buf, &v68);
  if (v76 >= 3)
  {
    v65 = 0;
    v80 = a4;
    v81 = a4;
  }

  else
  {
    v33 = *(a2 + 10) * v76;
    v34 = (v33 / a9[1].i32[0]);
    if ((v34 - 3) <= 0xFFFFFFFD)
    {
      v61 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v61, "RawCameraException");
      __cxa_throw(v61, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v80 = a4;
    v81 = a4;
    if (v34 < 2)
    {
      v65 = 0;
    }

    else
    {
      v80 = 2 * v33 / v34;
      v81 = a4 - v80;
      v65 = 1;
    }
  }

  sub_23374340C(&v69, &a8[1] + 1);
  *buf = a7;
  v68 = *sub_23375B354(buf, &v69);
  v35 = v73.i32[1];
  if (v73.i32[1] < 1)
  {
    return;
  }

  v66 = 0;
  v36 = (v27 + v26 + v29);
  v37 = (a5 + v30 + v32);
  v38 = a11 - 1;
  v39 = v73.i32[0];
  v62 = a7;
  while (v39 < 1)
  {
LABEL_81:
    v37 = (v37 + a7);
    v36 = (v36 + *(&v80 + (v66++ & v65)));
    if (v66 >= v35)
    {
      return;
    }
  }

  v40 = 0;
  v63 = v37;
  v64 = v36;
  v41 = v37;
  while (a12)
  {
    if (v41 < a5 || (v41 - a5) > sub_23375A0B4(&v68))
    {
      v59 = sub_2338C0420();
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    if (v76 >= 3)
    {
      for (i = 0; i < v76; ++i)
      {
        v52 = *v36++;
        v51 = v52;
        if (a11 <= v52)
        {
          v53 = sub_2338C0420();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v51;
            v78 = 2048;
            v79 = a11;
            _os_log_error_impl(&dword_23371F000, v53, OS_LOG_TYPE_ERROR, "DNGLosslessJpegUnpacker: curve index %u exceeds bounds %zu", buf, 0x12u);
          }
        }

        if (v38 < v51)
        {
          v51 = a11 - 1;
        }

        if (qword_27DE175F0 != -1)
        {
          sub_2338FC550();
        }

        *v41++ = *(xmmword_27DE175F8 + *(a10 + 2 * v51));
      }

      if (qword_27DE175F0 == -1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v76 >= 1)
      {
        for (j = 0; j < v76; ++j)
        {
          v44 = *v36++;
          v43 = v44;
          if (a11 <= v44)
          {
            v45 = sub_2338C0420();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *&buf[4] = v43;
              v78 = 2048;
              v79 = a11;
              _os_log_error_impl(&dword_23371F000, v45, OS_LOG_TYPE_ERROR, "DNGLosslessJpegUnpacker: curve index %u exceeds bounds %zu", buf, 0x12u);
            }
          }

          if (v38 < v43)
          {
            v43 = a11 - 1;
          }

          if (qword_27DE175F0 != -1)
          {
            sub_2338FC550();
          }

          if (v74 >= 2)
          {
            v46 = *(xmmword_27DE175F8 + *(a10 + 2 * v43));
            v47 = v74 - 1;
            do
            {
              *v41++ = v46;
              --v47;
            }

            while (v47);
          }
        }
      }

      if (qword_27DE175F0 == -1)
      {
        goto LABEL_65;
      }
    }

    sub_2338FC550();
LABEL_65:
    *v41++ = HIWORD(xmmword_27DE175F8[0x1FFF]);
LABEL_66:
    ++v40;
    v39 = v73.i32[0];
    if (v40 >= v73.i32[0])
    {
      v35 = v73.i32[1];
      a7 = v62;
      v37 = v63;
      v36 = v64;
      goto LABEL_81;
    }
  }

  if (v41 >= a5 && (v41 - a5) <= sub_23375A0B4(&v68))
  {
    v48 = v76;
    if (v76 == 2 || v76 == 4)
    {
      v49 = *v36++;
      *v41++ = *(a10 + 2 * v49);
    }

    else if (v76 >= 1)
    {
      v54 = 0;
      do
      {
        v56 = *v36++;
        v55 = v56;
        if (a11 <= v56)
        {
          v57 = sub_2338C0420();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v55;
            v78 = 2048;
            v79 = a11;
            _os_log_error_impl(&dword_23371F000, v57, OS_LOG_TYPE_ERROR, "DNGLosslessJpegUnpacker: curve index %u exceeds bounds %zu", buf, 0x12u);
          }

          v48 = v76;
        }

        if (v38 >= v55)
        {
          v58 = v55;
        }

        else
        {
          v58 = a11 - 1;
        }

        *v41++ = *(a10 + 2 * v58);
        ++v54;
      }

      while (v54 < v48);
    }

    goto LABEL_66;
  }

  v59 = sub_2338C0420();
  if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_87;
  }

LABEL_86:
  sub_2338FC5D8();
LABEL_87:
}

void sub_23380F740(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = sub_2338C0420();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2338FC640(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x23380F614);
  }

  _Unwind_Resume(exception_object);
}

void sub_23380F848(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int32x2_t *a8, int32x2_t *a9, uint64_t a10, unint64_t a11, char a12)
{
  v82 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v16 = *(a3 + 4);
  v76 = v16;
  if (v16 == 4 || v16 == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (a12)
  {
    v19 = 4;
  }

  else
  {
    v19 = 1;
  }

  v74 = v19;
  v75 = v18;
  v20 = vmax_s32(*a8, *a9);
  v21 = vsub_s32(vmin_s32(vadd_s32(a9[1], *a9), vadd_s32(a8[1], *a8)), v20);
  v72 = v20;
  v73 = v21;
  sub_23374340C(&v80, a2 + 10);
  sub_23374340C(&v71, a2 + 11);
  *buf = v80;
  v22 = *sub_23375B354(buf, &v71);
  sub_23374340C(&v70, &v76);
  *buf = v22;
  v23 = *sub_23375B354(buf, &v70);
  sub_23374340C(&v80, &a9[1]);
  sub_23374340C(&v71, &a9[1] + 1);
  *buf = v80;
  v24 = *sub_23375B354(buf, &v71);
  sub_23374340C(&v70, &v75);
  *buf = v24;
  if (v23 != *sub_23375B354(buf, &v70) || v72.i32[0] < 0 || v72.i32[1] < 0 || v73.i32[0] < 0 || v73.i32[1] < 0 || !sub_23385F3FC(&v72, a9))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v25 = vsub_s32(v72, *a9);
  v70 = vsub_s32(v72, *a8);
  v71 = v25;
  sub_23374340C(&v80, &v71 + 1);
  *buf = a4;
  v26 = *sub_23375B354(buf, &v80);
  v27 = *a2;
  sub_23374340C(&v80, &v75);
  v69 = 1;
  *buf = v80;
  v28 = *sub_23375B354(buf, &v69);
  sub_23374340C(&v68, &v71);
  *buf = v28;
  v29 = *sub_23375B354(buf, &v68);
  sub_23374340C(&v80, &v70 + 1);
  *buf = a7;
  v30 = *sub_23375B354(buf, &v80);
  sub_23374340C(&v80, &v74);
  v69 = 2;
  *buf = v80;
  v31 = *sub_23375B354(buf, &v69);
  sub_23374340C(&v68, &v70);
  *buf = v31;
  v32 = *sub_23375B354(buf, &v68);
  if (v76 >= 3)
  {
    v65 = 0;
    v80 = a4;
    v81 = a4;
  }

  else
  {
    v33 = *(a2 + 10) * v76;
    v34 = (v33 / a9[1].i32[0]);
    if ((v34 - 3) <= 0xFFFFFFFD)
    {
      v61 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v61, "RawCameraException");
      __cxa_throw(v61, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v80 = a4;
    v81 = a4;
    if (v34 < 2)
    {
      v65 = 0;
    }

    else
    {
      v80 = v33 / v34;
      v81 = a4 - v33 / v34;
      v65 = 1;
    }
  }

  sub_23374340C(&v69, &a8[1] + 1);
  *buf = a7;
  v68 = *sub_23375B354(buf, &v69);
  v35 = v73.i32[1];
  if (v73.i32[1] < 1)
  {
    return;
  }

  v66 = 0;
  v36 = (v27 + v26 + v29);
  v37 = (a5 + v30 + v32);
  v38 = a11 - 1;
  v39 = v73.i32[0];
  v62 = a7;
  while (v39 < 1)
  {
LABEL_81:
    v37 = (v37 + a7);
    v36 += *(&v80 + (v66++ & v65));
    if (v66 >= v35)
    {
      return;
    }
  }

  v40 = 0;
  v63 = v37;
  v64 = v36;
  v41 = v37;
  while (a12)
  {
    if (v41 < a5 || (v41 - a5) > sub_23375A0B4(&v68))
    {
      v59 = sub_2338C0420();
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    if (v76 >= 3)
    {
      for (i = 0; i < v76; ++i)
      {
        v52 = *v36++;
        v51 = v52;
        if (a11 <= v52)
        {
          v53 = sub_2338C0420();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v51;
            v78 = 2048;
            v79 = a11;
            _os_log_error_impl(&dword_23371F000, v53, OS_LOG_TYPE_ERROR, "DNGLosslessJpegUnpacker: curve index %u exceeds bounds %zu", buf, 0x12u);
          }
        }

        if (v38 < v51)
        {
          v51 = a11 - 1;
        }

        if (qword_27DE175F0 != -1)
        {
          sub_2338FC550();
        }

        *v41++ = *(xmmword_27DE175F8 + *(a10 + 2 * v51));
      }

      if (qword_27DE175F0 == -1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v76 >= 1)
      {
        for (j = 0; j < v76; ++j)
        {
          v44 = *v36++;
          v43 = v44;
          if (a11 <= v44)
          {
            v45 = sub_2338C0420();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *&buf[4] = v43;
              v78 = 2048;
              v79 = a11;
              _os_log_error_impl(&dword_23371F000, v45, OS_LOG_TYPE_ERROR, "DNGLosslessJpegUnpacker: curve index %u exceeds bounds %zu", buf, 0x12u);
            }
          }

          if (v38 < v43)
          {
            v43 = a11 - 1;
          }

          if (qword_27DE175F0 != -1)
          {
            sub_2338FC550();
          }

          if (v74 >= 2)
          {
            v46 = *(xmmword_27DE175F8 + *(a10 + 2 * v43));
            v47 = v74 - 1;
            do
            {
              *v41++ = v46;
              --v47;
            }

            while (v47);
          }
        }
      }

      if (qword_27DE175F0 == -1)
      {
        goto LABEL_65;
      }
    }

    sub_2338FC550();
LABEL_65:
    *v41++ = HIWORD(xmmword_27DE175F8[0x1FFF]);
LABEL_66:
    ++v40;
    v39 = v73.i32[0];
    if (v40 >= v73.i32[0])
    {
      v35 = v73.i32[1];
      a7 = v62;
      v37 = v63;
      v36 = v64;
      goto LABEL_81;
    }
  }

  if (v41 >= a5 && (v41 - a5) <= sub_23375A0B4(&v68))
  {
    v48 = v76;
    if (v76 == 2 || v76 == 4)
    {
      v49 = *v36++;
      *v41++ = *(a10 + 2 * v49);
    }

    else if (v76 >= 1)
    {
      v54 = 0;
      do
      {
        v56 = *v36++;
        v55 = v56;
        if (a11 <= v56)
        {
          v57 = sub_2338C0420();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v55;
            v78 = 2048;
            v79 = a11;
            _os_log_error_impl(&dword_23371F000, v57, OS_LOG_TYPE_ERROR, "DNGLosslessJpegUnpacker: curve index %u exceeds bounds %zu", buf, 0x12u);
          }

          v48 = v76;
        }

        if (v38 >= v55)
        {
          v58 = v55;
        }

        else
        {
          v58 = a11 - 1;
        }

        *v41++ = *(a10 + 2 * v58);
        ++v54;
      }

      while (v54 < v48);
    }

    goto LABEL_66;
  }

  v59 = sub_2338C0420();
  if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_87;
  }

LABEL_86:
  sub_2338FC5D8();
LABEL_87:
}

void sub_233810040(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = sub_2338C0420();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2338FC640(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x23380FF14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233810148()
{
  v0 = sub_2338BC3B8();
  v4 = objc_msgSend_BOOLForKey_(v0, v1, @"USE_APPLE_JPEG_FOR_DNG", v2, v3);

  return v4;
}

void *sub_233810198(uint64_t a1)
{
  *a1 = &unk_28491E198;
  v7 = (a1 + 328);
  sub_233723948(&v7);
  v2 = *(a1 + 288);
  if (v2)
  {
    *(a1 + 296) = v2;
    operator delete(v2);
  }

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

uint64_t sub_233810250(uint64_t a1)
{
  *a1 = &unk_28491E198;
  v8 = (a1 + 328);
  sub_233723948(&v8);
  v2 = *(a1 + 288);
  if (v2)
  {
    *(a1 + 296) = v2;
    operator delete(v2);
  }

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
  return MEMORY[0x2383ABF10](v6, 0x10B1C409101AA68);
}

int64x2_t sub_23381031C()
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

void sub_2338103C8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void sub_2338103F8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v124 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CLosslessJpegRestartUnpacker", &unk_233945DBE, buf, 2u);
  }

  v120[0] = MEMORY[0x277D85DD0];
  v120[1] = 3221225472;
  v120[2] = sub_233811074;
  v120[3] = &unk_2789EE800;
  v120[4] = v1;
  v4 = MEMORY[0x2383AC810](v120);
  v5 = sub_2337ADCC4(v1);
  v6 = *(v1 + 44);
  v7 = *(v1 + 48);
  v118 = (*(*v1 + 152))(v1);
  sub_233723AE0(&v119, &v118);
  v8 = v119;
  v9 = v7 * v6;
  v10 = &v5[v7 * v6 + 512] - v119;
  v11 = &v5[v9 + 448] - v119;
  (*(**(v1 + 24) + 32))(*(v1 + 24), v11, v119);
  if (bswap32(*(v10 - 128)) >> 16 != 65496)
  {
    goto LABEL_180;
  }

  v113 = v9;
  v111 = v4;
  v114 = 0;
  v12 = 0;
  __dst = 0;
  v116 = 0;
  v112 = 0;
  v13 = 0;
  v14 = (v11 + v8);
  v15 = (v10 - 126);
  v122 = 0;
  v123 = 0;
  do
  {
    v16 = __rev16(*v15);
    if (v16 == 0xFFFF)
    {
      v15 = (v15 + 1);
    }

    else
    {
      if (v16 < 0xFF01)
      {
        goto LABEL_180;
      }

      v17 = __rev16(v15[1]);
      if (v17 >= 0x102)
      {
        goto LABEL_180;
      }

      v18 = (v15 + 2);
      v19 = v15 + v17 + 2;
      if (v16 > 65497)
      {
        if (v16 == 65498)
        {
          if (*v18 - 4 < 0xFFFFFFFD || (v22 = 2 * *v18, v17 != v22 + 6) || v18[v22 + 1] != 1)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v13 = v18[v22 + 3] & 0xF;
        }

        else if (v16 == 65501)
        {
          v116 = __rev16(v15[2]);
        }
      }

      else if (v16 == 65475)
      {
        v112 = *(v15 + 4);
        v114 = __rev16(*(v15 + 5));
        __dst = *(v15 + 9);
        v12 = __rev16(*(v15 + 7)) * __dst;
      }

      else if (v16 == 65476)
      {
        while (v18 < v19)
        {
          v20 = *v18;
          if (v20 > 1)
          {
            break;
          }

          v21 = &buf[2048 * v20];
          *(&v122 + v20) = v21;
          v18 = sub_2337B4F10(v18 + 1, v21);
          if (!v18)
          {
            v105 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v105, "RawCameraException");
            __cxa_throw(v105, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }
      }

      v15 = v19;
    }
  }

  while (v16 != 65498);
  if (v12 * v114 > v113)
  {
LABEL_180:
    v106 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v106, "RawCameraException");
    __cxa_throw(v106, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v23 = v116;
  if (v116 >= 1 && v12 >= 1)
  {
    v23 = v116 / (v12 / __dst);
  }

  if (v23 < 1)
  {
    v24 = v114 + 1;
  }

  else
  {
    v24 = v23;
  }

  if (v123)
  {
    v25 = v123;
  }

  else
  {
    v25 = v122;
  }

  if (v122)
  {
    v26 = v122;
  }

  else
  {
    v26 = v123;
  }

  if (!v26 || !v25)
  {
    v110 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v110, "RawCameraException");
    __cxa_throw(v110, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v114 > 0)
  {
    v27 = v14;
    v28 = 0;
    v29 = 0;
    v30 = 32;
    v31 = v24;
    v32 = 1 << (v112 + ~v13);
    v117 = v32;
    while (1)
    {
      v33 = v27 - v15 + ((39 - v30) >> 3);
      if (8 * v33 < 2 * (v114 - v28) * v12)
      {
        v107 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v107, "RawCameraException");
        __cxa_throw(v107, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if ((v12 > v15 - v5 || v33 < (8 * v12)) && v27 != v15)
      {
        operator new[]();
      }

      if (v28 == v31)
      {
        break;
      }

      v36 = v27;
      if (v30 >= 16)
      {
        goto LABEL_56;
      }

LABEL_66:
      v43 = *(v26 + 2 * ((v29 << v30) >> 23));
      v44 = ((v43 >> 10) & 0x1F) + v30;
      if (v43 > 0x8000)
      {
        v43 = v43;
      }

      else
      {
        if ((v43 & 0x8000) != 0)
        {
          v43 = *(v26 + 2 * (((v29 << v30) >> 16) & 0x3FF));
          v44 += (v43 >> 10) & 0x1F;
        }

        v45 = v43 & 0x1F;
        if ((v43 & 0x1F) != 0)
        {
          v46 = v44 - 16;
          if (v44 >= 16)
          {
            v47 = *v15;
            if (v47 == 255)
            {
              v48 = 3;
            }

            else
            {
              v48 = 2;
            }

            if (v47 == 255)
            {
              v49 = 2;
            }

            else
            {
              v49 = 1;
            }

            v50 = *(v15 + v49);
            v51 = (v15 + v48);
            v52 = (v29 << 16) | (v47 << 8);
            if (v50 == 255)
            {
              v15 = (v51 + 1);
            }

            else
            {
              v15 = v51;
            }

            v29 = v52 | v50;
            v44 = v46;
          }

          v43 = ((v29 << v44) >> -v45) - ((((v29 << v44) >> 31) - 1) >> -v45);
          v44 += v45;
        }

        else
        {
          v43 = (v43 << 8) & 0x8000;
        }
      }

      v53 = v44 - 16;
      if (v44 >= 16)
      {
        v54 = *v15;
        if (v54 == 255)
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        if (v54 == 255)
        {
          v56 = 2;
        }

        else
        {
          v56 = 1;
        }

        v57 = *(v15 + v56);
        v58 = (v15 + v55);
        v59 = (v29 << 16) | (v54 << 8);
        if (v57 == 255)
        {
          v15 = (v58 + 1);
        }

        else
        {
          v15 = v58;
        }

        v29 = v59 | v57;
        v44 = v53;
      }

      v60 = *(v25 + 2 * ((v29 << v44) >> 23));
      v30 = ((v60 >> 10) & 0x1F) + v44;
      if (v60 > 0x8000)
      {
        v60 = v60;
      }

      else
      {
        if ((v60 & 0x8000) != 0)
        {
          v60 = *(v25 + 2 * (((v29 << v44) >> 16) & 0x3FF));
          v30 += (v60 >> 10) & 0x1F;
        }

        v61 = v60 & 0x1F;
        if ((v60 & 0x1F) != 0)
        {
          if (v30 >= 16)
          {
            v62 = *v15;
            if (v62 == 255)
            {
              v63 = 3;
            }

            else
            {
              v63 = 2;
            }

            if (v62 == 255)
            {
              v64 = 2;
            }

            else
            {
              v64 = 1;
            }

            v65 = *(v15 + v64);
            v66 = (v15 + v63);
            v67 = (v29 << 16) | (v62 << 8);
            if (v65 == 255)
            {
              v15 = (v66 + 1);
            }

            else
            {
              v15 = v66;
            }

            v29 = v67 | v65;
            v30 -= 16;
          }

          v60 = ((v29 << v30) >> -v61) - ((((v29 << v30) >> 31) - 1) >> -v61);
          v30 += v61;
        }

        else
        {
          v60 = (v60 << 8) & 0x8000;
        }
      }

      v32 += v43;
      v68 = v60 + v117;
      v69 = v32 << v13;
      v117 += v60;
      if (v12 >= 3)
      {
        v70 = 2;
        v71 = v32;
        do
        {
          if (v15 > v36)
          {
            v104 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v104, "RawCameraException");
            __cxa_throw(v104, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          if (v30 >= 16)
          {
            v72 = *v15;
            if (v72 == 255)
            {
              v73 = 3;
            }

            else
            {
              v73 = 2;
            }

            if (v72 == 255)
            {
              v74 = 2;
            }

            else
            {
              v74 = 1;
            }

            v75 = *(v15 + v74);
            v76 = (v15 + v73);
            v77 = (v29 << 16) | (v72 << 8);
            if (v75 == 255)
            {
              v15 = (v76 + 1);
            }

            else
            {
              v15 = v76;
            }

            v29 = v77 | v75;
            v30 -= 16;
          }

          v78 = *(v26 + 2 * ((v29 << v30) >> 23));
          v79 = ((v78 >> 10) & 0x1F) + v30;
          *v5 = v69;
          if (v78 > 0x8000)
          {
            v88 = v78;
          }

          else
          {
            if ((v78 & 0x8000) != 0)
            {
              v78 = *(v26 + 2 * (((v29 << v30) >> 16) & 0x3FF));
              v79 += (v78 >> 10) & 0x1F;
            }

            v80 = v78 & 0x1F;
            if ((v78 & 0x1F) != 0)
            {
              v81 = v79 - 16;
              if (v79 >= 16)
              {
                v82 = *v15;
                if (v82 == 255)
                {
                  v83 = 3;
                }

                else
                {
                  v83 = 2;
                }

                if (v82 == 255)
                {
                  v84 = 2;
                }

                else
                {
                  v84 = 1;
                }

                v85 = *(v15 + v84);
                v86 = (v15 + v83);
                v87 = (v29 << 16) | (v82 << 8);
                if (v85 == 255)
                {
                  v15 = (v86 + 1);
                }

                else
                {
                  v15 = v86;
                }

                v29 = v87 | v85;
                v79 = v81;
              }

              v88 = ((v29 << v79) >> -v80) - ((((v29 << v79) >> 31) - 1) >> -v80);
              v79 += v80;
            }

            else
            {
              v88 = (v78 << 8) & 0x8000;
            }
          }

          v89 = v79 - 16;
          if (v79 >= 16)
          {
            v90 = *v15;
            if (v90 == 255)
            {
              v91 = 3;
            }

            else
            {
              v91 = 2;
            }

            if (v90 == 255)
            {
              v92 = 2;
            }

            else
            {
              v92 = 1;
            }

            v93 = *(v15 + v92);
            v94 = (v15 + v91);
            v95 = (v29 << 16) | (v90 << 8);
            if (v93 == 255)
            {
              v15 = (v94 + 1);
            }

            else
            {
              v15 = v94;
            }

            v29 = v95 | v93;
            v79 = v89;
          }

          v96 = *(v25 + 2 * ((v29 << v79) >> 23));
          v30 = ((v96 >> 10) & 0x1F) + v79;
          v5[1] = v68 << v13;
          if (v96 > 0x8000)
          {
            v96 = v96;
          }

          else
          {
            if ((v96 & 0x8000) != 0)
            {
              v96 = *(v25 + 2 * (((v29 << v79) >> 16) & 0x3FF));
              v30 += (v96 >> 10) & 0x1F;
            }

            v97 = v96 & 0x1F;
            if ((v96 & 0x1F) != 0)
            {
              if (v30 >= 16)
              {
                v98 = *v15;
                if (v98 == 255)
                {
                  v99 = 3;
                }

                else
                {
                  v99 = 2;
                }

                if (v98 == 255)
                {
                  v100 = 2;
                }

                else
                {
                  v100 = 1;
                }

                v101 = *(v15 + v100);
                v102 = (v15 + v99);
                v103 = (v29 << 16) | (v98 << 8);
                if (v101 == 255)
                {
                  v15 = (v102 + 1);
                }

                else
                {
                  v15 = v102;
                }

                v29 = v103 | v101;
                v30 -= 16;
              }

              v96 = ((v29 << v30) >> -v97) - ((((v29 << v30) >> 31) - 1) >> -v97);
              v30 += v97;
            }

            else
            {
              v96 = (v96 << 8) & 0x8000;
            }
          }

          v71 += v88;
          v5 += 2;
          v68 += v96;
          v70 += 2;
          v69 = v71 << v13;
        }

        while (v70 < v12);
      }

      *v5 = v69;
      v5[1] = v68 << v13;
      v5 += 2;
      if (++v28 == v114)
      {
        goto LABEL_176;
      }
    }

    v34 = v15 - 4;
    v35 = 12;
    v36 = v27;
    while (*v34 != 255 || (*(v34 + 1) & 0xF8) != 0xD0)
    {
      v34 = (v34 + 1);
      if (!--v35)
      {
        v109 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v109, "RawCameraException");
        __cxa_throw(v109, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    v29 = 0;
    v31 += v24;
    v15 = v34 + 1;
    v30 = 32;
    v32 = 1 << (v112 + ~v13);
    v117 = v32;
LABEL_56:
    v37 = *v15;
    if (v37 == 255)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    if (v37 == 255)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    v40 = *(v15 + v39);
    v41 = (v15 + v38);
    v30 -= 16;
    v42 = (v29 << 16) | (v37 << 8);
    if (v40 == 255)
    {
      v15 = (v41 + 1);
    }

    else
    {
      v15 = v41;
    }

    v29 = v42 | v40;
    goto LABEL_66;
  }

LABEL_176:
  v111[2](v111);
}

void sub_233811074(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CLosslessJpegRestartUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338110FC(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233811134(os_signpost_id_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CSonyCompressedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_233811498;
  v5[3] = &unk_2789EE800;
  v5[4] = a1;
  MEMORY[0x2383AC810](v5);
  sub_2337AF4A8(a1);
  if ((*(a1 + 44) & 0x1F) == 0)
  {
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_233811498(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSonyCompressedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_233811520(uint64_t result, int32x2_t *a2, int8x16_t *a3, int32x4_t a4, int32x4_t a5)
{
  v5 = 0;
  v6 = 0;
  v61 = *MEMORY[0x277D85DE8];
  *a4.i8 = *a2;
  *a5.i8 = a2[1];
  v7 = vshlq_u32(vzip1q_s32(a4, vdupq_lane_s32(*a2, 1)), xmmword_233908740);
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v9.i32[1] = 127;
  v9.i64[1] = 0x7F0000007FLL;
  v9.i32[0] = 4 * (HIDWORD(*a2) & 0x1F);
  v10 = vorrq_s8(v7, v9);
  v11 = vandq_s8(v7, v8);
  v11.i32[0] = v10.i32[0];
  v12 = vzip1q_s32(a5, a5);
  v13 = a5.u32[1];
  *v10.i8 = vzip1_s32(vdup_lane_s32(*a2, 1), *a5.i8);
  v14 = vshlq_u32(vzip1q_s32(v10, vdupq_lane_s32(*v10.i8, 1)), xmmword_233908750);
  v10.i32[1] = 127;
  v10.i64[1] = 0x7F0000007FLL;
  v10.i32[0] = (*&a2[1] & 1) << 6;
  v10.i32[0] = vorrq_s8(v14, v10).u32[0];
  v15 = vandq_s8(v14, v8);
  v15.i32[0] = v10.i32[0];
  v16 = vshlq_u32(v12, xmmword_233908760);
  v17 = vandq_s8(v16, v8);
  v8.i32[1] = 8 * (v13 & 0xF);
  v58[0] = v11;
  v58[1] = v15;
  v18 = (v13 >> 18) & 0x7F;
  v19 = v13 >> 25;
  v20 = (a4.i32[0] >> 11) & 0x7FF;
  v17.i32[1] = vorrq_s8(v16, v8).i32[1];
  v58[2] = v17;
  v21 = a4.i16[0] & 0x7FF;
  v22 = (a4.i32[0] >> 22) & 0xF;
  v23 = (a4.i32[0] >> 26) & 0xF;
  v59 = v18;
  v60 = v19;
  do
  {
    if (4 * ((a4.i32[0] >> 26) & 0xF) == v5)
    {
      *&v57[4 * v23] = v20;
    }

    else if (4 * ((a4.i32[0] >> 22) & 0xF) == v5)
    {
      *&v57[4 * v22] = v21;
    }

    else
    {
      *&v57[v5] = *(v58 + v6++);
    }

    v5 += 4;
  }

  while (v5 != 64);
  v24 = v21 - v20;
  if (v21 - v20 < 0x400)
  {
    v25 = 3;
  }

  else
  {
    v25 = 4;
  }

  if (v24 >= 0x200)
  {
    v26 = v25;
  }

  else
  {
    v26 = 2;
  }

  if (v24 >= 0x100)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1;
  }

  if (v24 < 128)
  {
    v27 = 0;
  }

  v28 = 0;
  v29 = vdupq_n_s64(v23);
  v30 = vdupq_n_s64(v22);
  v31 = vdupq_n_s32(v27);
  v32 = xmmword_233903BC0;
  v33 = xmmword_233903BD0;
  v34 = xmmword_233903BE0;
  v35 = vdupq_n_s32(v20);
  v36 = xmmword_233903BB0;
  v37.i64[0] = 0xF8000000F800;
  v37.i64[1] = 0xF8000000F800;
  v38 = a3;
  v39 = vdupq_n_s64(8uLL);
  do
  {
    v41 = *&v57[v28];
    v40 = *&v57[v28 + 16];
    v42 = vaddq_s32(vshlq_u32(v40, v31), v35);
    v43 = vaddq_s32(vshlq_u32(v41, v31), v35);
    v44 = vuzp1q_s16(v43, v42);
    v45 = vuzp1q_s16(vceqzq_s32(vandq_s8(v43, v37)), vceqzq_s32(vandq_s8(v42, v37)));
    *v38++ = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vbicq_s8(vmvnq_s8(vceqq_s64(v36, v29)), vceqq_s64(v36, v30)), vbicq_s8(vmvnq_s8(vceqq_s64(v34, v29)), vceqq_s64(v34, v30))), vuzp1q_s32(vbicq_s8(vmvnq_s8(vceqq_s64(v33, v29)), vceqq_s64(v33, v30)), vbicq_s8(vmvnq_s8(vceqq_s64(v32, v29)), vceqq_s64(v32, v30)))), vorrq_s8(vandq_s8(v44, v45), (*&vmvnq_s8(v45) & __PAIR128__(0x7FF07FF07FF07FFLL, 0x7FF07FF07FF07FFLL))), vuzp1q_s16(v41, v40));
    v33 = vaddq_s64(v33, v39);
    v34 = vaddq_s64(v34, v39);
    v36 = vaddq_s64(v36, v39);
    v32 = vaddq_s64(v32, v39);
    v28 += 32;
  }

  while (v28 != 64);
  v46 = 0;
  v47 = *(result + 192);
  do
  {
    v48 = 8 * a3->i16[v46];
    v49 = v48 & 0x3FF8;
    if (v49 <= *v47)
    {
      v49 >>= 2;
    }

    else
    {
      if (v49 <= v47[1])
      {
        v53 = **(result + 216);
        v54 = v49 >= v53;
        v49 = (v49 - v53) >> 1;
      }

      else if (v49 <= v47[2])
      {
        v55 = *(*(result + 216) + 2);
        v54 = v49 >= v55;
        LOWORD(v49) = v49 - v55;
      }

      else
      {
        v50 = *(result + 216);
        if (v49 > v47[3])
        {
          v51 = *(v50 + 6);
          v52 = 4 * (v48 - v51);
          if (v49 >= v51)
          {
            LOWORD(v49) = v52;
          }

          else
          {
            LOWORD(v49) = 0;
          }

          goto LABEL_35;
        }

        v56 = *(v50 + 4);
        v54 = v49 >= v56;
        LOWORD(v49) = 2 * (v49 - v56);
      }

      if (!v54)
      {
        LOWORD(v49) = 0;
      }
    }

LABEL_35:
    if (v49 >= 0x3FFFu)
    {
      LOWORD(v49) = 0x3FFF;
    }

    a3->i16[v46++] = v49;
  }

  while (v46 != 16);
  return result;
}

void sub_233811860(os_signpost_id_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CSonyCompressedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_233811CC0;
  v5[3] = &unk_2789EE800;
  v5[4] = a1;
  MEMORY[0x2383AC810](v5);
  if ((*(a1 + 44) & 0x1F) == 0)
  {
    sub_2337AF4A8(a1);
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_233811CC0(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSonyCompressedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

char **sub_233811D48(uint64_t a1, char **a2)
{
  result = (a1 + 192);
  if (result != a2)
  {
    return sub_233754F80(result, *a2, a2[1], (a2[1] - *a2) >> 1);
  }

  return result;
}

char **sub_233811D6C(uint64_t a1, char **a2)
{
  result = (a1 + 216);
  if (result != a2)
  {
    return sub_233754F80(result, *a2, a2[1], (a2[1] - *a2) >> 1);
  }

  return result;
}

void *sub_233811D90(void *a1)
{
  *a1 = &unk_28491E3C8;
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  v3 = a1[24];
  if (v3)
  {
    a1[25] = v3;
    operator delete(v3);
  }

  return sub_233723A54(a1);
}

void sub_233811E00(void *a1)
{
  *a1 = &unk_28491E3C8;
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  v3 = a1[24];
  if (v3)
  {
    a1[25] = v3;
    operator delete(v3);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233811E84(uint64_t a1)
{
  if (!(*(*a1 + 128))(a1))
  {
    return 0;
  }

  (*(*a1 + 160))(&v4, a1);
  v2 = (*(*v4 + 360))();
  if (v5)
  {
    sub_2337239E8(v5);
  }

  return v2;
}

void sub_233811F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233811F70(uint64_t a1)
{
  if ((*(*a1 + 176))(a1))
  {
    (*(*a1 + 160))(&v3, a1);
    (*(*v3 + 336))();
    if (v4)
    {
      sub_2337239E8(v4);
    }
  }

  else
  {
    v2 = *(*a1 + 640);

    v2(a1);
  }
}

void sub_23381208C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338120A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(*a1 + 120))(a1) <= 6 && (*(*a1 + 120))(a1) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_233813F5C(a2);
  if ((*(*a1 + 656))(a1))
  {
    goto LABEL_7;
  }

  (*(*a1 + 160))(&v13, a1);
  v4 = (*(*v13 + 328))(v13, a2);
  if (v14)
  {
    sub_2337239E8(v14);
  }

  if ((v4 & 1) == 0)
  {
LABEL_7:
    (*(*a1 + 760))(&v13, a1);
    if (v13 && HIDWORD(v13))
    {
      *(a2 + 8) = 17;
      sub_2337E004C((a2 + 16), &v13);
    }

    (*(*a1 + 768))(&v10, a1);
    if (v10 && HIDWORD(v10))
    {
      *(a2 + 12) = 21;
      sub_2337E004C((a2 + 48), &v10);
    }

    (*(*a1 + 632))(__p, a1);
    sub_2337E004C((a2 + 80), __p);
    if (__p[1])
    {
      v9 = __p[1];
      operator delete(__p[1]);
    }

    sub_2337E004C((a2 + 112), (a2 + 80));
    (*(*a1 + 776))(__p, a1);
    sub_2337E004C((a2 + 144), __p);
    if (__p[1])
    {
      v9 = __p[1];
      operator delete(__p[1]);
    }

    (*(*a1 + 784))(__p, a1);
    sub_2337E004C((a2 + 176), __p);
    if (__p[1])
    {
      v9 = __p[1];
      operator delete(__p[1]);
    }

    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    if ((*(*a1 + 808))(a1))
    {
      (*(*a1 + 704))(&v6, a1);
      *__p = v6;
      v9 = v7;
    }

    sub_233819CC0(a2, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  result = (*(*a1 + 120))(a1);
  if (result >= 7)
  {
    *(a2 + 208) = 1;
  }

  return result;
}

void sub_2338124A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    *(v20 - 48) = v22;
    operator delete(v22);
  }

  sub_2337D35EC(v19);
  _Unwind_Resume(a1);
}

void sub_233812568(uint64_t a1@<X0>, void **a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 160))(&__p, a1);
  (*(*__p + 368))(__p);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  v4 = *a2;
  v5 = a2[1];
  if (v5 == *a2)
  {
    if (v5)
    {
      a2[1] = v4;
      operator delete(v4);
    }

    if ((*(*a1 + 808))(a1))
    {
      __p = 0x3FF0000000000000;
      sub_233731694(a2, 3uLL);
    }

    else
    {
      (*(*a1 + 704))(&__p, a1);
      if (v12 - __p == 24)
      {
        __asm { FMOV            V1.2D, #1.0 }

        v13 = vdivq_f64(_Q1, *__p);
        v14 = 1.0 / *(__p + 2);
        a2[1] = 0;
        a2[2] = 0;
        *a2 = 0;
        sub_233764ED4(a2, &v13, &v15, 3uLL);
      }

      else
      {
        v13.f64[0] = 1.0;
        sub_233731694(a2, 3uLL);
      }

      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_233812794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338127E0(uint64_t a1)
{
  (*(*a1 + 160))(&__p);
  v9 = (*(*__p + 376))();
  v10 = v2;
  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (!sub_233819A7C(&v9))
  {
    (*(*a1 + 1728))(&__p, a1);
    v3 = (*(*a1 + 176))(a1);
    v4 = __p;
    if (v8 == __p)
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      v9 = sub_2338191FC();
      v10 = v5;
      v4 = __p;
    }

    if (v4)
    {
      v8 = v4;
      operator delete(v4);
    }
  }

  return v9;
}

void sub_233812914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233812948(uint64_t a1)
{
  v3 = &unk_28490E658;
  (*(*a1 + 160))(&v1);
  (*(*v1 + 600))();
  if (v2)
  {
    sub_2337239E8(v2);
  }
}

void sub_233812A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
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

void sub_233812A7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 1728))(a1);
  if (*(a2 + 8) == *a2)
  {
    sub_233731694(&v10, 3uLL);
    v4 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    *a2 = v10;
    *(a2 + 16) = v11;
    (*(*a1 + 688))(&v10, a1);
    v5 = v10;
    if (*(&v10 + 1) - v10 == 24)
    {
      v6 = *(v10 + 8);
      v7 = *v10 / v6;
      if (v7 > 0.00000001)
      {
        v8 = *(v10 + 16) / v6;
        if (v8 > 0.00000001)
        {
          v9 = *a2;
          *v9 = v7;
          v9[2] = v8;
        }
      }
    }

    else if (!v10)
    {
      return;
    }

    *(&v10 + 1) = v5;
    operator delete(v5);
  }
}

void sub_233812BA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_233812BC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v30 = 0;
  (*(*a1 + 2864))(&v25);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_23381E1C4(v25, &__p, v3, v4, &v27);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v26)
  {
    sub_2337239E8(v26);
  }

  v5 = (v28 - v27) >> 3;
  if (v5 > 4)
  {
    goto LABEL_32;
  }

  if (v5)
  {
    v6 = 0;
    v7 = ((v28 - v27) >> 3) & 7;
    do
    {
      v8 = *(v27 + v6);
      if (v8 > 0.0)
      {
        v9 = __src[1];
        if (__src[1] >= v30)
        {
          v11 = __src[0];
          v12 = __src[1] - __src[0];
          v13 = (__src[1] - __src[0]) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            sub_2337235BC();
          }

          v15 = v30 - __src[0];
          if ((v30 - __src[0]) >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            sub_233723798(__src, v16);
          }

          *(8 * v13) = v8;
          v10 = (8 * v13 + 8);
          memcpy(0, v11, v12);
          v17 = __src[0];
          __src[0] = 0;
          __src[1] = v10;
          v30 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *__src[1] = v8;
          v10 = v9 + 8;
        }

        __src[1] = v10;
      }

      ++v6;
    }

    while (v7 != v6);
  }

  v18 = __src[0];
  if ((__src[1] - __src[0]) != 16 || *__src[0] >= 0.0 && ((v19 = *(__src[0] + 1), v19 >= 0.0) ? (v20 = *__src[0] + v19 <= 1.0) : (v20 = 0), v20))
  {
LABEL_32:
    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    result = *__src;
    *a2 = *__src;
    *(a2 + 16) = v30;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (!v27 || (v28 = v27, operator delete(v27), (v18 = __src[0]) != 0))
    {
      __src[1] = v18;
      operator delete(v18);
    }
  }

  return result;
}

void sub_233812DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_2337239E8(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

double sub_233812E3C(uint64_t a1)
{
  v11 = 0uLL;
  (*(*a1 + 712))(&v9);
  v2 = (v10 - v9) >> 3;
  if ((v2 - 3) < 2)
  {
    (*(*a1 + 648))(v8, a1);
    *&v11 = sub_23381B95C(v8, &v9);
    *(&v11 + 1) = v3;
LABEL_3:
    sub_2337D35EC(v8);
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v11 = *v9;
  }

  else
  {
    *&v11 = (*(*a1 + 672))(a1);
    *(&v11 + 1) = v4;
    if (!sub_233819A7C(&v11))
    {
      (*(*a1 + 648))(v8, a1);
      (*(*a1 + 664))(__p, a1);
      *&v11 = sub_23381B95C(v8, __p);
      *(&v11 + 1) = v6;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      goto LABEL_3;
    }
  }

LABEL_7:
  if (getenv("RAWCAMERA_LOG_WHITEPOINT"))
  {
    printf("WhitePoint: x=%1.4lf  |  y=%1.4lf \n", *&v11, *(&v11 + 1));
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return *&v11;
}

void sub_233813018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2337D35EC(&a15);
  v17 = *(v15 - 56);
  if (v17)
  {
    *(v15 - 48) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void *sub_23381306C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 648))(v33);
  v25.f64[0] = (*(*a1 + 720))(a1);
  v25.f64[1] = v4;
  sub_2337DF9CC(&v27, 3u, 3u, 0.6097, v5, v6, v7, v8, v9, 0x3FCA474538EF34D7);
  sub_23381A514(v33, &v25, &v27, &v30);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v30 && HIDWORD(v30))
  {
    sub_2337DF9CC(&v25, 3u, 1u, 1.0, v10, v11, v12, v13, v14, 0x3FF0000000000000);
    sub_2337E0720(&v30, &v20);
    sub_2337E032C(&v20, &v25, &v22);
    if (*(&v20 + 1))
    {
      v21 = *(&v20 + 1);
      operator delete(*(&v20 + 1));
    }

    v15 = sub_2337E0EE4(&v22);
    sub_2337E0244(&v22, &v20, 1.0 / v15);
    sub_2337E004C(&v22, &v20);
    if (*(&v20 + 1))
    {
      v21 = *(&v20 + 1);
      operator delete(*(&v20 + 1));
    }

    sub_233730758(a2, 3uLL);
    *&v20 = sub_2337DFCEC(&v22, 0);
    *(&v20 + 1) = v16;
    **a2 = 1.0 / *sub_2337DFD6C(&v20, 0);
    *&v20 = sub_2337DFCEC(&v22, 1u);
    *(&v20 + 1) = v17;
    *(*a2 + 8) = 1.0 / *sub_2337DFD6C(&v20, 0);
    *&v20 = sub_2337DFCEC(&v22, 2u);
    *(&v20 + 1) = v18;
    *(*a2 + 16) = 1.0 / *sub_2337DFD6C(&v20, 0);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (*&v25.f64[1])
    {
      v26 = v25.f64[1];
      operator delete(*&v25.f64[1]);
    }
  }

  else
  {
    v25.f64[0] = 1.0;
    sub_233731694(a2, 3uLL);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return sub_2337D35EC(v33);
}

void sub_23381335C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2337D35EC(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_23381341C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v10 = (*(*a1 + 920))(a1);
  return sub_2337DF9CC(a2, 3u, 1u, v10, v4, v5, v6, v7, v8, *&v10);
}

void sub_2338134F0(uint64_t a1@<X0>, double **a2@<X8>)
{
  (*(*a1 + 728))(v28);
  (*(*a1 + 736))(&v25, a1);
  v21[0] = sub_2337DFCEC(&v25, 0);
  v21[1] = v4;
  v5 = *sub_2337DFD6C(v21, 0);
  v6 = *v28[0];
  v20[0] = sub_2337DFCEC(&v25, 1u);
  v20[1] = v7;
  v8 = *sub_2337DFD6C(v20, 0);
  v9 = *(v28[0] + 1);
  v19[0] = sub_2337DFCEC(&v25, 2u);
  v19[1] = v10;
  sub_2337DFD6C(v19, 0);
  sub_2337DF9CC(&v22, 3u, 1u, v5 * v6, v11, v12, v13, v14, v15, COERCE__INT64(v8 * v9));
  v16 = sub_2337E0EE4(&v22);
  sub_233730758(a2, 3uLL);
  v17 = v28[0];
  v18 = *a2;
  *v18 = *v28[0] * 32767.0 / v16;
  v18[1] = v17[1] * 32767.0 / v16;
  v18[2] = v17[2] * 32767.0 / v16;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }
}

void sub_2338136BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  v26 = *(v24 - 72);
  if (v26)
  {
    *(v24 - 64) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338137EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*a1 + 120))(a1) <= 6 && (*(*a1 + 120))(a1) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 648))(v44, a1);
  v35.f64[0] = (*(*a1 + 720))(a1);
  v35.f64[1] = v6;
  sub_2337DF9CC(&v38, 3u, 3u, 0.6097, v7, v8, v9, v10, v11, 0x3FCA474538EF34D7);
  sub_23381A514(v44, &v35, &v38, &v41);
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  v35.f64[0] = 0.0;
  sub_233731694(v37, 3uLL);
  if (a2)
  {
    sub_2337DFC28(3u, &v32);
    v12 = (*(*a1 + 800))(a1, a2);
    sub_2337E0244(&v32, &v35, v12);
    sub_2337E004C(&v41, &v35);
    if (*&v35.f64[1])
    {
      v36 = v35.f64[1];
      operator delete(*&v35.f64[1]);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }

  else
  {
    v13 = (*(*a1 + 928))(a1);
    v14 = (*(*a1 + 952))(a1) * 0.001;
    v15 = 1.0 / (1.0 / exp2(v13) - v14);
    sub_2337E0244(&v41, &v35, v15);
    sub_2337E004C(&v41, &v35);
    if (*&v35.f64[1])
    {
      v36 = v35.f64[1];
      operator delete(*&v35.f64[1]);
    }

    v16 = v15 * v14 * -65535.0;
    v17 = v37[0];
    *v37[0] = v16;
    v17[1] = v16;
    v17[2] = v16;
  }

  (*(*a1 + 744))(&v35, a1);
  if ((*(*a1 + 120))(a1) == 2)
  {
    v19 = v35.f64[1];
    for (i = v35.f64[0]; *&i != *&v19; *&i += 8)
    {
      v20 = **&i;
      **&i = v20;
    }
  }

  if (sub_2337E003C(&v41) != 3 || sub_2337E0044(&v41) != 3 && sub_2337E0044(&v41) != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2337DF9C8(a3, 3u, 5u);
  for (j = 0; j != 3; ++j)
  {
    for (k = 0; k != 4; ++k)
    {
      v23 = 0.0;
      if (k < sub_2337E0044(&v41))
      {
        v32 = sub_2337DFCEC(&v41, j);
        v33 = v24;
        v25 = sub_2337DFD6C(&v32, k);
        if (k >= (*&v35.f64[1] - *&v35.f64[0]) >> 3)
        {
          sub_2337306B0();
        }

        v23 = *v25 / *(*&v35.f64[0] + 8 * k);
      }

      v31[0] = sub_2337DFCEC(a3, j);
      v31[1] = v26;
      *sub_2337DFD6C(v31, k) = v23;
    }

    v27 = *(v37[0] + j);
    v32 = sub_2337DFCEC(a3, j);
    v33 = v28;
    *sub_2337DFD6C(&v32, 4u) = v27;
  }

  if (*&v35.f64[0])
  {
    v35.f64[1] = v35.f64[0];
    operator delete(*&v35.f64[0]);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return sub_2337D35EC(v44);
}

void sub_233813D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a35)
  {
    operator delete(a35);
  }

  sub_2337D35EC(&a38);
  _Unwind_Resume(a1);
}

void sub_233813E4C(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 2152))(a1);
  if (a2 && (v4 & 1) == 0)
  {
    (*(*a1 + 736))(&v5, a1, 1.0);
    sub_2337E0EE4(&v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }
}

void sub_233813F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233813F5C(uint64_t a1)
{
  *a1 = &unk_284910238;
  *(a1 + 8) = 0;
  sub_2337DF868((a1 + 16));
  sub_2337DF868((a1 + 48));
  sub_2337DF868((a1 + 80));
  sub_2337DF868((a1 + 112));
  sub_2337DF868((a1 + 144));
  sub_2337DF868((a1 + 176));
  *(a1 + 208) = 0;
  sub_2337DF868((a1 + 216));
  sub_2337DF868((a1 + 248));
  return a1;
}

void sub_233813FDC(_Unwind_Exception *exception_object)
{
  v3 = v1[28];
  if (v3)
  {
    v1[29] = v3;
    operator delete(v3);
  }

  v4 = v1[23];
  if (v4)
  {
    v1[24] = v4;
    operator delete(v4);
  }

  v5 = v1[19];
  if (v5)
  {
    v1[20] = v5;
    operator delete(v5);
  }

  v6 = v1[15];
  if (v6)
  {
    v1[16] = v6;
    operator delete(v6);
  }

  v7 = v1[11];
  if (v7)
  {
    v1[12] = v7;
    operator delete(v7);
  }

  v8 = v1[7];
  if (v8)
  {
    v1[8] = v8;
    operator delete(v8);
  }

  v9 = v1[3];
  if (v9)
  {
    v1[4] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_233814088(uint64_t a1@<X0>, unsigned int *a2@<X8>)
{
  if ((*(*a1 + 176))(a1))
  {

    sub_2338120A4(a2);
  }

  else
  {
    (*(*a1 + 1744))(&v15, a1);
    if (v16 - v15 != 24 || ((*(*a1 + 2952))(a1) & 0x80000000) != 0)
    {
      sub_2338120A4(a2);
    }

    else
    {
      (*(*a1 + 2960))(&v13, a1);
      if (v14 - v13 == 24 && (v4 = *(v15 + 1), v5 = *(v13 + 1), v6 = *v15 / v4 / (*v13 / v5), COERCE__INT64(fabs(v6)) <= 0x7FEFFFFFFFFFFFFFLL) && v6 >= 0.8 && v6 <= 1.25 && (v7 = *(v15 + 2) / v4 / (*(v13 + 2) / v5), COERCE__INT64(fabs(v7)) <= 0x7FEFFFFFFFFFFFFFLL) && v7 >= 0.8 && v7 <= 1.25)
      {
        sub_2337DFC28(3u, a2);
        v10 = sub_2337DFCEC(a2, 0);
        __p = v8;
        *sub_2337DFD6C(&v10, 0) = v6;
        v10 = sub_2337DFCEC(a2, 2u);
        __p = v9;
        *sub_2337DFD6C(&v10, 2u) = v7;
        sub_2337E0BB0(a2, &v10, 10000.0);
        sub_2337E004C(a2, &v10);
        if (__p)
        {
          v12 = __p;
          operator delete(__p);
        }
      }

      else
      {
        sub_2338120A4(a2);
      }

      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }
}

void sub_233814330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338143A8(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_23381446C(v2, @"daylightMultipliersOffset", v3, &unk_28491E4A8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_233814454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23381446C(uint64_t a1, void *a2, int a3, void *a4)
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
    v28[2] = sub_233814C84;
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
    v31[0] = sub_233814D1C;
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
        *(v23 + 56) = sub_233814D1C;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_233814CD0((v9 + 56));
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

void sub_233814748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

uint64_t sub_2338147E0(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = &unk_28490E658;
  (*(*a1 + 160))(&v8);
  v5 = sub_233733D74(v8, a2, &v10);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  v6 = a3[1];
  if (v6 != *a3)
  {
    if (v5 >= ((v6 - *a3) >> 2))
    {
      return 0;
    }

    else
    {
      return *(*a3 + 4 * v5);
    }
  }

  return v5;
}

void sub_23381489C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338148B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8) = a2;
  (*(*a1 + 160))(&v4);
  (*(*v4 + 600))();
  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_233814970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233814988(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  sub_2337D76B4(&v3, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v5)
  {
    v1 = (*(*v5 + 808))(v5);
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

void sub_233814A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_233814A54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEqualToString_(v3, v4, @"isMultipleExposure", v5, v6))
  {
    v7 = (*(*a1 + 2984))(a1);
    v8 = MEMORY[0x277CBEC28];
    if (v7)
    {
      v8 = MEMORY[0x277CBEC38];
    }

    v9 = v8;
  }

  else
  {
    v9 = sub_2338D3C20(a1, v3);
  }

  v10 = v9;

  return v10;
}

void sub_233814B18(uint64_t a1@<X0>, void **a2@<X8>)
{
  if ((*(*a1 + 960))(a1) != 10)
  {
    goto LABEL_9;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v9, a1);
  v4 = v9;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
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

void sub_233814C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

uint64_t sub_233814C84(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_233814CD0(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827C0], &unk_2339087C8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_233814D1C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_233814D1C;
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
    *a3 = sub_233814D1C;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827C0];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D827C0]);
  }

  else
  {
    v6 = a5 == &unk_2339087C8;
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

uint64_t sub_233814DE4(uint64_t a1)
{
  (*(*a1 + 160))(&v5);
  sub_233814F04(&v5, &v7);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  if (v7)
  {
    (*(*v7 + 792))(&v5);
    v2 = v5 != 0;
    if (v6)
    {
      sub_2337239E8(v6);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(*a1 + 2952))(a1);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return (v2 | v3) & 1;
}

void sub_233814EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233814F04@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_28490A4D8, 0)) != 0)
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

void sub_233814F88(uint64_t a1)
{
  sub_23373C93C(a1);
  if (*(a1 + 400) == 1)
  {
    goto LABEL_16;
  }

  *(a1 + 400) = 1;
  (*(*a1 + 160))(&v6, a1);
  sub_233814F04(&v6, &v8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  if (v8)
  {
    (*(*v8 + 792))(&v6);
    v2 = v6 != 0;
    if (v6)
    {
      (*(*a1 + 384))(&v4, a1);
      if (!v4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      sub_2337DD194(v6, &v4);
      sub_2337DD910(v6, &v4);
      sub_2337DDEF4(v6, &v4);
      if (v5)
      {
        sub_2337239E8(v5);
      }
    }

    if (v7)
    {
      sub_2337239E8(v7);
    }
  }

  else
  {
    v2 = 0;
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }

  if (v2)
  {
LABEL_16:
    if ((*(*a1 + 2952))(a1) && (*(a1 + 401) & 1) == 0)
    {
      *(a1 + 401) = 1;
      (*(*a1 + 384))(&v8, a1);
      (*(*v8 + 16))(v8);
      if (v9)
      {
        sub_2337239E8(v9);
      }
    }
  }
}

void sub_2338151CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_233815220(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&v4, a1);
    sub_233814F04(&v4, &v6);
    if (v5)
    {
      sub_2337239E8(v5);
    }

    if (v6)
    {
      (*(*a1 + 160))(&v2, a1);
      (*(*v2 + 384))(&v4);
      if (v3)
      {
        sub_2337239E8(v3);
      }

      (*(*a1 + 336))(a1);
      if ((*(*v6 + 536))(v6) == 7)
      {
        if (sub_233815698(a1))
        {
          (*(*a1 + 408))(a1);
          (*(*a1 + 432))(a1);
          sub_233816088();
        }

        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_23381612C();
      }

      if ((*(*v6 + 536))(v6) == 1)
      {
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_2337FEAEC();
      }

      if (v5)
      {
        sub_2337239E8(v5);
      }
    }

    if (v7)
    {
      sub_2337239E8(v7);
    }
  }
}

void sub_23381561C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  v19 = *(v17 - 32);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233815698(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v15 = *MEMORY[0x277D85DE8];
  (*(*v1 + 160))(&v13);
  (*(*v13 + 384))(&v11);
  if (v14)
  {
    sub_2337239E8(v14);
  }

  v13 = (*(*v1 + 336))(v1);
  sub_233723B40(&v9, &v13);
  sub_233725F08(v10, &v11, &v9, 0);
  bzero(&v13, 0x1000uLL);
  (*(*v11 + 32))(v11, &v13, 4096);
  if (bswap32(v13) >> 16 == 65496)
  {
    v2 = 2;
    while (v2 <= 4093)
    {
      v3 = __rev16(*(&v13 + v2));
      if (v3 == 0xFFFF)
      {
        ++v2;
      }

      else
      {
        v4 = 0;
        if (v3 < 0xFF01)
        {
          goto LABEL_17;
        }

        v5 = __rev16(*(&v13 + v2 + 2)) - 2;
        if (v5 > 0xFF)
        {
          goto LABEL_17;
        }

        v6 = v2 + 4;
        v2 += v5 + 4;
        if (v2 > 4095)
        {
          break;
        }

        if (v3 == 65498)
        {
          v4 = 0;
          if (*(&v13 + v6) - 4 >= 0xFFFFFFFD)
          {
            v7 = 2 * *(&v13 + v6);
            if (v5 == v7 + 4)
            {
              v4 = *(&v13 + v6 + v7 + 1) == 8;
            }
          }

          goto LABEL_17;
        }
      }
    }
  }

  v4 = 0;
LABEL_17:
  sub_233725FD4(v10);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  return v4;
}

void sub_2338158E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17)
{
  if (a15)
  {
    sub_2337239E8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381593C(uint64_t a1@<X0>, float64x2_t **a2@<X8>)
{
  (*(*a1 + 160))(&__p);
  sub_233814F04(&__p, &v21);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  if (v21)
  {
    (*(*v21 + 784))(&v19);
    v4 = v19;
    if (v19)
    {
      v15 = (*(*a1 + 1008))(a1);
      v16 = v5;
      sub_2337B0EFC(v4, &v15, &__p);
      v6 = v19;
      v15 = (*(*a1 + 1008))(a1);
      v16 = v7;
      sub_2337B13A8(v6, &v15, &__p, a2);
      v8 = *a2;
      __asm { FMOV            V1.2D, #0.5 }

      v14 = vmulq_f64(vaddq_f64(**a2, (*a2)[1]), _Q1);
      *v8 = v14;
      v8[1] = v14;
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

    if (v20)
    {
      sub_2337239E8(v20);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (v22)
  {
    sub_2337239E8(v22);
  }
}

void sub_233815ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *(v16 - 40);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_233815B20(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  (*(*a1 + 160))(&v9);
  v3 = v9;
  sub_23372A488(__p, "IFD0:SUBIFD0");
  if ((*(*v3 + 248))(v3, __p, v11, 0))
  {
    v5 = v11[0];
    v4 = v11[1];
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v4 - v5;
    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v6 == 32)
    {
      *a2 = *v11;
      a2[2] = v12;
      return;
    }
  }

  else
  {
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      sub_2337239E8(v10);
    }
  }

  sub_233731694(a2, 4uLL);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_233815C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233815C98(uint64_t a1)
{
  v6 = &unk_28490E658;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "IFD0");
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

void sub_233815D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
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

uint64_t sub_233815DA8(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D0E68(v2, @"requireStiching", v3, &unk_28491E4E0);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_233815E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_233815E74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEqualToString_(v3, v4, @"whiteLevelFromTag", v5, v6))
  {
    v27 = 0.0;
    (*(*a1 + 160))(&v25, a1);
    v7 = v25;
    sub_23372A488(__p, "IFD0:SUBIFD0");
    v12 = (*(*v7 + 240))(v7, __p, &v27);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26)
    {
      sub_2337239E8(v26);
    }

    v13 = MEMORY[0x277CCABB0];
    if (v12)
    {
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v8, v9, v10, v11, v27);
    }

    else
    {
      v15 = (*(*a1 + 864))(a1);
      v16 = (*(*a1 + 848))(a1) * v15;
      objc_msgSend_numberWithDouble_(v13, v17, v18, v19, v20, v16);
    }
    v14 = ;
  }

  else
  {
    v14 = sub_2338D3C20(a1, v3);
  }

  v21 = v14;

  return v21;
}

void sub_23381600C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(a1);
}

void sub_233816050(uint64_t a1)
{
  sub_233736628(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338161D0(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909C50;
  sub_23381622C((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t sub_23381622C(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  v9 = *a3;
  sub_23372A488(v13, "");
  sub_23372A488(__p, "");
  sub_2337A98B0(a1, a2, v9, a4, a5, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return a1;
}

void sub_2338162D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23381630C(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_28491F0C8;
  v5[12] = 0;
  v6 = (v5 + 12);
  v5[13] = 0;
  v5[14] = 0;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  *(a1 + 20) = sub_233725614(*a3);
  *(a1 + 24) = sub_233725614(*a3);
  *(a1 + 28) = sub_233725614(*a3);
  *(a1 + 32) = sub_233725614(*a3);
  *(a1 + 36) = sub_233725614(*a3);
  *(a1 + 40) = sub_233725614(*a3);
  *(a1 + 44) = sub_233725614(*a3);
  *(a1 + 48) = sub_233725614(*a3);
  *(a1 + 56) = sub_23372574C(*a3);
  *(a1 + 64) = sub_23372574C(*a3);
  *(a1 + 72) = sub_23372574C(*a3);
  *(a1 + 80) = sub_23372574C(*a3);
  v7 = sub_233725614(*a3);
  *(a1 + 88) = v7;
  if ((v7 - 8) <= 0xFFFFFFF8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = *(a1 + 48) * *(a1 + 44);
  if ((v8 & 0xFFFFFFFF00000000) != 0 || (v9 = v8 * (4 * v7), (v9 & 0xFFFFFFFF00000000) != 0) || (v10 = sub_23376E438(*a3), (v10 & 0x80000000) != 0) || v10 < v9)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v28, "RawCameraException");
    __cxa_throw(v28, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = *a3;
  v30 = *(a1 + 44) * *(a1 + 48) * *(a1 + 88);
  sub_233756CC4(v11, &v30, &__p);
  v12 = *(a1 + 88);
  if (*(a1 + 44) * *(a1 + 48) * v12 != (v32 - __p) >> 2)
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v29, "RawCameraException");
    __cxa_throw(v29, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2338166D4(v6, v12);
  LODWORD(v13) = *(a1 + 88);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      sub_2337BFA0C((*(a1 + 96) + v14), (*(a1 + 48) * *(a1 + 44)));
      ++v15;
      v13 = *(a1 + 88);
      v14 += 24;
    }

    while (v15 < v13);
  }

  v16 = *(a1 + 44);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = *(a1 + 48);
    do
    {
      if (v19)
      {
        v20 = 0;
        v21 = __p;
        do
        {
          if (v13)
          {
            v22 = *v6;
            v23 = v13;
            do
            {
              v24 = v18 + 1;
              v25 = *v22;
              v22 += 3;
              *(v25 + 4 * (v19 * v17 + v20)) = v21[v18++];
              --v23;
            }

            while (v23);
          }

          else
          {
            v24 = v18;
          }

          ++v20;
          v18 = v24;
        }

        while (v20 != v19);
      }

      else
      {
        v24 = v18;
      }

      ++v17;
      v18 = v24;
    }

    while (v17 != v16);
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_2338166D4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_233816D40(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t sub_233816780@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (*(result + 88) >= a2)
  {
    v3 = *(result + 96);
    if (0xAAAAAAAAAAAAAAABLL * ((*(result + 104) - v3) >> 3) <= a2)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v4 = (v3 + 24 * a2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = *v4;
    v6 = v4[1];
    v7 = (v6 - *v4) >> 2;

    return sub_233729070(a3, v5, v6, v7);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

id sub_233816844(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, *(a1 + 12), v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v11, v10, @"Top", v12);

  v16 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, *(a1 + 16), v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v17, v16, @"Left", v18);

  v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, *(a1 + 20), v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v23, v22, @"Bottom", v24);

  v28 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v25, *(a1 + 24), v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v29, v28, @"Right", v30);

  v34 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v31, *(a1 + 28), v32, v33);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v35, v34, @"Plane", v36);

  v40 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v37, *(a1 + 32), v38, v39);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v41, v40, @"Planes", v42);

  v46 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v43, *(a1 + 36), v44, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v47, v46, @"RowPitch", v48);

  v52 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v49, *(a1 + 40), v50, v51);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v53, v52, @"ColPitch", v54);

  v58 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v55, *(a1 + 44), v56, v57);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v59, v58, @"MapPointsV", v60);

  v64 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v61, *(a1 + 48), v62, v63);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v65, v64, @"MapPointsH", v66);

  v71 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v67, v68, v69, v70, *(a1 + 56));
  objc_msgSend_setObject_forKeyedSubscript_(v6, v72, v71, @"MapSpacingV", v73);

  v78 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v74, v75, v76, v77, *(a1 + 64));
  objc_msgSend_setObject_forKeyedSubscript_(v6, v79, v78, @"MapSpacingH", v80);

  v85 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v81, v82, v83, v84, *(a1 + 72));
  objc_msgSend_setObject_forKeyedSubscript_(v6, v86, v85, @"MapOriginV", v87);

  v92 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v88, v89, v90, v91, *(a1 + 80));
  objc_msgSend_setObject_forKeyedSubscript_(v6, v93, v92, @"MapOriginH", v94);

  v98 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v95, *(a1 + 88), v96, v97);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v99, v98, @"MapPlanes", v100);

  v109 = objc_msgSend_array(MEMORY[0x277CBEB18], v101, v102, v103, v104);
  v111 = *(a1 + 96);
  v110 = *(a1 + 104);
  while (v111 != v110)
  {
    v116 = objc_msgSend_array(MEMORY[0x277CBEB18], v105, v106, v107, v108);
    v118 = *v111;
    v119 = *(v111 + 8);
    while (v118 != v119)
    {
      LODWORD(v117) = *v118;
      v120 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v112, v113, v114, v115, v117);
      objc_msgSend_addObject_(v116, v121, v120, v122, v123);

      ++v118;
    }

    objc_msgSend_addObject_(v109, v112, v116, v114, v115);

    v111 += 24;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v6, v105, v109, @"MapGain", v108);
  v124 = [RAWOpcodeGainMap alloc];
  v128 = objc_msgSend_initWithArguments_(v124, v125, v6, v126, v127);

  return v128;
}

uint64_t sub_233816C74(uint64_t a1)
{
  *a1 = &unk_28491F0C8;
  v3 = (a1 + 96);
  sub_2337A6DEC(&v3);
  return a1;
}

uint64_t sub_233816CCC(uint64_t a1)
{
  *a1 = &unk_28491F0C8;
  v3 = (a1 + 96);
  sub_2337A6DEC(&v3);
  return MEMORY[0x2383ABF10](a1, 0x10A1C4048AAAAC6);
}

void sub_233816D40(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2337235BC();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      sub_2337A6910(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_2337A6968(v18);
  }
}

uint64_t sub_233816EAC(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 440))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233816F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233816F60(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 440))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233816FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233817014(uint64_t a1)
{
  (*(*a1 + 160))(&v7);
  v2 = (*(*v7 + 432))();
  if (v8)
  {
    sub_2337239E8(v8);
  }

  (*(*a1 + 160))(&v7, a1);
  v3 = (*(*v7 + 440))();
  v4 = v3;
  v5 = HIDWORD(v3);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (v5 < ((*(*a1 + 408))(a1) >> 32))
  {
    v2 += 12 * v4 / 8;
  }

  return v2;
}

void sub_233817190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338171AC(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 512))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233817248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233817260(os_signpost_id_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "COlympusE410Unpacker", &unk_233945DBE, buf, 2u);
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_233817800;
  v45[3] = &unk_2789EE800;
  v45[4] = a1;
  v4 = MEMORY[0x2383AC810](v45);
  v44 = 7;
  v5 = sub_2337ADCC4(a1);
  v6 = *(a1 + 24);
  sub_2337268D8(buf, &v44);
  (*(*v6 + 40))(v6, buf, 1);
  sub_233726998(&v43, (a1 + 44));
  sub_233726998(&v42, (a1 + 48));
  v39 = (*(*a1 + 152))(a1);
  sub_233723AE0(&v40, &v39);
  *buf = v40;
  v46 = *sub_2337639F0(buf, &v44);
  sub_233726938(&v41, &v46);
  *buf = v43;
  LODWORD(v6) = *sub_233757DB0(buf, &v42);
  *buf = 2;
  sub_233723C18(&v40, buf);
  v46 = v6;
  v7 = sub_233757DB0(&v46, &v40);
  v8 = v41;
  if (*v7 < v41)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = v42;
  v9 = v43;
  v11 = &v5[v42 * v43 + 448] - v41;
  (*(**(a1 + 24) + 32))(*(a1 + 24), v11, v41);
  if (v10)
  {
    v12 = 0;
    v13 = 0;
    v14 = &v11[v8];
    v15 = 32;
    v16 = -2 * v9;
    do
    {
      *buf = 0;
      v48 = 0;
      v49 = 0;
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v18 = &buf[12 * (i & 1)];
          v19 = v18[2];
          if (v11 > v14)
          {
            v11 = v14;
          }

          if (v15 >= 16)
          {
            v13 = (v13 << 16) | (*v11 << 8) | v11[1];
            v11 += 2;
            v15 -= 16;
          }

          v20 = __clz((*v18 >> (2 * (v19 < 3))) | (2 << (2 * (v19 < 3))));
          v21 = v13 << v15;
          v22 = __clz((8 * (v13 << v15)) | 0x80000);
          v23 = v15 + v22 + 4;
          if (v22 == 12)
          {
            v24 = v23 - 17;
            if (v23 < 17)
            {
              v24 = v23 - 1;
            }

            else
            {
              v13 = (v13 << 16) | (*v11 << 8) | v11[1];
              v11 += 2;
            }

            v22 = (v13 << v24) >> (48 - v20) >> 1;
            v23 = v20 + v24 - 16;
            if (v20 == 16)
            {
              v22 = 0;
            }
          }

          if (v23 >= 16)
          {
            v13 = (v13 << 16) | (*v11 << 8) | v11[1];
            v11 += 2;
            v23 -= 16;
          }

          v25 = 32 - v20;
          v26 = ((v13 << v23) >> v20) | (v22 << (32 - v20));
          v27 = v18[1];
          v28 = (v26 ^ (v21 >> 31)) + v27;
          *v18 = v26;
          v18[1] = (3 * v28 + v27) >> 5;
          if (v26 <= 0x10)
          {
            v29 = v19 + 1;
          }

          else
          {
            v29 = 0;
          }

          v18[2] = v29;
          if (v12 < 2 || i < 2)
          {
            if ((i | v12) >= 2)
            {
              if (v12 > 1)
              {
                LOWORD(v30) = v5[v16];
              }

              else
              {
                LOWORD(v30) = *(v5 - 2);
              }
            }

            else
            {
              LOWORD(v30) = 0;
            }
          }

          else
          {
            v30 = *(v5 - 2);
            v31 = v5[v16];
            v32 = v5[(2 * v9) ^ 0xFFFFFFFE];
            v33 = v30 - v32;
            if ((v30 >= v32 || v32 >= v31) && ((v34 = v31 - v32, v31 >= v32) || v32 >= v30))
            {
              if (v33 >= 0)
              {
                v36 = v30 - v32;
              }

              else
              {
                v36 = v32 - v30;
              }

              if (v34 >= 0)
              {
                v37 = v34;
              }

              else
              {
                v37 = -v34;
              }

              if (v36 <= v37)
              {
                LOWORD(v30) = v5[v16];
              }

              else
              {
                LOWORD(v30) = *(v5 - 2);
              }
            }

            else
            {
              if (v33 < 0)
              {
                v33 = v32 - v30;
              }

              if (v33 > 0x20)
              {
                goto LABEL_34;
              }

              v35 = v31 - v32;
              if ((v31 - v32) < 0)
              {
                v35 = v32 - v31;
              }

              if (v35 < 0x21)
              {
                v30 = (v31 + v30) >> 1;
              }

              else
              {
LABEL_34:
                LOWORD(v30) = v31 + v30 - v32;
              }
            }
          }

          v15 = v23 + v25;
          *v5++ = ((v21 >> 29) & 3 | (4 * v28)) + v30;
        }
      }

      ++v12;
    }

    while (v12 != v10);
  }

  v4[2](v4);
}

void sub_233817800(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "COlympusE410Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_233817888(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPacked12SwappedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = sub_233818060;
  v79[3] = &unk_2789EE800;
  v79[4] = a1;
  v4 = MEMORY[0x2383AC810](v79);
  v6 = *(a1 + 44);
  v5 = *(a1 + 48);
  v65 = (a1 + 200);
  v7 = *(a1 + 200) != 0;
  v8 = (*(*a1 + 152))(a1);
  v9 = v5 >> v7;
  v10 = (2 * ((3435973837u * (v6 + 9)) >> 32)) & 0xFFFFFFF0;
  if (v9 * v10 == v8)
  {
    v11 = (2 * ((3435973837u * (v6 + 9)) >> 32)) & 0xFFFFFFF0;
  }

  else
  {
    v11 = ((3 * v6) >> 1) & 0x1FFFFFFF;
  }

  if (v9 * v10 == v8)
  {
    v12 = 16;
  }

  else
  {
    v12 = 15;
  }

  v13 = *(a1 + 188);
  if (v11 * v9 > (*(*a1 + 152))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v75 = v9;
  v76 = *(a1 + 192);
  v68 = v4;
  v74 = a1;
  if (v76 == 2)
  {
    v77 = ((*(*a1 + 152))(a1) >> 1) - v11 * (v9 >> 1);
    sub_233723AE0(buf, &v77);
    v69 = *buf;
    if (!*v65)
    {
LABEL_44:
      v41 = 0;
      v42 = 0;
      v73 = 2 * v6;
      do
      {
        v43 = sub_2337ADCC4(a1);
        v71 = v41;
        if (v41 < v9)
        {
          v44 = (v43 + 2 * v6 * v41);
          do
          {
            (*(**(v74 + 24) + 32))(*(v74 + 24), &v44[v73 - v11], v11);
            v45 = &v44[v73 - v11 + v42];
            if (v41)
            {
              v46 = 0;
            }

            else
            {
              v46 = v13;
            }

            if (!v41)
            {
              v42 = v13;
            }

            if (v6 == v6 % 0xA)
            {
              v47 = 0;
            }

            else
            {
              v47 = 0;
              do
              {
                v48 = v45[1];
                v49 = *v45 | ((v48 & 0xF) << 8);
                LOWORD(v48) = (v48 >> 4) | (16 * v45[2]);
                v50 = v45[4];
                v51 = v45[3] | ((v50 & 0xF) << 8);
                LOWORD(v50) = (v50 >> 4) | (16 * v45[5]);
                *v44 = v49;
                *(v44 + 1) = v48;
                v52 = v45[7];
                v53 = v45[6] | ((v52 & 0xF) << 8);
                LOWORD(v52) = (v52 >> 4) | (16 * v45[8]);
                *(v44 + 2) = v51;
                *(v44 + 3) = v50;
                v54 = v45[10];
                v55 = v45[9] | ((v54 & 0xF) << 8);
                v56 = (v54 >> 4) | (16 * v45[11]);
                *(v44 + 4) = v53;
                *(v44 + 5) = v52;
                v57 = v45[13];
                v58 = v45[12] | ((v57 & 0xF) << 8);
                v59 = (v57 >> 4) | (16 * v45[14]);
                *(v44 + 6) = v55;
                *(v44 + 7) = v56;
                *(v44 + 8) = v58;
                *(v44 + 9) = v59;
                v45 += v12;
                v44 += 20;
                v47 += 10;
              }

              while (v47 < 10 * (v6 / 0xA));
            }

            while (v47 < v6)
            {
              v60 = v45[1];
              v61 = *v45 | ((v60 & 0xF) << 8);
              v62 = (v60 >> 4) | (16 * v45[2]);
              *v44 = v61;
              *(v44 + 1) = v62;
              v45 += 3;
              v44 += 4;
              v47 += 2;
            }

            v11 += v46;
            v44 += 2 * (v76 - 1) * v6;
            LODWORD(v41) = v41 + v76;
          }

          while (v41 < v9);
        }

        v4 = v68;
        a1 = v74;
        if (v69 && !v71)
        {
          v63 = *(v74 + 24);
          *buf = v69;
          (*(*v63 + 40))(v63, buf, 1);
        }

        v41 = v71 + 1;
      }

      while (v71 + 1 != v76);
      goto LABEL_64;
    }
  }

  else
  {
    if (!*v65)
    {
      if (!v76)
      {
        goto LABEL_64;
      }

      v69 = 0;
      goto LABEL_44;
    }

    v69 = 0;
  }

  v14 = 0;
  v15 = 0;
  v72 = 2 * v6;
  v16 = 1;
  do
  {
    v66 = v16;
    if (v14)
    {
      v17 = *(a1 + 24);
      sub_233723B40(buf, v65);
      (*(*v17 + 40))(v17, buf, 0);
      v4 = v68;
    }

    if (v76)
    {
      v18 = 0;
      v67 = v15 * v76 * v6;
      v19 = 0;
      do
      {
        v20 = sub_2337ADCC4(a1);
        v70 = v19;
        if (v19 < v75)
        {
          v21 = (v20 + 2 * v6 * v19 + 2 * v67);
          do
          {
            (*(**(v74 + 24) + 32))(*(v74 + 24), &v21[v72 - v11], v11);
            v22 = &v21[v72 - v11 + v18];
            if (v19)
            {
              v23 = 0;
            }

            else
            {
              v23 = v13;
            }

            if (!v19)
            {
              v18 = v13;
            }

            if (v6 == v6 % 0xA)
            {
              v24 = 0;
            }

            else
            {
              v24 = 0;
              do
              {
                v25 = v22[1];
                v26 = *v22 | ((v25 & 0xF) << 8);
                LOWORD(v25) = (v25 >> 4) | (16 * v22[2]);
                v27 = v22[4];
                v28 = v22[3] | ((v27 & 0xF) << 8);
                LOWORD(v27) = (v27 >> 4) | (16 * v22[5]);
                *v21 = v26;
                *(v21 + 1) = v25;
                v29 = v22[7];
                v30 = v22[6] | ((v29 & 0xF) << 8);
                LOWORD(v29) = (v29 >> 4) | (16 * v22[8]);
                *(v21 + 2) = v28;
                *(v21 + 3) = v27;
                v31 = v22[10];
                v32 = v22[9] | ((v31 & 0xF) << 8);
                v33 = (v31 >> 4) | (16 * v22[11]);
                *(v21 + 4) = v30;
                *(v21 + 5) = v29;
                v34 = v22[13];
                v35 = v22[12] | ((v34 & 0xF) << 8);
                v36 = (v34 >> 4) | (16 * v22[14]);
                *(v21 + 6) = v32;
                *(v21 + 7) = v33;
                *(v21 + 8) = v35;
                *(v21 + 9) = v36;
                v22 += v12;
                v21 += 20;
                v24 += 10;
              }

              while (v24 < 10 * (v6 / 0xA));
            }

            while (v24 < v6)
            {
              v37 = v22[1];
              v38 = *v22 | ((v37 & 0xF) << 8);
              v39 = (v37 >> 4) | (16 * v22[2]);
              *v21 = v38;
              *(v21 + 1) = v39;
              v22 += 3;
              v21 += 4;
              v24 += 2;
            }

            v11 += v23;
            v21 += 2 * (2 * v76 - 1) * v6;
            LODWORD(v19) = v19 + v76;
          }

          while (v19 < v75);
        }

        v4 = v68;
        a1 = v74;
        if (v69 && !v70)
        {
          v40 = *(v74 + 24);
          *buf = v69;
          (*(*v40 + 40))(v40, buf, 1);
        }

        v19 = v70 + 1;
      }

      while (v70 + 1 != v76);
    }

    v16 = 0;
    v14 = 1;
    v15 = 1;
  }

  while ((v66 & 1) != 0);
LABEL_64:
  v4[2](v4);
}

void sub_233818060(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPacked12SwappedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338180E8(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233818120(int *a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CUnpackedYCbCrUnpacker", &unk_233945DBE, buf, 2u);
  }

  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = sub_23381894C;
  v93[3] = &unk_2789EE800;
  v93[4] = a1;
  v4 = MEMORY[0x2383AC810](v93);
  v5 = a1[47];
  if (v5 >= 0x11 || a1[11] < 1 || a1[12] <= 0 || v5 != 8 || (*(*a1 + 40))(a1) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = a1[11];
  v7 = a1[12];
  v8 = (*(*a1 + 40))(a1);
  v9 = v7 * v6;
  if (v9 * v8 > (*(*a1 + 152))(a1))
  {
    v90 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v90, "RawCameraException");
    __cxa_throw(v90, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = (*(*a1 + 40))(a1);
  v11 = sub_2337ADCC4(a1);
  v12 = sub_2337AEFB8(a1);
  v13 = v9 * v10;
  v14 = v11 + v12 - v13;
  (*(**(a1 + 3) + 32))(*(a1 + 3), v14, v13);
  v18 = v14[1];
  v19 = v14[4];
  v20 = (((v14[3] | ((v19 & 0xF) << 8)) - 2048) * 1280.0 * 0.00048828125 + 2048.0);
  v21 = ((((v19 >> 4) | (16 * v14[5])) - 2048) * 1280.0 * 0.00048828125 + 2048.0);
  v22.n128_f64[0] = vcvtd_n_f64_u32(((*v14 | ((v18 & 0xF) << 8)) / 2550.0 * 4096.0 + 0.5), 0xCuLL);
  v23 = 1.0;
  if (v22.n128_f64[0] > 1.0)
  {
    v22.n128_f64[0] = 1.0;
  }

  v24 = 0.0;
  v25 = 0.0;
  if (v22.n128_f64[0] <= 0.8)
  {
    v24 = (v20 + -1280.0) / 1536.0 + -0.5;
    v16.n128_f64[0] = v21;
    v25 = (v21 + -1280.0) / 1536.0 + -0.5;
  }

  *&v26.f64[0] = v22.n128_u64[0];
  v26.f64[1] = v22.n128_f64[0] + v24 * -0.34414;
  v27 = vmlaq_n_f64(v26, xmmword_2339088D0, v25);
  __asm { FMOV            V3.2D, #1.0 }

  v33 = vdupq_n_s64(0x40A8000000000000uLL);
  v34 = v14[2];
  v35 = vmulq_f64(vbslq_s8(vcgtq_f64(v27, _Q3), _Q3, v27), v33);
  v36 = v22.n128_f64[0] + v24 * 1.772;
  if (v36 <= 1.0)
  {
    v23 = v22.n128_f64[0] + v24 * 1.772;
  }

  v37 = v23 * 3072.0;
  if (qword_27DE3DDF8 != -1)
  {
    v91 = v35;
    v92 = v27;
    sub_2338FC6E4();
    v35 = v91;
    v27 = v92;
  }

  v39 = vcvtq_s64_f64(vbicq_s8(v35, vcltzq_f64(v27)));
  v39.n128_u64[0] = vmovn_s64(v39);
  v38 = v39.n128_i32[1];
  v22.n128_f64[0] = dbl_27DE37DF0[v39.n128_i32[0]];
  v39.n128_u64[0] = 0;
  if (v22.n128_f64[0] < 0.0)
  {
    v22.n128_f64[0] = 0.0;
  }

  v15.n128_f64[0] = dbl_27DE37DF0[v38];
  if (v15.n128_f64[0] < 0.0)
  {
    v15.n128_f64[0] = 0.0;
  }

  if (v36 >= 0.0)
  {
    v40 = v37;
  }

  else
  {
    v40 = 0.0;
  }

  v35.n128_f64[0] = dbl_27DE37DF0[v40];
  if (v35.n128_f64[0] < 0.0)
  {
    v35.n128_f64[0] = 0.0;
  }

  *v11 = v22.n128_f64[0];
  v11[1] = v15.n128_f64[0];
  v11[2] = v35.n128_f64[0];
  if ((v9 - 2) >= 2)
  {
    v41 = ((v18 >> 4) | (16 * v34)) / 2550.0 * 4096.0 + 0.5;
    v42 = (v9 - 2) >> 1;
    v43 = v11 + v12 - v13 + 11;
    v44 = v11 + 8;
    v22.n128_u64[0] = 0x40B0000000000000;
    v15.n128_u64[0] = 0.5;
    v35.n128_u64[0] = 0x4094000000000000;
    v33.n128_u64[0] = 0x3F40000000000000;
    v27.n128_u64[0] = 0x40A0000000000000;
    v16.n128_u64[0] = 1.0;
    v17.n128_u64[0] = 0x3FF66E978D4FDF3BLL;
    do
    {
      v45 = *(v43 - 1);
      v46 = (((*(v43 - 2) | ((v45 & 0xF) << 8)) - 2048) * 1280.0 * 0.00048828125 + 2048.0);
      v47 = ((((v45 >> 4) | (16 * *v43)) - 2048) * 1280.0 * 0.00048828125 + 2048.0);
      v48 = vcvtd_n_f64_u32(v41, 0xCuLL);
      if (v48 <= 1.0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 1.0;
      }

      v50 = 0.0;
      v51 = 0.0;
      v52 = 0.0;
      if (v49 <= 0.8)
      {
        v51 = (((v46 + v20) >> 1) + -1280.0) / 1536.0 + -0.5;
        v52 = (((v47 + v21) >> 1) + -1280.0) / 1536.0 + -0.5;
      }

      v53 = *(v43 - 4);
      v54 = *(v43 - 3);
      v55 = ((*(v43 - 5) | ((v53 & 0xF) << 8)) / 2550.0 * 4096.0 + 0.5);
      v56 = v49 + v52 * 1.402;
      if (v56 <= 1.0)
      {
        v57 = v49 + v52 * 1.402;
      }

      else
      {
        v57 = 1.0;
      }

      v58 = v57 * 3072.0;
      v59 = v49 + v51 * -0.34414 + v52 * -0.71414;
      if (v59 <= 1.0)
      {
        v60 = v59;
      }

      else
      {
        v60 = 1.0;
      }

      v61 = v60 * 3072.0;
      v62 = v49 + v51 * 1.772;
      if (v62 <= 1.0)
      {
        v63 = v62;
      }

      else
      {
        v63 = 1.0;
      }

      v64 = v63 * 3072.0;
      if (v56 >= 0.0)
      {
        v65 = v58;
      }

      else
      {
        v65 = 0.0;
      }

      v66 = dbl_27DE37DF0[v65];
      if (v66 < 0.0)
      {
        v66 = 0.0;
      }

      if (v59 >= 0.0)
      {
        v67 = v61;
      }

      else
      {
        v67 = 0.0;
      }

      v68 = dbl_27DE37DF0[v67];
      if (v68 < 0.0)
      {
        v68 = 0.0;
      }

      if (v62 >= 0.0)
      {
        v69 = v64;
      }

      else
      {
        v69 = 0.0;
      }

      v70 = dbl_27DE37DF0[v69];
      if (v70 < 0.0)
      {
        v70 = 0.0;
      }

      *(v44 - 5) = v66;
      *(v44 - 4) = v68;
      *(v44 - 3) = v70;
      v71 = vcvtd_n_f64_u32(v55, 0xCuLL);
      if (v71 <= 1.0)
      {
        v72 = v71;
      }

      else
      {
        v72 = 1.0;
      }

      v73 = 0.0;
      if (v72 <= 0.8)
      {
        v50 = (v46 + -1280.0) / 1536.0 + -0.5;
        v73 = (v47 + -1280.0) / 1536.0 + -0.5;
      }

      v41 = ((v53 >> 4) | (16 * v54)) / 2550.0 * 4096.0 + 0.5;
      v74 = v72 + v73 * 1.402;
      if (v74 <= 1.0)
      {
        v75 = v72 + v73 * 1.402;
      }

      else
      {
        v75 = 1.0;
      }

      v76 = v75 * 3072.0;
      v77 = v72 + v50 * -0.34414 + v73 * -0.71414;
      if (v77 <= 1.0)
      {
        v78 = v77;
      }

      else
      {
        v78 = 1.0;
      }

      v79 = v78 * 3072.0;
      v80 = v72 + v50 * 1.772;
      if (v80 <= 1.0)
      {
        v81 = v80;
      }

      else
      {
        v81 = 1.0;
      }

      v82 = v81 * 3072.0;
      if (v74 >= 0.0)
      {
        v83 = v76;
      }

      else
      {
        v83 = 0.0;
      }

      v84 = dbl_27DE37DF0[v83];
      if (v84 < 0.0)
      {
        v84 = 0.0;
      }

      if (v77 >= 0.0)
      {
        v85 = v79;
      }

      else
      {
        v85 = 0.0;
      }

      v86 = dbl_27DE37DF0[v85];
      if (v86 < 0.0)
      {
        v86 = 0.0;
      }

      if (v80 >= 0.0)
      {
        v87 = v82;
      }

      else
      {
        v87 = 0.0;
      }

      v43 += 6;
      v88 = dbl_27DE37DF0[v87];
      if (v88 < 0.0)
      {
        v88 = 0.0;
      }

      *(v44 - 2) = v84;
      *(v44 - 1) = v86;
      *v44 = v88;
      v44 += 6;
      LOWORD(v21) = v47;
      LOWORD(v20) = v46;
      --v42;
    }

    while (v42);
  }

  v4[2](v4, v39, v22, v15, v35, v33, v27, v16, v17);
}