void sub_239EFD278(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_239F747AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EFD294(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239EFD2CC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_239EFD2FC(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17698))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239EFD33C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E7C648(result, a4);
  }

  return result;
}

void sub_239EFD398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EFD4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_239EEDEA8(&a21);
  _Unwind_Resume(a1);
}

void sub_239EFD914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EFDA74(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_239EFEAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EFECF8(uint64_t a1, unint64_t a2)
{
  NSLog(&cfstr_Indices_1.isa);
  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      printf("%d ", *(a1 + v4));
      if (!v5)
      {
        putchar(10);
      }

      v4 = v5++;
    }

    while (v4 < a2);
  }

  return putchar(10);
}

uint64_t sub_239EFED8C(uint64_t a1, unint64_t a2)
{
  NSLog(&cfstr_Indices_1.isa);
  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      printf("%d ", *(a1 + 2 * v4));
      if (!v5)
      {
        putchar(10);
      }

      v4 = v5++;
    }

    while (v4 < a2);
  }

  return putchar(10);
}

uint64_t sub_239EFEE20(uint64_t a1, unint64_t a2)
{
  NSLog(&cfstr_Indices_1.isa);
  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      printf("%d ", *(a1 + 4 * v4));
      if (!v5)
      {
        putchar(10);
      }

      v4 = v5++;
    }

    while (v4 < a2);
  }

  return putchar(10);
}

void sub_239EFF5E8(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_239E797B4();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

BOOL sub_239EFF72C(char *a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  memset(v46, 0, sizeof(v46));
  Alembic::AbcCoreOgawa::v12::WriteArchive::WriteArchive(&v29);
  sub_239E552A0(__p, a1);
  LODWORD(v40[0]) = 0;
  DWORD2(v40[0]) = 0;
  LODWORD(v31) = 0;
  LODWORD(v32) = 0;
  sub_239F11DC4(v46, __p, v40, &v31);
  if (SBYTE7(v43) < 0)
  {
    operator delete(__p[0]);
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *__p = 0u;
  Alembic::Abc::v12::OArchive::getTop(__p, v46);
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v35 = __p[1];
  if (SBYTE7(v44) < 0)
  {
    sub_239E5BAE0(&v36, v43, *(&v43 + 1));
  }

  else
  {
    v36 = v43;
    v37 = v44;
  }

  v34 = MEMORY[0x277D867D0] + 16;
  v38 = *(&v44 + 1);
  v39 = v45;
  if (v45)
  {
    atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
  }

  sub_239E552A0(&v31, "materials");
  LODWORD(v29) = 0;
  v30 = 0;
  v28[0] = 0;
  v28[2] = 0;
  v27[0] = 0;
  v27[2] = 0;
  MEMORY[0x23EE7F010](v40, &v34, &v31, &v29, v28, v27);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }

  Alembic::Abc::v12::OObject::~OObject(&v34);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v23, v47, 16);
  if (v6)
  {
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        sub_239EFFC44(*(*(&v23 + 1) + 8 * v8++), __p);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, &v23, v47, 16);
    }

    while (v6);
  }

  v10 = v31 == v32;
  if (v31 != v32)
  {
    v11 = *(v31 + 23);
    v12 = v11 >= 0 ? v31 : *v31;
    v13 = v11 >= 0 ? *(v31 + 23) : *(v31 + 1);
    sub_239E98B94(MEMORY[0x277D82670], v12, v13);
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3);
    if (v14 >= 2)
    {
      v15 = 0;
      v16 = v14 - 1;
      v17 = MEMORY[0x277D82670];
      do
      {
        sub_239E98B94(v17, "\n", 1);
        v18 = *(v31 + v15 + 47);
        if (v18 >= 0)
        {
          v19 = v31 + v15 + 24;
        }

        else
        {
          v19 = *(v31 + v15 + 24);
        }

        if (v18 >= 0)
        {
          v20 = *(v31 + v15 + 47);
        }

        else
        {
          v20 = *(v31 + v15 + 32);
        }

        sub_239E98B94(v17, v19, v20);
        v15 += 24;
        --v16;
      }

      while (v16);
    }
  }

  v29 = &v31;
  sub_239EBD408(&v29);
  Alembic::Abc::v12::OObject::~OObject(v40);
  Alembic::Abc::v12::OObject::~OObject(__p);
  MEMORY[0x23EE7F050](v46);

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_239EFFA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void **__p, uint64_t a45, int a46, __int16 a47, char a48, unsigned __int8 a49)
{
  Alembic::Abc::v12::OObject::~OObject(&__p);
  MEMORY[0x23EE7F050](v51 - 256);
  if (a2 == 1)
  {
    v54 = __cxa_begin_catch(a1);
    v55 = sub_239E98B94(MEMORY[0x277D82670], "Failed to save ", 15);
    sub_239E552A0(&__p, v50);
    if ((a49 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((a49 & 0x80u) == 0)
    {
      v57 = a49;
    }

    else
    {
      v57 = a45;
    }

    v58 = sub_239E98B94(v55, p_p, v57);
    v59 = sub_239E98B94(v58, " because ", 9);
    v60 = (*(*v54 + 16))(v54);
    v61 = strlen(v60);
    v62 = sub_239E98B94(v59, v60, v61);
    sub_239F00390(v62);
    if (a49 < 0)
    {
      operator delete(__p);
    }

    __cxa_end_catch();
    JUMPOUT(0x239EFFA24);
  }

  _Unwind_Resume(a1);
}

void sub_239EFFC44(void *a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v92 = 0;
    memset(v91, 0, sizeof(v91));
    v90 = 0u;
    v89 = 0u;
    *v88 = 0u;
    v86 = 0u;
    memset(v87, 0, sizeof(v87));
    v85 = 0u;
    sub_239EE76F8(&v85);
    v6 = objc_msgSend_name(v3, v4, v5);
    v7 = v6 == 0;

    if (v7)
    {
      v18 = sub_239E98B94(&v86, "mdlabc_", 7);
      ++dword_27DF912A8;
      MEMORY[0x23EE80140](v18);
    }

    else
    {
      v10 = objc_msgSend_name(v3, v8, v9);
      v11 = v10;
      v14 = objc_msgSend_UTF8String(v10, v12, v13);
      v15 = strlen(v14);
      v16 = sub_239E98B94(&v86, v14, v15);
      v17 = sub_239E98B94(v16, "_", 1);
      ++dword_27DF912A8;
      MEMORY[0x23EE80140](v17);
    }

    memset(v84, 0, sizeof(v84));
    v79 = *(a2 + 8);
    if (*(a2 + 39) < 0)
    {
      sub_239E5BAE0(&v80, *(a2 + 16), *(a2 + 24));
    }

    else
    {
      v80 = *(a2 + 16);
      v81 = *(a2 + 32);
    }

    v20 = *(a2 + 40);
    v19 = *(a2 + 48);
    v78 = MEMORY[0x277D867D0] + 16;
    v82 = v20;
    v83 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    std::stringbuf::str();
    LODWORD(v76[0]) = 0;
    DWORD2(v76[0]) = 0;
    LODWORD(v61) = 0;
    v62 = 0;
    v77[0] = 0;
    v77[2] = 0;
    sub_239F05E7C(v84, &v78, __p, v76, &v61, v77);
    if (SHIBYTE(v69.f64[0]) < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::OObject::~OObject(&v78);
    memset(v76, 0, sizeof(v76));
    Alembic::AbcGeom::v12::XformSample::XformSample(v76);
    v23 = objc_msgSend_transform(v3, v21, v22);
    objc_msgSend_localTransformAtTime_(v23, v24, v25, 0.0);
    v53 = v26;
    v54 = v27;
    v55 = v28;
    v56 = v29;

    *__p = vcvtq_f64_f32(*v53.f32);
    v69 = vcvt_hight_f64_f32(v53);
    v70 = vcvtq_f64_f32(*v54.f32);
    v71 = vcvt_hight_f64_f32(v54);
    v72 = vcvtq_f64_f32(*v55.f32);
    v73 = vcvt_hight_f64_f32(v55);
    v74 = vcvtq_f64_f32(*v56.f32);
    v75 = vcvt_hight_f64_f32(v56);
    Alembic::AbcGeom::v12::XformSample::setMatrix();
    Alembic::AbcGeom::v12::OXformSchema::set((&v84[3] + 8), v76);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v3;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v35 = objc_msgSend_submeshes(v32, v33, v34);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v64, v94, 16);
      if (v39)
      {
        v40 = *v65;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v65 != v40)
            {
              objc_enumerationMutation(v35);
            }

            v42 = *(*(&v64 + 1) + 8 * i);
            if (objc_msgSend_geometryType(v42, v37, v38, *&v53, *&v54, *&v55, *&v56) == 5)
            {
              std::stringbuf::str();
              if (v63 >= 0)
              {
                v43 = &v61;
              }

              else
              {
                v43 = v61;
              }

              sub_239F00448(v32, v42, v43, v84);
            }

            else
            {
              std::stringbuf::str();
              if (v63 >= 0)
              {
                v44 = &v61;
              }

              else
              {
                v44 = v61;
              }

              sub_239F033E0(v32, v42, v44, v84);
            }

            if (v63 < 0)
            {
              operator delete(v61);
            }
          }

          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v64, v94, 16);
        }

        while (v39);
      }
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v45 = objc_msgSend_children(v3, v30, v31, *&v53, *&v54, *&v55, *&v56, 0);
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v57, v93, 16);
    if (v47)
    {
      v48 = *v58;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v58 != v48)
          {
            objc_enumerationMutation(v45);
          }

          sub_239EFFC44(*(*(&v57 + 1) + 8 * j), v84);
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v50, &v57, v93, 16);
      }

      while (v47);
    }

    __p[0] = v76 + 8;
    sub_239F11CE8(__p);
    *&v84[0] = &unk_284D17468;
    sub_239F079E8(&v84[3] + 8);
    Alembic::Abc::v12::OObject::~OObject(v84);
    *&v85 = *MEMORY[0x277D82818];
    v51 = *(MEMORY[0x277D82818] + 72);
    *(&v85 + *(v85 - 24)) = *(MEMORY[0x277D82818] + 64);
    *&v86 = v51;
    *(&v86 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v89) < 0)
    {
      operator delete(v88[1]);
    }

    *(&v86 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v87);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v91);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_239F00298(_Unwind_Exception *a1)
{
  sub_239EB746C(&STACK[0x3E0]);

  _Unwind_Resume(a1);
}

