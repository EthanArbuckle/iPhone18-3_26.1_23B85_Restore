void sub_D9984(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_D99B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *sub_5544(2);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_28CBA0(__p, *a3);
      v9 = v17 >= 0 ? __p : __p[0];
      v10 = *a3;
      *buf = 136316162;
      v19 = "VirtualAudio_PlugIn.mm";
      v20 = 1024;
      v21 = 4336;
      v22 = 2080;
      v23 = a2;
      v24 = 2080;
      v25 = v9;
      v26 = 1024;
      v27 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s. Returning result: %s (%u).", buf, 0x2Cu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_27A4();
  v11 = atomic_load(&qword_6E9558);
  if (v11 == pthread_self())
  {
    v13 = sub_5544(14);
    v14 = sub_468EC(1, *v13, *(v13 + 8));
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "VirtualAudio_PlugIn.mm";
      v20 = 1024;
      v21 = 4338;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is held by this thread.", buf, 0x12u);
    }
  }

  *a1 = *a3;
  v12 = *(a3 + 8);
  if (v12)
  {
    CFRetain(v12);
  }

  *(a1 + 8) = v12;
}

os_signpost_id_t *sub_D9BE4(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136315650;
        v10 = "SignpostUtilities.h";
        v11 = 1024;
        v12 = 93;
        v13 = 2080;
        v14 = "kRouteChange";
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v9, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v5 = qword_6F6848;
    v6 = v5;
    v7 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, v7, "VA_RouteChange", "", &v9, 2u);
    }
  }

  return a1;
}

void sub_D9D8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_D9D98(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *(*v1 + 144);
  for (i = *(*v1 + 152); v3 != i; v3 += 8)
  {
    v4 = *v3;
    v5 = *v1;
    if (v5 + 184 != sub_DA5E8(*v1 + 176, *(*v3 + 384), *(*v3 + 388)))
    {
      v6 = (*(*v4 + 544))(v4);
      v7 = atomic_load((v6 + 96));
      if (v7 == pthread_self() || (v8 = atomic_load((v6 + 200)), v8 == pthread_self()))
      {
        v9 = (*(*v4 + 544))(v4);
        sub_9650C(v9);
        v10 = *sub_5544(2);
        v11 = v10;
        if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v4[2];
          *buf = 136315650;
          v23 = "VirtualAudio_PlugIn.mm";
          v24 = 1024;
          v25 = 2687;
          v26 = 1024;
          LODWORD(v27) = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d The IO monitor for device %u was left held after handling a route change. Unlocked it.", buf, 0x18u);
        }
      }
    }
  }

  sub_27A4();
  v13 = atomic_load(&qword_6E9558);
  if (v13 == pthread_self())
  {
    sub_27A4();
    (*(qword_6E94F8 + 24))(&qword_6E94F8, v14);
    v15 = *sub_5544(2);
    v16 = v15;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "VirtualAudio_PlugIn.mm";
      v24 = 1024;
      v25 = 2711;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d The routing mutex was left held after handling a route change. Unlocked it.", buf, 0x12u);
    }
  }

  v17 = *v1;
  if (*(*v1 + 192))
  {
    v18 = *sub_5544(2);
    v19 = v18;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "VirtualAudio_PlugIn.mm";
      v24 = 1024;
      v25 = 2728;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VirtualAudio_Plugin belived it had changing devices after handling a route change. Clear it.", buf, 0x12u);
    }

    v17 = *v1;
  }

  v21 = *(v17 + 184);
  v20 = (v17 + 184);
  sub_477A0(v21);
  *v20 = 0;
  v20[1] = 0;
  *(v20 - 1) = v20;
}

void sub_DA5C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DA5E8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 28);
    v9 = v7 == a2;
    v8 = v7 < a2;
    if (v9)
    {
      v8 = *(v4 + 32) < a3;
    }

    v9 = !v8;
    if (v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v6 = v4;
    }

    v4 = *(v4 + v10);
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 28);
  v9 = v11 == a2;
  v12 = v11 > a2;
  if (v9)
  {
    v12 = *(v6 + 32) > a3;
  }

  if (v12)
  {
    return v3;
  }

  return v6;
}

uint64_t sub_DA658(uint64_t a1)
{
  sub_27A4();
  v85 = (*(qword_6E94F8 + 16))();
  v2 = *(a1 + 216);
  theDict.__r_.__value_.__s.__data_[0] = 0;
  theDict.__r_.__value_.__s.__data_[8] = 0;
  v3 = *(v2 + 16) == 1 && (sub_98A64(&theDict, *(v2 + 8)), theDict.__r_.__value_.__s.__data_[8] = 1, theDict.__r_.__value_.__r.__words[0]) && CFDictionaryGetCount(theDict.__r_.__value_.__l.__data_) != 0;
  sub_43E6C(buf, (a1 + 224), v3, *(a1 + 556));
  v4 = **(a1 + 112);
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v5;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= *buf;
    v11 = v9 < *buf;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 != v5 && *(v8 + 32) <= *buf)
  {
    v49 = sub_DB4D8(v8 + 80, v95);
    v12 = ((v49 & 0x100) == 0) | v49;
  }

  else
  {
LABEL_13:
    v12 = 1;
  }

  sub_477A0(*&v99[4]);
  if (theDict.__r_.__value_.__s.__data_[8] == 1 && theDict.__r_.__value_.__r.__words[0])
  {
    CFRelease(theDict.__r_.__value_.__l.__data_);
  }

  if ((v12 & 1) == 0)
  {
    v45 = sub_5544(2);
    if (*(v45 + 8))
    {
      v46 = *v45;
      if (v46)
      {
        v47 = v46;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v95 = "VirtualAudio_PlugIn.mm";
          v96 = 1024;
          v97 = 2149;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ignoring all beam former preferences based on current category and mode", buf, 0x12u);
        }
      }
    }

    v48 = 0;
    goto LABEL_129;
  }

  p_size = &theDict.__r_.__value_.__l.__size_;
  *&theDict.__r_.__value_.__r.__words[1] = 0uLL;
  theDict.__r_.__value_.__r.__words[0] = &theDict.__r_.__value_.__l.__size_;
  v14 = *(a1 + 144);
  v79 = *(a1 + 152);
  if (v14 == v79)
  {
    v43 = 0;
  }

  else
  {
    do
    {
      v82 = v14;
      v15 = sub_9F278(*v14, 0);
      v17 = v15 + 1;
      v16 = *v15;
      if (*v15 != v15 + 1)
      {
        do
        {
          v18 = sub_9E618(*(a1 + 128), *(v16 + 7));
          v19 = v18;
          if (v18 && v18[105] == 1)
          {
            v20 = (*(*v18 + 128))(v18);
            v21 = *sub_5544(2);
            v22 = v21;
            if (v21)
            {
              v23 = v21;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = *&v20;
                v25 = *(v19 + 12);
                if ((v20 & 0x100000000) == 0)
                {
                  v24 = -1.0;
                }

                v80 = v24;
                v88[0] = *(v19 + 11);
                v88[1] = v25;
                if (v25)
                {
                  atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
                }

                v81 = v25;
                sub_25704(&v89, v88, "", 2172);
                v26 = p_size;
                v27 = a1;
                sub_23148(v91, v89 + 2);
                v28 = v92;
                v29 = v91[0];
                v86 = *(*v82 + 384);
                sub_68108(&__p, &v86);
                v30 = v91;
                if (v28 < 0)
                {
                  v30 = v29;
                }

                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136316162;
                v95 = "VirtualAudio_PlugIn.mm";
                v96 = 1024;
                v97 = 2172;
                v98 = 2048;
                *v99 = v80;
                *&v99[8] = 2080;
                *&v99[10] = v30;
                v100 = 2080;
                v101 = p_p;
                _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%25s:%-5d In ApplyBeamFormerPreference, beam direction preference (%f) for port %s (%s)", buf, 0x30u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                a1 = v27;
                p_size = v26;
                if (v92 < 0)
                {
                  operator delete(v91[0]);
                }

                if (v90)
                {
                  sub_1A8C0(v90);
                }

                if (v81)
                {
                  std::__shared_weak_count::__release_weak(v81);
                }
              }
            }

            if ((v20 & 0x100000000) != 0)
            {
              v32 = *(*v82 + 384);
              size = theDict.__r_.__value_.__l.__size_;
              if (!theDict.__r_.__value_.__l.__size_)
              {
LABEL_52:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v34 = size;
                  v35 = *(size + 28);
                  v36 = *(v34 + 32);
                  v37 = v36 > HIDWORD(v32);
                  if (v35 != v32)
                  {
                    v37 = v35 > v32;
                  }

                  if (!v37)
                  {
                    break;
                  }

                  size = *v34;
                  if (!*v34)
                  {
                    goto LABEL_52;
                  }
                }

                v38 = v36 < HIDWORD(v32);
                v39 = v35 == v32;
                v40 = v35 < v32;
                if (v39)
                {
                  v40 = v38;
                }

                if (!v40)
                {
                  break;
                }

                size = *(v34 + 8);
                if (!size)
                {
                  goto LABEL_52;
                }
              }

              *(v34 + 36) = v20;
            }
          }

          v41 = v16[1];
          if (v41)
          {
            do
            {
              v42 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v42 = v16[2];
              v39 = *v42 == v16;
              v16 = v42;
            }

            while (!v39);
          }

          v16 = v42;
        }

        while (v42 != v17);
      }

      v14 = v82 + 1;
    }

    while (v82 + 1 != v79);
    if (theDict.__r_.__value_.__r.__words[2])
    {
      v43 = 0;
      v84 = *&theDict.__r_.__value_.__r.__words[1];
      v44 = theDict.__r_.__value_.__r.__words[0];
      *(theDict.__r_.__value_.__l.__size_ + 16) = &v84;
      theDict.__r_.__value_.__r.__words[0] = p_size;
      goto LABEL_73;
    }

    v43 = theDict.__r_.__value_.__l.__size_;
  }

  p_size = &v84;
  v44 = &v84;
LABEL_73:
  *p_size = 0;
  p_size[1] = 0;
  v83 = v44;
  sub_477A0(v43);
  v50 = *(a1 + 216);
  if (*v50 == 1)
  {
    if (*(v50 + 24))
    {
      v51 = v84;
      if (v84)
      {
        v52 = &v84;
        do
        {
          v53 = v51;
          v54 = v52;
          v55 = *(v51 + 7);
          if (v55 >= 0x76646566)
          {
            v52 = v51;
          }

          v51 = *(v51 + (v55 < 0x76646566));
        }

        while (v51);
        if (v52 != &v84)
        {
          if (v55 >= 0x76646566)
          {
            v56 = v53;
          }

          else
          {
            v56 = v54;
          }

          v57 = *(v56 + 7);
          v58 = v57 > 0x76646566;
          if (v57 == 1986291046)
          {
            v58 = *(v52 + 8) != 0;
          }

          if (!v58 && *(v52 + 9) != *(v50 + 40))
          {
            v59 = *sub_5544(2);
            v60 = v59;
            if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              v61 = *(v52 + 9);
              *buf = 136315650;
              v95 = "VirtualAudio_PlugIn.mm";
              v96 = 1024;
              v97 = 2200;
              v98 = 2048;
              *v99 = v61;
              _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "%25s:%-5d Setting beam direction (%f) on VP", buf, 0x1Cu);
            }

            sub_3AF734(*(a1 + 216), *(v52 + 9));
          }
        }
      }
    }
  }

  v62 = v83;
  if (v83 != &v84)
  {
    v48 = 0;
    while (1)
    {
      v63 = *(v62 + 28);
      if (v63 == 1986291046)
      {
        sub_3AF734(*(a1 + 216), *(v62 + 9));
      }

      v64 = sub_758D4(v63, SHIDWORD(v63), *(a1 + 144), *(a1 + 152));
      v65 = *(v62 + 9);
      if ((*(**(v64 + 872) + 368))())
      {
        if ((*(**(v64 + 872) + 376))(*(v64 + 872), 1650814258, 0, 0) != v65)
        {
          break;
        }
      }

      v69 = *(v62 + 9);
      if ((*(**(v64 + 872) + 400))(*(v64 + 872), 1685287015, 1818980210, 0) && (*(**(v64 + 872) + 368))(*(v64 + 872), 1685287015, 1667524978, 0) && (*(**(v64 + 872) + 368))(*(v64 + 872), 1685287015, 1667657590, 0) && (*(**(v64 + 872) + 376))(*(v64 + 872), 1685287015, 1667524978, 0) != v69)
      {
        v70 = *sub_5544(2);
        v71 = v70;
        if (v70 && os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v95 = "VirtualAudio_PlugIn.mm";
          v96 = 1024;
          v97 = 2235;
          v98 = 1024;
          *v99 = v69;
          _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, "%25s:%-5d Setting camera direction %d on DSP", buf, 0x18u);
        }

        (*(**(v64 + 872) + 384))(*(v64 + 872), 1685287015, 1667524978, 0, v69);
        v72 = *sub_5544(2);
        v67 = v72;
        if (v72 && os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v95 = "VirtualAudio_PlugIn.mm";
          v96 = 1024;
          v97 = 2238;
          v98 = 2048;
          *v99 = 0x404B000000000000;
          _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "%25s:%-5d Setting camera fov %f on DSP", buf, 0x1Cu);
        }

        v65 = 54.0;
        v73 = 1685287015;
        v74 = 1667657590;
        goto LABEL_119;
      }

      v75 = 0;
LABEL_120:
      v76 = *(v62 + 1);
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        do
        {
          v77 = *(v62 + 2);
          v39 = *v77 == v62;
          v62 = v77;
        }

        while (!v39);
      }

      v48 |= v75;
      v62 = v77;
      if (v77 == &v84)
      {
        goto LABEL_128;
      }
    }

    v66 = *sub_5544(2);
    if (v66)
    {
      v67 = v66;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v91[0] = *(v64 + 384);
        sub_68108(&theDict, v91);
        p_theDict = &theDict;
        if ((theDict.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_theDict = theDict.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        v95 = "VirtualAudio_PlugIn.mm";
        v96 = 1024;
        v97 = 2217;
        v98 = 2048;
        *v99 = v65;
        *&v99[8] = 2080;
        *&v99[10] = p_theDict;
        _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "%25s:%-5d Applying beam direction preference (%f) on VAD: '%s'.", buf, 0x26u);
        if (SHIBYTE(theDict.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(theDict.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v67 = 0;
    }

    v74 = 0;
    v73 = 1650814258;
LABEL_119:

    (*(**(v64 + 872) + 384))(*(v64 + 872), v73, v74, 0, v65);
    v75 = 1;
    goto LABEL_120;
  }

  v48 = 0;
LABEL_128:
  sub_477A0(v84);
LABEL_129:
  sub_210C50(&v85);
  return v48 & 1;
}

void sub_DB270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41)
{
  sub_477A0(a20);
  sub_210C50(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_DB350(uint64_t a1)
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

BOOL sub_DB3D4(uint64_t *a1)
{
  if (*a1 == a1[1])
  {
    return 0;
  }

  sub_DB458(v4, a1);
  v2 = sub_46754(v4, a1);
  if (v5 < 0)
  {
    operator delete(v4[10]);
  }

  sub_477A0(v4[7]);
  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  return v2;
}

uint64_t sub_DB458(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_46980(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  strcpy((a1 + 24), "cwdv");
  *(a1 + 32) = 0;
  *(a1 + 40) = 3;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 72) = 44739242;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t sub_DB4D8(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 77) == 1)
  {
    v9 = *(v5 + 76);
    v10 = v9 >> 8;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v10 = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v18 = "RoutingTypes.cpp";
            v19 = 1024;
            v20 = 2027;
            v21 = 2080;
            v22 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      LOWORD(v9) = sub_DB4D8(a1, 1768776806);
      v10 = BYTE1(v9);
    }
  }

  return v9 | (v10 << 8);
}

const __CFNumber *sub_DB674(const __CFDictionary *a1)
{
  result = sub_4A7F4(a1, "category");
  if (result)
  {

    return sub_113A0(result);
  }

  return result;
}

uint64_t *sub_DB6B0(void *a1, unsigned int a2)
{
  v2 = a1[1];
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

  v5 = *(*a1 + 8 * v4);
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

  return v6;
}

void sub_DB8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255188(va);
  _Unwind_Resume(a1);
}

const UInt8 *sub_DB910(const __CFDictionary *a1)
{
  result = sub_47FE0(a1, "mode");
  if (result)
  {

    return sub_113A0(result);
  }

  return result;
}

uint64_t sub_DB94C()
{
  if ((atomic_load_explicit(&qword_6E9C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9C68))
  {
    byte_6E9C60 = sub_311580();
    __cxa_guard_release(&qword_6E9C68);
  }

  return byte_6E9C60;
}

const __CFNumber *sub_DB9C0(const __CFDictionary *a1, char *a2)
{
  result = sub_4A0DC(a1, a2);
  if (result)
  {

    return sub_113A0(result);
  }

  return result;
}

uint64_t sub_DB9F4(uint64_t a1, char *a2, int *a3)
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

void sub_DBA8C(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_DBAC0(uint64_t **a1)
{
  v2 = *sub_5544(2);
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "VirtualAudio_PlugIn.mm";
    v8 = 1024;
    v9 = 1066;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d PV_OverlayTunings for devices", &v6, 0x12u);
  }

  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    if (*v5)
    {
      sub_DBBAC(*v5);
    }

    ++v5;
  }
}

