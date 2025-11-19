uint64_t sub_23386D24C(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284929D38;
  v5[6] = 0;
  v6 = (v5 + 6);
  v5[7] = 0;
  v5[8] = 0;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  *(a1 + 20) = sub_233725614(*a3);
  *(a1 + 24) = sub_233725614(*a3);
  *(a1 + 28) = sub_233725614(*a3);
  *(a1 + 32) = sub_233725614(*a3);
  *(a1 + 36) = sub_233725614(*a3);
  *(a1 + 40) = sub_233725614(*a3);
  for (i = sub_233725614(*a3); i; --i)
  {
    v8 = sub_233725730(*a3);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = v10 - *v6;
      v14 = v13 >> 2;
      v15 = (v13 >> 2) + 1;
      if (v15 >> 62)
      {
        sub_2337235BC();
      }

      v16 = v9 - v12;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_2337235D4(v6, v17);
      }

      *(4 * v14) = v8;
      v11 = 4 * v14 + 4;
      memcpy(0, v12, v13);
      v18 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(a1 + 56) = v11;
      *(a1 + 64) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    *(a1 + 56) = v11;
  }

  return a1;
}

void sub_23386D3FC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

id sub_23386D428(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, *(a1 + 12), v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v11, v10, @"Top", v12);

  v16 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, *(a1 + 16), v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v17, v16, @"Left", v18);

  v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, *(a1 + 20), v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v23, v22, @"Bottom", v24);

  v28 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v25, *(a1 + 24), v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v29, v28, @"mRight", v30);

  v34 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v31, *(a1 + 28), v32, v33);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v35, v34, @"Plane", v36);

  v40 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v37, *(a1 + 32), v38, v39);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v41, v40, @"Planes", v42);

  v46 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v43, *(a1 + 36), v44, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v47, v46, @"RowPitch", v48);

  v52 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v49, *(a1 + 40), v50, v51);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v53, v52, @"ColPitch", v54);

  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v55, v56, v57, v58);
  v65 = *(a1 + 48);
  v66 = *(a1 + 56);
  while (v65 != v66)
  {
    LODWORD(v64) = *v65;
    v67 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v59, v60, v61, v62, v64);
    objc_msgSend_addObject_(v63, v68, v67, v69, v70);

    ++v65;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v6, v59, v63, @"Delta", v62);
  v71 = [RAWOpcodeDeltaPerColumn alloc];
  v75 = objc_msgSend_initWithArguments_(v71, v72, v6, v73, v74);

  return v75;
}

void *sub_23386D6B8(void *a1)
{
  *a1 = &unk_284929D38;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_23386D708(void *a1)
{
  *a1 = &unk_284929D38;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_23386D780(void *a1, void *a2)
{
  a1;
  a2;
  sub_23386F760();
}

id sub_23386D804(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v1 = sub_23386D8A8(a1, @"rawImageClass");
  v5 = sub_233739A60(v1, @"className", v2, v3, v4);

  return v5;
}

id sub_23386D8A8(uint64_t a1, void *a2)
{
  v2 = sub_233739994(*(a1 + 8), a2, 0);

  return v2;
}

id sub_23386D8DC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v1 = sub_23386D8A8(a1, @"version");
  v5 = sub_233739A60(v1, @"minRawCameraVersion", v2, v3, v4);

  return v5;
}

void sub_23386D980(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = sub_23386D8A8(a1, @"rawProperties");
    sub_233729F60(v1);
  }

  __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0]();
  sub_2338F83F4();
}

BOOL sub_23386DA24(uint64_t a1)
{
  v2 = sub_23384AFB8();
  v3 = sub_23386D8DC(a1);
  v4 = v3;
  if (!v2 || !v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = sub_23384B074(v2);
  v6 = v5 >= sub_23384B074(v4);

  return v6;
}

void sub_23386DB38(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a2;
  v10 = a3;
  v38 = a1;
  v39 = a4;
  v11 = sub_23386D8A8(a1, @"rawPlugin");
  *a5 = 0;
  a5[1] = 0;
  if (objc_msgSend_isEqualToString_(v10, v12, off_27DE377A0[0], v13, v14))
  {
LABEL_16:
    if (sub_233739ACC(v11, v10))
    {
      v35 = sub_2338747A8();
      v36 = MEMORY[0x2383AC810](*(v38 + 16));
      sub_23386FC84(v11, v10, v35, v36, v39);
    }

    goto LABEL_18;
  }

  v15 = MEMORY[0x2383AC810](*(v38 + 16));
  v16 = (v15)[2](v15, @"methodNumber");

  v21 = objc_msgSend_shortValue(v16, v17, v18, v19, v20);
  if (v21 < 0)
  {

    goto LABEL_16;
  }

  v37 = v16;
  do
  {
    v22 = MEMORY[0x277CCACA8];
    LODWORD(v40) = v21;
    v23 = sub_2337584A8(&v40);
    v27 = objc_msgSend_stringWithFormat_(v22, v24, @"v%@", v25, v26, v23);

    v28 = sub_233739994(v11, v27, 0);
    v29 = v28;
    if (v28)
    {
      if (v9 && sub_233739ACC(v28, v9))
      {
        v30 = sub_233739994(v29, v9, 0);

        v29 = v30;
      }

      if (sub_233739ACC(v29, v10))
      {
        v31 = sub_2338747A8();
        v32 = MEMORY[0x2383AC810](*(v38 + 16));
        sub_23386FC84(v29, v10, v31, v32, v39);
      }
    }

    v33 = *a5;
    if (*a5)
    {
      break;
    }
  }

  while (v21-- >= 1);

  if (!v33)
  {
    goto LABEL_16;
  }

LABEL_18:
}

void sub_23386DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v19 = *(v16 + 8);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  _Unwind_Resume(a1);
}

