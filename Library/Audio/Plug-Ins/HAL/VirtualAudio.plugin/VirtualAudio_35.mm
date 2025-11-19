void sub_2E548C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2E5534(uint64_t a1, unsigned int a2)
{
  if (a2 != 1751409257)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_HapticDebug_Aspen.cpp";
      v14 = 1024;
      v15 = 193;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Device_HapticDebug_Aspen.cpp";
      v14 = 1024;
      v15 = 194;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_2E5708(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  (*(*a1 + 496))(a1);
  sub_15DD68();
}

void sub_2E58F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E5AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_2E5B00(uint64_t a1, UInt32 a2, __int128 *a3)
{
  v5 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v5 = off_6C07D8;
  v6 = sub_4ACD0C(v5, 0);
  v7 = (a1 + 536);
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  strcpy(inAddress, "crsstpni");
  inAddress[9] = 0;
  *&inAddress[10] = 0;
  if (AudioObjectHasProperty(a2, inAddress))
  {
    v8 = v6;
    global_queue = dispatch_get_global_queue(0, 0);
    v10 = global_queue;
    if (global_queue)
    {
      dispatch_retain(global_queue);
    }

    v11 = dispatch_semaphore_create(0);
    std::to_string(&v63, v6);
    v12 = std::string::insert(&v63, 0, "hdds", 4uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v64, ".dat", 4uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_2A33C8(inAddress);
    size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v65.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_1E1A58(buf, inAddress);
      sub_1E1A58(&v67.__pn_, &v65);
      sub_1E1AC0(&__p, buf, &v67);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_54A0(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __dst = __p;
      }

      if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__pn_.__r_.__value_.__l.__data_);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if ((inAddress[23] & 0x80000000) != 0)
      {
        operator delete(*inAddress);
      }
    }

    else
    {
      __dst = *inAddress;
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
    }

    v18 = open(p_dst, 0);
    if ((v18 & 0x80000000) == 0)
    {
      *inAddress = 0;
      *&inAddress[8] = inAddress;
      *&inAddress[16] = 0x4002000000;
      *&inAddress[24] = sub_2E6660;
      *&inAddress[32] = sub_2E6684;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      __p.__pn_.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
      __p.__pn_.__r_.__value_.__l.__size_ = 1174405120;
      __p.__pn_.__r_.__value_.__r.__words[2] = sub_2E669C;
      v60 = &unk_6C0A08;
      v61 = inAddress;
      object = v11;
      if (v11)
      {
        dispatch_retain(v11);
      }

      dispatch_read(v18, 0xFFFFFFFFFFFFFFFFLL, v10, &__p);
      v19 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v11, v19);
      close(v18);
      v21 = *(*&inAddress[8] + 40);
      v20 = *(*&inAddress[8] + 48);
      v22 = v20 - v21;
      v23 = *(a1 + 552);
      v24 = *(a1 + 536);
      if (v23 - v24 < (v20 - v21))
      {
        v25 = v22 >> 2;
        if (v24)
        {
          *(a1 + 544) = v24;
          operator delete(v24);
          v23 = 0;
          v26 = a1 + 536;
          *(a1 + 536) = 0;
          *(a1 + 544) = 0;
          *(a1 + 552) = 0;
        }

        else
        {
          v26 = a1 + 536;
        }

        if (!(v25 >> 62))
        {
          v33 = v23 >> 1;
          if (v23 >> 1 <= v25)
          {
            v33 = v22 >> 2;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v34 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          sub_469FC(v26, v34);
        }

        sub_189A00();
      }

      v58 = v8;
      v27 = v11;
      v28 = v10;
      v29 = *(a1 + 544);
      v30 = v29 - v24;
      if (v29 - v24 >= v22)
      {
        if (v20 != v21)
        {
          memmove(v24, v21, v20 - v21);
        }

        *(a1 + 544) = &v24[v22];
        v10 = v28;
        v11 = v27;
        v8 = v58;
        v7 = (a1 + 536);
      }

      else
      {
        if (v29 != v24)
        {
          memmove(v24, v21, v29 - v24);
          v29 = *(a1 + 544);
        }

        v7 = (a1 + 536);
        v31 = &v21[v30];
        v32 = v20 - &v21[v30];
        if (v32)
        {
          memmove(v29, v31, v32);
        }

        *(a1 + 544) = &v29[v32];
        v10 = v28;
        v11 = v27;
        v8 = v58;
      }

      v35 = sub_5544(27);
      v36 = *v35;
      if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
      {
        sub_24C060(&v67.__pn_, *(a1 + 536), *(a1 + 544));
        v37 = (v67.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v67 : v67.__pn_.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        *&buf[4] = "Device_HapticDebug_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 80;
        *&buf[18] = 2048;
        *&buf[20] = v8;
        v69 = 2080;
        v70 = v37;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Haptic debug (read) -- channels: %zu, default datasources: %s", buf, 0x26u);
        if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__pn_.__r_.__value_.__l.__data_);
        }
      }

      if (object)
      {
        dispatch_release(object);
      }

      _Block_object_dispose(inAddress, 8);
      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }
    }

    if (v8 != (*(a1 + 544) - *(a1 + 536)) >> 2)
    {
      LODWORD(v65.__r_.__value_.__l.__data_) = a2;
      v67.__pn_.__r_.__value_.__r.__words[0] = 0x696E707473737263;
      LODWORD(v67.__pn_.__r_.__value_.__r.__words[1]) = 0;
      sub_127F10(inAddress, &v65, &v67, 0, 0);
      v38 = *inAddress;
      if (*inAddress || (inAddress[32] & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = v38;
      }

      memset(buf, 0, 24);
      v39 = *&inAddress[8];
      sub_46980(buf, *&inAddress[8], *&inAddress[16], (*&inAddress[16] - *&inAddress[8]) >> 2);
      if (v39)
      {
        operator delete(v39);
      }

      v40 = *v7;
      if (*v7)
      {
        *(a1 + 544) = v40;
        operator delete(v40);
      }

      *v7 = *buf;
      *(a1 + 552) = *&buf[16];
      v41 = sub_5544(27);
      v42 = *v41;
      if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(a1 + 544);
        v44 = *(a1 + 536);
        sub_24C060(buf, v44, v43);
        v45 = buf[23] >= 0 ? buf : *buf;
        *inAddress = 136315906;
        *&inAddress[4] = "Device_HapticDebug_Aspen.cpp";
        *&inAddress[12] = 1024;
        *&inAddress[14] = 87;
        *&inAddress[18] = 2048;
        *&inAddress[20] = v43 - v44;
        *&inAddress[28] = 2080;
        *&inAddress[30] = v45;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Haptic debug (write) -- channels: %zu, driver datasources: %s", inAddress, 0x26u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &__dst;
      }

      else
      {
        v46 = __dst.__pn_.__r_.__value_.__r.__words[0];
      }

      v47 = open(v46, 1537, 504);
      if ((v47 & 0x80000000) == 0)
      {
        v48 = dispatch_data_create(*(a1 + 536), *(a1 + 544) - *(a1 + 536), v10, 0);
        *inAddress = _NSConcreteStackBlock;
        *&inAddress[8] = 1174405120;
        *&inAddress[16] = sub_2E672C;
        *&inAddress[24] = &unk_6C0A38;
        *&inAddress[32] = v11;
        if (v11)
        {
          dispatch_retain(v11);
        }

        dispatch_write(v47, v48, v10, inAddress);
        v49 = dispatch_time(0, 1000000000);
        dispatch_semaphore_wait(v11, v49);
        dispatch_release(v48);
        close(v47);
        if (*&inAddress[32])
        {
          dispatch_release(*&inAddress[32]);
        }
      }
    }

    if (v8 != (*(a1 + 544) - *(a1 + 536)) >> 2)
    {
      v54 = sub_5544(14);
      v55 = *v54;
      if (*v54)
      {
        if (os_log_type_enabled(*v54, OS_LOG_TYPE_ERROR))
        {
          v56 = (*(a1 + 544) - *(a1 + 536)) >> 2;
          *buf = 136315906;
          *&buf[4] = "Device_HapticDebug_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 106;
          *&buf[18] = 2048;
          *&buf[20] = v8;
          v69 = 2048;
          v70 = v56;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Number of data sources %zu does not match number of channels %zu.", buf, 0x26u);
        }
      }
    }

    v50 = sub_5544(27);
    v51 = *v50;
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_DEFAULT))
    {
      sub_24C060(&v67.__pn_, *(a1 + 536), *(a1 + 544));
      v52 = (v67.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v67 : v67.__pn_.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "Device_HapticDebug_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 107;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      v69 = 2080;
      v70 = v52;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Haptic debug -- channels: %zu, default datasources: %s", buf, 0x26u);
      if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__pn_.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    if (v10)
    {
      dispatch_release(v10);
    }
  }

  return a1;
}

void sub_2E64A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (v59)
  {
    dispatch_release(v59);
  }

  if (v61)
  {
    dispatch_release(v61);
  }

  v63 = *v60;
  if (*v60)
  {
    *(v58 + 544) = v63;
    operator delete(v63);
  }

  sub_4B2820(v58);
  _Unwind_Resume(a1);
}

void sub_2E6648(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x2E6640);
}

__n128 sub_2E6660(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2E6684(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

intptr_t sub_2E669C(uint64_t a1, dispatch_data_t data, int a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_2E685C;
  v5[3] = &unk_6C09E0;
  v5[4] = *(a1 + 32);
  v6 = a3;
  dispatch_data_apply(data, v5);
  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t sub_2E672C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = sub_5544(27);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = "Device_HapticDebug_Aspen.cpp";
        v10 = 1024;
        v11 = 96;
        v12 = 1024;
        v13 = a3;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error (write): %d", &v8, 0x18u);
      }
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2E680C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void sub_2E681C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void sub_2E6834(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void sub_2E6844(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

uint64_t sub_2E685C(uint64_t a1, int a2, int a3, char *__src, uint64_t a5)
{
  sub_16B928((*(*(a1 + 32) + 8) + 40), __src, &__src[a5 & 0xFFFFFFFFFFFFFFFCLL], a5 >> 2);
  if (*(a1 + 40))
  {
    v6 = sub_5544(27);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v10 = 136315650;
        v11 = "Device_HapticDebug_Aspen.cpp";
        v12 = 1024;
        v13 = 70;
        v14 = 1024;
        v15 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error (read): %d", &v10, 0x18u);
      }
    }
  }

  return 1;
}

void sub_2E6954(uint64_t a1)
{
  sub_2E698C(a1);

  operator delete();
}

uint64_t sub_2E698C(uint64_t a1)
{
  *a1 = off_6C0A78;
  std::condition_variable::~condition_variable((a1 + 272));
  std::mutex::~mutex((a1 + 200));
  if (*(a1 + 184))
  {
    v2 = *(a1 + 176);
    v3 = *(*(a1 + 168) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 184) = 0;
    if (v2 != (a1 + 168))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 168));
    }
  }

  std::mutex::~mutex((a1 + 104));

  return sub_42A4D8(a1);
}

double sub_2E6A40()
{
  strcpy(&qword_6E9500, "Global Routing Mutex");
  byte_6E9517 = 20;
  qword_6E9518 = 850045863;
  result = 0.0;
  unk_6E9520 = 0u;
  unk_6E9530 = 0u;
  unk_6E9540 = 0u;
  unk_6E9550 = 0u;
  qword_6E94F8 = off_6C0A78;
  qword_6E9560 = 850045863;
  xmmword_6E9568 = 0u;
  unk_6E9578 = 0u;
  xmmword_6E9588 = 0u;
  qword_6E9598 = 0;
  qword_6E95A0 = &qword_6E95A0;
  qword_6E95A8 = &qword_6E95A0;
  qword_6E95B0 = 0;
  dword_6E95B8 = 0;
  qword_6E95C0 = 850045863;
  unk_6E95F1 = 0u;
  xmmword_6E95D8 = 0u;
  unk_6E95E8 = 0u;
  xmmword_6E95C8 = 0u;
  qword_6E9608 = 1018212795;
  xmmword_6E9610 = 0u;
  unk_6E9620 = 0u;
  qword_6E9630 = 0;
  return result;
}

BOOL sub_2E6B08()
{
  v0 = atomic_load(&qword_6E9558);
  v1 = pthread_self();
  if (v0 == v1)
  {
    std::mutex::lock(&qword_6E9560);
    ++dword_6E95B8;
    std::mutex::unlock(&qword_6E9560);
    std::mutex::lock(&qword_6E95C0);
    byte_6E9600 = 0;
    std::mutex::unlock(&qword_6E95C0);
    sub_42A318(&qword_6E94F8);
  }

  return v0 == v1;
}

uint64_t sub_2E6B94()
{
  v0 = atomic_load(&qword_6E9558);
  if (v0 == pthread_self())
  {
    std::mutex::lock(&qword_6E9560);
    operator new();
  }

  return 0;
}

void sub_2E6C70()
{
  sub_310AF4();
  v6 = 1;
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0;
  v0 = sub_106F10();
  v10[4] = (v0 > 0xFFu) & v0;
  v10[5] = 1;
  *&v10[6] = 0;
  v11 = 0;
  v12 = 16777473;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v15 = 0;
  v16 = 0;
  v17 = -1044381696;
  v18 = 1;
  v19 = -1044381696;
  v20 = 1;
  v21 = 0;
  v22 = 1;
  v23 = -1056964608;
  v24 = 1;
  v25 = -1033371648;
  v26 = 1;
  v27 = 0;
  v28 = 1;
  v29 = -1033371648;
  v30 = 1;
  v31 = 0;
  v32 = 1;
  v33 = -1044381696;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = -1033371648;
  v38 = 1;
  v39 = 0;
  v40 = 1;
  v41 = -1033371648;
  v42 = 1;
  v43 = -1055916032;
  v44 = 1;
  v45 = -1033371648;
  v46 = 1;
  v47 = 0;
  v48 = 1;
  v49 = -1055916032;
  v50 = 1;
  v51 = -1033371648;
  v52 = 1;
  v53 = -1055916032;
  v54 = 1;
  v55 = -1033371648;
  v56 = 1;
  v57 = 0;
  v58 = 1;
  v59 = -1055916032;
  v60 = 1;
  v61 = -1043333120;
  v62 = 1;
  v63 = 0x40000000;
  v64 = 1;
  v65 = 16777472;
  v66 = 0;
  v67 = 1;
  v68 = 0;
  v69 = 1;
  v70 = 1103626240;
  v71 = 1;
  v72 = 0;
  v73 = 1;
  v74 = 1094713344;
  v75 = 1;
  v76 = 1094713344;
  v77 = 1;
  v78 = 1094713344;
  v79 = 1;
  v80 = -1061158912;
  v81 = 1;
  v82 = 1107296256;
  v83 = 1;
  v84 = 1107296256;
  v85 = 1;
  v86 = 1092616192;
  v87 = 1;
  v88 = 0;
  v89 = 1;
  v90 = 0;
  v91 = 1;
  v92 = 16777472;
  v93[0] = 0;
  v93[72] = 0;
  v93[80] = 0;
  v93[120] = 0;
  v93[128] = 0;
  v93[200] = 0;
  v93[208] = 0;
  v93[248] = 0;
  LOBYTE(v94) = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  v97 = 0;
  LOBYTE(v98) = 0;
  v99 = 0;
  LOBYTE(v100) = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  LOBYTE(v104) = 0;
  v105 = 0;
  LOBYTE(v106) = 0;
  v107 = 0;
  LOBYTE(v108) = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  LOBYTE(v112) = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 1;
  v127 = 0;
  v128 = 0;
  LOBYTE(v129) = 0;
  v130 = 0;
  LOBYTE(v131) = 0;
  v132 = 0;
  LOBYTE(v133) = 0;
  v134 = 0;
  LOBYTE(v135) = 0;
  v136 = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  LOBYTE(v140) = 0;
  v141 = 0;
  LOBYTE(v142) = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  LOBYTE(v148) = 0;
  v149 = 0;
  LOBYTE(v150) = 0;
  v151 = 0;
  LOBYTE(v152) = 0;
  v153 = 0;
  LOBYTE(v154) = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  LOBYTE(__p) = 0;
  v162 = 0;
  v163.__r_.__value_.__s.__data_[0] = 0;
  v164 = 0;
  v165.__r_.__value_.__s.__data_[0] = 0;
  v166 = 0;
  v167.__r_.__value_.__s.__data_[0] = 0;
  v168 = 0;
  v169 = 256;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 2;
  v5 = 5;
  LODWORD(__src) = 3;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x400000003;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  *&v10[12] = 257;
  *v10 = 0x101010101010101;
  v12 = 16843008;
  v61 = -1047527424;
  v62 = 1;
  v70 = 1103101952;
  v71 = 1;
  v76 = 0;
  v77 = 1;
  v78 = 0;
  v79 = 1;
  v74 = 0;
  v75 = 1;
  v90 = 1090519040;
  v91 = 1;
  v80 = -1040187392;
  v81 = 1;
  v63 = 0;
  v64 = 1;
  LOWORD(v65) = 257;
  v92 = 16843009;
  if ((v95 & 1) == 0)
  {
    v95 = 1;
  }

  v94 = 1836282987;
  if ((v97 & 1) == 0)
  {
    v97 = 1;
  }

  v96 = 2;
  if ((v99 & 1) == 0)
  {
    v99 = 1;
  }

  v98 = 8;
  if ((v101 & 1) == 0)
  {
    v101 = 1;
  }

  v100 = 16;
  v104 = 13;
  v105 = 1;
  v106 = 13;
  v107 = 1;
  v108 = 13;
  v109 = 1;
  v112 = 13;
  v113 = 1;
  v129 = 19;
  v130 = 1;
  v131 = 3;
  v132 = 1;
  v133 = 12;
  v134 = 1;
  v135 = 19;
  v136 = 1;
  v148 = 6;
  v149 = 1;
  v150 = 19;
  v151 = 1;
  v152 = 10;
  v153 = 1;
  v154 = 5;
  v155 = 1;
  v137 = 257;
  if ((v139 & 1) == 0)
  {
    v139 = 1;
  }

  v138 = 5;
  if ((v143 & 1) == 0)
  {
    v143 = 1;
  }

  v142 = 8;
  if ((v141 & 1) == 0)
  {
    v141 = 1;
  }

  v140 = 2;
  sub_30F70C(&__src, 100);
  if (v162 == 1)
  {
    if (SHIBYTE(v161) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v161 = v178;
  }

  else
  {
    __p = __src;
    v161 = v178;
    v162 = 1;
  }

  sub_1F826C(&v163, "_top_mic_general");
  sub_1F826C(&v165, "_top_mic_measurement");
  sub_1F826C(&v167, "_top_mic_hearing_accessibility");
  LOBYTE(v15) = 1;
  sub_47DB04(&v1);
  sub_1E0054(v93);
  sub_477A0(v14[0]);
  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

const __CFDictionary *sub_2E7334(const __CFDictionary *result, const void *a2, void *a3)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      if (v5 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v4, kCFNumberSInt32Type, a3);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *sub_2E73A0(const __CFDictionary *result, const void *a2, const __CFDictionary **a3)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      if (v5 == CFArrayGetTypeID())
      {
        *a3 = v4;
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2E7400(CFDictionaryRef *a1, void *key, uint64_t a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  if (*a1)
  {
    Value = CFDictionaryGetValue(*a1, key);
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFArrayGetTypeID())
      {
        if (*(a3 + 8))
        {
          if (*a3)
          {
            CFRelease(*a3);
            v9 = *(a3 + 8);
            *a3 = v7;
            *(a3 + 9) = 0;
            if ((v9 & 1) == 0)
            {
              return;
            }
          }

          else
          {
            *a3 = v7;
            *(a3 + 9) = 0;
          }

          CFRetain(v7);
        }

        else
        {
          *a3 = v7;
          *(a3 + 9) = 0;
        }
      }
    }
  }
}

uint64_t sub_2E74D8(uint64_t a1, const void *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v7 = v5;
  v8 = 1;
  if (*(a1 + 9) == 1 && v5 && *a1)
  {
    CFDictionarySetValue(*a1, a2, v5);
  }

  return sub_A07C4(&v7);
}

void sub_2E7550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A07C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2E756C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_load((v3 + 8));
  }

  v4 = sub_2E75C0(a1, a2);
  if (!v4)
  {
    return 1;
  }

  CFRunLoopSourceSignal(v4);
  CFRunLoopWakeUp(*(a1 + 8));
  return 0;
}