_BYTE *sub_DBBAC(uint64_t a1)
{
  sub_27A4();
  v56 = (*(qword_6E94F8 + 16))();
  if (!*(a1 + 872))
  {
    v51 = sub_5544(14);
    v52 = *v51;
    if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      *v78 = "VirtualAudio_Device.cpp";
      *&v78[8] = 1024;
      *&v78[10] = 1250;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (sub_99D84() == 2 || sub_99D84() == 3 || sub_99D84() == 5)
  {
    v2 = sub_5544(2);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      sub_22170(&__p, *(a1 + 384));
      v4 = SHIBYTE(v59[1]) >= 0 ? &__p : __p;
      buf = 136315650;
      *v78 = "VirtualAudio_Device.cpp";
      *&v78[8] = 1024;
      *&v78[10] = 1137;
      *&v78[14] = 2080;
      *&v78[16] = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d UpdateSoundAutoConfig for device %s", &buf, 0x1Cu);
      if (SHIBYTE(v59[1]) < 0)
      {
        operator delete(__p);
      }
    }

    LODWORD(v74) = *(a1 + 8);
    __p = 0x676C6F6273616369;
    LODWORD(v59[0]) = 0;
    sub_221220(&buf, &v74, &__p);
    if (v78[20])
    {
      v5 = *&v78[12];
      *&v78[12] = 0;
      v66 = &off_6DDB78;
      cf = v5;
      v68 = 1;
      sub_8AAAC(&v78[4]);
      if (v68)
      {
        v6 = cf;
        if (cf)
        {
          CFRetain(cf);
          v57 = v6;
          v7 = CFGetTypeID(v6);
          if (v7 != CFDictionaryGetTypeID())
          {
            v55 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v55, "Could not construct");
          }

          LODWORD(__p) = *(*(a1 + 872) + 292);
          BYTE4(__p) = 1;
          if (v57)
          {
            sub_47C834(v59, v57, "position");
            sub_47C834(v62, v57, "role");
            v65 = sub_47CF4C(&v57);
            v8 = *sub_5544(25);
            v9 = v8;
            if (v8)
            {
              v10 = v8;
              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                sub_53E8(&v69, "{ ");
                v73 = &v69;
                sub_53E8(&v70, "calibration");
                if ((v72 & 0x80u) == 0)
                {
                  v11 = v72;
                }

                else
                {
                  v11 = v71;
                }

                v12 = &v74;
                sub_B0848(&v74, v11 + 2);
                if ((v76 & 0x80u) != 0)
                {
                  v12 = v74;
                }

                if (v11)
                {
                  if ((v72 & 0x80u) == 0)
                  {
                    v13 = &v70;
                  }

                  else
                  {
                    v13 = v70;
                  }

                  memmove(v12, v13, v11);
                }

                strcpy(v12 + v11, ": ");
                if ((v76 & 0x80u) == 0)
                {
                  v14 = &v74;
                }

                else
                {
                  v14 = v74;
                }

                if ((v76 & 0x80u) == 0)
                {
                  v15 = v76;
                }

                else
                {
                  v15 = v75;
                }

                std::string::append(&v69, v14, v15);
                if (v76 < 0)
                {
                  operator delete(v74);
                }

                if (v65)
                {
                  v16 = "true";
                }

                else
                {
                  v16 = "false";
                }

                v17 = 4;
                if ((v65 & 1) == 0)
                {
                  v17 = 5;
                }

                if (HIBYTE(v65))
                {
                  v18 = v16;
                }

                else
                {
                  v18 = "unspecified";
                }

                if (HIBYTE(v65))
                {
                  v19 = v17;
                }

                else
                {
                  v19 = 11;
                }

                std::string::append(&v69, v18, v19);
                if (v72 < 0)
                {
                  operator delete(v70);
                }

                std::string::append(&v69, ", ", 2uLL);
                sub_53E8(&v74, "position");
                sub_36C328(&v73, &v74, v59);
                if (v76 < 0)
                {
                  operator delete(v74);
                }

                std::string::append(&v69, ", ", 2uLL);
                sub_53E8(&v74, "role");
                sub_36C328(&v73, &v74, v62);
                if (v76 < 0)
                {
                  operator delete(v74);
                }

                std::string::append(&v69, ", ", 2uLL);
                sub_53E8(&v70, "mode");
                if ((v72 & 0x80u) == 0)
                {
                  v20 = v72;
                }

                else
                {
                  v20 = v71;
                }

                v21 = &v74;
                sub_B0848(&v74, v20 + 2);
                if ((v76 & 0x80u) != 0)
                {
                  v21 = v74;
                }

                if (v20)
                {
                  if ((v72 & 0x80u) == 0)
                  {
                    v22 = &v70;
                  }

                  else
                  {
                    v22 = v70;
                  }

                  memmove(v21, v22, v20);
                }

                strcpy(v21 + v20, ": ");
                if ((v76 & 0x80u) == 0)
                {
                  v23 = &v74;
                }

                else
                {
                  v23 = v74;
                }

                if ((v76 & 0x80u) == 0)
                {
                  v24 = v76;
                }

                else
                {
                  v24 = v75;
                }

                std::string::append(&v69, v23, v24);
                if (v76 < 0)
                {
                  operator delete(v74);
                }

                if (BYTE4(__p) == 1)
                {
                  sub_22170(&v74, __p);
                  if ((v76 & 0x80u) == 0)
                  {
                    v25 = &v74;
                  }

                  else
                  {
                    v25 = v74;
                  }

                  if ((v76 & 0x80u) == 0)
                  {
                    v26 = v76;
                  }

                  else
                  {
                    v26 = v75;
                  }

                  std::string::append(&v69, v25, v26);
                  if (v76 < 0)
                  {
                    operator delete(v74);
                  }
                }

                else
                {
                  std::string::append(&v69, "unspecified", 0xBuLL);
                }

                if (v72 < 0)
                {
                  operator delete(v70);
                }

                std::string::append(&v69, " }", 2uLL);
                if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v27 = &v69;
                }

                else
                {
                  v27 = v69.__r_.__value_.__r.__words[0];
                }

                buf = 136315650;
                *v78 = "SoundAutoConfigUtilities.mm";
                *&v78[8] = 1024;
                *&v78[10] = 162;
                *&v78[14] = 2080;
                *&v78[16] = v27;
                _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Parsed SoundAutoConfig dictionary into ConcreteSoundAutoConfigCondition %s.", &buf, 0x1Cu);
                if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v69.__r_.__value_.__l.__data_);
                }
              }
            }

            if (v57)
            {
              CFRelease(v57);
            }

            v28 = *(a1 + 872);
            v74 = &dword_4;
            *&v78[4] = __p;
            sub_80534(&v78[12], v59);
            sub_80534(v81, v62);
            v82 = v65;
            v83 = 1;
            (*(*v28 + 448))(v28, &v74, &buf, 1869968496);
            sub_DD7C4(&v78[4]);
            if (v64 == 1 && v63 < 0)
            {
              operator delete(v62[0]);
            }

            if (v61 == 1 && v60 < 0)
            {
              operator delete(v59[0]);
            }

            if (v68)
            {
              sub_8AAAC(&v66);
            }

            goto LABEL_100;
          }
        }

        else
        {
          v57 = 0;
          LODWORD(__p) = *(*(a1 + 872) + 292);
          BYTE4(__p) = 1;
        }

        v54 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v54, "Could not construct");
      }
    }
  }

LABEL_100:
  v29 = *sub_C2C1C();
  v30 = sub_5544(2);
  v31 = *v30;
  if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_INFO))
  {
    sub_22170(&__p, *(a1 + 384));
    v32 = SHIBYTE(v59[1]) >= 0 ? &__p : __p;
    buf = 136315650;
    *v78 = "VirtualAudio_Device.cpp";
    *&v78[8] = 1024;
    *&v78[10] = 1163;
    *&v78[14] = 2080;
    *&v78[16] = v32;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "%25s:%-5d UpdateLateNightMode for device %s", &buf, 0x1Cu);
    if (SHIBYTE(v59[1]) < 0)
    {
      operator delete(__p);
    }
  }

  v33 = *(a1 + 872);
  __p = &dword_0 + 1;
  v78[4] = v29 & 1;
  v83 = 0;
  (*(*v33 + 448))(v33, &__p, &buf, 1869968496);
  sub_DD7C4(&v78[4]);
  v34 = *sub_C2C1C();
  v35 = sub_5544(2);
  v36 = *v35;
  if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_INFO))
  {
    sub_22170(&__p, *(a1 + 384));
    v37 = SHIBYTE(v59[1]) >= 0 ? &__p : __p;
    buf = 136315650;
    *v78 = "VirtualAudio_Device.cpp";
    *&v78[8] = 1024;
    *&v78[10] = 1170;
    *&v78[14] = 2080;
    *&v78[16] = v37;
    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "%25s:%-5d UpdateEnhanceDialog for device %s", &buf, 0x1Cu);
    if (SHIBYTE(v59[1]) < 0)
    {
      operator delete(__p);
    }
  }

  v38 = *(a1 + 872);
  __p = &dword_0 + 2;
  v78[4] = (v34 & 4) != 0;
  v83 = 0;
  (*(*v38 + 448))(v38, &__p, &buf, 1869968496);
  sub_DD7C4(&v78[4]);
  if (sub_DD820())
  {
    v39 = sub_8703C();
    v40 = (*(*v39 + 296))(v39);
    if (v40 >= 4)
    {
      v41 = sub_5544(10);
      v42 = *v41;
      if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
      {
        buf = 136315650;
        *v78 = "VirtualAudio_Device.cpp";
        *&v78[8] = 1024;
        *&v78[10] = 1235;
        *&v78[14] = 1024;
        *&v78[16] = v40;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d EnhanceDialogLevel [%u] is out-of-range", &buf, 0x18u);
      }

      v40 = 0;
    }

    v43 = sub_5544(2);
    v44 = *v43;
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_INFO))
    {
      sub_22170(&__p, *(a1 + 384));
      v45 = SHIBYTE(v59[1]) >= 0 ? &__p : __p;
      buf = 136315650;
      *v78 = "VirtualAudio_Device.cpp";
      *&v78[8] = 1024;
      *&v78[10] = 1177;
      *&v78[14] = 2080;
      *&v78[16] = v45;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "%25s:%-5d UpdateEnhanceDialogLevel for device %s", &buf, 0x1Cu);
      if (SHIBYTE(v59[1]) < 0)
      {
        operator delete(__p);
      }
    }

    if ((*(**(a1 + 872) + 392))(*(a1 + 872), 1685287015, 1936289907, 0, 1))
    {
      LODWORD(v74) = v40 == 0;
      (*(**(a1 + 872) + 416))(*(a1 + 872), 1685287015, 1936289907, &v74, 4, 1, 0);
      v46 = sub_5544(2);
      v47 = *v46;
      if (*v46)
      {
        if (os_log_type_enabled(*v46, OS_LOG_TYPE_INFO))
        {
          sub_22170(&__p, 0x73697073u);
          if (SHIBYTE(v59[1]) >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          buf = 136315906;
          *v78 = "VirtualAudio_Device.cpp";
          *&v78[8] = 1024;
          *&v78[10] = 1189;
          *&v78[14] = 2080;
          *&v78[16] = p_p;
          v79 = 1024;
          v80 = v74;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "%25s:%-5d set property %s to %u on the graph", &buf, 0x22u);
          if (SHIBYTE(v59[1]) < 0)
          {
            operator delete(__p);
          }
        }
      }
    }

    v49 = *(a1 + 872);
    __p = &dword_4 + 3;
    *&v78[4] = v40;
    v83 = 4;
    (*(*v49 + 448))(v49, &__p, &buf, 1869968496);
    sub_DD7C4(&v78[4]);
  }

  return sub_210C50(&v56);
}

void sub_DC950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, const void *a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(v55[4]);
  }

  if (a47 < 0)
  {
    operator delete(*v55);
  }

  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_221330(&a15);
  sub_4BA7C(&a14);
  if (a35 == 1)
  {
    sub_8AAAC(&a33);
  }

  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

void sub_DCB44(void *a1, unint64_t *a2, uint64_t a3, int a4)
{
  if (a4 != 1869968496)
  {
    if (a4 == 1768845428)
    {
LABEL_9:
      v11 = a1[80];
      v12 = a1[81];
      while (v11 != v12)
      {
        v13 = *v11;
        v11 += 2;
        sub_DCC20(*(v13 + 152), *a2, a3);
      }

      return;
    }

    if (a4 != 1735159650)
    {
      return;
    }
  }

  v8 = a1[83];
  v9 = a1[84];
  while (v8 != v9)
  {
    v10 = *v8;
    v8 += 2;
    sub_DCC20(*(v10 + 152), *a2, a3);
  }

  if (a4 == 1768845428 || a4 == 1735159650)
  {
    goto LABEL_9;
  }
}

void sub_DCC20(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 1128);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 1128;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 1128 || *(v7 + 32) > a2)
  {
    goto LABEL_9;
  }

  v48 = *(v7 + 128);
  v49 = *(a3 + 88);
  if (v48 != -1 && v49 == v48)
  {
    *buf = &__p;
    if ((off_6C0168[v48])(buf, v7 + 48, a3 + 8))
    {
      goto LABEL_123;
    }
  }

  else if (v49 == v48)
  {
LABEL_123:
    v51 = *sub_5544(25);
    v52 = v51;
    if (v51 && os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v53 = (a1 + 712);
      if (*(a1 + 735) < 0)
      {
        v53 = *v53;
      }

      *buf = 136315906;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3655;
      v75 = 1024;
      *v76 = a2;
      *&v76[4] = 2080;
      *&v76[6] = v53;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Overlay tuning condition matches cache for use case %u in chain %s. Skipping application", buf, 0x22u);
    }

    return;
  }

LABEL_9:
  if (a2 == 4)
  {
    sub_2C42F0((a1 + 1120), 2uLL);
    if (sub_DD820())
    {
      sub_2C42F0((a1 + 1120), 7uLL);
    }
  }

  v11 = *(a1 + 1096);
  v61 = *(a1 + 1104);
  if (v11 == v61)
  {
    return;
  }

  v60 = 0;
  do
  {
    if (*v11 != a2)
    {
      goto LABEL_71;
    }

    v12 = *(v11 + 104);
    v13 = *(v3 + 88);
    if (a2 == 4)
    {
      if (v13 == 1)
      {
        if (*(v11 + 96) != 2)
        {
          v56 = sub_5544(14);
          v57 = *v56;
          if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ConditionalOverlayTunings.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 91;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Malformed SoundAutoConfig ConditionalOverlayTuning", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Malformed SoundAutoConfig ConditionalOverlayTuning");
        }

        *buf = *(v3 + 8);
        sub_80534(&buf[8], (v3 + 16));
        sub_80534(v77, (v3 + 48));
        v80 = *(v3 + 80);
        if (*(v11 + 96) != 2)
        {
          sub_20B4EC();
        }

        sub_44E44(&__p, v11 + 16);
        sub_2726F4(&v69, v11 + 40);
        sub_2726F4(&v71, v11 + 64);
        v73 = *(v11 + 88);
        v14 = (v73 & 0x100) == 0 || HIBYTE(v80) == HIBYTE(v73) && v80 == v73;
        if (v68)
        {
          if (buf[4] != 1)
          {
            goto LABEL_91;
          }

          v35 = v67;
          if (!v67)
          {
            goto LABEL_91;
          }

          v36 = &v67;
          do
          {
            v37 = v35;
            v38 = v36;
            v39 = *(v35 + 7);
            if (v39 >= *buf)
            {
              v36 = v35;
            }

            v35 = v35[v39 < *buf];
          }

          while (v35);
          if (v36 == &v67)
          {
            goto LABEL_91;
          }

          if (v39 < *buf)
          {
            v37 = v38;
          }

          if (*buf < *(v37 + 7))
          {
            goto LABEL_91;
          }
        }

        if (v70[1] && (v76[12] != 1 || v70 == sub_1F07F0(&v69, &buf[8])))
        {
LABEL_91:
          v41 = 0;
        }

        else
        {
          if (v72[1])
          {
            v40 = v79 == 1 && v72 != sub_1F07F0(&v71, v77);
          }

          else
          {
            v40 = 1;
          }

          v41 = v14 && v40;
        }

        sub_98A08(v72[0]);
        sub_98A08(v70[0]);
        sub_477A0(v67);
        if (v79 == 1 && v78 < 0)
        {
          operator delete(v77[0]);
        }

        if (v76[12] == 1 && (v76[11] & 0x80000000) != 0)
        {
          operator delete(*&buf[8]);
        }

        if (v41)
        {
LABEL_31:
          v17 = sub_5544(25);
          v18 = *v17;
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
          {
            v19 = (v11 + 112);
            if (*(v11 + 135) < 0)
            {
              v19 = *v19;
            }

            sub_22170(&__p, *(v11 + 104));
            if (v68 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            *buf = 136315906;
            *&buf[4] = "ConditionalOverlayTunings.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 67;
            v75 = 2080;
            *v76 = v19;
            *&v76[8] = 2080;
            *&v76[10] = p_p;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Loading overlay tuning from path %s for prop %s", buf, 0x26u);
            if (SHIBYTE(v68) < 0)
            {
              operator delete(__p);
            }
          }

          sub_EE47C(&v65, v11 + 112);
          v21 = v65;
          if (v65)
          {
            if (v12 == 1886548848)
            {
              v22 = (*(a1 + 1092) + 1);
              *(a1 + 1092) = v22;
            }

            else if (v12 == 1635087216)
            {
              v22 = (*(a1 + 1088) + 1);
              *(a1 + 1088) = v22;
            }

            else
            {
              v22 = 0;
            }

            v25 = *sub_5544(25);
            v26 = v25;
            if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = "DSPChain.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3724;
              v75 = 1024;
              *v76 = a2;
              *&v76[4] = 1024;
              *&v76[6] = v22;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applying conditional tuning for use case %u element %u", buf, 0x1Eu);
            }

            v64 = v21;
            v27 = (*(*a1 + 128))(a1, 1685287015, v12, &v64, 8, 0, v22, 0);
            if (v27)
            {
              v28 = *sub_5544(25);
              v29 = v28;
              if (v28)
              {
                v30 = v28;
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v59 = v3;
                  sub_22170(&__p, v12);
                  v31 = SHIBYTE(v68);
                  v32 = __p;
                  sub_22170(v62, v27);
                  if (v31 >= 0)
                  {
                    v33 = &__p;
                  }

                  else
                  {
                    v33 = v32;
                  }

                  v34 = v62;
                  if (v63 < 0)
                  {
                    v34 = v62[0];
                  }

                  *buf = 136315906;
                  *&buf[4] = "DSPChain.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 3731;
                  v75 = 2080;
                  *v76 = v33;
                  *&v76[8] = 2080;
                  *&v76[10] = v34;
                  _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Failure to set property %s on the graph. Error: %s", buf, 0x26u);
                  if (v63 < 0)
                  {
                    operator delete(v62[0]);
                  }

                  v3 = v59;
                  if (SHIBYTE(v68) < 0)
                  {
                    operator delete(__p);
                  }
                }
              }
            }

            else
            {
              *(v11 + 136) = v22;
              *(v11 + 140) = 1;
              ++v60;
            }

            CFRelease(v21);
          }

          else
          {
            v23 = *sub_5544(25);
            v24 = v23;
            if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "DSPChain.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3701;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Conditional tuning returned an invalid CFDictionary. Removing", buf, 0x12u);
            }

            if ((*(v11 + 136) & 0x100000000) != 0)
            {
              (*(*a1 + 136))(a1, 1685287015, v12, 0);
            }
          }

          goto LABEL_71;
        }
      }
    }

    else
    {
      v15 = *(v11 + 96);
      if (v13 != -1 && v15 == v13)
      {
        *buf = &__p;
        if ((off_6C48B8[v13])(buf, v3 + 8, v11 + 16))
        {
          goto LABEL_31;
        }
      }

      else if (v15 == v13)
      {
        goto LABEL_31;
      }
    }

    if ((*(v11 + 136) & 0x100000000) != 0)
    {
      (*(*a1 + 136))(a1, 1685287015, v12, 0);
    }

LABEL_71:
    v11 += 144;
  }

  while (v11 != v61);
  if (v60)
  {
    v42 = *sub_5544(25);
    v43 = v42;
    if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v44 = (a1 + 712);
      if (*(a1 + 735) < 0)
      {
        v44 = *v44;
      }

      *buf = 136315906;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3744;
      v75 = 1024;
      *v76 = a2;
      *&v76[4] = 2080;
      *&v76[6] = v44;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d Caching overlay tuning condition for use case %u in chain %s.", buf, 0x22u);
    }

    v45 = *(a1 + 1128);
    if (!v45)
    {
LABEL_115:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v46 = v45;
        v47 = v45[4];
        if (v47 <= a2)
        {
          break;
        }

        v45 = *v46;
        if (!*v46)
        {
          goto LABEL_115;
        }
      }

      if (v47 >= a2)
      {
        break;
      }

      v45 = v46[1];
      if (!v45)
      {
        goto LABEL_115;
      }
    }

    v54 = *(v3 + 88);
    if (*(v46 + 32) != -1 || v54 != -1)
    {
      if (v54 == -1)
      {
        sub_DD7C4((v46 + 6));
      }

      else
      {
        *buf = v46 + 6;
        (off_6C0190[v54])(buf);
      }
    }
  }
}

void sub_DD6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_4BA7C(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_DD7C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 80);
  if (v2 != -1)
  {
    result = (off_6B8C30[v2])(&v3, result);
  }

  *(v1 + 80) = -1;
  return result;
}

uint64_t sub_DD820()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return sub_99D84() == 5;
  }

  return result;
}