void sub_23386DE80(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 8))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = sub_23386D8A8(a1, @"rawImageClass");
  v7 = sub_23378DDE8(v3, @"supportedMethods", v4, v5, v6);

  v12 = sub_23386E07C();
  for (i = 0; i < objc_msgSend_count(v7, v8, v9, v10, v11); ++i)
  {
    v23.__r_.__value_.__r.__words[0] = i;
    v17 = sub_23386E0B8(v7, &v23, v14, v15, v16);
    sub_23373CD80(v17, &__str);

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v20 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v10 = size - 1;
      v21 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      if (v21->__r_.__value_.__s.__data_[v10] == 112)
      {
        if (!v12)
        {
          goto LABEL_20;
        }

        std::string::basic_string(&v23, &__str, 0, v10, &v25);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v23;
        v19 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
        v20 = v23.__r_.__value_.__r.__words[0];
      }
    }

    if (v19 >= 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = v20;
    }

    if (atoi(p_str) >= 6)
    {
      sub_233754418(a2, &__str);
      v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

LABEL_20:
    if (v19 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t sub_23386E07C()
{
  if ((atomic_load_explicit(&qword_280C04D98, memory_order_acquire) & 1) == 0)
  {
    sub_2338FD250();
  }

  return byte_27DE37C58;
}

void *sub_23386E0B8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(a1, a2, *a2, a4, a5);
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

id sub_23386E124(uint64_t a1, void *a2, void *a3)
{
  sub_23386DB38(a1, a2, a3, 0, &v9);
  if (v9)
  {
    v7 = sub_23386FD70(v9, v3, v4, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }

  return v7;
}

void sub_23386E190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23386E1A8(uint64_t a1, void *a2)
{
  sub_23386DB38(a1, 0, @"blackNoiseModel", 0, &v62);
  v7 = v62;
  if (v62)
  {
    v8 = sub_23386FD70(v62, v3, v4, v5, v6);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v8, v9, v10, v11, v12) >= 2)
    {
      v61 = 0;
      v16 = sub_23386EA2C(v8, &v61, v13, v14, v15);
      if (v16)
      {
        if (v16 == 1 && objc_msgSend_count(v8, v17, v18, v19, v20) > 2)
        {
          v61 = 1;
          v60 = sub_23386EA2C(v8, &v61, v21, v22, v23);
          v28 = objc_msgSend_count(v8, v24, v25, v26, v27);
          v32 = (v28 - 2);
          if (v28 == 2)
          {
            v48 = 0;
            v47 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            do
            {
              v61 = v33 + 2;
              v38 = sub_23386EAC4(v8, &v61, v29, v30, v31);
              if (!v38)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0](exception, "RawCameraException");
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }

              if (v60)
              {
                v39 = 1;
                v40 = v60;
                do
                {
                  v61 = v39;
                  v41 = sub_23386EAC4(v38, &v61, v35, v36, v37);
                  v46 = v41;
                  if (!v41)
                  {
                    v56 = __cxa_allocate_exception(0x10uLL);
                    MEMORY[0x2383ABCE0](v56, "RawCameraException");
                    __cxa_throw(v56, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }

                  v34 += objc_msgSend_count(v41, v42, v43, v44, v45);

                  ++v39;
                  --v40;
                }

                while (v40);
              }

              ++v33;
            }

            while (v33 != v32);
            v47 = 24 * v34;
            v48 = v32;
          }

          sub_2337AD310(16 * v48 + 16 * v32 * v60 + v47 + 16, &v61);
        }

        v58 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v58, "RawCameraException");
        __cxa_throw(v58, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v55 = (objc_msgSend_count(v8, v17, v18, v19, v20) - 1) / 0xEuLL;
      if (objc_msgSend_count(v8, v51, v52, v53, v54) == ((14 * v55) | 1))
      {
        sub_2337AD310(112 * (v55 + 1), &v61);
      }

      v59 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v59, "RawCameraException");
      __cxa_throw(v59, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v49 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v49)
    {
      sub_2337239E8(v49);
    }
  }

  if (v63)
  {
    sub_2337239E8(v63);
  }

  return v7 != 0;
}

void sub_23386E8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  __cxa_free_exception(v24);

  v27 = *(v25 - 88);
  if (v27)
  {
    sub_2337239E8(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23386EA2C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_23386F6F4(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_intValue(v5, v6, v7, v8, v9);

  return v10;
}

double sub_23386EA74(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_23386F6F4(a1, a2, a3, a4, a5);
  objc_msgSend_doubleValue(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

void *sub_23386EAC4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(a1, a2, *a2, a4, a5);
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

BOOL sub_23386EB30(uint64_t a1, void *a2)
{
  sub_23386DB38(a1, 0, @"blackLevelModel", 0, &v56);
  v7 = v56;
  if (v56)
  {
    v8 = sub_23386FD70(v56, v3, v4, v5, v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_count(v8, v9, v10, v11, v12) > 1)
      {
        v55 = 0;
        if (!sub_23386EA2C(v8, &v55, v13, v14, v15) && objc_msgSend_count(v8, v16, v17, v18, v19) > 2)
        {
          v55 = 1;
          v54 = sub_23386EA2C(v8, &v55, v20, v21, v22);
          v27 = objc_msgSend_count(v8, v23, v24, v25, v26);
          v31 = (v27 - 2);
          if (v27 == 2)
          {
            v47 = 0;
            v46 = 0;
          }

          else
          {
            v32 = 0;
            v33 = 0;
            do
            {
              v55 = (v32 + 2);
              v37 = sub_23386EAC4(v8, &v55, v28, v29, v30);
              if (!v37)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0](exception, "RawCameraException");
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }

              if (v54)
              {
                v38 = 1;
                v39 = v54;
                do
                {
                  v55 = v38;
                  v40 = sub_23386EAC4(v37, &v55, v34, v35, v36);
                  v45 = v40;
                  if (!v40)
                  {
                    v50 = __cxa_allocate_exception(0x10uLL);
                    MEMORY[0x2383ABCE0](v50, "RawCameraException");
                    __cxa_throw(v50, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }

                  v33 += objc_msgSend_count(v40, v41, v42, v43, v44);

                  ++v38;
                  --v39;
                }

                while (v39);
              }

              ++v32;
            }

            while (v32 != v31);
            v46 = 24 * v33;
            v47 = v31;
          }

          sub_2337AD310(16 * v47 + 16 * v31 * v54 + v46 + 16, &v55);
        }

        v53 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v53, "RawCameraException");
        __cxa_throw(v53, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v52 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v52, "RawCameraException");
      __cxa_throw(v52, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v48 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v48)
    {
      sub_2337239E8(v48);
    }
  }

  if (v57)
  {
    sub_2337239E8(v57);
  }

  return v7 != 0;
}

void sub_23386F084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  __cxa_free_exception(v22);

  v25 = *(v23 - 88);
  if (v25)
  {
    sub_2337239E8(v25);
  }

  _Unwind_Resume(a1);
}

BOOL sub_23386F1B8(uint64_t a1, void *a2)
{
  __src[4] = *MEMORY[0x277D85DE8];
  sub_23386DB38(a1, 0, @"signalNoiseModel", 0, &v48);
  v7 = v48;
  if (v48)
  {
    v8 = sub_23386FD70(v48, v3, v4, v5, v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_count(v8, v9, v10, v11, v12) > 1)
      {
        __src[0] = 0;
        if (!sub_23386EA2C(v8, __src, v13, v14, v15) && objc_msgSend_count(v8, v16, v17, v18, v19) > 2)
        {
          __src[0] = 1;
          v26 = sub_23386EA2C(v8, __src, v20, v21, v22);
          if (v26 - 5 > 0xFFFFFFFB)
          {
            v27 = objc_msgSend_objectAtIndexedSubscript_(v8, v23, 2, v24, v25);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_BOOLValue(v27, v28, v29, v30, v31);
              v36 = 0;
              v46 = (objc_msgSend_count(v8, v32, v33, v34, v35) - (v26 + 3)) / (3 * v26 + 1);
              do
              {
                v47 = v36 + 3;
                *&__src[v36++] = sub_23386EA74(v8, &v47, v37, v38, v39);
              }

              while (v26 != v36);
              sub_2337AD310(8 * v26 + 16 * v46 + 24 * v46 * v26 + 32, &v47);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v44 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v44, "RawCameraException");
          __cxa_throw(v44, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v43 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v43, "RawCameraException");
        __cxa_throw(v43, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v42 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v42, "RawCameraException");
      __cxa_throw(v42, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v40 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v40)
    {
      sub_2337239E8(v40);
    }
  }

  if (v49)
  {
    sub_2337239E8(v49);
  }

  return v7 != 0;
}

void sub_23386F628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  __cxa_free_exception(v23);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  _Unwind_Resume(a1);
}

void *sub_23386F6F4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(a1, a2, *a2, a4, a5);
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

uint64_t sub_23386F7D4(uint64_t a1, id *a2, void **a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_284929D80;
  v4 = *a3;
  v5 = *a2;
  v6 = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 56;
  return a1;
}

void sub_23386F86C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284929D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23386F8CC(uint64_t a1)
{
  sub_23386F914(a1 + 24, *(a1 + 32));

  return a1;
}

void sub_23386F914(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_23386F914(a1, *a2);
    sub_23386F914(a1, a2[1]);
    sub_2337BF040((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_23386F970()
{
  if ((atomic_load_explicit(&qword_280C04ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C04ED0))
  {
    operator new();
  }

  return qword_280C04EC8;
}

void sub_23386FA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23386F970();
  if (*(a1 + 23) < 0)
  {
    sub_233731FB8(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v6 = *(a1 + 16);
  }

  v7 = a2;
  sub_23386FBE0(v4, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23386FA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386FAAC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_23386D804(v4);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v7 = sub_23386F970();
  sub_23373CD80(v6, __p);
  v8 = sub_233735E3C(v7, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23386F970() + 8 != v8)
  {
    v9 = *(v8 + 56);
    if (v9)
    {
      (*(*v9 + 16))(__p);
      *a2 = *__p;
    }
  }
}

void sub_23386FBCC()
{
  if (v0)
  {
    sub_2337239E8(v0);
  }

  JUMPOUT(0x23386FBC4);
}

uint64_t sub_23386FBE0(uint64_t a1, void **a2)
{
  v2 = *sub_233757640(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_23386FC84(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  a1;
  a2;
  a3;
  a4;
  a5;
  sub_2338704F4();
}

id sub_23386FD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_233739A60(*(a1 + 16), *(a1 + 24), a3, a4, a5);
  if (v6)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_23386FFE4;
    v30 = sub_233870010;
    v31 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_233870018;
    v25[3] = &unk_2789EF3D0;
    v25[4] = &v26;
    v25[5] = a1;
    v7 = MEMORY[0x2383AC810](v25);
    v8 = v27[5];
    v27[5] = v7;

    v9 = v6;
    objc_msgSend_UTF8String(v9, v10, v11, v12, v13);
    v14 = sub_2338717E0();
    v15 = v27[5];
    v27[5] = 0;

    if (!v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v16 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = objc_msgSend_description(v16, v17, v18, v19, v20);
      CFShow(v23);
      v24 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v24, "RawCameraException");
      __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_23386FF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  __cxa_free_exception(v23);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23386FFE4(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2383AC810](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id sub_233870018(uint64_t a1, char *__s)
{
  v3 = *(a1 + 40);
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  v9 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v42 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v9) = 0;
  v13 = sub_233729FBC(&__dst, v5, v6, v7, v8);
  if (v42 < 0)
  {
    operator delete(__dst);
  }

  if ((objc_msgSend_hasPrefix_(v13, v10, @"@", v11, v12) & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v13, v14, @"inherited", v16, v17))
    {
      v35 = *(v3 + 48);
      if (!v35)
      {
        v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"Inherited::%@", v33, v34, *(v3 + 24));

        v40 = *(v3 + 40);
        if (v40)
        {
          v26 = (*(v40 + 16))(v40, v21);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_22;
      }

      v36 = (*(v35 + 16))();
    }

    else
    {
      v37 = *(v3 + 32);
      if (v37)
      {
        v26 = objc_msgSend_objectForKeyedSubscript_(v37, v32, v13, v33, v34);
        if (v26)
        {
          goto LABEL_21;
        }
      }

      v38 = *(v3 + 40);
      if (!v38)
      {
        v26 = 0;
        goto LABEL_21;
      }

      v36 = (*(v38 + 16))(v38, v13);
    }

    v26 = v36;
LABEL_21:
    v21 = v13;
    goto LABEL_22;
  }

  v18 = objc_msgSend_length(v13, v14, v15, v16, v17);
  v21 = objc_msgSend_substringWithRange_(v13, v19, 1, v18 - 1, v20);

  v25 = objc_msgSend_objectForKeyedSubscript_(*(v3 + 16), v22, v21, v23, v24);
  objc_opt_class();
  v26 = v25;
  if (objc_opt_isKindOfClass())
  {
    v27 = v25;
    objc_msgSend_UTF8String(v27, v28, v29, v30, v31);
    v26 = sub_2338717E0();
  }

LABEL_22:

  return v26;
}

void sub_233870290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338702D4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  *a1 = &unk_284929DD0;
  a1[1] = 0;
  v16 = v11;
  a1[2] = v16;
  v17 = v12;
  a1[3] = v17;
  v18 = v13;
  a1[4] = v18;
  a1[5] = MEMORY[0x2383AC810](v14);
  a1[6] = MEMORY[0x2383AC810](v15);
  if (!v16 || !v17 || !v14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v19, v20, v21, v22);
  v24 = a1[1];
  a1[1] = v23;

  return a1;
}

void sub_233870450(_Unwind_Exception *a1)
{
  __cxa_free_exception(v7);

  _Unwind_Resume(a1);
}

void sub_2338704BC(id *a1)
{
  sub_23387069C(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233870590(void *a1, void **a2, void **a3, void **a4, void **a5, void **a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284929E00;
  sub_2338702D4(a1 + 3, *a2, *a3, *a4, *a5, *a6);
  return a1;
}

void sub_233870620(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284929E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338706F0(uint64_t a1)
{
  (*(*a1 + 2200))(__p);
  v4[0] = &unk_284917748;
  v4[1] = 0;
  (*(*a1 + 160))(&v2, a1);
  (*(*v2 + 600))(v2, __p, v4, 3);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2338707F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
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

void sub_233870824(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  if ((*(*a1 + 960))(a1) == 10)
  {
    (*(*a1 + 160))(&v4, a1);
    operator new();
  }

  sub_233731694(a2, 4uLL);
}

void sub_23387099C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338709EC(void *a1)
{
  (*(*a1 + 2888))(&v6);
  if (v7 != v6)
  {
    v2 = v7 - v6;
    if (*v6 == 5)
    {
      if (v2 > 2)
      {
        (*(*a1 + 160))(&v4, a1);
        (*(*v4 + 384))(&v5);
        (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_23380620C();
      }

LABEL_14:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*v6 == 4)
    {
      if (v2 > 1 && (v6[1] & 0x80000000) == 0)
      {
        (*(*a1 + 160))(&v4, a1);
        (*(*v4 + 384))(&v5);
        (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_233802844();
      }

      goto LABEL_14;
    }
  }

  sub_23373C7EC(a1);
  if (!a1[3])
  {
    goto LABEL_14;
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_233870E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
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

void sub_233870F24(uint64_t a1)
{
  v2 = (*(*a1 + 2192))(a1);
  v9 = 0;
  v10 = v2;
  v8 = &unk_284917748;
  (*(*a1 + 160))(&v6, a1);
  v3 = v6;
  (*(*a1 + 2200))(__p, a1);
  (*(*v3 + 600))(v3, __p, &v8, 3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_233871074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void sub_2338710A4(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 2888))(&v5, a1);
    if (v6 == v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*v5 == 10)
    {
      (*(*a1 + 160))(&v3, a1);
      (*(*v3 + 384))(&v4);
      (*(*a1 + 336))(a1);
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_233871328();
    }

    v6 = v5;
    operator delete(v5);
  }
}

void sub_2338712C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  v18 = *(v16 - 48);
  if (v18)
  {
    *(v16 - 40) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338713CC(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28492B5C8;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_28490B588;
  return a1;
}

void sub_233871468(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28492B5C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

float32x2_t *sub_2338714E4@<X0>(float32x2_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[89];
  v3 = result[90].f32[0];
  v4 = result->i32[1];
  if (v4 == 2)
  {
    v15 = &result[107];
    v5 = result[108].f32[1];
    v6 = result[110].f32[1] * result[110].f32[1];
    v17 = &result[111] + 1;
    v7 = result[117].i32[1];
    v8 = result[118].i32[0];
    if (result[111].i8[0] == 1)
    {
      v9 = result[118].f32[1];
      v10 = &result[108];
      v20.i32[0] = result[110].i32[0];
      v12 = &result[115] + 1;
      v13 = result + 116;
      v14 = result[116].f32[1];
      v20.i32[1] = result[109].i32[0];
      v16 = vmul_f32(v20, v20);
      v18 = result + 112;
      v19 = result[112].f32[1];
      goto LABEL_17;
    }

    v9 = result[119].f32[0] * result[119].f32[0];
    v10 = &result[108];
    v22.i32[0] = result[110].i32[0];
    v12 = &result[115] + 1;
    v13 = result + 116;
    v14 = result[117].f32[0] * result[117].f32[0];
    v22.i32[1] = result[109].i32[0];
    v16 = vmul_f32(v22, v22);
    v18 = result + 112;
    v21 = result[113].f32[0];
  }

  else if (v4 == 1)
  {
    v5 = result[107].f32[1];
    v6 = result[109].f32[1] * result[109].f32[1];
    v7 = result[113].i32[1];
    v8 = result[114].i32[0];
    if (result[111].i8[0] == 1)
    {
      v9 = result[114].f32[1];
      v10 = &result[108] + 1;
      v12 = &result[117] + 1;
      v13 = result + 118;
      v14 = result[118].f32[1];
      v15 = &result[108];
      v16 = vrev64_s32(vmul_f32(result[110], result[110]));
      v17 = &result[115] + 1;
      v18 = result + 116;
      v19 = result[116].f32[1];
      goto LABEL_17;
    }

    v9 = result[115].f32[0] * result[115].f32[0];
    v10 = &result[108] + 1;
    v12 = &result[117] + 1;
    v13 = result + 118;
    v14 = result[119].f32[0] * result[119].f32[0];
    v15 = &result[108];
    v16 = vrev64_s32(vmul_f32(result[110], result[110]));
    v17 = &result[115] + 1;
    v18 = result + 116;
    v21 = result[117].f32[0];
  }

  else if (v4)
  {
    v5 = result[107].f32[0];
    v6 = result[109].f32[0] * result[109].f32[0];
    v7 = result[111].i32[1];
    v8 = result[112].i32[0];
    if (result[111].i8[0] == 1)
    {
      v9 = result[112].f32[1];
      v10 = &result[108];
      v12 = &result[115] + 1;
      v13 = result + 116;
      v14 = result[116].f32[1];
      v15 = &result[108] + 1;
      v16 = vmul_f32(result[110], result[110]);
      v17 = &result[117] + 1;
      v18 = result + 118;
      v19 = result[118].f32[1];
      goto LABEL_17;
    }

    v9 = result[113].f32[0] * result[113].f32[0];
    v10 = &result[108];
    v12 = &result[115] + 1;
    v13 = result + 116;
    v14 = result[117].f32[0] * result[117].f32[0];
    v15 = &result[108] + 1;
    v16 = vmul_f32(result[110], result[110]);
    v17 = &result[117] + 1;
    v18 = result + 118;
    v21 = result[119].f32[0];
  }

  else
  {
    v5 = result[108].f32[0];
    v6 = result[110].f32[0] * result[110].f32[0];
    v7 = result[115].i32[1];
    v8 = result[116].i32[0];
    if (result[111].i8[0] == 1)
    {
      v9 = result[116].f32[1];
      v10 = &result[108] + 1;
      v11.i32[0] = result[110].i32[1];
      v12 = &result[117] + 1;
      v13 = result + 118;
      v14 = result[118].f32[1];
      v15 = &result[107] + 1;
      v11.i32[1] = result[109].i32[1];
      v16 = vmul_f32(v11, v11);
      v17 = &result[113] + 1;
      v18 = result + 114;
      v19 = result[114].f32[1];
      goto LABEL_17;
    }

    v9 = result[117].f32[0] * result[117].f32[0];
    v10 = &result[108] + 1;
    v23.i32[0] = result[110].i32[1];
    v12 = &result[117] + 1;
    v13 = result + 118;
    v14 = result[119].f32[0] * result[119].f32[0];
    v23.i32[1] = result[109].i32[1];
    v15 = &result[107] + 1;
    v16 = vmul_f32(v23, v23);
    v17 = &result[113] + 1;
    v18 = result + 114;
    v21 = result[115].f32[0];
  }

  v19 = v21 * v21;
LABEL_17:
  v24 = v18->i32[0];
  v25 = v13->i32[0];
  v26 = *v17;
  v27 = *v12;
  v28 = *v15;
  v29 = *v10;
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 12) = 0;
  __asm { FMOV            V25.2S, #1.0 }

  *(a2 + 16) = vdiv_f32(_D25, v2);
  *(a2 + 24) = 1.0 / v3;
  *(a2 + 28) = 0;
  if (v29 >= 0.0)
  {
    v35 = v29;
  }

  else
  {
    v35 = 0.0;
  }

  *(a2 + 32) = v5;
  *(a2 + 36) = v35;
  if (v28 >= 0.0)
  {
    v36 = v28;
  }

  else
  {
    v36 = 0.0;
  }

  *(a2 + 40) = v36;
  *(a2 + 44) = 0;
  *(a2 + 48) = v6;
  *(a2 + 52) = v16;
  *(a2 + 60) = 0;
  *(a2 + 64) = v7;
  *(a2 + 68) = v27;
  *(a2 + 72) = v26;
  *(a2 + 76) = 0;
  *(a2 + 80) = v8;
  *(a2 + 84) = v25;
  *(a2 + 88) = v24;
  *(a2 + 92) = 0;
  *(a2 + 96) = v9;
  *(a2 + 100) = v14;
  *(a2 + 104) = v19;
  *(a2 + 108) = 0;
  return result;
}

id sub_2338717E0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v35 = *MEMORY[0x277D85DE8];
  v32 = v0;
  bzero(__s1, 0xF000uLL);
  v33 = 0;
  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D85DE0];
    while (1)
    {
      v7 = v3;
      if (v3 < 0)
      {
        v8 = __maskrune(v3, 0x4000uLL);
      }

      else
      {
        v8 = *(v6 + 4 * v7 + 60) & 0x4000;
      }

      if (v8)
      {
        v9 = 1;
        goto LABEL_37;
      }

      v10 = 0x30u;
      do
      {
        v11 = strlen(*(&off_2789EF3F0 + v10));
        if (!strncmp(v2, *(&off_2789EF3F0 + v10), v11))
        {
          v16 = &v2[strlen(*(&off_2789EF3F0 + v10))];
          goto LABEL_14;
        }

        v10 += 24;
      }

      while (v10 != 960);
      v15 = (v7 & 0x80000000) != 0 ? __maskrune(v7, 0x400uLL) : *(v6 + 4 * v7 + 60) & 0x400;
      if (v7 != 46 && !v15)
      {
        break;
      }

      strtod(v2, &v33);
      v16 = v33;
      if (v33 == v2)
      {
        v26 = sub_2338723D0(10, @"Error: Expression has invalid number.");
        v27 = v26;
        goto LABEL_41;
      }

LABEL_35:
      v9 = v16 - v2;
      v21 = &v4[v16 - v2];
      if ((v21 + 1) > 0xF000)
      {
        v26 = sub_2338723D0(7, @"Error: Expression too long.");
        v22 = v26;
        goto LABEL_41;
      }

      memcpy(&__s1[v4], v2, v16 - v2);
      __s1[v21] = 0;
      ++v5;
      v4 = v21 + 1;
LABEL_37:
      v2 += v9;
      v3 = *v2;
      if (!*v2)
      {
        v26 = 0;
        goto LABEL_42;
      }
    }

    if (v7 == 39)
    {
      v17 = strchr(v2 + 1, 39);
      v33 = v17;
      if (!v17)
      {
        v26 = sub_2338723D0(9, @"Error: Expression has unterminated quote.");
        v28 = v26;
        goto LABEL_41;
      }

      v16 = v17 + 1;
LABEL_14:
      v33 = v16;
      goto LABEL_35;
    }

    if ((v7 & 0x80000000) != 0)
    {
      v18 = __maskrune(v7, 0x100uLL);
    }

    else
    {
      v18 = *(v6 + 4 * v7 + 60) & 0x100;
    }

    if (v18 || v7 == 64 || v7 == 36)
    {
      v16 = v2;
      while (1)
      {
        while (1)
        {
          v33 = v16 + 1;
          v19 = v16[1];
          if ((v19 & 0x80000000) != 0)
          {
            break;
          }

          ++v16;
          if ((*(v6 + 4 * v19 + 60) & 0x500) == 0)
          {
            goto LABEL_34;
          }
        }

        v20 = __maskrune(v19, 0x500uLL);
        v16 = v33;
        if (!v20)
        {
LABEL_34:
          if (*v16 != 95)
          {
            goto LABEL_35;
          }
        }
      }
    }

    v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Error: Expression has unexpected character #%d", v13, v14, v7, v32);
    v26 = sub_2338723D0(8, v30);
    v31 = v26;

LABEL_41:
    v5 = -1;
  }

  else
  {
    v26 = 0;
    v5 = 0;
  }

LABEL_42:
  v23 = v26;
  v24 = v23;
  if (v5 < 0)
  {
    v24 = v23;
    v25 = v24;
  }

  else
  {
    if (v5)
    {
      operator new();
    }

    v25 = 0;
  }

  return v25;
}

id sub_2338723D0(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = *MEMORY[0x277CBEE58];
  v10[0] = v3;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v10, &v9, 1);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v6, @"com.apple.RawExpression", a1, v5);

  return v7;
}

void *sub_2338724C8(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  result = a1[3];
  if (v4 >= v5)
  {
    result = malloc_type_realloc(result, 8 * v5 + 80, 0x2004093837F09uLL);
    v4 = a1[1];
    a1[2] += 10;
    a1[3] = result;
  }

  a1[1] = v4 + 1;
  *(result + v4) = a2;
  return result;
}

uint64_t sub_233872530(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 8);
  v9 = *(&off_2789EF3F0 + 6 * v8 + 5);
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v10 = a1[1];
      if (!v10 || (v11 = *(a1[3] + 8 * v10 - 8), *(v11 + 8) == 16))
      {
        if (a3)
        {
          v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Error: function '%s' requires 1 parameter.", a4, a5, *(&off_2789EF3F0 + 3 * v8));
          v13 = sub_2338723D0(6, v12);
          goto LABEL_35;
        }

        goto LABEL_36;
      }

LABEL_31:
      a1[1] = v10 - 1;
      *(a2 + 24) = v11;
      goto LABEL_32;
    }

    if (v9 == 2)
    {
      v14 = a1[1];
      if (!v14)
      {
        if (a3)
        {
          v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Error: function '%s' requires 1 or more parameters.", a4, a5, *(&off_2789EF3F0 + 3 * v8));
          v13 = sub_2338723D0(6, v12);
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      goto LABEL_12;
    }

LABEL_26:
    v14 = a1[1];
    if (v8 == 2 && !v14)
    {
      goto LABEL_32;
    }

    v24 = *(a2 + 16);
    if (v14 < v24)
    {
      if (a3)
      {
        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Error: operator '%s' requires %zu operands.", a4, a5, *(&off_2789EF3F0 + 3 * v8), v24);
        v13 = sub_2338723D0(6, v12);
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v24 == 2)
    {
      v15 = a1[3];
      *(a2 + 32) = *(v15 + 8 * v14 - 8);
      v16 = v14 - 2;
      goto LABEL_13;
    }

    if (v24 != 1)
    {
      if (v24)
      {
        if (!a3)
        {
          goto LABEL_36;
        }

        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Error: unexpected operator '%s'.\n", a4, a5, *(&off_2789EF3F0 + 3 * v8));
        v13 = sub_2338723D0(5, v12);
        goto LABEL_35;
      }

LABEL_32:
      sub_2338724C8(a1, a2);
      return 1;
    }

LABEL_12:
    v15 = a1[3];
    v16 = v14 - 1;
LABEL_13:
    a1[1] = v16;
    v17 = *(v15 + 8 * v16);
    goto LABEL_21;
  }

  if (v9 != 3)
  {
    if (v9 == 5)
    {
      v21 = a1[1];
      if (!v21)
      {
        goto LABEL_32;
      }

      v22 = a1[3];
      v23 = v21 - 1;
      a1[1] = v23;
      v17 = *(v22 + 8 * v23);
LABEL_21:
      *(a2 + 24) = v17;
      goto LABEL_32;
    }

    if (v9 == 4)
    {
      v10 = a1[1];
      if (!v10 || (v11 = *(a1[3] + 8 * v10 - 8), *(v11 + 8) != 16))
      {
        if (a3)
        {
          v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Error: function '%s' requires 2 or more parameters.", a4, a5, *(&off_2789EF3F0 + 3 * v8));
          v13 = sub_2338723D0(6, v12);
LABEL_35:
          *a3 = v13;

          goto LABEL_36;
        }

        goto LABEL_36;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v18 = a1[1];
  if (v18)
  {
    v19 = *(a1[3] + 8 * v18 - 8);
    if (*(v19 + 8) == 16)
    {
      v20 = *(v19 + 32);
      if (*(v20 + 8) != 16)
      {
        a1[1] = v18 - 1;
        *(a2 + 24) = *(v19 + 24);
        *(a2 + 32) = v20;
        *(v19 + 24) = 0;
        *(v19 + 32) = 0;
        (*(*v19 + 8))(v19);
        goto LABEL_32;
      }
    }
  }

  if (a3)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Error: function '%s' requires 2 parameters.", a4, a5, *(&off_2789EF3F0 + 3 * v8));
    v13 = sub_2338723D0(6, v12);
    goto LABEL_35;
  }

LABEL_36:
  (*(*a2 + 8))(a2);
  return 0;
}

id sub_2338728F0(uint64_t a1, void *a2)
{
  v7 = a2;
  v8 = 0;
  v9.n128_u64[0] = 0x7FF8000000000000;
  switch(*(a1 + 8))
  {
    case 0:
    case 0x15:
      v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v3, v4, v5, v6, NAN);
      goto LABEL_98;
    case 1:
      v131 = *(a1 + 40);
      v132 = *v131;
      if ((v132 & 0x80000000) != 0)
      {
        v133 = __maskrune(v132, 0x400uLL);
        v131 = *(a1 + 40);
      }

      else
      {
        v133 = *(MEMORY[0x277D85DE0] + 4 * v132 + 60) & 0x400;
      }

      if (v133)
      {
        goto LABEL_95;
      }

      v163 = *v131;
      if (v163 == 39)
      {
        v169 = objc_alloc(MEMORY[0x277CCACA8]);
        v170 = *(a1 + 40);
        v171 = strlen(v170);
        v10 = objc_msgSend_initWithBytes_length_encoding_(v169, v172, (v170 + 1), v171 - 2, 1);
        goto LABEL_98;
      }

      if (v163 != 46)
      {
        v10 = v7[2](v7, v9);
        goto LABEL_98;
      }

LABEL_95:
      v9.n128_f64[0] = strtod(v131, 0);
LABEL_96:
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v3, v4, v5, v6, v9.n128_f64[0]);
      goto LABEL_97;
    case 2:
      v134 = *(a1 + 24);
      if (v134)
      {
        sub_2338728F0(v134, v7);
      }

      else
      {
        objc_msgSend_null(MEMORY[0x277CBEB68], v3, v4, v5, v6, NAN);
      }

      goto LABEL_97;
    case 4:
      v88 = sub_233873538(*(a1 + 24), v7, 0);
      v89 = v88 * sub_233873538(*(a1 + 32), v7, 0);
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v90, v91, v92, v93, v89);
      goto LABEL_97;
    case 5:
      v117 = sub_233873538(*(a1 + 24), v7, 0);
      v118 = v117 / sub_233873538(*(a1 + 32), v7, 0);
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v119, v120, v121, v122, v118);
      goto LABEL_97;
    case 6:
      v123 = sub_233873538(*(a1 + 24), v7, 0);
      v124 = v123 + sub_233873538(*(a1 + 32), v7, 0);
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v125, v126, v127, v128, v124);
      goto LABEL_97;
    case 7:
      v139 = sub_233873538(*(a1 + 24), v7, 0);
      v140 = v139 - sub_233873538(*(a1 + 32), v7, 0);
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v141, v142, v143, v144, v140);
      goto LABEL_97;
    case 8:
      v137 = sub_233873538(*(a1 + 24), v7, 0);
      v138 = sub_233873538(*(a1 + 32), v7, 0);
      v35 = MEMORY[0x277CBEC28];
      if (v137 >= v138)
      {
        v35 = MEMORY[0x277CBEC38];
      }

      goto LABEL_64;
    case 9:
      v70 = sub_233873538(*(a1 + 24), v7, 0);
      v71 = sub_233873538(*(a1 + 32), v7, 0);
      v35 = MEMORY[0x277CBEC28];
      if (v70 > v71)
      {
        v35 = MEMORY[0x277CBEC38];
      }

      goto LABEL_64;
    case 0xA:
      v94 = sub_233873538(*(a1 + 24), v7, 0);
      v95 = sub_233873538(*(a1 + 32), v7, 0);
      v35 = MEMORY[0x277CBEC28];
      if (v94 <= v95)
      {
        v35 = MEMORY[0x277CBEC38];
      }

      goto LABEL_64;
    case 0xB:
      v86 = sub_233873538(*(a1 + 24), v7, 0);
      v87 = sub_233873538(*(a1 + 32), v7, 0);
      v35 = MEMORY[0x277CBEC28];
      if (v86 < v87)
      {
        v35 = MEMORY[0x277CBEC38];
      }

      goto LABEL_64;
    case 0xC:
      v34 = sub_233873618(*(a1 + 24), v7, *(a1 + 32));
      v35 = MEMORY[0x277CBEC28];
      v36 = MEMORY[0x277CBEC38];
      goto LABEL_50;
    case 0xD:
      v34 = sub_233873618(*(a1 + 24), v7, *(a1 + 32));
      v35 = MEMORY[0x277CBEC38];
      v36 = MEMORY[0x277CBEC28];
LABEL_50:
      if (v34)
      {
        v35 = v36;
      }

LABEL_64:
      v10 = v35;
      goto LABEL_98;
    case 0xE:
      v129 = sub_233873790(*(a1 + 24), v7);
      v130 = MEMORY[0x277CBEC28];
      if (v129 && (sub_233873790(*(a1 + 32), v7) & 1) != 0)
      {
        v130 = MEMORY[0x277CBEC38];
      }

      v10 = v130;
      goto LABEL_98;
    case 0xF:
      if ((sub_233873790(*(a1 + 24), v7) & 1) != 0 || sub_233873790(*(a1 + 32), v7))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    case 0x10:
      v10 = sub_233873834(a1, v7);
      goto LABEL_98;
    case 0x11:
      if (*(*(a1 + 32) + 8) == 18)
      {
        v145 = sub_233873790(*(a1 + 24), v7);
        v146 = *(a1 + 32);
        if (v145)
        {
          sub_2338728F0(*(v146 + 24), v7);
        }

        else
        {
          sub_2338728F0(*(v146 + 32), v7);
        }

        v10 = LABEL_97:;
LABEL_98:
        v8 = v10;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_115;
    case 0x13:
LABEL_8:
      v8 = MEMORY[0x277CBEC38];
      goto LABEL_115;
    case 0x14:
LABEL_9:
      v8 = MEMORY[0x277CBEC28];
      goto LABEL_115;
    case 0x16:
      goto LABEL_96;
    case 0x17:
      v11 = sub_2338728F0(*(a1 + 24), v7);
      v30 = sub_2338728F0(*(a1 + 32), v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = objc_msgSend_objectForKeyedSubscript_(v11, v31, v30, v32, v33);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_114;
    case 0x18:
      v11 = sub_2338728F0(*(a1 + 24), v7);
      v78 = sub_233873538(*(a1 + 32), v7, 0);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v78 >= 0.0)) != 1 || v78 > (objc_msgSend_count(v11, v79, v80, v81, v82) - 1))
      {
        goto LABEL_35;
      }

      v116 = objc_msgSend_objectAtIndexedSubscript_(v11, v83, v78, v84, v85);
      goto LABEL_113;
    case 0x19:
      v11 = sub_233873834(*(a1 + 24), v7);
      if (v11)
      {
        v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v48, v49, v50, v51);
        v59 = objc_msgSend_count(v11, v52, v53, v54, v55);
        if (v59)
        {
          for (i = 0; i < v59; i = v62 + 1)
          {
            v61 = objc_msgSend_objectAtIndexedSubscript_(v11, v56, i, v57, v58);
            v62 = i + 1;
            v66 = objc_msgSend_objectAtIndexedSubscript_(v11, v63, v62, v64, v65);
            v69 = v66;
            if (v61 && v66)
            {
              objc_msgSend_setObject_forKeyedSubscript_(v8, v67, v66, v61, v68);
            }
          }
        }
      }

      else
      {
LABEL_35:
        v8 = 0;
      }

      goto LABEL_114;
    case 0x1A:
      v10 = sub_233873834(*(a1 + 24), v7);
      goto LABEL_98;
    case 0x1B:
      v37 = *(a1 + 24);
      v38 = 0.0;
      if (v37)
      {
        v11 = sub_2338728F0(v37, v7);
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v164 = objc_msgSend_count(v11, v39, v40, v41, v42);
            objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v165, v166, v167, v168, v164);
            goto LABEL_112;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v3, v4, v5, v6, 1.0);
            goto LABEL_112;
          }

          v38 = NAN;
        }
      }

      else
      {
        v11 = 0;
      }

      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v3, v4, v5, v6, v38);
      v116 = LABEL_112:;
LABEL_113:
      v8 = v116;
      goto LABEL_114;
    case 0x1C:
    case 0x1D:
      v11 = sub_233873834(*(a1 + 24), v7);
      v16 = objc_msgSend_count(v11, v12, v13, v14, v15);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v11, v17, 0, v18, v19);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_doubleValue(v20, v21, v22, v23, v24);
        v26 = v25;
      }

      else
      {
        v26 = NAN;
      }

      v152 = v16 - 1;
      v8 = objc_msgSend_objectAtIndexedSubscript_(v11, v21, v16 - 1, v23, v24);
      if (v152 < 2)
      {
        v157 = v20;
      }

      else
      {
        v156 = 2;
        while (1)
        {
          v157 = objc_msgSend_objectAtIndexedSubscript_(v11, v153, v156 - 1, v154, v155);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_doubleValue(v157, v153, v158, v154, v155);
          }

          else
          {
            v159 = NAN;
          }

          v160 = *(a1 + 8);
          if (v160 == 29 && v26 == v159)
          {
            break;
          }

          if (v160 == 28 && v26 <= v159)
          {
            break;
          }

          v161 = v156 + 1;
          v156 += 2;
          v20 = v157;
          if (v161 >= v152)
          {
            goto LABEL_90;
          }
        }

        v162 = objc_msgSend_objectAtIndexedSubscript_(v11, v153, v156, v154, v155);

        v8 = v162;
      }

LABEL_90:

LABEL_114:
LABEL_115:

      return v8;
    case 0x1E:
      v43 = round(sub_233873538(*(a1 + 24), v7, 0));
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v44, v45, v46, v47, v43);
      goto LABEL_97;
    case 0x1F:
      v72 = floor(sub_233873538(*(a1 + 24), v7, 0));
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v73, v74, v75, v76, v72);
      goto LABEL_97;
    case 0x20:
      v96 = sqrt(sub_233873538(*(a1 + 24), v7, 0));
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v97, v98, v99, v100, v96);
      goto LABEL_97;
    case 0x21:
      v77 = sub_233873538(*(a1 + 24), v7, 0);
      v9.n128_f64[0] = exp(v77);
      goto LABEL_96;
    case 0x22:
      v147 = fabs(sub_233873538(*(a1 + 24), v7, 0));
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v148, v149, v150, v151, v147);
      goto LABEL_97;
    case 0x23:
      v28 = sub_233873538(*(a1 + 24), v7, 0);
      v29 = sub_233873538(*(a1 + 32), v7, 0);
      v9.n128_f64[0] = pow(v28, v29);
      goto LABEL_96;
    case 0x24:
      v135 = sub_233873538(*(a1 + 24), v7, 0);
      v9.n128_f64[0] = sub_233873538(*(a1 + 32), v7, 0);
      v136 = v9.n128_f64[0] < v135;
      goto LABEL_70;
    case 0x25:
      v135 = sub_233873538(*(a1 + 24), v7, 0);
      v9.n128_f64[0] = sub_233873538(*(a1 + 32), v7, 0);
      v136 = v135 < v9.n128_f64[0];
