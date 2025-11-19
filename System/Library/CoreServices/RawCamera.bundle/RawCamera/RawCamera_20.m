__CFString *sub_2338D0924(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_2789F0D48[a2];
  }
}

void sub_2338D0944(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338D0A18(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284934F88;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_284934E90;
  *(a1 + 220) = -1;
  return a1;
}

void sub_2338D0AC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284934F88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338D0B3C(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284934FD8;
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
  v7 = sub_233725614(*a3);
  v8 = 0;
  do
  {
    v9 = sub_23372574C(*a3);
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    if (v11 >= v10)
    {
      v13 = *v6;
      v14 = v11 - *v6;
      v15 = v14 >> 3;
      v16 = (v14 >> 3) + 1;
      if (v16 >> 61)
      {
        sub_2337235BC();
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
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
        sub_233723798(v6, v18);
      }

      *(8 * v15) = v9;
      v12 = 8 * v15 + 8;
      memcpy(0, v13, v14);
      v19 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(a1 + 56) = v12;
      *(a1 + 64) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v11 = v9;
      v12 = (v11 + 1);
    }

    *(a1 + 56) = v12;
    ++v8;
  }

  while (v8 <= v7);
  return a1;
}

void sub_2338D0CF0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338D0D1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v55, v56, v57, v58);
  v64 = *(a1 + 48);
  v65 = *(a1 + 56);
  while (v64 != v65)
  {
    v66 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v59, v60, v61, v62, *v64);
    objc_msgSend_addObject_(v63, v67, v66, v68, v69);

    ++v64;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v6, v59, v63, @"Coefficients", v62);
  v70 = [RAWOpcodeMapPolynomial alloc];
  v74 = objc_msgSend_initWithArguments_(v70, v71, v6, v72, v73);

  return v74;
}

void *sub_2338D0FAC(void *a1)
{
  *a1 = &unk_284934FD8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2338D0FFC(void *a1)
{
  *a1 = &unk_284934FD8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_2338D1074(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284935168, 0);
    if (v11)
    {
      sub_2338D1674(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338D1154(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284935168, 0);
    if (v9)
    {
      sub_2338D177C(v9, v10, v11, a4, v12, a6);
    }
  }
}

void sub_2338D1218(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338D1C74();
}

void sub_2338D12AC(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9C18(a1);
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"IFD0/%@", v8, v9, *MEMORY[0x277CD34B8]);
  v14 = sub_233740FAC(v6, v10, v11, v12, v13);

  v19 = objc_msgSend_intValue(v14, v15, v16, v17, v18);
  if ((v19 - 9) >= 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v14)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v22 = sub_2338A9C18(a1);
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"IFD0/Exif/Makernote/%@/%@", v24, v25, @"SamsungThumbnail", @"PreviewImageStart");
  v30 = sub_233740FAC(v22, v26, v27, v28, v29);

  v31 = sub_2338A9C18(a1);
  v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"IFD0/Exif/Makernote/%@/%@", v33, v34, @"SamsungThumbnail", @"PreviewImageLength");
  v39 = sub_233740FAC(v31, v35, v36, v37, v38);

  memset(v53, 0, sizeof(v53));
  sub_2338B0B1C(a1, a2, &v52);
  LODWORD(v48) = objc_msgSend_intValue(v30, v40, v41, v42, v43);
  v49 = objc_msgSend_intValue(v39, v44, v45, v46, v47);
  sub_233726998(&v50, &v49);
  sub_2338A820C(a1, &v48, &v50, v21, &v51);
  sub_2338AFE60(a1, @"IFD1/SubIFD0", &v48);
  if (v52)
  {
    sub_233753C74(v53, &v52);
  }

  if (v51)
  {
    sub_233753C74(v53, &v51);
  }

  if (v48)
  {
    sub_233753C74(v53, &v48);
  }

  sub_2338A86B8(v53, a2, a3);
  if (*(&v48 + 1))
  {
    sub_2337239E8(*(&v48 + 1));
  }

  if (*(&v51 + 1))
  {
    sub_2337239E8(*(&v51 + 1));
  }

  if (*(&v52 + 1))
  {
    sub_2337239E8(*(&v52 + 1));
  }

  *&v52 = v53;
  sub_233723948(&v52);
}

void sub_2338D150C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void **a16, std::__shared_weak_count *a17, char a18)
{
  if (a15)
  {
    sub_2337239E8(a15);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  a16 = &a18;
  sub_233723948(&a16);

  _Unwind_Resume(a1);
}

uint64_t sub_2338D15D0(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  sub_2338ADD58(a1, v10, word_284935010, 0, a5 + a3, a6);
  (*(*a1 + 160))(a1);

  return 1;
}

void sub_2338D1674(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  if (*(a4 + 4))
  {
    v12 = MEMORY[0x277CCACA8];
    v21 = v11;
    v13 = sub_2338A9B78(a3);
    v17 = objc_msgSend_stringWithFormat_(v12, v14, @"%@/%@", v15, v16, v21, v13);

    v18 = *(a4 + 8);
    v19 = bswap32(v18);
    if (a6)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_2338ADD58(a1, v17, word_2789F0DC0, v20, a5, a6);

    v11 = v21;
  }
}

void sub_2338D177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) == 1)
  {
    v7 = bswap32(*(a4 + 8)) >> 16;
    if (a6)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a4 + 8);
    }

    v16 = sub_2338A9B94(a1);
    v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v9, v8, v10, v11);
    v13 = *MEMORY[0x277CD2F50];
    sub_2337830C4(v16, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68], v12);

    v17 = sub_2338D18B4(v14, v8);
    if (v17)
    {
      v15 = sub_2338A9B94(a1);
      sub_2337830C4(v15, v13, *MEMORY[0x277CD2F78], v17);
    }
  }
}

id sub_2338D18B4(uint64_t a1, uint64_t a2)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v6 = sub_2338E9010(@"samsung");
  if (v6)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"%u", v4, v5, a2);
    v11 = sub_23378DDE8(v6, v7, v8, v9, v10);

    for (i = 0; ; i = v67 + 1)
    {
      v67 = i;
      if (i >= objc_msgSend_count(v11, v12, v13, v14, v15))
      {

        goto LABEL_25;
      }

      v20 = sub_23386EAC4(v11, &v67, v17, v18, v19);
      if (objc_msgSend_count(v20, v21, v22, v23, v24) == 5)
      {
        break;
      }

LABEL_21:
    }

    __p[0] = 0;
    v28 = sub_23386E0B8(v20, __p, v25, v26, v27);
    __p[0] = 1;
    v32 = sub_23386EA74(v20, __p, v29, v30, v31);
    __p[0] = 2;
    v36 = sub_23386EA74(v20, __p, v33, v34, v35);
    __p[0] = 3;
    v40 = sub_23386EA74(v20, __p, v37, v38, v39);
    __p[0] = 4;
    v44 = sub_23386EA74(v20, __p, v41, v42, v43);
    if (v28)
    {
      v45 = v44;
      v46 = v28;
      v51 = objc_msgSend_UTF8String(v46, v47, v48, v49, v50);
      v52 = strlen(v51);
      if (v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2337304FC();
      }

      v53 = v52;
      if (v52 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v62) = v52;
      if (v52)
      {
        memmove(&__dst, v51, v52);
      }

      *(&__dst + v53) = 0;
      v54 = SHIBYTE(v62);
      if (SHIBYTE(v62) < 0)
      {
        sub_233731FB8(__p, __dst, *(&__dst + 1));
      }

      else
      {
        *__p = __dst;
        v64 = v62;
      }

      *&v65 = v32;
      *(&v65 + 1) = v36;
      *&v66 = v40;
      *(&v66 + 1) = v45;
      v55 = v69;
      if (v69 >= v70)
      {
        v69 = sub_2338BAFB4(&v68, __p);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p[0]);
          if ((v54 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v56 = *__p;
      *(v69 + 16) = v64;
      *v55 = v56;
      __p[1] = 0;
      v64 = 0;
      __p[0] = 0;
      v57 = v66;
      *(v55 + 24) = v65;
      *(v55 + 40) = v57;
      v69 = v55 + 56;
      if (v54 < 0)
      {
LABEL_17:
        operator delete(__dst);
      }
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_25:
  v58 = v68;
  if (v69 == v68)
  {
    v59 = 0;
  }

  else
  {
    if (*(v68 + 23) < 0)
    {
      v58 = *v68;
    }

    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v58, v4, v5);
  }

  __p[0] = &v68;
  sub_2338BB644(__p);

  return v59;
}

void sub_2338D1BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  __p = &a24;
  sub_2338BB644(&__p);
  _Unwind_Resume(a1);
}

void *sub_2338D1D10(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284935190;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284935098;
  return a1;
}

void sub_2338D1DB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284935190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338D1E2C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849353C8, 0);
    if (v10)
    {
      sub_2338D33A4(v10, v11, a3, a4, v12, a6);
    }
  }
}

void sub_2338D1EF8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849353C8, 0);
    if (v11)
    {
      sub_2338D348C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338D1FD8(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338D38D0();
}

void sub_2338D206C(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v13 = sub_233875D18(v2, *MEMORY[0x277CD3038], @"LensModel");

  v3 = sub_2338A9B94(a1);
  v4 = *MEMORY[0x277CD2F50];
  v5 = sub_2338BD598(v3, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68]);

  if (v5)
  {
    v10 = objc_msgSend_intValue(v5, v6, v7, v8, v9);
    v11 = sub_2338D2214(a1, v10);
    if (sub_2338A818C(v11, v13, 0))
    {
      v12 = sub_2338A9B94(a1);
      sub_2338AE980(v12, v4, *MEMORY[0x277CD2F78]);
    }

    else
    {
      v12 = sub_2338A9B94(a1);
      sub_2337830C4(v12, v4, *MEMORY[0x277CD2F78], v11);
    }
  }

  sub_2338AF5B0(a1);
}