uint64_t sub_DD858()
{
  if ((atomic_load_explicit(&qword_6E9AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9AD8))
  {
    dword_6E9AD0 = sub_30E380();
    __cxa_guard_release(&qword_6E9AD8);
  }

  return dword_6E9AD0;
}

uint64_t sub_DD8CC(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  (*(*a1 + 432))(v5);
  v3 = 0;
  if (v6 == 1)
  {
    v3 = sub_DDE9C(v5, a2);
    if (v6)
    {
      sub_DDE50(v5);
    }
  }

  return v3;
}

void sub_DD96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_DDE50(&a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_DD98C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (!(*(*a1 + 88))(a1))
  {
LABEL_18:
    v9 = 0;
    *a4 = 0;
    goto LABEL_19;
  }

  v8 = (*(*a1 + 96))(a1, a2, a3);
  if (!v8)
  {
    v10 = sub_5544(17);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 128))(v19, a1);
      v12 = v20;
      v13 = v19[0];
      if (a2)
      {
        v14 = "output";
      }

      else
      {
        v14 = "input";
      }

      sub_53E8(__p, v14);
      v15 = v19;
      if (v12 < 0)
      {
        v15 = v13;
      }

      if (v18 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136316162;
      v22 = "AggregateDevice_CommonBase.cpp";
      v23 = 1024;
      v24 = 450;
      v25 = 2080;
      v26 = v15;
      v27 = 2080;
      v28 = v16;
      v29 = 1024;
      v30 = a3;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Encountered a null stream in AggregateDevice_CommonBase::GetDSPConfigurationUseCases() for device '%s'. Direction: %s, stream index: %u", buf, 0x2Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }

    goto LABEL_18;
  }

  sub_DDBBC(a4, *(v8 + 152) + 1008);
  v9 = 1;
LABEL_19:
  a4[40] = v9;
}

void sub_DDB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DDBBC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_80330(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_DDC34(a1, *(i + 4));
  }

  return a1;
}

void *sub_DDC34(void *result, int a2)
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

uint64_t sub_DDE50(uint64_t a1)
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

uint64_t sub_DDE9C(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_17;
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

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_17:
    sub_DE7DC("unordered_map::at: key not found");
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
      goto LABEL_17;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_16;
  }

  return *(v6 + 20);
}

void sub_DDF68()
{
  if ((atomic_load_explicit(&qword_6E6A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6A28))
  {
    sub_216C4C();

    __cxa_guard_release(&qword_6E6A28);
  }
}

void sub_DDFE4(objc_class *a1)
{
  if (!a1)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVHIDEventListener.h";
      *&buf[12] = 1024;
      *&buf[14] = 195;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v26 = &unk_6E68F0;
  v27 = 1;
  sub_47BD8(&unk_6E68F0);
  v2 = qword_6E6A10;
  if (qword_6E6A10 == &qword_6E6A18)
  {
LABEL_10:
    v6 = sub_5544(42);
    v2 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        (*(*a1 + 112))(__p, a1);
        v7 = v25 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "AVHIDEventListener.h";
        *&buf[12] = 1024;
        *&buf[14] = 211;
        *&buf[18] = 2080;
        *&buf[20] = v7;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d VAD '%s' was not previously registered.", buf, 0x1Cu);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }
      }

      LODWORD(v2) = 0;
    }

    v8 = &unk_6E68F0;
    goto LABEL_19;
  }

  while (v2[4].isa != a1)
  {
    isa = v2[1].isa;
    if (isa)
    {
      do
      {
        v4 = isa;
        isa = *isa;
      }

      while (isa);
    }

    else
    {
      do
      {
        v4 = v2[2].isa;
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    v2 = v4;
    if (v4 == &qword_6E6A18)
    {
      goto LABEL_10;
    }
  }

  v15 = sub_5544(42);
  v16 = *v15;
  if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 112))(__p, a1);
    v17 = v25 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = "AVHIDEventListener.h";
    *&buf[12] = 1024;
    *&buf[14] = 204;
    *&buf[18] = 2080;
    *&buf[20] = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unregistering VAD '%s' for updates.", buf, 0x1Cu);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = v2[1].isa;
  if (v18)
  {
    do
    {
      v19 = v18;
      v18 = v18->isa;
    }

    while (v18);
  }

  else
  {
    v20 = v2;
    do
    {
      v19 = v20[2].isa;
      v5 = v19->isa == v20;
      v20 = v19;
    }

    while (!v5);
  }

  if (qword_6E6A10 == v2)
  {
    qword_6E6A10 = v19;
  }

  --qword_6E6A20;
  sub_75234(qword_6E6A18, v2);
  operator delete(v2);
  LODWORD(v2) = !sub_216BD0(&qword_6E68D8);
  if (v27)
  {
    v8 = v26;
LABEL_19:
    sub_47C90(v8);
  }

  if (v2)
  {
    v9 = sub_5544(42);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVHIDEventListener.h";
      *&buf[12] = 1024;
      *&buf[14] = 217;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unregistered all VADs. Setting packet logging disabled.", buf, 0x12u);
    }

    if (qword_6E68E8 && (v11 = atomic_load((qword_6E68E8 + 72)), (v11 & 1) != 0))
    {
      v26 = &qword_6E68D8;
      v12 = sub_216610();
      if (dispatch_get_specific("AVHIDEventListenerQueueKey") == "AVHIDEventListenerQueueKey")
      {
        sub_2166AC(qword_6E68E8, 0);
      }

      else
      {
        __p[0] = &v26;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_2168D4;
        *&buf[24] = &unk_6B9928;
        v29 = __p;
        dispatch_sync(v12, buf);
      }
    }

    else
    {
      v13 = sub_5544(42);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVHIDEventListener.h";
        *&buf[12] = 1024;
        *&buf[14] = 226;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No AV HID device, ignoring.", buf, 0x12u);
      }
    }
  }
}

void sub_DE7DC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1DE494(exception, a1);
}

uint64_t sub_DE838(void *a1, int a2, int a3)
{
  v29 = 3;
  BYTE4(v31) = a3;
  v38 = 0;
  (*(*a1 + 448))(a1, &v29, buf, 1869968496);
  result = sub_DD7C4(&v31 + 4);
  v7 = a1[83];
  v8 = a1[84];
  if (v7 != v8)
  {
    v9 = "disabled";
    if (a2)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    if (a3)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (a3)
    {
      v9 = "enabled";
    }

    v28 = v9;
    do
    {
      v12 = *(*v7 + 152);
      if (!*(v12 + 376))
      {
        v20 = sub_5544(14);
        v21 = sub_468EC(1, *v20, *(v20 + 8));
        v22 = v21;
        if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v31 = "DSPChain.mm";
          v32 = 1024;
          v33 = 3751;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v13 = *sub_5544(42);
      v14 = v13;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = (v12 + 712);
        if (*(v12 + 735) < 0)
        {
          v15 = *v15;
        }

        *buf = 136315906;
        v31 = "DSPChain.mm";
        v32 = 1024;
        v33 = 3755;
        v34 = 2080;
        v35 = v10;
        v36 = 2080;
        v37 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPChain::SetAdaptiveVolumeActive() - setting adaptive volume %s on chain '%s'.", buf, 0x26u);
      }

      v16 = *(v12 + 376);
      if (a3 && !*(v16 + 88))
      {
        v24 = sub_5544(14);
        v25 = sub_468EC(1, *v24, *(v24 + 8));
        v26 = v25;
        if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v31 = "DSPChain.mm";
          v32 = 1024;
          v33 = 245;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v27 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v27, "Precondition failure.");
      }

      atomic_store(a2, (v16 + 64));
      atomic_store(a3, (v16 + 65));
      result = sub_DDE9C((v12 + 1008), 2);
      if (result)
      {
        result = sub_DDE9C((v12 + 1008), 0);
        if ((result & 1) == 0)
        {
          v17 = *sub_5544(42);
          v18 = v17;
          if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v19 = (v12 + 712);
            if (*(v12 + 735) < 0)
            {
              v19 = *v19;
            }

            *buf = 136315906;
            v31 = "DSPChain.mm";
            v32 = 1024;
            v33 = 3766;
            v34 = 2080;
            v35 = v28;
            v36 = 2080;
            v37 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPChain::SetAdaptiveVolumeActive() - setting AULoudnessNormalizer %s on chain '%s'.", buf, 0x26u);
          }

          result = (*(*v12 + 72))(v12, 1685287015, 1819174254, 0, v11);
        }
      }

      v7 += 16;
    }

    while (v7 != v8);
  }

  return result;
}

void sub_DECD0(void ***a1)
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
        v6 = *(v4 - 4);
        if (v6)
        {
          *(v4 - 3) = v6;
          operator delete(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_DED5C(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      sub_2820();
      result = sub_3D90(*v3);
      if (result)
      {
        result = (*(*result + 88))(result, -1431655765 * ((*(v3 + 16) - *(v3 + 8)) >> 2));
      }

      v3 += 40;
    }

    while (v3 != a2);
  }

  return result;
}

_BYTE *sub_DEDF0(uint64_t a1, uint64_t a2)
{
  sub_27A4();
  v4 = (*(qword_6E94F8 + 16))();
  v25 = v4;
  if (caulk::product::get_device_class(v4) == 4)
  {
    v5 = **(a2 + 112);
    v8 = *(v5 + 8);
    v6 = v5 + 8;
    v7 = v8;
    if (v8)
    {
      v9 = v6;
      do
      {
        v10 = *(v7 + 32);
        v11 = v10 >= 0x63737072;
        v12 = v10 < 0x63737072;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 != v6 && *(v9 + 32) <= 0x63737072u)
      {
        v16 = sub_5544(14);
        v17 = sub_468EC(1, *v16, *(v16 + 8));
        v18 = v17;
        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          v27 = 1024;
          *v28 = 8040;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }
    }

    *a1 = 1936289391;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    strcpy(buf, "rpscgcrv");
    LOBYTE(v27) = 0;
    *&v28[2] = v29;
    v29[0] = 0;
    v30[0] = 0;
    v30[1] = 0;
    v29[1] = 0;
    v29[2] = v30;
    v30[2] = v31;
    v31[0] = 0;
    v32[0] = 0;
    v32[1] = 0;
    v31[1] = 0;
    v31[2] = v32;
    v32[2] = v33;
    memset(v33, 0, sizeof(v33));
    v35 = 0;
    v34 = 0;
    memset(&v38, 0, sizeof(v38));
    v39 = 0x756E64656175746FLL;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 1065353216;
    v48 = 1065353216;
    v49 = 0u;
    v50 = 0u;
    v51 = 1065353216;
    v52 = 0;
    v53 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v60 = 0;
    v13 = *(a2 + 240);
    v36 = 1668248944;
    v37 = v13;
    std::string::operator=(&v38, (a2 + 248));
    v39 = *(a2 + 272);
    sub_3AE5F4(v20, a2, buf, &qword_6F5A00);
    if (v24)
    {
      sub_3AF510(v20);
      sub_3AF510(v20);
      *a1 = v21;
      v14 = a1 + 8;
      if (SHIBYTE(v23) < 0)
      {
        sub_54A0(v14, v22, *(&v22 + 1));
      }

      else
      {
        *v14 = v22;
        *(v14 + 16) = v23;
      }
    }

    else
    {
      *a1 = 1936289391;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
    }

    if (v24 == 1)
    {
      sub_DF7E4(v20);
    }

    sub_4AF90(buf);
  }

  return sub_210C50(&v25);
}

void sub_DF14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  sub_210C50(&a22);
  _Unwind_Resume(a1);
}

void sub_DF1AC(uint64_t *a1)
{
  if (*a1)
  {
    sub_762A8(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_DF1EC(int a1)
{
  if (a1 == 1668314723)
  {
    return 1;
  }

  if (a1 != 1986357346)
  {
    return 0;
  }

  v1 = sub_809C0();
  v15 = 1886609775;
  v17 = 0;
  v16 = 0uLL;
  sub_4625C(&v16, &v15, &v16, 1uLL);
  *v4 = v16;
  v5 = v17;
  strcpy(v6, "cwdv");
  v6[8] = 0;
  v7 = 3;
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v10 = 44739242;
  v12 = 0;
  v13 = 0;
  __p = 0;
  *&v16 = off_6BA830;
  v18 = &v16;
  sub_2574C4(v14, v1, v4, &v16);
  v2 = v14[2] != 0;
  sub_65310(v14);
  sub_85148(&v16);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v9[0]);
  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  return v2;
}

void sub_DF370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_85148(v9 - 64);
  sub_46934(&a9);
  _Unwind_Resume(a1);
}

void sub_DF394(uint64_t a1, uint64_t a2, void *a3)
{
  LOBYTE(__p[0]) = 0;
  v24 = 0;
  v5 = a3 + 1;
  v6 = *a3;
  if (*a3 != a3 + 1)
  {
    while (1)
    {
      v7 = sub_9E618(*(a2 + 128), *(v6 + 7));
      if (v7)
      {
        v8 = *(v7 + 96);
        v25 = *(v7 + 88);
        v26 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_25704(&v20, &v25, "", 8003);
        v9 = (*(*v20 + 384))(v20);
        if (*(&v20 + 1))
        {
          sub_1A8C0(*(&v20 + 1));
        }

        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }

        if (v9)
        {
          break;
        }
      }

      v10 = v6[1];
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
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
      if (v11 == v5)
      {
        v13 = 0;
        v14 = 1936289391;
        goto LABEL_34;
      }
    }
  }

  v14 = 1936289391;
  if (v6 == v5 || (v15 = sub_9E618(*(a2 + 128), *(v6 + 7))) == 0)
  {
    v13 = 0;
  }

  else
  {
    v16 = *(v15 + 96);
    *&v20 = *(v15 + 88);
    *(&v20 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_25704(&v25, &v20, "", 8011);
    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = v25;
    v13 = v25 != 0;
    if (v25)
    {
      (*(*v25 + 408))(&v20, v25);
      *__p = v20;
      v23 = v21;
      v24 = 1;
      if (*(v17 + 304) == 1781740087)
      {
        v14 = 1936024681;
      }

      else
      {
        v18 = HIBYTE(v23);
        if (v23 < 0)
        {
          v18 = __p[1];
        }

        if (v18)
        {
          v14 = 1936679529;
        }

        else
        {
          v14 = 1936289391;
        }
      }
    }

    if (v26)
    {
      sub_1A8C0(v26);
    }
  }

LABEL_34:
  *a1 = v14;
  sub_80534((a1 + 8), __p);
  if (v23 < 0 && v13)
  {
    operator delete(__p[0]);
  }
}

void sub_DF60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_1A8C0(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DF684(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_DF790(result, a4);
  }

  return result;
}

void sub_DF790(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_26A4C4(a2);
  }

  sub_189A00();
}

void sub_DF7E4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = a1;
  sub_847A8(&v2);
}

uint64_t sub_DF828(uint64_t a1, char *a2, int *a3)
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