uint64_t sub_2E75C0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_load((v3 + 8));
  }

  v4 = (a1 + 24);
  v5 = (*(*(a1 + 24) + 16))(a1 + 24);
  for (i = v4[19]; ; i = *(i + 8))
  {
    if (i == v4 + 18)
    {
      v7 = 0;
      if (!v5)
      {
        return v7;
      }

      goto LABEL_10;
    }

    if (*(i + 24) == a2)
    {
      break;
    }
  }

  v7 = *(i + 16);
  if (!v5)
  {
    return v7;
  }

LABEL_10:
  (*(*v4 + 24))(v4);
  return v7;
}

BOOL sub_2E7684(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_load((v4 + 8));
  }

  v5 = sub_2E75C0(a1, a2);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = (*(*(a1 + 24) + 16))(a1 + 24);
  v8 = *(a1 + 176);
  if (v8 == (a1 + 168))
  {
LABEL_7:
    if (v7)
    {
LABEL_11:
      (*(*(a1 + 24) + 24))(a1 + 24);
    }
  }

  else
  {
    while (1)
    {
      v9 = v8[1];
      if (*(v8 + 6) == a2)
      {
        break;
      }

      v8 = v8[1];
      if (v9 == (a1 + 168))
      {
        goto LABEL_7;
      }
    }

    v11 = *v8;
    *(v11 + 8) = v9;
    *v9 = v11;
    --*(a1 + 184);
    operator delete(v8);
    if (v7)
    {
      goto LABEL_11;
    }
  }

  CFRunLoopRemoveSource(*(a1 + 8), v6, kCFRunLoopDefaultMode);
  CFRunLoopWakeUp(*(a1 + 8));
  CFRelease(v6);
  v12 = sub_5544(14);
  v13 = *v12;
  if (*v12)
  {
    result = os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v14 = 136315650;
    v15 = "RunLoopThread.cpp";
    v16 = 1024;
    v17 = 168;
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removed outSourceID %u", &v14, 0x18u);
  }

  return 0;
}

void sub_2E7864(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_2E7870(void *a1, const void *(__cdecl *a2)(const void *), void (__cdecl *a3)(const void *), uint64_t a4)
{
  v8 = a1[2];
  if (v8)
  {
    atomic_load((v8 + 8));
  }

  if (!a2)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.version) = 136315394;
      *(&buf.version + 4) = "RunLoopThread.cpp";
      WORD2(buf.info) = 1024;
      *(&buf.info + 6) = 118;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [callback is NULL]: callback is NULL.", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "callback is NULL.");
  }

  if (!a3)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.version) = 136315394;
        *(&buf.version + 4) = "RunLoopThread.cpp";
        WORD2(buf.info) = 1024;
        *(&buf.info + 6) = 119;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d clientData is NULL. This may be dangerous / an error.", &buf, 0x12u);
      }
    }
  }

  v9 = sub_5544(14);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.version) = 136315906;
    *(&buf.version + 4) = "RunLoopThread.cpp";
    WORD2(buf.info) = 1024;
    *(&buf.info + 6) = 123;
    WORD1(buf.retain) = 2048;
    *(&buf.retain + 4) = a2;
    WORD2(buf.release) = 2048;
    *(&buf.release + 6) = a3;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to create source from callback %p / clientData %p.", &buf, 0x26u);
  }

  buf.version = 0;
  buf.info = a3;
  memset(&buf.retain, 0, 56);
  buf.perform = a2;
  v11 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &buf);
  if (v11)
  {
    v12 = (*(*a1 + 16))(a1, v11, a4);
    CFRelease(v11);
  }

  else
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "RunLoopThread.cpp";
      v23 = 1024;
      v24 = 127;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d CFRunLoopSourceCreate() failed.", &v21, 0x12u);
    }

    return 1;
  }

  return v12;
}

void sub_2E7B94(uint64_t a1, const void *a2, _DWORD *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_load((v6 + 8));
  }

  if (a2)
  {
    v7 = a1 + 24;
    v8 = (*(*(a1 + 24) + 16))(a1 + 24);
    v9 = *(a1 + 160);
    if (v9 == -1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    atomic_fetch_add_explicit((a1 + 160), v10, memory_order_relaxed);
    if (v8)
    {
      (*(*v7 + 24))(a1 + 24);
    }

    *a3 = v9;
    CFRetain(a2);
    *v15 = a1 + 24;
    v15[8] = (*(*v7 + 16))(a1 + 24);
    v11 = *a3;
    operator new();
  }

  v12 = sub_5544(14);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *v15 = 136315394;
    *&v15[4] = "RunLoopThread.cpp";
    v16 = 1024;
    v17 = 94;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [source is NULL]: source is NULL.", v15, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_257CB4(exception, "source is NULL.");
}

void sub_2E7E84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E7EC4(uint64_t a1)
{
  sub_2E7EFC(a1);

  operator delete();
}

uint64_t sub_2E7EFC(uint64_t a1)
{
  *a1 = off_6C0AB0;
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_load((v2 + 8));
  }

  v3 = a1 + 24;
  v4 = (*(*(a1 + 24) + 16))(a1 + 24);
  while (1)
  {
    v5 = *(a1 + 176);
    if (v5 == a1 + 168)
    {
      break;
    }

    (*(*a1 + 32))(a1, *(v5 + 24));
  }

  if (atomic_load((*(a1 + 16) + 8)))
  {
    CFRunLoopStop(*(a1 + 8));
    if ((*(*v3 + 64))(a1 + 24, 500000000))
    {
      v7 = sub_5544(14);
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315650;
          v11 = "RunLoopThread.cpp";
          v12 = 1024;
          v13 = 79;
          v14 = 1024;
          v15 = 500;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Thread stop timeout timed out after %u milliseconds", &v10, 0x18u);
        }
      }
    }
  }

  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v3 + 24))(a1 + 24);
  }

  sub_4E0BC((a1 + 168));
  sub_4BC698(a1 + 24);
  return a1;
}

void sub_2E8104(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2E8120(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_25;
  }

  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v26 = a1 + 24;
  v4 = (*(v2 + 16))(a1 + 24);
  v27 = v4;
  Current = CFRunLoopGetCurrent();
  *(a1 + 8) = Current;
  if (!Current)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *policy_info = 136315394;
        *&policy_info[4] = "RunLoopThread.cpp";
        v29 = 1024;
        v30 = 249;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d CFRunLoopGetCurrent() failed.", policy_info, 0x12u);
      }
    }
  }

  sub_4BC0D8(a1 + 24);
  if (*(a1 + 196) != 1)
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 16);
  *(v6 + 104) = *(a1 + 192);
  *(v6 + 121) = 0;
  if (!atomic_load((v6 + 8)))
  {
    goto LABEL_9;
  }

  v8 = atomic_load((v6 + 8));
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = *(v6 + 104);
  if (*(v6 + 122) == 1)
  {
    *policy_info = 0;
    v10 = pthread_mach_thread_np(v8);
    if (thread_policy_set(v10, 1u, policy_info, 1u))
    {
LABEL_31:
      v24 = CAVerboseAbort();
      if (v25)
      {
        sub_1CC130(v24);
      }

      _Unwind_Resume(v24);
    }
  }

  v11 = pthread_self();
  *policy_info = v9 - sub_4218A4(v11);
  v12 = pthread_mach_thread_np(v8);
  if (thread_policy_set(v12, 3u, policy_info, 1u))
  {
    CAVerboseAbort();
    goto LABEL_31;
  }

LABEL_9:
  if (v4)
  {
    (*(*v3 + 24))(a1 + 24);
  }

  if (!Current)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *policy_info = 136315394;
      *&policy_info[4] = "RunLoopThread.cpp";
      v29 = 1024;
      v30 = 226;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PrepareRunLoop() failed.", policy_info, 0x12u);
    }

    goto LABEL_25;
  }

  LODWORD(v26) = 0;
  if ((*(*a1 + 24))(a1, sub_2E85A8, a1, &v26))
  {
LABEL_25:
    v16 = -1;
    goto LABEL_26;
  }

  CFRunLoopRun();
  v13 = sub_5544(14);
  v14 = *v13;
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
  {
    *policy_info = 136315394;
    *&policy_info[4] = "RunLoopThread.cpp";
    v29 = 1024;
    v30 = 217;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d CFRunLoopRun() returned", policy_info, 0x12u);
  }

  *policy_info = a1 + 24;
  v15 = (*(*v3 + 16))(a1 + 24);
  policy_info[8] = v15;
  (*(*v3 + 80))(a1 + 24);
  if (v15)
  {
    (*(*v3 + 24))(a1 + 24);
  }

  v16 = 0;
LABEL_26:
  v21 = sub_5544(14);
  v22 = *v21;
  if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
  {
    *policy_info = 136315906;
    *&policy_info[4] = "RunLoopThread.cpp";
    v29 = 1024;
    v30 = 230;
    v31 = 2048;
    v32 = a1;
    v33 = 2048;
    v34 = a1 + 16;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Thread with RunLoopThread owner %p (CAPThread %p) exited.", policy_info, 0x26u);
  }

  return v16;
}

void sub_2E85A8()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315394;
      v3 = "RunLoopThread.cpp";
      v4 = 1024;
      v5 = 29;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Shim callback was executed! It should not be possible to get here.", &v2, 0x12u);
    }
  }
}

uint64_t sub_2E86D0(uint64_t a1)
{
  v2 = sub_8703C();
  result = (*(*v2 + 336))(v2);
  if (result)
  {
    sub_8703C();
    operator new();
  }

  if (a1)
  {
    operator delete();
  }

  return result;
}

void sub_2E8AA8(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  v2 = xmmword_5172C0;
  v3 = 1735159650;
  memset(__p, 0, sizeof(__p));
  sub_2C8104(__p, &v2, &v4, 2uLL);
}

void sub_2E8BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_4C70(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2E8C00(void *a1, AudioObjectPropertySelector a2)
{
  v23.mSelector = a2;
  *&v23.mScope = 1735159650;
  if ((*(*a1 + 16))(a1, &v23))
  {
    sub_4E890();
    v4 = (*(*a1 + 120))(a1);
    v5 = sub_73838(v4, &v23, sub_2EA114, a1);
    if (v5)
    {
      v6 = sub_5544(18);
      v7 = sub_5544(29);
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
          goto LABEL_9;
        }
      }

      if ((v9 & v10) == 0)
      {
        v6 = v7;
      }

LABEL_9:
      v11 = *v6;
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v21;
        sub_22170(v21, v5);
        if (v22 < 0)
        {
          v12 = v21[0];
        }

        sub_22170(v19, a2);
        v13 = v20;
        v14 = v19[0];
        (*(*a1 + 128))(__p, a1);
        v15 = v19;
        if (v13 < 0)
        {
          v15 = v14;
        }

        if (v18 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        *buf = 136316418;
        *&buf[4] = "Device_Bluetooth_Aspen.cpp";
        v25 = 1024;
        v26 = 1017;
        v27 = 1024;
        v28 = v5;
        v29 = 2080;
        v30 = v12;
        v31 = 2080;
        v32 = v15;
        v33 = 2080;
        v34 = v16;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') adding property %s listener to bluetooth device with UID %s", buf, 0x36u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }
      }
    }
  }
}

void sub_2E8E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E8ED0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 16), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((a2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_68E60();
  operator new();
}

void sub_2E8F7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2E8FD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6C0D70;
  a2[1] = v2;
  return result;
}

uint64_t *sub_2E9068(uint64_t a1)
{
  v44 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        if ((sub_231C4() & 1) != 0 || sub_23238("VA_HandleInEarStatusEvent", 0x19uLL) != &qword_709F00)
        {
          if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
          {
            qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
            __cxa_guard_release(&qword_6F6850);
          }

          v5 = os_signpost_id_generate(qword_6F6848);
          if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
          {
            qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
            __cxa_guard_release(&qword_6F6850);
          }

          if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v13 = qword_6F6848;
            if (os_signpost_enabled(qword_6F6848))
            {
              v14 = sub_2E9A08(*(v4 + 268));
              if (HIDWORD(v14) == 1)
              {
                v16 = 1;
              }

              else
              {
                v16 = 2;
              }

              if (v14 == 1)
              {
                v17 = 1;
              }

              else
              {
                v17 = v16;
              }

              if ((v15 & 0xFF00000000) != 0)
              {
                v18 = v17;
              }

              else
              {
                v18 = -1;
              }

              if (v14 == -1)
              {
                v18 = -1;
              }

              *buf = 67109120;
              *&buf[4] = v18;
              _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VA_HandleInEarStatusEvent", "Updating InEarStatus for BT ports because headset status is %d", buf, 8u);
            }
          }
        }

        else
        {
          v5 = 0;
        }

        v52 = v5;
        v19 = sub_5544(43);
        if (*(v19 + 8))
        {
          v20 = *v19;
          if (*v19)
          {
            if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "SignpostUtilities.h";
              *&buf[12] = 1024;
              *&buf[14] = 87;
              *&buf[18] = 2080;
              *&buf[20] = "kInEarStatusEvent";
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
            }
          }
        }

        v21 = *(v4 + 588);
        v22 = *(v4 + 592);
        v23 = *(v4 + 596);
        v24 = *(v4 + 600);
        v25 = sub_2E9A08(*(v4 + 268));
        v27 = v25;
        v28 = v26;
        if (!*(a1 + 16) || v21 != v25 || __PAIR64__(v23, v22) != __PAIR64__(v26, HIDWORD(v25)) || v24 != BYTE4(v26))
        {
          *(v4 + 588) = v25;
          *(v4 + 596) = v26;
          v43 = HIDWORD(v26);
          *(v4 + 600) = BYTE4(v26);
          v29 = sub_5544(18);
          v30 = sub_5544(29);
          v31 = 0;
          *buf = 0x100000002;
          v32 = *(v29 + 8);
          while (1)
          {
            v33 = *&buf[v31];
            if (((v32 & v33) != 0) != ((*(v30 + 8) & v33) != 0))
            {
              break;
            }

            v31 += 4;
            if (v31 == 8)
            {
              goto LABEL_50;
            }
          }

          if ((v32 & v33) == 0)
          {
            v29 = v30;
          }

LABEL_50:
          v34 = *v29;
          if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v24;
            v42 = v23;
            (*(*v4 + 128))(&v45, v4);
            v35 = SHIBYTE(v48);
            v36 = v45;
            sub_24FB08(&__p, v4 + 588);
            v37 = &v45;
            if (v35 < 0)
            {
              v37 = v36;
            }

            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315906;
            *&buf[4] = "Device_Bluetooth_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 809;
            *&buf[18] = 2080;
            *&buf[20] = v37;
            *&buf[28] = 2080;
            v55 = p_p;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device with UID %s: headset status %s", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            LOBYTE(v24) = v41;
            v23 = v42;
            if (SHIBYTE(v48) < 0)
            {
              operator delete(v45);
            }
          }

          memset(buf, 0, 24);
          strcpy(&buf[24], "cwdv");
          BYTE2(v55) = 0;
          v56 = 3;
          v58[0] = 0;
          v58[1] = 0;
          v57 = v58;
          v61 = 0;
          v62 = 0;
          v60 = 0;
          v59 = 44731050;
          sub_161C7C(&__p, v4, buf);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(v60);
          }

          sub_477A0(v58[0]);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          size = __p.__r_.__value_.__l.__size_;
          v45 = __PAIR64__(v22, v21);
          v46 = v23;
          v47 = v24;
          v48 = v27;
          v49 = v28;
          for (i = v43; size != &__p; size = size->__r_.__value_.__l.__size_)
          {
            sub_25704(v53, &size->__r_.__value_.__r.__words[2], "", 814);
            v40 = v53[1];
            (*(*v53[0] + 512))(v53[0], &v45, &v48);
            if (v40)
            {
              sub_1A8C0(v40);
            }
          }

          sub_65310(&__p);
        }

        sub_2E9C7C(&v52);
LABEL_18:
        sub_1A8C0(v3);
        return sub_8B144(&v44);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = sub_5544(18);
  v7 = sub_5544(29);
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
      goto LABEL_14;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_14:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 333;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_18;
  }

  return sub_8B144(&v44);
}