void *sub_239F00390(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_239F00448(void *a1, void *a2, char *a3, uint64_t a4)
{
  v6 = a1;
  v434 = a2;
  v567 = 0;
  v568 = 0;
  v569 = 0;
  v9 = objc_msgSend_vertexCount(v6, v7, v8);
  v11 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v6, v10, @"position", 786435);
  v14 = objc_msgSend_dataStart(v11, v12, v13);
  v438 = v11;
  v17 = objc_msgSend_stride(v11, v15, v16);
  if (v9)
  {
    v20 = v17;
    v21 = 0;
    v22 = v9;
    do
    {
      if (v21 + 12 <= objc_msgSend_bufferSize(v438, v18, v19))
      {
        v23 = *(v14 + v21);
        v24 = *(v14 + v21 + 4);
        v25 = *(v14 + v21 + 8);
        *&v548 = __PAIR64__(v24, v23);
        DWORD2(v548) = v25;
        v26 = v568;
        if (v568 >= v569)
        {
          v27 = sub_239F08808(&v567, &v548);
        }

        else
        {
          *v568 = v23;
          v26[1] = v24;
          v27 = (v26 + 3);
          v26[2] = v25;
        }

        v568 = v27;
      }

      v21 += v20;
      --v22;
    }

    while (v22);
  }

  v433 = objc_msgSend_indexBufferAsIndexType_(v434, v18, 32);
  v432 = objc_msgSend_map(v433, v28, v29);
  v32 = objc_msgSend_bytes(v432, v30, v31);
  v35 = objc_msgSend_indexCount(v434, v33, v34);
  v564 = 0;
  v565 = 0;
  v566 = 0;
  v561 = 0;
  v562 = 0;
  v563 = 0;
  v558 = 0;
  v559 = 0;
  v560 = 0;
  v38 = objc_msgSend_geometryType(v434, v36, v37);
  v437 = v6;
  v435 = v9;
  if (v38 > 2)
  {
    switch(v38)
    {
      case 3:
        goto LABEL_426;
      case 4:
        sub_239E95D48(&v564, v35);
        v85 = v35 >> 2;
        sub_239E95D48(&v558, v35 >> 2);
        if (v35 >= 4)
        {
          do
          {
            LODWORD(v548) = 4;
            sub_239E73254(&v558, &v548);
            --v85;
          }

          while (v85);
        }

        if (v35)
        {
          v86 = 0;
          v87 = v32 + 2;
          do
          {
            LODWORD(v548) = *(v87 - 2);
            sub_239E73254(&v564, &v548);
            LODWORD(v548) = v87[1];
            sub_239E73254(&v564, &v548);
            LODWORD(v548) = *v87;
            sub_239E73254(&v564, &v548);
            LODWORD(v548) = *(v87 - 1);
            sub_239E73254(&v564, &v548);
            v87 += 4;
            v86 += 4;
          }

          while (v35 > v86);
        }

        break;
      case 5:
        v46 = objc_msgSend_topology(v434, v39, v40);
        if (v46)
        {
          v47 = objc_msgSend_topology(v434, v44, v45);
          v52 = objc_msgSend_faceTopology(v47, v48, v49);
          if (v52)
          {
            v53 = objc_msgSend_topology(v434, v50, v51);
            v56 = objc_msgSend_faceCount(v53, v54, v55);

            if (!v56)
            {
              break;
            }

            v59 = objc_msgSend_topology(v434, v57, v58);
            v62 = objc_msgSend_faceCount(v59, v60, v61);
            sub_239E95D48(&v558, v62);

            v65 = objc_msgSend_topology(v434, v63, v64);
            v68 = objc_msgSend_faceTopology(v65, v66, v67);
            v46 = objc_msgSend_map(v68, v69, v70);

            v75 = objc_msgSend_bytes(v46, v71, v72);
            for (i = 0; ; ++i)
            {
              v77 = objc_msgSend_topology(v434, v73, v74);
              v80 = objc_msgSend_faceCount(v77, v78, v79);

              if (v80 <= i)
              {
                break;
              }

              LODWORD(v548) = *(v75 + i);
              sub_239E73254(&v558, &v548);
            }

            v88 = v558;
            v89 = v559;
            if (v559 != v558)
            {
              v90 = 0;
              v91 = 0;
              do
              {
                v92 = v88[v90];
                if (v92 >= 1)
                {
                  v93 = v92 + 1;
                  v94 = &v32[v92 - 1 + v91];
                  do
                  {
                    v95 = *v94--;
                    LODWORD(v548) = v95;
                    sub_239E73254(&v564, &v548);
                    --v93;
                  }

                  while (v93 > 1);
                  v88 = v558;
                  v89 = v559;
                  LODWORD(v92) = v558[v90];
                }

                v91 += v92;
                ++v90;
              }

              while (v90 < (v89 - v88) >> 2);
            }
          }

          else
          {
          }
        }

        break;
    }
  }

  else if (v38)
  {
    if (v38 == 1)
    {
      sub_239E95D48(&v564, v35);
      v83 = v35 >> 1;
      sub_239E95D48(&v558, v35 >> 1);
      if (v35 >= 2)
      {
        do
        {
          LODWORD(v548) = 2;
          sub_239E73254(&v558, &v548);
          --v83;
        }

        while (v83);
      }

      for (; v35; --v35)
      {
        v84 = *v32++;
        LODWORD(v548) = v84;
        sub_239E73254(&v564, &v548);
      }
    }

    else if (v38 == 2)
    {
      sub_239E95D48(&v564, v35);
      v41 = v35 / 3;
      sub_239E95D48(&v558, v35 / 3);
      if (v35 >= 3)
      {
        do
        {
          LODWORD(v548) = 3;
          sub_239E73254(&v558, &v548);
          --v41;
        }

        while (v41);
      }

      if (v35)
      {
        v42 = 0;
        v43 = v32 + 1;
        do
        {
          LODWORD(v548) = *(v43 - 1);
          sub_239E73254(&v564, &v548);
          LODWORD(v548) = v43[1];
          sub_239E73254(&v564, &v548);
          LODWORD(v548) = *v43;
          sub_239E73254(&v564, &v548);
          v42 += 3;
          v43 += 3;
        }

        while (v35 > v42);
      }
    }
  }

  else
  {
    sub_239E95D48(&v564, v35);
    sub_239E95D48(&v558, v35);
    if (v35)
    {
      v81 = v35;
      do
      {
        LODWORD(v548) = 1;
        sub_239E73254(&v558, &v548);
        --v81;
      }

      while (v81);
      do
      {
        v82 = *v32++;
        LODWORD(v548) = v82;
        sub_239E73254(&v564, &v548);
        --v35;
      }

      while (v35);
    }
  }

  sub_239EB2474(&v561, v565 - v564);
  v96 = v564;
  if (v565 != v564)
  {
    v97 = v565 - v564;
    v98 = v561;
    if (v97 <= 1)
    {
      v97 = 1;
    }

    do
    {
      v99 = *v96++;
      *v98++ = v99;
      --v97;
    }

    while (v97);
  }

  v556 = 0uLL;
  v557 = 0;
  sub_239E552A0(&v548, a3);
  v100 = std::string::append(&v548, "_geo");
  v101 = *&v100->__r_.__value_.__l.__data_;
  v557 = v100->__r_.__value_.__r.__words[2];
  v556 = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v549) < 0)
  {
    operator delete(v548);
  }

  v102 = 0;
  v103 = *MEMORY[0x277D82818];
  v105 = *(MEMORY[0x277D82818] + 64);
  v104 = *(MEMORY[0x277D82818] + 72);
  while (Alembic::Abc::v12::OObject::getChildHeader())
  {
    v555 = 0;
    memset(v554, 0, sizeof(v554));
    v553 = 0u;
    v552 = 0u;
    *__p = 0u;
    memset(v550, 0, sizeof(v550));
    v549 = 0u;
    v548 = 0u;
    sub_239EE76F8(&v548);
    if (v557 >= 0)
    {
      v106 = &v556;
    }

    else
    {
      v106 = v556;
    }

    if (v557 >= 0)
    {
      v107 = HIBYTE(v557);
    }

    else
    {
      v107 = *(&v556 + 1);
    }

    v108 = sub_239E98B94(&v549, v106, v107);
    MEMORY[0x23EE80140](v108, v102);
    std::stringbuf::str();
    if (SHIBYTE(v557) < 0)
    {
      operator delete(v556);
    }

    v556 = v531;
    v557 = v532;
    *&v548 = v103;
    *(&v548 + *(v103 - 24)) = v105;
    *&v549 = v104;
    *(&v549 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v552) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v549 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v550);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v554);
    v102 = (v102 + 1);
  }

  bzero(&v548, 0x4C8uLL);
  v543 = *(a4 + 8);
  if (*(a4 + 39) < 0)
  {
    sub_239E5BAE0(&v544, *(a4 + 16), *(a4 + 24));
  }

  else
  {
    v544 = *(a4 + 16);
    v545 = *(a4 + 32);
  }

  v109 = v435;
  v111 = *(a4 + 40);
  v110 = *(a4 + 48);
  v542 = MEMORY[0x277D867D0] + 16;
  v546 = v111;
  v547 = v110;
  if (v110)
  {
    atomic_fetch_add_explicit((v110 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v531) = 0;
  DWORD2(v531) = 0;
  *__dst = 0;
  *&__dst[8] = 0;
  *v476 = 0;
  *&v476[8] = 0;
  sub_239F08980(&v548, &v542, &v556, &v531, __dst, v476);
  Alembic::Abc::v12::OObject::~OObject(&v542);
  bzero(&v531, 0x240uLL);
  sub_239F0A9A4(__dst, &v567);
  sub_239F0ABA8(v476, &v564);
  sub_239F0ABA8(&v496, &v558);
  v526 = 0;
  v527 = 0x100000006;
  v530 = 0;
  v528 = 0;
  v529 = 0;
  v521 = 0;
  v522 = 0x100000006;
  v525 = 0;
  v523 = 0;
  v524 = 0;
  __src = 0;
  v517 = 0x10000000ALL;
  v520 = 0;
  v518 = 0;
  v519 = 0;
  v511 = 0;
  v512 = 0x100000006;
  v515 = 0;
  v513 = 0;
  v514 = 0;
  v506 = 0;
  v507 = 0x10000000ALL;
  v510 = 0;
  v508 = 0;
  v509 = 0;
  v501 = 0;
  v502 = 0x100000006;
  v505 = 0;
  v503 = 0;
  v504 = 0;
  sub_239F0AC4C(&v531, __dst, v476, &v496, &v526, &v521, &__src, &v511, &v506, &v501);
  if (v503)
  {
    v504 = v503;
    operator delete(v503);
  }

  if (v508)
  {
    v509 = v508;
    operator delete(v508);
  }

  if (v513)
  {
    v514 = v513;
    operator delete(v513);
  }

  if (v518)
  {
    v519 = v518;
    operator delete(v518);
  }

  if (v523)
  {
    v524 = v523;
    operator delete(v523);
  }

  if (v528)
  {
    v529 = v528;
    operator delete(v528);
  }

  if (*(&v497 + 1))
  {
    v498 = *(&v497 + 1);
    operator delete(*(&v497 + 1));
  }

  if (v477)
  {
    v478 = v477;
    operator delete(v477);
  }

  if (v489)
  {
    v490[0] = v489;
    operator delete(v489);
  }

  v436 = v6;
  v112 = v434;
  v527 = 0;
  v526 = 0;
  v528 = 0;
  v522 = 0;
  v521 = 0;
  v523 = 0;
  v517 = 0;
  __src = 0;
  v518 = 0;
  v512 = 0;
  v511 = 0;
  v513 = 0;
  v507 = 0;
  v506 = 0;
  v508 = 0;
  v115 = objc_msgSend_topology(v112, v113, v114);

  if (!v115)
  {
    goto LABEL_132;
  }

  v118 = objc_msgSend_topology(v112, v116, v117);
  v123 = objc_msgSend_edgeCreaseIndices(v118, v119, v120);
  if (!v123)
  {
    goto LABEL_116;
  }

  v124 = objc_msgSend_topology(v112, v121, v122);
  v127 = objc_msgSend_edgeCreaseCount(v124, v125, v126);

  if (v127)
  {
    v130 = objc_msgSend_topology(v112, v128, v129);
    v133 = objc_msgSend_edgeCreaseIndices(v130, v131, v132);
    v118 = objc_msgSend_map(v133, v134, v135);

    v140 = objc_msgSend_bytes(v118, v136, v137);
    for (j = 0; ; ++j)
    {
      v142 = objc_msgSend_topology(v112, v138, v139);
      v145 = objc_msgSend_edgeCreaseCount(v142, v143, v144);

      if (j >= 2 * v145)
      {
        break;
      }

      *__dst = *(v140 + 4 * j);
      sub_239E73254(&v526, __dst);
    }

    v148 = 0;
    v527 = v526;
    while (1)
    {
      v149 = objc_msgSend_topology(v112, v146, v147);
      v152 = objc_msgSend_edgeCreaseCount(v149, v150, v151);

      if (v152 <= v148)
      {
        break;
      }

      *__dst = 2;
      sub_239E73254(&v521, __dst);
      ++v148;
    }

    v155 = objc_msgSend_topology(v112, v153, v154);
    v158 = objc_msgSend_edgeCreases(v155, v156, v157);

    if (v158)
    {
      v161 = objc_msgSend_topology(v112, v159, v160);
      v164 = objc_msgSend_edgeCreases(v161, v162, v163);
      v167 = objc_msgSend_map(v164, v165, v166);

      v172 = objc_msgSend_bytes(v167, v168, v169);
      for (k = 0; ; ++k)
      {
        v174 = objc_msgSend_topology(v112, v170, v171);
        v177 = objc_msgSend_edgeCreaseCount(v174, v175, v176);

        if (v177 <= k)
        {
          break;
        }

        sub_239E798A4(&__src, v172++);
      }
    }

    sub_239F0ABA8(__dst, &v526);
    sub_239F0ABA8(v476, &v521);
    sub_239F0D37C(&v496, &__src);
    sub_239F0AFC8(&v531, __dst, v476, &v496);
    if (*(&v497 + 1))
    {
      v498 = *(&v497 + 1);
      operator delete(*(&v497 + 1));
    }

    if (v477)
    {
      v478 = v477;
      operator delete(v477);
    }

    if (v489)
    {
      v490[0] = v489;
      operator delete(v489);
    }

LABEL_116:
  }

  v178 = objc_msgSend_topology(v112, v128, v129);
  v183 = objc_msgSend_vertexCreaseIndices(v178, v179, v180);
  if (v183)
  {
    v184 = objc_msgSend_topology(v112, v181, v182);
    v187 = objc_msgSend_vertexCreaseCount(v184, v185, v186);

    if (!v187)
    {
      goto LABEL_132;
    }

    v190 = objc_msgSend_topology(v112, v188, v189);
    v193 = objc_msgSend_vertexCreaseIndices(v190, v191, v192);
    v178 = objc_msgSend_map(v193, v194, v195);

    v200 = objc_msgSend_bytes(v178, v196, v197);
    for (m = 0; ; ++m)
    {
      v202 = objc_msgSend_topology(v112, v198, v199);
      v205 = objc_msgSend_vertexCreaseCount(v202, v203, v204);

      if (v205 <= m)
      {
        break;
      }

      *__dst = *(v200 + 4 * m);
      sub_239E73254(&v511, __dst);
    }

    v208 = objc_msgSend_topology(v112, v206, v207);
    v211 = objc_msgSend_vertexCreases(v208, v209, v210);

    if (v211)
    {
      v214 = objc_msgSend_topology(v112, v212, v213);
      v217 = objc_msgSend_vertexCreases(v214, v215, v216);
      v220 = objc_msgSend_map(v217, v218, v219);

      v225 = objc_msgSend_bytes(v220, v221, v222);
      for (n = 0; ; ++n)
      {
        v227 = objc_msgSend_topology(v112, v223, v224);
        v230 = objc_msgSend_vertexCreaseCount(v227, v228, v229);

        if (v230 <= n)
        {
          break;
        }

        sub_239E798A4(&v506, v225++);
      }
    }

    sub_239F0ABA8(__dst, &v511);
    sub_239F0D37C(v476, &v506);
    *(v533 + 5) = *&__dst[5];
    v533[0] = *__dst;
    sub_239F077C0(v534, v489, v490[0], (v490[0] - v489) >> 3);
    *(v535 + 5) = *&v476[5];
    v535[0] = *v476;
    sub_239F077C0(v536, v477, v478, (v478 - v477) >> 3);
    if (v477)
    {
      v478 = v477;
      operator delete(v477);
    }

    if (v489)
    {
      v490[0] = v489;
      operator delete(v489);
    }
  }

LABEL_132:
  Alembic::AbcGeom::v12::OSubDSchema::set();
  if (v506)
  {
    v507 = v506;
    operator delete(v506);
  }

  if (v511)
  {
    v512 = v511;
    operator delete(v511);
  }

  if (__src)
  {
    v517 = __src;
    operator delete(__src);
  }

  if (v521)
  {
    v522 = v521;
    operator delete(v521);
  }

  if (v526)
  {
    v527 = v526;
    operator delete(v526);
  }

  v440 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v436, v231, @"textureCoordinate", 786434);
  v6 = v437;
  if (objc_msgSend_format(v440, v232, v233))
  {
    v527 = 0;
    v526 = 0;
    v528 = 0;
    v236 = objc_msgSend_dataStart(v440, v234, v235);
    v239 = objc_msgSend_stride(v440, v237, v238);
    if (v435)
    {
      v242 = v239;
      v243 = 0;
      v244 = v435;
      do
      {
        if (v243 + 4 <= objc_msgSend_bufferSize(v440, v240, v241))
        {
          v245 = *(v236 + v243);
          v246 = *(v236 + v243 + 4);
          *__dst = v245;
          *&__dst[4] = v246;
          v247 = v527;
          if (v527 >= v528)
          {
            v248 = sub_239F0B0A8(&v526, __dst);
          }

          else
          {
            *v527 = v245;
            *(v247 + 4) = v246;
            v248 = v247 + 8;
          }

          v527 = v248;
        }

        v243 += v242;
        --v244;
      }

      while (v244);
    }

    sub_239F0B230(v476, &v526);
    sub_239F0B2D4(&v496, &v561);
    sub_239F0B378(__dst, v476, &v496, 4);
    *(v537 + 5) = *&__dst[5];
    v537[0] = *__dst;
    sub_239F077C0(v538, v489, v490[0], (v490[0] - v489) >> 3);
    *(v539 + 5) = *(v491 + 5);
    v539[0] = v491[0];
    sub_239F077C0(v540, v492, v493, (v493 - v492) >> 3);
    v541 = v494[2];
    if (v492)
    {
      v493 = v492;
      operator delete(v492);
    }

    if (v489)
    {
      v490[0] = v489;
      operator delete(v489);
    }

    if (*(&v497 + 1))
    {
      v498 = *(&v497 + 1);
      operator delete(*(&v497 + 1));
    }

    if (v477)
    {
      v478 = v477;
      operator delete(v477);
    }

    if (v526)
    {
      v527 = v526;
      operator delete(v526);
    }
  }

  sub_239F07C18(&v550[1] + 8, &v496);
  v250 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v436, v249, @"anisotropy", 786433);
  if (objc_msgSend_format(v250, v251, v252))
  {
    v517 = 0;
    __src = 0;
    v518 = 0;
    v255 = objc_msgSend_dataStart(v250, v253, v254);
    v258 = objc_msgSend_stride(v250, v256, v257);
    if (v435)
    {
      v261 = v258;
      v262 = 0;
      v263 = v435;
      do
      {
        if (v262 + 4 <= objc_msgSend_bufferSize(v250, v259, v260))
        {
          v264 = *(v255 + v262);
          v265 = v517;
          if (v517 >= v518)
          {
            v267 = __src;
            v268 = v517 - __src;
            v269 = (v517 - __src) >> 2;
            v270 = v269 + 1;
            if ((v269 + 1) >> 62)
            {
              sub_239E797B4();
            }

            v271 = v518 - __src;
            if ((v518 - __src) >> 1 > v270)
            {
              v270 = v271 >> 1;
            }

            if (v271 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v272 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v272 = v270;
            }

            if (v272)
            {
              sub_239E79984(&__src, v272);
            }

            *(4 * v269) = v264;
            v266 = 4 * v269 + 4;
            memcpy(0, v267, v268);
            v273 = __src;
            __src = 0;
            v517 = v266;
            v518 = 0;
            if (v273)
            {
              operator delete(v273);
            }
          }

          else
          {
            *v517 = v264;
            v266 = v265 + 4;
          }

          v517 = v266;
          v6 = v437;
        }

        v262 += v261;
        --v263;
      }

      while (v263);
    }

    v483 = v496;
    if (SHIBYTE(v498) < 0)
    {
      sub_239E5BAE0(&v484, v497, *(&v497 + 1));
    }

    else
    {
      v484 = v497;
      v485 = v498;
    }

    v109 = v435;
    v486 = v499;
    v487 = v500;
    if (v500)
    {
      atomic_fetch_add_explicit((v500 + 8), 1uLL, memory_order_relaxed);
    }

    v274 = objc_msgSend_UTF8String(@"anisotropy", v259, v260);
    sub_239E552A0(&v511, v274);
    LODWORD(v506) = 0;
    LODWORD(v507) = 0;
    LODWORD(v501) = 0;
    LODWORD(v502) = 0;
    v481 = 0;
    v482 = 0;
    sub_239F0B42C(__dst, &v483, &v511, 1, 4, 1, &v506, &v501, &v481);
    sub_239F0D37C(&v526, &__src);
    sub_239F0B2D4(&v521, &v561);
    sub_239F0D420(v476, &v526, &v521, 4);
    sub_239F07E40(__dst, v476);
    if (v479)
    {
      v480 = v479;
      operator delete(v479);
    }

    if (v477)
    {
      v478 = v477;
      operator delete(v477);
    }

    if (v523)
    {
      v524 = v523;
      operator delete(v523);
    }

    if (v528)
    {
      v529 = v528;
      operator delete(v528);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v495);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v494);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v490);
    if (SHIBYTE(v489) < 0)
    {
      operator delete(*__dst);
    }

    if (SHIBYTE(v513) < 0)
    {
      operator delete(v511);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v483);
    if (__src)
    {
      v517 = __src;
      operator delete(__src);
    }
  }

  v275 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v436, v253, @"binormal", 786435);

  if (objc_msgSend_format(v275, v276, v277))
  {
    v517 = 0;
    __src = 0;
    v518 = 0;
    v280 = objc_msgSend_dataStart(v275, v278, v279);
    v283 = objc_msgSend_stride(v275, v281, v282);
    if (v109)
    {
      v286 = v283;
      v287 = 0;
      v288 = v109;
      do
      {
        if (v287 + 12 <= objc_msgSend_bufferSize(v275, v284, v285))
        {
          v289 = *(v280 + v287);
          v290 = *(v280 + v287 + 4);
          v291 = *(v280 + v287 + 8);
          *__dst = v289;
          *&__dst[4] = v290;
          *&__dst[8] = v291;
          v292 = v517;
          if (v517 >= v518)
          {
            v293 = sub_239F08808(&__src, __dst);
          }

          else
          {
            *v517 = v289;
            *(v292 + 4) = v290;
            v293 = v292 + 12;
            *(v292 + 8) = v291;
          }

          v517 = v293;
        }

        v287 += v286;
        --v288;
      }

      while (v288);
    }

    v471 = v496;
    if (SHIBYTE(v498) < 0)
    {
      sub_239E5BAE0(&v472, v497, *(&v497 + 1));
    }

    else
    {
      v472 = v497;
      v473 = v498;
    }

    v474 = v499;
    v475 = v500;
    if (v500)
    {
      atomic_fetch_add_explicit((v500 + 8), 1uLL, memory_order_relaxed);
    }

    v294 = objc_msgSend_UTF8String(@"binormal", v284, v285);
    sub_239E552A0(&v511, v294);
    LODWORD(v506) = 0;
    LODWORD(v507) = 0;
    LODWORD(v501) = 0;
    LODWORD(v502) = 0;
    v481 = 0;
    v482 = 0;
    sub_239F0D4D4(__dst, &v471, &v511, 1, 4, 1, &v506, &v501, &v481);
    sub_239F0EAB4(&v526, &__src);
    sub_239F0B2D4(&v521, &v561);
    sub_239F0EB64(v476, &v526, &v521, 4);
    sub_239F081B4(__dst, v476);
    if (v479)
    {
      v480 = v479;
      operator delete(v479);
    }

    if (v477)
    {
      v478 = v477;
      operator delete(v477);
    }

    if (v523)
    {
      v524 = v523;
      operator delete(v523);
    }

    if (v528)
    {
      v529 = v528;
      operator delete(v528);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v495);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v494);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v490);
    if (SHIBYTE(v489) < 0)
    {
      operator delete(*__dst);
    }

    if (SHIBYTE(v513) < 0)
    {
      operator delete(v511);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v471);
    if (__src)
    {
      v517 = __src;
      operator delete(__src);
    }
  }

  v295 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v436, v278, @"bitangent", 786435);

  if (objc_msgSend_format(v295, v296, v297))
  {
    v517 = 0;
    __src = 0;
    v518 = 0;
    v300 = objc_msgSend_dataStart(v295, v298, v299);
    v303 = objc_msgSend_stride(v295, v301, v302);
    if (v109)
    {
      v306 = v303;
      v307 = 0;
      v308 = v109;
      do
      {
        if (v307 + 12 <= objc_msgSend_bufferSize(v295, v304, v305))
        {
          v309 = *(v300 + v307);
          v310 = *(v300 + v307 + 4);
          v311 = *(v300 + v307 + 8);
          *__dst = v309;
          *&__dst[4] = v310;
          *&__dst[8] = v311;
          v312 = v517;
          if (v517 >= v518)
          {
            v313 = sub_239F08808(&__src, __dst);
          }

          else
          {
            *v517 = v309;
            *(v312 + 4) = v310;
            v313 = v312 + 12;
            *(v312 + 8) = v311;
          }

          v517 = v313;
        }

        v307 += v306;
        --v308;
      }

      while (v308);
    }

    v466 = v496;
    if (SHIBYTE(v498) < 0)
    {
      sub_239E5BAE0(&v467, v497, *(&v497 + 1));
    }

    else
    {
      v467 = v497;
      v468 = v498;
    }

    v469 = v499;
    v470 = v500;
    if (v500)
    {
      atomic_fetch_add_explicit((v500 + 8), 1uLL, memory_order_relaxed);
    }

    v314 = objc_msgSend_UTF8String(@"bitangent", v304, v305);
    sub_239E552A0(&v511, v314);
    LODWORD(v506) = 0;
    LODWORD(v507) = 0;
    LODWORD(v501) = 0;
    LODWORD(v502) = 0;
    v481 = 0;
    v482 = 0;
    sub_239F0D4D4(__dst, &v466, &v511, 1, 4, 1, &v506, &v501, &v481);
    sub_239F0EAB4(&v526, &__src);
    sub_239F0B2D4(&v521, &v561);
    sub_239F0EB64(v476, &v526, &v521, 4);
    sub_239F081B4(__dst, v476);
    if (v479)
    {
      v480 = v479;
      operator delete(v479);
    }

    if (v477)
    {
      v478 = v477;
      operator delete(v477);
    }

    if (v523)
    {
      v524 = v523;
      operator delete(v523);
    }

    if (v528)
    {
      v529 = v528;
      operator delete(v528);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v495);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v494);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v490);
    if (SHIBYTE(v489) < 0)
    {
      operator delete(*__dst);
    }

    if (SHIBYTE(v513) < 0)
    {
      operator delete(v511);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v466);
    if (__src)
    {
      v517 = __src;
      operator delete(__src);
    }
  }

  v315 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v436, v298, @"tangent", 786435);

  if (objc_msgSend_format(v315, v316, v317))
  {
    v517 = 0;
    __src = 0;
    v518 = 0;
    v320 = objc_msgSend_dataStart(v315, v318, v319);
    v323 = objc_msgSend_stride(v315, v321, v322);
    if (v109)
    {
      v326 = v323;
      v327 = 0;
      v328 = v109;
      do
      {
        if (v327 + 12 <= objc_msgSend_bufferSize(v315, v324, v325))
        {
          v329 = *(v320 + v327);
          v330 = *(v320 + v327 + 4);
          v331 = *(v320 + v327 + 8);
          *__dst = v329;
          *&__dst[4] = v330;
          *&__dst[8] = v331;
          v332 = v517;
          if (v517 >= v518)
          {
            v333 = sub_239F08808(&__src, __dst);
          }

          else
          {
            *v517 = v329;
            *(v332 + 4) = v330;
            v333 = v332 + 12;
            *(v332 + 8) = v331;
          }

          v517 = v333;
        }

        v327 += v326;
        --v328;
      }

      while (v328);
    }

    v461 = v496;
    if (SHIBYTE(v498) < 0)
    {
      sub_239E5BAE0(&v462, v497, *(&v497 + 1));
    }

    else
    {
      v462 = v497;
      v463 = v498;
    }

    v464 = v499;
    v465 = v500;
    if (v500)
    {
      atomic_fetch_add_explicit((v500 + 8), 1uLL, memory_order_relaxed);
    }

    v334 = objc_msgSend_UTF8String(@"tangent", v324, v325);
    sub_239E552A0(&v511, v334);
    LODWORD(v506) = 0;
    LODWORD(v507) = 0;
    LODWORD(v501) = 0;
    LODWORD(v502) = 0;
    v481 = 0;
    v482 = 0;
    sub_239F0D4D4(__dst, &v461, &v511, 1, 4, 1, &v506, &v501, &v481);
    sub_239F0EAB4(&v526, &__src);
    sub_239F0B2D4(&v521, &v561);
    sub_239F0EB64(v476, &v526, &v521, 4);
    sub_239F081B4(__dst, v476);
    if (v479)
    {
      v480 = v479;
      operator delete(v479);
    }

    if (v477)
    {
      v478 = v477;
      operator delete(v477);
    }

    if (v523)
    {
      v524 = v523;
      operator delete(v523);
    }

    if (v528)
    {
      v529 = v528;
      operator delete(v528);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v495);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v494);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v490);
    if (SHIBYTE(v489) < 0)
    {
      operator delete(*__dst);
    }

    if (SHIBYTE(v513) < 0)
    {
      operator delete(v511);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v461);
    if (__src)
    {
      v517 = __src;
      operator delete(__src);
    }
  }

  v335 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v436, v318, @"occlusionValue");

  if (!v335)
  {
    v363 = 0;
    goto LABEL_354;
  }

  if (!objc_msgSend_format(v335, v336, v337))
  {
    v363 = v335;
    goto LABEL_354;
  }

  if ((objc_msgSend_format(v335, v336, v338) & 0xF) == 1)
  {
    v340 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v436, v339, @"occlusionValue", 786433);

    if (objc_msgSend_format(v340, v341, v342))
    {
      v517 = 0;
      __src = 0;
      v518 = 0;
      v344 = objc_msgSend_dataStart(v340, v336, v343);
      v347 = objc_msgSend_stride(v340, v345, v346);
      if (v109)
      {
        v350 = v347;
        v351 = 0;
        v352 = v109;
        do
        {
          if (v351 + 4 <= objc_msgSend_bufferSize(v340, v348, v349))
          {
            v353 = *(v344 + v351);
            v354 = v517;
            if (v517 >= v518)
            {
              v356 = __src;
              v357 = v517 - __src;
              v358 = (v517 - __src) >> 2;
              v359 = v358 + 1;
              if ((v358 + 1) >> 62)
              {
                sub_239E797B4();
              }

              v360 = v518 - __src;
              if ((v518 - __src) >> 1 > v359)
              {
                v359 = v360 >> 1;
              }

              if (v360 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v361 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v361 = v359;
              }

              if (v361)
              {
                sub_239E79984(&__src, v361);
              }

              *(4 * v358) = v353;
              v355 = 4 * v358 + 4;
              memcpy(0, v356, v357);
              v362 = __src;
              __src = 0;
              v517 = v355;
              v518 = 0;
              if (v362)
              {
                operator delete(v362);
              }

              v109 = v435;
            }

            else
            {
              *v517 = v353;
              v355 = v354 + 4;
            }

            v517 = v355;
            v6 = v437;
          }

          v351 += v350;
          --v352;
        }

        while (v352);
      }

      v456 = v496;
      if (SHIBYTE(v498) < 0)
      {
        sub_239E5BAE0(&v457, v497, *(&v497 + 1));
      }

      else
      {
        v457 = v497;
        v458 = v498;
      }

      v459 = v499;
      v460 = v500;
      if (v500)
      {
        atomic_fetch_add_explicit((v500 + 8), 1uLL, memory_order_relaxed);
      }

      v382 = objc_msgSend_UTF8String(@"occlusionValue", v348, v349);
      sub_239E552A0(&v511, v382);
      LODWORD(v506) = 0;
      LODWORD(v507) = 0;
      LODWORD(v501) = 0;
      LODWORD(v502) = 0;
      v481 = 0;
      v482 = 0;
      sub_239F0B42C(__dst, &v456, &v511, 1, 4, 1, &v506, &v501, &v481);
      sub_239F0D37C(&v526, &__src);
      sub_239F0B2D4(&v521, &v561);
      sub_239F0D420(v476, &v526, &v521, 4);
      sub_239F07E40(__dst, v476);
      if (v479)
      {
        v480 = v479;
        operator delete(v479);
      }

      if (v477)
      {
        v478 = v477;
        operator delete(v477);
      }

      if (v523)
      {
        v524 = v523;
        operator delete(v523);
      }

      if (v528)
      {
        v529 = v528;
        operator delete(v528);
      }

      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v495);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v494);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v490);
      if (SHIBYTE(v489) < 0)
      {
        operator delete(*__dst);
      }

      if (SHIBYTE(v513) < 0)
      {
        operator delete(v511);
      }

      v381 = &v456;
