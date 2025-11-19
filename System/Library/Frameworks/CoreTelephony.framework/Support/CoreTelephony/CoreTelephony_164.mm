uint64_t sub_1013F05C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013F05E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1013F05F4(uint64_t a1@<X8>)
{
  sub_10000501C(__p, "All_Profiles");
  if (SHIBYTE(v4) < 0)
  {
    sub_100005F2C((a1 + 16), __p[0], __p[1]);
    v2 = SHIBYTE(v4);
    *(a1 + 40) = 1;
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v4;
    *(a1 + 40) = 1;
  }
}

void sub_1013F0674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013F0690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || (v2 = std::__shared_weak_count::lock(v1)) == 0)
  {
    sub_100013CC4();
  }

  v3 = v2;
  p_shared_weak_owners = &v2->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v2);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  VinylCommandDriver::tapeResetMemory();
  std::__shared_weak_count::__release_weak(v3);
  std::__shared_weak_count::__release_weak(v3);
}

void sub_1013F0770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void sub_1013F0790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v16 = *(a2 + 16);
  }

  v5 = sub_101100CD8(__dst, &v17);
  v6 = v5;
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_12:
    v14 = 258;
    (*(a3 + 16))(a3, &v14);
    LOBYTE(v14) = 0;
    goto LABEL_13;
  }

  operator delete(__dst[0]);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_6:
  v7 = *(a1 + 16);
  if (!v7 || (v8 = std::__shared_weak_count::lock(v7)) == 0)
  {
    sub_100013CC4();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_100034C50(&__p, v17, v18, v18 - v17);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  VinylCommandDriver::deleteTapeProfile();
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v9);
  std::__shared_weak_count::__release_weak(v9);
LABEL_13:
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_1013F0944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = *(v28 - 88);
  if (v30)
  {
    *(v28 - 80) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013F09BC(void *a1, int a2, void *a3)
{
  v33 = 0;
  v34 = 0;
  v32 = &v33;
  v3 = a1[18];
  if ((*(v3 + 104) & 1) == 0)
  {
    sub_1000D1644();
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  if (v7 == v8)
  {
    v14 = 0;
    v9 = 0;
    v10 = a3[2];
  }

  else
  {
    v9 = 0;
    do
    {
      if (*(v7 + 88) == a2)
      {
        sub_100005BA0(&v32, (v7 + 16));
      }

      if (sub_10016FA58(a3, (v7 + 16)))
      {
        ++v9;
      }

      v7 += 216;
    }

    while (v7 != v8);
    v10 = a3[2];
    if (v9 > v10)
    {
      v11 = a1[5];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = asString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Missing from expected %s profiles", &buf, 0xCu);
      }

      goto LABEL_12;
    }

    v14 = v34;
  }

  if (v10 == v14)
  {
    v17 = *a3;
    v15 = (a3 + 1);
    v16 = v17;
    if (v17 == v15)
    {
      v13 = 0;
    }

    else
    {
      v18 = v32;
      do
      {
        v19 = sub_100022D3C(&buf, v16 + 4, v18 + 4);
        if (!v19)
        {
          break;
        }

        v20 = v16[1];
        v21 = v16;
        if (v20)
        {
          do
          {
            v16 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v16 = v21[2];
            v22 = *v16 == v21;
            v21 = v16;
          }

          while (!v22);
        }

        v23 = v18[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v18[2];
            v22 = *v24 == v18;
            v18 = v24;
          }

          while (!v22);
        }

        v18 = v24;
      }

      while (v16 != v15);
      v13 = !v19;
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 == 1)
  {
    v25 = a1[18];
    if (v25)
    {
      if (*(v25 + 195) == 1)
      {
        v26 = *(v25 + 200);
        if (v26)
        {
          if (((*(*v26 + 56))(v26) & 1) == 0)
          {
            if (*(a1[18] + 128) == v9)
            {
LABEL_12:
              v13 = 0;
              goto LABEL_38;
            }

            v28 = a1[14];
            if (v28)
            {
              v29 = std::__shared_weak_count::lock(v28);
              if (v29)
              {
                v30 = v29;
                v31 = a1[13];
                if (v31)
                {
                  (*(*v31 + 48))(&buf);
                  if (v36 < 0)
                  {
                    v13 = *(&buf + 1) != 0;
                    operator delete(buf);
                  }

                  else
                  {
                    v13 = v36 != 0;
                  }
                }

                sub_100004A34(v30);
              }
            }
          }
        }
      }
    }
  }

LABEL_38:
  sub_100009970(&v32, v33);
  return v13;
}

void sub_1013F0C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_100004A34(v11);
  sub_100009970(&a10, a11);
  _Unwind_Resume(a1);
}

BOOL sub_1013F0CD0(void *a1, const void **a2, uint64_t a3)
{
  if (a1[2] != a3)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v5 = (a1 + 1);
  v6 = *a1;
  if (*a1 == a1 + 1)
  {
    return 1;
  }

  do
  {
    result = sub_100022D3C(&v14, v6 + 4, a2 + 4);
    if (!result)
    {
      break;
    }

    v9 = v6[1];
    v10 = v6;
    if (v9)
    {
      do
      {
        v6 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v6 = v10[2];
        v11 = *v6 == v10;
        v10 = v6;
      }

      while (!v11);
    }

    v12 = a2[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = a2[2];
        v11 = *v13 == a2;
        a2 = v13;
      }

      while (!v11);
    }

    a2 = v13;
  }

  while (v6 != v5);
  return result;
}

uint64_t sub_1013F0DAC(uint64_t a1, void *a2)
{
  memset(v88, 0, sizeof(v88));
  sub_1013F1D88(v88, *(a1 + 144));
  if (*(a1 + 140) == 9)
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      v6 = 0;
      v7 = v5 - v4 - 216;
      v8 = vdupq_n_s64(v7 / 0xD8);
      do
      {
        v9 = vdupq_n_s64(v6);
        v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1017DF6E0)));
        if (vuzp1_s8(vuzp1_s16(v10, *v8.i8), *v8.i8).u8[0])
        {
          v4[91] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v10, *&v8), *&v8).i8[1])
        {
          v4[307] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1017DF6D0)))), *&v8).i8[2])
        {
          v4[523] = 1;
          v4[739] = 1;
        }

        v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_10183AC60)));
        if (vuzp1_s8(*&v8, vuzp1_s16(v11, *&v8)).i32[1])
        {
          v4[955] = 1;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(v11, *&v8)).i8[5])
        {
          v4[1171] = 1;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_10183AC50))))).i8[6])
        {
          v4[1387] = 1;
          v4[1603] = 1;
        }

        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_10183AC40)));
        if (vuzp1_s8(vuzp1_s16(v12, *v8.i8), *v8.i8).u8[0])
        {
          v4[1819] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v12, *&v8), *&v8).i8[1])
        {
          v4[2035] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_10183AC30)))), *&v8).i8[2])
        {
          v4[2251] = 1;
          v4[2467] = 1;
        }

        v13 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_10183AC20)));
        if (vuzp1_s8(*&v8, vuzp1_s16(v13, *&v8)).i32[1])
        {
          v4[2683] = 1;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(v13, *&v8)).i8[5])
        {
          v4[2899] = 1;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_10183AC10))))).i8[6])
        {
          v4[3115] = 1;
          v4[3331] = 1;
        }

        v6 += 16;
        v4 += 3456;
      }

      while (((v7 / 0xD8 + 16) & 0x3FFFFFFFFFFFFF0) != v6);
    }
  }

  sub_100319BEC(*(a1 + 144) + 80, a2);
  v14 = *(a1 + 80);
  v15 = *(a1 + 144);
  if (v15 && (*(v15 + 104) & 1) != 0)
  {
    v16 = *(v15 + 80);
    v17 = *(v15 + 88);
    while (v16 != v17)
    {
      if (*(v16 + 89))
      {
        sub_100F11F00(&v89, v16);
        v18 = 1;
        goto LABEL_36;
      }

      v16 += 216;
    }
  }

  v18 = 0;
  LOBYTE(v89) = 0;
LABEL_36:
  v92 = v18;
  v19 = sub_10107A144(&event::vinyl_bootstrap_profile + 1);
  sub_100520DC8(v93, &v89);
  v85 = v14;
  v84 = 0uLL;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  buf = 0u;
  v98 = 0u;
  v20 = sub_10004A4A8(v19 + 3);
  sub_100048D3C(&buf, v20);
  v21 = v19[1];
  if (v21)
  {
    if (atomic_load_explicit((v21 + 8), memory_order_acquire) == 1)
    {
      sub_10107A40C(v19, &buf, 0, 1);
    }

    v22 = *v19;
    v23 = v19[1];
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v23 = 0;
    v22 = *v19;
  }

  v24 = v84;
  *&v84 = v22;
  *(&v84 + 1) = v23;
  v120[0] = v24;
  sub_10004A724(v120 + 1);
  sub_10004A704(*(&v108 + 1));
  sub_10004A6B0(&buf);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  buf = 0u;
  v112 = 0;
  v113 = 10;
  v114 = &buf + 8;
  v115 = 0;
  v116 = &v85;
  v117 = v93;
  v119 = 0;
  v118 = 0;
  v25 = sub_10107A188(&v84);
  v83[0] = &buf;
  v83[1] = v19;
  v83[2] = sub_10107B164(v25);
  v26 = sub_10107A188(&v84);
  sub_10004AA88((v26 + 16));
  v27 = sub_10107A188(&v84);
  v28 = *(sub_10107B164(v27) + 8);
  v29 = sub_10107A188(&v84);
  *&v81 = v28;
  *(&v81 + 1) = sub_10107B164(v29);
  *&v82 = &buf;
  *(&v82 + 1) = *(&v81 + 1);
  sub_10140497C(&v81);
  v30 = sub_10107A188(&v84);
  v31 = sub_10107B164(v30);
  v32 = sub_10107A188(&v84);
  v77 = v31;
  v78 = sub_10107B164(v32);
  p_buf = &buf;
  v80 = v78;
  sub_10140497C(&v77);
  *v86 = v81;
  v87 = v82;
  v33 = v77;
  v34 = v81;
  if (v81 != v77)
  {
    v35 = v87;
    v36 = *v87;
    do
    {
      if ((v36 & 1) == 0)
      {
        v37 = sub_10107A1CC(&v34->__shared_weak_owners_);
        v38 = sub_10107ACFC((v37 + 32));
        v39 = **(v35 + 272);
        sub_100520DC8(v120, *(v35 + 280));
        sub_10107B778((v38 + 24), v39, v120);
        if (v121 == 1)
        {
          sub_100E3A5D4(v120);
        }

        if ((*v35 & 1) == 0)
        {
          *v35 = 1;
        }
      }

      if ((*v87 & 1) == 0)
      {
        __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
      }

      v86[0] = v86[0]->__shared_owners_;
      sub_10140497C(v86);
      v35 = v87;
      if (*v87 == 1)
      {
        *v87 = 0;
      }

      v36 = 0;
      v34 = v86[0];
    }

    while (v86[0] != v33);
  }

  sub_101404CEC(v83);
  sub_101404EB4(&buf);
  sub_10004A724(&v84 + 1);
  if (v96 == 1)
  {
    sub_100E3A5D4(v93);
  }

  if (v92 == 1)
  {
    sub_100E3A5D4(&v89);
  }

  sub_1013EB834(a1);
  active = sSupportsPartialActiveProfiles();
  v41 = *(a1 + 144);
  if (active && v41 && *(v41 + 104) == 1)
  {
    v42 = *(v41 + 144);
    v76 = (v41 + 152);
    if (v42 != (v41 + 152))
    {
      do
      {
        v43 = (v42 + 4);
        v44 = *(a1 + 144);
        *&buf = v42 + 4;
        v45 = sub_1011CE454(v44 + 168, v42 + 4);
        v48 = *(v45 + 64);
        v46 = v45 + 64;
        v47 = v48;
        if (!v48)
        {
          goto LABEL_70;
        }

        v49 = v46;
        do
        {
          if (*(v47 + 32) >= 3)
          {
            v49 = v47;
          }

          v47 = *(v47 + 8 * (*(v47 + 32) < 3));
        }

        while (v47);
        if (v49 == v46 || *(v49 + 32) >= 4)
        {
LABEL_70:
          v50 = *(a1 + 16);
          if (v50 && std::__shared_weak_count::lock(v50))
          {
            v89 = a1;
            if (*(v42 + 55) < 0)
            {
              sub_100005F2C(&v90, v42[4], v42[5]);
            }

            else
            {
              v90 = *v43;
              v91 = v42[6];
            }

            operator new();
          }

          goto LABEL_138;
        }

        v51 = *(a1 + 144);
        *&buf = v42 + 4;
        v52 = sub_1011CE454(v51 + 168, v42 + 4);
        v55 = *(v52 + 64);
        v53 = v52 + 64;
        v54 = v55;
        if (!v55)
        {
          goto LABEL_83;
        }

        v56 = v53;
        do
        {
          if (*(v54 + 32) >= 4)
          {
            v56 = v54;
          }

          v54 = *(v54 + 8 * (*(v54 + 32) < 4));
        }

        while (v54);
        if (v56 == v53 || *(v56 + 32) >= 5)
        {
LABEL_83:
          v57 = *(a1 + 16);
          if (v57 && std::__shared_weak_count::lock(v57))
          {
            v89 = a1;
            if (*(v42 + 55) < 0)
            {
              sub_100005F2C(&v90, v42[4], v42[5]);
            }

            else
            {
              v90 = *v43;
              v91 = v42[6];
            }

            operator new();
          }

LABEL_138:
          sub_100013CC4();
        }

        v58 = v42[1];
        if (v58)
        {
          do
          {
            v59 = v58;
            v58 = *v58;
          }

          while (v58);
        }

        else
        {
          do
          {
            v59 = v42[2];
            v60 = *v59 == v42;
            v42 = v59;
          }

          while (!v60);
        }

        v42 = v59;
      }

      while (v59 != v76);
      v41 = *(a1 + 144);
    }

    v61 = (v41 + 168);
    v62 = *(v41 + 168);
    v63 = (v41 + 176);
    if (v62 != (v41 + 176))
    {
      do
      {
        v64 = *(a1 + 144);
        if (*(v64 + 136) == 1)
        {
          v65 = v64 + 120 != sub_100007A6C(v64 + 112, v62 + 4);
          v64 = *(a1 + 144);
        }

        else
        {
          v65 = 0;
        }

        v66 = v64 + 152 != sub_100007A6C(v64 + 144, v62 + 4) || v65;
        if (v66)
        {
          v67 = v62[1];
          if (v67)
          {
            do
            {
              v68 = v67;
              v67 = *v67;
            }

            while (v67);
          }

          else
          {
            do
            {
              v68 = v62[2];
              v60 = *v68 == v62;
              v62 = v68;
            }

            while (!v60);
          }
        }

        else
        {
          v69 = *(a1 + 40);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v62 + 55) >= 0)
            {
              v70 = v62 + 4;
            }

            else
            {
              v70 = v62[4];
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v70;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I Erasing cached data for:%s", &buf, 0xCu);
          }

          v68 = sub_1000194D8(v61, v62);
          sub_1011BAEB4((v62 + 4));
          operator delete(v62);
        }

        v62 = v68;
      }

      while (v68 != v63);
      v41 = *(a1 + 144);
    }
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  buf = 0u;
  v98 = 0u;
  result = sub_1013F1D88(&buf, v41);
  v72 = buf;
  if (v88[0] != 1 || (buf & 1) == 0)
  {
    if (v88[0] != buf)
    {
      goto LABEL_129;
    }

    v72 = v88[0];
LABEL_124:
    if ((v72 & 1) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  result = VinylProfileDetails::operator==();
  v72 = buf;
  if (result)
  {
    goto LABEL_124;
  }

LABEL_129:
  v73 = *(a1 + 80);
  if (BYTE1(v103))
  {
    v74 = 1;
  }

  else
  {
    v74 = 2;
  }

  v93[0] = _NSConcreteStackBlock;
  v93[1] = 0x40000000;
  v93[2] = sub_100F6F300;
  v93[3] = &unk_101EF60E8;
  if (v72)
  {
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  v94 = v73;
  v95 = v75;
  result = sub_100F6F154(0x800C9);
  if (buf)
  {
LABEL_125:
    result = sub_100E3A5D4(&buf + 8);
  }

LABEL_126:
  if (v88[0] == 1)
  {
    return sub_100E3A5D4(&v88[8]);
  }

  return result;
}

void sub_1013F1BF4(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x1013F1D80);
}

void sub_1013F1CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_weak(a30);
  }

  if (v69)
  {
    dispatch_release(v69);
  }

  std::__shared_weak_count::~__shared_weak_count(v68);
  operator delete(v70);
  if (a67 < 0)
  {
    operator delete(a62);
  }

  sub_100004A34(v67);
  JUMPOUT(0x1013F1D68);
}

_BYTE *sub_1013F1D88(_BYTE *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2)
  {
    if (*(a2 + 104) == 1)
    {
      v4 = *(a2 + 80);
      v5 = *(v2 + 88);
      while (v4 != v5)
      {
        if (*(v4 + 90))
        {
          *result = 0;
          result = sub_100F11F00((result + 8), v4);
          LOBYTE(v2) = 1;
          goto LABEL_8;
        }

        v4 += 216;
      }
    }

    LOBYTE(v2) = 0;
  }