void sub_DF8C0(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_DF8F4(void *a1)
{
  sub_27A4();
  v18 = (*(qword_6E94F8 + 16))();
  v15 = a1;
  sub_DFB4C(&v16, a1);
  v2 = v16;
  for (i = v17; v2 != i; v2 += 3)
  {
    v4 = sub_5544(2);
    v5 = sub_5544(14);
    v6 = 0;
    *buf = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&buf[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_8:
    v9 = *v4;
    v10 = v9;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v2;
      if (*(v2 + 23) < 0)
      {
        v11 = *v2;
      }

      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      v20 = 1024;
      v21 = 7629;
      v22 = 2080;
      v23 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }

  if (sub_E2724())
  {
    v12 = a1[18];
    v13 = v15[19];
    while (v12 != v13)
    {
      if (*v12)
      {
        sub_EA448(*v12);
      }

      ++v12;
    }
  }

  *buf = &v16;
  sub_11C50(buf);
  return sub_210C50(&v18);
}

void sub_DFB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void **a20)
{
  a20 = &a13;
  sub_11C50(&a20);
  sub_210C50(&a19);
  _Unwind_Resume(a1);
}

_BYTE *sub_DFB4C(uint64_t a1, void *a2)
{
  v149 = 0;
  sub_27A4();
  v150 = (*(qword_6E94F8 + 32))();
  if (v150)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_63250(buf);
    sub_22564(buf, "VirtualAudio_Devices (", 22);
    v3 = a2[19] - a2[18];
    std::ostream::operator<<();
    sub_22564(buf, "):", 2);
    sub_E1504(__p, &buf[1]);
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 >= v5)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_189A00();
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v15;
      }

      *&v152[32] = a1;
      if (v17)
      {
        sub_1D8BB8(v17);
      }

      v18 = 24 * v14;
      v19 = *&__p[0].__r_.__value_.__l.__data_;
      *(v18 + 16) = *(&__p[0].__r_.__value_.__l + 2);
      *v18 = v19;
      memset(__p, 0, 24);
      v20 = 24 * v14 + 24;
      v21 = *(a1 + 8) - *a1;
      v22 = 24 * v14 - v21;
      memcpy((v18 - v21), *a1, v21);
      v23 = *a1;
      *a1 = v22;
      *(a1 + 8) = v20;
      v24 = *(a1 + 16);
      *(a1 + 16) = 0;
      *&v152[16] = v23;
      *&v152[24] = v24;
      *v152 = v23;
      *&v152[8] = v23;
      sub_12574(v152);
      v25 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      *(a1 + 8) = v20;
      if (v25 < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v6 = *&__p[0].__r_.__value_.__l.__data_;
      *(v4 + 16) = *(&__p[0].__r_.__value_.__l + 2);
      *v4 = v6;
      memset(__p, 0, 24);
      *(a1 + 8) = v4 + 24;
    }

    if (SHIBYTE(v159) < 0)
    {
      operator delete(v157);
    }

    std::locale::~locale(&buf[2]);
    std::ostream::~ostream();
    std::ios::~ios();
    v26 = a2[18];
    v139 = a2[19];
    if (v26 != v139)
    {
      do
      {
        v27 = *v26;
        strcpy(v152, "trsnbolg");
        v152[9] = 0;
        *&v152[10] = 0;
        v145 = v27;
        sub_E15B4(buf, v27);
        locale = buf[0].__locale_;
        if (LODWORD(buf[0].__locale_) || (buf[2].__locale_ & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = locale;
        }

        sub_63250(buf);
        sub_22564(buf, "- VirtualAudio_Device: ", 23);
        (*(*v145 + 112))(&__dst);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        sub_22564(buf, p_dst, size);
        sub_22564(buf, "; running: ", 11);
        (*(*v145 + 528))(v145);
        std::ostream::operator<<();
        sub_22564(buf, "; sr: ", 6);
        std::ostream::operator<<();
        sub_E1504(__p, &buf[1]);
        v31 = *(a1 + 8);
        v32 = *(a1 + 16);
        v141 = v26;
        if (v31 >= v32)
        {
          v34 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *a1) >> 3);
          v35 = v34 + 1;
          if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_189A00();
          }

          v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *a1) >> 3);
          if (2 * v36 > v35)
          {
            v35 = 2 * v36;
          }

          if (v36 >= 0x555555555555555)
          {
            v37 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v37 = v35;
          }

          *&v152[32] = a1;
          if (v37)
          {
            sub_1D8BB8(v37);
          }

          v38 = 24 * v34;
          v39 = *&__p[0].__r_.__value_.__l.__data_;
          *(v38 + 16) = *(&__p[0].__r_.__value_.__l + 2);
          *v38 = v39;
          memset(__p, 0, 24);
          v40 = 24 * v34 + 24;
          v41 = *(a1 + 8) - *a1;
          v42 = (24 * v34 - v41);
          memcpy(v42, *a1, v41);
          v43 = *a1;
          *a1 = v42;
          *(a1 + 8) = v40;
          v44 = *(a1 + 16);
          *(a1 + 16) = 0;
          *&v152[16] = v43;
          *&v152[24] = v44;
          *v152 = v43;
          *&v152[8] = v43;
          sub_12574(v152);
          v45 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
          *(a1 + 8) = v40;
          if (v45 < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v33 = *&__p[0].__r_.__value_.__l.__data_;
          *(v31 + 16) = *(&__p[0].__r_.__value_.__l + 2);
          *v31 = v33;
          memset(__p, 0, 24);
          *(a1 + 8) = v31 + 24;
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        buf[0].__locale_ = v143;
        *(&buf[0].__locale_ + *(v143 - 3)) = v144;
        if (SHIBYTE(v159) < 0)
        {
          operator delete(v157);
        }

        std::locale::~locale(&buf[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        v46 = 0;
        v47 = 1;
        do
        {
          v142 = v46;
          v48 = (v47 & 1) == 0;
          v49 = 304;
          if (v48)
          {
            v50 = 312;
          }

          else
          {
            v49 = 280;
            v50 = 288;
          }

          v51 = v145 + v49;
          v52 = *(v145 + v49);
          if (((*(v145 + v50) - v52) & 0x7FFFFFFF8) != 0)
          {
            if ((*(v51 + 8) - v52) >> 3)
            {
              v53 = *v52;
            }

            else
            {
              v53 = 0;
            }

            strcpy(&__dst, "tmfsbolg");
            __dst.__r_.__value_.__s.__data_[9] = 0;
            WORD1(__dst.__r_.__value_.__r.__words[1]) = 0;
            if (sub_E1688(v53))
            {
              LODWORD(v147.__r_.__value_.__l.__data_) = sub_E16FC(v53);
              if (LODWORD(v147.__r_.__value_.__l.__data_))
              {
                memset(buf, 0, sizeof(buf));
                v54 = sub_E1770(v53);
                if (!v54)
                {
                  *v152 = *(&buf[0].__locale_ + 1);
                  *&v152[16] = *(&buf[2].__locale_ + 1);
                  *&v152[31] = buf[4];
                  __p[0].__r_.__value_.__s.__data_[0] = buf[0].__locale_;
                  *(&__p[0].__r_.__value_.__l.__data_ + 1) = *(&buf[0].__locale_ + 1);
                  *(&__p[0].__r_.__value_.__r.__words[2] + 1) = *&v152[16];
                  __p[1].__r_.__value_.__r.__words[1] = buf[4];
                  sub_63250(buf);
                  sub_22564(buf, "  - VirtualAudio_Stream: ", 25);
                  (*(*v53 + 112))(&v147, v53);
                  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v55 = &v147;
                  }

                  else
                  {
                    v55 = v147.__r_.__value_.__r.__words[0];
                  }

                  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v56 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v56 = v147.__r_.__value_.__l.__size_;
                  }

                  sub_22564(buf, v55, v56);
                  sub_22564(buf, "; fmt: ", 7);
                  sub_618A4(&v146);
                }
              }

              else
              {
                v54 = 2003329396;
              }
            }

            else
            {
              v54 = 2003332927;
            }

            v130 = __cxa_allocate_exception(0x10uLL);
            *v130 = &off_6DDDD0;
            v130[2] = v54;
          }

          v47 = 0;
          v46 = 1;
        }

        while ((v142 & 1) == 0);
        v26 = v141 + 1;
      }

      while (v141 + 1 != v139);
    }

    v57 = *(a2[14] + 8);
    if (!v57)
    {
      sub_68108(&v147, "fedv");
LABEL_88:
      v72 = *(a1 + 8);
      v71 = *(a1 + 16);
      if (v72 >= v71)
      {
        v74 = 0xAAAAAAAAAAAAAAABLL * ((v72 - *a1) >> 3);
        v75 = v74 + 1;
        if (v74 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_189A00();
        }

        v76 = 0xAAAAAAAAAAAAAAABLL * ((v71 - *a1) >> 3);
        if (2 * v76 > v75)
        {
          v75 = 2 * v76;
        }

        if (v76 >= 0x555555555555555)
        {
          v77 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v77 = v75;
        }

        buf[4].__locale_ = a1;
        if (v77)
        {
          sub_1D8BB8(v77);
        }

        v78 = 24 * v74;
        v79 = *&v147.__r_.__value_.__l.__data_;
        *(v78 + 16) = *(&v147.__r_.__value_.__l + 2);
        *v78 = v79;
        memset(&v147, 0, sizeof(v147));
        v80 = 24 * v74 + 24;
        v81 = *(a1 + 8) - *a1;
        v82 = v78 - v81;
        memcpy((v78 - v81), *a1, v81);
        v83 = *a1;
        *a1 = v82;
        *(a1 + 8) = v80;
        v84 = *(a1 + 16);
        *(a1 + 16) = 0;
        buf[2].__locale_ = v83;
        buf[3].__locale_ = v84;
        buf[0].__locale_ = v83;
        buf[1].__locale_ = v83;
        sub_12574(buf);
        v85 = SHIBYTE(v147.__r_.__value_.__r.__words[2]);
        *(a1 + 8) = v80;
        if (v85 < 0)
        {
          operator delete(v147.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v73 = *&v147.__r_.__value_.__l.__data_;
        *(v72 + 16) = *(&v147.__r_.__value_.__l + 2);
        *v72 = v73;
        *(a1 + 8) = v72 + 24;
      }

      v86 = a2[16];
      if (!v86)
      {
        v135 = sub_5544(14);
        v136 = sub_468EC(1, *v135, *(v135 + 8));
        v137 = v136;
        if (v136 && os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0].__locale_) = 136315394;
          *(&buf[0].__locale_ + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[1].__locale_) = 1024;
          *(&buf[1].__locale_ + 6) = 7723;
          _os_log_impl(&dword_0, v137, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v138 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v138, "Precondition failure.");
      }

      memset(buf, 0, 24);
      strcpy(&buf[3], "cwdv");
      LOBYTE(buf[4].__locale_) = 0;
      LODWORD(v154) = 3;
      v156[0] = 0;
      v156[1] = 0;
      __src = v156;
      LODWORD(v157) = 44739242;
      v159 = 0;
      v160 = 0;
      v158 = 0;
      sub_45ED0(__p, v86, buf);
      if (SHIBYTE(v160) < 0)
      {
        operator delete(v158);
      }

      sub_477A0(v156[0]);
      if (buf[0].__locale_)
      {
        buf[1] = buf[0];
        operator delete(buf[0].__locale_);
      }

      sub_63250(buf);
      sub_22564(buf, "VirtualAudio_Ports (", 20);
      std::ostream::operator<<();
      sub_22564(buf, "):", 2);
      sub_E1504(&__dst, &buf[1]);
      v87 = *(a1 + 8);
      v88 = *(a1 + 16);
      if (v87 >= v88)
      {
        v90 = 0xAAAAAAAAAAAAAAABLL * ((v87 - *a1) >> 3);
        v91 = v90 + 1;
        if (v90 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_189A00();
        }

        v92 = 0xAAAAAAAAAAAAAAABLL * ((v88 - *a1) >> 3);
        if (2 * v92 > v91)
        {
          v91 = 2 * v92;
        }

        if (v92 >= 0x555555555555555)
        {
          v93 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v93 = v91;
        }

        *&v152[32] = a1;
        if (v93)
        {
          sub_1D8BB8(v93);
        }

        v94 = 24 * v90;
        v95 = *&__dst.__r_.__value_.__l.__data_;
        *(v94 + 16) = *(&__dst.__r_.__value_.__l + 2);
        *v94 = v95;
        memset(&__dst, 0, sizeof(__dst));
        v96 = 24 * v90 + 24;
        v97 = *(a1 + 8) - *a1;
        v98 = (24 * v90 - v97);
        memcpy(v98, *a1, v97);
        v99 = *a1;
        *a1 = v98;
        *(a1 + 8) = v96;
        v100 = *(a1 + 16);
        *(a1 + 16) = 0;
        *&v152[16] = v99;
        *&v152[24] = v100;
        *v152 = v99;
        *&v152[8] = v99;
        sub_12574(v152);
        v101 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        *(a1 + 8) = v96;
        if (v101 < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v89 = *&__dst.__r_.__value_.__l.__data_;
        *(v87 + 16) = *(&__dst.__r_.__value_.__l + 2);
        *v87 = v89;
        memset(&__dst, 0, sizeof(__dst));
        *(a1 + 8) = v87 + 24;
      }

      buf[0].__locale_ = v143;
      *(&buf[0].__locale_ + *(v143 - 3)) = v144;
      if (SHIBYTE(v159) < 0)
      {
        operator delete(v157);
      }

      std::locale::~locale(&buf[2]);
      std::ostream::~ostream();
      std::ios::~ios();
      for (i = __p[0].__r_.__value_.__l.__size_; i != __p; i = *(i + 8))
      {
        v103 = sub_9E618(a2[16], *(i + 16));
        sub_63250(buf);
        sub_22564(buf, "- VirtualAudio_Port: ", 21);
        (*(*v103 + 112))(&v147, v103);
        if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = &v147;
        }

        else
        {
          v104 = v147.__r_.__value_.__r.__words[0];
        }

        if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v105 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v105 = v147.__r_.__value_.__l.__size_;
        }

        sub_22564(buf, v104, v105);
        sub_E1504(&__dst, &buf[1]);
        v106 = *(a1 + 8);
        v107 = *(a1 + 16);
        if (v106 >= v107)
        {
          v109 = 0xAAAAAAAAAAAAAAABLL * ((v106 - *a1) >> 3);
          v110 = v109 + 1;
          if (v109 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_189A00();
          }

          v111 = 0xAAAAAAAAAAAAAAABLL * ((v107 - *a1) >> 3);
          if (2 * v111 > v110)
          {
            v110 = 2 * v111;
          }

          if (v111 >= 0x555555555555555)
          {
            v112 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v112 = v110;
          }

          *&v152[32] = a1;
          if (v112)
          {
            sub_1D8BB8(v112);
          }

          v113 = 24 * v109;
          v114 = *&__dst.__r_.__value_.__l.__data_;
          *(v113 + 16) = *(&__dst.__r_.__value_.__l + 2);
          *v113 = v114;
          memset(&__dst, 0, sizeof(__dst));
          v115 = 24 * v109 + 24;
          v116 = *(a1 + 8) - *a1;
          v117 = 24 * v109 - v116;
          memcpy((v113 - v116), *a1, v116);
          v118 = *a1;
          *a1 = v117;
          *(a1 + 8) = v115;
          v119 = *(a1 + 16);
          *(a1 + 16) = 0;
          *&v152[16] = v118;
          *&v152[24] = v119;
          *v152 = v118;
          *&v152[8] = v118;
          sub_12574(v152);
          v120 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          *(a1 + 8) = v115;
          if (v120 < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v108 = *&__dst.__r_.__value_.__l.__data_;
          *(v106 + 16) = *(&__dst.__r_.__value_.__l + 2);
          *v106 = v108;
          memset(&__dst, 0, sizeof(__dst));
          *(a1 + 8) = v106 + 24;
        }

        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v147.__r_.__value_.__l.__data_);
        }

        buf[0].__locale_ = v143;
        *(&buf[0].__locale_ + *(v143 - 3)) = v144;
        if (SHIBYTE(v159) < 0)
        {
          operator delete(v157);
        }

        std::locale::~locale(&buf[2]);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      sub_4E0BC(__p);
      return sub_3A000C(&v149);
    }

    v60 = *(v57 + 32);
    v58 = v57 + 32;
    v59 = v60;
    if (!v60)
    {
      goto LABEL_82;
    }

    v61 = v58;
    do
    {
      v62 = *(v59 + 32);
      v63 = v62 >= 0x76646566;
      v64 = v62 < 0x76646566;
      if (v63)
      {
        v61 = v59;
      }

      v59 = *(v59 + 8 * v64);
    }

    while (v59);
    if (v61 == v58)
    {
      goto LABEL_82;
    }

    v65 = *(v61 + 32);
    v48 = v65 == 1986291046;
    v66 = v65 > 0x76646566;
    if (v48)
    {
      v66 = *(v61 + 36) != 0;
    }

    if (v66)
    {
LABEL_82:
      *(&__dst.__r_.__value_.__s + 23) = 0;
      __dst.__r_.__value_.__s.__data_[0] = 0;
LABEL_83:
      v67 = std::string::insert(&__dst, 0, "Routing manager: [ ", 0x13uLL);
      v68 = *&v67->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v68;
      v67->__r_.__value_.__l.__size_ = 0;
      v67->__r_.__value_.__r.__words[2] = 0;
      v67->__r_.__value_.__r.__words[0] = 0;
      v69 = std::string::append(__p, " ]", 2uLL);
      v70 = *&v69->__r_.__value_.__l.__data_;
      v147.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
      *&v147.__r_.__value_.__l.__data_ = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      goto LABEL_88;
    }

    sub_63250(buf);
    v122 = v61 + 40;
    for (j = *(v61 + 48); j != v122; j = *(j + 8))
    {
      v124 = *(j + 16);
      if (!v124)
      {
        v132 = sub_5544(14);
        v133 = *v132;
        if (*v132 && os_log_type_enabled(*v132, OS_LOG_TYPE_ERROR))
        {
          *v152 = 136315394;
          *&v152[4] = "RoutingHandlerActionList.cpp";
          *&v152[12] = 1024;
          *&v152[14] = 48;
          _os_log_impl(&dword_0, v133, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v152, 0x12u);
        }

        v134 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v134, "Precondition failure.");
      }

      (*(*v124 + 32))(v152);
      if (v152[24] == 1)
      {
        v125 = v152[23] >= 0 ? v152 : *v152;
        v126 = v152[23] >= 0 ? v152[23] : *&v152[8];
        sub_22564(buf, v125, v126);
        if ((v152[24] & 1) != 0 && (v152[23] & 0x80000000) != 0)
        {
          operator delete(*v152);
        }
      }
    }

    if ((v161 & 0x10) != 0)
    {
      v128 = v160;
      if (v160 < v156[0])
      {
        v160 = v156[0];
        v128 = v156[0];
      }

      v129 = __src;
    }

    else
    {
      if ((v161 & 8) == 0)
      {
        v127 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_171:
        __dst.__r_.__value_.__s.__data_[v127] = 0;
        buf[0].__locale_ = v143;
        *(&buf[0].__locale_ + *(v143 - 3)) = v144;
        if (SHIBYTE(v159) < 0)
        {
          operator delete(v157);
        }

        std::locale::~locale(&buf[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_83;
      }

      v129 = buf[3].__locale_;
      v128 = v154;
    }

    v127 = v128 - v129;
    if ((v128 - v129) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_755AC();
    }

    if (v127 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v128 - v129;
    if (v127)
    {
      memmove(&__dst, v129, v127);
    }

    goto LABEL_171;
  }

  v7 = sub_5544(2);
  v8 = sub_5544(14);
  v9 = 0;
  buf[0].__locale_ = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *(&buf[0].__locale_ + v9);
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_10:
  v12 = *v7;
  v13 = v12;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].__locale_) = 136315394;
    *(&buf[0].__locale_ + 4) = "VirtualAudio_PlugIn.mm";
    WORD2(buf[1].__locale_) = 1024;
    *(&buf[1].__locale_ + 6) = 7693;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to lock mutex, Exiting DumpDeviceAndPortState", buf, 0x12u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return sub_3A000C(&v149);
}

void sub_E11B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33)
{
  sub_11C50(&a21);
  sub_3A000C(&a33);
  _Unwind_Resume(a1);
}

BOOL sub_E14B4(uint64_t a1, _BYTE *a2)
{
  result = sub_42A2A8(a1, a2);
  if (result)
  {
    if (sub_4AD0(a1))
    {
      return 1;
    }

    else
    {
      *a2 = 0;
      sub_42A318(a1);
      return 0;
    }
  }

  return result;
}

void sub_E1504(std::string *a1, uint64_t a2)
{
  v4 = sub_22C94(a2);
  if (v5)
  {
    v6 = (a2 + 64);
    if (*(a2 + 87) < 0)
    {
      v6 = *v6;
    }

    v7 = v4 - v6;
  }

  else
  {
    v7 = 0;
  }

  *&a1->__r_.__value_.__l.__data_ = *(a2 + 64);
  a1->__r_.__value_.__r.__words[2] = *(a2 + 80);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  std::string::resize(a1, v7 + v5, 0);
  std::string::erase(a1, 0, v7);
  sub_23034(a2);
}

void sub_E1598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E15B4(uint64_t a1, uint64_t a2)
{
  result = sub_E1688(a2);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = sub_E16FC(a2);
    if (result)
    {
      result = sub_E1770(a2);
      *a1 = result;
      if (!result)
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 1;
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

void sub_E16C8(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0xE16BCLL);
}

void sub_E173C(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0xE1730);
}

void sub_E17B4(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0xE17A8);
}

uint64_t sub_E17E8(void **a1, int *a2, int a3, uint64_t a4)
{
  if ((((*a1)[6])(a1) & 1) == 0)
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v18 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 2003332927;
LABEL_34:
    exception[2] = v14;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *a2;
      v19 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 561211770;
    goto LABEL_34;
  }

  v8 = *a2;
  if (*a2 <= 1936092514)
  {
    if (v8 > 1751938146)
    {
      if ((v8 - 1935765619) < 2)
      {
        return 8;
      }

      v9 = 1751938147;
    }

    else
    {
      if (v8 == 1684829283 || v8 == 1685025633)
      {
        return 4;
      }

      v9 = 1718641517;
    }

    goto LABEL_17;
  }

  if (v8 <= 1936482675)
  {
    if (v8 != 1936092515)
    {
      v9 = 1936222577;
      goto LABEL_17;
    }

    return 4;
  }

  if (v8 == 1936482676)
  {
    return 4;
  }

  if (v8 == 1952542835)
  {
    v11 = *(*a1[15] + 32);

    return v11();
  }

  v9 = 1936487523;
LABEL_17:
  if (v8 == v9)
  {
    return 4;
  }

  return sub_E1C20(a1, a2);
}

uint64_t sub_E1C20(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = 8;
  if (*a2 <= 1819173228)
  {
    if (v2 > 1818455661)
    {
      v6 = v2 == 1818455662;
      v7 = 1819107691;
    }

    else
    {
      v6 = v2 == 1818452846;
      v7 = 1818454126;
    }

    if (!v6 && v2 != v7)
    {
      return sub_E1CEC(a1, a2);
    }

    return v3;
  }

  if (v2 > 1935894637)
  {
    if (v2 != 1935894638 && v2 != 1952805485 && v2 != 1935960434)
    {
      return sub_E1CEC(a1, a2);
    }

    return 4;
  }

  if (v2 == 1819173229)
  {
    return v3;
  }

  if (v2 == 1819569763)
  {
    return 4;
  }

  return sub_E1CEC(a1, a2);
}

uint64_t sub_E1CEC(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1818850145 || *a2 == 1818850162)
  {
    return 12;
  }

  v5 = sub_1537C(a1, a2);
  if (!v5)
  {
    v7 = sub_5544(14);
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *a2;
      v10 = a2[2];
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v6 = *(*v5 + 32);

  return v6();
}

uint64_t sub_E1EE8(void *a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1885762656)
  {
    switch(v2)
    {
      case 1885762657:
        v5 = a1[7];
        v6 = a1[8];
        if (v5 != v6)
        {
          v7 = 0;
          do
          {
            v7 += (*(v5 + 48) - *(v5 + 40)) >> 4;
            v5 += 64;
          }

          while (v5 != v6);
          return (56 * v7);
        }

        break;
      case 1936092513:
        v8 = a1[10];
        v9 = a1[11];
        if (v8 != v9)
        {
          v7 = 0;
          do
          {
            v7 += (*(v8 + 48) - *(v8 + 40)) >> 4;
            v8 += 64;
          }

          while (v8 != v9);
          return (56 * v7);
        }

        break;
      case 1936092532:
        return 40;
      default:
        return 0;
    }

    return 0;
  }

  if (v2 == 1853059619)
  {
    return 16 * sub_D75A8(a1);
  }

  if (v2 == 1885762592)
  {
    v3 = 40;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1853059700)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_E1FFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  v4 = *(a1 + 55);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 55))
    {
      goto LABEL_3;
    }

