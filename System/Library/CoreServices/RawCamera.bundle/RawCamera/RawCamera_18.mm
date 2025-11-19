void sub_2338AC0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2338AC184(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) != 1 || (*(a3 + 32) & 2) != 0)
  {
    v12 = *(a4 + 4);
    if ((v12 - 1000001) >= 0xFFF0BDC0)
    {
      v13 = 1;
      goto LABEL_7;
    }

LABEL_39:
    v31 = 0.0;
    goto LABEL_38;
  }

  v12 = *(a4 + 4);
  if (v12 != 1)
  {
    goto LABEL_39;
  }

  v13 = 0;
LABEL_7:
  sub_2337565A0(&__p, (2 * v12));
  v15 = *(a4 + 8);
  v16 = bswap32(v15);
  if (a6)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v14 = v75 - __p;
  if (sub_2338A9730(a1, __p, v75 - __p, a5, v17) == v14)
  {
    v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20, v21);
    if (a6)
    {
      v27 = __p;
      if (v75 != __p)
      {
        v28 = (v75 - __p) >> 2;
        do
        {
          *v27 = bswap32(*v27);
          ++v27;
          --v28;
        }

        while (v28);
      }
    }

    if (*(a4 + 4))
    {
      v29 = 0;
      v30 = 0;
      v31 = 0.0;
      do
      {
        v32 = *(__p + v29);
        v33 = 0.0;
        if (v32)
        {
          v33 = v32 / *(__p + v29 + 4);
        }

        if (!v30)
        {
          v31 = v33;
        }

        *&v33 = v33;
        v34 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v23, v24, v25, v33);
        objc_msgSend_addObject_(v26, v35, v34, v36, v37);

        ++v30;
        v29 += 8;
      }

      while (v30 < *(a4 + 4));
    }

    else
    {
      v31 = 0.0;
    }

    v38 = sub_2338A9B78(a3);
    v43 = objc_msgSend_length(v38, v39, v40, v41, v42);

    if (v43)
    {
      v44 = *(a3 + 32);
      if ((v44 & 4) != 0)
      {
        v45 = sub_2338A9B94(a1);
        v46 = sub_2338A9BFC(a3);
        v47 = sub_2337854A4(v45, v46, 1);

        if (v13)
        {
          v51 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v47, v52, v26, v51, v53);
        }

        else
        {
          v73 = 0;
          v51 = sub_23386F6F4(v26, &v73, v48, v49, v50);
          v54 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v47, v55, v51, v54, v56);
        }

        v44 = *(a3 + 32);
      }

      if ((v44 & 8) != 0)
      {
        v57 = MEMORY[0x277CCACA8];
        v58 = sub_2338A9B78(a3);
        v62 = objc_msgSend_stringWithFormat_(v57, v59, @"%@/%@", v60, v61, v11, v58);

        if (v13)
        {
          v66 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v66, v67, v26, v62, v68);
        }

        else
        {
          v73 = 0;
          v66 = sub_23386F6F4(v26, &v73, v63, v64, v65);
          v69 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v69, v70, v66, v62, v71);
        }
      }
    }
  }

  else
  {
    v31 = 0.0;
  }

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

LABEL_38:

  return v31;
}

void sub_2338AC4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338AC594(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  v7 = a2;
  v12 = v7;
  if (!a4)
  {
    a3 = 0;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!a3)
  {
    while (1)
    {
      v13 = a4(a1, a3);

      if (!v13)
      {
        break;
      }

      a3 = (a3 + 1);
    }
  }

  if (v12)
  {
LABEL_9:
    objc_msgSend_length(v12, v8, v9, v10, v11);
  }

LABEL_10:
  if (a3)
  {
    v14 = 0;
    do
    {
      v15 = a4(a1, v14);

      if (v15)
      {
        v16 = a4(a1, v14);
        objc_msgSend_length(v16, v17, v18, v19, v20);
      }

      ++v14;
    }

    while (a3 != v14);
  }

  return a3;
}

void sub_2338AC690(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = (*(a1 + 80) - *(a1 + 72)) >> 4;
  if (v1 >= 1)
  {
    v3 = sub_2338A9B94(a1);
    v4 = sub_2337854A4(v3, *MEMORY[0x277CD2F50], 0);

    v39 = v4;
    v5 = sub_2337E2674(v4, @"AFInfo");
    if (!v5 || (v6 = *(a1 + 64)) == 0 || (v7 = *(a1 + 68)) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v41 = v7;
    v42 = v6;
    v40 = 0;
    v12 = (*(*a1 + 192))(a1, &v40 + 4, &v40, &v42, &v41);
    v14 = 0;
    while (1)
    {
      v15 = (*(a1 + 72) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      v20 = v18;
      v21 = v19;
      if (v12)
      {
        if ((vabds_f32(v16, SHIDWORD(v40)) + (fabsf(v20) * 0.5)) > (v42 * 0.5) || (vabds_f32(v17, v40) + (fabsf(v21) * 0.5)) > (v41 * 0.5))
        {
          goto LABEL_19;
        }

        v16 = v16 - SHIDWORD(v40);
        v17 = v17 - v40;
      }

      if (v18)
      {
        v22 = v19 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        goto LABEL_19;
      }

      v23 = 0;
      v43[2] = v20 / v42;
      v43[3] = v21 / v41;
      v43[0] = ((v16 / v42) + 0.5) - ((v20 / v42) * 0.5);
      v43[1] = ((v17 / v41) + 0.5) - ((v21 / v41) * 0.5);
      do
      {
        *&v13 = v43[v23];
        v24 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v8, v9, v10, v11, v13, v39);
        objc_msgSend_addObject_(v5, v25, v24, v26, v27);

        ++v23;
      }

      while (v23 != 4);
      if (v14 == v14)
      {
        v34 = *(a1 + 120);
        v33 = *(a1 + 128);
        if (v34 == v33)
        {
          v36 = *(a1 + 96);
          v37 = *(a1 + 104);
          if (v37 != v36)
          {
            v35 = 1;
LABEL_30:
            while (*v36 != v14)
            {
              if (++v36 == v37)
              {
                v36 = v37;
                break;
              }
            }

            v28 = 2;
            if (!v35)
            {
              v28 = 3;
            }

            if (v36 == v37)
            {
              v28 = !v35;
            }

            goto LABEL_18;
          }
        }

        else
        {
          while (*v34 != v14)
          {
            if (++v34 == v33)
            {
              v34 = *(a1 + 128);
              break;
            }
          }

          v35 = v34 == v33;
          v36 = *(a1 + 96);
          v37 = *(a1 + 104);
          if (v37 != v36)
          {
            goto LABEL_30;
          }

          if (!v35)
          {
            v28 = 1;
            goto LABEL_18;
          }
        }
      }

      v28 = 0;
LABEL_18:
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, off_2789EFFD0[v28], v10, v11);
      objc_msgSend_addObject_(v5, v30, v29, v31, v32);

LABEL_19:
      if (++v14 == v1)
      {

        return;
      }
    }
  }
}

void sub_2338ACA6C(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v23 = sub_233739994(v2, @"{LensInfo}", 0);

  if (v23)
  {
    v6 = sub_2338ACBAC(v23, @"_MinFocalLength", v3, v4, v5);
    v10 = sub_2338ACBAC(v23, @"_MaxFocalLength", v7, v8, v9);
    v14 = sub_2338ACBAC(v23, @"_MaxApertureAtMinFocalLength", v11, v12, v13);
    v18 = sub_2338ACBAC(v23, @"_MaxApertureAtMaxFocalLength", v15, v16, v17);
    sub_2338ACBFC(a1, v6, v10, v14, v18);
  }

  v19 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v19, v20, @"{LensInfo}", v21, v22);
}

float sub_2338ACBAC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_233740FAC(a1, a2, a3, a4, a5);
  objc_msgSend_floatValue(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

void sub_2338ACBFC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a2 > 0.0 && a3 > 0.0)
  {
    v9 = sub_2338A9B94(a1);
    v43 = sub_2337854A4(v9, *MEMORY[0x277CD2F50], 0);

    v10 = sub_2338ADAE0(v43, *MEMORY[0x277CD2F70]);
    v15 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v11, v12, v13, v14, a2);
    objc_msgSend_addObject_(v10, v16, v15, v17, v18);

    v23 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v19, v20, v21, v22, a3);
    objc_msgSend_addObject_(v10, v24, v23, v25, v26);

    v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v27, v28, v29, v30, fmax(round(a4 * 10.0) / 10.0, 0.0));
    objc_msgSend_addObject_(v10, v32, v31, v33, v34);

    v39 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v35, v36, v37, v38, fmax(round(a5 * 10.0) / 10.0, 0.0));
    objc_msgSend_addObject_(v10, v40, v39, v41, v42);
  }
}

void sub_2338ACD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2338ACDD8(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v13 = sub_233739994(v2, @"{PictureStyle}", 0);

  if (v13)
  {
    if (!sub_233739ACC(v13, @"Monochrome"))
    {
      sub_2338ACF60(a1, @"Monochrome", 0);
    }

    v3 = (*(*a1 + 96))(a1);
    if ((v3 & 0x80000000) == 0)
    {
      if ((v3 + 1) > 4u)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(&off_2789EFFF0 + (v3 + 1));
      }

      sub_2338AD018(a1, @"{PictureStyle}", @"PictStyleColorSpace", v4, v3, v3);
    }
  }

  v5 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v5, v6, @"{PictStyleSetting}", v7, v8);

  v9 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v9, v10, @"{PictStyleNormalized}", v11, v12);
}

void sub_2338ACF60(uint64_t a1, void *a2, int a3)
{
  v9 = a2;
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%ld", v6, v7, a3);
  sub_2338AD018(a1, @"{PictureStyle}", v9, v8, a3, a3);
}

void sub_2338AD018(uint64_t a1, void *a2, void *a3, void *a4, float a5, float a6)
{
  v42 = a2;
  v11 = a3;
  v12 = a4;
  v16 = v12;
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%ld", v14, v15, a5);
  }

  v18 = v17;
  v19 = sub_2338A9B94(a1);
  v20 = sub_2338AD358(v19, v42, v11);

  objc_msgSend_addObject_(v20, v21, v18, v22, v23);
  *&v24 = a5;
  v29 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v25, v26, v27, v28, v24);
  objc_msgSend_addObject_(v20, v30, v29, v31, v32);

  *&v33 = a6;
  v38 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, v36, v37, v33);
  objc_msgSend_addObject_(v20, v39, v38, v40, v41);
}

uint64_t sub_2338AD1AC(uint64_t a1, __int16 a2)
{
  if ((a2 + 1) > 4u)
  {
    return 0;
  }

  else
  {
    return *(&off_2789EFFF0 + (a2 + 1));
  }
}

void sub_2338AD1E0(uint64_t a1, uint8x8_t a2, uint16x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a2.i32[0] = *(a6 + 8);
  a3.i32[0] = 13631696;
  a3.i16[2] = 208;
  a3.i16[3] = 208;
  v8 = vaddw_u8(a3, a2).u64[0];
  *(a6 + 8) = vuzp1_s8(v8, v8).u32[0];
  v9 = sub_2338A9B94(a1);
  v10 = sub_2338A9BFC(a5);
  v11 = sub_2338A9B78(a5);
  v33 = sub_2338AD358(v9, v10, v11);

  v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, (*(a6 + 9) + 10 * *(a6 + 8)), v13, v14);
  objc_msgSend_addObject_(v33, v16, v15, v17, v18);

  v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v19, *(a6 + 10), v20, v21);
  objc_msgSend_addObject_(v33, v23, v22, v24, v25);

  if (*(a6 + 11))
  {
    v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, *(a6 + 11), v27, v28);
    objc_msgSend_addObject_(v33, v30, v29, v31, v32);
  }
}

id sub_2338AD358(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_2337854A4(a1, a2, 0);
  v7 = sub_2338ADAE0(v6, v5);

  return v7;
}

void sub_2338AD3EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = sub_2338A9B94(a1);
  v7 = sub_2338A9BFC(a3);
  v8 = sub_2338A9B78(a3);
  v37 = sub_2338AD358(v6, v7, v8);

  v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v9, a4[8], v10, v11);
  objc_msgSend_addObject_(v37, v13, v12, v14, v15);

  v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v16, a4[9], v17, v18);
  objc_msgSend_addObject_(v37, v20, v19, v21, v22);

  if (*(a4 + 5))
  {
    v26 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v23, a4[10], v24, v25);
    objc_msgSend_addObject_(v37, v27, v26, v28, v29);

    if (a4[11])
    {
      v33 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v30, a4[11], v31, v32);
      objc_msgSend_addObject_(v37, v34, v33, v35, v36);
    }
  }
}

void sub_2338AD57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v11 = *(a4 + 8);
  v12 = bswap32(v11);
  if (a6)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (sub_2338A9730(a1, &v34, 24, a5, v13) == 24)
  {
    if (a6)
    {
      for (i = 0; i != 24; i += 4)
      {
        *(&v34 + i) = bswap32(*(&v34 + i));
      }
    }

    v15 = 0.0;
    if (v34)
    {
      v16 = HIDWORD(v34) == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v15 = v34 / HIDWORD(v34);
    }

    if (v35)
    {
      v17 = HIDWORD(v35) == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v15 = v15 + v35 / (HIDWORD(v35) * 60.0);
    }

    if (v36 && HIDWORD(v36))
    {
      v15 = v15 + v36 / (HIDWORD(v36) * 3600.0);
    }

    if (*a4 == 7)
    {
      v18 = 2000000000.0;
      if (v15 <= 2000000000.0)
      {
        v18 = v15;
      }

      if (v15 >= -2000000000.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = -2000000000.0;
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = fmod(v19 * 60.0, 60.0);
      v22 = fmod(v19 * 3600.0, 60.0);
      v26 = objc_msgSend_stringWithFormat_(v20, v23, @"%.2d:%.2d:%05.2f", v24, v25, v19, v21, v22);
      v27 = sub_2338A9B94(a1);
      v28 = sub_2338A9BFC(a3);
      v29 = sub_2338A9B78(a3);
      sub_2337830C4(v27, v28, v29, v26);
    }

    else
    {
      v26 = sub_2338A9B94(a1);
      v27 = sub_2338A9BFC(a3);
      v28 = sub_2338A9B78(a3);
      v29 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v30, v31, v32, v33, v15);
      sub_2337830C4(v26, v27, v28, v29);
    }
  }
}

void sub_2338AD804(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_2338AD870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 4);
  if ((v6 - 10001) >= 0xFFFFD8F8 && *(a4 + 2) == 7)
  {
    sub_233726154(&__p, v6);
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

    v16 = sub_2338A9730(a1, __p, v26 - __p, a5, v15);
    v17 = __p;
    if (v16 == v26 - __p)
    {
      v18 = *__p;
      if (*__p == 0x45444F43494E55)
      {
        v19 = 256;
      }

      else
      {
        v19 = -1;
      }

      if (v18 == 0x4949435341)
      {
        v19 = 1536;
      }

      if (v18 == 5458250)
      {
        v20 = 1570;
      }

      else
      {
        v20 = v19;
      }

      if (v20 != -1)
      {
        v21 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], __p + 8, v16 - 8, v20, 1u);
        if (v21)
        {
          v22 = sub_2338A9B94(a1);
          v23 = sub_2338A9BFC(a3);
          v24 = sub_2338A9B78(a3);
          sub_2337830C4(v22, v23, v24, v21);
        }
      }

      v17 = __p;
    }

    if (v17)
    {
      v26 = v17;
      operator delete(v17);
    }
  }
}

void sub_2338AD9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v15 = v11;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2338ADA50(uint64_t a1, int a2)
{
  v3 = sub_2338A9B94(a1);
  v4 = v3;
  v5 = *MEMORY[0x277CD3038];
  if (a2)
  {
    sub_2337854A4(v3, v5, 0);
  }

  else
  {
    sub_233739994(v3, v5, 0);
  }
  v6 = ;

  return v6;
}

id sub_2338ADAE0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v10, v9, v4, v11);

  return v9;
}

void sub_2338ADB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v7 = *(a4 + 4);
  if ((v7 - 1) <= 0xF423F && a7 != 0)
  {
    v13 = *(a4 + 2);
    if (v13 > 0x6F)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_233916070[v13];
    }

    sub_233726154(&__p, v14 * v7);
    v15 = *(a4 + 8);
    v16 = bswap32(v15);
    if (a6)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    v18 = sub_2338A9730(a1, __p, v21 - __p, a5, v17);
    v19 = __p;
    if (v18 == v21 - __p)
    {
      sub_2338A9B94(a1);
      CGImagePluginReadRawIPTCProps();
      v19 = __p;
    }

    if (v19)
    {
      v21 = v19;
      operator delete(v19);
    }
  }
}

void sub_2338ADC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338ADC74(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%@/GPS", v11, v12, v15);
  v14 = sub_2338AABA4(a1, v15, a3, a4, a5, a6);
  sub_2338ADD58(a1, v13, word_284930CB8, v14, a5, a6);
}

uint64_t sub_2338ADD58(_BYTE *a1, void *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = (*(*a1 + 88))(a1, a3);
  v39 = 0;
  v38 = 0;
  if (sub_2338A9730(a1, &v39, 2, a5, a4) != 2)
  {
    goto LABEL_46;
  }

  v13 = v39;
  v14 = bswap32(v39) >> 16;
  if (a6)
  {
    v13 = v14;
  }

  v39 = v13;
  if (v13 > 0xFEu)
  {
LABEL_46:
    v30 = 0;
    goto LABEL_44;
  }

  sub_2338B1CBC(&__p, v13);
  v15 = v37 - __p;
  v16 = a4 + 2;
  if (sub_2338A9730(a1, __p, v37 - __p, a5, v16) == v15 && sub_2338A9730(a1, &v38, 4, a5, v15 + v16) == 4)
  {
    v17 = v38;
    if (a6)
    {
      v17 = bswap32(v38);
      if (v39)
      {
        v18 = 0;
        v19 = __p;
        do
        {
          *v19 = bswap32(*v19) >> 16;
          v19[1] = bswap32(v19[1]) >> 16;
          *(v19 + 1) = bswap32(*(v19 + 1));
          ++v18;
          v19 += 6;
        }

        while (v18 < v39);
      }
    }

    if (v12)
    {
      v20 = v39;
      if (v39)
      {
        v21 = 0;
        v22 = __p + 4;
        do
        {
          if (*(v22 - 2) == 50706 && *(v22 - 1) == 1 && *v22 == 4)
          {
            a1[193] = 1;
          }

          ++v21;
          v22 += 3;
        }

        while (v21 < v20);
      }

      if (a3 == &unk_284930CB8 && v20 < 2)
      {
        goto LABEL_42;
      }

      if (((*(*a1 + 40))(a1) & 1) == 0 && (*(*a1 + 24))(a1))
      {
        a3 = &unk_2789EFF58;
      }

      goto LABEL_27;
    }

    if (a3 != &unk_284930CB8 || v39 >= 2u)
    {
LABEL_27:
      sub_2338A832C(a1, &v34);
      v23 = (*(*v34 + 16))(v34);
      v33 = v17;
      if (v35)
      {
        sub_2337239E8(v35);
      }

      if (v39)
      {
        v24 = 0;
        v25 = __p;
        do
        {
          LODWORD(v34) = 0;
          v26 = sub_2338A9630(a1, v25, a3, &v34);
          if (v26)
          {
            v27 = v25[1];
            if (v27 > 0x6F)
            {
              v28 = 0;
            }

            else
            {
              v28 = qword_233916070[v27];
            }

            if (v28 * *(v25 + 1) >= v23)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](exception, "RawCameraException");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v29 = *(v26 + 3);
            if (v29)
            {
              v29(a1, v11, v26, v25, a5, a6, v12);
            }

            else
            {
              sub_2338AA0D0(a1, v11, v26, v25, a5, a6);
            }
          }

          ++v24;
          v25 += 6;
        }

        while (v24 < v39);
      }

      v17 = v33;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_42:
  v30 = v17;
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

LABEL_44:

  return v30;
}

void sub_2338AE140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338AE1A0(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a2;
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%@/Makernote", v10, v11, v16);
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

  (*(*a1 + 136))(a1, v12, v15, *(a4 + 4), a5, a6, 0);
  a1[194] = 1;
}

uint64_t sub_2338AE294(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v13 = v10;
  if (*(a4 + 4) >= 0x15u)
  {
    v19 = v10;
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@/Makernote", v11, v12, v10);
    v15 = *(a4 + 8);
    v16 = bswap32(v15);
    if (a6)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    (*(*a1 + 144))(a1, v14, v17, a5, a6, 1);

    v13 = v19;
  }

  return MEMORY[0x2821F96F8](v10, v13);
}

void sub_2338AE38C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%@/Exif", v11, v12, v15);
  v14 = sub_2338AABA4(a1, v15, a3, a4, a5, a6);
  sub_2338ADD58(a1, v13, word_2849301A0, v14, a5, a6);
}

void sub_2338AE470(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a2;
  sub_2338AABA4(a1, v43, a3, a4, a5, a6);
  if ((*(*a1 + 184))(a1))
  {
    v11 = sub_2338A9B94(a1);
    v12 = sub_2338A9BFC(a3);
    v13 = sub_2338A9B78(a3);
    v41 = a3;
    v42 = sub_2338AE7EC(v11, v12, v13);

    v18 = 0;
    v19 = 0;
    v20 = *MEMORY[0x277CD3490];
    while (v19 < objc_msgSend_count(v42, v14, v15, v16, v17))
    {
      v44 = v19;
      v24 = sub_23386F6F4(v42, &v44, v21, v22, v23);

      if (!v24)
      {
        goto LABEL_13;
      }

      v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%@/SubIFD%d", v26, v27, v43, v19);
      LODWORD(v33) = objc_msgSend_intValue(v24, v29, v30, v31, v32);
      v34 = sub_2338A9B94(a1);
      v35 = sub_2338AE880(v34, v20, @"_SubfileType");

      if (v35 && (sub_2338A9B94(a1), v36 = objc_claimAutoreleasedReturnValue(), v37 = sub_2338AE900(v36, v20, @"_SubfileType"), v36, !v37))
      {
        v33 = v33;
      }

      else
      {
        v33 = v33;
        sub_2338ADD58(a1, v28, word_28492EBC0, v33, a5, a6);
      }

      sub_2338ADD58(a1, v28, word_2789EFC08, v33, a5, a6);
      if ((*(*a1 + 24))(a1))
      {
        sub_2338ADD58(a1, v28, word_28492F2C8, v33, a5, a6);
      }

      ++v19;
      v18 = v24;
    }

LABEL_13:
    a3 = v41;
  }

  v38 = sub_2338A9B94(a1);
  v39 = sub_2338A9BFC(a3);
  v40 = sub_2338A9B78(a3);
  sub_2338AE980(v38, v39, v40);
}