LABEL_8:
  *v3 = v2;
  return result;
}

void sub_1013F1DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 144);
  if (v3 && *(v3 + 136) == 1 && v3 + 120 != sub_100007A6C(v3 + 112, a2))
  {
    v8 = *(a3 + 4);
    if (v8 == 4)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      *__p = 0u;
      v20 = 0u;
      *v17 = 0u;
      v18 = 0u;
      memset(__str, 0, sizeof(__str));
      subscriber::sDecodePhoneBookFile();
    }

    else if (v8 == 3)
    {
      memset(__str, 0, 24);
      subscriber::sDecodeImsi(__str, *(a3 + 8), (*(a3 + 16) - *(a3 + 8)), v7);
      v9 = sub_1011CE454(*(a1 + 144) + 168, a2);
      LODWORD(v15) = 3;
      *&v14 = &v15;
      v10 = sub_1011CE5F8(v9 + 56, 3);
      std::string::operator=((v10 + 5), __str);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = subscriber::asString();
        if (*(a2 + 23) >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        *__str = 136315394;
        *&__str[4] = v12;
        *&__str[12] = 2080;
        *&__str[14] = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Ignoring %s update for:%s", __str, 0x16u);
      }
    }
  }
}

void sub_1013F20A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100AC7908(&a18);
  _Unwind_Resume(a1);
}

void sub_1013F20F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      sub_1000CE3D4();
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

    v15[4] = a1;
    if (v9)
    {
      sub_1012936C8(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    v14 = *(a1 + 16);
    *(a1 + 16) = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    sub_1012290A0(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 8) = v5;
  sub_1014036A4(*a1, v5, (v5 - *a1) >> 4);
}

void *sub_1013F21F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v2 = *(a1 + 144);
    if (v2 && *(v2 + 104) == 1)
    {
      v3 = *(v2 + 80);
      v4 = *(v2 + 88);
      if (v3 != v4)
      {
        v5 = *(a2 + 39);
        if (v5 >= 0)
        {
          v6 = *(a2 + 39);
        }

        else
        {
          v6 = *(a2 + 24);
        }

        if (v5 >= 0)
        {
          v7 = (a2 + 16);
        }

        else
        {
          v7 = *(a2 + 16);
        }

        while (1)
        {
          v8 = *(v3 + 39);
          v9 = v8;
          if ((v8 & 0x80u) != 0)
          {
            v8 = *(v3 + 24);
          }

          if (v8 == v6)
          {
            v10 = v9 >= 0 ? (v3 + 16) : *(v3 + 16);
            if (!memcmp(v10, v7, v6))
            {
              break;
            }
          }

          v3 += 216;
          if (v3 == v4)
          {
            v3 = v4;
            break;
          }
        }
      }

      if (v3 == v4)
      {
        return 0;
      }

      else
      {
        return v3;
      }
    }

    return 0;
  }

  v12 = *(a1 + 144);
  if (!v12 || *(v12 + 104) != 1)
  {
    return 0;
  }

  v13 = *(v12 + 80);
  v14 = *(v12 + 88);
  if (v13 != v14)
  {
    while (*v13 != *a2 || v13[1] != *(a2 + 8))
    {
      v13 += 27;
      if (v13 == v14)
      {
        v13 = v14;
        break;
      }
    }
  }

  if (v13 == v14)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_1013F2310(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1001149B8(a1, *a2, a2[1], 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100112528(a1, *a2, a2[1], 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3));
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1013F23B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  *(a2 + 496) = 0;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v4 = *(result + 136);
  if (v4 > 4 || v4 == 3)
  {
    v5 = *(result + 144);
    if (v5)
    {
      *a2 = *(v5 + 8);
      *(a2 + 16) = 1;
      v6 = *(v5 + 47);
      if (v6 < 0)
      {
        v6 = *(v5 + 32);
      }

      if (!v6 || (result = sub_1001696A4((a2 + 24), (v5 + 24)), (v5 = *(v2 + 144)) != 0))
      {
        if (*(v5 + 104) == 1)
        {
          v7 = *(v5 + 80);
          v8 = *(v5 + 88);
          while (v7 != v8)
          {
            if (*(v7 + 89) == 1)
            {
              result = sub_10011DE6C(a2 + 56, v7);
            }

            if (*(v7 + 90) == 1)
            {
              result = sub_10011DE6C(a2 + 280, v7);
            }

            v7 += 216;
          }
        }
      }
    }
  }

  return result;
}

void sub_1013F24E0(uint64_t a1, uint64_t *a2, void *aBlock, uint64_t a4)
{
  if (*(a1 + 84) == 2)
  {
    if (aBlock)
    {
      v7 = _Block_copy(aBlock);
    }

    else
    {
      v7 = 0;
    }

    v8 = *a2;
    v9 = a2[1];
    v14[0] = v8;
    v14[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1174405120;
    v12[2] = sub_1013F2F60;
    v12[3] = &unk_101F36FA0;
    if (v7)
    {
      v10 = _Block_copy(v7);
    }

    else
    {
      v10 = 0;
    }

    aBlocka = v10;
    sub_1013F26DC(a1, v14, v12, a4);
    if (v9)
    {
      sub_100004A34(v9);
    }

    if (aBlocka)
    {
      _Block_release(aBlocka);
    }

    if (v7)
    {
      _Block_release(v7);
    }
  }

  else
  {
    v11 = 514;
    v16[0] = 0;
    (*(a4 + 16))(a4, &v11, v16);
    if (v16[0] == 1)
    {
      if (v19[24] == 1)
      {
        v15 = v19;
        sub_100112120(&v15);
      }

      if (v18 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_1013F2678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013F26DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 136) - 1) > 1)
  {
    v8 = *(a1 + 144);
    if (v8)
    {
      v11 = *(v8 + 200);
      if (v11 && ((*(*v11 + 56))(v11) & 1) == 0)
      {
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'fetch'; an installation procedure already exists", buf, 2u);
        }

        (*(**(*(a1 + 144) + 200) + 80))(*(*(a1 + 144) + 200));
        v48 = 1282;
        v63[0] = 0;
        (*(a4 + 16))(a4, &v48, v63);
        if (v63[0] == 1)
        {
          if (v66[24] == 1)
          {
            *buf = v66;
            sub_100112120(buf);
          }

          if (v65 < 0)
          {
            v7 = v64;
            goto LABEL_43;
          }
        }
      }

      else if (*(a1 + 84) == 2)
      {
        v12 = *(a1 + 140);
        if (v12 > 0xB || ((1 << v12) & 0xE80) == 0)
        {
          v17 = *(a1 + 144);
          if (*(v17 + 104) != 1)
          {
            goto LABEL_54;
          }

          v18 = *(v17 + 80);
          v19 = *(v17 + 88);
          if (v18 != v19)
          {
            while ((*(v18 + 92) & 1) == 0)
            {
              v18 += 216;
              if (v18 == v19)
              {
                goto LABEL_54;
              }
            }
          }

          if (v18 == v19)
          {
LABEL_54:
            v22 = *(a1 + 112);
            if (v22)
            {
              v23 = std::__shared_weak_count::lock(v22);
              if (v23)
              {
                v24 = v23;
                v25 = *(a1 + 104);
                if (v25 && (*(*v25 + 56))(v25, *a2 + 96, *a2 + 48))
                {
                  v26 = *(a1 + 40);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Skipping Vinyl Install as retry limit has exceeded threshold", buf, 2u);
                  }

                  v44 = 257;
                  v53[0] = 0;
                  (*(a4 + 16))(a4, &v44, v53);
                  sub_10016A858(v53);
                  LOBYTE(v44) = 0;
                  sub_100004A34(v24);
                  return;
                }

                sub_100004A34(v24);
              }
            }

            v27 = *(a1 + 40);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Queueing up a Tape Install operation", buf, 2u);
            }

            sub_1013ED208(a1);
            *(*(a1 + 144) + 195) = 0;
            *(*(a1 + 144) + 196) = sub_100318068((*a2 + 216), "5001");
            v28 = *(a1 + 56);
            v29 = *(a1 + 64);
            v42 = *(a1 + 48);
            v43 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v30 = *(a1 + 24);
            object = v30;
            if (v30)
            {
              dispatch_retain(v30);
            }

            v31 = *(a1 + 80);
            v32 = a2[1];
            v39 = *a2;
            v40 = v32;
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v38[0] = _NSConcreteStackBlock;
            v38[1] = 0x40000000;
            v38[2] = sub_1013F3090;
            v38[3] = &unk_101F36FD8;
            v38[4] = a4;
            v38[5] = a1;
            (*(*v29 + 120))(buf, v29, &v42, &object, v31, &v39, a3, v38);
            v33 = *(a1 + 144);
            v34 = *buf;
            *buf = 0;
            *&buf[8] = 0;
            v35 = *(v33 + 208);
            *(v33 + 200) = v34;
            if (v35)
            {
              sub_100004A34(v35);
              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }
            }

            if (v40)
            {
              sub_100004A34(v40);
            }

            if (object)
            {
              dispatch_release(object);
            }

            if (v43)
            {
              sub_100004A34(v43);
            }

            if (*(*(a1 + 144) + 200))
            {
              sub_1013ED75C(a1, 0);
              return;
            }

            v36 = *(a1 + 40);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Missing installation operation", buf, 2u);
            }

            v37 = 258;
            v51[0] = 0;
            (*(a4 + 16))(a4, &v37, v51);
            v21 = v51;
          }

          else
          {
            v20 = *(a1 + 40);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'fetch'; current profile cannot be disabled", buf, 2u);
            }

            v45 = 2818;
            v54[0] = 0;
            (*(a4 + 16))(a4, &v45, v54);
            v21 = v54;
          }

          sub_10016A858(v21);
          return;
        }

        v13 = *(a1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = subscriber::asString();
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'fetch' as the SIM is %s", buf, 0xCu);
        }

        v46 = 770;
        v55[0] = 0;
        (*(a4 + 16))(a4, &v46, v55);
        if (v55[0] == 1)
        {
          if (v58[24] == 1)
          {
            *buf = v58;
            sub_100112120(buf);
          }

          if (v57 < 0)
          {
            v7 = v56;
            goto LABEL_43;
          }
        }
      }

      else
      {
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'fetch'; invalid card type", buf, 2u);
        }

        v47 = 514;
        v59[0] = 0;
        (*(a4 + 16))(a4, &v47, v59);
        if (v59[0] == 1)
        {
          if (v62[24] == 1)
          {
            *buf = v62;
            sub_100112120(buf);
          }

          if (v61 < 0)
          {
            v7 = v60;
            goto LABEL_43;
          }
        }
      }
    }

    else
    {
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'fetch' until we have seen availability", buf, 2u);
      }

      v49 = 770;
      v67[0] = 0;
      (*(a4 + 16))(a4, &v49, v67);
      if (v67[0] == 1)
      {
        if (v70[24] == 1)
        {
          *buf = v70;
          sub_100112120(buf);
        }

        if (v69 < 0)
        {
          v7 = v68;
          goto LABEL_43;
        }
      }
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'fetch' as vinyl availability is %s", buf, 0xCu);
    }

    v50 = 514;
    v71[0] = 0;
    (*(a4 + 16))(a4, &v50, v71);
    if (v71[0] == 1)
    {
      if (v74[24] == 1)
      {
        *buf = v74;
        sub_100112120(buf);
      }

      if (v73 < 0)
      {
        v7 = v72;
LABEL_43:
        operator delete(v7);
      }
    }
  }
}

void sub_1013F2EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_10016A858(&a38);
  sub_100004A34(v38);
  _Unwind_Resume(a1);
}

_BYTE *sub_1013F2F60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = 0;
  sub_100F11F00(&v6, a2);
  memset(v7, 0, sizeof(v7));
  sub_100034C50(v7, *(a2 + 216), *(a2 + 224), *(a2 + 224) - *(a2 + 216));
  v5[0] = 1;
  (*(v3 + 16))(v3, v5);
  return sub_1001123EC(v5);
}

void *sub_1013F3038(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_1013F306C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_1013F3090(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  v9 = v8[5];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = sub_10172A0D8(a2);
    v25 = 1024;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Install complete: %s, %d", buf, 0x12u);
  }

  v18 = 0;
  if (a2 <= 0xA)
  {
    if (((1 << a2) & 0x3E7) != 0)
    {
      v10 = v8[18];
      if (v10)
      {
        *(v10 + 195) = 0;
      }

      v11 = vinyl::asClosestVinylError(a2);
      buf[0] = 2;
      buf[1] = v11;
      sub_10140274C(&v18, buf);
      sub_1013ECFD0(v8);
    }

    else if (a2 == 4)
    {
      v14 = v8[5];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Activating a deactivate-assertion.", buf, 2u);
      }

      v15 = v8[18];
      if (v15)
      {
        *(v15 + 195) = 1;
      }
    }

    else if (a2 == 10)
    {
      v13 = v8[18];
      if (v13)
      {
        *(v13 + 195) = 0;
      }

      *buf = 257;
      sub_10140274C(&v18, buf);
      if ((*a4 & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }

      if (*(a4 + 88) == 1)
      {
        memset(v17, 0, sizeof(v17));
        sub_100112528(v17, *(a4 + 64), *(a4 + 72), 0x84BDA12F684BDA13 * ((*(a4 + 72) - *(a4 + 64)) >> 3));
        sub_1013F0DAC(v8, v17);
        *buf = v17;
        sub_100112120(buf);
      }
    }
  }

  if (a3)
  {
    sub_1013ED208(v8);
  }

  if (v18)
  {
    v12 = *(a1 + 32);
    v16 = 0;
    if (v18 <= 2u)
    {
      v16 = v18;
    }

    v19[0] = 0;
    if (*a4 == 1)
    {
      sub_100F11B6C(&v20, a4 + 8);
      v19[0] = 1;
    }

    (*(v12 + 16))(v12, &v16, v19);
    if (v19[0] == 1)
    {
      if (v23[24] == 1)
      {
        *buf = v23;
        sub_100112120(buf);
      }

      if (v22 < 0)
      {
        operator delete(__p);
      }

      v19[0] = 0;
    }

    LOBYTE(v16) = 0;
  }

  if ((a3 & 1) == 0)
  {
    sub_1013ED75C(v8, 0);
  }
}

void sub_1013F338C(_Unwind_Exception *a1)
{
  *v2 = v1;
  sub_100112120((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_1013F33BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 136) - 1) > 1)
  {
    v6 = *(a1 + 144);
    if (v6)
    {
      v7 = *(v6 + 200);
      if (v7 && !(*(*v7 + 56))(v7))
      {
        if (*(a1 + 84) == 2)
        {
          v11 = *(a1 + 140);
          if (v11 <= 0xB && ((1 << v11) & 0xE80) != 0)
          {
            v12 = *(a1 + 40);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v21 = subscriber::asString();
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'user consent' as the SIM is %s", buf, 0xCu);
            }

            v15 = 770;
            (*(a3 + 16))(a3, &v15);
          }

          else
          {
            (*(**(*(a1 + 144) + 200) + 48))(*(*(a1 + 144) + 200), a2);
            v14 = 257;
            (*(a3 + 16))(a3, &v14);
            LOBYTE(v14) = 0;
            sub_1013ED75C(a1, 0);
          }
        }

        else
        {
          v13 = *(a1 + 40);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Invalid card type", buf, 2u);
          }

          v16 = 514;
          (*(a3 + 16))(a3, &v16);
        }
      }

      else
      {
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'user consent'; no installation procedure exists", buf, 2u);
        }

        v17 = 258;
        (*(a3 + 16))(a3, &v17);
      }
    }

    else
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No vinyl model", buf, 2u);
      }

      v18 = 770;
      (*(a3 + 16))(a3, &v18);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Ignoring vinyl availability is %s", buf, 0xCu);
    }

    v19 = 514;
    (*(a3 + 16))(a3, &v19);
  }
}

BOOL sub_1013F36E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  }

  v3 = *(a1 + 39);
  if (v3 >= 0)
  {
    v4 = *(a1 + 39);
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = *(a2 + 39);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 24);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v7 = (a1 + 16);
  v8 = v9;
  if (v3 < 0)
  {
    v7 = v8;
  }

  v12 = *(a2 + 16);
  v10 = (a2 + 16);
  v11 = v12;
  if (v6 < 0)
  {
    v10 = v11;
  }

  return memcmp(v7, v10, v4) == 0;
}

uint64_t sub_1013F3788(uint64_t a1)
{
  __dst = 0;
  v8 = 0;
  memset(&v6, 0, sizeof(v6));
  LODWORD(v2) = *(a1 + 23);
  if ((v2 & 0x80000000) == 0)
  {
    v6 = *a1;
LABEL_4:
    v3 = 0;
    v4 = v2;
    goto LABEL_5;
  }

  sub_100005F2C(&v6, *a1, *(a1 + 8));
  LODWORD(v2) = *(a1 + 23);
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 8);
  v3 = 1;
LABEL_5:
  if (v4 <= 0x13)
  {
    v2 = v2;
    if (v3)
    {
      v2 = *(a1 + 8);
    }

    std::string::append(&v6, 20 - v2, 102);
  }

  ctu::parse_hex();
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return __dst;
}

