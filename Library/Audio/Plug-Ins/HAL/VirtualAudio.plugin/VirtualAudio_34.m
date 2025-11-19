uint64_t ***sub_2C1CA4(uint64_t ***result, uint64_t **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (!v3)
    {

      operator delete();
    }

    v4 = v3[1];
    if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
    {
LABEL_16:
      v10 = 3;
      while (1)
      {
        v11 = v3[v10];
        v3[v10] = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        if (--v10 == 1)
        {
          v12 = v3[1];
          if (v12)
          {
            std::__shared_weak_count::__release_weak(v12);
          }

          operator delete();
        }
      }
    }

    v6 = v5;
    v7 = *v3;
    if (*v3)
    {
      v8 = v3[2];
      if (v8)
      {
        v9 = 2;
        goto LABEL_11;
      }

      v8 = v3[3];
      if (v8)
      {
        v9 = 3;
LABEL_11:
        (*(*v8 + 40))(v8, v7);
        while (++v9 != 4)
        {
          v8 = v3[v9];
          if (v8)
          {
            goto LABEL_11;
          }
        }
      }
    }

    sub_1A8C0(v6);
    goto LABEL_16;
  }

  return result;
}

void sub_2C1E1C(void *a1, uint64_t a2, uint64_t a3, AudioBufferList **a4, AudioBufferList **a5)
{
  v9 = a1[28];
  if (v9 || a1[39])
  {
    sub_90828(v9, a3, *a4, (a1[14] + 48));
    v10 = a1[14] + 48;
    v12 = a1[16] + 48;
    v13 = v10;
    (*(**a1 + 120))(*a1, a2, a3, 1, &v13, 1, &v12);
    sub_90828(a1[39], a3, (a1[16] + 48), *a5);
  }

  else
  {
    v11 = *(**a1 + 120);

    v11();
  }
}

BOOL sub_2C1F48(uint64_t a1)
{
  if (!*(a1 + 1160))
  {
    operator new();
  }

  v2 = *sub_5544(25);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 735) < 0)
      {
        sub_54A0(v23, *(a1 + 712), *(a1 + 720));
      }

      else
      {
        *v23 = *(a1 + 712);
        *&v24 = *(a1 + 728);
      }

      v5 = v23;
      if (SBYTE7(v24) < 0)
      {
        v5 = v23[0];
      }

      *buf = 136315650;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1019;
      *&buf[18] = 2080;
      *&buf[20] = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s Configuring voice isolation", buf, 0x1Cu);
      if (SBYTE7(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }
  }

  v6 = *(a1 + 1160);
  v7 = sub_65088(a1);
  v8 = sub_136868(v7, v6 + 36, 0);
  if (!v8)
  {
    v9 = *(v6 + 104);
    if (v9 == 1)
    {
      (*(**v6 + 24))();
      *(v6 + 104) = 0;
    }

    *buf = *v7;
    *&buf[16] = *(v7 + 16);
    v28 = *(v7 + 32);
    sub_13330C(v23, buf);
    sub_1332B8((v6 + 18), buf);
    if (v6[28] || v6[39])
    {
      sub_2C3074(v29, v23);
      if (*(v6 + 120) == 1)
      {
        v10 = v6[14];
        v11 = *v29;
      }

      else
      {
        v10 = 0;
        v11 = *v29;
        *(v6 + 120) = 1;
      }

      v6[14] = v11;
      *v29 = v10;
      ExtendedAudioBufferList_Destroy();
      sub_2C3074(v29, v23);
      if (*(v6 + 136) == 1)
      {
        v12 = v6[16];
        v13 = *v29;
      }

      else
      {
        v12 = 0;
        v13 = *v29;
        *(v6 + 136) = 1;
      }

      v6[16] = v13;
      *v29 = v12;
      ExtendedAudioBufferList_Destroy();
    }

    else
    {
      sub_1334B4((v6 + 14));
      sub_1334B4((v6 + 16));
    }

    if (v6[28] || v6[39])
    {
      v14 = *sub_5544(25);
      v15 = v14;
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 136315394;
        *&v29[4] = "DSPChain.mm";
        *&v29[12] = 1024;
        *&v29[14] = 489;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring voice isolation processing with intermediate deinterleaver", v29, 0x12u);
      }
    }

    v16 = *sub_5544(25);
    v17 = v16;
    if (v16)
    {
      v18 = v16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sub_618A4(&v26);
      }
    }

    v19 = HIDWORD(v24);
    v20 = *v6;
    *v29 = *v23;
    *&v29[16] = v24;
    v30 = v25;
    (*(*v20 + 128))(v20, 1, 0, v29);
    v21 = *v6;
    *v29 = *v23;
    *&v29[16] = v24;
    v30 = v25;
    (*(*v21 + 128))(v21, 2, 0, v29);
    (*(**v6 + 248))(*v6, 1, 0, v19);
    (*(**v6 + 248))(*v6, 2, 0, v19);
    if (v9 && (v6[13] & 1) == 0)
    {
      (*(**v6 + 16))();
      *(v6 + 104) = 1;
    }
  }

  return !v8;
}

void sub_2C2D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  v42 = *(v41 + 8);
  if (v42)
  {
    sub_1A8C0(v42);
  }

  sub_1E0258(&a41);
  sub_1E19A0(&a23);
  operator delete();
}

uint64_t *sub_2C3074(uint64_t *a1, uint64_t a2)
{
  v4 = ExtendedAudioBufferList_CreateWithFormat();
  v5 = *(a2 + 8);
  v6 = v5 == 1885564203 || v5 == 1819304813;
  if (!v6 || (*(a2 + 12) & 0x20) == 0)
  {
    v7 = *(a2 + 28);
  }

  *a1 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
  }

  v8 = *(v4 + 4);
  ExtendedAudioBufferList_Prepare();
  return a1;
}

uint64_t *sub_2C313C(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    ExtendedAudioBufferList_Destroy();
  }

  return a1;
}

uint64_t sub_2C31B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a8 || !sub_3115C4())
  {
    goto LABEL_10;
  }

  sub_2C3354(&v20, a1);
  if (!v20)
  {
    sub_1DD754(&v20);
LABEL_10:
    v16 = sub_162F98(a1, a2, a3, a6);
    if (v16)
    {
      return (*(*v16 + 56))(v16, a3, a4, a5, a6, a7);
    }

    else
    {
      return 4294967246;
    }
  }

  v18 = 0;
  Code = 0;
  if (!CADSPGraphSetProperty())
  {
    Code = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v18 = Code;
  }

  v23 = Code;
  if (Code)
  {
    v23 = 0;
    v22 = 0;
    sub_2C3434(&v23);
    v21 = 0;
    v23 = 0;
    v18 = Code;
    sub_2C3434(&v23);
    v19 = 0;
    sub_2C3434(&v21);
    Code = CADSPRealTimeErrorGetCode();
    sub_2C3434(&v18);
  }

  else
  {
    v22 = 1;
    sub_2C3434(&v23);
    v19 = 1;
  }

  sub_1DD754(&v20);
  return Code;
}

uint64_t sub_2C3354(void *a1, uint64_t a2)
{
  result = (*(*a2 + 80))(a2);
  if (result)
  {
    v10 = 0;
    v9 = 8;
    result = (*(*a2 + 120))(a2, 1685287015, 1735549286, &v10, &v9, 0, 0, 0);
    v5 = 0;
    v6 = v10;
    if (result)
    {
      v7 = 1;
    }

    else
    {
      v7 = v10 == 0;
    }

    if (!v7)
    {
      v8 = 0;
      result = sub_1DD754(&v8);
      v5 = v6;
    }

    *a1 = v5;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void *sub_2C3434(void *a1)
{
  if (*a1)
  {
    CADSPRealTimeErrorRelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_2C346C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a8 || !sub_3115C4())
  {
    goto LABEL_10;
  }

  sub_2C3354(&v19, a1);
  if (!v19)
  {
    sub_1DD754(&v19);
LABEL_10:
    v15 = sub_162F98(a1, a2, a3, a6);
    if (v15)
    {
      return (*(*v15 + 48))(v15, a3, a4, a5, 0, 0);
    }

    else
    {
      return 1685220966;
    }
  }

  v17 = 0;
  Code = 0;
  if (!CADSPGraphGetProperty())
  {
    Code = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v17 = Code;
  }

  v22 = Code;
  if (Code)
  {
    v22 = 0;
    v21 = 0;
    sub_2C3434(&v22);
    v20 = 0;
    v22 = 0;
    v17 = Code;
    sub_2C3434(&v22);
    v18 = 0;
    sub_2C3434(&v20);
    Code = CADSPRealTimeErrorGetCode();
    sub_2C3434(&v17);
  }

  else
  {
    v21 = 1;
    sub_2C3434(&v22);
    v18 = 1;
  }

  sub_1DD754(&v19);
  return Code;
}

uint64_t sub_2C3608(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_162F98(a1, a2, a3, a6);
  if (result)
  {
    return (*(*result + 40))(result, a3, a4, a5, a6, 0) == 0;
  }

  return result;
}

uint64_t sub_2C3688(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_8BF50(a1, a2, a3, a5);
  if (!v8)
  {
    return 4294967246;
  }

  result = (*(*v8 + 72))(v8, a3, a4, a5, 0);
  if (result)
  {
    return 4294967246;
  }

  return result;
}

uint64_t sub_2C3700(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  sub_26C0(a1 + 48);
  v6 = *(a1 + 24);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v6) >> 3) <= a2)
  {
    v8 = 0;
    v7 = 1685220966;
  }

  else
  {
    v7 = 0;
    v8 = *(v6 + 24 * a2);
  }

  *a3 = v8;
  sub_3174(a1 + 48);
  return v7;
}

uint64_t sub_2C3790(uint64_t a1, int a2)
{
  v3 = a1;
  v44 = a1 + 48;
  sub_47BD8(a1 + 48);
  v4 = (v3 + 680);
  *&buf[2] = *(v3 + 680);
  *buf = *(v3 + 680);
  HIWORD(v45) = *(v3 + 680);
  LOWORD(v45) = HIWORD(v45) == 0;
  v5 = *buf;
  atomic_compare_exchange_strong((v3 + 680), &v5, v45);
  v6 = 400;
  if (!*(v3 + 680))
  {
    v6 = 424;
  }

  v7 = v3 + v6;
  sub_13E73C((v3 + v6));
  v8 = (v3 + 24);
  v9 = *(v3 + 32) - *(v3 + 24);
  if (v9)
  {
    v42 = (v3 + 680);
    v43 = v3;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    v16 = -1;
    do
    {
      v17 = *v8 + v10;
      if (*v17 == a2)
      {
        v13 = *(v17 + 8);
        v18 = *(v17 + 16);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v12)
        {
          sub_1A8C0(v12);
        }

        v12 = v18;
        v16 = v11;
      }

      else
      {
        sub_2C3D3C(v7, v17);
      }

      ++v11;
      v10 += 24;
    }

    while (v15 != v11);
    if (v13)
    {
      sub_135A80(v8, *v7, *(v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - *v7) >> 3));
      v4 = v42;
      v3 = v43;
      v19 = 0;
      if (*(v43 + 32) == *(v43 + 24))
      {
        *(v43 + 448) = 0;
      }

      goto LABEL_25;
    }

    v4 = v42;
    v3 = v43;
  }

  else
  {
    v12 = 0;
    v16 = -1;
  }

  v20 = *sub_5544(14);
  v21 = v20;
  if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "DSPChain.mm";
    v47 = 1024;
    v48 = 2198;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: No instance to delete", buf, 0x12u);
  }

  v13 = 0;
  v19 = 1;
LABEL_25:
  sub_47C90(v44);
  if (v19)
  {
    v22 = 1685220966;
    if (v12)
    {
LABEL_27:
      sub_1A8C0(v12);
    }
  }

  else
  {
    v24 = *(v3 + 880);
    if (v24)
    {
      sub_3C340C(v24, v16);
      v25 = *(v3 + 880);
      *buf = 1635087726;
      v26 = *(v25 + 16);
      AUPBPropertiesChanged();
    }

    sub_135C94(v4);
    mach_absolute_time();
    v27 = __udivti3();
    v28 = v27 / 0x3E8;
    v29 = (v3 + 696);
    v30 = *(v3 + 696);
    if (!v30)
    {
LABEL_37:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v31 = v30;
        v32 = v30[4];
        if (v28 >= v32)
        {
          break;
        }

        v30 = *v31;
        if (!*v31)
        {
          goto LABEL_37;
        }
      }

      if (v32 >= v28)
      {
        break;
      }

      v30 = v31[1];
      if (!v30)
      {
        goto LABEL_37;
      }
    }

    v31[5] = v13;
    v33 = *sub_5544(25);
    v34 = v33;
    if (v33)
    {
      v35 = v33;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = (*(*v13 + 152))(v13);
        *buf = 136315906;
        *&buf[4] = "DSPChain.mm";
        v47 = 1024;
        v48 = 2237;
        v49 = 2048;
        v50 = v27 / 0x3E8;
        v51 = 1024;
        v52 = v36;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d At time(us) %lld, marking instanceID %u for deletion", buf, 0x22u);
      }
    }

    if (v27 <= 0x3B9ACDE7)
    {
      v39 = sub_5544(14);
      v40 = sub_468EC(1, *v39, *(v39 + 8));
      v41 = v40;
      if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DSPChain.mm";
        v47 = 1024;
        v48 = 2239;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected current time result", buf, 0x12u);
      }
    }

    v37 = *v29;
    if (*v29)
    {
      v38 = v28 - 1000000;
      do
      {
        if (v38 < v37[4])
        {
          v29 = v37;
        }

        v37 = v37[v38 >= v37[4]];
      }

      while (v37);
    }

    *buf = v29;
    sub_13B574(v3, buf);
    v22 = 0;
    if (v12)
    {
      goto LABEL_27;
    }
  }

  return v22;
}

void sub_2C3CD4(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(a1);
}

size_t *sub_2C3D3C(size_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      sub_2C3ECC(v10);
    }

    v11 = 24 * v7;
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(v11 + 8) = *(a2 + 8);
    *(v11 + 16) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v11 + 24;
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_135C34(v17);
  }

  else
  {
    *v3 = *a2;
    v5 = *(a2 + 16);
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 24;
  }

  v2[1] = v6;
  return result;
}

uint64_t sub_2C3E7C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return a1;
}

void sub_2C3ECC(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2C4078(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(v1 + 40);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v7);
  _Unwind_Resume(a1);
}

double sub_2C40CC(uint64_t a1, uint64_t a2, double a3)
{
  v9 = 1936941859;
  v10 = a3;
  sub_2C4188(v5, a2);
  *a1 = 0;
  *(a1 + 24) = 0;
  if (v8 == 1)
  {
    result = *&v6;
    *a1 = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_2C4144(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void sub_2C4188(uint64_t a1, uint64_t a2)
{
  if (sub_5BA08(a2))
  {
    v9 = 2003329396;
    LOBYTE(v10[0]) = 0;
    v12 = 0;
    v4 = sub_59580(a2);
    v8 = v4;
    if (v4)
    {
      sub_128080(__p, v4 >> 2);
      v5 = sub_5C060(a2);
      v9 = v5;
      if (v5)
      {
        *a1 = v5;
        *(a1 + 8) = 0;
        *(a1 + 32) = 0;
      }

      else
      {
        sub_1280F8(v10, __p);
        v6 = v12;
        *a1 = v9;
        *(a1 + 8) = 0;
        *(a1 + 32) = 0;
        if (v6)
        {
          *(a1 + 8) = *v10;
          *(a1 + 24) = v11;
          v10[1] = 0;
          v11 = 0;
          v10[0] = 0;
          *(a1 + 32) = 1;
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
        if (v12)
        {
          if (v10[0])
          {
            v10[1] = v10[0];
            operator delete(v10[0]);
          }
        }
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *(a1 + 32) = 1;
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_2C42F0(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_75234(v3, v5);
      sub_DD7C4((v5 + 6));

      operator delete(v5);
    }
  }
}

uint64_t *sub_2C43CC(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 80) == 4)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_DD7C4(*result);
    *v4 = *a3;
    v4[20] = 4;
  }

  return result;
}

uint64_t *sub_2C4420(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 80) == 3)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_DD7C4(*result);
    *v4 = *a3;
    *(v4 + 80) = 3;
  }

  return result;
}

void sub_2C4474(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 80) == 2)
  {
    if (a2 != a3)
    {
      sub_4ABC8(a2, *a3, (a3 + 8));
      sub_26D7C0((a2 + 24), *(a3 + 24), (a3 + 32));
      sub_26D7C0((a2 + 48), *(a3 + 48), (a3 + 56));
    }

    *(a2 + 72) = *(a3 + 72);
  }

  else
  {
    sub_44E44(&v15, a3);
    sub_2726F4(&v18, a3 + 24);
    sub_2726F4(&v21, a3 + 48);
    v24 = *(a3 + 72);
    sub_DD7C4(v4);
    v6 = v17;
    *v4 = v15;
    v7 = v16;
    *(v4 + 8) = v16;
    *(v4 + 16) = v6;
    v8 = v4 + 8;
    if (v6)
    {
      v7[2] = v8;
      v15 = &v16;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      *v4 = v8;
    }

    v9 = v20;
    *(v4 + 24) = v18;
    v10 = v19;
    *(v4 + 32) = v19;
    *(v4 + 40) = v9;
    v11 = v4 + 32;
    if (v9)
    {
      *(v10 + 2) = v11;
      v18 = &v19;
      v19 = 0;
      v20 = 0;
    }

    else
    {
      *(v4 + 24) = v11;
    }

    v12 = v23;
    *(v4 + 48) = v21;
    v13 = v22;
    *(v4 + 56) = v22;
    *(v4 + 64) = v12;
    v14 = v4 + 56;
    if (v12)
    {
      *(v13 + 16) = v14;
      v21 = &v22;
      v22 = 0;
      v23 = 0;
      v13 = 0;
    }

    else
    {
      *(v4 + 48) = v14;
    }

    *(v4 + 72) = v24;
    *(v4 + 80) = 2;
    sub_98A08(v13);
    sub_98A08(v19);
    sub_477A0(v16);
  }
}

void sub_2C4604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_98A08(a13);
  sub_477A0(a10);
  _Unwind_Resume(a1);
}