uint64_t sub_2E9A08(AudioObjectID a1)
{
  *&inAddress.mSelector = 0x676C6F6269656465;
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    return -1;
  }

  *&inAddress.mSelector = 0x676C6F6269657362;
  inAddress.mElement = 0;
  if (AudioObjectHasProperty(a1, &inAddress))
  {
    inQualifierData = 0x300000003;
    *&inAddress.mSelector = 0x676C6F6269657362;
    inAddress.mElement = 0;
    if (AudioObjectHasProperty(a1, &inAddress) && (ioDataSize = sub_543D0(a1, &inAddress, 8u, &inQualifierData)) != 0)
    {
      PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 8u, &inQualifierData, &ioDataSize, &outData);
      v4 = PropertyData;
      if (PropertyData)
      {
        v5 = 0;
      }

      else
      {
        v3.i64[0] = outData;
        v4.i8[12] = 1;
        v15 = vextq_s8(v4, v3, 0xCuLL);
        v15.i32[0] = 0;
        v15.i32[3] = v4.i32[3];
        v5 = v15.i64[1];
        v4.i64[0] = v15.i64[0];
      }

      v7 = HIDWORD(v4.i64[0]);
    }

    else
    {
      v5 = 0;
      LODWORD(v7) = 0;
    }

    inAddress.mSelector = v7;
    *&inAddress.mScope = v5;
    v11 = *&inAddress.mSelector & (v5 << 31 >> 63);
    v14 = HIDWORD(v11);
  }

  else
  {
    LODWORD(inQualifierData) = 3;
    LODWORD(outData) = a1;
    *&inAddress.mSelector = 0x676C6F6269657370;
    inAddress.mElement = 0;
    v8 = sub_542F0(&outData, &inAddress, 4u, &inQualifierData);
    *(&v10 + 1) = v9;
    *&v10 = v8;
    LODWORD(inQualifierData) = 3;
    LODWORD(outData) = a1;
    v11 = (v10 >> 32) & (((v10 >> 32) << 31) >> 63);
    *&inAddress.mSelector = 0x676C6F6269657373;
    inAddress.mElement = 0;
    v12 = sub_542F0(&outData, &inAddress, 4u, &inQualifierData);
    *(&v10 + 1) = v13;
    *&v10 = v12;
    v14 = (v10 >> 32) & (((v10 >> 32) << 31) >> 63);
  }

  LODWORD(inQualifierData) = 3;
  LODWORD(outData) = a1;
  *&inAddress.mSelector = 0x676C6F6270726973;
  inAddress.mElement = 0;
  v16 = sub_542F0(&outData, &inAddress, 4u, &inQualifierData);
  *(&v19 + 1) = v17;
  *&v19 = v16;
  v18 = v19 >> 32;
  LODWORD(inQualifierData) = 0;
  LODWORD(outData) = a1;
  if ((v18 & 0x100000000) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  *&inAddress.mSelector = 0x676C6F6269656465;
  inAddress.mElement = 0;
  sub_542F0(&outData, &inAddress, 4u, &inQualifierData);
  v21 = sub_2E9E18(v11);
  v22 = sub_2E9E18(v14);
  sub_2E9F94(v20);
  return v21 | (v22 << 32);
}

os_signpost_id_t *sub_2E9C7C(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 87;
        v11 = 2080;
        v12 = "kInEarStatusEvent";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
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

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_HandleInEarStatusEvent", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_2E9E0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_2E9E18(unsigned int a1)
{
  if (a1 >= 4)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, 0x69657362u);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315906;
      v10 = "Device_Bluetooth_Aspen.cpp";
      v11 = 1024;
      v12 = 271;
      v13 = 1024;
      v14 = a1;
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unknown value (%u) for Bluetooth property (%s)", buf, 0x22u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unknown value (%u) for Bluetooth property (%s)");
  }

  return dword_5192FC[a1];
}

uint64_t sub_2E9F94(int a1)
{
  if ((a1 - 1) >= 3)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, 0x70726973u);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315906;
      v10 = "Device_Bluetooth_Aspen.cpp";
      v11 = 1024;
      v12 = 289;
      v13 = 1024;
      v14 = a1;
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unknown value (%u) for Bluetooth property (%s)", buf, 0x22u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unknown value (%u) for Bluetooth property (%s)");
  }

  return dword_51930C[a1 - 1];
}

uint64_t sub_2EA114(AudioObjectID a1, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    while (1)
    {
      v8 = sub_5544(18);
      v9 = sub_5544(29);
      v10 = 0;
      *&buf.mSelector = 0x100000002;
      v11 = *(v8 + 8);
      while (1)
      {
        v12 = *(&buf.mSelector + v10);
        if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
        {
          break;
        }

        v10 += 4;
        if (v10 == 8)
        {
          goto LABEL_9;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_9:
      v13 = *v8;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v69, *(a3 + 12 * v6));
        v14 = v70;
        v15 = v69[0];
        (*(*a4 + 128))(__p, a4);
        v16 = v69;
        if (v14 < 0)
        {
          v16 = v15;
        }

        v17 = __p;
        if (v68 < 0)
        {
          v17 = __p[0];
        }

        buf.mSelector = 136315906;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v72 = 1024;
        v73 = 1038;
        v74 = 2080;
        v75 = v16;
        v76 = 2080;
        v77 = v17;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received notification (%s) from bluetooth audio device with UID %s", &buf, 0x26u);
        if (v68 < 0)
        {
          operator delete(__p[0]);
        }

        if (v70 < 0)
        {
          operator delete(v69[0]);
        }
      }

      v18 = (a3 + 12 * v6);
      v19 = *v18;
      if (*v18 > 1768256353)
      {
        break;
      }

      if (v19 <= 1668506478)
      {
        if (v19 <= 1650551923)
        {
          if (v19 == 1633773925)
          {
            goto LABEL_66;
          }

          if (v19 == 1650549606)
          {
            v34 = a4[10];
            v35 = a4[11];
            if (v35)
            {
              atomic_fetch_add_explicit((v35 + 16), 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit((v35 + 16), 1uLL, memory_order_relaxed);
            }

            sub_68E60();
            operator new();
          }
        }

        else
        {
          switch(v19)
          {
            case 1650551924:
              goto LABEL_66;
            case 1651466595:
              v36 = a4[10];
              v37 = a4[11];
              if (v37)
              {
                atomic_fetch_add_explicit((v37 + 16), 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit((v37 + 16), 1uLL, memory_order_relaxed);
              }

              sub_68E60();
              operator new();
            case 1668051827:
              goto LABEL_66;
          }
        }

        goto LABEL_84;
      }

      if (v19 > 1752327776)
      {
        if (v19 == 1752327777 || v19 == 1752462195)
        {
          goto LABEL_66;
        }

        if (v19 == 1768252517)
        {
          v26 = a4[10];
          v27 = a4[11];
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 16), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit((v27 + 16), 1uLL, memory_order_relaxed);
          }

          sub_68E60();
          operator new();
        }

        goto LABEL_84;
      }

      switch(v19)
      {
        case 1668506479:
          sub_2EABD8(a4, 1);
          break;
        case 1685283695:
          sub_2EABD8(a4, 0);
          break;
        case 1718772584:
          v20 = dispatch_time(0, 0);
          v21 = sub_68E60();
          dispatch_after(v20, v21, &stru_6C0D08);
          break;
        default:
          goto LABEL_84;
      }

LABEL_116:
      if (++v6 == v7)
      {
        return 0;
      }
    }

    if (v19 <= 1886546290)
    {
      if (v19 <= 1768256370)
      {
        if (v19 == 1768256354)
        {
LABEL_71:
          sub_2E8ED0(a4[10], a4[11]);
        }

        if (v19 == 1768256368)
        {
LABEL_69:
          strcpy(&buf, "bseibolg");
          BYTE1(buf.mElement) = 0;
          HIWORD(buf.mElement) = 0;
          if (!AudioObjectHasProperty(a1, &buf))
          {
            sub_2E8ED0(a4[10], a4[11]);
          }

          goto LABEL_116;
        }
      }

      else
      {
        switch(v19)
        {
          case 1768256371:
            goto LABEL_69;
          case 1819173229:
            v38 = a4[10];
            v39 = a4[11];
            if (v39)
            {
              atomic_fetch_add_explicit((v39 + 16), 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit((v39 + 16), 1uLL, memory_order_relaxed);
            }

            sub_68E60();
            operator new();
          case 1819505773:
            v23 = a4[10];
            v24 = a4[11];
            if (v24)
            {
              atomic_fetch_add_explicit((v24 + 16), 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit((v24 + 16), 1uLL, memory_order_relaxed);
            }

            sub_68E60();
            operator new();
        }
      }
    }

    else
    {
      if (v19 > 1936747875)
      {
        if (v19 == 1936747876)
        {
          goto LABEL_66;
        }

        if (v19 == 1936747877)
        {
          v40 = sub_5544(18);
          v41 = sub_5544(29);
          v42 = 0;
          *&buf.mSelector = 0x100000002;
          v43 = *(v40 + 8);
          while (1)
          {
            v44 = *(&buf.mSelector + v42);
            if (((v43 & v44) != 0) != ((*(v41 + 8) & v44) != 0))
            {
              break;
            }

            v42 += 4;
            if (v42 == 8)
            {
              goto LABEL_90;
            }
          }

          if ((v43 & v44) == 0)
          {
            v40 = v41;
          }

LABEL_90:
          v50 = *v40;
          if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            buf.mSelector = 136315394;
            *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
            v72 = 1024;
            v73 = 1091;
            _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Handling PME update from buds", &buf, 0x12u);
          }

          v51 = *v18;
          sub_2EB214(a4[10], a4[11]);
        }

        if (v19 != 1970496630)
        {
          goto LABEL_84;
        }

        v28 = (*(*a4 + 120))(a4);
        atomic_store(sub_2EC9A0(v28), a4 + 133);
        v29 = sub_5544(18);
        v30 = sub_5544(29);
        v31 = 0;
        *&buf.mSelector = 0x100000002;
        v32 = *(v29 + 8);
        while (1)
        {
          v33 = *(&buf.mSelector + v31);
          if (((v32 & v33) != 0) != ((*(v30 + 8) & v33) != 0))
          {
            break;
          }

          v31 += 4;
          if (v31 == 8)
          {
            goto LABEL_105;
          }
        }

        if ((v32 & v33) == 0)
        {
          v29 = v30;
        }

LABEL_105:
        v59 = *v29;
        if (!v59 || !os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_116;
        }

        v60 = atomic_load(a4 + 133);
        sub_22170(v69, v60);
        v61 = v70;
        v62 = v69[0];
        (*(*a4 + 128))(__p, a4);
        v63 = v69;
        if (v61 < 0)
        {
          v63 = v62;
        }

        v64 = __p;
        if (v68 < 0)
        {
          v64 = __p[0];
        }

        buf.mSelector = 136315906;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v72 = 1024;
        v73 = 907;
        v74 = 2080;
        v75 = v63;
        v76 = 2080;
        v77 = v64;
        v57 = v59;
        v58 = "%25s:%-5d Device category changed to '%s' for bluetooth audio device with UID %s";
LABEL_112:
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, v58, &buf, 0x26u);
        if (v68 < 0)
        {
          operator delete(__p[0]);
        }

        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        goto LABEL_116;
      }

      if (v19 == 1886546291)
      {
        goto LABEL_71;
      }

      if (v19 == 1936745318 || v19 == 1936746611)
      {
LABEL_66:
        sub_2EB214(a4[10], a4[11]);
      }
    }

LABEL_84:
    v45 = sub_5544(18);
    v46 = sub_5544(29);
    v47 = 0;
    *&buf.mSelector = 0x100000002;
    v48 = *(v45 + 8);
    while (1)
    {
      v49 = *(&buf.mSelector + v47);
      if (((v48 & v49) != 0) != ((*(v46 + 8) & v49) != 0))
      {
        break;
      }

      v47 += 4;
      if (v47 == 8)
      {
        goto LABEL_96;
      }
    }

    if ((v48 & v49) == 0)
    {
      v45 = v46;
    }

LABEL_96:
    v52 = *v45;
    if (!v52 || !os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_116;
    }

    sub_22170(v69, *v18);
    v53 = v70;
    v54 = v69[0];
    (*(*a4 + 128))(__p, a4);
    v55 = v69;
    if (v53 < 0)
    {
      v55 = v54;
    }

    v56 = __p;
    if (v68 < 0)
    {
      v56 = __p[0];
    }

    buf.mSelector = 136315906;
    *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
    v72 = 1024;
    v73 = 1098;
    v74 = 2080;
    v75 = v55;
    v76 = 2080;
    v77 = v56;
    v57 = v52;
    v58 = "%25s:%-5d Unhandled notification (%s) from bluetooth audio device with UID %s";
    goto LABEL_112;
  }

  return 0;
}

void sub_2EAB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2EABD8(uint64_t a1, int a2)
{
  v4 = sub_5544(18);
  v5 = sub_5544(29);
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
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a2 ? "take" : "relinquish";
    sub_23148(&__p, (a1 + 8));
    v11 = v44[0] >= 0 ? &__p : __p;
    *buf = 136315906;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 767;
    *&buf[18] = 2080;
    *&buf[20] = v10;
    v52 = 2080;
    v53 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth initiated %s request on physical device %s.", buf, 0x26u);
    if (SHIBYTE(v44[0]) < 0)
    {
      operator delete(__p);
    }
  }

  __p = 0x70687062706D6274;
  memset(buf, 0, 24);
  sub_4625C(buf, &__p, &v43, 2uLL);
  *v32 = *buf;
  v33 = *&buf[16];
  strcpy(&v34, "cwdv");
  v35 = 0;
  v36 = 3;
  v38[0] = 0;
  v38[1] = 0;
  v37 = v38;
  v39 = 44739242;
  v41 = 0;
  v40 = 0uLL;
  if (!a2 || !sub_28A198())
  {
    goto LABEL_31;
  }

  sub_34AAA8(&__p, v32);
  if (!v44[0])
  {
    sub_65310(&__p);
    goto LABEL_31;
  }

  v12 = sub_5544(18);
  v13 = sub_5544(29);
  v14 = 0;
  *buf = 0x100000002;
  v15 = *(v12 + 8);
  while (1)
  {
    v16 = *&buf[v14];
    if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
    {
      break;
    }

    v14 += 4;
    if (v14 == 8)
    {
      goto LABEL_27;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

LABEL_27:
  v17 = *v12;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 777;
    *&buf[18] = 2080;
    *&buf[20] = "take";
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring Bluetooth initiated %s request.", buf, 0x1Cu);
  }

  v18 = v44[0];
  sub_65310(&__p);
  if (!v18)
  {
LABEL_31:
    v20 = *(a1 + 80);
    v19 = *(a1 + 88);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    sub_46980(&v21, v32[0], v32[1], (v32[1] - v32[0]) >> 2);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    sub_44E44(&v27, &v37);
    v28 = v39;
    if (SHIBYTE(v41) < 0)
    {
      sub_54A0(v29, v40, *(&v40 + 1));
    }

    else
    {
      *v29 = v40;
      v30 = v41;
    }

    v31 = a2;
    __p = v20;
    v43 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v44, 0, 24);
    sub_46980(v44, v21, v22, (v22 - v21) >> 2);
    v44[3] = v24;
    v45 = v25;
    v46 = v26;
    sub_44E44(&v47, &v27);
    v48 = v28;
    if (SHIBYTE(v30) < 0)
    {
      sub_54A0(v49, v29[0], v29[1]);
    }

    else
    {
      *v49 = *v29;
      v49[2] = v30;
    }

    v50 = v31;
    sub_68E60();
    sub_2EE700(buf, &__p);
    operator new();
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  sub_477A0(v38[0]);
  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }
}

void sub_2EB148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_65310(&a37);
  sub_46934(&a23);
  _Unwind_Resume(a1);
}

void sub_2EB214(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 16), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((a2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_68E60();
  operator new();
}

void sub_2EB2C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2EB2E0(id a1)
{
  v1 = sub_8703C();
  if ((*(*v1 + 336))(v1))
  {
    sub_8703C();
    operator new();
  }
}

uint64_t *sub_2EB3C8(uint64_t a1)
{
  v26[0] = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        v25 = v3;
        sub_4B4770(buf, *a1);
        sub_B0484(&v27, buf);
        sub_65310(buf);
        for (i = v28; i != &v27; i = i[1])
        {
          v7 = i[2];
          v6 = i[3];
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v8 = sub_5544(18);
          v9 = sub_5544(29);
          v10 = 0;
          *__p = 0x100000002;
          v11 = *(v8 + 8);
          while (1)
          {
            v12 = *&__p[v10];
            if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
            {
              break;
            }

            v10 += 4;
            if (v10 == 8)
            {
              goto LABEL_13;
            }
          }

          if ((v11 & v12) == 0)
          {
            v8 = v9;
          }

LABEL_13:
          v13 = *v8;
          if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(v29, *(a1 + 16));
            v14 = v30;
            v15 = v29[0];
            (*(*v4 + 128))(__p, v4);
            v16 = v29;
            if (v14 < 0)
            {
              v16 = v15;
            }

            if (v34 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = *__p;
            }

            *buf = 136315906;
            v36 = "Device_Bluetooth_Aspen.cpp";
            v37 = 1024;
            v38 = 974;
            v39 = 2080;
            v40 = v16;
            v41 = 2080;
            v42 = v17;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth property %s has changed for BT device UID %s", buf, 0x26u);
            if (v34 < 0)
            {
              operator delete(*__p);
            }

            if (v30 < 0)
            {
              operator delete(v29[0]);
            }
          }

          LODWORD(v29[0]) = *(a1 + 16);
          sub_1F2E44(buf, v29, 1);
          (*(*v7 + 416))(v7, buf);
          sub_4E0BC(buf);
          if (v6)
          {
            sub_1A8C0(v6);
          }
        }

        sub_87980(&v27);
        v3 = v25;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v18 = sub_5544(18);
  v19 = sub_5544(29);
  v20 = 0;
  *__p = 0x100000002;
  v21 = *(v18 + 8);
  while (1)
  {
    v22 = *&__p[v20];
    if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
    {
      break;
    }

    v20 += 4;
    if (v20 == 8)
    {
      goto LABEL_35;
    }
  }

  if ((v21 & v22) == 0)
  {
    v18 = v19;
  }

LABEL_35:
  v23 = *v18;
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = "Device_Bluetooth_Aspen.cpp";
    v32 = 1024;
    v33 = 333;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", __p, 0x12u);
  }

LABEL_38:
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return sub_8B144(v26);
}

uint64_t *sub_2EBAA4(uint64_t *a1)
{
  v29 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        v28 = v3;
        sub_4B4770(v49, *a1);
        sub_B0484(&v30, v49);
        sub_65310(v49);
        v5 = v31;
        if (v31 != &v30)
        {
          while (1)
          {
            v7 = v5[2];
            v6 = v5[3];
            if (v6)
            {
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v8 = v7[36];
            v9 = (*(*v4 + 120))(v4);
            sub_24FF44(v49, v8, v9);
            v10 = sub_5544(18);
            v11 = sub_5544(29);
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
                goto LABEL_13;
              }
            }

            if ((v13 & v14) == 0)
            {
              v10 = v11;
            }

LABEL_13:
            v15 = *v10;
            if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v4 + 128))(v38, v4);
              if (v39 >= 0)
              {
                v16 = v38;
              }

              else
              {
                v16 = v38[0];
              }

              v17 = v7[36];
              v18 = "unknown";
              if (v17 <= 7)
              {
                v18 = off_6BD200[v17];
              }

              sub_53E8(v36, v18);
              if (v37 >= 0)
              {
                v19 = v36;
              }

              else
              {
                v19 = v36[0];
              }

              sub_2500F8(v32, v49);
              if (SHIBYTE(v33) < 0)
              {
                sub_54A0(__p, v32[0], v32[1]);
              }

              else
              {
                *__p = *v32;
                v35 = v33;
              }

              v20 = __p;
              if (v35 < 0)
              {
                v20 = __p[0];
              }

              *buf = 136316162;
              *&buf[4] = "Device_Bluetooth_Aspen.cpp";
              v41 = 1024;
              v42 = 939;
              v43 = 2080;
              v44 = v16;
              v45 = 2080;
              v46 = v19;
              v47 = 2080;
              v48 = v20;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio device with UID %s and port type %s, changed name to %s", buf, 0x30u);
              if (SHIBYTE(v35) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v33) < 0)
              {
                operator delete(v32[0]);
              }

              if (v37 < 0)
              {
                operator delete(v36[0]);
              }

              if (v39 < 0)
              {
                operator delete(v38[0]);
              }
            }

            (*(*v7 + 128))(v7, v49);
            if (v56 < 0)
            {
              operator delete(v55);
            }

            if (v54 < 0)
            {
              operator delete(v53);
            }

            if (v52 < 0)
            {
              break;
            }

            if (v6)
            {
              goto LABEL_42;
            }