LABEL_351:
      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v381);
      if (__src)
      {
        v517 = __src;
        operator delete(__src);
      }
    }
  }

  else
  {
    v340 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v436, v339, @"occlusionValue", 786434);

    if (objc_msgSend_format(v340, v364, v365))
    {
      v517 = 0;
      __src = 0;
      v518 = 0;
      v367 = objc_msgSend_dataStart(v340, v336, v366);
      v370 = objc_msgSend_stride(v340, v368, v369);
      if (v109)
      {
        v373 = v370;
        v374 = 0;
        v375 = v109;
        do
        {
          if (v374 + 8 <= objc_msgSend_bufferSize(v340, v371, v372))
          {
            v376 = *(v367 + v374);
            v377 = *(v367 + v374 + 4);
            *__dst = v376;
            *&__dst[4] = v377;
            v378 = v517;
            if (v517 >= v518)
            {
              v379 = sub_239F0B0A8(&__src, __dst);
            }

            else
            {
              *v517 = v376;
              *(v378 + 4) = v377;
              v379 = v378 + 8;
            }

            v517 = v379;
          }

          v374 += v373;
          --v375;
        }

        while (v375);
      }

      v451 = v496;
      if (SHIBYTE(v498) < 0)
      {
        sub_239E5BAE0(&v452, v497, *(&v497 + 1));
      }

      else
      {
        v452 = v497;
        v453 = v498;
      }

      v454 = v499;
      v455 = v500;
      if (v500)
      {
        atomic_fetch_add_explicit((v500 + 8), 1uLL, memory_order_relaxed);
      }

      v380 = objc_msgSend_UTF8String(@"occlusionValue", v371, v372);
      sub_239E552A0(&v511, v380);
      LODWORD(v506) = 0;
      LODWORD(v507) = 0;
      LODWORD(v501) = 0;
      LODWORD(v502) = 0;
      v481 = 0;
      v482 = 0;
      sub_239F0EC18(__dst, &v451, &v511, 1, 4, 1, &v506, &v501, &v481);
      sub_239F0B230(&v526, &__src);
      sub_239F0B2D4(&v521, &v561);
      sub_239F0B378(v476, &v526, &v521, 4);
      sub_239F084DC(__dst, v476);
      if (v479)
      {
        v480 = v479;
        operator delete(v479);
      }

      if (v477)
      {
        v478 = v477;
        operator delete(v477);
      }

      if (v523)
      {
        v524 = v523;
        operator delete(v523);
      }

      if (v528)
      {
        v529 = v528;
        operator delete(v528);
      }

      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v495);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v494);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v490);
      if (SHIBYTE(v489) < 0)
      {
        operator delete(*__dst);
      }

      if (SHIBYTE(v513) < 0)
      {
        operator delete(v511);
      }

      v381 = &v451;
      goto LABEL_351;
    }
  }

  v363 = v340;
LABEL_354:
  v383 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v436, v336, @"color");

  if (v383)
  {
    if (objc_msgSend_format(v383, v384, v385))
    {
      if ((objc_msgSend_format(v383, v386, v387) & 0xF) == 1)
      {
        v389 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v436, v388, @"color", 786433);

        if (objc_msgSend_format(v389, v390, v391))
        {
          v517 = 0;
          __src = 0;
          v518 = 0;
          v394 = objc_msgSend_dataStart(v389, v392, v393);
          v397 = objc_msgSend_stride(v389, v395, v396);
          if (v109)
          {
            v400 = v397;
            v401 = 0;
            do
            {
              if (v401 + 4 <= objc_msgSend_bufferSize(v389, v398, v399))
              {
                v402 = *(v394 + v401);
                v403 = v517;
                if (v517 >= v518)
                {
                  v405 = __src;
                  v406 = v517 - __src;
                  v407 = (v517 - __src) >> 2;
                  v408 = v407 + 1;
                  if ((v407 + 1) >> 62)
                  {
                    sub_239E797B4();
                  }

                  v409 = v518 - __src;
                  if ((v518 - __src) >> 1 > v408)
                  {
                    v408 = v409 >> 1;
                  }

                  if (v409 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v410 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v410 = v408;
                  }

                  if (v410)
                  {
                    sub_239E79984(&__src, v410);
                  }

                  *(4 * v407) = v402;
                  v404 = 4 * v407 + 4;
                  memcpy(0, v405, v406);
                  v411 = __src;
                  __src = 0;
                  v517 = v404;
                  v518 = 0;
                  if (v411)
                  {
                    operator delete(v411);
                  }
                }

                else
                {
                  *v517 = v402;
                  v404 = v403 + 4;
                }

                v517 = v404;
                v6 = v437;
              }

              v401 += v400;
              --v435;
            }

            while (v435);
          }

          v446 = v496;
          if (SHIBYTE(v498) < 0)
          {
            sub_239E5BAE0(&v447, v497, *(&v497 + 1));
          }

          else
          {
            v447 = v497;
            v448 = v498;
          }

          v449 = v499;
          v450 = v500;
          if (v500)
          {
            atomic_fetch_add_explicit((v500 + 8), 1uLL, memory_order_relaxed);
          }

          v431 = objc_msgSend_UTF8String(@"color", v398, v399);
          sub_239E552A0(&v511, v431);
          LODWORD(v506) = 0;
          LODWORD(v507) = 0;
          LODWORD(v501) = 0;
          LODWORD(v502) = 0;
          v481 = 0;
          v482 = 0;
          sub_239F0B42C(__dst, &v446, &v511, 1, 4, 1, &v506, &v501, &v481);
          sub_239F0D37C(&v526, &__src);
          sub_239F0B2D4(&v521, &v561);
          sub_239F0D420(v476, &v526, &v521, 4);
          sub_239F07E40(__dst, v476);
          if (v479)
          {
            v480 = v479;
            operator delete(v479);
          }

          if (v477)
          {
            v478 = v477;
            operator delete(v477);
          }

          if (v523)
          {
            v524 = v523;
            operator delete(v523);
          }

          if (v528)
          {
            v529 = v528;
            operator delete(v528);
          }

          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v495);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v494);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v490);
          if (SHIBYTE(v489) < 0)
          {
            operator delete(*__dst);
          }

          if (SHIBYTE(v513) < 0)
          {
            operator delete(v511);
          }

          v430 = &v446;
LABEL_422:
          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v430);
          if (__src)
          {
            v517 = __src;
            operator delete(__src);
          }
        }
      }

      else
      {
        v389 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v436, v388, @"color", 786435);

        if (objc_msgSend_format(v389, v412, v413))
        {
          v517 = 0;
          __src = 0;
          v518 = 0;
          v416 = objc_msgSend_dataStart(v389, v414, v415);
          v419 = objc_msgSend_stride(v389, v417, v418);
          if (v109)
          {
            v422 = v419;
            v423 = 0;
            do
            {
              if (v423 + 12 <= objc_msgSend_bufferSize(v389, v420, v421))
              {
                v424 = *(v416 + v423);
                v425 = *(v416 + v423 + 4);
                v426 = *(v416 + v423 + 8);
                *__dst = v424;
                *&__dst[4] = v425;
                *&__dst[8] = v426;
                v427 = v517;
                if (v517 >= v518)
                {
                  v428 = sub_239F08808(&__src, __dst);
                }

                else
                {
                  *v517 = v424;
                  *(v427 + 4) = v425;
                  v428 = v427 + 12;
                  *(v427 + 8) = v426;
                }

                v517 = v428;
              }

              v423 += v422;
              --v109;
            }

            while (v109);
          }

          v441 = v496;
          if (SHIBYTE(v498) < 0)
          {
            sub_239E5BAE0(&v442, v497, *(&v497 + 1));
          }

          else
          {
            v442 = v497;
            v443 = v498;
          }

          v444 = v499;
          v445 = v500;
          if (v500)
          {
            atomic_fetch_add_explicit((v500 + 8), 1uLL, memory_order_relaxed);
          }

          v429 = objc_msgSend_UTF8String(@"color", v420, v421);
          sub_239E552A0(&v511, v429);
          LODWORD(v506) = 0;
          LODWORD(v507) = 0;
          LODWORD(v501) = 0;
          LODWORD(v502) = 0;
          v481 = 0;
          v482 = 0;
          sub_239F0D4D4(__dst, &v441, &v511, 1, 4, 1, &v506, &v501, &v481);
          sub_239F0EAB4(&v526, &__src);
          sub_239F0B2D4(&v521, &v561);
          sub_239F0EB64(v476, &v526, &v521, 4);
          sub_239F081B4(__dst, v476);
          if (v479)
          {
            v480 = v479;
            operator delete(v479);
          }

          if (v477)
          {
            v478 = v477;
            operator delete(v477);
          }

          if (v523)
          {
            v524 = v523;
            operator delete(v523);
          }

          if (v528)
          {
            v529 = v528;
            operator delete(v528);
          }

          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v495);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v494);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v490);
          if (SHIBYTE(v489) < 0)
          {
            operator delete(*__dst);
          }

          if (SHIBYTE(v513) < 0)
          {
            operator delete(v511);
          }

          v430 = &v441;
          goto LABEL_422;
        }
      }
    }

    else
    {
      v389 = v383;
    }
  }

  else
  {
    v389 = 0;
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v496);
  sub_239F101F8(&v531);
  *&v548 = &unk_284D17488;
  sub_239F0A868(&v550[1] + 8);
  Alembic::Abc::v12::OObject::~OObject(&v548);
  if (SHIBYTE(v557) < 0)
  {
    operator delete(v556);
  }

LABEL_426:
  if (v558)
  {
    v559 = v558;
    operator delete(v558);
  }

  if (v561)
  {
    v562 = v561;
    operator delete(v561);
  }

  if (v564)
  {
    v565 = v564;
    operator delete(v564);
  }

  if (v567)
  {
    v568 = v567;
    operator delete(v567);
  }
}

