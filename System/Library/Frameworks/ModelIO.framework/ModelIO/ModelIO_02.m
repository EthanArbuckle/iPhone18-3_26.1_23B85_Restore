void sub_239E7871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_239E7B644(va);
  sub_239E7B644(va1);
  sub_239E7B644(va2);
  _Unwind_Resume(a1);
}

id sub_239E78750(uint64_t *a1)
{
  v113[1] = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    sub_239E78EC8(a1[10]);
    v110 = 0;
    v111 = 0;
    v112 = 0;
    __p = 0;
    v108 = 0;
    v109 = 0;
    sub_239E7926C(*a1, &v110);
    sub_239E79370(*a1, &__p);
    v2 = objc_alloc_init(MDLMeshBufferAllocatorDefault);
    v4 = __p;
    v3 = v108;
    v104 = v2;
    v5 = objc_alloc(MEMORY[0x277CBEA90]);
    v103 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v5, v6, __p, v3 - v4, 0);
    v106 = objc_msgSend_newBufferWithData_type_(v2, v7, v103, 2);
    if (objc_msgSend_conformsToProtocol_(v106, v8, &unk_284D24D98))
    {
      v10 = v106;
      v12 = objc_msgSend_stringByAppendingString_(@"Mesh", v11, @"-Indices");
      objc_msgSend_setName_(v10, v13, v12);
    }

    v105 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v9, v110, v111 - v110, 0);
    v14 = objc_opt_new();
    v17 = objc_msgSend_attributes(v14, v15, v16);
    v19 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, 0);
    objc_msgSend_setName_(v19, v20, @"position");

    v23 = objc_msgSend_attributes(v14, v21, v22);
    v25 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 0);
    objc_msgSend_setFormat_(v25, v26, 786435);

    v29 = objc_msgSend_attributes(v14, v27, v28);
    v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0);
    objc_msgSend_setOffset_(v31, v32, 0);

    v35 = objc_msgSend_attributes(v14, v33, v34);
    v37 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 0);
    objc_msgSend_setBufferIndex_(v37, v38, 0);

    v41 = objc_msgSend_attributes(v14, v39, v40);
    v43 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, 1);
    objc_msgSend_setName_(v43, v44, @"normal");

    v47 = objc_msgSend_attributes(v14, v45, v46);
    v49 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 1);
    objc_msgSend_setFormat_(v49, v50, 786435);

    v53 = objc_msgSend_attributes(v14, v51, v52);
    v55 = objc_msgSend_objectAtIndexedSubscript_(v53, v54, 1);
    objc_msgSend_setOffset_(v55, v56, 12);

    v59 = objc_msgSend_attributes(v14, v57, v58);
    v61 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, 1);
    objc_msgSend_setBufferIndex_(v61, v62, 0);

    v65 = objc_msgSend_layouts(v14, v63, v64);
    v67 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, 0);
    objc_msgSend_setStride_(v67, v68, 24);

    v70 = objc_msgSend_newBufferWithData_type_(v2, v69, v105, 1);
    if (objc_msgSend_conformsToProtocol_(v70, v71, &unk_284D24D98))
    {
      v73 = v70;
      v75 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v74, @"%@-%@", @"Mesh", @"position");
      objc_msgSend_setName_(v73, v76, v75);
    }

    if ((atomic_load_explicit(&qword_27DF90E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF90E18))
    {
      v100 = [MDLMaterial alloc];
      v101 = objc_opt_new();
      qword_27DF90E10 = objc_msgSend_initWithName_scatteringFunction_(v100, v102, @"Octree material", v101);

      __cxa_guard_release(&qword_27DF90E18);
    }

    v77 = objc_msgSend_propertyWithSemantic_(qword_27DF90E10, v72, 2);
    objc_msgSend_setFloatValue_(v77, v78, v79, 0.0);
    v81 = objc_msgSend_propertyWithSemantic_(qword_27DF90E10, v80, 6);

    LODWORD(v82) = 1.0;
    objc_msgSend_setFloatValue_(v81, v83, v84, v82);
    v85 = [MDLSubmesh alloc];
    v87 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v85, v86, v106, (v108 - __p) >> 2, 32, 2, qword_27DF90E10);
    v89 = v110;
    v88 = v111;
    v90 = [MDLMesh alloc];
    v113[0] = v87;
    v92 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v91, v113, 1);
    v94 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v90, v93, v70, ((v88 - v89) >> 2) / 6uLL, v14, v92);

    objc_msgSend_setName_(v94, v95, @"Mesh");
    LODWORD(v96) = 1045220557;
    objc_msgSend_addNormalsWithAttributeNamed_creaseThreshold_(v94, v97, @"normal", v96);

    if (__p)
    {
      v108 = __p;
      operator delete(__p);
    }

    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }
  }

  else
  {
    v94 = 0;
  }

  v98 = *MEMORY[0x277D85DE8];

  return v94;
}

void sub_239E78CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  __cxa_guard_abort(&qword_27DF90E18);

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_239E78EC8(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  for (i = *(*(a1 + 1312) + 184); i; i = *i)
  {
    v3 = *(a1 + 1312);
    v6 = *(v3 + 24);
    v4 = v3 + 24;
    v5 = v6;
    if (v6)
    {
      v7 = i[2];
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v7 >= *(v8 + 32))
      {
        v12 = *(v8 + 40);
        v13 = *(v12 + 116);
        v14 = 0;
        v15 = 0;
        memset(v56, 0, sizeof(v56));
        do
        {
          v16 = sub_239E794A0(a1, v12, v14);
          *(v56 + v14) = v16;
          v15 |= (v16 < 0.0) << v14++;
        }

        while (v14 != 8);
        if (v15 && v15 != 255)
        {
          v18 = 0;
          memset(v55, 0, sizeof(v55));
          memset(v54, 0, sizeof(v54));
          v52 = 0uLL;
          v51 = 0u;
          v19 = 12;
          v20 = &byte_239F9B421;
          do
          {
            v21 = *(v20 - 1);
            v22 = v15 >> *v20;
            if ((((v15 >> v21) | v22) & 1) != 0 && (((v15 >> v21) & 1) == 0 || (v22 & 1) == 0))
            {
              v17.i32[0] = 0;
              v24 = *(v12 + 16);
              v23 = *(v12 + 32);
              v25.i64[0] = 0x3F0000003F000000;
              v25.i64[1] = 0x3F0000003F000000;
              v26 = vmulq_f32(vaddq_f32(v24, v23), v25);
              v24.f32[0] = vsubq_f32(v24, v23).f32[0];
              v27 = 0.5 * v24.f32[0];
              v23.i32[0] = v21 & 4;
              *v28.i32 = *v26.i32 + (0.5 * v24.f32[0]);
              v28.i32[1] = v26.i32[1];
              v28.i64[1] = v26.i64[1];
              *v29.i32 = *v26.i32 - (0.5 * v24.f32[0]);
              v29.i32[1] = v26.i32[1];
              v29.i64[1] = v26.i64[1];
              v30 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v23, v17), 0), v29, v28);
              v31 = -(v24.f32[0] * 0.5);
              if ((*(v20 - 1) & 2) != 0)
              {
                v32 = v27;
              }

              else
              {
                v32 = v31;
              }

              v30.f32[1] = v30.f32[1] + v32;
              if (*(v20 - 1))
              {
                *v26.i32 = v27;
              }

              else
              {
                *v26.i32 = v31;
              }

              v30.f32[2] = v30.f32[2] + *v26.i32;
              v26.i32[0] = *v20 & 4;
              v33 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v26, v17), 0), v29, v28);
              if ((*v20 & 2) != 0)
              {
                v34 = v27;
              }

              else
              {
                v34 = v31;
              }

              v33.f32[1] = v33.f32[1] + v34;
              if (*v20)
              {
                v31 = v27;
              }

              v33.f32[2] = v33.f32[2] + v31;
              v35 = vmlaq_n_f32(v30, vsubq_f32(v33, v30), *(v56 + *(v20 - 1)) / (*(v56 + *(v20 - 1)) - *(v56 + *v20)));
              v36 = v35;
              v36.i32[3] = 0;
              v50 = v36;
              v37 = (*(*(a1 + 1312) + 40) + 224 * *(v12 + 144));
              *v38.f32 = sub_239F53B28(v37, v35);
              v39 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37[4], v38.f32[0]), v37[5], *v38.f32, 1), v37[6], v38, 2);
              v40 = vmulq_f32(v39, v39);
              *&v41 = vaddv_f32(*v40.f32) + v40.f32[2];
              *v40.f32 = vrsqrte_f32(v41);
              *v17.i8 = vmul_f32(*v40.f32, *v40.f32);
              v42 = vmulq_n_f32(v39, vmul_f32(vrsqrts_f32(v41, *v17.i8), *v40.f32).f32[0]);
              v51 = vaddq_f32(v42, v51);
              v42.i32[3] = 0;
              v55[v18] = v50;
              v54[v18++] = v42;
            }

            v20 += 2;
            --v19;
          }

          while (v19);
          *v43.i64 = sub_239E71798(v55, v54, v18, &v53, &v52);
          v44 = *(v12 + 16);
          v45 = v43;
          v45.i32[3] = *(v12 + 32);
          v44.i32[3] = v43.i32[0];
          if (vmaxv_u16(vmovn_s32(vcgtq_f32(v45, v44))) & 1) != 0 || (v46 = vmovn_s32(vcgtq_f32(*(v12 + 32), v43)), (v46.i8[2]) || (v47 = v46.i8[4], v48 = v43, (v47))
          {
            v48 = vdivq_f32(v52, vdupq_laneq_s32(v52, 3));
            v48.i32[3] = v43.i32[3];
          }

          *(v12 + 224) = 1;
          *(v12 + 208) = v48;
          *(v12 + 225) = v15;
          *(v12 + 240) = v51;
        }
      }
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_239E7926C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 224))
    {
      goto LABEL_6;
    }

    for (i = 0; i != 64; i += 8)
    {
      sub_239E7926C(*(a1 + 48 + i), a2);
    }

    if (*(a1 + 224))
    {
LABEL_6:
      *(a1 + 256) = ((*(a2 + 8) - *a2) >> 2) / 6uLL;
      v5 = *(a1 + 208);
      sub_239E798A4(a2, &v5);
      v5 = *(a1 + 212);
      sub_239E798A4(a2, &v5);
      v5 = *(a1 + 216);
      sub_239E798A4(a2, &v5);
      v5 = *(a1 + 240);
      sub_239E798A4(a2, &v5);
      v5 = *(a1 + 244);
      sub_239E798A4(a2, &v5);
      v5 = *(a1 + 248);
      sub_239E798A4(a2, &v5);
    }
  }
}