void sub_1013F38EC(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        sub_100112F20(&v9, (a1 + 7));
        v10 = 0;
        v7 = *a2;
        if (v7 == 2)
        {
          LOBYTE(v10) = 2;
          *(&v10 + 1) = *(a2 + 1);
          HIBYTE(v10) = a2[3];
        }

        else if (v7 == 1)
        {
          LOBYTE(v10) = 1;
          BYTE1(v10) = a2[1];
        }

        v8 = *(v5 + 16);
        if (v8)
        {
          if (std::__shared_weak_count::lock(v8))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1013F3A9C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1013F3AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_100112F20(a1 + 56, a2 + 56);
}

void sub_1013F3B0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013F3B24(uint64_t a1)
{
  sub_100112FB8(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1013F3B70(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        sub_100112F20(&v8, (a1 + 7));
        sub_100F11DD4(v9, a2);
        v7 = *(v5 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1013F3D14(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1013F3D50(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        sub_100112F20(&v6, (a1 + 7));
        v5 = *(v3 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1013F3F14(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1013F3F50(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        sub_100F11DD4(v8, a2);
        sub_100112F20(&v9, (a1 + 7));
        v7 = *(v5 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1013F4100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1013F417C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Set associated IMEI for profile %s : %s", buf, 0x16u);
  }

  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    sub_100013CC4();
  }

  v14 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  memset(buf, 0, sizeof(buf));
  if (sub_10110389C(a2, a3, buf))
  {
    v18 = 0;
    v19 = 0;
    __p = 0;
    sub_100034C50(&__p, *buf, *&buf[8], *&buf[8] - *buf);
    v22 = _NSConcreteStackBlock;
    v23 = 1174405120;
    v24 = sub_1013F4480;
    v25 = &unk_101F370B8;
    v26 = a1;
    v27 = v12;
    v28 = v14;
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1001135B0(v29, a4);
    VinylCommandDriver::tapeSetProprietaryData();
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    sub_100113648(v29);
    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  else
  {
    v15 = a1[5];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "encodeTapeSetProprietaryDataReq failed", v21, 2u);
    }

    v20 = 770;
    v16 = *(a4 + 24);
    if (!v16)
    {
      sub_100022DB4();
    }

    (*(*v16 + 48))(v16, &v20);
    LOBYTE(v20) = 0;
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  std::__shared_weak_count::__release_weak(v14);
}

void sub_1013F4414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  sub_100113648(v23 + 56);
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 96);
  if (v26)
  {
    *(v24 - 88) = v26;
    operator delete(v26);
  }

  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void sub_1013F4480(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        sub_100F11DD4(v8, a2);
        sub_1001135B0(&v9, (a1 + 7));
        v7 = *(v5 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1013F4630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1013F46AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_1001135B0(a1 + 56, a2 + 56);
}

void sub_1013F46F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013F4708(uint64_t a1)
{
  sub_100113648(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1013F4754(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 48))
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1174405120;
        v16[2] = sub_1013F491C;
        v16[3] = &unk_101F370F0;
        v16[5] = v5;
        v17 = 0;
        v8 = *a2;
        if (v8 == 2)
        {
          LOBYTE(v17) = 2;
          *(&v17 + 1) = *(a2 + 1);
          HIBYTE(v17) = a2[3];
        }

        else if (v8 == 1)
        {
          LOBYTE(v17) = 1;
          BYTE1(v17) = a2[1];
        }

        v18 = *(a1 + 64);
        v16[4] = *(a1 + 32);
        v9 = v5[2];
        if (!v9 || (v10 = v5[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
        {
          sub_100013CC4();
        }

        v12 = v11;
        v13 = v5[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101402DDC;
        block[3] = &unk_101F378C8;
        block[5] = v10;
        v15 = v12;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v16;
        dispatch_async(v13, block);
        if (v15)
        {
          sub_100004A34(v15);
        }

        sub_100004A34(v12);
        LOBYTE(v17) = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1013F4910(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1013F491C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3 == 2)
  {
    if (*(a1 + 49) - 1 > 0xA)
    {
      v8 = 0;
    }

    else
    {
      v8 = byte_1019665EE[(*(a1 + 49) - 1)];
    }

    v9 = *(v2 + 80);
    *__p = _NSConcreteStackBlock;
    *&__p[8] = 0x40000000;
    *&__p[16] = sub_100F6E850;
    v31 = &unk_101EF60C8;
    v32 = v9;
    LODWORD(v33) = 1;
    LOBYTE(v34) = 0;
    HIDWORD(v33) = v8;
    sub_100F6E6A4(0x8010C);
    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sVinylProfileIdAsString();
      if (v29 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v12 = asString();
      v13 = *(a1 + 48);
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v25 = &ctu::ResultIsNotError::~ResultIsNotError;
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        else
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v25 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
          ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        }

        __cxa_throw(exception, v26, v25);
      }

      v14 = v12;
      v15 = asString();
      *__p = 136315650;
      *&__p[4] = v11;
      *&__p[12] = 2080;
      *&__p[14] = v14;
      *&__p[22] = 2080;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Deletion of %s failed with error %s (driver error %s)", __p, 0x20u);
      if (v29 < 0)
      {
        operator delete(*buf);
      }
    }

    (*(*(a1 + 32) + 16))();
    v16 = *(a1 + 48);
    if (v16 != 2)
    {
      if (v16 == 1)
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(v21);
      }

      v27 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v27);
    }

    if (*(a1 + 49) == 2)
    {
      v17 = *(v2 + 80);
      v18 = *(a1 + 50);
      v19 = *(a1 + 51);
      *__p = _NSConcreteStackBlock;
      *&__p[8] = 0x40000000;
      *&__p[16] = sub_100F6E440;
      v31 = &unk_101EF6088;
      v32 = v17;
      LODWORD(v33) = 22;
      HIDWORD(v33) = v18;
      v34 = v19;
      sub_100F6E294(0x800F1);
    }
  }

  else
  {
    if (v3 != 1)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v22);
    }

    v4 = *(v2 + 80);
    *__p = _NSConcreteStackBlock;
    *&__p[8] = 0x40000000;
    *&__p[16] = sub_100F6E850;
    v31 = &unk_101EF60C8;
    v32 = v4;
    v33 = 1;
    LOBYTE(v34) = 0;
    sub_100F6E6A4(0x8010C);
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sVinylProfileIdAsString();
      v6 = __p[23] >= 0 ? __p : *__p;
      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Deletion of %s succeeded", buf, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v7 = *(a1 + 48);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v20 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v20);
      }

      v23 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v23);
    }

    (*(*(a1 + 32) + 16))();
  }

  sub_1013ECFD0(v2);
}

void sub_1013F4E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013F4E6C(uint64_t result, uint64_t a2)
{
  *(result + 48) = 0;
  v2 = *(a2 + 48);
  if (v2 == 2)
  {
    *(result + 48) = 2;
    v3 = *(a2 + 49);
    *(result + 51) = *(a2 + 51);
    *(result + 49) = v3;
  }

  else if (v2 == 1)
  {
    *(result + 48) = 1;
    *(result + 49) = *(a2 + 49);
  }

  return result;
}

uint64_t sub_1013F4EB4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013F4ED0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1013F4EE0(uint64_t a1)
{
  if ((*(**(a1 + 64) + 64))(*(a1 + 64)))
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I queue delete as bb may need to be booted", v3, 2u);
    }

    operator new();
  }

  sub_1013F5030(a1);
}

void sub_1013F5030(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Deleting User Profiles", v3, 2u);
  }

  if (*(a1 + 84) == 2)
  {
    sub_1013F0690(a1);
  }
}

uint64_t sub_1013F50B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cancel Previous Install", buf, 2u);
  }

  v5 = *(a1 + 144);
  if (v5 && (v6 = *(v5 + 200)) != 0 && (*(*v6 + 72))(v6))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Cancel Previous Install as Failure", v10, 2u);
    }

    (*(**(*(a1 + 144) + 200) + 32))(*(*(a1 + 144) + 200));
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return (*(a2 + 16))(a2, v8);
}

void sub_1013F51E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 136) - 1) > 1)
  {
    if ((*(a1 + 84) - 1) >= 2)
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'generate sign id' incompatible SIM card", &buf, 2u);
      }

      v14[0] = 2;
      LOBYTE(__p) = 11;
      (*(a5 + 16))(a5, v14);
      if (v14[0] == 1)
      {
        v8 = __p;
        if (__p)
        {
          v16 = __p;
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!sub_1013ED430(a1))
      {
        operator new();
      }

      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'generate sign id' as operations are in 'busy' state", &buf, 2u);
      }

      v11[0] = 2;
      LOBYTE(v12) = 5;
      (*(a5 + 16))(a5, v11);
      if (v11[0] == 1)
      {
        v8 = v12;
        if (v12)
        {
          v13 = v12;
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      buf = 136315138;
      buf_4 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'generate sign id' as vinyl availability is %s", &buf, 0xCu);
    }

    v17[0] = 2;
    LOBYTE(v18) = 2;
    (*(a5 + 16))(a5, v17);
    if (v17[0] == 1)
    {
      v8 = v18;
      if (v18)
      {
        v19 = v18;
LABEL_19:
        operator delete(v8);
      }
    }
  }
}

void sub_1013F5924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  operator delete(v28);
  if (v27)
  {
    operator delete(v27);
  }

  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_1013F5A34(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100F11DD4(v5, a2);
  v3 = *(v4 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013F5BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013F5BC4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013F5BE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013F5BF0(uint64_t a1, char a2)
{
  v2[0] = 2;
  LOBYTE(__p) = a2;
  (*(a1 + 16))(a1, v2);
  if (v2[0] == 1)
  {
    if (__p)
    {
      v4 = __p;
      operator delete(__p);
    }
  }
}

void sub_1013F5C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11)
{
  if (a9 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1013F5C74(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100F11DD4(v5, a2);
  v3 = *(v4 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013F5DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013F5E04(uint64_t a1, char **a2, char **a3, char **a4, uint64_t **a5, uint64_t a6)
{
  if (capabilities::ct::supportsSIMTransferWithSecureIntent(a1))
  {
    if ((*(a1 + 136) - 1) <= 1)
    {
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = asString();
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'secure auth' as vinyl availability is %s", buf, 0xCu);
      }

      v46[0] = 0;
      v48 = 0;
      v44 = 0;
      v45 = 0;
      __p = 0;
      sub_100F068C4(a6, v46, &__p, 258);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }

      if (v48 == 1)
      {
        v13 = v47;
        v14 = v46;
LABEL_15:
        sub_10004EC58(v14, v13);
        return;
      }

      return;
    }

    if (*(a1 + 84) != 2)
    {
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'secure auth' incompatible SIM card", buf, 2u);
      }

      v40[0] = 0;
      v42 = 0;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      sub_100F068C4(a6, v40, &v37, 267);
      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v42 == 1)
      {
        v13 = v41;
        v14 = v40;
        goto LABEL_15;
      }

      return;
    }

    if (sub_1013ED430(a1))
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'secure auth' as operations are in 'busy' state", buf, 2u);
      }

      v34[0] = 0;
      v36 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      sub_100F068C4(a6, v34, &v31, 261);
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v36 == 1)
      {
        v13 = v35;
        v14 = v34;
        goto LABEL_15;
      }

      return;
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    if ((sub_100468E6C(a2, a3, a4, &v28) & 1) == 0)
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Ignoring 'secure auth' encoding payload failed", buf, 2u);
      }

      v25[0] = 0;
      v27 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      sub_100F068C4(a6, v25, &v22, 257);
      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }

      if (v27 == 1)
      {
        sub_10004EC58(v25, v26);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      return;
    }

    v18 = *(a5 + 23);
    if (v18 < 0)
    {
      if (a5[1] != 4)
      {
        goto LABEL_44;
      }

      a5 = *a5;
    }

    else if (v18 != 4)
    {
      goto LABEL_44;
    }

    if (*a5 == 1280595011)
    {
      v20 = &kCttlEuiccCiPkValue;
LABEL_45:
      memset(v21, 0, sizeof(v21));
      sub_100034C50(v21, *v20, v20[1], v20[1] - *v20);
      operator new();
    }

LABEL_44:
    v20 = &kGsmaEuiccCiPkValue;
    goto LABEL_45;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'secure auth' device doesn't support it", buf, 2u);
  }

  v52[0] = 0;
  v54 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  sub_100F068C4(a6, v52, &v49, 267);
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v54 == 1)
  {
    v13 = v53;
    v14 = v52;
    goto LABEL_15;
  }
}

void sub_1013F6738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43)
{
  operator delete(v45);
  if (v44)
  {
    operator delete(v44);
  }

  sub_100004A34(v43);
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1013F6914(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  sub_100F13FE0(&v6, v3 + 48);
  sub_100F11DD4(v7, a2);
  v4 = *(v5 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013F6A90(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1013F6AC4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013F6AE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1013F6AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 136) - 1) > 1)
  {
    if (*(a1 + 84) == 2)
    {
      if (!sub_1013ED430(a1))
      {
        operator new();
      }

      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'set nickname' as operations are in 'busy' state", buf, 2u);
      }

      v10 = 1282;
      return (*(a4 + 16))(a4, &v10);
    }

    else
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'set nickname' incompatible SIM card", buf, 2u);
      }

      v11 = 2818;
      return (*(a4 + 16))(a4, &v11);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'set nickname' as vinyl availability is %s", buf, 0xCu);
    }

    v12 = 514;
    return (*(a4 + 16))(a4, &v12);
  }
}

void sub_1013F71E8(_Unwind_Exception *a1)
{
  operator delete(v3);
  if (v2)
  {
    operator delete(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_1013F7268(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 1174405120;
        v14[2] = sub_1013F7410;
        v14[3] = &unk_101F371E8;
        v14[4] = v5;
        sub_100F11DD4(v15, a2);
        v8 = a1[8];
        v18 = a1[7];
        v19 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = v5[2];
        if (!v9 || (v10 = v5[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
        {
          sub_100013CC4();
        }

        v12 = v11;
        v13 = v5[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101402DDC;
        block[3] = &unk_101F378C8;
        block[5] = v10;
        v21 = v12;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v14;
        dispatch_async(v13, block);
        if (v21)
        {
          sub_100004A34(v21);
        }

        sub_100004A34(v12);
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v15[0] == 1)
        {
          if (__p)
          {
            v17 = __p;
            operator delete(__p);
          }
        }

        v15[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1013F7410(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) - 1 > 0xA)
    {
      v8 = 0;
    }

    else
    {
      v8 = byte_1019665EE[(*(a1 + 48) - 1)];
    }

    v9 = *(*(a1 + 72) + 48);
    LOBYTE(v18) = 2;
    BYTE1(v18) = v8;
    (*(v9 + 16))(v9);
    v10 = *(a1 + 40);
    if (v10 != 2)
    {
      if (v10 == 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(exception);
      }

      v17 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v17);
    }

    if (*(a1 + 48) == 2)
    {
      v11 = *(v2 + 80);
      v12 = *(a1 + 49);
      v13 = *(a1 + 50);
      *&v18 = _NSConcreteStackBlock;
      *(&v18 + 1) = 0x40000000;
      v19 = sub_100F6E440;
      v20 = &unk_101EF6088;
      v21 = v11;
      v22 = 19;
      v23 = v12;
      v24 = v13;
      sub_100F6E294(0x800F1);
    }
  }

  else
  {
    if (v3 != 1)
    {
      v16 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v16);
    }

    v4 = sub_1010FFF3C(a1 + 48);
    if (!v4)
    {
      v14 = *(*(a1 + 72) + 48);
      LOWORD(v18) = 257;
      (*(v14 + 16))(v14);
      sub_1013ECFD0(v2);
      return;
    }

    v5 = v4;
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v18) = 136315138;
      *(&v18 + 4) = sub_1010F59E4(v5);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Setting of profile nickname failed: %s", &v18, 0xCu);
    }

    v7 = *(*(a1 + 72) + 48);
    LOWORD(v18) = 770;
    (*(v7 + 16))(v7);
  }

  sub_1013ED75C(v2, 0);
}

uint64_t sub_1013F76D0(uint64_t a1, uint64_t a2)
{
  result = sub_100F11DD4(a1 + 40, (a2 + 40));
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013F7718(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      *(a1 + 56) = v3;
      operator delete(v3);
    }
  }

  *(a1 + 40) = 0;
}