LABEL_70:
      if (!v136)
      {
        v9.n128_f64[0] = v135;
      }

      goto LABEL_96;
    case 0x26:
      v27 = sub_233873538(*(a1 + 24), v7, 0);
      v9.n128_f64[0] = log2(v27);
      goto LABEL_96;
    case 0x27:
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, *(*(a1 + 24) + 40), v5, v6, NAN);
      v106 = objc_msgSend_length(v101, v102, v103, v104, v105);
      v109 = objc_msgSend_substringWithRange_(v101, v107, 1, v106 - 2, v108);

      v110 = v109;
      v11 = v109;
      v115 = objc_msgSend_UTF8String(v110, v111, v112, v113, v114);
      v116 = (v7[2])(v7, v115);
      goto LABEL_113;
    default:
      goto LABEL_115;
  }
}

void sub_233873368(void *a1)
{
  sub_2338733A0(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338733A0(void *a1)
{
  *a1 = &unk_28492B618;
  v2 = a1[1];
  while (v2)
  {
    v3 = a1[3];
    a1[1] = --v2;
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      (*(*v4 + 8))(v4);
      v2 = a1[1];
    }
  }

  v5 = a1[3];
  if (v5)
  {
    free(v5);
    a1[3] = 0;
  }

  return a1;
}

void sub_23387343C(void *a1)
{
  sub_233873474(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233873474(void *a1)
{
  *a1 = &unk_28492B648;
  v3 = a1 + 3;
  v2 = a1[3];
  if (v2)
  {
    v4 = a1[4];
    (*(*v2 + 8))(a1[3]);
    if (v2 == v4)
    {
      v3[1] = 0;
    }

    *v3 = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    (*(*v5 + 8))(v5);
    a1[4] = 0;
  }

  a1[5] = 0;
  return a1;
}

double sub_233873538(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_2338728F0();
  v8 = v4;
  if (a3)
  {
    isEqualToValue = objc_msgSend_isEqualToValue_(v4, v5, MEMORY[0x277CBEC28], v6, v7);
    v13 = objc_msgSend_isEqualToValue_(v8, v10, MEMORY[0x277CBEC38], v11, v12);
    v14 = NAN;
    if (isEqualToValue)
    {
      v14 = 0.0;
    }

    if (v13)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = NAN;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = CFGetTypeID(v8);
    if (v16 != CFBooleanGetTypeID())
    {
      objc_msgSend_doubleValue(v8, v17, v18, v19, v20);
      v15 = v21;
    }
  }

  return v15;
}

uint64_t sub_233873618(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_2338728F0(a1, v5);
  v7 = sub_2338728F0(a3, v5);
  if (v6 == v7)
  {
    isEqualToString = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      isEqualToString = objc_msgSend_isEqualToString_(v6, v8, v7, v9, v10);
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      if (isKindOfClass & objc_opt_isKindOfClass())
      {
        v13 = sub_233873538(a1, v5, 1);
        isEqualToString = v13 == sub_233873538(a3, v5, 1);
      }

      else
      {
        isEqualToString = 0;
      }
    }
  }

  return isEqualToString;
}

uint64_t sub_233873790(uint64_t a1, uint64_t a2)
{
  v2 = sub_2338728F0(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v8 = objc_msgSend_objCType(v3, v4, v5, v6, v7);
    if (*v8 == 66 && !v8[1])
    {
      v14 = objc_msgSend_BOOLValue(v2, v9, v10, v11, v12);
    }

    else
    {
      objc_msgSend_doubleValue(v2, v9, v10, v11, v12);
      v14 = v13 != 0.0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_233873834(uint64_t a1, void *a2)
{
  v4 = a2;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  if (a1)
  {
    if (*(a1 + 8) == 16)
    {
      while (1)
      {
        v10 = *(a1 + 24);
        a1 = *(a1 + 32);
        v14 = sub_2338728F0(v10, v4);
        v15 = v14;
        if (!v14)
        {
          v2 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, 0, v12, v13);
          v15 = v2;
        }

        objc_msgSend_addObject_(v9, v11, v15, v12, v13);
        if (!v14)
        {
        }

        if (*(a1 + 8) != 16)
        {
          break;
        }
      }

      v20 = sub_2338728F0(a1, v4);

      v21 = v20;
      if (!v20)
      {
        v21 = objc_msgSend_null(MEMORY[0x277CBEB68], v16, v22, v18, v19);
      }
    }

    else
    {
      v20 = sub_2338728F0(a1, v4);
      v21 = v20;
      if (!v20)
      {
        v21 = objc_msgSend_null(MEMORY[0x277CBEB68], v16, v17, v18, v19);
      }
    }

    objc_msgSend_addObject_(v9, v16, v21, v18, v19);
    if (!v20)
    {
    }
  }

  return v9;
}

void sub_233873A08(uint64_t a1, uint64_t a2)
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

void sub_233873AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233873AEC(uint64_t a1)
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

void sub_233873BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_233873BB8(uint64_t a1)
{
  v1 = (*(*a1 + 2992))(a1);
  result = 0.6;
  if (!v1)
  {
    return 1.0;
  }

  return result;
}

void sub_233873C0C(uint64_t a1)
{
  (*(*a1 + 160))(&__p);
  sub_233873E7C(&__p, &v11);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((*(*v11 + 632))(v11))
  {
    v10[0] = &unk_284917748;
    v10[1] = 0;
    (*(*a1 + 160))(&v8, a1);
    v2 = v8;
    sub_23372A488(&__p, "AsShotWhiteBalance");
    (*(*v2 + 600))(v2, &__p, v10, 3);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    if (v9)
    {
      sub_2337239E8(v9);
    }
  }

  else
  {
    v3 = (*(*a1 + 3000))(a1);
    (*(*a1 + 2960))(a1, v3);
  }

  if (v12)
  {
    sub_2337239E8(v12);
  }
}

void sub_233873E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233873E7C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284906FB0, 0)) != 0)
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

uint64_t sub_233873F00(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D7FB8(v2, @"cameraMultipliersOffset", v3, &unk_28492B668);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_233873FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233873FC4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t sub_233874020(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D7FB8(v2, @"blackLevelTableOffset", v3, &unk_28492B688);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2338740CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338740E4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t sub_233874140(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D7FB8(v2, @"cameraMultipliersChannelCount", v3, &unk_28492B6A8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2338741EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_23387420C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEqualToString_(v3, v4, @"aspectRatioCrop", v5, v6))
  {
    v28 = 0;
    v29 = 0;
    v10 = (*(*a1 + 432))(a1);
    v12 = v11;
    (*(*a1 + 160))(&v24, a1);
    sub_2337D76B4(&v24, &v26);
    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (v26)
    {
      v10 = (*(*v26 + 792))(v26);
      v12 = v13;
    }

    v28 = v10;
    v29 = v12;
    if (v27)
    {
      sub_2337239E8(v27);
    }

    v17 = sub_2337D891C(&v28, v13, v14, v15, v16);
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"firmwareVersion", v8, v9))
  {
    (*(*a1 + 160))(&v26, a1);
    sub_2337D76B4(&v26, &v28);
    if (v27)
    {
      sub_2337239E8(v27);
    }

    if (v28)
    {
      v21 = sub_23375D000(v28);
    }

    else
    {
      v21 = 0;
    }

    if (v29)
    {
      sub_2337239E8(v29);
    }

    v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v21, v19, v20);
  }

  else
  {
    v17 = sub_233814A54(a1, v3);
  }

  v22 = v17;

  return v22;
}

void sub_2338743F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(a1);
}

void sub_233874434(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(*a1 + 960))(a1) != 10)
  {
LABEL_23:
    sub_233814B18(a1, a2);
    return;
  }

  (*(*a1 + 160))(&__p, a1);
  sub_233873E7C(&__p, &v17);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  if (!v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((*(*v17 + 632))(v17))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    (*(*a1 + 160))(&v15, a1);
    v4 = v15;
    sub_23372A488(&__p, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
    v5 = (*(*v4 + 248))(v4, &__p, a2, 0);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v16)
    {
      sub_2337239E8(v16);
    }

    if (v5)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v7 = (*(*a1 + 3016))(a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    (*(*a1 + 160))(&v15, a1);
    v8 = v15;
    sub_23372A488(&__p, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
    v9 = (*(*v8 + 248))(v8, &__p, a2, v7);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v16)
    {
      sub_2337239E8(v16);
    }

    if (v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v10;
    operator delete(v10);
  }

  v6 = 1;
LABEL_20:
  if (v18)
  {
    sub_2337239E8(v18);
  }

  if (v6)
  {
    goto LABEL_23;
  }
}

void sub_233874700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  v21 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v21;
    operator delete(v21);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2338747B4@<X0>(char *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = a2;
  if (result[23] < 0)
  {
    result = sub_233731FB8(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    a2[2] = *(result + 2);
  }

  if (*(v2 + 23) < 0)
  {
    if (v2[1])
    {
      return result;
    }

    v2[1] = 7;
    v2 = *v2;
  }

  else
  {
    if (*(v2 + 23))
    {
      return result;
    }

    *(v2 + 23) = 7;
  }

  strcpy(v2, "<empty>");
  return result;
}

char *sub_233874844@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a2;
  if (*(a1 + 23) < 0)
  {
    sub_233731FB8(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 2) = *(a1 + 16);
  }

  v3 = v2[23];
  v4 = *v2;
  if (v3 >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = *v2;
  }

  if (v3 >= 0)
  {
    v6 = v2[23];
  }

  else
  {
    v6 = *(v2 + 1);
  }

  v7 = &v5[v6];
  if (v6 < 1)
  {
    v11 = -1;
  }

  else
  {
    v8 = v6;
    v9 = v5;
    do
    {
      v10 = memchr(v9, 64, v8);
      if (!v10)
      {
        break;
      }

      if (*v10 == 64)
      {
        goto LABEL_16;
      }

      v9 = v10 + 1;
      v8 = v7 - v9;
    }

    while (v7 - v9 > 0);
    v10 = &v5[v6];
LABEL_16:
    if (v10 == v7)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10 - v5;
    }

    v12 = v5;
    do
    {
      result = memchr(v12, 46, v6);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        goto LABEL_26;
      }

      v12 = result + 1;
      v6 = v7 - v12;
    }

    while (v7 - v12 > 0);
  }

  result = v7;