id sub_2338AE7EC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_233739994(a1, a2, 0);
  v10 = sub_23378DDE8(v6, v5, v7, v8, v9);

  return v10;
}

BOOL sub_2338AE880(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_233739994(a1, a2, 0);
  v7 = sub_233739ACC(v6, v5);

  return v7;
}

uint64_t sub_2338AE900(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_233739994(a1, a2, 0);
  v10 = sub_2337397B0(v6, v5, v7, v8, v9);

  return v10;
}

void sub_2338AE980(void *a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = sub_233739994(a1, a2, 0);
  objc_msgSend_removeObjectForKey_(v5, v6, v9, v7, v8);
}

uint64_t sub_2338AEA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v31 = 0;
  if (sub_2338A9730(a1, &v31, 10, a5, a3) != 10)
  {
    return 0;
  }

  if (v31 != 0x4F6920656C707041 || v32 != 83)
  {
    return 0;
  }

  v11 = objc_autoreleasePoolPush();
  v15 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v12, a4 + 62, v13, v14);
  v16 = v15;
  v21 = objc_msgSend_mutableBytes(v15, v17, v18, v19, v20);
  *v21 = xmmword_233915FE0;
  *(v21 + 16) = 0x100000004006987;
  *(v21 + 24) = 436207616;
  *(v21 + 28) = 0;
  *(v21 + 32) = 0;
  *(v21 + 33) = xmmword_233915FF0;
  *(v21 + 49) = 7;
  *(v21 + 50) = bswap32(a4);
  *(v21 + 54) = 939524096;
  *(v21 + 58) = 0;
  v22 = v15;
  v27 = objc_msgSend_mutableBytes(v15, v23, v24, v25, v26);
  sub_2338A9730(a1, v27 + 62, a4, a5, a3);
  v30 = v15;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, &v30, 1, v29);
  CGImageCreateMetadataFromDataArray();

  objc_autoreleasePoolPop(v11);
  return 1;
}

BOOL sub_2338AEC78(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  memset(v21, 0, 21);
  v10 = sub_2338A9730(a1, v21, 20, a4, a3);
  if (v10 == 20)
  {
    if (v21[0] == 0x614D0065626F6441 && LOWORD(v21[1]) == 20075)
    {
      v13 = *(&v21[1] + 2);
      sub_2338A832C(a1, &v19);
      v14 = (*(*v19 + 16))(v19);
      v15 = bswap32(v13);
      if (v20)
      {
        sub_2337239E8(v20);
      }

      if (v14 < v15)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if ((*(*a1 + 136))(a1, v9))
      {
        sub_2338ADD58(a1, &stru_284938540, word_28492F250, a3, a4, a5);
      }
    }

    else if (v21[0] == 0x205841544E4550 || v21[0] == 0x474E55534D4153)
    {
      sub_2338A832C(a1, &v18);
      v12 = sub_2338A9B94(a1);
      sub_2338CDC18(&v18, v12, 0);
    }
  }

  return v10 == 20;
}

void sub_2338AEF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338AEFAC(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 176))(a1);
  v28[0] = 0;
  v3 = v2;
  if (sub_2338A9730(a1, v28, 8, v2, 0) != 8)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v4 = LOBYTE(v28[0]);
  if (LOBYTE(v28[0]) != BYTE1(v28[0]))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((LOBYTE(v28[0]) | 4) != 0x4D)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = bswap32(WORD1(v28[0])) >> 16;
  if (LOBYTE(v28[0]) == 77)
  {
    v6 = v5;
  }

  else
  {
    v6 = WORD1(v28[0]);
  }

  if (((*(*a1 + 120))(a1, v6) & 1) == 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v7 = bswap32(HIDWORD(v28[0]));
  if (v4 == 77)
  {
    v8 = v7;
  }

  else
  {
    v8 = HIDWORD(v28[0]);
  }

  sub_2338A832C(a1, &__p);
  v9 = (*(*__p + 16))(__p);
  if (v27)
  {
    sub_2337239E8(v27);
  }

  if (v8 >= v9)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v10 = (*(*a1 + 80))(a1);
  v11 = sub_2338ADD58(a1, @"IFD0", v10, v8, v3, v4 == 77);
  if (v11 >= v9)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (((*(*a1 + 40))(a1) & 1) == 0)
  {
    if (v11)
    {
      v12 = sub_2338ADD58(a1, @"IFD1", word_28492F160, v11, v3, v4 == 77);
      if (v12 >= v9)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      if (v12)
      {
        sub_2338ADD58(a1, @"IFD2", word_2789EFE20, v12, v3, v4 == 77);
      }
    }

    if (*(a1 + 144))
    {
      sub_2338A9B94(a1);
      objc_msgSend_bytes(*(a1 + 144), v13, v14, v15, v16);
      objc_msgSend_length(*(a1 + 144), v17, v18, v19, v20);
      CGImagePluginReadRawXMPProps();
    }

    else if (*(a1 + 152))
    {
      v22 = *(a1 + 160);
      if (v22)
      {
        sub_233726154(&__p, v22);
        v23 = sub_2338A9730(a1, __p, v27 - __p, v3, *(a1 + 152));
        v24 = __p;
        if (v23 == v27 - __p)
        {
          sub_2338A9B94(a1);
          CGImagePluginReadRawXMPProps();
          v24 = __p;
        }

        if (v24)
        {
          v27 = v24;
          operator delete(v24);
        }
      }
    }
  }

  return (*(*a1 + 128))(a1);
}

void sub_2338AF3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338AF464(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v11 = v2;
  v4 = sub_2338AE880(v2, *MEMORY[0x277CD2F50], @"ImageStabilization");

  if (v4)
  {
    v12 = sub_2338A9B94(a1);
    v5 = sub_2338AE900(v12, v3, @"ImageStabilization");

    v6 = sub_2338A9B94(a1);
    v13 = v6;
    if (v5 == 0x7FFF)
    {
      sub_2338AE980(v6, v3, @"ImageStabilization");
    }

    else
    {
      v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
      sub_2337830C4(v13, v3, @"ImageStabilization", v10);
    }
  }
}

void sub_2338AF5B0(uint64_t a1)
{
  (*(*a1 + 200))(a1);
  (*(*a1 + 168))(a1);
  (*(*a1 + 104))(a1);
  v2 = sub_2338A9B94(a1);
  sub_2338AE980(v2, *MEMORY[0x277CD3490], @"_SubfileType");

  v3 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v3, v4, @"{Temporary}", v5, v6);

  v7 = sub_2338A9B94(a1);
  v8 = *MEMORY[0x277CD3038];
  v9 = sub_233875D18(v7, *MEMORY[0x277CD3038], @"CameraOwnerName");

  v10 = MEMORY[0x277CD2F50];
  v62 = v9;
  if (v9)
  {
    v11 = sub_2338A9B94(a1);
    sub_2337830C4(v11, *v10, *MEMORY[0x277CD2F88], v9);
  }

  v12 = sub_2338A9B94(a1);
  v13 = sub_233875D18(v12, v8, @"BodySerialNumber");

  v61 = v13;
  if (v13)
  {
    v14 = sub_2338A9B94(a1);
    sub_2337830C4(v14, *v10, *MEMORY[0x277CD2FE0], v13);
  }

  v15 = sub_2338A9B94(a1);
  v63 = sub_233875D18(v15, v8, @"LensModel");

  v16 = sub_2338A9B94(a1);
  v17 = *v10;
  v18 = *MEMORY[0x277CD2F78];
  v19 = sub_233875D18(v16, *v10, *MEMORY[0x277CD2F78]);

  v60 = v19;
  if (v19)
  {
    v20 = v19;
    goto LABEL_11;
  }

  if (v63)
  {
    v20 = v63;
  }

  else
  {
    v20 = (*(*a1 + 152))(a1);
    if (!v20)
    {
      goto LABEL_11;
    }
  }

  v21 = sub_2338A9B94(a1);
  sub_2337830C4(v21, v17, v18, v20);

LABEL_11:
  v22 = sub_2338A9B94(a1);
  v59 = v20;
  v23 = sub_2338AE880(v22, v17, v18);

  if (!v23)
  {
    v24 = sub_2338A9B94(a1);
    sub_2338AE980(v24, v17, *MEMORY[0x277CD2F68]);
  }

  v25 = sub_2338A9B94(a1);
  v26 = sub_233875D18(v25, v8, @"LensSerialNumber");

  if (v26)
  {
    v27 = sub_2338A9B94(a1);
    sub_2337830C4(v27, v17, *MEMORY[0x277CD2F80], v26);
  }

  v28 = sub_2338A9B94(a1);
  v29 = sub_2338AE7EC(v28, v8, @"LensSpecification");

  if (v29)
  {
    v30 = sub_2338A9B94(a1);
    sub_2337830C4(v30, v17, *MEMORY[0x277CD2F70], v29);
  }

  v31 = sub_2338A9B94(a1);
  v32 = *MEMORY[0x277CD30B0];
  v33 = sub_2338AE7EC(v31, v8, *MEMORY[0x277CD30B0]);

  v34 = sub_2338A9B94(a1);
  v35 = sub_2338AE900(v34, v8, *MEMORY[0x277CD3148]);

  v36 = sub_2338A9B94(a1);
  v37 = sub_2338AE900(v36, v8, *MEMORY[0x277CD3170]);

  v38 = sub_2338A9B94(a1);
  v39 = sub_2338AE900(v38, v8, *MEMORY[0x277CD3120]);

  v40 = sub_2338A9B94(a1);
  v41 = sub_2338AE900(v40, v8, *MEMORY[0x277CD30A8]);

  if (objc_msgSend_count(v33, v42, v43, v44, v45))
  {
    v64 = 0;
    v49 = sub_2338AFCCC(v33, &v64, v46, v47, v48) == -1;
  }

  else
  {
    v49 = 0;
  }

  if (v35 <= 7u)
  {
    if (((1 << v35) & 0xB2) == 0)
    {
      if (((1 << v35) & 0x44) != 0)
      {
        v37 = v39;
      }

      else
      {
        if (v35 != 3)
        {
          goto LABEL_30;
        }

        v37 = v41;
      }
    }

    if (!v37)
    {
      v49 = 0;
    }

    if (v49)
    {
      v50 = sub_2338ADA50(a1, 1);
      v51 = sub_2338ADAE0(v50, v32);
      v55 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v52, v37, v53, v54, v59);
      objc_msgSend_addObject_(v51, v56, v55, v57, v58);
    }
  }

LABEL_30:
}

uint64_t sub_2338AFCCC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_23386F6F4(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_shortValue(v5, v6, v7, v8, v9);

  return v10;
}

uint64_t sub_2338AFD14(uint64_t result)
{
  if ((*(result + 192) & 1) == 0)
  {
    v1 = result;
    result = sub_2338AEFAC(result);
    *(v1 + 192) = 1;
  }

  return result;
}

void sub_2338AFD4C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = a7;
  if (v15)
  {
    objc_storeStrong(a1 + 22, a7);
  }

  if ((*(*a1 + 17))(a1, @"IFD0/Exif/Makernote", a2, a3, a4, a5, a6))
  {
    (*(*a1 + 16))(a1);
  }

  v14 = a1[22];
  a1[22] = 0;
}

void sub_2338AFE60(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = a2;
  v5 = sub_2338A9C18(a1);
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%@/%@", v7, v8, v4, @"_BitsPerSample");
  v13 = sub_23378DDE8(v5, v9, v10, v11, v12);

  v220 = v13;
  if (v13)
  {
    v18 = v13;
    if (!objc_msgSend_count(v13, v14, v15, v16, v17) || (*&v236 = 0, sub_23386EA2C(v13, &v236, v19, v20, v21) != 8))
    {
      *a3 = 0;
      a3[1] = 0;
      goto LABEL_73;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  v22 = sub_2338A9C18(a1);
  v23 = *MEMORY[0x277CD34B8];
  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%@/%@", v25, v26, v4, *MEMORY[0x277CD34B8]);
  v31 = sub_233740FAC(v22, v27, v28, v29, v30);

  v240 = 1;
  if (v31 || (sub_2338A9C18(a1), v222 = objc_claimAutoreleasedReturnValue(), v36 = MEMORY[0x277CCACA8], v37 = v23, objc_msgSend_stringWithFormat_(v36, v38, @"IFD0/%@", v39, v40, v37), v41 = objc_claimAutoreleasedReturnValue(), sub_233740FAC(v222, v41, v42, v43, v44), v31 = objc_claimAutoreleasedReturnValue(), v41, v37, v222, v31))
  {
    v45 = objc_msgSend_intValue(v31, v32, v33, v34, v35);
    if ((v45 - 9) < 0xFFFFFFF8)
    {
      v46 = 1;
    }

    else
    {
      v46 = v45;
    }

    v240 = v46;
  }

  v223 = v31;
  v47 = sub_2338A9C18(a1);
  v51 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v48, @"%@/%@", v49, v50, v4, @"_ImageWidth");
  v226 = sub_233740FAC(v47, v51, v52, v53, v54);

  v55 = sub_2338A9C18(a1);
  v59 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, @"%@/%@", v57, v58, v4, @"_ImageLength");
  v225 = sub_233740FAC(v55, v59, v60, v61, v62);

  v63 = sub_2338A9C18(a1);
  v67 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v64, @"%@/%@", v65, v66, v4, *MEMORY[0x277CD3478]);
  v71 = sub_233740FAC(v63, v67, v68, v69, v70);

  v224 = v71;
  if (v71)
  {
    v76 = objc_msgSend_intValue(v71, v72, v73, v74, v75);
  }

  else
  {
    v76 = 0;
  }

  v77 = sub_2338A9C18(a1);
  v81 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v78, @"%@/%@", v79, v80, v4, @"_StripOffsets");
  v85 = sub_23378DDE8(v77, v81, v82, v83, v84);

  v86 = sub_2338A9C18(a1);
  v90 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v87, @"%@/%@", v88, v89, v4, @"_StripByteCounts");
  v94 = sub_23378DDE8(v86, v90, v91, v92, v93);

  v95 = sub_2338A9C18(a1);
  v99 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v96, @"%@/%@", v97, v98, v4, @"_StripOffsets");
  v228 = sub_233740FAC(v95, v99, v100, v101, v102);

  v103 = sub_2338A9C18(a1);
  v107 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v104, @"%@/%@", v105, v106, v4, @"_StripByteCounts");
  v227 = sub_233740FAC(v103, v107, v108, v109, v110);

  if (v85 && !v228)
  {
    *&v236 = 0;
    v228 = sub_23386F6F4(v85, &v236, v112, v113, v114);
  }

  if (v94 && !v227)
  {
    *&v236 = 0;
    v227 = sub_23386F6F4(v94, &v236, v112, v113, v114);
  }

  v115 = objc_msgSend_count(v85, v111, v112, v113, v114);
  v120 = objc_msgSend_count(v94, v116, v117, v118, v119);
  v239 = objc_msgSend_intValue(v228, v121, v122, v123, v124);
  LODWORD(v236) = objc_msgSend_intValue(v227, v125, v126, v127, v128);
  sub_233726998(&v238, &v236);
  if (v226 && v225 && v71 && v115 && v120 && v115 == v120)
  {
    v129 = sub_2338A9C18(a1);
    v133 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v130, @"%@/%@", v131, v132, v4, @"_PlanarConfiguration");
    v219 = sub_233740FAC(v129, v133, v134, v135, v136);

    v137 = sub_2338A9C18(a1);
    v141 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v138, @"%@/%@", v139, v140, v4, *MEMORY[0x277CD34C0]);
    v218 = sub_233740FAC(v137, v141, v142, v143, v144);

    if ((v76 & 0xFFFFFFFE) != 6 || v115 != 1)
    {
      v176 = v76 == 1;
      v149 = v219;
      v18 = v220;
      v150 = v218;
      if (v176 && (!v219 || objc_msgSend_intValue(v219, v145, v146, v147, v148) == 1) && (!v218 || objc_msgSend_intValue(v218, v145, v146, v147, v148) == 2))
      {
        v236 = 0uLL;
        v237 = 0;
        __src = 0;
        v234 = 0;
        v235 = 0;
        LODWORD(v230) = 0;
        sub_233726998(&v232, &v230);
        v180 = 0;
        v181 = 1;
        do
        {
          v230 = v180;
          v182 = sub_23386EA2C(v85, &v230, v177, v178, v179);
          v239 = v182;
          v230 = v180;
          v229[0] = sub_23386EA2C(v94, &v230, v183, v184, v185);
          sub_233726938(&v238, v229);
          v186 = *(&v236 + 1);
          if (*(&v236 + 1) >= v237)
          {
            v188 = v236;
            v189 = *(&v236 + 1) - v236;
            v190 = (*(&v236 + 1) - v236) >> 2;
            v191 = v190 + 1;
            if ((v190 + 1) >> 62)
            {
              sub_2337235BC();
            }

            v192 = v237 - v236;
            if ((v237 - v236) >> 1 > v191)
            {
              v191 = v192 >> 1;
            }

            v193 = v192 >= 0x7FFFFFFFFFFFFFFCLL;
            v194 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v193)
            {
              v194 = v191;
            }

            if (v194)
            {
              sub_2337235D4(&v236, v194);
            }

            *(4 * v190) = v182;
            v187 = 4 * v190 + 4;
            memcpy(0, v188, v189);
            v195 = v236;
            *&v236 = 0;
            *(&v236 + 1) = v187;
            v237 = 0;
            if (v195)
            {
              operator delete(v195);
            }
          }

          else
          {
            **(&v236 + 1) = v182;
            v187 = v186 + 4;
          }

          *(&v236 + 1) = v187;
          v196 = v234;
          if (v234 >= v235)
          {
            v198 = __src;
            v199 = v234 - __src;
            v200 = (v234 - __src) >> 2;
            v201 = v200 + 1;
            if ((v200 + 1) >> 62)
            {
              sub_2337235BC();
            }

            v202 = v235 - __src;
            if ((v235 - __src) >> 1 > v201)
            {
              v201 = v202 >> 1;
            }

            v193 = v202 >= 0x7FFFFFFFFFFFFFFCLL;
            v203 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v193)
            {
              v203 = v201;
            }

            if (v203)
            {
              sub_2337235D4(&__src, v203);
            }

            *(4 * v200) = v238;
            v197 = 4 * v200 + 4;
            memcpy(0, v198, v199);
            v204 = __src;
            __src = 0;
            v234 = v197;
            v235 = 0;
            if (v204)
            {
              operator delete(v204);
            }
          }

          else
          {
            *v234 = v238;
            v197 = (v196 + 4);
          }

          v234 = v197;
          sub_233753AB0(&v232, &v238);
          v180 = v181;
          v205 = v115 > v181++;
        }

        while (v205);
        if (*(&v236 + 1) == v236)
        {
          sub_2337306B0();
        }

        v206 = *v236;
        v150 = v218;
        v149 = v219;
        sub_2338A832C(a1, &v230);
        v229[0] = (*(*v230 + 16))(v230);
        v211 = *sub_2337580F8(v229, &v232);
        if (v231)
        {
          sub_2337239E8(v231);
        }

        v205 = v206 > v211;
        v18 = v220;
        if (!v205)
        {
          v212 = objc_msgSend_intValue(v226, v207, v208, v209, v210);
          v217 = objc_msgSend_intValue(v225, v213, v214, v215, v216);
          v229[0] = v212;
          v229[1] = v217;
          sub_23375815C();
        }

        if (__src)
        {
          v234 = __src;
          operator delete(__src);
        }

        if (v236)
        {
          *(&v236 + 1) = v236;
          operator delete(v236);
        }
      }

      goto LABEL_72;
    }

    v149 = v219;
    v18 = v220;
    v150 = v218;
    sub_233723AE0(&__src, &v239);
    sub_2338A820C(a1, &__src, &v238, v240, &v236);
    goto LABEL_31;
  }

  v151 = sub_2338A9C18(a1);
  v155 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v152, @"%@/%@", v153, v154, v4, @"_JPEGInterchangeFormat");
  v159 = sub_233740FAC(v151, v155, v156, v157, v158);

  v160 = sub_2338A9C18(a1);
  v164 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v161, @"%@/%@", v162, v163, v4, @"_JPEGInterchangeFormatLength");
  v149 = v159;
  v150 = sub_233740FAC(v160, v164, v165, v166, v167);

  if (!v159)
  {
    v18 = v220;
    goto LABEL_72;
  }

  v18 = v220;
  if (v150)
  {
    LODWORD(__src) = objc_msgSend_intValue(v159, v168, v169, v170, v171);
    v229[0] = objc_msgSend_intValue(v150, v172, v173, v174, v175);
    sub_233726998(&v230, v229);
    sub_2338A820C(a1, &__src, &v230, v240, &v236);
LABEL_31:
    *a3 = v236;
  }

LABEL_72:

LABEL_73:
}

void sub_2338B083C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 128);
  if (v32)
  {
    *(v30 - 120) = v32;
    operator delete(v32);
  }

  v33 = *(a15 + 8);
  if (v33)
  {
    sub_2337239E8(v33);
  }

  _Unwind_Resume(a1);
}