void sub_2C4628(uint64_t *a1, uint64_t a2, int *a3)
{
  v4 = *a1;
  if (*(*a1 + 80) == 1)
  {
    v6 = *a3;
    *(a2 + 4) = *(a3 + 4);
    *a2 = v6;
    sub_1789EC((a2 + 8), (a3 + 2));
    sub_1789EC((a2 + 40), (a3 + 10));
    *(a2 + 72) = *(a3 + 36);
  }

  else
  {
    v10 = *a3;
    sub_80534(__p, (a3 + 2));
    sub_80534(&v14, (a3 + 10));
    v17 = *(a3 + 36);
    sub_DD7C4(v4);
    *v4 = v10;
    *(v4 + 8) = 0;
    *(v4 + 32) = 0;
    v7 = v13;
    if (v13 == 1)
    {
      v8 = *__p;
      *(v4 + 24) = v12;
      *(v4 + 8) = v8;
      __p[1] = 0;
      v12 = 0;
      __p[0] = 0;
      *(v4 + 32) = 1;
    }

    *(v4 + 40) = 0;
    *(v4 + 64) = 0;
    if (v16 == 1)
    {
      v9 = v14;
      *(v4 + 56) = v15;
      *(v4 + 40) = v9;
      v15 = 0;
      v14 = 0uLL;
      *(v4 + 64) = 1;
    }

    *(v4 + 72) = v17;
    *(v4 + 80) = 1;
    if (v7)
    {
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_2C4774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2C479C(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 80))
  {
    result = sub_DD7C4(*result);
    *v4 = *a3;
    *(v4 + 80) = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

BOOL sub_2C4814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != *(a3 + 16))
  {
    return 0;
  }

  v5 = *a2;
  if (*a2 != a2 + 8)
  {
    v6 = *a3;
    while (*(v5 + 7) == *(v6 + 7))
    {
      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v27 = *v5 == v8;
          v8 = v5;
        }

        while (!v27);
      }

      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v27 = *v10 == v6;
          v6 = v10;
        }

        while (!v27);
      }

      v6 = v10;
      if (v5 == (a2 + 8))
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:
  if (*(a2 + 40) != *(a3 + 40))
  {
    return 0;
  }

  v11 = *(a2 + 24);
  v12 = (a2 + 32);
  if (v11 == (a2 + 32))
  {
LABEL_31:
    if (*(a2 + 64) == *(a3 + 64))
    {
      v19 = *(a2 + 48);
      if (v19 == (a2 + 56))
      {
LABEL_46:
        v25 = *(a3 + 73);
        v26 = *(a2 + 73);
        result = v26 == v25;
        v27 = v26 != v25 || v26 == 0;
        if (!v27)
        {
          return *(a2 + 72) == *(a3 + 72);
        }
      }

      else
      {
        v20 = *(a3 + 48);
        while (1)
        {
          result = sub_1DC61C(v19 + 4, v20 + 4);
          if (!result)
          {
            break;
          }

          v21 = v19[1];
          v22 = v19;
          if (v21)
          {
            do
            {
              v19 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v19 = v22[2];
              v27 = *v19 == v22;
              v22 = v19;
            }

            while (!v27);
          }

          v23 = v20[1];
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
              v24 = v20[2];
              v27 = *v24 == v20;
              v20 = v24;
            }

            while (!v27);
          }

          v20 = v24;
          if (v19 == (a2 + 56))
          {
            goto LABEL_46;
          }
        }
      }

      return result;
    }

    return 0;
  }

  v13 = *(a3 + 24);
  while (1)
  {
    result = sub_1DC61C(v11 + 4, v13 + 4);
    if (!result)
    {
      return result;
    }

    v15 = v11[1];
    v16 = v11;
    if (v15)
    {
      do
      {
        v11 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v11 = v16[2];
        v27 = *v11 == v16;
        v16 = v11;
      }

      while (!v27);
    }

    v17 = v13[1];
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v18 = v13[2];
        v27 = *v18 == v13;
        v13 = v18;
      }

      while (!v27);
    }

    v13 = v18;
    if (v11 == v12)
    {
      goto LABEL_31;
    }
  }
}

BOOL sub_2C4A58(uint64_t a1, int *a2, unsigned __int8 *a3)
{
  v5 = *(a2 + 4);
  v6 = a3[4];
  if (v5 == v6 && v5 != 0)
  {
    v5 = *a2;
    v6 = *a3;
  }

  if (v5 != v6)
  {
    return 0;
  }

  result = sub_CC200(a2 + 1, a3 + 8);
  if (result)
  {
    result = sub_CC200(a2 + 5, a3 + 40);
    if (result)
    {
      v9 = a3[73];
      v10 = *(a2 + 73);
      result = v10 == v9;
      if (v10 == v9)
      {
        if (*(a2 + 73))
        {
          return *(a2 + 72) == a3[72];
        }
      }
    }
  }

  return result;
}

void sub_2C4B04(uint64_t a1, unsigned __int8 *a2, float *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v16 = v9 + 48;
        v17 = 1;
        sub_47BD8(v9 + 48);
        v10 = *sub_5544(25);
        v11 = v10;
        if (v10)
        {
          v12 = v10;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            if (*(v9 + 735) < 0)
            {
              sub_54A0(__p, *(v9 + 712), *(v9 + 720));
            }

            else
            {
              *__p = *(v9 + 712);
              v15 = *(v9 + 728);
            }

            v13 = __p;
            if (v15 < 0)
            {
              v13 = __p[0];
            }

            *buf = 136316162;
            v19 = "DSPChain.mm";
            v20 = 1024;
            v21 = 2835;
            v22 = 2080;
            v23 = v13;
            v24 = 1024;
            v25 = v5;
            v26 = 2048;
            v27 = v6;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating graph %s with AUSPL cap state: %d, cap value: %.2f", buf, 0x2Cu);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        if (v5)
        {
          *(v9 + 824) = v6;
          *(v9 + 828) = 1;
        }

        else if (*(v9 + 828) == 1)
        {
          *(v9 + 828) = 0;
        }

        sub_47C90(v9 + 48);
      }

      sub_1A8C0(v8);
    }
  }
}

void sub_2C4CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_216C10(va);
  sub_1A8C0(v5);
  _Unwind_Resume(a1);
}