LABEL_26:
  v14 = result - v5;
  if (result == v7)
  {
    v14 = -1;
  }

  if (v11 != -1 && v14 != -1 && v14 > v11 + 1)
  {
    if ((v3 & 0x80000000) != 0)
    {
      *(v2 + 1) = 7;
      v2 = v4;
    }

    else
    {
      v2[23] = 7;
    }

    strcpy(v2, "<email>");
  }

  return result;
}

unint64_t sub_2338749AC(uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

void sub_233874A78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_233731FB8(__dst, *a1, *(a1 + 8));
  }

  else
  {
    *__dst = *a1;
    v49 = *(a1 + 16);
  }

  sub_233874844(__dst, __p);
  sub_2338747B4(__p, a2);
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(&v47, *a2, *(a2 + 8));
  }

  else
  {
    v47 = *a2;
  }

  v3 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  LOBYTE(v4) = *(&v47.__r_.__value_.__s + 23);
  size = v47.__r_.__value_.__l.__size_;
  v5 = v47.__r_.__value_.__r.__words[0];
  v7 = &v47;
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = (&v47 + HIBYTE(v47.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v8 = (v47.__r_.__value_.__r.__words[0] + v47.__r_.__value_.__l.__size_);
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v47;
  }

  else
  {
    v9 = v47.__r_.__value_.__r.__words[0];
  }

  if (v9 != v8)
  {
    do
    {
      v9->__r_.__value_.__s.__data_[0] = __toupper(v9->__r_.__value_.__s.__data_[0]);
      v9 = (v9 + 1);
    }

    while (v9 != v8);
    v3 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    size = v47.__r_.__value_.__l.__size_;
    v5 = v47.__r_.__value_.__r.__words[0];
    LOBYTE(v4) = *(&v47.__r_.__value_.__s + 23);
  }

  if ((v4 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v7 = v5;
    v10 = size;
  }

  if (v10 >= 5)
  {
    v11 = v7 + v10;
    v12 = v10;
    v13 = v7;
    do
    {
      v14 = memchr(v13, 78, v12 - 4);
      if (!v14)
      {
        break;
      }

      if (*v14 == 1330334030 && v14[4] == 78)
      {
        if (v14 != v11 && v14 - v7 != -1)
        {
          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 5;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 5;
          }

          *(a2 + 4) = 78;
          v45 = 1330334030;
          goto LABEL_149;
        }

        break;
      }

      v13 = (v14 + 1);
      v12 = v11 - v13;
    }

    while (v11 - v13 >= 5);
    v16 = v10;
    v17 = v7;
    if (v10 < 7)
    {
      goto LABEL_45;
    }

    v18 = v10;
    v19 = v7;
    while (1)
    {
      v20 = memchr(v19, 79, v18 - 6);
      if (!v20)
      {
LABEL_44:
        v16 = v10;
        v17 = v7;
        goto LABEL_45;
      }

      v21 = v20;
      if (*v20 == 1297697871 && *(v20 + 3) == 1398100045)
      {
        break;
      }

      v19 = (v20 + 1);
      v18 = v11 - (v21 + 1);
      if (v18 < 7)
      {
        goto LABEL_44;
      }
    }

    v16 = v10;
    v17 = v7;
    if (v21 != v11)
    {
      v16 = v10;
      v17 = v7;
      if (v21 - v7 != -1)
      {
        if (*(a2 + 23) < 0)
        {
          *(a2 + 8) = 7;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 7;
        }

        *(a2 + 3) = 1398100045;
        v46 = 1297697871;
LABEL_156:
        *a2 = v46;
        v44 = (a2 + 7);
        goto LABEL_157;
      }
    }

LABEL_45:
    do
    {
      v23 = memchr(v17, 76, v16 - 4);
      if (!v23)
      {
        break;
      }

      if (*v23 == 1128875340 && v23[4] == 65)
      {
        if (v23 != v11 && v23 - v7 != -1)
        {
          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 5;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 5;
          }

          *(a2 + 4) = 65;
          v45 = 1128875340;
          goto LABEL_149;
        }

        break;
      }

      v17 = (v23 + 1);
      v16 = v11 - v17;
    }

    while (v11 - v17 >= 5);
    if (v10 != 5)
    {
      v25 = v7;
      do
      {
        v26 = memchr(v25, 80, v10 - 5);
        if (!v26)
        {
          break;
        }

        if (*v26 == 1414415696 && *(v26 + 2) == 22593)
        {
          if (v26 == v11 || v26 - v7 == -1)
          {
            break;
          }

          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 6;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 6;
          }

          *(a2 + 4) = 22593;
          *a2 = 1414415696;
          v44 = (a2 + 6);
          goto LABEL_157;
        }

        v25 = (v26 + 1);
        v10 = v11 - v25;
      }

      while (v11 - v25 >= 6);
    }
  }

  if ((v4 & 0x80u) == 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = size;
  }

  v28 = v7 + v4;
  if (v4 > 6)
  {
    v29 = v4;
    v30 = v7;
    do
    {
      v31 = memchr(v30, 77, v29 - 6);
      if (!v31)
      {
        break;
      }

      if (*v31 == 1330530637 && *(v31 + 3) == 1096043599)
      {
        if (v31 != v28 && v31 - v7 != -1)
        {
          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 7;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 7;
          }

          *(a2 + 3) = 1096043599;
          v46 = 1330530637;
          goto LABEL_156;
        }

        break;
      }

      v30 = (v31 + 1);
      v29 = v28 - v30;
    }

    while (v28 - v30 >= 7);
    v33 = v4;
    v34 = v7;
    do
    {
      v35 = memchr(v34, 83, v33 - 6);
      if (!v35)
      {
        break;
      }

      if (*v35 == 1397571923 && *(v35 + 3) == 1196315987)
      {
        if (v35 == v28 || v35 - v7 == -1)
        {
          break;
        }

        if (*(a2 + 23) < 0)
        {
          *(a2 + 8) = 7;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 7;
        }

        *(a2 + 3) = 1196315987;
        v46 = 1397571923;
        goto LABEL_156;
      }

      v34 = (v35 + 1);
      v33 = v28 - v34;
    }

    while (v28 - v34 >= 7);
  }

  if (v4 >= 5)
  {
    v37 = v4;
    v38 = v7;
    do
    {
      v39 = memchr(v38, 69, v37 - 4);
      if (!v39)
      {
        break;
      }

      if (*v39 == 1330860101 && v39[4] == 78)
      {
        if (v39 != v28 && v39 - v7 != -1)
        {
          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 5;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 5;
          }

          *(a2 + 4) = 78;
          v45 = 1330860101;
          goto LABEL_149;
        }

        break;
      }

      v38 = (v39 + 1);
      v37 = v28 - v38;
    }

    while (v28 - v38 >= 5);
    if (v4 >= 10)
    {
      v41 = v7;
      do
      {
        v42 = memchr(v41, 72, v4 - 9);
        if (!v42)
        {
          break;
        }

        if (*v42 == 0x4C424C4553534148 && *(v42 + 4) == 17473)
        {
          if (v42 == v28 || v42 - v7 == -1)
          {
            break;
          }

          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 10;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 10;
          }

          *(a2 + 8) = 17473;
          *a2 = *"HASSELBLAD";
          v44 = (a2 + 10);
          goto LABEL_157;
        }

        v41 = (v42 + 1);
        v4 = v28 - v41;
      }

      while (v28 - v41 >= 10);
    }
  }

  if (sub_2338749AC(&v47, "LEAF", 0) == -1)
  {
    if (sub_2338749AC(&v47, "RICOH", 0) == -1)
    {
      if (sub_2338749AC(&v47, "PHASE ONE", 0) == -1)
      {
        std::string::operator=(a2, &v47);
        goto LABEL_158;
      }

      if (*(a2 + 23) < 0)
      {
        *(a2 + 8) = 9;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 9;
      }

      *(a2 + 8) = 69;
      *a2 = *"PHASE ONE";
      v44 = (a2 + 9);
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        *(a2 + 8) = 5;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 5;
      }

      *(a2 + 4) = 72;
      v45 = 1329809746;
LABEL_149:
      *a2 = v45;
      v44 = (a2 + 5);
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      *(a2 + 8) = 4;
      a2 = *a2;
    }

    else
    {
      *(a2 + 23) = 4;
    }

    *a2 = 1178682700;
    v44 = (a2 + 4);
  }

LABEL_157:
  *v44 = 0;
LABEL_158:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_2338751E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_233875248(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_233731FB8(v3, *a1, *(a1 + 8));
  }

  else
  {
    *v3 = *a1;
    v4 = *(a1 + 16);
  }

  sub_233874844(v3, __p);
  sub_2338747B4(__p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_2338752D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

BOOL sub_233875304(int a1, int a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  v7 = __s;
  v8 = __s[23];
  if (v8 < 0)
  {
    v8 = *(__s + 1);
    if (!v8)
    {
LABEL_18:
      v13 = 1;
      goto LABEL_19;
    }

    v7 = *__s;
  }

  else if (!__s[23])
  {
    goto LABEL_18;
  }

  v9 = &v7[v8];
  if (v8 >= 4)
  {
    v10 = v7;
    do
    {
      v11 = memchr(v10, 100, v8 - 3);
      if (!v11)
      {
        break;
      }

      if (*v11 == 778530404)
      {
        goto LABEL_12;
      }

      v10 = v11 + 1;
      v8 = v9 - v10;
    }

    while (v9 - v10 > 3);
  }

  v11 = v9;
LABEL_12:
  v13 = v11 == v9 || v11 != v7;
LABEL_19:
  v14 = *(a4 + 23);
  if (v14 < 0)
  {
    if (a4[1] != 14)
    {
      return 0;
    }

    a4 = *a4;
  }

  else if (v14 != 14)
  {
    return 0;
  }

  if (*a4 ^ 0x4F45206E6F6E6143 | *(a4 + 6) ^ 0x4430303320534F45)
  {
    v13 = 1;
  }

  if (v13)
  {
    return 0;
  }

  v15 = *(a5 + 23);
  if (v15 < 0)
  {
    if (a5[1] == 10)
    {
      a5 = *a5;
      return *a5 == 0x3831313330363830 && *(a5 + 4) == 14646;
    }

    return 0;
  }

  if (v15 != 10)
  {
    return 0;
  }

  return *a5 == 0x3831313330363830 && *(a5 + 4) == 14646;
}

void sub_23387546C(void *a1, void *a2)
{
  if ((atomic_load_explicit(&qword_280C04EE0, memory_order_acquire) & 1) == 0)
  {
    sub_2338FD2B4();
  }

  if (qword_27DE3DE20 != -1)
  {
    sub_2338FD310();
  }

  v4 = *a1;
  if (qword_280C04ED8)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (*a2)
    {
      LODWORD(v44) = (*(**a2 + 120))(*a2);
      v6 = sub_2337584D4(&v44);
      v7 = sub_2337584A8(&v44);
      sub_23373CD80(v7, &v50);

      (*(**a2 + 144))(&v48);
      if (*(&v48 + 1) == v48)
      {
        goto LABEL_24;
      }

      v8 = *(v48 + 23);
      if (v8 >= 0)
      {
        v9 = *(v48 + 23);
      }

      else
      {
        v9 = *(v48 + 8);
      }

      v10 = HIBYTE(v51);
      if (v51 < 0)
      {
        v10 = *(&v50 + 1);
      }

      if (v9 != v10)
      {
LABEL_24:
        v13 = 0;
      }

      else
      {
        if (v8 >= 0)
        {
          v11 = v48;
        }

        else
        {
          v11 = *v48;
        }

        if (v51 >= 0)
        {
          v12 = &v50;
        }

        else
        {
          v12 = v50;
        }

        v13 = memcmp(v11, v12, v9) == 0;
      }

      *&v46 = &v48;
      sub_233735AD4(&v46);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50);
      }

      v4 = *a1;
    }

    else
    {
      v13 = 0;
      v6 = -1;
    }

    (*(*v4 + 216))(&v50);
    (*(**a1 + 224))(&v48);
    (***a1)(&v46);
    (*(**a1 + 232))(&v44);
    v14 = (*(**a1 + 400))(*a1);
    v15 = sub_233875D18(v14, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2FE0]);
    sub_23373CD80(v15, &v42);

    if (SHIBYTE(v51) < 0)
    {
      v16 = sub_233731FB8(&__dst, v50, *(&v50 + 1));
    }

    else
    {
      __dst = v50;
      v41 = v51;
    }

    if (SHIBYTE(v49) < 0)
    {
      v16 = sub_233731FB8(v38, v48, *(&v48 + 1));
    }

    else
    {
      *v38 = v48;
      v39 = v49;
    }

    if (SHIBYTE(v47) < 0)
    {
      v16 = sub_233731FB8(__s, v46, *(&v46 + 1));
    }

    else
    {
      *__s = v46;
      v37 = v47;
    }

    if (SHIBYTE(v45) < 0)
    {
      v16 = sub_233731FB8(v34, v44, *(&v44 + 1));
    }

    else
    {
      *v34 = v44;
      v35 = v45;
    }

    if (SHIBYTE(v43) < 0)
    {
      v16 = sub_233731FB8(__p, v42, *(&v42 + 1));
    }

    else
    {
      *__p = v42;
      v33 = v43;
    }

    v18 = sub_233875304(v16, v17, __s, v34, __p);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(__s[0]);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(__dst);
      if (v18)
      {
LABEL_75:
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(v48);
        }

        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50);
        }

        return;
      }
    }

    else if (v18)
    {
      goto LABEL_75;
    }

    v19 = qword_280C04ED8;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3321888768;
    v21[2] = sub_233875DAC;
    v21[3] = &unk_28492C300;
    if (SHIBYTE(v51) < 0)
    {
      sub_233731FB8(v22, v50, *(&v50 + 1));
    }

    else
    {
      *v22 = v50;
      v23 = v51;
    }

    if (SHIBYTE(v49) < 0)
    {
      sub_233731FB8(v24, v48, *(&v48 + 1));
    }

    else
    {
      *v24 = v48;
      v25 = v49;
    }

    if (SHIBYTE(v47) < 0)
    {
      sub_233731FB8(v26, v46, *(&v46 + 1));
    }

    else
    {
      *v26 = v46;
      v27 = v47;
    }

    v20 = a2[1];
    v28 = *a2;
    v29 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v6;
    v31 = v13;
    dispatch_async(v19, v21);
    if (v29)
    {
      sub_2337239E8(v29);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    goto LABEL_75;
  }
}

void sub_2338759F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (*(v55 - 161) < 0)
  {
    operator delete(*(v55 - 184));
  }

  if (*(v55 - 137) < 0)
  {
    operator delete(*(v55 - 160));
  }

  if (*(v55 - 113) < 0)
  {
    operator delete(*(v55 - 136));
  }

  if (*(v55 - 89) < 0)
  {
    operator delete(*(v55 - 112));
  }

  if (*(v55 - 65) < 0)
  {
    operator delete(*(v55 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_233875B34()
{
  v0 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v1, v2, v3, v4);
  v10 = objc_msgSend_bundleIdentifier(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_bundleURL(v5, v11, v12, v13, v14);
  v20 = objc_msgSend_pathExtension(v15, v16, v17, v18, v19);

  if (v10)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = v10;
    v23 = v20;
    AnalyticsSendEventLazy();
  }

  objc_autoreleasePoolPop(v0);
}

id sub_233875C88(uint64_t a1, const char *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"Signature";
  v5[1] = @"Extension";
  v2 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v2;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, v5, 2);

  return v3;
}

id sub_233875D18(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_233739994(a1, a2, 0);
  v10 = sub_233739A60(v6, v5, v7, v8, v9);

  return v10;
}

void sub_233875DAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CCACA8];
  if (*(a1 + 55) < 0)
  {
    sub_233731FB8(&__dst, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __dst = *(a1 + 32);
    v50 = *(a1 + 48);
  }

  sub_233874A78(&__dst, v51);
  if (v52 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, v51, v5, v6);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, v51[0], v5, v6);
  }
  v7 = ;
  v8 = v7;
  v9 = @"Unknown Make";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(__dst);
  }

  v11 = MEMORY[0x277CCACA8];
  if (*(a1 + 79) < 0)
  {
    sub_233731FB8(&__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __p = *(a1 + 56);
    v48 = *(a1 + 72);
  }

  sub_233875248(&__p, v51);
  if (v52 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v11, v12, v51, v13, v14);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v11, v12, v51[0], v13, v14);
  }
  v15 = ;
  v16 = v15;
  v17 = @"Unknown Model";
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p);
  }

  v22 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v22 = *v22;
  }

  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v22, v20, v21);
  v24 = v23;
  v25 = @"Unknown Key";
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  v27 = *(a1 + 104);
  if (v27)
  {
    v28 = (*(*v27 + 2152))(v27);
    v29 = (*(**(a1 + 104) + 176))(*(a1 + 104));
    v30 = (*(**(a1 + 104) + 408))(*(a1 + 104));
    v31 = 0.0;
    if ((v28 & 1) == 0)
    {
      v31 = (*(**(a1 + 104) + 2664))(*(a1 + 104), 0, 0);
    }

    v32 = (*(**(a1 + 104) + 256))(*(a1 + 104));
    v33 = (*(**(a1 + 104) + 264))(*(a1 + 104));
    v39[1] = MEMORY[0x277D85DD0];
    v39[2] = 3221225472;
    v39[3] = sub_233876304;
    v39[4] = &unk_2789EF7E0;
    v43 = *(a1 + 120);
    v44 = *(a1 + 124);
    v45 = v29;
    v46 = v28;
    v40 = v10;
    v41 = v18;
    v42[0] = v26;
    *&v42[1] = v31;
    *&v42[2] = v30 * SHIDWORD(v30);
    *&v42[3] = v32;
    *&v42[4] = v33;
    AnalyticsSendEventLazy();
    v34 = &v40;
    v35 = &v41;
    v36 = v42;
  }

  else
  {
    v37 = v10;
    v38 = v18;
    v39[0] = v26;
    AnalyticsSendEventLazy();
    v34 = &v37;
    v35 = &v38;
    v36 = v39;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_233876218(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338761F0);
}

void sub_2338762A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v34 - 113) < 0)
  {
    operator delete(*(v34 - 136));
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x233876280);
}