void sub_2338B0B1C(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v13, 0, sizeof(v13));
  sub_2338AFE60(a1, @"IFD0", &v12);
  sub_2338AFE60(a1, @"IFD1", &v11);
  sub_2338AFE60(a1, @"IFD0/SubIFD0", &v10);
  sub_2338AFE60(a1, @"IFD0/SubIFD1", &v9);
  sub_2338AFE60(a1, @"IFD0/SubIFD2", &v8);
  v6 = v12;
  if (v12)
  {
    v7 = *(v12 + 16);
    if (v7)
    {
      if (!v11 || *(v11 + 16) || (*(v11 + 16) = v7, (v7 = *(v6 + 16)) != 0))
      {
        if (!v10 || *(v10 + 16) || (*(v10 + 16) = v7, (v7 = *(v6 + 16)) != 0))
        {
          if (!v9 || *(v9 + 16) || (*(v9 + 16) = v7, (v7 = *(v6 + 16)) != 0))
          {
            if (v8 && !*(v8 + 16))
            {
              *(v8 + 16) = v7;
            }
          }
        }
      }
    }

    sub_233753C74(v13, &v12);
  }

  if (v11)
  {
    sub_233753C74(v13, &v11);
  }

  if (v10)
  {
    sub_233753C74(v13, &v10);
  }

  if (v9)
  {
    sub_233753C74(v13, &v9);
  }

  if (v8)
  {
    sub_233753C74(v13, &v8);
  }

  sub_2338A86B8(v13, a2, a3);
  if (*(&v8 + 1))
  {
    sub_2337239E8(*(&v8 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_2337239E8(*(&v9 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_2337239E8(*(&v10 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_2337239E8(*(&v11 + 1));
  }

  if (*(&v12 + 1))
  {
    sub_2337239E8(*(&v12 + 1));
  }

  *&v12 = v13;
  sub_233723948(&v12);
}

void sub_2338B0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void **a18, std::__shared_weak_count *a19)
{
  if (a13)
  {
    sub_2337239E8(a13);
  }

  if (a15)
  {
    sub_2337239E8(a15);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  a18 = (v19 - 56);
  sub_233723948(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_2338B0D70(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD3000];
  v4 = sub_2338AE880(v2, @"{PictStyleSetting}", *MEMORY[0x277CD3000]);

  if (v4)
  {
    v5 = sub_2338A9B94(a1);
    v6 = sub_2338AE900(v5, @"{PictStyleSetting}", v3);
  }

  else
  {
    v7 = sub_2338B0E5C(a1);
    v8 = sub_233739ACC(v7, v3);

    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = sub_2338B0E5C(a1);
    v6 = sub_2337397B0(v5, v3, v9, v10, v11);
  }

  v12 = v6;

  return v12;
}

id sub_2338B0E5C(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = sub_2338A9B94(a1);
    v2 = sub_233739994(v3, *MEMORY[0x277CD3038], 0);
  }

  return v2;
}

id sub_2338B0EE4(uint64_t a1)
{
  v1 = sub_2338A9B94(a1);
  v2 = sub_2338AE7EC(v1, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F70]);

  if (!v2 || objc_msgSend_count(v2, v3, v4, v5, v6) != 4)
  {
    v28 = 0;
    goto LABEL_18;
  }

  v31 = 0;
  v10 = sub_23386EA74(v2, &v31, v7, v8, v9);
  v31 = 1;
  v14 = sub_23386EA74(v2, &v31, v11, v12, v13);
  v31 = 2;
  v18 = sub_23386EA74(v2, &v31, v15, v16, v17);
  v31 = 3;
  v25 = sub_23386EA74(v2, &v31, v19, v20, v21);
  v26 = vabdd_f64(v14, v10);
  if (v18 > 0.0 && v25 > 0.0)
  {
    v27 = vabdd_f64(v18, v25);
    if (v26 >= 0.01)
    {
      if (v27 >= 0.01)
      {
        v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%.1f-%.1f mm f/%.1f-%.1f", v23, v24, *&v10, *&v14, *&v18, *&v25);
        goto LABEL_17;
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%.1f-%.1f mm f/%.1f", v23, v24, *&v10, *&v14, *&v18);
    }

    else if (v27 >= 0.01)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%.1f mm f/%.1f-%.1f", v23, v24, *&v10, *&v18, *&v25);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%.1f mm f/%.1f", v23, v24, *&v10, *&v18);
    }

    goto LABEL_12;
  }

  if (v26 >= 0.01)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%.1f-%.1f mm", v23, v24, *&v10, *&v14);
    v29 = LABEL_12:;
    goto LABEL_17;
  }

  v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%.1f mm", v23, v24, *&v10);
LABEL_17:
  v28 = v29;
LABEL_18:

  return v28;
}

void sub_2338B10E8(char **a1, uint64_t a2, char a3)
{
  sub_2338B1DA4(__p, 1uLL);
  sub_2338B1160(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2338B1144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char **sub_2338B1160(char **result, char **a2, char a3)
{
  if ((a3 & 1) != 0 || result[9] == result[10])
  {
    result += 9;
    if (result != a2)
    {
      return sub_2338B1E28(result, *a2, a2[1], (a2[1] - *a2) >> 4);
    }
  }

  return result;
}

uint64_t sub_2338B1194(uint64_t result, void *a2, char a3)
{
  if ((a3 & 1) != 0 || !*(result + 64) || !*(result + 68))
  {
    *(result + 64) = *a2;
  }

  return result;
}

uint64_t sub_2338B11B8(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v4 = a3;
  v5 = a2;
  v7 = (a1 + 96);
  v6 = *(a1 + 96);
  if ((a4 & 1) == 0 && v6 != *(a1 + 104))
  {
    return 0;
  }

  *(a1 + 104) = v6;
  if (!(a2 | a3))
  {
    return 1;
  }

  v9 = 0;
  do
  {
    if (v5)
    {
      v12 = v9;
      sub_2337539D0(v7, &v12);
    }

    ++v9;
    result = 1;
    v10 = v5 <= 1;
    *(&v11 + 1) = v4;
    *&v11 = v5;
    v5 = v11 >> 1;
    v4 >>= 1;
  }

  while (!v10);
  return result;
}

uint64_t sub_2338B1254(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v4 = a3;
  v5 = a2;
  v7 = (a1 + 120);
  v6 = *(a1 + 120);
  if ((a4 & 1) == 0 && v6 != *(a1 + 128))
  {
    return 0;
  }

  *(a1 + 128) = v6;
  if (!(a2 | a3))
  {
    return 1;
  }

  v9 = 0;
  do
  {
    if (v5)
    {
      v12 = v9;
      sub_2337539D0(v7, &v12);
    }

    ++v9;
    result = 1;
    v10 = v5 <= 1;
    *(&v11 + 1) = v4;
    *&v11 = v5;
    v5 = v11 >> 1;
    v4 >>= 1;
  }

  while (!v10);
  return result;
}

void sub_2338B12F0(os_signpost_id_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_23378DFF4();
  v8 = v7;
  if (a1 + 1 >= 2 && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, a1, "ReadRawTiffPropsFromSession", &unk_233945DBE, buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2338B186C;
  v11[3] = &unk_2789EE800;
  v11[4] = a1;
  MEMORY[0x2383AC810](v11);
  v9 = objc_autoreleasePoolPush();
  sub_23372518C();
}

void sub_2338B14DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_233754F18(&a11);
  if (a15)
  {
    sub_2337239E8(a15);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338B1420);
}

void ReadMakerNoteProps(os_signpost_id_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_23378DFF4();
  v5 = v4;
  if (a1 + 1 >= 2 && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, a1, "ReadMakerNoteProps", &unk_233945DBE, buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2338B17E4;
  v9[3] = &unk_2789EE800;
  v9[4] = a1;
  v6 = MEMORY[0x2383AC810](v9);
  v7 = objc_autoreleasePoolPush();
  if (a1 && v3)
  {
    sub_23372518C();
  }

  objc_autoreleasePoolPop(v7);
  v6[2](v6);
}

void sub_2338B1764(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338B16E4);
}

void sub_2338B17E4(uint64_t a1)
{
  v2 = sub_23378DFF4();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ReadMakerNoteProps", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338B186C(uint64_t a1)
{
  v2 = sub_23378DFF4();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ReadRawTiffPropsFromSession", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338B18F4(os_signpost_id_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_23378DFF4();
  v8 = v7;
  if (a1 + 1 >= 2 && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, a1, "ReadRawTiffPropsFromPath", &unk_233945DBE, buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2338B1B7C;
  v11[3] = &unk_2789EE800;
  v11[4] = a1;
  MEMORY[0x2383AC810](v11);
  v9 = objc_autoreleasePoolPush();
  sub_2337250F0();
}

void sub_2338B1AE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_233754F18(&a11);
  if (a15)
  {
    sub_2337239E8(a15);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338B1A28);
}

void sub_2338B1B7C(uint64_t a1)
{
  v2 = sub_23378DFF4();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ReadRawTiffPropsFromPath", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338B1C10(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338B1C48(void *result, uint64_t a2)
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

void sub_2338B1CA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338B1CBC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2338B1D58(result, a2);
  }

  return result;
}

void sub_2338B1D3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338B1D58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_233879950(a1, a2);
  }

  sub_2337235BC();
}

void *sub_2338B1DA4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_23377FC04(result, a2);
  }

  return result;
}

void sub_2338B1E0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338B1E28(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_23377FC04(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_2338B1F54(uint64_t a1)
{
  *a1 = &unk_2849311C8;

  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *a1 = &unk_28492EB60;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  return a1;
}

void *sub_2338B20BC(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849312F0;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  return a1;
}

void sub_2338B2140(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849312F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338B21BC(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  sub_2338A882C(a1, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2849311C8;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  v9 = v8;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = v9;
  v10 = v7;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = v10;
  *(a1 + 191) = 0;
  v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
  v16 = *(a1 + 184);
  *(a1 + 184) = v15;

  return a1;
}

void sub_2338B2298(_Unwind_Exception *a1)
{
  v5 = *(v2 + 120);
  if (v5)
  {
    *(v2 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(v2 + 96);
  if (v6)
  {
    *(v2 + 104) = v6;
    operator delete(v6);
  }

  v7 = *(v2 + 72);
  if (v7)
  {
    *(v2 + 80) = v7;
    operator delete(v7);
  }

  v8 = *(v2 + 48);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *v2 = &unk_28492EB60;
  v9 = *(v2 + 16);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  _Unwind_Resume(a1);
}

void *sub_2338B2340(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_23372375C(result, a2);
  }

  return result;
}

void sub_2338B239C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338B2420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2338A9730(v10, &a9, v9, v11, a5);
}

void sub_2338B2440(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], a2, a8, a4, a5);
  v10 = sub_2338A9C18(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, v19, @"JPEGImage/Offset", v12);

  v20 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, a7, v14, v15);
  v16 = sub_2338A9C18(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v20, @"JPEGImage/Length", v18);
}

void sub_2338B2534(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], a2, a8, a4, a5);
  v10 = sub_2338A9C18(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, v19, @"JPEGThumbnail/Offset", v12);

  v20 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, a7, v14, v15);
  v16 = sub_2338A9C18(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v20, @"JPEGThumbnail/Length", v18);
}

void sub_2338B2628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v10 = sub_2338A9730(a1, v25, 64, 0, a8);
  if (v10)
  {
    *(v25 + v10) = 0;
    v11 = strlen(v25);
    if (v11 <= 0x27)
    {
      v12 = v11;
      v13 = sub_2338A9B94(a1);
      v14 = sub_2338A9BFC(a2);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v25, v16, v17);
      sub_2337830C4(v13, v14, *MEMORY[0x277CD34A8], v18);

      if (v12 + strlen(v25 + v12 + 1) - 62 >= 0xFFFFFFFFFFFFFFC0)
      {
        v19 = sub_2338A9B94(a1);
        v20 = sub_2338A9BFC(a2);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25 + v12 + 1, v22, v23);
        sub_2337830C4(v19, v20, *MEMORY[0x277CD34B0], v24);
      }
    }
  }
}

void sub_2338B2804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  if (a7 <= 0x1FF)
  {
    v43 = sub_2338A9BFC(a2);
    if (objc_msgSend_length(v43, v12, v13, v14, v15))
    {
      v16 = sub_2338A9B78(a2);
      v21 = objc_msgSend_length(v16, v17, v18, v19, v20);

      if (!a7 || !v21)
      {
        return;
      }

      v43 = sub_2338A9C80(a1, 0, a8, a7, 1);
      if (sub_2338A818C(v43, @"Firmware Version ", 0))
      {
        v26 = objc_msgSend_length(@"Firmware Version ", v22, v23, v24, v25);
        v31 = objc_msgSend_length(v43, v27, v28, v29, v30);
        v36 = objc_msgSend_length(@"Firmware Version ", v32, v33, v34, v35);
        v39 = objc_msgSend_substringWithRange_(v43, v37, v26, v31 - v36, v38);

        v43 = v39;
      }

      v40 = sub_2338A9B94(a1);
      v41 = sub_2338A9BFC(a2);
      v42 = sub_2338A9B78(a2);
      sub_2337830C4(v40, v41, v42, v43);
    }
  }
}

void sub_2338B29D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v10 = bswap32(*(a3 + 4)) >> 16;
    if (a9)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(a3 + 4);
    }

    v18 = sub_2338A9B94(a1);
    v12 = sub_2338A9BFC(a2);
    v13 = sub_2338A9B78(a2);
    v17 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, v11, v15, v16);
    sub_2337830C4(v18, v12, v13, v17);
  }
}

void sub_2338B2AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2338B2AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v91 = sub_2338ADA50(a1, 1);
  v11 = sub_2338A9B94(a1);
  v12 = sub_2337854A4(v11, *MEMORY[0x277CD2F50], 0);

  sub_2338B5928(a1, a8, a9);
  v13 = sub_2338B59E4(a1, a8 + 4, a9);
  if (v13 == 268)
  {
    v14 = 1000;
  }

  else
  {
    v14 = (exp2(vcvts_n_f32_u32(v13, 5uLL)) * 50.0 * 0.0625);
  }

  v15 = sub_2338ADAE0(v91, *MEMORY[0x277CD30B0]);
  v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v16, v14, v17, v18);
  objc_msgSend_addObject_(v15, v20, v19, v21, v22);

  v23 = sub_2338B59E4(a1, a8 + 14, a9);
  v24 = sub_2338A9B94(a1);
  v28 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v25, v23, v26, v27);
  sub_2337830C4(v24, *MEMORY[0x277CD2E10], *MEMORY[0x277CD2E38], v28);

  sub_2338B59E4(a1, a8 + 6, a9);
  v29 = sub_2338B59E4(a1, a8 + 8, a9);
  v30 = exp2((vcvts_n_f32_u32(v29, 5uLL) * 0.5));
  v31 = v30 <= 10.0;
  v32 = roundf(v30 * 10.0);
  v33 = roundf(v30);
  if (v31)
  {
    v34 = v32 / 10.0;
  }

  else
  {
    v34 = v33;
  }

  v35 = log2f(v34);
  *&v36 = roundf(vcvts_n_f32_s32(sub_2338B5AA8(a1, a8 + 12, a9), 5uLL) * 6.0) / 6.0;
  v41 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v37, v38, v39, v40, v36);
  objc_msgSend_setObject_forKeyedSubscript_(v91, v42, v41, *MEMORY[0x277CD3048], v43);

  v44 = sub_2338B59E4(a1, a8 + 28, a9);
  if ((v44 & 0xFFF0) == 0x3000)
  {
    *(a1 + 206) = v44 & 0xF;
  }

  *&v45 = roundf(vcvts_n_f32_s32(sub_2338B59E4(a1, a8 + 30, a9), 5uLL) * 6.0) / 6.0;
  v50 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v46, v47, v48, v49, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v51, v50, *MEMORY[0x277CD2F58], v52);

  sub_2338B59E4(a1, a8 + 32, a9);
  sub_2338B5928(a1, a8 + 34, a9);
  sub_2338B59E4(a1, a8 + 38, a9);
  sub_2338B59E4(a1, a8 + 40, a9);
  v53 = sub_2338B5AA8(a1, a8 + 44, a9);
  v54 = sub_2338B5AA8(a1, a8 + 48, a9);
  v55 = v54;
  v56 = v35 + v35;
  v57 = sub_2338B4434(v54, v53);
  *&v62 = log2f(v57);
  if (v55)
  {
    v57 = v55 / 10.0;
    *&v62 = log2f(v57);
  }

  v63 = -*&v62;
  *&v62 = v56;
  v64 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v58, v59, v60, v61, v62);
  objc_msgSend_setObject_forKeyedSubscript_(v91, v65, v64, *MEMORY[0x277CD2F48], v66);

  *&v67 = v34;
  v72 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v68, v69, v70, v71, v67);
  objc_msgSend_setObject_forKeyedSubscript_(v91, v73, v72, *MEMORY[0x277CD3068], v74);

  *&v75 = v63;
  v80 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v76, v77, v78, v79, v75);
  objc_msgSend_setObject_forKeyedSubscript_(v91, v81, v80, *MEMORY[0x277CD3158], v82);

  *&v83 = v57;
  v88 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v84, v85, v86, v87, v83);
  objc_msgSend_setObject_forKeyedSubscript_(v91, v89, v88, *MEMORY[0x277CD3060], v90);

  sub_2338B5AA8(a1, a8 + 46, a9);
  sub_2338B5AA8(a1, a8 + 48, a9);
}

void sub_2338B3030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v156 = sub_2338ADA50(a1, 1);
  v11 = sub_2338A9B94(a1);
  v12 = sub_2337854A4(v11, *MEMORY[0x277CD2F50], 0);

  v155 = v12;
  v13 = sub_2338A9B94(a1);
  v14 = sub_2337854A4(v13, *MEMORY[0x277CD2E10], 0);

  v154 = v14;
  sub_2338B59E4(a1, a8, a9);
  sub_2338B59E4(a1, a8 + 2, a9);
  sub_2338B59E4(a1, a8 + 4, a9);
  sub_2338B59E4(a1, a8 + 6, a9);
  v15 = sub_2338B59E4(a1, a8 + 8, a9);
  if (v15)
  {
    if (v15 != 2)
    {
      goto LABEL_5;
    }

    LOWORD(v15) = 1;
  }

  v19 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v16, v15, v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v156, v20, v19, *MEMORY[0x277CD3070], v21);

LABEL_5:
  v22 = sub_2338B59E4(a1, a8 + 10, a9);
  v26 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v23, v22, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v27, v26, *MEMORY[0x277CD2E00], v28);

  sub_2338B59E4(a1, a8 + 12, a9);
  v29 = sub_2338B59E4(a1, a8 + 14, a9);
  v33 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v30, v29, v31, v32);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v34, v33, *MEMORY[0x277CD2E18], v35);

  v39 = MEMORY[0x277CD33D8];
  if (v29 < 7)
  {
    v40 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v36, dword_2339163C8[v29], v37, v38);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v41, v40, *v39, v42);
  }

  v43 = sub_2338B59E4(a1, a8 + 22, a9);
  v44 = sub_2338B5AA8(a1, a8 + 26, a9);
  v45 = sub_2338B5AA8(a1, a8 + 28, a9);
  v46 = sub_2338B5AA8(a1, a8 + 30, a9);
  HIDWORD(v151) = sub_2338B5AA8(a1, a8 + 84, a9);
  v47 = sub_2338B7CD8(a1, v43);
  v48 = sub_2338B7E6C(a1, v43);
  LODWORD(v151) = v47;
  v49 = sub_2338A9B94(a1);
  v50 = sub_2337854A4(v49, @"{PictStyleSetting}", 0);

  if (v48)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v50, v51, v48, @"PictureStyle", v53);
  }

  v54 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v51, v46, v52, v53, v151);
  objc_msgSend_setObject_forKeyedSubscript_(v50, v55, v54, *MEMORY[0x277CD3150], v56);

  v60 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v57, v44, v58, v59);
  objc_msgSend_setObject_forKeyedSubscript_(v50, v61, v60, *MEMORY[0x277CD3018], v62);

  v66 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v63, v45, v64, v65);
  objc_msgSend_setObject_forKeyedSubscript_(v50, v67, v66, *MEMORY[0x277CD3128], v68);

  v72 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v69, v153, v70, v71);
  objc_msgSend_setObject_forKeyedSubscript_(v50, v73, v72, @"ColorTone", v74);

  v78 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v75, v152, v76, v77);
  objc_msgSend_setObject_forKeyedSubscript_(v50, v79, v78, @"Monochrome", v80);

  v81 = sub_2338B59E4(a1, a8 + 38, a9);
  if (v81 <= 12290)
  {
    if (v81 == 12288)
    {
      goto LABEL_22;
    }

    if (v81 != 12290)
    {
      goto LABEL_20;
    }

    v85 = 1;
    goto LABEL_19;
  }

  if (v81 == 12291)
  {
    v85 = 2;
LABEL_19:
    sub_2338B4580(a1, 2, v85, 0);
    goto LABEL_20;
  }

  if (v81 == 12292)
  {
    v85 = 4;
    goto LABEL_19;
  }

  if (v81 != 16390)
  {
LABEL_20:
    objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v82, 1, v83, v84);
    goto LABEL_21;
  }

  objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v82, 2, v83, v84);
  v86 = LABEL_21:;
  objc_msgSend_setObject_forKeyedSubscript_(v155, v87, v86, *MEMORY[0x277CD33D8], v88);

LABEL_22:
  v90 = sub_2338B59E4(a1, a8 + 34, a9);
  if ((v90 - 1) >= 5)
  {
    v93 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v89, v90, v91, v92);
    objc_msgSend_setObject_forKeyedSubscript_(v154, v96, v93, *MEMORY[0x277CD2E28], v97);
  }

  else
  {
    v93 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v89, word_2339163E4[(v90 - 1)], v91, v92);
    objc_msgSend_setObject_forKeyedSubscript_(v156, v94, v93, *MEMORY[0x277CD30F0], v95);
  }

  v99 = sub_2338B59E4(a1, a8 + 40, a9);
  if ((v99 - 1) >= 5)
  {
    v102 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v98, v99, v100, v101);
    objc_msgSend_setObject_forKeyedSubscript_(v154, v105, v102, *MEMORY[0x277CD2E30], v106);
  }

  else
  {
    v102 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v98, word_2339163EE[(v99 - 1)], v100, v101);
    objc_msgSend_setObject_forKeyedSubscript_(v156, v103, v102, *MEMORY[0x277CD3058], v104);
  }

  v107 = sub_2338B59E4(a1, a8 + 44, a9);
  v108 = sub_2338B59E4(a1, a8 + 46, a9);
  v109 = sub_2338B59E4(a1, a8 + 48, a9);
  v110 = sub_2338B59E4(a1, a8 + 50, a9);
  sub_2338ACBFC(a1, (v109 / v110), (v108 / v110), 0.0, 0.0);
  if (v110 >= 2)
  {
    *(a1 + 204) = v110;
  }

  if ((v107 - 1) <= 0xFFFDu)
  {
    v114 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v111, v107, v112, v113);
    objc_msgSend_setObject_forKeyedSubscript_(v155, v115, v114, *MEMORY[0x277CD2F68], v116);
  }

  v117 = sub_2338B59E4(a1, a8 + 52, a9);
  v118 = sub_2338B59E4(a1, a8 + 54, a9);
  v119 = sub_2338B8654(a1, v117);
  v120 = exp2(v119 * 0.5);
  v121 = sub_2338B8654(a1, v118);
  v122 = exp2(v121 * 0.5);
  v127 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v123, v124, v125, v126, v120);
  objc_msgSend_setObject_forKeyedSubscript_(v156, v128, v127, *MEMORY[0x277CD30E8], v129);

  v134 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v130, v131, v132, v133, v120);
  objc_msgSend_setObject_forKeyedSubscript_(v154, v135, v134, @"MaxAperture", v136);

  v141 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v137, v138, v139, v140, v122);
  objc_msgSend_setObject_forKeyedSubscript_(v154, v142, v141, @"MinAperture", v143);

  v144 = sub_2338B59E4(a1, a8 + 68, a9);
  if (v144 >= 4)
  {
    objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v145, 3, v146, v147);
  }

  else
  {
    objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v145, dword_233916160[v144], v146, v147);
  }
  v148 = ;
  objc_msgSend_setObject_forKeyedSubscript_(v155, v149, v148, @"ImageStabilization", v150);
}