void sub_239E79370(uint64_t a1, const void **a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1 && (*(a1 + 224) & 1) == 0)
  {
    v3 = 0;
    v4 = a1 + 48;
    do
    {
      sub_239E79370(*(v4 + v3), a2);
      v3 += 8;
    }

    while (v3 != 64);
    v5 = &dword_239F9B440;
    v6 = 12;
    do
    {
      v7 = *(v4 + 8 * *(v5 - 1));
      *&v14[0] = *(v4 + 8 * *(v5 - 2));
      *(&v14[0] + 1) = v7;
      v8 = *v5;
      v5 += 3;
      sub_239E79E80(v14, v8, a2);
      --v6;
    }

    while (v6);
    for (i = 0; i != 6; ++i)
    {
      v10 = 0;
      memset(v14, 0, sizeof(v14));
      v11 = &unk_239F9B4C8 + 20 * i;
      v13 = *v11;
      do
      {
        *(v14 + v10) = *(v4 + 8 * *(&v14[-1] + v10));
        ++v10;
      }

      while (v10 != 4);
      sub_239E7A040(v14, *(v11 + 4), a2);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

float sub_239E794A0(uint64_t a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v23.i32[2] = 0;
  v23.i64[0] = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0.0;
  v26 = 0;
  v28 = *(a2 + 116);
  sub_239E761FC(a1, *(a2 + 8), &v23);
  v5 = 0;
  v6 = v23;
  do
  {
    v7 = vaddq_s32(*(a1 + 112 * a3 + 16 * v5), v6);
    v8 = v7.i16[0];
    if (v7.i32[0] < 0)
    {
      goto LABEL_16;
    }

    v9 = v7.i16[2];
    if (v7.i32[1] < 0)
    {
      goto LABEL_16;
    }

    if (v7.i32[2] < 0)
    {
      goto LABEL_16;
    }

    v10 = *(a1 + 1312);
    v11 = vmovn_s32(vcgtq_s32(v10[18], v7));
    if ((v11.i8[0] & 1) == 0)
    {
      goto LABEL_16;
    }

    if ((v11.i8[2] & 1) == 0)
    {
      goto LABEL_16;
    }

    if ((v11.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }

    v14 = v10[1].i64[1];
    v12 = &v10[1].i64[1];
    v13 = v14;
    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = *(v12[15] + 8 * v7.u8[8]) | ((*(v12[12] + 8 * HIBYTE(v9)) | *(v12[15] + 8 * v7.u8[9]) | *(v12[9] + 8 * HIBYTE(v8))) << 24) | *(v12[12] + 8 * v9) | *(v12[9] + 8 * v8);
    v16 = v12;
    do
    {
      v17 = v13[4];
      v18 = v17 >= v15;
      v19 = v17 < v15;
      if (v18)
      {
        v16 = v13;
      }

      v13 = v13[v19];
    }

    while (v13);
    if (v16 != v12 && v15 >= v16[4])
    {
      *(&v24 + v5) = *(v16[5] + 116);
    }

    else
    {
LABEL_16:
      *(&v24 + v5) = 0;
    }

    ++v5;
  }

  while (v5 != 7);
  v20 = *MEMORY[0x277D85DE8];
  v21 = (*&v24 + ((*(&v24 + 1) - *&v24) * 0.5)) + (((*&v25 - (*&v24 + ((*(&v24 + 1) - *&v24) * 0.5))) + ((*(&v25 + 1) - *&v25) * 0.5)) * 0.5);
  return v21 + ((((*&v26 + ((*(&v26 + 1) - *&v26) * 0.5)) - v21) + (((v27 + ((v28 - v27) * 0.5)) - (*&v26 + ((*(&v26 + 1) - *&v26) * 0.5))) * 0.5)) * 0.5);
}

void sub_239E7967C(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_239E797B4();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_239E797E0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239E7983C(exception, a1);
  __cxa_throw(exception, off_278B40278, MEMORY[0x277D825F0]);
}

std::logic_error *sub_239E7983C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_239E79870()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_239E798A4(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_239E797B4();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_239E79984(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_239E79984(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E799CC(uint64_t a1, uint64_t a2)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_239E7B5AC(a1 + 64, a2);
  sub_239ED981C(a1 + 96, v3);
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  return a1;
}

void sub_239E79A74(_Unwind_Exception *a1)
{
  sub_239E7B424(v1 + 64);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  sub_239E79AAC(v2, *v3);
  _Unwind_Resume(a1);
}

void sub_239E79AAC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_239E79AAC(a1, *a2);
    sub_239E79AAC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_239E79B00(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239E79B48(a1, a2);
  }

  else
  {
    sub_239E79CE8(v3, a2);
    result = v4 + 224;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_239E79B48(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    sub_239E797B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_239E79E24(a1, v6);
  }

  __p = 0;
  v10 = 224 * v2;
  v12 = 0;
  sub_239E79CE8(224 * v2, a2);
  v11 = 224 * v2 + 224;
  sub_239E79D84(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = v11 - 224 * ((((v11 - v10 - 224) >> 5) * 0x2492492492492493uLL) >> 64) - 224;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_239E79C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_239E79CE8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  v2 = 64;
  v3 = 176;
  do
  {
    v4 = (a1 + v2);
    *(v4 - 3) = *(a2 + v2 - 48);
    *v4 = *(a2 + v2);
    v5 = a1 + v3;
    *v5 = *(a2 + v3);
    result = *(a2 + v3 + 24);
    *(v5 + 24) = result;
    v2 += 16;
    v3 += 8;
  }

  while (v2 != 112);
  return result;
}

uint64_t *sub_239E79D84(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 + *result - v6;
  if (v6 != *result)
  {
    result = (v4 + *result - v6);
    do
    {
      sub_239E79CE8(result, v5);
      v5 += 224;
      result = (v8 + 224);
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v9 = v3[1];
  v3[1] = a2[2];
  a2[2] = v9;
  v10 = v3[2];
  v3[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void sub_239E79E24(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  sub_239E79870();
}

void sub_239E79E80(void *a1, int a2, const void **a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v4 = a1[1];
    if (v4)
    {
      if (*(*a1 + 224) != 1 || (*(v4 + 224) & 1) == 0)
      {
        v6 = 0;
        v8 = &unk_239F9B540 + 48 * a2;
        do
        {
          v9 = 0;
          v24[0] = 0uLL;
          v10 = &v8[12 * v6];
          *&v23 = *v10;
          v11 = v24;
          v12 = &v23;
          v13 = 1;
          do
          {
            v14 = v13;
            v15 = a1[v9];
            if ((*(v15 + 224) & 1) == 0)
            {
              v15 = *(v15 + 8 * *v12 + 48);
            }

            v13 = 0;
            *v11 = v15;
            v12 = (&v23 + 4);
            v11 = v24 + 1;
            v9 = 1;
          }

          while ((v14 & 1) != 0);
          sub_239E79E80(v24, *(v10 + 2), a3);
          ++v6;
        }

        while (v6 != 4);
        v16 = 0;
        v17 = &unk_239F9B5F0 + 96 * a2;
        do
        {
          v18 = 0;
          memset(v24, 0, sizeof(v24));
          v19 = &v17[24 * v16];
          v23 = *(v19 + 4);
          v20 = &unk_239F9B5D0 + 16 * *v19;
          do
          {
            v21 = a1[*&v20[4 * v18]];
            if ((*(v21 + 224) & 1) == 0)
            {
              v21 = *(v21 + 8 * *(&v24[-1] + v18) + 48);
            }

            *(v24 + v18++) = v21;
          }

          while (v18 != 4);
          sub_239E7A040(v24, *(v19 + 5), a3);
          ++v16;
        }

        while (v16 != 4);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_239E7A040(void *a1, int a2, const void **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*a1 || (v4 = a1[1]) == 0 || (v5 = a1[2]) == 0 || (v6 = a1[3]) == 0)
  {
LABEL_18:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(*a1 + 224) != 1 || *(v4 + 224) != 1 || *(v5 + 224) != 1 || *(v6 + 224) != 1)
  {
    v9 = 0;
    v10 = 1;
    v11 = &unk_239F9B710 + 40 * a2;
    do
    {
      v12 = 0;
      v13 = v10;
      memset(v18, 0, sizeof(v18));
      v14 = &v11[20 * v9];
      v17 = *v14;
      do
      {
        v15 = a1[v12];
        if ((*(v15 + 224) & 1) == 0)
        {
          v15 = *(v15 + 8 * *(&v18[-1] + v12) + 48);
        }

        *(v18 + v12++) = v15;
      }

      while (v12 != 4);
      sub_239E7A040(v18, *(v14 + 4), a3);
      v10 = 0;
      v9 = 1;
    }

    while ((v13 & 1) != 0);
    goto LABEL_18;
  }

  v8 = *MEMORY[0x277D85DE8];

  sub_239E7A1D0(a1, a2, a3);
}

void sub_239E7A1D0(uint64_t a1, int a2, const void **a3)
{
  v4 = 0;
  LOBYTE(v5) = 0;
  v16 = *MEMORY[0x277D85DE8];
  v14 = -1;
  v15 = -1;
  v6 = 0x7FFFFFFF;
  do
  {
    v7 = *(a1 + 8 * v4);
    v8 = *(v7 + 16) - *(v7 + 32);
    if (v8 < v6)
    {
      v5 = *(v7 + 225) >> *(&unk_239F9B420 + 2 * dword_239F9B788[4 * a2 + v4]);
      v6 = v8;
    }

    *(&v14 + v4++) = *(v7 + 256);
  }

  while (v4 != 4);
  v9 = v14;
  v13 = v14;
  if (v5)
  {
    sub_239E73254(a3, &v13);
    v10 = HIDWORD(v15);
    v13 = HIDWORD(v15);
    sub_239E73254(a3, &v13);
    v13 = HIDWORD(v14);
    sub_239E73254(a3, &v13);
    v13 = v9;
    sub_239E73254(a3, &v13);
    v13 = v15;
    sub_239E73254(a3, &v13);
    v13 = v10;
  }

  else
  {
    sub_239E73254(a3, &v13);
    v13 = HIDWORD(v14);
    sub_239E73254(a3, &v13);
    v11 = HIDWORD(v15);
    v13 = HIDWORD(v15);
    sub_239E73254(a3, &v13);
    v13 = v9;
    sub_239E73254(a3, &v13);
    v13 = v11;
    sub_239E73254(a3, &v13);
    v13 = v15;
  }

  sub_239E73254(a3, &v13);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_239E7A380(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x23EE802C0);
  }
}

uint64_t sub_239E7A3DC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_239E740A0(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239E7A428(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v73 = *(a2 - 1);
        v74 = *v8;
        if (*(v73 + 20) < *(*v8 + 20))
        {
          *v8 = v73;
          *(a2 - 1) = v74;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v80 = v8 + 1;
      v81 = v8[1];
      v82 = v8 + 2;
      v83 = v8[2];
      v84 = *v8;
      v85 = *(v81 + 5);
      v86 = *(v83 + 20);
      if (v85 >= *(*v8 + 20))
      {
        if (v86 >= v85)
        {
          goto LABEL_174;
        }

        *v80 = v83;
        *v82 = v81;
        v87 = v8;
        v88 = v8 + 1;
        result = v81;
        if (*(v83 + 20) < *(v84 + 20))
        {
          goto LABEL_167;
        }
      }

      else
      {
        v87 = v8;
        v88 = v8 + 2;
        result = *v8;
        if (v86 >= v85)
        {
          *v8 = v81;
          v8[1] = v84;
          v87 = v8 + 1;
          v88 = v8 + 2;
          result = v84;
          if (*(v83 + 20) >= *(v84 + 20))
          {
LABEL_174:
            v81 = v83;
            goto LABEL_175;
          }
        }

LABEL_167:
        *v87 = v83;
        *v88 = v84;
        v81 = result;
      }

LABEL_175:
      v130 = *(a2 - 1);
      if (*(v130 + 20) < *(v81 + 5))
      {
        *v82 = v130;
        *(a2 - 1) = v81;
        v131 = *v82;
        v132 = *v80;
        if (*(v131 + 20) < *(v132 + 20))
        {
          v8[1] = v131;
          v8[2] = v132;
          v133 = *v8;
          if (*(v131 + 20) < *(*v8 + 20))
          {
            *v8 = v131;
            v8[1] = v133;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_239E7AE34(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v89 = v8 + 1;
      v91 = v8 == a2 || v89 == a2;
      if (a4)
      {
        if (!v91)
        {
          v92 = 0;
          v93 = v8;
          do
          {
            v95 = *v93;
            v94 = v93[1];
            v93 = v89;
            if (*(v94 + 20) < *(v95 + 20))
            {
              v96 = v92;
              while (1)
              {
                *(v8 + v96 + 8) = v95;
                if (!v96)
                {
                  break;
                }

                v95 = *(v8 + v96 - 8);
                v96 -= 8;
                if (*(v94 + 20) >= *(v95 + 20))
                {
                  v97 = (v8 + v96 + 8);
                  goto LABEL_130;
                }
              }

              v97 = v8;
LABEL_130:
              *v97 = v94;
            }

            v89 = v93 + 1;
            v92 += 8;
          }

          while (v93 + 1 != a2);
        }
      }

      else if (!v91)
      {
        do
        {
          v129 = *v7;
          v128 = v7[1];
          v7 = v89;
          if (*(v128 + 20) < *(v129 + 20))
          {
            do
            {
              *v89 = v129;
              v129 = *(v89 - 2);
              --v89;
            }

            while (*(v128 + 20) < *(v129 + 20));
            *v89 = v128;
          }

          v89 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v98 = (v9 - 2) >> 1;
        v99 = v98;
        do
        {
          v100 = v99;
          if (v98 >= v99)
          {
            v101 = (2 * v99) | 1;
            v102 = &v8[v101];
            if (2 * v100 + 2 < v9 && *(*v102 + 20) < *(v102[1] + 20))
            {
              ++v102;
              v101 = 2 * v100 + 2;
            }

            v103 = &v8[v100];
            v104 = *v102;
            v105 = *v103;
            if (*(*v102 + 20) >= *(*v103 + 20))
            {
              do
              {
                v106 = v102;
                *v103 = v104;
                if (v98 < v101)
                {
                  break;
                }

                v107 = 2 * v101;
                v101 = (2 * v101) | 1;
                v102 = &v8[v101];
                v108 = v107 + 2;
                if (v108 < v9)
                {
                  result = v102[1];
                  if (*(*v102 + 20) < *(result + 20))
                  {
                    ++v102;
                    v101 = v108;
                  }
                }

                v104 = *v102;
                v103 = v106;
              }

              while (*(*v102 + 20) >= *(v105 + 20));
              *v106 = v105;
            }
          }

          v99 = v100 - 1;
        }

        while (v100);
        do
        {
          v109 = 0;
          v110 = *v8;
          v111 = v8;
          do
          {
            v112 = v111;
            v113 = &v111[v109];
            v111 = v113 + 1;
            v114 = 2 * v109;
            v109 = (2 * v109) | 1;
            v115 = v114 + 2;
            if (v115 < v9)
            {
              v117 = v113[2];
              v116 = v113 + 2;
              if (*(*(v116 - 1) + 20) < *(v117 + 20))
              {
                v111 = v116;
                v109 = v115;
              }
            }

            *v112 = *v111;
          }

          while (v109 <= ((v9 - 2) >> 1));
          if (v111 == --a2)
          {
            *v111 = v110;
          }

          else
          {
            *v111 = *a2;
            *a2 = v110;
            v118 = (v111 - v8 + 8) >> 3;
            v119 = v118 < 2;
            v120 = v118 - 2;
            if (!v119)
            {
              v121 = v120 >> 1;
              v122 = &v8[v121];
              v123 = *v122;
              v124 = *v111;
              if (*(*v122 + 20) < *(*v111 + 20))
              {
                do
                {
                  v125 = v122;
                  *v111 = v123;
                  if (!v121)
                  {
                    break;
                  }

                  v121 = (v121 - 1) >> 1;
                  v122 = &v8[v121];
                  v123 = *v122;
                  v111 = v125;
                }

                while (*(*v122 + 20) < *(v124 + 20));
                *v125 = v124;
              }
            }
          }

          v119 = v9-- <= 2;
        }

        while (!v119);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 20);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 20);
      if (v16 >= *(*v8 + 20))
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v20 = *v8;
          if (*(*v10 + 20) < *(*v8 + 20))
          {
            *v8 = *v10;
            *v10 = v20;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v22 = *(a2 - 1);
        if (*(v22 + 20) < *(v15 + 20))
        {
          *v10 = v22;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v23 = v10 - 1;
      v24 = *(v10 - 1);
      v25 = v8[1];
      v26 = *(v24 + 20);
      v27 = *(a2 - 2);
      v28 = *(v27 + 20);
      if (v26 >= *(v25 + 20))
      {
        if (v28 < v26)
        {
          *v23 = v27;
          *(a2 - 2) = v24;
          v29 = v8[1];
          if (*(*v23 + 20) < *(v29 + 20))
          {
            v8[1] = *v23;
            *v23 = v29;
          }
        }
      }

      else
      {
        if (v28 < v26)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v24;
        *v23 = v25;
        v31 = *(a2 - 2);
        if (*(v31 + 20) < *(v25 + 20))
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v34 = v10[1];
      v32 = v10 + 1;
      v33 = v34;
      v35 = v8[2];
      v36 = *(v34 + 20);
      v37 = *(a2 - 3);
      v38 = *(v37 + 20);
      if (v36 >= *(v35 + 20))
      {
        if (v38 < v36)
        {
          *v32 = v37;
          *(a2 - 3) = v33;
          v39 = v8[2];
          if (*(*v32 + 20) < *(v39 + 20))
          {
            v8[2] = *v32;
            *v32 = v39;
          }
        }
      }

      else
      {
        if (v38 < v36)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v33;
        *v32 = v35;
        v40 = *(a2 - 3);
        if (*(v40 + 20) < *(v35 + 20))
        {
          *v32 = v40;
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v41 = *v11;
      v42 = *v23;
      v43 = *(*v11 + 20);
      v44 = *v32;
      v45 = *(*v32 + 20);
      if (v43 >= *(*v23 + 20))
      {
        if (v45 >= v43)
        {
          goto LABEL_56;
        }

        *v11 = v44;
        *v32 = v41;
        v32 = v11;
        v41 = v42;
        if (*(v44 + 20) >= *(v42 + 20))
        {
          v41 = v44;
          goto LABEL_56;
        }
      }

      else if (v45 >= v43)
      {
        *v23 = v41;
        *v11 = v42;
        v23 = v11;
        v41 = v44;
        if (*(v44 + 20) >= *(v42 + 20))
        {
          v41 = v42;
LABEL_56:
          v46 = *v8;
          *v8 = v41;
          *v11 = v46;
          goto LABEL_57;
        }
      }

      *v23 = v44;
      *v32 = v42;
      goto LABEL_56;
    }

    v17 = *v8;
    v18 = *v11;
    v19 = *(*v8 + 20);
    if (v19 >= *(*v11 + 20))
    {
      if (v13 < v19)
      {
        *v8 = v12;
        *(a2 - 1) = v17;
        v21 = *v11;
        if (*(*v8 + 20) < *(*v11 + 20))
        {
          *v11 = *v8;
          *v8 = v21;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v19)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v18;
      goto LABEL_57;
    }

    *v11 = v17;
    *v8 = v18;
    v30 = *(a2 - 1);
    if (*(v30 + 20) < *(v18 + 20))
    {
      *v8 = v30;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v47 = *v8;
    if (a4)
    {
      v48 = *(v47 + 20);
LABEL_60:
      v49 = 0;
      do
      {
        v50 = v8[++v49];
      }

      while (*(v50 + 20) < v48);
      v51 = &v8[v49];
      v52 = a2;
      if (v49 == 1)
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v54 = *--v52;
        }

        while (*(v54 + 20) >= v48);
      }

      else
      {
        do
        {
          v53 = *--v52;
        }

        while (*(v53 + 20) >= v48);
      }

      if (v51 >= v52)
      {
        v61 = v51 - 1;
      }

      else
      {
        v55 = *v52;
        v56 = &v8[v49];
        v57 = v52;
        do
        {
          *v56 = v55;
          *v57 = v50;
          v58 = *(v47 + 20);
          do
          {
            v59 = v56[1];
            ++v56;
            v50 = v59;
          }

          while (*(v59 + 20) < v58);
          do
          {
            v60 = *--v57;
            v55 = v60;
          }

          while (*(v60 + 20) >= v58);
        }

        while (v56 < v57);
        v61 = v56 - 1;
      }

      if (v61 != v8)
      {
        *v8 = *v61;
      }

      *v61 = v47;
      if (v51 < v52)
      {
        goto LABEL_81;
      }

      v62 = sub_239E7AFAC(v8, v61);
      v8 = v61 + 1;
      result = sub_239E7AFAC(v61 + 1, a2);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_81:
        result = sub_239E7A428(v7, v61, a3, a4 & 1);
        a4 = 0;
        v8 = v61 + 1;
      }
    }

    else
    {
      v48 = *(v47 + 20);
      if (*(*(v8 - 1) + 20) < v48)
      {
        goto LABEL_60;
      }

      if (v48 >= *(*(a2 - 1) + 20))
      {
        v64 = v8 + 1;
        do
        {
          v8 = v64;
          if (v64 >= a2)
          {
            break;
          }

          ++v64;
        }

        while (v48 >= *(*v8 + 20));
      }

      else
      {
        do
        {
          v63 = v8[1];
          ++v8;
        }

        while (v48 >= *(v63 + 20));
      }

      v65 = a2;
      if (v8 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *--v65;
        }

        while (v48 < *(v66 + 20));
      }

      if (v8 < v65)
      {
        v67 = *v8;
        v68 = *v65;
        do
        {
          *v8 = v68;
          *v65 = v67;
          v69 = *(v47 + 20);
          do
          {
            v70 = v8[1];
            ++v8;
            v67 = v70;
          }

          while (v69 >= *(v70 + 20));
          do
          {
            v71 = *--v65;
            v68 = v71;
          }

          while (v69 < *(v71 + 20));
        }

        while (v8 < v65);
      }

      v72 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v72;
      }

      a4 = 0;
      *v72 = v47;
    }
  }

  v75 = *v8;
  v76 = v8[1];
  v77 = *(v76 + 20);
  v78 = *(a2 - 1);
  v79 = *(v78 + 20);
  if (v77 >= *(*v8 + 20))
  {
    if (v79 < v77)
    {
      v8[1] = v78;
      *(a2 - 1) = v76;
      v127 = *v8;
      v126 = v8[1];
      if (*(v126 + 20) < *(*v8 + 20))
      {
        *v8 = v126;
        v8[1] = v127;
      }
    }
  }

  else
  {
    if (v79 >= v77)
    {
      *v8 = v76;
      v8[1] = v75;
      v134 = *(a2 - 1);
      if (*(v134 + 20) >= *(v75 + 20))
      {
        return result;
      }

      v8[1] = v134;
    }

    else
    {
      *v8 = v78;
    }

    *(a2 - 1) = v75;
  }

  return result;
}

uint64_t *sub_239E7AE34(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 20);
  v8 = *a3;
  v9 = *(*a3 + 20);
  if (v7 >= *(*result + 20))
  {
    if (v9 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v5;
      v10 = *result;
      if (*(*a2 + 20) < *(*result + 20))
      {
        *result = *a2;
        *a2 = v10;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v9 < v7)
    {
      *result = v8;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 20) < *(v6 + 20))
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 20) < *(v5 + 20))
  {
    *a3 = *a4;
    *a4 = v5;
    v11 = *a2;
    if (*(*a3 + 20) < *(*a2 + 20))
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if (*(*a2 + 20) < *(*result + 20))
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  v13 = *a4;
  if (*(*a5 + 20) < *(*a4 + 20))
  {
    *a4 = *a5;
    *a5 = v13;
    v14 = *a3;
    if (*(*a4 + 20) < *(*a3 + 20))
    {
      *a3 = *a4;
      *a4 = v14;
      v15 = *a2;
      if (*(*a3 + 20) < *(*a2 + 20))
      {
        *a2 = *a3;
        *a3 = v15;
        v16 = *result;
        if (*(*a2 + 20) < *(*result + 20))
        {
          *result = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

BOOL sub_239E7AFAC(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 20);
      v8 = *(a2 - 1);
      v9 = *(v8 + 20);
      if (v7 >= *(*a1 + 20))
      {
        if (v9 < v7)
        {
          a1[1] = v8;
          *(a2 - 1) = v6;
          v29 = *a1;
          v28 = a1[1];
          if (*(v28 + 20) < *(*a1 + 20))
          {
            *a1 = v28;
            a1[1] = v29;
          }
        }

        return 1;
      }

      if (v9 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v42 = *(a2 - 1);
        if (*(v42 + 20) >= *(v5 + 20))
        {
          return 1;
        }

        a1[1] = v42;
      }

      else
      {
        *a1 = v8;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_239E7AE34(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1 + 2;
    v21 = a1[2];
    v22 = *a1;
    v23 = *(v19 + 20);
    v24 = *(v21 + 20);
    if (v23 >= *(*a1 + 20))
    {
      if (v24 >= v23)
      {
LABEL_41:
        v19 = v21;
        goto LABEL_42;
      }

      *v18 = v21;
      *v20 = v19;
      v25 = a1;
      v26 = a1 + 1;
      v27 = v19;
      if (*(v21 + 20) >= *(v22 + 20))
      {
LABEL_42:
        v38 = *(a2 - 1);
        if (*(v38 + 20) < *(v19 + 20))
        {
          *v20 = v38;
          *(a2 - 1) = v19;
          v39 = *v20;
          v40 = *v18;
          if (*(v39 + 20) < *(v40 + 20))
          {
            a1[1] = v39;
            a1[2] = v40;
            v41 = *a1;
            if (*(v39 + 20) < *(*a1 + 20))
            {
              *a1 = v39;
              a1[1] = v41;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v25 = a1;
      v26 = a1 + 2;
      v27 = *a1;
      if (v24 >= v23)
      {
        *a1 = v19;
        a1[1] = v22;
        v25 = a1 + 1;
        v26 = a1 + 2;
        v27 = v22;
        if (*(v21 + 20) >= *(v22 + 20))
        {
          goto LABEL_41;
        }
      }
    }

    *v25 = v21;
    *v26 = v22;
    v19 = v27;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 20) < *(*a1 + 20))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v10 = a1[2];
  v12 = a1[1];
  v13 = *a1;
  v14 = *(v12 + 20);
  v15 = *(v10 + 20);
  if (v14 < *(*a1 + 20))
  {
    v16 = a1;
    v17 = a1 + 2;
    if (v15 >= v14)
    {
      *a1 = v12;
      a1[1] = v13;
      v16 = a1 + 1;
      v17 = a1 + 2;
      if (*(v10 + 20) >= *(v13 + 20))
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v16 = v10;
    *v17 = v13;
    goto LABEL_27;
  }

  if (v15 < v14)
  {
    a1[1] = v10;
    *v11 = v12;
    v16 = a1;
    v17 = a1 + 1;
    if (*(v10 + 20) < *(v13 + 20))
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  for (i = 24; ; i += 8)
  {
    v33 = *v30;
    v34 = *v11;
    if (*(*v30 + 20) < *(v34 + 20))
    {
      v35 = i;
      while (1)
      {
        *(a1 + v35) = v34;
        v36 = v35 - 8;
        if (v35 == 8)
        {
          break;
        }

        v34 = *(a1 + v35 - 16);
        v35 -= 8;
        if (*(v33 + 20) >= *(v34 + 20))
        {
          v37 = (a1 + v36);
          goto LABEL_35;
        }
      }

      v37 = a1;
LABEL_35:
      *v37 = v33;
      if (++v31 == 8)
      {
        break;
      }
    }

    v11 = v30++;
    if (v30 == a2)
    {
      return 1;
    }
  }

  return v30 + 1 == a2;
}

uint64_t sub_239E7B384(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D175A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_239E7B3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_239E7B424(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_239E7B560(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239E7B5AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_239E7B644(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_239E7B690(uint64_t a1)
{
  sub_239E7B644(a1 + 384);
  sub_239E7B644(a1 + 344);
  sub_239E7B644(a1 + 304);
  sub_239E7B644(a1 + 208);
  sub_239E7B644(a1 + 168);
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  sub_239E7B424(a1 + 64);
  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  sub_239E79AAC(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_239E7B730(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *(a1 + 16);
  v9 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *a1) >> 5) < a4)
  {
    if (v9)
    {
      *(a1 + 8) = v9;
      operator delete(v9);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x124924924924924)
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 5);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x92492492492492)
      {
        v12 = 0x124924924924924;
      }

      else
      {
        v12 = v11;
      }

      sub_239E7B8DC(a1, v12);
    }

    sub_239E797B4();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v9;
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v9) >> 5) >= a4)
  {
    while (v6 != a3)
    {
      sub_239E7B92C(v9, v6);
      v6 += 224;
      v9 += 224;
    }

    *(a1 + 8) = v9;
  }

  else
  {
    v15 = a2 + v14;
    if (v13 != v9)
    {
      do
      {
        sub_239E7B92C(v9, v6);
        v6 += 224;
        v9 += 224;
        v14 -= 224;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      v17 = v13;
      do
      {
        sub_239E79CE8(v17, v15);
        v15 += 224;
        v17 = v18 + 224;
        v16 += 224;
      }

      while (v15 != a3);
    }

    *(a1 + 8) = v16;
  }
}

void sub_239E7B8DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    sub_239E79E24(a1, a2);
  }

  sub_239E797B4();
}

float sub_239E7B92C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = 64;
  v3 = 176;
  do
  {
    v4 = (a1 + v2);
    *(v4 - 3) = *(a2 + v2 - 48);
    *v4 = *(a2 + v2);
    v5 = (a1 + v3);
    *v5 = *(a2 + v3);
    v5[3] = *(a2 + v3 + 24);
    v2 += 16;
    v3 += 8;
  }

  while (v2 != 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 160) = *(a2 + 160);
  result = *(a2 + 168);
  *(a1 + 168) = result;
  *(a1 + 172) = *(a2 + 172);
  return result;
}

void *sub_239E7B9B0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_239E7BBE0(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_239E7BCD0(a1, prime);
    }
  }
}

void sub_239E7BCD0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_239E79870();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_239E7BE34(uint64_t a1, unint64_t *a2)
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

uint64_t *sub_239E7BF04(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_239E7C134(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_239E7C1E8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_239E7C22C(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_239E7C22C@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_239E7C368()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_239E7C3B4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    sub_239E797B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_239E79E24(a1, v6);
  }

  __p = 0;
  v10 = 224 * v2;
  v12 = 0;
  sub_239E79CE8(224 * v2, a2);
  v11 = 224 * v2 + 224;
  sub_239E79D84(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = v11 - 224 * ((((v11 - v10 - 224) >> 5) * 0x2492492492492493uLL) >> 64) - 224;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_239E7C4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E7C554(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E7B8DC(result, a4);
  }

  return result;
}

void sub_239E7C5B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239E7C5D0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_239E7C648(result, a2);
  }

  return result;
}

void sub_239E7C62C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E7C648(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_239E7C684(a1, a2);
  }

  sub_239E797B4();
}

void sub_239E7C684(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239E79870();
}

float32x4_t *sub_239E7C6CC(void *a1, float32x4_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2->u32[0];
  if (COERCE_FLOAT(*a2) == 0.0)
  {
    v4 = 0;
  }

  v5 = v2.u32[1];
  if (v2.f32[1] == 0.0)
  {
    v5 = 0;
  }

  v6 = v2.u32[2];
  if (v2.f32[2] == 0.0)
  {
    v6 = 0;
  }

  v7 = v3.u32[0];
  if (v3.f32[0] == 0.0)
  {
    v7 = 0;
  }

  v8 = v3.u32[1];
  if (v3.f32[1] == 0.0)
  {
    v8 = 0;
  }

  v9 = v3.u32[2];
  if (v3.f32[2] == 0.0)
  {
    v9 = 0;
  }

  v10 = a1[1];
  if (!*&v10)
  {
    return 0;
  }

  v12 = v4 ^ v5 ^ v6 ^ v7;
  v13 = v12 ^ v8 ^ v9;
  v14 = vcnt_s8(v10);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v13 >= *&v10 ? v13 % v10.i32[0] : v12 ^ v8 ^ v9;
  }

  else
  {
    v16 = v13 & (*&v10 - 1);
  }

  v17 = *(*a1 + 8 * v16);
  if (!v17)
  {
    return 0;
  }

  for (i = *v17; i; i = i->i64[0])
  {
    v19 = i->u64[1];
    if (v19 == v13)
    {
      if (sub_239E7C82C(i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v15 > 1)
      {
        if (v19 >= *&v10)
        {
          v19 %= *&v10;
        }
      }

      else
      {
        v19 &= *&v10 - 1;
      }

      if (v19 != v16)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_239E7C82C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a2;
  LODWORD(v3) = HIDWORD(a1->i64[0]);
  LODWORD(v4) = a1->i64[1];
  if ((vmovn_s32(vceqq_f32(*a1, *a2)).u8[0] & 1) != 0 && (v3 == v2.f32[1] ? (v5 = v4 == v2.f32[2]) : (v5 = 0), v5))
  {
    v6 = a2[1];
    v7 = vmovn_s32(vceqq_f32(a1[1], v6));
    LODWORD(v8) = HIDWORD(a2[1].i64[0]);
    LODWORD(v9) = a2[1].i64[1];
    if (v7.i8[0] & 1) != 0 && (v7.i8[2] & 1) != 0 && (v7.i8[4])
    {
      v10 = 1;
      return v10 & 1;
    }
  }

  else
  {
    v6 = a2[1];
    LODWORD(v8) = HIDWORD(a2[1].i64[0]);
    LODWORD(v9) = a2[1].i64[1];
  }

  if (COERCE_FLOAT(*a1) == v6.f32[0] && v3 == v8 && v4 == v9)
  {
    v10 = 0;
    v13 = vmovn_s32(vceqq_f32(a1[1], v2));
    if (v13.i8[0] & 1) != 0 && (v13.i8[2])
    {
      v10 = v13.i8[4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

float32x4_t *sub_239E7C8E8(void *a1, float32x4_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2->u32[0];
  if (COERCE_FLOAT(*a2) == 0.0)
  {
    v4 = 0;
  }

  v5 = v2.u32[1];
  if (v2.f32[1] == 0.0)
  {
    v5 = 0;
  }

  v6 = v4 ^ v5;
  v7 = v2.u32[2];
  if (v2.f32[2] == 0.0)
  {
    v7 = 0;
  }

  v8 = v3.u32[0];
  if (v3.f32[0] == 0.0)
  {
    v8 = 0;
  }

  v9 = v6 ^ v7 ^ v8;
  v10 = v3.u32[1];
  if (v3.f32[1] == 0.0)
  {
    v10 = 0;
  }

  v11 = v3.u32[2];
  if (v3.f32[2] == 0.0)
  {
    v11 = 0;
  }

  v12 = v10 ^ v11;
  v13 = v9 ^ v12;
  v14 = a1[1];
  if (!*&v14)
  {
    goto LABEL_30;
  }

  v16 = vcnt_s8(v14);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v9 ^ v12;
    if (v13 >= *&v14)
    {
      v18 = v13 % v14.i32[0];
    }
  }

  else
  {
    v18 = v13 & (*&v14 - 1);
  }

  v19 = *(*a1 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v21 = v20->u64[1];
    if (v21 == v13)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v21 >= *&v14)
      {
        v21 %= *&v14;
      }
    }

    else
    {
      v21 &= *&v14 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_30;
    }

LABEL_29:
    v20 = v20->i64[0];
    if (!v20)
    {
      goto LABEL_30;
    }
  }

  if ((sub_239E7C82C(v20 + 1, a2) & 1) == 0)
  {
    goto LABEL_29;
  }

  return v20;
}

uint64_t sub_239E7CBA4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_239E7B9B0(a1, i + 2);
  }

  return a1;
}

void sub_239E7CC1C(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_239E7CD28(a1, v9, v8 + 2);
        sub_239E7CE88(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_239E7D1DC();
  }
}

void sub_239E7CCF4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_239E7CD28(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_239E7CF70(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_239E7CE88(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_239E7CF70(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_239E7D060(a1, prime);
    }
  }
}

void sub_239E7D060(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_239E79870();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_239E7D264(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t *sub_239E7D2D0(void *a1, unint64_t *a2)
{
  result = sub_239E7C134(a1, a2);
  if (result)
  {
    sub_239E7C1E8(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_239E7D308(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_239E7D38C(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_239E7D38C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_239E7D400(v6, a2);
  return v3;
}

uint64_t *sub_239E7D400(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_239E7D780(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_239E7D88C(a1, v9, v8 + 4);
        sub_239E7CE88(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_239E7DC58();
  }
}

void sub_239E7D858(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_239E7D88C(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_239E7D9EC(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_239E7D9EC(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_239E7DADC(a1, prime);
    }
  }
}

void sub_239E7DADC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_239E79870();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_239E7E970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MDLMaterialProperty;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_239E80160(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x23EE802C0](v3, 0x10A1C40A30AD078);

  _Unwind_Resume(a1);
}

void sub_239E83A14(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_containsObject_(v4, v5, v3) & 1) == 0)
  {
    objc_msgSend_addObject_(v4, v6, v3);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3[3];
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v18, 16);
    if (v9)
    {
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          sub_239E83A14(*(*(&v14 + 1) + 8 * v11++), v4);
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v14, v18, 16);
      }

      while (v9);
    }

    (*(v3[4] + 2))(v3[4]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_239E83D5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239E842AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

float sub_239E848C4(CGColor *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  Components = CGColorGetComponents(a1);
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelRGB)
  {
    v7 = vmulq_f64(*(Components + 1), xmmword_239F9B9A0);
    return v7.f64[0] + *Components * 0.212655 + v7.f64[1];
  }

  else
  {
    result = 1.0;
    if (Model)
    {
      return result;
    }

    return *Components;
  }
}

CGColorRef sub_239E8494C(float32x4_t a1, float32x4_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 0uLL;
  if (a1.f32[0] >= 1000.0 && a1.f32[0] <= 40000.0)
  {
    a2.i32[0] = 1170939904;
    v3 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a2, a1)), 0);
    v4 = vaddq_f32(vdivq_f32(vbslq_s8(v3, xmmword_239F9B9E0, xmmword_239F9B9D0), vaddq_f32(vbslq_s8(v3, xmmword_239F9BA00, xmmword_239F9B9F0), vdupq_lane_s32(*a1.f32, 0))), vbslq_s8(v3, xmmword_239F9B9C0, xmmword_239F9B9B0));
    v4.i32[3] = 0;
    v5 = vmaxnmq_f32(v4, 0);
    v5.i32[3] = 0;
    v2 = vminnmq_f32(v5, xmmword_239F9BA10);
  }

  v10 = v2;
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  *components = vcvtq_f64_f32(*v10.f32);
  v12 = v10.f32[2];
  v13 = 0x3FF0000000000000;
  v7 = CGColorCreate(v6, components);
  CGColorSpaceRelease(v6);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

__n64 sub_239E84A8C(CGColor *a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v2, kCGRenderingIntentAbsoluteColorimetric, a1, 0);
  CGColorSpaceRelease(v2);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v26 = vcvt_f32_f64(*Components);
  v5 = *(Components + 3);
  v6 = Components[2];
  v25 = v6;
  CGColorRelease(CopyByMatchingToColorSpace);
  v8 = fminf(v26.f32[0], fminf(v26.f32[1], v25));
  v9.f32[0] = fmaxf(v26.f32[0], fmaxf(v26.f32[1], v25));
  v10 = v9.f32[0] - v8;
  v11 = (v8 + v9.f32[0]) * 0.5;
  if (v11 >= 0.5)
  {
    v12 = 1.0 - v11;
  }

  else
  {
    v12 = v11;
  }

  v13 = v10 / (v12 + v12);
  _NF = v11 > 0.0 && v11 < 1.0;
  v15 = vdup_lane_s32(*v9.f32, 0);
  if (!_NF)
  {
    v13 = 0.0;
  }

  v16.i32[0] = vdup_lane_s32(v26, 1).u32[0];
  v16.f32[1] = v25;
  __asm { FMOV            V16.2S, #1.0 }

  *v7.f32 = vand_s8(_D16, vbic_s8(vceq_f32(v15, v26), vceq_f32(v15, v16)));
  if (v9.f32[0] != v26.f32[0] && v9.f32[0] == v25)
  {
    v9.f32[0] = 1.0;
  }

  else
  {
    v9.f32[0] = 0.0;
  }

  v7.i32[2] = v9.i32[0];
  v9.f32[0] = (v26.f32[1] - v25) * (1.0 / v10);
  v9.f32[1] = ((v25 - v26.f32[0]) * (1.0 / v10)) + 2.0;
  v9.f32[2] = ((v26.f32[0] - v26.f32[1]) * (1.0 / v10)) + 4.0;
  v21 = vmulq_f32(v7, v9);
  v22 = vaddv_f32(*v21.f32) + v21.f32[2];
  v23 = 0.16667;
  if (v10 <= 0.0)
  {
    v23 = 0.0;
  }

  result.n64_f32[0] = v23 * v22;
  if (result.n64_f32[0] < 0.0)
  {
    result.n64_f32[0] = result.n64_f32[0] + 1.0;
  }

  result.n64_f32[1] = v13;
  return result;
}

double sub_239E84C14(float32x4_t a1, double a2, double a3, double a4, double a5, float32x4_t a6)
{
  v6 = 6.0 * a1.f32[0];
  v7.i64[1] = 0;
  if (a1.f32[0] >= 0.66667)
  {
    v8.i32[1] = 0;
    v8.i32[3] = 0;
    *v8.i32 = v6 + -4.0;
    *&v8.i32[2] = 6.0 - v6;
  }

  else
  {
    v8.i32[0] = 0;
    v8.i32[3] = 0;
    *&v8.i32[1] = 4.0 - v6;
    *&v8.i32[2] = v6 + -2.0;
  }

  a6.i32[0] = 1051372203;
  *v7.i32 = 2.0 - v6;
  *&v7.i32[1] = 6.0 * a1.f32[0];
  v9 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a6, a1), 0), v7, v8);
  v9.i32[3] = 0;
  *&a3 = 1.0 - a1.f32[1];
  v10 = vmlaq_n_f32(vdupq_lane_s32(*&a3, 0), vminnmq_f32(v9, xmmword_239F9BA10), a1.f32[1] + a1.f32[1]);
  if (a1.f32[2] >= 0.5)
  {
    a1.f32[0] = (a1.f32[2] * 2.0) + -1.0;
    a1.i64[0] = vmlaq_n_f32(vdupq_lane_s32(*a1.f32, 0), v10, 1.0 - a1.f32[2]).u64[0];
  }

  else
  {
    a1.i64[0] = vmulq_laneq_f32(v10, a1, 2).u64[0];
  }

  return *a1.i64;
}

float sub_239E84CE8(float *a1, float *a2, float *a3, float a4, float a5, float a6, float a7)
{
  v11 = __sincos_stret(a7);
  v12 = ((a5 + a4) + a6) * 0.333333333;
  *&v12 = v12;
  v13 = (*&v12 + a6) - ((*&v12 + a6) <= 0.0);
  v14 = vadd_f32(vdup_lane_s32(*&v12, 0), __PAIR64__(LODWORD(a5), LODWORD(a4)));
  v15 = vadd_s32(vmvn_s8(vcgtz_f32(v14)), vcvt_s32_f32(v14));
  v16 = v15.i32[1];
  v17 = vcvt_f32_s32(v15);
  v18 = v15.i32[0];
  v19 = (v15.i32[0] + v13 + v15.i32[1]) * 0.166666667;
  *&v19 = v19;
  v20 = vadd_f32(vsub_f32(vdup_lane_s32(*&v19, 0), v17), __PAIR64__(LODWORD(a5), LODWORD(a4)));
  v21 = (*&v19 - v13) + a6;
  if (v20.f32[0] >= v20.f32[1])
  {
    if (v20.f32[1] >= v21)
    {
      v24 = 0;
      v25 = 0;
      v22 = 1;
      v23 = 0x100000001;
    }

    else
    {
      v25 = v20.f32[0] < v21;
      v22 = (v20.f32[0] >= v21);
      v23 = 1;
      v24 = 1;
    }
  }

  else if (v20.f32[1] >= v21)
  {
    v25 = 0;
    v24 = v20.f32[0] < v21;
    v23.i32[1] = 1;
    v23.i32[0] = v20.f32[0] >= v21;
    v22 = 0x100000000;
  }

  else
  {
    v22 = 0;
    v23 = 0x100000000;
    v24 = 1;
    v25 = 1;
  }

  sinval = v11.__sinval;
  cosval = v11.__cosval;
  _D0 = vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(vsub_f32(v20, vcvt_f32_u32(v22))), vdupq_n_s64(0x3FC55555560C95D4uLL)));
  v29 = (v21 - v25) + 0.166666667;
  v30 = vaddq_f64(vcvtq_f64_f32(vsub_f32(v20, vcvt_f32_u32(v23))), vdupq_n_s64(0x3FD55555560C95D4uLL));
  __asm { FMOV            V4.2S, #-1.0 }

  v36 = vcvtq_f64_f32(vadd_f32(v20, _D4));
  v37 = vdupq_n_s64(0x3FE000000089705FuLL);
  _NF = -v18 < 0;
  v18 = v18;
  if (!_NF)
  {
    v18 = --v18;
  }

  _NF = -v16 < 0;
  v16 = v16;
  if (!_NF)
  {
    v16 = --v16;
  }

  _NF = -v13 < 0;
  v13 = v13;
  if (!_NF)
  {
    v13 = --v13;
  }

  v38 = vmul_f32(v20, v20);
  v39 = 0.6 - ((v38.f32[0] + (v21 * v21)) + v38.f32[1]);
  v40.i32[0] = 0;
  v41.i32[0] = 0;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  v46 = 0.0;
  v47 = 0.0;
  if (v39 >= 0.0)
  {
    v48 = (&unk_239F9BA84 + 12 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v13] + v16] + v18] & 0xF));
    v49 = (&unk_239F9BB44 + 12 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v13] + v16] + v18] & 0xF));
    v43 = (v48[1].f32[0] * cosval) + (v49[1].f32[0] * sinval);
    v45 = v39 * v39;
    v46 = v45 * v45;
    v41 = vmla_n_f32(vmul_n_f32(*v48, cosval), *v49, sinval);
    v47 = (vaddv_f32(vmul_f32(v41, v20)) + (v43 * v21)) * (v45 * v45);
    v42 = v41.f32[1];
    v44 = v39;
  }

  v108 = v45;
  v110 = v46;
  v111 = v43;
  v114 = v47;
  v50 = vaddq_f64(v36, v37);
  _D25 = vcvt_f32_f64(v30);
  v52 = (v21 - v24) + 0.333333334;
  v53 = vmul_f32(_D0, _D0);
  v54 = 0.6 - ((v53.f32[1] + (v29 * v29)) + v53.f32[0]);
  v55 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
  v58 = 0.0;
  v59 = 0.0;
  v60 = 0.0;
  if (v54 >= 0.0)
  {
    v61 = 3 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v25 + v13] + (v22.i32[1] + v16)] + (v22.i32[0] + v18)] & 0xF);
    v62 = (&unk_239F9BA84 + 4 * v61);
    v63 = (&unk_239F9BB44 + 4 * v61);
    v56 = (v62[1].f32[0] * cosval) + (v63[1].f32[0] * sinval);
    v58 = v54 * v54;
    v59 = v58 * v58;
    v40 = vmla_n_f32(vmul_n_f32(*v62, cosval), *v63, sinval);
    v60 = (vaddv_f32(vmul_f32(v40, _D0)) + (v56 * v29)) * (v58 * v58);
    v55 = v40.f32[1];
    v57 = v54;
  }

  v64 = v44;
  v106 = v42;
  v107 = v55;
  v109 = v29;
  _D8 = vcvt_f32_f64(v50);
  v66 = (v21 + -1.0) + 0.500000001;
  v67 = vmul_f32(_D25, _D25);
  v68 = 0.6 - ((v67.f32[1] + (v52 * v52)) + v67.f32[0]);
  v69.i32[0] = 0;
  v70.i32[0] = 0;
  _S15 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  if (v68 >= 0.0)
  {
    v77 = 3 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v24 + v13] + (v23.i32[1] + v16)] + (v23.i32[0] + v18)] & 0xF);
    v78 = (&unk_239F9BA84 + 4 * v77);
    v79 = (&unk_239F9BB44 + 4 * v77);
    v72 = (v78[1].f32[0] * cosval) + (v79[1].f32[0] * sinval);
    v74 = v68 * v68;
    v75 = v74 * v74;
    v70 = vmla_n_f32(vmul_n_f32(*v78, cosval), *v79, sinval);
    v76 = (vaddv_f32(vmul_f32(v70, _D25)) + (v72 * v52)) * (v74 * v74);
    _S15 = v70.f32[1];
    v73 = v68;
  }

  v80 = vmul_f32(_D8, _D8);
  v81 = 0.6 - ((v80.f32[0] + (v66 * v66)) + v80.f32[1]);
  _S23 = 0.0;
  v83 = 0.0;
  v84 = 0.0;
  v85 = 0.0;
  v86 = 0.0;
  v87 = 0.0;
  if (v81 >= 0.0)
  {
    v88 = 3 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v13 + 1] + 1 + v16] + 1 + v18] & 0xF);
    v89 = (&unk_239F9BA84 + 12 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v13 + 1] + 1 + v16] + 1 + v18] & 0xF));
    v90 = (&unk_239F9BB44 + 4 * v88);
    v83 = (v89[1].f32[0] * cosval) + (v90[1].f32[0] * sinval);
    v85 = v81 * v81;
    v86 = v85 * v85;
    v69 = vmla_n_f32(vmul_n_f32(*v89, cosval), *v90, sinval);
    v87 = (vaddv_f32(vmul_f32(v69, _D8)) + (v83 * v66)) * (v85 * v85);
    _S23 = v69.f32[1];
    v84 = v81;
  }

  if (a1 && a2 && a3)
  {
    v91 = (v108 * v64) * (((v41.f32[0] * v20.f32[0]) + (v106 * v20.f32[1])) + (v111 * v21));
    *a1 = v91 * v20.f32[0];
    *a2 = v91 * v20.f32[1];
    *a3 = v91 * v21;
    _S4 = v107;
    __asm { FMLA            S3, S4, V0.S[1] }

    _S2 = (v58 * v57) * (_S3 + (v56 * v109));
    *a1 = *a1 + (_S2 * _D0.f32[0]);
    v95 = *a2;
    __asm { FMLA            S3, S2, V0.S[1] }

    *a2 = _S3;
    *a3 = *a3 + (_S2 * v109);
    __asm { FMLA            S1, S15, V25.S[1] }

    _S0 = (v74 * v73) * (_S1 + (v72 * v52));
    *a1 = *a1 + (_S0 * _D25.f32[0]);
    v99 = *a2;
    __asm { FMLA            S1, S0, V25.S[1] }

    *a2 = _S1;
    *a3 = *a3 + (_S0 * v52);
    __asm { FMLA            S1, S23, V8.S[1] }

    _S0 = (v85 * v84) * (_S1 + (v83 * v66));
    *a1 = *a1 + (_S0 * _D8.f32[0]);
    v103 = *a2;
    __asm { FMLA            S1, S0, V8.S[1] }

    *a2 = _S1;
    *a3 = *a3 + (_S0 * v66);
    *a1 = *a1 * -8.0;
    *a2 = *a2 * -8.0;
    *a3 = *a3 * -8.0;
    *a1 = (((*a1 + (v110 * v41.f32[0])) + (v59 * v40.f32[0])) + (v75 * v70.f32[0])) + (v86 * v69.f32[0]);
    *a2 = (((*a2 + (v110 * v106)) + (v59 * v107)) + (v75 * _S15)) + (v86 * _S23);
    *a3 = (((*a3 + (v110 * v111)) + (v59 * v56)) + (v75 * v72)) + (v86 * v83);
    *a1 = *a1 * 28.0;
    *a2 = *a2 * 28.0;
    *a3 = *a3 * 28.0;
  }

  return ((v60 + v114) + (v76 + v87)) * 28.0;
}