void sub_2338762D4()
{
  if (*(v0 - 113) < 0)
  {
    operator delete(*(v0 - 136));
  }

  if (*(v0 - 137) < 0)
  {
    operator delete(*(v0 - 160));
  }

  JUMPOUT(0x233876284);
}

id sub_233876304(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v42[0] = @"ProcessingVersion";
  v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *(a1 + 88), a4, a5);
  v43[0] = v6;
  v42[1] = @"LatestVersion";
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, *(a1 + 92), v8, v9);
  v43[1] = v10;
  v42[2] = @"DNG";
  v14 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, *(a1 + 93), v12, v13);
  v43[2] = v14;
  v42[3] = @"Linearized";
  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, *(a1 + 94), v16, v17);
  v43[3] = v18;
  v44 = *(a1 + 32);
  v42[4] = @"CameraMake";
  v42[5] = @"CameraModel";
  v45 = *(a1 + 48);
  v42[6] = @"CameraKey";
  v42[7] = @"RepresentativeNoise";
  v23 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v19, v20, v21, v22, *(a1 + 56));
  v46 = v23;
  v42[8] = @"Megapixel";
  v28 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v25, v26, v27, *(a1 + 64));
  v47 = v28;
  v42[9] = @"ISO";
  v33 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v29, v30, v31, v32, *(a1 + 72));
  v48 = v33;
  v42[10] = @"ExposureTime";
  v38 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v34, v35, v36, v37, *(a1 + 80));
  v49 = v38;
  v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v43, v42, 11);

  return v40;
}

id sub_233876588(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v5[0] = @"CameraMake";
  v5[1] = @"CameraModel";
  v6 = v2;
  v5[2] = @"CameraKey";
  v7 = *(a1 + 48);
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, &v6, v5, 3);

  return v3;
}

_BYTE *sub_23387662C(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_233731FB8(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_233731FB8(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    result = sub_233731FB8(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(v3 + 12) = *(a2 + 96);
    *(v3 + 5) = v6;
  }

  v7 = *(a2 + 112);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 14) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338766E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_233876714(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void sub_233876A94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_233876AB0(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWBayerInterleavedFilter", &unk_233945DBE, v5, 2u);
  }
}

void sub_233876B38(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGAffineTransformMakeScale(&v8, 0.5, 0.5);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  v10 = CGRectApplyAffineTransform(v9, &v8);
  CGRectIntegral(v10);
}

void sub_2338789CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338789E8(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWDemosaicFilter", &unk_233945DBE, v5, 2u);
  }
}

double sub_233878AA0(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  v19 = a1 + a7;
  v20 = a2 + a8;
  v27 = CGRectInset(*(&a3 - 2), -a9, -a9);
  v21 = 0;
  v22 = 0;
  v23 = a5;
  v24 = a6;

  *&result = CGRectIntersection(v27, *&v21);
  return result;
}

double sub_233878B60(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_233878B8C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    *&result = CGRectInset(*&result, -3.0, -3.0);
  }

  return result;
}

void sub_233878CE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 160))(&v7);
  sub_233878E40(&v7, &v9);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (v9)
  {
    (*(*a1 + 160))(&v5, a1);
    sub_2338EDDEC(&v5, &v7);
    if (v6)
    {
      sub_2337239E8(v6);
    }

    v4 = 0.0;
    if (v7[18] >= 3)
    {
      LODWORD(v4) = v7[29];
      v4 = *&v4;
    }

    v5 = v4;
    sub_233731694(a2, 4uLL);
    if (v8)
    {
      sub_2337239E8(v8);
    }
  }

  else
  {
    v7 = 0;
    sub_233731694(a2, 4uLL);
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }
}

void sub_233878E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233878E40@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284937F70, 0)) != 0)
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

void sub_233878EC4(_DWORD *a1)
{
  if (!a1[10])
  {
    sub_23373C93C(a1);
  }
}

void sub_233878ED4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_2338799A8();
}

void sub_233878F24(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x233878F14);
}

void sub_233878F34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233878F4C(uint64_t *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 48))();
  v14 = sub_233725414(*a2);
  LODWORD(v13[0]) = v4;
  LODWORD(v13[0]) = *sub_233725A80(v13, &v14);
  sub_233754E8C(v15, a2, v13);
  v5 = sub_233725614(*a2);
  sub_233725614(*a2);
  v14 = sub_233725614(*a2);
  if (v5 != 1229539657 && v5 != 1296911693)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233723AE0(&v12, &v14);
  sub_233725F08(v13, a2, &v12, 0);
  v6 = sub_233725614(*a2);
  sub_233725614(*a2);
  if (v6 > 0x1FF)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v9, "RawCameraException");
    __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  for (; v6; --v6)
  {
    v7 = sub_233725614(*a2);
    v12 = sub_233725614(*a2);
    v11 = sub_233725614(*a2);
    sub_233879198(a1, a2, v7, &v12, &v11);
  }

  sub_233725FD4(v13);
  return sub_233754F18(v15);
}

void sub_23387912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  __cxa_free_exception(v14);
  sub_233754F18(&a14);
  _Unwind_Resume(a1);
}

uint64_t *sub_233879198(uint64_t *result, uint64_t *a2, int a3, _DWORD *a4, int *a5)
{
  v7 = result;
  v43 = *MEMORY[0x277D85DE8];
  if (a3 > 1048)
  {
    switch(a3)
    {
      case 1049:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        if (*a4 >= 0x24u && sub_2337255C0(*a2) == 18761 && sub_2337255C0(*a2) == 1)
        {
          *(v7 + 64) = sub_233725730(*a2);
          *(v7 + 68) = sub_233725730(*a2);
          *(v7 + 72) = sub_233725730(*a2);
          *(v7 + 76) = sub_233725730(*a2);
          *(v7 + 80) = sub_233725730(*a2);
          *(v7 + 84) = sub_233725730(*a2);
          *(v7 + 88) = sub_233725730(*a2);
          v30 = sub_233725730(*a2);
          *(v7 + 92) = v30;
          *(v7 + 48) = 0;
          if ((*(v7 + 64) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v7 + 68) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v7 + 72) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v7 + 76) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v7 + 80) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v7 + 84) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v7 + 88) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v30) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }

        return sub_233725FD4(v39);
      case 1050:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        if (*a4 == 16)
        {
          v31 = sub_233725730(*a2);
          *__s = v31;
          v38 = sub_233725730(*a2);
          v32 = sub_233725730(*a2);
          v37 = v32;
          v33 = sub_233725730(*a2);
          v36 = v33;
          if ((LODWORD(v31) & 0x7FFFFFFFu) > 0x7F7FFFFF || (v38 & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v32) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v33) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            v34 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v34, "RawCameraException");
            __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          sub_233754CB4((v7 + 24), __s);
          sub_233754CB4((v7 + 24), &v38);
          sub_233754CB4((v7 + 24), &v37);
          sub_233754CB4((v7 + 24), &v36);
        }

        return sub_233725FD4(v39);
      case 1051:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        if (*a4 == 116)
        {
          v9 = 5;
          do
          {
            *__s = sub_233725614(*a2);
            sub_2337539D0((v7 + 104), __s);
            --v9;
          }

          while (v9);
          v10 = 5;
          do
          {
            *__s = sub_233725614(*a2);
            sub_2337539D0((v7 + 128), __s);
            --v10;
          }

          while (v10);
          v11 = 5;
          do
          {
            *__s = sub_233725614(*a2);
            sub_2337539D0((v7 + 152), __s);
            --v11;
          }

          while (v11);
          v12 = 5;
          do
          {
            *__s = sub_233725614(*a2);
            sub_2337539D0((v7 + 176), __s);
            --v12;
          }

          while (v12);
          v13 = *a2;
          *__s = 32;
          (*(*v13 + 40))(v13, __s, 1);
          *(v7 + 200) = sub_233725614(*a2) == 1;
        }

        return sub_233725FD4(v39);
    }
  }

  else
  {
    switch(a3)
    {
      case 1024:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        v38 = 8;
        *__s = *a4;
        for (i = *sub_2337B21A0(__s, &v38); i; --i)
        {
          v15 = sub_2337255C0(*a2);
          v16 = sub_2337255C0(*a2);
          v17 = sub_2337255C0(*a2);
          sub_2337255C0(*a2);
          v18 = v15 | (v16 << 32);
          v20 = *(v7 + 8);
          v19 = *(v7 + 16);
          if (v20 >= v19)
          {
            v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *v7) >> 2);
            v23 = v22 + 1;
            if (v22 + 1 > 0x1555555555555555)
            {
              sub_2337235BC();
            }

            v24 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *v7) >> 2);
            if (2 * v24 > v23)
            {
              v23 = 2 * v24;
            }

            if (v24 >= 0xAAAAAAAAAAAAAAALL)
            {
              v25 = 0x1555555555555555;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              sub_233879950(v7, v25);
            }

            v26 = 12 * v22;
            *v26 = v17;
            *(v26 + 4) = v18;
            v21 = 12 * v22 + 12;
            v27 = *(v7 + 8) - *v7;
            v28 = (12 * v22 - v27);
            memcpy(v28, *v7, v27);
            v29 = *v7;
            *v7 = v28;
            *(v7 + 8) = v21;
            *(v7 + 16) = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v20 = v17;
            *(v20 + 4) = v18;
            v21 = v20 + 12;
          }

          *(v7 + 8) = v21;
        }

        return sub_233725FD4(v39);
      case 1026:
        if (!*a4)
        {
          *(result + 58) = *a5;
        }

        break;
      case 1031:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        *__s = 0;
        v41 = 0;
        v42 = 0;
        if (*a4 <= 0x12u)
        {
          v8 = (*(**a2 + 32))(*a2, __s);
          if (*a4 == v8)
          {
            __s[v8] = 0;
            sub_23372610C((v7 + 208), __s);
          }
        }

        return sub_233725FD4(v39);
    }
  }

  return result;
}

void sub_233879824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_233879950(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_2337236AC();
}

void sub_233879AA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28492CF50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233879B1C(void *a1)
{
  sub_233879B54(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233879B54(void *a1)
{
  *a1 = &unk_28492CFD0;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_233879BD4(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  sub_233879B54((a1 + 96));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

id sub_23387B09C(void *a1)
{
  v2 = objc_opt_class();
  v7 = objc_msgSend_description(v2, v3, v4, v5, v6);
  NSLog(&cfstr_FixmeOutputima.isa, v7);

  v12 = objc_msgSend_inputKeys(a1, v8, v9, v10, v11);
  v13 = *MEMORY[0x277CBFAF0];
  v17 = objc_msgSend_containsObject_(v12, v14, *MEMORY[0x277CBFAF0], v15, v16);

  if (v17)
  {
    v21 = objc_msgSend_valueForKey_(a1, v18, v13, v19, v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_23387B15C(uint64_t a1@<X0>, float64x2_t **a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *__p = xmmword_23390A6C0;
  v13 = 0x3FF0000000000000;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_233764ED4(a2, __p, &v14, 3uLL);
  (*(*a1 + 160))(__p, a1);
  sub_2337D03B0(__p, &v10);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if (v10)
  {
    sub_23387B340(v10, __p);
    v5 = __p[0];
    if (*__p[0] != 0.0)
    {
      v4.i32[0] = *(__p[0] + 1);
      if (*v4.i32 != 0.0)
      {
        v6 = *(__p[0] + 2);
        if (v6 != 0.0)
        {
          v7 = *a2;
          *v7 = vcvtq_f64_f32(vdiv_f32(vdup_lane_s32(v4, 0), *__p[0]));
          v7[1].f64[0] = (*v4.i32 / v6);
LABEL_11:
          __p[1] = v5;
          operator delete(v5);
          goto LABEL_12;
        }
      }
    }

    v8 = sub_2338C0490();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_23371F000, v8, OS_LOG_TYPE_INFO, "Not applying LevelBalanceAdjustment as it would result in a divide by zero", v9, 2u);
    }

    v5 = __p[0];
    if (__p[0])
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (v11)
  {
    sub_2337239E8(v11);
  }
}

void sub_23387B2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23387B340@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 1400) == 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return sub_233729070(a2, *(result + 1376), *(result + 1384), (*(result + 1384) - *(result + 1376)) >> 2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_23387B378(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 2192))(a1);
  (*(*a1 + 2200))(v17, a1);
  v15 = 0;
  v16 = v4;
  v14 = &unk_284917748;
  (*(*a1 + 160))(&__p, a1);
  (*(*__p + 600))(__p, v17, &v14, 3);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  (*(*a1 + 160))(&__p, a1);
  sub_2337D03B0(&__p, &v12);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  if (v12 && *(a2 + 8) - *a2 >= 0x11uLL)
  {
    sub_23387B340(v12, &__p);
    v5 = __p;
    if (*__p != 0.0 && *(__p + 1) != 0.0)
    {
      v6 = *(__p + 2);
      if (v6 != 0.0)
      {
        v7 = *a2;
        *v7 = vdivq_f64(**a2, vcvtq_f64_f32(*__p));
        v7[1].f64[0] = v7[1].f64[0] / v6;
LABEL_14:
        v11 = v5;
        operator delete(v5);
        goto LABEL_15;
      }
    }

    v8 = sub_2338C0490();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_23371F000, v8, OS_LOG_TYPE_INFO, "Not applying LevelBalanceAdjustment as it would result in a divide by zero", v9, 2u);
    }

    v5 = __p;
    if (__p)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (v13)
  {
    sub_2337239E8(v13);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_23387B5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    sub_2337239E8(a15);
  }

  v18 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v18;
    operator delete(v18);
  }

  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_23387B654(uint64_t a1)
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

void sub_23387B81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
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

void sub_23387B854(uint64_t a1@<X0>, float64x2_t **a2@<X8>)
{
  if (((*(*a1 + 176))(a1) & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    (*(*a1 + 160))(&v10, a1);
    v4 = v10;
    sub_23372A488(__p, "IFD0:DNGPrivate:SR2Private:SR2SubIFD:BlackLevels");
    v5 = (*(*v4 + 248))(v4, __p, a2, 0);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      sub_2337239E8(v11);
    }

    v6 = *a2;
    if (v5)
    {
      v7 = vaddq_f64(v6[1], v6[1]);
      *v6 = vaddq_f64(*v6, *v6);
      v6[1] = v7;
      return;
    }

    if (v6)
    {
      a2[1] = v6;
      operator delete(v6);
    }
  }

  sub_2338D50CC(a1, a2);
}

void sub_23387B980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void sub_23387B9C8(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPanasonic14BitUnpacker", &unk_233945DBE, buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23387BDA8;
  v4[3] = &unk_2789EE800;
  v4[4] = a1;
  MEMORY[0x2383AC810](v4);
  operator new[]();
}

void sub_23387BDA8(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPanasonic14BitUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23387BF48(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = sub_2338C0490();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_2338FD42C(v3);
  }

  __cxa_end_catch();
  JUMPOUT(0x23387BEE0);
}

void sub_23387BFA8(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWLinearSpacePlaceholder", &unk_233945DBE, v5, 2u);
  }
}

void sub_23387E984(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23387E9A0(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWAdjustColorTRC", &unk_233945DBE, v5, 2u);
  }
}

void sub_23387EA28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  if (v7 < 5)
  {
    v26 = v44 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *(a1 + 48);
    v28 = v44 - ((8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v27)
    {
      v29 = 0;
      do
      {
        objc_msgSend_valueAtIndex_(*(a1 + 32), a2, v29, a4, a5);
        *&v26[8 * v29] = v30;
        objc_msgSend_valueAtIndex_(*(a1 + 40), v31, v29, v32, v33);
        *&v28[8 * v29++] = v34;
        v35 = *(a1 + 48);
      }

      while (v29 < v35);
    }

    else
    {
      v35 = 0;
    }

    v25 = objc_msgSend_curveWithCount_xvalues_yvalues_(Curve, a2, v35, v26, v28);
  }

  else
  {
    v8 = *(a1 + 32);
    v13 = objc_msgSend__values(v8, v9, v10, v11, v12);
    v14 = *(a1 + 40);
    v19 = objc_msgSend__values(v14, v15, v16, v17, v18);
    v25 = objc_msgSend_curveWithCount_xvalues_yvalues_(Curve, v20, *(a1 + 48), v13, v19);
  }

  for (i = 0; i != 256; ++i)
  {
    v37 = objc_msgSend_function(v25, v21, v22, v23, v24);
    _D8 = v37[2](i / 255.0);

    __asm { FCVT            H0, D8 }

    *&a2[2 * i] = _H0;
  }
}

double sub_23387EBF0(uint64_t a1, int a2)
{
  if (a2)
  {
    return *(a1 + 32);
  }

  return result;
}

void sub_23387F00C(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWConvertSRGBtoLinear", &unk_233945DBE, v5, 2u);
  }
}

void sub_23387F2E8(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWConvertLinearToSRGB", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338801FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_233880218(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWHueMagnet", &unk_233945DBE, v5, 2u);
  }
}

double sub_2338833BC(double a1, double a2, double a3, double a4)
{
  v4 = a1;
  v5 = (v4 * 0.5) + 0.5;
  v6 = a1 + a3;
  v7 = (v6 * 0.5) + 0.5;
  v8 = a2;
  v9 = (v8 * 0.5) + 0.5;
  v10 = a2 + a4;
  v11 = (v10 * 0.5) + 0.5;
  v13.origin.x = v5;
  v13.origin.y = v9;
  v13.size.width = (v7 - v5);
  v13.size.height = (v11 - v9);
  *&result = CGRectInset(v13, -1.0, -1.0);
  return result;
}

double sub_2338837B8(int a1, double result, double a3, double a4, double a5)
{
  if (a1 == 1)
  {
    v5 = result;
    v6 = (v5 * 0.5) + 0.5;
    v7 = result + a4;
    v8 = (v7 * 0.5) + 0.5;
    v9 = a3;
    v10 = (v9 * 0.5) + 0.5;
    v11 = a3 + a5;
    v12 = (v11 * 0.5) + 0.5;
    v13.origin.x = v6;
    v13.origin.y = v10;
    v13.size.width = (v8 - v6);
    v13.size.height = (v12 - v10);
    *&result = CGRectInset(v13, -1.0, -1.0);
  }

  return result;
}

double sub_233883930(double a1, double a2, double a3, double a4)
{
  v4 = a1;
  v5 = (v4 * 2.0) + 0.5;
  v6 = a1 + a3;
  v7 = (v6 * 2.0) + 0.5;
  v8 = a2;
  v9 = (v8 * 2.0) + 0.5;
  v10 = a2 + a4;
  v11 = (v10 * 2.0) + 0.5;
  v13.origin.x = v5;
  v13.origin.y = v9;
  v13.size.width = (v7 - v5);
  v13.size.height = (v11 - v9);
  *&result = CGRectInset(v13, -2.0, -2.0);
  return result;
}

double sub_23388409C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_233884324(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (!a2)
  {
    *&result = CGRectInset(*&result, -*(a1 + 32), -*(a1 + 32));
  }

  return result;
}