void sub_2338B39E0(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v11 = sub_2338B83D8(a1);
  LODWORD(v12) = sub_2338B59E4(a1, a8, a9);
  sub_2338B59E4(a1, a8 + 2, a9);
  LODWORD(v34) = sub_2338B59E4(a1, a8 + 8, a9);
  HIDWORD(v34) = sub_2338B59E4(a1, a8 + 10, a9);
  v13 = sub_2338B59E4(a1, a8 + 12, a9);
  v14 = sub_2338B59E4(a1, a8 + 14, a9);
  if ((v12 - 65) >= 0xFFFFFFC0)
  {
    v15 = v14;
    memset(v33, 0, sizeof(v33));
    v16 = a8 + 16;
    v17 = 2 * v12;
    v31 = v12;
    v12 = v12;
    do
    {
      v18 = sub_2338B5AA8(a1, v16, a9);
      v19 = sub_2338B5AA8(a1, v17 + v16, a9);
      if (v11)
      {
        v20 = -v19;
      }

      else
      {
        v20 = v19;
      }

      *&v32 = __PAIR64__(v20, v18);
      *(&v32 + 1) = __PAIR64__(v15, v13);
      sub_2338B44A8(v33, &v32);
      v16 += 2;
      --v12;
    }

    while (v12);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = a8 + 4 * v31 + 16;
    do
    {
      v26 = sub_2338B5C30(a1, v25 + v22);
      for (i = 0; i != 8; ++i)
      {
        v28 = 1 << (v21 + i);
        if (((v21 + i) & 0x40) != 0)
        {
          v29 = 1 << (v21 + i);
        }

        else
        {
          v29 = 0;
        }

        if (((v21 + i) & 0x40) != 0)
        {
          v28 = 0;
        }

        if ((v26 >> i))
        {
          v30 = v28;
        }

        else
        {
          v30 = 0;
        }

        if (((v26 >> i) & 1) == 0)
        {
          v29 = 0;
        }

        v24 |= v29;
        v23 |= v30;
      }

      ++v22;
      v21 += 8;
    }

    while (v22 != ((v31 - 1) >> 3) + 1);
    sub_2338B1254(a1, v23, v24, 1);
    sub_2338B1160(a1, v33, 1);
    sub_2338B1194(a1, &v34, 1);
    sub_2338F884C(v33);
  }
}

void sub_2338B3BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338B3C20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, unsigned __int8 a9)
{
  if ((a5 & 1) == 0)
  {
    a7 = sub_2338B5928(a1, a8, a9);
  }

  *(a1 + 200) = a7;
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%010ld", a4, a5, a7);
  v11 = sub_2338A9B94(a1);
  v12 = sub_2338A9BFC(a2);
  v13 = sub_2338A9B78(a2);
  sub_2337830C4(v11, v12, v13, v14);
}

void sub_2338B3CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_2338B3D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v20 = sub_2338B5928(a1, a8, a9);
  sub_2338B5928(a1, a8 + 4, a9);
  sub_2338B5928(a1, a8 + 8, a9);
  memset(&v19, 0, sizeof(v19));
  gmtime_r(&v20, &v19);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%.2d:%.2d:%.2d %.2d:%.2d:%.2d", v13, v14, (v19.tm_year + 1900), (v19.tm_mon + 1), v19.tm_mday, v19.tm_hour, v19.tm_min, v19.tm_sec);
  v16 = sub_2338A9B94(a1);
  v17 = sub_2338A9BFC(a2);
  v18 = sub_2338A9B78(a2);
  sub_2337830C4(v16, v17, v18, v15);
}

void sub_2338B3E58(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_2338B3E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  sub_2338B5928(a1, a8, a9);
  sub_2338B5928(a1, a8 + 4, a9);
  sub_2338B5B6C(a1, a8 + 8, a9);
  sub_2338B5928(a1, a8 + 12, a9);
  sub_2338B5928(a1, a8 + 16, a9);
  sub_2338B5928(a1, a8 + 20, a9);
  sub_2338B5928(a1, a8 + 24, a9);
  v11 = sub_2338B5928(a1, a8 + 12, a9);
  if (v11 == 90)
  {
    v15 = 6;
  }

  else
  {
    v15 = 0;
  }

  if (v11 == 180)
  {
    v15 = 3;
  }

  if (v11 == 270)
  {
    v16 = 8;
  }

  else
  {
    v16 = v15;
  }

  if (v16)
  {
    v24 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, v16, v13, v14);
    v17 = sub_2338A9B94(a1);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v24, *MEMORY[0x277CD3410], v19);

    v25 = sub_2338A9B94(a1);
    v23 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v20, v16, v21, v22);
    sub_2337830C4(v25, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B8], v23);
  }
}

void sub_2338B4074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, int a8, unsigned __int8 a9)
{
  if ((a5 & 1) == 0)
  {
    a7 = sub_2338B5928(a1, a8, a9);
  }

  v17 = sub_2338A9B94(a1);
  LODWORD(v11) = a7;
  v16 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v12, v13, v14, v15, v11);
  sub_2337830C4(v17, *MEMORY[0x277CD2E10], *MEMORY[0x277CD2E20], v16);
}

void sub_2338B413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, int a8, unsigned __int8 a9)
{
  if ((a5 & 1) == 0)
  {
    a7 = sub_2338B5928(a1, a8, a9);
  }

  *(a1 + 196) = a7;
  if (a7)
  {
    v27 = sub_2338A9BFC(a2);
    if (objc_msgSend_length(v27, v11, v12, v13, v14))
    {
      v15 = sub_2338A9B78(a2);
      v20 = objc_msgSend_length(v15, v16, v17, v18, v19);

      if (!v20)
      {
        return;
      }

      v27 = sub_2338A9B94(a1);
      v21 = sub_2338A9BFC(a2);
      v22 = sub_2338A9B78(a2);
      v26 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v23, *(a1 + 196), v24, v25);
      sub_2337830C4(v27, v21, v22, v26);
    }
  }
}

void sub_2338B4260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v10;

  _Unwind_Resume(a1);
}

BOOL sub_2338B42A4(uint64_t *a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  LODWORD(v5[0]) = 0;
  sub_233725F08(v4, a1, v5, 0);
  memset(v5, 0, 14);
  v2 = (*(**a1 + 32))(*a1, v5, 14) == 14 && sub_2338FE184(v5, 0xEuLL);
  sub_233725FD4(v4);
  return v2;
}

void sub_2338B43A0(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338B5CD0();
}

float sub_2338B4434(uint64_t a1, int a2)
{
  result = 30.0;
  if (a2 >= -160)
  {
    if (a2 <= 384)
    {
      v3 = 0;
      v4 = &word_233916180;
      for (i = 1; i != 62; ++i)
      {
        v6 = *v4;
        v4 += 4;
        v7 = a2 - v6;
        if (a2 - v6 < 0)
        {
          v7 = -v7;
        }

        v8 = a2 - word_233916178[4 * v3];
        if (v8 < 0)
        {
          v8 = word_233916178[4 * v3] - a2;
        }

        if (v7 < v8)
        {
          v3 = i;
        }
      }

      return *&word_233916178[4 * v3 + 2];
    }

    else
    {
      return 0.00025;
    }
  }

  return result;
}

void sub_2338B44A8(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2337235BC();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_23377FC40(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_2338B4580(char **a1, char a2, unint64_t a3, unint64_t a4)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v8 = xmmword_233916130;
  sub_2338B44A8(&__p, &v8);
  v8 = xmmword_233916140;
  sub_2338B44A8(&__p, &v8);
  v8 = xmmword_233916150;
  sub_2338B44A8(&__p, &v8);
  sub_2338B1160(a1, &__p, 1);
  if (a2)
  {
    sub_2338B1254(a1, a3, a4, 1);
  }

  if ((a2 & 2) != 0)
  {
    sub_2338B11B8(a1, a3, a4, 1);
  }

  *&v8 = 0x190000001F4;
  sub_2338B1194(a1, &v8, 1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_2338B4678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338B46A4(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5)
{
  v103 = *MEMORY[0x277D85DE8];
  if (a5 <= 9)
  {
    v7 = sub_2338B5928(a1, (a2 + a3 - 4), a4);
    v8 = a3 - v7;
    if (a3 > v7)
    {
      v9 = v7 + a2;
      v10 = sub_2338B59E4(a1, (v7 + a2), a4);
      v11 = v10;
      if (a5)
      {
        if (v10 - 51 < 0xFFFFFFCE || v8 != 10 * v10 + 6)
        {
          return;
        }

        goto LABEL_9;
      }

      if (v10 - 11 >= 0xFFFFFFF8 && v8 >= 10 * v10 + 6)
      {
LABEL_9:
        v102 = 0;
        memset(v101, 0, sizeof(v101));
        if (sub_2338A9730(a1, v101, 10 * v10, 0, (v9 + 2)) != 10 * v10)
        {
          return;
        }

        v12 = 0;
        v96 = v11;
        v94 = *MEMORY[0x277CD2E10];
        while (1)
        {
          v13 = v101 + 5 * v12;
          v14 = *v13;
          if (a4)
          {
            LOWORD(v14) = __rev16(v14);
            v15 = vrev32_s8(*(v13 + 1));
          }

          else
          {
            v15 = *(v13 + 1);
          }

          v16 = v14 & 0x3800;
          v17 = v14 & 0xC000;
          v18 = v15.i32[1] + a2;
          if (v17 == 0x4000)
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          v99 = v15.i32[0];
          if (v17 == 0x4000)
          {
            if (v16 == 10240 || v16 == 12288)
            {
              return;
            }
          }

          else if (v15.i32[1] >= a3 || v15.i32[0] >= a3 || v15.i32[1] + v15.i32[0] >= a3)
          {
            return;
          }

          v22 = 0;
          v23 = 23;
          v24 = &word_284931330;
          v25 = &word_284931330;
          do
          {
            v26 = *v25;
            v25 += 20;
            if (v26 == (v14 & 0x3FFF))
            {
              v22 = v24;
            }

            v24 = v25;
            --v23;
          }

          while (v23);
          if (!v22)
          {
            goto LABEL_55;
          }

          v27 = *(v22 + 24);
          v28 = *(v22 + 32);
          if (v28)
          {
            v29 = (*(v22 + 32) & 1 | v27) == 0;
          }

          else
          {
            v29 = 1;
          }

          v30 = !v29;
          if (v27)
          {
            v31 = 0;
          }

          else
          {
            v31 = v30 == 0;
          }

          if (!v31)
          {
            v32 = (a1 + (v28 >> 1));
            if (v28)
            {
              v27 = *(*v32 + v27);
            }

            (v27)(v32, v22);
            goto LABEL_55;
          }

          v33 = sub_2338A9B78(v22);
          v38 = objc_msgSend_length(v33, v34, v35, v36, v37) == 0;

          if (v38)
          {
            goto LABEL_55;
          }

          v39 = (v16 - 2048) >> 11;
          if (v39 > 3)
          {
            if (v39 - 4 >= 2)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

          if (!((v16 - 2048) >> 11))
          {
            memset(v100, 0, sizeof(v100));
            if (v99)
            {
              v41 = v99 >= 0x1FF ? 511 : v99;
              if (sub_2338A9730(a1, v100, v41, 0, v19))
              {
                *(v100 + v41) = 0;
                v42 = sub_2338A9BFC(v22);
                v47 = objc_msgSend_length(v42, v43, v44, v45, v46) == 0;

                v48 = sub_2338A9B94(a1);
                if (v47)
                {
                  v49 = sub_2338A9B78(v22);
                  v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v100, v92, v93);
                  sub_2337830C4(v48, v94, v49, v50);
                }

                else
                {
                  v49 = sub_2338A9BFC(v22);
                  v50 = sub_2338A9B78(v22);
                  v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v100, v52, v53);
                  sub_2337830C4(v48, v49, v50, v54);
                }
              }
            }

LABEL_55:
            if (v16 != 12288 && v16 != 10240)
            {
              goto LABEL_58;
            }

LABEL_57:
            sub_2338B46A4(a1, v19, v99, a4, (a5 + 1));
            goto LABEL_58;
          }

          if (v39 == 1)
          {
            break;
          }

          if (v39 == 2)
          {
            if (v17 == 0x4000)
            {
              v40 = v99;
            }

            else
            {
              v40 = sub_2338B5928(a1, v18, a4);
            }

            v69 = sub_2338A9BFC(v22);
            v74 = objc_msgSend_length(v69, v70, v71, v72, v73) == 0;

            v62 = sub_2338A9B94(a1);
            if (v74)
            {
              v86 = sub_2338A9B78(v22);
              v90 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v87, v40, v88, v89);
              sub_2337830C4(v62, v94, v86, v90);
            }

            else
            {
              v75 = sub_2338A9BFC(v22);
              v76 = sub_2338A9B78(v22);
              v80 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v77, v40, v78, v79);
              sub_2337830C4(v62, v75, v76, v80);
            }

LABEL_74:

            goto LABEL_55;
          }

LABEL_58:
          if (++v12 == v96)
          {
            return;
          }
        }

        if (v17 == 0x4000)
        {
          v55 = v99;
        }

        else
        {
          v55 = sub_2338B59E4(a1, v18, a4);
        }

        v56 = sub_2338A9BFC(v22);
        v61 = objc_msgSend_length(v56, v57, v58, v59, v60) == 0;

        v62 = sub_2338A9B94(a1);
        if (v61)
        {
          v81 = sub_2338A9B78(v22);
          v85 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v82, v55, v83, v84);
          sub_2337830C4(v62, v94, v81, v85);
        }

        else
        {
          v63 = sub_2338A9BFC(v22);
          v64 = sub_2338A9B78(v22);
          v68 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v65, v55, v66, v67);
          sub_2337830C4(v62, v63, v64, v68);
        }

        goto LABEL_74;
      }
    }
  }
}

uint64_t sub_2338B4EB0(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_2338A832C(a1, &v20);
  v18 = 0;
  sub_233754E8C(v19, &v20, &v18);
  if (*(&v20 + 1))
  {
    sub_2337239E8(*(&v20 + 1));
  }

  sub_2338A832C(a1, &v20);
  v2 = (*(*v20 + 16))(v20);
  if (*(&v20 + 1))
  {
    sub_2337239E8(*(&v20 + 1));
  }

  if (v2 >= 0x1B)
  {
    sub_2338A832C(a1, &v20);
    v3 = (**v20)(v20);
    if (*(&v20 + 1))
    {
      sub_2337239E8(*(&v20 + 1));
    }

    if (v2 - 0x100000 <= 0xE00000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if ((v4 & 1) != 0 && sub_2338A9730(a1, &v20, 14, 0, 0) == 14 && v20 == 0x45480000001A4949 && *(&v20 + 6) == 0x5244434350414548)
    {
      sub_2338B46A4(a1, 26, v2 - 26, 0, 0);
      (*(*a1 + 16))(a1);
      if (a1[18])
      {
        sub_2338A9B94(a1);
        v6 = a1[18];
        v7 = v6;
        objc_msgSend_bytes(v6, v8, v9, v10, v11);
        v12 = a1[18];
        objc_msgSend_length(v12, v13, v14, v15, v16);
        CGImagePluginReadRawXMPProps();
      }
    }
  }

  return sub_233754F18(v19);
}

void sub_2338B50C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_233754F18(va);
  _Unwind_Resume(a1);
}

void sub_2338B5144(uint64_t a1)
{
  v2 = *(a1 + 196);
  if (v2 == 23494656 || v2 == 18087936)
  {
    sub_2338B4580(a1, 1, *(a1 + 206), 0);
    if (*(a1 + 206))
    {
      v34 = sub_2338A9B94(a1);
      sub_2337830C4(v34, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8], &unk_284958828);
    }
  }

  sub_2338B6908(a1);
  if (*(a1 + 204) >= 2u)
  {
    v7 = sub_2338ADA50(a1, 0);
    v8 = *MEMORY[0x277CD3088];
    v35 = v7;
    v12 = sub_233740FAC(v7, *MEMORY[0x277CD3088], v9, v10, v11);
    v17 = v12;
    if (v12)
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = objc_msgSend_intValue(v12, v13, v14, v15, v16);
      LOWORD(v20) = *(a1 + 204);
      *&v21 = v19 / v20;
      v26 = objc_msgSend_numberWithFloat_(v18, v22, v23, v24, v25, v21);
      objc_msgSend_setObject_forKeyedSubscript_(v35, v27, v26, v8, v28);
    }
  }

  v29 = *(a1 + 200);
  if (v29 && *(a1 + 196) == 18087936)
  {
    v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%04lX%05u", v5, v6, v29 >> 16, *(a1 + 200));
    v30 = sub_2338A9B94(a1);
    sub_2337830C4(v30, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2FE0], v36);
  }

  v37 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v37, v31, @"{Temporary}", v32, v33);
}

void sub_2338B536C(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9B94(a1);
  v10 = sub_2337397B0(v6, *MEMORY[0x277CD3410], v7, v8, v9);

  memset(v55, 0, sizeof(v55));
  v54 = 0uLL;
  v53 = 0uLL;
  v11 = sub_2338A9C18(a1);
  v15 = sub_233740FAC(v11, @"JPEGImage/Offset", v12, v13, v14);

  v16 = sub_2338A9C18(a1);
  v20 = sub_233740FAC(v16, @"JPEGImage/Length", v17, v18, v19);

  v25 = 1;
  if (v15 && v20)
  {
    v51 = objc_msgSend_intValue(v15, v21, v22, v23, v24);
    v49 = objc_msgSend_intValue(v20, v26, v27, v28, v29);
    sub_233726998(&v50, &v49);
    sub_2338A820C(a1, &v51, &v50, v10, &v52);
    v54 = v52;
    v25 = v52 == 0;
  }

  v30 = sub_2338A9C18(a1);
  v34 = sub_233740FAC(v30, @"JPEGThumbnail/Offset", v31, v32, v33);

  v35 = sub_2338A9C18(a1);
  v39 = sub_233740FAC(v35, @"JPEGThumbnail/Length", v36, v37, v38);

  v44 = 1;
  if (v34 && v39)
  {
    v51 = objc_msgSend_intValue(v34, v40, v41, v42, v43);
    v49 = objc_msgSend_intValue(v39, v45, v46, v47, v48);
    sub_233726998(&v50, &v49);
    sub_2338A820C(a1, &v51, &v50, v10, &v52);
    v53 = v52;
    v44 = v52 == 0;
  }

  if (!v25)
  {
    sub_233753C74(v55, &v54);
  }

  if (!v44)
  {
    sub_233753C74(v55, &v53);
  }

  sub_2338A86B8(v55, a2, a3);

  if (*(&v53 + 1))
  {
    sub_2337239E8(*(&v53 + 1));
  }

  if (*(&v54 + 1))
  {
    sub_2337239E8(*(&v54 + 1));
  }

  *&v54 = v55;
  sub_233723948(&v54);
}

void sub_2338B55B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void **a15, std::__shared_weak_count *a16, uint64_t a17, char a18)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  a15 = &a18;
  sub_233723948(&a15);
  _Unwind_Resume(a1);
}

void sub_2338B5664(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  sub_23372518C();
}

void sub_2338B5740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  sub_233754F18(&a11);
  if (a15)
  {
    sub_2337239E8(a15);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338B5718);
}

void sub_2338B57A8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  sub_2337250F0();
}

void sub_2338B5888(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  sub_233754F18(&a11);
  if (a15)
  {
    sub_2337239E8(a15);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338B5860);
}