id sub_2338D2214(uint64_t a1, uint64_t a2)
{
  v174 = 0;
  v175 = 0;
  v176 = 0;
  if (a2 == 0xFFFF)
  {
    v3 = sub_2338A9B94(a1);
    v4 = sub_233875D18(v3, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F78]);

    if (v4)
    {
      goto LABEL_98;
    }
  }

  v8 = sub_2338E9010(@"sony");
  v166 = v8;
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%lld", v6, v7, a2);
  v13 = sub_23378DDE8(v8, v9, v10, v11, v12);

  for (i = 0; ; i = v173 + 1)
  {
    v173 = i;
    if (i >= objc_msgSend_count(v13, v14, v15, v16, v17))
    {
      break;
    }

    v22 = sub_23386EAC4(v13, &v173, v19, v20, v21);
    if (objc_msgSend_count(v22, v23, v24, v25, v26) != 5)
    {
      goto LABEL_24;
    }

    __p[0] = 0;
    v30 = sub_23386E0B8(v22, __p, v27, v28, v29);
    __p[0] = 1;
    v34 = sub_23386EA74(v22, __p, v31, v32, v33);
    __p[0] = 2;
    v38 = sub_23386EA74(v22, __p, v35, v36, v37);
    __p[0] = 3;
    v42 = sub_23386EA74(v22, __p, v39, v40, v41);
    __p[0] = 4;
    v46 = sub_23386EA74(v22, __p, v43, v44, v45);
    if (v30)
    {
      v47 = v46;
      v48 = v30;
      v53 = objc_msgSend_UTF8String(v48, v49, v50, v51, v52);
      v54 = strlen(v53);
      if (v54 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2337304FC();
      }

      v55 = v54;
      if (v54 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v168) = v54;
      if (v54)
      {
        memmove(&__dst, v53, v54);
      }

      *(&__dst + v55) = 0;
      v56 = SHIBYTE(v168);
      if (SHIBYTE(v168) < 0)
      {
        sub_233731FB8(__p, __dst, *(&__dst + 1));
      }

      else
      {
        *__p = __dst;
        v170 = v168;
      }

      *&v171 = v34;
      *(&v171 + 1) = v38;
      *&v172 = v42;
      *(&v172 + 1) = v47;
      v57 = v175;
      if (v175 >= v176)
      {
        v175 = sub_2338BAFB4(&v174, __p);
        if (SHIBYTE(v170) < 0)
        {
          operator delete(__p[0]);
          if ((v56 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }
        }

        else if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        operator delete(__dst);
      }

      else
      {
        v58 = *__p;
        *(v175 + 16) = v170;
        *v57 = v58;
        __p[1] = 0;
        v170 = 0;
        __p[0] = 0;
        v59 = v172;
        *(v57 + 24) = v171;
        *(v57 + 40) = v59;
        v175 = v57 + 56;
        if (v56 < 0)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      v8 = v166;
    }

LABEL_24:
  }

LABEL_28:
  v60 = v174;
  if (v175 - v174 != 56)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v175 - v174) >> 3)) < 2)
    {
      v4 = 0;
      goto LABEL_97;
    }

    v61 = sub_2338B0E5C(a1);
    v62 = sub_2338A9B94(a1);
    v63 = sub_233739994(v62, *MEMORY[0x277CD2F50], 0);

    v67 = sub_233740FAC(v61, *MEMORY[0x277CD3088], v64, v65, v66);
    v71 = sub_233740FAC(v61, *MEMORY[0x277CD30E8], v68, v69, v70);
    v75 = sub_23378DDE8(v61, *MEMORY[0x277CD2F70], v72, v73, v74);
    v81 = v75;
    v82 = 0.0;
    if (v75)
    {
      v84 = 0.0;
      if (objc_msgSend_count(v75, v76, v77, v78, v79) == 4)
      {
        __p[0] = 0;
        v84 = sub_23386EA74(v81, __p, v83, v78, v79);
        __p[0] = 1;
        v82 = sub_23386EA74(v81, __p, v85, v86, v87);
        __p[0] = 2;
        sub_23386EA74(v81, __p, v88, v89, v90);
        __p[0] = 3;
        v80 = sub_23386EA74(v81, __p, v91, v92, v93);
      }
    }

    else
    {
      v84 = 0.0;
    }

    v94 = v174;
    if (*(v174 + 23) < 0)
    {
      v94 = *v174;
    }

    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v94, v78, v79, v80);
    if (v67)
    {
      v162 = v71;
      v163 = v63;
      v161 = v99;
      objc_msgSend_doubleValue(v67, v95, v96, v97, v98);
      v101 = v100;
      objc_msgSend_doubleValue(v71, v102, v103, v104, v105);
      v107 = exp2(v106 * 0.5);
      v112 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v175 - v174) >> 3));
      v114 = v174;
      if ((0x6DB6DB6DB6DB6DB7 * ((v175 - v174) >> 3)) >= 2)
      {
        v159 = log(v101);
        v115 = 0;
        v116 = 0;
        v117 = 999999999.0;
        v118 = 1;
        v164 = v107;
        while (1)
        {
          v119 = v114 + v115;
          if (*(v114 + v115 + 79) < 0)
          {
            v121 = v117;
            sub_233731FB8(__p, *(v119 + 56), *(v119 + 64));
            v117 = v121;
          }

          else
          {
            v120 = *(v119 + 56);
            v170 = *(v119 + 72);
            *__p = v120;
          }

          v122 = *(v114 + v115 + 80);
          v172 = *(v114 + v115 + 96);
          v171 = v122;
          v123 = v122;
          v124 = *(&v172 + 1);
          v113 = *&v172;
          if (v84 > 0.0 && vabdd_f64(v84, *&v171) > 0.9)
          {
            goto LABEL_76;
          }

          if (v82 > 0.0 && vabdd_f64(v82, *(&v171 + 1)) > 0.9)
          {
            goto LABEL_76;
          }

          if (v101 < *&v171 + -0.9 || v101 > *(&v171 + 1) + 0.9)
          {
            goto LABEL_76;
          }

          if (v107 <= 0.0)
          {
            break;
          }

          if (v107 < *&v172 + -0.15 || v107 > *(&v172 + 1) + 0.15)
          {
            goto LABEL_76;
          }

          if (*&v171 != *(&v171 + 1) && *&v172 != *(&v172 + 1))
          {
            v160 = v117;
            v127 = log(*&v172);
            v128 = log(v124) - v127;
            v129 = log(*(&v123 + 1));
            v130 = log(*&v123);
            v131 = v127 + v128 / (v129 - v130) * (v159 - v130);
            v107 = v164;
            v113 = exp(v131);
            v117 = v160;
          }

          v132 = vabdd_f64(v107, v113);
          v113 = v117 + 0.15;
          if (v132 <= v117 + 0.15)
          {
            if (v132 < v117 + -0.15)
            {
              if (v170 >= 0)
              {
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, __p, v110, v111);
              }

              else
              {
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, __p[0], v110, v111);
              }
              v133 = ;

              v116 = v133;
            }

            goto LABEL_71;
          }

LABEL_75:
          v107 = v164;
LABEL_76:
          if (SHIBYTE(v170) < 0)
          {
            v138 = v117;
            operator delete(__p[0]);
            v117 = v138;
          }

          ++v118;
          v114 = v174;
          v115 += 56;
          if (v118 >= 0x6DB6DB6DB6DB6DB7 * ((v175 - v174) >> 3))
          {
            goto LABEL_81;
          }
        }

        v132 = v117;
LABEL_71:
        if (v170 >= 0)
        {
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, __p, v110, v111);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, __p[0], v110, v111);
        }
        v134 = ;
        objc_msgSend_addObject_(v112, v135, v134, v136, v137);

        v117 = v132;
        goto LABEL_75;
      }

      v116 = 0;
LABEL_81:
      if (objc_msgSend_count(v112, v108, v109, v110, v111, v113))
      {
        if (v116)
        {
          objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v139, v116, v140, v141);
        }

        else
        {
          objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v139, &stru_284938540, v140, v141);
        }
        v4 = ;
        for (j = 0; ; j = __p[0] + 1)
        {
          __p[0] = j;
          if (j >= objc_msgSend_count(v112, v142, v143, v144, v145))
          {
            break;
          }

          v150 = sub_23386E0B8(v112, __p, v147, v148, v149);
          if (objc_msgSend_length(v4, v151, v152, v153, v154))
          {
            if (!v116 || (objc_msgSend_isEqualToString_(v150, v155, v116, v156, v157) & 1) == 0)
            {
              objc_msgSend_appendFormat_(v4, v155, @" or %@", v156, v157, v150);
            }
          }

          else
          {
            objc_msgSend_appendString_(v4, v155, v150, v156, v157);
          }
        }

        v8 = v166;
        v71 = v162;
        v63 = v163;
        v99 = v161;
        goto LABEL_96;
      }

      v8 = v166;
      v71 = v162;
      v99 = v161;
    }

    v4 = v99;
LABEL_96:

    goto LABEL_97;
  }

  if (*(v174 + 23) < 0)
  {
    v60 = *v174;
  }

  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v60, v6, v7);
LABEL_97:

LABEL_98:
  __p[0] = &v174;
  sub_2338BB644(__p);

  return v4;
}

void sub_2338D2A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, _Unwind_Exception *exception_object, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  __p = &a34;
  sub_2338BB644(&__p);
  _Unwind_Resume(a1);
}

void sub_2338D2C1C(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v11 = v2;
  v4 = sub_2338AE880(v2, *MEMORY[0x277CD2F50], @"ImageStabilization");

  if (v4)
  {
    v12 = sub_2338A9B94(a1);
    v5 = sub_2338AE900(v12, v3, @"ImageStabilization");

    if (v5)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    v13 = sub_2338A9B94(a1);
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v6, v8, v9);
    sub_2337830C4(v13, v3, @"ImageStabilization", v10);
  }
}