void sub_2C4D24(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_2C4D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_2C4D74(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_6C04D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2C4E18(void *a1)
{
  *a1 = off_6C04D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_2C4E84(void *a1)
{
  *a1 = off_6C04D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_2C4EDC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C0350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C4F50(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v15 = v7 + 48;
        v16 = 1;
        sub_47BD8(v7 + 48);
        v8 = *sub_5544(25);
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            if (*(v7 + 735) < 0)
            {
              sub_54A0(__p, *(v7 + 712), *(v7 + 720));
            }

            else
            {
              *__p = *(v7 + 712);
              v14 = *(v7 + 728);
            }

            v11 = __p;
            if (v14 < 0)
            {
              v11 = __p[0];
            }

            *buf = 136315906;
            v18 = "DSPChain.mm";
            v19 = 1024;
            v20 = 2815;
            v21 = 2080;
            v22 = v11;
            v23 = 1024;
            v24 = v4;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating graph %s with high FPS camera coex mitigation state: %d", buf, 0x22u);
            if (SHIBYTE(v14) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v12.n128_u64[0] = 0;
        if (v4)
        {
          v12.n128_f32[0] = 1.0;
        }

        (*(*v7 + 72))(v7, 1685287015, 1919316083, 0, v12);
        sub_47C90(v7 + 48);
      }

      sub_1A8C0(v6);
    }
  }
}

void sub_2C5130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_216C10(va);
  sub_1A8C0(v5);
  _Unwind_Resume(a1);
}

void sub_2C5180(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_2C51C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_2C51D0(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_6C0488;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2C5274(void *a1)
{
  *a1 = off_6C0488;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_2C52E0(void *a1)
{
  *a1 = off_6C0488;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_2C532C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C0318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C53A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C02E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C5414(uint64_t a1, void *a2, float *a3)
{
  if (a2 && a3)
  {
    if (*(a1 + 784) >= 2uLL)
    {
      v6 = *sub_5544(25);
      v7 = v6;
      if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 784);
        *buf = 136315650;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3462;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: Associated ports = %lu > 1. Using first port.", buf, 0x1Cu);
      }
    }

    sub_88A00(buf, (*(a1 + 776) + 16), "", 3463);
    v9 = *buf;
    sub_348288(*buf);
    v10 = sub_347F08(v9);
    sub_3486F0(&cf, v9);
    *a3 = v10;
    v11 = cf;
    v14 = cf;
    v15 = 0;
    if (cf)
    {
      CFRetain(cf);
      *a2 = v14;
      sub_A1D30(&v14);
      CFRelease(v11);
    }

    else
    {
      *a2 = 0;
      sub_A1D30(&v14);
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  else
  {
    v12 = *sub_5544(25);
    v13 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3457;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry: invalid volume curve or sensitivity pointers", buf, 0x12u);
    }
  }
}

void sub_2C572C(void *a1, void *a2, float a3)
{
  if (a1[98])
  {
    sub_88A00(&v178, (a1[97] + 16), "", 3282);
    v176 = 0.0;
    *cf = 0u;
    *v175 = 0u;
    *&v177 = 1.0;
    v6 = v178;
    if (*(v178 + 303) < 0)
    {
      sub_54A0(buf, *(v178 + 280), *(v178 + 288));
    }

    else
    {
      *buf = *(v178 + 280);
      *&buf[16] = *(v178 + 296);
    }

    v9 = buf[23];
    if (buf[23] >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    if (v10)
    {
      if (buf[23] >= 0)
      {
        v11 = buf[23];
      }

      else
      {
        v11 = *&buf[8];
      }

      v12 = CFStringCreateWithBytes(0, v10, v11, 0x8000100u, 0);
      __p = v12;
      if (!v12)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v9 = buf[23];
    }

    else
    {
      v12 = 0;
    }

    v175[1] = v12;
    if (v9 < 0)
    {
      operator delete(*buf);
    }

    *buf = 0;
    if (sub_346F1C(v6, 0, buf))
    {
      *&v176 = 1;
    }

    if (*(v6 + 37) == 1885544823)
    {
      Mutable = v6;
      v191 = v179;
      if (v179)
      {
        atomic_fetch_add_explicit(&v179->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_88A00(&__p, &Mutable, "", 3117);
      v13 = __p;
      v14 = *(__p + 25);
      if (v14)
      {
        v15 = *(__p + 24);
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v16 = std::__shared_weak_count::lock(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (v16 && v15)
        {
          LODWORD(theArray) = (*(*v15 + 120))(v15);
          strcpy(buf, "diabbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          v17 = sub_542F0(&theArray, buf, 0, 0);
          *(&v20 + 1) = v18;
          *&v20 = v17;
          v19 = v20 >> 32;
          if ((v19 & 0x100000000) != 0)
          {
            v21 = v19;
          }

          else
          {
            v21 = 0;
          }

          switch(v21)
          {
            case 8194:
            case 8207:
            case 8211:
              v110 = CFStringCreateWithBytes(0, "AirPods", 7, 0x8000100u, 0);
              *buf = v110;
              if (!v110)
              {
                v161 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v161, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v110;
              *buf = v109;
              if (!v109)
              {
                goto LABEL_192;
              }

              goto LABEL_286;
            case 8195:
              v144 = CFStringCreateWithBytes(0, "Powerbeats3", 11, 0x8000100u, 0);
              *buf = v144;
              if (!v144)
              {
                v169 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v169, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v144;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8197:
              v145 = CFStringCreateWithBytes(0, "BeatsX", 6, 0x8000100u, 0);
              *buf = v145;
              if (!v145)
              {
                v170 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v170, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v145;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8198:
              v140 = CFStringCreateWithBytes(0, "Beats Solo3", 11, 0x8000100u, 0);
              *buf = v140;
              if (!v140)
              {
                v165 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v165, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v140;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8201:
              v141 = CFStringCreateWithBytes(0, "Beats Studio3", 13, 0x8000100u, 0);
              *buf = v141;
              if (!v141)
              {
                v166 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v166, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v141;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8202:
              v142 = CFStringCreateWithBytes(0, "AirPods Max", 11, 0x8000100u, 0);
              *buf = v142;
              if (!v142)
              {
                v167 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v167, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v142;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8203:
              v147 = CFStringCreateWithBytes(0, "Powerbeats Pro", 14, 0x8000100u, 0);
              *buf = v147;
              if (!v147)
              {
                v172 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v172, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v147;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8204:
              v146 = CFStringCreateWithBytes(0, "Beats Solo Pro", 14, 0x8000100u, 0);
              *buf = v146;
              if (!v146)
              {
                v171 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v171, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v146;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8205:
              v138 = CFStringCreateWithBytes(0, "Powerbeats", 10, 0x8000100u, 0);
              *buf = v138;
              if (!v138)
              {
                v163 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v163, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v138;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8206:
            case 8212:
            case 8228:
              v108 = CFStringCreateWithBytes(0, "AirPods Pro", 11, 0x8000100u, 0);
              *buf = v108;
              if (!v108)
              {
                v160 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v160, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v108;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8208:
            case 8209:
            case 8210:
            case 8217:
            case 8218:
            case 8219:
            case 8221:
            case 8222:
            case 8223:
            case 8224:
            case 8229:
            case 8230:
            case 8231:
            case 8232:
            case 8239:
              v22 = [CBProductInfo productInfoWithProductID:v21];
              v23 = [v22 productName];
              v24 = v23 == 0;

              if (!v24)
              {
                v25 = [v22 productName];
                v26 = v25;
                v27 = [v25 UTF8String];
                v28 = strlen(v27);
                if (v27)
                {
                  v29 = CFStringCreateWithBytes(0, v27, v28, 0x8000100u, 0);
                  *buf = v29;
                  if (!v29)
                  {
                    v30 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v30, "Could not construct");
                  }
                }

                else
                {
                  v29 = 0;
                }

                v107 = cf[0];
                cf[0] = v29;
                *buf = v107;
                if (v107)
                {
                  CFRelease(v107);
                }

LABEL_192:
                snprintf(&valuePtr, 7uLL, "0x%x", v21);
                sub_53E8(buf, &valuePtr);
                if (buf[23] >= 0)
                {
                  v112 = buf;
                }

                else
                {
                  v112 = *buf;
                }

                if (v112)
                {
                  if (buf[23] >= 0)
                  {
                    v113 = buf[23];
                  }

                  else
                  {
                    v113 = *&buf[8];
                  }

                  v114 = CFStringCreateWithBytes(0, v112, v113, 0x8000100u, 0);
                  theArray = v114;
                  if (!v114)
                  {
                    v115 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v115, "Could not construct");
                  }
                }

                else
                {
                  v114 = 0;
                }

                v116 = cf[1];
                cf[1] = v114;
                theArray = v116;
                if (v116)
                {
                  CFRelease(v116);
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                goto LABEL_206;
              }

LABEL_158:
              (*(*v13 + 144))(buf, v13);
              if (buf[23] >= 0)
              {
                v99 = buf;
              }

              else
              {
                v99 = *buf;
              }

              if (v99)
              {
                if (buf[23] >= 0)
                {
                  v100 = buf[23];
                }

                else
                {
                  v100 = *&buf[8];
                }

                v101 = CFStringCreateWithBytes(0, v99, v100, 0x8000100u, 0);
                theArray = v101;
                if (!v101)
                {
                  v102 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v102, "Could not construct");
                }
              }

              else
              {
                v101 = 0;
              }

              v111 = cf[0];
              cf[0] = v101;
              theArray = v111;
              if (v111)
              {
                CFRelease(v111);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (v21)
              {
                goto LABEL_192;
              }

LABEL_206:
              if (sub_346CF8(v13))
              {
                v117 = CFStringCreateWithBytes(0, "Apple Inc.", 10, 0x8000100u, 0);
                *buf = v117;
                if (!v117)
                {
                  v158 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v158, "Could not construct");
                }

                v118 = v175[0];
                v175[0] = v117;
                *buf = v118;
                if (v118)
                {
                  CFRelease(v118);
                }
              }

              else
              {
                v119 = v13[36];
                if (v119 == 1885892674 || v119 == 1886216820 || v119 == 1885892706)
                {
                  if (sub_346E54(v13))
                  {
                    strcpy(buf, "dinvbolg");
                    buf[9] = 0;
                    *&buf[10] = 0;
                    if ((*(*v13 + 16))(v13, buf))
                    {
                      LODWORD(theArray) = 0;
                      LODWORD(valuePtr) = 4;
                      strcpy(buf, "dinvbolg");
                      buf[9] = 0;
                      *&buf[10] = 0;
                      (*(*v13 + 40))(v13, buf, 0, 0, &valuePtr, &theArray);
                      if (theArray)
                      {
                        snprintf(&valuePtr, 7uLL, "0x%x", theArray);
                        sub_53E8(buf, &valuePtr);
                        if (buf[23] >= 0)
                        {
                          v120 = buf;
                        }

                        else
                        {
                          v120 = *buf;
                        }

                        if (v120)
                        {
                          if (buf[23] >= 0)
                          {
                            v121 = buf[23];
                          }

                          else
                          {
                            v121 = *&buf[8];
                          }

                          v122 = CFStringCreateWithBytes(0, v120, v121, 0x8000100u, 0);
                          theArray = v122;
                          if (!v122)
                          {
                            v123 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v123, "Could not construct");
                          }
                        }

                        else
                        {
                          v122 = 0;
                        }

                        v148 = v175[0];
                        v175[0] = v122;
                        theArray = v148;
                        if (v148)
                        {
                          CFRelease(v148);
                        }

                        if ((buf[23] & 0x80000000) != 0)
                        {
                          operator delete(*buf);
                        }
                      }
                    }
                  }
                }
              }

              break;
            case 8214:
              v139 = CFStringCreateWithBytes(0, "Beats Studio Buds +", 19, 0x8000100u, 0);
              *buf = v139;
              if (!v139)
              {
                v164 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v164, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v139;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8215:
              v143 = CFStringCreateWithBytes(0, "Beats Studio Pro", 16, 0x8000100u, 0);
              *buf = v143;
              if (!v143)
              {
                v168 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v168, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v143;
              *buf = v109;
              if (v109)
              {
LABEL_286:
                CFRelease(v109);
              }

              goto LABEL_192;
            default:
              goto LABEL_158;
          }

          goto LABEL_62;
        }
      }

      else
      {
        v16 = 0;
      }

      v40 = CFStringCreateWithBytes(0, "Unknown", 7, 0x8000100u, 0);
      *buf = v40;
      if (!v40)
      {
        v152 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v152, "Could not construct");
      }

      v41 = cf[0];
      cf[0] = v40;
      *buf = v41;
      if (v41)
      {
        CFRelease(v41);
      }

      if (!v16)
      {
LABEL_63:
        if (v181)
        {
          sub_1A8C0(v181);
        }

        v42 = v191;
        if (!v191)
        {
          goto LABEL_81;
        }

        goto LABEL_80;
      }

LABEL_62:
      sub_1A8C0(v16);
      goto LABEL_63;
    }

    theArray = v6;
    v189 = v179;
    if (v179)
    {
      atomic_fetch_add_explicit(&v179->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_88A00(&Mutable, &theArray, "", 3212);
    *&v176 |= 2uLL;
    v31 = Mutable;
    v32 = *(Mutable + 76);
    if (v32 > 1647718501)
    {
      if ((v32 - 1647718502) < 2)
      {
LABEL_50:
        v35 = CFStringCreateWithBytes(0, "EarPods", 7, 0x8000100u, 0);
        *buf = v35;
        if (!v35)
        {
          v153 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v153, "Could not construct");
        }

        v36 = cf[0];
        cf[0] = v35;
        *buf = v36;
        if (v36)
        {
          CFRelease(v36);
        }

        v37 = CFStringCreateWithBytes(0, "Apple Inc.", 10, 0x8000100u, 0);
        *buf = v37;
        if (!v37)
        {
          v154 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v154, "Could not construct");
        }

        v38 = v175[0];
        v175[0] = v37;
        *buf = v38;
        if (v38)
        {
          CFRelease(v38);
        }

        v39 = 1063507722;
        goto LABEL_76;
      }

      if (v32 == 1752709424 || v32 == 2004367664)
      {
        v33 = CFStringCreateWithBytes(0, "MFi", 3, 0x8000100u, 0);
        *buf = v33;
        if (!v33)
        {
          v155 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v155, "Could not construct");
        }

        v34 = cf[0];
        cf[0] = v33;
        *buf = v34;
        if (!v34)
        {
          goto LABEL_75;
        }

LABEL_74:
        CFRelease(v34);
LABEL_75:
        v39 = 1065353216;
LABEL_76:
        v177 = v39;
        goto LABEL_77;
      }
    }

    else
    {
      if (v32 <= 1647521841)
      {
        if (v32 != 1214329654 && v32 != 1214394677)
        {
          goto LABEL_145;
        }

        goto LABEL_50;
      }

      if (v32 == 1647521842 || v32 == 1647522096)
      {
        v43 = CFStringCreateWithBytes(0, "Beats", 5, 0x8000100u, 0);
        *buf = v43;
        if (!v43)
        {
          v156 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v156, "Could not construct");
        }

        v44 = cf[0];
        cf[0] = v43;
        *buf = v44;
        if (v44)
        {
          CFRelease(v44);
        }

        v45 = CFStringCreateWithBytes(0, "Apple Inc.", 10, 0x8000100u, 0);
        *buf = v45;
        if (!v45)
        {
          v157 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v157, "Could not construct");
        }

        v34 = v175[0];
        v175[0] = v45;
        *buf = v34;
        if (!v34)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

LABEL_145:
    *&v177 = 0.92;
    v90 = *(Mutable + 25);
    if (v90)
    {
      v91 = *(Mutable + 24);
      atomic_fetch_add_explicit(&v90->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v92 = std::__shared_weak_count::lock(v90);
      std::__shared_weak_count::__release_weak(v90);
      if (v92 && v91)
      {
        strcpy(buf, "nartbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v93 = sub_59410(v91);
        *(&v95 + 1) = v94;
        *&v95 = v93;
        if (((v95 >> 32) & 0x1FFFFFFFFLL) == 0x175736220)
        {
          (*(*v31 + 144))(buf, v31);
          if (buf[23] >= 0)
          {
            v96 = buf;
          }

          else
          {
            v96 = *buf;
          }

          if (buf[23] >= 0)
          {
            v97 = buf[23];
          }

          else
          {
            v97 = *&buf[8];
          }

          sub_45240(&__p, v96, v97);
          v98 = cf[0];
          cf[0] = __p;
          __p = v98;
          sub_452F0(&__p);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          *&v176 |= 0x10uLL;
          v124 = CFStringCreateWithBytes(0, "Wired", 5, 0x8000100u, 0);
          *buf = v124;
          if (!v124)
          {
            v162 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v162, "Could not construct");
          }

          v125 = cf[0];
          cf[0] = v124;
          *buf = v125;
          if (v125)
          {
            CFRelease(v125);
          }
        }

        (*(*v91 + 456))(&__p, v91);
        if ((v182 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (p_p)
        {
          if ((v182 & 0x80u) == 0)
          {
            v127 = v182;
          }

          else
          {
            v127 = v181;
          }

          v128 = CFStringCreateWithBytes(0, p_p, v127, 0x8000100u, 0);
          *buf = v128;
          if (!v128)
          {
            v129 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v129, "Could not construct");
          }
        }

        else
        {
          v128 = 0;
        }

        v130 = v175[1];
        v175[1] = v128;
        *buf = v130;
        if (v130)
        {
          CFRelease(v130);
        }

        if (v182 < 0)
        {
          if (v181 != (&dword_4 + 1))
          {
            goto LABEL_249;
          }

          v131 = __p;
        }

        else
        {
          if (v182 != 5)
          {
            goto LABEL_249;
          }

          v131 = &__p;
        }

        v132 = *v131;
        v133 = v131[4];
        if (v132 == 1701080899 && v133 == 99)
        {
          *&v176 |= 4uLL;
          if ((v182 & 0x80) == 0)
          {
            goto LABEL_256;
          }

          goto LABEL_255;
        }

LABEL_249:
        v135 = *sub_5544(25);
        v136 = v135;
        if (v135 && os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          v137 = &__p;
          if ((v182 & 0x80u) != 0)
          {
            v137 = __p;
          }

          *buf = 136315650;
          *&buf[4] = "DSPChain.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3264;
          *&buf[18] = 2080;
          *&buf[20] = v137;
          _os_log_impl(&dword_0, v136, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Wired Device UID: %s", buf, 0x1Cu);
        }

        if ((v182 & 0x80) == 0)
        {
          goto LABEL_256;
        }

LABEL_255:
        operator delete(__p);
        goto LABEL_256;
      }
    }

    else
    {
      v92 = 0;
    }

    v103 = CFStringCreateWithBytes(0, "Wired", 5, 0x8000100u, 0);
    *buf = v103;
    if (!v103)
    {
      v159 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v159, "Could not construct");
    }

    v104 = cf[0];
    cf[0] = v103;
    *buf = v104;
    if (v104)
    {
      CFRelease(v104);
    }

    *&v176 |= 4uLL;
    v105 = *sub_5544(25);
    v106 = v105;
    if (v105 && os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3271;
      _os_log_impl(&dword_0, v106, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : Cannot get device UID, assumed headset jack", buf, 0x12u);
    }

    if (!v92)
    {
LABEL_77:
      if (v191)
      {
        sub_1A8C0(v191);
      }

      v42 = v189;
      if (!v189)
      {
        goto LABEL_81;
      }

LABEL_80:
      std::__shared_weak_count::__release_weak(v42);
LABEL_81:
      v46 = v179;
      v173[0] = v178;
      v173[1] = v179;
      if (v179)
      {
        atomic_fetch_add_explicit(&v179->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = *&v177;
      __p = a2;
      LOWORD(v181) = 0;
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      LOWORD(v191) = 257;
      theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      LOWORD(v189) = 257;
      sub_2E7400(&__p, @"OutputMap", &theArray);
      sub_2E7400(&__p, @"InputMap", &Mutable);
      v187 = 0.0;
      if (theArray)
      {
        v48 = CFArrayGetCount(theArray) - 1;
      }

      else
      {
        v48 = -1;
      }

      sub_2E45AC(&theArray, v48, &v187);
      v49 = ((a3 + -12.83) - v187) + 13.0;
      v50 = *sub_5544(25);
      v51 = v50;
      if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3366;
        *&buf[18] = 2048;
        *&buf[20] = a3;
        *&buf[28] = 2048;
        *&buf[30] = v187;
        *&buf[38] = 2048;
        v193 = v49;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: senstivity: %.2f, max output volume: %.2f offset: %.2f", buf, 0x30u);
      }

      v52 = 80.0 - v49;
      v53 = 74.0 - v49;
      v54 = *sub_5544(25);
      v55 = v54;
      if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3371;
        *&buf[18] = 2048;
        *&buf[20] = v52;
        *&buf[28] = 2048;
        *&buf[30] = v53;
        _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry: mapped 80dB volume: %.2f, mapped 74dB volume: %.2f", buf, 0x26u);
      }

      v56 = sub_2C92FC(&Mutable, &theArray, v53);
      v57 = sub_2C92FC(&Mutable, &theArray, v52);
      v58 = *sub_5544(25);
      v59 = v58;
      if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3377;
        *&buf[18] = 2048;
        *&buf[20] = v57;
        *&buf[28] = 2048;
        *&buf[30] = v56;
        _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: target dB volume at 80dB: %.2fdB, at 74dB: %.2fdB", buf, 0x26u);
      }

      sub_88A00(&valuePtr, v173, "", 3379);
      v60 = valuePtr;
      v61 = *(valuePtr + 25);
      v62 = -1.0;
      if (v61)
      {
        v63 = *(valuePtr + 24);
        atomic_fetch_add_explicit(&v61->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v64 = std::__shared_weak_count::lock(v61);
        std::__shared_weak_count::__release_weak(v61);
        v65 = -1.0;
        if (v64)
        {
          if (v63)
          {
            (*(*v63 + 256))(&v183, v63, 1, *(v60 + 36));
            if (v184)
            {
              v66 = std::__shared_weak_count::lock(v184);
              if (v66)
              {
                v67 = v66;
                if (v183)
                {
                  v68 = (*(*v183 + 128))(v183);
                  if (v69)
                  {
                    v70 = v68;
                    v71 = sub_E9780(v68, v56);
                    v72 = sub_E9780(v70, v57);
                    sub_5B898(v70, v71);
                    v74 = v73;
                    sub_5B898(v70, v72);
                    v76 = v75;
                    v65 = v71 / v47;
                    v62 = v72 / v47;
                    v77 = *sub_5544(25);
                    v78 = v77;
                    if (v77 && os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136316674;
                      *&buf[4] = "DSPChain.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 3398;
                      *&buf[18] = 2048;
                      *&buf[20] = v62;
                      *&buf[28] = 2048;
                      *&buf[30] = v65;
                      *&buf[38] = 2048;
                      v193 = v74;
                      v194 = 2048;
                      v195 = v76;
                      v196 = 2048;
                      v197 = v47;
                      _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: target scalar volume at 80dB: %.2f, at 74dB: %.2f convert back to dB: %.2f, %.2f scalar coefficient: %.4f", buf, 0x44u);
                    }
                  }
                }

                sub_1A8C0(v67);
              }

              if (v184)
              {
                std::__shared_weak_count::__release_weak(v184);
              }
            }
          }

          sub_1A8C0(v64);
        }
      }

      else
      {
        v65 = -1.0;
      }

      if (v186)
      {
        sub_1A8C0(v186);
      }

      sub_A0804(&theArray);
      sub_A0804(&Mutable);
      sub_A1D30(&__p);
      if (v46)
      {
        std::__shared_weak_count::__release_weak(v46);
      }

      *&valuePtr = v65;
      theArray = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      if (!theArray)
      {
        v149 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v149, "Could not construct");
      }

      sub_2C9254(buf, "ScalarVolume74", &theArray);
      *&v183 = v62;
      valuePtr = CFNumberCreate(0, kCFNumberFloatType, &v183);
      if (!valuePtr)
      {
        v150 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v150, "Could not construct");
      }

      sub_2C9254(&buf[16], "ScalarVolume80", &valuePtr);
      __p = buf;
      v181 = (&dword_0 + 2);
      *&v79 = COERCE_DOUBLE(sub_69CE8(&__p));
      v80 = 0;
      Mutable = v79;
      do
      {
        v81 = *&buf[v80 + 24];
        if (v81)
        {
          CFRelease(v81);
        }

        v82 = *&buf[v80 + 16];
        if (v82)
        {
          CFRelease(v82);
        }

        v80 -= 16;
      }

      while (v80 != -32);
      if (valuePtr)
      {
        CFRelease(valuePtr);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      v83 = *sub_5544(25);
      v84 = v83;
      if (v83 && os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317442;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3313;
        *&buf[18] = 2112;
        *&buf[20] = cf[0];
        *&buf[28] = 2112;
        *&buf[30] = cf[1];
        *&buf[38] = 2112;
        v193 = *v175;
        v194 = 2112;
        v195 = *&v175[1];
        v196 = 2048;
        v197 = v176;
        v198 = 2048;
        v199 = a3;
        v200 = 2048;
        v201 = v65;
        v202 = 2048;
        v203 = v62;
        _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Device Info: {Name: '%@' Model: '%@' Manufacture: '%@' UUID: '%@' device flag: '%0llx' sensitivity: %.4f scalar74: %.4f scalar80: %.4f}", buf, 0x62u);
      }

      v85 = cf[0];
      v86 = cf[1];
      v87 = v175[0];
      v88 = v175[1];
      *buf = cf[0];
      *&buf[8] = v175[0];
      *&buf[16] = cf[1];
      *&buf[24] = v175[1];
      *&buf[32] = v176;
      v193 = *&v79;
      v89 = a1[92];
      if (qword_6EB708 != -1)
      {
        dispatch_once(&qword_6EB708, &stru_6C0080);
      }

      if (off_6EB798)
      {
        off_6EB798(v89, buf);
      }

      CFRelease(v79);
      if (v88)
      {
        CFRelease(v88);
      }

      if (v87)
      {
        CFRelease(v87);
      }

      if (v86)
      {
        CFRelease(v86);
      }

      if (v85)
      {
        CFRelease(v85);
      }

      if (v46)
      {
        sub_1A8C0(v46);
      }

      return;
    }

LABEL_256:
    sub_1A8C0(v92);
    goto LABEL_77;
  }

  v7 = *sub_5544(25);
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "DSPChain.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3329;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : no associated ports in dspchain?", buf, 0x12u);
  }
}

void sub_2C7594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, std::__shared_weak_count *a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, std::__shared_weak_count *a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_1DB0E0(&__p);
  sub_1A8C0(v41);
  if (a22)
  {
    sub_1A8C0(a22);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_weak(a35);
  }

  sub_2C9298(&a13);
  if (a20)
  {
    sub_1A8C0(a20);
  }

  _Unwind_Resume(a1);
}

void sub_2C7AC4(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  if (a1[796] == 1)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v7 = std::__shared_weak_count::lock(v5);
      if (v7)
      {
        v8 = v7;
        v9 = *a2;
        if (!v9)
        {
LABEL_57:
          sub_1A8C0(v8);
          return;
        }

        if (!a1[798])
        {
          v16 = 1;
          goto LABEL_43;
        }

        if (a3 == 1701865584 || a3 == 1701868910)
        {
          if (!(*(*v9 + 424))(v9))
          {
            v16 = 0;
            goto LABEL_42;
          }

          v10 = sub_5544(25);
          v11 = *v10;
          if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v9[25];
            v32[0] = v9[24];
            v32[1] = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_5659C(&v33, v32, "", 792);
            v13 = (*(*v33 + 120))(v33);
            v14 = __p;
            (*(*v9 + 144))(__p, v9);
            if (v36 < 0)
            {
              v14 = __p[0];
            }

            v15 = v30;
            (*(*v9 + 136))(v30, v9);
            if (v31 < 0)
            {
              v15 = v30[0];
            }

            if (*(v9 + 303) < 0)
            {
              sub_54A0(v28, v9[35], v9[36]);
            }

            else
            {
              *v28 = *(v9 + 35);
              v29 = v9[37];
            }

            v20 = v28;
            if (v29 < 0)
            {
              v20 = v28[0];
            }

            *buf = 136316418;
            v38 = "RouteUtilities.cpp";
            v39 = 1024;
            v40 = 792;
            v41 = 1024;
            *v42 = v13;
            *&v42[4] = 2080;
            *&v42[6] = v14;
            v43 = 2080;
            v44 = v15;
            v45 = 2080;
            v46 = v20;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Skipping AUSPL since the device [%u, %s, %s, %s] is a temporary guest device", buf, 0x36u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(v28[0]);
            }

            if (v31 < 0)
            {
              operator delete(v30[0]);
            }

            if (v36 < 0)
            {
              operator delete(__p[0]);
            }

            if (v34)
            {
              sub_1A8C0(v34);
            }

            if (v12)
            {
              std::__shared_weak_count::__release_weak(v12);
            }
          }
        }

        else
        {
          v17 = sub_5544(25);
          v18 = *v17;
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(__p, a3);
            v19 = v36 >= 0 ? __p : __p[0];
            *buf = 136315650;
            v38 = "RouteUtilities.cpp";
            v39 = 1024;
            v40 = 783;
            v41 = 2080;
            *v42 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Skipping AUSPL since endpoint is not headphone: %s", buf, 0x1Cu);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v16 = 1;
LABEL_42:
        if (a1[798])
        {
LABEL_47:
          LODWORD(__p[0]) = v16;
          (*(*a1 + 128))(a1, 1936747629, 21, __p, 4, 0, 0, 0);
          v23 = *sub_5544(25);
          v24 = v23;
          if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v25 = "*running*";
            v38 = "DSPChain.mm";
            *buf = 136315650;
            if (v16)
            {
              v25 = "*bypassed*";
            }

            v39 = 1024;
            v40 = 1045;
            v41 = 2080;
            *v42 = v25;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: AUSPL is %s", buf, 0x1Cu);
          }

          a1[797] = v16 ^ 1;
          if (*(v9 + 36) == 1886152047)
          {
            v26 = *sub_5544(25);
            v27 = v26;
            if (v26)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v38 = "DSPChain.mm";
                v39 = 1024;
                v40 = 1058;
                _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: PortType is BluetoothLEOutput. Will not report SPL data", buf, 0x12u);
              }
            }

            a1[797] = 0;
          }

          goto LABEL_57;
        }

LABEL_43:
        v21 = *sub_5544(25);
        v22 = v21;
        if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v38 = "DSPChain.mm";
          v39 = 1024;
          v40 = 1051;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: VAD configured for a mode disallowing dosimetry. Will not report SPL data", buf, 0x12u);
        }

        goto LABEL_47;
      }
    }
  }
}

void sub_2C8084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22)
  {
    sub_1A8C0(a22);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  sub_1A8C0(v28);
  _Unwind_Resume(a1);
}

void sub_2C8164(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2C8180(AudioObjectID a1, int a2, const AudioObjectPropertyAddress *a3, uint64_t a4)
{
  if (a2 != 1)
  {
    v55 = sub_5544(14);
    v56 = sub_468EC(1, *v55, *(v55 + 8));
    v57 = v56;
    if (v56 && os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *outData = 136316162;
      *&outData[4] = "DSPChain.mm";
      *&outData[12] = 1024;
      *&outData[14] = 2936;
      v78 = 1024;
      *v79 = a2;
      *&v79[4] = 1024;
      *&v79[6] = a1;
      *&v79[10] = 2048;
      *&v79[12] = a4;
      _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): PlaybackDosimetry : DeviceVolumeChangeHandler called with %u property addresses? should be 1. deviceID: %u client: %p", outData, 0x28u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PlaybackDosimetry : DeviceVolumeChangeHandler called with %u property addresses? should be 1. deviceID: %u client: %p");
  }

  if (!a3)
  {
    v59 = sub_5544(14);
    v60 = sub_468EC(1, *v59, *(v59 + 8));
    v61 = v60;
    if (v60 && os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *outData = 136315906;
      *&outData[4] = "DSPChain.mm";
      *&outData[12] = 1024;
      *&outData[14] = 2941;
      v78 = 1024;
      *v79 = a1;
      *&v79[4] = 2048;
      *&v79[6] = a4;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): PlaybackDosimetry : DeviceVolumeChangeHandler called with NULL property addresses?  deviceID: %u client: %p", outData, 0x22u);
    }

    v62 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v62, "PlaybackDosimetry : DeviceVolumeChangeHandler called with NULL property addresses?  deviceID: %u client: %p");
  }

  v7 = (a4 + 856);
  v8 = *(a4 + 864);
  if (v8 != (a4 + 856))
  {
    do
    {
      v9 = v8[3];
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = v10;
          v12 = v8[2];
          if (v12)
          {
            v13 = (*(*v12 + 120))(v12);
            sub_1A8C0(v11);
            if (v13 == a1)
            {
              goto LABEL_12;
            }
          }

          else
          {
            sub_1A8C0(v11);
          }
        }
      }

      v8 = v8[1];
    }

    while (v8 != v7);
    return 560232035;
  }

LABEL_12:
  if (v8 != v7)
  {
    sub_5659C(&v75, v8 + 2, "", 2955);
    v15 = v75;
    v14 = v76;
    v73[0] = v75;
    v73[1] = v76;
    if (v76)
    {
      atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v74 = a1;
    v70 = a4;
    v71 = a1;
    v72 = a4;
    mSelector = a3->mSelector;
    if (a3->mSelector == 1836414053)
    {
      if ((sub_2C8B48(v73) & 1) == 0)
      {
        if (!sub_2C8C70(&v70))
        {
          goto LABEL_45;
        }

        *outData = 0;
        ioDataSize[0] = 4;
        AudioObjectGetPropertyData(a1, a3, 0, 0, ioDataSize, outData);
        if (*outData == 1)
        {
          sub_2C8D70(a4, a1, -3.4028e38);
        }
      }

LABEL_94:
      v17 = 0;
      if (!v14)
      {
        return v17;
      }

LABEL_95:
      sub_1A8C0(v14);
      sub_1A8C0(v14);
      return v17;
    }

    if (mSelector != 1970496630)
    {
      if (mSelector == 1987013732)
      {
        if (sub_2C8B48(v73))
        {
          goto LABEL_94;
        }

        if (sub_2C8C70(&v70))
        {
          *outData = 0;
          ioDataSize[0] = 4;
          AudioObjectGetPropertyData(a1, a3, 0, 0, ioDataSize, outData);
          sub_2C8D70(a4, a1, *outData);
          goto LABEL_94;
        }

LABEL_45:
        v17 = 1717660012;
        if (!v14)
        {
          return v17;
        }

        goto LABEL_95;
      }

      v24 = *sub_5544(25);
      v25 = v24;
      if (v24)
      {
        v26 = v24;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(ioDataSize, a3->mSelector);
          if (v68 >= 0)
          {
            v27 = ioDataSize;
          }

          else
          {
            v27 = *ioDataSize;
          }

          *outData = 136315906;
          *&outData[4] = "DSPChain.mm";
          *&outData[12] = 1024;
          *&outData[14] = 3053;
          v78 = 2080;
          *v79 = v27;
          *&v79[8] = 1024;
          *&v79[10] = a1;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: unknown selector for property handler %s device: %u", outData, 0x22u);
          if (v68 < 0)
          {
            operator delete(*ioDataSize);
          }
        }
      }

      goto LABEL_94;
    }

    if (!sub_2C8C70(&v70))
    {
      goto LABEL_45;
    }

    v69 = 1701868910;
    *outData = v15;
    *&outData[8] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = sub_2C9130(outData, &v69);
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (v18)
    {
      v19 = sub_5544(18);
      v20 = sub_5544(29);
      v21 = 0;
      *outData = 0x100000002;
      v22 = *(v19 + 8);
      while (1)
      {
        v23 = *&outData[v21];
        if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
        {
          break;
        }

        v21 += 4;
        if (v21 == 8)
        {
          goto LABEL_54;
        }
      }

      if ((v22 & v23) == 0)
      {
        v19 = v20;
      }

LABEL_54:
      v35 = sub_5544(25);
      v36 = 0;
      *outData = 0x100000002;
      v37 = *(v19 + 8);
      while (1)
      {
        v38 = *&outData[v36];
        if (((v37 & v38) != 0) != ((*(v35 + 8) & v38) != 0))
        {
          break;
        }

        v36 += 4;
        if (v36 == 8)
        {
          goto LABEL_60;
        }
      }

      if ((v37 & v38) == 0)
      {
        v19 = v35;
      }

LABEL_60:
      v39 = *v19;
      v40 = v39;
      if (!v39)
      {
        goto LABEL_93;
      }

      v40 = v39;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
LABEL_92:

LABEL_93:
        goto LABEL_94;
      }

      sub_22170(ioDataSize, v18);
      if (v68 >= 0)
      {
        v41 = ioDataSize;
      }

      else
      {
        v41 = *ioDataSize;
      }

      *outData = 136315650;
      *&outData[4] = "DSPChain.mm";
      *&outData[12] = 1024;
      *&outData[14] = 3047;
      v78 = 2080;
      *v79 = v41;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry: failed to fetch user selected endpoint type. err '%s'", outData, 0x1Cu);
    }

    else
    {
      v28 = v69;
      if (v69 == *(a4 + 804))
      {
        goto LABEL_94;
      }

      sub_2C7AC4(a4, a4 + 808, v69);
      v29 = *(a4 + 804);
      *(a4 + 804) = v28;
      sub_14BDFC(a4);
      v30 = sub_5544(18);
      v31 = sub_5544(29);
      v32 = 0;
      *outData = 0x100000002;
      v33 = *(v30 + 8);
      while (1)
      {
        v34 = *&outData[v32];
        if (((v33 & v34) != 0) != ((*(v31 + 8) & v34) != 0))
        {
          break;
        }

        v32 += 4;
        if (v32 == 8)
        {
          goto LABEL_70;
        }
      }

      if ((v33 & v34) == 0)
      {
        v30 = v31;
      }

LABEL_70:
      v42 = sub_5544(25);
      v43 = 0;
      *outData = 0x100000002;
      v44 = *(v30 + 8);
      while (1)
      {
        v45 = *&outData[v43];
        if (((v44 & v45) != 0) != ((*(v42 + 8) & v45) != 0))
        {
          break;
        }

        v43 += 4;
        if (v43 == 8)
        {
          goto LABEL_76;
        }
      }

      if ((v44 & v45) == 0)
      {
        v30 = v42;
      }

LABEL_76:
      v46 = sub_468EC(3, *v30, *(v30 + 8));
      v40 = v46;
      if (!v46)
      {
        goto LABEL_93;
      }

      v40 = v46;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_92;
      }

      v47 = ioDataSize;
      sub_22170(ioDataSize, v29);
      if (v68 < 0)
      {
        v47 = *ioDataSize;
      }

      sub_22170(v65, *(a4 + 804));
      v48 = v66;
      v49 = v65[0];
      (*(*v15 + 128))(__p, v15);
      v50 = v65;
      if (v48 < 0)
      {
        v50 = v49;
      }

      if (v64 >= 0)
      {
        v51 = __p;
      }

      else
      {
        v51 = __p[0];
      }

      v52 = "N";
      if (*(a4 + 796) == 1 && *(a4 + 797))
      {
        v52 = "Y";
      }

      *outData = 136316418;
      *&outData[4] = "DSPChain.mm";
      *&outData[12] = 1024;
      *&outData[14] = 3041;
      v78 = 2080;
      *v79 = v47;
      *&v79[8] = 2080;
      *&v79[10] = v50;
      *&v79[18] = 2080;
      v80 = v51;
      v81 = 2080;
      v82 = v52;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: Device category changed from '%s' to '%s' for bluetooth audio device with UID %s, report SPL: %s", outData, 0x3Au);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      if (v66 < 0)
      {
        operator delete(v65[0]);
      }
    }

    if (v68 < 0)
    {
      operator delete(*ioDataSize);
    }

    goto LABEL_92;
  }

  return 560232035;
}

void sub_2C8A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    sub_1A8C0(v20);
    sub_1A8C0(v20);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2C8B48(uint64_t a1)
{
  v2 = *a1;
  strcpy(v11, "newsbolg");
  BYTE1(v11[2]) = 0;
  HIWORD(v11[2]) = 0;
  v3 = sub_59410(v2);
  *(&v5 + 1) = v4;
  *&v5 = v3;
  v6 = ((v5 >> 32) >> 32) & (HIDWORD(v3) != 0);
  if (v6 == 1)
  {
    v7 = *sub_5544(25);
    v8 = v7;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 16);
      v11[0] = 136315650;
      *&v11[1] = "DSPChain.mm";
      v12 = 1024;
      v13 = 2965;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : NOT setting device initiated volume change on AUSPL, device in Software Volume Mode, device: %u", v11, 0x18u);
    }
  }

  return v6;
}