LABEL_6:
    std::to_string(&__dst, *(a1 + 8));
    v5 = std::string::insert(&__dst, 0, "[ id: ", 6uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v50;
    }

    else
    {
      v7 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    std::string::append((a1 + 32), v7, size);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    snprintf(&__str, 0x13uLL, "%p", a1);
    sub_53E8(&__dst, &__str);
    v9 = std::string::insert(&__dst, 0, "; addr: ", 8uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v50;
    }

    else
    {
      v11 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v50.__r_.__value_.__l.__size_;
    }

    std::string::append((a1 + 32), v11, v12);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v13 = (*(**(a1 + 120) + 96))(*(a1 + 120));
    if (v13)
    {
      v14 = "out";
    }

    else
    {
      v14 = "in";
    }

    if (v13)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    memcpy(&__dst, v14, v15);
    *(&__dst | v15) = 0;
    v16 = std::string::insert(&__dst, 0, "; dir: ", 7uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v50;
    }

    else
    {
      v18 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v50.__r_.__value_.__l.__size_;
    }

    std::string::append((a1 + 32), v18, v19);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v20 = *(a1 + 112);
    std::to_string(&v48, v20[2]);
    v21 = std::string::insert(&v48, 0, "[ ", 2uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&__str, "/", 1uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    snprintf(__s, 0x13uLL, "%p", v20);
    sub_53E8(__p, __s);
    if ((v47 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if ((v47 & 0x80u) == 0)
    {
      v26 = v47;
    }

    else
    {
      v26 = __p[1];
    }

    v27 = std::string::append(&__dst, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v50, " ]", 2uLL);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (v47 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    v31 = std::string::insert(&v43, 0, "; owning VAD: ", 0xEuLL);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v45 = v31->__r_.__value_.__r.__words[2];
    *v44 = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    if (v45 >= 0)
    {
      v33 = v44;
    }

    else
    {
      v33 = v44[0];
    }

    if (v45 >= 0)
    {
      v34 = HIBYTE(v45);
    }

    else
    {
      v34 = v44[1];
    }

    std::string::append((a1 + 32), v33, v34);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44[0]);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    sub_23148(&__dst, (*(a1 + 120) + 8));
    v35 = std::string::insert(&__dst, 0, "; virt strms: ", 0xEuLL);
    v36 = *&v35->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v50;
    }

    else
    {
      v37 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v50.__r_.__value_.__l.__size_;
    }

    std::string::append((a1 + 32), v37, v38);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    (*(**(a1 + 120) + 168))(&__str);
    sub_8E920(&__dst, &__str, 1);
    v39 = std::string::insert(&__dst, 0, "; associated ports: ", 0x14uLL);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v50;
    }

    else
    {
      v41 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v50.__r_.__value_.__l.__size_;
    }

    std::string::append((a1 + 32), v41, v42);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    sub_65310(&__str);
    std::string::append((a1 + 32), " ]", 2uLL);
    if ((*(a1 + 55) & 0x80) == 0)
    {
      goto LABEL_4;
    }

LABEL_89:
    sub_54A0(a2, *(a1 + 32), *(a1 + 40));
    goto LABEL_90;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_89;
  }

LABEL_4:
  *a2 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 48);
LABEL_90:
  os_unfair_lock_unlock((a1 + 24));
}

uint64_t sub_E2724()
{
  if ((atomic_load_explicit(&qword_6E8518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8518))
  {
    byte_6E8510 = sub_28A068();
    __cxa_guard_release(&qword_6E8518);
  }

  return byte_6E8510;
}

void sub_E2798(CFDictionaryRef *a1, CFTypeRef *a2, unint64_t **a3)
{
  if (*a3 == a3[1])
  {
    v26 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    *a1 = v26;
    return;
  }

  v44 = 0;
  v45 = 0uLL;
  sub_E2B64(&v38, *a2);
  sub_E2B64(&v32, *a2);
  v33 = (v35 - v34) >> 3;
  while (1)
  {
    if (v38 && v39 != (v40[1] - v40[0]) >> 3)
    {
      v6 = v32;
      goto LABEL_9;
    }

    v6 = v32;
    if (!v32 || v33 == (v35 - v34) >> 3)
    {
      break;
    }

LABEL_9:
    if (v38 == v6 && v39 == v33)
    {
      break;
    }

    sub_E2CE8(&cf, &v38);
    v7 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v28 = v7;
    v8 = v31;
    if (v31)
    {
      CFRetain(v31);
    }

    v29 = v8;
    sub_88E68(&v44, &v28);
    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    ++v39;
  }

  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    do
    {
      v12 = v44;
      v11 = v45;
      if (v44 != v45)
      {
        do
        {
          v13 = *v9;
          v14 = *v12;
          if (*v9)
          {
            v15 = v14 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
            if (!(v13 | v14))
            {
              goto LABEL_44;
            }
          }

          else if (CFEqual(v13, v14))
          {
            goto LABEL_44;
          }

          v12 += 2;
        }

        while (v12 != v11);
        v12 = v11;
LABEL_44:
        v11 = v45;
      }

      if (v12 == v11)
      {
        if (v11 >= *(&v45 + 1))
        {
          v20 = (v11 - v44) >> 4;
          if ((v20 + 1) >> 60)
          {
            sub_189A00();
          }

          v21 = (*(&v45 + 1) - v44) >> 3;
          if (v21 <= v20 + 1)
          {
            v21 = v20 + 1;
          }

          if (*(&v45 + 1) - v44 >= 0x7FFFFFFFFFFFFFF0uLL)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          v41 = &v44;
          if (v22)
          {
            sub_1DB894(v22);
          }

          v38 = 0;
          v39 = 16 * v20;
          v40[0] = (16 * v20);
          v40[1] = 0;
          sub_D2A98((16 * v20), v9);
          v40[0] = v40[0] + 16;
          v23 = (v44 + v39 - v45);
          sub_65184(&v44, v44, v45, v23);
          v24 = v44;
          v25 = *(&v45 + 1);
          v44 = v23;
          v27 = v40[0];
          v45 = *v40;
          v40[0] = v24;
          v40[1] = v25;
          v38 = v24;
          v39 = v24;
          sub_65134(&v38);
          v19 = v27;
        }

        else
        {
          sub_D2A98(v11, v9);
          v19 = v11 + 2;
        }

        *&v45 = v19;
      }

      else
      {
        v17 = v12[1];
        v18 = v9[1];
        v12[1] = v18;
        if (v18)
        {
          CFRetain(v18);
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

      v9 += 2;
    }

    while (v9 != v10);
  }

  *a1 = sub_65448(&v44);
  v38 = &v44;
  sub_65830(&v38);
}

void sub_E2AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = (v16 - 104);
  sub_65830(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_E2B64(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    sub_E2BE8((a1 + 16), Count);
    sub_E2BE8(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void sub_E2BE8(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1D5F64(v10);
      }

      sub_189A00();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void *sub_E2CE8(void *result, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(exception, "DictionaryRef_iterator iterator out of range.");
  }

  v5 = result;
  v6 = *(v4 + 8 * v2);
  if (v6)
  {
    result = CFRetain(*(v4 + 8 * v2));
    v2 = a2[1];
  }

  v7 = a2[5];
  v8 = *(v7 + 8 * v2);
  if (v8)
  {
    result = CFRetain(*(v7 + 8 * v2));
  }

  *v5 = v6;
  v5[1] = v8;
  return result;
}

void sub_E2DAC(void *a1, int *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t *a6)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v25 = *a2;
      v29 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v26 = *a2;
      v30 = a2[2];
      sub_22CE0(__p);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = &off_6DDDD0;
    v20[2] = 561211770;
  }

  if (!a6)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      v31 = a2[2];
      sub_22CE0(__p);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    *v22 = &off_6DDDD0;
    v22[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1919774834)
  {
    if (v12 > 1684633186)
    {
      if (v12 == 1684633187 || v12 == 1685484390)
      {
        goto LABEL_23;
      }

      v14 = 1918987632;
    }

    else
    {
      if (v12 == 1064725619 || v12 == 1668443504)
      {
        goto LABEL_23;
      }

      v14 = 1668705648;
    }
  }

  else
  {
    if (v12 > 1986098019)
    {
      if (v12 > 1986229103)
      {
        if (v12 != 1986817377)
        {
          v13 = 29552;
          goto LABEL_21;
        }
      }

      else if (v12 != 1986098020)
      {
        v13 = 25966;
LABEL_21:
        v14 = v13 | 0x76630000;
        goto LABEL_22;
      }

LABEL_23:
      v15 = *a5;
      if (v15 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v23 = sub_5544(14);
        if (*v23)
        {
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
          {
            v28 = *a2;
            v32 = a2[2];
            sub_22CE0(__p);
          }
        }

        v24 = __cxa_allocate_exception(0x10uLL);
        *v24 = &off_6DDDD0;
        v24[2] = 561211770;
      }

      v16 = a1[12];
      *buf = *a2;
      v35 = 1735159650;
      (*(*v16 + 40))(v16, buf, a3, a4, a5, a6);
      return;
    }

    if (v12 == 1919774835 || v12 == 1936878960)
    {
      goto LABEL_23;
    }

    v14 = 1937208929;
  }

LABEL_22:
  if (v12 == v14)
  {
    goto LABEL_23;
  }

  sub_141070(a1, a2, a3, a4, a5, a6);
}

void sub_E34E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E350C(uint64_t a1, uint64_t *a2)
{
  sub_24784(*(a1 + 80), *(a1 + 88));
  v4 = (*(***(a1 + 80) + 16))(**(a1 + 80), a2);
  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  while (v6 != v5)
  {
    if (v4 != (*(**v6 + 16))(*v6, a2))
    {
      v8 = sub_5544(14);
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v10 = *a2;
          v11 = *(a2 + 2);
          sub_22CE0(&v12);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Internal state failure. Differing responses to HasProperty(%s) in the contained control list (control = %s, result = %d)");
    }

    v6 += 2;
  }

  return v4;
}

void sub_E373C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E3770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24784(*(a1 + 80), *(a1 + 88));
  v8 = (*(***(a1 + 80) + 32))(**(a1 + 80), a2, a3, a4);
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  while (v10 != v9)
  {
    if (v8 != (*(**v10 + 32))(*v10, a2, a3, a4))
    {
      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315394;
          v16 = "ControlSet.h";
          v17 = 1024;
          v18 = 110;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Internal state failure. Differing responses to GetPropertyDataSize in the contained control list", &v15, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Internal state failure. Differing responses to GetPropertyDataSize in the contained control list");
    }

    v10 += 2;
  }

  return v8;
}