BOOL sub_2338D2D5C(uint64_t a1)
{
  v1 = sub_2338A9B94(a1);
  v2 = sub_233875D18(v1, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  v3 = sub_2338BA75C(v2, @"DSLR-A100", 0) != 0;
  return v3;
}

BOOL sub_2338D2DF4(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v14 = 0;
  v15[0] = 0;
  *(v15 + 5) = 0;
  v11 = sub_2338A9730(a1, &v14, 20, a5, a3);
  if (v11 == 20)
  {
    if (v14 ^ 0x43534420594E4F53 | LOWORD(v15[0]) ^ 0x20)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 + 12;
    }

    sub_2338ADD58(a1, v10, word_2849351D0, v12, a5, a6);
    (*(*a1 + 160))(a1);
  }

  return v11 == 20;
}

void sub_2338D2F34(uint64_t a1)
{
  v21 = sub_2338A9B94(a1);
  v2 = sub_2338AE880(v21, @"{PictStyleSetting}", @"SceneMode");

  if (v2)
  {
    v22 = sub_2338A9B94(a1);
    v3 = sub_2338AE900(v22, @"{PictStyleSetting}", @"SceneMode");

    v23 = sub_2338D3264(v4, v3);
    sub_2338AD018(a1, @"{PictureStyle}", @"SceneMode", v23, v3, v3);
  }

  v24 = sub_2338A9B94(a1);
  v5 = sub_2338AE880(v24, @"{PictStyleSetting}", @"ColorMode");

  if (v5)
  {
    v25 = sub_2338A9B94(a1);
    v6 = sub_2338AE900(v25, @"{PictStyleSetting}", @"ColorMode");

    v26 = sub_2338D3284(v7, v6);
    sub_2338AD018(a1, @"{PictureStyle}", @"ColorMode", v26, v6, v6);

    v8 = v6 == 6;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2338A9B94(a1);
  v27 = sub_233739994(v9, @"{PictureStyle}", 0);

  if (v27)
  {
    if (!sub_233739ACC(v27, @"Monochrome"))
    {
      sub_2338ACF60(a1, @"Monochrome", v8);
    }

    v10 = (*(*a1 + 96))(a1);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = @"{PictureStyle}";
      v12 = sub_2338AD1AC(a1, v10);
      sub_2338AD018(a1, v11, @"PictStyleColorSpace", v12, v10, v10);
    }
  }

  v13 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v13, v14, @"{PictStyleSetting}", v15, v16);

  v17 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v17, v18, @"{PictStyleNormalized}", v19, v20);
}

__CFString *sub_2338D3264(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x11)
  {
    return 0;
  }

  else
  {
    return off_2789F0E48[a2];
  }
}

__CFString *sub_2338D3284(uint64_t a1, int a2)
{
  if (a2 <= 6)
  {
    v2 = @"Night Portrait";
    v11 = @"Black and White";
    if (a2 != 6)
    {
      v11 = 0;
    }

    if (a2 != 5)
    {
      v2 = v11;
    }

    v12 = @"Landscape";
    v13 = @"Sunset";
    if (a2 != 4)
    {
      v13 = 0;
    }

    if (a2 != 3)
    {
      v12 = v13;
    }

    if (a2 <= 4)
    {
      v2 = v12;
    }

    v6 = @"Standard";
    v14 = @"Vivid";
    v15 = @"Portrait";
    if (a2 != 2)
    {
      v15 = 0;
    }

    if (a2 != 1)
    {
      v14 = v15;
    }

    if (a2)
    {
      v6 = v14;
    }

    v10 = a2 <= 2;
  }

  else
  {
    v2 = @"Night view";
    v3 = @"Autumn Leaves";
    if (a2 != 105)
    {
      v3 = 0;
    }

    if (a2 != 104)
    {
      v2 = v3;
    }

    v4 = @"Deep";
    v5 = @"Ligth";
    if (a2 != 103)
    {
      v5 = 0;
    }

    if (a2 != 102)
    {
      v4 = v5;
    }

    if (a2 <= 103)
    {
      v2 = v4;
    }

    v6 = @"Neutral";
    v7 = @"Clear";
    if (a2 != 101)
    {
      v7 = 0;
    }

    if (a2 != 100)
    {
      v6 = v7;
    }

    v8 = @"Adobe RGB";
    v9 = @"Neutral";
    if (a2 != 12)
    {
      v9 = 0;
    }

    if (a2 != 7)
    {
      v8 = v9;
    }

    if (a2 <= 99)
    {
      v6 = v8;
    }

    v10 = a2 <= 101;
  }

  if (v10)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

void sub_2338D33A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v8) = *(a4 + 8);
  v16 = sub_2338A9B94(a1);
  v9 = bswap32(v8);
  if (a6)
  {
    v8 = v9;
  }

  else
  {
    v8 = v8;
  }

  v10 = sub_2338A9BFC(a3);
  v11 = sub_2338A9B78(a3);
  v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, v8, v13, v14);
  sub_2337830C4(v16, v10, v11, v15);
}

void sub_2338D3460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2338D348C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v63 = a2;
  v64[0] = 0;
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

  if (sub_2338A9730(a1, v64, 8, a5, v13) != 8)
  {
    goto LABEL_53;
  }

  if ((v64[0] & 3) > 1)
  {
    v18 = 0;
    if ((v64[0] & 3) == 2)
    {
      v17 = @"FE ";
    }

    else
    {
      v17 = @"E ";
    }
  }

  else if ((v64[0] & 3) != 0)
  {
    v18 = 0;
    v17 = @"DT ";
  }

  else
  {
    v17 = 0;
    v18 = 1;
  }

  v19 = v64[0];
  if ((v64[0] & 0x40) != 0)
  {
    v20 = @"PZ ";
  }

  else
  {
    v20 = 0;
  }

  v21 = HIBYTE(v64[0]);
  if ((v64[0] & 0x400000000000000) != 0)
  {
    v22 = @" ZA";
  }

  else
  {
    v22 = 0;
  }

  v61 = a3;
  v62 = a1;
  v58 = v22;
  v59 = v20;
  v60 = v17;
  if ((HIBYTE(v64[0]) & 3) == 2)
  {
    v23 = 0;
    v24 = @" SAM";
  }

  else
  {
    if ((HIBYTE(v64[0]) & 3) != 1)
    {
      v57 = 0;
      v23 = 1;
      goto LABEL_24;
    }

    v23 = 0;
    v24 = @" SSM";
  }

  v57 = v24;
LABEL_24:
  v25 = v64[0];
  v26 = @" OSS";
  v27 = @" LE";
  if (SLOBYTE(v64[0]) >= 0)
  {
    v26 = 0;
  }

  if ((v64[0] & 0x20) == 0)
  {
    v27 = 0;
  }

  v56 = v27;
  v28 = @" II";
  if ((v64[0] & 8) == 0)
  {
    v28 = 0;
  }

  v54 = v26;
  v55 = v28;
  v29 = BYTE5(v64[0]);
  v30 = BYTE6(v64[0]);
  if (*(v64 + 3))
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%d-%dmm ", v15, v16, (BYTE2(v64[0]) & 0xF) + 100 * (BYTE1(v64[0]) & 0xF) + 10 * ((BYTE2(v64[0]) >> 4) + (BYTE1(v64[0]) >> 4)), (BYTE4(v64[0]) & 0xF) + 100 * (BYTE3(v64[0]) & 0xF) + 10 * ((BYTE4(v64[0]) >> 4) + (BYTE3(v64[0]) >> 4)));
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%dmm ", v15, v16, (BYTE2(v64[0]) & 0xF) + 100 * (BYTE1(v64[0]) & 0xF) + 10 * ((BYTE2(v64[0]) >> 4) + (BYTE1(v64[0]) >> 4)));
  }
  v34 = ;
  if (BYTE6(v64[0]))
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"F%.1f-%.1f", v32, v33, (((v29 & 0xF) + 10 * (v29 >> 4)) / 10.0), (((v30 & 0xF) + 10 * (v30 >> 4)) / 10.0));
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"F%.1f", v32, v33, (((v29 & 0xF) + 10 * (v29 >> 4)) / 10.0));
  }
  v35 = ;
  v39 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v36, @"Sony ", v37, v38);
  v43 = v39;
  if ((v18 & 1) == 0)
  {
    objc_msgSend_appendString_(v39, v40, v60, v41, v42);
  }

  if ((v19 & 0x40) != 0)
  {
    objc_msgSend_appendString_(v43, v40, v59, v41, v42);
  }

  objc_msgSend_appendString_(v43, v40, v34, v41, v42);
  objc_msgSend_appendString_(v43, v44, v35, v45, v46);
  if ((v21 & 4) != 0)
  {
    objc_msgSend_appendString_(v43, v47, v58, v49, v50);
  }

  if ((v23 & 1) == 0)
  {
    objc_msgSend_appendString_(v43, v47, v57, v49, v50);
  }

  if (v25 < 0)
  {
    objc_msgSend_appendString_(v43, v47, v54, v49, v50);
  }

  if ((v25 & 0x20) != 0)
  {
    objc_msgSend_appendString_(v43, v47, v56, v49, v50);
  }

  if ((v25 & 8) != 0)
  {
    objc_msgSend_appendString_(v43, v47, v55, v49, v50);
  }

  if (objc_msgSend_length(v43, v47, v48, v49, v50))
  {
    v51 = sub_2338A9B94(v62);
    v52 = sub_2338A9BFC(v61);
    v53 = sub_2338A9B78(v61);
    sub_2337830C4(v51, v52, v53, v43);
  }

LABEL_53:
}

void *sub_2338D396C(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849353F0;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_2849352F8;
  return a1;
}