LABEL_43:
            v5 = v5[1];
            if (v5 == &v30)
            {
              goto LABEL_60;
            }
          }

          operator delete(*v49);
          if (!v6)
          {
            goto LABEL_43;
          }

LABEL_42:
          sub_1A8C0(v6);
          goto LABEL_43;
        }

LABEL_60:
        sub_87980(&v30);
        v3 = v28;
        goto LABEL_58;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v21 = sub_5544(18);
  v22 = sub_5544(29);
  v23 = 0;
  *v49 = 0x100000002;
  v24 = *(v21 + 8);
  while (1)
  {
    v25 = *&v49[v23];
    if (((v24 & v25) != 0) != ((*(v22 + 8) & v25) != 0))
    {
      break;
    }

    v23 += 4;
    if (v23 == 8)
    {
      goto LABEL_54;
    }
  }

  if ((v24 & v25) == 0)
  {
    v21 = v22;
  }

LABEL_54:
  v26 = *v21;
  if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 136315394;
    *&v49[4] = "Device_Bluetooth_Aspen.cpp";
    v50 = 1024;
    v51 = 333;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", v49, 0x12u);
  }

  if (v3)
  {
LABEL_58:
    sub_1A8C0(v3);
  }

  return sub_2EE0C8(&v29);
}

uint64_t *sub_2EC2BC(uint64_t *a1)
{
  v26 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (v4)
      {
        strcpy(buf, "mtslbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v6 = sub_59410(v4);
        if (v6 || (v5 & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v6;
        }

        v7 = sub_5544(18);
        v8 = sub_5544(29);
        v9 = 0;
        v10 = HIDWORD(v6);
        *buf = 0x100000002;
        v11 = *(v7 + 8);
        while (1)
        {
          v12 = *&buf[v9];
          if (((v11 & v12) != 0) != ((*(v8 + 8) & v12) != 0))
          {
            break;
          }

          v9 += 4;
          if (v9 == 8)
          {
            goto LABEL_25;
          }
        }

        if ((v11 & v12) == 0)
        {
          v7 = v8;
        }

LABEL_25:
        v20 = *v7;
        if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 128))(__p, v4);
          v21 = v31 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "Device_Bluetooth_Aspen.cpp";
          v33 = 1024;
          v34 = 919;
          v35 = 1024;
          v36 = v10;
          v37 = 2080;
          v38 = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Audio listen mode changed to %u for bluetooth audio device with UID %s", buf, 0x22u);
          if (v31 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_4B4770(__p, v4);
        sub_B0484(&v27, __p);
        sub_65310(__p);
        for (i = v28; i != &v27; i = i[1])
        {
          v23 = i[2];
          v24 = i[3];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = 1819505773;
          sub_1F2E44(__p, &v29, 1);
          (*(*v23 + 416))(v23, __p);
          sub_4E0BC(__p);
          if (v24)
          {
            sub_1A8C0(v24);
          }
        }

        sub_87980(&v27);
LABEL_21:
        sub_1A8C0(v3);
        return sub_2EE0C8(&v26);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v13 = sub_5544(18);
  v14 = sub_5544(29);
  v15 = 0;
  *buf = 0x100000002;
  v16 = *(v13 + 8);
  while (1)
  {
    v17 = *&buf[v15];
    if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
    {
      break;
    }

    v15 += 4;
    if (v15 == 8)
    {
      goto LABEL_17;
    }
  }

  if ((v16 & v17) == 0)
  {
    v13 = v14;
  }

LABEL_17:
  v18 = *v13;
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v33 = 1024;
    v34 = 333;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_21;
  }

  return sub_2EE0C8(&v26);
}

uint64_t sub_2EC9A0(AudioObjectID a1)
{
  buf.mSelector = 0;
  v2 = sub_1235F4(@"fakevehicle", @"com.apple.audio.virtualaudio", &buf);
  if (buf.mSelector)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = sub_5544(18);
    v5 = sub_5544(29);
    v6 = 0;
    *&buf.mSelector = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *(&buf.mSelector + v6);
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_17;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_17:
    v18 = sub_5544(24);
    v19 = 0;
    *&buf.mSelector = 0x100000002;
    v20 = *(v4 + 8);
    while (1)
    {
      v21 = *(&buf.mSelector + v19);
      if (((v20 & v21) != 0) != ((*(v18 + 8) & v21) != 0))
      {
        break;
      }

      v19 += 4;
      if (v19 == 8)
      {
        goto LABEL_23;
      }
    }

    if ((v20 & v21) == 0)
    {
      v4 = v18;
    }

LABEL_23:
    v22 = 1701869160;
    v23 = *v4;
    if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v47 = 1024;
      v48 = 188;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default fakevehicle is set. Pretending that this BT device is a car kit.", &buf, 0x12u);
    }
  }

  else
  {
    v44 = 0;
    v45 = a1;
    strcpy(&buf, "vdsubolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v9 = sub_542F0(&v45, &buf, 4u, &v44);
    *(&v12 + 1) = v10;
    *&v12 = v9;
    v11 = v12 >> 32;
    if ((v11 & 0x100000000) != 0 && v11)
    {
      v13 = sub_5544(18);
      v14 = sub_5544(29);
      v15 = 0;
      *&buf.mSelector = 0x100000002;
      v16 = *(v13 + 8);
      while (1)
      {
        v17 = *(&buf.mSelector + v15);
        if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
        {
          break;
        }

        v15 += 4;
        if (v15 == 8)
        {
          goto LABEL_41;
        }
      }

      if ((v16 & v17) == 0)
      {
        v13 = v14;
      }

LABEL_41:
      v37 = sub_5544(24);
      v38 = 0;
      *&buf.mSelector = 0x100000002;
      v39 = *(v13 + 8);
      while (1)
      {
        v40 = *(&buf.mSelector + v38);
        if (((v39 & v40) != 0) != ((*(v37 + 8) & v40) != 0))
        {
          break;
        }

        v38 += 4;
        if (v38 == 8)
        {
          goto LABEL_53;
        }
      }

      if ((v39 & v40) == 0)
      {
        v13 = v37;
      }

LABEL_53:
      v42 = *v13;
      if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        buf.mSelector = 136315650;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v47 = 1024;
        v48 = 199;
        v49 = 1024;
        v50 = v11;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d User specified BT Category is %u", &buf, 0x18u);
      }
    }

    else
    {
      v44 = 0;
      v45 = a1;
      strcpy(&buf, "tacdbolg");
      BYTE1(buf.mElement) = 0;
      HIWORD(buf.mElement) = 0;
      v24 = sub_542F0(&v45, &buf, 4u, &v44);
      *(&v27 + 1) = v25;
      *&v27 = v24;
      v26 = v27 >> 32;
      if ((v26 & 0x100000000) != 0)
      {
        LODWORD(v11) = v26;
      }

      else
      {
        LODWORD(v11) = 0;
      }

      v28 = sub_5544(18);
      v29 = sub_5544(29);
      v30 = 0;
      *&buf.mSelector = 0x100000002;
      v31 = *(v28 + 8);
      while (1)
      {
        v32 = *(&buf.mSelector + v30);
        if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
        {
          break;
        }

        v30 += 4;
        if (v30 == 8)
        {
          goto LABEL_35;
        }
      }

      if ((v31 & v32) == 0)
      {
        v28 = v29;
      }

LABEL_35:
      v33 = sub_5544(24);
      v34 = 0;
      *&buf.mSelector = 0x100000002;
      v35 = *(v28 + 8);
      while (1)
      {
        v36 = *(&buf.mSelector + v34);
        if (((v35 & v36) != 0) != ((*(v33 + 8) & v36) != 0))
        {
          break;
        }

        v34 += 4;
        if (v34 == 8)
        {
          goto LABEL_47;
        }
      }

      if ((v35 & v36) == 0)
      {
        v28 = v33;
      }

LABEL_47:
      v41 = *v28;
      if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        buf.mSelector = 136315650;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v47 = 1024;
        v48 = 206;
        v49 = 1024;
        v50 = v11;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Firmware defined BT Category is %u", &buf, 0x18u);
      }
    }

    return sub_28B670(v11);
  }

  return v22;
}

uint64_t *sub_2ECE18(uint64_t a1)
{
  v33 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        strcpy(buf, "caobbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v6 = sub_59410(v4);
        if (v6 || (v5 & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v6;
        }

        if ((sub_231C4() & 1) != 0 || sub_23238("VA_HandleOwnershipEvent", 0x17uLL) != &qword_709F00)
        {
          if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
          {
            qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
            __cxa_guard_release(&qword_6F6850);
          }

          v7 = os_signpost_id_generate(qword_6F6848);
          if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
          {
            qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
            __cxa_guard_release(&qword_6F6850);
          }

          if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v15 = qword_6F6848;
            if (os_signpost_enabled(qword_6F6848))
            {
              *buf = 67109120;
              *&buf[4] = v6 == 0x100000000;
              _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VA_HandleOwnershipEvent", "Begin updating port routability, ownership = %d", buf, 8u);
            }
          }
        }

        else
        {
          v7 = 0;
        }

        v39 = v7;
        v16 = sub_5544(43);
        if (*(v16 + 8))
        {
          v17 = *v16;
          if (*v16)
          {
            if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "SignpostUtilities.h";
              *&buf[12] = 1024;
              *&buf[14] = 90;
              *&buf[18] = 2080;
              *&buf[20] = "kOwnershipChange";
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
            }
          }
        }

        if (v6 == 0x100000000)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        atomic_store(v18, v4 + 154);
        v19 = sub_5544(18);
        v20 = sub_5544(29);
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
            goto LABEL_40;
          }
        }

        if ((v22 & v23) == 0)
        {
          v19 = v20;
        }

LABEL_40:
        v24 = *v19;
        if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 128))(&__p, v4);
          v25 = "false";
          if (v6 == 0x100000000)
          {
            v25 = "true";
          }

          *&buf[4] = "Device_Bluetooth_Aspen.cpp";
          *&buf[12] = 1024;
          *buf = 136315906;
          *&buf[14] = 878;
          if (v38 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *&buf[18] = 2080;
          *&buf[20] = v25;
          *&buf[28] = 2080;
          v43 = p_p;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Audio connection ownership changed to %s for bluetooth audio device with UID %s", buf, 0x26u);
          if (v38 < 0)
          {
            operator delete(__p);
          }
        }

        memset(buf, 0, 24);
        strcpy(&buf[24], "cwdv");
        BYTE2(v43) = 0;
        v44 = 3;
        v46[0] = 0;
        v46[1] = 0;
        v45 = v46;
        v49 = 0;
        v50 = 0;
        v48 = 0;
        v47 = 44731050;
        sub_161C7C(&__p, v4, buf);
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v48);
        }

        sub_477A0(v46[0]);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        if (v6 == 0x100000000)
        {
          v35[0] = 0;
          v35[1] = 0;
          v34 = v35;
          *buf = 1886418288;
          sub_80C2C(&buf[8], &__p);
          sub_1165C0(&v34, *buf);
          sub_65310(&buf[8]);
          v27 = sub_809C0();
          sub_11ABFC(v27, &v34, 0);
          sub_D169C(v35[0]);
        }

        else
        {
          v28 = sub_809C0();
          sub_258778(v28, &__p, 1919184754);
        }

        for (i = v37; i != &__p; i = *(i + 8))
        {
          v30 = *(i + 24);
          v40[0] = *(i + 16);
          v40[1] = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_25704(&v34, v40, "", 895);
          v31 = v34;
          v41 = 1869832547;
          sub_1F2E44(buf, &v41, 1);
          (*(*v31 + 416))(v31, buf);
          sub_4E0BC(buf);
          if (v35[0])
          {
            sub_1A8C0(v35[0]);
          }

          if (v30)
          {
            std::__shared_weak_count::__release_weak(v30);
          }
        }

        kdebug_trace();
        sub_65310(&__p);
        sub_2ED8CC(&v39);
LABEL_20:
        sub_1A8C0(v3);
        return sub_2EE0C8(&v33);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = sub_5544(18);
  v9 = sub_5544(29);
  v10 = 0;
  *buf = 0x100000002;
  v11 = *(v8 + 8);
  while (1)
  {
    v12 = *&buf[v10];
    if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
    {
      break;
    }

    v10 += 4;
    if (v10 == 8)
    {
      goto LABEL_16;
    }
  }

  if ((v11 & v12) == 0)
  {
    v8 = v9;
  }

LABEL_16:
  v13 = *v8;
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 333;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_20;
  }

  return sub_2EE0C8(&v33);
}

os_signpost_id_t *sub_2ED8CC(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 90;
        v11 = 2080;
        v12 = "kOwnershipChange";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
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

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_HandleOwnershipEvent", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_2EDA5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t *sub_2EDA68(uint64_t *a1)
{
  v22 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (v4)
      {
        v5 = sub_5544(18);
        v6 = sub_5544(29);
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
            goto LABEL_23;
          }
        }

        if ((v8 & v9) == 0)
        {
          v5 = v6;
        }

LABEL_23:
        v17 = *v5;
        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 128))(__p, v4);
          v18 = v27 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "Device_Bluetooth_Aspen.cpp";
          v29 = 1024;
          v30 = 856;
          v31 = 2080;
          v32 = v18;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Audio connection failed for bluetooth audio device with UID %s", buf, 0x1Cu);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_4B4770(__p, v4);
        sub_B0484(&v23, __p);
        sub_65310(__p);
        for (i = v24; i != &v23; i = i[1])
        {
          v20 = i[2];
          v21 = i[3];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = 1935762278;
          sub_1F2E44(__p, &v25, 1);
          (*(*v20 + 416))(v20, __p);
          sub_4E0BC(__p);
          if (v21)
          {
            sub_1A8C0(v21);
          }
        }

        sub_87980(&v23);
LABEL_19:
        sub_1A8C0(v3);
        return sub_2EE0C8(&v22);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = sub_5544(18);
  v11 = sub_5544(29);
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
      goto LABEL_15;
    }
  }

  if ((v13 & v14) == 0)
  {
    v10 = v11;
  }

LABEL_15:
  v15 = *v10;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v29 = 1024;
    v30 = 333;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_19;
  }

  return sub_2EE0C8(&v22);
}

uint64_t *sub_2EE0C8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_2EE11C(uint64_t a1)
{
  v23[0] = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (v4)
      {
        strcpy(buf, "edeibolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v6 = sub_59410(v4);
        if (v6 || (v5 & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v6;
        }

        v7 = sub_5544(18);
        v8 = sub_5544(29);
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
            goto LABEL_22;
          }
        }

        if ((v10 & v11) == 0)
        {
          v7 = v8;
        }

LABEL_22:
        v18 = *v7;
        if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 128))(__p, v4);
          v19 = "en";
          if (!v6)
          {
            v19 = "dis";
          }

          *&buf[4] = "Device_Bluetooth_Aspen.cpp";
          *buf = 136315906;
          v27 = 1024;
          if (v25 >= 0)
          {
            v20 = __p;
          }

          else
          {
            v20 = __p[0];
          }

          v28 = 845;
          v29 = 2080;
          v30 = v19;
          v31 = 2080;
          v32 = v20;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Headset detection %sabled for Bluetooth device with UID %s", buf, 0x26u);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_2E8ED0(v4[10], v4[11]);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v12 = sub_5544(18);
  v13 = sub_5544(29);
  v14 = 0;
  *buf = 0x100000002;
  v15 = *(v12 + 8);
  while (1)
  {
    v16 = *&buf[v14];
    if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
    {
      break;
    }

    v14 += 4;
    if (v14 == 8)
    {
      goto LABEL_17;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

LABEL_17:
  v17 = *v12;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v27 = 1024;
    v28 = 333;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    sub_1A8C0(v3);
  }

  return sub_2EE0C8(v23);
}