void sub_2338B58F0(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338B5928(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v12 = a2;
  v11 = 0;
  sub_2338A832C(a1, &v9);
  v4 = v9;
  sub_233723C18(&v8, &v12);
  v5 = (*(*v4 + 24))(v4, &v11, 4, &v8);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  v6 = bswap32(v11);
  if (((v5 == 4) & a3) != 0)
  {
    return v6;
  }

  else
  {
    return v11;
  }
}

void sub_2338B59CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338B59E4(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v13 = a2;
  v12 = 0;
  sub_2338A832C(a1, &v10);
  v4 = v10;
  sub_233723C18(&v9, &v13);
  v5 = (*(*v4 + 24))(v4, &v12, 2, &v9);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  v6 = bswap32(v12) >> 16;
  if (((v5 == 2) & a3) != 0)
  {
    return v6;
  }

  else
  {
    return v12;
  }
}

void sub_2338B5A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338B5AA8(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v13 = a2;
  v12 = 0;
  sub_2338A832C(a1, &v10);
  v4 = v10;
  sub_233723C18(&v9, &v13);
  v5 = (*(*v4 + 24))(v4, &v12, 2, &v9);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  v6 = bswap32(v12) >> 16;
  if (((v5 == 2) & a3) != 0)
  {
    return v6;
  }

  else
  {
    return v12;
  }
}

void sub_2338B5B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

float sub_2338B5B6C(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v12 = a2;
  v11 = 0.0;
  sub_2338A832C(a1, &v9);
  v4 = v9;
  sub_233723C18(&v8, &v12);
  v5 = (*(*v4 + 24))(v4, &v11, 4, &v8);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  result = v11;
  v7 = bswap32(v11);
  if (((v5 == 4) & a3) != 0)
  {
    return v7;
  }

  return result;
}

void sub_2338B5C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338B5C30(uint64_t a1, unint64_t a2)
{
  v8 = a2;
  v7 = 0;
  sub_2338A832C(a1, &v5);
  v2 = v5;
  sub_233723C18(&v4, &v8);
  (*(*v2 + 24))(v2, &v7, 1, &v4);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v7;
}

void sub_2338B5CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338B5D6C(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849317D0;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_2849316D8;
  *(a1 + 220) = -1;
  *(a1 + 224) = 0;
  return a1;
}

void sub_2338B5E18(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849317D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338B5F30(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v11)
    {
      sub_2338B8AA0(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338B600C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v10)
    {
      sub_2338B86B4(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338B60D8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v11)
    {
      sub_2338B982C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338B61B8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v10)
    {
      sub_2338FE594(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338B6284(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v10)
    {
      sub_2338B951C(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338B6350(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v11)
    {
      sub_2338B995C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338B6430(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v10)
    {
      sub_2338B9E54(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338B64FC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v10)
    {
      sub_2338BA23C(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338B65C8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v10)
    {
      sub_2338FF1E4(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338B6698(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (v11)
    {
      sub_2338FE300(v11, v12, a3, a4, a5, a6);
    }
  }
}

uint64_t sub_2338B6774(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  sub_233754E04(v4, a1);
  v6 = 0;
  v5 = 0;
  if ((*(**a1 + 32))(*a1, &v5, 12) == 12)
  {
    v2 = sub_2338FE234(&v5, 0xCuLL);
  }

  else
  {
    v2 = 0;
  }

  sub_233725FD4(v4);
  return v2;
}

void sub_2338B6864(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338BB6E8();
}

void sub_2338B6908(uint64_t a1)
{
  v2 = sub_2338B0E5C(a1);
  v3 = sub_2338A9B94(a1);
  v4 = *MEMORY[0x277CD2F50];
  v5 = sub_233739994(v3, *MEMORY[0x277CD2F50], 0);

  v6 = sub_2338A9B94(a1);
  v7 = (*(*a1 + 112))(a1);
  v8 = sub_233739994(v6, v7, 0);

  v15 = sub_233739A60(v2, @"LensModel", v9, v10, v11);
  if (!v15)
  {
    v15 = sub_233739A60(v8, *MEMORY[0x277CD2F78], v12, v13, v14);
  }

  v16 = *MEMORY[0x277CD2F68];
  if (sub_233739ACC(v5, *MEMORY[0x277CD2F68]))
  {
    v20 = sub_2337397B0(v5, v16, v17, v18, v19);
    v24 = sub_23378DDE8(v5, *MEMORY[0x277CD2F70], v21, v22, v23);
    v29 = v24;
    v30 = 0.0;
    if (v24)
    {
      v31 = 0.0;
      if (objc_msgSend_count(v24, v25, v26, v27, v28) == 4)
      {
        v43 = 0;
        v30 = sub_23386EA74(v29, &v43, v26, v27, v28);
        v43 = 1;
        v31 = sub_23386EA74(v29, &v43, v32, v33, v34);
      }
    }

    else
    {
      v31 = 0.0;
    }

    v35 = sub_23378DD98(v8, @"MaxAperture", v26, v27, v28);
    v39 = sub_23378DD98(v2, *MEMORY[0x277CD3088], v36, v37, v38);
    v41 = sub_2338B6C0C(v39, v30, v31, v35, v40, v20, v15);
    if (v41)
    {
      v42 = sub_2338A9B94(a1);
      sub_2337830C4(v42, v4, *MEMORY[0x277CD2F78], v41);
    }
  }

  sub_2338AF5B0(a1);
}

id sub_2338B6C0C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  sub_2338E9010(@"canon");
  v178 = v177 = v13;
  if (v178)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%u", v15, v16, a6);
    v21 = sub_23378DDE8(v178, v17, v18, v19, v20);

    if (v21)
    {
      v26 = 0;
      i = 4;
      while (1)
      {
        v187 = v26;
        if (v26 >= objc_msgSend_count(v21, v22, v23, v24, v25))
        {
          break;
        }

        v30 = sub_23386EAC4(v21, &v187, v27, v28, v29);
        if (objc_msgSend_count(v30, v31, v32, v33, v34) == 5)
        {
          __p.__r_.__value_.__r.__words[0] = 0;
          v38 = sub_23386E0B8(v30, &__p, v35, v36, v37);
          __p.__r_.__value_.__r.__words[0] = 1;
          v42 = sub_23386EA74(v30, &__p, v39, v40, v41);
          __p.__r_.__value_.__r.__words[0] = 2;
          v46 = sub_23386EA74(v30, &__p, v43, v44, v45);
          __p.__r_.__value_.__r.__words[0] = 3;
          v50 = sub_23386EA74(v30, &__p, v47, v48, v49);
          __p.__r_.__value_.__r.__words[0] = 4;
          v54 = sub_23386EA74(v30, &__p, v51, v52, v53);
          if (v38)
          {
            v55 = v54;
            v56 = v38;
            v61 = objc_msgSend_UTF8String(v56, v57, v58, v59, v60);
            sub_23372A488(&v186, v61);
            if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_233731FB8(&__p, v186.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v186;
            }

            *&v183 = v42;
            *(&v183 + 1) = v46;
            *&v184 = v50;
            *(&v184 + 1) = v55;
            v62 = v189;
            if (v189 >= v190)
            {
              v189 = sub_2338BAFB4(&v188, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v63 = *&__p.__r_.__value_.__l.__data_;
              *(v189 + 16) = *(&__p.__r_.__value_.__l + 2);
              *v62 = v63;
              memset(&__p, 0, sizeof(__p));
              v64 = v184;
              *(v62 + 24) = v183;
              *(v62 + 40) = v64;
              v189 = v62 + 56;
            }

            if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v186.__r_.__value_.__l.__data_);
            }
          }
        }

        v26 = v187 + 1;
      }
    }

    v65 = v188;
    v66 = v189;
    if (v189 == v188)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = &__p;
      __p.__r_.__value_.__r.__words[2] = 0x4812000000;
      *&v183 = sub_2338BA86C;
      *(&v183 + 1) = sub_2338BA8A8;
      *&v184 = "";
      v185[0] = 0;
      v185[1] = 0;
      *(&v184 + 1) = v185;
      v181[0] = MEMORY[0x277D85DD0];
      v181[1] = 3221225472;
      v181[2] = sub_2338BA8B4;
      v181[3] = &unk_2789F00C8;
      *&v181[5] = a2;
      *&v181[6] = a3;
      *&v181[7] = a4;
      *&v181[8] = a1;
      v181[4] = &__p;
      v67 = v178;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v178, v14, v181, v15, v16);
      v71 = *(__p.__r_.__value_.__l.__size_ + 64) - 3;
      if (v71 >= 0xFFFFFFFFFFFFFFFELL)
      {
        memset(&v186, 0, sizeof(v186));
        v72 = *(__p.__r_.__value_.__l.__size_ + 48);
        v73 = __p.__r_.__value_.__l.__size_ + 56;
        if (v72 == (__p.__r_.__value_.__l.__size_ + 56))
        {
          v80 = &v186;
        }

        else
        {
          do
          {
            size = HIBYTE(v186.__r_.__value_.__r.__words[2]);
            if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v186.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              std::string::append(&v186, " or ", 4uLL);
            }

            v75 = *(v72 + 55);
            if (v75 >= 0)
            {
              v76 = (v72 + 4);
            }

            else
            {
              v76 = v72[4];
            }

            if (v75 >= 0)
            {
              v77 = *(v72 + 55);
            }

            else
            {
              v77 = v72[5];
            }

            std::string::append(&v186, v76, v77);
            v78 = v72[1];
            if (v78)
            {
              do
              {
                v79 = v78;
                v78 = *v78;
              }

              while (v78);
            }

            else
            {
              do
              {
                v79 = v72[2];
                v97 = *v79 == v72;
                v72 = v79;
              }

              while (!v97);
            }

            v72 = v79;
          }

          while (v79 != v73);
          if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v80 = &v186;
          }

          else
          {
            v80 = v186.__r_.__value_.__r.__words[0];
          }

          v67 = v178;
        }

        i = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v80, v69, v70);
        if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v186.__r_.__value_.__l.__data_);
        }
      }

      _Block_object_dispose(&__p, 8);
      sub_233735DD8(&v184 + 8, v185[0]);
      if (v71 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_115;
      }

      goto LABEL_109;
    }
  }

  else
  {
    v65 = v188;
    v66 = v189;
  }

  v81 = v66 - v65;
  if (v81 == 56)
  {
    if (*(v65 + 23) < 0)
    {
      v65 = *v65;
    }

    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v65, v15, v16);
    goto LABEL_114;
  }

  v180 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * (v81 >> 3));
  v179 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v189 - v188) >> 3));
  v176 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v189 - v188) >> 3));
  v86 = v188;
  if (v189 != v188)
  {
    v87 = 0;
    do
    {
      v88 = (v86 + 56 * v87);
      if (*(v88 + 23) < 0)
      {
        sub_233731FB8(&__p, *v88, *(v88 + 1));
      }

      else
      {
        v89 = *v88;
        __p.__r_.__value_.__r.__words[2] = *(v88 + 2);
        *&__p.__r_.__value_.__l.__data_ = v89;
      }

      v90 = *(v88 + 24);
      v184 = *(v88 + 40);
      v183 = v90;
      v91 = *&v90;
      if (*&v90 != 0.0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          i = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          i = __p.__r_.__value_.__l.__size_;
        }

        if (i >= 3)
        {
          v93 = p_p + i;
          v94 = i;
          v95 = p_p;
          do
          {
            v96 = memchr(v95, 91, v94 - 2);
            if (!v96)
            {
              break;
            }

            v97 = LOWORD(v96->__r_.__value_.__l.__data_) == 22619 && v96->__r_.__value_.__s.__data_[2] == 93;
            if (v97)
            {
              if (v96 != p_p)
              {
                break;
              }

              std::string::basic_string(&v186, &__p, 4uLL, i, &v187);
              for (i = 0; i != 32; i += 8)
              {
                v108 = *(&qword_233916588 + i);
                if (fabs(a2 - *&v183 * v108) <= 0.9)
                {
                  if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, &v186, v84, v85);
                  }

                  else
                  {
                    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v186.__r_.__value_.__l.__data_, v84, v85);
                  }
                  v112 = ;
                  if (i)
                  {
                    v113 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v109, @"%@ + %.1lfx", v110, v111, v112, *&v108);

                    v112 = v113;
                  }

                  objc_msgSend_addObject_(v180, v109, v112, v110, v111);
                  if (fabs(a3 - *(&v183 + 1) * v108) <= 0.9)
                  {
                    objc_msgSend_addObject_(v179, v114, v112, v115, v116);
                    if (a4 <= 0.0 || *&v184 * v108 + -0.15 <= a4 && *(&v184 + 1) * v108 + 0.15 >= a4)
                    {
                      objc_msgSend_addObject_(v176, v117, v112, v118, v119);
                    }
                  }
                }
              }

              if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v186.__r_.__value_.__l.__data_);
              }

              goto LABEL_75;
            }

            v95 = (&v96->__r_.__value_.__l.__data_ + 1);
            v94 = v93 - v95;
          }

          while (v93 - v95 >= 3);
        }

        if (vabdd_f64(a2, v91) <= 0.9)
        {
          v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, p_p, v84, v85);
          objc_msgSend_addObject_(v180, v99, v98, v100, v101);
          if (vabdd_f64(a3, *(&v183 + 1)) <= 0.9)
          {
            objc_msgSend_addObject_(v179, v102, v98, v103, v104);
            if (a4 <= 0.0 || *&v184 + -0.15 <= a4 && *(&v184 + 1) + 0.15 >= a4)
            {
              objc_msgSend_addObject_(v176, v105, v98, v106, v107);
            }
          }
        }
      }

LABEL_75:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v87;
      v86 = v188;
    }

    while (v87 < 0x6DB6DB6DB6DB6DB7 * ((v189 - v188) >> 3));
  }

  v120 = v176;
  v67 = v178;
  v129 = v120;
  if (!objc_msgSend_count(v120, v121, v122, v123, v124))
  {
    v129 = v179;
  }

  if (!objc_msgSend_count(v129, v125, v126, v127, v128))
  {
    v134 = v180;

    v129 = v134;
  }

  v138 = objc_msgSend_count(v129, v130, v131, v132, v133);
  if (v138)
  {
    v139 = MEMORY[0x277CCAB68];
    __p.__r_.__value_.__r.__words[0] = 0;
    v140 = sub_23386E0B8(v129, &__p, v135, v136, v137);
    i = objc_msgSend_stringWithString_(v139, v141, v140, v142, v143);

    for (j = 1; ; j = __p.__r_.__value_.__r.__words[0] + 1)
    {
      __p.__r_.__value_.__r.__words[0] = j;
      if (j >= objc_msgSend_count(v129, v144, v145, v146, v147))
      {
        break;
      }

      objc_msgSend_appendString_(i, v149, @" or ", v150, v151);
      v155 = sub_23386E0B8(v129, &__p, v152, v153, v154);
      objc_msgSend_appendString_(i, v156, v155, v157, v158);
    }
  }

  if (!v138)
  {
LABEL_109:
    if (objc_msgSend_length(v177, v159, v160, v161, v162))
    {
      v166 = MEMORY[0x277CCACA8];
      if (objc_msgSend_hasPrefix_(v177, v163, @"Canon", v164, v165))
      {
        objc_msgSend_stringWithFormat_(v166, v167, @"%s%@", v168, v169, "", v177);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v166, v167, @"%s%@", v168, v169, "Canon ", v177);
      }
      v82 = ;
LABEL_114:
      i = v82;
      v67 = v178;
      goto LABEL_115;
    }

    if (a2 <= 0.0)
    {
      v175 = &stru_284938540;
      v67 = v178;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v163, @"%@", v164, v165, &stru_284938540);
    }

    else
    {
      v67 = v178;
      if (a3 <= 0.0 || a2 == a3)
      {
        v171 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v163, @" %.1lfmm", v164, v165, *&a2);
      }

      else
      {
        v171 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v163, @" %.1lf-%.1lfmm", v164, v165, *&a2, *&a3);
      }

      v175 = v171;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v172, @"%@", v173, v174, v171);
    }
    i = ;
  }

LABEL_115:

  __p.__r_.__value_.__r.__words[0] = &v188;
  sub_2338BB644(&__p);

  return i;
}

void sub_2338B75CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  sub_233735DD8(v43 + 48, a35);

  a25 = (v44 - 176);
  sub_2338BB644(&a25);

  _Unwind_Resume(a1);
}

void sub_2338B777C(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v56 = sub_233739994(v2, @"{PictStyleSetting}", 0);

  if (sub_233739ACC(v56, @"PictureStyle"))
  {
    v6 = sub_2337397B0(v56, @"PictureStyle", v3, v4, v5);
    v8 = v6 <= 0xB && ((1 << v6) & 0x8C0) != 0;
  }

  else
  {
    v8 = 0;
    v6 = -1;
  }

  v9 = sub_2338A9B94(a1);
  v10 = sub_2338AE880(v9, @"{PictStyleNormalized}", @"PictureStyle");

  if (v10)
  {
    v11 = sub_2338A9B94(a1);
    v12 = sub_2338AE900(v11, @"{PictStyleNormalized}", @"PictureStyle");

    if (v12 == 134)
    {
      v8 = 1;
    }

    if (v12 || v6 <= 1)
    {
      v14 = sub_2338B7CF0(v13, v12);
      sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v14, v12, v12);

      v6 = -1;
    }
  }

  else if (v6 < 2)
  {
    goto LABEL_17;
  }

  v15 = v6 + 4096;
  v16 = @"{PictureStyle}";
  v17 = sub_2338B7E6C(v16, v6 + 4096);
  sub_2338AD018(a1, v16, @"PictureStyle", v17, v15, v15);

LABEL_17:
  if (sub_233739ACC(v56, @"PhotoEffect"))
  {
    v21 = sub_2337397B0(v56, @"PhotoEffect", v18, v19, v20);
    v22 = v21;
    v23 = sub_2338B8048(v21, v21);
    sub_2338AD018(a1, @"{PictureStyle}", @"PhotoEffect", v23, v22, v22);

    v8 |= (v22 & 0xFFFFFFFE) == 4;
  }

  if (sub_233739ACC(v56, @"ColorTone"))
  {
    v27 = sub_2337397B0(v56, @"ColorTone", v24, v25, v26);
    sub_2338ACF60(a1, @"ColorTone", v27);
  }

  if (sub_233739ACC(v56, @"SharpnessFreq"))
  {
    v31 = sub_2337397B0(v56, @"SharpnessFreq", v28, v29, v30);
    sub_2338ACF60(a1, @"SharpnessFreq", v31);
  }

  if (sub_233739ACC(v56, @"FilterEffect"))
  {
    v35 = sub_2337397B0(v56, @"FilterEffect", v32, v33, v34);
    if (v35 > 4)
    {
      v36 = 0;
    }

    else
    {
      v36 = off_2789F00E8[v35];
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"FilterEffect", v36, v35, v35);
  }

  if (sub_233739ACC(v56, @"ToningEffect"))
  {
    v40 = sub_2337397B0(v56, @"ToningEffect", v37, v38, v39);
    if (v40 > 4)
    {
      v41 = 0;
    }

    else
    {
      v41 = off_2789F0110[v40];
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"ToningEffect", v41, v40, v40);
  }

  v42 = sub_2338A9B94(a1);
  v43 = sub_233739994(v42, @"{PictureStyle}", 0);

  if (v43)
  {
    v44 = sub_2338A9B94(a1);
    v45 = sub_2338AE880(v44, @"{PictureStyle}", @"Monochrome");

    if (!v45)
    {
      sub_2338ACF60(a1, @"Monochrome", v8 & 1);
    }

    v46 = (*(*a1 + 96))(a1);
    if ((v46 & 0x80000000) == 0)
    {
      v47 = sub_2338AD1AC(a1, v46);
      sub_2338AD018(a1, @"{PictureStyle}", @"PictStyleColorSpace", v47, v46, v46);
    }
  }

  v48 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v48, v49, @"{PictStyleSetting}", v50, v51);

  v52 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v52, v53, @"{PictStyleNormalized}", v54, v55);
}