void sub_2338D3A0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849353F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338D3A88(uint64_t a1, unsigned int a2)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37678[0];
  v6 = (*(*a1 + 120))(a1);
  sub_2338D3B5C(v4, v5, v6);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return sub_23373C0BC(a1, a2);
}

void sub_2338D3B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D3B5C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  sub_2337BEBCC(v5, a3, &__p);
  v6 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if ((a1 + 32) != v6)
  {
    sub_23384C194((a1 + 24), v6);
    sub_2337BF040((v6 + 4));
    operator delete(v6);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2338D3BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2338D3C20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEqualToString_(v3, v4, @"methodNumber", v5, v6))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = (*(*a1 + 120))(a1);
LABEL_5:
    v18 = objc_msgSend_numberWithInt_(v10, v12, v11, v13, v14);
LABEL_6:
    v19 = v18;
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(v3, v7, @"sushiMode", v8, v9))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = sub_233739B84(a1);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(v3, v15, @"isV4Faux", v16, v17))
  {
    v19 = MEMORY[0x277CBEC28];
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(v3, v21, @"cameraMake", v22, v23))
  {
    (*(*a1 + 216))(&__p, a1);
    v31 = sub_233729FBC(&__p, v27, v28, v29, v30);
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v3, v24, @"cameraModel", v25, v26))
  {
    (*(*a1 + 224))(&__p, a1);
    v31 = sub_233729FBC(&__p, v35, v36, v37, v38);
LABEL_16:
    v19 = v31;
    if (v171 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(v3, v32, @"isDNGFile", v33, v34))
  {
    v42 = MEMORY[0x277CCABB0];
    v43 = (*(*a1 + 176))(a1);
LABEL_22:
    v18 = objc_msgSend_numberWithBool_(v42, v44, v43, v45, v46);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v39, @"isDNGMethod", v40, v41))
  {
    v42 = MEMORY[0x277CCABB0];
    v43 = (*(*a1 + 128))(a1);
    goto LABEL_22;
  }

  if (objc_msgSend_isEqualToString_(v3, v47, @"iso", v48, v49))
  {
    v53 = MEMORY[0x277CCABB0];
    v54 = (*(*a1 + 256))(a1);
LABEL_25:
    v18 = objc_msgSend_numberWithUnsignedInt_(v53, v55, v54, v56, v57);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v50, off_27DE37738[0], v51, v52))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = (*(*a1 + 816))(a1);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(v3, v58, @"whiteLevelThresholdMultiplier", v59, v60))
  {
    v64 = MEMORY[0x277CCABB0];
    (*(*a1 + 848))(a1);
LABEL_30:
    v18 = objc_msgSend_numberWithDouble_(v64, v65, v66, v67, v68);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v61, off_27DE37670[0], v62, v63))
  {
    __p = (*(*a1 + 560))(a1);
    v18 = sub_2338E6B50(&__p, v72, v73, v74, v75);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v69, off_27DE37698[0], v70, v71))
  {
    __p = (*(*a1 + 408))(a1);
    v18 = sub_2338E6B50(&__p, v79, v80, v81, v82);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v76, @"evenSensorSize", v77, v78))
  {
    __p = ((*(*a1 + 408))(a1) & 0xFFFFFFFEFFFFFFFELL);
    v18 = sub_2338E6B50(&__p, v86, v87, v88, v89);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v83, off_27DE376A0[0], v84, v85))
  {
    __p = (*(*a1 + 432))(a1);
    v170 = v93;
    v18 = sub_2337D891C(&__p, v93, v94, v95, v96);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v90, off_27DE376A8[0], v91, v92))
  {
    __p = (*(*a1 + 456))(a1);
    v170 = v100;
    v18 = sub_2337D891C(&__p, v100, v101, v102, v103);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v97, @"rawDataSize", v98, v99))
  {
    v107 = MEMORY[0x277CCABB0];
    v108 = (*(*a1 + 344))(a1);
    v18 = objc_msgSend_numberWithLongLong_(v107, v109, v108, v110, v111);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v104, @"longExposureNoiseReductionEnabled", v105, v106))
  {
    v42 = MEMORY[0x277CCABB0];
    v43 = (*(*a1 + 248))(a1);
    goto LABEL_22;
  }

  if (objc_msgSend_isEqualToString_(v3, v112, @"focalLength", v113, v114))
  {
    v118 = MEMORY[0x277CCABB0];
    (*(*a1 + 160))(&v167, a1);
    v119 = v167;
    sub_23372A488(&__p, "IFD0:EXIF");
    (*(*v119 + 304))(v119, &__p);
    v124 = objc_msgSend_numberWithDouble_(v118, v120, v121, v122, v123);
LABEL_51:
    v19 = v124;
    if (v171 < 0)
    {
      operator delete(__p);
    }

    if (v168)
    {
      sub_2337239E8(v168);
    }

    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(v3, v115, @"exifPixelXDimension", v116, v117))
  {
    v128 = MEMORY[0x277CCABB0];
    (*(*a1 + 160))(&v167, a1);
    v129 = v167;
    sub_23372A488(&__p, "IFD0:EXIF");
    v130 = (*(*v129 + 312))(v129, &__p);
    v124 = objc_msgSend_numberWithUnsignedInt_(v128, v131, v130, v132, v133);
    goto LABEL_51;
  }

  if (objc_msgSend_isEqualToString_(v3, v125, @"exifPixelYDimension", v126, v127))
  {
    v137 = MEMORY[0x277CCABB0];
    (*(*a1 + 160))(&v167, a1);
    v138 = v167;
    sub_23372A488(&__p, "IFD0:EXIF");
    v139 = (*(*v138 + 320))(v138, &__p);
    v124 = objc_msgSend_numberWithUnsignedInt_(v137, v140, v139, v141, v142);
    goto LABEL_51;
  }

  if (objc_msgSend_isEqualToString_(v3, v134, @"bitsPerSample", v135, v136) || objc_msgSend_isEqualToString_(v3, v143, @"sensorBitDepth", v144, v145))
  {
    v53 = MEMORY[0x277CCABB0];
    v54 = (*(*a1 + 576))(a1);
    goto LABEL_25;
  }

  if (objc_msgSend_isEqualToString_(v3, v146, @"subsampling", v147, v148))
  {
    v53 = MEMORY[0x277CCABB0];
    v54 = (*(*a1 + 544))(a1);
    goto LABEL_25;
  }

  if (objc_msgSend_isEqualToString_(v3, v149, off_27DE37708[0], v150, v151))
  {
    v64 = MEMORY[0x277CCABB0];
    (*(*a1 + 896))(a1);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v3, v152, off_27DE376D0[0], v153, v154))
  {
    v158 = MEMORY[0x277CCABB0];
    v159 = (*(*a1 + 864))(a1);
    v18 = objc_msgSend_numberWithUnsignedShort_(v158, v160, v159, v161, v162);
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v155, @"rn", v156, v157))
  {
    v64 = MEMORY[0x277CCABB0];
    (*(*a1 + 2664))(a1, 0, 0);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v3, v163, @"rnp", v164, v165))
  {
    v64 = MEMORY[0x277CCABB0];
    (*(*a1 + 2672))(a1);
    goto LABEL_30;
  }

  (*(*a1 + 160))(&__p, a1);
  v19 = (*(*__p + 32))(__p, v3);
  if (v170)
  {
    sub_2337239E8(v170);
  }

  if (!v19)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

LABEL_7:

  return v19;
}

void sub_2338D46F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17)
{
  if (a13)
  {
    sub_2337239E8(a13);
  }

  _Unwind_Resume(a1);
}

double sub_2338D47A8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE375F8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D48C8;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D48B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338D48D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*a1 + 72))(&v9, a1);
  v7 = sub_23386E124(v9, v5, v6);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return v7;
}

void sub_2338D4980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t (*sub_2338D49A8(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37600[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D4E7C;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D4AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D4AC0(uint64_t a1, void *a2, int a3, void *a4))(void, void, void, void, void)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if (a1 + 32 == v9)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2338E6C40;
    v42[3] = &unk_2789EEF98;
    v12 = v8;
    v43 = v12;
    sub_23386DB28(a1, v7, v42, &p_p);
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

      v22 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, 0, v20, v21);
      v27 = objc_msgSend_intValue(v22, v23, v24, v25, v26);
      v31 = objc_msgSend_objectAtIndexedSubscript_(v18, v28, 1, v29, v30);
      v36 = objc_msgSend_intValue(v31, v32, v33, v34, v35);

      v11 = (v27 | (v36 << 32));
    }

    else
    {
      v11 = 0;
    }

    if (v47)
    {
      sub_2337239E8(v47);
    }

    if (!v17)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v37 = sub_2337BEEAC(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v38 = (v37 + 56);
    v45[0] = sub_2338E6CD8;
    v45[1] = v11;
    if (v45 != (v37 + 56))
    {
      v39 = *v38;
      if (*v38)
      {
        p_p = 0;
        v47 = 0;
        v39(2, v38, &p_p, 0, 0);
        v45[0](2, v45, v38, 0, 0);
        (p_p)(2, &p_p, v45, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v37 + 56) = sub_2338E6CD8;
        *(v37 + 64) = v11;
        v45[0] = 0;
      }
    }

    sub_2337BF090(v45);
  }

  else
  {
    v10 = sub_2338E6C8C((v9 + 56));
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

void sub_2338D4DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v29);

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