uint64_t sub_2C8C70(uint64_t a1)
{
  v1 = *(*a1 + 796);
  if ((v1 & 1) == 0)
  {
    v3 = *sub_5544(25);
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);
      v8 = 136315906;
      v9 = "DSPChain.mm";
      v10 = 1024;
      v11 = 2976;
      v12 = 1024;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : DevicePropertyChangeHandler called on dspchain that does not have AUSPL? deviceID: %u client: %p", &v8, 0x22u);
    }
  }

  return v1;
}

uint64_t sub_2C8D70(void *a1, int a2, float a3)
{
  v6 = *sub_5544(25);
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v22 = "DSPChain.mm";
    v23 = 1024;
    v24 = 642;
    v25 = 2048;
    v26 = a3;
    v27 = 1024;
    v28 = a2;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : setting device initiated volume change on AUSPL: %.2fdB device: %u", buf, 0x22u);
  }

  v8 = (*(*a1 + 72))(a1, 1936747629, 0, 0, a3);
  if (v8)
  {
    v9 = *sub_5544(25);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, v8);
        v12 = v20 >= 0 ? __p : __p[0];
        *buf = 136315906;
        v22 = "DSPChain.mm";
        v23 = 1024;
        v24 = 645;
        v25 = 2080;
        v26 = *&v12;
        v27 = 1024;
        v28 = a2;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Failed to set volume change on AUSPL: %s, device: %u", buf, 0x22u);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  result = sub_C2C1C();
  v14 = *(result + 8);
  if (v14)
  {
    result = sub_DDE9C(a1 + 126, 0);
    if (result)
    {
      LODWORD(__p[0]) = 0;
      (*(*a1 + 64))(a1, 1685287015, 1936749423, __p, 0);
      *__p = *__p + 13.0;
      v18 = 0.0;
      (*(*a1 + 64))(a1, 1685287015, 1819176045, &v18, 0);
      v15 = (v14 - *__p) - v18;
      v16 = *sub_5544(21);
      v17 = v16;
      if (v16)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v22 = "DSPChain.mm";
          v23 = 1024;
          v24 = 659;
          v25 = 2048;
          v26 = v15;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [VolumeLimit] Setting loudness target to : %f dB", buf, 0x1Cu);
        }
      }

      return (*(*a1 + 72))(a1, 1685287015, 1818977907, 0, v15);
    }
  }

  return result;
}

uint64_t sub_2C9130(uint64_t *a1, int *a2)
{
  v3 = 560227702;
  v4 = a1[1];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *a1;
      if (v8)
      {
        v12 = 0x676C6F6275736476;
        v13 = 0;
        if ((*(*v8 + 16))(v8, &v12))
        {
          v11 = 1701868910;
          v10 = 4;
          (*(*v8 + 40))(v8, &v12, 0, 0, &v10, &v11);
          v3 = 0;
          *a2 = v11;
        }

        else
        {
          v3 = 561017456;
        }
      }

      sub_1A8C0(v7);
    }
  }

  return v3;
}

uint64_t sub_2C9254(uint64_t a1, char *a2, const void **a3)
{
  sub_88CE8(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t sub_2C9298(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

float sub_2C92FC(CFArrayRef *a1, CFArrayRef *a2, float a3)
{
  v6 = *sub_5544(25);
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 4.8152e-34;
    v23 = "DSPChain.mm";
    v24 = 1024;
    v25 = 3406;
    v26 = 2048;
    v27 = a3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: interpolating output volume %.2f", buf, 0x1Cu);
  }

  v21 = 0.0;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
  }

  else
  {
    Count = 0;
  }

  v9 = -1.0;
  if (*a1)
  {
    v10 = CFArrayGetCount(*a1);
    if (Count >= 2)
    {
      v11 = v10;
      if (v10 >= 2)
      {
        v12 = 0;
        while (1)
        {
          *buf = 0.0;
          sub_2E45AC(a2, v12, buf);
          if (*buf > a3)
          {
            break;
          }

          if (Count == ++v12)
          {
            v12 = Count;
            break;
          }
        }

        v13 = *sub_5544(25);
        v14 = v13;
        if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 4.8152e-34;
          v23 = "DSPChain.mm";
          v24 = 1024;
          v25 = 3427;
          v26 = 1024;
          LODWORD(v27) = v12;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: target index: %u", buf, 0x18u);
        }

        if (v12 >= Count)
        {
          v15 = v11 - 1;
          v16 = a1;
        }

        else
        {
          if (v12)
          {
            *buf = -1.0;
            v19 = -1.0;
            v20 = -1.0;
            v18 = -1.0;
            sub_2E45AC(a2, v12, buf);
            sub_2E45AC(a2, v12 - 1, &v20);
            sub_2E45AC(a1, v12, &v19);
            sub_2E45AC(a1, v12 - 1, &v18);
            return v19 + ((v18 - v19) * ((a3 - *buf) / (v20 - *buf)));
          }

          v16 = a1;
          v15 = 0;
        }

        sub_2E45AC(v16, v15, &v21);
        return v21;
      }
    }
  }

  return v9;
}

void sub_2C9598(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = dlerror();
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
LABEL_5:
    off_6EB710 = dlsym(v1, "AudioDataAnalysisManagerCreate");
    off_6EB718 = dlsym(v1, "AudioDataAnalysisManagerDispose");
    qword_6EB720 = dlsym(v1, "AudioDataAnalysisManagerReset");
    off_6EB728 = dlsym(v1, "AudioDataAnalysisManagerUpdateReportingSessions");
    qword_6EB730 = dlsym(v1, "AudioDataAnalysisManagerCreateNodePCM");
    off_6EB738 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeSPL");
    qword_6EB740 = dlsym(v1, "AudioDataAnalysisManagerRemoveNode");
    off_6EB748 = dlsym(v1, "AudioDataAnalysisManagerInitialize");
    qword_6EB750 = dlsym(v1, "AudioDataAnalysisManagerIsSessionInitialized");
    qword_6EB758 = dlsym(v1, "AudioDataAnalysisManagerProcessAudio");
    off_6EB760 = dlsym(v1, "AudioDataAnalysisManagerProcessSPL");
    qword_6EB768 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    qword_6EB770 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    off_6EB778 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeMicLevel");
    qword_6EB780 = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSPL");
    qword_6EB788 = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSoundClass");
    off_6EB790 = dlsym(v1, "AudioDataAnalysisManagerProcessMicLevel");
    off_6EB798 = dlsym(v1, "AudioDataAnalysisManagerSetDeviceInfo");
    off_6EB7A0 = dlsym(v1, "AudioDataAnalysisManagerRegisterDeviceInfo");
    off_6EB7A8 = dlsym(v1, "AudioDataAnalysisManagerSetDeviceConnectionState");
    off_6EB7B0 = dlsym(v1, "AudioDataAnalysisManagerStartServices");
    off_6EB7B8 = dlsym(v1, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    qword_6EB7C0 = dlsym(v1, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = dlerror();
    v3 = 136315138;
    v4 = v2;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }
}

uint64_t sub_2C98F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2C9920(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C995C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_2C9998(uint64_t a1, void **a2)
{
  result = sub_6F86C(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_2C9A58(unint64_t a1)
{
  sub_13ABB0(a1);

  operator delete();
}

uint64_t sub_2C9A90(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  return sub_DD7C4(a1 + 16);
}

uint64_t sub_2C9AD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_F320C(a2, *(a1 + 1240), *(a1 + 1248), (*(a1 + 1248) - *(a1 + 1240)) >> 4);
}

uint64_t sub_2C9AF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 1232) = (*(*a2 + 120))(a2);
  *(a1 + 1236) = 1;
  if (*(a1 + 1216))
  {
    v4 = *(a1 + 1208);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 1208) = 0;
    v6 = *(a1 + 1200);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*(a1 + 1192) + 8 * i) = 0;
      }
    }

    *(a1 + 1216) = 0;
  }

  sub_F5768((a1 + 1240));
  result = _os_feature_enabled_impl();
  if (result)
  {
    LODWORD(v49) = 1651074168;
    if ((*(a1 + 1236) & 1) == 0)
    {
      goto LABEL_62;
    }

    LODWORD(v37) = *(a1 + 1232);
    __dst[0] = 0x696E70746467686DLL;
    LODWORD(__dst[1]) = 0;
    v9 = sub_542F0(&v37, __dst, 4u, &v49);
    *(&v12 + 1) = v10;
    *&v12 = v9;
    v11 = v12 >> 32;
    v13 = (v11 & 0x100000000) == 0 || v11 == 0;
    v14 = v13;
    if (!v13)
    {
      LODWORD(__dst[0]) = 1651074168;
      sub_2CA130((a1 + 1192), 0x62696478u);
    }

    strcpy(v41, "cwdv");
    v42 = 3;
    __dst[0] = 0;
    __dst[1] = 0;
    v40 = 0;
    v41[8] = 0;
    v44[0] = 0;
    v44[1] = 0;
    v43 = v44;
    v47 = 0;
    v48 = 0;
    __p = 0;
    v45 = 44739210;
    (*(*a2 + 512))(&v37, a2, __dst);
    v15 = v38;
    if (v38 != &v37)
    {
      while (1)
      {
        sub_88A00(&v49, v15 + 2, "", 1091);
        v16 = v49;
        if ((*(*v49 + 208))(v49))
        {
          v17 = ((*(*v16 + 200))(v16) >> 32) & 1;
        }

        else
        {
          LOBYTE(v17) = 0;
        }

        if (v50)
        {
          sub_1A8C0(v50);
        }

        if (v17)
        {
          break;
        }

        v15 = v15[1];
        if (v15 == &v37)
        {
          goto LABEL_32;
        }
      }
    }

    if (v15 == &v37)
    {
LABEL_32:
      v21 = 0.0;
      v20 = 1;
    }

    else
    {
      sub_88A00(&v49, v15 + 2, "", 1096);
      v18 = (*(*v49 + 200))(v49);
      v19 = *&v18;
      if ((v18 & 0x100000000) == 0)
      {
        sub_1EC054();
      }

      if (v50)
      {
        sub_1A8C0(v50);
      }

      v20 = 0;
      v21 = v19;
    }

    sub_65310(&v37);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v44[0]);
    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }

    if (((v14 | v20) & 1) == 0)
    {
      (*(*a1 + 72))(a1, 1685287015, 1651074168, 1, v21);
    }

    v22 = 0;
    for (j = 0; j != 6; ++j)
    {
      while (1)
      {
        v24 = dword_519278[j];
        LODWORD(v49) = v24;
        if ((*(a1 + 1236) & 1) == 0)
        {
          goto LABEL_62;
        }

        LODWORD(v37) = *(a1 + 1232);
        __dst[0] = 0x696E70746467686DLL;
        LODWORD(__dst[1]) = 0;
        v25 = sub_542F0(&v37, __dst, 4u, &v49);
        *(&v28 + 1) = v26;
        *&v28 = v25;
        v27 = v28 >> 32;
        if ((v27 & 0x100000000) == 0 || !v27)
        {
          break;
        }

        sub_266144((a1 + 1192), v24);
        ++j;
        v22 = 1;
        if (j == 6)
        {
          goto LABEL_48;
        }
      }
    }

    if (v22)
    {
LABEL_48:
      if (*(a1 + 735) < 0)
      {
        sub_54A0(__dst, *(a1 + 712), *(a1 + 720));
      }

      else
      {
        *__dst = *(a1 + 712);
        v40 = *(a1 + 728);
      }

      v29 = *(a1 + 16);
      v36 = *(a1 + 8);
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 16), 1uLL, memory_order_relaxed);
      }

      sub_37D2FC();
    }

    LODWORD(v49) = 1832018808;
    if ((*(a1 + 1236) & 1) == 0)
    {
LABEL_62:
      sub_1EC054();
    }

    LODWORD(v37) = *(a1 + 1232);
    __dst[0] = 0x696E70746467686DLL;
    LODWORD(__dst[1]) = 0;
    result = sub_542F0(&v37, __dst, 4u, &v49);
    *(&v32 + 1) = v30;
    *&v32 = result;
    v31 = v32 >> 32;
    if ((v31 & 0x100000000) != 0 && v31)
    {
      LODWORD(__dst[0]) = 1832018808;
      sub_2CA130((a1 + 1192), 0x6D326378u);
      sub_8BD14(&v49, *(a1 + 8), *(a1 + 16));
      sub_2C3F24();
    }

    v33 = *(a1 + 1240);
    v34 = *(a1 + 1248);
    while (v33 != v34)
    {
      v35 = *v33;
      v33 += 2;
      result = (*(*v35 + 16))(v35);
    }
  }

  return result;
}