__CFString *sub_2338B7CF0(uint64_t a1, int a2)
{
  if (a2 > 34)
  {
    v2 = @"Neutral";
    v13 = @"Faithful";
    v14 = @"Monochrome";
    if (a2 != 134)
    {
      v14 = 0;
    }

    if (a2 != 133)
    {
      v13 = v14;
    }

    if (a2 != 132)
    {
      v2 = v13;
    }

    v15 = @"Portrait";
    v16 = @"Landscape";
    if (a2 != 131)
    {
      v16 = 0;
    }

    if (a2 != 130)
    {
      v15 = v16;
    }

    if (a2 <= 131)
    {
      v2 = v15;
    }

    v7 = @"External 2";
    v17 = @"External 3";
    v18 = @"Standard";
    if (a2 != 129)
    {
      v18 = 0;
    }

    if (a2 != 67)
    {
      v17 = v18;
    }

    if (a2 != 66)
    {
      v7 = v17;
    }

    v19 = @"User Def. 3";
    v20 = @"External 1";
    if (a2 != 65)
    {
      v20 = 0;
    }

    if (a2 != 35)
    {
      v19 = v20;
    }

    if (a2 <= 65)
    {
      v7 = v19;
    }

    v12 = a2 <= 129;
  }

  else
  {
    v2 = @"CM Set 2";
    v3 = @"User Def. 1";
    v4 = @"User Def. 2";
    if (a2 != 34)
    {
      v4 = 0;
    }

    if (a2 != 33)
    {
      v3 = v4;
    }

    if (a2 != 7)
    {
      v2 = v3;
    }

    v5 = @"Low Saturation";
    v6 = @"CM Set 1";
    if (a2 != 6)
    {
      v6 = 0;
    }

    if (a2 != 5)
    {
      v5 = v6;
    }

    if (a2 <= 6)
    {
      v2 = v5;
    }

    v7 = @"Portrait";
    v8 = @"High Saturation";
    v9 = @"Adobe RGB";
    if (a2 != 4)
    {
      v9 = 0;
    }

    if (a2 != 3)
    {
      v8 = v9;
    }

    if (a2 != 2)
    {
      v7 = v8;
    }

    v10 = @"None";
    v11 = @"Standard";
    if (a2 != 1)
    {
      v11 = 0;
    }

    if (a2)
    {
      v10 = v11;
    }

    if (a2 <= 1)
    {
      v7 = v10;
    }

    v12 = a2 <= 4;
  }

  if (v12)
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

__CFString *sub_2338B7E6C(uint64_t a1, int a2)
{
  result = 0;
  switch(a2)
  {
    case 0:
      result = @"Full auto";
      break;
    case 1:
      result = @"Manual";
      break;
    case 2:
      result = @"Landscape";
      break;
    case 3:
      result = @"Fast shutter";
      break;
    case 4:
      result = @"Slow shutter";
      break;
    case 5:
      result = @"Night";
      break;
    case 6:
      result = @"Gray Scale";
      break;
    case 7:
      result = @"Sepia";
      break;
    case 8:
      result = @"Portrait";
      break;
    case 9:
      result = @"Sports";
      break;
    case 10:
      result = @"Macro";
      break;
    case 11:
      result = @"Black & White";
      break;
    case 12:
      result = @"Pan focus";
      break;
    case 13:
      result = @"Vivid";
      break;
    case 14:
      result = @"Neutral";
      break;
    case 15:
      result = @"Flash Off";
      break;
    case 16:
      result = @"Long Shutter";
      break;
    case 17:
      result = @"Super Macro";
      break;
    case 18:
      result = @"Foliage";
      break;
    case 19:
      result = @"Indoor";
      break;
    case 20:
      result = @"Fireworks";
      break;
    case 21:
      result = @"Beach";
      break;
    case 22:
      result = @"Underwater";
      break;
    case 23:
      result = @"Snow";
      break;
    case 24:
      result = @"Kids & Pets";
      break;
    case 25:
      result = @"Night Snapshot";
      break;
    case 26:
      result = @"Digital Macro";
      break;
    case 27:
      result = @"My Colors";
      break;
    case 28:
      result = @"Still Image";
      break;
    case 29:
    case 34:
    case 35:
    case 36:
    case 37:
      return result;
    case 30:
      result = @"Color Accent";
      break;
    case 31:
      result = @"Color Swap";
      break;
    case 32:
      result = @"Aquarium";
      break;
    case 33:
      result = @"ISO 3200";
      break;
    case 38:
      result = @"Creative Auto";
      break;
    default:
      if (a2 == 261)
      {
        result = @"Sunset";
      }

      else
      {
        result = 0;
      }

      break;
  }

  return result;
}

__CFString *sub_2338B8048(uint64_t a1, int a2)
{
  v2 = @"Custom";
  v3 = @"My Color Data";
  if (a2 != 100)
  {
    v3 = 0;
  }

  if (a2 != 6)
  {
    v2 = v3;
  }

  v4 = @"B & W";
  if (a2 != 5)
  {
    v4 = 0;
  }

  if (a2 == 4)
  {
    v4 = @"Sepia";
  }

  if (a2 <= 5)
  {
    v2 = v4;
  }

  v5 = @"Neutral";
  v6 = @"Smooth";
  if (a2 != 3)
  {
    v6 = 0;
  }

  if (a2 != 2)
  {
    v5 = v6;
  }

  v7 = @"Vivid";
  if (a2 != 1)
  {
    v7 = 0;
  }

  if (!a2)
  {
    v7 = @"Off";
  }

  if (a2 <= 1)
  {
    v5 = v7;
  }

  if (a2 <= 3)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2338B80E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (!a4)
  {
    v15 = *(a1 + 24);
    if (v15 >= 1)
    {
      v16 = a3 - v15;
      v17 = *(a1 + 32);
      goto LABEL_16;
    }

    v21 = 0;
    v22[0] = 0;
    *(v22 + 5) = 0;
    v20 = sub_2338A9730(a1, &v21, 20, a5, a3);
    v17 = v21 > 0xFFu;
    if (v20 == 20)
    {
      v15 = a3;
      v16 = a5;
      goto LABEL_16;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_17;
  }

  v21 = 0;
  if (sub_2338A9730(a1, &v21, 8, a5, a3 + a4 - 8) != 8)
  {
    goto LABEL_20;
  }

  v12 = v21;
  v13 = v21 == 77;
  if (v21 == 77 && BYTE1(v21) == 77 && !BYTE2(v21) && BYTE3(v21) == 42)
  {
    v14 = bswap32(HIDWORD(v21));
  }

  else
  {
    v15 = a3;
    v16 = a5;
    v17 = a6;
    if (v21 != 73)
    {
      goto LABEL_16;
    }

    v15 = a3;
    v16 = a5;
    v17 = a6;
    if (BYTE1(v21) != 73)
    {
      goto LABEL_16;
    }

    v15 = a3;
    v16 = a5;
    v17 = a6;
    if (BYTE2(v21) != 42)
    {
      goto LABEL_16;
    }

    v15 = a3;
    v16 = a5;
    v17 = a6;
    if (BYTE3(v21))
    {
      goto LABEL_16;
    }

    v14 = HIDWORD(v21);
  }

  v15 = v14;
  v16 = a3 - v14;
  *(a1 + 24) = v14;
  *(a1 + 32) = v12 == 77;
  v17 = v13;
LABEL_16:
  sub_2338ADD58(a1, @"IFD0", word_2789F0048, a3, a5, a6);
  sub_2338ADD58(a1, v11, word_284931810, v15, v16, v17 & 1);
  (*(*a1 + 160))(a1);
  v18 = 1;
LABEL_17:

  return v18;
}

uint64_t sub_2338B8334(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD33B8];
  v4 = sub_2338AE880(v2, *MEMORY[0x277CD33B8], @"UniqueModelID");

  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = sub_2338A9B94(a1);
  v6 = sub_2338AE900(v5, v3, @"UniqueModelID");

  return v6;
}

uint64_t sub_2338B83D8(uint64_t a1)
{
  v2 = sub_2338B8334(a1);
  v3 = 0;
  if (v2 > 17825791)
  {
    if (v2 > 20971519)
    {
      if (v2 > 38338559)
      {
        if (v2 <= 41025535)
        {
          if (v2 == 38338560)
          {
            return 1;
          }

          v5 = 40894464;
        }

        else
        {
          if (v2 == 41025536 || v2 == 67371008)
          {
            return 1;
          }

          v5 = 50397184;
        }
      }

      else
      {
        if (v2 <= 26738687)
        {
          if (v2 != 20971520)
          {
            v4 = 23494656;
            goto LABEL_33;
          }

          return 1;
        }

        if (v2 == 26738688 || v2 == 35848192)
        {
          return 1;
        }

        v5 = 38141952;
      }
    }

    else if (v2 > 19464191)
    {
      if (v2 <= 20381695)
      {
        if (v2 == 19464192)
        {
          return 1;
        }

        v5 = 19988480;
      }

      else
      {
        if (v2 == 20381696 || v2 == 20447232)
        {
          return 1;
        }

        v5 = 20512768;
      }
    }

    else
    {
      if (v2 > 17956863)
      {
        if (v2 != 17956864)
        {
          if (v2 == 18087936)
          {
            return v3;
          }

          v5 = 18415616;
          goto LABEL_39;
        }

        return 1;
      }

      if (v2 == 17825792)
      {
        return 1;
      }

      v5 = 17891328;
    }

LABEL_39:
    if (v2 != v5)
    {
LABEL_42:
      v7 = sub_2338A9B94(a1);
      v8 = sub_233875D18(v7, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

      v3 = sub_2338A818C(v8, @"POWERSHOT", 1);
      return v3;
    }

    return 1;
  }

  if (v2 > -2147483118)
  {
    if ((v2 + 2147483117) <= 0x3F && ((1 << (v2 - 19)) & 0x8000000A80000025) != 0 || v2 == -2147483052)
    {
      return v3;
    }

    v4 = -2147483039;
  }

  else
  {
    if ((v2 + 2147483289) <= 0x29 && ((1 << (v2 - 103)) & 0x2060000E207) != 0)
    {
      return v3;
    }

    v4 = -2147483647;
  }

LABEL_33:
  if (v2 != v4)
  {
    goto LABEL_42;
  }

  return v3;
}

double sub_2338B8654(uint64_t a1, int a2)
{
  v2 = (a2 >> 31) | 1;
  v3 = (v2 * a2) & 0x1F;
  if (v3 == 12)
  {
    v4 = 0.333333333;
  }

  else if (v3 == 20)
  {
    v4 = 0.666666667;
  }

  else
  {
    v4 = vcvtd_n_f64_u32(v3, 5uLL);
  }

  return (v4 + ((v2 * a2 + (((v2 * a2) >> 26) & 0x1F)) >> 5)) * v2;
}

void sub_2338B86B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 4);
  if (v6 >= 0xC8)
  {
    v7 = 200;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a4 + 2);
  if (v8 <= 0x6F)
  {
    v9 = v8 == 8 || v8 == 3;
    if (v9 && v6 >= 3)
    {
      sub_233726218(&__p, v7);
      v16 = *(a4 + 8);
      v17 = bswap32(v16);
      if (a6)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      v15 = v64 - __p;
      if (sub_2338A9730(a1, __p, v64 - __p, a5, v18) == v15)
      {
        if (a6)
        {
          v19 = __p;
          if (v64 != __p)
          {
            v20 = (v64 - __p) >> 1;
            do
            {
              *v19 = bswap32(*v19) >> 16;
              ++v19;
              --v20;
            }

            while (v20);
          }
        }

        v21 = sub_2338ADA50(a1, 0);
        v22 = *MEMORY[0x277CD30B0];
        v23 = sub_233739ACC(v21, *MEMORY[0x277CD30B0]);

        if (!v23)
        {
          v24 = __p;
          v25 = exp2f(vcvts_n_f32_u32(*(__p + 1), 5uLL)) * 100.0;
          v26 = (exp2f(vcvts_n_f32_u32(v24[2], 5uLL)) * 100.0) * 0.03125;
          if (v25 != INFINITY && v26 != INFINITY)
          {
            v28 = (v25 * v26) / 100.0;
            v29 = *"(knO20CCanonCR2ImageParser";
            if (v28 <= 4000000000.0)
            {
              v29 = v28;
            }

            if (v28 >= 0.0)
            {
              v30 = v29;
            }

            else
            {
              v30 = 0.0;
            }

            v31 = sub_2338ADA50(a1, 1);
            v32 = sub_2338ADAE0(v31, v22);
            v36 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v33, rintf(v30), v34, v35);
            objc_msgSend_addObject_(v32, v37, v36, v38, v39);
          }
        }

        if (v6 >= 8)
        {
          v40 = sub_2338A9B94(a1);
          v44 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v41, *(__p + 7), v42, v43);
          sub_2337830C4(v40, *MEMORY[0x277CD33B8], *MEMORY[0x277CD2E38], v44);

          if (v6 >= 0xF)
          {
            if ((*(__p + 14) - 12288) <= 7u)
            {
              v45 = dword_23391667C[(*(__p + 14) - 12288)];
              v46 = sub_2338A9B94(a1);
              v50 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v47, v45, v48, v49);
              sub_2337830C4(v46, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8], v50);
            }

            if (v6 != 15)
            {
              v51 = *(__p + 15);
              v52 = (v51 >> 31) | 1;
              v53 = v51 * v52;
              v54 = (v51 * v52) & 0x1F;
              v55 = v54 - 10;
              if (v54 - 10 < 0xD && ((0x1C07u >> v55) & 1) != 0)
              {
                v56 = dbl_2339166A0[v55];
              }

              else
              {
                v56 = vcvtd_n_f64_u32(v54, 5uLL);
              }

              v57 = sub_2338A9B94(a1);
              v62 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v58, v59, v60, v61, (v56 + (((v53 + ((v53 >> 26) & 0x1F)) << 16) >> 21)) * v52);
              sub_2337830C4(v57, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F58], v62);
            }
          }
        }
      }

      if (__p)
      {
        v64 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_2338B8A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338B8AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 4);
  if (v6 >= 0xC8)
  {
    v7 = 200;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a4 + 2);
  if (v8 <= 0x6F)
  {
    v9 = v8 == 8 || v8 == 3;
    if (v9 && v6 >= 3)
    {
      sub_233726218(&__p, v7);
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

      v16 = v156 - __p;
      if (sub_2338A9730(a1, __p, v156 - __p, a5, v19) != v16)
      {
        goto LABEL_102;
      }

      if (a6)
      {
        v20 = __p;
        if (v156 != __p)
        {
          v21 = (v156 - __p) >> 1;
          do
          {
            *v20 = bswap32(*v20) >> 16;
            ++v20;
            --v21;
          }

          while (v21);
        }
      }

      if (v6 < 6)
      {
        goto LABEL_102;
      }

      v22 = sub_2338A9B94(a1);
      v23 = sub_2338A9BFC(a3);
      v27 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, *(__p + 5), v25, v26);
      sub_2337830C4(v22, v23, @"ContinuousDrive", v27);

      if (v6 < 8)
      {
        goto LABEL_102;
      }

      v28 = *(__p + 7);
      if (v28 <= 6)
      {
        v29 = dword_233916708[v28];
        v30 = sub_2338A9B94(a1);
        v34 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v31, v29, v32, v33);
        sub_2337830C4(v30, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8], v34);
      }

      if (v6 < 0xC)
      {
        goto LABEL_102;
      }

      v35 = *(__p + 11);
      v36 = sub_2338A9B94(a1);
      v40 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v37, v35, v38, v39);
      sub_2337830C4(v36, @"{PictStyleSetting}", @"PictureStyle", v40);

      if (v6 < 0xE)
      {
        goto LABEL_102;
      }

      v42 = *(__p + 13);
      if (v42 >= 0)
      {
        v43 = *(__p + 13);
      }

      else
      {
        v43 = -v42;
      }

      if (v43 <= 0xF)
      {
        v44 = sub_2338A9B94(a1);
        v48 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v45, v42, v46, v47);
        sub_2337830C4(v44, @"{PictStyleSetting}", *MEMORY[0x277CD3018], v48);
      }

      if (v6 == 14)
      {
        goto LABEL_102;
      }

      v49 = *(__p + 14);
      if (v49 >= 0)
      {
        v50 = *(__p + 14);
      }

      else
      {
        v50 = -v49;
      }

      if (v50 <= 0xF)
      {
        v51 = sub_2338A9B94(a1);
        v55 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v52, v49, v53, v54);
        sub_2337830C4(v51, @"{PictStyleSetting}", *MEMORY[0x277CD3128], v55);
      }

      if (v6 < 0x10)
      {
        goto LABEL_102;
      }

      v56 = *(__p + 15);
      if (v56 >= 0)
      {
        v57 = *(__p + 15);
      }

      else
      {
        v57 = -v56;
      }

      if (v57 <= 0xF)
      {
        v58 = sub_2338A9B94(a1);
        v62 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v59, v56, v60, v61);
        sub_2337830C4(v58, @"{PictStyleSetting}", *MEMORY[0x277CD3150], v62);
      }

      if (v6 < 0x29)
      {
        if (v6 == 16)
        {
LABEL_102:
          if (__p)
          {
            v156 = __p;
            operator delete(__p);
          }

          return;
        }
      }

      else
      {
        v63 = sub_2338B8048(v41, *(__p + 40));

        if (v63)
        {
          v64 = sub_2338A9B94(a1);
          v68 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v65, *(__p + 40), v66, v67);
          sub_2337830C4(v64, @"{PictStyleSetting}", @"PhotoEffect", v68);
        }

        if (v6 >= 0x2B)
        {
          v69 = *(__p + 42);
          v70 = v69 >= 0 ? *(__p + 42) : -v69;
          if (v70 <= 0xF)
          {
            v71 = sub_2338A9B94(a1);
            v75 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v72, v69, v73, v74);
            sub_2337830C4(v71, @"{PictStyleSetting}", @"ColorTone", v75);
          }
        }
      }

      v76 = *(__p + 16);
      if (v76 != 0x7FFF)
      {
        v77 = v76 - 0x4000;
        if (v76 > 0x4000)
        {
          v78 = sub_2338ADA50(a1, 0);
          v79 = *MEMORY[0x277CD30B0];
          v80 = sub_233739ACC(v78, *MEMORY[0x277CD30B0]);

          if (!v80)
          {
            v81 = sub_2338ADA50(a1, 1);
            v82 = sub_2337E2674(v81, v79);
            v86 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v83, v77, v84, v85);
            objc_msgSend_addObject_(v82, v87, v86, v88, v89);
          }
        }
      }

      if (v6 < 0x14)
      {
        goto LABEL_102;
      }

      v90 = *(__p + 19);
      if (v90 <= 0x3000)
      {
        if (v90 != 8197)
        {
          if (v90 != 12288)
          {
            goto LABEL_63;
          }

          v91 = 0;
LABEL_62:
          v92 = sub_2338A9B94(a1);
          v96 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v93, v91, v94, v95);
          sub_2337830C4(v92, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8], v96);

          goto LABEL_63;
        }
      }

      else if (v90 - 12289 >= 4)
      {
        if (v90 == 16390)
        {
          v91 = 2;
          goto LABEL_62;
        }

        if (v90 != 16385)
        {
LABEL_63:
          if (v6 != 20)
          {
            if (*(__p + 20) - 1 <= 4)
            {
              v97 = dword_233916724[(*(__p + 20) - 1)];
              v98 = sub_2338A9B94(a1);
              v102 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v99, v97, v100, v101);
              sub_2337830C4(v98, *MEMORY[0x277CD3038], *MEMORY[0x277CD3058], v102);
            }

            if (v6 >= 0x17)
            {
              if (*(__p + 22) && *(__p + 22) != 0xFFFF)
              {
                v103 = sub_2338A9B94(a1);
                v107 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v104, *(__p + 22), v105, v106);
                sub_2337830C4(v103, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68], v107);
              }

              if (v6 >= 0x1A)
              {
                if (*(__p + 25) && *(__p + 23) && *(__p + 24))
                {
                  sub_2338ACBFC(a1, *(__p + 24) / *(__p + 25), *(__p + 23) / *(__p + 25), 0.0, 0.0);
                }

                if (v6 >= 0x1C)
                {
                  v108 = *(__p + 26);
                  v109 = sub_2338A9B94(a1);
                  v110 = sub_2337854A4(v109, *MEMORY[0x277CD33B8], 0);

                  if (v108 != 0xFFFF)
                  {
                    v111 = *(__p + 26);
                    v112 = (v111 >> 31) | 1;
                    v113 = v111 * v112;
                    v114 = v113 & 0x1F;
                    if (v114 == 12)
                    {
                      v115 = 0.333333333;
                    }

                    else if (v114 == 20)
                    {
                      v115 = 0.666666667;
                    }

                    else
                    {
                      v115 = vcvtd_n_f64_u32(v114, 5uLL);
                    }

                    v116 = exp2((v115 + (((v113 + ((v113 >> 26) & 0x1F)) << 16) >> 21)) * v112 * 0.5);
                    v121 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v117, v118, v119, v120);
                    objc_msgSend_setObject_forKeyedSubscript_(v110, v122, v121, @"MaxAperture", v123);

                    v124 = sub_2338ADA50(a1, 0);
                    v125 = *MEMORY[0x277CD30E8];
                    v126 = sub_233739ACC(v124, *MEMORY[0x277CD30E8]);

                    if (!v126)
                    {
                      v131 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v127, v128, v129, v130, v116);
                      v132 = sub_2338ADA50(a1, 1);
                      objc_msgSend_setObject_forKeyedSubscript_(v132, v133, v131, v125, v134);
                    }

                    v135 = *(__p + 27);
                    v136 = (v135 >> 31) | 1;
                    v137 = v135 * v136;
                    v138 = v137 & 0x1F;
                    if (v138 == 12)
                    {
                      v139 = 0.333333333;
                    }

                    else if (v138 == 20)
                    {
                      v139 = 0.666666667;
                    }

                    else
                    {
                      v139 = vcvtd_n_f64_u32(v138, 5uLL);
                    }

                    v140 = exp2((v139 + (((v137 + ((v137 >> 26) & 0x1F)) << 16) >> 21)) * v136 * 0.5);
                    v145 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v141, v142, v143, v144, v140);
                    objc_msgSend_setObject_forKeyedSubscript_(v110, v146, v145, @"MinAperture", v147);
                  }

                  if (v6 >= 0x23)
                  {
                    v148 = *(__p + 34);
                    if (v148 > 3)
                    {
                      v149 = 3;
                    }

                    else
                    {
                      v149 = dword_233916160[v148];
                    }

                    v150 = sub_2338A9B94(a1);
                    v154 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v151, v149, v152, v153);
                    sub_2337830C4(v150, *MEMORY[0x277CD2F50], @"ImageStabilization", v154);
                  }
                }
              }
            }
          }

          goto LABEL_102;
        }
      }

      v91 = 1;
      goto LABEL_62;
    }
  }
}

void sub_2338B93F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338B951C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 2);
  if (v6 <= 0x6F && (v6 == 8 || v6 == 3))
  {
    v9 = *(a4 + 4);
    if (v9 >= 3)
    {
      if (v9 >= 0x32)
      {
        v13 = 50;
      }

      else
      {
        v13 = v9;
      }

      sub_2337560FC(&__p, v13);
      v15 = *(a4 + 8);
      v16 = bswap32(v15);
      if (a6)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      v14 = v46 - __p;
      if (sub_2338A9730(a1, __p, v46 - __p, a5, v17) == v14)
      {
        v18 = *(__p + 2);
        v19 = bswap32(v18) >> 16;
        if (a6)
        {
          LOWORD(v18) = v19;
        }

        v20 = v18;
        if (v20 >= 2)
        {
          v21 = sub_2338A9B94(a1);
          v22 = *MEMORY[0x277CD2F50];
          v23 = *MEMORY[0x277CD2F60];
          v24 = sub_2338AE880(v21, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F60]);

          if (v24)
          {
            v25 = sub_2338A9B94(a1);
            v24 = sub_2338AE900(v25, v22, v23);
          }

          if (v24 < v20)
          {
            v26 = sub_2338A9B94(a1);
            v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v27, v20, v28, v29);
            sub_2337830C4(v26, v22, v23, v30);
          }
        }

        if (v9 >= 0xF)
        {
          v31 = bswap32(*(__p + 14)) >> 16;
          if (a6)
          {
            v32 = v31;
          }

          else
          {
            v32 = *(__p + 14);
          }

          if (v32 <= 4u)
          {
            v33 = sub_2338A9B94(a1);
            v37 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v34, v32, v35, v36);
            sub_2337830C4(v33, @"{PictStyleSetting}", @"FilterEffect", v37);
          }

          if (v9 != 15)
          {
            v38 = bswap32(*(__p + 15)) >> 16;
            if (a6)
            {
              v39 = v38;
            }

            else
            {
              v39 = *(__p + 15);
            }

            if (v39 <= 4u)
            {
              v40 = sub_2338A9B94(a1);
              v44 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v41, v39, v42, v43);
              sub_2337830C4(v40, @"{PictStyleSetting}", @"ToningEffect", v44);
            }
          }
        }
      }

      if (__p)
      {
        v46 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_2338B97B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338B982C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v19 = a2;
  v11 = sub_2338AABA4(a1, v19, a3, a4, a5, a6);
  if (v11 != -1)
  {
    v12 = sub_2338A9B94(a1);
    v13 = sub_2338A9BFC(a3);
    v14 = sub_2338A9B78(a3);
    v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v15, v11, v16, v17);
    sub_2337830C4(v12, v13, v14, v18);
  }
}

void sub_2338B9924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2338B995C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  v49 = 0;
  v12 = *(a4 + 8);
  v13 = bswap32(v12);
  if (a6)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = sub_2338A9730(a1, &v49, 2, a5, v14);
  v16 = v49;
  v17 = bswap32(v49) >> 16;
  if (a6)
  {
    v16 = v17;
  }

  v49 = v16;
  if (v15 == 2 && (v16 - 7) <= 0xFF8u && (v16 & 3) == 0)
  {
    sub_2338B1C48(&__p, v16);
    v19 = *(a4 + 8);
    v20 = bswap32(v19);
    if (a6)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = sub_2338A9730(a1, __p, v48 - __p, a5, v21);
    v23 = __p;
    if (v22 == v48 - __p)
    {
      v45 = v11;
      v46 = v48;
      v24 = __p + 8;
      if (__p + 8 < v48)
      {
        do
        {
          v25 = (v24 + 12);
          if ((v24 + 12) > v46)
          {
            break;
          }

          v26 = *(v24 + 1);
          v27 = bswap32(v26);
          if (a6)
          {
            v26 = v27;
          }

          v28 = (v26 & 3) == 0 && v26 >= 8;
          v29 = !v28 || v26 > v49;
          v30 = &v24[v26 + 4];
          if (v29 || v30 > v46)
          {
            break;
          }

          if (v26 >= 0x11)
          {
            v32 = (v24 + 20);
            do
            {
              v33 = *v25;
              if (a6)
              {
                v33 = bswap32(v33);
                v34 = bswap32(v25[1]);
              }

              else
              {
                v34 = v25[1];
              }

              v25 = &v32[v34];
              if (v34 >= v49 || v25 > v30)
              {
                goto LABEL_46;
              }

              if (v33 == 2062)
              {
                v36 = *v32;
                v37 = sub_2338A9B94(a1);
                v38 = bswap32(v36);
                if (a6)
                {
                  v39 = v38;
                }

                else
                {
                  v39 = v36;
                }

                v40 = sub_2338A9BFC(a3);
                v44 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v41, v39, v42, v43);
                sub_2337830C4(v37, v40, @"AspectRatioInfo", v44);
              }

              v32 = v25 + 2;
            }

            while ((v25 + 2) < v30);
          }

          v24 = v30;
        }

        while (v30 < v46);
      }

LABEL_46:
      v23 = __p;
      v11 = v45;
    }

    if (v23)
    {
      v48 = v23;
      operator delete(v23);
    }
  }
}