double sub_2338D4E84(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37608[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D4FA4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D4F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D4FAC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37610[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D50C4;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D50AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D50CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37618[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D51E4;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D51CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D51EC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37620[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D530C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D52F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D5314(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37628[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D542C;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D5414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D5434(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37630[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D58B8;
  v7[3] = &unk_2789F0EF8;
  v7[4] = a1;
  v5 = sub_2338D554C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D554C(uint64_t a1, void *a2, int a3, void *a4)
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
    v28[2] = sub_2338E6D98;
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
    v31[0] = sub_2338E6E30;
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
        *(v23 + 56) = sub_2338E6E30;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2338E6DE4((v9 + 56));
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

void sub_2338D5828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

double sub_2338D58C0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37638[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D59E0;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D59C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D59E8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37640[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D5B00;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D5B08(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37648[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D5C20;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D5C28(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37650[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D5D48;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D5D50(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37658[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D61C8;
  v7[3] = &unk_2789F0F18;
  v7[4] = a1;
  v5 = sub_2338D5E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D5E68(uint64_t a1, void *a2, int a3, void *a4))(void, void, void, void, void)
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
    v28[2] = sub_2338E6EF8;
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
    v31[0] = sub_2338E6F90;
    v31[1] = v11;
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
        *(v23 + 56) = sub_2338E6F90;
        *(v23 + 64) = v11;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2338E6F44((v9 + 56));
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

void sub_2338D6138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

double sub_2338D61D0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37660[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D62F0;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D62D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D62F8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37668[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6418;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D6420(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37670[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6538;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D6540(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37678[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6658;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D6660(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37680[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6C70;
  v7[3] = &unk_2789F0F38;
  v7[4] = a1;
  sub_2338D6778(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D6760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D6778(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v9 = a2;
  v45 = a4;
  sub_2337BEBCC(v9, a3, &v55);
  v10 = sub_233735E3C(a1 + 24, &v55.__r_.__value_.__l.__data_);
  if (a1 + 32 == v10)
  {
    LOBYTE(__p) = 0;
    v54 = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_2338E7050;
    v48[3] = &unk_2789EEF98;
    v44 = v45;
    v49 = v44;
    sub_23386DB28(a1, v9, v48, &v50);
    if (v50)
    {
      v16 = sub_23386FD70(v50, v12, v13, v14, v15);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v21 = 0;
      __src = 0uLL;
      v47 = 0;
      while (v21 < objc_msgSend_count(v16, v17, v18, v19, v20))
      {
        v25 = objc_msgSend_objectAtIndexedSubscript_(v16, v22, v21, v23, v24);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v42 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v42, "RawCameraException");
          __cxa_throw(v42, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v30 = objc_msgSend_longLongValue(v25, v26, v27, v28, v29);
        v31 = __src.n128_u64[1];
        if (__src.n128_u64[1] >= v47)
        {
          v33 = __src.n128_u64[0];
          v34 = __src.n128_u64[1] - __src.n128_u64[0];
          v35 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 2;
          v36 = v35 + 1;
          if ((v35 + 1) >> 62)
          {
            sub_2337235BC();
          }

          v37 = v47 - __src.n128_u64[0];
          if ((v47 - __src.n128_u64[0]) >> 1 > v36)
          {
            v36 = v37 >> 1;
          }

          v38 = v37 >= 0x7FFFFFFFFFFFFFFCLL;
          v39 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v38)
          {
            v39 = v36;
          }

          if (v39)
          {
            sub_2337235D4(&__src, v39);
          }

          *(4 * v35) = v30;
          v32 = 4 * v35 + 4;
          memcpy(0, v33, v34);
          v40 = __src.n128_u64[0];
          __src.n128_u64[0] = 0;
          __src.n128_u64[1] = v32;
          v47 = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *__src.n128_u64[1] = v30;
          v32 = v31 + 4;
        }

        __src.n128_u64[1] = v32;

        ++v21;
      }

      sub_233790794(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }
    }

    if (v51)
    {
      sub_2337239E8(v51);
    }

    if ((v54 & 1) == 0)
    {
      (v44)[2](&__src);
      sub_233767718(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }

      if ((v54 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    __src.n128_u64[0] = &v55;
    v41 = sub_2337BEEAC(a1 + 24, &v55.__r_.__value_.__l.__data_);
    sub_2338E70D8(v41 + 56, &__p);
    if ((v54 & 1) == 0)
    {
LABEL_40:
      sub_233728FA8();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233729070(a5, __p, v53, (v53 - __p) >> 2);
    if (v54 == 1 && __p)
    {
      v53 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_2338E7224((v10 + 56));
    if (!v11)
    {
      sub_2337BEE3C();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233729070(a5, *v11, v11[1], (v11[1] - *v11) >> 2);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }
}

void sub_2338D6B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a26 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_2338D6C70(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2338D6C7C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37688[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6D94;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D6D9C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37690[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6EB4;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D6EBC(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37698[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6FD4;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D6FDC(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376A0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D754C;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D70E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D70FC(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void, void), void *a4))(void, void, void, void, void)
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v62 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v8 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if (a1 + 32 == v8)
  {
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_2338E7450;
    v63[3] = &unk_2789EEF98;
    v60 = v62;
    v64 = v60;
    sub_23386DB28(a1, v7, v63, &p_p);
    v16 = p_p;
    if (p_p)
    {
      v17 = sub_23386FD70(p_p, v11, v12, v13, v14);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v59 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, 0, v19, v20);
      v25 = objc_msgSend_intValue(v59, v21, v22, v23, v24);
      v29 = objc_msgSend_objectAtIndexedSubscript_(v17, v26, 1, v27, v28);
      v61 = objc_msgSend_intValue(v29, v30, v31, v32, v33);
      v37 = objc_msgSend_objectAtIndexedSubscript_(v17, v34, 2, v35, v36);
      v42 = objc_msgSend_intValue(v37, v38, v39, v40, v41);
      v46 = objc_msgSend_objectAtIndexedSubscript_(v17, v43, 3, v44, v45);
      v51 = objc_msgSend_intValue(v46, v47, v48, v49, v50);

      a3 = (v42 | (v51 << 32));
    }

    else
    {
      v25 = 0;
      v61 = v15;
    }

    if (v68)
    {
      sub_2337239E8(v68);
    }

    if (!v16)
    {
      v52 = v60[2]();
      v25 = v52;
      a3 = v53;
      v61 = HIDWORD(v52);
    }

    p_p = &__p;
    v54 = sub_2337BEEAC(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v55 = (v54 + 56);
    v10 = (v25 | (v61 << 32));
    v66[1] = v10;
    v66[2] = a3;
    v66[0] = sub_2338E74E8;
    if (v66 != (v54 + 56))
    {
      v56 = *v55;
      if (*v55)
      {
        p_p = 0;
        v68 = 0;
        v56(2, v55, &p_p, 0, 0);
        v66[0](2, v66, v55, 0, 0);
        (p_p)(2, &p_p, v66, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v54 + 64) = v10;
        *(v54 + 72) = a3;
        *(v54 + 56) = sub_2338E74E8;
        v66[0] = 0;
      }
    }

    sub_2337BF090(v66);
  }

  else
  {
    v9 = sub_2338E749C((v8 + 56));
    if (!v9)
    {
      sub_2337BEE3C();
    }

    v10 = *v9;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_2338D7484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  __cxa_free_exception(v30);

  if (a29)
  {
    sub_2337239E8(a29);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t (*sub_2338D7554(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376A8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D7674;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D765C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D767C(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376B0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D7794;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D777C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D779C(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376B8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D78BC;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D78A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D78C4(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376C0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D79E4;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D79CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D79EC(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376C8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D7B0C;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D7AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D7B14(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376D0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D7C2C;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D7C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D7C34(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  v5 = off_27DE376D8[0];
  v6 = (*(*a1 + 120))(a1);
  sub_2338D7D08(v4, v5, v6, &unk_284935430, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_2338D7CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D7D08(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v9 = a2;
  v45 = a4;
  sub_2337BEBCC(v9, a3, &v55);
  v10 = sub_233735E3C(a1 + 24, &v55.__r_.__value_.__l.__data_);
  if (a1 + 32 == v10)
  {
    LOBYTE(__p) = 0;
    v54 = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_2338E75B0;
    v48[3] = &unk_2789EEF98;
    v44 = v45;
    v49 = v44;
    sub_23386DB28(a1, v9, v48, &v50);
    if (v50)
    {
      v16 = sub_23386FD70(v50, v12, v13, v14, v15);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v21 = 0;
      __src = 0uLL;
      v47 = 0;
      while (v21 < objc_msgSend_count(v16, v17, v18, v19, v20))
      {
        v25 = objc_msgSend_objectAtIndexedSubscript_(v16, v22, v21, v23, v24);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v42 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v42, "RawCameraException");
          __cxa_throw(v42, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v30 = objc_msgSend_longLongValue(v25, v26, v27, v28, v29);
        v31 = __src.n128_u64[1];
        if (__src.n128_u64[1] >= v47)
        {
          v33 = __src.n128_u64[0];
          v34 = __src.n128_u64[1] - __src.n128_u64[0];
          v35 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 2;
          v36 = v35 + 1;
          if ((v35 + 1) >> 62)
          {
            sub_2337235BC();
          }

          v37 = v47 - __src.n128_u64[0];
          if ((v47 - __src.n128_u64[0]) >> 1 > v36)
          {
            v36 = v37 >> 1;
          }

          v38 = v37 >= 0x7FFFFFFFFFFFFFFCLL;
          v39 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v38)
          {
            v39 = v36;
          }

          if (v39)
          {
            sub_2337235D4(&__src, v39);
          }

          *(4 * v35) = v30;
          v32 = 4 * v35 + 4;
          memcpy(0, v33, v34);
          v40 = __src.n128_u64[0];
          __src.n128_u64[0] = 0;
          __src.n128_u64[1] = v32;
          v47 = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *__src.n128_u64[1] = v30;
          v32 = v31 + 4;
        }

        __src.n128_u64[1] = v32;

        ++v21;
      }

      sub_233790794(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }
    }

    if (v51)
    {
      sub_2337239E8(v51);
    }

    if ((v54 & 1) == 0)
    {
      (v44)[2](&__src);
      sub_233767718(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }

      if ((v54 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    __src.n128_u64[0] = &v55;
    v41 = sub_2337BEEAC(a1 + 24, &v55.__r_.__value_.__l.__data_);
    sub_2338E7638(v41 + 56, &__p);
    if ((v54 & 1) == 0)
    {
LABEL_40:
      sub_233728FA8();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233729070(a5, __p, v53, (v53 - __p) >> 2);
    if (v54 == 1 && __p)
    {
      v53 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_2338E7784((v10 + 56));
    if (!v11)
    {
      sub_2337BEE3C();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233729070(a5, *v11, v11[1], (v11[1] - *v11) >> 2);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }
}

void sub_2338D8104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a26 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_2338D8200(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2338D820C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376E0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8690;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338D8324(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D830C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D8324(uint64_t a1, void *a2, int a3, void *a4)
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
    v28[2] = sub_2338E79B0;
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
    v31[0] = sub_2338E7A48;
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
        *(v23 + 56) = sub_2338E7A48;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2338E79FC((v9 + 56));
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

void sub_2338D8600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

void sub_2338D8698(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE376E8[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8C10;
  v7[3] = &unk_2789F0F98;
  v7[4] = a1;
  sub_2338D87B0(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D8798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D87B0(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  sub_2337BEBCC(v11, a3, &__p);
  v13 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if (a1 + 32 == v13)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2338E7B10;
    v28[3] = &unk_2789F1040;
    v16 = v12;
    v29 = v16;
    sub_23386DB28(a1, v11, v28, &v32);
    v21 = v32;
    if (v32)
    {
      v22 = sub_23386FD70(v32, v17, v18, v19, v20);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      sub_23373CD80(v22, &p_p);
      v23 = p_p;
      v5 = v36;
      v30[0] = *v37;
      *(v30 + 3) = *&v37[3];
      v6 = v38;
    }

    else
    {
      v23 = 0;
    }

    if (v33)
    {
      sub_2337239E8(v33);
    }

    if (!v21)
    {
      (*(v16 + 2))(&p_p, v16);
      v23 = p_p;
      v5 = v36;
      v30[0] = *v37;
      *(v30 + 3) = *&v37[3];
      v6 = v38;
    }

    p_p = &__p;
    v24 = sub_2337BEEAC(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v32 = 0;
    *&v33 = 0;
    if (v6 < 0)
    {
      sub_233731FB8(&v33, v23, v5);
    }

    else
    {
      *&v33 = v23;
      *(&v33 + 1) = v5;
      LODWORD(v34) = v30[0];
      *(&v34 + 3) = *(v30 + 3);
      HIBYTE(v34) = v6;
    }

    v25 = (v24 + 56);
    v32 = sub_2338E7BE4;
    if (&v32 != (v24 + 56))
    {
      v26 = *v25;
      if (*v25)
      {
        p_p = 0;
        v36 = 0;
        v26(2, v24 + 56, &p_p, 0, 0);
        v32(2, &v32, v24 + 56, 0, 0);
        (p_p)(2, &p_p, &v32, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v24 + 64) = v33;
        *(v24 + 80) = v34;
        v34 = 0;
        v33 = 0uLL;
        *(v24 + 56) = sub_2338E7BE4;
        v32 = 0;
      }
    }

    sub_2337BF090(&v32);
    if (v6 < 0)
    {
      sub_233731FB8(a5, v23, v5);
      operator delete(v23);
    }

    else
    {
      *a5 = v23;
      *(a5 + 8) = v5;
      *(a5 + 16) = v30[0];
      *(a5 + 19) = *(v30 + 3);
      *(a5 + 23) = v6;
    }
  }

  else
  {
    v14 = sub_2338E7B98((v13 + 56));
    if (!v14)
    {
      sub_2337BEE3C();
    }

    if (*(v14 + 23) < 0)
    {
      sub_233731FB8(a5, *v14, v14[1]);
    }

    else
    {
      v15 = *v14;
      *(a5 + 16) = v14[2];
      *a5 = v15;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2338D8B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  __cxa_free_exception(v24);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338D8C18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE376F0[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8D30;
  v7[3] = &unk_2789F0F98;
  v7[4] = a1;
  sub_2338D87B0(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D8D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D8D38(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376F8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8E50;
  v7[3] = &unk_2789F0EF8;
  v7[4] = a1;
  v5 = sub_2338D554C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D8E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D8E58(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37700[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8F70;
  v7[3] = &unk_2789F0EF8;
  v7[4] = a1;
  v5 = sub_2338D554C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D8F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D8F78(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37708[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9098;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D90A0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37710[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D91B8;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D91A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D91C0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37718[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9310;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5 * (*(*a1 + 896))(a1);
}

void sub_2338D92F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D9318(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37720[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9430;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D9438(uint64_t a1, float *a2)
{
  result = (*(*a1 + 976))(a1);
  if (result == 1)
  {
    v15 = *a2;
    *&v15 = ((((COERCE_FLOAT(*a2) + 0.0) + COERCE_FLOAT(HIDWORD(*a2))) + COERCE_FLOAT(*(a2 + 1))) + COERCE_FLOAT(HIDWORD(*a2))) * 0.25;
    *a2 = vdupq_lane_s32(*&v15, 0);
    return result;
  }

  if (result != 2)
  {
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0.0;
  v7 = 32768.0;
  v8 = 0.0;
  do
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v4 == v9)
      {
        goto LABEL_12;
      }

      v11 = a2[v9];
      if (v10)
      {
        v10 = 0;
        v8 = a2[v9];
LABEL_8:
        v6 = a2[v9];
        goto LABEL_12;
      }

      v10 = 0;
      if (v11 >= v8)
      {
        if (v11 > v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = a2[v9];
      }

LABEL_12:
      ++v9;
    }

    while (v9 != 4);
    v12 = v6 - v8;
    if ((v6 - v8) < v7)
    {
      v5 = v4;
      v7 = v6 - v8;
    }

    ++v4;
  }

  while (v4 != 4);
  switch(v5)
  {
    case 3:
      v13 = 2;
LABEL_23:
      v14 = 1;
LABEL_24:
      v16 = a2;
      goto LABEL_26;
    case 2:
      v13 = 3;
      goto LABEL_23;
    case 1:
      v13 = 3;
      v14 = 2;
      goto LABEL_24;
  }

  v16 = a2 + 1;
  v13 = 3;
  v14 = 2;
LABEL_26:
  v17 = a2[v13];
  v18 = a2[v14];
  if (*v16 <= v18)
  {
    v19 = *v16;
  }

  else
  {
    v19 = a2[v14];
  }

  if (*v16 > v18)
  {
    v18 = *v16;
  }

  if (v19 > v17)
  {
    v17 = v19;
  }

  if (v18 <= v17)
  {
    v17 = v18;
  }

  v20 = v17 - v12;
  v21 = v12 + v17;
  if (v20 > v5 || v21 < v5)
  {
    a2[v5] = v17;
  }

  return result;
}

uint64_t sub_2338D95D8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37728[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D96F0;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_233801254(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D96D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D96F8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37730[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9810;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_233801254(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D97F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D9818(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37738[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9C9C;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338D9930(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D9930(uint64_t a1, void *a2, int a3, void *a4)
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
    v28[2] = sub_2338E7CF8;
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
    v31[0] = sub_2338E7D90;
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
        *(v23 + 56) = sub_2338E7D90;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2338E7D44((v9 + 56));
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

void sub_2338D9C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

double sub_2338D9CA4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37740[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9DC4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D9DCC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37748[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9EEC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D9EF4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37750[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA044;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5 + (*(*a1 + 936))(a1);
}

void sub_2338DA02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DA04C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37758[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA164;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DA16C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37760[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA284;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DA28C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37768[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA3AC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DA3B4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37770[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA4D4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DA4DC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37778[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA5FC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DA604(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = off_27DE37780[0];
  v4 = (*(*a1 + 120))(a1);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2338DA730;
  v5[3] = &unk_2789EF130;
  v5[4] = a1;
  sub_2337F5668(v2, v3, v4, v5);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2338DA718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DA738(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37788[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA858;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DA860(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = off_27DE37790[0];
  v4 = (*(*a1 + 120))(a1);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2338DA998;
  v5[3] = &unk_2789EF130;
  v5[4] = a1;
  sub_2337F5668(v2, v3, v4, v5);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2338DA980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DA9A0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37798[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DAAB8;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_233801254(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DAAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338DAAC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 120))(a1);
  v5 = a1[39];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 39;
  do
  {
    if (*(v5 + 32) >= v4)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v4));
  }

  while (v5);
  if (v6 == a1 + 39 || v4 < *(v6 + 8))
  {
LABEL_8:
    v12 = 0uLL;
    (*(*a1 + 72))(&v10, a1);
    v7 = sub_23386E1A8(v10, &v12);
    if (v11)
    {
      sub_2337239E8(v11);
    }

    if (!v7)
    {
      sub_2337FC940();
    }

    LODWORD(v10) = (*(*a1 + 120))(a1);
    sub_2338DAC9C((a1 + 38), &v10, &v12);
    if (*(&v12 + 1))
    {
      sub_2337239E8(*(&v12 + 1));
    }
  }

  LODWORD(v12) = (*(*a1 + 120))(a1);
  result = sub_2338DAD04((a1 + 38), &v12);
  v9 = result[1];
  *a2 = *result;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338DAC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DAC9C(uint64_t a1, int *a2, uint64_t *a3)
{
  v4 = sub_2338E7E58(a1, a2);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

uint64_t sub_2338DAD04(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    if (*(v3 + 32) >= v5)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v5));
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 32))
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v6 + 40;
}

void *sub_2338DADAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 120))(a1);
  v5 = a1[42];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 42;
  do
  {
    if (*(v5 + 32) >= v4)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v4));
  }

  while (v5);
  if (v6 == a1 + 42 || v4 < *(v6 + 8))
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    (*(*a1 + 72))(&v11, a1);
    v7 = sub_23386F1B8(v11, &v13);
    if (v12)
    {
      sub_2337239E8(v12);
    }

    if (!v7)
    {
      v8 = v14;
      v13 = 0;
      v14 = 0;
      if (v8)
      {
        sub_2337239E8(v8);
      }
    }

    LODWORD(v11) = (*(*a1 + 120))(a1);
    sub_2338DAC9C((a1 + 41), &v11, &v13);
    if (v14)
    {
      sub_2337239E8(v14);
    }
  }

  LODWORD(v13) = (*(*a1 + 120))(a1);
  if (!*sub_2338DAD04((a1 + 41), &v13))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  LODWORD(v13) = (*(*a1 + 120))(a1);
  result = sub_2338DAD04((a1 + 41), &v13);
  v10 = result[1];
  *a2 = *result;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338DAF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338DAFD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 120))(a1);
  v5 = a1[45];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 45;
  do
  {
    if (*(v5 + 32) >= v4)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v4));
  }

  while (v5);
  if (v6 == a1 + 45 || v4 < *(v6 + 8))
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    (*(*a1 + 72))(&v11, a1);
    v7 = sub_23386EB30(v11, &v13);
    if (v12)
    {
      sub_2337239E8(v12);
    }

    if (!v7)
    {
      v8 = v14;
      v13 = 0;
      v14 = 0;
      if (v8)
      {
        sub_2337239E8(v8);
      }
    }

    LODWORD(v11) = (*(*a1 + 120))(a1);
    sub_2338DAC9C((a1 + 44), &v11, &v13);
    if (v14)
    {
      sub_2337239E8(v14);
    }
  }

  LODWORD(v13) = (*(*a1 + 120))(a1);
  if (!*sub_2338DAD04((a1 + 44), &v13))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  LODWORD(v13) = (*(*a1 + 120))(a1);
  result = sub_2338DAD04((a1 + 44), &v13);
  v10 = result[1];
  *a2 = *result;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338DB1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DB204(uint64_t a1)
{
  (*(*a1 + 72))(&v5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2338DB2E4;
  v4[3] = &unk_2789EF000;
  v4[4] = a1;
  v2 = sub_2337D0E68(v5, off_27DE377A0[0], 0, v4);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v2;
}

void sub_2338DB2CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DB2EC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377A8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DB404;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DB3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DB40C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377B0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DB524;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DB50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DB52C(uint64_t a1)
{
  (*(*a1 + 72))(&v7);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2338DB634;
  v6[3] = &unk_2789EF000;
  v6[4] = a1;
  v4 = sub_2337D0E68(v2, @"honorLensCompensationSuggestions", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2338DB61C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_2338DB63C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377C0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DBACC;
  v7[3] = &unk_2789F0FB8;
  v7[4] = a1;
  v5 = sub_2338DB75C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DB744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

float sub_2338DB75C(uint64_t a1, void *a2, int a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if (a1 + 32 == v9)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2338E7F2C;
    v30[3] = &unk_2789EEF70;
    v12 = v8;
    v31 = v12;
    sub_23386DB28(a1, v7, v30, &p_p);
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

      objc_msgSend_doubleValue(v18, v19, v20, v21, v22);
      v24 = v23;

      v11 = v24;
    }

    else
    {
      v11 = 0.0;
    }

    if (v35)
    {
      sub_2337239E8(v35);
    }

    if (!v17)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v25 = sub_2337BEEAC(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v26 = (v25 + 56);
    v33[1] = LODWORD(v11);
    v33[0] = sub_2338E7FC0;
    if (v33 != (v25 + 56))
    {
      v27 = *v26;
      if (*v26)
      {
        p_p = 0;
        v35 = 0;
        v27(2, v26, &p_p, 0, 0);
        v33[0](2, v33, v26, 0, 0);
        (p_p)(2, &p_p, v33, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v25 + 64) = v11;
        *(v25 + 56) = sub_2338E7FC0;
        v33[0] = 0;
      }
    }

    sub_2337BF090(v33);
  }

  else
  {
    v10 = sub_2338E7F74((v9 + 56));
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

void sub_2338DBA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

void sub_2338DBAD4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE377B8[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DBBEC;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DBBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DBBF4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE377C8[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC200;
  v7[3] = &unk_2789F0FD8;
  v7[4] = a1;
  sub_2338DBD0C(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DBCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DBD0C(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v9 = a2;
  v43 = a4;
  sub_2337BEBCC(v9, a3, &v53);
  v10 = sub_233735E3C(a1 + 24, &v53.__r_.__value_.__l.__data_);
  if (a1 + 32 == v10)
  {
    LOBYTE(__p) = 0;
    v52 = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_2338E8088;
    v46[3] = &unk_2789EEF98;
    v42 = v43;
    v47 = v42;
    sub_23386DB28(a1, v9, v46, &v48);
    if (v48)
    {
      v16 = sub_23386FD70(v48, v12, v13, v14, v15);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v21 = 0;
      __src = 0uLL;
      v45 = 0;
      while (v21 < objc_msgSend_count(v16, v17, v18, v19, v20))
      {
        v25 = objc_msgSend_objectAtIndexedSubscript_(v16, v22, v21, v23, v24);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v40 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v40, "RawCameraException");
          __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v30 = objc_msgSend_longLongValue(v25, v26, v27, v28, v29);
        v31 = __src.n128_u64[1];
        if (__src.n128_u64[1] >= v45)
        {
          v33 = __src.n128_u64[0];
          v34 = __src.n128_u64[1] - __src.n128_u64[0];
          v35 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 1;
          if (v35 <= -2)
          {
            sub_2337235BC();
          }

          if (v45 - __src.n128_u64[0] <= v35 + 1)
          {
            v36 = v35 + 1;
          }

          else
          {
            v36 = v45 - __src.n128_u64[0];
          }

          v37 = 0x7FFFFFFFFFFFFFFFLL;
          if (v45 - __src.n128_u64[0] < 0x7FFFFFFFFFFFFFFELL)
          {
            v37 = v36;
          }

          if (v37)
          {
            sub_2337262C8(&__src, v37);
          }

          *(2 * v35) = v30;
          v32 = 2 * v35 + 2;
          memcpy(0, v33, v34);
          v38 = __src.n128_u64[0];
          __src.n128_u64[0] = 0;
          __src.n128_u64[1] = v32;
          v45 = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *__src.n128_u64[1] = v30;
          v32 = v31 + 2;
        }

        __src.n128_u64[1] = v32;

        ++v21;
      }

      sub_2338E8110(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }
    }

    if (v49)
    {
      sub_2337239E8(v49);
    }

    if ((v52 & 1) == 0)
    {
      (v42)[2](&__src);
      sub_233767718(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }

      if ((v52 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    __src.n128_u64[0] = &v53;
    v39 = sub_2337BEEAC(a1 + 24, &v53.__r_.__value_.__l.__data_);
    sub_2338E818C(v39 + 56, &__p);
    if ((v52 & 1) == 0)
    {
LABEL_41:
      sub_233728FA8();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233728FF4(a5, __p, v51, (v51 - __p) >> 1);
    if (v52 == 1 && __p)
    {
      v51 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_2338E82D8((v10 + 56));
    if (!v11)
    {
      sub_2337BEE3C();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233728FF4(a5, *v11, v11[1], (v11[1] - *v11) >> 1);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }
}

void sub_2338DC104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a26 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338DC208(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377D0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC320;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DC308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DC328(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377D8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC448;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DC430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DC450(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE377E0[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC568;
  v7[3] = &unk_2789F0FD8;
  v7[4] = a1;
  sub_2338DBD0C(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DC550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DC570(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37808[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC688;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DC670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DC690(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37810[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DCC00;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DC790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DC7A8(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v9 = a2;
  v10 = a4;
  sub_2337BEBCC(v9, a3, &v47);
  v11 = sub_233735E3C(a1 + 24, &v47.__r_.__value_.__l.__data_);
  if (a1 + 32 == v11)
  {
    v45[0] = 0;
    v46 = 0;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_2338E8504;
    v41[3] = &unk_2789EEF98;
    v13 = v10;
    v42 = v13;
    sub_23386DB28(a1, v9, v41, &v43);
    if (v43)
    {
      v18 = sub_23386FD70(v43, v14, v15, v16, v17);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v23 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      while (v23 < objc_msgSend_count(v18, v19, v20, v21, v22))
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(v18, v24, v23, v25, v26);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v33, "RawCameraException");
          __cxa_throw(v33, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        objc_msgSend_doubleValue(v27, v28, v29, v30, v31);
        v35 = v32;
        sub_2337F207C(&v38, &v35);

        ++v23;
      }

      sub_2337DFC24(&v35, 3, 3, &v38);
      sub_2338E858C(v45, &v35);
      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }
    }

    if (v44)
    {
      sub_2337239E8(v44);
    }

    if ((v46 & 1) == 0)
    {
      (*(v13 + 2))(&v35, v13);
      sub_2338E858C(v45, &v35);
      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if ((v46 & 1) == 0)
      {
        sub_233728FA8();
      }
    }

    v35 = &v47;
    sub_2337BEEAC(a1 + 24, &v47.__r_.__value_.__l.__data_);
    sub_2338E85D0();
  }

  v12 = sub_2338E86F8((v11 + 56));
  if (!v12)
  {
    sub_2337BEE3C();
  }

  sub_2337DF874(a5, v12);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_2338DCAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v30);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a27 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v31 - 81) < 0)
  {
    operator delete(*(v31 - 104));
  }

  _Unwind_Resume(a1);
}

void sub_2338DCC08(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37818[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DCD20;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DCD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DCD28(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37820[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DCE40;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DCE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DCE48(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37828[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DCF60;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DCF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DCF68(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37830[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD080;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DD068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD088(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37838[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD1A0;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD1A8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37840[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD2C0;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD2C8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37848[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD3E0;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD3E8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37850[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD500;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD508(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37858[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD620;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD628(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37860[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD740;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD748(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37868[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD860;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD868(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37870[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DDCEC;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338DD980(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD980(uint64_t a1, void *a2, int a3, void *a4)
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
    v28[2] = sub_2338E88B8;
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
    v31[0] = sub_2338E8950;
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
        *(v23 + 56) = sub_2338E8950;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2338E8904((v9 + 56));
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

void sub_2338DDC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

double sub_2338DDCF4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37878[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DDE14;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DDDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DDE1C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37880[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DDF3C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DDF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DDF44(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37888[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE064;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE06C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37890[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE18C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE194(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37898[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE2B4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE2BC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378A0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE3DC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE3E4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378A8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE504;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE50C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378B0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE62C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE634(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378B8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE754;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE75C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378C0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE87C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE884(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378C8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE9A4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE9AC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378D0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DEACC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DEAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DEAD4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378D8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DEBEC;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DEBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DEBF4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378E0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DED0C;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DECF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DED14(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378E8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DEE34;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DEE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DEE3C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378F0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DEF5C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DEF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DEF64(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378F8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF084;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DF08C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37900[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF1A4;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_23381446C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF1AC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37908[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF2CC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF2D4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37910[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF3F4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF3FC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37918[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF51C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF524(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37920[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF644;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF64C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37928[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF76C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF774(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37930[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF894;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF89C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37938[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF9BC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF9C4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37940[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFAE4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFAEC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37948[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFC0C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFC14(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37950[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFD34;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFD3C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37958[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFE5C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFE64(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37960[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFF84;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFF8C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37968[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E00AC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E00B4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37970[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E01D4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E01BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E01DC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37978[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E02FC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E02E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0304(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37980[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0424;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E040C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E042C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37988[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E054C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0554(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37990[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0674;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E065C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E067C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37998[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E079C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E07A4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379A0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E08C4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E08AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E08CC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379A8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E09EC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E09D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E09F4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379B0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0B14;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0B1C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379B8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0C3C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0C44(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379C0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0D64;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0D6C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379C8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0E8C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0E94(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379D0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0FB4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0FBC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379D8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E10DC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E10C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E10E4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379E0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E1204;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E11EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E120C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379E8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E132C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E1334(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379F0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E1454;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E143C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E145C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379F8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E157C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E1584(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A00[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E16A4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E168C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E16AC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A08[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E17CC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E17B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E17D4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A10[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E18F4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E18DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E18FC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A18[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E1A1C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E1A24(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A20[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E1EA8;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E1B3C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E1B3C(uint64_t a1, void *a2, int a3, void *a4)
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
    v28[2] = sub_2338E8A18;
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
    v31[0] = sub_2338E8AB0;
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
        *(v23 + 56) = sub_2338E8AB0;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2338E8A64((v9 + 56));
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

void sub_2338E1E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

uint64_t sub_2338E1EB0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A28[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2334;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E1FC8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E1FC8(uint64_t a1, void *a2, int a3, void *a4)
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
    v28[2] = sub_2338E8B78;
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
    v31[0] = sub_2338E8C10;
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
        *(v23 + 56) = sub_2338E8C10;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2338E8BC4((v9 + 56));
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

void sub_2338E22A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

double sub_2338E233C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A30[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E245C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E2444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E2464(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37A38[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2A68;
  v7[3] = &unk_2789F1018;
  v7[4] = a1;
  sub_2338E257C(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E2564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E257C(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  sub_2337BEBCC(v9, a3, &v43);
  v11 = sub_233735E3C(a1 + 24, &v43.__r_.__value_.__l.__data_);
  if (a1 + 32 == v11)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_2338E67D8;
    v41[3] = &unk_2789EEF98;
    v14 = v10;
    v42 = v14;
    sub_23386DB28(a1, v9, v41, &v44);
    if (v44)
    {
      v19 = sub_23386FD70(v44, v15, v16, v17, v18);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v47 = 0;
        while (v24 < objc_msgSend_count(v19, v20, v21, v22, v23))
        {
          v28 = objc_msgSend_objectAtIndexedSubscript_(v19, v25, v24, v26, v27);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          objc_msgSend_doubleValue(v28, v29, v30, v31, v32);
          *&v40 = v33;
          sub_2337F207C(__p, &v40);

          ++v24;
        }

        sub_233764CCC();
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v38, "RawCameraException");
      __cxa_throw(v38, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v45)
    {
      sub_2337239E8(v45);
    }

    (*(v14 + 2))(__p, v14);
    v39 = *__p;
    __p[0] = &v43;
    v34 = sub_2337BEEAC(a1 + 24, &v43.__r_.__value_.__l.__data_);
    v35 = (v34 + 56);
    v45 = v39;
    if (*(&v39 + 1))
    {
      atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v44 = sub_2338E6920;
    if (&v44 != v35)
    {
      v36 = *v35;
      if (*v35)
      {
        __p[0] = 0;
        __p[1] = 0;
        v36(2, v35, __p, 0, 0);
        v44(2, &v44, v35, 0, 0);
        (__p[0])(2, __p, &v44, 0, 0);
        sub_2337BF090(__p);
      }

      else
      {
        *(v34 + 64) = v39;
        v45 = 0uLL;
        *(v34 + 56) = sub_2338E6920;
        v44 = 0;
      }
    }

    sub_2337BF090(&v44);
    *a5 = v39;
    if (*(&v39 + 1))
    {
      atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
      sub_2337239E8(*(&v39 + 1));
    }
  }

  else
  {
    v12 = sub_2338E68D4((v11 + 56));
    if (!v12)
    {
      sub_2337BEE3C();
    }

    v13 = v12[1];
    *a5 = *v12;
    *(a5 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }
}

void sub_2338E2984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  __cxa_free_exception(v31);

  if (a24)
  {
    sub_2337239E8(a24);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338E2A70(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37A40[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2B88;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E2B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E2B90(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37A48[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2CA8;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E2C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E2CB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37A50[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2DC8;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E2DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E2DD0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A58[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2EF0;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E2ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E2EF8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A60[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3018;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3020(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A68[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3140;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3148(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A70[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3268;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3270(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A78[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3390;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3398(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A80[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E34B8;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E34A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E34C0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A88[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E35D8;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E35C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E35E0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A90[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3700;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E36E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3708(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A98[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3828;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3830(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AA0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3950;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3958(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AA8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3A78;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E3A80(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37AB0[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3B98;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E3B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E3BA0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AB8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4024;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E3CB8(uint64_t a1, void *a2, int a3, void *a4)
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
    v28[2] = sub_2338E8CD8;
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
    v31[0] = sub_2338E8D70;
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
        *(v23 + 56) = sub_2338E8D70;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2338E8D24((v9 + 56));
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

void sub_2338E3F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
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

double sub_2338E402C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AC0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E414C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4154(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AC8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4274;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E425C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E427C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AD0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E439C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E43A4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AD8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E44BC;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E44A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E44C4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AE0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E45E4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E45CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E45EC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AE8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E470C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E46F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4714(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AF0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4834;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E481C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E483C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AF8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4954;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E495C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B00[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4A74;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4A7C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B08[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4B9C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4BA4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B10[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4CC4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4CCC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B18[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4DEC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4DF4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B20[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4F14;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E4F1C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B28[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5034;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E501C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E503C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B30[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E515C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E5164(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B38[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5284;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E526C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E528C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B40[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E53AC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E53B4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B48[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E54CC;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E54B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E54D4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B50[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E55F4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E55DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E55FC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B58[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E571C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E5724(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B60[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5844;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E582C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E584C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B68[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5964;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E594C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E596C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B70[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5A8C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E5A94(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B78[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5BB4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E5BBC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B80;
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5CDC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338E5CE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 120))(a1);
  v5 = a1[48];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 48;
  do
  {
    if (*(v5 + 32) >= v4)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v4));
  }

  while (v5);
  if (v6 == a1 + 48 || v4 < *(v6 + 8))
  {
LABEL_8:
    (*(*a1 + 1840))(v11, a1);
    v7 = (v11[1] - v11[0]) >> 3;
    if (v7 < 3 || v7 % 3 != 0)
    {
      (*(*a1 + 1848))(a1);
      (*(*a1 + 1856))(a1);
      (*(*a1 + 1864))(a1);
      (*(*a1 + 1872))(a1);
      (*(*a1 + 1880))(a1);
      (*(*a1 + 1888))(a1);
      (*(*a1 + 1896))(a1);
      (*(*a1 + 1904))(a1);
      (*(*a1 + 1912))(a1);
      if ((*(*a1 + 1920))(a1))
      {
        (*(*a1 + 1928))(a1);
        (*(*a1 + 1936))(a1);
        (*(*a1 + 1944))(a1);
        (*(*a1 + 1952))(a1);
        (*(*a1 + 1960))(a1);
        (*(*a1 + 1968))(a1);
        (*(*a1 + 1976))(a1);
        (*(*a1 + 1984))(a1);
        (*(*a1 + 1992))(a1);
        (*(*a1 + 2000))(a1);
        (*(*a1 + 2008))(a1);
        (*(*a1 + 2016))(a1);
        (*(*a1 + 2024))(a1);
        (*(*a1 + 2032))(a1);
        (*(*a1 + 2040))(a1);
        (*(*a1 + 2048))(a1);
        sub_23372FE60();
      }

      sub_2338E6770();
    }

    operator new();
  }

  LODWORD(v11[0]) = (*(*a1 + 120))(a1);
  result = sub_2338DAD04((a1 + 47), v11);
  v10 = result[1];
  *a2 = *result;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}