double sub_2338845B8(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (!a2)
  {
    *&result = CGRectInset(*&result, -*(a1 + 32), -*(a1 + 32));
  }

  return result;
}

double sub_2338848A4(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (!a2)
  {
    *&result = CGRectInset(*&result, (*(a1 + 32) * -2.0), (*(a1 + 32) * -2.0));
  }

  return result;
}

double sub_233884B9C(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (!a2)
  {
    *&result = CGRectInset(*&result, (*(a1 + 32) * -2.0), (*(a1 + 32) * -2.0));
  }

  return result;
}

double sub_233885C84(int a1, double result, double a3, double a4, double a5)
{
  if (!a1)
  {
    v5 = result;
    v6 = (v5 * 0.5) + 0.5;
    v7 = result + a4;
    v8 = (v7 * 0.5) + 0.5;
    v9 = a3;
    v10 = (v9 * 0.5) + 0.5;
    v11 = a3 + a5;
    v12 = (v11 * 0.5) + 0.5;
    v13.origin.x = v6;
    v13.origin.y = v10;
    v13.size.width = (v8 - v6);
    v13.size.height = (v12 - v10);
    *&result = CGRectInset(v13, -1.0, -1.0);
  }

  return result;
}

void sub_23388E644(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWReduceNoise", &unk_233945DBE, v5, 2u);
  }
}

id sub_23388E6CC(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v78[5] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v77[0] = @"inputRVector";
  v13 = MEMORY[0x277CBF788];
  objc_msgSend_X(v12, v14, v15, v16, v17);
  v23 = objc_msgSend_vectorWithX_Y_Z_W_(v13, v18, v19, v20, v21, 0.0, 0.0, 0.0, v22);
  v78[0] = v23;
  v77[1] = @"inputGVector";
  v24 = MEMORY[0x277CBF788];
  objc_msgSend_Y(v12, v25, v26, v27, v28);
  v34 = objc_msgSend_vectorWithX_Y_Z_W_(v24, v29, v30, v31, v32, 0.0, 0.0, 0.0, v33);
  v78[1] = v34;
  v77[2] = @"inputBVector";
  v35 = MEMORY[0x277CBF788];
  objc_msgSend_Z(v12, v36, v37, v38, v39);
  v45 = objc_msgSend_vectorWithX_Y_Z_W_(v35, v40, v41, v42, v43, 0.0, 0.0, 0.0, v44);
  v78[2] = v45;
  v77[3] = @"inputAVector";
  v50 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v46, v47, v48, v49, 0.0, 0.0, 0.0, 0.0);
  v78[3] = v50;
  v77[4] = @"inputBiasVector";
  v55 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v51, v52, v53, v54, 0.0, 0.0, 0.0, 1.0);
  v78[4] = v55;
  v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, v78, v77, 5);
  v60 = objc_msgSend_imageByApplyingFilter_withInputParameters_(v11, v58, @"CIColorMatrix", v57, v59);

  v65 = objc_msgSend_imageByCroppingToRect_(v60, v61, v62, v63, v64, a3, a4, a5, a6);
  v70 = objc_msgSend__imageBySamplingNearest(v65, v66, v67, v68, v69);

  CGAffineTransformMakeScale(&v76, 2.0, 2.0);
  v74 = objc_msgSend_imageByApplyingTransform_(v70, v71, &v76, v72, v73);

  return v74;
}

double sub_233891318(double a1, double a2, double a3, double a4)
{
  v4 = floor(a1);
  v5 = (v4 * 2.0) + 0.5;
  v6 = floor(a1 + a3);
  v7 = (v6 * 2.0) + 0.5;
  v8 = floor(a2);
  v9 = (v8 * 2.0) + 0.5;
  v10 = floor(a2 + a4);
  v11 = (v10 * 2.0) + 0.5;
  v13.origin.x = v5;
  v13.origin.y = v9;
  v13.size.width = (v7 - v5);
  v13.size.height = (v11 - v9);
  *&result = CGRectInset(v13, -2.0, -2.0);
  return result;
}

double sub_2338913CC(double a1, double a2, double a3, double a4, float a5)
{
  v5 = floor(a1 * 0.5);
  v6 = v5 + a5;
  v7 = floor((a1 + a3) * 0.5);
  v8 = v7 + a5;
  v9 = floor(a2 * 0.5);
  v10 = v9 + a5;
  v11 = floor((a2 + a4) * 0.5);
  v12 = v11 + a5;
  v14.origin.x = v6;
  v14.origin.y = v10;
  v14.size.width = (v8 - v6);
  v14.size.height = (v12 - v10);
  *&result = CGRectInset(v14, -1.0, -1.0);
  return result;
}

void sub_23389DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, uint64_t a50, void *a51, uint64_t a52, void *a53, void *a54, void *a55, void *a56, void *a57, void *a58, void *a59, void *a60, void *a61, _Unwind_Exception *exception_objecta, void *a63)
{
  STACK[0x2D8] = STACK[0x338];

  _Unwind_Resume(a1);
}

float sub_23389FB1C(float *a1, float *a2, float a3)
{
  if (*a1 > a3)
  {
    return *a2;
  }

  v4 = a1 + 1;
  v5 = a2 + 1;
  v6 = 8;
  while (*v4 <= a3)
  {
    ++v4;
    ++v5;
    if (!--v6)
    {
      return a2[8];
    }
  }

  return *(v5 - 1) + (((a3 - *(v4 - 1)) / (*v4 - *(v4 - 1))) * (*v5 - *(v5 - 1)));
}

float64_t sub_23389FB9C(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FBC0(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  __asm
  {
    FMOV            V1.2D, #0.5
    FMOV            V6.2S, #-1.0
  }

  *&a1.f64[0] = *&vcvtq_f64_f32(vadd_f32(vadd_f32(vcvt_f32_f64(vrndmq_f64(vmulq_f64(a1, _Q1))), 0x3F0000003F000000), _D6));
  return a1.f64[0];
}

float64_t sub_23389FC20(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FC48(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FC70(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

double sub_23389FCB8(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -1.0, -1.0);
  }

  return result;
}

float64_t sub_23389FCE4(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FD08(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

double sub_23389FD50(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -1.0, -1.0);
  }

  return result;
}

double sub_23389FD7C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_23389FDA8(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -4.0, -4.0);
  }

  return result;
}

double sub_23389FDD4(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -8.0, -8.0);
  }

  return result;
}

float64_t sub_23389FE00(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FE24(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

double sub_23389FE6C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -1.0, -1.0);
  }

  return result;
}

double sub_23389FE98(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_23389FEC4(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -4.0, -4.0);
  }

  return result;
}

double sub_23389FEF0(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -8.0, -8.0);
  }

  return result;
}

double sub_23389FF1C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -16.0, -16.0);
  }

  return result;
}

float64_t sub_23389FF48(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FF6C(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

double sub_23389FFA8(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -1.0, -1.0);
  }

  return result;
}

double sub_23389FFD4(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_2338A0000(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -4.0, -4.0);
  }

  return result;
}

double sub_2338A002C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -8.0, -8.0);
  }

  return result;
}

double sub_2338A0058(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -16.0, -16.0);
  }

  return result;
}

float64_t sub_2338A0090(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_2338A00CC(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

void sub_2338A0B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (a2)
  {

    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2338A0ABCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A0E68(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWTemperatureAdjust", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338A181C(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWAdjustExposureAndBias", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338A2288(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338A22A4(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWVignetteRadial", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338A3290(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  sub_2337DFDF8(v1);
  JUMPOUT(0x2338A3268);
}

void sub_2338A33D4(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {

    sub_2337D35EC(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2338A338CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A3A80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a37)
    {
      operator delete(a37);
    }

    sub_2337D35EC(&a42);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2338A3A28);
  }

  _Unwind_Resume(a1);
}

void sub_2338A3C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2337D35EC(va);
  _Unwind_Resume(a1);
}

void sub_2338A4664(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338A4680(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWConvert", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338A4B74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  sub_233813F5C(v12);
  JUMPOUT(0x2338A4B54);
}

void sub_2338A4BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2337D35EC(va);
  _Unwind_Resume(a1);
}

void sub_2338A4DEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338A4DC4);
}

uint64_t sub_2338A4E4C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284910238;
  *(a1 + 8) = *(a2 + 8);
  sub_2337DF874((a1 + 16), (a2 + 16));
  sub_2337DF874((a1 + 48), (a2 + 48));
  sub_2337DF874((a1 + 80), (a2 + 80));
  sub_2337DF874((a1 + 112), (a2 + 112));
  sub_2337DF874((a1 + 144), (a2 + 144));
  sub_2337DF874((a1 + 176), (a2 + 176));
  *(a1 + 208) = *(a2 + 208);
  sub_2337DF874((a1 + 216), (a2 + 216));
  sub_2337DF874((a1 + 248), (a2 + 248));
  return a1;
}

void sub_2338A4F00(_Unwind_Exception *exception_object)
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

void sub_2338A5560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_2338A5638(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2338A56E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2338A70C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338A70E0(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWDefringeFilter", &unk_233945DBE, v5, 2u);
  }
}

double sub_2338A71B8(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -5.0, -5.0);
  }

  return result;
}

double sub_2338A71E4(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (a2 < 1)
  {
    *&result = CGRectInset(*&result, -*(a1 + 32), -*(a1 + 32));
  }

  return result;
}

double sub_2338A721C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -5.0, -5.0);
  }

  return result;
}

double sub_2338A7248(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (a2 < 1)
  {
    *&result = CGRectInset(*&result, -*(a1 + 32), -*(a1 + 32));
  }

  return result;
}

void sub_2338A72FC(int a1@<W0>, _DWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v84 = *MEMORY[0x277D85DE8];
  sub_2337DFC28(3u, &v52);
  if (a1)
  {
    sub_2337E0244(&v52, &v77, 2.55);
  }

  else
  {
    sub_2337E0244(&v52, &v77, 2.0);
  }

  sub_2337E004C(&v52, &v77);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  v83[0] = a4 / a5;
  v83[1] = 1.0;
  v83[2] = (1.0 - a4 - a5) / a5;
  v80 = xmmword_233915FA0;
  v81 = 0x3FEA6594AF4F0D84;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_2337236E0(&v49, v83, &v84, 3uLL);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_2337236E0(&v46, &v80, &v82, 3uLL);
  if (v50 - v49 != 24 || v47 - v46 != 24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2337DF9CC(&v77, 3u, 3u, 0.8951, v10, v11, v12, v13, v14, 0x3FD10CB295E9E1B1);
  sub_2337DF9CC(&v74, 3u, 3u, 0.986993, v15, v16, v17, v18, v19, 0xBFC2D2AA5C5F7C67);
  v20 = sub_2337DF9C8(&v71, 3u, 1u);
  sub_2337E0E4C(v20, &v49);
  sub_2337E032C(&v77, &v71, v68);
  sub_2337E0E4C(&v71, &v46);
  sub_2337E032C(&v77, &v71, v65);
  sub_2337DFC28(3u, &v62);
  v55 = sub_2337DFCEC(v65, 0);
  __p = v21;
  v22 = *sub_2337DFD6C(&v55, 0);
  v60 = sub_2337DFCEC(v68, 0);
  v61 = v23;
  v24 = *sub_2337DFD6C(&v60, 0);
  v58 = sub_2337DFCEC(&v62, 0);
  v59 = v25;
  *sub_2337DFD6C(&v58, 0) = v22 / v24;
  v55 = sub_2337DFCEC(v65, 1u);
  __p = v26;
  v27 = *sub_2337DFD6C(&v55, 0);
  v60 = sub_2337DFCEC(v68, 1u);
  v61 = v28;
  v29 = *sub_2337DFD6C(&v60, 0);
  v58 = sub_2337DFCEC(&v62, 1u);
  v59 = v30;
  *sub_2337DFD6C(&v58, 1u) = v27 / v29;
  v55 = sub_2337DFCEC(v65, 2u);
  __p = v31;
  v32 = *sub_2337DFD6C(&v55, 0);
  v60 = sub_2337DFCEC(v68, 2u);
  v61 = v33;
  v34 = *sub_2337DFD6C(&v60, 0);
  v58 = sub_2337DFCEC(&v62, 2u);
  v59 = v35;
  *sub_2337DFD6C(&v58, 2u) = v32 / v34;
  sub_2337DF9C8(&v43, 3u, 3u);
  sub_2337E032C(&v62, &v77, &v55);
  sub_2337E004C(&v43, &v55);
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  sub_2337E032C(&v74, &v43, &v55);
  sub_2337E004C(&v43, &v55);
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  sub_2337E032C(&v43, &v52, &v77);
  sub_2337E004C(&v52, &v77);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  v41 = sub_2337DF9CC(&v74, 3u, 3u, 1.82412008, v36, v37, v38, v39, v40, 0xBFE026BD9F433306);
  sub_2337E032C(v41, &v52, &v77);
  sub_2337E004C(&v52, &v77);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  sub_2337E032C(&v52, a2, a3);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }
}

void sub_2338A7998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  v47 = *(v45 - 136);
  if (v47)
  {
    *(v45 - 128) = v47;
    operator delete(v47);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A7B70(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = a2;
  v56 = a3;
  *a5 = 0;
  a5[1] = 0;
  context = objc_autoreleasePoolPush();
  v51 = v10;
  v49 = a4;
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
  }

  v16 = v15;
  v21 = sub_233875D18(v15, *MEMORY[0x277CD3490], *MEMORY[0x277CD34A8]);
  v22 = 0;
  v23 = 0;
  v48 = *MEMORY[0x277CD3038];
  v55 = v16;
  while (2)
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    v52 = v22;
    v53 = v23;
    v24 = 14;
    v25 = &qword_28492E8D8;
    do
    {
      v26 = *(v25 - 2);
      if (!v26 || (v6 = v26, !sub_2338A818C(v21, v6, 1)))
      {
        v27 = *(v25 - 1);
        if (v27)
        {
          v5 = v27;
          if (sub_2338A818C(v21, v5, 1))
          {

            if (!v26)
            {
              goto LABEL_24;
            }

            goto LABEL_12;
          }

          v28 = *v25;
          if (!*v25)
          {
            v29 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          v28 = *v25;
          if (!*v25)
          {
            v29 = 0;
            if (v26)
            {
              goto LABEL_19;
            }

LABEL_23:
            if (!v29)
            {
              goto LABEL_32;
            }

            goto LABEL_24;
          }
        }

        v30 = v28;
        v29 = sub_2338A818C(v21, v30, 1);

        if (!v27)
        {
          if (v26)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }

LABEL_22:

        if (v26)
        {
LABEL_19:

          if (!v29)
          {
            goto LABEL_32;
          }

          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_12:

LABEL_24:
      v31 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v17, v18, v19, v20);
      v32 = *(v25 - 3);
      v32(&v59, a1, v31, v56);
      v33 = v59;
      v59 = 0uLL;
      v34 = a5[1];
      *a5 = v33;
      if (v34)
      {
        sub_2337239E8(v34);
        if (*(&v59 + 1))
        {
          sub_2337239E8(*(&v59 + 1));
        }
      }

      if (v33)
      {
        (**v33)(v33);
        if ((*(*v33 + 32))(v33))
        {
          v42 = *(v33 + 24);
          v43 = *(v33 + 32);
          if (v49)
          {
            v46 = sub_233739994(v31, v48, 0);
            if (v46)
            {
              objc_msgSend_setObject_forKeyedSubscript_(v55, v44, v46, @"__ExifProperties", v45);
            }
          }

          v32(&v59, a1, v55, v56);
          v47 = v59;
          v59 = 0uLL;
          v58 = v47;
          *a5 = v47;
          if (*(&v33 + 1))
          {
            sub_2337239E8(*(&v33 + 1));
            if (*(&v59 + 1))
            {
              sub_2337239E8(*(&v59 + 1));
            }
          }

          *(v58 + 24) = v42;
          *(v58 + 32) = v43;

          v16 = v55;
          goto LABEL_58;
        }

        *a5 = 0;
        a5[1] = 0;
        if (*(&v33 + 1))
        {
          sub_2337239E8(*(&v33 + 1));
        }
      }

LABEL_32:
      v25 += 6;
      --v24;
    }

    while (v24);
    v16 = v55;
    v22 = v52;
    v23 = v53;
    if (*a5)
    {
      goto LABEL_58;
    }

LABEL_34:
    v35 = 14;
    v36 = &off_28492E8C0;
    while (1)
    {
      v37 = *(v36 - 1);
      if (v37)
      {
        if (v37(a1))
        {
          break;
        }
      }

      v36 += 6;
      if (!--v35)
      {
        v38 = 0;
        goto LABEL_43;
      }
    }

    (*v36)(&v59, a1, v16, v56);
    v39 = v59;
    v59 = 0uLL;
    v40 = a5[1];
    v54 = v39;
    *a5 = v39;
    if (v40)
    {
      sub_2337239E8(v40);
      if (*(&v59 + 1))
      {
        sub_2337239E8(*(&v59 + 1));
      }
    }

    v38 = v54;
LABEL_43:
    if (!((v38 != 0) | v22 & 1))
    {
      sub_2338C0138(a1, v16, v56);
    }

    if (!v38 && v23++ < 2)
    {
      continue;
    }

    break;
  }

  if (!v38)
  {
    sub_2338A9438(a1, v16, v56);
  }

LABEL_58:

  objc_autoreleasePoolPop(context);
}

void sub_2338A80A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  v23 = *(v20 + 8);
  if (v23)
  {
    sub_2337239E8(v23);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2338A818C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v9 = v6;
  v10 = 0;
  if (v5 && v6)
  {
    objc_msgSend_rangeOfString_options_(v5, v7, v6, a3, v8);
    v10 = v11 != 0;
  }

  return v10;
}

void sub_2338A820C(uint64_t *a1@<X0>, int *a2@<X1>, unsigned int *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v17 = a4;
  LODWORD(v15) = *a2;
  v9 = *sub_233723874(&v15, a3);
  sub_2338A832C(a1, &v15);
  v10 = (*(*v15 + 16))(v15);
  v12 = v9 < 0 || v10 >= v9;
  if (v16)
  {
    sub_2337239E8(v16);
  }

  *a5 = 0;
  a5[1] = 0;
  if (v12)
  {
    v13 = *a3;
    if (v13)
    {
      v14 = sub_2338A839C(a1, *a2, v13);
      if (v14)
      {
        if (HIDWORD(v14))
        {
          sub_233735F54();
        }
      }
    }
  }
}

uint64_t sub_2338A832C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = *(result + 16);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_2338A839C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  sub_2338A832C(a1, &v23);
  sub_2337268D8(&v21, &v26);
  sub_233725F08(v25, &v23, &v21, 0);
  if (v24)
  {
    sub_2337239E8(v24);
  }

  sub_233735A18(&v23, a1 + 1, 2);
  sub_2338A832C(a1, &v21);
  v5 = sub_2337255C0(v21);
  if (v22)
  {
    sub_2337239E8(v22);
  }

  if ((*(*a1 + 64))(a1, v5))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      sub_2338A832C(a1, &v21);
      v8 = sub_2337255C0(v21);
      if (v22)
      {
        sub_2337239E8(v22);
      }

      sub_2338A832C(a1, &v21);
      v9 = sub_2337255C0(v21);
      if (v22)
      {
        sub_2337239E8(v22);
      }

      v10 = (*(*a1[1] + 48))(a1[1]);
      if (v8 < 0xFF01)
      {
        break;
      }

      v11 = v10;
      if (v8 == 65472)
      {
        sub_233725510(a1[1]);
        sub_2338A832C(a1, &v21);
        v7 = sub_2337255C0(v21);
        if (v22)
        {
          sub_2337239E8(v22);
        }

        sub_2338A832C(a1, &v21);
        v6 = sub_2337255C0(v21);
        if (v22)
        {
          sub_2337239E8(v22);
        }
      }

      v12 = v9 - 2;
      v3 = v3 - 4 - (v9 - 2);
      if (v3 >= 0)
      {
        sub_2338A832C(a1, &v21);
        v13 = v21;
        v19 = v11 + v12;
        sub_2337268D8(&v20, &v19);
        (*(*v13 + 40))(v13, &v20, 0);
        if (v22)
        {
          sub_2337239E8(v22);
        }
      }

      v14 = !v6 || v7 == 0;
      v15 = v14;
    }

    while (v3 >= 5 && v15 && v8 != 65498);
    v16 = v7 << 32;
    v17 = v6;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  sub_233735A90(&v23);
  sub_233725FD4(v25);
  return v16 | v17;
}