void sub_239F02A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  v22 = *(v20 - 208);
  if (v22)
  {
    *(v20 - 200) = v22;
    operator delete(v22);
  }

  v23 = *(v20 - 184);
  if (v23)
  {
    *(v20 - 176) = v23;
    operator delete(v23);
  }

  v24 = *(v20 - 160);
  if (v24)
  {
    *(v20 - 152) = v24;
    operator delete(v24);
  }

  v25 = *(v20 - 136);
  if (v25)
  {
    *(v20 - 128) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_239F033E0(void *a1, void *a2, char *a3, uint64_t a4)
{
  v7 = a1;
  v339 = a2;
  v465 = 0;
  v466 = 0;
  v467 = 0;
  v336 = v7;
  v10 = objc_msgSend_vertexCount(v7, v8, v9);
  v12 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v7, v11, @"position", 786435);
  v15 = objc_msgSend_dataStart(v12, v13, v14);
  v340 = v12;
  v18 = objc_msgSend_stride(v12, v16, v17);
  if (v10)
  {
    v21 = v18;
    v22 = 0;
    v23 = v10;
    do
    {
      if (v22 + 12 <= objc_msgSend_bufferSize(v340, v19, v20))
      {
        v24 = *(v15 + v22);
        v25 = *(v15 + v22 + 4);
        v26 = *(v15 + v22 + 8);
        *&v446 = __PAIR64__(v25, v24);
        DWORD2(v446) = v26;
        v27 = v466;
        if (v466 >= v467)
        {
          v28 = sub_239F08808(&v465, &v446);
        }

        else
        {
          *v466 = v24;
          v27[1] = v25;
          v28 = (v27 + 3);
          v27[2] = v26;
        }

        v466 = v28;
      }

      v22 += v21;
      --v23;
    }

    while (v23);
  }

  v335 = objc_msgSend_indexBufferAsIndexType_(v339, v19, 32);
  v334 = objc_msgSend_map(v335, v29, v30);
  v33 = objc_msgSend_bytes(v334, v31, v32);
  v36 = objc_msgSend_indexCount(v339, v34, v35);
  v462 = 0;
  v463 = 0;
  v464 = 0;
  v459 = 0;
  v460 = 0;
  v461 = 0;
  v456 = 0;
  v457 = 0;
  v458 = 0;
  v39 = objc_msgSend_geometryType(v339, v37, v38);
  v337 = v10;
  if (v39 > 2)
  {
    switch(v39)
    {
      case 3:
        goto LABEL_391;
      case 4:
        sub_239E95D48(&v462, v36);
        v86 = v36 >> 2;
        sub_239E95D48(&v456, v36 >> 2);
        if (v36 >= 4)
        {
          do
          {
            LODWORD(v446) = 4;
            sub_239E73254(&v456, &v446);
            --v86;
          }

          while (v86);
        }

        if (v36)
        {
          v87 = 0;
          v88 = v33 + 2;
          do
          {
            LODWORD(v446) = *(v88 - 2);
            sub_239E73254(&v462, &v446);
            LODWORD(v446) = v88[1];
            sub_239E73254(&v462, &v446);
            LODWORD(v446) = *v88;
            sub_239E73254(&v462, &v446);
            LODWORD(v446) = *(v88 - 1);
            sub_239E73254(&v462, &v446);
            v88 += 4;
            v87 += 4;
          }

          while (v36 > v87);
        }

        break;
      case 5:
        v47 = objc_msgSend_topology(v339, v40, v41);
        if (v47)
        {
          v48 = objc_msgSend_topology(v339, v45, v46);
          v53 = objc_msgSend_faceTopology(v48, v49, v50);
          if (v53)
          {
            v54 = objc_msgSend_topology(v339, v51, v52);
            v57 = objc_msgSend_faceCount(v54, v55, v56);

            if (!v57)
            {
              break;
            }

            v60 = objc_msgSend_topology(v339, v58, v59);
            v63 = objc_msgSend_faceCount(v60, v61, v62);
            sub_239E95D48(&v456, v63);

            v66 = objc_msgSend_topology(v339, v64, v65);
            v69 = objc_msgSend_faceTopology(v66, v67, v68);
            v47 = objc_msgSend_map(v69, v70, v71);

            v76 = objc_msgSend_bytes(v47, v72, v73);
            for (i = 0; ; ++i)
            {
              v78 = objc_msgSend_topology(v339, v74, v75);
              v81 = objc_msgSend_faceCount(v78, v79, v80);

              if (v81 <= i)
              {
                break;
              }

              LODWORD(v446) = *(v76 + i);
              sub_239E73254(&v456, &v446);
            }

            v89 = v456;
            v90 = v457;
            if (v457 != v456)
            {
              v91 = 0;
              v92 = 0;
              do
              {
                v93 = v89[v91];
                if (v93 >= 1)
                {
                  v94 = v93 + 1;
                  v95 = &v33[v93 - 1 + v92];
                  do
                  {
                    v96 = *v95--;
                    LODWORD(v446) = v96;
                    sub_239E73254(&v462, &v446);
                    --v94;
                  }

                  while (v94 > 1);
                  v89 = v456;
                  v90 = v457;
                  LODWORD(v93) = v456[v91];
                }

                v92 += v93;
                ++v91;
              }

              while (v91 < (v90 - v89) >> 2);
            }
          }

          else
          {
          }
        }

        break;
    }
  }

  else if (v39)
  {
    if (v39 == 1)
    {
      sub_239E95D48(&v462, v36);
      v84 = v36 >> 1;
      sub_239E95D48(&v456, v36 >> 1);
      if (v36 >= 2)
      {
        do
        {
          LODWORD(v446) = 2;
          sub_239E73254(&v456, &v446);
          --v84;
        }

        while (v84);
      }

      for (; v36; --v36)
      {
        v85 = *v33++;
        LODWORD(v446) = v85;
        sub_239E73254(&v462, &v446);
      }
    }

    else if (v39 == 2)
    {
      sub_239E95D48(&v462, v36);
      v42 = v36 / 3;
      sub_239E95D48(&v456, v36 / 3);
      if (v36 >= 3)
      {
        do
        {
          LODWORD(v446) = 3;
          sub_239E73254(&v456, &v446);
          --v42;
        }

        while (v42);
      }

      if (v36)
      {
        v43 = 0;
        v44 = v33 + 1;
        do
        {
          LODWORD(v446) = *(v44 - 1);
          sub_239E73254(&v462, &v446);
          LODWORD(v446) = v44[1];
          sub_239E73254(&v462, &v446);
          LODWORD(v446) = *v44;
          sub_239E73254(&v462, &v446);
          v43 += 3;
          v44 += 3;
        }

        while (v36 > v43);
      }
    }
  }

  else
  {
    sub_239E95D48(&v462, v36);
    sub_239E95D48(&v456, v36);
    if (v36)
    {
      v82 = v36;
      do
      {
        LODWORD(v446) = 1;
        sub_239E73254(&v456, &v446);
        --v82;
      }

      while (v82);
      do
      {
        v83 = *v33++;
        LODWORD(v446) = v83;
        sub_239E73254(&v462, &v446);
        --v36;
      }

      while (v36);
    }
  }

  sub_239EB2474(&v459, v463 - v462);
  v97 = v462;
  if (v463 != v462)
  {
    v98 = v463 - v462;
    v99 = v459;
    if (v98 <= 1)
    {
      v98 = 1;
    }

    do
    {
      v100 = *v97++;
      *v99++ = v100;
      --v98;
    }

    while (v98);
  }

  v454 = 0uLL;
  v455 = 0;
  sub_239E552A0(&v446, a3);
  v101 = std::string::append(&v446, "_geo");
  v102 = *&v101->__r_.__value_.__l.__data_;
  v455 = v101->__r_.__value_.__r.__words[2];
  v454 = v102;
  v101->__r_.__value_.__l.__size_ = 0;
  v101->__r_.__value_.__r.__words[2] = 0;
  v101->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v447) < 0)
  {
    operator delete(v446);
  }

  v103 = 0;
  v104 = *MEMORY[0x277D82818];
  v106 = *(MEMORY[0x277D82818] + 64);
  v105 = *(MEMORY[0x277D82818] + 72);
  while (Alembic::Abc::v12::OObject::getChildHeader())
  {
    v453 = 0;
    v451 = 0u;
    memset(v452, 0, sizeof(v452));
    v449 = 0u;
    v450 = 0u;
    v447 = 0u;
    memset(v448, 0, sizeof(v448));
    v446 = 0u;
    sub_239EE76F8(&v446);
    if (v455 >= 0)
    {
      v107 = &v454;
    }

    else
    {
      v107 = v454;
    }

    if (v455 >= 0)
    {
      v108 = HIBYTE(v455);
    }

    else
    {
      v108 = *(&v454 + 1);
    }

    v109 = sub_239E98B94(&v447, v107, v108);
    MEMORY[0x23EE80140](v109, v103);
    std::stringbuf::str();
    if (SHIBYTE(v455) < 0)
    {
      operator delete(v454);
    }

    v454 = v422;
    v455 = v423;
    *&v446 = v104;
    *(&v446 + *(v104 - 24)) = v106;
    *&v447 = v105;
    *(&v447 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v450) < 0)
    {
      operator delete(*(&v449 + 1));
    }

    *(&v447 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v448);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v452);
    v103 = (v103 + 1);
  }

  bzero(&v446, 0x398uLL);
  v441 = *(a4 + 8);
  if (*(a4 + 39) < 0)
  {
    sub_239E5BAE0(&v442, *(a4 + 16), *(a4 + 24));
  }

  else
  {
    v442 = *(a4 + 16);
    v443 = *(a4 + 32);
  }

  v111 = *(a4 + 40);
  v110 = *(a4 + 48);
  v440 = MEMORY[0x277D867D0] + 16;
  v444 = v111;
  v445 = v110;
  if (v110)
  {
    atomic_fetch_add_explicit((v110 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v422) = 0;
  DWORD2(v422) = 0;
  LODWORD(__dst) = 0;
  DWORD2(__dst) = 0;
  LODWORD(v406) = 0;
  LODWORD(v407) = 0;
  sub_239F1056C(&v446, &v440, &v454, &v422, &__dst, &v406);
  Alembic::Abc::v12::OObject::~OObject(&v440);
  v438 = 0u;
  v439 = 0u;
  v437 = 0u;
  memset(v436, 0, sizeof(v436));
  v434 = 0u;
  v435 = 0u;
  v432 = 0u;
  v433 = 0u;
  v430 = 0u;
  v431 = 0u;
  v428 = 0u;
  v429 = 0u;
  v426 = 0u;
  v427 = 0u;
  v424 = 0u;
  v425 = 0u;
  v422 = 0u;
  v423 = 0u;
  sub_239F0A9A4(&v401, &v465);
  sub_239F0ABA8(&v418, &v462);
  sub_239F0ABA8(v415, &v456);
  *&__dst = 0;
  *(&__dst + 1) = 0x20000000ALL;
  v391 = 0u;
  *v392 = 0u;
  *&v392[16] = 0x100000005;
  v393 = 0;
  v395 = 0;
  v394 = 0;
  v396 = 127;
  v406 = 0;
  v407 = 0x30000000ALL;
  v408 = 0u;
  v409 = 0u;
  v410 = 0x100000005;
  v411 = 0;
  v413 = 0;
  v412 = 0;
  v414 = 127;
  sub_239F117AC(&v422, &v401, &v418, v415, &__dst, &v406);
  if (v411)
  {
    v412 = v411;
    operator delete(v411);
  }

  if (v408)
  {
    *(&v408 + 1) = v408;
    operator delete(v408);
  }

  if (v393)
  {
    v394 = v393;
    operator delete(v393);
  }

  if (v391)
  {
    *(&v391 + 1) = v391;
    operator delete(v391);
  }

  if (v416)
  {
    v417 = v416;
    operator delete(v416);
  }

  if (v420)
  {
    v421 = v420;
    operator delete(v420);
  }

  if (*(&v402 + 1))
  {
    v403 = *(&v402 + 1);
    operator delete(*(&v402 + 1));
  }

  v112 = v336;
  v113 = v339;
  v419 = 0;
  v418 = 0;
  v420 = 0;
  v115 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v112, v114, @"normal", 786435);
  if (objc_msgSend_format(v115, v116, v117))
  {
    v120 = objc_msgSend_dataStart(v115, v118, v119);
    v125 = objc_msgSend_stride(v115, v121, v122);
    v126 = 0;
    for (j = 0; j < objc_msgSend_vertexCount(v112, v123, v124); ++j)
    {
      if (v126 + 12 <= objc_msgSend_bufferSize(v115, v128, v129))
      {
        v130 = *(v120 + v126 + 8);
        *&__dst = *(v120 + v126);
        DWORD2(__dst) = v130;
        sub_239F11A3C(&v418, &__dst);
      }

      v126 += v125;
    }

    sub_239F11A8C(&v406, &v418);
    sub_239F0B2D4(&v401, &v459);
    sub_239F11B3C(&__dst, &v406, &v401, 4);
    *(&v436[4] + 13) = *(&__dst + 5);
    *(&v436[4] + 1) = __dst;
    sub_239F077C0(&v436[5] + 1, v391, *(&v391 + 1), (*(&v391 + 1) - v391) >> 3);
    *(&v437 + 5) = *&v392[13];
    *&v437 = *&v392[8];
    sub_239F077C0(&v438, v393, v394, (v394 - v393) >> 3);
    DWORD2(v439) = v396;
    if (v393)
    {
      v394 = v393;
      operator delete(v393);
    }

    if (v391)
    {
      *(&v391 + 1) = v391;
      operator delete(v391);
    }

    if (*(&v402 + 1))
    {
      v403 = *(&v402 + 1);
      operator delete(*(&v402 + 1));
    }

    if (v408)
    {
      *(&v408 + 1) = v408;
      operator delete(v408);
    }
  }

  Alembic::AbcGeom::v12::OPolyMeshSchema::set();

  if (v418)
  {
    v419 = v418;
    operator delete(v418);
  }

  objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v112, v131, @"textureCoordinate", 786434);
  v341 = v132 = v337;
  if (objc_msgSend_format(v341, v133, v134))
  {
    v419 = 0;
    v418 = 0;
    v420 = 0;
    v137 = objc_msgSend_dataStart(v341, v135, v136);
    v140 = objc_msgSend_stride(v341, v138, v139);
    if (v337)
    {
      v143 = v140;
      v144 = 0;
      v145 = v337;
      do
      {
        if (v144 + 4 <= objc_msgSend_bufferSize(v341, v141, v142))
        {
          v146 = *(v137 + v144);
          v147 = *(v137 + v144 + 4);
          *&__dst = __PAIR64__(v147, v146);
          v148 = v419;
          if (v419 >= v420)
          {
            v149 = sub_239F0B0A8(&v418, &__dst);
          }

          else
          {
            *v419 = v146;
            v148[1] = v147;
            v149 = (v148 + 2);
          }

          v419 = v149;
        }

        v144 += v143;
        --v145;
      }

      while (v145);
    }

    sub_239F0B230(&v406, &v418);
    sub_239F0B2D4(&v401, &v459);
    sub_239F0B378(&__dst, &v406, &v401, 4);
    *&v435 = __dst;
    *(&v435 + 5) = *(&__dst + 5);
    sub_239F077C0(v436, v391, *(&v391 + 1), (*(&v391 + 1) - v391) >> 3);
    *(&v436[1] + 1) = *&v392[8];
    *(&v436[1] + 13) = *&v392[13];
    sub_239F077C0(&v436[2] + 1, v393, v394, (v394 - v393) >> 3);
    LODWORD(v436[4]) = v396;
    if (v393)
    {
      v394 = v393;
      operator delete(v393);
    }

    if (v391)
    {
      *(&v391 + 1) = v391;
      operator delete(v391);
    }

    if (*(&v402 + 1))
    {
      v403 = *(&v402 + 1);
      operator delete(*(&v402 + 1));
    }

    if (v408)
    {
      *(&v408 + 1) = v408;
      operator delete(v408);
    }

    if (v418)
    {
      v419 = v418;
      operator delete(v418);
    }
  }

  sub_239F10340(&v448[1] + 8, &v401);
  v338 = v112;
  v151 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v112, v150, @"anisotropy", 786433);
  if (objc_msgSend_format(v151, v152, v153))
  {
    v399 = 0;
    __src = 0;
    v400 = 0;
    v156 = objc_msgSend_dataStart(v151, v154, v155);
    v159 = objc_msgSend_stride(v151, v157, v158);
    if (v337)
    {
      v162 = v159;
      v163 = 0;
      v164 = v337;
      do
      {
        if (v163 + 4 <= objc_msgSend_bufferSize(v151, v160, v161))
        {
          v165 = *(v156 + v163);
          v166 = v399;
          if (v399 >= v400)
          {
            v168 = __src;
            v169 = v399 - __src;
            v170 = (v399 - __src) >> 2;
            v171 = v170 + 1;
            if ((v170 + 1) >> 62)
            {
              sub_239E797B4();
            }

            v172 = v400 - __src;
            if ((v400 - __src) >> 1 > v171)
            {
              v171 = v172 >> 1;
            }

            if (v172 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v173 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v173 = v171;
            }

            if (v173)
            {
              sub_239E79984(&__src, v173);
            }

            *(4 * v170) = v165;
            v167 = 4 * v170 + 4;
            memcpy(0, v168, v169);
            v174 = __src;
            __src = 0;
            v399 = v167;
            v400 = 0;
            if (v174)
            {
              operator delete(v174);
            }
          }

          else
          {
            *v399 = v165;
            v167 = (v166 + 4);
          }

          v399 = v167;
        }

        v163 += v162;
        --v164;
      }

      while (v164);
    }

    v385 = v401;
    if (SHIBYTE(v403) < 0)
    {
      sub_239E5BAE0(&v386, v402, *(&v402 + 1));
    }

    else
    {
      v386 = v402;
      v387 = v403;
    }

    v132 = v337;
    v388 = v404;
    v389 = v405;
    if (v405)
    {
      atomic_fetch_add_explicit((v405 + 8), 1uLL, memory_order_relaxed);
    }

    v175 = objc_msgSend_UTF8String(@"anisotropy", v160, v161);
    sub_239E552A0(v383, v175);
    v381 = 0;
    v382 = 0;
    v379 = 0;
    v380 = 0;
    v377 = 0;
    v378 = 0;
    sub_239F0B42C(&__dst, &v385, v383, 1, 4, 1, &v381, &v379, &v377);
    sub_239F0D37C(&v418, &__src);
    sub_239F0B2D4(v415, &v459);
    sub_239F0D420(&v406, &v418, v415, 4);
    sub_239F07E40(&__dst, &v406);
    if (v411)
    {
      v412 = v411;
      operator delete(v411);
    }

    if (v408)
    {
      *(&v408 + 1) = v408;
      operator delete(v408);
    }

    if (v416)
    {
      v417 = v416;
      operator delete(v416);
    }

    if (v420)
    {
      v421 = v420;
      operator delete(v420);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v397);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v395);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v391 + 8));
    if (SBYTE7(v391) < 0)
    {
      operator delete(__dst);
    }

    if (v384 < 0)
    {
      operator delete(v383[0]);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v385);
    if (__src)
    {
      v399 = __src;
      operator delete(__src);
    }
  }

  v176 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v338, v154, @"binormal", 786435);

  if (objc_msgSend_format(v176, v177, v178))
  {
    v399 = 0;
    __src = 0;
    v400 = 0;
    v181 = objc_msgSend_dataStart(v176, v179, v180);
    v184 = objc_msgSend_stride(v176, v182, v183);
    if (v132)
    {
      v187 = v184;
      v188 = 0;
      v189 = v132;
      do
      {
        if (v188 + 12 <= objc_msgSend_bufferSize(v176, v185, v186))
        {
          v190 = *(v181 + v188);
          v191 = *(v181 + v188 + 4);
          v192 = *(v181 + v188 + 8);
          *&__dst = __PAIR64__(v191, v190);
          DWORD2(__dst) = v192;
          v193 = v399;
          if (v399 >= v400)
          {
            v194 = sub_239F08808(&__src, &__dst);
          }

          else
          {
            *v399 = v190;
            *(v193 + 1) = v191;
            v194 = (v193 + 12);
            *(v193 + 2) = v192;
          }

          v399 = v194;
        }

        v188 += v187;
        --v189;
      }

      while (v189);
    }

    v372 = v401;
    if (SHIBYTE(v403) < 0)
    {
      sub_239E5BAE0(&v373, v402, *(&v402 + 1));
    }

    else
    {
      v373 = v402;
      v374 = v403;
    }

    v375 = v404;
    v376 = v405;
    if (v405)
    {
      atomic_fetch_add_explicit((v405 + 8), 1uLL, memory_order_relaxed);
    }

    v195 = objc_msgSend_UTF8String(@"binormal", v185, v186);
    sub_239E552A0(v383, v195);
    v381 = 0;
    v382 = 0;
    v379 = 0;
    v380 = 0;
    v377 = 0;
    v378 = 0;
    sub_239F0D4D4(&__dst, &v372, v383, 1, 4, 1, &v381, &v379, &v377);
    sub_239F0EAB4(&v418, &__src);
    sub_239F0B2D4(v415, &v459);
    sub_239F0EB64(&v406, &v418, v415, 4);
    sub_239F081B4(&__dst, &v406);
    if (v411)
    {
      v412 = v411;
      operator delete(v411);
    }

    if (v408)
    {
      *(&v408 + 1) = v408;
      operator delete(v408);
    }

    if (v416)
    {
      v417 = v416;
      operator delete(v416);
    }

    if (v420)
    {
      v421 = v420;
      operator delete(v420);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v397);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v395);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v391 + 8));
    if (SBYTE7(v391) < 0)
    {
      operator delete(__dst);
    }

    if (v384 < 0)
    {
      operator delete(v383[0]);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v372);
    if (__src)
    {
      v399 = __src;
      operator delete(__src);
    }
  }

  v196 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v338, v179, @"bitangent", 786435);

  if (objc_msgSend_format(v196, v197, v198))
  {
    v399 = 0;
    __src = 0;
    v400 = 0;
    v201 = objc_msgSend_dataStart(v196, v199, v200);
    v204 = objc_msgSend_stride(v196, v202, v203);
    if (v132)
    {
      v207 = v204;
      v208 = 0;
      v209 = v132;
      do
      {
        if (v208 + 12 <= objc_msgSend_bufferSize(v196, v205, v206))
        {
          v210 = *(v201 + v208);
          v211 = *(v201 + v208 + 4);
          v212 = *(v201 + v208 + 8);
          *&__dst = __PAIR64__(v211, v210);
          DWORD2(__dst) = v212;
          v213 = v399;
          if (v399 >= v400)
          {
            v214 = sub_239F08808(&__src, &__dst);
          }

          else
          {
            *v399 = v210;
            *(v213 + 1) = v211;
            v214 = (v213 + 12);
            *(v213 + 2) = v212;
          }

          v399 = v214;
        }

        v208 += v207;
        --v209;
      }

      while (v209);
    }

    v367 = v401;
    if (SHIBYTE(v403) < 0)
    {
      sub_239E5BAE0(&v368, v402, *(&v402 + 1));
    }

    else
    {
      v368 = v402;
      v369 = v403;
    }

    v370 = v404;
    v371 = v405;
    if (v405)
    {
      atomic_fetch_add_explicit((v405 + 8), 1uLL, memory_order_relaxed);
    }

    v215 = objc_msgSend_UTF8String(@"bitangent", v205, v206);
    sub_239E552A0(v383, v215);
    v381 = 0;
    v382 = 0;
    v379 = 0;
    v380 = 0;
    v377 = 0;
    v378 = 0;
    sub_239F0D4D4(&__dst, &v367, v383, 1, 4, 1, &v381, &v379, &v377);
    sub_239F0EAB4(&v418, &__src);
    sub_239F0B2D4(v415, &v459);
    sub_239F0EB64(&v406, &v418, v415, 4);
    sub_239F081B4(&__dst, &v406);
    if (v411)
    {
      v412 = v411;
      operator delete(v411);
    }

    if (v408)
    {
      *(&v408 + 1) = v408;
      operator delete(v408);
    }

    if (v416)
    {
      v417 = v416;
      operator delete(v416);
    }

    if (v420)
    {
      v421 = v420;
      operator delete(v420);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v397);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v395);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v391 + 8));
    if (SBYTE7(v391) < 0)
    {
      operator delete(__dst);
    }

    if (v384 < 0)
    {
      operator delete(v383[0]);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v367);
    if (__src)
    {
      v399 = __src;
      operator delete(__src);
    }
  }

  v216 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v338, v199, @"tangent", 786435);

  if (objc_msgSend_format(v216, v217, v218))
  {
    v399 = 0;
    __src = 0;
    v400 = 0;
    v221 = objc_msgSend_dataStart(v216, v219, v220);
    v224 = objc_msgSend_stride(v216, v222, v223);
    if (v132)
    {
      v227 = v224;
      v228 = 0;
      v229 = v132;
      do
      {
        if (v228 + 12 <= objc_msgSend_bufferSize(v216, v225, v226))
        {
          v230 = *(v221 + v228);
          v231 = *(v221 + v228 + 4);
          v232 = *(v221 + v228 + 8);
          *&__dst = __PAIR64__(v231, v230);
          DWORD2(__dst) = v232;
          v233 = v399;
          if (v399 >= v400)
          {
            v234 = sub_239F08808(&__src, &__dst);
          }

          else
          {
            *v399 = v230;
            *(v233 + 1) = v231;
            v234 = (v233 + 12);
            *(v233 + 2) = v232;
          }

          v399 = v234;
        }

        v228 += v227;
        --v229;
      }

      while (v229);
    }

    v362 = v401;
    if (SHIBYTE(v403) < 0)
    {
      sub_239E5BAE0(&v363, v402, *(&v402 + 1));
    }

    else
    {
      v363 = v402;
      v364 = v403;
    }

    v365 = v404;
    v366 = v405;
    if (v405)
    {
      atomic_fetch_add_explicit((v405 + 8), 1uLL, memory_order_relaxed);
    }

    v235 = objc_msgSend_UTF8String(@"tangent", v225, v226);
    sub_239E552A0(v383, v235);
    v381 = 0;
    v382 = 0;
    v379 = 0;
    v380 = 0;
    v377 = 0;
    v378 = 0;
    sub_239F0D4D4(&__dst, &v362, v383, 1, 4, 1, &v381, &v379, &v377);
    sub_239F0EAB4(&v418, &__src);
    sub_239F0B2D4(v415, &v459);
    sub_239F0EB64(&v406, &v418, v415, 4);
    sub_239F081B4(&__dst, &v406);
    if (v411)
    {
      v412 = v411;
      operator delete(v411);
    }

    if (v408)
    {
      *(&v408 + 1) = v408;
      operator delete(v408);
    }

    if (v416)
    {
      v417 = v416;
      operator delete(v416);
    }

    if (v420)
    {
      v421 = v420;
      operator delete(v420);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v397);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v395);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v391 + 8));
    if (SBYTE7(v391) < 0)
    {
      operator delete(__dst);
    }

    if (v384 < 0)
    {
      operator delete(v383[0]);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v362);
    if (__src)
    {
      v399 = __src;
      operator delete(__src);
    }
  }

  v236 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v338, v219, @"occlusionValue");

  if (!v236)
  {
    v264 = 0;
    goto LABEL_319;
  }

  if (!objc_msgSend_format(v236, v237, v238))
  {
    v264 = v236;
    goto LABEL_319;
  }

  if ((objc_msgSend_format(v236, v237, v239) & 0xF) == 1)
  {
    v241 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v338, v240, @"occlusionValue", 786433);

    if (objc_msgSend_format(v241, v242, v243))
    {
      v399 = 0;
      __src = 0;
      v400 = 0;
      v245 = objc_msgSend_dataStart(v241, v237, v244);
      v248 = objc_msgSend_stride(v241, v246, v247);
      if (v132)
      {
        v251 = v248;
        v252 = 0;
        v253 = v337;
        do
        {
          if (v252 + 4 <= objc_msgSend_bufferSize(v241, v249, v250))
          {
            v254 = *(v245 + v252);
            v255 = v399;
            if (v399 >= v400)
            {
              v257 = __src;
              v258 = v399 - __src;
              v259 = (v399 - __src) >> 2;
              v260 = v259 + 1;
              if ((v259 + 1) >> 62)
              {
                sub_239E797B4();
              }

              v261 = v400 - __src;
              if ((v400 - __src) >> 1 > v260)
              {
                v260 = v261 >> 1;
              }

              if (v261 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v262 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v262 = v260;
              }

              if (v262)
              {
                sub_239E79984(&__src, v262);
              }

              *(4 * v259) = v254;
              v256 = 4 * v259 + 4;
              memcpy(0, v257, v258);
              v263 = __src;
              __src = 0;
              v399 = v256;
              v400 = 0;
              if (v263)
              {
                operator delete(v263);
              }
            }

            else
            {
              *v399 = v254;
              v256 = (v255 + 4);
            }

            v399 = v256;
          }

          v252 += v251;
          --v253;
        }

        while (v253);
      }

      v357 = v401;
      if (SHIBYTE(v403) < 0)
      {
        sub_239E5BAE0(&v358, v402, *(&v402 + 1));
      }

      else
      {
        v358 = v402;
        v359 = v403;
      }

      v132 = v337;
      v360 = v404;
      v361 = v405;
      if (v405)
      {
        atomic_fetch_add_explicit((v405 + 8), 1uLL, memory_order_relaxed);
      }

      v283 = objc_msgSend_UTF8String(@"occlusionValue", v249, v250);
      sub_239E552A0(v383, v283);
      v381 = 0;
      v382 = 0;
      v379 = 0;
      v380 = 0;
      v377 = 0;
      v378 = 0;
      sub_239F0B42C(&__dst, &v357, v383, 1, 4, 1, &v381, &v379, &v377);
      sub_239F0D37C(&v418, &__src);
      sub_239F0B2D4(v415, &v459);
      sub_239F0D420(&v406, &v418, v415, 4);
      sub_239F07E40(&__dst, &v406);
      if (v411)
      {
        v412 = v411;
        operator delete(v411);
      }

      if (v408)
      {
        *(&v408 + 1) = v408;
        operator delete(v408);
      }

      if (v416)
      {
        v417 = v416;
        operator delete(v416);
      }

      if (v420)
      {
        v421 = v420;
        operator delete(v420);
      }

      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v397);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v395);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v391 + 8));
      if (SBYTE7(v391) < 0)
      {
        operator delete(__dst);
      }

      if (v384 < 0)
      {
        operator delete(v383[0]);
      }

      v282 = &v357;