void *sub_1013F7764(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013F7798(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1013F77E8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  if ((*(a1 + 136) - 1) <= 1)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'delete' as vinyl availability is %s", &buf, 0xCu);
    }

    v39 = 514;
    (a3)[2](a3, &v39);
    return;
  }

  if (sub_1013F7F04(a2))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No profile", &buf, 2u);
    }

    v38 = 258;
    (a3)[2](a3, &v38);
    return;
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    if (*(v8 + 104))
    {
      if (*(v8 + 280) == 1)
      {
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'delete' as we have a profile to delete already", &buf, 2u);
        }

        v35 = 770;
        (a3)[2](a3, &v35);
        return;
      }

      if (*(a1 + 84) == 2 && subscriber::isSimDead())
      {
        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'delete' as the sim state is dead", &buf, 2u);
        }

        v34 = 770;
        (a3)[2](a3, &v34);
        return;
      }

      sub_1013F05F4(&buf);
      if (sub_1013F36E8(a2, &buf))
      {
        if (v47 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v13 = (*(a1 + 140) > 0xBu) | (0x17Fu >> *(a1 + 140));
        if (v47 < 0)
        {
          operator delete(__p);
        }

        if ((v13 & 1) == 0)
        {
          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'delete' as the sim state is unauthorized", &buf, 2u);
          }

          v33 = 770;
          (a3)[2](a3, &v33);
          return;
        }
      }

      sub_1013F05F4(&buf);
      v14 = sub_1013F36E8(a2, &buf);
      if (v47 < 0)
      {
        operator delete(__p);
      }

      if (v14)
      {
        v15 = *(a1 + 144);
        if (*v15 == 1)
        {
          sub_1013F5030(a1);
          return;
        }

        goto LABEL_64;
      }

      v16 = sub_1013F21F8(a1, a2);
      v17 = *(a1 + 40);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v18)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Delete profile", &buf, 2u);
        }

        if (*(v16 + 91) == 1)
        {
          v19 = *(a1 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Delete not allowed (PPR2)", &buf, 2u);
          }

          v31 = 257;
          (a3)[2](a3, &v31);
          return;
        }

        if (*(v16 + 90) == 1)
        {
          if (*(v16 + 92) == 1)
          {
            v22 = *(a1 + 40);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Disable not allowed (PPR1)", &buf, 2u);
            }

            v30 = 258;
            (a3)[2](a3, &v30);
            return;
          }

          v23 = *(a1 + 144);
          if (*(v23 + 136) == 1)
          {
            sub_1000727F0((v23 + 112), v16 + 2);
          }

          else
          {
            *(&buf + 1) = 0;
            __p = 0;
            *&buf = &buf + 8;
            sub_1004C22AC(v23 + 112, &buf);
            sub_100009970(&buf, *(&buf + 1));
            v27 = *(a1 + 144);
            v28 = *(v27 + 80);
            v29 = *(v27 + 88);
            while (v28 != v29)
            {
              if (*(v28 + 90) == 1 && !sub_100071DF8((v28 + 16), (a2 + 16)))
              {
                sub_100005BA0(*(a1 + 144) + 112, (v28 + 16));
              }

              v28 += 216;
            }
          }
        }

        sub_1000727F0((*(a1 + 144) + 144), v16 + 2);
        v15 = *(a1 + 144);
LABEL_64:
        sub_1013F7F44((v15 + 58), a2);
        if (a3)
        {
          v24 = _Block_copy(a3);
        }

        else
        {
          v24 = 0;
        }

        v25 = *(a1 + 144);
        v26 = *(v25 + 288);
        *(v25 + 288) = v24;
        if (v26)
        {
          _Block_release(v26);
        }

        sub_1013ED75C(a1, 0);
        return;
      }

      if (v18)
      {
        sub_10016DCE0(v40, a2);
        sVinylUniversalProfileIdAsString();
        if (SHIBYTE(__p) >= 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf;
        }

        *v43 = 136315138;
        v44 = p_buf;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'delete': %s is not a recognized profile id", v43, 0xCu);
        if (SHIBYTE(__p) < 0)
        {
          operator delete(buf);
        }

        if (v42 < 0)
        {
          operator delete(v41);
        }
      }

      v32 = 258;
      (a3)[2](a3, &v32);
    }

    else
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'delete' as we have no information about profiles yet", &buf, 2u);
      }

      v36 = 770;
      (a3)[2](a3, &v36);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'delete' until we have seen availability", &buf, 2u);
    }

    v37 = 770;
    (a3)[2](a3, &v37);
  }
}

BOOL sub_1013F7F04(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 39);
    if (v1 < 0)
    {
      v1 = *(a1 + 24);
    }

    return v1 == 0;
  }

  else
  {
    return kNoVinylProfile[0] == *a1 && kNoVinylProfile[1] == *(a1 + 8);
  }
}

uint64_t sub_1013F7F44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 16), (a2 + 16));
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    sub_10016DCE0(a1, a2);
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_1013F7FAC(void *a1, unsigned __int8 *a2)
{
  v3 = a1[7];
  if (v3)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_1013F8138;
        v13[3] = &unk_101F37250;
        v13[5] = v5;
        sub_100F11DD4(v14, a2);
        v13[4] = a1[4];
        v8 = v5[2];
        if (!v8 || (v9 = v5[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101402DDC;
        block[3] = &unk_101F378C8;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1013F8138(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3 == 2)
  {
    v8 = *(v2 + 80);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v17 = sub_100F6E850;
    v18 = &unk_101EF60C8;
    v19 = v8;
    v20 = 0xFF00000002;
    LOBYTE(v21) = 0;
    sub_100F6E6A4(0x8010C);
    result = (*(*(a1 + 32) + 16))();
    v9 = *(a1 + 48);
    if (v9 != 2)
    {
      if (v9 == 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(exception);
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v15);
    }

    if (*(a1 + 56) == 2)
    {
      v10 = *(v2 + 80);
      v11 = *(a1 + 57);
      v12 = *(a1 + 58);
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 0x40000000;
      v17 = sub_100F6E440;
      v18 = &unk_101EF6088;
      v19 = v10;
      LODWORD(v20) = 16;
      HIDWORD(v20) = v11;
      v21 = v12;
      return sub_100F6E294(0x800F1);
    }
  }

  else
  {
    if (v3 != 1)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v14);
    }

    v4 = sub_101100E8C(a1 + 56, 2);
    v5 = *(v2 + 80);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v17 = sub_100F6E850;
    v18 = &unk_101EF60C8;
    v19 = v5;
    LODWORD(v20) = 2;
    LOBYTE(v21) = 0;
    HIDWORD(v20) = v4;
    sub_100F6E6A4(0x8010C);
    if (v4)
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = sub_1010F59E4(v4);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Delete profile failed: %s", &buf, 0xCu);
      }

      return (*(*(a1 + 32) + 16))();
    }

    else
    {
      return (*(*(a1 + 32) + 16))();
    }
  }

  return result;
}

void sub_1013F84C4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }
  }

  *(a1 + 48) = 0;
}

void sub_1013F8504(void *a1, unsigned __int8 *a2)
{
  v3 = a1[7];
  if (v3)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_1013F8690;
        v13[3] = &unk_101F372C0;
        v13[5] = v5;
        sub_100F11DD4(v14, a2);
        v13[4] = a1[4];
        v8 = v5[2];
        if (!v8 || (v9 = v5[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101402DDC;
        block[3] = &unk_101F378C8;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1013F8690(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3 == 2)
  {
    v13 = *(v2 + 80);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E850;
    v35 = &unk_101EF60C8;
    v36 = v13;
    v37 = 0xFF00000002;
    LOBYTE(v38) = 1;
    sub_100F6E6A4(0x8010C);
    v14 = *(v2 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = asString();
      v16 = *(a1 + 48);
      if (v16 != 2)
      {
        if (v16 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v30 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_44;
        }

LABEL_43:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v30 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_44:
        __cxa_throw(exception, v29, v30);
      }

      *buf = 136315394;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Reset Memory failed with error:%s (driver error %s)", buf, 0x16u);
    }

    result = (*(*(a1 + 32) + 16))();
    v17 = *(a1 + 48);
    if (v17 != 2)
    {
      if (v17 == 1)
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(v26);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v32);
    }

    if (*(a1 + 56) == 2)
    {
      v18 = *(v2 + 80);
      v19 = *(a1 + 57);
      v20 = *(a1 + 58);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_100F6E440;
      v35 = &unk_101EF6088;
      v36 = v18;
      LODWORD(v37) = 17;
      HIDWORD(v37) = v19;
      v38 = v20;
      return sub_100F6E294(0x800F1);
    }

    return result;
  }

  if (v3 != 1)
  {
    goto LABEL_43;
  }

  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 64) - *(a1 + 56);
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Memory Reset succeeded %lu bytes", buf, 0xCu);
    v6 = *(a1 + 48);
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v27);
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v33);
    }
  }

  sub_1013EC13C(v2, "ResetMemory");
  v7 = *(a1 + 48);
  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(v25);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
  }

  v8 = sub_1011025E8(a1 + 56);
  v9 = *(v2 + 80);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_100F6E850;
  v35 = &unk_101EF60C8;
  v36 = v9;
  LODWORD(v37) = 2;
  LOBYTE(v38) = 1;
  HIDWORD(v37) = v8;
  sub_100F6E6A4(0x8010C);
  if (v8)
  {
    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1010F59E4(v8);
      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Memory reset failure: %s", buf, 0xCu);
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v21 = *(v2 + 144);
    if (v21 && *(v21 + 104) == 1)
    {
      v22 = *(v21 + 80);
      v23 = *(v21 + 88);
      if (v22 != v23)
      {
        while (*(v22 + 89) == 1)
        {
          v22 += 216;
          if (v22 == v23)
          {
            v22 = *(v21 + 88);
            goto LABEL_28;
          }
        }

        if (v22 != v23)
        {
          v24 = v22 + 216;
          if (v22 + 216 != v23)
          {
            do
            {
              if (*(v24 + 89) == 1)
              {
                sub_100F11BEC(v22, v24);
                v22 += 216;
              }

              v24 += 216;
            }

            while (v24 != v23);
            v23 = *(v21 + 88);
          }
        }
      }

LABEL_28:
      sub_1003167A8(v21 + 80, v22, v23);
    }

    return (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_1013F8CCC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 160);
  v6 = 0;
  if (*a2 - 1 <= 1)
  {
    v6 = *a2;
  }

  (*(v3 + 16))(v3, &v6);
  *(*(v2 + 144) + 197) = 0;
  v4 = *(v2 + 168);
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  return sub_1013ED75C(v2, 0);
}

uint64_t sub_1013F8D50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  if (!v4)
  {
    v10 = 257;
    (*(a2 + 16))(a2, &v10);
    LOBYTE(v10) = 0;
    v4 = *(a1 + 144);
  }

  v5 = *(v4 + 200);
  if (v5)
  {
    v6 = (*(*v5 + 72))(v5);
    v4 = *(a1 + 144);
    if (v6)
    {
      (*(**(v4 + 200) + 24))(*(v4 + 200));
      v4 = *(a1 + 144);
    }
  }

  v7 = *(v4 + 216);
  if (v7 && (*(*v7 + 72))(v7))
  {
    (*(**(*(a1 + 144) + 216) + 24))(*(*(a1 + 144) + 216));
  }

  v9 = 257;
  return (*(a2 + 16))(a2, &v9);
}

void sub_1013F8E80(void *a1, int a2, void **a3, uint64_t a4)
{
  v5 = a3;
  v8 = a1[18];
  if (!v8)
  {
    v22 = a1[5];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = subscriber::asString();
      if (*(v5 + 23) >= 0)
      {
        v26 = v5;
      }

      else
      {
        v26 = *v5;
      }

      *buf = 136315394;
      *&buf[4] = v25;
      v44 = 2080;
      v45 = v26;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Model is not present to get:%s for (%s)", buf, 0x16u);
    }

    sub_10000501C(v41, "");
    sub_100EC8E84(a4, v41, 275);
    if ((v42 & 0x80000000) == 0)
    {
      return;
    }

    v23 = v41[0];
LABEL_26:
    operator delete(v23);
    return;
  }

  if (!sub_10016FA58(v8 + 144, a3))
  {
    v24 = a1[5];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315394;
      *&buf[4] = v5;
      v44 = 2080;
      v45 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "(%s) is not a usable profile to read file:(%s)", buf, 0x16u);
    }

    sub_10000501C(__p, "");
    sub_100EC8E84(a4, __p, 258);
    if ((v40 & 0x80000000) == 0)
    {
      return;
    }

    v23 = __p[0];
    goto LABEL_26;
  }

  v9 = a1[18];
  v12 = *(v9 + 176);
  v10 = v9 + 176;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v10;
  do
  {
    v14 = sub_1000068BC((v11 + 32), v5);
    if ((v14 & 0x80u) == 0)
    {
      v13 = v11;
    }

    v11 = *(v11 + ((v14 >> 4) & 8));
  }

  while (v11);
  if (v13 == v10)
  {
    goto LABEL_17;
  }

  if ((sub_1000068BC(v5, (v13 + 32)) & 0x80) != 0)
  {
    goto LABEL_17;
  }

  v15 = a1[18];
  *buf = v5;
  v16 = sub_1011CE454(v15 + 168, v5);
  v19 = *(v16 + 64);
  v17 = v16 + 64;
  v18 = v19;
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v17;
  do
  {
    if (*(v18 + 32) >= a2)
    {
      v20 = v18;
    }

    v18 = *(v18 + 8 * (*(v18 + 32) < a2));
  }

  while (v18);
  if (v20 == v17 || *(v20 + 32) > a2)
  {
LABEL_17:
    v21 = a1[2];
    if (v21)
    {
      if (std::__shared_weak_count::lock(v21))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }

  v27 = a1[5];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = a1[18];
    *buf = v5;
    v29 = sub_1011CE454(v28 + 168, v5);
    v30 = sub_10000BA08(*(v29 + 64), a2);
    if (*(v30 + 23) >= 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = *v30;
    }

    if (*(v5 + 23) >= 0)
    {
      v32 = v5;
    }

    else
    {
      v32 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = v31;
    v44 = 2080;
    v45 = v32;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Reading from cache: %s for (%s)", buf, 0x16u);
  }

  v33 = a1[18];
  *buf = v5;
  v34 = sub_1011CE454(v33 + 168, v5);
  v35 = sub_10000BA08(*(v34 + 64), a2);
  if (*(v35 + 23) < 0)
  {
    sub_100005F2C(&__dst, *v35, v35[1]);
  }

  else
  {
    v36 = *v35;
    v38 = v35[2];
    __dst = v36;
  }

  sub_100EC8E84(a4, &__dst, 0);
  if (SHIBYTE(v38) < 0)
  {
    v23 = __dst;
    goto LABEL_26;
  }
}

void sub_1013F9348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, char a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013F93F8(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[18];
  if (v7)
  {
    if (sub_10016FA58(v7 + 144, a2))
    {
      if (*(a3 + 4) == 2)
      {
        v9 = a1[2];
        if (v9)
        {
          if (std::__shared_weak_count::lock(v9))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      v14 = a1[5];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = subscriber::asString();
        if (a2[23] >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        buf = 136315394;
        *buf_4 = v17;
        v27 = 2080;
        v28 = v18;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s is supported auth type for:(%s)", &buf, 0x16u);
      }

      v20[0] = 0;
      v20[1] = 0;
      v19 = v20;
      sub_100EC7E90(a4, &v19, 257);
      v11 = v20[0];
      v12 = &v19;
    }

    else
    {
      v13 = a1[5];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        if (a2[23] >= 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = *a2;
        }

        buf = 136315138;
        *buf_4 = v16;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "(%s) is not a usable profile for EAP-AKA", &buf, 0xCu);
      }

      v22[0] = 0;
      v22[1] = 0;
      v21 = v22;
      sub_100EC7E90(a4, &v21, 258);
      v11 = v22[0];
      v12 = &v21;
    }
  }

  else
  {
    v10 = a1[5];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (a2[23] >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      buf = 136315138;
      *buf_4 = v15;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Model is not present for EAP-AKA for (%s)", &buf, 0xCu);
    }

    v24[0] = 0;
    v24[1] = 0;
    v23 = v24;
    sub_100EC7E90(a4, &v23, 275);
    v11 = v24[0];
    v12 = &v23;
  }

  sub_10004EC58(v12, v11);
}

void sub_1013F986C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, char a23)
{
  sub_100004A34(v24);
  sub_100004A34(v23);
  _Unwind_Resume(a1);
}

void sub_1013F990C(uint64_t a1)
{
  if ((*(a1 + 136) - 1) <= 1)
  {
    v2 = *(a1 + 40);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    buf = 136315138;
    buf_4 = asString();
    v3 = "#I Ignoring 'test fetch' as vinyl availability is %s";
    v4 = v2;
    v5 = 12;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, &buf, v5);
    return;
  }

  v6 = *(a1 + 144);
  if (!v6)
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v3 = "#I Ignoring 'test fetch' until we have seen availability";
    v4 = v13;
    v5 = 2;
    goto LABEL_17;
  }

  v7 = *(v6 + 200);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Debug: trigger install operation", &buf, 2u);
  }

  v9 = *(a1 + 152);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = **(a1 + 144);
  v11 = *(a1 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 == 2)
  {
    if (v12)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Created Tape operation", &buf, 2u);
    }

    sub_10032E870();
  }

  if (v12)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid card type", &buf, 2u);
  }

  sub_1013ED75C(a1, 0);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_1013F9E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v22 + 104) = v21;
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013F9F1C(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a2;
    if (a2[23] < 0)
    {
      v9 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Debug: select profile %s - %s", buf, 0x16u);
  }

  *&buf[8] = 0uLL;
  *buf = &buf[8];
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v10 = *(a1 + 144);
  if (buf != (v10 + 144))
  {
    sub_1001730B8(buf, *(v10 + 144), (v10 + 152));
    v10 = *(a1 + 144);
  }

  if (&v11 != (v10 + 112) && (*(v10 + 136) & 1) != 0)
  {
    sub_1001730B8(&v11, *(v10 + 112), (v10 + 120));
  }

  switch(a3)
  {
    case 0:
      sub_1000727F0(buf, a2);
      goto LABEL_16;
    case 1:
      sub_1000727F0(buf, a2);
      sub_100073EE8(&v11, a2);
      break;
    case 2:
      sub_100073EE8(buf, a2);
LABEL_16:
      sub_1000727F0(&v11, a2);
      break;
  }

  sub_100112F20(v13, a4);
  sub_1013EAEB0(a1, &v11, buf, v13);
  sub_100112FB8(v13);
  sub_100009970(&v11, v12[0]);
  sub_100009970(buf, *&buf[8]);
}