void sub_2338B9BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338B9BF8(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v8 = a3;
  v9 = v8;
  v10 = 0;
  if (a2 <= -2147483277)
  {
    if (a2 != -2147483647)
    {
      if (a2 != -2147483289)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }

LABEL_9:
    v11 = 0x92000000DB0;
    goto LABEL_10;
  }

  if (a2 == -2147483276)
  {
    goto LABEL_9;
  }

  if (a2 != -2147483256)
  {
    if (a2 != -2147483086)
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

LABEL_8:
  v11 = 0xD0000001380;
LABEL_10:
  *a5 = v11;
  if (!v8)
  {
    goto LABEL_22;
  }

  v12 = sub_2338B9D7C(v8, 0);
  v13 = sub_2338B9D7C(v9, 1uLL);
  v14 = sub_2338B9D7C(v9, 2uLL);
  if (v12 <= 0x41)
  {
    v15 = -529;
  }

  else
  {
    v15 = -522;
  }

  v16 = v15 + 10 * v13 + v14;
  if (v12 > 0x42)
  {
    v16 += 10;
  }

  if (v12 > 0x43)
  {
    v16 += 11;
  }

  if (v12 > 0x44)
  {
    v16 += 10;
  }

  if (v16 < 0x2D)
  {
    v17 = dword_233916420[v16];
    v18 = dword_2339164D4[v16];
    *a4 = v17;
    *(a4 + 4) = v18;
    *(a4 + 8) = 0xA400000076;
    v10 = 1;
  }

  else
  {
LABEL_22:
    v10 = 0;
  }

LABEL_23:

  return v10;
}

uint64_t sub_2338B9D7C(void *a1, unint64_t a2)
{
  v3 = a1;
  if (objc_msgSend_length(v3, v4, v5, v6, v7) <= a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_msgSend_characterAtIndex_(v3, v8, a2, v9, v10);
  }

  return v11;
}

id sub_2338B9DE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a2 >= objc_msgSend_length(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", a2, a3, a4, a5) / 0xCuLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_substringWithRange_(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", v6, 12 * v5, 12, v7);
  }

  return v8;
}

void sub_2338B9E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 2) - 112 >= 0xFFFFFF91)
  {
    v7 = qword_2339165C0[*(a4 + 2)];
    v8 = v7 * *(a4 + 4);
    if (v8 <= 0x4000)
    {
      sub_233726154(&v60, v8);
      v12 = *(a4 + 8);
      v13 = bswap32(v12);
      if (a6)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      v15 = sub_2338A9730(a1, v60, v61 - v60, a5, v14);
      v16 = v60;
      if (v15 == v61 - v60)
      {
        v17 = sub_2338B8334(a1);
        v18 = sub_2338B83D8(a1);
        v19 = v15 / v7;
        if (v19 >= 8)
        {
          v20 = v18;
          v53 = v15;
          if (a6)
          {
            *v16 = vrev16q_s8(*v16);
          }

          v21 = v16->u16[0];
          v22 = v21 >= v16->u16[1] ? v16->u16[1] : v16->u16[0];
          v23 = v16->i16[5];
          LODWORD(v59) = v16->i16[4];
          HIDWORD(v59) = v23;
          v24 = v16->i16[6];
          v25 = v16->i16[7];
          sub_2338B1194(a1, &v59, 1);
          if ((v21 - 1) <= 0x62u)
          {
            v51 = v22;
            v52 = a1;
            __p = 0;
            v57 = 0;
            v29 = v16 + 1;
            v30 = v21 + 8;
            v31 = v21;
            v58 = 0;
            do
            {
              if (v30 < v19)
              {
                if (a6)
                {
                  v29->i16[0] = bswap32(v29->u16[0]) >> 16;
                  v32 = bswap32(v29->u16[v21]) >> 16;
                }

                else
                {
                  LOWORD(v32) = v29->i16[v21];
                }

                v29->i16[v21] = v32;
                v32 = v32;
                if (v20)
                {
                  v32 = -v32;
                }

                LODWORD(v55) = v29->i16[0];
                DWORD1(v55) = v32;
                sub_2337238F0(&v55 + 2, v24, v25);
                sub_2338B44A8(&__p, &v55);
              }

              v29 = (v29 + 2);
              ++v30;
              --v31;
            }

            while (v31);
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 4 * v21 + 16;
            v39 = __p + 4;
            v40 = 2147484020;
            do
            {
              if (v38 + v33 < v53)
              {
                v26 = 0;
                v27 = v39;
                do
                {
                  if ((v17 == -2147483256 || v17 == -2147483276) && (v57 - __p) >> 4 > (v34 + v26) && (v28 = *v27, v28 == -1))
                  {
                    ++v37;
                  }

                  else
                  {
                    v28 = v60->u8[v38 + v33] >> v26;
                    v41 = v34 + v26 - v37;
                    v42 = 1 << v41;
                    v43 = (v41 & 0x40) == 0;
                    if ((v41 & 0x40) != 0)
                    {
                      v44 = 0;
                    }

                    else
                    {
                      v44 = 1 << v41;
                    }

                    if (v43)
                    {
                      v42 = 0;
                    }

                    v45 = v42 | v36;
                    v46 = v44 | v35;
                    if (v28)
                    {
                      v35 = v46;
                      v36 = v45;
                    }
                  }

                  ++v26;
                  v27 += 4;
                }

                while (v26 != 8);
              }

              ++v33;
              v34 += 8;
              v39 += 128;
            }

            while (v33 != ((v21 - 1) >> 3) + 1);
            if ((v17 == -2147483256 || v17 == -2147483276) && v51)
            {
              v47 = 0;
              for (i = 0; i != v51; ++i)
              {
                v55 = 0uLL;
                v49 = sub_2338B9DE0(v40, i, v26, v27, v28);
                v50 = sub_2338B9BF8(v49, v17, v49, &v55, &v54);

                if (v50)
                {
                  v40 = __p;
                  if (i >= (v57 - __p) >> 4)
                  {
                    goto LABEL_51;
                  }

                  *(__p + v47) = v55;
                }

                v47 += 16;
              }
            }

            sub_2338B1254(v52, v35, v36, 1);
            sub_2338B1160(v52, &__p, 1);
            v40 = __p;
LABEL_51:
            if (v40)
            {
              v57 = v40;
              operator delete(v40);
            }
          }
        }

        v16 = v60;
      }

      if (v16)
      {
        v61 = v16;
        operator delete(v16);
      }
    }
  }
}

void sub_2338BA1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338BA23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 2) - 112 >= 0xFFFFFF91)
  {
    v7 = qword_2339165C0[*(a4 + 2)];
    v8 = v7 * *(a4 + 4);
    if (v8 <= 0x4000)
    {
      sub_233726154(&v69, v8);
      v11 = *(a4 + 8);
      v12 = bswap32(v11);
      if (a6)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      v14 = sub_2338A9730(a1, v69, v70 - v69, a5, v13);
      v15 = v69;
      if (v14 != v70 - v69)
      {
        goto LABEL_82;
      }

      v62 = sub_2338B83D8(a1);
      v16 = v14 / v7;
      if (v14 / v7 < 8)
      {
LABEL_81:
        v15 = v69;
LABEL_82:
        if (v15)
        {
          v70 = v15;
          operator delete(v15);
        }

        return;
      }

      if (a6)
      {
        *v15 = vrev16q_s8(*v15);
      }

      v17 = v15->u16[1];
      v18 = v15->u16[2];
      if (v18 >= v15->u16[3])
      {
        v19 = v15->u16[3];
      }

      else
      {
        v19 = v15->u16[2];
      }

      v20 = v15->i16[7];
      LODWORD(v68) = v15->i16[6];
      HIDWORD(v68) = v20;
      sub_2338B1194(a1, &v68, 1);
      if (v17 > 5)
      {
        v21 = @"UNKNOWN  AF MODE";
      }

      else
      {
        v21 = off_2789F0138[v17];
      }

      sub_2338AC594(a1, v21, 0, 0);
      if (v17 > 3)
      {
        if (v17 != 4)
        {
          if (v17 != 5)
          {
LABEL_26:
            if ((v18 - 1) <= 0x62u)
            {
              v60 = a1;
              v61 = v18;
              __p = 0;
              v66 = 0;
              v67 = 0;
              v23 = v19;
              if (v19)
              {
                v24 = 0;
                v25 = v15 + 1;
                v26 = v18 + 8;
                v27 = v18 + 8 + 2 * v18;
                v28 = &v25->i8[6 * v18];
                v29 = &v25->i8[4 * v18];
                v30 = &v25->i8[2 * v18];
                do
                {
                  if (v26 + v24 >= v16)
                  {
                    v33 = 0;
                    v34 = 0;
                  }

                  else
                  {
                    v31 = v25->u16[v24];
                    if (a6)
                    {
                      LOWORD(v31) = __rev16(v31);
                      v32 = bswap32(*&v30[2 * v24]) >> 16;
                    }

                    else
                    {
                      LOWORD(v32) = *&v30[2 * v24];
                    }

                    v34 = v31;
                    v33 = v32;
                  }

                  if (v27 + v24 >= v16)
                  {
                    v36 = 0;
                    v35 = 0;
                  }

                  else
                  {
                    v35 = *&v29[2 * v24];
                    if (a6)
                    {
                      LOWORD(v35) = __rev16(v35);
                      v36 = bswap32(*&v28[2 * v24]) >> 16;
                    }

                    else
                    {
                      LOWORD(v36) = *&v28[2 * v24];
                    }

                    v35 = v35;
                    v36 = v36;
                    if (v62)
                    {
                      v36 = -v36;
                    }
                  }

                  *&v64 = __PAIR64__(v36, v35);
                  sub_2337238F0(&v64 + 2, v34, v33);
                  sub_2338B44A8(&__p, &v64);
                  ++v24;
                }

                while (v23 != v24);
              }

              a1 = v60;
              sub_2338B1160(v60, &__p, 1);
              LODWORD(v19) = v23;
              v18 = v61;
              if (__p)
              {
                v66 = __p;
                operator delete(__p);
              }
            }

            v37 = 4 * v18 + 8;
            if (v19)
            {
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 2 * v37;
              v43 = (v19 - 1) >> 3;
              do
              {
                if (v42 + v39 < v14)
                {
                  for (i = 0; i != 8; ++i)
                  {
                    if ((v69->u8[v42 + v39] >> i))
                    {
                      v45 = v38 + i;
                      if ((v38 + i) > 0x7F)
                      {
                        goto LABEL_81;
                      }

                      v46 = 1 << v45;
                      v47 = (v45 & 0x40) == 0;
                      if (((v38 + i) & 0x40) != 0)
                      {
                        v48 = 0;
                      }

                      else
                      {
                        v48 = 1 << v45;
                      }

                      if (v47)
                      {
                        v46 = 0;
                      }

                      v41 |= v46;
                      v40 |= v48;
                    }
                  }
                }

                ++v39;
                v38 += 8;
              }

              while (v39 != v43 + 1);
              v49 = (v43 + 2) >> 1;
            }

            else
            {
              v49 = 0;
              v40 = 0;
              v41 = 0;
            }

            sub_2338B1254(a1, v40, v41, 1);
            v50 = 2 * (v37 + v49);
            if (v50 < v14)
            {
              if (v19)
              {
                v51 = 0;
                v52 = 0;
                v53 = 0;
                v54 = 0;
                do
                {
                  if (v50 + v52 < v14)
                  {
                    for (j = 0; j != 8; ++j)
                    {
                      if ((v69->u8[v50 + v52] >> j))
                      {
                        v56 = v51 + j;
                        if ((v51 + j) > 0x7F)
                        {
                          goto LABEL_81;
                        }

                        v57 = 1 << v56;
                        v58 = (v56 & 0x40) == 0;
                        if (((v51 + j) & 0x40) != 0)
                        {
                          v59 = 0;
                        }

                        else
                        {
                          v59 = 1 << v56;
                        }

                        if (v58)
                        {
                          v57 = 0;
                        }

                        v54 |= v57;
                        v53 |= v59;
                      }
                    }
                  }

                  ++v52;
                  v51 += 8;
                }

                while (v52 != ((v19 - 1) >> 3) + 1);
              }

              else
              {
                v53 = 0;
                v54 = 0;
              }

              sub_2338B11B8(a1, v53, v54, 1);
            }

            goto LABEL_81;
          }

          v22 = sub_2338A9B94(a1);
          sub_2337830C4(v22, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8], &unk_284958870);
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
        if (!v17)
        {
          v22 = sub_2338A9B94(a1);
          sub_2337830C4(v22, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8], &unk_284958840);
          goto LABEL_25;
        }

        if (v17 != 2)
        {
          goto LABEL_26;
        }
      }

      v22 = sub_2338A9B94(a1);
      sub_2337830C4(v22, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8], &unk_284958858);
      goto LABEL_25;
    }
  }
}

void sub_2338BA700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338BA75C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v9 = v6;
  if (v5)
  {
    if (v6)
    {
      v10 = objc_msgSend_compare_options_(v5, v7, v6, a3, v8);
    }

    else
    {
      v10 = 1;
    }
  }

  else if (v6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_2338BA7E8(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931BC0, 0);
    if (a1)
    {
      a1 = sub_2338B9DE0(a1, a2, v4, v5, v6);
    }

    v2 = vars8;
  }

  return a1;
}

void *sub_2338BA86C(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void sub_2338BA8B4(uint64_t a1, void *a2, void *a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v94 = a2;
  v95 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v96 = a1;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = v95;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v101, v114, 16, v94);
    if (!v6)
    {
      goto LABEL_46;
    }

    v7 = *v102;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v102 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v101 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v9, v10, v11, v12, v13) == 5)
        {
          v16 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0, v14, v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = objc_msgSend_objectAtIndexedSubscript_(v9, v17, 1, v18, v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = objc_msgSend_objectAtIndexedSubscript_(v9, v21, 2, v22, v23);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = objc_msgSend_objectAtIndexedSubscript_(v9, v25, 3, v26, v27);
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if ((isKindOfClass & 1) == 0)
                {
                  goto LABEL_34;
                }

                v16 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0, v30, v31);
                v35 = objc_msgSend_objectAtIndexedSubscript_(v9, v32, 1, v33, v34);
                objc_msgSend_doubleValue(v35, v36, v37, v38, v39);
                v41 = v40;

                v45 = objc_msgSend_objectAtIndexedSubscript_(v9, v42, 2, v43, v44);
                objc_msgSend_doubleValue(v45, v46, v47, v48, v49);
                v51 = v50;

                v55 = objc_msgSend_objectAtIndexedSubscript_(v9, v52, 3, v53, v54);
                objc_msgSend_doubleValue(v55, v56, v57, v58, v59);
                v61 = v60;

                if (objc_msgSend_hasPrefix_(v16, v62, @"[X]", v63, v64))
                {
                  v68 = objc_msgSend_substringFromIndex_(v16, v65, 4, v66, v67);
                  sub_23372A488(__p, "");
                  v107 = 0x3FF0000000000000;
                  sub_23372A488(v108, " +1.4x");
                  v109 = 0x3FF6666666666666;
                  sub_23372A488(v110, " +2x");
                  v111 = 0x4000000000000000;
                  sub_23372A488(v112, " +2.8x");
                  v113 = 0x4006666666666666;
                  v99 = 0;
                  v100 = 0;
                  v98 = 0;
                  sub_2338BB348(&v98, __p, v114, 4uLL);
                  for (i = 0; i != -128; i -= 32)
                  {
                    if (v112[i + 23] < 0)
                    {
                      operator delete(*&v112[i]);
                    }
                  }

                  v71 = v98;
                  v70 = v99;
                  while (v71 != v70)
                  {
                    if (vabdd_f64(*(v96 + 40), v41) < 0.01 && vabdd_f64(*(v96 + 48), v51) < 0.01)
                    {
                      v72 = *(v96 + 56);
                      v73 = *(v71 + 24);
                      if (v72 == 0.0 || fabs(v72 - v73 * v61) < 0.1)
                      {
                        v74 = *(v96 + 64);
                        v75 = v73 * v41 + -1.0;
                        v76 = v73 * v51 + 1.0;
                        if (v74 >= v75 && v74 <= v76)
                        {
                          v78 = *(*(v96 + 32) + 8);
                          v79 = v68;
                          objc_msgSend_UTF8String(v68, v80, v81, v82, v83);
                          std::operator+<char>();
                          sub_2338BB8A0(v78 + 48, __p);
                          if (v106 < 0)
                          {
                            operator delete(__p[0]);
                          }
                        }
                      }
                    }

                    v71 += 32;
                  }

                  __p[0] = &v98;
                  sub_2338BB5A0(__p);
                }

                else if (vabdd_f64(*(v96 + 40), v41) < 0.01 && vabdd_f64(*(v96 + 48), v51) < 0.01)
                {
                  v84 = *(v96 + 56);
                  if (v84 == 0.0 || vabdd_f64(v84, v61) < 0.1)
                  {
                    v85 = *(v96 + 64);
                    if (v85 >= v41 + -1.0 && v85 <= v51 + 1.0)
                    {
                      v86 = *(*(v96 + 32) + 8);
                      v87 = v16;
                      v92 = objc_msgSend_UTF8String(v16, v88, v89, v90, v91);
                      sub_23372A488(__p, v92);
                      sub_2338BB8A0(v86 + 48, __p);
                      if (v106 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }
                  }
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }
        }

LABEL_34:
        ++v8;
      }

      while (v8 != v6);
      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v101, v114, 16);
      v6 = v93;
      if (!v93)
      {
LABEL_46:

        break;
      }
    }
  }
}

void sub_2338BAE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338BAFB4(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_2337235BC();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_2338BB114(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v9;
  *&v18 = 56 * v2 + 56;
  v10 = *(a1 + 8);
  v11 = 56 * v2 + *a1 - v10;
  sub_2338BB170(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2338BB2B4(&v16);
  return v15;
}

void sub_2338BB100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2338BB2B4(va);
  _Unwind_Resume(a1);
}

void sub_2338BB114(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_2337236AC();
}

uint64_t sub_2338BB170(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 56);
    }
  }

  return sub_2338BB234(v10);
}

uint64_t sub_2338BB234(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2338BB26C(a1);
  }

  return a1;
}

void sub_2338BB26C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 33);
    v1 -= 7;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_2338BB2B4(uint64_t a1)
{
  sub_2338BB2EC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2338BB2EC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 7;
      *(a1 + 16) = v2 - 7;
      if (*(v2 - 33) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_2338BB348(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2338BB3D0(result, a4);
  }

  return result;
}

void sub_2338BB3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2338BB5A0(&a9);
  _Unwind_Resume(a1);
}

void sub_2338BB3D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2338BB40C(a1, a2);
  }

  sub_2337235BC();
}

void sub_2338BB40C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_2337236AC();
}

void *sub_2338BB454(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_233731FB8(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_2338BB520(v10);
  return v4;
}

uint64_t sub_2338BB520(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2338BB558(a1);
  }

  return a1;
}

void sub_2338BB558(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_2338BB5A0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2338BB5F4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2338BB5F4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_2338BB644(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2338BB698(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2338BB698(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 33);
    v3 -= 7;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *sub_2338BB784(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284931BE8;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284931AF0;
  return a1;
}

void sub_2338BB824(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284931BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338BB8A0(uint64_t a1, void **a2)
{
  v2 = *sub_233757640(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2338BB9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2338A9730(v5, a2, 1, v6, a5);
}

uint64_t sub_2338BBA14(uint64_t a1, uint64_t a2)
{

  return sub_2338A9730(v3, a2, 2, v4, v2 + v5);
}

void sub_2338BBA5C(uint64_t a1, void *a2, void *a3)
{

  sub_2337830C4(v3, a2, a3, v4);
}

uint64_t sub_2338BBA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2338A9730(v5, a2, 2, v6, a5);
}

void sub_2338BBACC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284931D80, 0);
    if (v11)
    {
      sub_2338BC018(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338BBBAC(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338BC200();
}

BOOL sub_2338BBC4C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v14 = 0;
  v15[0] = 0;
  *(v15 + 5) = 0;
  v11 = sub_2338A9730(a1, &v14, 20, a5, a3);
  if (v11 == 20)
  {
    if (v14 == 1330860101 && BYTE4(v14) == 78)
    {
      sub_2338ADD58(a1, v10, word_284931C28, a3 + 8, a5, a6);
    }

    (*(*a1 + 160))(a1);
  }

  return v11 == 20;
}

void sub_2338BBD80(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9B94(a1);
  v10 = sub_2337397B0(v6, *MEMORY[0x277CD3410], v7, v8, v9);

  memset(v44, 0, sizeof(v44));
  sub_2338B0B1C(a1, a2, &v43);
  v42 = 0uLL;
  v11 = sub_2338A9C18(a1);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"IFD0/Exif/Makernote/%@/Offset", v13, v14, @"Thumbnail");
  v19 = sub_233740FAC(v11, v15, v16, v17, v18);

  v20 = sub_2338A9C18(a1);
  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"IFD0/Exif/Makernote/%@/Length", v22, v23, @"Thumbnail");
  v28 = sub_233740FAC(v20, v24, v25, v26, v27);

  v33 = 1;
  if (v19 && v28)
  {
    v40 = objc_msgSend_intValue(v19, v29, v30, v31, v32);
    v38 = objc_msgSend_intValue(v28, v34, v35, v36, v37);
    sub_233726998(&v39, &v38);
    sub_2338A820C(a1, &v40, &v39, v10, &v41);
    v42 = v41;
    v33 = v41 == 0;
  }

  if (v43)
  {
    sub_233753C74(v44, &v43);
  }

  if (!v33)
  {
    sub_233753C74(v44, &v42);
  }

  sub_2338A86B8(v44, a2, a3);

  if (*(&v42 + 1))
  {
    sub_2337239E8(*(&v42 + 1));
  }

  if (*(&v43 + 1))
  {
    sub_2337239E8(*(&v43 + 1));
  }

  *&v43 = v44;
  sub_233723948(&v43);
}

void sub_2338BBF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void **a18, std::__shared_weak_count *a19, char a20)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  a18 = &a20;
  sub_233723948(&a18);
  _Unwind_Resume(a1);
}