LABEL_316:
      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v282);
      if (__src)
      {
        v399 = __src;
        operator delete(__src);
      }
    }
  }

  else
  {
    v241 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v338, v240, @"occlusionValue", 786434);

    if (objc_msgSend_format(v241, v265, v266))
    {
      v399 = 0;
      __src = 0;
      v400 = 0;
      v268 = objc_msgSend_dataStart(v241, v237, v267);
      v271 = objc_msgSend_stride(v241, v269, v270);
      if (v132)
      {
        v274 = v271;
        v275 = 0;
        v276 = v132;
        do
        {
          if (v275 + 8 <= objc_msgSend_bufferSize(v241, v272, v273))
          {
            v277 = *(v268 + v275);
            v278 = *(v268 + v275 + 4);
            *&__dst = __PAIR64__(v278, v277);
            v279 = v399;
            if (v399 >= v400)
            {
              v280 = sub_239F0B0A8(&__src, &__dst);
            }

            else
            {
              *v399 = v277;
              *(v279 + 1) = v278;
              v280 = (v279 + 8);
            }

            v399 = v280;
          }

          v275 += v274;
          --v276;
        }

        while (v276);
      }

      v352 = v401;
      if (SHIBYTE(v403) < 0)
      {
        sub_239E5BAE0(&v353, v402, *(&v402 + 1));
      }

      else
      {
        v353 = v402;
        v354 = v403;
      }

      v355 = v404;
      v356 = v405;
      if (v405)
      {
        atomic_fetch_add_explicit((v405 + 8), 1uLL, memory_order_relaxed);
      }

      v281 = objc_msgSend_UTF8String(@"occlusionValue", v272, v273);
      sub_239E552A0(v383, v281);
      v381 = 0;
      v382 = 0;
      v379 = 0;
      v380 = 0;
      v377 = 0;
      v378 = 0;
      sub_239F0EC18(&__dst, &v352, v383, 1, 4, 1, &v381, &v379, &v377);
      sub_239F0B230(&v418, &__src);
      sub_239F0B2D4(v415, &v459);
      sub_239F0B378(&v406, &v418, v415, 4);
      sub_239F084DC(&__dst, &v406);
      if (v411)
      {
        v412 = v411;
        operator delete(v411);
      }

      if (v408)
      {
        *(&v408 + 1) = v408;
        operator delete(v408);
      }

      if (v416)
      {
        v417 = v416;
        operator delete(v416);
      }

      if (v420)
      {
        v421 = v420;
        operator delete(v420);
      }

      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v397);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v395);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v391 + 8));
      if (SBYTE7(v391) < 0)
      {
        operator delete(__dst);
      }

      if (v384 < 0)
      {
        operator delete(v383[0]);
      }

      v282 = &v352;
      goto LABEL_316;
    }
  }

  v264 = v241;
LABEL_319:
  v284 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v338, v237, @"color");

  if (v284)
  {
    if (objc_msgSend_format(v284, v285, v286))
    {
      if ((objc_msgSend_format(v284, v287, v288) & 0xF) == 1)
      {
        v290 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v338, v289, @"color", 786433);

        if (objc_msgSend_format(v290, v291, v292))
        {
          v399 = 0;
          __src = 0;
          v400 = 0;
          v295 = objc_msgSend_dataStart(v290, v293, v294);
          v298 = objc_msgSend_stride(v290, v296, v297);
          if (v132)
          {
            v301 = v298;
            v302 = 0;
            do
            {
              if (v302 + 4 <= objc_msgSend_bufferSize(v290, v299, v300))
              {
                v303 = v132;
                v304 = *(v295 + v302);
                v305 = v399;
                if (v399 >= v400)
                {
                  v307 = __src;
                  v308 = v399 - __src;
                  v309 = (v399 - __src) >> 2;
                  v310 = v309 + 1;
                  if ((v309 + 1) >> 62)
                  {
                    sub_239E797B4();
                  }

                  v311 = v400 - __src;
                  if ((v400 - __src) >> 1 > v310)
                  {
                    v310 = v311 >> 1;
                  }

                  if (v311 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v312 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v312 = v310;
                  }

                  if (v312)
                  {
                    sub_239E79984(&__src, v312);
                  }

                  *(4 * v309) = v304;
                  v306 = 4 * v309 + 4;
                  memcpy(0, v307, v308);
                  v313 = __src;
                  __src = 0;
                  v399 = v306;
                  v400 = 0;
                  if (v313)
                  {
                    operator delete(v313);
                  }
                }

                else
                {
                  *v399 = v304;
                  v306 = (v305 + 4);
                }

                v399 = v306;
                v132 = v303;
              }

              v302 += v301;
              --v132;
            }

            while (v132);
          }

          v347 = v401;
          if (SHIBYTE(v403) < 0)
          {
            sub_239E5BAE0(&v348, v402, *(&v402 + 1));
          }

          else
          {
            v348 = v402;
            v349 = v403;
          }

          v350 = v404;
          v351 = v405;
          if (v405)
          {
            atomic_fetch_add_explicit((v405 + 8), 1uLL, memory_order_relaxed);
          }

          v333 = objc_msgSend_UTF8String(@"color", v299, v300);
          sub_239E552A0(v383, v333);
          v381 = 0;
          v382 = 0;
          v379 = 0;
          v380 = 0;
          v377 = 0;
          v378 = 0;
          sub_239F0B42C(&__dst, &v347, v383, 1, 4, 1, &v381, &v379, &v377);
          sub_239F0D37C(&v418, &__src);
          sub_239F0B2D4(v415, &v459);
          sub_239F0D420(&v406, &v418, v415, 4);
          sub_239F07E40(&__dst, &v406);
          if (v411)
          {
            v412 = v411;
            operator delete(v411);
          }

          if (v408)
          {
            *(&v408 + 1) = v408;
            operator delete(v408);
          }

          if (v416)
          {
            v417 = v416;
            operator delete(v416);
          }

          if (v420)
          {
            v421 = v420;
            operator delete(v420);
          }

          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v397);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v395);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v391 + 8));
          if (SBYTE7(v391) < 0)
          {
            operator delete(__dst);
          }

          if (v384 < 0)
          {
            operator delete(v383[0]);
          }

          v332 = &v347;
LABEL_387:
          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v332);
          if (__src)
          {
            v399 = __src;
            operator delete(__src);
          }
        }
      }

      else
      {
        v290 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v338, v289, @"color", 786435);

        if (objc_msgSend_format(v290, v314, v315))
        {
          v399 = 0;
          __src = 0;
          v400 = 0;
          v318 = objc_msgSend_dataStart(v290, v316, v317);
          v321 = objc_msgSend_stride(v290, v319, v320);
          if (v132)
          {
            v324 = v321;
            v325 = 0;
            do
            {
              if (v325 + 12 <= objc_msgSend_bufferSize(v290, v322, v323))
              {
                v326 = *(v318 + v325);
                v327 = *(v318 + v325 + 4);
                v328 = *(v318 + v325 + 8);
                *&__dst = __PAIR64__(v327, v326);
                DWORD2(__dst) = v328;
                v329 = v399;
                if (v399 >= v400)
                {
                  v330 = sub_239F08808(&__src, &__dst);
                }

                else
                {
                  *v399 = v326;
                  *(v329 + 1) = v327;
                  v330 = (v329 + 12);
                  *(v329 + 2) = v328;
                }

                v399 = v330;
              }

              v325 += v324;
              --v132;
            }

            while (v132);
          }

          v342 = v401;
          if (SHIBYTE(v403) < 0)
          {
            sub_239E5BAE0(&v343, v402, *(&v402 + 1));
          }

          else
          {
            v343 = v402;
            v344 = v403;
          }

          v345 = v404;
          v346 = v405;
          if (v405)
          {
            atomic_fetch_add_explicit((v405 + 8), 1uLL, memory_order_relaxed);
          }

          v331 = objc_msgSend_UTF8String(@"color", v322, v323);
          sub_239E552A0(v383, v331);
          v381 = 0;
          v382 = 0;
          v379 = 0;
          v380 = 0;
          v377 = 0;
          v378 = 0;
          sub_239F0D4D4(&__dst, &v342, v383, 1, 4, 1, &v381, &v379, &v377);
          sub_239F0EAB4(&v418, &__src);
          sub_239F0B2D4(v415, &v459);
          sub_239F0EB64(&v406, &v418, v415, 4);
          sub_239F081B4(&__dst, &v406);
          if (v411)
          {
            v412 = v411;
            operator delete(v411);
          }

          if (v408)
          {
            *(&v408 + 1) = v408;
            operator delete(v408);
          }

          if (v416)
          {
            v417 = v416;
            operator delete(v416);
          }

          if (v420)
          {
            v421 = v420;
            operator delete(v420);
          }

          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v397);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v395);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v391 + 8));
          if (SBYTE7(v391) < 0)
          {
            operator delete(__dst);
          }

          if (v384 < 0)
          {
            operator delete(v383[0]);
          }

          v332 = &v342;
          goto LABEL_387;
        }
      }
    }

    else
    {
      v290 = v284;
    }
  }

  else
  {
    v290 = 0;
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v401);
  sub_239F11BF0(&v422);
  *&v446 = &unk_284D17428;
  sub_239F1169C(&v448[1] + 8);
  Alembic::Abc::v12::OObject::~OObject(&v446);
  if (SHIBYTE(v455) < 0)
  {
    operator delete(v454);
  }

LABEL_391:
  if (v456)
  {
    v457 = v456;
    operator delete(v456);
  }

  if (v459)
  {
    v460 = v459;
    operator delete(v459);
  }

  if (v462)
  {
    v463 = v462;
    operator delete(v462);
  }

  if (v465)
  {
    v466 = v465;
    operator delete(v465);
  }
}

void sub_239F05664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  v21 = *(v19 - 208);
  if (v21)
  {
    *(v19 - 200) = v21;
    operator delete(v21);
  }

  v22 = *(v19 - 184);
  if (v22)
  {
    *(v19 - 176) = v22;
    operator delete(v22);
  }

  v23 = *(v19 - 160);
  if (v23)
  {
    *(v19 - 152) = v23;
    operator delete(v23);
  }

  v24 = *(v19 - 136);
  if (v24)
  {
    *(v19 - 128) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239F05E7C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 2;
  v12 = (a1 + 8);
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D17468;
  sub_239F06C30(a1 + 56);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = *(a2 + 8);
  __p[1] = 0;
  *&v37[0] = 0;
  __p[0] = &__p[1];
  LODWORD(v51) = v13;
  sub_239F07444(&v51 + 1, __p);
  LODWORD(v54) = 0;
  v53 = 0u;
  *(&v54 + 4) = 1;
  sub_239E91CE0(__p, __p[1]);
  sub_239F0669C(a4, &v51);
  sub_239F0669C(a5, &v51);
  sub_239F0669C(a6, &v51);
  *v12 = v51;
  v49 = v12;
  v50 = "OSchemaObject::OSchemaObject( OObject)";
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v15)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    *__p = 0u;
    sub_239EE76F8(__p);
    sub_239E98B94(v37, "NULL Parent ObjectWriter in OSchemaObject ctor", 46);
    __str = 0u;
    __str_16 = 0u;
    std::stringbuf::str();
    sub_239F072EC(&__str, &v47);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v27 = sub_239F073B0(exception, &__str);
    __cxa_throw(v27, &unk_284D178C8, sub_239F06748);
  }

  v47 = 0uLL;
  v48 = 0;
  sub_239F07444(&v47, &v51 + 1);
  if (DWORD2(v54) == 1)
  {
    v16 = 1;
  }

  else
  {
    sub_239E552A0(__p, "schema");
    sub_239E552A0(&__str, "AbcGeom_Xform_v3");
    v40 = __p;
    v17 = sub_239F075C4(&v47, __p);
    std::string::operator=((v17 + 56), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v37[0]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_239E552A0(__p, "schemaObjTitle");
    sub_239F0674C(&__str);
    v40 = __p;
    v18 = sub_239F075C4(&v47, __p);
    std::string::operator=((v18 + 56), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v37[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = 0;
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  __str = 0u;
  __str_16 = 0u;
  sub_239F0771C(&__str, a3, &v47);
  (*(*v15 + 80))(__p, v15, &__str);
  v19 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v20 = *(a1 + 48);
  *(a1 + 40) = v19;
  if (v20)
  {
    sub_239E9A9B4(v20);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  v21 = v53;
  if (*(&v53 + 1))
  {
    atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v21)
  {
    (*(*v15 + 24))(__p, v15);
    v22 = (*(*__p[0] + 48))(__p[0], v21);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  else
  {
    v22 = v54;
  }

  v41[1] = 0;
  v41[0] = 0;
  v40 = v41;
  if (DWORD2(v54) == 1)
  {
    sub_239E552A0(__p, "replace");
    sub_239E552A0(&v39, "1");
    v32 = __p;
    v23 = sub_239F075C4(&v40, __p);
    std::string::operator=((v23 + 56), &v39);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v37[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(**(a1 + 40) + 40))(&v34);
  sub_239E552A0(&v39, ".xform");
  v24 = *v12;
  LODWORD(v32) = 1;
  v33 = v24;
  v31[0] = 2;
  v31[2] = v22;
  v29 = 3;
  v30 = &v40;
  v28[0] = 6;
  v28[2] = v16;
  MEMORY[0x23EE7F0C0](__p, &v34, &v39, &v32, v31, &v29, v28);
  sub_239F0682C(a1 + 56, __p);
  sub_239F079E8(__p);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v35)
  {
    sub_239E9A9B4(v35);
  }

  sub_239E91CE0(&v40, v41[0]);
  if (*(&v21 + 1))
  {
    sub_239E9A9B4(*(&v21 + 1));
  }

  sub_239E91CE0(&v45, *(&v45 + 1));
  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&__str_16 + 1));
  }

  if (SBYTE7(__str_16) < 0)
  {
    operator delete(__str);
  }

  sub_239E91CE0(&v47, *(&v47 + 1));
  if (v14)
  {
    sub_239E9A9B4(v14);
  }

  if (*(&v53 + 1))
  {
    sub_239E9A9B4(*(&v53 + 1));
  }

  sub_239E91CE0(&v51 + 8, v52);
  return a1;
}

void sub_239F06450(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(__p, a12);
  sub_239F0740C((v14 - 256));
  sub_239EB746C(__p);
  if (v13)
  {
    sub_239E9A9B4(v13);
  }

  __cxa_begin_catch(a1);
  sub_239F07AA4(v12 + 56);
  sub_239F07B3C(v12);
  if (a2 == 2)
  {
    sub_239F06B1C((v14 - 160));
  }

  else
  {
    sub_239F06AAC((v14 - 160));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F06364);
}

void sub_239F06620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 233) < 0)
  {
    operator delete(*(v24 - 256));
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x239F0656CLL);
}

void sub_239F06678(_Unwind_Exception *a1)
{
  sub_239F06B8C(v2 - 144);
  sub_239F079E8(v1 + 56);
  Alembic::Abc::v12::OObject::~OObject(v1);
  _Unwind_Resume(a1);
}

void sub_239F0669C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 > 3)
  {
    switch(v2)
    {
      case 4:
        v4 = *(a1 + 8);
        v6 = *v4;
        v5 = v4[1];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        v7 = *(a2 + 40);
        *(a2 + 32) = v6;
        *(a2 + 40) = v5;
        if (v7)
        {
          sub_239E9A9B4(v7);
        }

        break;
      case 5:
        *(a2 + 52) = *(a1 + 8);
        break;
      case 6:
        *(a2 + 56) = *(a1 + 8);
        break;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        *a2 = *(a1 + 8);
        break;
      case 2:
        *(a2 + 48) = *(a1 + 8);
        break;
      case 3:
        v3 = *(a1 + 8);
        if (a2 + 8 != v3)
        {
          sub_239F06E50((a2 + 8), *v3, (v3 + 8));
        }

        break;
    }
  }
}

void sub_239F0674C(std::string *a1@<X8>)
{
  sub_239E552A0(&v5, ":");
  v2 = std::string::insert(&v5, 0, "AbcGeom_Xform_v3");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v6.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v6, ".xform");
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_239F067F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F0682C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6)
  {
    sub_239E9A9B4(v6);
  }

  v7 = *(a2 + 56);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v7;
  if (a1 != a2)
  {
    sub_239F077C0((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
  }

  *(a1 + 112) = *(a2 + 112);
  std::string::operator=((a1 + 120), (a2 + 120));
  v9 = *(a2 + 144);
  v8 = *(a2 + 152);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 152);
  *(a1 + 144) = v9;
  *(a1 + 152) = v8;
  if (v10)
  {
    sub_239E9A9B4(v10);
  }

  v11 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v12 = *(a1 + 168);
  *(a1 + 160) = v11;
  if (v12)
  {
    sub_239E9A9B4(v12);
  }

  v13 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v14 = *(a1 + 184);
  *(a1 + 176) = v13;
  if (v14)
  {
    sub_239E9A9B4(v14);
  }

  *(a1 + 192) = *(a2 + 192);
  std::string::operator=((a1 + 200), (a2 + 200));
  v16 = *(a2 + 224);
  v15 = *(a2 + 232);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 232);
  *(a1 + 224) = v16;
  *(a1 + 232) = v15;
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  *(a1 + 240) = *(a2 + 240);
  std::string::operator=((a1 + 248), (a2 + 248));
  v19 = *(a2 + 272);
  v18 = *(a2 + 280);
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 280);
  *(a1 + 272) = v19;
  *(a1 + 280) = v18;
  if (v20)
  {
    sub_239E9A9B4(v20);
  }

  *(a1 + 288) = *(a2 + 288);
  sub_239F07928((a1 + 296));
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  std::string::operator=((a1 + 352), (a2 + 352));
  v22 = *(a2 + 376);
  v21 = *(a2 + 384);
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 384);
  *(a1 + 376) = v22;
  *(a1 + 384) = v21;
  if (v23)
  {
    sub_239E9A9B4(v23);
  }

  *(a1 + 392) = *(a2 + 392);
  std::string::operator=((a1 + 400), (a2 + 400));
  v25 = *(a2 + 424);
  v24 = *(a2 + 432);
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = *(a1 + 432);
  *(a1 + 424) = v25;
  *(a1 + 432) = v24;
  if (v26)
  {
    sub_239E9A9B4(v26);
  }

  v27 = *(a2 + 440);
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  v28 = *(a1 + 448);
  *(a1 + 440) = v27;
  if (v28)
  {
    sub_239E9A9B4(v28);
  }

  return a1;
}