void sub_239E8540C(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  a1;
  v7 = 0;
  v8 = 0;
  v1 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v6 = MEMORY[0x277D866E0] + 16;
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(v2, v1);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void sub_239E85C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_239E56C80(&a31);
  sub_239E5B240(v32 - 136);
  v34 = *(v31 + 40);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80(v32 - 208);
  MEMORY[0x23EE7E6C0](v32 - 160);

  _Unwind_Resume(a1);
}

void sub_239E85E44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC();
  }

  _Unwind_Resume(a1);
}

void sub_239E85E4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x239E85E50);
  }

  _Unwind_Resume(a1);
}

void sub_239E85E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x239E85E58);
  }

  sub_239E797CC();
}

uint64_t sub_239E85E5C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

uint64_t sub_239E85EB8(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_284D17B10))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return MEMORY[0x282207DB0](this, sub_239E8612C, &stru_284D17B10);
}

uint64_t sub_239E85F74(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = 0;
  v5[1] = 0;
  sub_239E5B364(a1);
  v6 = v5;
  sub_239E861E8(a1, a2, &v6);
  return a1;
}

unsigned __int8 *sub_239E85FE8(unsigned __int8 *result)
{
  v1 = result[14];
  if (v1 > 3)
  {
    if (result[14] <= 5u)
    {
      if (v1 == 4)
      {
        v2 = MEMORY[0x23EE7EA10]();
      }

      else
      {
        if (v1 != 5)
        {
          return result;
        }

        v2 = MEMORY[0x23EE7EA00]();
      }
    }

    else
    {
      switch(v1)
      {
        case 6u:
          v2 = MEMORY[0x23EE7EC90]();
          break;
        case 7u:
          v2 = MEMORY[0x23EE7EA80]();
          break;
        case 8u:
          v2 = MEMORY[0x23EE7EAD0]();
          break;
        default:
          return result;
      }
    }

    goto LABEL_24;
  }

  if (result[14] > 1u)
  {
    if (v1 != 2)
    {
      if (v1 != 3)
      {
        return result;
      }

      v2 = MEMORY[0x23EE7EB50]();
LABEL_24:

      return MEMORY[0x282206558](v2);
    }

    v3 = MEMORY[0x23EE7EC30]();
  }

  else if (result[14])
  {
    v3 = MEMORY[0x23EE7E890]();
  }

  else
  {
    v3 = sub_239E860CC(result);
  }

  return MEMORY[0x282206550](v3);
}