void sub_2CA08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_65310(&a13);
  sub_46934(&__p);
  _Unwind_Resume(a1);
}

void *sub_2CA130(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2CA350(uint64_t a1, unsigned int a2, unsigned int a3, float a4)
{
  inData = a4;
  v5 = sub_8BE08(a2, a3);
  if (*(a1 + 1236) != 1 || HIDWORD(v5) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 1200);
  if (!v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v7 <= v5)
    {
      v9 = v5 % v7;
    }
  }

  else
  {
    v9 = (v7 - 1) & v5;
  }

  v10 = *(*(a1 + 1192) + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (!v11)
  {
    return 0;
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= v7)
      {
        v12 %= v7;
      }
    }

    else
    {
      v12 &= v7 - 1;
    }

    if (v12 != v9)
    {
      return 0;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      return 0;
    }
  }

  if (*(v11 + 4) != v5)
  {
    goto LABEL_20;
  }

  inQualifierData = v5;
  v14 = *(a1 + 1232);
  *&inAddress.mSelector = 0x696E70746467706DLL;
  inAddress.mElement = 0;
  v15 = AudioObjectSetPropertyData(v14, &inAddress, 4u, &inQualifierData, 4u, &inData);
  v16 = *sub_5544(25);
  v17 = v16;
  if (v15)
  {
    if (v16)
    {
      v18 = v16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, inQualifierData);
        if (v26 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        inAddress.mSelector = 136316162;
        *&inAddress.mScope = "DSPChain.mm";
        v30 = 1024;
        v31 = 4048;
        v32 = 2080;
        v33 = v19;
        v34 = 2048;
        v35 = inData;
        v36 = 1024;
        v37 = v15;
        v20 = "%25s:%-5d Error while setting parameter %s to %f: %d";
        v21 = v18;
        v22 = OS_LOG_TYPE_ERROR;
        goto LABEL_36;
      }

      goto LABEL_38;
    }
  }

  else if (v16)
  {
    v23 = v16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      sub_22170(__p, inQualifierData);
      if (v26 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      inAddress.mSelector = 136316162;
      *&inAddress.mScope = "DSPChain.mm";
      v30 = 1024;
      v31 = 4053;
      v32 = 2080;
      v33 = v24;
      v34 = 2048;
      v35 = inData;
      v36 = 1024;
      v37 = 0;
      v20 = "%25s:%-5d Success setting parameter %s to %f: %d";
      v21 = v23;
      v22 = OS_LOG_TYPE_INFO;
LABEL_36:
      _os_log_impl(&dword_0, v21, v22, v20, &inAddress, 0x2Cu);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_38:
  }

  return v15;
}

uint64_t sub_2CA674(uint64_t a1, unsigned int a2, unsigned int a3, float *a4, unsigned int a5)
{
  v8 = sub_8BE08(a2, a3);
  v31 = v8;
  v32 = BYTE4(v8);
  if (*(a1 + 1236) != 1 || HIDWORD(v8) == 0)
  {
    return 2003332927;
  }

  LODWORD(v29[0]) = *(a1 + 1232);
  strcpy(&buf, "mpgdtpni");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  v11 = sub_2CAA28(v29, &buf, 4u, &v31);
  v13 = v11;
  if (v11 || (v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v13;
  }

  *a4 = *(&v11 + 1);
  v14 = *sub_5544(25);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      sub_22170(v29, 0x77686F3Fu);
      if (v30 >= 0)
      {
        v17 = v29;
      }

      else
      {
        v17 = v29[0];
      }

      if ((v32 & 1) == 0)
      {
        sub_1EC054();
      }

      sub_22170(v27, v31);
      v18 = v28;
      v19 = v27[0];
      sub_22170(__p, a5);
      v20 = v27;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if (v26 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      v22 = *a4;
      buf.mSelector = 136316418;
      *&buf.mScope = "DSPChain.mm";
      v34 = 1024;
      v35 = 4018;
      v36 = 2080;
      v37 = v17;
      v38 = 2080;
      v39 = v20;
      v40 = 2080;
      v41 = v21;
      v42 = 2048;
      v43 = v22;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Get DSP parameter(%s) %s (%s) = %f", &buf, 0x3Au);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }
  }

  return 0;
}

unint64_t sub_2CAA28(AudioObjectID *a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (AudioObjectHasProperty(*a1, a2))
  {
    ioDataSize[0] = 2003329396;
    *&ioDataSize[1] = 0;
    PropertyData = 2003329396;
    v9 = 0;
    ioDataSize[0] = sub_543D0(*a1, a2, a3, a4);
    if (ioDataSize[0])
    {
      outData[0] = 0;
      PropertyData = AudioObjectGetPropertyData(*a1, a2, a3, a4, ioDataSize, outData);
      if (PropertyData)
      {
        v9 = 0;
      }

      else
      {
        v9 = outData[0];
      }
    }
  }

  else
  {
    v9 = 0;
    PropertyData = 2003332927;
  }

  return PropertyData | (v9 << 32);
}

void sub_2CAB64(unint64_t a1)
{
  *a1 = off_6BFFA8;
  v2 = (a1 + 1240);
  sub_F5714(&v2);
  sub_DDE50(a1 + 1192);
  sub_13ABB0(a1);

  operator delete();
}

unint64_t sub_2CABE8(unint64_t a1)
{
  *a1 = off_6BFFA8;
  v3 = (a1 + 1240);
  sub_F5714(&v3);
  sub_DDE50(a1 + 1192);

  return sub_13ABB0(a1);
}

uint64_t sub_2CAC5C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2CAC8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2CACCC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2CACFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2CAD3C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2CAD6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2CADAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2CADDC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2CAE18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C02A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2CAE8C(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2CAED4(uint64_t a1)
{
  if (*(a1 + 496) != 4096)
  {
    v2 = a1 + 48;
    *v12 = a1 + 48;
    v3 = 1;
    v12[8] = 1;
    sub_47BD8(a1 + 48);
    v4 = *(a1 + 32) - *(a1 + 24);
    if (v4)
    {
      v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
      v6 = 1;
      v7 = 8;
      do
      {
        v8 = (*(**(*(a1 + 24) + v7) + 144))(*(*(a1 + 24) + v7), 4096);
        v3 = v8 == 0;
        if (v8)
        {
          v9 = 1;
        }

        else
        {
          v9 = v6 >= v5;
        }

        ++v6;
        v7 += 24;
      }

      while (!v9);
    }

    sub_47C90(v2);
    if (v3)
    {
      *(a1 + 496) = 4096;
    }

    else
    {
      v10 = *sub_5544(14);
      v11 = v10;
      if (v10)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v12 = 136315394;
          *&v12[4] = "DSPChain.mm";
          v13 = 1024;
          v14 = 1966;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", v12, 0x12u);
        }
      }
    }
  }
}

caulk::concurrent::message **sub_2CB088(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = a1;
  v5[0] = v1;
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_2CB114(v5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_2CB7D0(&v4);
}

void sub_2CB0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, caulk::concurrent::message *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  sub_2CB7D0(&a10);
  _Unwind_Resume(a1);
}

void sub_2CB114(float *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6 = atomic_load((v5 + 65));
        if (v6)
        {
          v7 = a1[4];
          v8 = *(v5 + 136);
          v9 = fabsf(v7);
          v10 = fabsf(v8);
          if (v9 < v10)
          {
            v9 = v10;
          }

          if (v9 < 1.0)
          {
            v9 = 1.0;
          }

          if (vabds_f32(v7, v8) > fabsf(v9 * 0.00000011921))
          {
            v11 = *(a1 + 3);
            if (v7 >= 11.0)
            {
              v12 = *sub_5544(42);
              v13 = v12;
              if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v21 = "DSPChain.mm";
                v22 = 1024;
                v23 = 355;
                v24 = 2048;
                v25 = 11.0;
                v26 = 2048;
                v27 = v7;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPGraphParameterUpdater::UpdateAULoudnessNormalizerParameters() - auln output gain above threshold %.2fdB. Gain is %.2f.", buf, 0x26u);
              }
            }

            *&valuePtr = v7;
            cf = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            if (!cf)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }

            sub_88CE8(&v28, "DRCOutputGain");
            CFRetain(cf);
            v29 = cf;
            v18[0] = &v28;
            v18[1] = 1;
            valuePtr = sub_69CE8(v18);
            sub_23E2D8(valuePtr, 1073741838, 18);
            if (valuePtr)
            {
              CFRelease(valuePtr);
            }

            if (v29)
            {
              CFRelease(v29);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            CFRelease(cf);
            if (*(v5 + 112) <= v11)
            {
              v14 = *sub_5544(42);
              v15 = v14;
              if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v21 = "DSPChain.mm";
                v22 = 1024;
                v23 = 365;
                v24 = 2048;
                v25 = v7;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPGraphParameterUpdater::UpdateAULoudnessNormalizerParameters() - auln output gain is %.2f.", buf, 0x1Cu);
              }

              *(v5 + 112) = v11 + 1000000000;
            }

            *(v5 + 136) = v7;
          }
        }
      }

      sub_1A8C0(v4);
    }
  }
}