uint64_t sub_239F06A5C(uint64_t a1)
{
  sub_239E91CE0(a1 + 48, *(a1 + 56));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F06AAC(uint64_t *a1)
{
  v1 = *a1;
  sub_239E552A0(&__p, a1[1]);
  Alembic::Abc::v12::ErrorHandler::operator()();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_239F06B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F06B1C(uint64_t *a1)
{
  v1 = *a1;
  sub_239E552A0(&__p, a1[1]);
  Alembic::Abc::v12::ErrorHandler::operator()();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_239F06B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F06B8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  sub_239E91CE0(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_239F06BC8(Alembic::Abc::v12::OObject *a1)
{
  *a1 = &unk_284D17468;
  sub_239F079E8(a1 + 56);
  Alembic::Abc::v12::OObject::~OObject(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F06C30(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D173B0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 127;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 2;
  sub_239E552A0((a1 + 120), "");
  *(a1 + 192) = 2;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  sub_239E552A0((a1 + 200), "");
  *(a1 + 240) = 2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_239E552A0((a1 + 248), "");
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  Alembic::AbcGeom::v12::XformSample::XformSample((a1 + 288));
  *(a1 + 336) = 1;
  *(a1 + 344) = 2;
  sub_239E552A0((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_239E552A0((a1 + 400), "");
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 336) = 1;
  return a1;
}

void sub_239F06D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v10 + 344));
  a10 = (v10 + 296);
  sub_239F11CE8(&a10);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v14);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v13);
  v17 = *(v10 + 184);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  v18 = *(v10 + 168);
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v12);
  v19 = *v15;
  if (*v15)
  {
    *(v10 + 96) = v19;
    operator delete(v19);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v11);
  _Unwind_Resume(a1);
}

void sub_239F06E18(uint64_t a1)
{
  sub_239F079E8(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t **sub_239F06E50(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_239F07060(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v16 = 0;
          v10 = sub_239F06FE4(v5, &v16, v15 + 4);
          sub_239E5B7B4(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_239F07060(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_239F070B4(&v13);
  }

  if (a2 != a3)
  {
    sub_239F0710C();
  }

  return result;
}

void *sub_239F06FE4(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_239E5BA74(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *sub_239F07060(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_239F070B4(uint64_t a1)
{
  sub_239E91CE0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_239E91CE0(*a1, v2);
  }

  return a1;
}

void sub_239F0710C()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_239F07194();
}

void sub_239F07180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239F0720C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239F0720C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_239E91D3C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_239F07258(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_239E5BAE0(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_239F072D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F072EC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  *a1 = &unk_284D17400;
  return a1;
}

void sub_239F0735C(std::exception *a1)
{
  sub_239F0740C(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F07394(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_239F073B0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v3 = (a2 + 8);
  v4 = v5;
  if (v3[23] < 0)
  {
    v3 = v4;
  }

  sub_239E552A0((a1 + 8), v3);
  *a1 = &unk_284D17400;
  return a1;
}

std::exception *sub_239F0740C(std::exception *a1)
{
  std::exception::~exception(a1);
  if (*(v2 + 31) < 0)
  {
    operator delete(a1[1].__vftable);
  }

  return a1;
}

void *sub_239F07444(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_239F0749C(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_239F0749C(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_239F07524(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_239F07524(void *a1, uint64_t a2, const void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_239E5BD88(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_239F07194();
  }

  return v3;
}

uint64_t sub_239F075C4(uint64_t a1, const void **a2)
{
  v7 = 0;
  v2 = *sub_239E5B718(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_239F07678();
  }

  return v2;
}

void *sub_239F0771C(void *__dst, __int128 *a2, const void ***a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_239E552A0(__dst + 24, "");
  sub_239F07444(__dst + 6, a3);
  return __dst;
}

void sub_239F0778C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F077C0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_239F078EC(v6, v10);
    }

    sub_239E797B4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void sub_239F078EC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_239E95BB4(a1, a2);
  }

  sub_239E797B4();
}

void sub_239F07928(void **a1)
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
        v3 -= 56;
        sub_239F07994(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_239F07994(uint64_t a1, uint64_t a2)
{
  sub_239E79AAC(a2 + 32, *(a2 + 40));
  v3 = *(a2 + 8);
  if (v3)
  {
    *(a2 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t sub_239F079E8(uint64_t a1)
{
  *a1 = &unk_284D173B0;
  v2 = *(a1 + 448);
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 392));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 344));
  v7 = (a1 + 296);
  sub_239F11CE8(&v7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 240));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 192));
  v3 = *(a1 + 184);
  if (v3)
  {
    sub_239E9A9B4(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    sub_239E9A9B4(v4);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 112));
  v5 = *(a1 + 88);
  if (v5)
  {
    *(a1 + 96) = v5;
    operator delete(v5);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

void sub_239F07AA4(uint64_t a1)
{
  sub_239F07B88(a1 + 112);
  sub_239F07B88(a1 + 192);
  v2 = *(a1 + 168);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  v3 = *(a1 + 184);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (v3)
  {
    sub_239E9A9B4(v3);
  }

  Alembic::AbcGeom::v12::XformSample::reset((a1 + 288));
  v4 = *(a1 + 448);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  if (v4)
  {
    sub_239E9A9B4(v4);
  }

  sub_239F07B88(a1 + 344);
  sub_239F07B88(a1 + 392);
  *(a1 + 72) = 0;
  *(a1 + 336) = 1;

  sub_239F07B88(a1 + 8);
}

void sub_239F07B3C(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  JUMPOUT(0x23EE7FFA0);
}

void sub_239F07B88(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  JUMPOUT(0x23EE7FFA0);
}

void *sub_239F07BD4(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

_BYTE *sub_239F07C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1 + 8;
  v22 = "OGeomBaseSchema::getArbGeomParams()";
  v4 = *(a1 + 183);
  if (v4 < 0)
  {
    if (!*(a1 + 168))
    {
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 183))
  {
LABEL_5:
    if (*(a1 + 184))
    {
      goto LABEL_17;
    }
  }

  v5 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239E552A0(__p, ".arbGeomParams");
  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  MEMORY[0x23EE7EFD0](&v17, &v15, __p, v12, v11);
  *(a1 + 152) = v17;
  std::string::operator=((a1 + 160), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 192);
  *(a1 + 184) = v7;
  *(a1 + 192) = v6;
  if (v8)
  {
    sub_239E9A9B4(v8);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_239E9A9B4(v16);
  }

  LOBYTE(v4) = *(a1 + 183);
LABEL_17:
  *a2 = *(a1 + 152);
  result = (a2 + 8);
  if ((v4 & 0x80) != 0)
  {
    result = sub_239E5BAE0(result, *(a1 + 160), *(a1 + 168));
  }

  else
  {
    *result = *(a1 + 160);
    *(a2 + 24) = *(a1 + 176);
  }

  v10 = *(a1 + 192);
  *(a2 + 32) = *(a1 + 184);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_239F07D74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_239F06B1C((v23 - 48));
  }

  else
  {
    sub_239F06AAC((v23 - 48));
  }

  __cxa_end_catch();
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *v22 = 0u;
  *v22 = 2;
  sub_239E552A0((v22 + 8), "");
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  JUMPOUT(0x239F07D60);
}

void sub_239F07E40(uint64_t a1, void *a2)
{
  v25 = a1 + 24;
  v26 = "OTypedGeomParam::set()";
  if (!Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 24)))
  {
    Alembic::Abc::v12::OArrayProperty::set();
    if (*(a1 + 120) == 1)
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }

    return;
  }

  v20 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    sub_239E5BAE0(&v21, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
  }

  v4 = *(a1 + 64);
  v23 = *(a1 + 56);
  v24 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 5);
  *v16 = *a2;
  *&v16[5] = v5;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_239F0AB2C(&__p, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  if (SHIBYTE(v22) < 0)
  {
    if (*(&v21 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (HIBYTE(v22))
  {
    goto LABEL_19;
  }

  if (v23)
  {
    if (*&v16[8] == 127 || !*v16 && v18 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v20);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }
  }

LABEL_19:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v20);
  if (*(a1 + 120) == 1)
  {
    v11 = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      sub_239E5BAE0(&v12, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v12 = *(a1 + 80);
      v13 = *(a1 + 96);
    }

    v6 = *(a1 + 112);
    v14 = *(a1 + 104);
    v15 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *v7 = a2[5];
    *&v7[5] = *(a2 + 45);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_239F0AB2C(&v8, a2[7], a2[8], (a2[8] - a2[7]) >> 3);
    if (SHIBYTE(v13) < 0)
    {
      if (!*(&v12 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (!HIBYTE(v13))
    {
LABEL_31:
      if (v14)
      {
        if (*&v7[8] == 127 || !*v7 && v9 == v8)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v11);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set();
        }
      }
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v11);
  }
}

void sub_239F0809C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  __cxa_begin_catch(a1);
  sub_239F09F34(v23);
  if (a2 == 2)
  {
    sub_239F06B1C((v24 - 48));
  }

  else
  {
    sub_239F06AAC((v24 - 48));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F08088);
}

uint64_t sub_239F08168(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 128));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 72));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F081B4(uint64_t a1, void *a2)
{
  v25 = a1 + 24;
  v26 = "OTypedGeomParam::set()";
  if (!Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 24)))
  {
    Alembic::Abc::v12::OArrayProperty::set();
    if (*(a1 + 120) == 1)
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }

    return;
  }

  v20 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    sub_239E5BAE0(&v21, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
  }

  v4 = *(a1 + 64);
  v23 = *(a1 + 56);
  v24 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 5);
  *v16 = *a2;
  *&v16[5] = v5;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_239F0AB2C(&__p, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  if (SHIBYTE(v22) < 0)
  {
    if (*(&v21 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (HIBYTE(v22))
  {
    goto LABEL_19;
  }

  if (v23)
  {
    if (*&v16[8] == 127 || !*v16 && v18 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v20);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }
  }

LABEL_19:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v20);
  if (*(a1 + 120) == 1)
  {
    v11 = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      sub_239E5BAE0(&v12, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v12 = *(a1 + 80);
      v13 = *(a1 + 96);
    }

    v6 = *(a1 + 112);
    v14 = *(a1 + 104);
    v15 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *v7 = a2[5];
    *&v7[5] = *(a2 + 45);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_239F0AB2C(&v8, a2[7], a2[8], (a2[8] - a2[7]) >> 3);
    if (SHIBYTE(v13) < 0)
    {
      if (!*(&v12 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (!HIBYTE(v13))
    {
LABEL_31:
      if (v14)
      {
        if (*&v7[8] == 127 || !*v7 && v9 == v8)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v11);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set();
        }
      }
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v11);
  }
}

void sub_239F08410(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  __cxa_begin_catch(a1);
  sub_239F09F34(v23);
  if (a2 == 2)
  {
    sub_239F06B1C((v24 - 48));
  }

  else
  {
    sub_239F06AAC((v24 - 48));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F083FCLL);
}

void sub_239F084DC(uint64_t a1, void *a2)
{
  v25 = a1 + 24;
  v26 = "OTypedGeomParam::set()";
  if (!Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 24)))
  {
    Alembic::Abc::v12::OArrayProperty::set();
    if (*(a1 + 120) == 1)
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }

    return;
  }

  v20 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    sub_239E5BAE0(&v21, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
  }

  v4 = *(a1 + 64);
  v23 = *(a1 + 56);
  v24 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 5);
  *v16 = *a2;
  *&v16[5] = v5;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_239F0AB2C(&__p, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  if (SHIBYTE(v22) < 0)
  {
    if (*(&v21 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (HIBYTE(v22))
  {
    goto LABEL_19;
  }

  if (v23)
  {
    if (*&v16[8] == 127 || !*v16 && v18 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v20);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }
  }

LABEL_19:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v20);
  if (*(a1 + 120) == 1)
  {
    v11 = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      sub_239E5BAE0(&v12, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v12 = *(a1 + 80);
      v13 = *(a1 + 96);
    }

    v6 = *(a1 + 112);
    v14 = *(a1 + 104);
    v15 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *v7 = a2[5];
    *&v7[5] = *(a2 + 45);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_239F0AB2C(&v8, a2[7], a2[8], (a2[8] - a2[7]) >> 3);
    if (SHIBYTE(v13) < 0)
    {
      if (!*(&v12 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (!HIBYTE(v13))
    {
LABEL_31:
      if (v14)
      {
        if (*&v7[8] == 127 || !*v7 && v9 == v8)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v11);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set();
        }
      }
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v11);
  }
}

void sub_239F08738(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  __cxa_begin_catch(a1);
  sub_239F09F34(v23);
  if (a2 == 2)
  {
    sub_239F06B1C((v24 - 48));
  }

  else
  {
    sub_239F06AAC((v24 - 48));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F08724);
}

uint64_t sub_239F08808(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    sub_239E95B5C(a1, v6);
  }

  v7 = 12 * v2;
  __p = 0;
  v11 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v12 = 12 * v2 + 12;
  v13 = 0;
  sub_239EE8DF8(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 12) % 0xCuLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_239F08930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F08980(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 2;
  v12 = (a1 + 8);
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D17488;
  sub_239F096B0(a1 + 56);
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v13 = *(a2 + 8);
  __p[1] = 0;
  *&v38[0] = 0;
  __p[0] = &__p[1];
  LODWORD(v51) = v13;
  sub_239F07444(&v51 + 1, __p);
  LODWORD(v54) = 0;
  v53 = 0u;
  *(&v54 + 4) = 1;
  sub_239E91CE0(__p, __p[1]);
  sub_239F0669C(a4, &v51);
  sub_239F0669C(a5, &v51);
  sub_239F0669C(a6, &v51);
  *v12 = v51;
  v49 = v12;
  v50 = "OSchemaObject::OSchemaObject( OObject)";
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v15)
  {
    v39 = 0;
    *__p = 0u;
    memset(v38, 0, sizeof(v38));
    sub_239EE76F8(__p);
    sub_239E98B94(v38, "NULL Parent ObjectWriter in OSchemaObject ctor", 46);
    __str_16 = 0u;
    __str = 0u;
    std::stringbuf::str();
    sub_239F072EC(&__str, &v47);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v27 = sub_239F073B0(exception, &__str);
    __cxa_throw(v27, &unk_284D178C8, sub_239F06748);
  }

  v47 = 0uLL;
  v48 = 0;
  sub_239F07444(&v47, &v51 + 1);
  if (DWORD2(v54) == 1)
  {
    v16 = 1;
  }

  else
  {
    sub_239E552A0(__p, "schema");
    sub_239E552A0(&__str, "AbcGeom_SubD_v1");
    v40 = __p;
    v17 = sub_239F075C4(&v47, __p);
    std::string::operator=((v17 + 56), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_239E552A0(__p, "schemaObjTitle");
    sub_239F09178(&__str);
    v40 = __p;
    v18 = sub_239F075C4(&v47, __p);
    std::string::operator=((v18 + 56), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_239E552A0(__p, "schemaBaseType");
    sub_239E552A0(&__str, "AbcGeom_GeomBase_v1");
    v40 = __p;
    v19 = sub_239F075C4(&v47, __p);
    std::string::operator=((v19 + 56), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = 0;
  }

  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  __str_16 = 0u;
  __str = 0u;
  sub_239F0771C(&__str, a3, &v47);
  (*(*v15 + 80))(__p, v15, &__str);
  v20 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v21 = *(a1 + 48);
  *(a1 + 40) = v20;
  if (v21)
  {
    sub_239E9A9B4(v21);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  v22 = v53;
  if (*(&v53 + 1))
  {
    atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v22)
  {
    (*(*v15 + 24))(__p, v15);
    v23 = (*(*__p[0] + 48))(__p[0], v22);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  else
  {
    v23 = v54;
  }

  v41[1] = 0;
  v41[0] = 0;
  v40 = v41;
  (*(**(a1 + 40) + 40))(&v35);
  sub_239E552A0(v33, ".geom");
  v24 = *v12;
  v32[0] = 1;
  v32[2] = v24;
  v31[0] = 2;
  v31[2] = v23;
  v29 = 3;
  v30 = &v40;
  v28[0] = 6;
  v28[2] = v16;
  MEMORY[0x23EE7F070](__p, &v35, v33, v32, v31, &v29, v28);
  sub_239F09258(a1 + 56, __p);
  sub_239F0A868(__p);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36)
  {
    sub_239E9A9B4(v36);
  }

  sub_239E91CE0(&v40, v41[0]);
  if (*(&v22 + 1))
  {
    sub_239E9A9B4(*(&v22 + 1));
  }

  sub_239E91CE0(&v45, *(&v45 + 1));
  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&__str_16 + 1));
  }

  if (SBYTE7(__str_16) < 0)
  {
    operator delete(__str);
  }

  sub_239E91CE0(&v47, *(&v47 + 1));
  if (v14)
  {
    sub_239E9A9B4(v14);
  }

  if (*(&v53 + 1))
  {
    sub_239E9A9B4(*(&v53 + 1));
  }

  sub_239E91CE0(&v51 + 8, v52);
  return a1;
}

void sub_239F08F5C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(__p, a16);
  sub_239F0740C(&STACK[0x520]);
  sub_239EB746C(__p);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  __cxa_begin_catch(a1);
  sub_239F09B88(v16 + 56);
  sub_239F07B3C(v16);
  if (a2 == 2)
  {
    sub_239F06B1C((v18 - 176));
  }

  else
  {
    sub_239F06AAC((v18 - 176));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F08E6CLL);
}

void sub_239F09154(_Unwind_Exception *a1)
{
  sub_239F06B8C(v2 - 160);
  sub_239F0A868(v1 + 56);
  Alembic::Abc::v12::OObject::~OObject(v1);
  _Unwind_Resume(a1);
}

void sub_239F09178(std::string *a1@<X8>)
{
  sub_239E552A0(&v5, ":");
  v2 = std::string::insert(&v5, 0, "AbcGeom_SubD_v1");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v6.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v6, ".geom");
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_239F09224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F09258(uint64_t a1, uint64_t a2)
{
  sub_239F0A5BC(a1, a2);
  *(a1 + 248) = *(a2 + 248);
  std::string::operator=((a1 + 256), (a2 + 256));
  v5 = *(a2 + 280);
  v4 = *(a2 + 288);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 288);
  *(a1 + 280) = v5;
  *(a1 + 288) = v4;
  if (v6)
  {
    sub_239E9A9B4(v6);
  }

  *(a1 + 296) = *(a2 + 296);
  std::string::operator=((a1 + 304), (a2 + 304));
  v8 = *(a2 + 328);
  v7 = *(a2 + 336);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 336);
  *(a1 + 328) = v8;
  *(a1 + 336) = v7;
  if (v9)
  {
    sub_239E9A9B4(v9);
  }

  *(a1 + 344) = *(a2 + 344);
  std::string::operator=((a1 + 352), (a2 + 352));
  v11 = *(a2 + 376);
  v10 = *(a2 + 384);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 384);
  *(a1 + 376) = v11;
  *(a1 + 384) = v10;
  if (v12)
  {
    sub_239E9A9B4(v12);
  }

  *(a1 + 392) = *(a2 + 392);
  std::string::operator=((a1 + 400), (a2 + 400));
  v14 = *(a2 + 424);
  v13 = *(a2 + 432);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 432);
  *(a1 + 424) = v14;
  *(a1 + 432) = v13;
  if (v15)
  {
    sub_239E9A9B4(v15);
  }

  *(a1 + 440) = *(a2 + 440);
  std::string::operator=((a1 + 448), (a2 + 448));
  v17 = *(a2 + 472);
  v16 = *(a2 + 480);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 480);
  *(a1 + 472) = v17;
  *(a1 + 480) = v16;
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  *(a1 + 488) = *(a2 + 488);
  std::string::operator=((a1 + 496), (a2 + 496));
  v19 = *(a2 + 520);
  v20 = *(a2 + 528);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 520) = v19;
  v21 = *(a1 + 528);
  *(a1 + 528) = v20;
  if (v21)
  {
    sub_239E9A9B4(v21);
  }

  *(a1 + 536) = *(a2 + 536);
  std::string::operator=((a1 + 544), (a2 + 544));
  v22 = *(a2 + 568);
  v23 = *(a2 + 576);
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 568) = v22;
  v24 = *(a1 + 576);
  *(a1 + 576) = v23;
  if (v24)
  {
    sub_239E9A9B4(v24);
  }

  *(a1 + 584) = *(a2 + 584);
  std::string::operator=((a1 + 592), (a2 + 592));
  v25 = *(a2 + 616);
  v26 = *(a2 + 624);
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 616) = v25;
  v27 = *(a1 + 624);
  *(a1 + 624) = v26;
  if (v27)
  {
    sub_239E9A9B4(v27);
  }

  *(a1 + 632) = *(a2 + 632);
  std::string::operator=((a1 + 640), (a2 + 640));
  v28 = *(a2 + 664);
  v29 = *(a2 + 672);
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 664) = v28;
  v30 = *(a1 + 672);
  *(a1 + 672) = v29;
  if (v30)
  {
    sub_239E9A9B4(v30);
  }

  *(a1 + 680) = *(a2 + 680);
  std::string::operator=((a1 + 688), (a2 + 688));
  v31 = *(a2 + 712);
  v32 = *(a2 + 720);
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 712) = v31;
  v33 = *(a1 + 720);
  *(a1 + 720) = v32;
  if (v33)
  {
    sub_239E9A9B4(v33);
  }

  *(a1 + 728) = *(a2 + 728);
  std::string::operator=((a1 + 736), (a2 + 736));
  v34 = *(a2 + 760);
  v35 = *(a2 + 768);
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 760) = v34;
  v36 = *(a1 + 768);
  *(a1 + 768) = v35;
  if (v36)
  {
    sub_239E9A9B4(v36);
  }

  *(a1 + 776) = *(a2 + 776);
  std::string::operator=((a1 + 784), (a2 + 784));
  v37 = *(a2 + 808);
  v38 = *(a2 + 816);
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 808) = v37;
  v39 = *(a1 + 816);
  *(a1 + 816) = v38;
  if (v39)
  {
    sub_239E9A9B4(v39);
  }

  *(a1 + 824) = *(a2 + 824);
  std::string::operator=((a1 + 832), (a2 + 832));
  v40 = *(a2 + 856);
  v41 = *(a2 + 864);
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 856) = v40;
  v42 = *(a1 + 864);
  *(a1 + 864) = v41;
  if (v42)
  {
    sub_239E9A9B4(v42);
  }

  *(a1 + 872) = *(a2 + 872);
  std::string::operator=((a1 + 880), (a2 + 880));
  v43 = *(a2 + 904);
  v44 = *(a2 + 912);
  if (v44)
  {
    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 904) = v43;
  v45 = *(a1 + 912);
  *(a1 + 912) = v44;
  if (v45)
  {
    sub_239E9A9B4(v45);
  }

  sub_239F0A6FC(a1 + 920, (a2 + 920));
  v46 = (a1 + 1096);
  if (*(a1 + 1119) < 0)
  {
    operator delete(*v46);
  }

  v47 = *(a2 + 1096);
  *(a1 + 1112) = *(a2 + 1112);
  *v46 = v47;
  *(a2 + 1119) = 0;
  *(a2 + 1096) = 0;
  sub_239F0A7FC(a1 + 1120, (a2 + 1120));
  v48 = *(a2 + 1144);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1144) = v48;
  return a1;
}