void sub_E3948(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned __int16 *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v63 = sub_5544(14);
    v64 = *v63;
    if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 654;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) > a5)
  {
    v66 = sub_5544(14);
    v67 = *v66;
    if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 655;
      _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): Data size insufficient.", buf, 0x12u);
    }

    v68 = __cxa_allocate_exception(0x10uLL);
    *v68 = &off_6DDDD0;
    v68[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v69 = sub_5544(14);
    v70 = *v69;
    if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 656;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnsupportedOperationError): Property is not settable.", buf, 0x12u);
    }

    v71 = __cxa_allocate_exception(0x10uLL);
    *v71 = &off_6DDDD0;
    v71[2] = 1970171760;
  }

  v12 = *a2;
  if (*a2 <= 1986098019)
  {
    if (v12 == 1668443504)
    {
      if ((*(a1 + 869) & 1) == 0)
      {
        v72 = sub_5544(14);
        v73 = *v72;
        if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 748;
          _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v74 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v74, "Precondition failure.");
      }

      v28 = sub_5544(42);
      v29 = *v28;
      if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(&__p, 0x63726D70u);
        v30 = v100 >= 0 ? &__p : __p;
        *buf = 136315650;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 751;
        *&buf[18] = 2080;
        *v102 = v30;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::SetPropertyData() - %s.", buf, 0x1Cu);
        if (v100 < 0)
        {
          operator delete(__p);
        }
      }

      std::recursive_mutex::lock((a1 + 800));
      if (*(a1 + 868) == 1)
      {
        v31 = *(a1 + 704);
        if (v31)
        {
          v32 = std::__shared_weak_count::lock(v31);
          if (v32)
          {
            v33 = v32;
            v34 = *(a1 + 696);
            if (v34)
            {
              (*(*v34 + 256))(v34);
            }

            sub_1A8C0(v33);
          }
        }

        if (a6)
        {
          if (a5 != 2)
          {
            v61 = sub_5544(14);
            v62 = *v61;
            if (*v61)
            {
              if (os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "StandardUtilities.h";
                *&buf[12] = 1024;
                *&buf[14] = 155;
                _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: sizeof(T) == inDataSize", buf, 0x12u);
              }
            }
          }

          sub_3050B8(a1, *a6);
          sub_306A38();
        }

        v91 = sub_5544(14);
        v92 = *v91;
        if (*v91 && os_log_type_enabled(*v91, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "StandardUtilities.h";
          *&buf[12] = 1024;
          *&buf[14] = 154;
          _os_log_impl(&dword_0, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v93 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v93, "Precondition failure.");
      }

      v45 = sub_5544(42);
      v46 = *v45;
      if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(&__p, 0x63726D70u);
        v47 = v100 >= 0 ? &__p : __p;
        *buf = 136315650;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 767;
        *&buf[18] = 2080;
        *v102 = v47;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::SetPropertyData() - %s no ramp in progress to cancel.", buf, 0x1Cu);
        if (v100 < 0)
        {
          operator delete(__p);
        }
      }

      std::recursive_mutex::unlock((a1 + 800));
      return;
    }

    if (v12 == 1836414053)
    {
      *(a1 + 725) = sub_306740(a5, a6) == 1;

      sub_E5354(a1, 2);
    }

    if (v12 != 1918987632)
    {
      goto LABEL_58;
    }

    if ((*(a1 + 869) & 1) == 0)
    {
      v75 = sub_5544(14);
      v76 = *v75;
      if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 735;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v77 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v77, "Precondition failure.");
    }

    v14 = sub_5544(42);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(&__p, 0x72616D70u);
      v16 = v100 >= 0 ? &__p : __p;
      *buf = 136315650;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 738;
      *&buf[18] = 2080;
      *v102 = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::SetPropertyData() - %s.", buf, 0x1Cu);
      if (v100 < 0)
      {
        operator delete(__p);
      }
    }

    std::recursive_mutex::lock((a1 + 800));
    if (!a6)
    {
      v81 = sub_5544(14);
      v82 = *v81;
      if (*v81 && os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "StandardUtilities.h";
        *&buf[12] = 1024;
        *&buf[14] = 154;
        _os_log_impl(&dword_0, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v83 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v83, "Precondition failure.");
    }

    if (a5 != 24)
    {
      v59 = sub_5544(14);
      v60 = *v59;
      if (*v59)
      {
        if (os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "StandardUtilities.h";
          *&buf[12] = 1024;
          *&buf[14] = 155;
          _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: sizeof(T) == inDataSize", buf, 0x12u);
        }
      }
    }

    v95 = *a6;
    cf = *(a6 + 2);
    v17 = *(a1 + 704);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = *(a1 + 696);
        if (v19)
        {
          *(a1 + 868) = 1;
          v20 = cf;
          if (cf)
          {
            CFRetain(cf);
            v21 = CFGetTypeID(cf);
            if (v21 != CFStringGetTypeID())
            {
              CFRelease(cf);
              v20 = 0;
            }
          }

          v22 = *(a1 + 872);
          *(a1 + 872) = v20;
          if (v22)
          {
            CFRelease(v22);
          }

          v23 = *&v95;
          *(a1 + 864) = v95;
          v24 = sub_5544(42);
          v25 = *v24;
          if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(a1 + 872);
            if (v26)
            {
              sub_125D8(&__p, v26);
              if (v100 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              *buf = 136316418;
              *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1809;
              *&buf[18] = 2048;
              *v102 = v23;
              *&v102[8] = 2048;
              *&v102[10] = *(&v95 + 1);
              *&v102[18] = 2048;
              v103 = *(&v95 + 2);
              v104 = 2080;
              v105 = p_p;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::BeginSoftwareVolumeRamp() - target volume %.2f, upward ramp duration %.2fms, downward ramp duration %.2fms, category %s.", buf, 0x3Au);
              if (v100 < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              *buf = 136316418;
              *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1809;
              *&buf[18] = 2048;
              *v102 = v23;
              *&v102[8] = 2048;
              *&v102[10] = *(&v95 + 1);
              *&v102[18] = 2048;
              v103 = *(&v95 + 2);
              v104 = 2080;
              v105 = "unknown";
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::BeginSoftwareVolumeRamp() - target volume %.2f, upward ramp duration %.2fms, downward ramp duration %.2fms, category %s.", buf, 0x3Au);
            }
          }

          (*(*v19 + 248))(v19, &v95);
          *buf = off_6C1498;
          *&buf[8] = a1;
          *&v102[4] = buf;
          (*(*v19 + 264))(v19, buf);
          sub_27781C(buf);
          goto LABEL_110;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v48 = sub_5544(42);
    v49 = *v48;
    if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1860;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d OutputVolumeControl_HAL_Common::BeginSoftwareVolumeRamp() - unable to lock software volume command.", buf, 0x12u);
    }

    if (!v18)
    {
LABEL_111:
      sub_306A38();
    }

LABEL_110:
    sub_1A8C0(v18);
    goto LABEL_111;
  }

  if (v12 <= 1987013740)
  {
    if (v12 != 1986098020)
    {
      v13 = 1986817377;
      goto LABEL_39;
    }

    v37 = *(a1 + 704);
    if (v37)
    {
      v38 = std::__shared_weak_count::lock(v37);
      if (v38)
      {
        v39 = *(a1 + 696);
        if (v39 && ((*(*v39 + 72))(v39) & 1) != 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    v50 = sub_5544(14);
    v51 = *v50;
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 712;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Ducking is not supported!", buf, 0x12u);
    }

LABEL_90:
    if (a5 != 8)
    {
      v78 = sub_5544(14);
      v79 = *v78;
      if (*v78 && os_log_type_enabled(*v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 714;
        _os_log_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v80 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v80, "Precondition failure.");
    }

    v52 = CFRetain(*a6);
    __p = &off_6DDB78;
    theDict = v52;
    if (sub_3068D8(v52, @"ducking type"))
    {
      if (sub_3068D8(theDict, @"ducking enable"))
      {
        if (sub_3068D8(theDict, @"ducking gain"))
        {
          if (sub_3068D8(theDict, @"ducking time"))
          {
            sub_306900(buf, theDict, @"ducking type");
            v53 = sub_3069C0(*&buf[8]);
            sub_8AAAC(buf);
            sub_306900(buf, theDict, @"ducking enable");
            v54 = sub_3069C0(*&buf[8]);
            sub_8AAAC(buf);
            sub_306900(buf, theDict, @"ducking time");
            v55 = sub_3069F8(*&buf[8]);
            v56 = *&v55;
            sub_8AAAC(buf);
            sub_306900(buf, theDict, @"ducking gain");
            v57 = sub_3069F8(*&buf[8]);
            v58 = *&v57;
            sub_8AAAC(buf);
            (*(*v39 + 64))(v39, v53, v54, v58, v56);
            sub_8AAAC(&__p);
            if (v38)
            {
              sub_1A8C0(v38);
            }

            return;
          }

          v89 = sub_5544(14);
          v85 = *v89;
          if (*v89 && os_log_type_enabled(*v89, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 721;
            v86 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioDevicePropertyDucking - kVirtualAudioPlugInDuckingTimeKey is required";
            goto LABEL_160;
          }

LABEL_161:
          v90 = __cxa_allocate_exception(0x10uLL);
          *v90 = &off_6DDDD0;
          v90[2] = 1852797029;
        }

        v88 = sub_5544(14);
        v85 = *v88;
        if (!*v88 || !os_log_type_enabled(*v88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_161;
        }

        *buf = 136315394;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 720;
        v86 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioDevicePropertyDucking - kVirtualAudioPlugInDuckingGainKey is required";
      }

      else
      {
        v87 = sub_5544(14);
        v85 = *v87;
        if (!*v87 || !os_log_type_enabled(*v87, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_161;
        }

        *buf = 136315394;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 719;
        v86 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioDevicePropertyDucking - kVirtualAudioPlugInDuckingEnableKey is required";
      }
    }

    else
    {
      v84 = sub_5544(14);
      v85 = *v84;
      if (!*v84 || !os_log_type_enabled(*v84, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_161;
      }

      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 718;
      v86 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioDevicePropertyDucking - kVirtualAudioPlugInDuckingTypeKey is required";
    }

LABEL_160:
    _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, v86, buf, 0x12u);
    goto LABEL_161;
  }

  if (v12 != 2021027692)
  {
    v13 = 1987013741;
LABEL_39:
    if (v12 == v13)
    {
      *buf = sub_5908C(a5, a6);
      LODWORD(__p) = 0;
      LODWORD(v95) = 1065353216;
      *(a1 + 712) = *sub_E521C(&__p, buf, &v95);
      sub_E5354(a1, 2);
    }

LABEL_58:
    v35 = sub_5544(14);
    v36 = *v35;
    if (*v35)
    {
      if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 775;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: GetPropertyDataSize() is correct and IsPropertySettable() and HasProperty() returned true, but I do not know about it.", buf, 0x12u);
      }
    }

    return;
  }

  v40 = *(a1 + 736);
  *(a1 + 736) = *a6;
  if (v40 | *(a1 + 736))
  {
    v41 = vcvtq_f64_f32(*(a1 + 684));
    v42 = *(a1 + 680);
    v43 = *(a1 + 696);
    v44 = *(a1 + 704);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *&buf[16] = v42;
      *&v102[4] = v43;
      *&v102[12] = v44;
      atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v94 = v41;
      std::__shared_weak_count::__release_weak(v44);
      v41 = v94;
    }

    else
    {
      *&buf[16] = *(a1 + 680);
      *&v102[4] = v43;
    }

    *buf = v41;
    memset(v97, 0, sizeof(v97));
    sub_20A634(v97, *(a1 + 760), *(a1 + 768), (*(a1 + 768) - *(a1 + 760)) >> 4);
    sub_159BFC(a1, v97, *(a1 + 620) | 0x100000000, buf);
    if (v97[0])
    {
      operator delete(v97[0]);
    }

    if (*&v102[12])
    {
      std::__shared_weak_count::__release_weak(*&v102[12]);
    }
  }

  if (*(a1 + 728) == 1 && (*(a1 + 736) || v40 && *(a1 + 680)))
  {
    sub_E5354(a1, 2);
  }
}

void sub_E4D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  sub_1A8C0(v26);
  std::recursive_mutex::unlock((v25 + 800));
  _Unwind_Resume(a1);
}

NSObject *sub_E4E40(uint64_t a1, int *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315394;
      *&v13[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&v13[12] = 1024;
      *&v13[14] = 301;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v4 = *a2;
  v5 = (&dword_0 + 1);
  if (*a2 <= 1936878959)
  {
    if (v4 <= 1684633186)
    {
      if (v4 <= 1668705647)
      {
        if (v4 == 1064725619)
        {
          return 0;
        }

        v7 = 1668443504;
        goto LABEL_20;
      }

      if (v4 == 1668705648)
      {
        return 0;
      }

      v6 = 1684157046;
    }

    else
    {
      if (v4 <= 1836414052)
      {
        if (v4 != 1684633187)
        {
          if (v4 != 1685484390)
          {
            goto LABEL_36;
          }

          if ((*(a1 + 680) - 1) >= 2)
          {
            sub_5659C(v13, (a1 + 504), "", 337);
            v5 = (*(**v13 + 24))(*v13, a2);
            if (*&v13[8])
            {
              sub_1A8C0(*&v13[8]);
            }

            return v5;
          }
        }

        return 0;
      }

      if (v4 == 1836414053 || v4 == 1918987632)
      {
        return v5;
      }

      v6 = 1919774835;
    }

LABEL_33:
    if (v4 == v6)
    {
      return 0;
    }

LABEL_36:
    v9 = sub_5544(14);
    v5 = *v9;
    if (!*v9)
    {
      return v5;
    }

    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315394;
      *&v13[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&v13[12] = 1024;
      *&v13[14] = 342;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty() returned true, but I do not know about it.", v13, 0x12u);
    }

    return 0;
  }

  if (v4 > 1986229103)
  {
    if (v4 <= 1986817376)
    {
      if (v4 == 1986229104)
      {
        return 0;
      }

      v6 = 1986290211;
      goto LABEL_33;
    }

    if (v4 == 1986817377 || v4 == 1987013741)
    {
      return v5;
    }

    v7 = 2021027692;
LABEL_20:
    if (v4 != v7)
    {
      goto LABEL_36;
    }

    return v5;
  }

  if (v4 <= 1983013985)
  {
    if (v4 == 1936878960)
    {
      return 0;
    }

    v6 = 1937208929;
    goto LABEL_33;
  }

  if (v4 == 1983013986)
  {
    return 0;
  }

  if (v4 != 1986098020)
  {
    v6 = 1986225518;
    goto LABEL_33;
  }

  return v5;
}

void sub_E51FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

float *sub_E521C(float *result, float *a2, float *a3)
{
  if (*a3 < *result)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "StandardUtilities.h";
      v9 = 1024;
      v10 = 275;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): clamp() requires that maxVal >= minVal.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "clamp() requires that maxVal >= minVal.");
  }

  if (*a2 < *a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (*a2 > *result)
  {
    return v3;
  }

  return result;
}

void sub_E5354(uint64_t a1, int a2)
{
  if (!*(a1 + 680) && !*(a1 + 736) && (*(a1 + 727) & 1) == 0)
  {
    v186 = sub_5544(14);
    v187 = *v186;
    if (*v186 && os_log_type_enabled(*v186, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1380;
      _os_log_impl(&dword_0, v187, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Volume Mode is HardwareOnly but physical device does not support HW volume", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "Volume Mode is HardwareOnly but physical device does not support HW volume");
  }

  sub_5659C(&v189, (a1 + 504), "", 1382);
  sub_5B898(a1 + 584, *(a1 + 712));
  v5 = v4;
  if (*(a1 + 736))
  {
    v6 = *(a1 + 688);
    v7 = 0.0;
    goto LABEL_6;
  }

  v14 = *(a1 + 680);
  v6 = 0.0;
  v7 = 0.0;
  if ((v14 - 1) <= 1)
  {
    if (v14 == 2)
    {
      v7 = v4;
      goto LABEL_149;
    }

    v92 = *(a1 + 684);
    if (v92 > v5 || (v92 = *(a1 + 688), v92 < v5))
    {
      v7 = v5 - v92;
    }

    v14 = *(a1 + 680);
  }

  if (v14 != 2)
  {
    if (v14 == 1)
    {
      v6 = *(a1 + 684);
      if (v6 <= v5)
      {
        if (*(a1 + 688) >= v5)
        {
          v6 = v5;
        }

        else
        {
          v6 = *(a1 + 688);
        }
      }
    }

    else
    {
      v93 = *(a1 + 568);
      if (v93 <= v5 || (v93 = *(a1 + 560), v93 >= v5))
      {
        v6 = v93;
      }

      else
      {
        v6 = v5;
      }
    }
  }

LABEL_149:
  v94 = *(a1 + 704);
  if (v94)
  {
    v95 = std::__shared_weak_count::lock(v94);
    if (v95)
    {
      v96 = v95;
      v97 = *(a1 + 696);
      if (v97)
      {
        v98 = (*(*v97 + 48))(*(a1 + 696), *(a1 + 712));
        if ((*(*v97 + 80))(v97))
        {
          v99 = sub_5544(19);
          v100 = sub_5544(39);
          v101 = 0;
          *buf = 0x100000002;
          v102 = *(v99 + 8);
          while (1)
          {
            v103 = *&buf[v101];
            if (((v102 & v103) != 0) != ((*(v100 + 8) & v103) != 0))
            {
              break;
            }

            v101 += 4;
            if (v101 == 8)
            {
              goto LABEL_176;
            }
          }

          if ((v102 & v103) == 0)
          {
            v99 = v100;
          }

LABEL_176:
          v120 = *v99;
          if (v120 && os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            v121 = *(a1 + 568);
            v122 = sub_59224(a1 + 584);
            v123 = *&v122;
            sub_5659C(&v193, (a1 + 504), "", 1200);
            sub_23148(__p, v193 + 2);
            v124 = v121;
            v125 = v124;
            if (v199 >= 0)
            {
              v126 = __p;
            }

            else
            {
              v126 = *__p;
            }

            *buf = 136316418;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1200;
            *&buf[18] = 2048;
            *&buf[20] = v6;
            *&buf[28] = 2048;
            *&buf[30] = v125;
            *&buf[38] = 2048;
            v201 = v123;
            *v202 = 2080;
            *&v202[2] = v126;
            _os_log_impl(&dword_0, v120, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ApplyHeadroom is Active CommitedHardwareVolume %f dB MaxHardwareVolume[Device] %f dB MaxHardwareVolume[VolumeCurve] %f dB on VAD '%s'.", buf, 0x3Au);
            if (v199 < 0)
            {
              operator delete(*__p);
            }

            if (v194)
            {
              sub_1A8C0(v194);
            }
          }

          v127 = sub_59224(a1 + 584);
          (*(*v97 + 88))(v97, v98 + (v6 - *&v127));
          v128 = sub_59224(a1 + 584);
          v6 = *&v128;
        }

        else
        {
          v109 = sub_5544(19);
          v110 = sub_5544(39);
          v111 = 0;
          *buf = 0x100000002;
          v112 = *(v109 + 8);
          while (1)
          {
            v113 = *&buf[v111];
            if (((v112 & v113) != 0) != ((*(v110 + 8) & v113) != 0))
            {
              break;
            }

            v111 += 4;
            if (v111 == 8)
            {
              goto LABEL_188;
            }
          }

          if ((v112 & v113) == 0)
          {
            v109 = v110;
          }

LABEL_188:
          v129 = *v109;
          if (v129 && os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
          {
            sub_5659C(&v193, (a1 + 504), "", 1208);
            sub_23148(__p, v193 + 2);
            if (v199 >= 0)
            {
              v130 = __p;
            }

            else
            {
              v130 = *__p;
            }

            *buf = 136315906;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1208;
            *&buf[18] = 2048;
            *&buf[20] = v98;
            *&buf[28] = 2080;
            *&buf[30] = v130;
            _os_log_impl(&dword_0, v129, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applying %f dB to remapGain on VAD '%s'.", buf, 0x26u);
            if (v199 < 0)
            {
              operator delete(*__p);
            }

            if (v194)
            {
              sub_1A8C0(v194);
            }
          }

          (*(*v97 + 96))(v97, v98);
        }

        (*(*v97 + 24))(v97, v6, *(a1 + 712));
      }

      sub_1A8C0(v96);
    }
  }

LABEL_6:
  if (atomic_load_explicit(&qword_6E98B8, memory_order_acquire) != -1)
  {
    *buf = &v193;
    *__p = buf;
    std::__call_once(&qword_6E98B8, __p, sub_214608);
  }

  v8 = qword_6E98C0;
  if (*qword_6E98C0)
  {
    v9 = sub_5544(0);
    v10 = sub_5544(39);
    v11 = 0;
    *buf = 0x100000002;
    v12 = *(v9 + 8);
    while (1)
    {
      v13 = *&buf[v11];
      if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
      {
        break;
      }

      v11 += 4;
      if (v11 == 8)
      {
        goto LABEL_18;
      }
    }

    if ((v12 & v13) == 0)
    {
      v9 = v10;
    }

LABEL_18:
    v15 = *v9;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *v8;
      *buf = 136315906;
      *&buf[4] = "HWVolumeNotificationService.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 36;
      *&buf[18] = 2048;
      *&buf[20] = v16;
      *&buf[28] = 2048;
      *&buf[30] = v6;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling external hardware volume handler %p with volume %f", buf, 0x26u);
    }

    sub_1DB7C8(buf);
    (*v8)(0, v8[1], v6);
    sub_1DB63C(buf);
  }

  v17 = sub_5544(19);
  v18 = sub_5544(39);
  v19 = 0;
  *buf = 0x100000002;
  v20 = *(v17 + 8);
  while (1)
  {
    v21 = *&buf[v19];
    if (((v20 & v21) != 0) != ((*(v18 + 8) & v21) != 0))
    {
      break;
    }

    v19 += 4;
    if (v19 == 8)
    {
      goto LABEL_28;
    }
  }

  if ((v20 & v21) == 0)
  {
    v17 = v18;
  }

LABEL_28:
  v22 = *v17;
  if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 736);
    sub_23148(__p, v189 + 2);
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    v24 = "Yes";
    *&buf[12] = 1024;
    *&buf[14] = 1394;
    if (!v23)
    {
      v24 = "No";
    }

    v25 = *__p;
    *buf = 136316674;
    *&buf[18] = 2048;
    if (v199 >= 0)
    {
      v25 = __p;
    }

    *&buf[20] = v5;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    *&buf[38] = 2048;
    v201 = v7;
    *v202 = 2080;
    *&v202[2] = v24;
    *&v202[10] = 2080;
    *&v202[12] = v25;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Volume = %f dB, Final HW Volume = %f dB, Final SW Volume = %f dB, External Volume Handler: %s on VAD '%s'.", buf, 0x44u);
    if (v199 < 0)
    {
      operator delete(*__p);
    }
  }

  v26 = sub_5544(19);
  v27 = sub_5544(39);
  v28 = 0;
  *buf = 0x100000002;
  v29 = *(v26 + 8);
  while (1)
  {
    v30 = *&buf[v28];
    if (((v29 & v30) != 0) != ((*(v27 + 8) & v30) != 0))
    {
      break;
    }

    v28 += 4;
    if (v28 == 8)
    {
      goto LABEL_42;
    }
  }

  if ((v29 & v30) == 0)
  {
    v26 = v27;
  }

LABEL_42:
  v31 = *v26;
  if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    (*(*&v189->_os_unfair_lock_opaque + 128))(__p);
    v32 = v199 >= 0 ? __p : *__p;
    *buf = 136315650;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1397;
    *&buf[18] = 2080;
    *&buf[20] = v32;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     PhysicalDevice UID = %s", buf, 0x1Cu);
    if (v199 < 0)
    {
      operator delete(*__p);
    }
  }

  v33 = sub_5544(19);
  v34 = sub_5544(39);
  v35 = 0;
  *buf = 0x100000002;
  v36 = *(v33 + 8);
  while (1)
  {
    v37 = *&buf[v35];
    if (((v36 & v37) != 0) != ((*(v34 + 8) & v37) != 0))
    {
      break;
    }

    v35 += 4;
    if (v35 == 8)
    {
      goto LABEL_55;
    }
  }

  if ((v36 & v37) == 0)
  {
    v33 = v34;
  }

LABEL_55:
  v38 = *v33;
  if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(__p, *(a1 + 544));
    v39 = v199 >= 0 ? __p : *__p;
    *buf = 136315650;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1398;
    *&buf[18] = 2080;
    *&buf[20] = v39;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     Scope = '%s'", buf, 0x1Cu);
    if (v199 < 0)
    {
      operator delete(*__p);
    }
  }

  v40 = sub_5544(19);
  v41 = sub_5544(39);
  v42 = 0;
  *buf = 0x100000002;
  v43 = *(v40 + 8);
  while (1)
  {
    v44 = *&buf[v42];
    if (((v43 & v44) != 0) != ((*(v41 + 8) & v44) != 0))
    {
      break;
    }

    v42 += 4;
    if (v42 == 8)
    {
      goto LABEL_68;
    }
  }

  if ((v43 & v44) == 0)
  {
    v40 = v41;
  }

LABEL_68:
  v45 = *v40;
  if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(a1 + 548);
    *buf = 136315650;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1399;
    *&buf[18] = 1024;
    *&buf[20] = v46;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     Element = %u", buf, 0x18u);
  }

  v47 = sub_5544(19);
  v48 = sub_5544(39);
  v49 = 0;
  *buf = 0x100000002;
  v50 = *(v47 + 8);
  while (1)
  {
    v51 = *&buf[v49];
    if (((v50 & v51) != 0) != ((*(v48 + 8) & v51) != 0))
    {
      break;
    }

    v49 += 4;
    if (v49 == 8)
    {
      goto LABEL_77;
    }
  }

  if ((v50 & v51) == 0)
  {
    v47 = v48;
  }

LABEL_77:
  v52 = *v47;
  if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = *(a1 + 680);
    *buf = 136315650;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1401;
    *&buf[18] = 1024;
    *&buf[20] = v53;
    _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     VolumeMode = %u", buf, 0x18u);
  }

  if (!*(a1 + 680))
  {
    v66 = sub_5544(19);
    v67 = sub_5544(39);
    v68 = 0;
    *buf = 0x100000002;
    v69 = *(v66 + 8);
    while (1)
    {
      v70 = *&buf[v68];
      if (((v69 & v70) != 0) != ((*(v67 + 8) & v70) != 0))
      {
        break;
      }

      v68 += 4;
      if (v68 == 8)
      {
        goto LABEL_108;
      }
    }

    if ((v69 & v70) == 0)
    {
      v66 = v67;
    }

LABEL_108:
    v80 = *v66;
    if (v80 && os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1403;
      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEBUG, "%25s:%-5d     SW Volume: disabled", buf, 0x12u);
    }
  }

  v54 = sub_E7320(a1, v5);
  v192 = v6;
  if (*(a1 + 727) != 1)
  {
    v65 = 0;
    goto LABEL_247;
  }

  sub_5659C(&v190, (a1 + 504), "", 1245);
  v55 = v190;
  strcpy(buf, "newsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v56 = sub_59410(v190);
  *(&v59 + 1) = v57;
  *&v59 = v56;
  v58 = v59 >> 32;
  if (v58 & 0x100000000) == 0 || !v58 || *(a1 + 680) != 1 || (sub_289D20())
  {
    v60 = sub_5544(19);
    v61 = sub_5544(39);
    v62 = 0;
    *buf = 0x100000002;
    v63 = *(v60 + 8);
    while (1)
    {
      v64 = *&buf[v62];
      if (((v63 & v64) != 0) != ((*(v61 + 8) & v64) != 0))
      {
        break;
      }

      v62 += 4;
      if (v62 == 8)
      {
        goto LABEL_97;
      }
    }

    if ((v63 & v64) == 0)
    {
      v60 = v61;
    }

LABEL_97:
    v71 = *v60;
    if (v71 && os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = *(a1 + 716);
      *buf = 136315650;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1263;
      *&buf[18] = 2048;
      *&buf[20] = v72;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Hardware volume is %f dB", buf, 0x1Cu);
    }

    *(a1 + 716) = v6;
    v73 = *(a1 + 544);
    v74 = sub_594E4(v55);
    if (!*(a1 + 728) || v74 != *(a1 + 716))
    {
      v75 = sub_5544(19);
      v76 = sub_5544(39);
      v77 = 0;
      *buf = 0x100000002;
      v78 = *(v75 + 8);
      while (1)
      {
        v79 = *&buf[v77];
        if (((v78 & v79) != 0) != ((*(v76 + 8) & v79) != 0))
        {
          break;
        }

        v77 += 4;
        if (v77 == 8)
        {
          goto LABEL_113;
        }
      }

      if ((v78 & v79) == 0)
      {
        v75 = v76;
      }

LABEL_113:
      v81 = *v75;
      if (v81 && os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = *(a1 + 716);
        *buf = 136315650;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1271;
        *&buf[18] = 2048;
        *&buf[20] = v82;
        _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting hardware volume to %f dB", buf, 0x1Cu);
      }

      if (v74 <= v6)
      {
        v83 = *(a1 + 704);
        if (v83)
        {
          v84 = std::__shared_weak_count::lock(v83);
          if (v84)
          {
            v85 = v84;
            v86 = *(a1 + 696);
            if (v86)
            {
              (*(*v86 + 24))(v86, v6, *(a1 + 712));
            }

            sub_1A8C0(v85);
          }
        }
      }

      *buf = 1987013732;
      *&buf[4] = *(a1 + 544);
      (*(*v55 + 48))(v55, buf, 0, 0, 4, &v192);
      v87 = *(a1 + 696);
      v88 = *(a1 + 704);
      if (v88)
      {
        atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v89 = *(a1 + 712);
      v90 = dispatch_time(0, 0);
      v91 = sub_68E60();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 1174405120;
      *&buf[16] = sub_306FCC;
      *&buf[24] = &unk_6C13E0;
      *&buf[32] = v55;
      v201 = *&v191;
      if (*&v191 != 0.0)
      {
        atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v202 = v87;
      *&v202[8] = v88;
      if (v88)
      {
        atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      *&v202[16] = v192;
      v203 = v89;
      dispatch_after(v90, v91, buf);
      if (*&v202[8])
      {
        std::__shared_weak_count::__release_weak(*&v202[8]);
      }

      if (v201 != 0.0)
      {
        sub_1A8C0(*&v201);
      }

      if (v88)
      {
        std::__shared_weak_count::__release_weak(v88);
      }

      v65 = 1;
      goto LABEL_245;
    }

LABEL_244:
    v65 = 0;
LABEL_245:
    if (*&v191 != 0.0)
    {
      sub_1A8C0(v191);
    }

LABEL_247:
    if ((a2 & 0xFFFFFFFD) != 0)
    {
LABEL_248:
      memset(buf, 0, 24);
      goto LABEL_249;
    }

    v158 = *(a1 + 736);
    if (v158)
    {
      v158(*(a1 + 744), *(a1 + 712));
LABEL_252:
      memset(buf, 0, 24);
      if (*(a1 + 784))
      {
        v159 = v65;
      }

      else
      {
        v159 = 1;
      }

      if ((v159 & 1) == 0)
      {
        *__p = 1987013732;
        *&__p[4] = *(a1 + 544);
        sub_E9D44(buf, __p);
      }

LABEL_249:
      *__p = 1986817377;
      *&__p[4] = *(a1 + 544);
      sub_E9D44(buf, __p);
      sub_E9E64(*(a1 + 104), *(a1 + 120), buf);
    }

    if (!*(a1 + 680))
    {
      goto LABEL_248;
    }

    v160 = *(a1 + 704);
    if (!v160)
    {
      goto LABEL_248;
    }

    v161 = std::__shared_weak_count::lock(v160);
    if (!v161)
    {
      goto LABEL_248;
    }

    v162 = v161;
    v163 = *(a1 + 696);
    if (!v163)
    {
LABEL_268:
      sub_1A8C0(v162);
      goto LABEL_248;
    }

    v164 = (*(*v163 + 136))(*(a1 + 696));
    v165 = v164;
    if (v54 < 0x100u)
    {
      v168 = v7;
      if (v164 != 1935895666)
      {
LABEL_266:
        if (v168 != *(a1 + 720) || (*(a1 + 724) & 1) == 0)
        {
          if ((*(*v163 + 176))(v163))
          {
            v169 = sub_5544(19);
            v170 = sub_5544(39);
            v171 = 0;
            *buf = 0x100000002;
            v172 = *(v169 + 8);
            while (1)
            {
              v173 = *&buf[v171];
              if (((v172 & v173) != 0) != ((*(v170 + 8) & v173) != 0))
              {
                break;
              }

              v171 += 4;
              if (v171 == 8)
              {
                goto LABEL_280;
              }
            }

            if ((v172 & v173) == 0)
            {
              v169 = v170;
            }

LABEL_280:
            v179 = *v169;
            if (v179 && os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
            {
              if (v165 == 1935895666)
              {
                v180 = "scalar";
              }

              else
              {
                v180 = "dB";
              }

              sub_5659C(&v193, (a1 + 504), "", 1351);
              sub_23148(__p, v193 + 2);
              if (v199 >= 0)
              {
                v181 = __p;
              }

              else
              {
                v181 = *__p;
              }

              *buf = 136316418;
              *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1351;
              *&buf[18] = 2048;
              *&buf[20] = v168;
              *&buf[28] = 2080;
              *&buf[30] = v180;
              *&buf[38] = 2048;
              v201 = v7;
              *v202 = 2080;
              *&v202[2] = v181;
              _os_log_impl(&dword_0, v179, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Aggregate software volume commands present:    SW Volume: %f %s\t; DB Volume %f dB on VAD '%s'.", buf, 0x3Au);
              if (v199 < 0)
              {
                operator delete(*__p);
              }

              if (v194)
              {
                sub_1A8C0(v194);
              }
            }

            v182 = sub_E9780(a1 + 584, v7);
            (*(*v163 + 200))(v163, v7, v182);
          }

          else
          {
            v174 = sub_5544(19);
            v175 = sub_5544(39);
            v176 = 0;
            *buf = 0x100000002;
            v177 = *(v174 + 8);
            while (1)
            {
              v178 = *&buf[v176];
              if (((v177 & v178) != 0) != ((*(v175 + 8) & v178) != 0))
              {
                break;
              }

              v176 += 4;
              if (v176 == 8)
              {
                goto LABEL_295;
              }
            }

            if ((v177 & v178) == 0)
            {
              v174 = v175;
            }

LABEL_295:
            v183 = *v174;
            if (v183 && os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
            {
              if (v165 == 1935895666)
              {
                v184 = "scalar";
              }

              else
              {
                v184 = "dB";
              }

              sub_5659C(&v193, (a1 + 504), "", 1360);
              sub_23148(__p, v193 + 2);
              if (v199 >= 0)
              {
                *&v185 = COERCE_DOUBLE(__p);
              }

              else
              {
                v185 = *__p;
              }

              *buf = 136316162;
              *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1360;
              *&buf[18] = 2048;
              *&buf[20] = v168;
              *&buf[28] = 2080;
              *&buf[30] = v184;
              *&buf[38] = 2080;
              v201 = *&v185;
              _os_log_impl(&dword_0, v183, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Software volume command present:    SW Volume: %f %s on VAD '%s'.", buf, 0x30u);
              if (v199 < 0)
              {
                operator delete(*__p);
              }

              if (v194)
              {
                sub_1A8C0(v194);
              }
            }

            (*(*v163 + 16))(v163, v168);
          }

          *(a1 + 720) = v168;
          *(a1 + 724) = 1;
          sub_1A8C0(v162);
          goto LABEL_252;
        }

        goto LABEL_268;
      }

      v167 = sub_E9780(a1 + 584, v7);
    }

    else
    {
      v166 = (*(*v163 + 136))(v163);
      (*(*v163 + 128))(v163, v166);
    }

    v168 = v167;
    goto LABEL_266;
  }

  v104 = sub_5544(19);
  v105 = sub_5544(39);
  v106 = 0;
  *buf = 0x100000002;
  v107 = *(v104 + 8);
  while (1)
  {
    v108 = *&buf[v106];
    if (((v107 & v108) != 0) != ((*(v105 + 8) & v108) != 0))
    {
      break;
    }

    v106 += 4;
    if (v106 == 8)
    {
      goto LABEL_167;
    }
  }

  if ((v107 & v108) == 0)
  {
    v104 = v105;
  }

LABEL_167:
  v114 = *v104;
  if (v114 && os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1133;
    _os_log_impl(&dword_0, v114, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Software Volume Mode Enabled!", buf, 0x12u);
  }

  v115 = *(a1 + 704);
  if (v115)
  {
    v116 = std::__shared_weak_count::lock(v115);
    if (v116)
    {
      v117 = v116;
      v118 = *(a1 + 696);
      if (v118)
      {
        v119 = (*(*v118 + 56))(v118, v7);
        sub_1A8C0(v117);
LABEL_210:
        sub_5659C(&v196, (a1 + 504), "", 1143);
        v137 = v196;
        *__p = v119 + v7;
        *buf = 1987013732;
        *&buf[4] = *(a1 + 544);
        if (sub_147610(v196))
        {
          v138 = sub_5544(19);
          v139 = sub_5544(39);
          v140 = 0;
          *buf = 0x100000002;
          v141 = *(v138 + 8);
          while (1)
          {
            v142 = *&buf[v140];
            if (((v141 & v142) != 0) != ((*(v139 + 8) & v142) != 0))
            {
              break;
            }

            v140 += 4;
            if (v140 == 8)
            {
              goto LABEL_217;
            }
          }

          if ((v141 & v142) == 0)
          {
            v138 = v139;
          }

LABEL_217:
          v143 = *v138;
          if (v143 && os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            sub_22170(__p, 0x766F6C64u);
            v144 = v199;
            v145 = *__p;
            (*(*v137 + 128))(&v193, v137);
            v146 = __p;
            if (v144 < 0)
            {
              v146 = v145;
            }

            if (v195 >= 0)
            {
              *&v147 = COERCE_DOUBLE(&v193);
            }

            else
            {
              v147 = v193;
            }

            *buf = 136316162;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1150;
            *&buf[18] = 2080;
            *&buf[20] = v146;
            *&buf[28] = 2048;
            *&buf[30] = v6;
            *&buf[38] = 2080;
            v201 = *&v147;
            _os_log_impl(&dword_0, v143, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting volume %s, %f failed for %s", buf, 0x30u);
            if (v195 < 0)
            {
              operator delete(v193);
            }

            if (v199 < 0)
            {
              operator delete(*__p);
            }
          }
        }

        v148 = sub_5544(19);
        v149 = sub_5544(39);
        v150 = 0;
        *buf = 0x100000002;
        v151 = *(v148 + 8);
        while (1)
        {
          v152 = *&buf[v150];
          if (((v151 & v152) != 0) != ((*(v149 + 8) & v152) != 0))
          {
            break;
          }

          v150 += 4;
          if (v150 == 8)
          {
            goto LABEL_234;
          }
        }

        if ((v151 & v152) == 0)
        {
          v148 = v149;
        }

LABEL_234:
        v153 = *v148;
        if (v153 && os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1154;
          *&buf[18] = 2048;
          *&buf[20] = v7;
          *&buf[28] = 2048;
          *&buf[30] = v119;
          _os_log_impl(&dword_0, v153, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Hardware device is in software volume mode. sending volume level %f dB and VolumeLimitAttenuation %f dB", buf, 0x26u);
        }

        v154 = *(a1 + 704);
        if (v154)
        {
          v155 = std::__shared_weak_count::lock(v154);
          if (v155)
          {
            v156 = v155;
            v157 = *(a1 + 696);
            if (v157)
            {
              (*(*v157 + 24))(v157, 0.0, *(a1 + 712));
            }

            sub_1A8C0(v156);
          }
        }

        if (v197)
        {
          sub_1A8C0(v197);
        }

        goto LABEL_244;
      }

      sub_1A8C0(v117);
    }
  }

  v131 = sub_5544(19);
  v132 = sub_5544(39);
  v133 = 0;
  *buf = 0x100000002;
  v134 = *(v131 + 8);
  while (1)
  {
    v135 = *&buf[v133];
    if (((v134 & v135) != 0) != ((*(v132 + 8) & v135) != 0))
    {
      break;
    }

    v133 += 4;
    if (v133 == 8)
    {
      goto LABEL_207;
    }
  }

  if ((v134 & v135) == 0)
  {
    v131 = v132;
  }

LABEL_207:
  v136 = *v131;
  v119 = 0.0;
  if (v136 && os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1139;
    _os_log_impl(&dword_0, v136, OS_LOG_TYPE_ERROR, "%25s:%-5d SoftwareVolumeCommand pointer expired!", buf, 0x12u);
  }

  goto LABEL_210;
}

void sub_E6E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  sub_1A8C0(v26);
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E6FEC(uint64_t a1, float a2)
{
  v4 = *(a1 + 144);
  v3 = *(a1 + 136);
  if (v3 == v4)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "VolumeControl.cpp";
      v13 = 1024;
      v14 = 473;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  while (1)
  {
    result = (*(**v3 + 40))();
    if (result)
    {
      break;
    }

    v3 += 8;
    if (v3 == v4)
    {
      return result;
    }
  }

  v7 = *(**v3 + 48);
  v6.n128_f32[0] = a2;

  return v7(v6);
}

uint64_t sub_E71C8(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 80))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

uint64_t sub_E7240(uint64_t result, float a2)
{
  v2 = *(result + 136);
  for (i = *(result + 144); v2 != i; result = (*(*v5 + 96))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_E72AC(uint64_t result, float a2, float a3)
{
  v3 = *(result + 136);
  for (i = *(result + 144); v3 != i; result = (*(*v7 + 24))(v7, a2, a3))
  {
    v7 = *v3++;
  }

  return result;
}

uint64_t sub_E7320(uint64_t a1, float a2)
{
  if (*(a1 + 608))
  {
    if (vabds_f32(a2, *(*(a1 + 592) + 36)) <= 0.001)
    {
      v3 = *(*(a1 + 592) + 36);
      goto LABEL_5;
    }
  }

  else
  {
    v3 = 0.0;
    if (fabsf(a2) <= 0.001)
    {
LABEL_5:
      v4 = sub_59224(a1 + 584);
      if (v3 != *&v4)
      {
        goto LABEL_7;
      }
    }
  }

  if (*(a1 + 725) != 1)
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_7:
  v5 = 1;
LABEL_9:
  v6 = (*(**(a1 + 752) + 32))(*(a1 + 752));
  v7 = sub_5544(19);
  v8 = sub_5544(39);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  do
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      if ((v10 & v11) == 0)
      {
        v7 = v8;
      }

      if (*(v7 + 8))
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }

    v9 += 4;
  }

  while (v9 != 8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_17:
  v12 = *v7;
  if (!v12 || !os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_39;
  }

  if (v6)
  {
    v13 = "muted";
  }

  else
  {
    v13 = "unmuted";
  }

  v14 = v33;
  sub_53E8(v33, v13);
  if (v34 < 0)
  {
    v14 = v33[0];
  }

  if (v5)
  {
    v15 = "muted";
  }

  else
  {
    v15 = "unmuted";
  }

  v16 = v31;
  sub_53E8(v31, v15);
  if (v32 < 0)
  {
    v16 = v31[0];
  }

  sub_5659C(&v27, (a1 + 504), "", 1467);
  sub_23148(__p, v27 + 2);
  if (v30 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  *buf = 136316162;
  *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
  v36 = 1024;
  v37 = 1467;
  v38 = 2080;
  v39 = v14;
  v40 = 2080;
  v41 = v16;
  v42 = 2080;
  v43 = v17;
  _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d MuteStateModel: currentState = %s, nextState = %s on VAD '%s'.", buf, 0x30u);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28)
  {
    sub_1A8C0(v28);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
    if (v5)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_39:
    if (v5)
    {
LABEL_40:
      v18 = 256;
      return v18 | v6;
    }
  }

  v19 = sub_5544(19);
  v20 = sub_5544(39);
  v21 = 0;
  *buf = 0x100000002;
  v22 = *(v19 + 8);
  while (1)
  {
    v23 = *&buf[v21];
    if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
    {
      break;
    }

    v21 += 4;
    if (v21 == 8)
    {
      goto LABEL_48;
    }
  }

  if ((v22 & v23) == 0)
  {
    v19 = v20;
  }

LABEL_48:
  v24 = *v19;
  if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 725);
    *buf = 136315650;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    v36 = 1024;
    v37 = 1473;
    v38 = 1024;
    LODWORD(v39) = v25;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     Unmuting (explicitly unmuted: %u)", buf, 0x18u);
  }

  (*(**(a1 + 752) + 24))(*(a1 + 752));
  v18 = 0;
  return v18 | v6;
}

void sub_E76F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_E7748(uint64_t a1)
{
  if (*(a1 + 726) == 1)
  {
    *__p = 1836414053;
    *&__p[4] = *(a1 + 544);
    LODWORD(v14) = 0;
    v18 = 4;
    sub_5659C(buf, (a1 + 504), "", 865);
    (*(**buf + 40))(*buf, __p, 0, 0, &v18, &v14);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    return v14 == 1;
  }

  v3 = *(a1 + 704);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 696);
      if (v5)
      {
        if (*(a1 + 736))
        {
          v6 = 0;
        }

        else
        {
          v6 = (*(*v5 + 112))(v5) == 0;
        }

LABEL_27:
        sub_1A8C0(v4);
        return v6;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = sub_5544(19);
  v8 = sub_5544(39);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_17;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_17:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_5659C(&v14, (a1 + 504), "", 876);
    sub_23148(__p, v14 + 2);
    if (v17 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = *__p;
    }

    *buf = 136315650;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 876;
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Is muted: software volume command expired on VAD '%s'.", buf, 0x1Cu);
    if (v17 < 0)
    {
      operator delete(*__p);
    }

    if (v15)
    {
      sub_1A8C0(v15);
    }
  }

  v6 = 0;
  result = 0;
  if (v4)
  {
    goto LABEL_27;
  }

  return result;
}

void sub_E7A3C(uint64_t a1)
{
  if (*(a1 + 136) != *(a1 + 144))
  {
    v2 = sub_5544(19);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VolumeControl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 508;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getting mute", buf, 0x12u);
    }

    v4 = *(a1 + 136);
    v5 = *(a1 + 144);
    if (v4 != v5)
    {
      (*(**v4 + 112))();
      operator new();
    }

    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VolumeControl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 512;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "VolumeControl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 506;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v8, "Precondition failure.");
}

void sub_E7F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  __cxa_free_exception(v24);
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void sub_E8018(uint64_t a1)
{
  if (*(a1 + 726) != 1)
  {
    v3 = *(a1 + 704);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = *(a1 + 696);
        if (v5)
        {
          if (*(a1 + 736))
          {
LABEL_41:
            v2 = v4;
            goto LABEL_42;
          }

          v6 = sub_5544(19);
          v7 = sub_5544(39);
          v8 = 0;
          *buf = 0x100000002;
          v9 = *(v6 + 8);
          while (1)
          {
            v10 = *&buf[v8];
            if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
            {
              break;
            }

            v8 += 4;
            if (v8 == 8)
            {
              goto LABEL_30;
            }
          }

          if ((v9 & v10) == 0)
          {
            v6 = v7;
          }

LABEL_30:
          v18 = *v6;
          if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            sub_5659C(&v20, (a1 + 504), "", 843);
            sub_23148(__p, v20 + 2);
            if (v23 >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = *__p;
            }

            *buf = 136315650;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 843;
            v25 = 2080;
            v26 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling software mute on VAD '%s'.", buf, 0x1Cu);
            if (v23 < 0)
            {
              operator delete(*__p);
            }

            if (v21)
            {
              sub_1A8C0(v21);
            }
          }

          (*(*v5 + 104))(v5, 1);
LABEL_40:
          if (!v4)
          {
            return;
          }

          goto LABEL_41;
        }
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = sub_5544(19);
    v12 = sub_5544(39);
    v13 = 0;
    *buf = 0x100000002;
    v14 = *(v11 + 8);
    while (1)
    {
      v15 = *&buf[v13];
      if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
      {
        break;
      }

      v13 += 4;
      if (v13 == 8)
      {
        goto LABEL_19;
      }
    }

    if ((v14 & v15) == 0)
    {
      v11 = v12;
    }

LABEL_19:
    v16 = *v11;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_5659C(&v20, (a1 + 504), "", 850);
      sub_23148(__p, v20 + 2);
      if (v23 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = *__p;
      }

      *buf = 136315650;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 850;
      v25 = 2080;
      v26 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling software mute, but software volume command expired on VAD '%s'.", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(*__p);
      }

      if (v21)
      {
        sub_1A8C0(v21);
      }
    }

    goto LABEL_40;
  }

  *__p = 1836414053;
  *&__p[4] = *(a1 + 544);
  LODWORD(v20) = 0;
  sub_5659C(buf, (a1 + 504), "", 838);
  (*(**buf + 48))(*buf, __p, 0, 0, 4, &v20);
  v2 = *&buf[8];
  if (*&buf[8])
  {
LABEL_42:
    sub_1A8C0(v2);
  }
}

void sub_E83B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  if (v16)
  {
    sub_1A8C0(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_E8418(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(19);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "Unmute";
    v11 = "VolumeControl.cpp";
    v10 = 136315650;
    if (!a2)
    {
      v6 = "Mute";
    }

    v12 = 1024;
    v13 = 499;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting mute: %s", &v10, 0x1Cu);
  }

  v8 = *(a1 + 136);
  v7 = *(a1 + 144);
  while (v8 != v7)
  {
    v9 = *v8++;
    (*(*v9 + 104))(v9, a2);
  }
}

void sub_E8544(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*a1 + 16))(a1, *(a1 + 152));
    v3 = 1;
  }

  else
  {
    v4 = (*(*a1 + 128))(a1, 1684234860);
    v5 = (*(*a1 + 128))(a1, 1935895666);
    v6 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v6, *(a1 + 160), v4);
    v7 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v7, *(a1 + 164), v5);
    v3 = 0;
  }

  *(a1 + 156) = v3;
}

void sub_E86B4(uint64_t a1, float a2)
{
  v2 = a2;
  *(a1 + 152) = a2;
  if ((*(*a1 + 136))(a1) == 1935895666)
  {
    sub_5B898(a1 + 40, v2);
    v2 = v4;
  }

  v6 = *(a1 + 136);
  v5 = *(a1 + 144);
  v7 = v5 - v6;
  v8 = v2 - v6;
  v9 = fminf(fmaxf(v8 / v7, 0.0), 1.0);
  v10 = v6 <= v2;
  v11 = 0.5;
  if (!v10)
  {
    v11 = 0.0;
  }

  v12 = v11;
  if (v5 >= v2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  if (v7 == 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  v15 = sub_5544(19);
  v16 = sub_5544(39);
  v17 = 0;
  *buf = 0x100000002;
  v18 = *(v15 + 8);
  while (1)
  {
    v19 = *&buf[v17];
    if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
    {
      break;
    }

    v17 += 4;
    if (v17 == 8)
    {
      goto LABEL_17;
    }
  }

  if ((v18 & v19) == 0)
  {
    v15 = v16;
  }

LABEL_17:
  v20 = *v15;
  if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    sub_E896C(__p, a1);
    if (v25 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = "VolumeControl.h";
    v27 = 1024;
    v28 = 1400;
    v29 = 2048;
    v30 = v2;
    v31 = 2048;
    v32 = v14;
    v33 = 2080;
    v34 = v21;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%25s:%-5d Setting Volume (VEQv2) with preGain %f dB, currentGain %f on chain '%s'.", buf, 0x30u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v22 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v22, *(a1 + 160), v2);
  v23 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v23, *(a1 + 164), v14);
}

void sub_E896C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 24);
      if (v7)
      {
        if (*(v7 + 735) < 0)
        {
          sub_54A0(a1, *(v7 + 712), *(v7 + 720));
        }

        else
        {
          v8 = (v7 + 712);
          v9 = *v8;
          *(a1 + 16) = *(v8 + 2);
          *a1 = v9;
        }

        sub_1A8C0(v6);
        return;
      }

      sub_1A8C0(v5);
    }
  }

  sub_53E8(a1, "unknown");
}