void sub_1013FA100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char *a18)
{
  sub_100112FB8(&a13);
  sub_100009970(&a10, a11);
  sub_100009970(&a17, a18);
  _Unwind_Resume(a1);
}

void sub_1013FA134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Debug: delete profile", &__p, 2u);
    v6 = *(a1 + 40);
  }

  v12 = a2;
  v13 = a3;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sVinylProfileIdAsString();
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    buf = 136315138;
    *buf_4 = p_p;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Deleting profile %s", &buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  operator new();
}

void sub_1013FA3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v21);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_1013FA400(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Debug: delete all user profiles", v3, 2u);
  }

  sub_1013F4EE0(a1);
}

uint64_t sub_1013FA47C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Sending 'get notifications' command", buf, 2u);
  }

  return VinylCommandDriver::tapeListNotifications();
}

void sub_1013FA544(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    v12 = *(v4 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = asString();
      v14 = *a2;
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v26 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_38;
        }

LABEL_37:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v26 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_38:
        __cxa_throw(exception, v25, v26);
      }

      *buf = 136315394;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I List receipts failed with error %s (driver error %s)", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
    return;
  }

  if (v5 != 1)
  {
    goto LABEL_37;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 2) - *(a2 + 1);
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Get notifications succeeded: %lu bytes", buf, 0xCu);
    v8 = *a2;
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v23);
      }

      v27 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v27);
    }
  }

  sub_1013EC13C(v4, "Notifications");
  memset(buf, 0, sizeof(buf));
  v9 = *a2;
  if (v9 != 1)
  {
    if (v9 == 2)
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      v21 = &ctu::ResultIsError::~ResultIsError;
      ctu::ResultIsError::ResultIsError(v20);
    }

    else
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      v21 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
    }

    __cxa_throw(v20, v22, v21);
  }

  sub_101101278(a2 + 1);
  v10 = xpc_array_create(0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v10) == &_xpc_type_array)
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  xpc_release(v10);
  v15 = *buf;
  v16 = *&buf[8];
  while (v15 != v16)
  {
    v17 = xpc_data_create(*v15, *(v15 + 8) - *v15);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_array_append_value(v11, v17);
    xpc_release(v17);
    v15 += 80;
  }

  v32 = 0;
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(&v31, &object, v18);
  sub_10006DD00(&v32, &v31);
  sub_10000A1EC(&v31);
  xpc_release(object);
  v19 = *(a1 + 32);
  v28[0] = 0;
  sub_100F178A8(v28, &v32);
  (*(v19 + 16))(v19, v28);
  if (v28[0] == 1)
  {
    sub_100010250(&v29);
  }

  v28[0] = 0;
  sub_100010250(&v32);
  xpc_release(v11);
  v32 = buf;
  sub_10113A858(&v32);
}

void sub_1013FAAE4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Adding a 'send notification' operation", v3, 2u);
  }

  sub_1013ED208(a1);
}

void sub_1013FAB50(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sending 'get notification' command", buf, 2u);
  }

  *buf = 0;
  v12 = 0;
  v13 = 0;
  if (sub_101101D20(a2, buf))
  {
    v7 = 0;
    v8 = 0;
    __p = 0;
    sub_100034C50(&__p, *buf, v12, v12 - *buf);
    VinylCommandDriver::tapeGetNotification();
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v9[0] = 2;
    LOBYTE(v10) = 0;
    (*(a3 + 16))(a3, v9);
    if (v9[0] == 1)
    {
      sub_10002D760(&v10);
    }

    v9[0] = 0;
  }

  if (*buf)
  {
    v12 = *buf;
    operator delete(*buf);
  }
}

void sub_1013FACB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 64);
  if (v21)
  {
    *(v19 - 56) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1013FAD0C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    if (a2[8] - 1 > 0xA)
    {
      v10 = 0;
    }

    else
    {
      v10 = byte_1019665EE[(a2[8] - 1)];
    }

    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      v13 = *a2;
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v18 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_21;
        }

LABEL_20:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_21:
        __cxa_throw(exception, v17, v18);
      }

      *buf = 136315394;
      *&buf[4] = v12;
      v25 = 2080;
      v26 = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Get notification failed with error %s (driver error %s)", buf, 0x16u);
    }

    v14 = *(a1 + 32);
    v21 = v10;
    return (*(v14 + 16))();
  }

  if (v5 != 1)
  {
    goto LABEL_20;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 2) - *(a2 + 1);
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Get notification succeeded: %lu bytes", buf, 0xCu);
    v8 = *a2;
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v19);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
    }
  }

  *buf = CFDataCreate(kCFAllocatorDefault, *(a2 + 1), *(a2 + 2) - *(a2 + 1));
  v9 = *(a1 + 32);
  v22[0] = 0;
  sub_10140764C(v22, buf);
  (*(v9 + 16))(v9, v22);
  if (v22[0] == 1)
  {
    sub_10002D760(&v23);
  }

  v22[0] = 0;
  return sub_10002D760(buf);
}

void sub_1013FB070(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sending 'delete notification' command", buf, 2u);
  }

  *buf = 0;
  v12 = 0;
  v13 = 0;
  if (sub_101102290(a2, buf))
  {
    v7 = 0;
    v8 = 0;
    __p = 0;
    sub_100034C50(&__p, *buf, v12, v12 - *buf);
    VinylCommandDriver::tapeDeleteNotification();
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v9[0] = 2;
    LOBYTE(v10) = 0;
    (*(a3 + 16))(a3, v9);
    if (v9[0] == 1)
    {
      sub_10002D760(&v10);
    }

    v9[0] = 0;
  }

  if (*buf)
  {
    v12 = *buf;
    operator delete(*buf);
  }
}

void sub_1013FB1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 64);
  if (v21)
  {
    *(v19 - 56) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1013FB22C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    if (a2[8] - 1 > 0xA)
    {
      v10 = 0;
    }

    else
    {
      v10 = byte_1019665EE[(a2[8] - 1)];
    }

    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      v13 = *a2;
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v18 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_21;
        }

LABEL_20:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_21:
        __cxa_throw(exception, v17, v18);
      }

      *buf = 136315394;
      *&buf[4] = v12;
      v25 = 2080;
      v26 = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Delete notification failed with error %s (driver error %s)", buf, 0x16u);
    }

    v14 = *(a1 + 32);
    v21 = v10;
    return (*(v14 + 16))();
  }

  if (v5 != 1)
  {
    goto LABEL_20;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 2) - *(a2 + 1);
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Delete notification succeeded: %lu bytes", buf, 0xCu);
    v8 = *a2;
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v19);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
    }
  }

  *buf = CFDataCreate(kCFAllocatorDefault, *(a2 + 1), *(a2 + 2) - *(a2 + 1));
  v9 = *(a1 + 32);
  v22[0] = 0;
  sub_10140764C(v22, buf);
  (*(v9 + 16))(v9, v22);
  if (v22[0] == 1)
  {
    sub_10002D760(&v23);
  }

  v22[0] = 0;
  return sub_10002D760(buf);
}

const void **sub_1013FB590(uint64_t a1, uint64_t a2)
{
  v3[0] = 2;
  LOBYTE(v4) = 2;
  result = (*(a2 + 16))(a2, v3);
  if (v3[0] == 1)
  {
    return sub_100010250(&v4);
  }

  return result;
}

void sub_1013FB5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 1)
  {
    sub_100010250((v9 + 8));
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1013FB60C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 136);
  if ((v3 - 1) > 1)
  {
    if (*(a1 + 320) == 1 && ((v3 - 3) & 0xFFFFFFFD) == 0)
    {
      v27 = 0;
      v9 = *(a1 + 144);
      v10 = *(v9 + 104);
      v11 = *(a1 + 40);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10 == 1)
      {
        if (v12)
        {
          v13 = 0x84BDA12F684BDA13 * ((*(v9 + 88) - *(v9 + 80)) >> 3);
          *buf = 134217984;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending back the cached array of profiles (%lu profiles)", buf, 0xCu);
        }

        v14 = xpc_array_create(0, 0);
        if (v14 || (v14 = xpc_null_create()) != 0)
        {
          if (xpc_get_type(v14) == &_xpc_type_array)
          {
            xpc_retain(v14);
            v15 = v14;
          }

          else
          {
            v15 = xpc_null_create();
          }
        }

        else
        {
          v15 = xpc_null_create();
          v14 = 0;
        }

        xpc_release(v14);
        v16 = *(a1 + 144);
        v17 = *(v16 + 80);
        v18 = *(v16 + 88);
        while (v17 != v18)
        {
          v19 = xpc_data_create(v17, 0x10uLL);
          if (!v19)
          {
            v19 = xpc_null_create();
          }

          xpc_array_append_value(v15, v19);
          xpc_release(v19);
          v17 += 216;
        }

        object = v15;
        if (v15)
        {
          xpc_retain(v15);
        }

        else
        {
          object = xpc_null_create();
        }

        xpc::bridge(&v25, &object, v20);
        sub_10006DD00(&v26, &v25);
        v21 = v26;
        *buf = v27;
        v26 = 0;
        v27 = v21;
        sub_100010250(buf);
        sub_100010250(&v26);
        sub_10000A1EC(&v25);
        xpc_release(object);
        xpc_release(v15);
      }

      else if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I No cached profiles available (yet?)", buf, 2u);
      }

      v22[0] = 0;
      sub_100F178A8(v22, &v27);
      (*(a2 + 16))(a2, v22);
      if (v22[0] == 1)
      {
        sub_100010250(&v23);
      }

      v22[0] = 0;
      v8 = &v27;
      return sub_100010250(v8);
    }

    v28[0] = 2;
    v4 = v28;
    v28[8] = 3;
    result = (*(a2 + 16))(a2, v28);
    v6 = v28[0];
  }

  else
  {
    v29[0] = 2;
    v4 = v29;
    v29[8] = 2;
    result = (*(a2 + 16))(a2, v29);
    v6 = v29[0];
  }

  if (v6 != 1)
  {
    return result;
  }

  v8 = (v4 + 8);
  return sub_100010250(v8);
}

void sub_1013FB910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, xpc_object_t object, char a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1013FB9E0(uint64_t a1, uint64_t *a2, void (**a3)(void, void))
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Generating debug Sign Id map", buf, 2u);
  }

  v7 = *(a1 + 84);
  if (v7 == 2)
  {
    *buf = 0;
    v17 = 0;
    v18 = 0;
    if (sub_101102FA8(*(a1 + 144) + 48, a2, buf, 0))
    {
      v12 = 0;
      v13 = 0;
      __p = 0;
      sub_100034C50(&__p, *buf, v17, v17 - *buf);
      v10[1] = _NSConcreteStackBlock;
      v10[2] = 0x40000000;
      v10[3] = sub_1013FC134;
      v10[4] = &unk_101F37470;
      v10[5] = a3;
      v10[6] = a1;
      VinylCommandDriver::signPayload();
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v14[0] = 2;
      LOBYTE(v15) = 3;
      (a3)[2](a3, v14);
      if (v14[0] == 1)
      {
        sub_10002D760(&v15);
      }

      v14[0] = 0;
    }

    v8 = *buf;
    if (*buf)
    {
      v17 = *buf;
LABEL_17:
      operator delete(v8);
    }
  }

  else
  {
    if (v7 == 1)
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      sub_100034C50(&v25, *a2, a2[1], a2[1] - *a2);
      v19 = _NSConcreteStackBlock;
      v20 = 0x40000000;
      v21 = sub_1013FBCC0;
      v22 = &unk_101F37448;
      v23 = a3;
      v24 = a1;
      VinylCommandDriver::getSignIdMap();
      v8 = v25;
      if (!v25)
      {
        return;
      }

      v26 = v25;
      goto LABEL_17;
    }

    v9[0] = 2;
    LOBYTE(v10[0]) = 2;
    (a3)[2](a3, v9);
    if (v9[0] == 1)
    {
      sub_10002D760(v10);
    }
  }
}

void sub_1013FBC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013FBCC0(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    v9 = *(v4 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = *a2;
      if (v11 != 2)
      {
        if (v11 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v20 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_26;
        }

LABEL_25:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v20 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_26:
        __cxa_throw(exception, v19, v20);
      }

      *buf = 136315394;
      *&buf[4] = v10;
      v27 = 2080;
      v28 = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Sign Id map failed with error %s (driver error %s)", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
    return;
  }

  if (v5 != 1)
  {
    goto LABEL_25;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sign Id map generated", buf, 2u);
    v7 = *a2;
    *buf = 0;
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v8 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v8);
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v21);
    }
  }

  else
  {
    *buf = 0;
  }

  *buf = xpc_data_create(a2[1], a2[2] - a2[1]);
  if (!*buf)
  {
    *buf = xpc_null_create();
  }

  v25 = 0;
  xpc::bridge(&v24, buf, v12);
  sub_1001B1A54(&v25, &v24);
  sub_10000A1EC(&v24);
  v13 = *a2;
  if (v13 != 1)
  {
    if (v13 == 2)
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsError::~ResultIsError;
      ctu::ResultIsError::ResultIsError(v15);
    }

    else
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v15);
    }

    __cxa_throw(v15, v17, v16);
  }

  sub_1013EC13C(v4, "DebugSignIdResult");
  v14 = *(a1 + 32);
  v22[0] = 0;
  sub_10140764C(v22, &v25);
  (*(v14 + 16))(v14, v22);
  if (v22[0] == 1)
  {
    sub_10002D760(&v23);
  }

  v22[0] = 0;
  sub_10002D760(&v25);
  xpc_release(*buf);
}

void sub_1013FC134(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    v9 = *(v4 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = *a2;
      if (v11 != 2)
      {
        if (v11 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v20 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_26;
        }

LABEL_25:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v20 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_26:
        __cxa_throw(exception, v19, v20);
      }

      *buf = 136315394;
      *&buf[4] = v10;
      v27 = 2080;
      v28 = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Sign Id map failed with error %s (driver error %s)", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
    return;
  }

  if (v5 != 1)
  {
    goto LABEL_25;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sign Id map generated", buf, 2u);
    v7 = *a2;
    *buf = 0;
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v8 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v8);
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v21);
    }
  }

  else
  {
    *buf = 0;
  }

  *buf = xpc_data_create(a2[1], a2[2] - a2[1]);
  if (!*buf)
  {
    *buf = xpc_null_create();
  }

  v25 = 0;
  xpc::bridge(&v24, buf, v12);
  sub_1001B1A54(&v25, &v24);
  sub_10000A1EC(&v24);
  v13 = *a2;
  if (v13 != 1)
  {
    if (v13 == 2)
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsError::~ResultIsError;
      ctu::ResultIsError::ResultIsError(v15);
    }

    else
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v15);
    }

    __cxa_throw(v15, v17, v16);
  }

  sub_1013EC13C(v4, "DebugSignIdResult");
  v14 = *(a1 + 32);
  v22[0] = 0;
  sub_10140764C(v22, &v25);
  (*(v14 + 16))(v14, v22);
  if (v22[0] == 1)
  {
    sub_10002D760(&v23);
  }

  v22[0] = 0;
  sub_10002D760(&v25);
  xpc_release(*buf);
}

uint64_t sub_1013FC5A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*a2 == 1)
  {
    v7 = *(a2 + 1);
    v6 = 1;
    v3 = &v6;
  }

  else
  {
    v5 = 0;
    v3 = &v5;
  }

  return (*(v2 + 16))(v2, v3);
}

uint64_t sub_1013FC62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I debug tape set profile nickname", v10, 2u);
  }

  return sub_1013F6AF0(a1, a2, a3, a4);
}

void sub_1013FC6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I debug delete tape profile", buf, 2u);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  sub_1013F0790(a1, __p, a3);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1013FC77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013FC798(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Sending 'get tape profiles' command", buf, 2u);
  }

  *buf = 0;
  v8 = 0;
  v9 = 0;
  v3 = capabilities::ct::supportsHydra(v2);
  sub_1010FA3A0(buf, v3);
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_100034C50(&__p, *buf, v8, v8 - *buf);
  VinylCommandDriver::tapeListProfilesInfo();
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (*buf)
  {
    v8 = *buf;
    operator delete(*buf);
  }
}

void sub_1013FC8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 64);
  if (v19)
  {
    *(v17 - 56) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013FC8F0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      v13 = *a2;
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v17 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_23;
        }

