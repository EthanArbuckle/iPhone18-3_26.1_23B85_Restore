void sub_24025868C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2402586C8(void *a1, _DWORD *a2, char a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v42 = &unk_285227280;
  v43 = a2;
  v41 = 0;
  LODWORD(memptr) = 0;
  if ((*(*a2 + 88))(a2, &memptr, 4) != 4 || memptr != 2101013610)
  {
    goto LABEL_14;
  }

  if (v43[2] != 2)
  {
    v9 = (*(*v43 + 144))(v43, &memptr, 4);
    if (v9 >= 1)
    {
      *(v43 + 2) += v9;
    }
  }

  v10 = v43;
  if (v43[2] == 2 || (v11 = (*(*v43 + 144))(v43, &v41, 4), v11 < 1) || (*(v10 + 2) += v11, v11 != 4))
  {
LABEL_14:
    sub_2402546E0(&memptr);
    sub_2402552EC(v40, &memptr, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/geometry/src/three_d/identitytensor.cpp", 0x165u, "couldn't read identity tensor from %s: bad file header", a3);
    v12 = v40;
LABEL_15:
    sub_240256698(v12);
    v13 = v46;
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    *a1 = 0;
    a1[1] = 0;
    goto LABEL_19;
  }

  if (v41)
  {
    sub_2402546E0(&memptr);
    sub_2402552EC(v39, &memptr, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/geometry/src/three_d/identitytensor.cpp", 0x16Au, "couldn't read identity tensor from %s: unexpected version %d", a3);
    v12 = v39;
    goto LABEL_15;
  }

  memset(&v38, 0, sizeof(v38));
  if (sub_24026A9C8(&v42, &v38))
  {
    if (!a5)
    {
      memset(&__p, 0, sizeof(__p));
      v35 = -1;
      v34 = -1;
      v33 = -1;
      v32 = -1;
      v31 = -1;
      v30 = -1;
      if (sub_24026A9C8(&v42, &__p))
      {
        v15 = v43;
        if (v43[2] != 2)
        {
          v16 = (*(*v43 + 144))(v43, &v35, 4);
          if (v16 >= 1)
          {
            *(v15 + 2) += v16;
            if (v16 == 4)
            {
              v17 = v43;
              if (v43[2] != 2)
              {
                v18 = (*(*v43 + 144))(v43, &v34, 4);
                if (v18 >= 1)
                {
                  *(v17 + 2) += v18;
                  if (v18 == 4)
                  {
                    v19 = v43;
                    if (v43[2] != 2)
                    {
                      v20 = (*(*v43 + 144))(v43, &v33, 4);
                      if (v20 >= 1)
                      {
                        *(v19 + 2) += v20;
                        if (v20 == 4)
                        {
                          v21 = v43;
                          if (v43[2] != 2)
                          {
                            v22 = (*(*v43 + 144))(v43, &v32, 4);
                            if (v22 >= 1)
                            {
                              *(v21 + 2) += v22;
                              if (v22 == 4)
                              {
                                v23 = v43;
                                if (v43[2] != 2)
                                {
                                  v24 = (*(*v43 + 144))(v43, &v31, 4);
                                  if (v24 >= 1)
                                  {
                                    *(v23 + 2) += v24;
                                    if (v24 == 4)
                                    {
                                      v25 = v43;
                                      if (v43[2] != 2)
                                      {
                                        v26 = (*(*v43 + 144))(v43, &v30, 4);
                                        if (v26 >= 1)
                                        {
                                          *(v25 + 2) += v26;
                                          if (v26 == 4)
                                          {
                                            operator new();
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      sub_2402546E0(&memptr);
      sub_2402552EC(v29, &memptr, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/geometry/src/three_d/identitytensor.cpp", 0x18Au, "couldn't read identity tensor from %s: corrupt data", a3);
      sub_240256698(v29);
      sub_2401C1DF4(&memptr);
      *a1 = 0;
      a1[1] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_63;
    }

    if (&v38 != a5)
    {
      if (*(a5 + 23) < 0)
      {
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v38;
        }

        else
        {
          v27 = v38.__r_.__value_.__r.__words[0];
        }

        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v38.__r_.__value_.__l.__size_;
        }

        sub_2401F8070(a5, v27, size);
      }

      else if ((*(&v38.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        sub_2401F7FA0(a5, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
      }

      else
      {
        *a5 = v38;
      }
    }
  }

  else
  {
    sub_2402546E0(&memptr);
    sub_2402552EC(v37, &memptr, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/geometry/src/three_d/identitytensor.cpp", 0x170u, "couldn't read identity tensor from %s: corrupt data", a3);
    sub_240256698(v37);
    v14 = v46;
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_63:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

LABEL_19:
  v42 = &unk_2852274D0;
  if (v44 == 1)
  {
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }
  }
}

void sub_2402595F8(int a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = *MEMORY[0x277D85DE8];
  v11 = a4 + 1;
  v72.columns[0] = a4[1];
  v72.columns[2] = *(a4 + 40);
  v72.columns[1] = *(a4 + 28);
  v73 = __invert_f3(v72);
  v37 = v73.columns[0].f32[0];
  v12 = v73.columns[0];
  v12.i32[3] = v73.columns[1].i32[0];
  v67[0] = v12;
  v67[1] = vextq_s8(vextq_s8(v73.columns[1], v73.columns[1], 0xCuLL), v73.columns[2], 8uLL);
  v68 = v73.columns[2].i32[2];
  LODWORD(v35) = *(a2 + 12);
  *v41.columns[0].f32 = vadd_f32(*(a2 + 4), vmul_f32(*(a2 + 12), 0x3F0000003F000000));
  v41.columns[0].i32[2] = 1065353216;
  v42.i64[0] = v67;
  v42.i64[1] = &v41;
  v65 = 0;
  v66 = 0.0;
  sub_2401EE13C(&v65, &v42);
  v13 = vmuls_n_f32(v35, v37);
  v14 = vmul_f32(v65, v65);
  v15 = (vaddv_f32(v14) + (v66 * v66)) * a1;
  if (v13 < 0.000001)
  {
    v13 = 0.000001;
  }

  v16 = 1.0 / sqrtf(v14.f32[0] + (v66 * v66));
  v38 = vcvts_n_f32_s32(a1 - 1, 1uLL);
  v59[0] = v66 * v16;
  v59[1] = 0.0;
  v59[2] = v16 * v65.f32[0];
  v60 = 0x3F80000000000000;
  v61 = 0;
  v62 = -(v65.f32[0] * v16);
  v36 = v15 / v13;
  v63 = 0;
  v64 = v66 * v16;
  v42.i64[0] = v59;
  v42.i64[1] = &v65;
  sub_2401EE13C(&v65, &v42);
  v65.i32[0] = 0;
  v53 = xmmword_2402708E0;
  v17 = 1.0 / sqrtf((v65.f32[1] * v65.f32[1]) + (v66 * v66));
  v54 = v66 * v17;
  v55 = v65.f32[1] * v17;
  v56 = 0;
  v57 = -(v65.f32[1] * v17);
  v58 = v66 * v17;
  v42.i64[0] = &v53;
  v42.i64[1] = v59;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  sub_2401EDF8C(&v50, &v42);
  v18 = __sincosf_stret(*(a2 + 20) / 57.296);
  v41.columns[0].f32[0] = -v18.__sinval;
  *(v41.columns[0].i64 + 4) = LODWORD(v18.__cosval);
  v42.i64[0] = &v50;
  v42.i64[1] = &v41;
  v48 = 0;
  v49 = 0;
  sub_2401EE13C(&v48, &v42);
  v19 = 1.0 / sqrtf((*&v48 * *&v48) + (*(&v48 + 1) * *(&v48 + 1)));
  v46[0] = *(&v48 + 1) * v19;
  v46[1] = *&v48 * v19;
  v46[2] = 0.0;
  v46[3] = -(*&v48 * v19);
  v46[4] = *(&v48 + 1) * v19;
  v47 = xmmword_240270950;
  v42.i64[0] = v46;
  v42.i64[1] = &v50;
  sub_2401EDF8C(&v50, &v42);
  *(a5 + 8) = a1;
  *(a5 + 12) = a1;
  v41.columns[0] = v50;
  v41.columns[1] = v51;
  v41.columns[2].i32[0] = v52;
  *(v41.columns[2].i64 + 4) = 0;
  v41.columns[2].i32[3] = 0;
  v42 = 0x3F800000uLL;
  *&v43[4] = 0;
  *&v43[12] = 0x3F80000000000000;
  *v43 = 1065353216;
  v44 = 0;
  v45 = 0.0;
  *&v70[0] = &v41;
  *(&v70[0] + 1) = v11 + 36;
  sub_2401EDF8C(&v42, v70);
  v69[0] = &v41;
  v69[1] = v11 + 18;
  *(v70 + 4) = 0;
  HIDWORD(v70[0]) = 0;
  sub_2401EE13C(v70 + 1, v69);
  v74.columns[1].i32[0] = 0;
  v44 = vadd_f32(*(v70 + 4), 0);
  v45 = *(v70 + 3) + 0.0;
  v20 = *v43;
  *(a5 + 52) = v42;
  *(a5 + 68) = v20;
  *(a5 + 84) = *&v43[16];
  *(a5 + 88) = v44;
  *(a5 + 96) = v45;
  *(a5 + 16) = v36;
  *(a5 + 20) = 0;
  *(a5 + 28) = 0;
  *(a5 + 32) = v36;
  *(a5 + 36) = 0;
  *(a5 + 40) = v38;
  *(a5 + 44) = v38;
  *(a5 + 48) = 1065353216;
  v69[0] = &v50;
  v74.columns[0] = LODWORD(v36);
  v74.columns[1].i64[1] = 0;
  v74.columns[1].f32[1] = v36;
  *&v70[0] = v11;
  *(&v70[0] + 1) = v69;
  __asm { FMOV            V2.4S, #1.0 }

  v74.columns[2].i32[0] = v38;
  v74.columns[2].i32[1] = v38;
  v75 = __invert_f3(v74);
  v75.columns[0].i32[3] = v75.columns[1].i32[0];
  v42 = v75.columns[0];
  *v43 = vextq_s8(vextq_s8(v75.columns[1], v75.columns[1], 0xCuLL), v75.columns[2], 8uLL);
  *&v43[16] = v75.columns[2].i32[2];
  v41.columns[0].i64[0] = v70;
  v41.columns[0].i64[1] = &v42;
  sub_240259A84(a6, &v41);
  v26 = 0;
  v41.columns[0].i32[3] = 0;
  *(v41.columns[0].i64 + 4) = 0;
  v41.columns[0].i32[0] = 1065353216;
  v41.columns[1].i64[0] = 1065353216;
  v27 = 0x100000000;
  v28 = a3;
  v41.columns[2].i32[0] = 1065353216;
  do
  {
    v29 = *v28++;
    *(v41.columns[0].i32 + v26) = v29;
    v30 = v27 < 1;
    v31 = (v27 >> 30) & 0x3FFFFFFFCLL;
    if (v27 < 1)
    {
      v31 = 0;
    }

    v32 = v26 + v31;
    v33 = (v27 + 1);
    v34 = v27 & 0xFFFFFFFF00000000;
    if (!v30)
    {
      v33 = 0;
    }

    v27 = v33 | v34;
    v26 = v32 + 4;
  }

  while (v26 != 24);
  v25.columns[2].i64[0] = *(a3 + 16);
  v41.columns[1].i32[2] = v25.columns[2].i32[0];
  v25.columns[2].i32[2] = v41.columns[2].i32[0];
  v25.columns[0] = v41.columns[0];
  v25.columns[1] = *(v41.columns + 12);
  v76 = __invert_f3(v25);
  v76.columns[0].i32[3] = v76.columns[1].i32[0];
  v42 = v76.columns[0];
  *v43 = vextq_s8(vextq_s8(v76.columns[1], v76.columns[1], 0xCuLL), v76.columns[2], 8uLL);
  *&v43[16] = v76.columns[2].i32[2];
  *&v70[0] = &v42;
  *(&v70[0] + 1) = a6;
  sub_2401EDF8C(a7, v70);
}

__n64 sub_240259A84(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 == a1)
  {
    v13 = 0.0;
    v11 = 0u;
    v12 = 0u;
    sub_240259A84(&v11);
    result.n64_u64[0] = v11;
    v10 = v12;
    *a1 = v11;
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    v4 = *a2;
    v11 = 0u;
    v12 = 0u;
    v13 = 0.0;
    sub_240222548(&v11, v4);
    result.n64_u32[1] = 0;
    v5 = v11;
    v6 = *(&v12 + 1);
    *a1 = (((*&v11 * *v3) + 0.0) + (*(&v11 + 3) * v3[1])) + (*(&v12 + 2) * v3[2]);
    v7 = v12;
    *(a1 + 4) = (((*(&v5 + 1) * *v3) + 0.0) + (*&v12 * v3[1])) + (*(&v6 + 1) * v3[2]);
    v8 = v13;
    *(a1 + 8) = (((*(&v5 + 2) * *v3) + 0.0) + (*(&v7 + 1) * v3[1])) + (v13 * v3[2]);
    *(a1 + 12) = (((*&v5 * v3[3]) + 0.0) + (*(&v5 + 3) * v3[4])) + (*&v6 * v3[5]);
    *(a1 + 16) = (((*(&v5 + 1) * v3[3]) + 0.0) + (*&v7 * v3[4])) + (*(&v6 + 1) * v3[5]);
    *(a1 + 20) = (((*(&v5 + 2) * v3[3]) + 0.0) + (*(&v7 + 1) * v3[4])) + (v8 * v3[5]);
    *(a1 + 24) = (((*&v5 * v3[6]) + 0.0) + (*(&v5 + 3) * v3[7])) + (*&v6 * v3[8]);
    *(a1 + 28) = (((*(&v5 + 1) * v3[6]) + 0.0) + (*&v7 * v3[7])) + (*(&v6 + 1) * v3[8]);
    result.n64_f32[0] = (((*(&v5 + 2) * v3[6]) + 0.0) + (*(&v7 + 1) * v3[7])) + (v8 * v3[8]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

BOOL sub_240259BE8(uint64_t a1, uint64_t *a2)
{
  v20 = 0;
  v2 = *(a1 + 8);
  if (*(v2 + 8) == 2)
  {
    return 0;
  }

  v5 = (*(*v2 + 144))(*(a1 + 8), &v20, 4);
  if (v5 < 1)
  {
    return 0;
  }

  *(v2 + 16) += v5;
  if (v5 != 4)
  {
    return 0;
  }

  v6 = v20;
  v7 = *a2;
  v8 = a2[1];
  v9 = v8 - *a2;
  v10 = v20 - (v9 >> 3);
  if (v20 <= (v9 >> 3))
  {
    v17 = a1;
    if (v20 < (v9 >> 3))
    {
      a2[1] = v7 + 8 * v20;
    }
  }

  else
  {
    v11 = a2[2];
    if (v10 > (v11 - v8) >> 3)
    {
      v12 = v11 - v7;
      v13 = v12 >> 2;
      if (v12 >> 2 <= v20)
      {
        v13 = v20;
      }

      v14 = v12 >= 0x7FFFFFFFFFFFFFF8;
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v13;
      }

      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    bzero(a2[1], 8 * v10);
    a2[1] = v8 + 8 * v10;
    v17 = a1;
    v7 = *a2;
  }

  v18 = *(v17 + 8);
  if (*(v18 + 8) == 2)
  {
    v19 = -1;
  }

  else
  {
    v19 = (*(*v18 + 144))(*(v17 + 8), v7, 8 * v6);
    if (v19 >= 1)
    {
      *(v18 + 16) += v19;
    }
  }

  return v19 == 8 * v6;
}

uint64_t sub_240259EA8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    free(*(v1 + 456));
    sub_24022AEDC(v1);

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_240259F08(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_240259F44(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*a1 == *(a1 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = *(a3 + 1);
  v8 = a3[5];
  v9 = *a3;
  if (v6 == (v7 - 4 * v8))
  {
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, (4 * v9 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
    v18 = memptr[0];
    if (!v9)
    {
      goto LABEL_24;
    }

    v19 = (v9 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v19 < 7)
    {
      v20 = memptr[0];
    }

    else
    {
      v20 = memptr[0];
      if ((memptr[0] - v6) >= 0x20)
      {
        v21 = (v19 + 1) & 0x7FFFFFFFFFFFFFF8;
        v22 = memptr[0] + 16;
        v23 = (v6 + 4);
        v24 = v21;
        do
        {
          v25 = *v23;
          *(v22 - 1) = *(v23 - 1);
          *v22 = v25;
          v22 += 2;
          v23 += 2;
          v24 -= 8;
        }

        while (v24);
        if (v19 + 1 == v21)
        {
LABEL_24:
          v28 = *a3;
          if (v28)
          {
            v29 = *(a3 + 1);
            v30 = (v28 - 1) & 0x3FFFFFFFFFFFFFFFLL;
            if (v30 < 7)
            {
              v31 = v18;
              v32 = *(a3 + 1);
            }

            else
            {
              v31 = v18;
              v32 = *(a3 + 1);
              if ((v29 - v18) >= 0x20)
              {
                v33 = (v30 + 1) & 0x7FFFFFFFFFFFFFF8;
                v31 = &v18[4 * v33];
                v34 = (v29 + 16);
                v35 = (v18 + 16);
                v36 = v33;
                do
                {
                  v37 = *v35;
                  *(v34 - 1) = *(v35 - 1);
                  *v34 = v37;
                  v34 += 2;
                  v35 += 2;
                  v36 -= 8;
                }

                while (v36);
                if (v30 + 1 == v33)
                {
                  goto LABEL_34;
                }

                v32 = (v29 + 4 * v33);
              }
            }

            v38 = (v29 + 4 * v28);
            do
            {
              v39 = *v31;
              v31 += 4;
              *v32++ = v39;
            }

            while (v32 != v38);
          }

LABEL_34:
          free(v18);
          v7 = *(a3 + 1);
          v10 = -a3[5];
          goto LABEL_35;
        }

        v20 = &v18[4 * v21];
        v6 += v21;
      }
    }

    do
    {
      v27 = *v6++;
      *v20 = v27;
      v20 += 4;
    }

    while (v20 != &v18[4 * v9]);
    goto LABEL_24;
  }

  v10 = -v8;
  if (!v9)
  {
    goto LABEL_35;
  }

  v11 = (v9 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v11 < 7)
  {
    v12 = *(a3 + 1);
    do
    {
LABEL_20:
      v26 = *v6++;
      *v12++ = v26;
    }

    while (v12 != (v7 + 4 * v9));
    goto LABEL_35;
  }

  v12 = *(a3 + 1);
  if ((v7 - v6) < 0x20)
  {
    goto LABEL_20;
  }

  v13 = (v11 + 1) & 0x7FFFFFFFFFFFFFF8;
  v14 = (v7 + 16);
  v15 = (v6 + 4);
  v16 = v13;
  do
  {
    v17 = *v15;
    *(v14 - 1) = *(v15 - 1);
    *v14 = v17;
    v14 += 2;
    v15 += 2;
    v16 -= 8;
  }

  while (v16);
  if (v11 + 1 != v13)
  {
    v12 = (v7 + 4 * v13);
    v6 += v13;
    goto LABEL_20;
  }

LABEL_35:
  v55 = a1 + 456;
  memptr[1] = &v55;
  memptr[2] = a2;
  v60 = 1065353216;
  v40 = v7 + 4 * v10;
  if (*(a1 + 456) == v40 || *(a2 + 1) - 4 * a2[5] == v40)
  {
    v41 = (4 * *(a1 + 476) + 31) & 0x7FFFFFFE0;
    v56[1] = (v41 >> 2);
    v58 = 0;
    malloc_type_posix_memalign(&v58, 0x20uLL, v41, 0xE1AC2527uLL);
    v56[0] = v58;
    v57 = *(v55 + 20);
    sub_24025A340(v56, memptr);
    v42 = *a3;
    v43 = v56[0];
    if (v42)
    {
      v44 = *(a3 + 1);
      v45 = (v42 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v45 >= 0xB)
      {
        if (v44 >= (v56[0] + 4 * v42) || (v46 = v56[0], v47 = *(a3 + 1), v56[0] >= &v44->f32[v42]))
        {
          v48 = (v45 + 1) & 0x7FFFFFFFFFFFFFF8;
          v46 = (v56[0] + 4 * v48);
          v49 = v44 + 1;
          v50 = (v56[0] + 16);
          v51 = v48;
          do
          {
            v52 = vaddq_f32(*v50, *v49);
            v49[-1] = vaddq_f32(v50[-1], v49[-1]);
            *v49 = v52;
            v49 += 2;
            v50 += 2;
            v51 -= 8;
          }

          while (v51);
          if (v45 + 1 == v48)
          {
            goto LABEL_51;
          }

          v47 = &v44->f32[v48];
        }
      }

      else
      {
        v46 = v56[0];
        v47 = *(a3 + 1);
      }

      v53 = &v44->f32[v42];
      do
      {
        v54 = *v46++;
        *v47 = v54 + *v47;
        ++v47;
      }

      while (v47 != v53);
    }

LABEL_51:
    free(v43);
    return;
  }

  if (*(a1 + 472) * *(a1 + 476))
  {
    if (*a2)
    {
      cva::VecLib<float>::gemm();
    }
  }
}

void sub_24025A340(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *v4;
  if (**v4 == v5 || (v7 = *(a2 + 16), (*(v7 + 8) - 4 * *(v7 + 20)) == v5))
  {
    v8 = (4 * *(v6 + 5) + 31) & 0x7FFFFFFE0;
    v13 = v8 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v8, 0xE1AC2527uLL);
    v12 = memptr;
    v14 = *(**(a2 + 8) + 20);
    sub_24025A340(&v12, a2);
    v9 = *a1;
    v10 = v13;
    *a1 = v12;
    *(a1 + 8) = v10;
    *(a1 + 16) = v14;
    free(v9);
  }

  else
  {
    if (*(v6 + 4) * *(v6 + 5) && *v7)
    {
      cva::VecLib<float>::gemm();
    }

    v11 = *(a1 + 16);
    if (v11)
    {

      bzero(v5, 4 * v11);
    }
  }
}

void *sub_24025A47C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_24025A620(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = *(v1 + 24);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v1 + 48));
    v2 = *(v1 + 24);
    if (!v2)
    {
LABEL_6:
      v3 = *v1;
      if (*v1)
      {
        *(v1 + 8) = v3;
        operator delete(v3);
      }

      JUMPOUT(0x245CBCA30);
    }

LABEL_5:
    *(v1 + 32) = v2;
    operator delete(v2);
    goto LABEL_6;
  }

  return result;
}

void sub_24025A6C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t *sub_24025A704(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        v4 = *(v2 + 64);
        v5 = *(v2 + 56);
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 8);
            if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }

            v4 -= 16;
          }

          while (v4 != v3);
          v5 = *(v2 + 56);
        }

        *(v2 + 64) = v3;
        operator delete(v5);
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

uint64_t sub_24025A7E8(uint64_t a1, void *a2)
{
  if (a1 == a2)
  {
    *(a1 + 24) = *(a2 + 6);
  }

  else
  {
    v4 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *a1 = v4;
    v5 = *(a2 + 12);
    *(a1 + 20) = *(a2 + 5);
    *(a1 + 12) = v5;
    *(a1 + 24) = *(a2 + 6);
    v6 = *(a2 + 55);
    if (*(a1 + 55) < 0)
    {
      if (v6 >= 0)
      {
        v8 = a2 + 4;
      }

      else
      {
        v8 = a2[4];
      }

      if (v6 >= 0)
      {
        v9 = *(a2 + 55);
      }

      else
      {
        v9 = a2[5];
      }

      sub_2401F8070(a1 + 32, v8, v9);
    }

    else if ((*(a2 + 55) & 0x80) != 0)
    {
      sub_2401F7FA0((a1 + 32), a2[4], a2[5]);
    }

    else
    {
      v7 = *(a2 + 2);
      *(a1 + 48) = a2[6];
      *(a1 + 32) = v7;
    }

    v10 = *(a2 + 79);
    if (*(a1 + 79) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2 + 7;
      }

      else
      {
        v12 = a2[7];
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 79);
      }

      else
      {
        v13 = a2[8];
      }

      sub_2401F8070(a1 + 56, v12, v13);
    }

    else if ((*(a2 + 79) & 0x80) != 0)
    {
      sub_2401F7FA0((a1 + 56), a2[7], a2[8]);
    }

    else
    {
      v11 = *(a2 + 7);
      *(a1 + 72) = a2[9];
      *(a1 + 56) = v11;
    }

    v14 = *(a2 + 103);
    if (*(a1 + 103) < 0)
    {
      if (v14 >= 0)
      {
        v16 = a2 + 10;
      }

      else
      {
        v16 = a2[10];
      }

      if (v14 >= 0)
      {
        v17 = *(a2 + 103);
      }

      else
      {
        v17 = a2[11];
      }

      sub_2401F8070(a1 + 80, v16, v17);
    }

    else if ((*(a2 + 103) & 0x80) != 0)
    {
      sub_2401F7FA0((a1 + 80), a2[10], a2[11]);
    }

    else
    {
      v15 = *(a2 + 5);
      *(a1 + 96) = a2[12];
      *(a1 + 80) = v15;
    }
  }

  return a1;
}

void sub_24025A948(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_2401BDE28();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_24025AA9C(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, int a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
LABEL_3:
  v267 = a5;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v134 = **a3;

          return sub_24025BA50(v11, v11 + 1, v10, v134);
        case 4:

          return sub_24025BC6C(v11, v11 + 1, v11 + 2, v10, a3);
        case 5:

          return sub_24025BE14(v11, v11 + 1, v11 + 2, v11 + 3, v10, a3);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v135 = *v11;
        v136 = **a3;
        v137 = (v136 + 12 * *v10);
        v138 = (v136 + 12 * *v11);
        if (*v137 < *v138)
        {
          goto LABEL_191;
        }

        if (*v137 > *v138)
        {
          return result;
        }

        v240 = v137[1];
        v241 = v138[1];
        if (v240 < v241)
        {
LABEL_191:
          v139 = 1;
        }

        else
        {
          if (v240 > v241)
          {
            return result;
          }

          v242 = v137[2];
          v243 = v138[2];
          v29 = v242 == v243;
          v139 = v242 < v243;
          if (v29)
          {
            return result;
          }
        }

        if (v139)
        {
          *v11 = *v10;
          *v10 = v135;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 == a2)
        {
          return result;
        }

        v140 = v11 + 1;
        if (v11 + 1 == a2)
        {
          return result;
        }

        v141 = 0;
        v142 = **a3;
        v143 = v11;
        while (1)
        {
          v189 = v143;
          v143 = v140;
          v191 = *v189;
          v190 = v189[1];
          v192 = (v142 + 12 * v190);
          v193 = (v142 + 12 * *v189);
          result = *v193;
          if (*v192 < result)
          {
            goto LABEL_265;
          }

          if (*v192 > result)
          {
            goto LABEL_263;
          }

          v201 = v192[1];
          result = v193[1];
          if (v201 < result)
          {
LABEL_265:
            v194 = 1;
          }

          else
          {
            if (v201 > result)
            {
              goto LABEL_263;
            }

            v202 = v192[2];
            v203 = v193[2];
            v29 = v202 == v203;
            v194 = v202 < v203;
            if (v29)
            {
              goto LABEL_263;
            }
          }

          if (v194)
          {
            break;
          }

LABEL_263:
          v140 = v143 + 1;
          v141 += 4;
          if (v143 + 1 == a2)
          {
            return result;
          }
        }

        v195 = v141;
        while (1)
        {
          v188 = v189;
          *(v11 + v195 + 4) = v191;
          if (!v195)
          {
            v188 = v11;
            goto LABEL_262;
          }

          v191 = *(v11 + v195 - 4);
          v196 = (v142 + 12 * v191);
          result = *v192;
          if (result < *v196)
          {
            goto LABEL_272;
          }

          if (result > *v196)
          {
            goto LABEL_262;
          }

          result = v192[1];
          v197 = v196[1];
          if (result >= v197)
          {
            if (result > v197)
            {
              v188 = (v11 + v195);
LABEL_262:
              *v188 = v190;
              goto LABEL_263;
            }

            v198 = v192[2];
            v199 = v196[2];
            v29 = v198 == v199;
            result = v198 < v199;
            if (v29)
            {
              goto LABEL_262;
            }
          }

          else
          {
LABEL_272:
            result = 1;
          }

          v189 = v188 - 1;
          v195 -= 4;
          if ((result & 1) == 0)
          {
            goto LABEL_262;
          }
        }
      }

      if (v11 == a2)
      {
        return result;
      }

      v245 = v11 + 1;
      if (v11 + 1 == a2)
      {
        return result;
      }

      v246 = **a3;
      while (1)
      {
        v247 = v9;
        v9 = v245;
        v249 = *v247;
        v248 = v247[1];
        v250 = (v246 + 12 * v248);
        v251 = (v246 + 12 * *v247);
        if (*v250 < *v251)
        {
          goto LABEL_346;
        }

        if (*v250 > *v251)
        {
          goto LABEL_344;
        }

        v262 = v250[1];
        v263 = v251[1];
        if (v262 < v263)
        {
LABEL_346:
          v252 = 1;
        }

        else
        {
          if (v262 > v263)
          {
            goto LABEL_344;
          }

          v264 = v250[2];
          v265 = v251[2];
          v29 = v264 == v265;
          v252 = v264 < v265;
          if (v29)
          {
            goto LABEL_344;
          }
        }

        if (v252)
        {
          break;
        }

LABEL_344:
        v245 = v9 + 1;
        if (v9 + 1 == a2)
        {
          return result;
        }
      }

      while (1)
      {
        v253 = v247;
        v254 = *--v247;
        v247[2] = v249;
        v249 = v254;
        v255 = (v246 + 12 * v254);
        if (*v250 < *v255)
        {
          goto LABEL_351;
        }

        if (*v250 > *v255)
        {
          goto LABEL_343;
        }

        v256 = v250[1];
        v257 = v255[1];
        if (v256 >= v257)
        {
          if (v256 > v257 || ((v259 = v250[2], v260 = v255[2], v29 = v259 == v260, v258 = v259 < v260, v29) ? (v261 = 0) : (v261 = 1), !v261))
          {
LABEL_343:
            *v253 = v248;
            goto LABEL_344;
          }
        }

        else
        {
LABEL_351:
          v258 = 1;
        }

        if (!v258)
        {
          goto LABEL_343;
        }
      }
    }

    if (!a4)
    {
      break;
    }

    v13 = v12 >> 1;
    v14 = &v11[v12 >> 1];
    v15 = **a3;
    if (v12 < 0x81)
    {
      result = sub_24025BA50(&v9[v12 >> 1], v9, v10, v15);
    }

    else
    {
      sub_24025BA50(v9, &v9[v12 >> 1], v10, v15);
      v16 = &v9[v13];
      sub_24025BA50(v9 + 1, v16 - 1, a2 - 2, **a3);
      sub_24025BA50(v9 + 2, &v9[v13 + 1], a2 - 3, **a3);
      result = sub_24025BA50(v16 - 1, v14, &v9[v13 + 1], **a3);
      v17 = *v9;
      *v9 = *v16;
      *v16 = v17;
      a5 = v267;
    }

    --a4;
    v18 = *v9;
    v19 = *v9;
    v20 = **a3;
    if (a5)
    {
      v21 = *(v20 + 12 * v19);
      goto LABEL_28;
    }

    v22 = (v20 + 12 * *(v9 - 1));
    v23 = (v20 + 12 * v19);
    v21 = *v23;
    if (*v22 < *v23)
    {
      goto LABEL_21;
    }

    if (*v22 > v21)
    {
      goto LABEL_102;
    }

    v24 = v22[1];
    v25 = v23[1];
    if (v24 < v25)
    {
LABEL_21:
      v26 = 1;
      goto LABEL_27;
    }

    if (v24 > v25 || ((v27 = v22[2], v28 = v23[2], v29 = v27 == v28, v26 = v27 < v28, v29) ? (v30 = 0) : (v30 = 1), !v30))
    {
LABEL_102:
      v82 = (v20 + 12 * *v10);
      if (v21 < *v82)
      {
        goto LABEL_103;
      }

      if (v21 <= *v82)
      {
        v129 = v23[1];
        v130 = v82[1];
        if (v129 < v130)
        {
LABEL_103:
          v83 = 1;
        }

        else
        {
          if (v129 > v130)
          {
            goto LABEL_120;
          }

          v131 = v23[2];
          v132 = v82[2];
          v29 = v131 == v132;
          v83 = v131 < v132;
          if (v29)
          {
            goto LABEL_120;
          }
        }

        if (!v83)
        {
          goto LABEL_120;
        }

        v11 = v9;
        while (2)
        {
          while (2)
          {
            v84 = v11[1];
            ++v11;
            v85 = (v20 + 12 * v84);
            if (v21 >= *v85)
            {
              if (v21 > *v85)
              {
                goto LABEL_109;
              }

              v87 = v23[1];
              v88 = v85[1];
              if (v87 < v88)
              {
                goto LABEL_107;
              }

              if (v87 > v88)
              {
LABEL_109:
                v86 = 0;
              }

              else
              {
                v89 = v23[2];
                v90 = v85[2];
                v29 = v89 == v90;
                v86 = v89 < v90;
                if (v29)
                {
                  continue;
                }
              }
            }

            else
            {
LABEL_107:
              v86 = 1;
            }

            break;
          }

          if (v86)
          {
            goto LABEL_135;
          }

          continue;
        }
      }

LABEL_120:
      v92 = v9 + 1;
      while (2)
      {
        v11 = v92;
        if (v92 < a2)
        {
          v93 = (v20 + 12 * *v92);
          if (v21 < *v93)
          {
            goto LABEL_123;
          }

          if (v21 <= *v93)
          {
            v95 = v23[1];
            v96 = v93[1];
            if (v95 < v96)
            {
LABEL_123:
              v94 = 1;
              v92 = v11 + 1;
            }

            else
            {
              if (v95 > v96)
              {
                goto LABEL_125;
              }

              v97 = v23[2];
              v98 = v93[2];
              v29 = v97 == v98;
              v94 = v97 < v98;
              v99 = !v29;
              v92 = v11 + 1;
              if (!v99)
              {
                continue;
              }
            }
          }

          else
          {
LABEL_125:
            v94 = 0;
            v92 = v11 + 1;
          }

          if (v94)
          {
            break;
          }

          continue;
        }

        break;
      }

LABEL_135:
      v100 = a2;
      if (v11 < a2)
      {
        v101 = a2 - 1;
        do
        {
          v100 = v101;
          v102 = (v20 + 12 * *v101);
          if (v21 < *v102)
          {
            goto LABEL_140;
          }

          if (v21 > *v102)
          {
            break;
          }

          v103 = v23[1];
          v104 = v102[1];
          if (v103 >= v104)
          {
            if (v103 > v104)
            {
              break;
            }

            v106 = v23[2];
            v107 = v102[2];
            v29 = v106 == v107;
            v105 = v106 < v107;
            if (v29)
            {
              break;
            }
          }

          else
          {
LABEL_140:
            v105 = 1;
          }

          v101 = v100 - 1;
        }

        while (v105);
      }

      if (v11 < v100)
      {
        v109 = *v11;
        v110 = *v100;
        do
        {
          *v11 = v110;
          *v100 = v109;
          v111 = *v23;
          do
          {
            do
            {
              v112 = v11[1];
              ++v11;
              v109 = v112;
              v113 = (v20 + 12 * v112);
              if (v111 < *v113)
              {
LABEL_152:
                v114 = 1;
                break;
              }

              if (v111 > *v113)
              {
                goto LABEL_154;
              }

              v115 = v23[1];
              v116 = v113[1];
              if (v115 < v116)
              {
                goto LABEL_152;
              }

              if (v115 > v116)
              {
LABEL_154:
                v114 = 0;
                break;
              }

              v117 = v23[2];
              v118 = v113[2];
              v29 = v117 == v118;
              v114 = v117 < v118;
            }

            while (v29);
          }

          while (!v114);
          v120 = v100 - 1;
          while (1)
          {
            v100 = v120;
            v110 = *v120;
            v121 = (v20 + 12 * *v120);
            if (v111 >= *v121)
            {
              if (v111 > *v121)
              {
                goto LABEL_149;
              }

              v122 = v23[1];
              v123 = v121[1];
              if (v122 >= v123)
              {
                break;
              }
            }

            v124 = 1;
LABEL_173:
            v120 = v100 - 1;
            if (!v124)
            {
              goto LABEL_149;
            }
          }

          if (v122 <= v123)
          {
            v125 = v23[2];
            v126 = v121[2];
            v29 = v125 == v126;
            v124 = v125 < v126;
            if (!v29)
            {
              goto LABEL_173;
            }
          }

LABEL_149:
          ;
        }

        while (v11 < v100);
      }

      v128 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v128;
      }

      a5 = 0;
      *v128 = v18;
      goto LABEL_3;
    }

LABEL_27:
    if (!v26)
    {
      goto LABEL_102;
    }

LABEL_28:
    v31 = (v20 + 12 * v19);
    v32 = v9 + 1;
    while (1)
    {
      v33 = v32;
      v34 = *v32;
      v35 = (v20 + 12 * *v32);
      if (*v35 >= v21)
      {
        if (*v35 > v21)
        {
          goto LABEL_39;
        }

        v36 = v35[1];
        v37 = v31[1];
        if (v36 >= v37)
        {
          break;
        }
      }

      v38 = 1;
LABEL_38:
      v32 = v33 + 1;
      if (!v38)
      {
        goto LABEL_39;
      }
    }

    if (v36 <= v37)
    {
      v39 = v35[2];
      v40 = v31[2];
      v29 = v39 == v40;
      v38 = v39 < v40;
      if (!v29)
      {
        goto LABEL_38;
      }
    }

LABEL_39:
    v42 = v33 - 1;
    v43 = a2;
    if (v33 - 1 != v9)
    {
      while (1)
      {
        v44 = *--v43;
        v45 = (v20 + 12 * v44);
        if (*v45 < v21)
        {
          goto LABEL_41;
        }

        if (*v45 > v21)
        {
          goto LABEL_43;
        }

        v47 = v45[1];
        v48 = v31[1];
        if (v47 < v48)
        {
LABEL_41:
          v46 = 1;
LABEL_44:
          if (v46)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v47 > v48)
          {
LABEL_43:
            v46 = 0;
            goto LABEL_44;
          }

          v49 = v45[2];
          v50 = v31[2];
          v29 = v49 == v50;
          v46 = v49 < v50;
          if (!v29)
          {
            goto LABEL_44;
          }
        }
      }
    }

    v43 = a2;
    while (v33 < v43)
    {
      v52 = *--v43;
      v53 = (v20 + 12 * v52);
      if (*v53 < v21)
      {
        goto LABEL_56;
      }

      if (*v53 > v21)
      {
        goto LABEL_58;
      }

      v55 = v53[1];
      v56 = v31[1];
      if (v55 < v56)
      {
LABEL_56:
        v54 = 1;
LABEL_59:
        if (v54)
        {
          break;
        }
      }

      else
      {
        if (v55 > v56)
        {
LABEL_58:
          v54 = 0;
          goto LABEL_59;
        }

        v57 = v53[2];
        v58 = v31[2];
        v29 = v57 == v58;
        v54 = v57 < v58;
        if (!v29)
        {
          goto LABEL_59;
        }
      }
    }

LABEL_68:
    if (v33 < v43)
    {
      v60 = *v43;
      v61 = v34;
      v62 = v33;
      v63 = v43;
      while (2)
      {
        *v62 = v60;
        *v63 = v61;
        v64 = *v31;
        v65 = v62 + 1;
        while (1)
        {
          v62 = v65;
          v61 = *v65;
          v66 = (v20 + 12 * *v65);
          if (*v66 >= v64)
          {
            if (*v66 > v64)
            {
              goto LABEL_82;
            }

            v67 = v66[1];
            v68 = v31[1];
            if (v67 >= v68)
            {
              break;
            }
          }

          v69 = 1;
LABEL_81:
          v65 = v62 + 1;
          if (!v69)
          {
            goto LABEL_82;
          }
        }

        if (v67 <= v68)
        {
          v70 = v66[2];
          v71 = v31[2];
          v29 = v70 == v71;
          v69 = v70 < v71;
          if (!v29)
          {
            goto LABEL_81;
          }
        }

LABEL_82:
        v42 = v62 - 1;
LABEL_83:
        while (2)
        {
          v73 = *--v63;
          v60 = v73;
          v74 = (v20 + 12 * v73);
          if (*v74 >= v64)
          {
            if (*v74 > v64)
            {
              goto LABEL_86;
            }

            v76 = v74[1];
            v77 = v31[1];
            if (v76 < v77)
            {
              goto LABEL_84;
            }

            if (v76 > v77)
            {
LABEL_86:
              v75 = 0;
            }

            else
            {
              v78 = v74[2];
              v79 = v31[2];
              v29 = v78 == v79;
              v75 = v78 < v79;
              if (v29)
              {
                continue;
              }
            }
          }

          else
          {
LABEL_84:
            v75 = 1;
          }

          break;
        }

        if (v75)
        {
          if (v62 >= v63)
          {
            break;
          }

          continue;
        }

        goto LABEL_83;
      }
    }

    if (v42 != v9)
    {
      *v9 = *v42;
    }

    *v42 = v18;
    if (v33 < v43)
    {
LABEL_101:
      result = sub_24025AA9C(v9, v42, a3, a4, a5 & 1);
      a5 = 0;
      v11 = v42 + 1;
      goto LABEL_3;
    }

    v81 = sub_24025C02C(v9, v42, a3);
    v11 = v42 + 1;
    result = sub_24025C02C(v42 + 1, a2, a3);
    if (result)
    {
      a2 = v42;
      if (v81)
      {
        return result;
      }

      goto LABEL_2;
    }

    if (!v81)
    {
      goto LABEL_101;
    }
  }

  if (v11 == a2)
  {
    return result;
  }

  v144 = (v12 - 2) >> 1;
  v145 = *a3;
  v146 = v144;
  while (2)
  {
    v147 = v146;
    if (v144 >= v146)
    {
      v148 = (2 * v146) | 1;
      v149 = &v11[v148];
      v150 = 2 * v146 + 2;
      v151 = *v145;
      if (v150 < v12)
      {
        v152 = (v151 + 12 * *v149);
        v153 = (v151 + 12 * v149[1]);
        if (*v152 < *v153)
        {
          goto LABEL_211;
        }

        if (*v152 <= *v153)
        {
          v184 = v152[1];
          v185 = v153[1];
          if (v184 < v185)
          {
LABEL_211:
            v154 = 1;
            v155 = 1;
          }

          else
          {
            if (v184 > v185)
            {
              goto LABEL_216;
            }

            v186 = v152[2];
            v187 = v153[2];
            v29 = v186 == v187;
            v155 = v186 < v187;
            v154 = !v29;
          }

          if ((v154 & v155) != 0)
          {
            ++v149;
            v148 = 2 * v147 + 2;
          }
        }
      }

LABEL_216:
      v156 = &v11[v147];
      v157 = *v149;
      v158 = *v156;
      v159 = (v151 + 12 * *v149);
      v160 = (v151 + 12 * *v156);
      if (*v159 < *v160)
      {
        goto LABEL_217;
      }

      if (*v159 > *v160)
      {
        goto LABEL_241;
      }

      v162 = v159[1];
      v163 = v160[1];
      if (v162 < v163)
      {
LABEL_217:
        result = 1;
        v161 = 1;
      }

      else if (v162 > v163 || ((v164 = v159[2], v165 = v160[2], v29 = v164 == v165, v161 = v164 < v165, v29) ? (result = 0) : (result = 1), !result))
      {
        while (1)
        {
LABEL_241:
          result = v149;
          *v156 = v157;
          if (v144 < v148)
          {
LABEL_206:
            *result = v158;
            goto LABEL_207;
          }

          v179 = (2 * v148) | 1;
          v149 = &v11[v179];
          v180 = 2 * v148 + 2;
          if (v180 >= v12)
          {
            goto LABEL_249;
          }

          v181 = (v151 + 12 * *v149);
          v182 = (v151 + 12 * v149[1]);
          if (*v181 < *v182)
          {
LABEL_244:
            v178 = 1;
            v177 = 1;
LABEL_245:
            if ((v178 & v177) != 0)
            {
              ++v149;
              v148 = v180;
            }

            else
            {
              v148 = v179;
            }

            goto LABEL_250;
          }

          if (*v181 <= *v182)
          {
            v172 = v181[1];
            v173 = v182[1];
            v174 = v172 <= v173;
            if (v172 < v173)
            {
              goto LABEL_244;
            }

            v148 = v179;
            if (v174)
            {
              v175 = v181[2];
              v176 = v182[2];
              v29 = v175 == v176;
              v177 = v175 < v176;
              v178 = !v29;
              goto LABEL_245;
            }
          }

          else
          {
LABEL_249:
            v148 = (2 * v148) | 1;
          }

LABEL_250:
          v157 = *v149;
          v183 = (v151 + 12 * *v149);
          if (*v183 < *v160)
          {
            goto LABEL_251;
          }

          if (*v183 > *v160)
          {
LABEL_253:
            v170 = 0;
            goto LABEL_254;
          }

          v166 = v183[1];
          v167 = v160[1];
          if (v166 < v167)
          {
LABEL_251:
            v170 = 1;
          }

          else
          {
            if (v166 > v167)
            {
              goto LABEL_253;
            }

            v168 = v183[2];
            v169 = v160[2];
            v29 = v168 == v169;
            v170 = v168 < v169;
            v171 = !v29;
            v156 = result;
            if (!v171)
            {
              continue;
            }
          }

LABEL_254:
          v156 = result;
          if (v170)
          {
            goto LABEL_206;
          }
        }
      }

      if (!v161)
      {
        goto LABEL_241;
      }
    }

LABEL_207:
    v146 = v147 - 1;
    if (v147)
    {
      continue;
    }

    break;
  }

  do
  {
    if (v12 < 2)
    {
      goto LABEL_291;
    }

    v205 = 0;
    v206 = *v11;
    v207 = *a3;
    v208 = v11;
    do
    {
      v210 = v208;
      v211 = &v208[v205];
      v208 = v211 + 1;
      result = 2 * v205;
      v205 = (2 * v205) | 1;
      v212 = result + 2;
      if (result + 2 >= v12)
      {
        goto LABEL_298;
      }

      v214 = v211[2];
      v213 = v211 + 2;
      result = *v207 + 12 * *(v213 - 1);
      v215 = (*v207 + 12 * v214);
      if (*result < *v215)
      {
        goto LABEL_295;
      }

      if (*result > *v215)
      {
        goto LABEL_298;
      }

      v216 = *(result + 4);
      v217 = v215[1];
      if (v216 < v217)
      {
LABEL_295:
        result = 1;
        v209 = 1;
      }

      else
      {
        if (v216 > v217)
        {
          goto LABEL_298;
        }

        v218 = *(result + 8);
        v219 = v215[2];
        v29 = v218 == v219;
        v209 = v218 < v219;
        result = !v29;
      }

      if ((result & v209) != 0)
      {
        v208 = v213;
        v205 = v212;
      }

LABEL_298:
      *v210 = *v208;
    }

    while (v205 <= ((v12 - 2) >> 1));
    v220 = a2 - 1;
    if (v208 == a2 - 1)
    {
      *v208 = v206;
      goto LABEL_291;
    }

    *v208 = *v220;
    *v220 = v206;
    v221 = (v208 - v11 + 4) >> 2;
    v174 = v221 < 2;
    v222 = v221 - 2;
    if (!v174)
    {
      v223 = v222 >> 1;
      v224 = &v11[v223];
      v225 = *v224;
      v226 = *v208;
      v227 = *v207;
      v228 = (v227 + 12 * *v224);
      v229 = (v227 + 12 * *v208);
      result = *v228;
      if (result < *v229)
      {
        goto LABEL_310;
      }

      if (result <= *v229)
      {
        result = v228[1];
        v236 = v229[1];
        if (result < v236)
        {
LABEL_310:
          result = 1;
        }

        else
        {
          if (result > v236)
          {
            goto LABEL_291;
          }

          v237 = v228[2];
          v238 = v229[2];
          v29 = v237 == v238;
          result = v237 < v238;
          if (v29)
          {
            goto LABEL_291;
          }
        }

        if (result)
        {
          do
          {
            v230 = v224;
            *v208 = v225;
            if (!v223)
            {
              break;
            }

            v223 = (v223 - 1) >> 1;
            v224 = &v11[v223];
            v225 = *v224;
            v231 = (v227 + 12 * *v224);
            result = *v231;
            if (result < *v229)
            {
              goto LABEL_316;
            }

            if (result > *v229)
            {
              break;
            }

            result = v231[1];
            v232 = v229[1];
            if (result >= v232)
            {
              if (result > v232)
              {
                break;
              }

              v233 = v231[2];
              v234 = v229[2];
              v29 = v233 == v234;
              result = v233 < v234;
              if (v29)
              {
                break;
              }
            }

            else
            {
LABEL_316:
              result = 1;
            }

            v208 = v230;
          }

          while ((result & 1) != 0);
          *v230 = v226;
        }
      }
    }

LABEL_291:
    --a2;
    v174 = v12-- > 2;
  }

  while (v174);
  return result;
}

int *sub_24025BA50(int *result, int *a2, int *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = (a4 + 12 * *a2);
  v7 = (a4 + 12 * *result);
  v8 = *v6;
  if (*v6 < *v7)
  {
    goto LABEL_2;
  }

  if (v8 > *v7)
  {
    goto LABEL_9;
  }

  v24 = v6[1];
  v25 = v7[1];
  if (v24 < v25)
  {
LABEL_2:
    v9 = 1;
  }

  else
  {
    if (v24 > v25)
    {
      goto LABEL_9;
    }

    v26 = v6[2];
    v27 = v7[2];
    v22 = v26 == v27;
    v9 = v26 < v27;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  if (v9)
  {
    v10 = (a4 + 12 * *a3);
    if (*v10 < v8)
    {
      goto LABEL_5;
    }

    if (*v10 > v8)
    {
      goto LABEL_32;
    }

    v36 = v10[1];
    v37 = v6[1];
    if (v36 < v37)
    {
LABEL_5:
      v11 = 1;
    }

    else
    {
      if (v36 > v37)
      {
        goto LABEL_32;
      }

      v38 = v10[2];
      v39 = v6[2];
      v22 = v38 == v39;
      v11 = v38 < v39;
      if (v22)
      {
        goto LABEL_32;
      }
    }

    if (v11)
    {
      *result = *a3;
LABEL_36:
      *a3 = v5;
      return result;
    }

LABEL_32:
    *result = v4;
    *a2 = v5;
    v29 = (a4 + 12 * *a3);
    if (*v29 < *v7)
    {
      goto LABEL_33;
    }

    if (*v29 > *v7)
    {
      return result;
    }

    v41 = v29[1];
    v42 = v7[1];
    if (v41 < v42)
    {
LABEL_33:
      v30 = 1;
    }

    else
    {
      if (v41 > v42)
      {
        return result;
      }

      v43 = v29[2];
      v44 = v7[2];
      v22 = v43 == v44;
      v30 = v43 < v44;
      if (v22)
      {
        return result;
      }
    }

    if (v30)
    {
      *a2 = *a3;
      goto LABEL_36;
    }

    return result;
  }

LABEL_9:
  v12 = (a4 + 12 * *a3);
  if (*v12 < v8)
  {
    goto LABEL_10;
  }

  if (*v12 > v8)
  {
    return result;
  }

  v18 = v12[1];
  v19 = v6[1];
  if (v18 < v19)
  {
LABEL_10:
    v13 = 1;
  }

  else
  {
    if (v18 > v19)
    {
      return result;
    }

    v20 = v12[2];
    v21 = v6[2];
    v22 = v20 == v21;
    v13 = v20 < v21;
    if (v22)
    {
      return result;
    }
  }

  if (!v13)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v4;
  v14 = *result;
  v15 = (a4 + 12 * *a2);
  v16 = (a4 + 12 * *result);
  if (*v15 < *v16)
  {
    goto LABEL_13;
  }

  if (*v15 > *v16)
  {
    return result;
  }

  v31 = v15[1];
  v32 = v16[1];
  if (v31 < v32)
  {
LABEL_13:
    v17 = 1;
  }

  else
  {
    if (v31 > v32)
    {
      return result;
    }

    v33 = v15[2];
    v34 = v16[2];
    v22 = v33 == v34;
    v17 = v33 < v34;
    if (v22)
    {
      return result;
    }
  }

  if (v17)
  {
    *result = *a2;
    *a2 = v14;
  }

  return result;
}

int *sub_24025BC6C(int *a1, int *a2, int *a3, int *a4, uint64_t **a5)
{
  result = sub_24025BA50(a1, a2, a3, **a5);
  v11 = *a3;
  v12 = **a5;
  v13 = (v12 + 12 * *a4);
  v14 = (v12 + 12 * *a3);
  if (*v13 < *v14)
  {
    goto LABEL_2;
  }

  if (*v13 > *v14)
  {
    return result;
  }

  v24 = v13[1];
  v25 = v14[1];
  if (v24 < v25)
  {
LABEL_2:
    v15 = 1;
LABEL_3:
    if (!v15)
    {
      return result;
    }

    *a3 = *a4;
    *a4 = v11;
    v16 = *a2;
    v17 = (v12 + 12 * *a3);
    v18 = (v12 + 12 * *a2);
    if (*v17 < *v18)
    {
      goto LABEL_5;
    }

    if (*v17 > *v18)
    {
      return result;
    }

    v30 = v17[1];
    v31 = v18[1];
    if (v30 < v31)
    {
LABEL_5:
      v19 = 1;
    }

    else
    {
      if (v30 > v31)
      {
        return result;
      }

      v32 = v17[2];
      v33 = v18[2];
      v28 = v32 == v33;
      v19 = v32 < v33;
      if (v28)
      {
        return result;
      }
    }

    if (!v19)
    {
      return result;
    }

    *a2 = *a3;
    *a3 = v16;
    v20 = *a1;
    v21 = (v12 + 12 * *a2);
    v22 = (v12 + 12 * *a1);
    if (*v21 < *v22)
    {
      goto LABEL_8;
    }

    if (*v21 > *v22)
    {
      return result;
    }

    v35 = v21[1];
    v36 = v22[1];
    if (v35 < v36)
    {
LABEL_8:
      v23 = 1;
    }

    else
    {
      if (v35 > v36)
      {
        return result;
      }

      v37 = v21[2];
      v38 = v22[2];
      v28 = v37 == v38;
      v23 = v37 < v38;
      if (v28)
      {
        return result;
      }
    }

    if (v23)
    {
      *a1 = *a2;
      *a2 = v20;
    }

    return result;
  }

  if (v24 <= v25)
  {
    v26 = v13[2];
    v27 = v14[2];
    v28 = v26 == v27;
    v15 = v26 < v27;
    if (!v28)
    {
      goto LABEL_3;
    }
  }

  return result;
}

int *sub_24025BE14(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t **a6)
{
  result = sub_24025BC6C(a1, a2, a3, a4, a6);
  v13 = *a4;
  v14 = **a6;
  v15 = (v14 + 12 * *a5);
  v16 = (v14 + 12 * *a4);
  if (*v15 < *v16)
  {
    goto LABEL_2;
  }

  if (*v15 > *v16)
  {
    return result;
  }

  v30 = v15[1];
  v31 = v16[1];
  if (v30 < v31)
  {
LABEL_2:
    v17 = 1;
LABEL_3:
    if (!v17)
    {
      return result;
    }

    *a4 = *a5;
    *a5 = v13;
    v18 = *a3;
    v19 = (v14 + 12 * *a4);
    v20 = (v14 + 12 * *a3);
    if (*v19 < *v20)
    {
      goto LABEL_5;
    }

    if (*v19 > *v20)
    {
      return result;
    }

    v36 = v19[1];
    v37 = v20[1];
    if (v36 < v37)
    {
LABEL_5:
      v21 = 1;
    }

    else
    {
      if (v36 > v37)
      {
        return result;
      }

      v38 = v19[2];
      v39 = v20[2];
      v34 = v38 == v39;
      v21 = v38 < v39;
      if (v34)
      {
        return result;
      }
    }

    if (!v21)
    {
      return result;
    }

    *a3 = *a4;
    *a4 = v18;
    v22 = *a2;
    v23 = (v14 + 12 * *a3);
    v24 = (v14 + 12 * *a2);
    if (*v23 < *v24)
    {
      goto LABEL_8;
    }

    if (*v23 > *v24)
    {
      return result;
    }

    v41 = v23[1];
    v42 = v24[1];
    if (v41 < v42)
    {
LABEL_8:
      v25 = 1;
    }

    else
    {
      if (v41 > v42)
      {
        return result;
      }

      v43 = v23[2];
      v44 = v24[2];
      v34 = v43 == v44;
      v25 = v43 < v44;
      if (v34)
      {
        return result;
      }
    }

    if (!v25)
    {
      return result;
    }

    *a2 = *a3;
    *a3 = v22;
    v26 = *a1;
    v27 = (v14 + 12 * *a2);
    v28 = (v14 + 12 * *a1);
    if (*v27 < *v28)
    {
      goto LABEL_11;
    }

    if (*v27 > *v28)
    {
      return result;
    }

    v46 = v27[1];
    v47 = v28[1];
    if (v46 < v47)
    {
LABEL_11:
      v29 = 1;
    }

    else
    {
      if (v46 > v47)
      {
        return result;
      }

      v48 = v27[2];
      v49 = v28[2];
      v34 = v48 == v49;
      v29 = v48 < v49;
      if (v34)
      {
        return result;
      }
    }

    if (v29)
    {
      *a1 = *a2;
      *a2 = v26;
    }

    return result;
  }

  if (v30 <= v31)
  {
    v32 = v15[2];
    v33 = v16[2];
    v34 = v32 == v33;
    v17 = v32 < v33;
    if (!v34)
    {
      goto LABEL_3;
    }
  }

  return result;
}

BOOL sub_24025C02C(int *a1, int *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_24025BA50(a1, a1 + 1, a2 - 1, **a3);
        return 1;
      case 4:
        sub_24025BC6C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_24025BE14(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }

LABEL_13:
    v12 = a1 + 2;
    sub_24025BA50(a1, a1 + 1, a1 + 2, **a3);
    v15 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v16 = 0;
    v17 = 0;
    v18 = **a3;
    while (1)
    {
      v20 = *v15;
      v21 = *v12;
      v22 = (v18 + 12 * *v15);
      v23 = (v18 + 12 * *v12);
      if (*v22 < *v23)
      {
        goto LABEL_19;
      }

      if (*v22 > *v23)
      {
        goto LABEL_17;
      }

      v35 = v22[1];
      v36 = v23[1];
      if (v35 < v36)
      {
LABEL_19:
        v24 = 1;
      }

      else
      {
        if (v35 > v36)
        {
          goto LABEL_17;
        }

        v37 = v22[2];
        v38 = v23[2];
        v33 = v37 == v38;
        v24 = v37 < v38;
        if (v33)
        {
          goto LABEL_17;
        }
      }

      if (v24)
      {
        v25 = v16;
        while (1)
        {
          *(a1 + v25 + 12) = v21;
          if (v25 == -8)
          {
            break;
          }

          v27 = v25;
          v21 = *(a1 + v25 + 4);
          v28 = (v18 + 12 * v21);
          if (*v22 < *v28)
          {
            goto LABEL_22;
          }

          if (*v22 > *v28)
          {
            goto LABEL_15;
          }

          v29 = v22[1];
          v30 = v28[1];
          if (v29 < v30)
          {
LABEL_22:
            v26 = 1;
          }

          else if (v29 > v30 || ((v31 = v22[2], v32 = v28[2], v33 = v31 == v32, v26 = v31 < v32, v33) ? (v34 = 0) : (v34 = 1), !v34))
          {
LABEL_15:
            v19 = (a1 + v27 + 8);
            goto LABEL_16;
          }

          v25 = v27 - 4;
          if (!v26)
          {
            goto LABEL_15;
          }
        }

        v19 = a1;
LABEL_16:
        *v19 = v20;
        if (++v17 == 8)
        {
          return v15 + 1 == a2;
        }
      }

LABEL_17:
      v12 = v15;
      v16 += 4;
      if (++v15 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_13;
  }

  v5 = *(a2 - 1);
  v6 = *a1;
  v7 = **a3;
  v8 = (v7 + 12 * v5);
  v9 = (v7 + 12 * *a1);
  if (*v8 >= *v9)
  {
    if (*v8 <= *v9)
    {
      v41 = v8[1];
      v42 = v9[1];
      if (v41 < v42)
      {
        goto LABEL_5;
      }

      if (v41 <= v42)
      {
        v43 = v8[2];
        v44 = v9[2];
        v10 = v43 < v44;
        v45 = v43 != v44;
        v11 = 1;
        if (!v45)
        {
          return v11;
        }

        goto LABEL_6;
      }
    }

    return 1;
  }

LABEL_5:
  v10 = 1;
  v11 = 1;
LABEL_6:
  if (v10)
  {
    *a1 = v5;
    *(a2 - 1) = v6;
  }

  return v11;
}

void sub_24025C2CC(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (!(a4 >> 60))
    {
      v21 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v21 = a4;
      }

      v22 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v23 = 0xFFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v21;
      }

      if (!(v23 >> 60))
      {
        operator new();
      }
    }

    sub_2401BDE28();
  }

  v13 = *(a1 + 8);
  if (a4 <= (v13 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5;
        v18 = v5[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v8 + 1);
        *v8 = v19;
        *(v8 + 1) = v18;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    for (; v13 != v8; v13 -= 16)
    {
      v26 = *(v13 - 1);
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        v16 = *v5;
        v15 = v5[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(v8 + 1);
        *v8 = v16;
        *(v8 + 1) = v15;
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v24 = v13;
    if (v14 != a3)
    {
      v24 = v13;
      do
      {
        v25 = v14[1];
        *v24 = *v14;
        *(v24 + 1) = v25;
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
        v24 += 16;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v24;
  }
}

void sub_24025C61C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      sub_2401BDE28();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = v12 + 12;
    v13 = v12 - v8;
    if (v7 != v3)
    {
      v14 = v13;
      do
      {
        v15 = *v7;
        *(v14 + 8) = v7[2];
        *v14 = v15;
        v14 += 12;
        v7 += 3;
      }

      while (v7 != v3);
      v7 = *a1;
    }

    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v5;
    v6 = (v3 + 3);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_24025C76C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = *a1;
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  v5 = a1 + 144;
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 176) = *(a1 + 168);
  *(a1 + 200) = *(a1 + 192);
  v49 = a1 + 216;
  *(a1 + 224) = *(a1 + 216);
  v6 = (a1 + 248);
  sub_24022B1B8(*(a1 + 248));
  *(a1 + 240) = v6;
  *v6 = 0;
  *(a1 + 256) = 0;
  sub_24022B0CC(*(a1 + 272));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = a1 + 272;
  if (*(a1 + 455) < 0)
  {
    **(a1 + 432) = 0;
    *(a1 + 440) = 0;
  }

  else
  {
    *(a1 + 432) = 0;
    *(a1 + 455) = 0;
  }

  sub_240269584(&v77, *a2, a3);
  if (v77)
  {
    (*(*v77 + 64))(&v75);
    v7 = cva::Path::Path();
    cva::Path::directory(__p, v7);
    v8 = cva::Path::string(__p);
    if (*(v8 + 23) < 0)
    {
      sub_2401C2FCC(v73, *v8, *(v8 + 8));
    }

    else
    {
      *v73 = *v8;
      v74 = *(v8 + 16);
    }

    cva::Path::~Path(__p);
    cva::Path::~Path(&v81);
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 7;
    strcpy(&v65, "default");
    __p[0] = &v65;
    v13 = sub_240260B78(a1 + 240, &v65);
    v14 = v13;
    __asm { FMOV            V8.2S, #1.0 }

    v13[7] = _D8;
    *(v13 + 16) = 1065353216;
    *(v13 + 68) = 0;
    *(v13 + 76) = 0x4270000000000000;
    if (*(v13 + 111) < 0)
    {
      operator delete(v13[11]);
    }

    v14[11] = 0;
    v14[12] = 0;
    v14[13] = 0;
    if (*(v14 + 135) < 0)
    {
      operator delete(v14[14]);
    }

    v14[14] = 0;
    v14[15] = 0;
    v14[16] = 0;
    if (*(v14 + 159) < 0)
    {
      operator delete(v14[17]);
    }

    v14[17] = 0;
    v14[18] = 0;
    v14[19] = 0;
    __p[0] = &v65;
    v19 = sub_24025A47C(a1 + 264, &v65);
    v20 = v19[8];
    if (v20 == v19[7] || (v21 = *(v20 - 16), v21[1] != *v21) || v21[4] != v21[3])
    {
      operator new();
    }

    v57 = 0;
    v55 = &unk_285227400;
    v59 = 1;
    v60 = 0;
    v22 = &unk_2852272A0;
    v61 = &v75;
    v62 = 0;
    v63 = 1;
    v64 = 6;
    v58 = &unk_2852272A0;
    v56 = &v58;
    memset(&v81, 0, sizeof(v81));
    while (1)
    {
      LOBYTE(__p[0]) = 0;
      while (v22[11]() == 1)
      {
        if (LOBYTE(__p[0]) > 0x20u || ((1 << SLOBYTE(__p[0])) & 0x100002600) == 0)
        {
          break;
        }

        v24 = v56;
        if (*(v56 + 2) != 2)
        {
          v25 = (*(*v56 + 18))(v56, __p, 1);
          if (v25 >= 1)
          {
            v24[2] = v24[2] + v25;
          }
        }

        v22 = *v56;
      }

      LOBYTE(v51[0]) = 0;
      if ((*(*v56 + 11))(v56, v51, 1) != 1 || LOBYTE(v51[0]) != 35)
      {
        break;
      }

      (*(*v56 + 9))(__p);
      if (v80 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      if (v80 >= 0)
      {
        v27 = HIBYTE(v80);
      }

      else
      {
        v27 = __p[1];
      }

      std::string::append(&v81, v26, v27);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      v22 = *v56;
    }

    if (*(a1 + 455) < 0)
    {
      operator delete(*(a1 + 432));
    }

    *(a1 + 432) = v81;
    if (v63 == 1 && ((*(*v56 + 4))(v56) & 1) == 0)
    {
      v53[1] = 0;
      v53[0] = 0;
      v54 = 0;
      v63 = (*(*v56 + 4))(v56) ^ 1;
      (*(*v56 + 9))(__p);
      if (SHIBYTE(v54) < 0)
      {
        operator delete(v53[0]);
      }

      *v53 = *__p;
      v54 = v80;
      v51[1] = 0;
      v52 = 0;
      v51[0] = &unk_285227400;
      operator new();
    }

    v29 = *(a1 + 216);
    for (i = *(a1 + 224); i != v29; i = *(a1 + 224))
    {
      if ((i - v29) >= *(a1 + 176) - *(a1 + 168))
      {
        break;
      }

      __p[1] = 0;
      __p[0] = 0;
      sub_24026160C(v49, __p);
      v29 = *(a1 + 216);
    }

    v30 = *(a1 + 152) - *(a1 + 144);
    if (v30)
    {
      while (1)
      {
        v31 = *(a1 + 104) - *(a1 + 96);
        _CF = v30 >= v31;
        v32 = v30 < v31;
        if (_CF)
        {
          break;
        }

        LODWORD(__p[1]) = 0;
        __p[0] = 0;
        sub_24025C61C(v5, __p);
        v30 = *(a1 + 152) - *(a1 + 144);
        if (!v30)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
LABEL_61:
      v32 = 1;
    }

    v33 = *(a1 + 176) - *(a1 + 168);
    v34 = *(a1 + 200) - *(a1 + 192);
    if (v34)
    {
      v35 = v33 == v34;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      v36 = *(a1 + 224) - *(a1 + 216);
      v11 = 0;
      if (v36)
      {
        v37 = v33 == v36;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        v38 = *(a1 + 104) - *(a1 + 96);
        v39 = *(a1 + 128) - *(a1 + 120);
        v40 = !v39 || v38 == v39;
        v41 = v40;
        if (((v38 != v30) & ~v32) == 0 && v41)
        {
          *(a1 + 416) = *(a1 + 408);
          v43 = *(a1 + 336);
          v42 = *(a1 + 344);
          if (v42 != v43)
          {
            v44 = *(a1 + 344);
            do
            {
              v46 = *(v44 - 24);
              v44 -= 24;
              v45 = v46;
              if (v46)
              {
                *(v42 - 16) = v45;
                operator delete(v45);
              }

              v42 = v44;
            }

            while (v44 != v43);
          }

          *(a1 + 344) = v43;
          v11 = 1;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v55 = &unk_285227400;
    v58 = &unk_2852272A0;
    if (v62 == 1)
    {
      if (v61)
      {
        v47 = sub_24026A708(v61);
        MEMORY[0x245CBCA30](v47, 0x20C4093837F09);
      }

      v61 = 0;
    }

    v55 = &unk_2852274D0;
    if (v57 == 1 && v56)
    {
      (*(*v56 + 1))(v56);
    }

    if (v66 < 0)
    {
      operator delete(v65);
      if ((SHIBYTE(v74) & 0x80000000) == 0)
      {
        goto LABEL_94;
      }
    }

    else if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

    operator delete(v73[0]);
LABEL_94:
    sub_24026A708(&v75);
    v12 = v78;
    if (!v78)
    {
      return v11 & 1;
    }

    goto LABEL_95;
  }

  sub_2402546E0(__p);
  if (*(a3 + 23) >= 0)
  {
    LOBYTE(v9) = a3;
  }

  else
  {
    v9 = *a3;
  }

  sub_2402552EC(v76, __p, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/geometry/src/three_d/quad_mesh.cpp", 0x4CDu, "could not open file %s", v9);
  sub_240256698(v76);
  v10 = __p[1];
  if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = 0;
  v12 = v78;
  if (v78)
  {
LABEL_95:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  return v11 & 1;
}

void sub_240260724(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2401BDE28();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
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

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    if (v5 != v4)
    {
      v13 = &v11[-v6];
      do
      {
        v14 = *v5;
        *(v13 + 2) = *(v5 + 2);
        *v13 = v14;
        v13 += 24;
        v5 += 24;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = &v11[-v6];
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

BOOL sub_2402608EC(uint64_t a1, uint64_t *a2)
{
  v15 = 0;
  v2 = *(a1 + 8);
  if (*(v2 + 8) == 2)
  {
    return 0;
  }

  v5 = (*(*v2 + 144))(*(a1 + 8), &v15, 4);
  if (v5 < 1)
  {
    return 0;
  }

  *(v2 + 16) += v5;
  if (v5 != 4)
  {
    return 0;
  }

  v6 = v15;
  v7 = *a2;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  v9 = v15 >= v8;
  v10 = v15 - v8;
  if (v10 != 0 && v9)
  {
    sub_24024B744(a2, v10);
    v7 = *a2;
  }

  else if (!v9)
  {
    a2[1] = v7 + 12 * v15;
  }

  v12 = 12 * v6;
  v13 = *(a1 + 8);
  if (*(v13 + 8) == 2)
  {
    v14 = -1;
  }

  else
  {
    v14 = (*(*v13 + 144))(v13, v7, v12);
    if (v14 >= 1)
    {
      *(v13 + 16) += v14;
    }
  }

  return v14 == v12;
}

BOOL sub_240260A3C(uint64_t a1, uint64_t *a2)
{
  v15 = 0;
  v2 = *(a1 + 8);
  if (*(v2 + 8) == 2)
  {
    return 0;
  }

  v5 = (*(*v2 + 144))(*(a1 + 8), &v15, 4);
  if (v5 < 1)
  {
    return 0;
  }

  *(v2 + 16) += v5;
  if (v5 != 4)
  {
    return 0;
  }

  v6 = v15;
  v7 = *a2;
  v8 = (a2[1] - *a2) >> 4;
  v9 = v15 >= v8;
  v10 = v15 - v8;
  if (v10 != 0 && v9)
  {
    sub_24024B90C(a2, v10);
    v7 = *a2;
  }

  else if (!v9)
  {
    a2[1] = v7 + 16 * v15;
  }

  v12 = 16 * v6;
  v13 = *(a1 + 8);
  if (*(v13 + 8) == 2)
  {
    v14 = -1;
  }

  else
  {
    v14 = (*(*v13 + 144))(v13, v7, v12);
    if (v14 >= 1)
    {
      *(v13 + 16) += v14;
    }
  }

  return v14 == v12;
}

void *sub_240260B78(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_240260D28(uint64_t a1)
{
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_7:
    operator delete(*(a1 + 32));
    return a1;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + 55) < 0)
  {
    goto LABEL_7;
  }

  return a1;
}

BOOL sub_240260E40(uint64_t a1, uint64_t *a2)
{
  v15 = 0;
  v2 = *(a1 + 8);
  if (*(v2 + 8) == 2)
  {
    return 0;
  }

  v5 = (*(*v2 + 144))(*(a1 + 8), &v15, 4);
  if (v5 < 1)
  {
    return 0;
  }

  *(v2 + 16) += v5;
  if (v5 != 4)
  {
    return 0;
  }

  v6 = v15;
  v7 = *a2;
  v8 = (a2[1] - *a2) >> 2;
  v9 = v15 >= v8;
  v10 = v15 - v8;
  if (v10 != 0 && v9)
  {
    sub_24025A948(a2, v10);
    v7 = *a2;
  }

  else if (!v9)
  {
    a2[1] = v7 + 4 * v15;
  }

  v12 = 4 * v6;
  v13 = *(a1 + 8);
  if (*(v13 + 8) == 2)
  {
    v14 = -1;
  }

  else
  {
    v14 = (*(*v13 + 144))(v13, v7, v12);
    if (v14 >= 1)
    {
      *(v13 + 16) += v14;
    }
  }

  return v14 == v12;
}

uint64_t sub_240260F7C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = memcmp(v11, v4, v13);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return result;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_240261104(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2402611C8(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_2401C2FCC(a1, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2401C2FCC((a1 + 24), *a3, *(a3 + 1));
    return a1;
  }

  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  if (*(a3 + 23) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v6;
  return a1;
}

uint64_t sub_240261248(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = memcmp(v11, v4, v13);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return result;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_2402613B4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_5:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_240261408(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 48);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  v2 = *(a1 + 48);
  if (v2)
  {
LABEL_4:
    *(a1 + 56) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;

    operator delete(v3);
  }
}

void sub_240261494(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_240261508(void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      sub_2401BDE28();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = v10 - v13;
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v14, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  a1[1] = v5;
}

void sub_24026160C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = (v4 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2401BDE28();
    }

    v9 = v3 - v6;
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
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v11 = (v4 - *a1) >> 4;
    v12 = (16 * v7);
    *v12 = *a2;
    v5 = 16 * v7 + 16;
    v13 = &v12[-v11];
    if (v6 != v4)
    {
      v14 = v13;
      do
      {
        v15 = *v6++;
        *v14++ = v15;
      }

      while (v6 != v4);
      v6 = *a1;
    }

    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_240261724(uint64_t a1)
{
  *a1 = &unk_2852274D0;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = a1;
      (*(*v2 + 8))(v2);
      a1 = v3;
    }

    *(a1 + 8) = 0;
  }

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2402617C4(uint64_t result)
{
  *result = &unk_2852274D0;
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
    }

    *(result + 8) = 0;
  }

  return result;
}

uint64_t *sub_240261848(uint64_t *a1, void *a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = a2[1];
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = *a2;
  }

  v6 = *(v4 + 92);
  v7 = (4 * v6 + 31) & 0x7FFFFFFE0;
  a1[2] = 0;
  a1[3] = v7 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
  v8 = memptr;
  a1[2] = memptr;
  *(a1 + 8) = v6;
  if (v6)
  {
    bzero(v8, 4 * v6);
  }

  v9 = *(*a2 + 40);
  v10 = *(*a2 + 24);
  v11 = (4 * v9 + 31) & 0x7FFFFFFE0;
  a1[5] = 0;
  a1[6] = v11 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
  v12 = memptr;
  a1[5] = memptr;
  *(a1 + 14) = v9;
  if (v10 == v12)
  {
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
    v20 = memptr;
    if (v9)
    {
      v21 = (v9 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v21 < 7)
      {
        v22 = memptr;
      }

      else
      {
        v22 = memptr;
        if ((memptr - v10) >= 0x20)
        {
          v23 = (v21 + 1) & 0x7FFFFFFFFFFFFFF8;
          v24 = memptr + 16;
          v25 = (v10 + 16);
          v26 = v23;
          do
          {
            v27 = *v25;
            *(v24 - 1) = *(v25 - 1);
            *v24 = v27;
            v24 += 2;
            v25 += 2;
            v26 -= 8;
          }

          while (v26);
          if (v21 + 1 == v23)
          {
            goto LABEL_26;
          }

          v22 = &v20[4 * v23];
          v10 += 4 * v23;
        }
      }

      do
      {
        v30 = *v10;
        v10 += 4;
        *v22 = v30;
        v22 += 4;
      }

      while (v22 != &v20[4 * v9]);
    }

LABEL_26:
    v31 = a1[5];
    a1[5] = v20;
    a1[6] = v11 >> 2;
    *(a1 + 14) = v9;
    free(v31);
    goto LABEL_27;
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v13 = (v9 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v13 < 7)
  {
    v14 = v12;
LABEL_21:
    v28 = &v12[4 * v9];
    do
    {
      v29 = *v10;
      v10 += 4;
      *v14 = v29;
      v14 += 4;
    }

    while (v14 != v28);
    goto LABEL_27;
  }

  v14 = v12;
  if ((v12 - v10) < 0x20)
  {
    goto LABEL_21;
  }

  v15 = (v13 + 1) & 0x7FFFFFFFFFFFFFF8;
  v16 = v12 + 16;
  v17 = (v10 + 16);
  v18 = v15;
  do
  {
    v19 = *v17;
    *(v16 - 1) = *(v17 - 1);
    *v16 = v19;
    v16 += 2;
    v17 += 2;
    v18 -= 8;
  }

  while (v18);
  if (v13 + 1 != v15)
  {
    v14 = &v12[4 * v15];
    v10 += 4 * v15;
    goto LABEL_21;
  }

LABEL_27:
  v32 = *(*a2 + 40);
  v33 = *(*a2 + 44) - 1;
  v34 = *(*a2 + 24);
  v35 = &v34[4 * v32];
  v36 = (v33 * v32);
  v37 = (4 * v36 + 31) & 0x7FFFFFFE0;
  a1[8] = 0;
  a1[9] = v37 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v37, 0xE1AC2527uLL);
  v38 = memptr;
  a1[8] = memptr;
  *(a1 + 20) = v32;
  *(a1 + 21) = v33;
  if (v34 == v38)
  {
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v37, 0xE1AC2527uLL);
    v41 = memptr;
    if (v36)
    {
      v42 = (v36 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v42 >= 7)
      {
        v43 = memptr;
        if ((memptr - v34 - 4 * v32) >= 0x20)
        {
          v52 = v42 + 1;
          v53 = 4 * (v52 & 0x7FFFFFFFFFFFFFF8);
          v43 = memptr + v53;
          v54 = &v34[4 * v32 + 16];
          v55 = memptr + 16;
          v56 = v52 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v57 = *v54;
            *(v55 - 1) = *(v54 - 1);
            *v55 = v57;
            v54 += 2;
            v55 += 2;
            v56 -= 8;
          }

          while (v56);
          if (v52 == (v52 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_48;
          }

          v35 = (v35 + v53);
        }
      }

      else
      {
        v43 = memptr;
      }

      do
      {
        v58 = *v35++;
        *v43 = v58;
        v43 += 4;
      }

      while (v43 != &v41[4 * v36]);
    }

LABEL_48:
    v59 = a1[8];
    a1[8] = v41;
    a1[9] = v37 >> 2;
    *(a1 + 20) = v32;
    *(a1 + 21) = v33;
    free(v59);
    goto LABEL_49;
  }

  if (!v36)
  {
    goto LABEL_49;
  }

  v39 = (v36 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v39 < 7)
  {
    v40 = v38;
    goto LABEL_39;
  }

  v40 = v38;
  if ((v38 - v34 - 4 * v32) < 0x20)
  {
LABEL_39:
    v50 = &v38[4 * v36];
    do
    {
      v51 = *v35++;
      *v40 = v51;
      v40 += 4;
    }

    while (v40 != v50);
    goto LABEL_49;
  }

  v44 = v39 + 1;
  v45 = 4 * (v44 & 0x7FFFFFFFFFFFFFF8);
  v40 = &v38[v45];
  v46 = &v34[4 * v32 + 16];
  v47 = v38 + 16;
  v48 = v44 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v49 = *v46;
    *(v47 - 1) = *(v46 - 1);
    *v47 = v49;
    v46 += 2;
    v47 += 2;
    v48 -= 8;
  }

  while (v48);
  if (v44 != (v44 & 0x7FFFFFFFFFFFFFF8))
  {
    v35 = (v35 + v45);
    goto LABEL_39;
  }

LABEL_49:
  *(a1 + 88) = 0;
  v60 = a1 + 11;
  *(a1 + 136) = 0;
  v61 = *a1;
  if (*(*a1 + 240) == 1)
  {
    *(a1 + 13) = 0u;
    *(a1 + 15) = 0u;
    *v60 = 0u;
    *(a1 + 136) = 1;
    v62 = *(v61 + 184);
    if (v62)
    {
      memmove(v60, *(v61 + 168), 4 * v62);
    }
  }

  return a1;
}

void sub_240261C70(size_t __n, uint64_t a2)
{
  v2 = __n;
  v163 = *MEMORY[0x277D85DE8];
  v3 = __n + 16;
  if (__n + 16 == a2)
  {
    v11 = *(__n + 32);
  }

  else
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *(__n + 16);
      v7 = *(v2 + 24);
      v8 = v2;
      v9 = 4 * v5;
      if (v7 < v5)
      {
        free(v6);
        v10 = (v9 + 31) & 0x7FFFFFFE0;
        *(v8 + 16) = 0;
        *(v8 + 24) = v10 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
        v6 = memptr;
        *(v8 + 16) = memptr;
      }

      memcpy(v6, *a2, v9);
      v2 = __n;
    }

    else
    {
      free(*v3);
      *v3 = 0;
      *(v3 + 8) = 0;
    }

    v11 = *(a2 + 16);
    *(v2 + 32) = v11;
  }

  v12 = *v2;
  v13 = *(*v2 + 88);
  v14 = *(*v2 + 72);
  v156 = __PAIR64__(v11, v13);
  v157 = v14;
  v158 = v13;
  v15 = (4 * v13 + 31) & 0x7FFFFFFE0;
  v153 = v15 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v15, 0xE1AC2527uLL);
  v152 = memptr;
  v154 = v13;
  v160 = &v156;
  v161 = v3;
  v162 = 1065353216;
  sub_2402393DC(&v152, &memptr);
  v17 = v2 + 40;
  v16 = *(v2 + 40);
  v18 = **(v12 + 96);
  v19 = *(v12 + 48);
  LODWORD(v148) = *(v12 + 64);
  HIDWORD(v148) = v18;
  v149 = v19;
  v150 = v148;
  v151 = 0;
  v20 = *(v12 + 40);
  v138 = v12;
  v21 = *(v12 + 24);
  if (v20 != *(v2 + 56))
  {
    if (v21 != v16)
    {
      *(v2 + 56) = v20;
      if (v20)
      {
        if (*(v2 + 48) < v20)
        {
          free(v16);
          v22 = (4 * v20 + 31) & 0x7FFFFFFE0;
          *(v2 + 40) = 0;
          *(v2 + 48) = v22 >> 2;
          memptr = 0;
          malloc_type_posix_memalign(&memptr, 0x20uLL, v22, 0xE1AC2527uLL);
          v16 = memptr;
          *(v2 + 40) = memptr;
        }
      }

      else
      {
        free(v16);
        v16 = 0;
        *v17 = 0;
        *(v2 + 48) = 0;
      }

      LODWORD(v20) = *(v2 + 56);
      goto LABEL_24;
    }

    v23 = (4 * v20 + 31) & 0x7FFFFFFE0;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v23, 0xE1AC2527uLL);
    v24 = memptr;
    if (v21 != memptr)
    {
      if (v20)
      {
        v25 = (v20 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v25 < 7)
        {
          v26 = memptr;
        }

        else
        {
          v26 = memptr;
          if ((memptr - v21) >= 0x20)
          {
            v27 = (v25 + 1) & 0x7FFFFFFFFFFFFFF8;
            v28 = memptr + 16;
            v29 = (v21 + 4);
            v30 = v27;
            do
            {
              v31 = *v29;
              *(v28 - 1) = *(v29 - 1);
              *v28 = v31;
              v28 += 2;
              v29 += 2;
              v30 -= 8;
            }

            while (v30);
            if (v25 + 1 == v27)
            {
              goto LABEL_54;
            }

            v26 = &v24[4 * v27];
            v21 += v27;
          }
        }

        do
        {
          v56 = *v21++;
          *v26 = v56;
          v26 += 4;
        }

        while (v26 != &v24[4 * v20]);
      }

LABEL_54:
      v39 = v24;
      goto LABEL_58;
    }

    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v23, 0xE1AC2527uLL);
    v39 = memptr;
    if (v20)
    {
      v48 = (v20 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v48 < 7)
      {
        v49 = memptr;
      }

      else
      {
        v49 = memptr;
        if ((memptr - v21) >= 0x20)
        {
          v50 = (v48 + 1) & 0x7FFFFFFFFFFFFFF8;
          v51 = memptr + 16;
          v52 = (v21 + 4);
          v53 = v50;
          do
          {
            v54 = *v52;
            *(v51 - 1) = *(v52 - 1);
            *v51 = v54;
            v51 += 2;
            v52 += 2;
            v53 -= 8;
          }

          while (v53);
          if (v48 + 1 == v50)
          {
            goto LABEL_57;
          }

          v49 = &v39[4 * v50];
          v21 += v50;
        }
      }

      do
      {
        v57 = *v21++;
        *v49 = v57;
        v49 += 4;
      }

      while (v49 != &v39[4 * v20]);
    }

LABEL_57:
    free(v24);
    goto LABEL_58;
  }

LABEL_24:
  if (v21 == v16)
  {
    v23 = (4 * v20 + 31) & 0x7FFFFFFE0;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v23, 0xE1AC2527uLL);
    v39 = memptr;
    if (v20)
    {
      v40 = (v20 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v40 < 7)
      {
        v41 = memptr;
      }

      else
      {
        v41 = memptr;
        if ((memptr - v21) >= 0x20)
        {
          v42 = (v40 + 1) & 0x7FFFFFFFFFFFFFF8;
          v43 = memptr + 16;
          v44 = (v21 + 4);
          v45 = v42;
          do
          {
            v46 = *v44;
            *(v43 - 1) = *(v44 - 1);
            *v43 = v46;
            v43 += 2;
            v44 += 2;
            v45 -= 8;
          }

          while (v45);
          if (v40 + 1 == v42)
          {
            goto LABEL_58;
          }

          v41 = &v39[4 * v42];
          v21 += v42;
        }
      }

      do
      {
        v55 = *v21++;
        *v41 = v55;
        v41 += 4;
      }

      while (v41 != &v39[4 * v20]);
    }

LABEL_58:
    v2 = __n;
    v58 = *(__n + 40);
    *(__n + 40) = v39;
    *(__n + 48) = v23 >> 2;
    *(__n + 56) = v20;
    free(v58);
    goto LABEL_59;
  }

  if (!v20)
  {
    goto LABEL_59;
  }

  v32 = (v20 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v32 < 7)
  {
    v33 = v16;
    do
    {
LABEL_40:
      v47 = *v21++;
      *v33++ = v47;
    }

    while (v33 != &v16[v20]);
    goto LABEL_59;
  }

  v33 = v16;
  if ((v16 - v21) < 0x20)
  {
    goto LABEL_40;
  }

  v34 = (v32 + 1) & 0x7FFFFFFFFFFFFFF8;
  v35 = v16 + 4;
  v36 = (v21 + 4);
  v37 = v34;
  do
  {
    v38 = *v36;
    *(v35 - 1) = *(v36 - 1);
    *v35 = v38;
    v35 += 2;
    v36 += 2;
    v37 -= 8;
  }

  while (v37);
  if (v32 + 1 != v34)
  {
    v33 = &v16[v34];
    v21 += v34;
    goto LABEL_40;
  }

LABEL_59:
  v59 = v152;
  v144 = v18;
  v145 = v152;
  v135 = v154;
  v146 = v154;
  v147 = 0;
  v160 = &v148;
  v161 = &v144;
  v162 = 1065353216;
  if (v149 - 4 * v151 == *v17)
  {
    v60 = v148;
LABEL_67:
    v62 = (4 * v60 + 31) & 0x7FFFFFFE0;
    v157 = v62 >> 2;
    v141[0] = 0;
    malloc_type_posix_memalign(v141, 0x20uLL, v62, 0xE1AC2527uLL);
    v156 = v141[0];
    LODWORD(v158) = v148;
    sub_24023839C(&v156, &memptr);
    v63 = *(v2 + 56);
    v64 = v156;
    if (v63)
    {
      v65 = *(v2 + 40);
      v66 = (v63 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v66 >= 0xB)
      {
        if (v65 >= v156 + 4 * v63 || (v67 = v156, v68 = *(v2 + 40), v156 >= v65 + 4 * v63))
        {
          v69 = (v66 + 1) & 0x7FFFFFFFFFFFFFF8;
          v67 = (v156 + 4 * v69);
          v70 = (v65 + 16);
          v71 = (v156 + 16);
          v72 = v69;
          do
          {
            v73 = vaddq_f32(*v71, *v70);
            v70[-1] = vaddq_f32(v71[-1], v70[-1]);
            *v70 = v73;
            v70 += 2;
            v71 += 2;
            v72 -= 8;
          }

          while (v72);
          if (v66 + 1 == v69)
          {
            goto LABEL_78;
          }

          v68 = (v65 + 4 * v69);
        }
      }

      else
      {
        v67 = v156;
        v68 = *(v2 + 40);
      }

      v74 = (v65 + 4 * v63);
      do
      {
        v75 = *v67++;
        *v68 = v75 + *v68;
        ++v68;
      }

      while (v68 != v74);
    }

LABEL_78:
    free(v64);
    goto LABEL_79;
  }

  v60 = v148;
  if (v152 == *v17)
  {
    goto LABEL_67;
  }

  if (HIDWORD(v148) * v148)
  {
    v61 = v18 == 0;
  }

  else
  {
    v61 = 1;
  }

  if (!v61)
  {
    cva::VecLib<float>::gemm();
  }

LABEL_79:
  v76 = (*(v138 + 44) - 1);
  v77 = 3 * (*(v138 + 40) / 3u);
  *(v2 + 80) = v77;
  *(v2 + 84) = v76;
  v137 = v76;
  v78 = v77 * v76;
  v132 = v3;
  if (v78)
  {
    if (*(v2 + 72) < v78)
    {
      free(*(v2 + 64));
      v79 = (4 * v78 + 31) & 0x7FFFFFFE0;
      *(v2 + 64) = 0;
      *(v2 + 72) = v79 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v79, 0xE1AC2527uLL);
      *(v2 + 64) = memptr;
    }
  }

  else
  {
    free(*(v17 + 24));
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
  }

  if (v137 >= 1)
  {
    v80 = 0;
    v81 = 1;
    v134 = v59;
    while (1)
    {
      v82 = v80++;
      v84 = *(*(v138 + 96) + 4 * v80);
      v85 = *(v138 + 48);
      LODWORD(v156) = *(v138 + 64);
      HIDWORD(v156) = v84;
      v157 = v85 + 4 * (v156 * v18);
      LODWORD(v158) = v156;
      HIDWORD(v158) = v156 * v18;
      v139 = v84;
      v140 = v18;
      v144 = v84;
      v145 = &v59[4 * v18];
      v146 = v135;
      v147 = v18;
      v86 = *(v138 + 24);
      v87 = *(v138 + 40);
      v88 = (v87 * v80);
      v89 = (v86 + 4 * v88);
      v90 = *(v2 + 80);
      v91 = (v90 * v82);
      v92 = *(v2 + 64);
      v93 = (v92 + 4 * v91);
      if (v86 == v92)
      {
        break;
      }

      if (v90)
      {
        v94 = (v90 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v94 >= 7)
        {
          v95 = (v92 + 4 * v91);
          if ((v92 + 4 * v91 - (v86 + 4 * v88)) >= 0x20)
          {
            v100 = (v94 + 1) & 0x7FFFFFFFFFFFFFF8;
            v89 += v100;
            v101 = (v92 + 4 * (v90 * v82) + 16);
            v102 = (v86 + 4 * (v87 * v81) + 16);
            v103 = v100;
            do
            {
              v104 = *v102;
              *(v101 - 1) = *(v102 - 1);
              *v101 = v104;
              v101 += 2;
              v102 += 2;
              v103 -= 8;
            }

            while (v103);
            if (v94 + 1 == v100)
            {
              goto LABEL_86;
            }

            v95 = &v93[v100];
          }
        }

        else
        {
          v95 = (v92 + 4 * v91);
        }

        do
        {
          v105 = *v89++;
          *v95++ = v105;
        }

        while (v95 != &v93[v90]);
      }

LABEL_86:
      v2 = __n;
      v83 = *(__n + 64);
      LODWORD(v141[0]) = *(__n + 80);
      v141[1] = (v83 + 4 * (LODWORD(v141[0]) * v82));
      v142 = v141[0];
      v143 = LODWORD(v141[0]) * v82;
      v160 = &v156;
      v161 = &v144;
      v162 = 1065353216;
      sub_2402381E0(v141, &memptr);
      v18 = v139 + v140;
      ++v81;
      v59 = v134;
      if (v80 == v137)
      {
        goto LABEL_118;
      }
    }

    v133 = v82;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, (4 * v90 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
    v96 = memptr;
    if (!v90)
    {
LABEL_85:
      free(v96);
      v82 = v133;
      goto LABEL_86;
    }

    v97 = (v90 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v98 = v97 + 1;
    if (v97 > 6)
    {
      v99 = memptr;
      if (memptr - v86 + -4 * v88 >= 0x20)
      {
        v106 = 4 * (v98 & 0x7FFFFFFFFFFFFFF8);
        v89 = (v89 + v106);
        v107 = memptr + 16;
        v108 = (v86 + 4 * (v87 * v81) + 16);
        v109 = v98 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v110 = *v108;
          *(v107 - 1) = *(v108 - 1);
          *v107 = v110;
          v107 += 2;
          v108 += 2;
          v109 -= 8;
        }

        while (v109);
        if (v98 == (v98 & 0x7FFFFFFFFFFFFFF8))
        {
          v111 = &v93[v90];
          goto LABEL_110;
        }

        v99 = (v96 + v106);
      }
    }

    else
    {
      v99 = memptr;
    }

    do
    {
      v112 = *v89++;
      *v99++ = v112;
    }

    while (v99 != (v96 + 4 * v90));
    v111 = &v93[v90];
    if (v97 < 7)
    {
      v113 = v96;
      do
      {
LABEL_116:
        v119 = *v113++;
        *v93++ = v119;
      }

      while (v93 != v111);
      goto LABEL_85;
    }

LABEL_110:
    if ((v92 + 4 * v91 - v96) >= 0x20)
    {
      v114 = 4 * (v98 & 0x7FFFFFFFFFFFFFF8);
      v113 = (v96 + v114);
      v115 = (v92 + 4 * (v90 * v133) + 16);
      v116 = v96 + 1;
      v117 = v98 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v118 = *v116;
        *(v115 - 1) = *(v116 - 1);
        *v115 = v118;
        v115 += 2;
        v116 += 2;
        v117 -= 8;
      }

      while (v117);
      if (v98 == (v98 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_85;
      }

      v93 = (v93 + v114);
    }

    else
    {
      v113 = v96;
    }

    goto LABEL_116;
  }

LABEL_118:
  free(v59);
  v120 = *v2;
  if (*(*v2 + 240) == 1)
  {
    v121 = (v2 + 88);
    v122 = *(v120 + 184);
    if (v122)
    {
      memmove((v2 + 88), *(v120 + 168), 4 * v122);
    }

    v123 = *(v2 + 32);
    v124 = *(v120 + 232);
    v125 = *(v120 + 216);
    v152 = __PAIR64__(v123, v124);
    v153 = v125;
    v154 = v124;
    v155 = 0;
    v160 = &v152;
    v161 = v132;
    v162 = 1065353216;
    if (v125 == v121 || *v132 == v121)
    {
      v126 = (4 * v124 + 31) & 0x7FFFFFFE0;
      v157 = v126 >> 2;
      v148 = 0;
      malloc_type_posix_memalign(&v148, 0x20uLL, v126, 0xE1AC2527uLL);
      v156 = v148;
      LODWORD(v158) = v152;
      sub_2402393DC(&v156, &memptr);
      v127 = (v2 + 136);
      v128 = v156;
      if (v121 >= v156 + 48 || (v129 = v156, v156 >= v127))
      {
        v129 = (v156 + 32);
        v130 = vaddq_f32(*(v156 + 16), *(v2 + 104));
        *(v2 + 88) = vaddq_f32(*v156, *(v2 + 88));
        *(v2 + 104) = v130;
        v121 = (v2 + 120);
      }

      do
      {
        v131 = *v129++;
        *v121 = v131 + *v121;
        ++v121;
      }

      while (v121 != v127);
      free(v128);
    }

    else if (v123 * v124)
    {
      cva::VecLib<float>::gemm();
    }
  }
}

__int128 *sub_2402627B8(__int128 *result, __int128 *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = *(result + 2);
  v4 = *(result + 3);
  *(result + 2) = 0;
  *(result + 3) = 0;
  v5 = *(result + 8);
  *(result + 8) = 0;
  v6 = *(a2 + 3);
  *(result + 2) = *(a2 + 2);
  *(result + 3) = v6;
  *(result + 8) = *(a2 + 8);
  *(a2 + 2) = v3;
  *(a2 + 3) = v4;
  *(a2 + 8) = v5;
  v7 = *(result + 5);
  v8 = *(result + 6);
  *(result + 5) = 0;
  *(result + 6) = 0;
  v9 = *(result + 14);
  *(result + 14) = 0;
  v10 = *(a2 + 6);
  *(result + 5) = *(a2 + 5);
  *(result + 6) = v10;
  *(result + 14) = *(a2 + 14);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  *(a2 + 14) = v9;
  v11 = *(result + 8);
  v12 = *(result + 9);
  v13 = *(result + 10);
  *(result + 8) = 0;
  *(result + 9) = 0;
  *(result + 10) = 0;
  v14 = *(a2 + 9);
  *(result + 8) = *(a2 + 8);
  *(result + 9) = v14;
  *(result + 10) = *(a2 + 10);
  *(a2 + 8) = v11;
  *(a2 + 9) = v12;
  *(a2 + 10) = v13;
  if (*(result + 136) == *(a2 + 136))
  {
    if (*(result + 136))
    {
      v15 = *(result + 88);
      v16 = *(result + 104);
      v17 = *(result + 120);
      v18 = *(a2 + 120);
      v19 = *(a2 + 104);
      *(result + 88) = *(a2 + 88);
      *(result + 104) = v19;
      *(result + 120) = v18;
      *(a2 + 120) = v17;
      *(a2 + 104) = v16;
      *(a2 + 88) = v15;
    }
  }

  else if (*(result + 136))
  {
    v20 = *(result + 88);
    v21 = *(result + 104);
    *(a2 + 120) = *(result + 120);
    *(a2 + 104) = v21;
    *(a2 + 88) = v20;
    *(a2 + 136) = 1;
    if (*(result + 136) == 1)
    {
      *(result + 136) = 0;
    }
  }

  else
  {
    v22 = *(a2 + 88);
    v23 = *(a2 + 104);
    *(result + 120) = *(a2 + 120);
    *(result + 104) = v23;
    *(result + 88) = v22;
    *(result + 136) = 1;
    if (*(a2 + 136) == 1)
    {
      *(a2 + 136) = 0;
    }
  }

  return result;
}

uint64_t sub_24026293C(char *__s2, int *a2)
{
  if (!strcmp("failed", __s2))
  {
    v5 = 0;
  }

  else if (!strcmp("only_rigid_success", __s2))
  {
    v5 = 1;
  }

  else
  {
    if (strcmp("success", __s2))
    {
      return 0;
    }

    v5 = 2;
  }

  *a2 = v5;
  return 1;
}

uint64_t sub_2402629C0(cva::DictionaryHandler *a1)
{
  result = cva::DictionaryHandler::hasKey(a1, "rotation");
  if (result)
  {
    result = cva::DictionaryHandler::hasKey(a1, "translation");
    if (result)
    {
      cva::DictionaryHandler::item(&v3, a1, "rotation");
      cva::ItemHandler::getMatrix<float>();
    }
  }

  return result;
}

uint64_t sub_240262B08(uint64_t a1)
{
  v23[39] = *MEMORY[0x277D85DE8];
  cva::DictionaryHandler::readJsonFile();
  v2 = v23[0];
  v3 = v23[1];
  if (!v23[0])
  {
    goto LABEL_38;
  }

  if ((cva::DictionaryHandler::hasKey(v23[0], "tracking_state") & 1) != 0 || cva::DictionaryHandler::hasKey(v23[0], "landmarks"))
  {
    v5 = *(a1 + 64);
    v4 = *(a1 + 72);
    v6 = 0x7E3F1F8FC7E3F1F9 * ((v4 - v5) >> 4);
    if (v4 == v5)
    {
      sub_24024AE34((a1 + 64), 1 - v6);
    }

    else if (v6 >= 2)
    {
        ;
      }

      *(a1 + 72) = i;
    }

    if (cva::DictionaryHandler::hasKey(v2, "tracking_state"))
    {
      cva::DictionaryHandler::item(v23, v2, "tracking_state");
      cva::ItemHandler::getDictionary(&v19, v23);
      cva::ItemHandler::~ItemHandler(v23);
      if (cva::DictionaryHandler::hasKey(v19, "meta") && (cva::DictionaryHandler::hasKey(v19, "data") & 1) != 0)
      {
        cva::DictionaryHandler::item(v23, v19, "meta");
        cva::ItemHandler::getDictionary(&v17, v23);
        cva::ItemHandler::~ItemHandler(v23);
        if (cva::DictionaryHandler::hasKey(v17, "version"))
        {
          cva::DictionaryHandler::item(v22, v17, "version");
          cva::ItemHandler::getVector<int>();
        }

        sub_2402546E0(v22);
        sub_2402552EC(v23, v22, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/tracking/src/io/framesequencedata.cpp", 0x3CBu, "failure reading tracking dictionary: missing version", v16);
        sub_240256698(v23);
        v12 = v22[1];
        if (v22[1] && !atomic_fetch_add(v22[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 = v18;
        if (!v18)
        {
LABEL_29:
          v11 = v20;
          if (!v20)
          {
            goto LABEL_38;
          }

LABEL_30:
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }

          goto LABEL_38;
        }
      }

      else
      {
        sub_2402546E0(v22);
        sub_2402552EC(v23, v22, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/tracking/src/io/framesequencedata.cpp", 0x3C2u, "failure reading tracking dictionary: missing meta", v16);
        sub_240256698(v23);
        v10 = v22[1];
        if (!v22[1])
        {
          goto LABEL_29;
        }
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      goto LABEL_29;
    }

    sub_2402546E0(v22);
    v8 = "failure reading tracking dictionary: missing tracking_state";
    v9 = 954;
LABEL_23:
    sub_2402552EC(v23, v22, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/tracking/src/io/framesequencedata.cpp", v9, v8, v16);
    sub_240256698(v23);
    v11 = v22[1];
    if (!v22[1])
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if ((cva::DictionaryHandler::hasKey(v23[0], "meta") & 1) == 0)
  {
    sub_2402546E0(v22);
    v8 = "failure reading tracking dictionary: missing meta";
    v9 = 1093;
    goto LABEL_23;
  }

  cva::DictionaryHandler::item(v23, v23[0], "meta");
  cva::ItemHandler::getDictionary(v22, v23);
  cva::ItemHandler::~ItemHandler(v23);
  if (cva::DictionaryHandler::hasKey(v22[0], "version"))
  {
    cva::DictionaryHandler::item(__p, v22[0], "version");
    cva::ItemHandler::getVector<int>();
  }

  sub_2402546E0(__p);
  sub_2402552EC(v23, __p, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/tracking/src/io/framesequencedata.cpp", 0x44Cu, "failure reading tracking dictionary: missing version", v16);
  sub_240256698(v23);
  v13 = __p[1];
  if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v22[1];
  if (v22[1] && !atomic_fetch_add(v22[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_38:
  result = 0;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_240265434(cva::DictionaryHandler *a1)
{
  result = cva::DictionaryHandler::hasKey(a1, "blendshapes");
  if (result)
  {
    if (cva::DictionaryHandler::hasKey(a1, "blendshape_names"))
    {
      cva::DictionaryHandler::item(&__p, a1, "blendshapes");
      cva::ItemHandler::getVector<float>();
    }

    sub_2402546E0(&__src);
    sub_2402552EC(v8, &__src, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/tracking/src/io/framesequencedata.cpp", 0x20Du, "failure reading tracking dictionary: missing blendshape names", v4);
    sub_240256698(v8);
    v3 = v7;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_240265E08(cva::DictionaryHandler *a1)
{
  result = cva::DictionaryHandler::hasKey(a1, "face_box");
  if (result)
  {
    cva::DictionaryHandler::item(v8, a1, "face_box");
    cva::ItemHandler::getDictionary(&__p, v8);
    v4 = __p;
    v3 = v7;
    __p = 0;
    v7 = 0;
    cva::ItemHandler::~ItemHandler(v8);
    result = cva::DictionaryHandler::hasKey(v4, "x");
    if (result)
    {
      result = cva::DictionaryHandler::hasKey(v4, "y");
      if (result)
      {
        result = cva::DictionaryHandler::hasKey(v4, "w");
        if (result)
        {
          result = cva::DictionaryHandler::hasKey(v4, "h");
          if (result)
          {
            cva::DictionaryHandler::item(&__p, v4, "x");
            cva::ItemHandler::getValue<float>();
          }
        }
      }
    }

    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v5;
      }
    }
  }

  return result;
}

uint64_t sub_2402660E8(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
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

unint64_t sub_240266160(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24 = a2;
  if (a3)
  {
    v4 = a1;
    v5 = 0;
    v23 = a1;
    while (1)
    {
      v6 = *(v4 + 24);
      v7 = *(v6 + 47);
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

      v14 = *(v6 + 32);
      if (!(v14 >> 24))
      {
        v15 = 0x1000000 - v14;
        if (v15 >= a3 - v5)
        {
          v8 = a3 - v5;
        }

        else
        {
          v8 = v15;
        }

        if (a3 != v5)
        {
          v10 = (v24 + v5);
          v11 = *(v6 + 32);
          v16 = *(v6 + 40);
          v12 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          v13 = *(v6 + 24);
          v9 = v16 >> 63;
          goto LABEL_18;
        }

LABEL_4:
        v5 += v8;
        goto LABEL_5;
      }

      if (!sub_240266434(*(v4 + 24)))
      {
        return v5;
      }

LABEL_5:
      if (v5 >= a3)
      {
        return v5;
      }
    }

    if (0x1000000 - v7 >= a3 - v5)
    {
      v8 = a3 - v5;
    }

    else
    {
      v8 = 0x1000000 - v7;
    }

    if (a3 != v5)
    {
      LODWORD(v9) = 0;
      v10 = (v24 + v5);
      v11 = *(v6 + 47);
      v12 = 22;
      v13 = v6 + 24;
LABEL_18:
      if (v13 <= v10 && v13 + v11 + 1 > v10)
      {
        if (v8 > 0x16)
        {
          operator new();
        }

        v26 = v8;
        memcpy(__dst, v10, v8);
        *(__dst + v8) = 0;
        if ((v26 & 0x80u) == 0)
        {
          v19 = __dst;
        }

        else
        {
          v19 = __dst[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v20 = v26;
        }

        else
        {
          v20 = __dst[1];
        }

        std::string::append((v6 + 24), v19, v20);
        if (v26 < 0)
        {
          operator delete(__dst[0]);
        }

        v4 = v23;
      }

      else
      {
        if (v12 - v11 < v8)
        {
          if (0x7FFFFFFFFFFFFFF7 - v12 >= v8 + v11 - v12)
          {
            operator new();
          }

          sub_2401BDE28();
        }

        if (v9)
        {
          v18 = *(v6 + 24);
        }

        else
        {
          v18 = v6 + 24;
        }

        memmove((v18 + v11), v10, v8);
        *(v18 + v11 + v8) = 0;
        v21 = v8 + v11;
        if (*(v6 + 47) < 0)
        {
          *(v6 + 32) = v21;
        }

        else
        {
          *(v6 + 47) = v21 & 0x7F;
        }
      }
    }

    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_240266434(std::string *a1)
{
  if ((SHIBYTE(a1[1].__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&a1[1].__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (!a1[1].__r_.__value_.__l.__size_)
  {
    return 1;
  }

LABEL_3:
  p_data = &a1[1].__r_.__value_.__l.__data_;
  v3 = *(a1->__r_.__value_.__r.__words[0] + 16);
  v4 = a1[2].__r_.__value_.__r.__words[2];
  v5 = *(v4 - 1);
  if (v3 != v5)
  {
    data = a1[3].__r_.__value_.__l.__data_;
    size = a1[2].__r_.__value_.__l.__size_;
    if (data == size)
    {
      if (data)
      {
        a1[2].__r_.__value_.__r.__words[2] = size;
        operator delete(size);
        a1[2].__r_.__value_.__l.__size_ = 0;
        a1[2].__r_.__value_.__r.__words[2] = 0;
        a1[3].__r_.__value_.__r.__words[0] = 0;
      }

      operator new();
    }

    if (v4 == size)
    {
      *v4 = 0;
      v4[1] = 0;
      v8 = v4 + 2;
    }

    else
    {
      *size = 0;
      size[1] = 0;
      v8 = size + 2;
    }

    a1[2].__r_.__value_.__r.__words[2] = v8;
    a1[3].__r_.__value_.__l.__size_ = 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v43 = 0;
  v10 = HIDWORD(a1[3].__r_.__value_.__r.__words[2]);
  if (v10 == -1)
  {
    sub_2402546E0(&v44);
    sub_2402552EC(&v46, &v44, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/CompressedDevice.cpp", 0xCEu, "missing legacy compression!", v40);
    sub_240256698(&v46);
    v11 = v45;
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else if (!v10 && __p != p_data)
  {
    if (SHIBYTE(a1[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_2401F7FA0(__p, a1[1].__r_.__value_.__l.__data_, a1[1].__r_.__value_.__l.__size_);
    }

    else
    {
      *__p = *p_data;
      v43 = a1[1].__r_.__value_.__r.__words[2];
    }
  }

  v12 = SHIBYTE(v43);
  if ((SHIBYTE(v43) & 0x8000000000000000) != 0)
  {
    v12 = __p[1];
  }

  v44 = v12;
  if (HIDWORD(a1[3].__r_.__value_.__r.__words[2]) == -1)
  {
    *&v46 = v12;
    v41 = v12 + 0x277C6CE4B6031;
    v26 = a1->__r_.__value_.__r.__words[0];
    if (*(a1->__r_.__value_.__r.__words[0] + 8) == 1)
    {
      goto LABEL_76;
    }

    v27 = (*(*v26 + 152))(a1->__r_.__value_.__r.__words[0], &v41, 8);
    if (v27 < 1)
    {
      goto LABEL_76;
    }

    v26[2] += v27;
    if (v27 != 8)
    {
      goto LABEL_76;
    }

    v28 = a1->__r_.__value_.__r.__words[0];
    if (*(a1->__r_.__value_.__r.__words[0] + 8) == 1)
    {
      goto LABEL_76;
    }

    v29 = (*(*v28 + 152))(a1->__r_.__value_.__r.__words[0], &v46, 8);
    if (v29 < 1)
    {
      goto LABEL_76;
    }

    v28[2] += v29;
    if (v29 != 8)
    {
      goto LABEL_76;
    }

    v30 = a1->__r_.__value_.__r.__words[0];
    if (*(a1->__r_.__value_.__r.__words[0] + 8) == 1)
    {
      v31 = -1;
    }

    else
    {
      if (v43 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      v31 = (*(*v30 + 152))(a1->__r_.__value_.__r.__words[0], v32, v46);
      if (v31 >= 1)
      {
        v30[2] += v31;
      }
    }

    if (v31 != v46)
    {
      goto LABEL_76;
    }

    goto LABEL_62;
  }

  v13 = a1->__r_.__value_.__r.__words[0];
  *&v46 = &unk_2852274D0;
  *(&v46 + 1) = v13;
  v47 = 0;
  v41 = 0x277C6CE4B6030;
  if (*(v13 + 8) == 1)
  {
    goto LABEL_45;
  }

  v14 = (*(*v13 + 152))(v13, &v41, 8);
  if (v14 <= 0)
  {
    goto LABEL_45;
  }

  *(v13 + 16) += v14;
  if (v14 != 8)
  {
    goto LABEL_45;
  }

  LODWORD(v41) = 0;
  v15 = *(&v46 + 1);
  if (*(*(&v46 + 1) + 8) == 1)
  {
    goto LABEL_45;
  }

  v16 = (*(**(&v46 + 1) + 152))(*(&v46 + 1), &v41, 4);
  if (v16 <= 0)
  {
    goto LABEL_45;
  }

  *(v15 + 16) += v16;
  if (v16 != 4)
  {
    goto LABEL_45;
  }

  LODWORD(v41) = HIDWORD(a1[3].__r_.__value_.__r.__words[2]);
  v17 = *(&v46 + 1);
  if (*(*(&v46 + 1) + 8) == 1)
  {
    goto LABEL_45;
  }

  v18 = (*(**(&v46 + 1) + 152))(*(&v46 + 1), &v41, 4);
  if (v18 <= 0)
  {
    goto LABEL_45;
  }

  *(v17 + 16) += v18;
  if (v18 != 4)
  {
    goto LABEL_45;
  }

  v19 = SHIBYTE(a1[1].__r_.__value_.__r.__words[2]);
  if (v19 < 0)
  {
    v19 = a1[1].__r_.__value_.__l.__size_;
  }

  v41 = v19;
  v20 = *(&v46 + 1);
  if (*(*(&v46 + 1) + 8) == 1 || (v21 = (*(**(&v46 + 1) + 152))(*(&v46 + 1), &v41, 8), v21 <= 0) || (*(v20 + 16) += v21, v21 != 8) || (v22 = *(&v46 + 1), *(*(&v46 + 1) + 8) == 1) || (v23 = (*(**(&v46 + 1) + 152))(*(&v46 + 1), &v44, 8), v23 < 1) || (*(v22 + 16) += v23, v23 != 8))
  {
LABEL_45:
    *&v46 = &unk_2852274D0;
    if (v47 == 1 && *(&v46 + 1))
    {
      (*(**(&v46 + 1) + 8))(*(&v46 + 1));
    }

    goto LABEL_76;
  }

  v24 = *(&v46 + 1);
  if (*(*(&v46 + 1) + 8) == 1)
  {
    v25 = -1;
  }

  else
  {
    if (v43 >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    v37 = (*(**(&v46 + 1) + 152))(*(&v46 + 1), v36, v44);
    v25 = v37;
    if (v37 >= 1)
    {
      *(v24 + 16) += v37;
    }
  }

  v38 = v44;
  sub_24026A944(&v46);
  if (v25 == v38)
  {
LABEL_62:
    if (v3 == v5)
    {
      v33 = SHIBYTE(a1[1].__r_.__value_.__r.__words[2]);
      if ((v33 & 0x8000000000000000) != 0)
      {
        v33 = a1[1].__r_.__value_.__l.__size_;
      }

      v34 = v33 + *(a1[2].__r_.__value_.__r.__words[2] - 16);
      v35 = *(a1->__r_.__value_.__r.__words[0] + 16);
      *&v46 = v34;
      *(&v46 + 1) = v35;
      sub_240266AD0(&a1[2].__r_.__value_.__l.__size_, &v46);
      ++a1[3].__r_.__value_.__l.__size_;
    }

    a1[2].__r_.__value_.__r.__words[0] = 0;
    std::string::reserve(a1 + 1, 0x1000000uLL);
    if (SHIBYTE(a1[1].__r_.__value_.__r.__words[2]) < 0)
    {
      p_data = a1[1].__r_.__value_.__l.__data_;
      a1[1].__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      *(&a1[1].__r_.__value_.__s + 23) = 0;
    }

    *p_data = 0;
    result = 1;
    goto LABEL_77;
  }

LABEL_76:
  result = 0;
LABEL_77:
  if (SHIBYTE(v43) < 0)
  {
    v39 = result;
    operator delete(__p[0]);
    return v39;
  }

  return result;
}

void sub_240266AD0(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_2401BDE28();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

unint64_t sub_240266BDC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      while (1)
      {
        v7 = *(a1 + 24);
        v8 = *(v7 + 48);
        v9 = (v7 + 24);
        v10 = *(v7 + 47);
        if ((v10 & 0x8000000000000000) != 0)
        {
          break;
        }

        v11 = v10 > v8;
        v12 = v10 - v8;
        if (!v11)
        {
          goto LABEL_3;
        }

        if (v12 >= a3 - v6)
        {
          v13 = a3 - v6;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          goto LABEL_12;
        }

LABEL_13:
        v6 += v13;
        *(v7 + 48) = v8 + v13;
        if (v6 >= a3)
        {
          return v6;
        }
      }

      v14 = *(v7 + 32);
      v11 = v14 > v8;
      v15 = v14 - v8;
      if (v11)
      {
        if (v15 >= a3 - v6)
        {
          v13 = a3 - v6;
        }

        else
        {
          v13 = v15;
        }

        v9 = *v9;
        if (!v13)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove((a2 + v6), v9 + v8, v13);
        v7 = *(a1 + 24);
        v8 = *(v7 + 48);
        goto LABEL_13;
      }

LABEL_3:
      if (!sub_240266CB8(v7) || v6 >= a3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_240266CB8(void *a1)
{
  if ((*(**a1 + 32))(*a1))
  {
    result = 0;
    *(a1 + 88) = 1;
    return result;
  }

  v3 = *(*a1 + 16);
  v4 = sub_240266F50(a1, a1 + 23);
  if (v4 == -1)
  {
    (*(**a1 + 128))(*a1, v3);
    return 0;
  }

  v5 = v4;
  memset(&__p, 0, sizeof(__p));
  if (v4)
  {
    std::string::append(&__p, v4, 0);
  }

  v6 = *a1;
  if (*(*a1 + 8) == 2)
  {
    v7 = -1;
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v7 = (*(*v6 + 144))(*a1, p_p, v5);
    if (v7 >= 1)
    {
      v6[2] += v7;
    }
  }

  if (v7 != v5)
  {
LABEL_20:
    result = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

  v9 = *(a1 + 23);
  if (v9)
  {
    if (v9 == -1)
    {
      sub_2402546E0(&v22);
      sub_2402552EC(v24, &v22, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/CompressedDevice.cpp", 0xE8u, "missing legacy compression!", __p.__r_.__value_.__s.__data_[0]);
      sub_240256698(v24);
      v10 = v23;
      if (v23)
      {
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }
    }

    goto LABEL_20;
  }

  v12 = a1[5];
  v13 = *(a1 + 3);
  *(a1 + 1) = __p;
  *&__p.__r_.__value_.__l.__data_ = v13;
  __p.__r_.__value_.__r.__words[2] = v12;
  v14 = a1[7];
  v15 = (a1[8] - v14) >> 4;
  v16 = v15 - 1;
  v17 = (v14 + 24);
  v18 = 1 - v15;
  v19 = -1;
  while (v18 + v19 != -1)
  {
    v20 = *v17;
    v17 += 2;
    ++v19;
    if (v20 == *(*a1 + 16))
    {
      goto LABEL_28;
    }
  }

  v19 = v16;
LABEL_28:
  a1[10] = v19;
  a1[6] = 0;
  result = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_21:
    v11 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v11;
  }

  return result;
}

uint64_t sub_240266F50(void *a1, _DWORD *a2)
{
  if ((*(**a1 + 32))(*a1))
  {
    return -1;
  }

  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = *(a1[8] - 8);
  if (v5 > v6)
  {
    return -1;
  }

  v24 = 0;
  v25 = 0;
  if (*(a1 + 23) == -1)
  {
    sub_2402546E0(&v19);
    sub_2402552EC(v23, &v19, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/CompressedDevice.cpp", 0x10Fu, "missing legacy compression!", v18);
    sub_240256698(v23);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    return -1;
  }

  v21 = 0;
  v22 = 0;
  *&v19 = &unk_2852274D0;
  *(&v19 + 1) = v4;
  v20 = 0;
  if (*(v4 + 8) == 2 || (v7 = (*(*v4 + 144))(v4, &v22, 8), v7 < 1) || ((*(v4 + 16) += v7, v7 == 8) ? (v8 = v22 == 0x277C6CE4B6030) : (v8 = 0), !v8 || *(*(&v19 + 1) + 8) == 2 || (v9 = (*(**(&v19 + 1) + 144))(*(&v19 + 1), &v21 + 4, 4), v9 < 1) || ((*(*(&v19 + 1) + 16) += v9, v9 == 4) ? (v10 = HIDWORD(v21) == 0) : (v10 = 0), !v10 || *(*(&v19 + 1) + 8) == 2 || (v11 = (*(**(&v19 + 1) + 144))(*(&v19 + 1), &v21, 4), v11 < 1) || (*(*(&v19 + 1) + 16) += v11, v11 != 4) || v21 || (v12 = *(a1 + 23)) != 0 && v12 != -2 || *(*(&v19 + 1) + 8) == 2 || (v13 = (*(**(&v19 + 1) + 144))(*(&v19 + 1), &v24, 8), v13 < 1) || (*(*(&v19 + 1) + 16) += v13, v13 != 8) || *(*(&v19 + 1) + 8) == 2 || (v14 = (*(**(&v19 + 1) + 144))(*(&v19 + 1), &v25, 8), v14 < 1) || (*(*(&v19 + 1) + 16) += v14, v14 != 8))))
  {
    *&v19 = &unk_2852274D0;
    if (v20 == 1)
    {
      if (*(&v19 + 1))
      {
        (*(**(&v19 + 1) + 8))(*(&v19 + 1));
      }
    }

    return -1;
  }

  *a2 = v21;
  sub_24026A944(&v19);
  if (v5 == v6)
  {
    v15 = v25 + *(*a1 + 16);
    *&v19 = v24 + *(a1[8] - 16);
    *(&v19 + 1) = v15;
    sub_240266AD0((a1 + 7), &v19);
  }

  return v25;
}

uint64_t sub_24026732C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 3) == 1)
  {
    return sub_240267348(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240267348(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v4 = a1[3];
  if (*(v4 + 88) == 1)
  {
    if ((*(*a1 + 104))(a1) < a2)
    {
      return 0;
    }

    v4 = a1[3];
  }

  v5 = *(v4 + 80);
  v6 = *(*(v4 + 56) + 16 * v5);
  v7 = *(v4 + 47);
  if (v7 < 0)
  {
    v7 = *(v4 + 32);
  }

  v8 = v7 + v6;
  v9 = __OFSUB__(a2, v6);
  v10 = a2 - v6;
  if (v10 < 0 != v9 || v8 < a2)
  {
    v12 = *(*v4 + 16);
    while (1)
    {
      v13 = a1[3];
      v14 = v13[8];
      if (*(v14 - 16) >= a2)
      {
        break;
      }

      if (!(*(**v13 + 128))(*v13, *(v14 - 8)) || ((*(**a1[3] + 32))(*a1[3]) & 1) != 0 || sub_240266F50(a1[3], (a1[3] + 92)) == -1)
      {
        goto LABEL_17;
      }
    }

    v17 = v13[7];
    v18 = v14 - v17;
    v19 = (v18 >> 4);
    v20 = (v17 + 16 * (v18 >> 4) - 16);
    do
    {
      --v19;
      v21 = *v20;
      v20 -= 2;
    }

    while (v21 > a2);
    v22 = (*(**v13 + 128))(*v13, *(v17 + 16 * v19 + 8));
    v15 = a1[3];
    v23 = *(v15[7] + 16 * v19);
    v24 = a2 - v23;
    if (v22)
    {
      if (a2 == v23)
      {
        if (*(v15 + 47) < 0)
        {
          *v15[3] = 0;
          v15[4] = 0;
        }

        else
        {
          *(v15 + 24) = 0;
          *(v15 + 47) = 0;
        }

        goto LABEL_32;
      }

      if (sub_240266CB8(v15))
      {
LABEL_32:
        v26 = a1[3];
        *(v26 + 48) = v24;
        *(v26 + 80) = v19;
        goto LABEL_21;
      }

LABEL_17:
      v15 = a1[3];
    }

    v15[10] = v5;
    (*(**v15 + 128))(*v15, v12);
    return 0;
  }

  *(v4 + 48) = v10;
LABEL_21:
  a1[2] = a2;
  return 1;
}

uint64_t sub_2402675D8(uint64_t a1)
{
  if ((*(a1 + 8) & 3) != 1)
  {
    return 0;
  }

  v12 = v1;
  v13 = v2;
  v4 = *(a1 + 24);
  if ((*(v4 + 88) & 1) == 0)
  {
    v5 = *(*v4 + 16);
    while (1)
    {
      v6 = (*(***(a1 + 24) + 128))(**(a1 + 24), *(*(*(a1 + 24) + 64) - 8));
      if ((*(***(a1 + 24) + 32))(**(a1 + 24)))
      {
        break;
      }

      if (!v6 || sub_240266F50(*(a1 + 24), (*(a1 + 24) + 92)) == -1)
      {
        goto LABEL_10;
      }
    }

    if (v6)
    {
      goto LABEL_13;
    }

LABEL_10:
    sub_2402546E0(&v9);
    sub_2402552EC(v11, &v9, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/CompressedDevice.cpp", 0x227u, "couldn't load data for size()", v9);
    sub_240256698(v11);
    v8 = v10;
    if (v10)
    {
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

LABEL_13:
    (*(***(a1 + 24) + 128))(**(a1 + 24), v5);
    v4 = *(a1 + 24);
  }

  return *(*(v4 + 64) - 16);
}

uint64_t sub_240267790(void *a1)
{
  v2 = a1[3];
  v3 = *(v2 + 48);
  v4 = *(v2 + 47);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v3 == v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v3 != *(v2 + 32))
  {
    return 0;
  }

LABEL_3:
  result = (*(**v2 + 32))();
  if (result)
  {
    return (*(*a1 + 104))(a1) == a1[2];
  }

  return result;
}

uint64_t sub_24026783C(uint64_t a1)
{
  sub_24026789C(*(a1 + 24));
  v2 = *(***(a1 + 24) + 24);

  return v2();
}

void sub_24026789C(std::string *a1)
{
  if ((*(*a1->__r_.__value_.__l.__data_ + 16))(a1->__r_.__value_.__r.__words[0]))
  {
    if ((*(a1->__r_.__value_.__r.__words[0] + 8) & 2) != 0 && (sub_240266434(a1) & 1) == 0)
    {
      sub_2402546E0(&v3);
      sub_2402552EC(v5, &v3, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/CompressedDevice.cpp", 0x1B7u, "Could not write final block", v3);
      sub_240256698(v5);
      v2 = v4;
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v2->__on_zero_shared)(v2);
          std::__shared_weak_count::__release_weak(v2);
        }
      }
    }
  }
}

void sub_240267998(uint64_t a1)
{
  sub_2402679D0(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2402679D0(uint64_t a1)
{
  *a1 = &unk_2852271B0;
  sub_24026789C(*(a1 + 24));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_24026789C(*(a1 + 24));
    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x245CBCA30](v2, 0x1072C40C1316463);
  }

  return a1;
}

void sub_240267AB4(uint64_t a1)
{
  if ((~*(a1 + 8) & 3) != 0)
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 23);
    if (v3 == -2)
    {
      v11 = 0;
      v5 = a1;
      v6 = (*(**v2 + 88))(*v2, &v11, 8);
      a1 = v5;
      v2 = *(v5 + 24);
      if (v6 != 8 || v11 == 0x277C6CE4B6030)
      {
        if (*(v2 + 23) != -1)
        {
LABEL_7:
          if ((*(v2 + 47) & 0x80000000) == 0)
          {
LABEL_8:
            v4 = v2 + 3;
            *(v2 + 47) = 0;
LABEL_20:
            *v4 = 0;
            *(*(a1 + 24) + 48) = 0;
            sub_240267348(a1, 0);
            return;
          }

LABEL_19:
          v4 = v2[3];
          v2[4] = 0;
          goto LABEL_20;
        }
      }

      else
      {
        *(v2 + 23) = -1;
      }
    }

    else if (v3 != -1)
    {
      goto LABEL_7;
    }

    v8 = a1;
    sub_2402546E0(&v11);
    sub_2402552EC(v10, &v11, 0, 0, "[RELEASE WARNING]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/CompressedDevice.cpp", 0x1F9u, "Legacy CompressedDevice format is deprecated, consider converting your data", v10[0]);
    sub_240256698(v10);
    v9 = v12;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    a1 = v8;
    v2 = *(v8 + 24);
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  sub_2402546E0(&v11);
  sub_2402552EC(v13, &v11, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/CompressedDevice.cpp", 0x1E8u, "Could not open IO device", v10[0]);
  sub_240256698(v13);
  v1 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void sub_240267CE8(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  *(a1 + 136) = 1;
  std::mutex::unlock((a1 + 24));
  std::mutex::lock((a1 + 24));
  if (*(a1 + 160))
  {
    v2 = *(a1 + 152);
    v3 = *(*(a1 + 144) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 160) = 0;
    if (v2 != (a1 + 144))
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v2;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 144));
    }
  }

  std::mutex::unlock((a1 + 24));
}

uint64_t sub_240267DEC(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  if (*(a1 + 128) != 1)
  {
    operator new();
  }

  std::mutex::unlock((a1 + 16));
  return 0;
}

void sub_240267F34(uint64_t a1)
{
  sub_240267F6C(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_240267F6C(uint64_t a1)
{
  *a1 = &unk_285228298;
  *(a1 + 8) = &unk_285227088;
  if (*(a1 + 160))
  {
    v2 = (a1 + 144);
    v3 = *(a1 + 152);
    v4 = *(*(a1 + 144) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 160) = 0;
    if (v3 != (a1 + 144))
    {
      do
      {
        v6 = v3[1];
        v7 = v3[3];
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v3;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          v3 = v8;
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  return a1;
}

uint64_t sub_240268084(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v2 = *(a1 + 152);
  std::mutex::unlock((a1 + 16));
  return v2;
}

void sub_2402680BC(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  if (*(a1 + 152))
  {
    v2 = *(a1 + 144);
    v3 = *(*(a1 + 136) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 152) = 0;
    if (v2 != (a1 + 136))
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v2;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 136));
    }
  }

  std::mutex::unlock((a1 + 16));
}

uint64_t sub_2402681A0(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v24.__m_ = (a1 + 16);
  v24.__owns_ = 1;
  std::mutex::lock((a1 + 16));
  v8 = 0;
  v9 = *(a1 + 152);
  if (a3 >= 1 && !v9)
  {
    v8 = a4 != 0;
    if (a4)
    {
      if ((*(a4 + 8) & 1) == 0)
      {
        goto LABEL_37;
      }

      std::mutex::unlock(*a4);
      *(a4 + 8) = 0;
    }

    std::chrono::steady_clock::now();
    v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (v10.__d_.__rep_)
    {
      if (v10.__d_.__rep_ < 1)
      {
        if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v11 = 0x8000000000000000;
          goto LABEL_14;
        }
      }

      else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
        if (v11 <= ((1000000 * a3) ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          v12.__d_.__rep_ = v11 + 1000000 * a3;
        }

        else
        {
          v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
        }

        std::condition_variable::__do_timed_wait((a1 + 80), &v24, v12);
        std::chrono::steady_clock::now();
        v9 = *(a1 + 152);
        goto LABEL_18;
      }

      v11 = 1000 * v10.__d_.__rep_;
      goto LABEL_14;
    }

    v11 = 0;
    goto LABEL_14;
  }

LABEL_18:
  if (v9)
  {
    v13 = *(a1 + 144);
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = a2[1];
    *a2 = v15;
    a2[1] = v14;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = *(a1 + 144);
    v18 = *(a1 + 152);
    v20 = *v17;
    v19 = v17[1];
    *(v20 + 8) = v19;
    *v19 = v20;
    *(a1 + 152) = v18 - 1;
    v21 = v17[3];
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v17;
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      v17 = v22;
    }

    operator delete(v17);
  }

  if (v24.__owns_)
  {
    std::mutex::unlock(v24.__m_);
  }

  if (!v8)
  {
    return v9 != 0;
  }

  if (*a4)
  {
    if (*(a4 + 8) != 1)
    {
      std::mutex::lock(*a4);
      *(a4 + 8) = 1;
      return v9 != 0;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
LABEL_37:
  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  return sub_24026840C();
}

void sub_24026840C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11.__m_ = (a1 + 16);
  v11.__owns_ = 1;
  std::mutex::lock((a1 + 16));
  for (i = *(a1 + 152); !i; i = *(a1 + 152))
  {
    std::condition_variable::wait((a1 + 80), &v11);
  }

  v5 = *(a1 + 144);
  v6 = v5[3];
  *a2 = v5[2];
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 144);
    i = *(a1 + 152);
    v7 = v5[3];
  }

  else
  {
    v7 = 0;
  }

  v9 = *v5;
  v8 = v5[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  *(a1 + 152) = i - 1;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v5;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v5 = v10;
  }

  operator delete(v5);
  if (v11.__owns_)
  {
    std::mutex::unlock(v11.__m_);
  }
}

void sub_24026850C(uint64_t a1)
{
  *a1 = &unk_285227088;
  if (*(a1 + 152))
  {
    v2 = (a1 + 136);
    v3 = *(a1 + 144);
    v4 = *(*(a1 + 136) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 152) = 0;
    if (v3 != (a1 + 136))
    {
      do
      {
        v6 = v3[1];
        v7 = v3[3];
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v3;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          v3 = v8;
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  std::condition_variable::~condition_variable((a1 + 80));
  std::mutex::~mutex((a1 + 16));

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_240268624(uint64_t a1)
{
  *a1 = &unk_285227088;
  if (*(a1 + 152))
  {
    v2 = (a1 + 136);
    v3 = *(a1 + 144);
    v4 = *(*(a1 + 136) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 152) = 0;
    if (v3 != (a1 + 136))
    {
      do
      {
        v6 = v3[1];
        v7 = v3[3];
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v3;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          v3 = v8;
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  std::condition_variable::~condition_variable((a1 + 80));
  std::mutex::~mutex((a1 + 16));
  return a1;
}

void sub_240268720(uint64_t a1, void *a2)
{
  v2 = a2;
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 23);
  v5 = *a2;
  v6 = a2[1];
  if ((v4 & 0x80u) == 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v7 >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  HIBYTE(v20) = v8;
  if (!v7)
  {
    LOBYTE(v9) = v8;
    *(&__dst + v8) = 0;
    if (v8 != 2)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((v4 & 0x80u) != 0)
  {
    a2 = v5;
  }

  memcpy(&__dst, a2, v8);
  v9 = HIBYTE(v20);
  *(&__dst + v8) = 0;
  if ((v9 & 0x80) != 0)
  {
    if (v19 != 2)
    {
      goto LABEL_18;
    }

    p_dst = __dst;
LABEL_17:
    if (*p_dst != 12067)
    {
      goto LABEL_18;
    }

    if ((v4 & 0x80) != 0)
    {
      if (v6 >= 2)
      {
LABEL_27:
        v12 = v6 - 2;
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_2401BDE28();
        }

        if (v12 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v22) = v12;
        if (v12)
        {
          memmove(v21, v5 + 2, v12);
        }

        *(v21 + v12) = 0;
        if (v20 < 0)
        {
          goto LABEL_34;
        }

LABEL_20:
        v11 = SHIBYTE(v22);
        if ((SHIBYTE(v22) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v6 = v4;
      v5 = v2;
      if (v4 > 1)
      {
        goto LABEL_27;
      }
    }

    sub_2401BDE28();
  }

  if (v9 == 2)
  {
LABEL_14:
    p_dst = &__dst;
    goto LABEL_17;
  }

LABEL_18:
  if ((v4 & 0x80) != 0)
  {
    sub_2401C2FCC(v21, v5, v6);
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  *v21 = *v2;
  v22 = v2[2];
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_34:
  operator delete(__dst);
  v11 = SHIBYTE(v22);
  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
LABEL_21:
    if (!v11)
    {
      *a1 = *v21;
      *(a1 + 16) = v22;
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v21[1])
  {
    sub_2401C2FCC(a1, v21[0], 0);
    goto LABEL_54;
  }

LABEL_36:
  __dst = 0;
  v19 = 0;
  v20 = 0;
  cva::utils::string::split();
  if (v19 != __dst)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v19 - __dst) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  cva::utils::string::join();
  v13 = std::string::insert(&v23, 0, "/", 1uLL);
  *a1 = *v13;
  v13->__r_.__value_.__r.__words[0] = 0;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v14 = __dst;
  if (!__dst)
  {
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_54;
  }

  v15 = v19;
  v16 = __dst;
  if (v19 != __dst)
  {
    do
    {
      v17 = *(v15 - 1);
      v15 -= 3;
      if (v17 < 0)
      {
        operator delete(*v15);
      }
    }

    while (v15 != v14);
    v16 = __dst;
  }

  v19 = v14;
  operator delete(v16);
  if (SHIBYTE(v22) < 0)
  {
LABEL_54:
    operator delete(v21[0]);
  }
}

void sub_240268ED8(void *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_5;
    }

LABEL_10:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  if (!*(a2 + 23))
  {
    goto LABEL_10;
  }

LABEL_5:
  cva::Path::Path();
  if (cva::Path::exists(v3))
  {
    if (cva::Path::isRegularFile(v3))
    {
      operator new();
    }
  }

  *a1 = 0;
  a1[1] = 0;
  cva::Path::~Path(v3);
}

void *sub_2402690E4(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_240269268(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_240269298(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2402692D8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_240269308(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t *sub_240269344(uint64_t a1, const void **a2)
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
  if (!v17)
  {
    if (v6 >= v15)
    {
      return v7;
    }

    return v2;
  }

  if (v17 < 0)
  {
    return v2;
  }

  return v7;
}

void sub_240269474(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852267B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_240269510(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_240269584(void *a1, uint64_t a2, const void **a3)
{
  *a1 = 0;
  a1[1] = 0;
  sub_240268720(__p, a3);
  if ((a2 + 40) != sub_240269344(a2 + 32, a3) || sub_240269344(a2 + 32, __p) != (a2 + 40))
  {
    sub_240268ED8(&__dst, a2);
    operator new();
  }

  v6 = *(a3 + 23);
  v7 = *a3;
  v8 = a3[1];
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if (v9 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  *(&__dst.__r_.__value_.__s + 23) = v10;
  if (!v9)
  {
    LOBYTE(v12) = v10;
    __dst.__r_.__value_.__s.__data_[v10] = 0;
    if (v10 != 2)
    {
      goto LABEL_22;
    }

LABEL_18:
    p_dst = &__dst;
    goto LABEL_21;
  }

  if ((v6 & 0x80u) == 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = v7;
  }

  memcpy(&__dst, v11, v10);
  v12 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  __dst.__r_.__value_.__s.__data_[v10] = 0;
  if ((v12 & 0x80) == 0)
  {
    if (v12 != 2)
    {
LABEL_22:
      if ((v6 & 0x80) != 0)
      {
        sub_2401C2FCC(v27, v7, v8);
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v27 = *a3;
        v28 = a3[2];
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (__dst.__r_.__value_.__l.__size_ != 2)
  {
    goto LABEL_22;
  }

  p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_21:
  if (LOWORD(p_dst->__r_.__value_.__l.__data_) != 12067)
  {
    goto LABEL_22;
  }

  if ((v6 & 0x80) == 0)
  {
    v8 = v6;
    v7 = a3;
    if (v6 > 1)
    {
      goto LABEL_53;
    }

LABEL_77:
    sub_2401BDE28();
  }

  if (v8 < 2)
  {
    goto LABEL_77;
  }

LABEL_53:
  v21 = v8 - 2;
  if (v8 - 2 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_78;
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v28) = v8 - 2;
  if (v8 != 2)
  {
    memmove(v27, v7 + 2, v21);
  }

  *(v27 + v21) = 0;
  if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_26:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_27:
  v14 = *(a2 + 23);
  if ((v14 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_29;
    }

LABEL_36:
    if (SHIBYTE(v28) < 0)
    {
      sub_2401C2FCC(v25, v27[0], v27[1]);
    }

    else
    {
      *v25 = *v27;
      v26 = v28;
    }

    goto LABEL_58;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_36;
  }

LABEL_29:
  if (v14 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  if (v15 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_78:
    sub_2401BDE28();
  }

  if (v15 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&__dst, 0, sizeof(__dst));
  *(&__dst.__r_.__value_.__s + 23) = v15 + 1;
  if (v15)
  {
    if ((v14 & 0x80u) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    memmove(&__dst, v16, v15);
  }

  *(&__dst.__r_.__value_.__l.__data_ + v15) = 47;
  if (SHIBYTE(v28) >= 0)
  {
    v17 = v27;
  }

  else
  {
    v17 = v27[0];
  }

  if (SHIBYTE(v28) >= 0)
  {
    v18 = HIBYTE(v28);
  }

  else
  {
    v18 = v27[1];
  }

  v19 = std::string::append(&__dst, v17, v18);
  v20 = v19->__r_.__value_.__r.__words[2];
  *v25 = *&v19->__r_.__value_.__l.__data_;
  v26 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_58:
  cva::Path::Path();
  v22 = cva::Path::exists(&__dst);
  cva::Path::~Path(&__dst);
  if ((v22 & 1) != 0 || (cva::Path::Path(), v23 = cva::Path::exists(&__dst), cva::Path::~Path(&__dst), v23))
  {
    operator new();
  }

  v24 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_64:
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_70;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  operator delete(v25[0]);
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
LABEL_65:
    if ((v30 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_66;
  }

LABEL_70:
  operator delete(v27[0]);
  if (v30 < 0)
  {
LABEL_66:
    operator delete(__p[0]);
  }
}

void sub_240269CF8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = *a1;
      CMTimeGetSeconds(&v3);
    }

    else
    {
      v2 = sub_2401F0C48();
      sub_240269D58(v2);
    }
  }
}

CMTime *sub_240269D58(CMTime *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_18;
    }

    if ((*(a2 + 12) & 1) == 0)
    {
LABEL_7:
      LODWORD(result[1].value) = 0;
      result->value = 0x7FF8000000000000;
      return result;
    }
  }

  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_18;
    }

    if ((*(a3 + 12) & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v4 != 1)
    {
      memset(&v13, 0, sizeof(v13));
      v7 = a3;
      CMTimeMakeWithSeconds(&v13, *a2, 1000000);
      a3 = v7;
      v5 = *(v7 + 24);
      goto LABEL_13;
    }
  }

  else if (v4 != 1)
  {
    *&v6 = *a2 + *a3;
    LODWORD(result[1].value) = 0;
    result->value = v6;
    return result;
  }

  v13 = *a2;
LABEL_13:
  memset(&v12, 0, sizeof(v12));
  if (!v5)
  {
    CMTimeMakeWithSeconds(&v12, *a3, 1000000);
    goto LABEL_17;
  }

  if (v5 == 1)
  {
    v12 = *a3;
LABEL_17:
    memset(&v11, 0, sizeof(v11));
    lhs = v13;
    v9 = v12;
    result = CMTimeAdd(&v11, &lhs, &v9);
    *v3 = v11;
    LODWORD(v3[1].value) = 1;
    return result;
  }

LABEL_18:
  v8 = sub_2401F0C48();
  return sub_240269ECC(v8);
}

uint64_t sub_240269ECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_27;
    }

    if ((*(a1 + 12) & 1) == 0)
    {
      return 129;
    }
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_27;
    }

    if ((*(a2 + 12) & 1) == 0)
    {
      return 129;
    }

    if (v2 != 1)
    {
      memset(&v13, 0, sizeof(v13));
      v7 = a2;
      CMTimeMakeWithSeconds(&v13, *a1, 1000000);
      a2 = v7;
      v3 = *(v7 + 24);
      goto LABEL_20;
    }

LABEL_18:
    v13 = *a1;
LABEL_20:
    memset(&v12, 0, sizeof(v12));
    if (!v3)
    {
      CMTimeMakeWithSeconds(&v12, *a2, 1000000);
LABEL_24:
      time1 = v13;
      v10 = v12;
      v8 = CMTimeCompare(&time1, &v10);
      if (v8 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v8 != 0;
      }
    }

    if (v3 == 1)
    {
      v12 = *a2;
      goto LABEL_24;
    }

LABEL_27:
    v9 = sub_2401F0C48();
    return sub_24026A024(v9);
  }

  v5 = *a2;
  if (v2 == 1)
  {
    goto LABEL_18;
  }

  if (*a1 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -127;
  }

  if (*a1 > v5)
  {
    v6 = 1;
  }

  if (*a1 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

size_t sub_24026A024(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3 & ~(a3 >> 63);
  if (a3 >= 1)
  {
    v5 = *(a1 + 24);
    if ((*(a1 + 16) + v3) <= *(*v5 + 8))
    {
      v6 = *(*v5 + 8);
    }

    else
    {
      v6 = *(a1 + 16) + v3;
    }

    sub_24026A7A0(*(a1 + 24), v6);
    memcpy((***(a1 + 24) + *(a1 + 16)), a2, v3);
  }

  return v3;
}

size_t sub_24026A09C(uint64_t a1, void *__dst, int64_t a3)
{
  if (a3 < 0)
  {
    return -1;
  }

  v3 = *(a1 + 16);
  v4 = **(a1 + 24);
  if (v4[1] - v3 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4[1] - v3;
  }

  if (v5)
  {
    memcpy(__dst, (*v4 + v3), v5);
  }

  return v5;
}

void sub_24026A15C(uint64_t a1)
{
  *a1 = &unk_2852272A0;
  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 24))
    {
      v2 = a1;
      v3 = sub_24026A708(*(a1 + 24));
      MEMORY[0x245CBCA30](v3, 0x20C4093837F09);
      a1 = v2;
    }

    *(a1 + 24) = 0;
  }

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24026A1F0(uint64_t result)
{
  *result = &unk_2852272A0;
  if (*(result + 32) == 1)
  {
    if (*(result + 24))
    {
      v1 = result;
      v2 = sub_24026A708(*(result + 24));
      MEMORY[0x245CBCA30](v2, 0x20C4093837F09);
      result = v1;
    }

    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_24026A268(uint64_t a1, const void *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  if (!a2)
  {
    sub_2402546E0(&v11);
    sub_2402552EC(v13, &v11, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/fsByteArray.cpp", 0x2Au, "assert %s failed. The byte array cannot be created with invalid data.%s", "data");
    sub_240256698(v13);
    v7 = v12;
    if (v12)
    {
      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    sub_2402546E0(&v11);
    sub_2402552EC(v10, &v11, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/fsByteArray.cpp", 0x2Bu, "assert %s failed. The byte array cannot be created with a negative size.%s", "size >= 0");
    sub_240256698(v10);
    v8 = v12;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    sub_24026A434(a1, a3);
  }

  else
  {
    v6 = sub_24026A434(a1, a3);
    if (a3 && v6)
    {
      memcpy(*a1, a2, a3);
    }
  }

  return a1;
}

uint64_t sub_24026A434(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24))
  {
    if (a2 < 0x7FFFFFFFFFFFFFFFLL)
    {
      operator new[]();
    }

    sub_2402546E0(&v6);
    sub_2402552EC(v5, &v6, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/fsByteArray.cpp", 0x6Bu, "trying to expand the buffer with invalid size", v5[0]);
    v2 = v5;
  }

  else
  {
    sub_2402546E0(&v6);
    sub_2402552EC(v8, &v6, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/fsByteArray.cpp", 0x66u, "cannot expand a non-owned data buffer.", v5[0]);
    v2 = v8;
  }

  sub_240256698(v2);
  v3 = v7;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return 0;
}

void *sub_24026A708(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    if (*(v2 + 24) == 1)
    {
      *(v2 + 8) = 0;
      if (*v2)
      {
        **v2 = 0;
        if (*v2)
        {
          v4 = v2;
          MEMORY[0x245CBCA10](*v2, 0x1000C8077774924);
          v2 = v4;
        }
      }
    }

    *v2 = 0;
    *(v2 + 16) = 0;
    MEMORY[0x245CBCA30]();
    return v3;
  }

  return v1;
}

void sub_24026A7A0(void **a1, int64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = *a1;
    if (v3[1] != a2)
    {
      if (v3[2] > a2)
      {
LABEL_6:
        v3[1] = a2;
        *(*v3 + a2) = 0;
        return;
      }

      v4 = a1;
      v5 = a2;
      if (sub_24026A434(v3, a2))
      {
        v3 = *v4;
        a2 = v5;
        goto LABEL_6;
      }

      sub_2402546E0(&v7);
      sub_2402552EC(v9, &v7, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/fsByteArray.cpp", 0x101u, "could not extend buffer size", v7);
      sub_240256698(v9);
      v6 = v8;
      if (v8)
      {
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }
  }
}

void sub_24026A8A4(uint64_t a1)
{
  *a1 = &unk_2852274D0;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = a1;
      (*(*v2 + 8))(v2);
      a1 = v3;
    }

    *(a1 + 8) = 0;
  }

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24026A944(uint64_t result)
{
  *result = &unk_2852274D0;
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
    }

    *(result + 8) = 0;
  }

  return result;
}

BOOL sub_24026A9C8(uint64_t a1, std::string *a2)
{
  v13 = 0;
  v2 = *(a1 + 8);
  if (*(v2 + 8) == 2)
  {
    return 0;
  }

  v5 = (*(*v2 + 144))(*(a1 + 8), &v13, 4);
  if (v5 < 1)
  {
    return 0;
  }

  *(v2 + 16) += v5;
  if (v5 != 4)
  {
    return 0;
  }

  v6 = v13;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    if (size >= v13)
    {
      *(&a2->__r_.__value_.__s + 23) = v13;
      v8 = a2;
      goto LABEL_20;
    }

LABEL_10:
    std::string::append(a2, v13 - size, 0);
    if (!v13)
    {
      return 1;
    }

    goto LABEL_11;
  }

  size = a2->__r_.__value_.__l.__size_;
  if (size < v13)
  {
    goto LABEL_10;
  }

  v8 = a2->__r_.__value_.__r.__words[0];
  a2->__r_.__value_.__l.__size_ = v13;
LABEL_20:
  v8->__r_.__value_.__s.__data_[v6] = 0;
  if (!v13)
  {
    return 1;
  }

LABEL_11:
  v10 = *(a1 + 8);
  if (*(v10 + 8) == 2)
  {
    v11 = -1;
  }

  else
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2->__r_.__value_.__r.__words[0];
    }

    v11 = (*(*v10 + 144))(*(a1 + 8), v12);
    if (v11 >= 1)
    {
      *(v10 + 16) += v11;
    }
  }

  return v11 == v13;
}

uint64_t sub_24026AB34(uint64_t result, char *in)
{
  v2 = in;
  v3 = result;
  v7 = *MEMORY[0x277D85DE8];
  v4 = in[23];
  if (v4 < 0)
  {
    if (*(in + 1) != 36)
    {
LABEL_8:
      *result = 0;
      *(result + 16) = 0;
      return result;
    }

    v2 = *in;
  }

  else if (v4 != 36)
  {
    goto LABEL_8;
  }

  result = uuid_parse(v2, uu);
  if (result)
  {
    v5 = 0;
    *v3 = 0;
  }

  else
  {
    *v3 = *uu;
    v5 = 1;
  }

  v3[16] = v5;
  return result;
}

uint64_t sub_24026ABE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 3 && *(a1 + 640) != 28)
  {
    v6 = (a1 + 32);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v6 + *(*v6 - 24)), *(v6 + *(*v6 - 24) + 32) | 4);
    }

    *(a1 + 640) = 28;
    v7 = std::filebuf::open();
    v8 = (v6 + *(*(a1 + 32) - 24));
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8->__rdstate_ | 4;
    }

    std::ios_base::clear(v8, v9);
  }

  result = -1;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      result = 0;
      if (a2)
      {
        if (a3)
        {
          std::ios_base::clear((v11 + *(*v11 - 24)), 0);
          v12 = *(a1 + 24);
          v13 = v12 + *(v12[2] - 24) + 16;
          if ((*(v13 + 32) & 5) != 0)
          {
            v14 = -1;
          }

          else
          {
            (*(**(v13 + 40) + 32))(v33);
            v14 = v34;
            v12 = *(a1 + 24);
          }

          v15 = *(a1 + 16);
          if (v14 != v15)
          {
            if (v12)
            {
              std::ios_base::clear((v12 + *(*v12 - 24)), 0);
              v15 = *(a1 + 16);
              v16 = *(a1 + 24);
            }

            else
            {
              v16 = 0;
            }

            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            MEMORY[0x245CBC760](v23, v16 + 16);
            v17 = v16 + 16 + *(*(v16 + 16) - 24);
            if ((*(v17 + 32) & 5) == 0)
            {
              v18 = *(v17 + 40);
              v33[0] = v24;
              v33[1] = v25;
              v33[2] = v26;
              v33[3] = v27;
              v33[6] = v30;
              v33[7] = v31;
              v33[4] = v28;
              v33[5] = v29;
              v34 = v15;
              (*(*v18 + 40))(v32);
              if (v32[16] == -1)
              {
                std::ios_base::clear((v16 + 16 + *(*(v16 + 16) - 24)), *(v16 + 16 + *(*(v16 + 16) - 24) + 32) | 4);
              }
            }

            MEMORY[0x245CBC770](v23);
            v12 = *(a1 + 24);
          }

          v19 = v12 + *(v12[2] - 24) + 16;
          if ((*(v19 + 32) & 5) != 0)
          {
            v20 = -1;
          }

          else
          {
            (*(**(v19 + 40) + 32))(v33);
            v20 = v34;
            v12 = *(a1 + 24);
          }

          if (v20 == *(a1 + 16))
          {
            std::ostream::write();
            v21 = *(a1 + 24);
            if (v21)
            {
              std::ios_base::clear((v21 + *(*v21 - 24)), 0);
              v21 = *(a1 + 24);
            }

            v22 = v21 + *(v21[2] - 24) + 16;
            if ((*(v22 + 32) & 5) == 0)
            {
              (*(**(v22 + 40) + 32))(v33);
              if (v34 != -1)
              {
                return v34 - v20;
              }
            }
          }

          else if (v12)
          {
            std::ios_base::clear((v12 + *(*v12 - 24)), 0);
          }

          return -1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24026B02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 3 && *(a1 + 640) != 12)
  {
    v6 = (a1 + 32);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v6 + *(*v6 - 24)), *(v6 + *(*v6 - 24) + 32) | 4);
    }

    *(a1 + 640) = 12;
    v7 = std::filebuf::open();
    v8 = (v6 + *(*(a1 + 32) - 24));
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8->__rdstate_ | 4;
    }

    std::ios_base::clear(v8, v9);
  }

  result = -1;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      result = 0;
      if (a2)
      {
        if (a3)
        {
          std::ios_base::clear((v11 + *(*v11 - 24)), 0);
          std::istream::tellg();
          v12 = *(a1 + 16);
          if (v16 != v12)
          {
            v13 = *(a1 + 24);
            if (v13)
            {
              std::ios_base::clear((v13 + *(*v13 - 24)), 0);
              v12 = *(a1 + 16);
            }

            v16 = v12;
            std::istream::seekg();
          }

          std::istream::tellg();
          v14 = *(a1 + 24);
          if (v16 == *(a1 + 16))
          {
            std::istream::read();
            v14 = *(a1 + 24);
            result = v14[1];
          }

          else
          {
            result = -1;
            if (!v14)
            {
              return result;
            }
          }

          v15 = result;
          std::ios_base::clear((v14 + *(*v14 - 24)), 0);
          return v15;
        }
      }
    }
  }

  return result;
}

BOOL sub_24026B24C(uint64_t a1, int *a2)
{
  v3 = *a2;
  *(a1 + 8) = *a2;
  if (*(a1 + 176))
  {
    (*(*a1 + 24))(a1);
    v3 = *a2;
  }

  if ((v3 & 2) != 0)
  {
    v5 = 20;
  }

  else
  {
    v5 = 4;
  }

  *(a1 + 640) = v5 & 0xFFFFFFF7 | (8 * (v3 & 1));
  v6 = std::filebuf::open();
  v7 = (a1 + 32 + *(*(a1 + 32) - 24));
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7->__rdstate_ | 4;
  }

  std::ios_base::clear(v7, v8);
  (*(*a1 + 120))(a1);
  return *(a1 + 32 + *(*(a1 + 32) - 24) + 32) == 0;
}

uint64_t sub_24026B364(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), 0);
  }

  std::istream::tellg();
  if (*(a1 + 32 + *(*(a1 + 32) - 24) + 32))
  {
    return -1;
  }

  std::istream::seekg();
  std::istream::tellg();
  v3 = v5;
  std::istream::seekg();
  return v3;
}

uint64_t sub_24026B474(uint64_t a1)
{
  if (*(a1 + 8) == 3 && *(a1 + 640) != 28)
  {
    v2 = (a1 + 32);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    *(a1 + 640) = 28;
    v3 = std::filebuf::open();
    v4 = (v2 + *(*(a1 + 32) - 24));
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4->__rdstate_ | 4;
    }

    std::ios_base::clear(v4, v5);
  }

  v6 = *(a1 + 24) + 16;

  return MEMORY[0x2821F78A0](v6);
}

void sub_24026B554(uint64_t a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + 32 + *(*(a1 + 32) - 24));
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

void sub_24026B5CC(uint64_t a1)
{
  *a1 = &unk_285227420;
  if (*(a1 + 639) < 0)
  {
    operator delete(*(a1 + 616));
  }

  *(a1 + 32) = &unk_285226DD8;
  *(a1 + 464) = &unk_285226E28;
  *(a1 + 48) = &unk_285226E00;
  MEMORY[0x245CBC6E0](a1 + 56);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](a1 + 464);

  JUMPOUT(0x245CBCA30);
}