void sub_E8A40(uint64_t a1, unsigned int a2, uint64_t a3, float a4)
{
  v8 = sub_E92B4(a1 + 104, a2, 0);
  if ((a1 + 112) == v8)
  {
    v55 = sub_5544(14);
    v56 = *v55;
    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v65, a2);
      v57 = v66 >= 0 ? v65 : v65[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.cpp";
      v68 = 1024;
      v69 = 257;
      v70 = 2080;
      v71 = v57;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v66 < 0)
      {
        operator delete(v65[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Software volume processor of type '%s' does not exist");
  }

  v9 = v8;
  v10 = sub_5544(19);
  v11 = sub_5544(39);
  v12 = 0;
  *buf = 0x100000002;
  v13 = *(v10 + 8);
  while (1)
  {
    v14 = *&buf[v12];
    if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
    {
      break;
    }

    v12 += 4;
    if (v12 == 8)
    {
      goto LABEL_8;
    }
  }

  if ((v13 & v14) == 0)
  {
    v10 = v11;
  }

LABEL_8:
  v15 = *v10;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(v65, a3);
    if (v66 >= 0)
    {
      v16 = v65;
    }

    else
    {
      v16 = v65[0];
    }

    sub_22170(v63, a2);
    v17 = v64;
    v18 = v63[0];
    v19 = *(v9 + 14);
    sub_E896C(__p, a1);
    v20 = v63;
    if (v17 < 0)
    {
      v20 = v18;
    }

    v21 = __p[0];
    *buf = 136316674;
    if (v62 >= 0)
    {
      v21 = __p;
    }

    *&buf[4] = "VolumeControl.cpp";
    v68 = 1024;
    v69 = 265;
    v70 = 2080;
    v71 = v16;
    v72 = 2048;
    v73 = a4;
    v74 = 2080;
    v75 = v20;
    v76 = 1024;
    v77 = v19;
    v78 = 2080;
    v79 = v21;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Setting parameter '%s' to %f on processor type '%s' instance ID %u on chain '%s'.", buf, 0x40u);
    if (v62 < 0)
    {
      operator delete(__p[0]);
    }

    a3 = a3;
    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }
  }

  v22 = *(a1 + 32);
  if (!v22)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v23 = std::__shared_weak_count::lock(v22);
  if (!v23 || !*(a1 + 24))
  {
LABEL_33:
    v30 = sub_5544(19);
    v31 = sub_5544(39);
    v32 = 0;
    *buf = 0x100000002;
    v33 = *(v30 + 8);
    while (1)
    {
      v34 = *&buf[v32];
      if (((v33 & v34) != 0) != ((*(v31 + 8) & v34) != 0))
      {
        break;
      }

      v32 += 4;
      if (v32 == 8)
      {
        goto LABEL_39;
      }
    }

    if ((v33 & v34) == 0)
    {
      v30 = v31;
    }

LABEL_39:
    v35 = *v30;
    if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VolumeControl.cpp";
      v68 = 1024;
      v69 = 287;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VolumeCommand: DSPChain unavailable for setting parameter", buf, 0x12u);
    }

    goto LABEL_42;
  }

  sub_E933C();
  if (!(*(qword_6EB0E0 + 56))(&qword_6EB0E0, *(v9 + 14), a3, 0, 0))
  {
    v36 = sub_5544(19);
    v37 = sub_5544(39);
    v38 = 0;
    *buf = 0x100000002;
    v39 = *(v36 + 8);
    while (1)
    {
      v40 = *&buf[v38];
      if (((v39 & v40) != 0) != ((*(v37 + 8) & v40) != 0))
      {
        break;
      }

      v38 += 4;
      if (v38 == 8)
      {
        goto LABEL_51;
      }
    }

    if ((v39 & v40) == 0)
    {
      v36 = v37;
    }

LABEL_51:
    v41 = *v36;
    if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      sub_22170(v65, a3);
      if (v66 >= 0)
      {
        v42 = v65;
      }

      else
      {
        v42 = v65[0];
      }

      sub_22170(v63, a3);
      v43 = v64;
      v44 = v63[0];
      sub_E896C(__p, a1);
      v45 = v63;
      if (v43 < 0)
      {
        v45 = v44;
      }

      if (v62 >= 0)
      {
        v46 = __p;
      }

      else
      {
        v46 = __p[0];
      }

      *buf = 136316162;
      *&buf[4] = "VolumeControl.cpp";
      v68 = 1024;
      v69 = 282;
      v70 = 2080;
      v71 = v42;
      v72 = 2080;
      v73 = *&v45;
      v74 = 2080;
      v75 = v46;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%25s:%-5d VolumeCommand: parameter '%s' on processor type '%s' not found on chain '%s'.", buf, 0x30u);
      goto LABEL_79;
    }