LABEL_22:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_23:
        __cxa_throw(exception, v16, v17);
      }

      *buf = 136315394;
      v25 = v12;
      v26 = 2080;
      v27 = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I List UICC Tape profiles failed with error %s (driver error %s)", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
    return;
  }

  if (v5 != 1)
  {
    goto LABEL_22;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 2) - *(a2 + 1);
    *buf = 134217984;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Force listing profiles succeeded: %lu bytes", buf, 0xCu);
    v8 = *a2;
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v18 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v18);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
    }
  }

  sub_1013EC13C(v4, "TapeCardProfiles");
  v9 = *a2;
  if (v9 != 1)
  {
    if (v9 == 2)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(v14);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(v19);
  }

  v10 = *(a1 + 32);
  v21[0] = 0;
  sub_100112278(v21, a2 + 1);
  (*(v10 + 16))(v10, v21);
  if (v21[0] == 1)
  {
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

uint64_t sub_1013FCCD0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Sending 'getTapeDeviceCaps' command", buf, 2u);
  }

  return VinylCommandDriver::tapeGetDeviceCapabilities();
}

uint64_t sub_1013FCD94(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    v8 = *(v4 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return (*(*(a1 + 32) + 16))();
    }

    v9 = asString();
    v10 = *a2;
    if (v10 == 2)
    {
      *buf = 136315394;
      v18 = v9;
      v19 = 2080;
      v20 = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I GetTapeDeviceCapsReq failed with error %s (driver error %s)", buf, 0x16u);
      return (*(*(a1 + 32) + 16))();
    }

    if (v10 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v14 = &ctu::ResultIsNotError::~ResultIsNotError;
      goto LABEL_16;
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    v14 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_16:
    __cxa_throw(exception, v13, v14);
  }

  if (v5 != 1)
  {
    goto LABEL_15;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I GetTapeDeviceCapsReq succeeded", buf, 2u);
    v7 = *a2;
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v15 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v15);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v16);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1013FD058(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Getting debug tape EUICC Info 1", buf, 2u);
  }

  v5 = 8383;
  v6 = 0;
  v8 = 0;
  v9 = 0;
  *buf = 0;
  sub_1000DCF88(buf, &v5, buf, 3);
  v3 = 0;
  v4 = 0;
  __p = 0;
  sub_100034C50(&__p, *buf, v8, v8 - *buf);
  VinylCommandDriver::getTapeEuiccInfo();
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  if (*buf)
  {
    v8 = *buf;
    operator delete(*buf);
  }
}

void sub_1013FD190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  v18 = *(v16 - 64);
  if (v18)
  {
    *(v16 - 56) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013FD1C4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      v13 = *a2;
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v17 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_23;
        }

LABEL_22:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_23:
        __cxa_throw(exception, v16, v17);
      }

      *buf = 136315394;
      v25 = v12;
      v26 = 2080;
      v27 = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Tape Euicc Info1 error %s (driver error %s)", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
    return;
  }

  if (v5 != 1)
  {
    goto LABEL_22;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 2) - *(a2 + 1);
    *buf = 134217984;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I debug getEUICC info 1 succeeded: %lu bytes", buf, 0xCu);
    v8 = *a2;
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v18 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v18);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
    }
  }

  sub_1013EC13C(v4, "TapeEuiccInfo1");
  v9 = *a2;
  if (v9 != 1)
  {
    if (v9 == 2)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(v14);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(v19);
  }

  v10 = *(a1 + 32);
  v21[0] = 0;
  sub_100112278(v21, a2 + 1);
  (*(v10 + 16))(v10, v21);
  if (v21[0] == 1)
  {
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

void sub_1013FD5A4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a1 + 144);
  if (!v4 || *(v4 + 104) != 1)
  {
    goto LABEL_18;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_100112528(&v21, *(v4 + 80), *(v4 + 88), 0x84BDA12F684BDA13 * ((*(v4 + 88) - *(v4 + 80)) >> 3));
  v6 = v21;
  v7 = v22;
  if (v21 == v22)
  {
LABEL_17:
    v24 = &v21;
    sub_100112120(&v24);
LABEL_18:
    v15[0] = 2;
    LOBYTE(__p) = 1;
    v13 = *(a3 + 24);
    if (!v13)
    {
      sub_100022DB4();
    }

    (*(*v13 + 48))(v13, v15);
    if (v15[0] == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v8 = a2[23];
  if (v8 >= 0)
  {
    v9 = a2[23];
  }

  else
  {
    v9 = *(a2 + 1);
  }

  if (v8 < 0)
  {
    a2 = *a2;
  }

  while (1)
  {
    data = v6[1].__r_.__value_.__s.__data_[15];
    v11 = data;
    if (data < 0)
    {
      data = v6[1].__r_.__value_.__l.__data_;
    }

    if (data == v9)
    {
      v12 = v11 >= 0 ? &v6->__r_.__value_.__r.__words[2] : v6->__r_.__value_.__r.__words[2];
      if (!memcmp(v12, a2, v9))
      {
        break;
      }
    }

    v6 += 9;
    if (v6 == v7)
    {
      goto LABEL_17;
    }
  }

  v18[0] = 0;
  sub_100400C00(v18, v6 + 8);
  v14 = *(a3 + 24);
  if (!v14)
  {
    sub_100022DB4();
  }

  (*(*v14 + 48))(v14, v18);
  if (v18[0] == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  v18[0] = 0;
  v24 = &v21;
  sub_100112120(&v24);
}

void sub_1013FD780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  *(v23 - 56) = &a23;
  sub_100112120((v23 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1013FD7E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001135B0(v8, a4);
  sub_1013F417C(a1, a2, a3, v8);
  return sub_100113648(v8);
}

void sub_1013FD870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100113648(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1013FD88C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Debug get session data", buf, 2u);
  }

  return VinylCommandDriver::getSessionData();
}

void sub_1013FD954(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    v12 = *(v4 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = asString();
      v14 = *a2;
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v25 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_40;
        }

LABEL_39:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v25 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_40:
        __cxa_throw(exception, v24, v25);
      }

      *buf = 136315394;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Get Session error %s (driver error %s)", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
    return;
  }

  if (v5 != 1)
  {
    goto LABEL_39;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 2) - *(a2 + 1);
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I debug get session data: %lu bytes", buf, 0xCu);
    v8 = *a2;
    memset(buf, 0, sizeof(buf));
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v9 = __cxa_allocate_exception(0x10uLL);
        v10 = &ctu::ResultIsError::~ResultIsError;
        ctu::ResultIsError::ResultIsError(v9);
      }

      else
      {
        v9 = __cxa_allocate_exception(0x10uLL);
        v10 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(v9);
      }

      __cxa_throw(v9, v11, v10);
    }
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  if (sub_1011029DC((a2 + 8)))
  {
    v15 = xpc_array_create(0, 0);
    if (v15 || (v15 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v15) == &_xpc_type_array)
      {
        xpc_retain(v15);
        v16 = v15;
      }

      else
      {
        v16 = xpc_null_create();
      }
    }

    else
    {
      v16 = xpc_null_create();
      v15 = 0;
    }

    xpc_release(v15);
    v17 = *buf;
    v18 = *&buf[8];
    while (v17 != v18)
    {
      v19 = v17;
      if (*(v17 + 23) < 0)
      {
        v19 = *v17;
      }

      v20 = xpc_string_create(v19);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      xpc_array_append_value(v16, v20);
      xpc_release(v20);
      v17 += 24;
    }

    v30 = 0;
    object = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::bridge(&v29, &object, v21);
    sub_10006DD00(&v30, &v29);
    sub_10000A1EC(&v29);
    xpc_release(object);
    v22 = *(a1 + 32);
    v26[0] = 0;
    sub_100F178A8(v26, &v30);
    (*(v22 + 16))(v22, v26);
    if (v26[0] == 1)
    {
      sub_100010250(&v27);
    }

    v26[0] = 0;
    sub_100010250(&v30);
    xpc_release(v16);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v30 = buf;
  sub_1000087B4(&v30);
}

void sub_1013FDDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, xpc_object_t object, char a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1013FDECC(uint64_t a1, char **a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Debug clear session data", buf, 2u);
  }

  *buf = 0;
  v8 = 0;
  v9 = 0;
  if (sub_1011028CC(a2, buf))
  {
    v5 = 0;
    v6 = 0;
    __p = 0;
    sub_100034C50(&__p, *buf, v8, v8 - *buf);
    VinylCommandDriver::clearSessionData();
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }

  if (*buf)
  {
    v8 = *buf;
    operator delete(*buf);
  }
}

void sub_1013FDFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 64);
  if (v19)
  {
    *(v17 - 56) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013FE028(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      return (*(*(a1 + 32) + 16))();
    }

    goto LABEL_11;
  }

  v6 = *(*(a1 + 40) + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    v8 = *a2;
    if (v8 != 2)
    {
      if (v8 == 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(exception);
        v11 = &ctu::ResultIsNotError::~ResultIsNotError;
        goto LABEL_12;
      }

LABEL_11:
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      v11 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_12:
      __cxa_throw(exception, v10, v11);
    }

    *buf = 136315394;
    v13 = v7;
    v14 = 2080;
    v15 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Clear Session error %s (driver error %s)", buf, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1013FE21C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Getting debug tape EUICC Challenge", buf, 2u);
  }

  v5 = 11967;
  v6 = 0;
  v8 = 0;
  v9 = 0;
  *buf = 0;
  sub_1000DCF88(buf, &v5, buf, 3);
  v3 = 0;
  v4 = 0;
  __p = 0;
  sub_100034C50(&__p, *buf, v8, v8 - *buf);
  VinylCommandDriver::getTapeEuiccChallenge();
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  if (*buf)
  {
    v8 = *buf;
    operator delete(*buf);
  }
}

void sub_1013FE354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  v18 = *(v16 - 64);
  if (v18)
  {
    *(v16 - 56) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013FE388(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (v5 == 2)
  {
    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      v13 = *a2;
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
          v17 = &ctu::ResultIsNotError::~ResultIsNotError;
          goto LABEL_23;
        }

LABEL_22:
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_23:
        __cxa_throw(exception, v16, v17);
      }

      *buf = 136315394;
      v25 = v12;
      v26 = 2080;
      v27 = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Tape Euicc Challenge error %s (driver error %s)", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
    return;
  }

  if (v5 != 1)
  {
    goto LABEL_22;
  }

  v6 = *(v4 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 2) - *(a2 + 1);
    *buf = 134217984;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I debug getEUICC challenge succeeded: %lu bytes", buf, 0xCu);
    v8 = *a2;
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v18 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v18);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
    }
  }

  sub_1013EC13C(v4, "TapeEuiccChallenge");
  v9 = *a2;
  if (v9 != 1)
  {
    if (v9 == 2)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(v14);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(v19);
  }

  v10 = *(a1 + 32);
  v21[0] = 0;
  sub_100112278(v21, a2 + 1);
  (*(v10 + 16))(v10, v21);
  if (v21[0] == 1)
  {
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

uint64_t sub_1013FE768(void *a1, int a2, void **a3, uint64_t a4)
{
  sub_100EC93F8(v8, a4);
  sub_1013F8E80(a1, a2, a3, v8);
  return sub_1003F35D0(v8);
}

void sub_1013FE7F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003F35D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1013FE810(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  sub_100EC8340(v8, a4);
  sub_1013F93F8(a1, a2, a3, v8);
  return sub_1004F2D58(v8);
}

void sub_1013FE89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004F2D58(va);
  _Unwind_Resume(a1);
}

void sub_1013FE8B8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = *(a1 + 40);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Get firmware update data", &buf, 2u);
  }

  if ((a4 & 1) != 0 || (v20 = capabilities::ct::supportsVinylFirmwareUpdate(v8), v20) && !capabilities::euicc::supportsEOS(v20))
  {
    if (!*(a1 + 376) && !*(a1 + 392))
    {
      Registry::getTimerService(&buf, *(a1 + 48));
      v9 = buf;
      sub_10000501C(__p, "Vinyl Firmware Info");
      v10 = *(a1 + 24);
      object = v10;
      if (v10)
      {
        dispatch_retain(v10);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = sub_1013FF0D0;
      aBlock[3] = &unk_101F375A8;
      aBlock[4] = a1;
      v28 = _Block_copy(aBlock);
      sub_100D23364(v9, __p, 0, 20000000, &object, &v28);
      v11 = v32;
      v32 = 0;
      v12 = *(a1 + 392);
      *(a1 + 392) = v11;
      if (v12)
      {
        (*(*v12 + 8))(v12);
        v13 = v32;
        v32 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      if (v28)
      {
        _Block_release(v28);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(&buf + 1))
      {
        sub_100004A34(*(&buf + 1));
      }
    }

    if (a3)
    {
      a3 = _Block_copy(a3);
    }

    v14 = *(a1 + 352);
    v15 = *(a1 + 344);
    if (v14 == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = ((v14 - v15) << 6) - 1;
    }

    v18 = *(a1 + 368);
    v17 = *(a1 + 376);
    v19 = v17 + v18;
    if (v16 == v17 + v18)
    {
      if (v18 < 0x200)
      {
        v22 = *(a1 + 360);
        v23 = *(a1 + 336);
        if (v14 - v15 < (v22 - v23))
        {
          operator new();
        }

        if (v22 == v23)
        {
          v24 = 1;
        }

        else
        {
          v24 = (v22 - v23) >> 2;
        }

        sub_100EF4E80(v24);
      }

      *(a1 + 368) = v18 - 512;
      *&buf = *v15;
      *(a1 + 344) = v15 + 8;
      sub_1010F098C((a1 + 336), &buf);
      v15 = *(a1 + 344);
      v17 = *(a1 + 376);
      v19 = *(a1 + 368) + v17;
    }

    *(*&v15[(v19 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v19 & 0x1FF)) = a3;
    v25 = v17 + 1;
    *(a1 + 376) = v17 + 1;
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Enqueuing request, requests waiting: %lu", &buf, 0xCu);
    }

    sub_1013ED75C(a1, 0);
  }

  else
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Preflight vinyl slot id unknown", &buf, 2u);
    }

    if (a3)
    {
      *&buf = 0;
      LOBYTE(v33) = 0;
      sub_1001140B4(&v33, &buf);
      (*(a3 + 2))(a3, &v33);
      if (v33 == 1)
      {
        sub_10001021C(&v34);
      }

      LOBYTE(v33) = 0;
      sub_10001021C(&buf);
    }
  }
}