uint64_t sub_2EE700(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_46980(a1 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  v4 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 56) = *(a2 + 56);
  sub_44E44((a1 + 64), a2 + 64);
  *(a1 + 88) = *(a2 + 88);
  if (*(a2 + 119) < 0)
  {
    sub_54A0((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v5 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v5;
  }

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_2EE7BC(_Unwind_Exception *a1)
{
  sub_477A0(*(v1 + 72));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2EE7FC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 119) < 0)
    {
      operator delete(*(v1 + 96));
    }

    sub_477A0(*(v1 + 72));
    v2 = *(v1 + 16);
    if (v2)
    {
      *(v1 + 24) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_2EE878(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_477A0(*(a1 + 72));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t *sub_2EE8D0(uint64_t a1)
{
  v14[0] = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        if (*(a1 + 120))
        {
          v5 = 1919842148;
        }

        else
        {
          v5 = 1919971701;
        }

        v6 = sub_809C0();
        sub_161C7C(v15, v4, a1 + 16);
        sub_258778(v6, v15, v5);
        sub_65310(v15);
LABEL_19:
        sub_1A8C0(v3);
        return sub_2EE7FC(v14);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = sub_5544(18);
  v8 = sub_5544(29);
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
      goto LABEL_15;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_15:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v17 = 1024;
    v18 = 333;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_19;
  }

  return sub_2EE7FC(v14);
}

unsigned __int8 *sub_2EED4C(unint64_t a1)
{
  for (i = 0; i != 19; ++i)
  {
    sub_2EEDE8(a1, dword_5192B0[i]);
  }

  sub_314648(a1);
  v3 = *(a1 + 268);
  v4 = +[PersonalAudioListener sharedInstance];
  [v4 removeListener:v3];

  return sub_4B08A4(a1);
}

uint64_t sub_2EEDE8(unint64_t a1, AudioObjectPropertySelector a2)
{
  v5.mSelector = a2;
  *&v5.mScope = 1735159650;
  sub_4E890();
  v3 = (*(*a1 + 120))(a1);
  return sub_74D2C(v3, &v5, sub_2EA114, a1);
}

void sub_2EEE68(void *a1, int *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v66 = sub_5544(14);
    if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
    {
      v75 = *a2;
      v76 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v68 = sub_5544(14);
    if (*v68 && os_log_type_enabled(*v68, OS_LOG_TYPE_ERROR))
    {
      v75 = *a2;
      v76 = a2[2];
      sub_22CE0(__p);
    }

    v69 = __cxa_allocate_exception(0x10uLL);
    *v69 = &off_6DDDD0;
    v69[2] = 561211770;
  }

  if (!a6)
  {
    v70 = sub_5544(14);
    if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
    {
      v75 = *a2;
      v76 = a2[2];
      sub_22CE0(__p);
    }

    v71 = __cxa_allocate_exception(0x10uLL);
    *v71 = &off_6DDDD0;
    v71[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v72 = sub_5544(14);
    if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
    {
      v75 = *a2;
      v76 = a2[2];
      sub_22CE0(__p);
    }

    v73 = __cxa_allocate_exception(0x10uLL);
    *v73 = &off_6DDDD0;
    v73[2] = 1852797029;
  }

  v12 = *a2;
  if (*a2 == 1651797100)
  {
    v21 = *a6;
    v22 = sub_5544(18);
    v23 = sub_5544(29);
    v24 = 0;
    *&buf.mSelector = 0x100000002;
    v25 = *(v22 + 8);
    while (1)
    {
      v26 = *(&buf.mSelector + v24);
      if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
      {
        break;
      }

      v24 += 4;
      if (v24 == 8)
      {
        goto LABEL_54;
      }
    }

    if ((v25 & v26) == 0)
    {
      v22 = v23;
    }

LABEL_54:
    v47 = *v22;
    if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      (*(*a1 + 128))(__p, a1);
      v48 = v79 >= 0 ? __p : __p[0];
      buf.mSelector = 136315906;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v83 = 1024;
      v84 = 743;
      v85 = 2080;
      v86 = v48;
      v87 = 1024;
      LODWORD(v88) = v21;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: setting low latency mode to %u", &buf, 0x22u);
      if (v79 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_2EFE4C(&buf, a2);
    sub_FDAC4(a1, &buf, a3, a4, a5, a6);
  }

  else if (v12 == 1936745838)
  {
    v15 = *a6;
    v16 = sub_5544(18);
    v17 = sub_5544(29);
    v18 = 0;
    *&buf.mSelector = 0x100000002;
    v19 = *(v16 + 8);
    while (1)
    {
      v20 = *(&buf.mSelector + v18);
      if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
      {
        break;
      }

      v18 += 4;
      if (v18 == 8)
      {
        goto LABEL_35;
      }
    }

    if ((v19 & v20) == 0)
    {
      v16 = v17;
    }

LABEL_35:
    v35 = *v16;
    if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      (*(*a1 + 128))(__p, a1);
      v36 = v79 >= 0 ? __p : __p[0];
      buf.mSelector = 136315906;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v83 = 1024;
      v84 = 750;
      v85 = 2080;
      v86 = v36;
      v87 = 1024;
      LODWORD(v88) = v15;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: setting spatial A2DP mode to %u", &buf, 0x22u);
      if (v79 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v74[0] = v15;
    v80 = 0;
    v81 = 4;
    strcpy(&buf, "papsbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    if ((*(*a1 + 16))(a1, &buf))
    {
      strcpy(&buf, "papsbolg");
      BYTE1(buf.mElement) = 0;
      HIWORD(buf.mElement) = 0;
      (*(*a1 + 40))(a1, &buf, 0, 0, &v81, &v80);
      if (v80)
      {
        v37 = sub_5544(18);
        v38 = sub_5544(29);
        v39 = 0;
        *&buf.mSelector = 0x100000002;
        v40 = *(v37 + 8);
        while (1)
        {
          v41 = *(&buf.mSelector + v39);
          if (((v40 & v41) != 0) != ((*(v38 + 8) & v41) != 0))
          {
            break;
          }

          v39 += 4;
          if (v39 == 8)
          {
            goto LABEL_91;
          }
        }

        if ((v40 & v41) == 0)
        {
          v37 = v38;
        }

LABEL_91:
        v59 = *v37;
        if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          (*(*a1 + 128))(__p, a1);
          v60 = v79;
          v61 = __p[0];
          sub_22170(&v75, 0x7370656Eu);
          v62 = __p;
          if (v60 < 0)
          {
            v62 = v61;
          }

          if (v77 >= 0)
          {
            v63 = &v75;
          }

          else
          {
            v63 = v75;
          }

          buf.mSelector = 136316162;
          *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
          v83 = 1024;
          v84 = 991;
          v85 = 2080;
          v86 = v62;
          v87 = 2080;
          v88 = v63;
          v89 = 1024;
          v90 = v15;
          _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: setting %s to %u", &buf, 0x2Cu);
          if (v77 < 0)
          {
            operator delete(v75);
          }

          if (v79 < 0)
          {
            operator delete(__p[0]);
          }
        }

        strcpy(&buf, "nepsbolg");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        sub_FDAC4(a1, &buf, 0, 0, v81, v74);
        v65 = a1[10];
        v64 = a1[11];
        if (v64)
        {
          atomic_fetch_add_explicit((v64 + 16), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v64 + 16), 1uLL, memory_order_relaxed);
        }

        sub_68E60();
        operator new();
      }
    }

    v42 = sub_5544(18);
    v43 = sub_5544(29);
    v44 = 0;
    *&buf.mSelector = 0x100000002;
    v45 = *(v42 + 8);
    while (1)
    {
      v46 = *(&buf.mSelector + v44);
      if (((v45 & v46) != 0) != ((*(v43 + 8) & v46) != 0))
      {
        break;
      }

      v44 += 4;
      if (v44 == 8)
      {
        goto LABEL_78;
      }
    }

    if ((v45 & v46) == 0)
    {
      v42 = v43;
    }

LABEL_78:
    v54 = *v42;
    if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      (*(*a1 + 128))(__p, a1);
      v55 = v79;
      v56 = __p[0];
      sub_22170(&v75, 0x7370656Eu);
      v57 = __p;
      if (v55 < 0)
      {
        v57 = v56;
      }

      if (v77 >= 0)
      {
        v58 = &v75;
      }

      else
      {
        v58 = v75;
      }

      buf.mSelector = 136316162;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v83 = 1024;
      v84 = 998;
      v85 = 2080;
      v86 = v57;
      v87 = 2080;
      v88 = v58;
      v89 = 1024;
      v90 = v15;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: could not set %s to %u because spatial audio is not supported", &buf, 0x2Cu);
      if (v77 < 0)
      {
        operator delete(v75);
      }

      if (v79 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (v12 == 1869832547)
  {
    v13 = *a6;
    if ((sub_231C4() & 1) != 0 || sub_23238("VA_SetOwnership", 0xFuLL) != &qword_709F00)
    {
      if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
      {
        qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
        __cxa_guard_release(&qword_6F6850);
      }

      v14 = os_signpost_id_generate(qword_6F6848);
      if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
      {
        qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
        __cxa_guard_release(&qword_6F6850);
      }

      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = qword_6F6848;
        if (os_signpost_enabled(qword_6F6848))
        {
          buf.mSelector = 67109120;
          buf.mScope = v13;
          _os_signpost_emit_with_name_impl(&dword_0, v32, OS_SIGNPOST_INTERVAL_BEGIN, v14, "VA_SetOwnership", "Setting kVirtualAudioPortPropertyOwnsSharedAudioConnection to %d", &buf, 8u);
        }
      }
    }

    else
    {
      v14 = 0;
    }

    __p[0] = v14;
    v33 = sub_5544(43);
    if (*(v33 + 8))
    {
      v34 = *v33;
      if (*v33)
      {
        if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "SignpostUtilities.h";
          v83 = 1024;
          v84 = 84;
          v85 = 2080;
          v86 = "kOwnsSharedConnection";
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", &buf, 0x1Cu);
        }
      }
    }

    sub_2EFE4C(&buf, a2);
    sub_FDAC4(a1, &buf, a3, a4, a5, a6);
    sub_2EFFB4(__p);
  }

  else
  {
    sub_2EFE4C(v74, a2);
    v27 = sub_5544(18);
    v28 = sub_5544(29);
    v29 = 0;
    *&buf.mSelector = 0x100000002;
    v30 = *(v27 + 8);
    while (1)
    {
      v31 = *(&buf.mSelector + v29);
      if (((v30 & v31) != 0) != ((*(v28 + 8) & v31) != 0))
      {
        break;
      }

      v29 += 4;
      if (v29 == 8)
      {
        goto LABEL_64;
      }
    }

    if ((v30 & v31) == 0)
    {
      v27 = v28;
    }

LABEL_64:
    v49 = *v27;
    if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 128))(__p, a1);
      v50 = v79;
      v51 = __p[0];
      sub_22170(&v75, v74[0]);
      v52 = __p;
      if (v50 < 0)
      {
        v52 = v51;
      }

      if (v77 >= 0)
      {
        v53 = &v75;
      }

      else
      {
        v53 = v75;
      }

      buf.mSelector = 136315906;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v83 = 1024;
      v84 = 756;
      v85 = 2080;
      v86 = v52;
      v87 = 2080;
      v88 = v53;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio device with UID %s: Setting Bluetooth property %s.", &buf, 0x26u);
      if (v77 < 0)
      {
        operator delete(v75);
      }

      if (v79 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_2EFE4C(&buf, a2);
    sub_FDAC4(a1, &buf, a3, a4, a5, a6);
  }
}

void sub_2EFDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2EFE4C(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 > 1718772583)
  {
    if (v2 <= 1935762277)
    {
      if (v2 == 1718772584)
      {
        v3 = 0x676C6F6266726368;
        goto LABEL_24;
      }

      if (v2 == 1869832547)
      {
        v3 = 0x676C6F62626F6163;
        goto LABEL_24;
      }
    }

    else
    {
      switch(v2)
      {
        case 1935762278:
          v3 = 0x676C6F6262616366;
          goto LABEL_24;
        case 1936745838:
          v3 = 0x676C6F627370656ELL;
          goto LABEL_24;
        case 1952609377:
          v3 = 0x676C6F6261746274;
          goto LABEL_24;
      }
    }
  }

  else if (v2 <= 1668051826)
  {
    if (v2 == 1651797100)
    {
      v3 = 0x676C6F626C6F6C61;
      goto LABEL_24;
    }

    if (v2 == 1651798131)
    {
      v3 = 0x676C6F6270726973;
      goto LABEL_24;
    }
  }

  else
  {
    switch(v2)
    {
      case 1668051827:
        v3 = 0x676C6F62636C7373;
        goto LABEL_24;
      case 1685025637:
        v3 = 0x676C6F62646F7365;
        goto LABEL_24;
      case 1685026403:
        v3 = 0x676C6F62646F7663;
LABEL_24:
        *result = v3;
        *(result + 8) = 0;
        return result;
    }
  }

  *result = *a2;
  *(result + 8) = a2[2];
  return result;
}

os_signpost_id_t *sub_2EFFB4(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 84;
        v11 = 2080;
        v12 = "kOwnsSharedConnection";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
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

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_SetOwnership", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_2F0144(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t *sub_2F0150(uint64_t *a1)
{
  v26 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        sub_4B4770(__p, *a1);
        sub_B0484(&v27, __p);
        sub_65310(__p);
        v5 = v28;
        if (v28 != &v27)
        {
          while (1)
          {
            v7 = v5[2];
            v6 = v5[3];
            if (v6)
            {
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            strcpy(buf, "nepsbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            v9 = sub_59410(v4);
            if (v9)
            {
              goto LABEL_39;
            }

            if ((v8 & 1) == 0)
            {
              break;
            }

            v10 = sub_5544(18);
            v11 = sub_5544(29);
            v12 = 0;
            v13 = HIDWORD(v9);
            *buf = 0x100000002;
            v14 = *(v10 + 8);
            while (1)
            {
              v15 = *&buf[v12];
              if (((v14 & v15) != 0) != ((*(v11 + 8) & v15) != 0))
              {
                break;
              }

              v12 += 4;
              if (v12 == 8)
              {
                goto LABEL_15;
              }
            }

            if ((v14 & v15) == 0)
            {
              v10 = v11;
            }

LABEL_15:
            v16 = *v10;
            if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v4 + 128))(__p, v4);
              v17 = __p;
              if (v31 < 0)
              {
                v17 = __p[0];
              }

              *buf = 136315906;
              *&buf[4] = "Device_Bluetooth_Aspen.cpp";
              v33 = 1024;
              v34 = 958;
              v35 = 1024;
              v36 = v13;
              v37 = 2080;
              v38 = v17;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d BluetoothSpatialAudioEnabled changed to %d for BT device UID %s ", buf, 0x22u);
              if (v31 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v29 = 1936745838;
            sub_1F2E44(__p, &v29, 1);
            (*(*v7 + 416))(v7, __p);
            sub_4E0BC(__p);
            if (v6)
            {
              sub_1A8C0(v6);
            }

            v5 = v5[1];
            if (v5 == &v27)
            {
              goto LABEL_24;
            }
          }

          LODWORD(v9) = 0;
LABEL_39:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v9;
        }

LABEL_24:
        sub_87980(&v27);
        goto LABEL_35;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v18 = sub_5544(18);
  v19 = sub_5544(29);
  v20 = 0;
  *buf = 0x100000002;
  v21 = *(v18 + 8);
  while (1)
  {
    v22 = *&buf[v20];
    if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
    {
      break;
    }

    v20 += 4;
    if (v20 == 8)
    {
      goto LABEL_32;
    }
  }

  if ((v21 & v22) == 0)
  {
    v18 = v19;
  }

LABEL_32:
  v23 = *v18;
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v33 = 1024;
    v34 = 333;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

LABEL_35:
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return sub_2EE0C8(&v26);
}

void sub_2F0868(uint64_t a1, uint64_t a2, UInt32 a3, const void *a4, UInt32 *a5, int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v27 = sub_5544(14);
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v34 = *(a2 + 8);
      sub_22CE0(v37);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v29 = sub_5544(14);
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v34 = *(a2 + 8);
      sub_22CE0(v37);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 561211770;
  }

  if (!a6)
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v34 = *(a2 + 8);
      sub_22CE0(v37);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = &off_6DDDD0;
    v32[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1819046767)
  {
    if (v12 <= 1651796338)
    {
      if (v12 == 1650551140)
      {
        v13 = *(a1 + 620);
        goto LABEL_32;
      }

      if (v12 == 1651796336)
      {
        v13 = *(a1 + 588);
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v12 == 1651796339)
    {
      v13 = *(a1 + 592);
      goto LABEL_32;
    }

    if (v12 != 1651798131)
    {
      if (v12 == 1767989616)
      {
        v13 = *(a1 + 584);
LABEL_32:
        *a6 = v13;
        return;
      }

      goto LABEL_33;
    }

    sub_2EFE4C(buf, a2);
    (*(*a1 + 40))(a1, buf, 0, 0, a5, a6);
    v14 = sub_2E9F94(*a6);
    goto LABEL_27;
  }

  if (v12 > 1937208175)
  {
    if (v12 == 1937208176)
    {
      v16 = (*(*a1 + 376))(a1);
      if ((v16 & 0x100000000) != 0)
      {
        v13 = v16;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_32;
    }

    if (v12 != 1970496630)
    {
      if (v12 != 2004054901)
      {
        goto LABEL_33;
      }

LABEL_18:
      sub_5C0D8(a1, a2, a3, a4, a5, a6);
      goto LABEL_19;
    }

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
    v14 = sub_28B670(*a6);
LABEL_27:
    *a6 = v14;
    return;
  }

  switch(v12)
  {
    case 1819046768:
      goto LABEL_18;
    case 1869832547:
      v15 = atomic_load((a1 + 616));
      v13 = v15 == 1;
      goto LABEL_32;
    case 1935762278:
      sub_2EFE4C(buf, a2);
      (*(*a1 + 40))(a1, buf, 0, 0, a5, a6);
LABEL_19:
      v13 = *a6 != 0;
      goto LABEL_32;
  }

LABEL_33:
  sub_2EFE4C(&v36, a2);
  v17 = sub_5544(18);
  v18 = sub_5544(29);
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
      goto LABEL_39;
    }
  }

  if ((v20 & v21) == 0)
  {
    v17 = v18;
  }

LABEL_39:
  v22 = *v17;
  if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 128))(v37, a1);
    v23 = v38;
    v24 = v37[0];
    sub_22170(&__p, v36.mSelector);
    v25 = v37;
    if (v23 < 0)
    {
      v25 = v24;
    }

    if (v35 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v40 = 1024;
    v41 = 713;
    v42 = 2080;
    v43 = v25;
    v44 = 2080;
    v45 = p_p;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: Getting Bluetooth property %s.", buf, 0x26u);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  sub_5C0D8(a1, &v36, a3, a4, a5, a6);
}

void sub_2F1044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2F1068(uint64_t a1, int *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *a2;
      v17 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_23:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v18 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_23;
  }

  v8 = *a2;
  result = 4;
  if (*a2 > 1767989615)
  {
    if (v8 > 1937208175)
    {
      if (v8 == 1937208176)
      {
        return result;
      }

      v10 = 1986947428;
    }

    else
    {
      if (v8 == 1767989616)
      {
        return result;
      }

      v10 = 1869832547;
    }

    goto LABEL_12;
  }

  if (v8 != 1650551140 && v8 != 1651796336)
  {
    v10 = 1651796339;
LABEL_12:
    if (v8 != v10)
    {
      sub_2EFE4C(&buf, a2);
      return sub_5BD20(a1, &buf, a3, a4);
    }
  }

  return result;
}

BOOL sub_2F13C0(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 <= 1767989615)
  {
    if (v3 != 1650551140 && v3 != 1651796336 && v3 != 1651796339)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v3 == 1986947428)
  {
    return 0;
  }

  if (v3 != 1869832547)
  {
    if (v3 != 1767989616)
    {
LABEL_14:
      sub_2EFE4C(&v7, a2);
      return sub_BE734(a1, &v7);
    }

    return 0;
  }

  return 1;
}

unint64_t sub_2F147C(uint64_t a1, int *a2)
{
  v4 = *a2;
  LOBYTE(v5) = 1;
  if (*a2 <= 1767989615)
  {
    if (v4 == 1650551140)
    {
      return v5 & 1;
    }

    if (v4 == 1651796336 || v4 == 1651796339)
    {
      LOBYTE(v5) = *(a1 + 600);
      return v5 & 1;
    }

    goto LABEL_15;
  }

  if (v4 <= 1937208175)
  {
    if (v4 == 1767989616)
    {
      return v5 & 1;
    }

    if (v4 == 1869832547)
    {
      v6 = atomic_load((a1 + 616));
      v7 = v6 == 0;
LABEL_36:
      LOBYTE(v5) = !v7;
      return v5 & 1;
    }

LABEL_15:
    sub_2EFE4C(v24, a2);
    v9 = sub_5544(18);
    v10 = sub_5544(29);
    v11 = 0;
    *&buf.mSelector = 0x100000002;
    v12 = *(v9 + 8);
    while (1)
    {
      v13 = *(&buf.mSelector + v11);
      if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
      {
        break;
      }

      v11 += 4;
      if (v11 == 8)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }
    }

    if ((v12 & v13) == 0)
    {
      v9 = v10;
    }

    if (*(v9 + 8))
    {
LABEL_24:
      v14 = *v9;
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        (*(*a1 + 128))(v22, a1);
        v15 = v23;
        v16 = v22[0];
        sub_22170(__p, v24[0]);
        v17 = v22;
        if (v15 < 0)
        {
          v17 = v16;
        }

        if (v21 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        buf.mSelector = 136315906;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v26 = 1024;
        v27 = 589;
        v28 = 2080;
        v29 = v17;
        v30 = 2080;
        v31 = v18;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: Checking if it has Bluetooth property %s.", &buf, 0x26u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (v23 < 0)
        {
          operator delete(v22[0]);
        }
      }
    }

LABEL_35:
    sub_2EFE4C(&buf, a2);
    sub_4DFC0(a1);
    v7 = AudioObjectHasProperty(*(a1 + 268), &buf) == 0;
    goto LABEL_36;
  }

  if (v4 == 1937208176)
  {
    v5 = ((*(*a1 + 376))(a1) >> 32) & 1;
    return v5 & 1;
  }

  if (v4 != 1986947428)
  {
    goto LABEL_15;
  }

  return v5 & 1;
}