void sub_239F09648(Alembic::Abc::v12::OObject *a1)
{
  *a1 = &unk_284D17488;
  sub_239F0A868(a1 + 56);
  Alembic::Abc::v12::OObject::~OObject(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F096B0(uint64_t a1)
{
  v2 = sub_239F099C0(a1);
  *v2 = &unk_284D173D0;
  *(v2 + 248) = 2;
  sub_239E552A0((v2 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_239E552A0((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 2;
  sub_239E552A0((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_239E552A0((a1 + 400), "");
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 2;
  sub_239E552A0((a1 + 448), "");
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 2;
  sub_239E552A0((a1 + 496), "");
  *(a1 + 520) = 0u;
  *(a1 + 536) = 2;
  sub_239E552A0((a1 + 544), "");
  *(a1 + 568) = 0u;
  *(a1 + 584) = 2;
  sub_239E552A0((a1 + 592), "");
  *(a1 + 616) = 0u;
  *(a1 + 632) = 2;
  sub_239E552A0((a1 + 640), "");
  *(a1 + 664) = 0u;
  *(a1 + 680) = 2;
  sub_239E552A0((a1 + 688), "");
  *(a1 + 712) = 0u;
  *(a1 + 728) = 2;
  sub_239E552A0((a1 + 736), "");
  *(a1 + 760) = 0u;
  *(a1 + 776) = 2;
  sub_239E552A0((a1 + 784), "");
  *(a1 + 808) = 0u;
  *(a1 + 824) = 2;
  sub_239E552A0((a1 + 832), "");
  *(a1 + 856) = 0u;
  *(a1 + 872) = 2;
  sub_239E552A0((a1 + 880), "");
  *(a1 + 904) = 0u;
  sub_239F09E5C(a1 + 920);
  *(a1 + 1112) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1120) = a1 + 1128;
  *(a1 + 1144) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0;
  return a1;
}

void sub_239F098CC(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 109));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 103));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 97));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 91));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 85));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 79));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 73));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 67));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 61));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 55));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 49));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 43));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  sub_239F09AE4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239F099C0(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D17350;
  *(a1 + 56) = 2;
  sub_239E552A0((a1 + 64), "");
  *(a1 + 104) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_239E552A0((a1 + 112), "");
  *(a1 + 152) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_239E552A0((a1 + 160), "");
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 2;
  sub_239E552A0((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return a1;
}

void sub_239F09AA0(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v4);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1);
  _Unwind_Resume(a1);
}

void *sub_239F09AE4(void *a1)
{
  *a1 = &unk_284D17350;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_239F09B50(uint64_t a1)
{
  sub_239F0A868(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F09B88(uint64_t a1)
{
  sub_239F07B88(a1 + 248);
  sub_239F07B88(a1 + 296);
  sub_239F07B88(a1 + 344);
  sub_239F07B88(a1 + 392);
  sub_239F07B88(a1 + 440);
  sub_239F07B88(a1 + 488);
  sub_239F07B88(a1 + 536);
  sub_239F07B88(a1 + 584);
  sub_239F07B88(a1 + 632);
  sub_239F07B88(a1 + 680);
  sub_239F07B88(a1 + 728);
  sub_239F07B88(a1 + 776);
  sub_239F07B88(a1 + 824);
  sub_239F07B88(a1 + 872);
  sub_239F09F34(a1 + 920);
  sub_239F09F84(a1 + 1120, *(a1 + 1128));
  *(a1 + 1120) = a1 + 1128;
  *(a1 + 1128) = 0u;

  sub_239F09DDC(a1);
}

uint64_t sub_239F09C50(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 39))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_22;
  }

  if (*(a1 + 279) < 0)
  {
    if (*(a1 + 264))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 279))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 280))
  {
    goto LABEL_22;
  }

  if (*(a1 + 327) < 0)
  {
    if (*(a1 + 312))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 327))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 328))
  {
    goto LABEL_22;
  }

  if (*(a1 + 375) < 0)
  {
    if (!*(a1 + 360))
    {
      goto LABEL_20;
    }

LABEL_22:
    v1 = *(a1 + 1144);
    return v1 & 1;
  }

  if (*(a1 + 375))
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!*(a1 + 376))
  {
    goto LABEL_22;
  }

  v1 = 1;
  return v1 & 1;
}

void *sub_239F09CE4(void *a1)
{
  *a1 = &unk_284D17350;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_239F09D50(void *a1)
{
  *a1 = &unk_284D17350;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  JUMPOUT(0x23EE802C0);
}

void sub_239F09DDC(uint64_t a1)
{
  sub_239F07B88(a1 + 56);
  sub_239F07B88(a1 + 104);
  sub_239F07B88(a1 + 152);
  sub_239F07B88(a1 + 200);

  sub_239F07B88(a1 + 8);
}

BOOL sub_239F09E30(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return 0;
    }
  }

  else if (*(a1 + 39))
  {
    return 0;
  }

  return *(a1 + 40) != 0;
}

uint64_t sub_239F09E5C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  sub_239E552A0((a1 + 32), "");
  *(a1 + 72) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_239E552A0((a1 + 80), "");
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 124) = 0x20000007FLL;
  sub_239E552A0((a1 + 136), "");
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_239F09EF8(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v3);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_239F09F34(uint64_t a1)
{
  MEMORY[0x23EE7FFA0](a1, "");
  sub_239F07B88(a1 + 24);
  sub_239F07B88(a1 + 72);
  sub_239F07B88(a1 + 128);
  *(a1 + 124) = 127;
  *(a1 + 120) = 0;
}

void sub_239F09F84(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_239F09F84(a1, *a2);
    sub_239F09F84(a1, a2[1]);
    sub_239F09FE0((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_239F09FE0(uint64_t a1)
{
  v2 = (a1 + 24);
  *(a1 + 24) = &unk_284D17448;
  *(a1 + 80) = &unk_284D17380;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 376));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 328));
  *(a1 + 80) = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 280));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 232));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 184));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 136));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 88));
  Alembic::Abc::v12::OObject::~OObject(v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F0A0B8(void *a1)
{
  *a1 = &unk_284D17448;
  a1[7] = &unk_284D17380;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 44));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 38));
  a1[7] = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 32));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 26));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 20));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 14));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  Alembic::Abc::v12::OObject::~OObject(a1);
}

void *sub_239F0A17C(void *a1)
{
  *a1 = &unk_284D17380;
  v2 = (a1 + 7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 31));
  *a1 = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1));
  return a1;
}

void sub_239F0A220(void *a1)
{
  *a1 = &unk_284D17448;
  a1[7] = &unk_284D17380;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 44));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 38));
  a1[7] = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 32));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 26));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 20));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 14));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  Alembic::Abc::v12::OObject::~OObject(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F0A2F8(void *a1)
{
  *a1 = &unk_284D17380;
  v2 = (a1 + 7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 31));
  *a1 = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1));

  JUMPOUT(0x23EE802C0);
}

void sub_239F0A3BC(uint64_t a1)
{
  sub_239F07B88(a1 + 248);

  sub_239F0A53C(a1);
}

BOOL sub_239F0A3F8(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (*(a1 + 39))
  {
    return 0;
  }

LABEL_5:
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (*(a1 + 279) < 0)
  {
    if (*(a1 + 264))
    {
      return 0;
    }
  }

  else if (*(a1 + 279))
  {
    return 0;
  }

  return *(a1 + 280) != 0;
}

void *sub_239F0A444(void *a1)
{
  *a1 = &unk_284D17320;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_239F0A4B0(void *a1)
{
  *a1 = &unk_284D17320;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  JUMPOUT(0x23EE802C0);
}

void sub_239F0A53C(uint64_t a1)
{
  sub_239F07B88(a1 + 56);
  sub_239F07B88(a1 + 104);
  sub_239F07B88(a1 + 152);
  sub_239F07B88(a1 + 200);

  sub_239F07B88(a1 + 8);
}

BOOL sub_239F0A590(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return 0;
    }
  }

  else if (*(a1 + 39))
  {
    return 0;
  }

  return *(a1 + 40) != 0;
}

uint64_t sub_239F0A5BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6)
  {
    sub_239E9A9B4(v6);
  }

  *(a1 + 56) = *(a2 + 56);
  std::string::operator=((a1 + 64), (a2 + 64));
  v8 = *(a2 + 88);
  v7 = *(a2 + 96);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 96);
  *(a1 + 88) = v8;
  *(a1 + 96) = v7;
  if (v9)
  {
    sub_239E9A9B4(v9);
  }

  *(a1 + 104) = *(a2 + 104);
  std::string::operator=((a1 + 112), (a2 + 112));
  v11 = *(a2 + 136);
  v10 = *(a2 + 144);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 144);
  *(a1 + 136) = v11;
  *(a1 + 144) = v10;
  if (v12)
  {
    sub_239E9A9B4(v12);
  }

  *(a1 + 152) = *(a2 + 152);
  std::string::operator=((a1 + 160), (a2 + 160));
  v14 = *(a2 + 184);
  v13 = *(a2 + 192);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 192);
  *(a1 + 184) = v14;
  *(a1 + 192) = v13;
  if (v15)
  {
    sub_239E9A9B4(v15);
  }

  *(a1 + 200) = *(a2 + 200);
  std::string::operator=((a1 + 208), (a2 + 208));
  v17 = *(a2 + 232);
  v16 = *(a2 + 240);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 240);
  *(a1 + 232) = v17;
  *(a1 + 240) = v16;
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  return a1;
}

uint64_t sub_239F0A6FC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 6);
  std::string::operator=((a1 + 32), (a2 + 2));
  v6 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 64);
  *(a1 + 56) = v6;
  *(a1 + 64) = v5;
  if (v7)
  {
    sub_239E9A9B4(v7);
  }

  *(a1 + 72) = *(a2 + 18);
  std::string::operator=((a1 + 80), (a2 + 5));
  v9 = *(a2 + 13);
  v8 = *(a2 + 14);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 112);
  *(a1 + 104) = v9;
  *(a1 + 112) = v8;
  if (v10)
  {
    sub_239E9A9B4(v10);
  }

  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 32);
  std::string::operator=((a1 + 136), (a2 + 136));
  v12 = *(a2 + 20);
  v11 = *(a2 + 21);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 168);
  *(a1 + 160) = v12;
  *(a1 + 168) = v11;
  if (v13)
  {
    sub_239E9A9B4(v13);
  }

  return a1;
}

void sub_239F0A7FC(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_239F09F84(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t sub_239F0A868(uint64_t a1)
{
  *a1 = &unk_284D173D0;
  sub_239F09F84(a1 + 1120, *(a1 + 1128));
  if (*(a1 + 1119) < 0)
  {
    operator delete(*(a1 + 1096));
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1048));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 992));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 944));
  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 872));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 824));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 776));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 728));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 680));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 632));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 584));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 536));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 488));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 440));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 248));
  *a1 = &unk_284D17350;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 200));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 152));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 56));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

void *sub_239F0A9A4(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  sub_239F0AA54(&__p, 1uLL);
  *a1 = v3;
  a1[1] = 0x30000000ALL;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C((a1 + 2), __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0AA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0AA54(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_239F078EC(result, a2);
  }

  return result;
}

void sub_239F0AB10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F0AB2C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239F078EC(result, a4);
  }

  return result;
}

void sub_239F0AB8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0ABA8(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 2;
  sub_239F0AA54(&__p, 1uLL);
  *a1 = v3;
  a1[1] = 0x100000006;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C((a1 + 2), __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0AC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F0AC4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v17 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v17;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_239F0AB2C(a1 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v18 = *a3;
  v19 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v19;
  *(a1 + 40) = v18;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239F0AB2C(a1 + 56, a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  v20 = *a4;
  v21 = *(a4 + 5);
  *(a1 + 96) = 0;
  *(a1 + 85) = v21;
  *(a1 + 80) = v20;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_239F0AB2C(a1 + 96, a4[2], a4[3], (a4[3] - a4[2]) >> 3);
  *(a1 + 120) = 0xC0000000C0000000;
  *(a1 + 128) = -1073741824;
  v22 = *a5;
  v23 = *(a5 + 5);
  *(a1 + 152) = 0;
  *(a1 + 141) = v23;
  *(a1 + 136) = v22;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  sub_239F0AB2C(a1 + 152, a5[2], a5[3], (a5[3] - a5[2]) >> 3);
  v24 = *a6;
  v25 = *(a6 + 5);
  *(a1 + 192) = 0;
  *(a1 + 181) = v25;
  *(a1 + 176) = v24;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_239F0AB2C(a1 + 192, a6[2], a6[3], (a6[3] - a6[2]) >> 3);
  v26 = *a7;
  v27 = *(a7 + 5);
  *(a1 + 232) = 0;
  *(a1 + 221) = v27;
  *(a1 + 216) = v26;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_239F0AB2C(a1 + 232, a7[2], a7[3], (a7[3] - a7[2]) >> 3);
  v28 = *a8;
  *(a1 + 261) = *(a8 + 5);
  *(a1 + 256) = v28;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  sub_239F0AB2C(a1 + 272, a8[2], a8[3], (a8[3] - a8[2]) >> 3);
  v29 = *a9;
  *(a1 + 301) = *(a9 + 5);
  *(a1 + 296) = v29;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  sub_239F0AB2C(a1 + 312, a9[2], a9[3], (a9[3] - a9[2]) >> 3);
  v30 = *a10;
  *(a1 + 341) = *(a10 + 5);
  *(a1 + 336) = v30;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  sub_239F0AB2C(a1 + 352, a10[2], a10[3], (a10[3] - a10[2]) >> 3);
  sub_239E552A0((a1 + 376), "catmull-clark");
  *(a1 + 400) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 416) = xmmword_239F9CD40;
  *(a1 + 432) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 448) = 0;
  *(a1 + 456) = 0x30000000ALL;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0x20000000ALL;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0x100000005;
  *(a1 + 544) = 0;
  *(a1 + 560) = 0;
  *(a1 + 552) = 0;
  *(a1 + 568) = 127;
  return a1;
}

void sub_239F0AEEC(_Unwind_Exception *exception_object)
{
  v9 = v1[44];
  if (v9)
  {
    v1[45] = v9;
    operator delete(v9);
  }

  v10 = v1[39];
  if (v10)
  {
    v1[40] = v10;
    operator delete(v10);
  }

  v11 = v1[34];
  if (v11)
  {
    v1[35] = v11;
    operator delete(v11);
  }

  v12 = *v7;
  if (*v7)
  {
    v1[30] = v12;
    operator delete(v12);
  }

  v13 = *v6;
  if (*v6)
  {
    v1[25] = v13;
    operator delete(v13);
  }

  v14 = *v5;
  if (*v5)
  {
    v1[20] = v14;
    operator delete(v14);
  }

  v15 = *v4;
  if (*v4)
  {
    v1[13] = v15;
    operator delete(v15);
  }

  v16 = *v3;
  if (*v3)
  {
    v1[8] = v16;
    operator delete(v16);
  }

  v17 = *v2;
  if (*v2)
  {
    v1[3] = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0AFC8(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = result;
  v7 = *(a2 + 5);
  result[17] = *a2;
  *(result + 141) = v7;
  if (result + 17 != a2)
  {
    result = sub_239F077C0(result + 19, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  }

  v8 = *(a3 + 5);
  v6[22] = *a3;
  *(v6 + 181) = v8;
  if (v6 + 22 != a3)
  {
    result = sub_239F077C0(v6 + 24, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 3);
  }

  v9 = *(a4 + 5);
  v6[27] = *a4;
  *(v6 + 221) = v9;
  if (v6 + 27 != a4)
  {
    v10 = a4[2];
    v11 = a4[3];

    return sub_239F077C0(v6 + 29, v10, v11, (v11 - v10) >> 3);
  }

  return result;
}

uint64_t sub_239F0B0A8(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_239E797B4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_239E95BB4(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  v13 = 0;
  sub_239F0B1C4(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_239F0B18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_239F0B1C4(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void *sub_239F0B230(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 3;
  sub_239F0AA54(&__p, 1uLL);
  *a1 = v3;
  a1[1] = 0x20000000ALL;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C((a1 + 2), __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0B2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0B2D4(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 2;
  sub_239F0AA54(&__p, 1uLL);
  *a1 = v3;
  a1[1] = 0x100000005;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C((a1 + 2), __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0B35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F0B378(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_239F0AB2C(a1 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v8 = *a3;
  v9 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v9;
  *(a1 + 40) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239F0AB2C(a1 + 56, a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  *(a1 + 80) = a4;
  return a1;
}

void sub_239F0B410(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0B42C(void *__dst, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v16 = *a3;
    __dst[2] = *(a3 + 16);
    *__dst = v16;
  }

  *(__dst + 6) = 2;
  sub_239E552A0(__dst + 32, "");
  *(__dst + 18) = 2;
  __dst[7] = 0;
  __dst[8] = 0;
  sub_239E552A0(__dst + 80, "");
  *(__dst + 32) = 2;
  __dst[13] = 0;
  __dst[14] = 0;
  *(__dst + 120) = a4;
  *(__dst + 31) = a5;
  sub_239E552A0(__dst + 136, "");
  __dst[20] = 0;
  __dst[21] = 0;
  v17 = *(a2 + 40);
  v20 = *(a2 + 32);
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239F0B610(__p, &v20, a3, a4, a5, a6, a7, a8, a9);
  sub_239F0A6FC(__dst, __p);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v26);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v24);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    sub_239E9A9B4(v21);
  }

  return __dst;
}

void sub_239F0B5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  sub_239F08168(va);
  if (a6)
  {
    sub_239E9A9B4(a6);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v9);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v8);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v7);
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  _Unwind_Resume(a1);
}

char *sub_239F0B610(char *__dst, uint64_t *a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
    *(__dst + 2) = *(a3 + 16);
    *__dst = v17;
  }

  *(__dst + 6) = 2;
  v49 = __dst + 24;
  sub_239E552A0(__dst + 32, "");
  *(__dst + 18) = 2;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_239E552A0(__dst + 80, "");
  *(__dst + 32) = 2;
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  __dst[120] = a4;
  *(__dst + 31) = a5;
  sub_239E552A0(__dst + 136, "");
  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v84.__locale_ = 0;
  __p[1] = 0;
  __p[0] = &__p[1];
  LODWORD(v94) = 2;
  sub_239F07444(&v94 + 1, __p);
  LODWORD(v97) = 0;
  v96 = 0u;
  *(&v97 + 4) = 1;
  sub_239E91CE0(__p, __p[1]);
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  sub_239F0669C(a7, &v94);
  sub_239F0669C(a8, &v94);
  sub_239F0669C(a9, &v94);
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v19 = sub_239F07444(&v91, &v94 + 1);
  sub_239F0C350(v19, a5);
  sub_239E552A0(__p, "isGeomParam");
  sub_239E552A0(__str, "true");
  v70 = __p;
  v20 = sub_239F075C4(&v91, __p);
  std::string::operator=((v20 + 56), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if (SHIBYTE(v84.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  memset(&v90, 0, sizeof(v90));
  sub_239E552A0(&v90, "float32_t");
  sub_239E552A0(__p, "podName");
  *__str = __p;
  v21 = sub_239F075C4(&v91, __p);
  std::string::operator=((v21 + 56), &v90);
  if (SHIBYTE(v84.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  v89 = 0;
  v87 = 0u;
  memset(v88, 0, sizeof(v88));
  *v85 = 0u;
  v86 = 0u;
  *__p = 0u;
  memset(&v84, 0, 48);
  sub_239F0C5B8(__p);
  MEMORY[0x23EE80160](__p, 1);
  memset(&v82, 0, sizeof(v82));
  std::stringbuf::str();
  sub_239E552A0(__str, "podExtent");
  v70 = __str;
  v22 = sub_239F075C4(&v91, __str);
  std::string::operator=((v22 + 56), &v82);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  v81 = 0;
  v79 = 0u;
  memset(v80, 0, sizeof(v80));
  *v77 = 0u;
  v78 = 0u;
  memset(__str, 0, sizeof(__str));
  sub_239F0C5B8(__str);
  MEMORY[0x23EE80160](__str, a6);
  memset(&v75, 0, sizeof(v75));
  std::stringbuf::str();
  sub_239E552A0(&v70, "arrayExtent");
  v74.__r_.__value_.__r.__words[0] = &v70;
  v23 = sub_239F075C4(&v91, &v70);
  std::string::operator=((v23 + 56), &v75);
  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v70);
  }

  sub_239E552A0(&v70, "interpretation");
  sub_239E552A0(&v74, "");
  v66 = &v70;
  v24 = sub_239F075C4(&v91, &v70);
  std::string::operator=((v24 + 56), &v74);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v70);
  }

  v25 = v94;
  v26 = v96;
  if (*(&v96 + 1))
  {
    atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    v27 = *a2;
    v28 = a2[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v27 + 24))(&v74);
    (*(*v74.__r_.__value_.__l.__data_ + 24))(&v70);
    v29 = (*(*v70 + 48))(v70, v26);
    if (v71.__r_.__value_.__r.__words[0])
    {
      sub_239E9A9B4(v71.__r_.__value_.__l.__data_);
    }

    if (v74.__r_.__value_.__l.__size_)
    {
      sub_239E9A9B4(v74.__r_.__value_.__l.__size_);
    }

    if (v28)
    {
      sub_239E9A9B4(v28);
    }
  }

  else
  {
    v29 = v97;
  }

  if (__dst[120] == 1)
  {
    v30 = a2[1];
    v68 = *a2;
    v69 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = &v91;
    LODWORD(v66) = 1;
    LODWORD(v67) = v25;
    MEMORY[0x23EE7EFD0](&v70, &v68, a3, &v74, &v66);
    *(__dst + 32) = v70;
    std::string::operator=((__dst + 136), &v71);
    v32 = v72;
    v31 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = *(__dst + 21);
    *(__dst + 20) = v32;
    *(__dst + 21) = v31;
    if (v33)
    {
      sub_239E9A9B4(v33);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v70);
    if (v69)
    {
      sub_239E9A9B4(v69);
    }

    v61 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_239E5BAE0(&v62, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v62 = *(__dst + 136);
      v63 = *(__dst + 19);
    }

    v38 = *(__dst + 21);
    v64 = *(__dst + 20);
    v65 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    sub_239E552A0(&v74, ".vals");
    LODWORD(v66) = 3;
    v67 = &v91;
    v59 = 1;
    v60 = v25;
    v57 = 2;
    v58 = v29;
    sub_239F0C844(&v70, &v61, &v74, &v66, &v59, &v57);
    *v49 = v70;
    std::string::operator=((__dst + 32), &v71);
    v40 = v72;
    v39 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v41 = *(__dst + 8);
    *(__dst + 7) = v40;
    *(__dst + 8) = v39;
    if (v41)
    {
      sub_239E9A9B4(v41);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v61);
    v52 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_239E5BAE0(&v53, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v53 = *(__dst + 136);
      v54 = *(__dst + 19);
    }

    v42 = *(__dst + 21);
    v55 = *(__dst + 20);
    v56 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    sub_239E552A0(&v74, ".indices");
    LODWORD(v66) = 2;
    LODWORD(v67) = v29;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    sub_239F0CD74(&v70, &v52, &v74, &v66, &v59, &v57);
    *(__dst + 18) = v70;
    std::string::operator=((__dst + 80), &v71);
    v44 = v72;
    v43 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(__dst + 14);
    *(__dst + 13) = v44;
    *(__dst + 14) = v43;
    if (v45)
    {
      sub_239E9A9B4(v45);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v52);
  }

  else
  {
    v34 = a2[1];
    v50 = *a2;
    v51 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = &v91;
    LODWORD(v66) = 1;
    LODWORD(v67) = v25;
    v59 = 2;
    v60 = v29;
    v57 = 0;
    v58 = 0;
    sub_239F0D2A4(&v70, &v50, a3, &v74, &v66, &v59, &v57);
    *v49 = v70;
    std::string::operator=((__dst + 32), &v71);
    v36 = v72;
    v35 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = *(__dst + 8);
    *(__dst + 7) = v36;
    *(__dst + 8) = v35;
    if (v37)
    {
      sub_239E9A9B4(v37);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (v51)
    {
      sub_239E9A9B4(v51);
    }
  }

  if (*(&v26 + 1))
  {
    sub_239E9A9B4(*(&v26 + 1));
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  *__str = *MEMORY[0x277D82828];
  v46 = *__str;
  v47 = *(MEMORY[0x277D82828] + 24);
  *&__str[*(*__str - 24)] = v47;
  *&__str[8] = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77[1]);
  }

  *&__str[8] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__str[16]);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v80);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  __p[0] = v46;
  *(__p + *(v46 - 3)) = v47;
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85[1]);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v84);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v88);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  sub_239E91CE0(&v91, v92);
  if (*(&v96 + 1))
  {
    sub_239E9A9B4(*(&v96 + 1));
  }

  sub_239E91CE0(&v94 + 8, v95);
  return __dst;
}

void sub_239F0C0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Alembic::Abc::v12::OArrayProperty *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (v51)
  {
    sub_239E9A9B4(v51);
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_239F0C724(&a48);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  sub_239F0C724(&STACK[0x240]);
  if (*(v52 - 185) < 0)
  {
    operator delete(*(v52 - 208));
  }

  sub_239E91CE0(v52 - 184, *(v52 - 176));
  sub_239F06B8C(v52 - 160);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v50);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v49);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(a10);
  if (*(v48 + 23) < 0)
  {
    operator delete(*v48);
  }

  _Unwind_Resume(a1);
}