void sub_1013FEFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27)
{
  operator delete(v29);
  if (v28)
  {
    operator delete(v28);
  }

  if (v27)
  {
    _Block_release(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013FF0D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Get firmware update data timed out", buf, 2u);
  }

  while (v1[47])
  {
    v3 = v1[46];
    v4 = *(v1[43] + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8));
    v6 = 0;
    sub_1013EE1B8(*(v4 + 8 * (v3 & 0x1FF)), &v6);
    sub_10001021C(&v6);
    sub_1014033B4((v1 + 42));
  }

  result = v1[49];
  if (result)
  {
    (*(*result + 16))(result);
    result = v1[49];
    v1[49] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_1013FF1D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1013FF1E8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 40);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x14802000000;
  v22[3] = sub_1013FF4D0;
  v22[4] = sub_1013FF594;
  v23 = 0u;
  memset(&v22[5], 0, 272);
  v4 = *a2;
  if (v4 == 2)
  {
    LOBYTE(v22[5]) = 2;
    LOWORD(v22[6]) = *(a2 + 4);
    BYTE2(v22[6]) = a2[10];
  }

  else if (v4 == 1)
  {
    LOBYTE(v22[5]) = 1;
    v5 = *(a2 + 216);
    *&v22[30] = *(a2 + 200);
    *&v22[32] = v5;
    v6 = *(a2 + 248);
    *&v22[34] = *(a2 + 232);
    *&v22[36] = v6;
    v7 = *(a2 + 152);
    *&v22[22] = *(a2 + 136);
    *&v22[24] = v7;
    v8 = *(a2 + 184);
    *&v22[26] = *(a2 + 168);
    *&v22[28] = v8;
    v9 = *(a2 + 88);
    *&v22[14] = *(a2 + 72);
    *&v22[16] = v9;
    v10 = *(a2 + 120);
    *&v22[18] = *(a2 + 104);
    *&v22[20] = v10;
    v11 = *(a2 + 24);
    *&v22[6] = *(a2 + 8);
    *&v22[8] = v11;
    v12 = *(a2 + 56);
    *&v22[10] = *(a2 + 40);
    *&v22[12] = v12;
    v22[38] = 0;
    v23 = 0uLL;
    sub_100034C50(&v22[38], *(a2 + 33), *(a2 + 34), *(a2 + 34) - *(a2 + 33));
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = sub_1013FF5D4;
  v19[3] = &unk_101F375D0;
  v13 = *(a1 + 32);
  v19[5] = v22;
  v19[6] = v3;
  v19[4] = v13;
  v14 = v3[2];
  if (!v14 || (v15 = v3[1], (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    sub_100013CC4();
  }

  v17 = v16;
  v18 = v3[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_101402DDC;
  block[3] = &unk_101F378C8;
  block[5] = v15;
  v21 = v17;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v19;
  dispatch_async(v18, block);
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_100004A34(v17);
  _Block_object_dispose(v22, 8);
  if (LOBYTE(v22[5]) == 1)
  {
    if (v22[38])
    {
      *&v23 = v22[38];
      operator delete(v22[38]);
    }
  }
}

void sub_1013FF494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62)
{
  if (a28 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013FF4D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0u;
  *(result + 296) = 0u;
  *(result + 312) = 0u;
  *(result + 264) = 0u;
  *(result + 280) = 0u;
  *(result + 232) = 0u;
  *(result + 248) = 0u;
  *(result + 200) = 0u;
  *(result + 216) = 0u;
  *(result + 168) = 0u;
  *(result + 184) = 0u;
  *(result + 136) = 0u;
  *(result + 152) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 56) = 0u;
  v2 = *(a2 + 40);
  if (v2 == 2)
  {
    *(result + 40) = 2;
    v15 = *(a2 + 48);
    *(result + 50) = *(a2 + 50);
    *(result + 48) = v15;
  }

  else if (v2 == 1)
  {
    *(result + 40) = 1;
    v3 = *(a2 + 48);
    v4 = *(a2 + 64);
    v5 = *(a2 + 96);
    *(result + 80) = *(a2 + 80);
    *(result + 96) = v5;
    *(result + 48) = v3;
    *(result + 64) = v4;
    v6 = *(a2 + 112);
    v7 = *(a2 + 128);
    v8 = *(a2 + 160);
    *(result + 144) = *(a2 + 144);
    *(result + 160) = v8;
    *(result + 112) = v6;
    *(result + 128) = v7;
    v9 = *(a2 + 176);
    v10 = *(a2 + 192);
    v11 = *(a2 + 224);
    *(result + 208) = *(a2 + 208);
    *(result + 224) = v11;
    *(result + 176) = v9;
    *(result + 192) = v10;
    v12 = *(a2 + 240);
    v13 = *(a2 + 256);
    v14 = *(a2 + 288);
    *(result + 272) = *(a2 + 272);
    *(result + 288) = v14;
    *(result + 240) = v12;
    *(result + 256) = v13;
    *(result + 304) = 0;
    *(result + 312) = 0;
    *(result + 320) = 0;
    *(result + 304) = *(a2 + 304);
    *(result + 320) = *(a2 + 320);
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
  }

  return result;
}

void sub_1013FF594(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 304);
    if (v2)
    {
      *(a1 + 312) = v2;
      operator delete(v2);
    }
  }

  *(a1 + 40) = 0;
}

uint64_t sub_1013FF5D4(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  v4 = v3[40];
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v80 = 0;
      v5 = kCommCenterPreferencesNoBackupAppID;
      *object = CFPreferencesCopyValue(@"VinylFailureSent", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100138C38(&v80, object);
      if (v80)
      {
        v81 = 0;
        ctu::cf_to_xpc(object, v80, v6);
        v7 = *object;
        v81 = *object;
        if (*object && xpc_get_type(*object) == &_xpc_type_dictionary)
        {
          xpc_retain(v7);
        }

        else
        {
          v81 = xpc_null_create();
        }

        xpc_release(*object);
        *object = &v81;
        *&object[8] = "Sent";
        sub_100006354(object, &v79);
        v17 = xpc::dyn_cast_or_default(&v79, 0, v22);
        xpc_release(v79);
        xpc_release(v81);
      }

      else
      {
        v17 = 0;
      }

      v23 = *(a1[5] + 8);
      v24 = *(v23 + 40);
      if (v24 != 1)
      {
        if (v24 == 2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v54 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(exception);
LABEL_90:
          goto LABEL_98;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        v54 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_97:
LABEL_98:
        __cxa_throw(exception, v62, v54);
      }

      if (*(v23 + 65) == 1)
      {
        if (v17)
        {
          goto LABEL_46;
        }

        v25 = *(v2 + 80);
        *object = _NSConcreteStackBlock;
        *&object[8] = 0x40000000;
        *&object[16] = sub_100F6E658;
        v83 = &unk_101EF60A8;
        v84 = v25;
        v85 = 1;
        sub_100F6E4AC(0x80103);
      }

      else if (!v17)
      {
        goto LABEL_46;
      }

      v81 = 0;
      v26 = xpc_dictionary_create(0, 0, 0);
      v27 = v26;
      if (v26)
      {
        v81 = v26;
      }

      else
      {
        v27 = xpc_null_create();
        v81 = v27;
        if (!v27)
        {
          v28 = xpc_null_create();
          v27 = 0;
          goto LABEL_38;
        }
      }

      if (xpc_get_type(v27) == &_xpc_type_dictionary)
      {
        xpc_retain(v27);
LABEL_39:
        xpc_release(v27);
        v29 = *(a1[5] + 8);
        v30 = *(v29 + 40);
        if (v30 != 1)
        {
          if (v30 == 2)
          {
            v59 = __cxa_allocate_exception(0x10uLL);
            v60 = &ctu::ResultIsError::~ResultIsError;
            ctu::ResultIsError::ResultIsError(v59);
          }

          else
          {
            v59 = __cxa_allocate_exception(0x10uLL);
            v60 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
            ctu::ResultIsEmptyError::ResultIsEmptyError(v59);
          }

          __cxa_throw(v59, v61, v60);
        }

        v77 = xpc_BOOL_create(*(v29 + 65) == 1);
        if (!v77)
        {
          v77 = xpc_null_create();
        }

        *object = &v81;
        *&object[8] = "Sent";
        sub_10000F688(object, &v77, &v78);
        xpc_release(v78);
        v78 = 0;
        xpc_release(v77);
        v77 = 0;
        *object = 0;
        v79 = v81;
        if (v81)
        {
          xpc_retain(v81);
        }

        else
        {
          v79 = xpc_null_create();
        }

        xpc::bridge(object, &v79, v31);
        xpc_release(v79);
        CFPreferencesSetValue(@"VinylFailureSent", *object, v5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        CFPreferencesSynchronize(v5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        sub_10000A1EC(object);
        xpc_release(v81);
        v23 = *(a1[5] + 8);
        v32 = *(v23 + 40);
        if (v32 == 1)
        {
LABEL_46:
          if (*(v23 + 261) == 1989270689)
          {
            v33 = *(v2 + 40);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *object = 0;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#E Vinyl Firmware is too old to update, pretend like it doesn't exist", object, 2u);
            }

            v34 = a1[4];
            *object = 0;
            LOBYTE(v75) = 0;
            sub_1001140B4(&v75, object);
            (*(v34 + 16))(v34, &v75);
            if (v75 == 1)
            {
              sub_10001021C(&v76);
            }

            LOBYTE(v75) = 0;
            v35 = object;
            goto LABEL_75;
          }

          if (*(v23 + 300))
          {
            v81 = 0;
LABEL_70:
            sub_100467AE8(v23 + 48, (*(v2 + 144) + 72), (v2 + 140), (v2 + 136), &v81);
            v50 = *(v2 + 40);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *object = 138412290;
              *&object[4] = v81;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Get firmware update data success, %@", object, 0xCu);
            }

            v51 = a1[4];
            v73[0] = 0;
            sub_100112738(v73, &v81);
            (*(v51 + 16))(v51, v73);
            if (v73[0] == 1)
            {
              sub_10001021C(&v74);
            }

            v73[0] = 0;
            v35 = &v81;
LABEL_75:
            sub_10001021C(v35);
            v16 = &v80;
LABEL_76:
            sub_10001021C(v16);
            return sub_1013ED75C(v2, 0);
          }

          v79 = 0;
          (*(**(v2 + 64) + 72))(object);
          ServiceMap = Registry::getServiceMap(*object);
          v37 = ServiceMap;
          if (v38 < 0)
          {
            v39 = (v38 & 0x7FFFFFFFFFFFFFFFLL);
            v40 = 5381;
            do
            {
              v38 = v40;
              v41 = *v39++;
              v40 = (33 * v40) ^ v41;
            }

            while (v41);
          }

          std::mutex::lock(ServiceMap);
          v81 = v38;
          v42 = sub_100009510(&v37[1].__m_.__sig, &v81);
          if (v42)
          {
            v44 = v42[3];
            v43 = v42[4];
            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v37);
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v43);
              v45 = 0;
LABEL_62:
              (*(*v44 + 184))(&v79, v44);
              if ((v45 & 1) == 0)
              {
                sub_100004A34(v43);
              }

              if (*&object[8])
              {
                sub_100004A34(*&object[8]);
              }

              if (v79)
              {
                *object = 0;
                ctu::cf::assign(object, v79, v46);
                v47 = *(a1[5] + 8);
                v48 = *(v47 + 40);
                if (v48 != 1)
                {
                  if (v48 == 2)
                  {
                    v67 = __cxa_allocate_exception(0x10uLL);
                    v68 = &ctu::ResultIsError::~ResultIsError;
                    ctu::ResultIsError::ResultIsError(v67);
                  }

                  else
                  {
                    v67 = __cxa_allocate_exception(0x10uLL);
                    v68 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                    ctu::ResultIsEmptyError::ResultIsEmptyError(v67);
                  }

                  __cxa_throw(v67, v69, v68);
                }

                *(v47 + 300) = *object;
              }

              sub_100029A48(&v79);
              v23 = *(a1[5] + 8);
              v49 = *(v23 + 40);
              v81 = 0;
              if (v49 != 1)
              {
                if (v49 == 2)
                {
                  v64 = __cxa_allocate_exception(0x10uLL);
                  v65 = &ctu::ResultIsError::~ResultIsError;
                  ctu::ResultIsError::ResultIsError(v64);
                }

                else
                {
                  v64 = __cxa_allocate_exception(0x10uLL);
                  v65 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                  ctu::ResultIsEmptyError::ResultIsEmptyError(v64);
                }

                __cxa_throw(v64, v66, v65);
              }

              goto LABEL_70;
            }
          }

          else
          {
            v44 = 0;
          }

          std::mutex::unlock(v37);
          v43 = 0;
          v45 = 1;
          goto LABEL_62;
        }

        if (v32 == 2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v54 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(exception);
          goto LABEL_90;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        v54 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        goto LABEL_97;
      }

      v28 = xpc_null_create();
LABEL_38:
      v81 = v28;
      goto LABEL_39;
    }

    goto LABEL_91;
  }

  if (v3[48] - 1 > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = byte_1019665EE[(v3[48] - 1)];
  }

  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asString();
    v11 = *(*(a1[5] + 8) + 40);
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        v55 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(v55);
        v57 = &ctu::ResultIsNotError::~ResultIsNotError;
        goto LABEL_92;
      }

LABEL_91:
      v55 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v55);
      v57 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_92:
      __cxa_throw(v55, v56, v57);
    }

    *object = 136315394;
    *&object[4] = v10;
    *&object[12] = 2080;
    *&object[14] = asString();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E Get firmware update data error : %s, driver error: %s", object, 0x16u);
    v3 = *(a1[5] + 8);
    v12 = v3[40];
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        v58 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(v58);
      }

      v63 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v63);
    }
  }

  v13 = v3[48];
  if (v13 == 2)
  {
    v18 = *(v2 + 80);
    v19 = v3[49];
    v20 = v3[50];
    *object = _NSConcreteStackBlock;
    *&object[8] = 0x40000000;
    *&object[16] = sub_100F6E440;
    v83 = &unk_101EF6088;
    v84 = v18;
    v85 = 64;
    v86 = v19;
    v87 = v20;
    sub_100F6E294(0x800F1);
  }

  else if (v13 == 10)
  {
    v14 = *(v2 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *object = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I return empty as no hardware present", object, 2u);
    }

    v15 = a1[4];
    *object = 0;
    LOBYTE(v71) = 0;
    sub_1001140B4(&v71, object);
    (*(v15 + 16))(v15, &v71);
    if (v71 == 1)
    {
      sub_10001021C(&v72);
    }

    LOBYTE(v71) = 0;
    v16 = object;
    goto LABEL_76;
  }

  v21 = a1[4];
  v70 = v8;
  (*(v21 + 16))();
  return sub_1013ED75C(v2, 0);
}

void sub_1014000D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20, const void *a21, xpc_object_t object, char a23, uint64_t a24)
{
  __cxa_free_exception(v24);
  sub_100029A48(&a20);
  sub_10001021C(&a21);
  _Unwind_Resume(a1);
}

void sub_1014002E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asString();
    v4 = asString(*(a1 + 320));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v4;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v41 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fAvailability = %s, fDriverReady = %s, fSimState = %s", &buf, 0x20u);
    v2 = *(a1 + 40);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      p_buf = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      v7 = *(a1 + 144);
      v8 = (v7 + 24);
      if (*(v7 + 47) < 0)
      {
        v8 = *v8;
      }

      *v48 = 136315394;
      v49 = p_buf;
      v50 = 2080;
      v51 = v8;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CSN=%s, version=%s", v48, 0x16u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v5 = *(a1 + 144);
      v2 = *(a1 + 40);
    }

    if (*(v5 + 104) == 1 && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0x84BDA12F684BDA13 * ((*(v5 + 88) - *(v5 + 80)) >> 3);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Profiles: %lu detected; ", &buf, 0xCu);
      v5 = *(a1 + 144);
      v2 = *(a1 + 40);
    }

    v10 = *(v5 + 136);
    v11 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (v10 == 1)
    {
      if (v11)
      {
        sub_100074B94(*(v5 + 112), (v5 + 120), ",", 1, &buf);
        v12 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        *v48 = 136315138;
        v49 = v12;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Expected enabled profiles: [%s]", v48, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }
    }

    else if (v11)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Have not received user selected info", &buf, 2u);
    }

    v13 = *(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    v15 = *(a1 + 144);
    if (v14)
    {
      sub_100074B94(*(v15 + 144), (v15 + 152), ",", 1, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &buf;
      }

      else
      {
        v16 = buf.__r_.__value_.__r.__words[0];
      }

      *v48 = 136315138;
      v49 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Usable profiles: %s", v48, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v15 = *(a1 + 144);
    }

    v17 = *(v15 + 168);
    v18 = (v15 + 176);
    if (v17 != (v15 + 176))
    {
      do
      {
        v19 = *(a1 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v17[4];
          if (*(v17 + 55) >= 0)
          {
            v20 = (v17 + 4);
          }

          if (v17[9])
          {
            v21 = "yes";
          }

          else
          {
            v21 = "no";
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v20;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Profile: %s, Has data:%s", &buf, 0x16u);
        }

        v22 = v17[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v17[2];
            v24 = *v23 == v17;
            v17 = v23;
          }

          while (!v24);
        }

        v17 = v23;
      }

      while (v23 != v18);
      v15 = *(a1 + 144);
    }

    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = asString(*(v15 + 192));
      v27 = asString(*(*(a1 + 144) + 193));
      v28 = asString(*(*(a1 + 144) + 194));
      v29 = asString(*(*(a1 + 144) + 195));
      v30 = asString(*(*(a1 + 144) + 196));
      v31 = asString(*(*(a1 + 144) + 198));
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
      *(buf.__r_.__value_.__r.__words + 4) = v26;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v27;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v41 = v28;
      v42 = 2080;
      v43 = v29;
      v44 = 2080;
      v45 = v30;
      v46 = 2080;
      v47 = v31;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I fProfileChangeInProgress = %s, fBlockedByProfileUpdate = %s, fFetchProfilesInProgress = %s, fDeactivationAssertion = %s, fInstallReplaceOperationAssertion = %s, fEidVerificationFailed = %s", &buf, 0x3Eu);
      v15 = *(a1 + 144);
    }

    v32 = *(v15 + 216);
    if (v32)
    {
      (*(*v32 + 80))(v32);
    }

    else
    {
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I fReceiptsOperation = none", &buf, 2u);
      }
    }

    v34 = *(*(a1 + 144) + 200);
    if (v34)
    {
      (*(*v34 + 80))(v34);
    }

    else
    {
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I fInstallOperation = none", &buf, 2u);
      }
    }

    v36 = *(*(a1 + 144) + 328);
    v2 = *(a1 + 40);
    if (v36)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Current Vinyl Task:", &buf, 2u);
        v36 = *(*(a1 + 144) + 328);
      }

      (*(*v36 + 40))(v36);
      v2 = *(a1 + 40);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v37 = (*(*(a1 + 144) + 304) - *(*(a1 + 144) + 296)) >> 4;
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = v37;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %lu Vinyl Tasks", &buf, 0xCu);
      v2 = *(a1 + 40);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(a1 + 376);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v38;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Waiting firmware callbacks: %lu", &buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *(a1 + 216);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v39;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %lu Signed payload operations", &buf, 0xCu);
  }
}