LABEL_42:
    if (!v23)
    {
      return;
    }

    goto LABEL_43;
  }

  sub_E933C();
  v24 = (*(qword_6EB0E0 + 64))(&qword_6EB0E0, *(v9 + 14), a3, 0, 0, a4);
  if (v24)
  {
    v25 = sub_5544(19);
    v26 = sub_5544(39);
    v27 = 0;
    *buf = 0x100000002;
    v28 = *(v25 + 8);
    while (1)
    {
      v29 = *&buf[v27];
      if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
      {
        break;
      }

      v27 += 4;
      if (v27 == 8)
      {
        goto LABEL_64;
      }
    }

    if ((v28 & v29) == 0)
    {
      v25 = v26;
    }

LABEL_64:
    v47 = *v25;
    if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v65, a3);
      if (v66 >= 0)
      {
        v48 = v65;
      }

      else
      {
        v48 = v65[0];
      }

      sub_22170(v63, a2);
      if (v64 >= 0)
      {
        v49 = v63;
      }

      else
      {
        v49 = v63[0];
      }

      v50 = *(v9 + 14);
      sub_22170(__p, v24);
      v51 = v62;
      v52 = __p[0];
      sub_E896C(v59, a1);
      v53 = __p;
      if (v51 < 0)
      {
        v53 = v52;
      }

      if (v60 >= 0)
      {
        v54 = v59;
      }

      else
      {
        v54 = v59[0];
      }

      *buf = 136316930;
      *&buf[4] = "VolumeControl.cpp";
      v68 = 1024;
      v69 = 276;
      v70 = 2080;
      v71 = v48;
      v72 = 2048;
      v73 = a4;
      v74 = 2080;
      v75 = v49;
      v76 = 1024;
      v77 = v50;
      v78 = 2080;
      v79 = v53;
      v80 = 2080;
      v81 = v54;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d VolumeCommand: Failed to set parameter '%s' to %f on processor type '%s' index %u, err: %s on chain '%s'.", buf, 0x4Au);
      if (v60 < 0)
      {
        operator delete(v59[0]);
      }

LABEL_79:
      if (v62 < 0)
      {
        operator delete(__p[0]);
      }

      if (v64 < 0)
      {
        operator delete(v63[0]);
      }

      if (v66 < 0)
      {
        operator delete(v65[0]);
      }

      goto LABEL_42;
    }

    goto LABEL_42;
  }

LABEL_43:
  sub_1A8C0(v23);
}

void sub_E91E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v28)
  {
    sub_1A8C0(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_E92B4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    if (v7 >= a2)
    {
      if (v7 == a2)
      {
        v8 = *(v4 + 9);
        v9 = v8 >= a3;
        v10 = v8 < a3;
        if (v9)
        {
          v6 = v4;
        }

        v4 += v10;
      }

      else
      {
        v6 = v4;
      }
    }

    else
    {
      ++v4;
    }

    v4 = *v4;
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 8);
  if (v11 > a2 || v11 == a2 && *(v6 + 9) > a3)
  {
    return v3;
  }

  return v6;
}

void sub_E933C()
{
  if ((atomic_load_explicit(&qword_6EB120, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6EB120))
    {
      sub_35EED0();
    }
  }
}

uint64_t sub_E93B8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v15 = a2;
  *buf = &v15;
  v10 = sub_E9540(a1 + 32, a2)[5];
  if (!v10)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPProcessorManager.cpp";
      v17 = 1024;
      v18 = 268;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [instance is NULL]: Unable to find instance.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to find instance.");
  }

  return (*(*v10 + 80))(v10, a3, a4, a5, a6);
}

uint64_t *sub_E9540(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_E962C(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 == *(a1 + 144))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VolumeControl.cpp";
      v9 = 1024;
      v10 = 582;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v2 = *(**v1 + 136);

  return v2();
}

float sub_E9780(uint64_t a1, float a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  if (v4)
  {
    v6 = *(v5 + 36);
  }

  else
  {
    v6 = 0.0;
  }

  v7 = sub_59224(a1);
  if (v6 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v6;
  }

  if (v8 <= *&v7)
  {
    *&v7 = v8;
  }

  v9 = *(v5 + 28);
  if (v5 != a1 + 16)
  {
    v10 = v5;
    do
    {
      v11 = *(v10 + 8) - *(v10 + 7);
      v12 = *(v10 + 10);
      if (*&v7 > v12)
      {
        v9 += v11;
      }

      else
      {
        v13 = llroundf((*&v7 - *(v10 + 9)) / ((v12 - *(v10 + 9)) / v11));
        v14 = __OFADD__(v9, v13);
        v15 = v9 + v13;
        v16 = ((v9 | v13) >> 31) ^ 0x7FFFFFFF;
        if (v14)
        {
          v9 = v16;
        }

        else
        {
          v9 = v15;
        }
      }

      v17 = v10[1];
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
          v18 = v10[2];
          v19 = *v18 == v10;
          v10 = v18;
        }

        while (!v19);
      }

      v19 = *&v7 <= v12 || v18 == (a1 + 16);
      v10 = v18;
    }

    while (!v19);
  }

  if (v4)
  {
    v20 = *(v5 + 28);
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_55A7C(a1);
  if (v20 <= v9)
  {
    v22 = v9;
  }

  else
  {
    v22 = v20;
  }

  if (v22 >= v21)
  {
    v22 = v21;
  }

  if (v4)
  {
    v23 = *(v5 + 36);
  }

  else
  {
    v23 = 0.0;
  }

  v24 = (v22 - v20) / (v21 - v20);
  v25 = sub_59224(a1);
  if (*(a1 + 32) != 1 || (*&v25 - v23) <= 30.0)
  {
    return v24;
  }

  v26 = *(a1 + 40) / *(a1 + 44);

  return powf(v24, v26);
}

uint64_t sub_E992C(uint64_t a1)
{
  if (*(a1 + 136) == *(a1 + 144))
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "VolumeControl.cpp";
      v7 = 1024;
      v8 = 620;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return *(a1 + 168);
}

void sub_E9A50(uint64_t a1, float a2)
{
  v4 = sub_5544(19);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (*(a1 + 144) - *(a1 + 136)) >> 3;
    v10 = 136315906;
    v11 = "VolumeControl.cpp";
    v12 = 1024;
    v13 = 450;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set volume: %.2f, %lu", &v10, 0x26u);
  }

  v8 = *(a1 + 136);
  v7 = *(a1 + 144);
  while (v8 != v7)
  {
    v9 = *v8++;
    (*(*v9 + 16))(v9, a2);
  }
}

void sub_E9B7C(unsigned int *a1, float a2)
{
  sub_5B898((a1 + 10), a2);
  v4 = v3;
  v5 = sub_5544(19);
  v6 = sub_5544(39);
  v7 = 0;
  *buf = 0x100000002;
  v8 = *(v5 + 8);
  while (1)
  {
    v9 = *&buf[v7];
    if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
    {
      break;
    }

    v7 += 4;
    if (v7 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v8 & v9) == 0)
  {
    v5 = v6;
  }

LABEL_7:
  v10 = *v5;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    sub_E896C(__p, a1);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "VolumeControl.h";
    v16 = 1024;
    v17 = 816;
    v18 = 2048;
    v19 = v4;
    v20 = 2080;
    v21 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Setting volume %.2f dB on chain '%s'.", buf, 0x26u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v12, a1[33], v4);
}

void sub_E9D44(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_189A00();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1E6598(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *a1;
    v14 = a1[1];
    v15 = 12 * v7 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = 12 * v7 + *a1 - v14;
      do
      {
        v17 = *v13;
        *(v16 + 8) = v13[2];
        *v16 = v17;
        v16 += 12;
        v13 += 3;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  a1[1] = v6;
}

void sub_E9E64(uint64_t a1, std::__shared_weak_count *a2, uint64_t *a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&a2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1A8C0(a2);
  }

  *&v6 = a1;
  *(&v6 + 1) = a2;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  sub_EA018(&v7, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  sub_68E60();
  v10 = v6;
  memset(v11, 0, sizeof(v11));
  sub_EA018(v11, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 2));
  operator new();
}

void sub_E9FBC(void *a1)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_1CC130(a1);
}

void sub_E9FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  sub_2CC760(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_EA018(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_EA098(result, a4);
  }

  return result;
}

void sub_EA07C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_EA098(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_1E6598(a2);
  }

  sub_189A00();
}

uint64_t sub_EA0E8(uint64_t result, char a2)
{
  if (a2)
  {
    v2 = result;
    v3 = sub_5544(19);
    v4 = sub_5544(39);
    v5 = 0;
    *buf = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&buf[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_8:
    v8 = *v3;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v2 + 725);
      sub_5659C(&v11, (v2 + 504), "", 1486);
      sub_23148(__p, v11 + 2);
      if (v14 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      v16 = 1024;
      v17 = 1486;
      v18 = 1024;
      v19 = v9;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     Muting (explicitly muted: %u) on VAD '%s'.", buf, 0x22u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if (v12)
      {
        sub_1A8C0(v12);
      }
    }

    return (*(**(v2 + 752) + 16))(*(v2 + 752));
  }

  return result;
}

void sub_EA2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_EA2C8(uint64_t a1, double a2)
{
  sub_D3304(v7, a1, a2);
  if (v7[0] == 1)
  {
    if (!*(a1 + 432))
    {
      v3 = *(a1 + 8);
      sub_214644(a1, v8);
    }

    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "VirtualAudio_Device.cpp";
        v11 = 1024;
        v12 = 1516;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Sample rate changes are currently blocked by policy.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_4B0F4(v8[1]);
}

uint64_t sub_EA448(uint64_t a1)
{
  result = sub_E2724();
  if (result)
  {
    v3 = sub_5544(1);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 112))(&__p, a1);
      if (v7 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      buf = 136315650;
      buf_4 = "VirtualAudio_Device.cpp";
      v10 = 1024;
      v11 = 4470;
      v12 = 2080;
      v13 = p_p;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Latency measurement for VAD %s", &buf, 0x1Cu);
      if (v7 < 0)
      {
        operator delete(__p);
      }
    }

    sub_D7364();
  }

  return result;
}

void sub_EAC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EAD30(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_189A00();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v14 = a1;
    if (v10)
    {
      sub_1DB8DC(v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v7;
    v12 = 8 * v7;
    v13 = 0;
    sub_49CF4((8 * v7), *a2);
    v12 = 8 * v7 + 8;
    sub_49FBC(a1, v11);
    v6 = *(a1 + 8);
    result = sub_4A06C(v11);
  }

  else
  {
    result = sub_49CF4(*(a1 + 8), *a2);
    v6 = v4 + 8;
    *(a1 + 8) = v4 + 8;
  }

  *(a1 + 8) = v6;
  return result;
}