void sub_2F1768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2F1794(AudioObjectID a1)
{
  ioDataSize = 4;
  LODWORD(outData) = 0;
  *&inAddress.mSelector = 0x676C6F6262647470;
  inAddress.mElement = 0;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v2 = sub_5544(18);
    v3 = sub_5544(29);
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
        goto LABEL_8;
      }
    }

    if ((v5 & v6) == 0)
    {
      v2 = v3;
    }

LABEL_8:
    v7 = *v2;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Device_Bluetooth_Aspen.cpp";
      v22 = 1024;
      v23 = 152;
      v24 = 1024;
      v25 = PropertyData;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d getting bluetooth audio device type", buf, 0x18u);
    }
  }

  v8 = outData;
  if (outData == 1953853033)
  {
    operator new();
  }

  v9 = sub_5544(18);
  v10 = sub_5544(29);
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
      goto LABEL_19;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

LABEL_19:
  v14 = *v9;
  if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_22170(&inAddress, v8);
    if (v20 >= 0)
    {
      p_inAddress = &inAddress;
    }

    else
    {
      p_inAddress = *&inAddress.mSelector;
    }

    *buf = 136315906;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v22 = 1024;
    v23 = 361;
    v24 = 1024;
    v25 = v8;
    v26 = 2080;
    v27 = p_inAddress;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown bluetooth audio device type %u ('%s')", buf, 0x22u);
    if (v20 < 0)
    {
      operator delete(*&inAddress.mSelector);
    }
  }

  return 0;
}

void sub_2F2790()
{
  sub_2F2A64(v1);
  sub_4B2820(v0);
  operator delete();
}

std::string *sub_2F2860(std::string *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (v4 < 8 || (v3 >= 0 ? (v6 = a2) : (v6 = *a2), sub_2F29F8(v6, v4, v4 - 8, 0xFFFFFFFFFFFFFFFFLL, "-btaudio", 8uLL)))
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "Device_Bluetooth_Aspen.cpp";
      v14 = 1024;
      v15 = 374;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): invalid UID", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "invalid UID");
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  return std::string::basic_string(a1, a2, 0, v7 - 8, &v12);
}

uint64_t sub_2F29F8(uint64_t a1, unint64_t a2, unint64_t a3, size_t a4, void *__s2, size_t a6)
{
  if (a2 < a3)
  {
    sub_DE7DC("string_view::substr");
  }

  if (a2 - a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2 - a3;
  }

  if (a6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a6;
  }

  LODWORD(result) = memcmp((a1 + a3), __s2, v8);
  if (v7 < a6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v7 == a6)
  {
    v10 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_2F2A64(uint64_t a1)
{
  if (*(a1 + 8))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (*(a1 + 40) == 1)
    {
      caulk::semaphore::~semaphore((a1 + 24));
    }

    v2 = *(a1 + 16);
    if (v2)
    {
      sub_1A8C0(v2);
    }

    return a1;
  }

  return result;
}

void sub_2F2AC8(uint64_t a1)
{
  __dmb(0xBu);
  caulk::semaphore::signal((*(a1 + 40) + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2F2B1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C0D38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2F2B90(void *a1)
{
  *a1 = off_6C0AF8;
  sub_140514((a1 + 67));
  sub_2F2A64((a1 + 67));

  return sub_4B2820(a1);
}

uint64_t sub_2F2BF4(uint64_t a1)
{
  (*(**(a1 + 24) + 272))(*(a1 + 24), 0);
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_2F2F40(uint64_t result, int a2)
{
  if (*(result + 24))
  {
    v2 = result;
    if (a2)
    {
      v3 = *(result + 32);
      v4 = sub_5544(26);
      v5 = *v4;
      if (v3 == 1)
      {
        if (v5 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, 0x70726563u);
          if (v13 >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = __p[0];
          }

          *buf = 136315650;
          v15 = "EnableANCMonitorIODelegate.cpp";
          v16 = 1024;
          v17 = 105;
          v18 = 2080;
          v19 = v6;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d HandleIODidStart for port %s. Stopping ANCMonitor aggregate.", buf, 0x1Cu);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return (*(**(v2 + 24) + 272))(*(v2 + 24), 0);
      }

      else
      {
        if (v5 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, 0x7073706Bu);
          v11 = v13 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v15 = "EnableANCMonitorIODelegate.cpp";
          v16 = 1024;
          v17 = 113;
          v18 = 2080;
          v19 = v11;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d HandleIODidStart for port %s. Starting ANCMonitor aggregate.", buf, 0x1Cu);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return (*(**(v2 + 24) + 256))(*(v2 + 24), 0);
      }
    }

    else
    {
      sub_EBA7C();
      v7 = *(v2 + 8);
      v8 = *(v2 + 16);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
      }

      if (!caulk::g_realtime_safe_resource)
      {
        __break(1u);
      }

      v9 = *(v2 + 36);
      v10 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x38uLL, 8uLL);
      *(v10 + 16) = 0;
      *(v10 + 24) = v7;
      *(v10 + 32) = v8;
      *(v10 + 40) = v9;
      *v10 = off_6C0E10;
      *(v10 + 8) = 0;

      return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v10);
    }
  }

  return result;
}

caulk::concurrent::message **sub_2F321C(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_2F3264(a1);
  return sub_2F3D78(&v2);
}

void sub_2F3250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2F3D78(va);
  _Unwind_Resume(a1);
}

void sub_2F3264(uint64_t a1)
{
  v2 = *(a1 + 40);
  *&v25.mSelector = 0x676C6F62676F696ELL;
  v25.mElement = 0;
  v3 = sub_5544(14);
  if ((*(v3 + 8) & 1) != 0 && *v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    v32[0] = v25;
    sub_22CE0(&v42);
  }

  buf = v25;
  if (AudioObjectHasProperty(v2, &buf))
  {
    memset(v42.__m_.__opaque, 0, sizeof(v42.__m_.__opaque));
    v42.__m_.__sig = 850045863;
    memset(v41.__cv_.__opaque, 0, sizeof(v41.__cv_.__opaque));
    v41.__cv_.__sig = 1018212795;
    v33 = 0;
    sub_745E8(v32, v2, &v25, &v41, &v42, &v33);
    v28 = v2;
    v29 = v25;
    v30 = 0;
    v31 = 0;
    if (sub_2F3EC0(&v28))
    {
      for (i = 2000; ; i += (std::chrono::system_clock::now().__d_.__rep_ - v6.__d_.__rep_) / -1000)
      {
        v5 = sub_2F3EC0(&v28);
        if (HIDWORD(v5))
        {
          goto LABEL_50;
        }

        if (!v5)
        {
          v17 = sub_5544(14);
          if ((*(v17 + 8) & 1) != 0 && *v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
          {
            v26 = v25;
            sub_22CE0(__p);
          }

          goto LABEL_46;
        }

        if (i <= 0)
        {
          v18 = sub_5544(14);
          if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            v26 = v25;
            sub_22CE0(__p);
          }

LABEL_50:
          sub_73C20(&v32[0].mSelector);
          std::condition_variable::~condition_variable(&v41);
          std::mutex::~mutex(&v42);
          goto LABEL_51;
        }

        v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v7 = sub_5544(14);
        if (*(v7 + 8))
        {
          v8 = *v7;
          if (*v7)
          {
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
            {
              buf.mSelector = 136315906;
              *&buf.mScope = "HALPropertySynchronizer.h";
              v35 = 1024;
              v36 = 354;
              v37 = 2080;
              v38 = "with timeout";
              v39 = 1024;
              v40 = v2;
              _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
            }
          }
        }

        sub_27A4();
        LOBYTE(__p[0]) = sub_2E6B08();
        *&buf.mSelector = &v42;
        LOBYTE(buf.mElement) = 1;
        std::mutex::lock(&v42);
        v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
        while ((v33 & 1) == 0 && v9.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
        {
          v10.__d_.__rep_ = v9.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
          if (v10.__d_.__rep_ >= 1)
          {
            std::chrono::steady_clock::now();
            v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
            if (v11.__d_.__rep_)
            {
              if (v11.__d_.__rep_ < 1)
              {
                if (v11.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                {
                  goto LABEL_26;
                }

                v12 = 0x8000000000000000;
              }

              else
              {
                if (v11.__d_.__rep_ > 0x20C49BA5E353F7)
                {
                  v12 = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_27;
                }

LABEL_26:
                v12 = 1000 * v11.__d_.__rep_;
LABEL_27:
                if (v12 > (v10.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                {
                  v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
                  std::condition_variable::__do_timed_wait(&v41, &buf, v13);
                  std::chrono::steady_clock::now();
                  goto LABEL_31;
                }
              }
            }

            else
            {
              v12 = 0;
            }

            v13.__d_.__rep_ = v12 + v10.__d_.__rep_;
            goto LABEL_30;
          }

LABEL_31:
          if (std::chrono::steady_clock::now().__d_.__rep_ >= v9.__d_.__rep_)
          {
            break;
          }
        }

        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
      }
    }

    v15 = sub_5544(14);
    if (*(v15 + 8))
    {
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v35 = 1024;
          v36 = 322;
          v37 = 1024;
          LODWORD(v38) = v2;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
        }
      }
    }

LABEL_46:
    sub_73C20(&v32[0].mSelector);
    std::condition_variable::~condition_variable(&v41);
    std::mutex::~mutex(&v42);
  }

  else
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v32[0] = v25;
      sub_22CE0(&v42);
    }

LABEL_51:
    v19 = sub_5544(26);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "EnableANCMonitorIODelegate.cpp";
      v35 = 1024;
      v36 = 90;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Timed out waiting for kAudioDevicePropertyDeviceIsRunning property on monitored aggregate device.", &buf, 0x12u);
    }
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = std::__shared_weak_count::lock(v21);
    if (v22)
    {
      v23 = v22;
      v24 = *(a1 + 24);
      if (v24)
      {
        sub_2F2F40(v24, 1);
      }

      sub_1A8C0(v23);
    }
  }
}