void sub_2338BC018(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v39 = a2;
  v11 = MEMORY[0x277CCACA8];
  v12 = sub_2338A9B78(a3);
  v16 = objc_msgSend_stringWithFormat_(v11, v13, @"%@/%@/%@", v14, v15, v39, v12, @"Offset");

  v17 = MEMORY[0x277CCACA8];
  v18 = sub_2338A9B78(a3);
  v22 = objc_msgSend_stringWithFormat_(v17, v19, @"%@/%@/%@", v20, v21, v39, v18, @"Length");

  LODWORD(v26) = *(a4 + 8);
  v27 = bswap32(v26);
  if (a6)
  {
    v26 = v27;
  }

  else
  {
    v26 = v26;
  }

  v28 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v23, v26 + a5, v24, v25);
  v29 = sub_2338A9C18(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v29, v30, v28, v16, v31);

  v35 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v32, *(a4 + 4), v33, v34);
  v36 = sub_2338A9C18(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v35, v22, v38);
}

void *sub_2338BC29C(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284931DA8;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284931CB0;
  return a1;
}

void sub_2338BC33C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284931DA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_2338BC3B8()
{
  if (qword_27DE3DE38 != -1)
  {
    sub_2338FF754();
  }

  v1 = qword_27DE3DE30;

  return v1;
}

uint64_t sub_2338BC3FC()
{
  v0 = objc_opt_new();
  v1 = qword_27DE3DE30;
  qword_27DE3DE30 = v0;

  objc_msgSend_registerDefaults_(qword_27DE3DE30, v2, &unk_28495DAC8, v3, v4);
  v7 = qword_27DE3DE30;

  return MEMORY[0x2821F9670](v7, sel_addSuiteNamed_, @"com.apple.RawCamera", v5, v6);
}

void sub_2338BC460(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932168, 0);
    if (v11)
    {
      sub_2338BE114(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338BC540(const void *a1, void *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932168, 0);
    if (v10)
    {
      sub_2338BE2B4(v10, v11, a3, a4, v12, a6);
    }
  }
}

BOOL sub_2338BC60C(uint64_t *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  LODWORD(v5[0]) = 0;
  sub_233725F08(v4, a1, v5, 0);
  v2 = (*(**a1 + 32))(*a1, v5, 8) == 8 && v5[0] == 0x4D4C4946494A5546;
  sub_233725FD4(v4);
  return v2;
}

void sub_2338BC6E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338BC70C(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338BE660();
}

uint64_t sub_2338BC7A0(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_2338A832C(a1, &v9);
  LODWORD(v8) = 0;
  sub_233725F08(v7, &v9, &v8, 0);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  sub_2338A832C(a1, &v9);
  v2 = (*(*v9 + 32))(v9, &v8, 8);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (v2 == 8 && v8 == 0x4D4C4946494A5546)
  {
    v9 = 0;
    if (sub_2338A9730(a1, &v9, 8, 0, 84) != 8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = vrev32_s8(v9);
    *(a1 + 196) = v4;
    v3 = (v4.i32[0] + 12);
  }

  else
  {
    v3 = sub_2338AEFA4();
  }

  sub_233725FD4(v7);
  return v3;
}

void sub_2338BC920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338BC994(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v10, 0, sizeof(v10));
  sub_2338B0B1C(a1, a2, &v9);
  sub_233723AE0(&v7, (a1 + 196));
  v6 = *(a1 + 200);
  sub_2338A820C(a1, &v7, &v6, 0, &v8);
  if (v9)
  {
    sub_233753C74(v10, &v9);
  }

  if (v8)
  {
    sub_233753C74(v10, &v8);
  }

  sub_2338A86B8(v10, a2, a3);
  if (*(&v8 + 1))
  {
    sub_2337239E8(*(&v8 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_2337239E8(*(&v9 + 1));
  }

  *&v9 = v10;
  sub_233723948(&v9);
}

void sub_2338BCA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    sub_2337239E8(a13);
  }

  a12 = &a14;
  sub_233723948(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_2338BCAC0(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v11 = 0;
  v12[0] = 0;
  *(v12 + 5) = 0;
  if (sub_2338A9730(a1, &v11, 20, a5, a3) == 20 && v11 == 0x4D4C4946494A5546)
  {
    sub_2338ADD58(a1, v8, word_284931E08, 12, a5 + a3, 0);
    (*(*a1 + 160))(a1);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_2338BCBE4(uint64_t a1)
{
  sub_2338BCDB4(a1);
  v2 = sub_2338A9B94(a1);
  v15 = sub_233739994(v2, @"{PictureStyle}", 0);

  if (v15)
  {
    v3 = sub_2338A9B94(a1);
    v4 = sub_2338AE880(v3, @"{PictureStyle}", @"Monochrome");

    if (!v4)
    {
      sub_2338ACF60(a1, @"Monochrome", 0);
    }

    v5 = (*(*a1 + 96))(a1);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = sub_2338AD1AC(a1, v5);
      sub_2338AD018(a1, @"{PictureStyle}", @"PictStyleColorSpace", v6, v5, v5);
    }
  }

  v7 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v7, v8, @"{PictStyleSetting}", v9, v10);

  v11 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v11, v12, @"{PictStyleNormalized}", v13, v14);
}

void sub_2338BCDB4(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v61 = sub_233739994(v2, @"{PictStyleSetting}", 0);

  v6 = 0.0;
  if (sub_233739ACC(v61, @"PictureStyle"))
  {
    v7 = sub_2337397B0(v61, @"PictureStyle", v3, v4, v5);
    v8 = v7;
    v9 = sub_2338BD270(v7, v7);
    v6 = v8;
    sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v9, v8, v8);
  }

  if (sub_233739ACC(v61, @"ColorMode"))
  {
    v13 = sub_2337397B0(v61, @"ColorMode", v10, v11, v12);
    v14 = v13;
    v15 = @"Chrome";
    v16 = @"Standard";
    if (v13)
    {
      v16 = 0;
    }

    if (v13 != 16)
    {
      v15 = v16;
    }

    if (v13 == 48)
    {
      v17 = @"Black and White";
    }

    else
    {
      v17 = v15;
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"ColorMode", v17, v6, v13);
    v18 = v14 == 48;
  }

  else
  {
    v18 = 0;
  }

  if (sub_233739ACC(v61, @"FilmSimulation"))
  {
    v22 = sub_2337397B0(v61, @"FilmSimulation", v19, v20, v21);
    v23 = v22;
    v24 = sub_2338BD3D0(v22, v22);
    sub_2338AD018(a1, @"{PictureStyle}", @"FilmSimulation", v24, v23, v23);
  }

  v25 = *MEMORY[0x277CD3150];
  if (sub_233739ACC(v61, *MEMORY[0x277CD3150]))
  {
    v29 = sub_2337397B0(v61, v25, v26, v27, v28);
    v30 = v29;
    v31 = 0.0;
    v32 = 3.0;
    v33 = -1.0;
    v34 = 1.0;
    if (v29 != 132)
    {
      v34 = 0.0;
    }

    if (v29 != 130)
    {
      v33 = v34;
    }

    if (v29 != 5)
    {
      v32 = v33;
    }

    if (v29 == 4)
    {
      v31 = 2.0;
    }

    if (v29 == 2)
    {
      v31 = -3.0;
    }

    if (v29 == 1)
    {
      v31 = -2.0;
    }

    if (v29 <= 4)
    {
      v35 = v31;
    }

    else
    {
      v35 = v32;
    }

    v36 = sub_2338BD470(v29, v29);
    sub_2338AD018(a1, @"{PictureStyle}", v25, v36, v30, v35);
  }

  v37 = *MEMORY[0x277CD3128];
  if (sub_233739ACC(v61, *MEMORY[0x277CD3128]))
  {
    v41 = sub_2337397B0(v61, v37, v38, v39, v40);
    v42 = v41;
    v43 = 0.0;
    if ((((v41 - 128) >> 7) | ((v41 - 128) << 9)) <= 5u)
    {
      v43 = flt_23391694C[(((v41 - 128) >> 7) | ((v41 - 128) << 9))];
    }

    v44 = sub_2338BD510(v41, v41);
    sub_2338AD018(a1, @"{PictureStyle}", v37, v44, v42, v43);

    v18 |= v42 == 768;
  }

  v45 = sub_2338A9B94(a1);
  v46 = *MEMORY[0x277CD3018];
  v47 = sub_2338BD598(v45, @"{PictStyleNormalized}", *MEMORY[0x277CD3018]);

  v51 = sub_233740FAC(v61, v46, v48, v49, v50);
  v56 = v51;
  if (v47)
  {
    v57 = objc_msgSend_intValue(v47, v52, v53, v54, v55);
    v58 = v57;
  }

  else
  {
    if (!v51)
    {
      goto LABEL_45;
    }

    v57 = objc_msgSend_intValue(v51, v52, v53, v54, v55);
    if (v57 == 300)
    {
      v58 = 200;
    }

    else
    {
      v58 = v57;
    }
  }

  v59 = 0.0;
  if ((((v58 - 128) >> 7) | ((v58 - 128) << 9)) <= 5u)
  {
    v59 = flt_23391694C[(((v58 - 128) >> 7) | ((v58 - 128) << 9))];
  }

  v60 = sub_2338BD510(v57, v58);
  sub_2338AD018(a1, @"{PictureStyle}", v46, v60, v58, v59);

LABEL_45:
  sub_2338ACF60(a1, @"Monochrome", v18 & 1);
}

__CFString *sub_2338BD270(uint64_t a1, int a2)
{
  if (a2 > 255)
  {
    v3 = @"Shutter speed priority AE";
    v4 = @"Manual";
    if (a2 != 768)
    {
      v4 = 0;
    }

    if (a2 != 512)
    {
      v3 = v4;
    }

    if (a2 == 256)
    {
      return @"Aperture-priority AE";
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        result = @"Auto";
        break;
      case 1:
        result = @"Portrait";
        break;
      case 2:
        result = @"Landscape";
        break;
      case 3:
        result = @"Macro";
        break;
      case 4:
        result = @"Sports";
        break;
      case 5:
        result = @"Night Scene";
        break;
      case 6:
        result = @"Program AE";
        break;
      case 7:
        result = @"Natural Light";
        break;
      case 8:
        result = @"Anti-blur";
        break;
      case 9:
        result = @"Beach and Snow";
        break;
      case 10:
        result = @"Sunset";
        break;
      case 11:
        result = @"Museum";
        break;
      case 12:
        result = @"Party";
        break;
      case 13:
        result = @"Flower";
        break;
      case 14:
        result = @"Text";
        break;
      case 15:
        result = @"Natural Light and Flash";
        break;
      case 16:
        result = @"Beach";
        break;
      case 17:
        result = @"Snow";
        break;
      case 18:
        result = @"Fireworks";
        break;
      case 19:
        result = @"Underwater";
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

__CFString *sub_2338BD3D0(uint64_t a1, unsigned __int16 a2)
{
  v2 = @"F3/Studio Portrait Ex";
  v3 = @"F4/Velvia";
  if (a2 != 1024)
  {
    v3 = 0;
  }

  if (a2 != 768)
  {
    v2 = v3;
  }

  v4 = @"F2/Fujichrome";
  if (a2 != 512)
  {
    v4 = 0;
  }

  if (a2 == 304)
  {
    v4 = @"F1c/Studio Portrait Increased Sharpness";
  }

  if (a2 <= 0x2FFu)
  {
    v2 = v4;
  }

  v5 = @"F1a/Studio Portrait Enhanced Saturation";
  v6 = @"F1b/Studio Portrait Smooth Skin Tone";
  if (a2 != 288)
  {
    v6 = 0;
  }

  if (a2 != 272)
  {
    v5 = v6;
  }

  v7 = @"F1/Studio Portrait";
  if (a2 != 256)
  {
    v7 = 0;
  }

  if (!a2)
  {
    v7 = @"F0/Standard";
  }

  if (a2 <= 0x10Fu)
  {
    v5 = v7;
  }

  if (a2 <= 0x12Fu)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

__CFString *sub_2338BD470(uint64_t a1, unsigned __int16 a2)
{
  v2 = @"Medium Hard";
  v3 = @"Film Simulation";
  if (a2 != 0x8000)
  {
    v3 = 0;
  }

  if (a2 != 132)
  {
    v2 = v3;
  }

  v4 = @"Medium Soft";
  if (a2 != 130)
  {
    v4 = 0;
  }

  if (a2 == 5)
  {
    v4 = @"Hard2";
  }

  if (a2 <= 0x83u)
  {
    v2 = v4;
  }

  v5 = @"Normal";
  v6 = @"Hard";
  if (a2 != 4)
  {
    v6 = 0;
  }

  if (a2 != 3)
  {
    v5 = v6;
  }

  v7 = @"Soft2";
  if (a2 != 2)
  {
    v7 = 0;
  }

  if (a2 == 1)
  {
    v7 = @"Soft";
  }

  if (a2 <= 2u)
  {
    v5 = v7;
  }

  if (a2 <= 4u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

__CFString *sub_2338BD510(uint64_t a1, unsigned __int16 a2)
{
  v2 = @"Black and White";
  v3 = @"Film Simulation";
  if (a2 != 0x8000)
  {
    v3 = 0;
  }

  if (a2 != 768)
  {
    v2 = v3;
  }

  v4 = @"Low";
  if (a2 != 512)
  {
    v4 = 0;
  }

  if (a2 == 384)
  {
    v4 = @"Medium Low";
  }

  if (a2 <= 0x2FFu)
  {
    v2 = v4;
  }

  v5 = @"High";
  if (a2 != 256)
  {
    v5 = 0;
  }

  if (a2 == 128)
  {
    v5 = @"Medium High";
  }

  if (!a2)
  {
    v5 = @"Normal";
  }

  if (a2 <= 0x17Fu)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

id sub_2338BD598(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_233739994(a1, a2, 0);
  v10 = sub_233740FAC(v6, v5, v7, v8, v9);

  return v10;
}

void sub_2338BD62C(char **a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = @"{Temporary}";
  v3 = @"_AutoFocus";
  v4 = sub_2338A9B94(a1);
  v5 = sub_2338AE7EC(v4, v2, v3);

  v10 = 0;
  __p = 0;
  do
  {
    if (v10 >= objc_msgSend_count(v5, v6, v7, v8, v9))
    {
      v11 = -1;
    }

    else
    {
      v11 = sub_23386EA2C(v5, &__p, v7, v8, v9);
    }

    v12 = __p;
    *(&v58 + __p) = v11;
    v10 = (v12 + 1);
    __p = v12 + 1;
  }

  while ((v12 + 1) < 6);
  v13 = sub_2338A9B94(a1);
  v14 = sub_2338AE880(v13, v2, v3);

  if (!v14)
  {
    goto LABEL_119;
  }

  v15 = sub_2338A9B94(a1);
  sub_2338AE980(v15, v2, v3);

  v16 = sub_2338A9B94(a1);
  v17 = sub_233875D18(v16, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  v19 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v20 = v58;
  if (v58 != -1)
  {
    v21 = v59;
    if (v59 != -1)
    {
      v18 = sub_2338BDE40(v18, v17, 0, &v56, &v55);
      if ((v18 & 1) == 0)
      {
        v22 = sub_2338B0E5C(a1);
        v55 = 0;
        v23 = *MEMORY[0x277CD3110];
        v50 = v22;
        if (sub_233739ACC(v22, v23))
        {
          v24 = *MEMORY[0x277CD3118];
          v25 = sub_233739ACC(v22, *MEMORY[0x277CD3118]);

          if (v25)
          {
            v29 = sub_2337397B0(v50, v23, v26, v27, v28);
            v55 = v29 | (sub_2337397B0(v50, v24, v30, v31, v32) << 32);
            if (sub_2338A818C(v17, @"X100", 1))
            {
              v33 = 10;
            }

            else
            {
              v33 = 20;
            }

            sub_2337238F0(&__p, v55 / v33, HIDWORD(v55) / v33);
            v57 = __p;
          }
        }

        else
        {
        }
      }

      v19 = 0;
      if (v55 && HIDWORD(v55))
      {
        v34 = sub_2338B1194(a1, &v55, 0);
        v19 = 0;
        v35 = v20 - v55 / 2;
        v36 = SHIDWORD(v55) / 2 - v21;
        v37 = -1;
        while (1)
        {
          v34 = sub_2338BDE40(v34, v17, v19, &v56, &v55);
          if (!v34)
          {
            break;
          }

          v38 = v56 - v35;
          if ((v56 - v35) < 0)
          {
            v38 = v35 - v56;
          }

          if (v57 >= 2 * v38)
          {
            v39 = HIDWORD(v56) - v36;
            if ((HIDWORD(v56) - v36) < 0)
            {
              v39 = v36 - HIDWORD(v56);
            }

            if (HIDWORD(v57) >= 2 * v39)
            {
              v37 = v19;
            }
          }

          ++v19;
        }

        if (v37 == -1)
        {
          __p = __PAIR64__(v36, v35);
          v53 = v57;
          sub_2338B10E8(a1, &__p, 0);
          v41 = 0;
          v19 = 1;
        }

        else
        {
          __p = 0;
          v53 = 0;
          v54 = 0;
          if (v19)
          {
            v40 = 0;
            do
            {
              v51 = 0uLL;
              LODWORD(v34) = sub_2338BDE40(v34, v17, v40, &v51, &v55);
              if (v34)
              {
                sub_2338B44A8(&__p, &v51);
              }

              ++v40;
            }

            while (v40 < v19);
          }

          sub_2338B1160(a1, &__p, 0);
          if (__p)
          {
            v53 = __p;
            operator delete(__p);
          }

          v41 = v37;
        }

        if ((v41 & 0x40) != 0)
        {
          v42 = 0;
        }

        else
        {
          v42 = 1 << v41;
        }

        if ((v41 & 0x40) != 0)
        {
          v43 = 1 << v41;
        }

        else
        {
          v43 = 0;
        }

        v18 = sub_2338B1254(a1, v42, v43, 0);
      }
    }
  }

  v44 = v61;
  if (v61 != -1)
  {
    v45 = 0;
    if (v60 > 130)
    {
      if (v60 <= 287)
      {
        if (v60 <= 146)
        {
          if ((v60 - 144) < 2)
          {
            v45 = 64;
            goto LABEL_110;
          }

          if (v60 != 131)
          {
            goto LABEL_110;
          }
        }

        else
        {
          v46 = v60 + 109;
          if ((v60 - 147) > 0x20)
          {
LABEL_55:
            if ((v60 - 272) >= 2)
            {
              goto LABEL_110;
            }

            goto LABEL_84;
          }

          if (((1 << v46) & 0x100010001) == 0)
          {
            if (((1 << v46) & 0x6000) != 0)
            {
              v45 = 256;
              goto LABEL_110;
            }

            if (((1 << v46) & 0x60000000) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_79;
          }
        }

        v45 = 1361;
        goto LABEL_110;
      }

      if (v60 <= 367)
      {
        v47 = v60 - 32;
        if ((v60 - 288) <= 0x21)
        {
          if (((1 << v47) & 3) == 0)
          {
            if (((1 << v47) & 0x30000) == 0)
            {
              if (((1 << v47) & 0x300000000) != 0)
              {
                v45 = 168;
              }

              goto LABEL_110;
            }

            goto LABEL_71;
          }

          goto LABEL_82;
        }

LABEL_110:
        while (1)
        {
          LODWORD(v18) = sub_2338BDE40(v18, v17, v19, &v56, &v55);
          if (!v18)
          {
            break;
          }

          ++v19;
        }

        if (!v19)
        {

          goto LABEL_120;
        }

        sub_2338B1254(a1, v44, v44 >> 63, 1);
        v48 = sub_2338B11B8(a1, v45, 0, 1);
        v49 = 0;
        __p = 0;
        v53 = 0;
        v54 = 0;
        do
        {
          v51 = 0uLL;
          LODWORD(v48) = sub_2338BDE40(v48, v17, v49, &v51, &v55);
          if (v48)
          {
            sub_2338B44A8(&__p, &v51);
          }

          ++v49;
        }

        while (v49 < v19);
        sub_2338B1160(a1, &__p, 1);
        sub_2338B1194(a1, &v55, 1);
        if (__p)
        {
          v53 = __p;
          operator delete(__p);
        }

        goto LABEL_118;
      }

      if ((v60 - 368) >= 2)
      {
        if ((v60 - 384) < 2)
        {
          v45 = 336;
          goto LABEL_110;
        }

        if ((v60 - 432) < 2)
        {
LABEL_79:
          v45 = 1024;
          goto LABEL_110;
        }

        goto LABEL_110;
      }

LABEL_83:
      v45 = 512;
      goto LABEL_110;
    }

    if (v60 <= 66)
    {
      if (v60 > 34)
      {
        if (v60 > 50)
        {
          if ((v60 - 64) >= 2)
          {
            if (v60 == 51)
            {
              v45 = 389;
            }
          }

          else
          {
            v45 = 8;
          }

          goto LABEL_110;
        }

        if ((v60 - 48) >= 2)
        {
          if (v60 == 35)
          {
            v45 = 99;
          }

          goto LABEL_110;
        }

LABEL_71:
        v45 = 4;
        goto LABEL_110;
      }

      if ((v60 - 16) < 2)
      {
LABEL_84:
        v45 = 1;
        goto LABEL_110;
      }

      if ((v60 - 32) >= 2)
      {
        if (v60 == 19)
        {
          v45 = 31;
        }

        goto LABEL_110;
      }

LABEL_82:
      v45 = 2;
      goto LABEL_110;
    }

    if (v60 > 98)
    {
      if (v60 > 114)
      {
        if ((v60 - 128) < 2)
        {
          v45 = 16;
          goto LABEL_110;
        }

        if (v60 != 115)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if ((v60 - 112) < 2)
        {
          goto LABEL_83;
        }

        if (v60 != 99)
        {
          goto LABEL_110;
        }
      }
    }

    else if (v60 > 82)
    {
      if ((v60 - 96) < 2)
      {
        v45 = 128;
        goto LABEL_110;
      }

      if (v60 != 83)
      {
        goto LABEL_110;
      }
    }

    else
    {
      if ((v60 - 80) < 2)
      {
        v45 = 32;
        goto LABEL_110;
      }

      if (v60 != 67)
      {
        goto LABEL_110;
      }
    }

    v45 = 681;
    goto LABEL_110;
  }

LABEL_118:

LABEL_119:
  sub_2338AC690(a1);
LABEL_120:
}