void sub_2338A8634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_233735A90(va);
  sub_233725FD4(va1);
  _Unwind_Resume(a1);
}

void sub_2338A86B8(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(a1 + 8) == *a1)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *v4;
    v8 = v4[1];
    *a3 = *v4;
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v9 = *(v7 + 16);
    }

    else
    {
      v9 = 0;
    }

    v10 = *a1;
    if (*(a1 + 8) != *a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2 > 0xA0)
        {
          v13 = sub_2337DE858(v7);
          v14 = sub_2337DE858(*(*a1 + v11 * 8));
        }

        else
        {
          v13 = sub_2337DE858(v10[v11]);
          v14 = sub_2337DE858(v7);
        }

        if (v13 <= v14 && SHIDWORD(v13) <= SHIDWORD(v14))
        {
          v16 = (*a1 + v11 * 8);
          v7 = *v16;
          v17 = v16[1];
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v8)
          {
            sub_2337239E8(v8);
          }

          v8 = v17;
          if (!v9)
          {
            v9 = *(v7 + 16);
            v8 = v17;
          }
        }

        ++v12;
        v10 = *a1;
        v11 += 2;
      }

      while (v12 < (*(a1 + 8) - *a1) >> 4);
    }

    *a3 = v7;
    a3[1] = v8;
    if (*(v7 + 16))
    {
      v18 = 1;
    }

    else
    {
      v18 = v9 == 0;
    }

    if (!v18)
    {
      *(v7 + 16) = v9;
    }
  }
}

void sub_2338A8804(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v1[1] = v3;
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338A882C(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_28492EB60;
  *(result + 8) = v3;
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_2338A887C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v10)
    {
      sub_2338FDBD8(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338A894C(const void *a1, void *a2)
{
  v3 = a2;
  if (a1 && __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0))
  {
    sub_2338FDD20();
  }
}

void sub_2338A8A2C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338AE470(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A8B0C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v15 = a2;
  if (a1)
  {
    v12 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v12)
    {
      sub_2338ADB78(v12, v13, v14, a4, a5, a6, a7);
    }
  }
}

void sub_2338A8BE4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338AE38C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A8CC4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338ADC74(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A8DA4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v10)
    {
      sub_2338FDAC4(v10, v13, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338A8E70(const void *a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v7)
    {
      sub_2338AD3EC(v7, v8, a3, a4);
    }
  }
}

void sub_2338A8F38(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v10)
    {
      sub_2338AE294(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338A9008(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v7)
    {
      sub_2338AD1E0(v7, v9, v10, v8, a3, a4);
    }
  }
}

void sub_2338A90D0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v10)
    {
      sub_2338AE1A0(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338A91A0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338AD870(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A927C(const void *a1, void *a2)
{
  v3 = a2;
  if (a1 && __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0))
  {
    sub_2338FDF90();
  }
}

void sub_2338A935C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338AD57C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A9438(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338B2020();
}

uint64_t sub_2338A94CC(_BYTE *a1)
{
  if ((*(*a1 + 24))(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = a1[194];
  }

  return v2 & 1;
}

BOOL sub_2338A9524(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  do
  {
    v3 = *a2++;
    v2 = v3;
  }

  while (v3 == 32);
  return v2 == 0;
}

uint64_t sub_2338A9548(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  result = 0;
  if (a3)
  {
    while (1)
    {
      while ((*a2 & 0x80000000) == 0)
      {
        ++a2;
        if (!--a3)
        {
          return result;
        }
      }

      v4 = *a2;
      if ((v4 - 254) < 0xFFFFFFC2)
      {
        break;
      }

      v5 = 0;
      do
      {
        v6 = v5;
        v7 = v5++ + 2;
      }

      while (((v4 << v7) & 0x80) != 0);
      if (a3 < v5 + 1)
      {
        break;
      }

      v8 = v4 & ~(-1 << (6 - v5));
      if ((v5 + 1) < 2)
      {
        v11 = v8;
      }

      else
      {
        v9 = 0;
        v10 = v6 + 1;
        do
        {
          v11 = a2[++v9] & 0x3F | (v8 << 6);
          v8 = v11;
        }

        while (v10 != v9);
      }

      if (HIWORD(v11) > 0x10u || v11 < dword_233916000[v5 + 1])
      {
        break;
      }

      a2 += v5 + 1;
      result = 1;
      v13 = v5 + 1 == a3;
      a3 += ~v5;
      if (v13)
      {
        return result;
      }
    }

    return 2;
  }

  return result;
}

unsigned __int16 *sub_2338A9630(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, _DWORD *a4)
{
  *a4 = 0;
  while (a3)
  {
    v8 = *a3;
    if (v8 != 0xFFFF)
    {
      v9 = *a2;
      do
      {
        if (v8 == v9)
        {
          v10 = a2[1];
          if ((v10 - 1) <= 0xC && ((v11 = a3[1], v10 == v11) || ((v11 >> v10) & 0x10) != 0))
          {
            if (!a3[2] || *(a2 + 1) == a3[2])
            {
              *a4 = 0;
              return a3;
            }

            v12 = 2;
          }

          else
          {
            v12 = 1;
          }

          *a4 |= v12;
        }

        v13 = a3[20];
        a3 += 20;
        v8 = v13;
      }

      while (v13 != 0xFFFF);
    }

    if (a3[2] != -1)
    {
      return 0;
    }

    v14 = *(a3 + 2);
    if (!v14)
    {
      return 0;
    }

    v15 = sub_2338A9630(a1, a2, v14, a4);
    a3 += 20;
    if (v15)
    {
      return v15;
    }
  }

  return a3;
}

uint64_t sub_2338A9730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (__CFADD__(a5, a4))
  {
    v6 = (a4 >> 63) + 1;
  }

  else
  {
    v6 = a4 >> 63;
  }

  v7 = v6 << 63 >> 63;
  v15 = a5 + a4;
  if (v7 == v6 && (v7 & 0x8000000000000000) == 0)
  {
    sub_2338A832C(a1, &v13);
    v10 = v13;
    sub_233723C18(&v12, &v15);
    v5 = (*(*v10 + 24))(v10, a2, a3, &v12);
    if (v14)
    {
      sub_2337239E8(v14);
    }
  }

  return v5;
}

void sub_2338A97E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A9800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  sub_233726154(&__p, *(a4 + 4));
  v12 = v63 - __p;
  if ((v63 - __p) > 4)
  {
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

    v16 = sub_2338A9730(a1, __p, v12, a5, v15);
    v17 = __p;
    if (v16 != v63 - __p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    memmove(__p, (a4 + 8), v12);
  }

  v18 = sub_2338A9B78(a3);
  v23 = objc_msgSend_length(v18, v19, v20, v21, v22);

  if (v23)
  {
    v27 = sub_233755CB8(*(a4 + 4));
    if (*(a4 + 4))
    {
      v28 = 0;
      do
      {
        v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, *(__p + v28), v25, v26);
        objc_msgSend_addObject_(v27, v30, v29, v31, v32);

        ++v28;
      }

      while (v28 < *(a4 + 4));
    }

    v33 = *(a3 + 32);
    if ((v33 & 4) != 0)
    {
      v34 = sub_2338A9B94(a1);
      v35 = sub_2338A9BFC(a3);
      v36 = sub_2337854A4(v34, v35, 1);

      if (*(a3 + 4) != 1 || (*(a3 + 32) & 2) != 0)
      {
        v40 = sub_2338A9B78(a3);
        objc_msgSend_setObject_forKeyedSubscript_(v36, v44, v27, v40, v45);
      }

      else
      {
        v61 = 0;
        v40 = sub_23386F6F4(v27, &v61, v37, v38, v39);
        v41 = sub_2338A9B78(a3);
        objc_msgSend_setObject_forKeyedSubscript_(v36, v42, v40, v41, v43);
      }

      v33 = *(a3 + 32);
    }

    if ((v33 & 8) != 0)
    {
      v46 = MEMORY[0x277CCACA8];
      v47 = sub_2338A9B78(a3);
      v51 = objc_msgSend_stringWithFormat_(v46, v48, @"%@/%@", v49, v50, v11, v47);

      if (*(a3 + 4) != 1 || (*(a3 + 32) & 2) != 0)
      {
        v55 = sub_2338A9C18(a1);
        objc_msgSend_setObject_forKeyedSubscript_(v55, v59, v27, v51, v60);
      }

      else
      {
        v61 = 0;
        v55 = sub_23386F6F4(v27, &v61, v52, v53, v54);
        v56 = sub_2338A9C18(a1);
        objc_msgSend_setObject_forKeyedSubscript_(v56, v57, v55, v51, v58);
      }
    }
  }

  v17 = __p;
LABEL_25:
  if (v17)
  {
    v63 = v17;
    operator delete(v17);
  }
}

void sub_2338A9AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_2338A9B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return &stru_284938540;
  }
}

id sub_2338A9B94(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return v1;
}

__CFString *sub_2338A9BFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return &stru_284938540;
  }
}

id sub_2338A9C18(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return v1;
}

char *sub_2338A9C80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a4 > 0x2710)
  {
    v11 = 0;
    goto LABEL_16;
  }

  sub_233726154(__s, a4 + 1);
  if (sub_2338A9730(a1, __s[0], a4, a2, a3) != a4)
  {
    goto LABEL_11;
  }

  __s[0][a4] = 0;
  v10 = strlen(__s[0]);
  __s[0][v10] = 0;
  v11 = __s[0];
  if ((a5 & 1) == 0)
  {
    if (!__s[0])
    {
      goto LABEL_14;
    }

    v12 = __s[0];
    do
    {
      v13 = *v12;
      if (!*v12)
      {
        goto LABEL_11;
      }

      ++v12;
    }

    while (v13 == 32);
  }

  v14 = sub_2338A9548(v10, __s[0], v10);
  if (!v14)
  {
    v18 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v15, v11, 1, v17);
    goto LABEL_13;
  }

  if (v14 != 1)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_14;
  }

  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v11, v16, v17);
LABEL_13:
  v11 = v18;
LABEL_14:
  if (__s[0])
  {
    __s[1] = __s[0];
    operator delete(__s[0]);
  }

LABEL_16:

  return v11;
}

void sub_2338A9DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A9DDC(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = a2;
  v14 = *(a5 + 4);
  if ((v14 - 10001) < 0xFFFFD8F0)
  {
    goto LABEL_28;
  }

  v15 = *(a5 + 2);
  if (v15 > 0x6F)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_233916070[v15];
  }

  v17 = v16 * v14;
  sub_2338B1C48(__dst, v16 * v14 + 1);
  if (v17 <= 4)
  {
    v18 = memmove(__dst[0], (a5 + 8), v17);
    *(__dst[0] + v17) = 0;
    goto LABEL_10;
  }

  v19 = *(a5 + 8);
  v20 = bswap32(v19);
  if (a7)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v18 = sub_2338A9730(a1, __dst[0], v17, a6, v21);
  *(__dst[0] + v17) = 0;
  if (v18 == v17)
  {
LABEL_10:
    v22 = __dst[0];
    if ((a4 & 1) == 0)
    {
      if (!__dst[0])
      {
        goto LABEL_28;
      }

      v23 = __dst[0];
      do
      {
        v24 = *v23;
        if (!*v23)
        {
          goto LABEL_26;
        }

        ++v23;
      }

      while (v24 == 32);
    }

    v25 = sub_2338A9548(v18, __dst[0], v17);
    if (v25)
    {
      if (v25 != 1)
      {
        goto LABEL_22;
      }

      v26 = sub_2338A9B94(a1);
      v27 = sub_2338A9BFC(a3);
      v28 = sub_2337854A4(v26, v27, 1);

      if (v28)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v32 = sub_2338A9B94(a1);
      v33 = sub_2338A9BFC(a3);
      v28 = sub_2337854A4(v32, v33, 1);

      if (v28)
      {
LABEL_20:
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, __dst[0], v30, v31);
        v35 = sub_2338A9B78(a3);
        objc_msgSend_setObject_forKeyedSubscript_(v28, v36, v34, v35, v37);
      }
    }

LABEL_22:
    v22 = __dst[0];
    if (v17 >= 0x33)
    {
      *(__dst[0] + 45) = 3026478;
LABEL_27:
      __dst[1] = v22;
      operator delete(v22);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v22 = __dst[0];
LABEL_26:
  if (v22)
  {
    goto LABEL_27;
  }

LABEL_28:
}

void sub_2338AA050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338AA0D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  v11 = *(a4 + 2);
  if (v11 != 2 && *(a4 + 4) > 0x50u)
  {
    goto LABEL_3;
  }

  if (*(a4 + 2) <= 6u)
  {
    if (*(a4 + 2) <= 2u)
    {
      if (v11 == 1)
      {
        goto LABEL_28;
      }

      if (v11 != 2)
      {
        goto LABEL_3;
      }

      v12 = *(a3 + 32);
      goto LABEL_29;
    }

    switch(v11)
    {
      case 3:
        sub_2338AA324(a1, v13, a3, a4, a5, a6);
        break;
      case 4:
        sub_2338AABA4(a1, v13, a3, a4, a5, a6);
        break;
      case 5:
        sub_2338ABD74(a1, v13, a3, a4, a5, a6);
        break;
    }
  }

  else
  {
    if (*(a4 + 2) <= 9u)
    {
      if (v11 != 7)
      {
        if (v11 == 8)
        {
          sub_2338AA764(a1, v13, a3, a4, a5, a6);
        }

        else
        {
          sub_2338AAFE4(a1, v13, a3, a4, a5, a6);
        }

        goto LABEL_3;
      }

      v12 = *(a3 + 32);
      if ((v12 & 0x10) == 0)
      {
LABEL_28:
        sub_2338A9800(a1, v13, a3, a4, a5, a6);
        goto LABEL_3;
      }

LABEL_29:
      sub_2338A9DDC(a1, v13, a3, (v12 & 0x20) != 0, a4, a5, a6);
      goto LABEL_3;
    }

    switch(v11)
    {
      case 10:
        sub_2338AC184(a1, v13, a3, a4, a5, a6);
        break;
      case 11:
        sub_2338AB424(a1, v13, a3, a4, a5, a6);
        break;
      case 12:
        sub_2338AB8CC(a1, v13, a3, a4, a5, a6);
        break;
    }
  }

LABEL_3:
}

uint64_t sub_2338AA324(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    v12 = *(a4 + 4);
    if (v12 == 1)
    {
      v13 = 0;
      goto LABEL_7;
    }

LABEL_38:
    v29 = 0;
    goto LABEL_37;
  }

  v12 = *(a4 + 4);
  if (v12 - 1000001 < 0xFFF0BDC0)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_7:
  sub_233726218(&__dst, v12);
  v14 = *(a3 + 32);
  v15 = *(a4 + 4);
  if (v15 <= 2)
  {
    v16 = *(a4 + 2);
    if (v16 > 0x6F)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_233916070[v16];
    }

    memmove(__dst, (a4 + 8), v17 * v15);
LABEL_15:
    v26 = __dst;
    if (a6 && v77 != __dst)
    {
      v27 = (v77 - __dst) >> 1;
      v28 = __dst;
      do
      {
        *v28 = bswap32(*v28) >> 16;
        ++v28;
        --v27;
      }

      while (v27);
    }

    v29 = *v26;
    v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20, v21);
    if (*(a4 + 4))
    {
      v34 = 0;
      v35 = (v14 << 31 >> 31) & a5;
      do
      {
        v36 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v30, v35 + *(__dst + v34), v31, v32);
        objc_msgSend_addObject_(v33, v37, v36, v38, v39);

        ++v34;
      }

      while (v34 < *(a4 + 4));
    }

    v40 = sub_2338A9B78(a3);
    v45 = objc_msgSend_length(v40, v41, v42, v43, v44);

    if (v45)
    {
      v46 = *(a3 + 32);
      if ((v46 & 4) != 0)
      {
        v47 = sub_2338A9B94(a1);
        v48 = sub_2338A9BFC(a3);
        v49 = sub_2337854A4(v47, v48, 1);

        if (v13)
        {
          v53 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v49, v54, v33, v53, v55);
        }

        else
        {
          v75 = 0;
          v53 = sub_23386F6F4(v33, &v75, v50, v51, v52);
          v56 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v49, v57, v53, v56, v58);
        }

        v46 = *(a3 + 32);
      }

      if ((v46 & 8) != 0)
      {
        v59 = MEMORY[0x277CCACA8];
        v60 = sub_2338A9B78(a3);
        v64 = objc_msgSend_stringWithFormat_(v59, v61, @"%@/%@", v62, v63, v11, v60);

        if (v13)
        {
          v68 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v68, v69, v33, v64, v70);
        }

        else
        {
          v75 = 0;
          v68 = sub_23386F6F4(v33, &v75, v65, v66, v67);
          v71 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v71, v72, v68, v64, v73);
        }
      }
    }

    goto LABEL_35;
  }

  v23 = *(a4 + 8);
  v24 = bswap32(v23);
  if (a6)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v22 = v77 - __dst;
  if (sub_2338A9730(a1, __dst, v77 - __dst, a5, v25) == v22)
  {
    goto LABEL_15;
  }

  v29 = 0;
LABEL_35:
  if (__dst)
  {
    v77 = __dst;
    operator delete(__dst);
  }

LABEL_37:

  return v29;
}