caulk::concurrent::message **sub_2CB7D0(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C0128;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x40uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2CB84C(caulk::concurrent::message *this)
{
  *this = off_6C0128;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2CB8BC(caulk::concurrent::message *this)
{
  *this = off_6C0128;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2CB918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = *(a1 + 24);
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  sub_2CB114(v2);
  if (v1)
  {

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2CB994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2CB9AC(caulk::concurrent::message *this)
{
  *this = off_6C0128;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2CBA1C(caulk::concurrent::message *this)
{
  *this = off_6C0128;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

caulk::concurrent::message **sub_2CBA78(caulk::concurrent::message *a1)
{
  v1 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = a1;
  v5[0] = v1;
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5[2] = *(a1 + 5);
  sub_2CBAFC(v5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_2CC0F0(&v4);
}

void sub_2CBADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  sub_2CC0F0(&a9);
  _Unwind_Resume(a1);
}

void sub_2CBAFC(float *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6 = atomic_load((v5 + 64));
        if (v6)
        {
          v8 = a1[4];
          v7 = a1[5];
          if (*(v5 + 132) != 1 || *(v5 + 128) != v8 || *(v5 + 124) != 1)
          {
            goto LABEL_13;
          }

          v9 = *(v5 + 120);
          v10 = fabsf(v7);
          v11 = fabsf(v9);
          if (v10 < v11)
          {
            v10 = v11;
          }

          if (v10 < 1.0)
          {
            v10 = 1.0;
          }

          if (vabds_f32(v7, v9) > fabsf(v10 * 0.00000011921))
          {
LABEL_13:
            v12 = *(v5 + 80);
            if (v12)
            {
              v13 = std::__shared_weak_count::lock(v12);
              if (v13)
              {
                v14 = v13;
                v15 = *(v5 + 72);
                if (v15)
                {
                  v16 = *(v15 + 1056);
                  if (v16)
                  {
                    v17 = *(v15 + 1048);
                    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_1A8C0(v16);
                    v18 = std::__shared_weak_count::lock(v16);
                    std::__shared_weak_count::__release_weak(v16);
                    if (v18)
                    {
                      if (v17 && (*(*v17 + 280))(v17))
                      {
                        (*(*v17 + 272))(v17, v8 > 0.0, v7);
                        if (v8 <= 0.0)
                        {
                          v19 = *sub_5544(42);
                          v20 = v19;
                          if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136315394;
                            v22 = "DSPChain.mm";
                            v23 = 1024;
                            v24 = 333;
                            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d DSPGraphParameterUpdater::Reset() - resetting last slider position and ramp status.", buf, 0x12u);
                          }

                          if (*(v5 + 124) == 1)
                          {
                            *(v5 + 124) = 0;
                          }

                          if (*(v5 + 132) == 1)
                          {
                            *(v5 + 132) = 0;
                          }
                        }

                        else
                        {
                          *(v5 + 128) = v8;
                          *(v5 + 132) = 1;
                          *(v5 + 120) = v7;
                          *(v5 + 124) = 1;
                        }
                      }

                      sub_1A8C0(v18);
                    }
                  }
                }

                sub_1A8C0(v14);
              }
            }
          }
        }
      }

      sub_1A8C0(v4);
    }
  }
}

void sub_2CC0D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

caulk::concurrent::message **sub_2CC0F0(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C00D8;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x38uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2CC16C(caulk::concurrent::message *this)
{
  *this = off_6C00D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2CC1DC(caulk::concurrent::message *this)
{
  *this = off_6C00D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2CC238(void *a1)
{
  v1 = a1[4];
  v2[0] = a1[3];
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v2[2] = a1[5];
  sub_2CBAFC(v2);
  if (v1)
  {

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2CC2AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2CC2C4(caulk::concurrent::message *this)
{
  *this = off_6C00D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2CC334(caulk::concurrent::message *this)
{
  *this = off_6C00D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2CC390(uint64_t a1, int a2)
{
  if (*(a1 + 1160))
  {
    v4 = *sub_5544(25);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 735) < 0)
        {
          sub_54A0(__p, *(a1 + 712), *(a1 + 720));
        }

        else
        {
          *__p = *(a1 + 712);
          v22 = *(a1 + 728);
        }

        v7 = __p;
        v8 = *(a1 + 799);
        if (v22 < 0)
        {
          v7 = __p[0];
        }

        *buf = 136316162;
        v24 = "DSPChain.mm";
        if (a2)
        {
          v9 = "yes";
        }

        else
        {
          v9 = "no";
        }

        v25 = 1024;
        v26 = 2589;
        v27 = 2080;
        v28 = v7;
        v29 = 1024;
        LODWORD(v30[0]) = v8;
        WORD2(v30[0]) = 2080;
        *(v30 + 6) = v9;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Log Voice isolation state %d, while IO running? %s", buf, 0x2Cu);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v10 = *(a1 + 1160);
    v11 = *(a1 + 799);
    v12 = atomic_load((v10 + 16));
    if ((v12 ^ v11))
    {
      if (*(a1 + 799) && (*(v10 + 104) & 1) == 0)
      {
        (*(**v10 + 16))();
        *(v10 + 104) = 1;
      }

      v13 = *sub_5544(25);
      v14 = v13;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "Disabling";
        if (v11)
        {
          v15 = "Enabling";
        }

        v24 = "DSPChain.mm";
        v25 = 1024;
        v26 = 427;
        v16 = "thread-safe";
        *buf = 136315906;
        v28 = v15;
        v27 = 2080;
        if (!a2)
        {
          v16 = "instantly";
        }

        v29 = 2080;
        v30[0] = v16;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s voice isolation %s", buf, 0x26u);
      }

      std::mutex::lock((v10 + 24));
      atomic_store(v11, (v10 + 16));
      if (a2)
      {
        v17 = caulk::mach::semaphore::timed_wait_or_error((v10 + 96), *(v10 + 88));
        std::mutex::unlock((v10 + 24));
        if ((v17 & 0x100000000) == 0)
        {
          v18 = *sub_5544(25);
          v19 = v18;
          if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = "off";
            v24 = "DSPChain.mm";
            *buf = 136315650;
            if (v11)
            {
              v20 = "on";
            }

            v25 = 1024;
            v26 = 435;
            v27 = 2080;
            v28 = v20;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Timed out attempting to tell IO thread about VI state (%s)", buf, 0x1Cu);
          }
        }

        if (v11)
        {
          return;
        }
      }

      else
      {
        atomic_store(v11, (v10 + 17));
        std::mutex::unlock((v10 + 24));
        if (v11)
        {
          return;
        }
      }

      if (*(v10 + 104) == 1)
      {
        (*(**v10 + 24))();
        *(v10 + 104) = 0;
      }
    }
  }
}

void *sub_2CC760(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_2CC7A8(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = off_6C03F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return sub_135DFC((a2 + 3), a1[3], a1[4], (a1[4] - a1[3]) >> 3);
}

void sub_2CC81C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2CC8C4(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_2CC8E4(void *a1)
{
  *a1 = off_6C03F8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_2CC960(void *a1)
{
  *a1 = off_6C03F8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_2CC9BC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_2CCA68(void *a1)
{
  *a1 = off_6C0440;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_2CCAD4(void *a1)
{
  *a1 = off_6C0440;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_2CCB20(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  sub_DD7C4(a1);
  v4 = *(a2 + 80);
  if (v4 != -1)
  {
    v6 = a1;
    (off_6C0140[v4])(&v6, a2);
    *(a1 + 80) = v4;
  }

  return a1;
}

uint64_t sub_2CCBC8(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  sub_44E44(*a1, a2);
  sub_2726F4((v3 + 3), a2 + 24);
  result = sub_2726F4((v3 + 6), a2 + 48);
  *(v3 + 36) = *(a2 + 72);
  return result;
}

void sub_2CCC14(_Unwind_Exception *a1)
{
  sub_98A08(*(v1 + 32));
  sub_477A0(*(v1 + 8));
  _Unwind_Resume(a1);
}

_BYTE *sub_2CCC38(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (a2 + 40);
  v5 = *a1;
  **a1 = *a2;
  sub_80534(v3 + 8, (a2 + 8));
  result = sub_80534(v5 + 40, v4);
  *(v3 + 36) = *(a2 + 72);
  return result;
}

void sub_2CCC94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2CCCCC(uint64_t a1, int a2)
{
  result = (*(*a1 + 80))(a1);
  if (result)
  {
    v12 = a2 ^ 1;
    v5 = *sub_5544(25);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 735) < 0)
        {
          sub_54A0(__p, *(a1 + 712), *(a1 + 720));
        }

        else
        {
          *__p = *(a1 + 712);
          v11 = *(a1 + 728);
        }

        v8 = "Deactivating";
        if (a2)
        {
          v8 = "Activating";
        }

        v14 = "DSPChain.mm";
        v15 = 1024;
        v16 = 3825;
        v9 = __p;
        *buf = 136315906;
        if (v11 < 0)
        {
          v9 = __p[0];
        }

        v17 = 2080;
        v18 = v8;
        v19 = 2080;
        v20 = v9;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s processing block for graph %s", buf, 0x26u);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    return (*(*a1 + 128))(a1, 1685287015, 1852797026, &v12, 4, 0, 0, 0);
  }

  return result;
}

void sub_2CCEC4()
{
  v0 = sub_5544(6);
  v1 = *v0;
  if (*v0 && os_log_type_enabled(*v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "SingletonFactory_Aspen.cpp";
    v12 = 1024;
    v13 = 42;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Beginning instantiation of singletons.", buf, 0x12u);
  }

  v2 = sub_5544(10);
  v3 = sub_5544(6);
  v4 = 0;
  *buf = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&buf[v4];
    if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
    {
      break;
    }

    v4 += 4;
    if (v4 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_10:
  v7 = *v2;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "SystemSettingsManager_Aspen.cpp";
    v12 = 1024;
    v13 = 1111;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to create SystemSettingsManager.", buf, 0x12u);
  }

  if (!qword_6ECB88)
  {
    operator new();
  }

  v8 = sub_5544(14);
  v9 = *v8;
  if (*v8)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SystemSettingsManager_Aspen.cpp";
      v12 = 1024;
      v13 = 1113;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): sSystemSettingsManager is not NULL!", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "sSystemSettingsManager is not NULL!");
}

void sub_2CFD8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_255768(&STACK[0x388]);
    sub_4E0BC(v3);
    sub_4BC698(v2);
    operator delete();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2D0E3C(uint64_t a1)
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

void sub_2D0EBC(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = dlerror();
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }

  v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
LABEL_5:
    v2 = v1;
    off_6EB710 = dlsym(v1, "AudioDataAnalysisManagerCreate");
    off_6EB718 = dlsym(v2, "AudioDataAnalysisManagerDispose");
    qword_6EB720 = dlsym(v2, "AudioDataAnalysisManagerReset");
    off_6EB728 = dlsym(v2, "AudioDataAnalysisManagerUpdateReportingSessions");
    qword_6EB730 = dlsym(v2, "AudioDataAnalysisManagerCreateNodePCM");
    off_6EB738 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeSPL");
    qword_6EB740 = dlsym(v2, "AudioDataAnalysisManagerRemoveNode");
    off_6EB748 = dlsym(v2, "AudioDataAnalysisManagerInitialize");
    qword_6EB750 = dlsym(v2, "AudioDataAnalysisManagerIsSessionInitialized");
    qword_6EB758 = dlsym(v2, "AudioDataAnalysisManagerProcessAudio");
    off_6EB760 = dlsym(v2, "AudioDataAnalysisManagerProcessSPL");
    qword_6EB768 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    qword_6EB770 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    off_6EB778 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeMicLevel");
    qword_6EB780 = dlsym(v2, "AudioDataAnalysisManagerProcessEnvSPL");
    qword_6EB788 = dlsym(v2, "AudioDataAnalysisManagerProcessEnvSoundClass");
    off_6EB790 = dlsym(v2, "AudioDataAnalysisManagerProcessMicLevel");
    off_6EB798 = dlsym(v2, "AudioDataAnalysisManagerSetDeviceInfo");
    off_6EB7A0 = dlsym(v2, "AudioDataAnalysisManagerRegisterDeviceInfo");
    off_6EB7A8 = dlsym(v2, "AudioDataAnalysisManagerSetDeviceConnectionState");
    off_6EB7B0 = dlsym(v2, "AudioDataAnalysisManagerStartServices");
    off_6EB7B8 = dlsym(v2, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    qword_6EB7C0 = dlsym(v2, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = dlerror();
    v4 = 136315138;
    v5 = v3;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }
}

void sub_2D1204(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = sub_310AF4();
  *(a1 + 20) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v2 = sub_106F10();
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 76) = (v2 > 0xFFu) & v2;
  *(a1 + 77) = 1;
  *(a1 + 78) = 0;
  *(a1 + 86) = 0;
  *(a1 + 88) = 16777473;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 128) = -1044381696;
  *(a1 + 132) = 1;
  *(a1 + 136) = -1044381696;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 152) = -1056964608;
  *(a1 + 156) = 1;
  *(a1 + 160) = -1033371648;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = -1033371648;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 188) = 1;
  *(a1 + 192) = -1044381696;
  *(a1 + 196) = 1;
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = -1033371648;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  *(a1 + 224) = -1033371648;
  *(a1 + 228) = 1;
  *(a1 + 232) = -1055916032;
  *(a1 + 236) = 1;
  *(a1 + 240) = -1033371648;
  *(a1 + 244) = 1;
  *(a1 + 248) = 0;
  *(a1 + 252) = 1;
  *(a1 + 256) = -1055916032;
  *(a1 + 260) = 1;
  *(a1 + 264) = -1033371648;
  *(a1 + 268) = 1;
  *(a1 + 272) = -1055916032;
  *(a1 + 276) = 1;
  *(a1 + 280) = -1033371648;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 296) = -1055916032;
  *(a1 + 300) = 1;
  *(a1 + 304) = -1043333120;
  *(a1 + 308) = 1;
  *(a1 + 312) = 0x40000000;
  *(a1 + 316) = 1;
  *(a1 + 320) = 16777472;
  *(a1 + 324) = 0;
  *(a1 + 328) = 1;
  *(a1 + 332) = 0;
  *(a1 + 336) = 1;
  *(a1 + 340) = 1103626240;
  *(a1 + 344) = 1;
  *(a1 + 348) = 0;
  *(a1 + 352) = 1;
  *(a1 + 356) = 1094713344;
  *(a1 + 360) = 1;
  *(a1 + 364) = 1094713344;
  *(a1 + 368) = 1;
  *(a1 + 372) = 1094713344;
  *(a1 + 376) = 1;
  *(a1 + 380) = -1061158912;
  *(a1 + 384) = 1;
  *(a1 + 388) = 1107296256;
  *(a1 + 392) = 1;
  *(a1 + 396) = 1107296256;
  *(a1 + 400) = 1;
  *(a1 + 404) = 1092616192;
  *(a1 + 408) = 1;
  *(a1 + 412) = 0;
  *(a1 + 416) = 1;
  *(a1 + 420) = 0;
  *(a1 + 424) = 1;
  *(a1 + 428) = 16777472;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 0;
  *(a1 + 752) = 0;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0;
  *(a1 + 816) = 1;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 0;
  *(a1 + 840) = 0;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0;
  *(a1 + 884) = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  *(a1 + 920) = 0;
  *(a1 + 924) = 0;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0;
  *(a1 + 940) = 0;
  *(a1 + 944) = 0;
  *(a1 + 948) = 0;
  *(a1 + 952) = 0;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 256;
  *(a1 + 1084) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 80) = 257;
  *(a1 + 72) = 16843009;
  *(a1 + 76) = 257;
  *(a1 + 82) = 16843009;
  if ((*(a1 + 20) & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  *(a1 + 16) = 4;
  *(a1 + 90) = 257;
  *__p = xmmword_517160;
  sub_1DFEA0((a1 + 96), __p, &v4);
  *(a1 + 404) = 1077936128;
  *(a1 + 408) = 1;
  *(a1 + 322) = 257;
  if ((*(a1 + 948) & 1) == 0)
  {
    *(a1 + 948) = 1;
  }

  *(a1 + 944) = 2;
  if (sub_45168())
  {
    sub_2D189C(__p);
  }

  sub_2D7894(__p);
}

void sub_2D1804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_1E0000(v39);
  _Unwind_Resume(a1);
}

void sub_2D189C(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_46AC8C();
  sub_2DE844(v1, "speaker_general");
}

void sub_2D4EF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2D7894(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_46AC8C();
  sub_2DD97C(v1, "speaker_general");
}

void sub_2DAF88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2DD97C(uint64_t a1, char *a2)
{
  v4 = sub_53E8(a1, "speaker_general");
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  sub_53E8(v4 + 48, a2);
  sub_53E8((a1 + 72), "speaker_general");
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1668051824;
  v13 = 1936746861;
  v14 = 0;
  v8 = 0;
  v9 = 0x6473706700000001;
  v10 = 1869768046;
  memset(__p, 0, sizeof(__p));
  sub_4625C(__p, &v9, &v11, 3uLL);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_2DDE10();
}

void sub_2DDC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

_BYTE *sub_2DDDBC(_BYTE *a1, char *a2, __int128 *a3)
{
  v5 = sub_53E8(a1, a2);
  sub_1E2150(v5 + 24, a3);
  return a1;
}

void sub_2DDDF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2DDF1C(uint64_t a1, uint64_t **a2)
{
  sub_88CE8(a1, "IODelegates");
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_282724(&v16, v4);
  v6 = *a2;
  for (i = a2[1]; v6 != i; v6 += 3)
  {
    memset(__p, 0, sizeof(__p));
    sub_46980(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
    v7 = v17;
    if (v17 >= v18)
    {
      v9 = (v17 - v16) >> 3;
      if ((v9 + 1) >> 61)
      {
        sub_189A00();
      }

      v10 = (v18 - v16) >> 2;
      if (v10 <= v9 + 1)
      {
        v10 = v9 + 1;
      }

      if (v18 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      v22 = &v16;
      if (v11)
      {
        sub_1DB8DC(v11);
      }

      v12 = (8 * v9);
      v19[0] = 0;
      v19[1] = v12;
      v20 = v12;
      v21 = 0;
      *v12 = sub_AFB90(__p);
      v20 = v12 + 1;
      sub_2827A4(&v16, v19);
      v8 = v17;
      sub_282854(v19);
    }

    else
    {
      *v7 = sub_AFB90(__p);
      v8 = v7 + 1;
    }

    v17 = v8;
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  v13 = sub_2DE7A8(&v16);
  v19[0] = &v16;
  sub_282684(v19);
  *(a1 + 8) = v13;
  return a1;
}

void sub_2DE0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  __p = &a13;
  sub_282684(&__p);
  sub_1D5FE0(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE104(uint64_t a1, char *a2, __int128 *a3)
{
  v5 = sub_53E8(a1, a2);
  v6 = *a3;
  *(v5 + 5) = *(a3 + 2);
  *(v5 + 24) = v6;
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v7 = *(a3 + 24);
  *(v5 + 8) = *(a3 + 5);
  *(v5 + 3) = v7;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 3) = 0;
  v8 = a3[3];
  *(v5 + 11) = *(a3 + 8);
  *(v5 + 72) = v8;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 6) = 0;
  v9 = *(a3 + 72);
  *(v5 + 14) = *(a3 + 11);
  *(v5 + 6) = v9;
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  v10 = a3[6];
  *(v5 + 17) = *(a3 + 14);
  *(v5 + 120) = v10;
  *(a3 + 12) = 0;
  *(a3 + 13) = 0;
  *(a3 + 14) = 0;
  *(v5 + 36) = *(a3 + 30);
  *(v5 + 20) = 0;
  *(v5 + 21) = 0;
  *(v5 + 19) = 0;
  *(v5 + 152) = a3[8];
  v11 = *(a3 + 19);
  *(v5 + 21) = *(a3 + 18);
  *(a3 + 17) = 0;
  *(a3 + 18) = 0;
  *(a3 + 16) = 0;
  *(v5 + 22) = v11;
  *(a3 + 19) = 0;
  *(v5 + 23) = 0;
  *(v5 + 24) = 0;
  *(v5 + 25) = 0;
  *(v5 + 184) = a3[10];
  *(v5 + 25) = *(a3 + 22);
  *(a3 + 21) = 0;
  *(a3 + 22) = 0;
  *(a3 + 20) = 0;
  *(v5 + 26) = *(a3 + 23);
  v12 = a3 + 12;
  v13 = *(a3 + 24);
  *(v5 + 27) = v13;
  v14 = v5 + 216;
  v15 = *(a3 + 25);
  *(v5 + 28) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a3 + 23) = v12;
    *v12 = 0;
    *(a3 + 25) = 0;
  }

  else
  {
    *(a1 + 208) = v14;
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = a3[13];
  *(a1 + 248) = *(a3 + 28);
  *(a3 + 26) = 0;
  *(a3 + 27) = 0;
  *(a3 + 28) = 0;
  v16 = *(a3 + 29);
  *(a1 + 264) = *(a3 + 60);
  *(a1 + 256) = v16;
  sub_450F8(a1 + 272, a3 + 31);
  *(a1 + 312) = *(a3 + 288);
  *(a1 + 320) = *(a3 + 37);
  *(a3 + 37) = 0;
  return a1;
}

CFStringRef *sub_2DE280(CFStringRef *a1, char *a2)
{
  v4 = sub_88CE8(a1, "ConfigName");
  sub_88CE8(v4 + 1, a2);
  return a1;
}

uint64_t sub_2DE2D4(uint64_t a1, char *a2, int *a3)
{
  sub_88CE8(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2DE36C(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE3A0(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "BeamIndex");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2DE440(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE474(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "DataSourceOrder");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2DE514(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE548(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "BeamIndex");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2DE5E8(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE6CC(uint64_t a1, const void ***a2)
{
  sub_88CE8(a1, "DeviceSpecificProperties");
  *(a1 + 8) = sub_2DE7A8(a2);
  return a1;
}

uint64_t sub_2DE720(uint64_t a1, int **a2)
{
  sub_88CE8(a1, "ChannelSelectorMap");
  *(a1 + 8) = sub_AFB90(a2);
  return a1;
}

uint64_t sub_2DE774(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFArrayRef sub_2DE7A8(const void ***a1)
{
  sub_4788C(&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  v6 = sub_47904(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_2DE828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2DE844(uint64_t a1, char *a2)
{
  v4 = sub_53E8(a1, "speaker_general");
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  sub_53E8(v4 + 48, a2);
  sub_53E8((a1 + 72), "speaker_general");
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1668049011;
  v13 = 1936746861;
  v14 = 0;
  v8 = 0;
  v9 = 0x6473706700000001;
  v10 = 1869768046;
  memset(__p, 0, sizeof(__p));
  sub_4625C(__p, &v9, &v11, 3uLL);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_2DDE10();
}

void sub_2DEAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

uint64_t sub_2DED2C(uint64_t a1)
{
  sub_EBA7C();
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v5 + 16) = 0;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *v5 = off_6C0620;
    *(v5 + 8) = 0;

    return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_2DEDC4(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_2DEE0C(a1);
  return sub_2DF198(&v2);
}

void sub_2DEDF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2DF198(va);
  _Unwind_Resume(a1);
}

void sub_2DEE0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        sub_2DF2E0(v2);
      }

      sub_1A8C0(v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

caulk::concurrent::message **sub_2DF198(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C0648;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x30uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2DF214(caulk::concurrent::message *this)
{
  *this = off_6C0648;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2DF284(caulk::concurrent::message *this)
{
  *this = off_6C0648;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2DF2E0(uint64_t a1)
{
  sub_2DF438(&v12);
  v2 = v12;
  std::mutex::lock(v12);
  v3 = *v2[1].__m_.__opaque;
  if (v3)
  {
    opaque = v2[1].__m_.__opaque;
    v5 = *v2[1].__m_.__opaque;
    do
    {
      v6 = sub_6F834(v5 + 4, (a1 + 24));
      if ((v6 & 0x80u) == 0)
      {
        opaque = v5;
      }

      v5 = *&v5[(v6 >> 4) & 8];
    }

    while (v5);
    if (opaque != v2[1].__m_.__opaque && (sub_6F834((a1 + 24), opaque + 4) & 0x80) == 0)
    {
      v7 = *(opaque + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = opaque;
        do
        {
          v8 = *(v9 + 2);
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (v2[1].__m_.__sig == opaque)
      {
        v2[1].__m_.__sig = v8;
      }

      --*&v2[1].__m_.__opaque[8];
      sub_75234(v3, opaque);
      sub_ED13C((opaque + 32));
      operator delete(opaque);
    }
  }

  std::mutex::unlock(v2);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_2DF420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *sub_2DF438(void *a1)
{
  if (!qword_6E9318 || (result = std::__shared_weak_count::lock(qword_6E9318)) == 0 || !qword_6E9310)
  {
    operator new();
  }

  *a1 = qword_6E9310;
  a1[1] = result;
  return result;
}

void sub_2DFC10()
{
  sub_2DF438(&v11);
  v0 = v11;
  atomic_store(FigCaptureMicrophoneInterferenceMitigationIsRequired() != 0, &v11[1].__m_.__opaque[16]);
  v1 = *sub_5544(25);
  v2 = v1;
  if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = atomic_load(&v0[1].__m_.__opaque[16]);
    *&buf[4] = "HighFPSCameraCoexMitigationIODelegate.mm";
    *buf = 136315650;
    if (v3)
    {
      v4 = "true";
    }

    else
    {
      v4 = "false";
    }

    *&buf[12] = 1024;
    *&buf[14] = 42;
    *&buf[18] = 2080;
    *&buf[20] = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d The high FPS camera coex mitigation requirement was set to %s", buf, 0x1Cu);
  }

  std::mutex::lock(v0);
  sig = v0[1].__m_.__sig;
  if (sig != v0[1].__m_.__opaque)
  {
    do
    {
      if (sig[55] < 0)
      {
        sub_54A0(buf, *(sig + 4), *(sig + 5));
      }

      else
      {
        *buf = *(sig + 2);
        *&buf[16] = *(sig + 6);
      }

      v6 = *(sig + 8);
      *&buf[24] = *(sig + 7);
      v14 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (v14)
        {
          v7 = std::__shared_weak_count::lock(v14);
          if (v7)
          {
            if (*&buf[24])
            {
              atomic_load(&v0[1].__m_.__opaque[16]);
              sub_2E0128(*&buf[24]);
            }

            sub_1A8C0(v7);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v8 = *(sig + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(sig + 2);
          v10 = *v9 == sig;
          sig = v9;
        }

        while (!v10);
      }

      sig = v9;
    }

    while (v9 != v0[1].__m_.__opaque);
  }

  std::mutex::unlock(v0);
  if (v12)
  {
    sub_1A8C0(v12);
  }
}

void sub_2E0128(uint64_t a1)
{
  sub_8BEE4();
  v3 = v2 = qword_709F20;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = v3;
  operator new();
}

uint64_t *sub_2E01E0(uint64_t a1)
{
  v12 = a1;
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = *(a1 + 16);
    v4 = std::__shared_weak_count::lock(v1);
    if (v4)
    {
      v5 = v4;
      if (v2)
      {
        v6 = *sub_5544(25);
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            if (*(v2 + 47) < 0)
            {
              sub_54A0(__p, *(v2 + 24), *(v2 + 32));
            }

            else
            {
              *__p = *(v2 + 24);
              v14 = *(v2 + 40);
            }

            v9 = __p;
            if (v14 < 0)
            {
              v9 = __p[0];
            }

            v16 = "HighFPSCameraCoexMitigationIODelegate.mm";
            v17 = 1024;
            v18 = 212;
            v10 = "true";
            *buf = 136315906;
            if (!v3)
            {
              v10 = "false";
            }

            v19 = 2080;
            v20 = v9;
            v21 = 2080;
            v22 = v10;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Handling high FPS camera coex IO delegate for chain %s. Mitigating? %s", buf, 0x26u);
            if (SHIBYTE(v14) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        sub_92E50(v2 + 48, v3);
      }

      sub_1A8C0(v5);
    }

    std::__shared_weak_count::__release_weak(v1);
  }

  return sub_92750(&v12);
}

void sub_2E06B4(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, (a1 + 24), kFigCaptureNotification_MicrophoneInterferenceMitigationRequiredChanged, 0);
  v3 = *sub_5544(25);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "HighFPSCameraCoexMitigationIODelegate.mm";
    v7 = 1024;
    v8 = 122;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Central high FPS camera coex mitigation handler is destroyed", &v5, 0x12u);
  }

  sub_20D854(*(a1 + 96));
  std::mutex::~mutex((a1 + 24));
}

void sub_2E07B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_2E07BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C05B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2E0830(caulk::concurrent::message *this)
{
  *this = off_6C0648;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2E08A0(caulk::concurrent::message *this)
{
  *this = off_6C0648;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2E08FC(uint64_t a1)
{
  sub_8BEE4();
  v3 = v2 = qword_709F20;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = v3;
  operator new();
}

uint64_t *sub_2E09AC(void *a1)
{
  v33 = a1;
  v1 = a1[1];
  if (v1)
  {
    v2 = *a1;
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (!v3)
    {
LABEL_28:
      std::__shared_weak_count::__release_weak(v1);
      return sub_8BE90(&v33);
    }

    v4 = v3;
    if (!v2)
    {
LABEL_27:
      sub_1A8C0(v4);
      goto LABEL_28;
    }

    v6 = *(v2 + 8);
    v5 = *(v2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2DF438(&v34);
    if (v5)
    {
      v32 = v34;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = std::__shared_weak_count::lock(v5);
      if (v7 && v6)
      {
        v8 = *sub_5544(25);
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            if (*(v6 + 47) < 0)
            {
              sub_54A0(__p, *(v6 + 24), *(v6 + 32));
            }

            else
            {
              *__p = *(v6 + 24);
              v37 = *(v6 + 40);
            }

            v15 = __p;
            if (v37 < 0)
            {
              v15 = __p[0];
            }

            *buf = 136315650;
            v41 = "HighFPSCameraCoexMitigationIODelegate.mm";
            v42 = 1024;
            v43 = 60;
            v44 = 2080;
            v45 = v15;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Adding high FPS camera coex mitigation IO delegate %s", buf, 0x1Cu);
            if (SHIBYTE(v37) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        std::mutex::lock(v32);
        opaque = v32[1].__m_.__opaque;
        v17 = *v32[1].__m_.__opaque;
        v31 = v32 + 1;
        if (v17)
        {
          v18 = v32[1].__m_.__opaque;
          do
          {
            v19 = sub_6F834(v17 + 4, (v2 + 24));
            if ((v19 & 0x80u) == 0)
            {
              v18 = v17;
            }

            v17 = *(v17 + ((v19 >> 4) & 8));
          }

          while (v17);
          if (opaque != v18)
          {
            if ((sub_6F834((v2 + 24), v18 + 4) & 0x80) == 0)
            {
              atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v20 = v18[8];
              v18[7] = v6;
              v18[8] = v5;
              if (v20)
              {
                std::__shared_weak_count::__release_weak(v20);
              }

              goto LABEL_65;
            }

            if ((sub_6F834((v2 + 24), v18 + 4) & 0x80) == 0)
            {
              if ((sub_6F834(v18 + 4, (v2 + 24)) & 0x80) == 0)
              {
                v38 = v18;
                v39 = v18;
                goto LABEL_63;
              }

              v25 = v18[1];
              if (v25)
              {
                v26 = v18[1];
                do
                {
                  v27 = v26;
                  v26 = *v26;
                }

                while (v26);
              }

              else
              {
                v28 = v18;
                do
                {
                  v27 = v28[2];
                  v24 = *v27 == v28;
                  v28 = v27;
                }

                while (!v24);
              }

              if (v27 == opaque || (v29 = v18[1], v30 = sub_6F834((v2 + 24), v27 + 4), v25 = v29, v30 < 0))
              {
                if (v25)
                {
                  v39 = v27;
                  v18 = v27;
                }

                else
                {
                  v39 = v18++;
                }

                goto LABEL_62;
              }

LABEL_58:
              v18 = sub_6F86C(v31, &v39, (v2 + 24));
LABEL_62:
              v18 = *v18;
LABEL_63:
              if (!v18)
              {
                operator new();
              }

LABEL_65:
              std::mutex::unlock(v32);
              atomic_load(&v32[1].__m_.__opaque[16]);
              sub_2E0128(v6);
            }
          }

          v17 = *v18;
        }

        else
        {
          v18 = v32[1].__m_.__opaque;
        }

        v21 = v18;
        if (v31->__m_.__sig == v18)
        {
          goto LABEL_59;
        }

        if (v17)
        {
          v22 = v17;
          do
          {
            v21 = v22;
            v22 = v22[1];
          }

          while (v22);
        }

        else
        {
          v23 = v18;
          do
          {
            v21 = v23[2];
            v24 = *v21 == v23;
            v23 = v21;
          }

          while (v24);
        }

        if ((sub_6F834(v21 + 4, (v2 + 24)) & 0x80) != 0)
        {
LABEL_59:
          if (v17)
          {
            v39 = v21;
            v18 = v21 + 1;
          }

          else
          {
            v39 = v18;
          }

          goto LABEL_62;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = *sub_5544(25);
    v12 = v11;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 47) >= 0)
      {
        v13 = (v2 + 24);
      }

      else
      {
        v13 = *(v2 + 24);
      }

      *buf = 136315650;
      v41 = "HighFPSCameraCoexMitigationIODelegate.mm";
      v42 = 1024;
      v43 = 75;
      v44 = 2080;
      v45 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add high FPS camera coex mitigation IO delegate for chain %s to central callback handler", buf, 0x1Cu);
    }

    if (v7)
    {
      sub_1A8C0(v7);
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    else if (!v5)
    {
LABEL_23:
      if (v35)
      {
        sub_1A8C0(v35);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      goto LABEL_27;
    }

    std::__shared_weak_count::__release_weak(v5);
    goto LABEL_23;
  }

  return sub_8BE90(&v33);
}

void sub_2E1290(uint64_t a1)
{
  sub_2E12C8(a1);

  operator delete();
}

uint64_t sub_2E12C8(uint64_t a1)
{
  v2 = sub_5544(25);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 47) < 0)
        {
          sub_54A0(__p, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          *__p = *(a1 + 24);
          v10 = *(a1 + 40);
        }

        v5 = __p;
        if (v10 < 0)
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        v12 = "HighFPSCameraCoexMitigationIODelegate.mm";
        v13 = 1024;
        v14 = 198;
        v15 = 2080;
        v16 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying high FPS camera coex IO delegate for chain %s", buf, 0x1Cu);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_2DF2E0(a1);
  v6 = *(a1 + 88);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  sub_133B84(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_2E1438(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_2E1454(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C05E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2E14C8(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (a1[2])
    {
      v4 = sub_5544(7);
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v21 = "HALDeviceManager.cpp";
          v22 = 1024;
          v23 = 115;
          v24 = 2080;
          v25 = a2;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s", buf, 0x1Cu);
        }
      }
    }
  }

  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      v9 = *(v7 + 7);
      sub_2E1720(__p, *(v7 + 7));
      v10 = sub_5544(7);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
      {
        v12 = __p;
        if (v18 < 0)
        {
          v12 = __p[0];
        }

        v13 = "NULL";
        if (v19)
        {
          v13 = v12;
        }

        *buf = 136315906;
        v21 = "HALDeviceManager.cpp";
        v22 = 1024;
        v23 = 123;
        v24 = 2048;
        v25 = v9;
        v26 = 2080;
        v27 = v13;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d AudioObjectID: %lu, UID = %s", buf, 0x26u);
      }

      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      v7 = v15;
    }

    while (v15 != v6);
  }
}

void sub_2E1720(uint64_t a1, AudioObjectID a2)
{
  LODWORD(__p) = a2;
  strcpy(buf, " diubolg");
  buf[9] = 0;
  *&buf[10] = 0;
  sub_12794C(&v15, &__p, buf, 0, 0);
  if (!v15)
  {
    v7 = sub_5544(7);
    if ((*(v7 + 8) & 1) == 0 || !*v7)
    {
LABEL_22:
      sub_48540(buf, v16[1]);
      *a1 = *buf;
      *(a1 + 16) = *&buf[16];
      *(a1 + 24) = 1;
      goto LABEL_23;
    }

    sub_8AA24(v12, "<unknown>");
    v22 = a2;
    __p = 0x676C6F626C6E616DLL;
    LODWORD(v19) = 0;
    sub_12794C(buf, &v22, &__p, 0, 0);
    LOBYTE(__p) = 0;
    v20 = 0;
    if (buf[24] & 1) != 0 && (v8 = *&buf[16], *&buf[16] = 0, __p = &off_6DACD8, v19 = v8, v20 = 1, sub_8AAAC(&buf[8]), (v20))
    {
      v9 = v19;
      v19 = 0;
      v13 = &off_6DACD8;
      v14 = v9;
    }

    else
    {
      sub_224064(&v13, v12[1]);
      v13 = &off_6DACD8;
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_8AAAC(&__p);
LABEL_17:
    sub_8AAAC(v12);
    v10 = sub_5544(7);
    if (*(v10 + 8))
    {
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "HALDeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 105;
          *&buf[18] = 2048;
          *&buf[20] = a2;
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioObjectID %lu is kAudioObjectPropertyName %@.", buf, 0x26u);
        }
      }
    }

    sub_8AAAC(&v13);
    goto LABEL_22;
  }

  v4 = sub_5544(7);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    sub_28CBA0(&__p, v15);
    v6 = v21 >= 0 ? &__p : __p;
    *buf = 136315906;
    *&buf[4] = "HALDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 94;
    *&buf[18] = 2048;
    *&buf[20] = a2;
    v24 = 2080;
    v25 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to read device UID for device %lu; device may have already been removed (status = %s)", buf, 0x26u);
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_23:
  if (v17 == 1)
  {
    sub_8AAAC(v16);
  }
}

void sub_2E1A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_8AAAC(&a11);
  if (a16 == 1)
  {
    sub_8AAAC(&a14);
  }

  _Unwind_Resume(a1);
}

void sub_2E1AA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_5544(7);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "HALDeviceManager.cpp";
    v7 = 1024;
    v8 = 453;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error Occured handling a Device Update", &v5, 0x12u);
  }

  sub_2E14C8((v2 + 208), "Cached Devices");
  sub_2E14C8(a1[1], "Fetched Devices");
}

uint64_t **sub_2E1B94(void *a1, void *a2, uint64_t **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_1C4454(a3, *(v5 + 7));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

void sub_2E1C14(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 4;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2E1CA0(uint64_t a1, uint64_t a2)
{
  v4 = std::runtime_error::runtime_error(a1, "DeviceUpdate failed");
  v4->__vftable = off_6C06B8;
  HIBYTE(v4[2].__vftable) = 19;
  strcpy(&v4[1], "DeviceUpdate failed");
  sub_44E44(&v4[2].__imp_, a2);
  sub_63250(&v16);
  v5 = *(a1 + 40);
  if (v5 != (a1 + 48))
  {
    do
    {
      v6 = *(v5 + 7);
      sub_22564(&v16, " ", 1);
      std::ostream::operator<<();
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != (a1 + 48));
  }

  if ((v23 & 0x10) != 0)
  {
    v11 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v11 = v19;
    }

    locale = v18[4].__locale_;
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v15) = 0;
      goto LABEL_21;
    }

    locale = v18[1].__locale_;
    v11 = v18[3].__locale_;
  }

  v10 = v11 - locale;
  if ((v11 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v11 - locale;
  if (v10)
  {
    memmove(&v14, locale, v10);
  }

LABEL_21:
  *(&v14 + v10) = 0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_2E1F8C(_Unwind_Exception *a1)
{
  sub_477A0(*(v1 + 48));
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_2E1FE0(uint64_t a1)
{
  *a1 = off_6C06B8;
  sub_477A0(*(a1 + 48));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_2E2048(uint64_t a1)
{
  result = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

void sub_2E2064(uint64_t a1)
{
  *a1 = off_6C06B8;
  sub_477A0(*(a1 + 48));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_2E20E0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

uint64_t sub_2E211C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

uint64_t sub_2E2164()
{
  qword_709648 = dispatch_queue_create("HALDeviceManager Device Update Queue", 0);
  std::__shared_mutex_base::__shared_mutex_base(&stru_709650);
  qword_7096F8 = &qword_7096F8;
  qword_709700 = &qword_7096F8;
  qword_709708 = 0;
  dword_709710 = 1;
  qword_709728 = 0;
  qword_709720 = 0;
  qword_709718 = &qword_709720;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = sub_5544(7);
    v6 = sub_5544(6);
    v7 = 0;
    *block = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *&block[v7];
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_13:
    v10 = *v5;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *block = 136315394;
      *&block[4] = "DeviceManager.cpp";
      *&block[12] = 1024;
      *&block[14] = 90;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to create DeviceManager.", block, 0x12u);
    }

    if (!qword_6E71D8)
    {
      operator new();
    }

    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "DeviceManager.cpp";
      *&block[12] = 1024;
      *&block[14] = 92;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): sDeviceManager is not NULL!", block, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "sDeviceManager is not NULL!");
  }

  v14 = &qword_709648;
  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = sub_2E2158;
  v16 = &unk_6C06D0;
  v17 = &v14;
  dispatch_sync(qword_709648, block);
  sub_4E890();
  result = sub_73838(1u, &qword_6E9368, sub_EEDB0, &qword_709648);
  v1 = result;
  if (result)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        *block = 136315394;
        *&block[4] = "HALDeviceManager.cpp";
        *&block[12] = 1024;
        *&block[14] = 164;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to add device listener", block, 0x12u);
      }
    }

    v4 = __cxa_allocate_exception(0x10uLL);
    *v4 = &off_6DDDD0;
    v4[2] = v1;
  }

  return result;
}

void sub_2E2644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_477A0(qword_709720);
  sub_87980(&qword_7096F8);
  sub_2164F0(&stru_709650);
  if (qword_709648)
  {
    dispatch_release(qword_709648);
  }

  _Unwind_Resume(a1);
}

void sub_2E2704(uint64_t *a1)
{
  sub_EF8C0(*a1);

  operator delete();
}

void sub_2E2774(void *a1)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (_os_feature_enabled_impl())
  {
    __p[0] = &stru_709650;
    LOBYTE(__p[1]) = 1;
    std::__shared_mutex_base::lock_shared(&stru_709650);
    if (qword_709700 != &qword_7096F8)
    {
      v3 = *(qword_709700 + 16);
      v2 = *(qword_709700 + 24);
      if (v2)
      {
        atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    std::__shared_mutex_base::unlock_shared(&stru_709650);
  }

  else
  {
    v4 = sub_2450DC();
    v10[0] = off_6C0700;
    v10[1] = a1;
    v11 = v10;
    sub_47BD8(v4);
    for (i = *(v4 + 304); i != (v4 + 296); i = i[1])
    {
      v6 = i[2];
      if (v6)
      {
        (*(*v6 + 128))(__p);
        v7 = i[3];
        v8[0] = i[2];
        v8[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          (*(*v11 + 48))(v11, v8);
          operator new();
        }

        sub_46A74();
      }
    }

    sub_47C90(v4);
    sub_98A08(0);
    sub_2E2B18(v10);
  }
}

void sub_2E2A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2E2B18(uint64_t a1)
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

void sub_2E2B98(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v4 = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 8);
  sub_849B8();
}

void sub_2E2BF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2E2C10(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6C0700;
  a2[1] = v2;
  return result;
}

void *sub_2E2CA4(uint64_t a1, void **a2)
{
  result = sub_6F86C(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_2E2D88(uint64_t a1, const void **a2, int a3, uint64_t a4, _DWORD *a5)
{
  std::mutex::lock((a1 + 344));
  if (!*a2)
  {
    v16 = sub_5544(14);
    v17 = sub_468EC(1, *v16, *(v16 + 8));
    v18 = v17;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "CPMSInterface.mm";
      *&__p[12] = 1024;
      *&__p[14] = 191;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Initialized dictionary from CPMS is null!", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Initialized dictionary from CPMS is null!");
    goto LABEL_16;
  }

  sub_2E308C(__p, *a2);
  v10 = a4 + 8;
  sub_98A08(*(a4 + 8));
  v11 = *&__p[8];
  *a4 = *__p;
  *(a4 + 8) = v11;
  v12 = *&__p[16];
  *(a4 + 16) = *&__p[16];
  if (v12)
  {
    *(v11 + 16) = v10;
    *__p = &__p[8];
    *&__p[8] = 0;
    *&__p[16] = 0;
    v11 = 0;
  }

  else
  {
    *a4 = v10;
  }

  sub_98A08(v11);
  v13 = *(a1 + 248);
  v14 = *(a1 + 256);
  if (v13 != v14)
  {
    while (*v13)
    {
      sub_125D8(v19, *v13);
      *__p = *v19;
      *&__p[16] = v20;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v23 = 100000;
      if (!*sub_6F86C(a4, &v21, __p))
      {
        operator new();
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }

      if (++v13 == v14)
      {
        goto LABEL_14;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_16:
  }

LABEL_14:
  *a5 = a3;
  std::mutex::unlock((a1 + 344));
}

void sub_2E3028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v22);
  std::mutex::unlock((v21 + 344));
  _Unwind_Resume(a1);
}

void sub_2E308C(void *a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  Count = CFDictionaryGetCount(a2);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  sub_4788C(keys, Count);
  sub_4788C(values, Count);
  CFDictionaryGetKeysAndValues(a2, keys[0], values[0]);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      sub_125D8(v9, keys[0][i]);
      v7 = sub_6FCD8(values[0][i]);
      *__p = *v9;
      v12 = v10;
      v9[1] = 0;
      v10 = 0;
      v9[0] = 0;
      v13 = v7;
      if (!*sub_6F86C(a1, &v16, __p))
      {
        operator new();
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }
    }
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }
}

const void **sub_2E3304(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_2E3338(UInt8 *a1, CFTypeRef cf)
{
  v3 = CFCopyDescription(cf);
  sub_1267C(a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_2E338C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2E33A0(uint64_t a1, void **a2)
{
  v2 = *sub_6F86C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2E3494(uint64_t a1, CFTypeRef *a2)
{
  sub_10FD4(cf, *a2);
  v3 = sub_5544(17);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = CFCopyDescription(cf[0]);
        cf[1] = v6;
        sub_1267C(__p, v6);
        if (v6)
        {
          CFRelease(v6);
        }

        v7 = __p;
        if (v35 < 0)
        {
          v7 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "CPMSInterface.mm";
        v38 = 1024;
        v39 = 293;
        v40 = 2080;
        v41 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS Haptics -- In Reference Dictionary: %s", buf, 0x1Cu);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if (!sub_310658())
  {
    if (sub_71704())
    {
      sub_2E3B28(a1);
    }

LABEL_30:
    v22 = sub_5544(14);
    v23 = sub_468EC(1, *v22, *(v22 + 8));
    v24 = v23;
    if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CPMSInterface.mm";
      v38 = 1024;
      v39 = 306;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): inData did not match AEA values!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "inData did not match AEA values!");
    goto LABEL_36;
  }

  *buf = a1 + 296;
  v8 = sub_2E33A0(a1 + 96, (a1 + 296));
  if (!cf[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_36:
    goto LABEL_37;
  }

  v9 = *(v8 + 56);
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_72578(cf[0], qword_6E9398);
  if (!v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Could not find item");
    goto LABEL_36;
  }

  v13 = sub_6FCD8(v12);
  v14 = v13;
  v15 = v13 - v10;
  if (v13 < v10 || v13 > v11)
  {
    v28 = sub_5544(14);
    v29 = sub_468EC(1, *v28, *(v28 + 8));
    v30 = v29;
    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CPMSInterface.mm";
      v38 = 1024;
      v39 = 244;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SInt32 inRefernceValue is outside of the supported range!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "SInt32 inRefernceValue is outside of the supported range!");
    goto LABEL_36;
  }

  v16 = *sub_5544(17);
  v17 = v16;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CPMSInterface.mm";
    v38 = 1024;
    v39 = 245;
    v40 = 1024;
    LODWORD(v41) = v14;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Switch Haptics -- In Battery Referenced Value: %u ", buf, 0x18u);
  }

  if (v11 == v10)
  {
    v31 = sub_5544(14);
    v32 = sub_468EC(1, *v31, *(v31 + 8));
    v33 = v32;
    if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CPMSInterface.mm";
      v38 = 1024;
      v39 = 254;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(exception, "Precondition failure.");
LABEL_37:
    __cxa_throw(exception, v27, v26);
  }

  v18 = ((*(*(a1 + 120) + 4) - **(a1 + 120)) * v15 / (v11 - v10) + **(a1 + 120));
  if (!v18)
  {
    goto LABEL_30;
  }

  v19 = *sub_5544(17);
  v20 = v19;
  if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CPMSInterface.mm";
    v38 = 1024;
    v39 = 307;
    v40 = 1024;
    LODWORD(v41) = v18;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Haptics -- Out Nominal Value: %u", buf, 0x18u);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v18;
}

void sub_2E3AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  sub_4BA7C(&a13);
  _Unwind_Resume(a1);
}

void sub_2E3D24(uint64_t a1, const __CFString *a2)
{
  sub_125D8(__p, a2);
  *buf = __p;
  v3 = sub_2E33A0(a1 + 96, __p);
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if (!((v6 >> 2) >> 62))
    {
      sub_1D7C28(v6 >> 2);
    }

    sub_189A00();
  }

  v7 = sub_5544(14);
  v8 = sub_468EC(1, *v7, *(v7 + 8));
  v9 = v8;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = __p;
    if (v13 < 0)
    {
      v10 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "CPMSInterface.mm";
    v15 = 1024;
    v16 = 467;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CPMS reference budget for timescale '%s' via Embedded Device Tree is Null!", buf, 0x1Cu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "CPMS reference budget for timescale '%s' via Embedded Device Tree is Null!");
}

void sub_2E4030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1F0870(0, v16);
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2E40A0(void *a1, int a2, int a3)
{
  v6 = a1[16];
  v7 = a1[17];
  if (v6 >= v7)
  {
    v9 = a1[15];
    v10 = v6 - v9;
    v11 = (v6 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      goto LABEL_29;
    }

    if ((v7 - v9) >> 1 > v12)
    {
      v12 = (v7 - v9) >> 1;
    }

    if (v7 - v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      sub_1D7C28(v13);
    }

    v14 = (v6 - v9) >> 2;
    v15 = (4 * v11);
    v7 = 0;
    v16 = (4 * v11 - 4 * v14);
    *v15 = a2;
    v8 = (v15 + 1);
    memcpy(v16, v9, v10);
    v17 = a1[15];
    a1[15] = v16;
    a1[16] = v8;
    a1[17] = 0;
    if (v17)
    {
      operator delete(v17);
      v7 = a1[17];
    }
  }

  else
  {
    *v6 = a2;
    v8 = v6 + 4;
  }

  a1[16] = v8;
  if (v8 < v7)
  {
    *v8 = a3;
    v18 = v8 + 4;
    goto LABEL_25;
  }

  v19 = a1[15];
  v20 = v8 - v19;
  v21 = (v8 - v19) >> 2;
  v22 = v21 + 1;
  if ((v21 + 1) >> 62)
  {
LABEL_29:
    sub_189A00();
  }

  if ((v7 - v19) >> 1 > v22)
  {
    v22 = (v7 - v19) >> 1;
  }

  if (v7 - v19 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v23 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    sub_1D7C28(v23);
  }

  v24 = (v8 - v19) >> 2;
  v25 = (4 * v21);
  v26 = (4 * v21 - 4 * v24);
  *v25 = a3;
  v18 = v25 + 1;
  memcpy(v26, v19, v20);
  v27 = a1[15];
  a1[15] = v26;
  a1[16] = v18;
  a1[17] = 0;
  if (v27)
  {
    operator delete(v27);
  }

LABEL_25:
  a1[16] = v18;
  v28 = *sub_5544(17);
  v29 = v28;
  if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v30 = a1[15];
    v31 = *v30;
    LODWORD(v30) = v30[1];
    v32 = 136315906;
    v33 = "CPMSInterface.mm";
    v34 = 1024;
    v35 = 317;
    v36 = 1024;
    v37 = v31;
    v38 = 1024;
    v39 = v30;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS -- Nominal Budget returned from AEA: min '%u' ; max '%u'", &v32, 0x1Eu);
  }
}

void sub_2E42E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 295) < 0)
  {
    sub_54A0(__p, *(a1 + 272), *(a1 + 280));
  }

  else
  {
    *__p = *(a1 + 272);
    v7 = *(a1 + 288);
  }

  v8 = a2;
  sub_2E43E0(a1 + 168, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 319) < 0)
  {
    sub_54A0(__p, *(a1 + 296), *(a1 + 304));
  }

  else
  {
    *__p = *(a1 + 296);
    v7 = *(a1 + 312);
  }

  v8 = a3;
  sub_2E43E0(a1 + 168, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  sub_2E3B28(a1);
}

void sub_2E43C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2E43E0(uint64_t a1, void **a2)
{
  result = sub_6F86C(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

const __CFArray *sub_2E44C4(CFArrayRef *a1, unsigned int a2, void *a3)
{
  result = *a1;
  if (result)
  {
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a1, a2);
      *a3 = ValueAtIndex;
      return (ValueAtIndex != 0);
    }
  }

  return result;
}

uint64_t sub_2E4528(CFArrayRef *a1, unsigned int a2, void *a3)
{
  cf = 0;
  v4 = sub_2E44C4(a1, a2, &cf);
  result = 0;
  if (v4)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFTypeID sub_2E45AC(CFArrayRef *a1, unsigned int a2, void *a3)
{
  cf = 0;
  result = sub_2E44C4(a1, a2, &cf);
  if (result)
  {
    v5 = cf;
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      result = CFNumberGetTypeID();
      if (v6 == result)
      {

        return CFNumberGetValue(v5, kCFNumberFloat32Type, a3);
      }
    }
  }

  return result;
}

uint64_t sub_2E463C(CFArrayRef *a1, unsigned int a2, void *a3)
{
  cf = 0;
  v4 = sub_2E44C4(a1, a2, &cf);
  result = 0;
  if (v4)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFDictionaryGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2E46B4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

NSObject *sub_2E46F4(uint64_t a1, unsigned int **a2)
{
  v16 = (*(*a1 + 120))(a1);
  __p.__r_.__value_.__r.__words[0] = 0x696E707473736323;
  LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
  sub_127F10(buf, &v16, &__p, 0, 0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v3 = *&v19[4];
  v4 = *&v19[12];
  v5 = sub_5544(27);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    sub_10898C(&__p, v3, v4);
    v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *v19 = "Device_HapticDebug_Aspen.cpp";
    *&v19[8] = 1024;
    *&v19[10] = 162;
    *&v19[14] = 2080;
    *&v19[16] = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Valid haptic debug datasources: %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
LABEL_17:
    v12 = (&dword_0 + 1);
  }

  else
  {
    v10 = *a2;
    while (v3 != v4)
    {
      v11 = v3;
      while (*v11 != *v10)
      {
        if (++v11 == v4)
        {
          v9 = v10;
          goto LABEL_19;
        }
      }

      if (++v10 == v8)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v13 = sub_5544(18);
    v12 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, *v9);
        v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *v19 = "Device_HapticDebug_Aspen.cpp";
        *&v19[8] = 1024;
        *&v19[10] = 174;
        *&v19[14] = 2080;
        *&v19[16] = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Haptic input source %s is not supported", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v12 = 0;
    }
  }

  if (v3)
  {
    operator delete(v3);
  }

  return v12;
}

void sub_2E4978(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E4998(uint64_t a1)
{
  v2 = qword_7001B8;
  if (qword_7001B8)
  {
    v5[3] = qword_7001C0;
    if (qword_7001C0)
    {
      atomic_fetch_add_explicit((qword_7001C0 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = *(a1 + 80);
    v4 = *(a1 + 88);
    v5[0] = v3;
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    sub_469CFC(v2, v5);
  }

  sub_46613C();
}

void sub_2E4A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E4A70(unsigned int **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_5544(27);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 16))(&__p, a1);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v75 = "Device_HapticDebug_Aspen.cpp";
    v76 = 1024;
    v77 = 127;
    v78 = 2080;
    v79 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device is %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((byte_6E84A8 & 1) == 0)
  {
    sub_1123D0(&__p, @"TDMDebugInputs", 0);
    if (__p.__r_.__value_.__s.__data_[0] == 1)
    {
      std::string::operator=(byte_6E84B8, &__p.__r_.__value_.__r.__words[1]);
      v7 = byte_6E84B8[23];
      if (byte_6E84B8[23] < 0)
      {
        v7 = *&byte_6E84B8[8];
      }

      byte_6E84B0 = v7 != 0;
      if (v7)
      {
        goto LABEL_13;
      }

      v58 = sub_5544(14);
      v59 = sub_468EC(1, *v58, *(v58 + 8));
      v60 = v59;
      if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v75 = "RunTimeDefaults.mm";
        v76 = 1024;
        v77 = 1689;
        v78 = 2080;
        v79 = "TDMDebugInputs";
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: An invalid string was retrieved for defaults key %s", buf, 0x1Cu);
      }

      if (byte_6E84B0)
      {
LABEL_13:
        v8 = *sub_5544(14);
        v9 = v8;
        if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (byte_6E84B8[23] >= 0)
          {
            v10 = byte_6E84B8;
          }

          else
          {
            v10 = *byte_6E84B8;
          }

          *buf = 136315906;
          v75 = "RunTimeDefaults.mm";
          v76 = 1024;
          v77 = 1691;
          v78 = 2080;
          v79 = "TDMDebugInputs";
          v80 = 2080;
          v81 = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined as %s", buf, 0x26u);
        }
      }

      byte_6E84A8 = 1;
    }

    if (v72 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__size_);
    }
  }

  v11 = byte_6E84B0;
  v69 = byte_6E84B0;
  if (byte_6E84B8[23] < 0)
  {
    sub_54A0(&v70, *byte_6E84B8, *&byte_6E84B8[8]);
    v11 = v69;
    if (v69)
    {
      goto LABEL_25;
    }

LABEL_52:
    LOBYTE(v64[0]) = 0;
    v66 = 0;
    goto LABEL_53;
  }

  v70 = *byte_6E84B8;
  if (!byte_6E84B0)
  {
    goto LABEL_52;
  }

LABEL_25:
  v12 = sub_5544(27);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
  {
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v70;
    }

    else
    {
      v14 = v70.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v75 = "HapticDebugCapturesPolicy.cpp";
    v76 = 1024;
    v77 = 76;
    v78 = 2080;
    v79 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d haptic input string read from defaults is %s", buf, 0x1Cu);
  }

  v15 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  size = v70.__r_.__value_.__l.__size_;
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v70.__r_.__value_.__l.__size_;
  }

  if (v17 <= 3)
  {
    v61 = sub_5544(14);
    v62 = *v61;
    if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v75 = "HapticDebugCapturesPolicy.cpp";
      v76 = 1024;
      v77 = 77;
      _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v67 = 0uLL;
  v68 = 0;
  v18 = v70.__r_.__value_.__r.__words[0];
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v70;
  }

  else
  {
    v19 = v70.__r_.__value_.__r.__words[0];
  }

  v20 = v19;
  while (1)
  {
    v21 = v20->__r_.__value_.__s.__data_[0];
    if (v21 != 44 && v21 != 32)
    {
      break;
    }

    v20 = (v20 + 1);
    if (!--v17)
    {
      goto LABEL_42;
    }
  }

  v40 = v20 - v19;
  if (v20 - v19 != -1)
  {
    v41 = 0;
    do
    {
      if (v41 == 8)
      {
        break;
      }

      v42 = v40 + 1;
      if ((v15 & 0x80u) != 0)
      {
        v15 = size;
      }

      else
      {
        v18 = &v70;
      }

      if (v15 <= v42)
      {
        goto LABEL_96;
      }

      v43 = (v18 + v42);
      v44 = ~v40 + v15;
      while (1)
      {
        v45 = v43->__r_.__value_.__s.__data_[0];
        if (v45 == 32 || v45 == 44)
        {
          break;
        }

        v43 = (v43 + 1);
        if (!--v44)
        {
          goto LABEL_96;
        }
      }

      if (v43 == (v18 + v15) || (v46 = v43 - v18, v47 = v46, v46 == -1))
      {
LABEL_96:
        v46 = -1;
        v47 = v15;
      }

      v48 = v47 - v40;
      if (v47 - v40 == 4)
      {
        *buf = bswap32(*(&v19->__r_.__value_.__l.__data_ + v40));
        sub_AFD28(&v67, buf);
      }

      else
      {
        v49 = sub_5544(14);
        v50 = *v49;
        if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_INFO))
        {
          std::string::basic_string(&__p, &v70, v40, v48, &v73);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          v75 = "StandardUtilities.cpp";
          v76 = 1024;
          v77 = 604;
          v78 = 2080;
          v79 = p_p;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "%25s:%-5d Skipping... 4cc code is not of size 4 : %s", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v15 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
      size = v70.__r_.__value_.__l.__size_;
      v18 = v70.__r_.__value_.__r.__words[0];
      v52 = (v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v70 : v70.__r_.__value_.__r.__words[0];
      v53 = (v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v70.__r_.__value_.__r.__words[2]) : v70.__r_.__value_.__l.__size_;
      v54 = v53 > v46;
      v55 = v53 - v46;
      if (!v54)
      {
        break;
      }

      ++v41;
      v56 = (v52 + v46);
      while (1)
      {
        v57 = v56->__r_.__value_.__s.__data_[0];
        if (v57 != 44 && v57 != 32)
        {
          break;
        }

        v56 = (v56 + 1);
        if (!--v55)
        {
          goto LABEL_42;
        }
      }

      v40 = v56 - v52;
    }

    while (v56 - v52 != -1);
  }

LABEL_42:
  v22 = sub_5544(14);
  if (*(v22 + 8))
  {
    v23 = *v22;
    if (*v22)
    {
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
      {
        sub_24C060(&__p, v67, *(&v67 + 1));
        v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v75 = "StandardUtilities.cpp";
        v76 = 1024;
        v77 = 614;
        v78 = 2080;
        v79 = v24;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d FCC in Vector: %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *v64 = v67;
  v65 = v68;
  v66 = 1;
LABEL_53:
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    v11 = v66;
  }

  if (v11)
  {
    v25 = v64;
  }

  else
  {
    v25 = a1 + 67;
  }

  v26 = (*(*a1 + 56))(a1, 0);
  v27 = v26;
  if (v11)
  {
    v28 = &v64[1];
  }

  else
  {
    v28 = a1 + 68;
  }

  v29 = *v28 - *v25;
  if (v29 == v26)
  {
    v30 = (*(*a1 + 63))(a1, v25);
    v31 = *v28;
    v32 = *v25;
    if (v30)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      sub_46980(a2, v32, v31, (v31 - v32) >> 2);
      goto LABEL_78;
    }

    v29 = (v31 - v32) >> 2;
  }

  v33 = v27;
  if (v29 != v27)
  {
    v34 = sub_5544(27);
    v35 = *v34;
    if (*v34)
    {
      if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        v36 = *v28 - *v25;
        *buf = 136315906;
        v75 = "Device_HapticDebug_Aspen.cpp";
        v76 = 1024;
        v77 = 134;
        v78 = 2048;
        v79 = v36;
        v80 = 2048;
        v81 = v33;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d # of haptic debug inputs (%lu) does not equal %zu", buf, 0x26u);
      }
    }
  }

  if (((*(*a1 + 63))(a1, v25) & 1) == 0)
  {
    v37 = sub_5544(27);
    v38 = *v37;
    if (*v37)
    {
      if (os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
      {
        sub_10898C(&__p, *v25, *v28);
        v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v75 = "Device_HapticDebug_Aspen.cpp";
        v76 = 1024;
        v77 = 135;
        v78 = 2080;
        v79 = v39;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported input in list %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_78:
  if (v66 == 1)
  {
    if (v64[0])
    {
      v64[1] = v64[0];
      operator delete(v64[0]);
    }
  }
}