caulk::concurrent::message **sub_2F3D78(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C0E38;
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

void sub_2F3DF4(caulk::concurrent::message *this)
{
  *this = off_6C0E38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2F3E64(caulk::concurrent::message *this)
{
  *this = off_6C0E38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

unint64_t sub_2F3EC0(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_A2458(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_2F406C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2F408C(caulk::concurrent::message *this)
{
  *this = off_6C0E38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2F40FC(caulk::concurrent::message *this)
{
  *this = off_6C0E38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t sub_2F4158(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = result;
    v2 = *(result + 32);
    v3 = sub_5544(26);
    v4 = *v3;
    if (v2)
    {
      if (v4 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, 0x70726563u);
        if (v8 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        v10 = "EnableANCMonitorIODelegate.cpp";
        v11 = 1024;
        v12 = 69;
        v13 = 2080;
        v14 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d HandleIODidStart for port %s. Starting ANCMonitor aggregate.", buf, 0x1Cu);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return (*(**(v1 + 24) + 256))(*(v1 + 24), 0);
    }

    else
    {
      if (v4 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, 0x7073706Bu);
        v6 = v8 >= 0 ? __p : __p[0];
        *buf = 136315650;
        v10 = "EnableANCMonitorIODelegate.cpp";
        v11 = 1024;
        v12 = 61;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d HandleIODidStart for port %s. Stopping ANCMonitor aggregate.", buf, 0x1Cu);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return (*(**(v1 + 24) + 272))(*(v1 + 24), 0);
    }
  }

  return result;
}

void sub_2F437C(uint64_t a1)
{
  sub_2F43B4(a1);

  operator delete();
}

uint64_t sub_2F43B4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = sub_5544(26);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "EnableANCMonitorIODelegate.cpp";
      v9 = 1024;
      v10 = 49;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AggregateDevice_ANCMonitor should have been destroyed in EnableANCMonitorIODelegate::Teardown().This may lead to unexpected ANC behaviour due to asynchronous device destruction.", &v7, 0x12u);
    }

    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_2F44BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_2F44CC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_6C0DB8;
  operator new();
}

void sub_2F5F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, void *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, const void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a37)
  {
    sub_1A8C0(a37);
  }

  v47 = *(v45 - 168);
  if (v47)
  {
    sub_1A8C0(v47);
  }

  sub_478050(&__p, a2, a3, a4, a5, a6, a7, a8);
  sub_452F0(&a26);
  (*(*v44 + 8))(v44);
  sub_477A0(a18);
  a17 = &a20;
  sub_F5714(&a17);
  v48 = *(v43 + 16);
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2F632C(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_2F6394(void *a1, int a2, double a3, double a4, double a5)
{
  if (a3 <= 0.0 || a4 <= 0.0)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[3] = 0;
    a1[4] = 0;
    a1[2] = 0x3FF0000000000000;
  }

  else
  {
    v8 = a4 * 0.34657359;
    if (a3 <= 3.11017673)
    {
      v9 = a3;
    }

    else
    {
      v9 = 3.11017673;
    }

    v10 = v8 * v9;
    v11 = sin(v9);
    v12 = sinh(v10 / v11);

    sub_2F645C(a1, a2, v9, 1.0 / (v12 + v12), a5);
  }
}

void sub_2F645C(uint64_t a1, int a2, long double a3, double a4, double a5)
{
  v10 = cos(a3);
  if (a2 <= 5)
  {
    v26 = a5 * 0.05;
    if (a2 <= 2)
    {
      v14 = __exp10(v26);
      v37 = sin(a3) / (a4 + a4);
      if (a2 == 1)
      {
        v29 = (1.0 - v10) * 0.5;
        v28 = v29 + v29;
        v19 = v37 + 1.0;
        v38 = -2.0;
      }

      else
      {
        v29 = (v10 + 1.0) * 0.5;
        v38 = -2.0;
        v28 = v29 * -2.0;
        v19 = v37 + 1.0;
      }

      v20 = v10 * v38;
      v21 = 1.0 - v37;
      v23 = v29;
      goto LABEL_26;
    }

    if (a2 == 3)
    {
      v14 = __exp10(v26);
      v23 = sin(a3) / (a4 + a4);
      v29 = -v23;
      v19 = v23 + 1.0;
      v20 = v10 * -2.0;
      v21 = 1.0 - v23;
      v28 = 0.0;
    }

    else
    {
      if (a2 == 4)
      {
        v14 = __exp10(v26);
        v27 = sin(a3) / (a4 + a4);
        v28 = v10 * -2.0;
        v29 = 1.0;
        v19 = v27 + 1.0;
        v21 = 1.0 - v27;
        v23 = 1.0;
LABEL_25:
        v20 = v28;
        goto LABEL_26;
      }

      v14 = __exp10(v26);
      v46 = sin(a3) / (a4 + a4);
      v29 = v46 + 1.0;
      v28 = v10 * -2.0;
      v23 = 1.0 - v46;
      v21 = 1.0 - v46;
      v20 = v10 * -2.0;
      v19 = v46 + 1.0;
    }

LABEL_26:
    v49 = 1.0 / v19;
    *a1 = v20 * v49;
    *(a1 + 8) = v49 * v21;
    *(a1 + 16) = v14 * v49 * v23;
    *(a1 + 24) = v14 * v49 * v28;
    v36 = v14 * v49 * v29;
    goto LABEL_27;
  }

  if (a2 <= 8)
  {
    if (a2 != 6)
    {
      v11 = sin(a3) / (a4 + a4);
      v12 = __exp10(a5 * 0.5 * 0.05);
      v13 = sqrt(v12);
      v14 = 1.0;
      v15 = v11 * (v13 + v13);
      v16 = v10 * (v12 + -1.0);
      v17 = v10 * (v12 + 1.0);
      if (a2 == 7)
      {
        v18 = v12 + 1.0 + v16;
        v19 = v18 + v15;
        v20 = (v12 + -1.0 + v17) * -2.0;
        v21 = v18 - v15;
        v22 = v12 + 1.0 - v16;
        v23 = v12 * (v22 + v15);
        v24 = v12 + v12;
        v25 = v12 + -1.0 - v17;
      }

      else
      {
        v47 = v12 + 1.0 - v16;
        v19 = v47 + v15;
        v20 = v12 + -1.0 - v17 + v12 + -1.0 - v17;
        v21 = v47 - v15;
        v22 = v12 + 1.0 + v16;
        v23 = v12 * (v22 + v15);
        v24 = v12 * -2.0;
        v25 = v12 + -1.0 + v17;
      }

      v28 = v24 * v25;
      v29 = v12 * (v22 - v15);
      goto LABEL_26;
    }

    v39 = __exp10(a5 * 0.5 * 0.05);
    v40 = sin(a3) / (a4 / v39 + a4 / v39);
    v41 = v39 * v40;
    goto LABEL_24;
  }

  if (a2 == 9)
  {
    v42 = a5 * 0.5;
    v43 = __exp10(a5 * 0.5 * 0.25 * 0.05);
    v44 = __exp10(v42 * 0.75 * 0.05);
    v45 = (1.0 - v44 * v10 - sqrt((1.0 - v10 * v10) * -(v44 * v44) + (v44 + v44) * (1.0 - v10))) / (1.0 - v44);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *a1 = v45 * -2.0;
    *(a1 + 8) = v45 * v45;
    *(a1 + 16) = v43 * (v45 * -2.0 + 1.0 + v45 * v45);
    return;
  }

  if (a2 != 10)
  {
    v39 = __exp10(a5 * 0.5 * 0.05);
    v40 = sin(a3) / (a4 + a4);
    v41 = v40 * v39;
LABEL_24:
    v48 = v40 / v39;
    v14 = 1.0;
    v19 = v48 + 1.0;
    v28 = v10 * -2.0;
    v21 = 1.0 - v48;
    v23 = v41 + 1.0;
    v29 = 1.0 - v41;
    goto LABEL_25;
  }

  v30 = __exp10(a5 * 0.05);
  v31 = tan(a3 / (a4 + a4));
  v32 = (1.0 - v31 * (4.0 / (v30 + 1.0))) * 0.5 / (v31 * (4.0 / (v30 + 1.0)) + 1.0);
  v33 = (v30 + -1.0 + v30 + -1.0) * ((0.5 - v32) * 0.5);
  v34 = v10 * (v32 + 0.5) * -2.0;
  v35 = v32 + v32;
  *a1 = v34;
  *(a1 + 8) = v35;
  *(a1 + 16) = v33 + 1.0;
  *(a1 + 24) = v34;
  v36 = v35 - v33;
LABEL_27:
  *(a1 + 32) = v36;
}

void sub_2F6900(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *a2;
  if (*a2 == 1936092532)
  {
    if (a5 == 40)
    {
      v11 = *(a6 + 16);
      v25 = *a6;
      v26 = v11;
      v27 = *(a6 + 32);
      if (sub_2F6EBC(a1, &v25))
      {
        v12 = *(a1 + 32);
        *buf = *(a1 + 16);
        *&buf[16] = v12;
        v29 = *(a1 + 48);
        sub_2F6FB8((a1 + 80), buf, &v25);
        sub_2F70DC(a1, &v25);
        return;
      }

      v23 = sub_5544(14);
      v21 = *v23;
      if (!*v23 || !os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 136315394;
      *&buf[4] = "HP_FormatList.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 760;
      v22 = "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): given format is not supported for kAudioStreamPropertyVirtualFormat";
      goto LABEL_38;
    }

    v16 = sub_5544(14);
    v14 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_FormatList.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 754;
      v15 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyVirtualFormat";
LABEL_27:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
    }

LABEL_28:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v19 = 561211770;
    goto LABEL_40;
  }

  if (v7 != 1885762592)
  {
    if (v7 != 1853059700)
    {
      return;
    }

    if (a5 == 8)
    {
      v8 = *a6;
      if (*a6 == 0.0 || sub_D7C0C(a1, *a6))
      {

        sub_2F6D8C(a1, v8);
        return;
      }

      v24 = sub_5544(14);
      v21 = *v24;
      if (!*v24 || !os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 136315394;
      *&buf[4] = "HP_FormatList.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 746;
      v22 = "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): given sample rate is not supported for kAudioDevicePropertyNominalSampleRate";
      goto LABEL_38;
    }

    v17 = sub_5544(14);
    v14 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_FormatList.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 740;
      v15 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyNominalSampleRate";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (a5 != 40)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (!*v13 || !os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    *&buf[4] = "HP_FormatList.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 770;
    v15 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyPhysicalFormat";
    goto LABEL_27;
  }

  v9 = *(a6 + 16);
  v25 = *a6;
  v26 = v9;
  v27 = *(a6 + 32);
  if ((sub_2F6EBC(a1, &v25) & 1) == 0)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (!*v20 || !os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136315394;
    *&buf[4] = "HP_FormatList.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 776;
    v22 = "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): given format is not supported for kAudioStreamPropertyPhysicalFormat";
LABEL_38:
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
LABEL_39:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v19 = 560226676;
LABEL_40:
    exception[2] = v19;
  }

  sub_2F6FB8((a1 + 56), (a1 + 16), &v25);
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v25))
  {
    v10 = v26;
    *(a1 + 16) = v25;
    *(a1 + 32) = v10;
    *(a1 + 48) = v27;
  }
}

uint64_t sub_2F6D8C(uint64_t a1, double a2)
{
  result = sub_D7C0C(a1, a2);
  if (result)
  {
    v5 = *(a1 + 56);
    v6 = (a1 + 16);
    v7 = *(a1 + 32);
    *v13 = *(a1 + 16);
    *&v13[16] = v7;
    *&v13[32] = *(a1 + 48);
    *v13 = a2;
    if ((sub_2F72D0(v5, *(a1 + 64), v13) & 1) == 0 && *&v13[8] == 1819304813)
    {
      v9 = *(a1 + 32);
      *v13 = *v6;
      *&v13[16] = v9;
      v10 = *(a1 + 48);
      *&v13[24] = 0;
      *&v13[32] = v10;
      *v13 = a2;
      *&v13[16] = 0;
      sub_2F6FB8((a1 + 56), (a1 + 16), v13);
      v8.n128_u64[0] = *v13;
      if (*v13 != a2)
      {
        v11 = *(a1 + 32);
        *v13 = *v6;
        *&v13[16] = v11;
        *&v13[36] = HIDWORD(*(a1 + 48));
        *v13 = a2;
        memset(&v13[12], 0, 24);
        sub_2F6FB8((a1 + 56), (a1 + 16), v13);
      }
    }

    result = (*(**(a1 + 8) + 192))(*(a1 + 8), v13, v8);
    if (result)
    {
      v12 = *&v13[16];
      *v6 = *v13;
      *(a1 + 32) = v12;
      *(a1 + 48) = *&v13[32];
    }
  }

  return result;
}

uint64_t sub_2F6EBC(uint64_t a1, uint64_t a2)
{
  if (*a2 == 0.0 || (result = sub_D7C0C(a1, *a2), result))
  {
    v5 = *(a2 + 8);
    if (!v5 || (v12 = 0, v10 = 0u, v11 = 0u, DWORD2(v10) = v5, result = sub_2F72D0(*(a1 + 56), *(a1 + 64), &v10), result))
    {
      v6 = *(a2 + 28);
      if (v6)
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        HIDWORD(v11) = v6;
        result = sub_2F72D0(*(a1 + 56), *(a1 + 64), &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = 1;
      }

      if (*(a2 + 8) == 1819304813)
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        v7 = *(a2 + 16);
        v8[0] = *a2;
        v8[1] = v7;
        v9 = *(a2 + 32);
        DWORD2(v10) = DWORD2(v8[0]);
        HIDWORD(v10) = sub_20B3A8(v8, 0);
        LODWORD(v12) = v9;
        return sub_2F72D0(*(a1 + 56), *(a1 + 64), &v10);
      }
    }
  }

  return result;
}

void sub_2F6FB8(__int128 **a1, double *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v6;
  v20 = *(a3 + 32);
  *&v19[0] = 0;
  v7 = *a3;
  v8 = *a1;
  while (v8 != a1[1])
  {
    v9 = sub_5FB04(v19, v8);
    v10 = v9;
    if (v9)
    {
      if (v7 == 0.0)
      {
        v7 = *a2;
      }

      for (i = *(v8 + 5); i != *(v8 + 6); i += 2)
      {
        if (*i <= v7 && i[1] >= v7)
        {
          v16 = *v8;
          v15 = v8[1];
          *(a3 + 32) = *(v8 + 4);
          *a3 = v16;
          *(a3 + 16) = v15;
          *a3 = v7;
          goto LABEL_16;
        }
      }

      v13 = *v8;
      v14 = v8[1];
      *(a3 + 32) = *(v8 + 4);
      *a3 = v13;
      *(a3 + 16) = v14;
      *a3 = sub_23527C(**(v8 + 5), *(*(v8 + 5) + 8));
    }

    else
    {
      v8 += 4;
    }

LABEL_16:
    if (v10)
    {
      return;
    }
  }

  v17 = **a1;
  v18 = (*a1)[1];
  *(a3 + 32) = *(*a1 + 4);
  *a3 = v17;
  *(a3 + 16) = v18;
  *a3 = sub_23527C(**(*a1 + 5), *(*(*a1 + 5) + 8));
}

double sub_2F70DC(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v9 = *a2;
  v10 = v3;
  v11 = *(a2 + 4);
  if (DWORD2(v9) == 1819304813 && (~HIDWORD(v9) & 9) == 0)
  {
    LODWORD(v11) = 32;
    *buf = v9;
    *&buf[28] = HIDWORD(v10);
    HIDWORD(v13) = HIDWORD(v11);
    *&buf[12] = xmmword_5171F0;
    LODWORD(v13) = 0;
    sub_2F6FB8((a1 + 56), (a1 + 16), buf);
    if (*&buf[8] != 1819304813 || *buf != *&v9 || *&buf[28] != HIDWORD(v10))
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_FormatList.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 242;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): no reasonable format could be found", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 1852797029;
    }

    v9 = *buf;
    v10 = *&buf[16];
    v11 = v13;
  }

  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v9))
  {
    result = *&v9;
    v5 = v10;
    *(a1 + 16) = v9;
    *(a1 + 32) = v5;
    *(a1 + 48) = v11;
  }

  return result;
}

uint64_t sub_2F72D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  __s1[0] = *a3;
  __s1[1] = v5;
  v21 = *(a3 + 32);
  *&__s1[0] = 0;
  v6 = *a3;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (!memcmp(__s1, v18, 0x24uLL))
  {
    if (v6 == 0.0)
    {
LABEL_28:
      v7 = 1;
    }

    else if (a1 == a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v13 = *(a1 + 40);
        while (v13 != *(a1 + 48))
        {
          v14 = *v13;
          v15 = v13[1];
          v13 += 2;
          if (v14 <= v6 && v15 >= v6)
          {
            v7 = 1;
            break;
          }
        }

        a1 += 64;
      }

      while (a1 != a2);
    }
  }

  else
  {
    v7 = 0;
    do
    {
      if (a1 == a2)
      {
        break;
      }

      v8 = sub_5FB04(__s1, a1);
      if (v8)
      {
        if (v6 == 0.0)
        {
          goto LABEL_28;
        }

        v9 = *(a1 + 40);
        while (v9 != *(a1 + 48))
        {
          v10 = *v9;
          v11 = v9[1];
          v9 += 2;
          if (v10 <= v6 && v11 >= v6)
          {
            v7 = 1;
            break;
          }
        }
      }

      else
      {
        a1 += 64;
      }
    }

    while (!v8);
  }

  return v7 & 1;
}