void sub_2338AA698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338AA764(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    v12 = *(a4 + 4);
    if (v12 == 1)
    {
      v13 = 0;
      goto LABEL_7;
    }

LABEL_38:
    v29 = 0;
    goto LABEL_37;
  }

  v12 = *(a4 + 4);
  if (v12 - 1000001 < 0xFFF0BDC0)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_7:
  sub_2337560FC(&__dst, v12);
  v14 = *(a3 + 32);
  v15 = *(a4 + 4);
  if (v15 <= 2)
  {
    v16 = *(a4 + 2);
    if (v16 > 0x6F)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_233916070[v16];
    }

    memmove(__dst, (a4 + 8), v17 * v15);
LABEL_15:
    v26 = __dst;
    if (a6 && v77 != __dst)
    {
      v27 = (v77 - __dst) >> 1;
      v28 = __dst;
      do
      {
        *v28 = bswap32(*v28) >> 16;
        ++v28;
        --v27;
      }

      while (v27);
    }

    v29 = *v26;
    v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20, v21);
    if (*(a4 + 4))
    {
      v34 = 0;
      v35 = (v14 << 31 >> 31) & a5;
      do
      {
        v36 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v30, (v35 + *(__dst + v34)), v31, v32);
        objc_msgSend_addObject_(v33, v37, v36, v38, v39);

        ++v34;
      }

      while (v34 < *(a4 + 4));
    }

    v40 = sub_2338A9B78(a3);
    v45 = objc_msgSend_length(v40, v41, v42, v43, v44);

    if (v45)
    {
      v46 = *(a3 + 32);
      if ((v46 & 4) != 0)
      {
        v47 = sub_2338A9B94(a1);
        v48 = sub_2338A9BFC(a3);
        v49 = sub_2337854A4(v47, v48, 1);

        if (v13)
        {
          v53 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v49, v54, v33, v53, v55);
        }

        else
        {
          v75 = 0;
          v53 = sub_23386F6F4(v33, &v75, v50, v51, v52);
          v56 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v49, v57, v53, v56, v58);
        }

        v46 = *(a3 + 32);
      }

      if ((v46 & 8) != 0)
      {
        v59 = MEMORY[0x277CCACA8];
        v60 = sub_2338A9B78(a3);
        v64 = objc_msgSend_stringWithFormat_(v59, v61, @"%@/%@", v62, v63, v11, v60);

        if (v13)
        {
          v68 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v68, v69, v33, v64, v70);
        }

        else
        {
          v75 = 0;
          v68 = sub_23386F6F4(v33, &v75, v65, v66, v67);
          v71 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v71, v72, v68, v64, v73);
        }
      }
    }

    goto LABEL_35;
  }

  v23 = *(a4 + 8);
  v24 = bswap32(v23);
  if (a6)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v22 = v77 - __dst;
  if (sub_2338A9730(a1, __dst, v77 - __dst, a5, v25) == v22)
  {
    goto LABEL_15;
  }

  v29 = 0;
LABEL_35:
  if (__dst)
  {
    v77 = __dst;
    operator delete(__dst);
  }

LABEL_37:

  return v29;
}

void sub_2338AAAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338AABA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    v12 = *(a4 + 4);
    if (v12 == 1)
    {
      v13 = 0;
      goto LABEL_7;
    }

LABEL_40:
    v29 = 0;
    goto LABEL_39;
  }

  v12 = *(a4 + 4);
  if (v12 - 1000001 < 0xFFF0BDC0)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_7:
  sub_23372630C(&__dst, v12);
  v14 = *(a3 + 32);
  v15 = *(a4 + 4);
  if (v15 <= 1)
  {
    v16 = *(a4 + 2);
    if (v16 > 0x6F)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_233916070[v16];
    }

    memmove(__dst, (a4 + 8), v17 * v15);
LABEL_15:
    v26 = __dst;
    if (a6 && v77 != __dst)
    {
      v27 = (v77 - __dst) >> 2;
      v28 = __dst;
      do
      {
        *v28 = bswap32(*v28);
        ++v28;
        --v27;
      }

      while (v27);
    }

    v29 = *v26;
    v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20, v21);
    if (*(a4 + 4))
    {
      v34 = 0;
      if (v14)
      {
        v35 = a5;
      }

      else
      {
        v35 = 0;
      }

      do
      {
        v36 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v30, v35 + *(__dst + v34), v31, v32);
        objc_msgSend_addObject_(v33, v37, v36, v38, v39);

        ++v34;
      }

      while (v34 < *(a4 + 4));
    }

    v40 = sub_2338A9B78(a3);
    v45 = objc_msgSend_length(v40, v41, v42, v43, v44);

    if (v45)
    {
      v46 = *(a3 + 32);
      if ((v46 & 4) != 0)
      {
        v47 = sub_2338A9B94(a1);
        v48 = sub_2338A9BFC(a3);
        v49 = sub_2337854A4(v47, v48, 1);

        if (v13)
        {
          v53 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v49, v54, v33, v53, v55);
        }

        else
        {
          v75 = 0;
          v53 = sub_23386F6F4(v33, &v75, v50, v51, v52);
          v56 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v49, v57, v53, v56, v58);
        }

        v46 = *(a3 + 32);
      }

      if ((v46 & 8) != 0)
      {
        v59 = MEMORY[0x277CCACA8];
        v60 = sub_2338A9B78(a3);
        v64 = objc_msgSend_stringWithFormat_(v59, v61, @"%@/%@", v62, v63, v11, v60);

        if (v13)
        {
          v68 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v68, v69, v33, v64, v70);
        }

        else
        {
          v75 = 0;
          v68 = sub_23386F6F4(v33, &v75, v65, v66, v67);
          v71 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v71, v72, v68, v64, v73);
        }
      }
    }

    goto LABEL_37;
  }

  v23 = *(a4 + 8);
  v24 = bswap32(v23);
  if (a6)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v22 = v77 - __dst;
  if (sub_2338A9730(a1, __dst, v77 - __dst, a5, v25) == v22)
  {
    goto LABEL_15;
  }

  v29 = 0;
LABEL_37:
  if (__dst)
  {
    v77 = __dst;
    operator delete(__dst);
  }

LABEL_39:

  return v29;
}

void sub_2338AAF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338AAFE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    v12 = *(a4 + 4);
    if (v12 == 1)
    {
      v13 = 0;
      goto LABEL_7;
    }

LABEL_40:
    v29 = 0;
    goto LABEL_39;
  }

  v12 = *(a4 + 4);
  if (v12 - 1000001 < 0xFFF0BDC0)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_7:
  sub_2337565A0(&__dst, v12);
  v14 = *(a3 + 32);
  v15 = *(a4 + 4);
  if (v15 <= 1)
  {
    v16 = *(a4 + 2);
    if (v16 > 0x6F)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_233916070[v16];
    }

    memmove(__dst, (a4 + 8), v17 * v15);
LABEL_15:
    v26 = __dst;
    if (a6 && v77 != __dst)
    {
      v27 = (v77 - __dst) >> 2;
      v28 = __dst;
      do
      {
        *v28 = bswap32(*v28);
        ++v28;
        --v27;
      }

      while (v27);
    }

    v29 = *v26;
    v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20, v21);
    if (*(a4 + 4))
    {
      v34 = 0;
      if (v14)
      {
        v35 = a5;
      }

      else
      {
        v35 = 0;
      }

      do
      {
        v36 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v30, v35 + *(__dst + v34), v31, v32);
        objc_msgSend_addObject_(v33, v37, v36, v38, v39);

        ++v34;
      }

      while (v34 < *(a4 + 4));
    }

    v40 = sub_2338A9B78(a3);
    v45 = objc_msgSend_length(v40, v41, v42, v43, v44);

    if (v45)
    {
      v46 = *(a3 + 32);
      if ((v46 & 4) != 0)
      {
        v47 = sub_2338A9B94(a1);
        v48 = sub_2338A9BFC(a3);
        v49 = sub_2337854A4(v47, v48, 1);

        if (v13)
        {
          v53 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v49, v54, v33, v53, v55);
        }

        else
        {
          v75 = 0;
          v53 = sub_23386F6F4(v33, &v75, v50, v51, v52);
          v56 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v49, v57, v53, v56, v58);
        }

        v46 = *(a3 + 32);
      }

      if ((v46 & 8) != 0)
      {
        v59 = MEMORY[0x277CCACA8];
        v60 = sub_2338A9B78(a3);
        v64 = objc_msgSend_stringWithFormat_(v59, v61, @"%@/%@", v62, v63, v11, v60);

        if (v13)
        {
          v68 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v68, v69, v33, v64, v70);
        }

        else
        {
          v75 = 0;
          v68 = sub_23386F6F4(v33, &v75, v65, v66, v67);
          v71 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v71, v72, v68, v64, v73);
        }
      }
    }

    goto LABEL_37;
  }

  v23 = *(a4 + 8);
  v24 = bswap32(v23);
  if (a6)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v22 = v77 - __dst;
  if (sub_2338A9730(a1, __dst, v77 - __dst, a5, v25) == v22)
  {
    goto LABEL_15;
  }

  v29 = 0;
LABEL_37:
  if (__dst)
  {
    v77 = __dst;
    operator delete(__dst);
  }

LABEL_39:

  return v29;
}

void sub_2338AB358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float sub_2338AB424(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    if (*(a4 + 4) == 1)
    {
      v16 = 0;
      goto LABEL_7;
    }

LABEL_41:
    v50 = 0.0;
    goto LABEL_40;
  }

  if ((*(a4 + 4) - 1000001) < 0xFFF0BDC0)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_7:
  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12, v13, v14);
  v22 = *(a4 + 4);
  v23 = *(a4 + 2);
  if (v23 > 0x6F)
  {
    v24 = 0;
  }

  else
  {
    v24 = qword_233916070[v23];
  }

  if (v24 * v22 == 4)
  {
    v25 = *(a4 + 8);
    v26 = bswap32(v25);
    if (a6)
    {
      v25 = v26;
    }

    v27 = *&v25;
    LODWORD(v21) = v25;
    v28 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v17, v18, v19, v21);
    objc_msgSend_addObject_(v20, v29, v28, v30, v31);

    goto LABEL_27;
  }

  sub_23372630C(&__p, v22);
  v32 = v87 - __p;
  v33 = *(a4 + 8);
  v34 = bswap32(v33);
  if (a6)
  {
    v35 = v34;
  }

  else
  {
    v35 = v33;
  }

  v40 = sub_2338A9730(a1, __p, v87 - __p, a5, v35);
  v42 = __p;
  if (v40 == v32)
  {
    if (a6 && v87 != __p)
    {
      v43 = (v87 - __p) >> 2;
      v44 = __p;
      do
      {
        *v44 = bswap32(*v44);
        ++v44;
        --v43;
      }

      while (v43);
    }

    v27 = *v42;
    if (!*(a4 + 4))
    {
      goto LABEL_25;
    }

    v45 = 0;
    do
    {
      LODWORD(v41) = *(__p + v45);
      v46 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v36, v37, v38, v39, v41);
      objc_msgSend_addObject_(v20, v47, v46, v48, v49);

      ++v45;
    }

    while (v45 < *(a4 + 4));
    v42 = __p;
    if (__p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = 0.0;
    if (__p)
    {
LABEL_25:
      v87 = v42;
      operator delete(v42);
    }
  }

  v50 = 0.0;
  if (v40 == v32)
  {
LABEL_27:
    v51 = sub_2338A9B78(a3);
    v56 = objc_msgSend_length(v51, v52, v53, v54, v55);

    if (v56)
    {
      v57 = *(a3 + 32);
      if ((v57 & 4) != 0)
      {
        v58 = sub_2338A9B94(a1);
        v59 = sub_2338A9BFC(a3);
        v60 = sub_2337854A4(v58, v59, 1);

        if (v16)
        {
          v64 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v60, v65, v20, v64, v66);
        }

        else
        {
          __p = 0;
          v64 = sub_23386F6F4(v20, &__p, v61, v62, v63);
          v67 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v60, v68, v64, v67, v69);
        }

        v57 = *(a3 + 32);
      }

      if ((v57 & 8) != 0)
      {
        v70 = MEMORY[0x277CCACA8];
        v71 = sub_2338A9B78(a3);
        v75 = objc_msgSend_stringWithFormat_(v70, v72, @"%@/%@", v73, v74, v15, v71);

        if (v16)
        {
          v79 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v79, v80, v20, v75, v81);
        }

        else
        {
          __p = 0;
          v79 = sub_23386F6F4(v20, &__p, v76, v77, v78);
          v82 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v82, v83, v79, v75, v84);
        }
      }
    }

    v50 = v27;
  }

LABEL_40:
  return v50;
}

double sub_2338AB8CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    if (*(a4 + 4) == 1)
    {
      v16 = 0;
      goto LABEL_7;
    }

LABEL_42:
    v48 = 0.0;
    goto LABEL_41;
  }

  if ((*(a4 + 4) - 1000001) < 0xFFF0BDC0)
  {
    goto LABEL_42;
  }

  v16 = 1;
LABEL_7:
  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12, v13, v14);
  v21 = *(a4 + 4);
  v22 = *(a4 + 2);
  if (v22 > 0x6F)
  {
    v23 = 0;
  }

  else
  {
    v23 = qword_233916070[v22];
  }

  if (v23 * v21 == 4)
  {
    LODWORD(v24) = *(a4 + 8);
    v25 = bswap32(LODWORD(v24));
    if (a6)
    {
      *&v24 = v25;
    }

    else
    {
      *&v24 = LODWORD(v24);
    }

    v26 = v24;
    v27 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v21, v17, v18, v19, v24);
    objc_msgSend_addObject_(v20, v28, v27, v29, v30);

    goto LABEL_28;
  }

  sub_2338B2340(&__p, v21);
  v31 = v85 - __p;
  v32 = *(a4 + 8);
  v33 = bswap32(v32);
  if (a6)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  v39 = sub_2338A9730(a1, __p, v85 - __p, a5, v34);
  v40 = __p;
  if (v39 == v31)
  {
    if (a6 && v85 != __p)
    {
      v41 = (v85 - __p) >> 3;
      v42 = __p;
      do
      {
        *v42 = bswap64(*v42);
        ++v42;
        --v41;
      }

      while (v41);
    }

    v26 = *v40;
    if (!*(a4 + 4))
    {
      goto LABEL_26;
    }

    v43 = 0;
    do
    {
      v44 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v35, v36, v37, v38, *(__p + v43));
      objc_msgSend_addObject_(v20, v45, v44, v46, v47);

      ++v43;
    }

    while (v43 < *(a4 + 4));
    v40 = __p;
    if (__p)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v26 = 0.0;
    if (__p)
    {
LABEL_26:
      v85 = v40;
      operator delete(v40);
    }
  }

  v48 = 0.0;
  if (v39 == v31)
  {
LABEL_28:
    v49 = sub_2338A9B78(a3);
    v54 = objc_msgSend_length(v49, v50, v51, v52, v53);

    if (v54)
    {
      v55 = *(a3 + 32);
      if ((v55 & 4) != 0)
      {
        v56 = sub_2338A9B94(a1);
        v57 = sub_2338A9BFC(a3);
        v58 = sub_2337854A4(v56, v57, 1);

        if (v16)
        {
          v62 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v58, v63, v20, v62, v64);
        }

        else
        {
          __p = 0;
          v62 = sub_23386F6F4(v20, &__p, v59, v60, v61);
          v65 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v58, v66, v62, v65, v67);
        }

        v55 = *(a3 + 32);
      }

      if ((v55 & 8) != 0)
      {
        v68 = MEMORY[0x277CCACA8];
        v69 = sub_2338A9B78(a3);
        v73 = objc_msgSend_stringWithFormat_(v68, v70, @"%@/%@", v71, v72, v15, v69);

        if (v16)
        {
          v77 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v77, v78, v20, v73, v79);
        }

        else
        {
          __p = 0;
          v77 = sub_23386F6F4(v20, &__p, v74, v75, v76);
          v80 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v80, v81, v77, v73, v82);
        }
      }
    }

    v48 = v26;
  }

LABEL_41:
  return v48;
}

double sub_2338ABD74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
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
    v32 = 0.0;
    goto LABEL_38;
  }

  v12 = *(a4 + 4);
  if (v12 != 1)
  {
    goto LABEL_39;
  }

  v13 = 0;
LABEL_7:
  sub_23372630C(&__p, (2 * v12));
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

  v14 = v76 - __p;
  if (sub_2338A9730(a1, __p, v76 - __p, a5, v17) == v14)
  {
    v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20, v21);
    if (a6)
    {
      v28 = __p;
      if (v76 != __p)
      {
        v29 = (v76 - __p) >> 2;
        do
        {
          *v28 = bswap32(*v28);
          ++v28;
          --v29;
        }

        while (v29);
      }
    }

    if (*(a4 + 4))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0.0;
      do
      {
        v33 = *(__p + v30);
        v34 = 0.0;
        if (v33)
        {
          LODWORD(v27) = *(__p + v30 + 4);
          v34 = v33 / v27;
        }

        if (!v31)
        {
          v32 = v34;
        }

        *&v34 = v34;
        v35 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v23, v24, v25, v34);
        objc_msgSend_addObject_(v26, v36, v35, v37, v38);

        ++v31;
        v30 += 8;
      }

      while (v31 < *(a4 + 4));
    }

    else
    {
      v32 = 0.0;
    }

    v39 = sub_2338A9B78(a3);
    v44 = objc_msgSend_length(v39, v40, v41, v42, v43);

    if (v44)
    {
      v45 = *(a3 + 32);
      if ((v45 & 4) != 0)
      {
        v46 = sub_2338A9B94(a1);
        v47 = sub_2338A9BFC(a3);
        v48 = sub_2337854A4(v46, v47, 1);

        if (v13)
        {
          v52 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v48, v53, v26, v52, v54);
        }

        else
        {
          v74 = 0;
          v52 = sub_23386F6F4(v26, &v74, v49, v50, v51);
          v55 = sub_2338A9B78(a3);
          objc_msgSend_setObject_forKeyedSubscript_(v48, v56, v52, v55, v57);
        }

        v45 = *(a3 + 32);
      }

      if ((v45 & 8) != 0)
      {
        v58 = MEMORY[0x277CCACA8];
        v59 = sub_2338A9B78(a3);
        v63 = objc_msgSend_stringWithFormat_(v58, v60, @"%@/%@", v61, v62, v11, v59);

        if (v13)
        {
          v67 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v67, v68, v26, v63, v69);
        }

        else
        {
          v74 = 0;
          v67 = sub_23386F6F4(v26, &v74, v64, v65, v66);
          v70 = sub_2338A9C18(a1);
          objc_msgSend_setObject_forKeyedSubscript_(v70, v71, v67, v63, v72);
        }
      }
    }
  }

  else
  {
    v32 = 0.0;
  }

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

LABEL_38:

  return v32;
}