pxrInternal__aapl__pxrReserved__::Sdf_PathNode *sub_239E860CC(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  if ((*(this + 2) & 0x80000000) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_RemovePathTokenFromTable(this);
  }

  if (*this && (atomic_fetch_add((*this + 8), 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
  {
    sub_239E85FE8();
  }

  return this;
}

uint64_t sub_239E8618C(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239E861E8(unint64_t *a1, unint64_t a2, _OWORD **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239E863B0(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *&v10[v11] = *(v9 + v11 * 8);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = *a3;
            v13 = 2 * v3;
            do
            {
              *&v7[v13] = *v12;
              v13 += 2;
            }

            while (2 * a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_239E863B0(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 16 * v19;
        v22 = v20;
        do
        {
          v23 = *v7;
          v7 += 2;
          *v22 = v23;
          v22 += 2;
          v21 -= 16;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = 2 * v3;
        do
        {
          *&v20[v25] = *v24;
          v25 += 2;
        }

        while (2 * a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      v16 = sub_239E863B0(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        *&v16[v17 / 8] = *v18;
        v17 += 16;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239E863B0(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_239E86444(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8);
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *a1 = 0;
  }

  return a1;
}

void sub_239E86480(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    if (*(a1 + 3) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F737DC(a1, a1 + 4);
    }
  }
}

uint64_t sub_239E86580(uint64_t a1)
{
  v204 = (a1 + 1616);
  sub_239E878AC(&v204);
  v2 = *(a1 + 1608);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 1600);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 1592);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 1584);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 1576);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 1568);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 1560);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 1552);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 1544);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 1536);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 1528);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 1520);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 1512);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 1504);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 1496);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 1488);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 1480);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 1472);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 1464);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 1456);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 1448);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 1440);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 1432);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 1424);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 1416);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 1408);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 1400);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 1392);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 1384);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 1376);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 1368);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 1360);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 1352);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 1344);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 1336);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 1328);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 1320);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(a1 + 1312);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(a1 + 1304);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(a1 + 1296);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(a1 + 1288);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(a1 + 1280);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(a1 + 1272);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(a1 + 1264);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(a1 + 1256);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(a1 + 1248);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(a1 + 1240);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(a1 + 1232);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(a1 + 1224);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(a1 + 1216);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(a1 + 1208);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(a1 + 1200);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(a1 + 1192);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(a1 + 1184);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(a1 + 1176);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(a1 + 1168);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = *(a1 + 1160);
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = *(a1 + 1152);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = *(a1 + 1144);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(a1 + 1136);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = *(a1 + 1128);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = *(a1 + 1120);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = *(a1 + 1112);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = *(a1 + 1104);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v66 = *(a1 + 1096);
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = *(a1 + 1088);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v68 = *(a1 + 1080);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = *(a1 + 1072);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = *(a1 + 1064);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = *(a1 + 1056);
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v72 = *(a1 + 1048);
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = *(a1 + 1040);
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v74 = *(a1 + 1032);
  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = *(a1 + 1024);
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = *(a1 + 1016);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = *(a1 + 1008);
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v78 = *(a1 + 1000);
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v79 = *(a1 + 992);
  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = *(a1 + 984);
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = *(a1 + 976);
  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v82 = *(a1 + 968);
  if ((v82 & 7) != 0)
  {
    atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v83 = *(a1 + 960);
  if ((v83 & 7) != 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v84 = *(a1 + 952);
  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = *(a1 + 944);
  if ((v85 & 7) != 0)
  {
    atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v86 = *(a1 + 936);
  if ((v86 & 7) != 0)
  {
    atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v87 = *(a1 + 928);
  if ((v87 & 7) != 0)
  {
    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v88 = *(a1 + 920);
  if ((v88 & 7) != 0)
  {
    atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v89 = *(a1 + 912);
  if ((v89 & 7) != 0)
  {
    atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v90 = *(a1 + 904);
  if ((v90 & 7) != 0)
  {
    atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v91 = *(a1 + 896);
  if ((v91 & 7) != 0)
  {
    atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v92 = *(a1 + 888);
  if ((v92 & 7) != 0)
  {
    atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v93 = *(a1 + 880);
  if ((v93 & 7) != 0)
  {
    atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v94 = *(a1 + 872);
  if ((v94 & 7) != 0)
  {
    atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v95 = *(a1 + 864);
  if ((v95 & 7) != 0)
  {
    atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v96 = *(a1 + 856);
  if ((v96 & 7) != 0)
  {
    atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v97 = *(a1 + 848);
  if ((v97 & 7) != 0)
  {
    atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v98 = *(a1 + 840);
  if ((v98 & 7) != 0)
  {
    atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v99 = *(a1 + 832);
  if ((v99 & 7) != 0)
  {
    atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v100 = *(a1 + 824);
  if ((v100 & 7) != 0)
  {
    atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v101 = *(a1 + 816);
  if ((v101 & 7) != 0)
  {
    atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v102 = *(a1 + 808);
  if ((v102 & 7) != 0)
  {
    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v103 = *(a1 + 800);
  if ((v103 & 7) != 0)
  {
    atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v104 = *(a1 + 792);
  if ((v104 & 7) != 0)
  {
    atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v105 = *(a1 + 784);
  if ((v105 & 7) != 0)
  {
    atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v106 = *(a1 + 776);
  if ((v106 & 7) != 0)
  {
    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v107 = *(a1 + 768);
  if ((v107 & 7) != 0)
  {
    atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v108 = *(a1 + 760);
  if ((v108 & 7) != 0)
  {
    atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v109 = *(a1 + 752);
  if ((v109 & 7) != 0)
  {
    atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v110 = *(a1 + 744);
  if ((v110 & 7) != 0)
  {
    atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v111 = *(a1 + 736);
  if ((v111 & 7) != 0)
  {
    atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v112 = *(a1 + 728);
  if ((v112 & 7) != 0)
  {
    atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v113 = *(a1 + 720);
  if ((v113 & 7) != 0)
  {
    atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v114 = *(a1 + 712);
  if ((v114 & 7) != 0)
  {
    atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v115 = *(a1 + 704);
  if ((v115 & 7) != 0)
  {
    atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v116 = *(a1 + 696);
  if ((v116 & 7) != 0)
  {
    atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v117 = *(a1 + 688);
  if ((v117 & 7) != 0)
  {
    atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v118 = *(a1 + 680);
  if ((v118 & 7) != 0)
  {
    atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v119 = *(a1 + 672);
  if ((v119 & 7) != 0)
  {
    atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v120 = *(a1 + 664);
  if ((v120 & 7) != 0)
  {
    atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v121 = *(a1 + 656);
  if ((v121 & 7) != 0)
  {
    atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v122 = *(a1 + 648);
  if ((v122 & 7) != 0)
  {
    atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v123 = *(a1 + 640);
  if ((v123 & 7) != 0)
  {
    atomic_fetch_add_explicit((v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v124 = *(a1 + 632);
  if ((v124 & 7) != 0)
  {
    atomic_fetch_add_explicit((v124 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v125 = *(a1 + 624);
  if ((v125 & 7) != 0)
  {
    atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v126 = *(a1 + 616);
  if ((v126 & 7) != 0)
  {
    atomic_fetch_add_explicit((v126 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v127 = *(a1 + 608);
  if ((v127 & 7) != 0)
  {
    atomic_fetch_add_explicit((v127 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v128 = *(a1 + 600);
  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v129 = *(a1 + 592);
  if ((v129 & 7) != 0)
  {
    atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v130 = *(a1 + 584);
  if ((v130 & 7) != 0)
  {
    atomic_fetch_add_explicit((v130 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v131 = *(a1 + 576);
  if ((v131 & 7) != 0)
  {
    atomic_fetch_add_explicit((v131 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v132 = *(a1 + 568);
  if ((v132 & 7) != 0)
  {
    atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v133 = *(a1 + 560);
  if ((v133 & 7) != 0)
  {
    atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v134 = *(a1 + 552);
  if ((v134 & 7) != 0)
  {
    atomic_fetch_add_explicit((v134 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v135 = *(a1 + 544);
  if ((v135 & 7) != 0)
  {
    atomic_fetch_add_explicit((v135 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v136 = *(a1 + 536);
  if ((v136 & 7) != 0)
  {
    atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v137 = *(a1 + 528);
  if ((v137 & 7) != 0)
  {
    atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v138 = *(a1 + 520);
  if ((v138 & 7) != 0)
  {
    atomic_fetch_add_explicit((v138 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v139 = *(a1 + 512);
  if ((v139 & 7) != 0)
  {
    atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v140 = *(a1 + 504);
  if ((v140 & 7) != 0)
  {
    atomic_fetch_add_explicit((v140 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v141 = *(a1 + 496);
  if ((v141 & 7) != 0)
  {
    atomic_fetch_add_explicit((v141 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v142 = *(a1 + 488);
  if ((v142 & 7) != 0)
  {
    atomic_fetch_add_explicit((v142 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v143 = *(a1 + 480);
  if ((v143 & 7) != 0)
  {
    atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v144 = *(a1 + 472);
  if ((v144 & 7) != 0)
  {
    atomic_fetch_add_explicit((v144 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v145 = *(a1 + 464);
  if ((v145 & 7) != 0)
  {
    atomic_fetch_add_explicit((v145 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v146 = *(a1 + 456);
  if ((v146 & 7) != 0)
  {
    atomic_fetch_add_explicit((v146 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v147 = *(a1 + 448);
  if ((v147 & 7) != 0)
  {
    atomic_fetch_add_explicit((v147 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v148 = *(a1 + 440);
  if ((v148 & 7) != 0)
  {
    atomic_fetch_add_explicit((v148 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v149 = *(a1 + 432);
  if ((v149 & 7) != 0)
  {
    atomic_fetch_add_explicit((v149 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v150 = *(a1 + 424);
  if ((v150 & 7) != 0)
  {
    atomic_fetch_add_explicit((v150 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v151 = *(a1 + 416);
  if ((v151 & 7) != 0)
  {
    atomic_fetch_add_explicit((v151 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v152 = *(a1 + 408);
  if ((v152 & 7) != 0)
  {
    atomic_fetch_add_explicit((v152 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v153 = *(a1 + 400);
  if ((v153 & 7) != 0)
  {
    atomic_fetch_add_explicit((v153 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v154 = *(a1 + 392);
  if ((v154 & 7) != 0)
  {
    atomic_fetch_add_explicit((v154 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v155 = *(a1 + 384);
  if ((v155 & 7) != 0)
  {
    atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v156 = *(a1 + 376);
  if ((v156 & 7) != 0)
  {
    atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v157 = *(a1 + 368);
  if ((v157 & 7) != 0)
  {
    atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v158 = *(a1 + 360);
  if ((v158 & 7) != 0)
  {
    atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v159 = *(a1 + 352);
  if ((v159 & 7) != 0)
  {
    atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v160 = *(a1 + 344);
  if ((v160 & 7) != 0)
  {
    atomic_fetch_add_explicit((v160 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v161 = *(a1 + 336);
  if ((v161 & 7) != 0)
  {
    atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v162 = *(a1 + 328);
  if ((v162 & 7) != 0)
  {
    atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v163 = *(a1 + 320);
  if ((v163 & 7) != 0)
  {
    atomic_fetch_add_explicit((v163 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v164 = *(a1 + 312);
  if ((v164 & 7) != 0)
  {
    atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v165 = *(a1 + 304);
  if ((v165 & 7) != 0)
  {
    atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v166 = *(a1 + 296);
  if ((v166 & 7) != 0)
  {
    atomic_fetch_add_explicit((v166 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v167 = *(a1 + 288);
  if ((v167 & 7) != 0)
  {
    atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v168 = *(a1 + 280);
  if ((v168 & 7) != 0)
  {
    atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v169 = *(a1 + 272);
  if ((v169 & 7) != 0)
  {
    atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v170 = *(a1 + 264);
  if ((v170 & 7) != 0)
  {
    atomic_fetch_add_explicit((v170 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v171 = *(a1 + 256);
  if ((v171 & 7) != 0)
  {
    atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v172 = *(a1 + 248);
  if ((v172 & 7) != 0)
  {
    atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v173 = *(a1 + 240);
  if ((v173 & 7) != 0)
  {
    atomic_fetch_add_explicit((v173 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v174 = *(a1 + 232);
  if ((v174 & 7) != 0)
  {
    atomic_fetch_add_explicit((v174 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v175 = *(a1 + 224);
  if ((v175 & 7) != 0)
  {
    atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v176 = *(a1 + 216);
  if ((v176 & 7) != 0)
  {
    atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v177 = *(a1 + 208);
  if ((v177 & 7) != 0)
  {
    atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v178 = *(a1 + 200);
  if ((v178 & 7) != 0)
  {
    atomic_fetch_add_explicit((v178 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v179 = *(a1 + 192);
  if ((v179 & 7) != 0)
  {
    atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v180 = *(a1 + 184);
  if ((v180 & 7) != 0)
  {
    atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v181 = *(a1 + 176);
  if ((v181 & 7) != 0)
  {
    atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v182 = *(a1 + 168);
  if ((v182 & 7) != 0)
  {
    atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v183 = *(a1 + 160);
  if ((v183 & 7) != 0)
  {
    atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v184 = *(a1 + 152);
  if ((v184 & 7) != 0)
  {
    atomic_fetch_add_explicit((v184 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v185 = *(a1 + 144);
  if ((v185 & 7) != 0)
  {
    atomic_fetch_add_explicit((v185 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v186 = *(a1 + 136);
  if ((v186 & 7) != 0)
  {
    atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v187 = *(a1 + 128);
  if ((v187 & 7) != 0)
  {
    atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v188 = *(a1 + 120);
  if ((v188 & 7) != 0)
  {
    atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v189 = *(a1 + 112);
  if ((v189 & 7) != 0)
  {
    atomic_fetch_add_explicit((v189 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v190 = *(a1 + 104);
  if ((v190 & 7) != 0)
  {
    atomic_fetch_add_explicit((v190 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v191 = *(a1 + 96);
  if ((v191 & 7) != 0)
  {
    atomic_fetch_add_explicit((v191 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v192 = *(a1 + 88);
  if ((v192 & 7) != 0)
  {
    atomic_fetch_add_explicit((v192 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v193 = *(a1 + 80);
  if ((v193 & 7) != 0)
  {
    atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v194 = *(a1 + 72);
  if ((v194 & 7) != 0)
  {
    atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v195 = *(a1 + 64);
  if ((v195 & 7) != 0)
  {
    atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v196 = *(a1 + 56);
  if ((v196 & 7) != 0)
  {
    atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v197 = *(a1 + 48);
  if ((v197 & 7) != 0)
  {
    atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v198 = *(a1 + 40);
  if ((v198 & 7) != 0)
  {
    atomic_fetch_add_explicit((v198 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v199 = *(a1 + 32);
  if ((v199 & 7) != 0)
  {
    atomic_fetch_add_explicit((v199 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v200 = *(a1 + 24);
  if ((v200 & 7) != 0)
  {
    atomic_fetch_add_explicit((v200 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v201 = *(a1 + 16);
  if ((v201 & 7) != 0)
  {
    atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v202 = *(a1 + 8);
  if ((v202 & 7) != 0)
  {
    atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_239E878AC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

void *sub_239E87900(void *a1)
{
  *a1 = &unk_284D17288;
  a1[1] = 0;
  v2 = objc_alloc_init(MDLTransform);
  sub_239E682E4(&v2->_transform);
  v3 = a1[1];
  a1[1] = v2;

  return a1;
}

void sub_239E879F0(void *a1@<X0>, const std::string::value_type *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = a1;
  v8 = v7;
  v73 = a2;
  if (!a3)
  {
    sub_239E552A0(a4, "");
    goto LABEL_201;
  }

  v53 = a4;
  v51 = v7;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v68[0] = 0;
  v68[1] = 0;
  v69 = 0;
  v50 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = 0;
  v10 = &a2[a3];
  v11 = *MEMORY[0x277D82820];
  v12 = *(MEMORY[0x277D82820] + 24);
  do
  {
    memset(v67, 0, 160);
    v65 = 0u;
    v66 = 0u;
    memset(v64, 0, sizeof(v64));
    v62 = 0u;
    v63 = 0u;
    sub_239E88804(&v73, v10, __p);
    sub_239E8897C(&v62, __p, 8);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    sub_239E88B00(&v62, &v59);
    if (SHIBYTE(v61) < 0)
    {
      v14 = 3;
      if (*v59 == 35 || !v60)
      {
        goto LABEL_174;
      }

      if (v60 >= 0x801)
      {
        sub_239E552A0(v53, "lines in file too long to parse");
        v14 = 1;
        goto LABEL_174;
      }

      if (v60 == 1)
      {
        if (*v59 == 115)
        {
          goto LABEL_174;
        }
      }

      else if (v60 == 6 && *v59 == 1819047021 && *(v59 + 2) == 25193)
      {
LABEL_41:
        memset(__p, 0, 24);
        std::stringbuf::str();
        v20 = std::string::find(__p, 35, 0);
        if (v20 != -1)
        {
          std::string::basic_string(&v58, __p, 0, v20, (&v56 + 4));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          *__p = v58;
        }

        v21 = __p[23];
        v22 = __p[23];
        if (__p[23] < 0)
        {
          v21 = *&__p[8];
        }

        if (v21 >= 8)
        {
          std::string::basic_string(&v58, __p, 7uLL, 0xFFFFFFFFFFFFFFFFLL, (&v56 + 4));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          *__p = v58;
          v22 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        if ((v22 & 0x80) == 0)
        {
          goto LABEL_173;
        }

        v23 = *__p;
        goto LABEL_86;
      }

      v18 = v60;
      if (v60 == 1)
      {
        if (*v59 == 103)
        {
          goto LABEL_39;
        }

        v18 = v60;
        if (*v59 == 111)
        {
LABEL_75:
          memset(&v58, 0, sizeof(v58));
          sub_239E88B00(&v62, &v58);
          memset(__p, 0, sizeof(__p));
          v19 = v72;
          if (v72 < *(&v72 + 1))
          {
LABEL_40:
            *v19 = 0;
            *(v19 + 16) = 0;
            *(v19 + 24) = 0;
            *(v19 + 8) = 0;
            *(v19 + 8) = *&__p[8];
            *(v19 + 24) = *&__p[24];
            *&v72 = v19 + 32;
LABEL_72:
            if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

            v23 = v58.__r_.__value_.__r.__words[0];
            goto LABEL_86;
          }

LABEL_70:
          *&v72 = sub_239E997E4(&v71 + 1, __p);
          if (*&__p[8])
          {
            *&__p[16] = *&__p[8];
            operator delete(*&__p[8]);
          }

          goto LABEL_72;
        }

        if ((v61 & 0x8000000000000000) == 0)
        {
          v13 = v59;
LABEL_64:
          if (HIBYTE(v61) == 1)
          {
LABEL_77:
            if (v13 == 118)
            {
              goto LABEL_90;
            }

            goto LABEL_101;
          }

          if (HIBYTE(v61) != 2)
          {
            goto LABEL_101;
          }

          v25 = &v59;
LABEL_100:
          if (*v25 == 25462)
          {
            *__p = 0;
            LODWORD(v58.__r_.__value_.__l.__data_) = 0;
            v56 = 0;
            MEMORY[0x23EE80090](&v62, __p);
            MEMORY[0x23EE80090](&v62, &v58);
            MEMORY[0x23EE80090](&v62, &v56 + 4);
            MEMORY[0x23EE80090](&v62, &v56);
            v14 = 0;
            ++DWORD1(v70);
            goto LABEL_174;
          }

          goto LABEL_101;
        }
      }

      if (v18 == 6)
      {
        if (*v59 == 1835365237 && *(v59 + 2) == 27764)
        {
          goto LABEL_67;
        }

        if ((v61 & 0x8000000000000000) == 0)
        {
          v13 = v59;
          goto LABEL_64;
        }

        v18 = v60;
      }

      if (v18 == 1)
      {
        if (*v59 == 118)
        {
LABEL_90:
          HIDWORD(v56) = 0;
          *__p = 0;
          LODWORD(v58.__r_.__value_.__l.__data_) = 0;
          MEMORY[0x23EE80090](&v62, __p);
          MEMORY[0x23EE80090](&v62, &v58);
          MEMORY[0x23EE80090](&v62, &v56 + 4);
          LODWORD(v70) = v70 + 1;
          if ((v64[*(v62 - 24)] & 2) == 0)
          {
            LODWORD(v56) = 0;
            v55 = 0;
            MEMORY[0x23EE80090](&v62, &v56);
            v28 = *&v64[*(v62 - 24)];
            MEMORY[0x23EE80090](&v62, &v55 + 4);
            v29 = *&v64[*(v62 - 24)];
            MEMORY[0x23EE80090](&v62, &v55);
            v54 = 1065353216;
            if ((v64[*(v62 - 24)] & 2) == 0)
            {
              MEMORY[0x23EE80090](&v62, &v54);
            }

            if (((v29 | v28) & 2) == 0 && v70 - 1 == DWORD1(v70))
            {
              DWORD1(v70) = v70;
            }
          }

          goto LABEL_173;
        }

        if ((v61 & 0x8000000000000000) == 0)
        {
          goto LABEL_101;
        }
      }

      if (v60 != 2)
      {
        goto LABEL_101;
      }

      v25 = v59;
      goto LABEL_100;
    }

    v13 = v59;
    if (v59 == 35)
    {
      v14 = 3;
      goto LABEL_176;
    }

    if (!HIBYTE(v61))
    {
      goto LABEL_38;
    }

    if (HIBYTE(v61) == 1)
    {
      if (v59 != 103)
      {
        if (v59 == 115)
        {
LABEL_38:
          v14 = 3;
          goto LABEL_174;
        }

        if (v59 == 111)
        {
          goto LABEL_75;
        }

        goto LABEL_77;
      }

LABEL_39:
      memset(&v58, 0, sizeof(v58));
      sub_239E88B00(&v62, &v58);
      memset(__p, 0, sizeof(__p));
      v19 = v72;
      if (v72 < *(&v72 + 1))
      {
        goto LABEL_40;
      }

      goto LABEL_70;
    }

    if (HIBYTE(v61) != 6)
    {
      goto LABEL_64;
    }

    if (v59 == 1819047021 && WORD2(v59) == 25193)
    {
      goto LABEL_41;
    }

    if (v59 == 1835365237 && WORD2(v59) == 27764)
    {
LABEL_67:
      sub_239E88B00(&v62, v68);
      v26 = v72;
      if (v72 == *(&v71 + 1))
      {
        memset(__p, 0, sizeof(__p));
        if (v72 >= *(&v72 + 1))
        {
          v26 = sub_239E997E4(&v71 + 1, __p);
          *&v72 = v26;
          if (*&__p[8])
          {
            *&__p[16] = *&__p[8];
            operator delete(*&__p[8]);
            v26 = v72;
          }
        }

        else
        {
          *v72 = 0;
          *(v26 + 16) = 0;
          *(v26 + 24) = 0;
          *(v26 + 8) = 0;
          *(v26 + 8) = *&__p[8];
          *(v26 + 24) = *&__p[24];
          v26 += 32;
          *&v72 = v26;
        }
      }

      if (!*(v26 - 32))
      {
        goto LABEL_173;
      }

      memset(__p, 0, sizeof(__p));
      if (v26 < *(&v72 + 1))
      {
        *v26 = 0;
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        *(v26 + 8) = 0;
        *(v26 + 8) = *&__p[8];
        *(v26 + 24) = *&__p[24];
        *&v72 = v26 + 32;
        goto LABEL_173;
      }

      v27 = sub_239E997E4(&v71 + 1, __p);
      v23 = *&__p[8];
      *&v72 = v27;
      if (!*&__p[8])
      {
LABEL_173:
        v14 = 0;
        goto LABEL_174;
      }

      *&__p[16] = *&__p[8];
LABEL_86:
      operator delete(v23);
      goto LABEL_173;
    }

LABEL_101:
    if (sub_239E55D74(&v59, "vt"))
    {
      *__p = 0;
      LODWORD(v58.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](&v62, __p);
      MEMORY[0x23EE80090](&v62, &v58);
      ++DWORD2(v70);
      if ((v64[*(v62 - 24)] & 2) == 0)
      {
        MEMORY[0x23EE80090](&v62, __p);
        if ((v64[*(v62 - 24)] & 2) == 0)
        {
          MEMORY[0x23EE80090](&v62, &v58);
          ++HIDWORD(v70);
        }
      }

      goto LABEL_173;
    }

    if (sub_239E55D74(&v59, "vt2"))
    {
      *__p = 0;
      LODWORD(v58.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](&v62, __p);
      MEMORY[0x23EE80090](&v62, &v58);
      v14 = 0;
      ++HIDWORD(v70);
      goto LABEL_174;
    }

    if (sub_239E55D74(&v59, "vn"))
    {
      HIDWORD(v56) = 0;
      *__p = 0;
      LODWORD(v58.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](&v62, __p);
      MEMORY[0x23EE80090](&v62, &v58);
      MEMORY[0x23EE80090](&v62, &v56 + 4);
      v14 = 0;
      LODWORD(v71) = v71 + 1;
      goto LABEL_174;
    }

    if (sub_239E55D74(&v59, "f"))
    {
      if (v72 == *(&v71 + 1))
      {
        memset(__p, 0, sizeof(__p));
        sub_239E99778(&v71 + 1, __p);
        if (*&__p[8])
        {
          *&__p[16] = *&__p[8];
          operator delete(*&__p[8]);
        }
      }

      if ((v64[*(v62 - 24)] & 2) != 0)
      {
        goto LABEL_173;
      }

      v30 = 0;
      while (1)
      {
        memset(__p, 0, 24);
        sub_239E88B00(&v62, __p);
        v31 = __p[23];
        if ((__p[23] & 0x8000000000000000) == 0)
        {
          break;
        }

        v31 = *&__p[8];
        if (*&__p[8])
        {
          v52 = v30;
          v32 = *__p;
LABEL_121:
          v33 = strtol(v32, 0, 10);
          v34 = *v32;
          v35 = v32;
          if (v34 == 45)
          {
            v35 = v32 + 1;
            v34 = *(v32 + 1);
          }

          if ((v34 - 48) <= 9)
          {
            do
            {
              v36 = *++v35;
              v34 = v36;
            }

            while ((v36 - 48) < 0xA);
          }

          v37 = &v32[v31];
          if (v37 > v35)
          {
            if (v34 == 47)
            {
              v38 = v35 + 1;
            }

            else
            {
              v38 = v35;
            }

            if (v37 > v38)
            {
              if (*v38 == 47)
              {
                ++v38;
              }

              else
              {
                strtol(v38, 0, 10);
                v39 = *v38;
                if (v39 == 45)
                {
                  v40 = *++v38;
                  v39 = v40;
                }

                if ((v39 - 48) <= 9)
                {
                  do
                  {
                    v41 = *++v38;
                    v39 = v41;
                  }

                  while ((v41 - 48) < 0xA);
                }

                if (v39 == 47)
                {
                  ++v38;
                }
              }
            }

            if (v37 > v38)
            {
              if (*v38 == 47)
              {
                ++v38;
              }

              else
              {
                strtol(v38, 0, 10);
                v42 = *v38;
                if (v42 == 45)
                {
                  v43 = *++v38;
                  v42 = v43;
                }

                if ((v42 - 48) <= 9)
                {
                  do
                  {
                    v44 = *++v38;
                    v42 = v44;
                  }

                  while ((v44 - 48) < 0xA);
                }

                if (v42 == 47)
                {
                  ++v38;
                }
              }
            }

            if (v37 > v38)
            {
              if (*v38 == 47)
              {
                v45 = v38 + 1;
              }

              else
              {
                v45 = v38;
              }

              strtol(v45, 0, 10);
            }
          }

          if (v70)
          {
            v46 = v70 < v33;
          }

          else
          {
            v46 = 1;
          }

          if (v46)
          {
            v30 = v52;
          }

          else
          {
            v30 = v52;
            if (v33 >= 1 && v70 >= v33 || v33 < 0 && v33 >= -v70)
            {
              ++*(v72 - 32);
              v30 = v52 + 1;
            }
          }

          if ((__p[23] & 0x80000000) == 0)
          {
            goto LABEL_167;
          }
        }

        operator delete(*__p);
LABEL_167:
        if ((v64[*(v62 - 24)] & 2) != 0)
        {
          if ((v30 - 3) >= 0xFFFFFFFE)
          {
            v47 = v30;
            v14 = 0;
            *(v72 - 32) -= v47;
            goto LABEL_174;
          }

          goto LABEL_173;
        }
      }

      if (!__p[23])
      {
        goto LABEL_167;
      }

      v52 = v30;
      v32 = __p;
      goto LABEL_121;
    }

    if (sub_239E55D74(&v59, "p") || sub_239E55D74(&v59, "l") || sub_239E55D74(&v59, "t"))
    {
      goto LABEL_173;
    }

    if (SHIBYTE(v61) < 0)
    {
      if (v60 <= 1)
      {
        v14 = 0;
LABEL_175:
        operator delete(v59);
        goto LABEL_176;
      }

      v48 = v59;
      goto LABEL_188;
    }

    if (HIBYTE(v61) > 1u)
    {
      v48 = &v59;
LABEL_188:
      v14 = 0;
      if (v48[1] != 32)
      {
        ++v9;
      }

LABEL_174:
      if ((SHIBYTE(v61) & 0x80000000) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_175;
    }

    v14 = 0;
LABEL_176:
    *&v62 = v11;
    *(&v62 + *(v11 - 24)) = v12;
    *&v63 = MEMORY[0x277D82878] + 16;
    if (SBYTE7(v66) < 0)
    {
      operator delete(v65);
    }

    *&v63 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v63 + 1);
    std::istream::~istream();
    MEMORY[0x23EE80250](&v67[8]);
    if (v14 != 3 && v14)
    {
      goto LABEL_197;
    }
  }

  while (v10 > v73 && v9 < 200);
  if (v9 <= 199)
  {
    v49 = "";
  }

  else
  {
    v49 = "Too much unrecognized data in file, can't parse";
  }

  sub_239E552A0(v53, v49);
LABEL_197:

  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68[0]);
  }

  *&v62 = &v71 + 8;
  sub_239E916B8(&v62);
  v8 = v51;
LABEL_201:
}

void sub_239E886E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_239E88DF8(&a35);

  if (*(v36 - 161) < 0)
  {
    operator delete(*(v35 + 280));
  }

  a35 = a12;
  sub_239E916B8(&a35);

  _Unwind_Resume(a1);
}

void sub_239E88804(const std::string::value_type **a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *a1;
  memset(&v14, 0, sizeof(v14));
  if (v6 >= a2)
  {
    v11 = 0;
    v9 = v6;
  }

  else
  {
    while (1)
    {
      v7 = 0;
      v8 = a2 - v6;
      while (v6[v7] != 10)
      {
        *a1 = &v6[++v7];
        if (a2 - v6 == v7)
        {
          v9 = &v6[v7];
          goto LABEL_7;
        }
      }

      v9 = &v6[v7];
      v8 = v7;
LABEL_7:
      v10 = (v9 + 1) >= a2 || v9 == v6;
      if (v10 || *(v9 - 1) != 92)
      {
        break;
      }

      std::string::append(&v14, v6, (v8 - 1));
      v6 = *a1 + 1;
      *a1 = v6;
      if (v6 >= a2)
      {
        v8 = 0;
        v9 = v6;
        break;
      }
    }

    v11 = v8;
  }

  if (v9 < a2)
  {
    v12 = a2 - v9;
    v13 = v9 + 1;
    do
    {
      if (*(v13 - 1) != 10)
      {
        break;
      }

      *a1 = v13++;
      --v12;
    }

    while (v12);
  }

  std::string::append(&v14, v6, v11);
  sub_239E91570(&v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_239E5BAE0(a3, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = v14;
  }
}

void sub_239E8895C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239E8897C(uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  sub_239E989B8((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_239E88AD8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_239E88B00(uint64_t *a1, uint64_t a2)
{
  v20 = 0;
  MEMORY[0x23EE80060](&v20, a1, 0);
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
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
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
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
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
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_239E88D48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x239E88D08);
  }

  __cxa_rethrow();
}

uint64_t sub_239E88DF8(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x23EE80250](a1 + 120);
  return a1;
}

void sub_239E88F18(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v8 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  v9 = objc_msgSend_name(v5, v6, v7);

  if (!v9)
  {
    goto LABEL_6;
  }

  v12 = objc_msgSend_name(v8, v10, v11);
  v13 = v12;
  v16 = objc_msgSend_UTF8String(v13, v14, v15);
  MEMORY[0x23EE7FFA0](a3, v16);

  v17 = *(a3 + 23);
  if (*(a3 + 23) < 0)
  {
    v17 = *(a3 + 8);
  }

  if (!v17)
  {
LABEL_6:
    std::to_string(&__p, a2);
    v18 = std::string::insert(&__p, 0, "material_");
    v19 = v18->__r_.__value_.__r.__words[0];
    v24[0] = v18->__r_.__value_.__l.__size_;
    *(v24 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v21 = v24[0];
    *a3 = v19;
    *(a3 + 8) = v21;
    *(a3 + 15) = *(v24 + 7);
    *(a3 + 23) = v20;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_239E8905C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_239E890AC@<X0>(uint64_t a1@<X1>, std::string *a2@<X2>, uint64_t *a3@<X3>, _BYTE *a4@<X8>)
{
  v60[19] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D82860] + 64;
  bzero(v59, 0x230uLL);
  v60[0] = v7;
  v8 = *(MEMORY[0x277D82810] + 16);
  v58 = *(MEMORY[0x277D82810] + 8);
  *&v59[*(v58 - 24) - 8] = v8;
  v9 = &v59[*(v58 - 24) - 8];
  std::ios_base::init(v9, v59);
  v10 = MEMORY[0x277D82860] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v58 = v10;
  v60[0] = v7;
  MEMORY[0x23EE80030](v59);
  std::ofstream::open();
  v51 = *&v59[*(v58 - 24) + 24] & 5;
  if (v51)
  {
    sub_239E552A0(a4, "Failed to open file path.");
    goto LABEL_20;
  }

  v12 = MEMORY[0x277CBEBC0];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, a1);
  v49 = objc_msgSend_fileURLWithPath_(v12, v14, v13);

  v50 = objc_msgSend_lastPathComponent(v49, v15, v16);
  v17 = sub_239E98B94(&v58, "# Apple ModelI/O MTL File: ", 27);
  v18 = v50;
  v21 = objc_msgSend_UTF8String(v50, v19, v20);
  v22 = strlen(v21);
  v23 = sub_239E98B94(v17, v21, v22);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v54, MEMORY[0x277D82680]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v54);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v25 = std::locale::use_facet(&v54, MEMORY[0x277D82680]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v54);
  std::ostream::put();
  std::ostream::flush();
  v28 = objc_msgSend_path(v49, v26, v27);
  v31 = objc_msgSend_stringByDeletingLastPathComponent(v28, v29, v30);

  v32 = *a3;
  v53 = a3[1];
  if (*a3 != v53)
  {
    v33 = 1;
    do
    {
      v34 = *(v32 + 64);
      v35 = *(v32 + 72);
      v38 = objc_msgSend_material(v35, v36, v37);
      v39 = sub_239E98B94(&v58, "newmtl ", 7);
      sub_239E88F18(v38, v33, &v54);
      if ((v56 & 0x80u) == 0)
      {
        locale = &v54;
      }

      else
      {
        locale = v54.__locale_;
      }

      if ((v56 & 0x80u) == 0)
      {
        v41 = v56;
      }

      else
      {
        v41 = v55;
      }

      v42 = sub_239E98B94(v39, locale, v41);
      std::ios_base::getloc((v42 + *(*v42 - 24)));
      v43 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
      (v43->__vftable[2].~facet_0)(v43, 10);
      std::locale::~locale(&v57);
      std::ostream::put();
      std::ostream::flush();
      if (v56 < 0)
      {
        operator delete(v54.__locale_);
        if (!v38)
        {
LABEL_15:
          v44 = sub_239E98B94(&v58, "Kd = 0.5 0.5 0.5", 16);
          std::ios_base::getloc((v44 + *(*v44 - 24)));
          v45 = std::locale::use_facet(&v54, MEMORY[0x277D82680]);
          (v45->__vftable[2].~facet_0)(v45, 10);
          std::locale::~locale(&v54);
          std::ostream::put();
          std::ostream::flush();
          goto LABEL_16;
        }
      }

      else if (!v38)
      {
        goto LABEL_15;
      }

      sub_239E89D0C(v38, 0, "Kd", "map_Kd", a2, &v58, v31);
      sub_239E89D0C(v38, 13, "Ka", "map_Ka", a2, &v58, v31);
      sub_239E89D0C(v38, 3, "Ks", "map_Ks", a2, &v58, v31);
      sub_239E89D0C(v38, 15, "d", "map_d", a2, &v58, v31);
      sub_239E89D0C(v38, 22, "ao", "map_ao", a2, &v58, v31);
      sub_239E89D0C(v38, 4, "Ns", "map_Ns", a2, &v58, v31);
      sub_239E89D0C(v38, 14, "bump", "map_bump", a2, &v58, v31);
      sub_239E89D0C(v38, 1, "subsurface", "map_subsurface", a2, &v58, v31);
      sub_239E89D0C(v38, 2, "metallic", "map_metallic", a2, &v58, v31);
      sub_239E89D0C(v38, 5, "specularTint", "map_specularTint", a2, &v58, v31);
      sub_239E89D0C(v38, 6, "roughness", "map_roughness", a2, &v58, v31);
      sub_239E89D0C(v38, 7, "anisotropic", "map_anisotropic", a2, &v58, v31);
      sub_239E89D0C(v38, 8, "anisotropicRotation", "map_anisotropicRotation", a2, &v58, v31);
      sub_239E89D0C(v38, 9, "sheen", "map_sheen", a2, &v58, v31);
      sub_239E89D0C(v38, 10, "sheenTint", "map_sheenTint", a2, &v58, v31);
      sub_239E89D0C(v38, 11, "clearCoat", "map_clearCoat", a2, &v58, v31);
      sub_239E89D0C(v38, 12, "clearCoatGloss", "map_clearCoatGloss", a2, &v58, v31);
      sub_239E89D0C(v38, 18, "objectSpaceNormal", "map_objectSpaceNormal", a2, &v58, v31);
      sub_239E89D0C(v38, 19, "tangentSpaceNormal", "map_tangentSpaceNormal", a2, &v58, v31);
      sub_239E89D0C(v38, 20, "displacement", "map_displacement", a2, &v58, v31);
      sub_239E89D0C(v38, 21, "objectDisplacementScale", "map_objectDisplacementScale", a2, &v58, v31);
LABEL_16:
      std::ios_base::getloc(&v59[*(v58 - 24) - 8]);
      v46 = std::locale::use_facet(&v54, MEMORY[0x277D82680]);
      (v46->__vftable[2].~facet_0)(v46, 10);
      std::locale::~locale(&v54);
      std::ostream::put();
      std::ostream::flush();

      v32 += 80;
      ++v33;
    }

    while (v32 != v53);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v59[*(v58 - 24) - 8], *&v59[*(v58 - 24) + 24] | 4);
  }

LABEL_20:
  v58 = *MEMORY[0x277D82810];
  *&v59[*(v58 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x23EE80040](v59);
  std::ostream::~ostream();
  result = MEMORY[0x23EE80250](v60);
  if (!v51)
  {
    result = sub_239E552A0(a4, "");
  }

  v48 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239E89B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, _BYTE *a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22, uint64_t a23)
{
  sub_239E8AAF8(&a23);
  if (a2 == 1)
  {
    v26 = __cxa_begin_catch(a1);
    v27 = (*(*v26 + 16))(v26);
    sub_239E552A0(a14, v27);
    __cxa_end_catch();
    JUMPOUT(0x239E89B14);
  }

  _Unwind_Resume(a1);
}

void sub_239E89D0C(void *a1, uint64_t a2, const char *a3, const char *a4, std::string *a5, void *a6, void *a7)
{
  v127 = *MEMORY[0x277D85DE8];
  v112 = a1;
  v113 = a7;
  v12 = objc_msgSend_propertiesWithSemantic_(v112, v11, a2);
  if (v12)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v111 = v12;
    obj = v12;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v122, v126, 16);
    if (!v16)
    {
      goto LABEL_54;
    }

    v17 = *v123;
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v123 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v122 + 1) + 8 * i);
        v20 = objc_msgSend_type(v19, v14, v15);
        if (v20 > 4)
        {
          if (v20 > 6)
          {
            if (v20 == 8)
            {
              objc_msgSend_float4Value(v19, v21, v22);
              v49 = sub_239E98B94(a6, "\t", 1);
              v50 = strlen(a3);
              v51 = sub_239E98B94(v49, a3, v50);
              sub_239E98B94(v51, " ", 1);
              v52 = std::ostream::operator<<();
              sub_239E98B94(v52, " ", 1);
              v53 = std::ostream::operator<<();
              sub_239E98B94(v53, " ", 1);
              v54 = std::ostream::operator<<();
              sub_239E98B94(v54, " ", 1);
              v55 = std::ostream::operator<<();
              std::ios_base::getloc((v55 + *(*v55 - 24)));
              v56 = std::locale::use_facet(v120, MEMORY[0x277D82680]);
              (v56->__vftable[2].~facet_0)(v56, 10);
              std::locale::~locale(v120);
              std::ostream::put();
              std::ostream::flush();
              continue;
            }

LABEL_26:
            objc_msgSend_float3Value(v19, v21, v22);
            v92 = sub_239E98B94(a6, "\t", 1);
            v93 = strlen(a3);
            v94 = sub_239E98B94(v92, a3, v93);
            sub_239E98B94(v94, " ", 1);
            v95 = std::ostream::operator<<();
            sub_239E98B94(v95, " ", 1);
            v96 = std::ostream::operator<<();
            sub_239E98B94(v96, " ", 1);
            v97 = std::ostream::operator<<();
            std::ios_base::getloc((v97 + *(*v97 - 24)));
            v98 = std::locale::use_facet(v120, MEMORY[0x277D82680]);
            (v98->__vftable[2].~facet_0)(v98, 10);
            std::locale::~locale(v120);
            std::ostream::put();
            std::ostream::flush();
            continue;
          }

          if (v20 == 5)
          {
            objc_msgSend_floatValue(v19, v21, v22);
            v61 = sub_239E98B94(a6, "\t", 1);
            v62 = strlen(a3);
            v33 = sub_239E98B94(v61, a3, v62);
          }

          else
          {
            objc_msgSend_float2Value(v19, v21, v22);
            v30 = sub_239E98B94(a6, "\t", 1);
            v31 = strlen(a3);
            v32 = sub_239E98B94(v30, a3, v31);
            sub_239E98B94(v32, " ", 1);
            v33 = std::ostream::operator<<();
          }

          sub_239E98B94(v33, " ", 1);
          v34 = std::ostream::operator<<();
          std::ios_base::getloc((v34 + *(*v34 - 24)));
          v35 = std::locale::use_facet(v120, MEMORY[0x277D82680]);
          (v35->__vftable[2].~facet_0)(v35, 10);
          std::locale::~locale(v120);
          std::ostream::put();
          std::ostream::flush();
        }

        else if (v20 > 2)
        {
          if (v20 == 3)
          {
            v63 = objc_msgSend_name(v112, v21, v22);
            v66 = objc_msgSend_name(v19, v64, v65);
            v68 = objc_msgSend_stringByAppendingFormat_(v63, v67, @"_%@.png", v66);

            v69 = MEMORY[0x277CBEBC0];
            v71 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v70, @"%@/%@", v113, v68);
            v73 = objc_msgSend_fileURLWithPath_(v69, v72, v71);

            v76 = objc_msgSend_textureSamplerValue(v19, v74, v75);
            v79 = objc_msgSend_texture(v76, v77, v78);
            objc_msgSend_writeToURL_(v79, v80, v73);

            v81 = sub_239E98B94(a6, "\t", 1);
            v82 = strlen(a4);
            v83 = sub_239E98B94(v81, a4, v82);
            v84 = sub_239E98B94(v83, " ", 1);
            v85 = v68;
            v88 = objc_msgSend_UTF8String(v68, v86, v87);
            v89 = strlen(v88);
            v90 = sub_239E98B94(v84, v88, v89);
            std::ios_base::getloc((v90 + *(*v90 - 24)));
            v91 = std::locale::use_facet(v120, MEMORY[0x277D82680]);
            (v91->__vftable[2].~facet_0)(v91, 10);
            std::locale::~locale(v120);
            std::ostream::put();
            std::ostream::flush();
          }

          else
          {
            v36 = objc_msgSend_color(v19, v21, v22);
            if (CGColorGetNumberOfComponents(v36) >= 3)
            {
              v37 = objc_msgSend_color(v19, v14, v15);
              Components = CGColorGetComponents(v37);
              v39 = sub_239E98B94(a6, "\t", 1);
              v40 = strlen(a3);
              v41 = sub_239E98B94(v39, a3, v40);
              v42 = sub_239E98B94(v41, " ", 1);
              v43 = MEMORY[0x23EE80120](v42, *Components);
              v44 = sub_239E98B94(v43, " ", 1);
              v45 = MEMORY[0x23EE80120](v44, Components[1]);
              v46 = sub_239E98B94(v45, " ", 1);
              v47 = MEMORY[0x23EE80120](v46, Components[2]);
              std::ios_base::getloc((v47 + *(*v47 - 24)));
              v48 = std::locale::use_facet(v120, MEMORY[0x277D82680]);
              (v48->__vftable[2].~facet_0)(v48, 10);
              std::locale::~locale(v120);
              std::ostream::put();
              std::ostream::flush();
            }
          }
        }

        else
        {
          if (v20 == 1)
          {
            v120[0].__locale_ = 0;
            v120[1].__locale_ = 0;
            v121 = 0;
            v57 = objc_msgSend_stringValue(v19, v21, v22);
            v58 = v57;
            v60 = objc_msgSend_cStringUsingEncoding_(v57, v59, 4);
            sub_239E552A0(v120, v60);

            if (SHIBYTE(v121) < 0)
            {
              sub_239E5BAE0(&__p, v120[0].__locale_, v120[1].__locale_);
            }

            else
            {
              *&__p.__r_.__value_.__l.__data_ = *&v120[0].__locale_;
              __p.__r_.__value_.__r.__words[2] = v121;
            }

            sub_239E9175C(&__p, a5, &v119);
            if (SHIBYTE(v121) < 0)
            {
              operator delete(v120[0].__locale_);
            }

            *&v120[0].__locale_ = *&v119.__r_.__value_.__l.__data_;
            v121 = v119.__r_.__value_.__r.__words[2];
            *(&v119.__r_.__value_.__s + 23) = 0;
            v119.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v99 = sub_239E98B94(a6, "\t", 1);
            v100 = strlen(a4);
            v101 = sub_239E98B94(v99, a4, v100);
            v102 = sub_239E98B94(v101, " ", 1);
            if (v121 >= 0)
            {
              locale = v120;
            }

            else
            {
              locale = v120[0].__locale_;
            }

            if (v121 >= 0)
            {
              v104 = HIBYTE(v121);
            }

            else
            {
              v104 = v120[1].__locale_;
            }
          }

          else
          {
            if (v20 != 2)
            {
              goto LABEL_26;
            }

            v120[0].__locale_ = 0;
            v120[1].__locale_ = 0;
            v121 = 0;
            v23 = objc_msgSend_URLValue(v19, v21, v22);
            v26 = objc_msgSend_path(v23, v24, v25);
            v27 = v26;
            v29 = objc_msgSend_cStringUsingEncoding_(v26, v28, 4);
            sub_239E552A0(v120, v29);

            if (SHIBYTE(v121) < 0)
            {
              sub_239E5BAE0(&__dst, v120[0].__locale_, v120[1].__locale_);
            }

            else
            {
              *&__dst.__r_.__value_.__l.__data_ = *&v120[0].__locale_;
              __dst.__r_.__value_.__r.__words[2] = v121;
            }

            sub_239E9175C(&__dst, a5, &v119);
            if (SHIBYTE(v121) < 0)
            {
              operator delete(v120[0].__locale_);
            }

            *&v120[0].__locale_ = *&v119.__r_.__value_.__l.__data_;
            v121 = v119.__r_.__value_.__r.__words[2];
            *(&v119.__r_.__value_.__s + 23) = 0;
            v119.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            v105 = sub_239E98B94(a6, "\t", 1);
            v106 = strlen(a4);
            v107 = sub_239E98B94(v105, a4, v106);
            v102 = sub_239E98B94(v107, " ", 1);
            if (v121 >= 0)
            {
              locale = v120;
            }

            else
            {
              locale = v120[0].__locale_;
            }

            if (v121 >= 0)
            {
              v104 = HIBYTE(v121);
            }

            else
            {
              v104 = v120[1].__locale_;
            }
          }

          v108 = sub_239E98B94(v102, locale, v104);
          std::ios_base::getloc((v108 + *(*v108 - 24)));
          v109 = std::locale::use_facet(&v119, MEMORY[0x277D82680]);
          (v109->__vftable[2].~facet_0)(v109, 10);
          std::locale::~locale(&v119);
          std::ostream::put();
          std::ostream::flush();
          if (SHIBYTE(v121) < 0)
          {
            operator delete(v120[0].__locale_);
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v122, v126, 16);
      if (!v16)
      {
LABEL_54:

        v12 = v111;
        break;
      }
    }
  }

  v110 = *MEMORY[0x277D85DE8];
}

void *sub_239E8AAF8(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x23EE80040](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](a1 + 52);
  return a1;
}

void sub_239E8ABC4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v147[19] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v142 = 0uLL;
  v143 = 0;
  v107 = v7;
  sub_239E552A0(&v142, "");
  memset(&v141, 0, sizeof(v141));
  sub_239E5663C(v7, v9, v10, &v141);
  v11 = MEMORY[0x277D82860] + 64;
  bzero(v146, 0x230uLL);
  v147[0] = v11;
  v12 = *(MEMORY[0x277D82810] + 16);
  v145 = *(MEMORY[0x277D82810] + 8);
  *&v146[*(v145 - 24) - 8] = v12;
  v13 = &v146[*(v145 - 24) - 8];
  std::ios_base::init(v13, v146);
  v14 = MEMORY[0x277D82860] + 24;
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  v145 = v14;
  v147[0] = v11;
  MEMORY[0x23EE80030](v146);
  std::ofstream::open();
  v106 = *&v146[*(v145 - 24) + 24] & 5;
  if (v106)
  {
    sub_239E552A0(a4, "Failed to open file path.");
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_239E5BAE0(&__str, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v141;
    }

    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    memset(&__p, 0, sizeof(__p));
    memset(&v138, 0, sizeof(v138));
    v136 = 0uLL;
    v137 = 0;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v17 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
    v104 = a4;
    v105 = v8;
    do
    {
      if (!size)
      {
        goto LABEL_18;
      }

      v18 = v17[size--];
    }

    while (v18 != 46);
    if (size == -1)
    {
LABEL_18:
      v103 = 0;
      v102 = 0;
      std::string::operator=(&__p, &__str);
      goto LABEL_19;
    }

    std::string::basic_string(v124, &__str, size + 1, 0xFFFFFFFFFFFFFFFFLL, v122);
    v102 = *v124;
    v103 = v124[23];
    std::string::basic_string(v124, &__str, 0, size, v122);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = *v124;
LABEL_19:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    memset(v124, 0, 24);
    v20 = v124;
    sub_239E959D0(v124, v19 + 4);
    if (v124[23] < 0)
    {
      v20 = *v124;
    }

    if (v19)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v20, p_p, v19);
    }

    strcpy(&v20[v19], ".mtl");
    if (SHIBYTE(v137) < 0)
    {
      operator delete(v136);
    }

    v137 = *&v124[16];
    v22 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    v136 = *v124;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = __p.__r_.__value_.__l.__size_;
    }

    v24 = ~v23;
    v25 = (v22 + v23 - 1);
    do
    {
      if (v24 == -1)
      {
        goto LABEL_43;
      }

      v26 = v25->__r_.__value_.__s.__data_[0];
      v25 = (v25 - 1);
      ++v24;
    }

    while (v26 != 47);
    if (!v24)
    {
LABEL_43:
      std::string::operator=(&v138, &__p);
      goto LABEL_44;
    }

    std::string::basic_string(v124, &__p, -v24, 0xFFFFFFFFFFFFFFFFLL, v122);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    v138 = *v124;
LABEL_44:
    v27 = sub_239E98B94(&v145, "# Apple ModelIO OBJ File: ", 26);
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v138;
    }

    else
    {
      v28 = v138.__r_.__value_.__r.__words[0];
    }

    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v138.__r_.__value_.__l.__size_;
    }

    v30 = sub_239E98B94(v27, v28, v29);
    std::ios_base::getloc((v30 + *(*v30 - 24)));
    v31 = std::locale::use_facet(v124, MEMORY[0x277D82680]);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(v124);
    std::ostream::put();
    std::ostream::flush();
    v32 = sub_239E98B94(&v145, "mtllib ", 7);
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v138;
    }

    else
    {
      v33 = v138.__r_.__value_.__r.__words[0];
    }

    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = v138.__r_.__value_.__l.__size_;
    }

    v35 = sub_239E98B94(v32, v33, v34);
    v36 = sub_239E98B94(v35, ".mtl", 4);
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v37 = std::locale::use_facet(v124, MEMORY[0x277D82680]);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(v124);
    std::ostream::put();
    std::ostream::flush();
    v134 = 0;
    v133 = 0;
    v135 = 0;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v38 = v8;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v129, v144, 16);
    if (v40)
    {
      v41 = *v130;
      v42 = MEMORY[0x277D860B8];
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v130 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v44 = *(*(&v129 + 1) + 8 * i);
          sub_239F5C680(a1, &v133, v44, *v42, v42[1], v42[2], v42[3]);
          sub_239F5CA38(a1, &v133, v44, *v42, v42[1], v42[2], v42[3]);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v45, &v129, v144, 16);
      }

      while (v40);
    }

    memset(&v128, 0, sizeof(v128));
    v48 = objc_msgSend_URL(v38, v46, v47);
    v49 = v48 == 0;

    if (!v49)
    {
      v52 = objc_msgSend_URL(v38, v50, v51);
      v55 = objc_msgSend_path(v52, v53, v54);
      v56 = v55;
      v58 = objc_msgSend_cStringUsingEncoding_(v55, v57, 4);
      MEMORY[0x23EE7FFA0](&v128, v58);

      v59 = &v128;
      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v59 = v128.__r_.__value_.__r.__words[0];
      }

      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = SHIBYTE(v128.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v128.__r_.__value_.__l.__size_;
      }

      v61 = &v59[-1].__r_.__value_.__r.__words[2] + 7;
      while (v60)
      {
        v62 = v61[v60--];
        if (v62 == 47)
        {
          goto LABEL_74;
        }
      }

      v60 = -1;
LABEL_74:
      std::string::basic_string(v124, &v128, 0, v60, v122);
      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      v128 = *v124;
    }

    if (v137 >= 0)
    {
      v63 = &v136;
    }

    else
    {
      v63 = v136;
    }

    sub_239E890AC(v63, &v128, &v133, v124);
    if (SHIBYTE(v143) < 0)
    {
      operator delete(v142);
    }

    v142 = *v124;
    v143 = *&v124[16];
    v127[1] = 0;
    v127[0] = 0;
    v126 = v127;
    memset(v124, 0, sizeof(v124));
    v125 = 1065353216;
    memset(v122, 0, sizeof(v122));
    v123 = 1065353216;
    memset(v120, 0, sizeof(v120));
    v121 = 1065353216;
    memset(v118, 0, sizeof(v118));
    v119 = 1065353216;
    if (v134 != v133)
    {
      v64 = v133;
      v108 = *v133;
      v109 = *(v133 + 1);
      v110 = *(v133 + 2);
      v111 = *(v133 + 3);
      v112 = v133[8];
      v113 = *(v64 + 72);
      v67 = objc_msgSend_name(v113, v65, v66);
      LODWORD(v64) = v67 == 0;

      if (v64)
      {
        v90 = sub_239E98B94(&v145, "g mesh_", 7);
        v91 = MEMORY[0x23EE80140](v90, 0);
        std::ios_base::getloc((v91 + *(*v91 - 24)));
        v92 = std::locale::use_facet(&v115, MEMORY[0x277D82680]);
        (v92->__vftable[2].~facet_0)(v92, 10);
        std::locale::~locale(&v115);
        std::ostream::put();
        std::ostream::flush();
      }

      else
      {
        v116 = 0;
        v115.__locale_ = 0;
        v117 = 0;
        v70 = objc_msgSend_name(v113, v68, v69);
        v71 = v70;
        v74 = objc_msgSend_UTF8String(v70, v72, v73);
        sub_239E552A0(&v115, v74);

        v114.__locale_ = &v115;
        if (v127 == sub_239E69484(&v126, &v115.__locale_))
        {
          *(sub_239E631F0(&v126, &v115.__locale_) + 56) = 0;
          v93 = sub_239E98B94(&v145, "g ", 2);
          v79 = objc_msgSend_name(v113, v94, v95);
          v96 = v79;
          v99 = objc_msgSend_UTF8String(v79, v97, v98);
          v100 = strlen(v99);
          v88 = sub_239E98B94(v93, v99, v100);
        }

        else
        {
          v75 = sub_239E631F0(&v126, &v115.__locale_);
          ++*(v75 + 56);
          v76 = sub_239E98B94(&v145, "g ", 2);
          v79 = objc_msgSend_name(v113, v77, v78);
          v80 = v79;
          v83 = objc_msgSend_UTF8String(v79, v81, v82);
          v84 = strlen(v83);
          v85 = sub_239E98B94(v76, v83, v84);
          v86 = sub_239E98B94(v85, "_", 1);
          v114.__locale_ = &v115;
          v87 = sub_239E631F0(&v126, &v115.__locale_);
          v88 = MEMORY[0x23EE80140](v86, *(v87 + 56));
        }

        std::ios_base::getloc((v88 + *(*v88 - 24)));
        v89 = std::locale::use_facet(&v114, MEMORY[0x277D82680]);
        (v89->__vftable[2].~facet_0)(v89, 10);
        std::locale::~locale(&v114);
        std::ostream::put();
        std::ostream::flush();

        if (SHIBYTE(v117) < 0)
        {
          operator delete(v115.__locale_);
        }
      }

      v112;
      operator new();
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear(&v146[*(v145 - 24) - 8], *&v146[*(v145 - 24) + 24] | 4);
    }

    sub_239E99BE0(v118);
    sub_239E7B644(v120);
    sub_239E7B644(v122);
    sub_239E7B644(v124);
    sub_239E6A66C(&v126, v127[0]);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    *v124 = &v133;
    sub_239E99B30(v124);
    a4 = v104;
    if (v103 < 0)
    {
      operator delete(v102);
    }

    v8 = v105;
    if (SHIBYTE(v137) < 0)
    {
      operator delete(v136);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v145 = *MEMORY[0x277D82810];
  *&v146[*(v145 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x23EE80040](v146);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v147);
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (!v106)
  {
    *a4 = v142;
    *(a4 + 2) = v143;
    v143 = 0;
    v142 = 0uLL;
  }

  if (SHIBYTE(v143) < 0)
  {
    operator delete(v142);
  }

  v101 = *MEMORY[0x277D85DE8];
}

void sub_239E8DBEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, int a13, char a14, _BYTE *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  v57 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v57;
    operator delete(v57);
  }

  v58 = STACK[0x5B0];
  if (STACK[0x5B0])
  {
    STACK[0x5B8] = v58;
    operator delete(v58);
  }

  v59 = STACK[0x5E0];
  if (STACK[0x5E0])
  {
    STACK[0x5E8] = v59;
    operator delete(v59);
  }

  v60 = STACK[0x600];
  if (STACK[0x600])
  {
    STACK[0x608] = v60;
    operator delete(v60);
  }

  v61 = STACK[0x618];
  if (STACK[0x618])
  {
    STACK[0x620] = v61;
    operator delete(v61);
  }

  v62 = STACK[0x630];
  if (STACK[0x630])
  {
    STACK[0x638] = v62;
    operator delete(v62);
  }

  v63 = STACK[0x648];
  if (STACK[0x648])
  {
    STACK[0x650] = v63;
    operator delete(v63);
  }

  sub_239E99BE0(&STACK[0x660]);
  sub_239E7B644(&STACK[0x690]);
  sub_239E7B644(&STACK[0x6C0]);
  sub_239E7B644(&STACK[0x6F0]);
  sub_239E6A66C(&STACK[0x718], STACK[0x720]);
  if (SLOBYTE(STACK[0x747]) < 0)
  {
    operator delete(STACK[0x730]);
  }

  STACK[0x6F0] = &STACK[0x798];
  sub_239E99B30(&STACK[0x6F0]);
  if (a14 < 0)
  {
    operator delete(a12);
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(STACK[0x7B0]);
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(STACK[0x7D0]);
  }

  if (SLOBYTE(STACK[0x807]) < 0)
  {
    operator delete(STACK[0x7F0]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  sub_239E8AAF8(&STACK[0x8E0]);
  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(STACK[0x828]);
  }

  if (a2 == 1)
  {
    v64 = __cxa_begin_catch(a1);
    v65 = (*(*v64 + 16))(v64);
    sub_239E552A0(a15, v65);
    __cxa_end_catch();
    JUMPOUT(0x239E8DB8CLL);
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(STACK[0x840]);
  }

  _Unwind_Resume(a1);
}

void sub_239E8E4FC(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_239E797B4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_239E91AC8(a1, v10);
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

void sub_239E8E5D0(void *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, void *a9@<X8>, float32x4_t a10@<Q0>, float32x4_t a11@<Q1>, float32x4_t a12@<Q2>, float32x4_t a13@<Q3>, void *a14, void *a15, void *a16)
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v126 = a6;
  v27 = a7;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  v125 = a9;
  v127 = v24;
  if (v22 && objc_msgSend_stride(v22, v25, v26))
  {
    v28 = objc_msgSend_bufferSize(v22, v25, v26);
    v31 = v28 / objc_msgSend_stride(v22, v29, v30) - 1;
  }

  else
  {
    v31 = -1;
  }

  if (v126 && objc_msgSend_stride(v126, v25, v26))
  {
    v32 = objc_msgSend_bufferSize(v126, v25, v26);
    v35 = v32 / objc_msgSend_stride(v126, v33, v34) - 1;
  }

  else
  {
    v35 = -1;
  }

  v120 = v35;
  if (v27 && objc_msgSend_stride(v27, v25, v26))
  {
    v36 = objc_msgSend_bufferSize(v27, v25, v26);
    v39 = v36 / objc_msgSend_stride(v27, v37, v38) - 1;
  }

  else
  {
    v39 = -1;
  }

  v128 = v39;
  if (v23 && objc_msgSend_stride(v23, v25, v26))
  {
    v40 = objc_msgSend_bufferSize(v23, v25, v26);
    v43 = v40 / objc_msgSend_stride(v23, v41, v42) - 1;
  }

  else
  {
    v43 = -1;
  }

  v117 = v43;
  v119 = v23;
  if (v127 && objc_msgSend_stride(v127, v25, v26))
  {
    v44 = objc_msgSend_bufferSize(v127, v25, v26);
    v47 = v44 / objc_msgSend_stride(v127, v45, v46) - 1;
  }

  else
  {
    v47 = -1;
  }

  v116 = v47;
  if (a1[1] != *a1)
  {
    v48 = 0;
    v129 = v27;
    do
    {
      if (a2[9])
      {
        v132 = 0uLL;
        v133 = 0;
        v49 = objc_msgSend_stride(v22, v25, v26);
        v52 = objc_msgSend_stride(v27, v50, v51);
        v55 = objc_msgSend_dataStart(v22, v53, v54);
        v60 = objc_msgSend_dataStart(v27, v56, v57);
        v61 = *(*a1 + 4 * v48);
        if (v31 >= v61)
        {
          v62 = *(*a1 + 4 * v48);
        }

        else
        {
          v62 = v31;
        }

        if (v128 >= v61)
        {
          v63 = *(*a1 + 4 * v48);
        }

        else
        {
          v63 = v128;
        }

        v65 = v49 * (v62 & ~(v62 >> 31));
        if (v65 + 12 <= objc_msgSend_bufferSize(v22, v58, v59) && (v66 = v52 * (v63 & ~(v63 >> 31)), v66 + 12 <= objc_msgSend_bufferSize(v129, v25, v26)))
        {
          v131 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(a13, a10, *(v55 + v65)), a11, *(v55 + v65 + 4)), a12, *(v55 + v65 + 8));
          sub_239E8E4FC(&v132, &v131);
          *(v131.i64 + 4) = 0;
          v131.i32[0] = 0;
          v78.i64[0] = *(v60 + v66);
          v78.i32[2] = *(v60 + v66 + 8);
          v131 = v78;
          sub_239E8E4FC(&v132, &v131);
          v134 = &v132;
          v68 = *(sub_239E98F30(a16, &v132) + 10) + 1;
          v67 = 1;
        }

        else
        {
          v67 = 0;
          v68 = -1;
        }

        v27 = v129;
        if (v132.i64[0])
        {
          v132.i64[1] = v132.i64[0];
          operator delete(v132.i64[0]);
        }

        if ((v67 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v69 = objc_msgSend_stride(v22, v25, v26);
        v74 = objc_msgSend_dataStart(v22, v70, v71);
        if (v31 >= *(*a1 + 4 * v48))
        {
          v75 = *(*a1 + 4 * v48);
        }

        else
        {
          v75 = v31;
        }

        v76 = objc_msgSend_bufferSize(v22, v72, v73);
        v77 = v69 * (v75 & ~(v75 >> 31));
        if (v77 + 12 > v76)
        {
          goto LABEL_64;
        }

        v132 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(a13, a10, *(v74 + v77)), a11, *(v74 + v77 + 4)), a12, *(v74 + v77 + 8));
        v131.i64[0] = &v132;
        v68 = sub_239E91870(a8, &v132)[2].i32[0] + 1;
      }

      if (a2[8] != 1)
      {
        v90 = -1;
        goto LABEL_49;
      }

      v79 = objc_msgSend_dataStart(v126, v25, v26);
      v84 = objc_msgSend_stride(v126, v80, v81);
      if (v120 >= *(*a1 + 4 * v48))
      {
        v85 = *(*a1 + 4 * v48);
      }

      else
      {
        v85 = v120;
      }

      v86 = objc_msgSend_bufferSize(v126, v82, v83);
      v88 = v84 * (v85 & ~(v85 >> 31));
      if (v88 + 12 <= v86)
      {
        v89 = v79 + v88;
        *(v132.i64 + 4) = 0;
        v132.i32[0] = 0;
        v87.i64[0] = *v89;
        v87.i32[2] = *(v89 + 8);
        v132 = v87;
        v131.i64[0] = &v132;
        v90 = sub_239E992C8(a15, &v132)[2].i32[0] + 1;
LABEL_49:
        if (a2[10] == 1)
        {
          v91 = objc_msgSend_dataStart(v119, v25, v26);
          v96 = objc_msgSend_stride(v119, v92, v93);
          if (v117 >= *(*a1 + 4 * v48))
          {
            v97 = *(*a1 + 4 * v48);
          }

          else
          {
            v97 = v117;
          }

          v132 = 0uLL;
          v98 = objc_msgSend_bufferSize(v119, v94, v95);
          v101 = v96 * (v97 & ~(v97 >> 31));
          if (v101 + 8 <= v98)
          {
            v102 = (v91 + v101);
            v103.i64[1] = v132.i64[1];
            v132.i32[0] = *v102;
            v103.i32[0] = v132.i32[0];
            v103.i32[1] = v102[1];
            v132 = v103;
          }

          if (a2[11] == 1)
          {
            v104 = objc_msgSend_dataStart(v127, v99, v100);
            v109 = objc_msgSend_stride(v127, v105, v106);
            if (v116 >= *(*a1 + 4 * v48))
            {
              v110 = *(*a1 + 4 * v48);
            }

            else
            {
              v110 = v116;
            }

            v111 = objc_msgSend_bufferSize(v127, v107, v108);
            v112 = v109 * (v110 & ~(v110 >> 31));
            if (v112 + 8 <= v111)
            {
              v113.i64[0] = v132.i64[0];
              v114 = *(v104 + v112);
              v113.i64[1] = v114;
              v132 = v113;
            }
          }

          v131.i64[0] = &v132;
          v115 = sub_239E99520(a14, &v132)[2].i32[0] + 1;
        }

        else
        {
          v115 = -1;
        }

        v64.i64[0] = __PAIR64__(v115, v68);
        v64.i32[2] = v90;
        v132 = v64;
        sub_239E8E4FC(v125, &v132);
        v27 = v129;
      }

LABEL_64:
      ++v48;
    }

    while (v48 < (a1[1] - *a1) >> 2);
  }
}

void sub_239E8EBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27)
{
  v31 = *a25;
  if (*a25)
  {
    *(a25 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239E8EC98(uint64_t result, char a2)
{
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(result + 32) = a2;
  *result = &unk_284D16FF8;
  *(result + 8) = result + 16;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_239E8ECCC(uint64_t a1)
{
  *a1 = &unk_284D16FF8;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  *a1 = &unk_284D17508;
  sub_239E91CE0(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_239E8ED44(uint64_t a1)
{
  sub_239E8ECCC(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239E8ED7C(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = a2;
  v10 = a4;
  if (sub_239F5C490(v9, v11, v12))
  {
    v17 = sub_239F5C624(v9, v13, v14);
    if (v17)
    {
      v18 = sub_239F5C560(v9, v15, v16);
      if (v18)
      {
        __ptr = 0;
        v20 = 0;
        v21 = 0;
        sub_239E7967C(&__ptr, &v17->_p + 1);
        fread(__ptr, 1uLL, v17, v18);
        *(&v17->_p + __ptr) = 0;
        fclose(v18);
        sub_239E8EEE4(v9, __ptr, v17, v10, *a3, *(a1 + 32), a5);
        if (__ptr)
        {
          v20 = __ptr;
          operator delete(__ptr);
        }
      }

      else
      {
        sub_239E552A0(a5, "Could not read OBJ file");
      }
    }

    else
    {
      sub_239E552A0(a5, "OBJ file has no contents");
    }
  }

  else
  {
    sub_239E552A0(a5, "Could not open OBJ file");
  }
}

void sub_239E8EEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239E8EEE4(void *a1@<X0>, const std::string::value_type *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, int a6@<W5>, _BYTE *a7@<X8>)
{
  v319 = *MEMORY[0x277D85DE8];
  v251 = a1;
  v282 = a2;
  v256 = a4;
  if (!v256)
  {
    sub_239E552A0(a7, "cannot import to nil asset");
    goto LABEL_556;
  }

  v11 = 0;
  v12 = &a2[a3];
  v276 = 0;
  v278 = 0u;
  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v269 = 0u;
  v277 = &v278;
  v280 = 0;
  v281 = 0;
  v279 = 0;
  memset(&__str, 0, sizeof(__str));
  v13 = *(MEMORY[0x277D82820] + 24);
  v261 = v13;
  v263 = *MEMORY[0x277D82820];
  v14 = a7;
  v252 = a7;
  do
  {
    v318 = 0u;
    v317 = 0u;
    v316 = 0u;
    v314 = 0u;
    v315 = 0u;
    v312 = 0u;
    v313 = 0u;
    v310 = 0u;
    v311 = 0u;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    *v307 = 0u;
    v304 = 0u;
    v305 = 0u;
    *v302 = 0u;
    v303 = 0u;
    sub_239E88804(&v282, v12, __p);
    sub_239E8897C(v302, __p, 8);
    if (SBYTE7(v289) < 0)
    {
      operator delete(__p[0]);
    }

    v299 = 0;
    v298 = 0;
    v300 = 0;
    sub_239E88B00(v302, &v298);
    if ((SHIBYTE(v300) & 0x80000000) == 0)
    {
      v15 = v298;
      if (v298 == 35)
      {
        v16 = 3;
        goto LABEL_175;
      }

      if (!HIBYTE(v300))
      {
        goto LABEL_38;
      }

      if (HIBYTE(v300) != 1)
      {
        if (HIBYTE(v300) == 6)
        {
          v17 = v298 == 1819047021 && WORD2(v298) == 25193;
          if (v17)
          {
            goto LABEL_44;
          }

          if (v298 == 1835365237 && WORD2(v298) == 27764)
          {
            goto LABEL_70;
          }

          goto LABEL_162;
        }

        goto LABEL_67;
      }

      if (v298 != 103)
      {
        if (v298 == 115)
        {
LABEL_38:
          v16 = 3;
          goto LABEL_173;
        }

        if (v298 == 111)
        {
          goto LABEL_139;
        }

LABEL_144:
        if (v15 == 118)
        {
          goto LABEL_149;
        }

        goto LABEL_162;
      }

LABEL_39:
      *&v292 = 0;
      v290 = 0u;
      v291 = 0u;
      *__p = 0u;
      v289 = 0u;
      DWORD2(v292) = -2;
      sub_239E91D94(&v279, __p);
      __dst.__r_.__value_.__r.__words[0] = &v291;
      sub_239E95924(&__dst);
      if (SHIBYTE(v290) < 0)
      {
        operator delete(*(&v289 + 1));
      }

      if (SBYTE7(v289) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_43;
    }

    v16 = 3;
    if (*v298 == 35 || !v299)
    {
      goto LABEL_173;
    }

    if (v299 >= 0x801)
    {
      sub_239E552A0(v14, "lines in file too long to parse");
      v16 = 1;
      goto LABEL_173;
    }

    if (v299 == 1)
    {
      if (*v298 == 115)
      {
        goto LABEL_38;
      }
    }

    else if (v299 == 6 && *v298 == 1819047021 && *(v298 + 2) == 25193)
    {
LABEL_44:
      __p[0] = 0;
      __p[1] = 0;
      *&v289 = 0;
      std::stringbuf::str();
      v21 = std::string::find(__p, 35, 0);
      if (v21 != -1)
      {
        std::string::basic_string(&__dst, __p, 0, v21, &v301);
        if (SBYTE7(v289) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *&__dst.__r_.__value_.__l.__data_;
        *&v289 = *(&__dst.__r_.__value_.__l + 2);
      }

      v22 = BYTE7(v289);
      v23 = BYTE7(v289);
      if (SBYTE7(v289) < 0)
      {
        v22 = __p[1];
      }

      if (v22 >= 8)
      {
        std::string::basic_string(&__dst, __p, 7uLL, 0xFFFFFFFFFFFFFFFFLL, &v301);
        if (SBYTE7(v289) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *&__dst.__r_.__value_.__l.__data_;
        *&v289 = *(&__dst.__r_.__value_.__l + 2);
        sub_239E91570(__p);
        sub_239E95344(&v277, __p);
        v23 = BYTE7(v289);
      }

      if ((v23 & 0x80) == 0)
      {
        goto LABEL_172;
      }

      v24 = __p[0];
      goto LABEL_126;
    }

    v20 = v299;
    if (v299 == 1)
    {
      if (*v298 == 103)
      {
        goto LABEL_39;
      }

      v20 = v299;
      if (*v298 == 111)
      {
LABEL_139:
        *&v292 = 0;
        v290 = 0u;
        v291 = 0u;
        *__p = 0u;
        v289 = 0u;
        DWORD2(v292) = -2;
        sub_239E91D94(&v279, __p);
        __dst.__r_.__value_.__r.__words[0] = &v291;
        sub_239E95924(&__dst);
        if (SHIBYTE(v290) < 0)
        {
          operator delete(*(&v289 + 1));
        }

        if (SBYTE7(v289) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_43:
        sub_239E88B00(v302, v280 - 80);
        std::string::operator=((v280 - 56), &__str);
LABEL_172:
        v16 = 0;
        goto LABEL_173;
      }

      if ((v300 & 0x8000000000000000) == 0)
      {
        v15 = v298;
LABEL_67:
        if (HIBYTE(v300) == 1)
        {
          goto LABEL_144;
        }

        if (HIBYTE(v300) != 2)
        {
          goto LABEL_162;
        }

        v26 = &v298;
        goto LABEL_161;
      }
    }

    if (v20 == 6)
    {
      if (*v298 != 1835365237 || *(v298 + 2) != 27764)
      {
        if ((v300 & 0x8000000000000000) == 0)
        {
          v15 = v298;
          goto LABEL_67;
        }

        v20 = v299;
        goto LABEL_147;
      }

LABEL_70:
      sub_239E88B00(v302, &__str);
      v27 = v280;
      if (v280 == v279)
      {
        *&v292 = 0;
        v290 = 0u;
        v291 = 0u;
        *__p = 0u;
        v289 = 0u;
        DWORD2(v292) = -2;
        sub_239E91D94(&v279, __p);
        __dst.__r_.__value_.__r.__words[0] = &v291;
        sub_239E95924(&__dst);
        if (SHIBYTE(v290) < 0)
        {
          operator delete(*(&v289 + 1));
        }

        if (SBYTE7(v289) < 0)
        {
          operator delete(__p[0]);
        }

        MEMORY[0x23EE7FFA0](v280 - 80, "MDL_OBJ");
        v27 = v280;
      }

      memset(&__dst, 0, sizeof(__dst));
      if (*(v27 - 57) < 0)
      {
        sub_239E5BAE0(&__dst, *(v27 - 80), *(v27 - 72));
        v27 = v280;
      }

      else
      {
        v28 = *(v27 - 80);
        __dst.__r_.__value_.__r.__words[2] = *(v27 - 64);
        *&__dst.__r_.__value_.__l.__data_ = v28;
      }

      v259 = v11;
      v29 = *(v27 - 33);
      if (v29 < 0)
      {
        v30 = *(v27 - 48);
        if (!v30)
        {
          goto LABEL_96;
        }

LABEL_83:
        v31 = (v27 - 56);
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        if (v29 >= 0)
        {
          v34 = v31;
        }

        else
        {
          v34 = *v31;
        }

        if (v29 >= 0)
        {
          v35 = v29;
        }

        else
        {
          v35 = v30;
        }

        if (v35)
        {
          if (size < v35)
          {
            goto LABEL_96;
          }

          v46 = p_dst;
          v47 = p_dst + size;
          v48 = *v34;
          while (1)
          {
            v49 = size - v35;
            if (v49 == -1)
            {
              goto LABEL_96;
            }

            v50 = memchr(v46, v48, v49 + 1);
            if (!v50)
            {
              goto LABEL_96;
            }

            v51 = v50;
            if (!memcmp(v50, v34, v35))
            {
              break;
            }

            v46 = (v51 + 1);
            size = v47 - (v51 + 1);
            if (size < v35)
            {
              goto LABEL_96;
            }
          }

          if (v51 == v47)
          {
            goto LABEL_96;
          }

          v45 = v51 - p_dst;
          if (v51 - p_dst == -1)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v45 = 0;
        }

        __p[0] = 0;
        __p[1] = 0;
        *&v289 = 0;
        std::string::basic_string(__p, &__dst, 0, v45, &v301);
        sub_239E91E88(__p, &__str.__r_.__value_.__l.__data_, &v301);
        v11 = v259;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v301;
        v14 = v252;
        if (SBYTE7(v289) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        if (*(v27 - 33))
        {
          v30 = *(v27 - 48);
          goto LABEL_83;
        }

LABEL_96:
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = __dst.__r_.__value_.__l.__size_;
        }

        __p[1] = 0;
        *&v289 = 0;
        __p[0] = 0;
        sub_239E959D0(__p, v36 + 1);
        if ((SBYTE7(v289) & 0x80u) == 0)
        {
          v37 = __p;
        }

        else
        {
          v37 = __p[0];
        }

        if (v36)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &__dst;
          }

          else
          {
            v38 = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(v37, v38, v36);
        }

        *(v37 + v36) = 95;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v40 = __str.__r_.__value_.__l.__size_;
        }

        v41 = std::string::append(__p, p_str, v40);
        v42 = v41->__r_.__value_.__r.__words[0];
        v301.__r_.__value_.__r.__words[0] = v41->__r_.__value_.__l.__size_;
        *(v301.__r_.__value_.__r.__words + 7) = *(&v41->__r_.__value_.__r.__words[1] + 7);
        v43 = HIBYTE(v41->__r_.__value_.__r.__words[2]);
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        v11 = v259;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst.__r_.__value_.__r.__words[0] = v42;
        __dst.__r_.__value_.__l.__size_ = v301.__r_.__value_.__r.__words[0];
        *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v301.__r_.__value_.__r.__words + 7);
        *(&__dst.__r_.__value_.__s + 23) = v43;
        if (SBYTE7(v289) < 0)
        {
          operator delete(__p[0]);
        }

        v14 = v252;
      }

      v44 = v280;
      if (*(v280 - 24) != *(v280 - 32))
      {
        *&v292 = 0;
        v290 = 0u;
        v291 = 0u;
        *__p = 0u;
        v289 = 0u;
        DWORD2(v292) = -2;
        sub_239E91D94(&v279, __p);
        v301.__r_.__value_.__r.__words[0] = &v291;
        sub_239E95924(&v301);
        if (SHIBYTE(v290) < 0)
        {
          operator delete(*(&v289 + 1));
        }

        if (SBYTE7(v289) < 0)
        {
          operator delete(__p[0]);
        }

        v44 = v280;
      }

      std::string::operator=((v44 - 80), &__dst);
      std::string::operator=((v280 - 56), &__str);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_172;
      }

      v24 = __dst.__r_.__value_.__r.__words[0];
LABEL_126:
      operator delete(v24);
      goto LABEL_172;
    }

LABEL_147:
    if (v20 == 1)
    {
      if (*v298 == 118)
      {
LABEL_149:
        LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
        LODWORD(v301.__r_.__value_.__l.__data_) = 0;
        LODWORD(__s1) = 0;
        MEMORY[0x23EE80090](v302, &__dst);
        MEMORY[0x23EE80090](v302, &v301);
        MEMORY[0x23EE80090](v302, &__s1);
        __p[0] = __PAIR64__(v301.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
        LODWORD(__p[1]) = __s1;
        v52 = *(&v269 + 1);
        if (*(&v269 + 1) >= v270)
        {
          v54 = sub_239E95A74(&v269, __p);
        }

        else
        {
          v53 = __p[0];
          *(*(&v269 + 1) + 8) = __p[1];
          *v52 = v53;
          v54 = v52 + 12;
        }

        *(&v269 + 1) = v54;
        if ((*(&v304 + *(v302[0] - 3)) & 2) == 0)
        {
          LODWORD(v283[0]) = 0;
          LODWORD(v265[0]) = 0;
          LODWORD(v296) = 0;
          MEMORY[0x23EE80090](v302, v283);
          v55 = *(&v304 + *(v302[0] - 3));
          MEMORY[0x23EE80090](v302, v265);
          v56 = *(&v304 + *(v302[0] - 3));
          MEMORY[0x23EE80090](v302, &v296);
          v267 = 1065353216;
          if ((*(&v304 + *(v302[0] - 3)) & 2) == 0)
          {
            MEMORY[0x23EE80090](v302, &v267);
          }

          v57 = v56 | v55;
          v14 = v252;
          if ((v57 & 2) == 0 && -1 - 0x5555555555555555 * ((*(&v269 + 1) - v269) >> 2) == (*(&v275 + 1) - v275) >> 4)
          {
            __p[0] = __PAIR64__(v265[0], v283[0]);
            __p[1] = __PAIR64__(v267, v296);
            sub_239E91F5C(&v275, __p);
          }
        }

        goto LABEL_172;
      }

      if ((v300 & 0x8000000000000000) == 0)
      {
        goto LABEL_162;
      }
    }

    if (v299 != 2)
    {
      goto LABEL_162;
    }

    v26 = v298;
LABEL_161:
    if (*v26 == 25462)
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      LODWORD(v301.__r_.__value_.__l.__data_) = 0;
      LODWORD(__s1) = 0;
      LODWORD(v283[0]) = 0;
      MEMORY[0x23EE80090](v302, &__dst);
      MEMORY[0x23EE80090](v302, &v301);
      MEMORY[0x23EE80090](v302, &__s1);
      MEMORY[0x23EE80090](v302, v283);
      __p[0] = __PAIR64__(v301.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
      __p[1] = __PAIR64__(v283[0], __s1);
      sub_239E91F5C(&v275, __p);
      goto LABEL_172;
    }

LABEL_162:
    if (sub_239E55D74(&v298, "vt"))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      LODWORD(v301.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](v302, &__dst);
      MEMORY[0x23EE80090](v302, &v301);
      __p[0] = __PAIR64__(v301.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
      sub_239E92038(&v270 + 8, __p);
      if ((*(&v304 + *(v302[0] - 3)) & 2) == 0)
      {
        MEMORY[0x23EE80090](v302, &__dst);
        if ((*(&v304 + *(v302[0] - 3)) & 2) == 0)
        {
          MEMORY[0x23EE80090](v302, &v301);
          __p[0] = __PAIR64__(v301.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
          sub_239E92038(&v272, __p);
        }
      }

      goto LABEL_172;
    }

    if (sub_239E55D74(&v298, "vt2"))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      LODWORD(v301.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](v302, &__dst);
      MEMORY[0x23EE80090](v302, &v301);
      __p[0] = __PAIR64__(v301.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
      sub_239E92038(&v272, __p);
      goto LABEL_172;
    }

    if (sub_239E55D74(&v298, "vn"))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      LODWORD(v301.__r_.__value_.__l.__data_) = 0;
      LODWORD(__s1) = 0;
      MEMORY[0x23EE80090](v302, &__dst);
      MEMORY[0x23EE80090](v302, &v301);
      MEMORY[0x23EE80090](v302, &__s1);
      __p[0] = __PAIR64__(v301.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
      LODWORD(__p[1]) = __s1;
      v58 = v274;
      if (v274 >= *(&v274 + 1))
      {
        v60 = sub_239E95A74(&v273 + 8, __p);
      }

      else
      {
        v59 = __p[0];
        *(v274 + 8) = __p[1];
        *v58 = v59;
        v60 = v58 + 12;
      }

      v16 = 0;
      *&v274 = v60;
      goto LABEL_173;
    }

    if (sub_239E55D74(&v298, "f"))
    {
      v63 = v280;
      if (v280 == v279)
      {
        *&v292 = 0;
        v290 = 0u;
        v291 = 0u;
        *__p = 0u;
        v289 = 0u;
        DWORD2(v292) = -2;
        sub_239E91D94(&v279, __p);
        sub_239E91E2C(__p);
        MEMORY[0x23EE7FFA0](v280 - 80, "MDL_OBJ");
        v63 = v280;
      }

      __p[0] = 0;
      __p[1] = 0;
      *&v289 = 0;
      sub_239E92110(v63 - 32, __p);
      v64 = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
LABEL_285:
        operator delete(v64);
      }

      while (2)
      {
        while (2)
        {
          if ((*(&v304 + *(v302[0] - 3)) & 2) != 0)
          {
            v99 = *(v280 - 24);
            v101 = *(v99 - 24);
            v102 = *(v99 - 16);
            v100 = v99 - 24;
            if ((v102 - v101) <= 0x20)
            {
              sub_239E95CEC(v280 - 32, v100);
            }

            v16 = 0;
            goto LABEL_173;
          }

          __p[0] = 0;
          __p[1] = 0;
          *&v289 = 0;
          sub_239E88B00(v302, __p);
          v66 = SBYTE7(v289);
          if ((SBYTE7(v289) & 0x8000000000000000) != 0)
          {
            v66 = __p[1];
            if (!__p[1])
            {
              goto LABEL_284;
            }

            v67 = __p[0];
          }

          else
          {
            if (!BYTE7(v289))
            {
              continue;
            }

            v67 = __p;
          }

          break;
        }

        v68 = strtol(v67, 0, 10);
        v69 = *v67;
        v70 = v67;
        if (v69 == 45)
        {
          v70 = v67 + 1;
          v69 = *(v67 + 1);
        }

        if ((v69 - 48) <= 9)
        {
          do
          {
            v71 = *++v70;
            v69 = v71;
          }

          while ((v71 - 48) < 0xA);
        }

        v72 = v66 + v67;
        if (v72 <= v70)
        {
          v75 = 0;
          v76 = 0;
          v74 = 0;
          v77 = -1;
          v78 = -1;
          v79 = -1;
        }

        else
        {
          if (v69 == 47)
          {
            v73 = v70 + 1;
          }

          else
          {
            v73 = v70;
          }

          if (v72 <= v73)
          {
            v74 = 0;
LABEL_224:
            v78 = -1;
          }

          else
          {
            if (*v73 == 47)
            {
              v74 = 0;
              ++v73;
              goto LABEL_224;
            }

            v78 = strtol(v73, 0, 10);
            v80 = *v73;
            if (v80 == 45)
            {
              v81 = *++v73;
              v80 = v81;
            }

            if ((v80 - 48) <= 9)
            {
              do
              {
                v82 = *++v73;
                v80 = v82;
              }

              while ((v82 - 48) < 0xA);
            }

            if (v80 == 47)
            {
              ++v73;
            }

            v74 = 1;
          }

          if (v72 <= v73)
          {
            v75 = 0;
LABEL_236:
            v79 = -1;
          }

          else
          {
            if (*v73 == 47)
            {
              v75 = 0;
              ++v73;
              goto LABEL_236;
            }

            v83 = v78;
            v79 = strtol(v73, 0, 10);
            v84 = *v73;
            if (v84 == 45)
            {
              v85 = *++v73;
              v84 = v85;
            }

            v78 = v83;
            if ((v84 - 48) <= 9)
            {
              do
              {
                v86 = *++v73;
                v84 = v86;
              }

              while ((v86 - 48) < 0xA);
            }

            if (v84 == 47)
            {
              ++v73;
            }

            v75 = 1;
          }

          if (v72 <= v73)
          {
            v76 = 0;
            v77 = -1;
          }

          else
          {
            if (*v73 == 47)
            {
              v87 = v73 + 1;
            }

            else
            {
              v87 = v73;
            }

            v88 = v78;
            v89 = v79;
            v77 = strtol(v87, 0, 10);
            v79 = v89;
            v78 = v88;
            v76 = 1;
          }
        }

        v90 = 0xAAAAAAAAAAAAAAABLL * ((*(&v269 + 1) - v269) >> 2);
        if (*(&v269 + 1) == v269 || v68 > v90)
        {
LABEL_279:
          v14 = v252;
          if (SBYTE7(v289) < 0)
          {
LABEL_284:
            v64 = __p[0];
            goto LABEL_285;
          }

          continue;
        }

        break;
      }

      v92 = v68 - 1;
      if (v68 < 1)
      {
        if ((v68 & 0x80000000) == 0 || 0x5555555555555555 * ((*(&v269 + 1) - v269) >> 2) > v68)
        {
          goto LABEL_279;
        }

        v92 = v90 + v68;
      }

      else if ((v68 & 0x7FFFFFFFu) > v90)
      {
        goto LABEL_279;
      }

      *&v93 = v92 | 0xFFFFFFFF00000000;
      *(&v93 + 1) = 0;
      *&__dst.__r_.__value_.__l.__data_ = v93;
      if (v74)
      {
        v94 = v78 - 1;
        if (v78 < 1)
        {
          if (v78 < 0 && v78 >= -((v271 - *(&v270 + 1)) >> 3))
          {
            v94 = v78 + ((v271 - *(&v270 + 1)) >> 3);
LABEL_260:
            DWORD1(v93) = v94;
            *&__dst.__r_.__value_.__l.__data_ = v93;
          }
        }

        else if (v78 <= ((v271 - *(&v270 + 1)) >> 3))
        {
          goto LABEL_260;
        }
      }

      LODWORD(__dst.__r_.__value_.__r.__words[1]) = -1;
      if (v75)
      {
        v95 = v79 - 1;
        if (v79 < 1)
        {
          if (v79 < 0)
          {
            v96 = (v274 - *(&v273 + 1)) >> 2;
            if (v79 >= (0x5555555555555555 * v96))
            {
              v95 = v79 - 1431655765 * v96;
LABEL_269:
              DWORD2(v93) = v95;
              *&__dst.__r_.__value_.__l.__data_ = v93;
            }
          }
        }

        else if (0xAAAAAAAAAAAAAAABLL * ((v274 - *(&v273 + 1)) >> 2) >= v79)
        {
          goto LABEL_269;
        }
      }

      v97 = *&__dst.__r_.__value_.__l.__data_;
      HIDWORD(__dst.__r_.__value_.__r.__words[1]) = -1;
      if (v76)
      {
        v98 = v77 - 1;
        if (v77 < 1)
        {
          if (v77 < 0 && v77 >= -((*(&v275 + 1) - v275) >> 4))
          {
            v98 = v77 + ((*(&v275 + 1) - v275) >> 4);
LABEL_275:
            HIDWORD(v97) = v98;
            *&__dst.__r_.__value_.__l.__data_ = v97;
          }
        }

        else if (v77 <= ((*(&v275 + 1) - v275) >> 4))
        {
          goto LABEL_275;
        }
      }

      sub_239E8E4FC(*(v280 - 24) - 24, &__dst);
      goto LABEL_279;
    }

    if (sub_239E55D74(&v298, "p") || sub_239E55D74(&v298, "l") || sub_239E55D74(&v298, "t"))
    {
      goto LABEL_172;
    }

    if (SHIBYTE(v300) < 0)
    {
      if (v299 <= 1)
      {
        v16 = 0;
LABEL_174:
        operator delete(v298);
        goto LABEL_175;
      }

      v65 = v298;
    }

    else
    {
      if (HIBYTE(v300) <= 1u)
      {
        v16 = 0;
        goto LABEL_175;
      }

      v65 = &v298;
    }

    v16 = 0;
    if (v65[1] != 32)
    {
      ++v11;
    }

LABEL_173:
    if (SHIBYTE(v300) < 0)
    {
      goto LABEL_174;
    }

LABEL_175:
    v260 = v263;
    v302[0] = v263;
    v258 = v261;
    *(v302 + *(v263 - 3)) = v261;
    *&v303 = MEMORY[0x277D82878] + 16;
    if (SBYTE7(v308) < 0)
    {
      operator delete(v307[0]);
    }

    *&v303 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v303 + 1);
    std::istream::~istream();
    MEMORY[0x23EE80250](&v309 + 8);
    if (v16 != 3 && v16)
    {
      goto LABEL_553;
    }
  }

  while (v12 > v282 && v11 < 200);
  if (v11 >= 200)
  {
    sub_239E552A0(v14, "Too much unrecognized data in file, can't parse");
    goto LABEL_553;
  }

  v103 = v277;
  if (v277 != &v278)
  {
    v104 = 0;
    while (1)
    {
      v265[0] = 0;
      v265[1] = 0;
      v266 = 0;
      v254 = v104;
      if (*(v103 + 55) < 0)
      {
        sub_239E5BAE0(v265, *(v103 + 4), *(v103 + 5));
      }

      else
      {
        *v265 = v103[2];
        v266 = *(v103 + 6);
      }

      v106 = objc_msgSend_resolver(v256, v61, v62);
      if (v266 >= 0)
      {
        objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v105, v265, 4);
      }

      else
      {
        objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v105, v265[0], 4);
      }
      v107 = ;
      v253 = v103;
      v255 = objc_msgSend_resolveAssetNamed_(v106, v108, v107);

      v111 = objc_msgSend_resolver(v256, v109, v110);
      v112 = v255;
      v262 = v111;
      v257 = v112;
      if (v112)
      {
        v115 = sub_239F5C560(v112, v113, v114);
        v118 = v115;
        if (v115)
        {
          fseek(v115, 0, 2);
          v119 = MEMORY[0x23EE80600](v118);
          v120 = v119 + 1;
          if (v119 != -1)
          {
            v126 = v119;
            v128 = v258;
            v127 = v260;
            v129 = malloc_type_malloc(v119 + 1, 0x100004077774924uLL);
            fseek(v118, 0, 0);
            fread(v129, 1uLL, v126, v118);
            fclose(v118);
            *(v129 + v126) = 0;
            v296 = v129;
            v250 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v249 = v129;
            if (v126 > 0x7FFFFFFFFFFFFFFELL)
            {
              v264 = 0;
LABEL_525:
              free(v249);
              v290 = 0u;
              v291 = 0u;
              *__p = 0u;
              v289 = 0u;
              v122 = v250;
              v221 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v220, __p, v302, 16);
              if (v221)
              {
                v222 = *v289;
                do
                {
                  for (i = 0; i != v221; ++i)
                  {
                    if (*v289 != v222)
                    {
                      objc_enumerationMutation(v122);
                    }

                    v224 = *(__p[1] + i);
                    v228 = objc_msgSend_count(v224, v225, v226);
                    if (v228)
                    {
                      for (j = 0; j != v228; ++j)
                      {
                        v230 = objc_msgSend_objectAtIndexedSubscript_(v224, v227, j);
                        v235 = objc_msgSend_stringValue(v230, v231, v232);
                        if (v235)
                        {
                          v236 = objc_msgSend_type(v230, v233, v234) == 1;

                          if (!v236)
                          {
                            objc_msgSend_setType_(v230, v237, 1);
                          }
                        }
                      }
                    }
                  }

                  v221 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v238, __p, v302, 16);
                }

                while (v221);
              }

              goto LABEL_306;
            }

            v264 = 0;
            v130 = v129 + v120;
            while (2)
            {
              memset(v295, 0, sizeof(v295));
              *v293 = 0u;
              v294 = 0u;
              v291 = 0u;
              v292 = 0u;
              v289 = 0u;
              v290 = 0u;
              *__p = 0u;
              v131 = v130;
              sub_239E88804(&v296, v130, v302);
              sub_239E8897C(__p, v302, 8);
              if (SBYTE7(v303) < 0)
              {
                operator delete(v302[0]);
              }

              __s1 = 0;
              v286 = 0;
              v287 = 0;
              sub_239E88B00(__p, &__s1);
              if ((SHIBYTE(v287) & 0x80000000) == 0)
              {
                if (__s1 != 35)
                {
                  if (HIBYTE(v287))
                  {
                    if (HIBYTE(v287) == 6)
                    {
                      p_s1 = &__s1;
                      goto LABEL_327;
                    }

                    goto LABEL_331;
                  }

LABEL_355:
                  v142 = v264;
LABEL_516:
                  if (SHIBYTE(v287) < 0)
                  {
                    operator delete(__s1);
                  }

                  v264 = v142;
                }

                __p[0] = v127;
                *(__p + *(v127 - 3)) = v128;
                *&v289 = MEMORY[0x277D82878] + 16;
                if (SBYTE7(v294) < 0)
                {
                  operator delete(v293[0]);
                }

                *&v289 = MEMORY[0x277D82868] + 16;
                std::locale::~locale(&v289 + 1);
                std::istream::~istream();
                MEMORY[0x23EE80250](v295 + 8);
                v130 = v131;
                if (v296 >= v131)
                {
                  goto LABEL_525;
                }

                continue;
              }

              break;
            }

            p_s1 = __s1;
            if (*__s1 == 35 || !v286)
            {
              goto LABEL_355;
            }

            if (v286 != 6)
            {
              goto LABEL_331;
            }

LABEL_327:
            v133 = *p_s1;
            v134 = p_s1[2];
            if (v133 == 1836541294 && v134 == 27764)
            {
              sub_239E88B00(__p, &__s1);
              v158 = [MDLMaterial alloc];
              v159 = objc_alloc(MEMORY[0x277CCACA8]);
              if (v287 >= 0)
              {
                v161 = objc_msgSend_initWithCString_encoding_(v159, v160, &__s1, 4);
              }

              else
              {
                v161 = objc_msgSend_initWithCString_encoding_(v159, v160, __s1, 4);
              }

              v162 = v161;
              v163 = objc_opt_new();
              v142 = objc_msgSend_initWithName_scatteringFunction_(v158, v164, v162, v163);

              objc_msgSend_conformToMatProperties(v142, v165, v166);
              v128 = v258;
              v127 = v260;
              objc_msgSend_addObject_(v250, v167, v142);
              goto LABEL_516;
            }

LABEL_331:
            if (!v264)
            {
              v142 = 0;
              goto LABEL_516;
            }

            v283[0] = 0;
            v283[1] = 0;
            v284 = 0;
            sub_239E552A0(v283, "@TODO");
            v136 = &qword_278B408B8;
            v137 = 1536;
            while (2)
            {
              v139 = *(v136 - 2);
              v138 = *(v136 - 1);
              v140 = *v136;
              v141 = v136[1];
              v142 = v264;
              v143 = v262;
              v144 = strlen(v139);
              v145 = v144;
              if ((SHIBYTE(v287) & 0x8000000000000000) == 0)
              {
                if (v144 == SHIBYTE(v287))
                {
                  v146 = &__s1;
                  goto LABEL_339;
                }

                goto LABEL_347;
              }

              if (v144 != v286)
              {
                goto LABEL_347;
              }

              if (v144 == -1)
              {
                sub_239E98910();
              }

              v146 = __s1;
LABEL_339:
              if (memcmp(v146, v139, v145))
              {
LABEL_347:

                v136 += 4;
                v137 -= 32;
                if (!v137)
                {
                  if (SHIBYTE(v287) < 0)
                  {
                    v128 = v258;
                    v127 = v260;
                    if (v286 != 5)
                    {
                      goto LABEL_514;
                    }

                    v157 = __s1;
                    if (*__s1 == 1633903972 && *(__s1 + 4) == 108)
                    {
                      goto LABEL_514;
                    }
                  }

                  else
                  {
                    v128 = v258;
                    v127 = v260;
                    if (HIBYTE(v287) != 5)
                    {
                      goto LABEL_514;
                    }

                    if (__s1 == 1633903972 && BYTE4(__s1) == 108)
                    {
                      goto LABEL_514;
                    }

                    v157 = &__s1;
                  }

                  v169 = *v157;
                  v170 = v157[4];
                  if (v169 == 1970039913 && v170 == 109)
                  {
                    LODWORD(v302[0]) = 0;
                    MEMORY[0x23EE800A0](__p, v302);
                  }

LABEL_514:
                  if (SHIBYTE(v284) < 0)
                  {
                    operator delete(v283[0]);
                  }

                  goto LABEL_516;
                }

                continue;
              }

              break;
            }

            v148 = objc_msgSend_propertyNamed_(v142, v147, v141);
            v151 = v148;
            if (!v148 || objc_msgSend_semantic(v148, v149, v150) != v138)
            {
              v153 = [MDLMaterialProperty alloc];
              v155 = objc_msgSend_initWithName_semantic_(v153, v154, v141, v138);

              v151 = v155;
            }

            if (v140 == 7)
            {
              LODWORD(v302[0]) = 0;
              LODWORD(v298) = 0;
              LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
              if ((*(&v290 + *(__p[0] - 3)) & 2) == 0)
              {
                MEMORY[0x23EE80090](__p, v302);
                if ((*(&v290 + *(__p[0] - 3)) & 2) == 0)
                {
                  MEMORY[0x23EE80090](__p, &v298);
                  MEMORY[0x23EE80090](__p, &__dst);
                  objc_msgSend_setFloat3Value_(v151, v172, v173, COERCE_DOUBLE(__PAIR64__(v298, v302[0])));
                }
              }

              goto LABEL_513;
            }

            if (v140 == 5)
            {
              if ((*(&v290 + *(__p[0] - 3)) & 2) == 0)
              {
                LODWORD(v302[0]) = 0;
                MEMORY[0x23EE80090](__p, v302);
                LODWORD(v174) = v302[0];
                objc_msgSend_setFloatValue_(v151, v175, v176, v174);
              }

              goto LABEL_513;
            }

            if (v140 != 1)
            {

              goto LABEL_347;
            }

            memset(&__dst, 0, sizeof(__dst));
            sub_239E88B00(__p, &__dst);
            while (2)
            {
              v178 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
              v179 = __dst.__r_.__value_.__r.__words[0];
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v180 = &__dst;
              }

              else
              {
                v180 = __dst.__r_.__value_.__r.__words[0];
              }

              if (v180->__r_.__value_.__s.__data_[0] != 45)
              {
                v199 = __dst.__r_.__value_.__l.__size_;
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v200 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v200 = __dst.__r_.__value_.__l.__size_;
                }

                if (v200)
                {
                  v201 = 0;
                  v202 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >> 31;
                  do
                  {
                    v17 = (v202 & 1) == 0;
                    v203 = &__dst;
                    if (!v17)
                    {
                      v203 = v179;
                    }

                    if (v203->__r_.__value_.__s.__data_[v201] == 92)
                    {
                      v203->__r_.__value_.__s.__data_[v201] = 47;
                      v178 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                      v199 = __dst.__r_.__value_.__l.__size_;
                      v179 = __dst.__r_.__value_.__r.__words[0];
                    }

                    ++v201;
                    LOBYTE(v202) = (v178 & 0x80u) != 0;
                    if ((v178 & 0x80u) == 0)
                    {
                      v204 = v178;
                    }

                    else
                    {
                      v204 = v199;
                    }
                  }

                  while (v201 < v204);
                  if ((v178 & 0x80u) != 0)
                  {
                    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v177, v179, 4);
                    goto LABEL_482;
                  }

                  v180 = &__dst;
                }

                objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v177, v180, 4);
                v205 = LABEL_482:;
                objc_msgSend_setStringValue_(v151, v206, v205);
                v207 = objc_opt_new();
                std::stringbuf::str();
                v318 = 0u;
                v317 = 0u;
                v316 = 0u;
                v314 = 0u;
                v315 = 0u;
                v312 = 0u;
                v313 = 0u;
                v310 = 0u;
                v311 = 0u;
                v308 = 0u;
                v309 = 0u;
                v306 = 0u;
                *v307 = 0u;
                v304 = 0u;
                v305 = 0u;
                *v302 = 0u;
                v303 = 0u;
                sub_239E8897C(v302, &v301, 8);
                v299 = 0;
                v298 = 0;
                v300 = 0;
                sub_239E88B00(v302, &v298);
                sub_239E88B00(v302, &v298);
                while (2)
                {
                  if ((*(&v304 + *(v302[0] - 3)) & 2) != 0)
                  {
                    v212 = 0;
                    if ((v300 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_504;
                    }

                    goto LABEL_495;
                  }

                  if (v300 < 0)
                  {
                    if (v299 == 6)
                    {
                      v208 = v298;
                      goto LABEL_489;
                    }
                  }

                  else if (HIBYTE(v300) == 6)
                  {
                    v208 = &v298;
LABEL_489:
                    v209 = *v208;
                    v210 = v208[2];
                    if (v209 == 1634493229 && v210 == 28781)
                    {
                      sub_239E88B00(v302, &v298);
                      if ((SHIBYTE(v300) & 0x80000000) == 0)
                      {
                        if (HIBYTE(v300) == 2)
                        {
                          v213 = &v298;
                          goto LABEL_501;
                        }

                        v212 = 0;
LABEL_504:
                        v302[0] = v260;
                        *(v302 + *(v260 - 3)) = v258;
                        *&v303 = MEMORY[0x277D82878] + 16;
                        if (SBYTE7(v308) < 0)
                        {
                          operator delete(v307[0]);
                        }

                        *&v303 = MEMORY[0x277D82868] + 16;
                        std::locale::~locale(&v303 + 1);
                        std::istream::~istream();
                        MEMORY[0x23EE80250](&v309 + 8);
                        if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v301.__r_.__value_.__l.__data_);
                        }

                        if (v212)
                        {
                          objc_msgSend_setSWrapMode_(v207, v214, 0);
                          objc_msgSend_setTWrapMode_(v207, v215, 0);
                        }

                        else
                        {
                          objc_msgSend_setSWrapMode_(v207, v214, 1);
                          objc_msgSend_setTWrapMode_(v207, v216, 1);
                        }

                        v217 = objc_opt_new();
                        objc_msgSend_setHardwareFilter_(v217, v218, v207);
                        objc_msgSend_setTextureSamplerValue_(v151, v219, v217);

                        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__dst.__r_.__value_.__l.__data_);
                        }

LABEL_513:
                        objc_msgSend_setProperty_(v142, v152, v151);

                        v128 = v258;
                        v127 = v260;
                        goto LABEL_514;
                      }

                      v213 = v298;
                      if (v299 == 2)
                      {
LABEL_501:
                        v212 = *v213 == 28271;
                        if ((v300 & 0x8000000000000000) == 0)
                        {
                          goto LABEL_504;
                        }

LABEL_495:
                        v213 = v298;
                      }

                      else
                      {
                        v212 = 0;
                      }

                      operator delete(v213);
                      goto LABEL_504;
                    }
                  }

                  sub_239E88B00(v302, &v298);
                  continue;
                }
              }

              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) <= 5uLL)
                {
                  if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) != 2)
                  {
                    if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) != 3)
                    {
                      if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) == 5)
                      {
                        v179 = &__dst;
                        goto LABEL_392;
                      }

LABEL_464:
                      sub_239E88B00(__p, &__dst);
                      continue;
                    }

                    if (LOWORD(__dst.__r_.__value_.__l.__data_) != 25133 || __dst.__r_.__value_.__s.__data_[2] != 109)
                    {
                      if (LOWORD(__dst.__r_.__value_.__l.__data_) != 27949 || __dst.__r_.__value_.__s.__data_[2] != 109)
                      {
                        goto LABEL_464;
                      }

LABEL_437:
                      sub_239E88B00(__p, &__dst);
                    }

                    goto LABEL_463;
                  }

                  if (LOWORD(__dst.__r_.__value_.__l.__data_) != 28461 && LOWORD(__dst.__r_.__value_.__l.__data_) != 29485)
                  {
                    data_low = LOWORD(__dst.__r_.__value_.__l.__data_);
LABEL_435:
                    if (data_low != 29741)
                    {
                      goto LABEL_464;
                    }
                  }

                  goto LABEL_436;
                }

                switch(HIBYTE(__dst.__r_.__value_.__r.__words[2]))
                {
                  case 6u:
                    v186 = WORD2(__dst.__r_.__value_.__r.__words[0]);
                    v187 = LODWORD(__dst.__r_.__value_.__l.__data_) == 1634493229;
                    v188 = 28781;
                    break;
                  case 7u:
                    if (LODWORD(__dst.__r_.__value_.__l.__data_) == 1701601837 && *(__dst.__r_.__value_.__r.__words + 3) == 1969516133)
                    {
                      goto LABEL_463;
                    }

                    if (LODWORD(__dst.__r_.__value_.__l.__data_) == 1701601837 && *(__dst.__r_.__value_.__r.__words + 3) == 1986293349)
                    {
                      goto LABEL_463;
                    }

                    v186 = *(__dst.__r_.__value_.__r.__words + 3);
                    v187 = LODWORD(__dst.__r_.__value_.__l.__data_) == 2019914797;
                    v188 = 1936028280;
                    break;
                  case 8u:
LABEL_401:
                    if (v179 != 0x6E616863666D692DLL)
                    {
                      goto LABEL_464;
                    }

                    goto LABEL_463;
                  default:
                    goto LABEL_464;
                }

                if (!v187 || v186 != v188)
                {
                  goto LABEL_464;
                }

                goto LABEL_463;
              }

              break;
            }

            if (__dst.__r_.__value_.__l.__size_ > 5)
            {
              switch(__dst.__r_.__value_.__l.__size_)
              {
                case 6uLL:
                  v182 = *(__dst.__r_.__value_.__r.__words[0] + 4);
                  v183 = *__dst.__r_.__value_.__l.__data_ == 1634493229;
                  v184 = 28781;
                  break;
                case 7uLL:
                  if (*__dst.__r_.__value_.__l.__data_ == 1701601837 && *(__dst.__r_.__value_.__r.__words[0] + 3) == 1969516133)
                  {
                    goto LABEL_463;
                  }

                  if (*__dst.__r_.__value_.__l.__data_ == 1701601837 && *(__dst.__r_.__value_.__r.__words[0] + 3) == 1986293349)
                  {
                    goto LABEL_463;
                  }

                  v182 = *(__dst.__r_.__value_.__r.__words[0] + 3);
                  v183 = *__dst.__r_.__value_.__l.__data_ == 2019914797;
                  v184 = 1936028280;
                  break;
                case 8uLL:
                  v179 = *__dst.__r_.__value_.__l.__data_;
                  goto LABEL_401;
                default:
                  goto LABEL_464;
              }
            }

            else
            {
              if (__dst.__r_.__value_.__l.__size_ == 2)
              {
                if (*__dst.__r_.__value_.__l.__data_ != 28461 && *__dst.__r_.__value_.__l.__data_ != 29485)
                {
                  data_low = *__dst.__r_.__value_.__l.__data_;
                  goto LABEL_435;
                }

LABEL_436:
                sub_239E88B00(__p, &__dst);
                goto LABEL_437;
              }

              if (__dst.__r_.__value_.__l.__size_ == 3)
              {
                if (*__dst.__r_.__value_.__l.__data_ != 25133 || *(__dst.__r_.__value_.__r.__words[0] + 2) != 109)
                {
                  if (*__dst.__r_.__value_.__l.__data_ != 27949 || *(__dst.__r_.__value_.__r.__words[0] + 2) != 109)
                  {
                    goto LABEL_464;
                  }

                  goto LABEL_437;
                }

LABEL_463:
                sub_239E88B00(__p, &__dst);
                goto LABEL_464;
              }

              if (__dst.__r_.__value_.__l.__size_ != 5)
              {
                goto LABEL_464;
              }

LABEL_392:
              data = v179->__r_.__value_.__l.__data_;
              v182 = v179->__r_.__value_.__s.__data_[4];
              v183 = data == 1887007789;
              v184 = 101;
            }

            if (!v183 || v182 != v184)
            {
              goto LABEL_464;
            }

            goto LABEL_463;
          }

          fclose(v118);
        }

        else
        {
          v121 = objc_msgSend_absoluteString(v112, v116, v117);
          NSLog(&cfstr_UnableToFindMt.isa, v121);
        }
      }

      v122 = 0;
LABEL_306:

      if (SHIBYTE(v266) < 0)
      {
        operator delete(v265[0]);
      }

      v123 = v253;
      v124 = *(v253 + 1);
      if (v124)
      {
        do
        {
          v125 = v124;
          v124 = *v124;
        }

        while (v124);
      }

      else
      {
        do
        {
          v125 = *(v123 + 2);
          v17 = *v125 == v123;
          v123 = v125;
        }

        while (!v17);
      }

      v104 = v122;
      v103 = v125;
      if (v125 == &v278)
      {
        goto LABEL_540;
      }
    }
  }

  v122 = 0;
LABEL_540:
  v239 = v279;
  for (k = v280; v239 != k; v239 += 80)
  {
    *(v239 + 72) = -2;
    v241 = *(v239 + 48);
    v242 = *(v239 + 56);
    if (v241 != v242)
    {
      v243 = 4294967294;
      do
      {
        v244 = v241[1] - *v241;
        if (v244)
        {
          v245 = v244 >> 4;
          if ((v243 & 0x80000000) != 0)
          {
            v243 = v245;
            *(v239 + 72) = v245;
          }

          else if (v245 != v243)
          {
            goto LABEL_550;
          }
        }

        v241 += 3;
      }

      while (v241 != v242);
      if (v243 != 4294967294)
      {
        continue;
      }
    }

LABEL_550:
    *(v239 + 72) = -1;
  }

  sub_239E92254(&v269, v122, v256, a5, a6, v252);

LABEL_553:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_239E987D0(&v269);
LABEL_556:

  v246 = *MEMORY[0x277D85DE8];
}