void sub_101400A3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[18];
  if (v6 && *(v6 + 198) == 1)
  {
    v7 = a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I EID verification pairing has failed, ignore any profile enablements!", buf, 2u);
    }
  }

  else
  {
    v8 = a1[2];
    if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      sub_100013CC4();
    }

    v11 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
    *buf = 0;
    v16 = 0;
    v17 = 0;
    if (sub_1011005CC(a2, 1, 0, buf))
    {
      v13 = 0;
      v14 = 0;
      __p = 0;
      sub_100034C50(&__p, *buf, v16, v16 - *buf);
      v18 = _NSConcreteStackBlock;
      v19 = 1174405120;
      v20 = sub_101400CDC;
      v21 = &unk_101F37618;
      v22 = a1;
      v23 = v9;
      v24 = v11;
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_10140766C(v25, a3);
      VinylCommandDriver::enableTapeProfile();
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }

      sub_100F18F08(v25);
      if (v24)
      {
        std::__shared_weak_count::__release_weak(v24);
      }
    }

    else
    {
      sub_101400C8C(*(a3 + 24), 7);
    }

    if (*buf)
    {
      v16 = *buf;
      operator delete(*buf);
    }

    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_101400C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  sub_100F18F08(v24 + 56);
  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_101400C8C(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void sub_101400CDC(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        sub_10140766C(&v8, (a1 + 7));
        sub_100F11DD4(v9, a2);
        v7 = *(v5 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_101400E80(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_101400EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10140766C(a1 + 56, a2 + 56);
}

void sub_101400F00(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_101400F18(uint64_t a1)
{
  sub_100F18F08(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_101400F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4 || (v7 = *(a1 + 8), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    sub_100013CC4();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (sub_1011005CC(a2, 0, 0, &v13))
  {
    v11 = 0;
    v12 = 0;
    __p = 0;
    sub_100034C50(&__p, v13, v14, v14 - v13);
    v16 = _NSConcreteStackBlock;
    v17 = 1174405120;
    v18 = sub_101401164;
    v19 = &unk_101F37648;
    v20 = a1;
    v21 = v7;
    v22 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_10140766C(v23, a3);
    VinylCommandDriver::disableTapeProfile();
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    sub_100F18F08(v23);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  else
  {
    sub_101400C8C(*(a3 + 24), 7);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_10140110C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  sub_100F18F08(v22 + 56);
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

void sub_101401164(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        sub_100F11DD4(v8, a2);
        sub_10140766C(&v9, (a1 + 7));
        v7 = *(v5 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_101401314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_101401390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v16 = *(a2 + 16);
  }

  v5 = sub_101100CD8(__dst, &v17);
  v6 = v5;
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_101400C8C(*(a3 + 24), 7);
    goto LABEL_15;
  }

  operator delete(__dst[0]);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_6:
  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(a1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    sub_100013CC4();
  }

  v10 = v9;
  p_shared_weak_owners = &v9->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_100034C50(&__p, v17, v18, v18 - v17);
  v20 = _NSConcreteStackBlock;
  v21 = 1174405120;
  v22 = sub_1014015F0;
  v23 = &unk_101F376A8;
  v24 = a1;
  v25 = v8;
  v26 = v10;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  sub_10140766C(v27, a3);
  VinylCommandDriver::deleteTapeProfile();
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  sub_100F18F08(v27);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v10);
LABEL_15:
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_101401574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  sub_100F18F08(v29 + 56);
  if (a28)
  {
    std::__shared_weak_count::__release_weak(a28);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v28);
  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1014015F0(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_1014017F4;
        v15[3] = &unk_101F37678;
        v15[4] = v5;
        sub_100F11DD4(v16, a2);
        sub_10140766C(v19, (a1 + 7));
        v8 = v5[2];
        if (!v8 || (v9 = v5[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101402DDC;
        block[3] = &unk_101F378C8;
        block[5] = v9;
        v14 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v12, block);
        if (v14)
        {
          sub_100004A34(v14);
        }

        sub_100004A34(v11);
        sub_100F18F08(v19);
        if (v16[0] == 1)
        {
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }
        }

        v16[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1014017A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *__p, uint64_t a24)
{
  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  sub_100004A34(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_1014017F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = sub_101100E8C(a1 + 48, 2);
      v5 = *(v2 + 80);
      *v22 = _NSConcreteStackBlock;
      *&v22[8] = 0x40000000;
      *&v22[16] = sub_100F6E850;
      v23 = &unk_101EF60C8;
      v24 = v5;
      LODWORD(v25) = 2;
      LOBYTE(v26) = 0;
      HIDWORD(v25) = v4;
      sub_100F6E6A4(0x8010C);
      if (v4)
      {
        v6 = *(v2 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v22 = 136315138;
          *&v22[4] = sub_1010F59E4(v4);
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Deleting profile failed: %s", v22, 0xCu);
        }
      }

      v7 = sub_101401BF4(v4);
      return sub_101400C8C(*(a1 + 96), v7);
    }

    goto LABEL_20;
  }

  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = asString();
    v16 = *(a1 + 40);
    if (v16 != 2)
    {
      if (v16 == 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(exception);
        v20 = &ctu::ResultIsNotError::~ResultIsNotError;
        goto LABEL_21;
      }

LABEL_20:
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      v20 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_21:
      __cxa_throw(exception, v19, v20);
    }

    *v22 = 136315394;
    *&v22[4] = v15;
    *&v22[12] = 2080;
    *&v22[14] = asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Delete profile failed error %s (driver error %s)", v22, 0x16u);
  }

  v10 = *(v2 + 80);
  *v22 = _NSConcreteStackBlock;
  *&v22[8] = 0x40000000;
  *&v22[16] = sub_100F6E850;
  v23 = &unk_101EF60C8;
  v24 = v10;
  v25 = 0xFF00000002;
  LOBYTE(v26) = 0;
  sub_100F6E6A4(0x8010C);
  result = sub_101400C8C(*(a1 + 96), 8);
  v11 = *(a1 + 40);
  if (v11 != 2)
  {
    if (v11 == 1)
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(v17);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(v21);
  }

  if (*(a1 + 48) == 2)
  {
    v12 = *(v2 + 80);
    v13 = *(a1 + 49);
    v14 = *(a1 + 50);
    *v22 = _NSConcreteStackBlock;
    *&v22[8] = 0x40000000;
    *&v22[16] = sub_100F6E440;
    v23 = &unk_101EF6088;
    v24 = v12;
    LODWORD(v25) = 16;
    HIDWORD(v25) = v13;
    v26 = v14;
    return sub_100F6E294(0x800F1);
  }

  return result;
}

uint64_t sub_101401BF4(uint64_t result)
{
  if (result > 26)
  {
    switch(result)
    {
      case 0x1B:
        return 2;
      case 0x1C:
        return 4;
      case 0x1D:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 0x19:
        return 1;
      case 0x1A:
        return 3;
    }
  }

  return 9;
}

void sub_101401C94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      *(v1 + 56) = v3;
      operator delete(v3);
    }
  }

  *(v1 + 40) = 0;
  _Unwind_Resume(exception_object);
}

void sub_101401CC0(uint64_t a1)
{
  sub_100F18F08(a1 + 72);
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }
  }

  *(a1 + 40) = 0;
}

void sub_101401D08(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (sub_1010FFAC0(a2, a3, &v14))
  {
    v6 = *(a1 + 16);
    if (!v6 || (v7 = *(a1 + 8), (v8 = std::__shared_weak_count::lock(v6)) == 0))
    {
      sub_100013CC4();
    }

    v9 = v8;
    p_shared_weak_owners = &v8->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
    v12 = 0;
    v13 = 0;
    __p = 0;
    sub_100034C50(&__p, v14, v15, v15 - v14);
    v17 = _NSConcreteStackBlock;
    v18 = 1174405120;
    v19 = sub_101401F0C;
    v20 = &unk_101F37708;
    v21 = a1;
    v22 = v7;
    v23 = v9;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    sub_10140766C(v24, a4);
    VinylCommandDriver::tapeSetNickname();
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    sub_100F18F08(v24);
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    std::__shared_weak_count::__release_weak(v9);
  }

  else
  {
    sub_101400C8C(*(a4 + 24), 7);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_101401EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  sub_100F18F08(v22 + 56);
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v21);
  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_101401F0C(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_101402110;
        v15[3] = &unk_101F376D8;
        v15[4] = v5;
        sub_100F11DD4(v16, a2);
        sub_10140766C(v19, (a1 + 7));
        v8 = v5[2];
        if (!v8 || (v9 = v5[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101402DDC;
        block[3] = &unk_101F378C8;
        block[5] = v9;
        v14 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v12, block);
        if (v14)
        {
          sub_100004A34(v14);
        }

        sub_100004A34(v11);
        sub_100F18F08(v19);
        if (v16[0] == 1)
        {
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }
        }

        v16[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1014020C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *__p, uint64_t a24)
{
  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  sub_100004A34(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_101402110(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v3 = sub_1010FFF3C(a1 + 48);
    if (v3)
    {
      v4 = *(v2 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v14) = 136315138;
        *(&v14 + 4) = sub_1010F59E4(v3);
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Setting profile nickname failed: %s", &v14, 0xCu);
      }
    }

    v5 = sub_101401BF4(v3);
    return sub_101400C8C(*(a1 + 96), v5);
  }

  else
  {
    result = sub_101400C8C(*(a1 + 96), 8);
    v7 = *(a1 + 40);
    if (v7 != 2)
    {
      if (v7 == 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(exception);
        v13 = &ctu::ResultIsNotError::~ResultIsNotError;
      }

      else
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v13 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      }

      __cxa_throw(exception, v12, v13);
    }

    if (*(a1 + 48) == 2)
    {
      v8 = *(v2 + 80);
      v9 = *(a1 + 49);
      v10 = *(a1 + 50);
      *&v14 = _NSConcreteStackBlock;
      *(&v14 + 1) = 0x40000000;
      v15 = sub_100F6E440;
      v16 = &unk_101EF6088;
      v17 = v8;
      v18 = 19;
      v19 = v9;
      v20 = v10;
      return sub_100F6E294(0x800F1);
    }
  }

  return result;
}

void sub_101402304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 136) - 1) > 1)
  {
    v7 = *(a1 + 144);
    if (v7)
    {
      v8 = *(v7 + 200);
      if (v8)
      {
        (*(*v8 + 24))(v8);
      }

      v9 = *(a1 + 152);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (**(a1 + 144) == 2)
      {
        *buf = 0;
        v13 = 0;
        sub_10032E870();
      }

      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid card type", buf, 2u);
      }

      v11 = 514;
      v16[0] = 0;
      (*(a4 + 16))(a4, &v11, v16);
      if (v16[0] == 1)
      {
        if (v19[24] == 1)
        {
          *buf = v19;
          sub_100112120(buf);
        }

        if (v18 < 0)
        {
          operator delete(__p);
        }

        v16[0] = 0;
      }

      LOBYTE(v11) = 0;
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      v14 = 2;
      v20[0] = 0;
      (*(a4 + 16))(a4, &v14, v20);
      if (v20[0] == 1)
      {
        if (v23[24] == 1)
        {
          *buf = v23;
          sub_100112120(buf);
        }

        if (v22 < 0)
        {
          v5 = v21;
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    v15 = 514;
    v24[0] = 0;
    (*(a4 + 16))(a4, &v15, v24);
    if (v24[0] == 1)
    {
      if (v27[24] == 1)
      {
        *buf = v27;
        sub_100112120(buf);
      }

      if (v26 < 0)
      {
        v5 = v25;
LABEL_19:
        operator delete(v5);
      }
    }
  }
}

void sub_101402634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v32 + 104) = v31;
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014026B4(const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

_BYTE *sub_1014026D4(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 2)
  {
    if (*result == 2)
    {
      result[1] = a2[1];
      result[2] = a2[2];
      result[3] = a2[3];
    }

    else
    {
      *result = 2;
      v3 = *(a2 + 1);
      result[3] = a2[3];
      *(result + 1) = v3;
    }
  }

  else if (v2 == 1)
  {
    if (*result != 1)
    {
      *result = 1;
    }

    *(result + 1) = *(a2 + 1);
  }

  return result;
}

char *sub_10140274C(char *result, char *a2)
{
  if (result != a2)
  {
    v2 = *a2;
    if (v2 == 2)
    {
      if (*result != 2)
      {
        v3 = 2;
        goto LABEL_8;
      }

LABEL_9:
      result[1] = a2[1];
      return result;
    }

    if (v2 == 1)
    {
      if (*result != 1)
      {
        v3 = 1;
LABEL_8:
        *result = v3;
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    *result = 0;
  }

  return result;
}

uint64_t sub_1014027A4(uint64_t a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_100005348(a1, v4);
  }

  v11 = 0;
  v12 = 24 * v1;
  v13 = 24 * v1;
  v14 = 0;
  sub_10000501C((24 * v1), "8");
  v5 = 24 * v1 + 24;
  v6 = *(a1 + 8) - *a1;
  v7 = v12 - v6;
  memcpy((v12 - v6), *a1, v6);
  v8 = *a1;
  *a1 = v7;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v14;
  v13 = v8;
  v14 = v9;
  v11 = v8;
  v12 = v8;
  sub_1000054E0(&v11);
  return v5;
}

void sub_1014028B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000054E0(va);
  _Unwind_Resume(a1);
}

void *sub_1014028C4(void *a1)
{
  *a1 = off_101F37840;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_101402914(void *a1)
{
  *a1 = off_101F37840;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_101402A0C(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = off_101F37840;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return sub_100034C50((a2 + 2), a1[2], a1[3], a1[3] - a1[2]);
}

void sub_101402A48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }
}

void sub_101402A60(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void sub_101402AA4(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  memset(v6, 0, sizeof(v6));
  sub_100034C50(v6, v3, a1[3], a1[3] - v3);
  memset(__p, 0, sizeof(__p));
  sub_100034C50(__p, *a2, a2[1], a2[1] - *a2);
  v5 = *(v4 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101402C1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v15 = *v13;
  if (*v13)
  {
    *(v12 + 16) = v15;
    operator delete(v15);
  }

  sub_10004F058(a1);
}

uint64_t sub_101402C5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101402CA8(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (v1[4] == v1[5])
  {
    v3 = v2[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "No signature returned", buf, 2u);
    }
  }

  else
  {
    VinylCommandDriver::sendPairingSignature();
    v2[51] = v2[50];
  }

  sub_101402D74(&v6);
  return sub_1000049E0(&v5);
}

void sub_101402D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_101402D74(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_101402D74(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      v1[5] = v2;
      operator delete(v2);
    }

    v3 = v1[1];
    if (v3)
    {
      v1[2] = v3;
      operator delete(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_101402DEC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101402E08(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_101402EA4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F37968))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101402F10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F37988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101402F64(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 320);
  if (v3)
  {
    v4 = *(a1 + 328);
    v5 = *(a1 + 320);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 8);
        if (v6)
        {
          sub_100004A34(v6);
        }

        v4 -= 16;
      }

      while (v4 != v3);
      v5 = *(a1 + 320);
    }

    *(a1 + 328) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 312);
  if (v7)
  {
    _Block_release(v7);
  }

  if (*(a1 + 304) == 1 && *(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 232);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1011BAE58(a1 + 192, *(a1 + 200));
  sub_100009970(a1 + 168, *(a1 + 176));
  if (*(a1 + 160) == 1)
  {
    sub_100009970(a1 + 136, *(a1 + 144));
  }

  if (*(a1 + 128) == 1)
  {
    v11 = (a1 + 104);
    sub_100112120(&v11);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    *(a1 + 80) = v10;
    operator delete(v10);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t sub_101403100(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F379D8;
  a2[1] = v2;
  return result;
}

void sub_10140312C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  memset(__p, 0, sizeof(__p));
  sub_100034C50(__p, *a2, a2[1], a2[1] - *a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101403254(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014032A0(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 112);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 104);
      if (v6)
      {
        (*(*v6 + 72))(v6, *(v2 + 80), v1 + 8);
      }

      sub_100004A34(v5);
    }
  }

  sub_10140335C(&v9);
  return sub_1000049E0(&v8);
}

void sub_101403338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10140335C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10140335C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v1 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1014033B4(uint64_t a1)
{
  sub_1014026B4(*(*(*(a1 + 8) + ((*(a1 + 32) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 32) & 0x1FFLL)));
  v2 = vaddq_s64(*(a1 + 32), xmmword_1017CD970);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0x400uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }
}

void sub_101403438(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 8) + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    sub_100004A34(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 40) - 1;
  v5 = v2 + 1;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  if (v5 >= 0x200)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }
}

void sub_1014034BC(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    return;
  }

  v5 = 0;
  v22 = *a1;
  v23 = *(a1 + 1);
  v6 = (a3 - 2) >> 1;
  v7 = a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  do
  {
    v8 = &v7[16 * v5 + 16];
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 >= a3)
    {
      goto LABEL_10;
    }

    v11 = *v8;
    v12 = *(v8 + 1);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *(v11 + 80) > *(v14 + 80);
      sub_100004A34(v13);
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = *(v11 + 80) > *(v14 + 80);
      if (v12)
      {
LABEL_8:
        sub_100004A34(v12);
        if (!v15)
        {
          goto LABEL_10;
        }

LABEL_9:
        v8 += 16;
        v5 = v10;
        goto LABEL_10;
      }
    }

    if (v15)
    {
      goto LABEL_9;
    }

LABEL_10:
    v16 = *v8;
    *v8 = 0;
    *(v8 + 1) = 0;
    v17 = *(v7 + 1);
    *v7 = v16;
    if (v17)
    {
      sub_100004A34(v17);
    }

    v7 = v8;
  }

  while (v5 <= v6);
  if ((a2 - 16) == v8)
  {
    v21 = *(v8 + 1);
    *v8 = v22;
    *(v8 + 1) = v23;
    if (v21)
    {

      sub_100004A34(v21);
    }
  }

  else
  {
    v18 = *(a2 - 16);
    *(a2 - 16) = 0;
    *(a2 - 8) = 0;
    v19 = *(v8 + 1);
    *v8 = v18;
    if (v19)
    {
      sub_100004A34(v19);
    }

    v20 = *(a2 - 8);
    *(a2 - 16) = v22;
    *(a2 - 8) = v23;
    if (v20)
    {
      sub_100004A34(v20);
    }

    sub_1014036A4(a1, (v8 + 16), (v8 + 16 - a1) >> 4);
  }
}