__n128 sub_2F73EC(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  n128_u64 = a2[-1].n128_u64;
  n128_f64 = a2[-2].n128_f64;
  v11 = a2[-3].n128_f64;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u64[0] = *n128_u64;
        if (*n128_u64 >= *v12)
        {
          return result;
        }

LABEL_106:
        v120 = *v12;
        *v12 = *n128_u64;
        result = v120;
LABEL_107:
        *n128_u64 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v57 = (v12 + 16);
      v59 = *(v12 + 16);
      v60 = (v12 + 32);
      v61 = *(v12 + 32);
      if (v59 >= *v12)
      {
        if (v61 < v59)
        {
          result = *v57;
          *v57 = *v60;
          *v60 = result;
          if (*(v12 + 16) < *v12)
          {
            v123 = *v12;
            *v12 = *v57;
            result.n128_u64[1] = v123.n128_u64[1];
            *v57 = v123;
          }
        }
      }

      else
      {
        if (v61 < v59)
        {
          v121 = *v12;
          *v12 = *v60;
          result = v121;
          goto LABEL_176;
        }

        v125 = *v12;
        *v12 = *v57;
        *v57 = v125;
        if (v61 < *(v12 + 16))
        {
          result = *v57;
          *v57 = *v60;
LABEL_176:
          *v60 = result;
        }
      }

      result.n128_u64[0] = *n128_u64;
      if (*n128_u64 >= v60->n128_f64[0])
      {
        return result;
      }

      result = *v60;
      *v60 = *n128_u64;
      *n128_u64 = result;
      result.n128_u64[0] = v60->n128_u64[0];
      if (v60->n128_f64[0] >= v57->n128_f64[0])
      {
        return result;
      }

      result = *v57;
      *v57 = *v60;
      *v60 = result;
LABEL_180:
      result.n128_u64[0] = *(v12 + 16);
      if (result.n128_f64[0] < *v12)
      {
        v126 = *v12;
        *v12 = *v57;
        result = v126;
        *v57 = v126;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_2F7F08(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v62 = (v12 + 16);
      v64 = v12 == a2 || v62 == a2;
      if (a4)
      {
        if (!v64)
        {
          v65 = 0;
          v66 = v12;
          do
          {
            v67 = v62;
            result.n128_u64[0] = *(v66 + 16);
            if (result.n128_f64[0] < *v66)
            {
              v68 = *(v66 + 24);
              v69 = v65;
              while (1)
              {
                *(v12 + v69 + 16) = *(v12 + v69);
                if (!v69)
                {
                  break;
                }

                v70 = *(v12 + v69 - 16);
                v69 -= 16;
                if (result.n128_f64[0] >= v70)
                {
                  v71 = (v12 + v69 + 16);
                  goto LABEL_126;
                }
              }

              v71 = v12;
LABEL_126:
              *v71 = result.n128_u64[0];
              v71[1] = v68;
            }

            v62 = v67 + 1;
            v65 += 16;
            v66 = v67;
          }

          while (&v67[1] != a2);
        }
      }

      else if (!v64)
      {
        do
        {
          v98 = v62;
          result.n128_u64[0] = *(a1 + 16);
          if (result.n128_f64[0] < *a1)
          {
            v99 = *(a1 + 24);
            v100 = v62;
            do
            {
              *v100 = v100[-1];
              v101 = v100[-2].n128_f64[0];
              --v100;
            }

            while (result.n128_f64[0] < v101);
            v100->n128_u64[0] = result.n128_u64[0];
            v100->n128_u64[1] = v99;
          }

          ++v62;
          a1 = v98;
        }

        while (&v98[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v72 = (v13 - 2) >> 1;
        v73 = v72;
        do
        {
          v74 = v73;
          if (v72 >= v73)
          {
            v75 = (2 * v73) | 1;
            v76 = (v12 + 16 * v75);
            if (2 * v74 + 2 < v13 && *v76 < v76[2])
            {
              v76 += 2;
              v75 = 2 * v74 + 2;
            }

            v77 = (v12 + 16 * v74);
            v78 = *v77;
            if (*v76 >= *v77)
            {
              v79 = *(v77 + 1);
              do
              {
                v80 = v77;
                v77 = v76;
                *v80 = *v76;
                if (v72 < v75)
                {
                  break;
                }

                v81 = 2 * v75;
                v75 = (2 * v75) | 1;
                v76 = (v12 + 16 * v75);
                v82 = v81 + 2;
                if (v82 < v13 && *v76 < v76[2])
                {
                  v76 += 2;
                  v75 = v82;
                }
              }

              while (*v76 >= v78);
              *v77 = v78;
              *(v77 + 1) = v79;
            }
          }

          v73 = v74 - 1;
        }

        while (v74);
        do
        {
          v83 = 0;
          v122 = *v12;
          v84 = v12;
          do
          {
            v85 = v84;
            v86 = &v84[v83];
            v84 = v86 + 1;
            v87 = 2 * v83;
            v83 = (2 * v83) | 1;
            v88 = v87 + 2;
            if (v88 < v13)
            {
              v90 = v86[2].n128_f64[0];
              v89 = v86 + 2;
              if (v89[-1].n128_f64[0] < v90)
              {
                v84 = v89;
                v83 = v88;
              }
            }

            *v85 = *v84;
          }

          while (v83 <= ((v13 - 2) >> 1));
          if (v84 == --a2)
          {
            result = v122;
            *v84 = v122;
          }

          else
          {
            *v84 = *a2;
            result = v122;
            *a2 = v122;
            v91 = (&v84[1] - v12) >> 4;
            v92 = v91 < 2;
            v93 = v91 - 2;
            if (!v92)
            {
              v94 = v93 >> 1;
              v95 = (v12 + 16 * v94);
              result.n128_u64[0] = v84->n128_u64[0];
              if (v95->n128_f64[0] < v84->n128_f64[0])
              {
                v96 = v84->n128_i64[1];
                do
                {
                  v97 = v84;
                  v84 = v95;
                  *v97 = *v95;
                  if (!v94)
                  {
                    break;
                  }

                  v94 = (v94 - 1) >> 1;
                  v95 = (v12 + 16 * v94);
                }

                while (v95->n128_f64[0] < result.n128_f64[0]);
                v84->n128_u64[0] = result.n128_u64[0];
                v84->n128_u64[1] = v96;
              }
            }
          }

          v92 = v13-- <= 2;
        }

        while (!v92);
      }

      return result;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = *n128_u64;
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v104 = *v14;
          *v14 = *n128_u64;
          *n128_u64 = v104;
          if (*v14 < *v12)
          {
            v105 = *v12;
            *v12 = *v14;
            *v14 = v105;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v102 = *v12;
          *v12 = *n128_u64;
          goto LABEL_26;
        }

        v108 = *v12;
        *v12 = *v14;
        *v14 = v108;
        if (*n128_u64 < *v14)
        {
          v102 = *v14;
          *v14 = *n128_u64;
LABEL_26:
          *n128_u64 = v102;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 2;
      v21 = *(v14 - 2);
      v22 = *n128_f64;
      if (v21 >= *(v12 + 16))
      {
        if (v22 < v21)
        {
          v109 = *v20;
          *v20 = *n128_f64;
          *n128_f64 = v109;
          if (*v20 < *v19)
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *n128_f64;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*n128_f64 < *v20)
        {
          v111 = *v20;
          *v20 = *n128_f64;
          v23 = v111;
LABEL_38:
          *n128_f64 = v23;
        }
      }

      v26 = (v12 + 32);
      v28 = v14[2];
      v27 = (v14 + 2);
      v29 = v28;
      v30 = *v11;
      if (v28 >= *(v12 + 32))
      {
        if (v30 < v29)
        {
          v112 = *v27;
          *v27 = *v11;
          *v11 = v112;
          if (*v27 < *v26)
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11 < *v27)
        {
          v113 = *v27;
          *v27 = *v11;
          v31 = v113;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15;
      v35 = *v27;
      if (*v15 >= *v20)
      {
        if (v35 < v34)
        {
          v115 = *v15;
          *v15 = *v27;
          *v27 = v115;
          if (*v15 < *v20)
          {
            v116 = *v20;
            *v20 = *v15;
            *v15 = v116;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v114 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v117 = *v20;
        *v20 = *v15;
        *v15 = v117;
        if (*v27 < *v15)
        {
          v114 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v114;
        }
      }

      v118 = *v12;
      *v12 = *v15;
      *v15 = v118;
      goto LABEL_58;
    }

    v18 = *v12;
    if (*v12 >= *v14)
    {
      if (v16 < v18)
      {
        v106 = *v12;
        *v12 = *n128_u64;
        *n128_u64 = v106;
        if (*v12 < *v14)
        {
          v107 = *v14;
          *v14 = *v12;
          *v12 = v107;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v110 = *v14;
      *v14 = *v12;
      *v12 = v110;
      if (*n128_u64 >= *v12)
      {
        goto LABEL_58;
      }

      v103 = *v12;
      *v12 = *n128_u64;
    }

    else
    {
      v103 = *v14;
      *v14 = *n128_u64;
    }

    *n128_u64 = v103;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(v12 - 16) < *v12)
    {
      v36 = *v12;
      v37 = v12;
      do
      {
        v38 = v37;
        v39 = v37[1].n128_f64[0];
        ++v37;
      }

      while (v39 < v36.n128_f64[0]);
      v40 = a2;
      if (v38 == v12)
      {
        v40 = a2;
        do
        {
          if (v37 >= v40)
          {
            break;
          }

          v42 = v40[-1].n128_f64[0];
          --v40;
        }

        while (v42 >= v36.n128_f64[0]);
      }

      else
      {
        do
        {
          v41 = v40[-1].n128_f64[0];
          --v40;
        }

        while (v41 >= v36.n128_f64[0]);
      }

      if (v37 < v40)
      {
        v43 = v37;
        v44 = v40;
        do
        {
          v45 = *v43;
          *v43 = *v44;
          *v44 = v45;
          do
          {
            v38 = v43;
            v46 = v43[1].n128_f64[0];
            ++v43;
          }

          while (v46 < v36.n128_f64[0]);
          do
          {
            v47 = *(v44 - 2);
            v44 -= 2;
          }

          while (v47 >= v36.n128_f64[0]);
        }

        while (v43 < v44);
      }

      if (v38 != v12)
      {
        *v12 = *v38;
      }

      *v38 = v36;
      if (v37 < v40)
      {
        goto LABEL_79;
      }

      v48 = sub_2F808C(v12, v38, v36);
      v12 = v38[1].n128_u64;
      if (sub_2F808C(&v38[1], a2, v49))
      {
        a2 = v38;
        if (!v48)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v48)
      {
LABEL_79:
        sub_2F73EC(a1, v38, a3, a4 & 1);
        a4 = 0;
        v12 = v38[1].n128_u64;
      }
    }

    else
    {
      result = *v12;
      if (*v12 >= *n128_u64)
      {
        v51 = v12 + 16;
        do
        {
          v12 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (result.n128_f64[0] >= *v12);
      }

      else
      {
        do
        {
          v50 = *(v12 + 16);
          v12 += 16;
        }

        while (result.n128_f64[0] >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_f64[0];
          --v52;
        }

        while (result.n128_f64[0] < v53);
      }

      while (v12 < v52)
      {
        v119 = *v12;
        *v12 = *v52;
        *v52 = v119;
        do
        {
          v54 = *(v12 + 16);
          v12 += 16;
        }

        while (result.n128_f64[0] >= v54);
        do
        {
          v55 = v52[-1].n128_f64[0];
          --v52;
        }

        while (result.n128_f64[0] < v55);
      }

      v56 = (v12 - 16);
      if (v12 - 16 != a1)
      {
        *a1 = *v56;
      }

      a4 = 0;
      *v56 = result;
    }
  }

  v57 = (v12 + 16);
  result.n128_u64[0] = *(v12 + 16);
  v58 = *n128_u64;
  if (result.n128_f64[0] >= *v12)
  {
    if (v58 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v57;
    *v57 = *n128_u64;
    *n128_u64 = result;
    goto LABEL_180;
  }

  if (v58 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v124 = *v12;
  *v12 = *v57;
  result.n128_u64[1] = v124.n128_u64[1];
  *v57 = v124;
  result.n128_u64[0] = *n128_u64;
  if (*n128_u64 < *(v12 + 16))
  {
    result = *v57;
    *v57 = *n128_u64;
    goto LABEL_107;
  }

  return result;
}

__n128 sub_2F7F08(__n128 *a1, double *a2, double *a3, _OWORD *a4, unint64_t *a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < *a2)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < *a2)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = *a4;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_f64[0] = *a3;
      if (*a3 < *a2)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_f64[0] = *a2;
        if (*a2 < a1->n128_f64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_2F808C(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v8 = a2[-1].n128_f64[0];
      n128_f64 = a2[-1].n128_f64;
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*n128_f64 >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *n128_f64;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *n128_f64;
LABEL_13:
        *n128_f64 = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *n128_f64;
      *n128_f64 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      sub_2F7F08(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2[-1].n128_f64;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_f64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (*v20 >= v18->n128_f64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_f64[0];
    n128_f64 = a2[-1].n128_f64;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_f64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_f64[0];
    if (v30->n128_f64[0] < v11->n128_f64[0])
    {
      v34 = v30->n128_i64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = a1 + v35 + 48;
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      *(v37 + 8) = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_2F8408(uint64_t a1)
{
  *a1 = off_6C0E60;
  v2 = (a1 + 56);
  v4 = (a1 + 80);
  sub_140948(&v4);
  v4 = v2;
  sub_140948(&v4);
  return a1;
}

uint64_t sub_2F8470(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  v10 = *(a1 + 8);
  v11 = a2[2];
  v12 = sub_B46B0(v10, a2[1], v11);
  if (*a2 == 1853059700)
  {
    if (!v11)
    {
      if (a5 != 8)
      {
        v34 = sub_5544(14);
        v35 = *v34;
        if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v39 = "HP_FormatList.cpp";
          v40 = 1024;
          v41 = 1588;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 561211770;
      }

      v18 = 0;
      v19 = *a6;
LABEL_14:
      while (2)
      {
        v20 = v18;
        if (v18)
        {
          v21 = 35;
        }

        else
        {
          v21 = 38;
        }

        if (v18)
        {
          v22 = 36;
        }

        else
        {
          v22 = 39;
        }

        v23 = v10[v22] - v10[v21];
        if ((v23 & 0x7FFFFFFF8) == 0)
        {
          v18 = 1;
          if ((v20 & 1) == 0)
          {
            continue;
          }

          goto LABEL_38;
        }

        break;
      }

      v24 = 0;
      v25 = (v23 >> 3);
      v37 = v25;
      while (1)
      {
        v26 = *(*(a1 + 8) + v21 * 8);
        if (v24 < (*(*(a1 + 8) + v21 * 8 + 8) - v26) >> 3)
        {
          v27 = *(v26 + 8 * v24);
          if (v27)
          {
            if (sub_D7C0C(*(v27 + 104), v19))
            {
              return sub_2F6D8C(*(v27 + 104), v19);
            }

            v25 = v37;
          }
        }

        if (++v24 >= v25)
        {
          if ((v20 & 1) == 0)
          {
            v10 = *(a1 + 8);
            v18 = 1;
            goto LABEL_14;
          }

LABEL_38:
          v31 = sub_5544(14);
          v32 = *v31;
          if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v39 = "HP_FormatList.cpp";
            v40 = 1024;
            v41 = 1618;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): no stream supports the given sample rate", buf, 0x12u);
          }

          v33 = __cxa_allocate_exception(0x10uLL);
          *v33 = &off_6DDDD0;
          v33[2] = 560226676;
        }
      }
    }

    if (!v12)
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v39 = "HP_FormatList.cpp";
          v40 = 1024;
          v41 = 1622;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
        }
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      *v15 = &off_6DDDD0;
      v15[2] = 2003332927;
    }
  }

  else if (!v12)
  {
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "HP_FormatList.cpp";
      v40 = 1024;
      v41 = 1630;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 2003332927;
  }

  v16 = *(*v12 + 80);

  return v16();
}

void sub_2F89A8(uint64_t a1, uint64_t *a2)
{
  a2[1] = *a2;
  v43 = 0uLL;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v4 = *(a1 + 8);
  v5 = v4[36] - v4[35];
  v6 = v5 & 0x7FFFFFFF8;
  v7 = (v5 & 0x7FFFFFFF8) == 0;
  if (*(a1 + 16))
  {
    if (v6)
    {
      v8 = 0;
      v9 = 0;
      v10 = (v5 >> 3);
      v11 = 1;
      do
      {
        v12 = *(*(a1 + 8) + 280);
        if (v8 >= (*(*(a1 + 8) + 288) - v12) >> 3)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v12 + 8 * v8);
        }

        v41 = v9;
        v14 = sub_D75A8(*(v13 + 104));
        v15 = v9;
        if (v14)
        {
          for (i = 0; i != v14; ++i)
          {
            sub_D7B08(*(v13 + 104), i, &v43);
            if (v11)
            {
              v39 = v43;
              sub_D7724(&v40, &v39);
            }

            else
            {
              sub_2F8D84(&v43, a2, &v40);
            }
          }

          v15 = v40;
          v9 = v41;
        }

        sub_D79C4(a2, v15, v9, (v9 - v15) >> 4);
        v11 = 0;
        ++v8;
        v9 = v15;
      }

      while (v8 != v10);
      v4 = *(a1 + 8);
    }

    v17 = v4[39] - v4[38];
    if ((v17 & 0x7FFFFFFF8) == 0)
    {
      v25 = v40;
      if (!v40)
      {
        return;
      }

      goto LABEL_52;
    }

    v18 = 0;
    v19 = (v17 >> 3);
    do
    {
      v20 = *(*(a1 + 8) + 304);
      if (v18 >= (*(*(a1 + 8) + 312) - v20) >> 3)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v20 + 8 * v18);
      }

      v22 = v40;
      v41 = v40;
      v23 = sub_D75A8(*(v21 + 104));
      if (v23)
      {
        for (j = 0; j != v23; ++j)
        {
          sub_D7B08(*(v21 + 104), j, &v43);
          if (v7)
          {
            v39 = v43;
            sub_D7724(&v40, &v39);
          }

          else
          {
            sub_2F8D84(&v43, a2, &v40);
          }
        }

        v25 = v40;
        v22 = v41;
      }

      else
      {
        v25 = v22;
      }

      sub_D79C4(a2, v25, v22, (v22 - v25) >> 4);
      v7 = 0;
      ++v18;
    }

    while (v18 != v19);
  }

  else
  {
    if (v6)
    {
      v26 = 0;
      v25 = 0;
      v27 = (v5 >> 3);
      do
      {
        v28 = *(*(a1 + 8) + 280);
        if (v26 >= (*(*(a1 + 8) + 288) - v28) >> 3)
        {
          v29 = 0;
        }

        else
        {
          v29 = *(v28 + 8 * v26);
        }

        v30 = sub_D75A8(*(v29 + 104));
        if (v30)
        {
          for (k = 0; k != v30; ++k)
          {
            v41 = v25;
            sub_D7B08(*(v29 + 104), k, &v43);
            sub_D77F8(&v43, a2, &v40);
            v25 = v40;
            sub_D79C4(a2, v40, v41, (v41 - v40) >> 4);
          }
        }

        ++v26;
      }

      while (v26 != v27);
      v4 = *(a1 + 8);
    }

    else
    {
      v25 = 0;
    }

    v32 = v4[39] - v4[38];
    if ((v32 & 0x7FFFFFFF8) != 0)
    {
      v33 = 0;
      v34 = (v32 >> 3);
      do
      {
        v35 = *(*(a1 + 8) + 304);
        if (v33 >= (*(*(a1 + 8) + 312) - v35) >> 3)
        {
          v36 = 0;
        }

        else
        {
          v36 = *(v35 + 8 * v33);
        }

        v37 = sub_D75A8(*(v36 + 104));
        if (v37)
        {
          for (m = 0; m != v37; ++m)
          {
            v41 = v25;
            sub_D7B08(*(v36 + 104), m, &v43);
            sub_D77F8(&v43, a2, &v40);
            v25 = v40;
            sub_D79C4(a2, v40, v41, (v41 - v40) >> 4);
          }
        }

        ++v33;
      }

      while (v33 != v34);
    }
  }

  if (!v25)
  {
    return;
  }

LABEL_52:

  operator delete(v25);
}

void sub_2F8D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2F8D84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v8 = *(a1 + 8);
      *&v9 = *v4;
      if (v8 >= *v4)
      {
        v10 = *(v4 + 8);
        if (*a1 <= v10)
        {
          if (*a1 >= *&v9)
          {
            *&v9 = *a1;
          }

          if (v10 < v8)
          {
            v8 = *(v4 + 8);
          }

          *(&v9 + 1) = v8;
          v11 = v9;
          sub_D7724(a3, &v11);
          v3 = a2[1];
        }
      }

      v4 += 16;
    }

    while (v4 != v3);
  }
}

uint64_t sub_2F8E1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = *a2;
  v9 = a2 + 4;
  v8 = *(a2 + 1);
  v22 = *(v9 + 4);
  v10 = sub_B46B0(*(a1 + 8), v8, v22);
  if (*a2 == 1853059700)
  {
    return 8;
  }

  if (*a2 != 1853059619)
  {
    if (!v10)
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_FormatList.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1507;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003332927;
    }

    HIDWORD(v21) = 1735159650;
    v11 = v22;
    if (v22)
    {
      v11 = v22 - v10[23] + 1;
    }

    goto LABEL_7;
  }

  if (v22)
  {
    if (!v10)
    {
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_FormatList.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1499;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      *v20 = &off_6DDDD0;
      v20[2] = 2003332927;
    }

    HIDWORD(v21) = 1735159650;
    v11 = v22 - v10[23] + 1;
LABEL_7:
    v22 = v11;
    return (*(*v10 + 64))(v10, &v21, a3, a4);
  }

  memset(buf, 0, sizeof(buf));
  sub_2F89A8(a1, buf);
  v13 = *buf;
  v14 = *&buf[8];
  if (*buf)
  {
    operator delete(*buf);
  }

  return (v14 - v13) & 0xFFFFFFF0;
}

void sub_2F9134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2F9154(uint64_t a1, uint64_t *a2)
{
  v11 = *a2;
  v4 = a2 + 4;
  v3 = *(a2 + 1);
  v12 = *(v4 + 4);
  v5 = sub_B46B0(*(a1 + 8), v3, v12);
  if (*a2 == 1853059700)
  {
    return 1;
  }

  if (*a2 == 1853059619)
  {
    return 0;
  }

  if (!v5)
  {
    v8 = *sub_5544(14);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "HP_FormatList.cpp";
        v15 = 1024;
        v16 = 1468;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  HIDWORD(v11) = 1735159650;
  v7 = v12;
  if (v12)
  {
    v7 = v12 - v5[23] + 1;
  }

  v12 = v7;
  return (*(*v5 + 56))(v5, &v11);
}

void sub_2F9300(uint64_t a1, char *__src, _OWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 4) + 1;
    if (v11 >> 60)
    {
      sub_189A00();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    if (v14)
    {
      sub_1E6364(v14);
    }

    v16 = (16 * v15);
    v17 = 16 * v15;
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v18 = 1;
        }

        else
        {
          v18 = v12 >> 3;
        }

        sub_1E6364(v18);
      }

      v16 = (v16 - (((v12 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v17 = v16;
    }

    *v16 = *a3;
    v19 = v17 + 16;
    memcpy((v17 + 16), __src, *(a1 + 8) - __src);
    v20 = *a1;
    v24 = (v19 + *(a1 + 8) - __src);
    *(a1 + 8) = __src;
    v21 = (__src - v20);
    v22 = v16 - (__src - v20);
    memcpy(v22, v20, v21);
    v23 = *a1;
    *a1 = v22;
    *(a1 + 8) = v24;
    if (v23)
    {

      operator delete(v23);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 16;
  }

  else
  {
    v8 = __src + 16;
    if (v6 < 0x10)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = v6 + 16;
      *v6 = *(v6 - 1);
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 16, __src, v6 - v8);
    }

    *__src = *a3;
  }
}

void sub_2F951C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2F9534(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2F957C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a2 + 24);
  sub_25704(&v27, (v5 + 32), "", 55);
  v6 = v27;
  v7 = *(v27 + 200);
  if (v7)
  {
    v8 = *(v27 + 144);
    v9 = *(v27 + 192);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = std::__shared_weak_count::lock(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v10)
    {
      if (v9)
      {
        sub_2FBAF8(v9, 1, *(a2 + 12), *(a2 + 184), *(v5 + 72), a3);
        (*(*v9 + 248))(&v25, v9, 1, v8);
        (*(*v9 + 256))(&v24, v9, 1, v8);
        if (v26 && v26->__shared_owners_ != -1)
        {
          v11 = (*(*v9 + 240))(v9, v8);
          v22 = 0x6F7574706D757465;
          v23 = v11;
          if ((*(*v9 + 16))(v9, &v22))
          {
            buf = 0;
            (*(*v9 + 48))(v9, &v22, 0, 0, 4, &buf);
          }

          v37[0] = v6;
          v37[1] = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(v28 + 2, 1uLL, memory_order_relaxed);
          }

          sub_CF934(v39, v37, 1);
          operator new();
        }

        v12 = sub_5544(14);
        v13 = *v12;
        if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          buf = 136315394;
          buf_4 = "RoutingHandler_Playback_Unk.cpp";
          v31 = 1024;
          v32 = 70;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate mute control.", &buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unable to locate mute control.");
      }
    }
  }

  v15 = sub_5544(14);
  v16 = *v15;
  if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
  {
    (*(*v6 + 144))(v39, v6);
    v17 = SHIBYTE(v40);
    v18 = *v39;
    sub_22170(v37, v6[36]);
    v19 = v39;
    if (v17 < 0)
    {
      v19 = v18;
    }

    if (v38 >= 0)
    {
      v20 = v37;
    }

    else
    {
      v20 = v37[0];
    }

    buf = 136315906;
    buf_4 = "RoutingHandler_Playback_Unk.cpp";
    v31 = 1024;
    v32 = 63;
    v33 = 2080;
    v34 = v19;
    v35 = 2080;
    v36 = v20;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [ioDevice.get() is NULL]: could not get device for port \\%s\\ (type: '%s').", &buf, 0x26u);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(*v39);
    }
  }

  v21 = __cxa_allocate_exception(0x10uLL);
  *v21 = &off_6DDDD0;
  v21[2] = 2003329396;
}

void sub_2F9E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, char a37)
{
  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  if (v37)
  {
    sub_1A8C0(v37);
  }

  if (a35)
  {
    sub_1A8C0(a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_2FA158(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_2FA17C(uint64_t a1, uint64_t a2)
{
  if ((sub_5BA08(a2) & 1) != 0 && (v7 = sub_59580(a2)) != 0 && (v6 = 0, !sub_5C060(a2)))
  {
    v5 = v6;
    sub_6A9B8(&v4, &v5);
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void sub_2FA254(uint64_t a1, float *a2, float *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v22 = *(a4 + 16);
      v7 = v22;
      *__p = *a4;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      v8 = *v6;
      v9 = HIBYTE(v7);
      v10 = v9;
      if (v9 >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = __p[1];
      }

      sub_B0848(&v24, (v11 + 2));
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v24;
      }

      else
      {
        v12 = v24.__r_.__value_.__r.__words[0];
      }

      if (v11)
      {
        if (v10 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        memmove(v12, v13, v11);
      }

      strcpy(&v11[v12], ", ");
      std::to_string(&v23, v8);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v23;
      }

      else
      {
        v14 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v24, v14, size);
      v17 = v16->__r_.__value_.__r.__words[0];
      v25[0] = v16->__r_.__value_.__l.__size_;
      *(v25 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
      v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v19 = v25[0];
      *a4 = v17;
      *(a4 + 8) = v19;
      *(a4 + 15) = *(v25 + 7);
      *(a4 + 23) = v18;
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      ++v6;
    }

    while (v6 != a3);
  }

  *a1 = *a4;
  *(a1 + 16) = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
}

void sub_2FA428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FA470(uint64_t a1)
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