void sub_239F0C2F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x239F0C288);
}

void sub_239F0C30C()
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  JUMPOUT(0x239F0C2A0);
}

void sub_239F0C324(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    v50 = STACK[0x240];
    JUMPOUT(0x239F0C2ACLL);
  }

  JUMPOUT(0x239F0C2B0);
}

void sub_239F0C350(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      sub_239E552A0(v9, "geoScope");
      sub_239E552A0(&__p, "uni");
      v11 = v9;
      v4 = sub_239F075C4(a1, v9);
      std::string::operator=((v4 + 56), &__p);
    }

    else
    {
      sub_239E552A0(v9, "geoScope");
      sub_239E552A0(&__p, "con");
      v11 = v9;
      v7 = sub_239F075C4(a1, v9);
      std::string::operator=((v7 + 56), &__p);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_239E552A0(v9, "geoScope");
        sub_239E552A0(&__p, "var");
        v11 = v9;
        v5 = sub_239F075C4(a1, v9);
        std::string::operator=((v5 + 56), &__p);
        break;
      case 3:
        sub_239E552A0(v9, "geoScope");
        sub_239E552A0(&__p, "vtx");
        v11 = v9;
        v6 = sub_239F075C4(a1, v9);
        std::string::operator=((v6 + 56), &__p);
        break;
      case 4:
        sub_239E552A0(v9, "geoScope");
        sub_239E552A0(&__p, "fvr");
        v11 = v9;
        v3 = sub_239F075C4(a1, v9);
        std::string::operator=((v3 + 56), &__p);
        break;
      default:
        return;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_239F0C564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239F0C5B8(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_239EE8484((a1 + 1), 16);
  return a1;
}

void sub_239F0C6FC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239F0C724(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x23EE80250](a1 + 112);
  return a1;
}

uint64_t sub_239F0C844(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a2 + 5);
  v16 = *(a2 + 4);
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v15[0] = 1;
  v15[2] = v13;
  sub_239F0C920(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  return a1;
}

void sub_239F0C900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_239E9A9B4(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

void sub_239F0C920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *&v22 = &v22 + 8;
  *(&v22 + 1) = 0;
  LODWORD(v27) = 2;
  *&v23[0] = 0;
  sub_239F07444(&v27 + 1, &v22);
  LODWORD(v30) = 0;
  v29 = 0u;
  *(&v30 + 4) = 1;
  sub_239E91CE0(&v22, *(&v22 + 1));
  sub_239F0669C(a4, &v27);
  sub_239F0669C(a5, &v27);
  sub_239F0669C(a6, &v27);
  sub_239F0669C(a7, &v27);
  *a1 = v27;
  v25 = a1;
  v26 = "OTypedArrayProperty::init()";
  if (!*a2)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v22 = 0u;
    sub_239EE76F8(&v22);
    sub_239E98B94(v23, "NULL CompoundPropertyWriterPtr", 30);
    memset(v21, 0, sizeof(v21));
    std::stringbuf::str();
    sub_239F072EC(v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v18 = sub_239F073B0(exception, v21);
    __cxa_throw(v18, &unk_284D178C8, sub_239F06748);
  }

  v22 = 0uLL;
  *&v23[0] = 0;
  sub_239F07444(&v22, &v27 + 1);
  v13 = v29;
  if (*(&v29 + 1))
  {
    atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a2;
  if (v13)
  {
    (*(*v14 + 24))(__p);
    (*(*__p[0] + 24))(v21);
    (*(**&v21[0] + 48))(*&v21[0], v13);
    if (*(&v21[0] + 1))
    {
      sub_239E9A9B4(*(&v21[0] + 1));
    }

    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }

    v14 = *a2;
  }

  BYTE4(__p[0]) = 1;
  LODWORD(__p[0]) = 10;
  (*(*v14 + 104))(v21);
  v15 = v21[0];
  v21[0] = 0uLL;
  v16 = *(a1 + 40);
  *(a1 + 32) = v15;
  if (v16)
  {
    sub_239E9A9B4(v16);
    if (*(&v21[0] + 1))
    {
      sub_239E9A9B4(*(&v21[0] + 1));
    }
  }

  if (*(&v13 + 1))
  {
    sub_239E9A9B4(*(&v13 + 1));
  }

  sub_239E91CE0(&v22, *(&v22 + 1));
  if (*(&v29 + 1))
  {
    sub_239E9A9B4(*(&v29 + 1));
  }

  sub_239E91CE0(&v27 + 8, v28);
}

void sub_239F0CC4C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v10.__vftable = va_arg(va1, std::exception_vtbl *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_239F0740C(va);
  sub_239EB746C(va1);
  __cxa_begin_catch(a1);
  sub_239F07B88(v6);
  if (a2 == 2)
  {
    sub_239F06B1C((v7 - 160));
  }

  else
  {
    sub_239F06AAC((v7 - 160));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F0CB64);
}

uint64_t sub_239F0CD74(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a2 + 5);
  v16 = *(a2 + 4);
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v15[0] = 1;
  v15[2] = v13;
  sub_239F0CE50(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  return a1;
}

void sub_239F0CE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_239E9A9B4(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

void sub_239F0CE50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *&v22 = &v22 + 8;
  *(&v22 + 1) = 0;
  LODWORD(v27) = 2;
  *&v23[0] = 0;
  sub_239F07444(&v27 + 1, &v22);
  LODWORD(v30) = 0;
  v29 = 0u;
  *(&v30 + 4) = 1;
  sub_239E91CE0(&v22, *(&v22 + 1));
  sub_239F0669C(a4, &v27);
  sub_239F0669C(a5, &v27);
  sub_239F0669C(a6, &v27);
  sub_239F0669C(a7, &v27);
  *a1 = v27;
  v25 = a1;
  v26 = "OTypedArrayProperty::init()";
  if (!*a2)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v22 = 0u;
    sub_239EE76F8(&v22);
    sub_239E98B94(v23, "NULL CompoundPropertyWriterPtr", 30);
    memset(v21, 0, sizeof(v21));
    std::stringbuf::str();
    sub_239F072EC(v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v18 = sub_239F073B0(exception, v21);
    __cxa_throw(v18, &unk_284D178C8, sub_239F06748);
  }

  v22 = 0uLL;
  *&v23[0] = 0;
  sub_239F07444(&v22, &v27 + 1);
  v13 = v29;
  if (*(&v29 + 1))
  {
    atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a2;
  if (v13)
  {
    (*(*v14 + 24))(__p);
    (*(*__p[0] + 24))(v21);
    (*(**&v21[0] + 48))(*&v21[0], v13);
    if (*(&v21[0] + 1))
    {
      sub_239E9A9B4(*(&v21[0] + 1));
    }

    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }

    v14 = *a2;
  }

  BYTE4(__p[0]) = 1;
  LODWORD(__p[0]) = 5;
  (*(*v14 + 104))(v21);
  v15 = v21[0];
  v21[0] = 0uLL;
  v16 = *(a1 + 40);
  *(a1 + 32) = v15;
  if (v16)
  {
    sub_239E9A9B4(v16);
    if (*(&v21[0] + 1))
    {
      sub_239E9A9B4(*(&v21[0] + 1));
    }
  }

  if (*(&v13 + 1))
  {
    sub_239E9A9B4(*(&v13 + 1));
  }

  sub_239E91CE0(&v22, *(&v22 + 1));
  if (*(&v29 + 1))
  {
    sub_239E9A9B4(*(&v29 + 1));
  }

  sub_239E91CE0(&v27 + 8, v28);
}

void sub_239F0D17C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v10.__vftable = va_arg(va1, std::exception_vtbl *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_239F0740C(va);
  sub_239EB746C(va1);
  __cxa_begin_catch(a1);
  sub_239F07B88(v6);
  if (a2 == 2)
  {
    sub_239F06B1C((v7 - 160));
  }

  else
  {
    sub_239F06AAC((v7 - 160));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F0D094);
}

uint64_t sub_239F0D2A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239F0C920(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  return a1;
}

void sub_239F0D35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_239E9A9B4(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void *sub_239F0D37C(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 2;
  sub_239F0AA54(&__p, 1uLL);
  *a1 = v3;
  a1[1] = 0x10000000ALL;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C((a1 + 2), __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0D404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F0D420(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_239F0AB2C(a1 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v8 = *a3;
  v9 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v9;
  *(a1 + 40) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239F0AB2C(a1 + 56, a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  *(a1 + 80) = a4;
  return a1;
}

void sub_239F0D4B8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0D4D4(void *__dst, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v16 = *a3;
    __dst[2] = *(a3 + 16);
    *__dst = v16;
  }

  *(__dst + 6) = 2;
  sub_239E552A0(__dst + 32, "");
  *(__dst + 18) = 2;
  __dst[7] = 0;
  __dst[8] = 0;
  sub_239E552A0(__dst + 80, "");
  *(__dst + 32) = 2;
  __dst[13] = 0;
  __dst[14] = 0;
  *(__dst + 120) = a4;
  *(__dst + 31) = a5;
  sub_239E552A0(__dst + 136, "");
  __dst[20] = 0;
  __dst[21] = 0;
  v17 = *(a2 + 40);
  v20 = *(a2 + 32);
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239F0D6B8(__p, &v20, a3, a4, a5, a6, a7, a8, a9);
  sub_239F0A6FC(__dst, __p);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v26);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v24);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    sub_239E9A9B4(v21);
  }

  return __dst;
}

void sub_239F0D650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  sub_239F08168(va);
  if (a6)
  {
    sub_239E9A9B4(a6);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v9);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v8);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v7);
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  _Unwind_Resume(a1);
}

char *sub_239F0D6B8(char *__dst, uint64_t *a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
    *(__dst + 2) = *(a3 + 16);
    *__dst = v17;
  }

  *(__dst + 6) = 2;
  v49 = __dst + 24;
  sub_239E552A0(__dst + 32, "");
  *(__dst + 18) = 2;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_239E552A0(__dst + 80, "");
  *(__dst + 32) = 2;
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  __dst[120] = a4;
  *(__dst + 31) = a5;
  sub_239E552A0(__dst + 136, "");
  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v84.__locale_ = 0;
  __p[1] = 0;
  __p[0] = &__p[1];
  LODWORD(v94) = 2;
  sub_239F07444(&v94 + 1, __p);
  LODWORD(v97) = 0;
  v96 = 0u;
  *(&v97 + 4) = 1;
  sub_239E91CE0(__p, __p[1]);
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  sub_239F0669C(a7, &v94);
  sub_239F0669C(a8, &v94);
  sub_239F0669C(a9, &v94);
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v19 = sub_239F07444(&v91, &v94 + 1);
  sub_239F0C350(v19, a5);
  sub_239E552A0(__p, "isGeomParam");
  sub_239E552A0(__str, "true");
  v70 = __p;
  v20 = sub_239F075C4(&v91, __p);
  std::string::operator=((v20 + 56), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if (SHIBYTE(v84.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  memset(&v90, 0, sizeof(v90));
  sub_239E552A0(&v90, "float32_t");
  sub_239E552A0(__p, "podName");
  *__str = __p;
  v21 = sub_239F075C4(&v91, __p);
  std::string::operator=((v21 + 56), &v90);
  if (SHIBYTE(v84.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  v89 = 0;
  v87 = 0u;
  memset(v88, 0, sizeof(v88));
  *v85 = 0u;
  v86 = 0u;
  *__p = 0u;
  memset(&v84, 0, 48);
  sub_239F0C5B8(__p);
  MEMORY[0x23EE80160](__p, 3);
  memset(&v82, 0, sizeof(v82));
  std::stringbuf::str();
  sub_239E552A0(__str, "podExtent");
  v70 = __str;
  v22 = sub_239F075C4(&v91, __str);
  std::string::operator=((v22 + 56), &v82);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  v81 = 0;
  v79 = 0u;
  memset(v80, 0, sizeof(v80));
  *v77 = 0u;
  v78 = 0u;
  memset(__str, 0, sizeof(__str));
  sub_239F0C5B8(__str);
  MEMORY[0x23EE80160](__str, a6);
  memset(&v75, 0, sizeof(v75));
  std::stringbuf::str();
  sub_239E552A0(&v70, "arrayExtent");
  v74.__r_.__value_.__r.__words[0] = &v70;
  v23 = sub_239F075C4(&v91, &v70);
  std::string::operator=((v23 + 56), &v75);
  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v70);
  }

  sub_239E552A0(&v70, "interpretation");
  sub_239E552A0(&v74, "vector");
  v66 = &v70;
  v24 = sub_239F075C4(&v91, &v70);
  std::string::operator=((v24 + 56), &v74);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v70);
  }

  v25 = v94;
  v26 = v96;
  if (*(&v96 + 1))
  {
    atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    v27 = *a2;
    v28 = a2[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v27 + 24))(&v74);
    (*(*v74.__r_.__value_.__l.__data_ + 24))(&v70);
    v29 = (*(*v70 + 48))(v70, v26);
    if (v71.__r_.__value_.__r.__words[0])
    {
      sub_239E9A9B4(v71.__r_.__value_.__l.__data_);
    }

    if (v74.__r_.__value_.__l.__size_)
    {
      sub_239E9A9B4(v74.__r_.__value_.__l.__size_);
    }

    if (v28)
    {
      sub_239E9A9B4(v28);
    }
  }

  else
  {
    v29 = v97;
  }

  if (__dst[120] == 1)
  {
    v30 = a2[1];
    v68 = *a2;
    v69 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = &v91;
    LODWORD(v66) = 1;
    LODWORD(v67) = v25;
    MEMORY[0x23EE7EFD0](&v70, &v68, a3, &v74, &v66);
    *(__dst + 32) = v70;
    std::string::operator=((__dst + 136), &v71);
    v32 = v72;
    v31 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = *(__dst + 21);
    *(__dst + 20) = v32;
    *(__dst + 21) = v31;
    if (v33)
    {
      sub_239E9A9B4(v33);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v70);
    if (v69)
    {
      sub_239E9A9B4(v69);
    }

    v61 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_239E5BAE0(&v62, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v62 = *(__dst + 136);
      v63 = *(__dst + 19);
    }

    v38 = *(__dst + 21);
    v64 = *(__dst + 20);
    v65 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    sub_239E552A0(&v74, ".vals");
    LODWORD(v66) = 3;
    v67 = &v91;
    v59 = 1;
    v60 = v25;
    v57 = 2;
    v58 = v29;
    sub_239F0E3F8(&v70, &v61, &v74, &v66, &v59, &v57);
    *v49 = v70;
    std::string::operator=((__dst + 32), &v71);
    v40 = v72;
    v39 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v41 = *(__dst + 8);
    *(__dst + 7) = v40;
    *(__dst + 8) = v39;
    if (v41)
    {
      sub_239E9A9B4(v41);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v61);
    v52 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_239E5BAE0(&v53, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v53 = *(__dst + 136);
      v54 = *(__dst + 19);
    }

    v42 = *(__dst + 21);
    v55 = *(__dst + 20);
    v56 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    sub_239E552A0(&v74, ".indices");
    LODWORD(v66) = 2;
    LODWORD(v67) = v29;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    sub_239F0CD74(&v70, &v52, &v74, &v66, &v59, &v57);
    *(__dst + 18) = v70;
    std::string::operator=((__dst + 80), &v71);
    v44 = v72;
    v43 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(__dst + 14);
    *(__dst + 13) = v44;
    *(__dst + 14) = v43;
    if (v45)
    {
      sub_239E9A9B4(v45);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v52);
  }

  else
  {
    v34 = a2[1];
    v50 = *a2;
    v51 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = &v91;
    LODWORD(v66) = 1;
    LODWORD(v67) = v25;
    v59 = 2;
    v60 = v29;
    v57 = 0;
    v58 = 0;
    sub_239F0E9DC(&v70, &v50, a3, &v74, &v66, &v59, &v57);
    *v49 = v70;
    std::string::operator=((__dst + 32), &v71);
    v36 = v72;
    v35 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = *(__dst + 8);
    *(__dst + 7) = v36;
    *(__dst + 8) = v35;
    if (v37)
    {
      sub_239E9A9B4(v37);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (v51)
    {
      sub_239E9A9B4(v51);
    }
  }

  if (*(&v26 + 1))
  {
    sub_239E9A9B4(*(&v26 + 1));
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  *__str = *MEMORY[0x277D82828];
  v46 = *__str;
  v47 = *(MEMORY[0x277D82828] + 24);
  *&__str[*(*__str - 24)] = v47;
  *&__str[8] = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77[1]);
  }

  *&__str[8] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__str[16]);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v80);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  __p[0] = v46;
  *(__p + *(v46 - 3)) = v47;
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85[1]);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v84);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v88);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  sub_239E91CE0(&v91, v92);
  if (*(&v96 + 1))
  {
    sub_239E9A9B4(*(&v96 + 1));
  }

  sub_239E91CE0(&v94 + 8, v95);
  return __dst;
}