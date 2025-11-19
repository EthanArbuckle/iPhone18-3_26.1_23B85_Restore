uint64_t sub_136D10()
{
  if ((byte_6E8456 & 1) == 0)
  {
    v5 = 0;
    if (sub_1235F4(@"Force24Bit", @"com.apple.audio.virtualaudio", &v5))
    {
      v0 = *sub_5544(14);
      v1 = v0;
      if (v0)
      {
        v2 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
        v3 = v5;
        if (v2)
        {
          *buf = 136315906;
          v7 = "RunTimeDefaults.mm";
          v8 = 1024;
          v9 = 1469;
          v10 = 2080;
          v11 = "DisableEANC";
          v12 = 1024;
          v13 = v5;
          _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
        }
      }

      else
      {
        v3 = v5;
      }

      byte_6E8455 = v3 != 0;
    }

    byte_6E8456 = 1;
  }

  return byte_6E8455;
}

const void **sub_136E60(const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      sub_189A00();
    }

    v7 = v3 - *result;
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

    v15[4] = v2;
    if (v9)
    {
      sub_1DC690(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = sub_A0650(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void sub_136F58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x100000000) == 0)
  {
    return;
  }

  v4 = a2;
  v6 = sub_5544(23);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    sub_3B6A28(&__p, *a1, a1[1]);
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v29 = "VirtualStream.cpp";
    v30 = 1024;
    v31 = 286;
    v32 = 2080;
    v33 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Format list before culling: %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v4 == 2)
  {
    if (!a3)
    {
      v24 = sub_5544(14);
      v25 = *v24;
      if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "VirtualStream.cpp";
        v30 = 1024;
        v31 = 298;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inAggregateDevice is NULL]: AggregateDevice was not specified for kCullNonMatching sample rate culling policy.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "AggregateDevice was not specified for kCullNonMatching sample rate culling policy.");
    }

    (*(*a3 + 104))(a3);
    v15 = *a1;
    v14 = a1[1];
    if (*a1 == v14)
    {
LABEL_50:
      if (v15 != v14)
      {
        a1[1] = v15;
      }

      goto LABEL_15;
    }

    while (1)
    {
      if (*v15 == 0.0)
      {
        if (*(v15 + 40) >= v13 && *(v15 + 48) <= v13)
        {
LABEL_37:
          if (v15 == v14)
          {
            goto LABEL_50;
          }

          v19 = v15 + 56;
          if (v15 + 56 == v14)
          {
            goto LABEL_50;
          }

          while (1)
          {
            if (*v19 == 0.0)
            {
              if (*(v19 + 40) >= v13 && *(v19 + 48) <= v13)
              {
                goto LABEL_46;
              }
            }

            else if (*v19 == v13)
            {
              goto LABEL_46;
            }

            v21 = *v19;
            v22 = *(v19 + 16);
            v23 = *(v19 + 32);
            *(v15 + 48) = *(v19 + 48);
            *(v15 + 16) = v22;
            *(v15 + 32) = v23;
            *v15 = v21;
            v15 += 56;
LABEL_46:
            v19 += 56;
            if (v19 == v14)
            {
              v14 = a1[1];
              goto LABEL_50;
            }
          }
        }
      }

      else if (*v15 == v13)
      {
        goto LABEL_37;
      }

      v15 += 56;
      if (v15 == v14)
      {
        goto LABEL_15;
      }
    }
  }

  if (v4 == 1)
  {
    v9 = 48000.0;
  }

  else
  {
    if (v4)
    {
      v17 = sub_5544(23);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v29 = "VirtualStream.cpp";
        v30 = 1024;
        v31 = 302;
        v32 = 1024;
        LODWORD(v33) = v4;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unexpected sample rate policy value %d", buf, 0x18u);
      }

      goto LABEL_15;
    }

    v9 = 16000.0;
  }

  sub_3B6B40(a1, v9);
LABEL_15:
  v10 = sub_5544(23);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    sub_3B6A28(&__p, *a1, a1[1]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v29 = "VirtualStream.cpp";
    v30 = 1024;
    v31 = 305;
    v32 = 2080;
    v33 = p_p;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Format list after culling: %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_13738C(uint64_t a1)
{
  if ((*(a1 + 136) & 1) == 0)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v8 = "VirtualAudio_DevicePropertyManager.cpp";
        v9 = 1024;
        v10 = 404;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VirtualAudio_DevicePropertyManager has not been initialized.", buf, 0x12u);
      }
    }
  }

  v2 = *(a1 + 32);
  v5 = a1 + 32;
  v6 = (*(v2 + 16))(a1 + 32);
  sub_ED818(buf, a1);
}

void sub_13755C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1375B8(uint64_t result)
{
  v1 = *(result + 872);
  if (v1)
  {
    v2 = *(v1 + 292);
    v3 = v2 == 1986556788 || v2 == 1987211117;
    if (v3 || v2 == 1987208039)
    {
      v5 = result;
      v6 = sub_5544(1);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        sub_23148(__p, (*(v5 + 872) + 8));
        if (v10 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Device.cpp";
        v12 = 1024;
        v13 = 5209;
        v14 = 2080;
        v15 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Identifying speech detection VAD (%s) for the HAL.", buf, 0x1Cu);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      LODWORD(__p[0]) = 1;
      strcpy(buf, "rddsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      return (*(**(v5 + 872) + 48))(*(v5 + 872), buf, 0, 0, 4, __p);
    }
  }

  return result;
}

void sub_137748(uint64_t a1, uint64_t *a2)
{
  v4 = sub_368114(a1);
  if (!v4 || (v5 = atomic_load((v4 + 96)), v5 != pthread_self()))
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "VirtualAudio_DevicePropertyCache.cpp";
      v10 = 1024;
      v11 = 411;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Cache mutex not held by current thread.", &v8, 0x12u);
    }
  }

  std::mutex::lock((a1 + 80));
  sub_163678(a2, *(a1 + 16), -1431655765 * ((*(a1 + 152) - *(a1 + 144)) >> 2), *(a1 + 144));
  *(a1 + 152) = *(a1 + 144);
  std::mutex::unlock((a1 + 80));
}

void sub_137870(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_13789C(uint64_t a1)
{
  memset(&v56, 0, sizeof(v56));
  sub_22170(&v60, *(a1 + 384));
  v1 = std::string::insert(&v60, 0, "[ type: ", 8uLL);
  v2 = *&v1->__r_.__value_.__l.__data_;
  v62 = v1->__r_.__value_.__r.__words[2];
  __p = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  if (v62 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v62 >= 0)
  {
    v4 = HIBYTE(v62);
  }

  else
  {
    v4 = *(&__p + 1);
  }

  std::string::append(&v56, p_p, v4);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  std::to_string(&v60, *(a1 + 8));
  v5 = std::string::insert(&v60, 0, "; id: ", 6uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v62 = v5->__r_.__value_.__r.__words[2];
  __p = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v62 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  if (v62 >= 0)
  {
    v8 = HIBYTE(v62);
  }

  else
  {
    v8 = *(&__p + 1);
  }

  std::string::append(&v56, v7, v8);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  snprintf(&__str, 0x13uLL, "%p", a1);
  sub_53E8(&v60, &__str);
  v9 = std::string::insert(&v60, 0, "; addr: ", 8uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v62 = v9->__r_.__value_.__r.__words[2];
  __p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v62 >= 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  if (v62 >= 0)
  {
    v12 = HIBYTE(v62);
  }

  else
  {
    v12 = *(&__p + 1);
  }

  std::string::append(&v56, v11, v12);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  std::to_string(&v60, *(a1 + 388));
  v13 = std::string::insert(&v60, 0, "; context id: ", 0xEuLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v62 = v13->__r_.__value_.__r.__words[2];
  __p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v62 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v62 >= 0)
  {
    v16 = HIBYTE(v62);
  }

  else
  {
    v16 = *(&__p + 1);
  }

  std::string::append(&v56, v15, v16);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v17 = (*(*a1 + 128))(a1);
  sub_22170(&v60, v17);
  v18 = std::string::insert(&v60, 0, "; hidden: ", 0xAuLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v62 = v18->__r_.__value_.__r.__words[2];
  __p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v62 >= 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if (v62 >= 0)
  {
    v21 = HIBYTE(v62);
  }

  else
  {
    v21 = *(&__p + 1);
  }

  std::string::append(&v56, v20, v21);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  sub_53E8(&v53, "{ ");
  v22 = 0;
  v23 = 1;
  do
  {
    v52 = v22;
    v24 = 304;
    if (v23)
    {
      v24 = 280;
    }

    v25 = 312;
    if (v23)
    {
      v25 = 288;
    }

    v26 = (a1 + v24);
    v27 = *(a1 + v25) - *(a1 + v24);
    if ((v27 & 0x7FFFFFFF8) != 0)
    {
      v28 = 0;
      if (v23)
      {
        v29 = "i/";
      }

      else
      {
        v29 = "o/";
      }

      v30 = (v27 >> 3);
      do
      {
        if (v28 >= (v26[1] - *v26) >> 3)
        {
          v31 = 0;
        }

        else
        {
          v31 = *(*v26 + 8 * v28);
        }

        std::to_string(&v59, v31[2]);
        v32 = std::string::insert(&v59, 0, v29, 2uLL);
        v33 = *&v32->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        v34 = std::string::append(&__str, "/", 1uLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        snprintf(__s, 0x13uLL, "%p", v31);
        sub_53E8(v57, __s);
        if ((v58 & 0x80u) == 0)
        {
          v36 = v57;
        }

        else
        {
          v36 = v57[0];
        }

        if ((v58 & 0x80u) == 0)
        {
          v37 = v58;
        }

        else
        {
          v37 = v57[1];
        }

        v38 = std::string::append(&v60, v36, v37);
        v39 = *&v38->__r_.__value_.__l.__data_;
        v62 = v38->__r_.__value_.__r.__words[2];
        __p = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        if (v62 >= 0)
        {
          v40 = &__p;
        }

        else
        {
          v40 = __p;
        }

        if (v62 >= 0)
        {
          v41 = HIBYTE(v62);
        }

        else
        {
          v41 = *(&__p + 1);
        }

        std::string::append(&v53, v40, v41);
        if (SHIBYTE(v62) < 0)
        {
          operator delete(__p);
        }

        if (v58 < 0)
        {
          operator delete(v57[0]);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (((++v28 >= v30) & (v23 ^ 1)) == 0)
        {
          std::string::append(&v53, ", ", 2uLL);
        }
      }

      while (v30 != v28);
    }

    v23 = 0;
    v22 = 1;
  }

  while ((v52 & 1) == 0);
  std::string::append(&v53, " }", 2uLL);
  v42 = std::string::insert(&v53, 0, "; VA strms: ", 0xCuLL);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v55 = v42->__r_.__value_.__r.__words[2];
  *v54 = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  if (v55 >= 0)
  {
    v44 = v54;
  }

  else
  {
    v44 = v54[0];
  }

  if (v55 >= 0)
  {
    v45 = HIBYTE(v55);
  }

  else
  {
    v45 = v54[1];
  }

  std::string::append(&v56, v44, v45);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v46 = *(a1 + 872);
  if (v46)
  {
    sub_23148(&v60, v46 + 2);
  }

  else
  {
    sub_53E8(&v60, "null");
  }

  v47 = std::string::insert(&v60, 0, "; agg dev: ", 0xBuLL);
  v48 = *&v47->__r_.__value_.__l.__data_;
  v62 = v47->__r_.__value_.__r.__words[2];
  __p = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  if (v62 >= 0)
  {
    v49 = &__p;
  }

  else
  {
    v49 = __p;
  }

  if (v62 >= 0)
  {
    v50 = HIBYTE(v62);
  }

  else
  {
    v50 = *(&__p + 1);
  }

  std::string::append(&v56, v49, v50);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  std::string::append(&v56, " ]", 2uLL);
  sub_11A51C(a1 + 24, &v56);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }
}

void sub_137F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1380B0(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 184);
  v3 = *(a1 + 192);
  if (v3 != (a1 + 184))
  {
    do
    {
      v5 = v3[3];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = v3[2];
          if (v8 && (*(*v8 + 16))(v3[2], a2))
          {
            v12 = (*(*v8 + 120))(v8);
            sub_1A8C0(v7);
            v10 = v12;
            v9 = 0x100000000;
            return v10 | v9;
          }

          sub_1A8C0(v7);
        }
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

_BYTE *sub_1381B4(void *a1, int a2, int a3)
{
  sub_27A4();
  v60 = (*(qword_6E94F8 + 16))();
  v6 = a1[54];
  v7 = sub_5544(1);
  if (*(v7 + 8))
  {
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = "not ";
        v65 = "VirtualAudio_Device.cpp";
        *buf = 136315650;
        if (v6)
        {
          v9 = "";
        }

        v66 = 1024;
        v67 = 1781;
        v68 = 2080;
        v69 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Currently sample rate changes are %sblocked", buf, 0x1Cu);
      }
    }
  }

  if (!v6)
  {
    v10 = sub_5544(1);
    if (*(v10 + 8))
    {
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          memset(&v59, 0, sizeof(v59));
          std::string::append(&v59, "[ ", 2uLL);
          v12 = a1[52];
          v13 = a1 + 53;
          if (v12 != a1 + 53)
          {
            do
            {
              v14 = v12[1];
              v15 = v12;
              if (v14)
              {
                do
                {
                  v16 = v14;
                  v14 = *v14;
                }

                while (v14);
              }

              else
              {
                do
                {
                  v16 = v15[2];
                  v51 = *v16 == v15;
                  v15 = v16;
                }

                while (!v51);
              }

              v17 = *(v12 + 7);
              v18 = "????";
              if (v17 == 1)
              {
                v18 = "Telephony Route";
              }

              if (v17)
              {
                v19 = v18;
              }

              else
              {
                v19 = "Shared Hardware";
              }

              sub_53E8(&v61, v19);
              if (v16 == v13)
              {
                v20 = "";
              }

              else
              {
                v20 = ", ";
              }

              v21 = std::string::append(&v61, v20, 2 * (v16 != v13));
              v22 = *&v21->__r_.__value_.__l.__data_;
              v63 = v21->__r_.__value_.__r.__words[2];
              *__p = v22;
              v21->__r_.__value_.__l.__size_ = 0;
              v21->__r_.__value_.__r.__words[2] = 0;
              v21->__r_.__value_.__r.__words[0] = 0;
              if (v63 >= 0)
              {
                v23 = __p;
              }

              else
              {
                v23 = __p[0];
              }

              if (v63 >= 0)
              {
                v24 = HIBYTE(v63);
              }

              else
              {
                v24 = __p[1];
              }

              std::string::append(&v59, v23, v24);
              if (SHIBYTE(v63) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v61.__r_.__value_.__l.__data_);
              }

              v12 = v16;
            }

            while (v16 != v13);
          }

          std::string::append(&v59, " ]", 2uLL);
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v59;
          }

          else
          {
            v25 = v59.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          v65 = "VirtualAudio_Device.cpp";
          v66 = 1024;
          v67 = 1783;
          v68 = 2080;
          v69 = v25;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Current Assertions: %s", buf, 0x1Cu);
          if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v59.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  v26 = a1[53];
  if (a2)
  {
    if (!v26)
    {
LABEL_49:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v27 = v26;
        v28 = *(v26 + 28);
        if (v28 <= a3)
        {
          break;
        }

        v26 = *v26;
        if (!*v27)
        {
          goto LABEL_49;
        }
      }

      if (v28 >= a3)
      {
        break;
      }

      v26 = *(v26 + 8);
      if (!v26)
      {
        goto LABEL_49;
      }
    }

    v37 = sub_5544(1);
    if (*(v37 + 8))
    {
      v32 = *v37;
      if (*v37)
      {
        if (os_log_type_enabled(*v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = "????";
          if (a3 == 1)
          {
            v38 = "Telephony Route";
          }

          if (a3)
          {
            v39 = v38;
          }

          else
          {
            v39 = "Shared Hardware";
          }

          sub_53E8(__p, v39);
          if (v63 >= 0)
          {
            v40 = __p;
          }

          else
          {
            v40 = __p[0];
          }

          *buf = 136315650;
          v65 = "VirtualAudio_Device.cpp";
          v66 = 1024;
          v67 = 1788;
          v68 = 2080;
          v69 = v40;
          v36 = "%25s:%-5d %s already exists within mSampleRateAssertions";
LABEL_81:
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, v36, buf, 0x1Cu);
          if ((SHIBYTE(v63) & 0x80000000) == 0)
          {
            goto LABEL_93;
          }

          v41 = __p[0];
          goto LABEL_92;
        }
      }
    }
  }

  else
  {
    if (v26)
    {
      v29 = a1 + 53;
      v30 = a1[53];
      do
      {
        if (*(v30 + 28) >= a3)
        {
          v29 = v30;
        }

        v30 = *(v30 + 8 * (*(v30 + 28) < a3));
      }

      while (v30);
      if (v29 != a1 + 53 && *(v29 + 7) <= a3)
      {
        v42 = v29[1];
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          v44 = v29;
          do
          {
            v43 = v44[2];
            v51 = *v43 == v44;
            v44 = v43;
          }

          while (!v51);
        }

        if (a1[52] == v29)
        {
          a1[52] = v43;
        }

        --a1[54];
        sub_75234(v26, v29);
        v41 = v29;
LABEL_92:
        operator delete(v41);
        goto LABEL_93;
      }
    }

    v31 = sub_5544(1);
    if (*(v31 + 8))
    {
      v32 = *v31;
      if (*v31)
      {
        if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
        {
          v33 = "????";
          if (a3 == 1)
          {
            v33 = "Telephony Route";
          }

          if (a3)
          {
            v34 = v33;
          }

          else
          {
            v34 = "Shared Hardware";
          }

          sub_53E8(__p, v34);
          if (v63 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          *buf = 136315650;
          v65 = "VirtualAudio_Device.cpp";
          v66 = 1024;
          v67 = 1798;
          v68 = 2080;
          v69 = v35;
          v36 = "%25s:%-5d Unable to find assertion %s within mSampleRateAssertions";
          goto LABEL_81;
        }
      }
    }
  }

LABEL_93:
  v45 = a1[54];
  if ((v6 != 0) != (v45 != 0))
  {
    v46 = sub_5544(1);
    if (*(v46 + 8))
    {
      v47 = *v46;
      if (*v46)
      {
        if (os_log_type_enabled(*v46, OS_LOG_TYPE_DEBUG))
        {
          v48 = "un";
          v65 = "VirtualAudio_Device.cpp";
          *buf = 136315650;
          if (v45)
          {
            v48 = "";
          }

          v66 = 1024;
          v67 = 1805;
          v68 = 2080;
          v69 = v48;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating streams to %sblock sample rate changes", buf, 0x1Cu);
        }
      }
    }

    v49 = 1;
    do
    {
      v50 = v49;
      v51 = (v49 & 1) == 0;
      if (v49)
      {
        v52 = 35;
      }

      else
      {
        v52 = 38;
      }

      if (v51)
      {
        v53 = 39;
      }

      else
      {
        v53 = 36;
      }

      v54 = a1[v52];
      v55 = a1[v53] - v54;
      if ((v55 & 0x7FFFFFFF8) != 0)
      {
        v56 = 0;
        v57 = v55 >> 3;
        if (v57 <= 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = v57;
        }

        do
        {
          *(*(v54 + 8 * v56++) + 129) = v45 != 0;
        }

        while (v57 != v56);
      }

      v49 = 0;
    }

    while ((v50 & 1) != 0);
  }

  return sub_210C50(&v60);
}

void sub_138938(objc_class *a1)
{
  v2 = *(a1 + 55);
  if (v2)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19)
      {
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *v28 = 136315394;
          *&v28[4] = "VirtualAudio_DevicePropertyManager.cpp";
          *&v28[12] = 1024;
          *&v28[14] = 313;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VirtualAudio_DevicePropertyManager has not been initialized.", v28, 0x12u);
        }
      }
    }

    v3 = *(v2 + 32);
    v22 = v2 + 32;
    v23 = (*(v3 + 16))();
    v4 = *(v2 + 152);
    *v28 = *(v2 + 144);
    *&v28[8] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(v2 + 168);
    *&v28[16] = *(v2 + 160);
    v29 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(v2 + 184);
    v30 = *(v2 + 176);
    v31 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(v2 + 200);
    v32 = *(v2 + 192);
    v33 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(v2 + 216);
    v34 = *(v2 + 208);
    v35 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    for (i = 0; i != 80; i += 16)
    {
      if (!*&v28[i])
      {
        v10 = sub_5544(14);
        v11 = *v10;
        if (*v10)
        {
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v25 = "VirtualAudio_DevicePropertyManager.cpp";
            v26 = 1024;
            v27 = 320;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: PropertyCache is NULL", buf, 0x12u);
          }
        }
      }

      sub_13E020(*&v28[i]);
    }

    for (j = 72; j != -8; j -= 16)
    {
      v13 = *&v28[j];
      if (v13)
      {
        sub_1A8C0(v13);
      }
    }

    for (k = *(v2 + 232); k != v2 + 224; k = *(k + 8))
    {
      sub_13E020(*(k + 16));
      sub_165C3C(v2 + 320, *(k + 16));
    }

    sub_87980((v2 + 224));
    for (m = *(v2 + 256); m != v2 + 248; m = *(m + 8))
    {
      sub_13E020(*(m + 16));
      sub_165C3C(v2 + 320, *(m + 16));
    }

    sub_87980((v2 + 248));
    for (n = *(v2 + 280); n != v2 + 272; n = *(n + 8))
    {
      sub_13E020(*(n + 16));
      sub_165C3C(v2 + 320, *(n + 16));
    }

    sub_87980((v2 + 272));
    for (ii = *(v2 + 304); ii != v2 + 296; ii = *(ii + 8))
    {
      sub_13E020(*(ii + 16));
      sub_165C3C(v2 + 320, *(ii + 16));
    }

    sub_87980((v2 + 296));
    if (v23 == 1)
    {
      (*(*v22 + 24))(v22);
    }
  }

  v18 = *(a1 + 109);
  if (v18)
  {
    (*(*v18 + 176))(v18);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 0x40000000;
  v21[2] = sub_1345DC;
  v21[3] = &unk_6B9860;
  v21[4] = a1;
  sub_138DB0(v21);
  sub_DDF68();
  sub_DDFE4(a1);
}

void sub_138D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v24 = 72;
  while (1)
  {
    v25 = *(&a23 + v24);
    if (v25)
    {
      sub_1A8C0(v25);
    }

    v24 -= 16;
    if (v24 == -8)
    {
      sub_224F4C(&a17);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_1390FC(uint64_t a1, uint64_t a2)
{
  v31 = 0x676C6F6261677270;
  v32 = 0;
  v3 = *(a1 + 872);
  if (!v3)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "VirtualAudio_Device.cpp";
      v35 = 1024;
      v36 = 669;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (!*(a2 + 872))
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "VirtualAudio_Device.cpp";
      v35 = 1024;
      v36 = 670;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v28, "Precondition failure.");
  }

  v5 = (*(*v3 + 16))(v3, &v31);
  if ((v5 & (*(**(a2 + 872) + 16))(*(a2 + 872), &v31)) != 1)
  {
    return 0;
  }

  v6 = (*(**(a1 + 872) + 32))(*(a1 + 872), &v31, 0, 0);
  v29 = &v29;
  *buf = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v29 - v8;
  (*(**v10 + 40))(*v10, &v31, 0, 0, buf, &v29 - v8, v7);
  v11 = (*(**(a2 + 872) + 32))(*(a2 + 872), &v31, 0, 0);
  v30 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v29 - v13;
  (*(**v15 + 40))(*v15, &v31, 0, 0, &v30, &v29 - v13, v12);
  if (*buf < 4u)
  {
    return 0;
  }

  v17 = 0;
  v18 = v30;
  v19 = *buf >> 2;
  while (((*(**(a2 + 872) + 488))(*(a2 + 872), *&v9[4 * v17]) & 1) == 0)
  {
    v20 = v18 >> 2;
    v21 = v14;
    if (v18 >= 4)
    {
      do
      {
        v22 = *v21++;
        if (*&v9[4 * v17] == v22 || ((*(**(a1 + 872) + 488))(*(a1 + 872)) & 1) != 0)
        {
          return 1;
        }
      }

      while (--v20);
    }

    if (++v17 == v19)
    {
      return 0;
    }
  }

  return 1;
}

void sub_13958C(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  if (*a2 != 1634169456)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "AggregateDevice_CommonBase.cpp";
      v29 = 1024;
      v30 = 3288;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v10 = *a5;
  if (v10 < (*(*a1 + 32))(a1))
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v24 = *a2;
      v25 = a2[2];
      sub_22CE0(&__p);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = &off_6DDDD0;
    v23[2] = 561211770;
  }

  v11 = a1 + 23;
  v12 = a1[24];
  if (v12 == v11)
  {
    v18 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = v12[3];
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
        if (v15)
        {
          v16 = v15;
          v17 = v12[2];
          if (v17)
          {
            *(a6 + 4 * v13++) = (*(*v17 + 120))(v17);
          }

          sub_1A8C0(v16);
        }
      }

      v12 = v12[1];
    }

    while (v12 != v11);
    v18 = 4 * v13;
  }

  *a5 = v18;
}

void sub_1398C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_13990C(uint64_t a1, int a2)
{
  v2 = (a1 + 184);
  v3 = *(a1 + 192);
  if (v3 != (a1 + 184))
  {
    while (1)
    {
      v5 = v3[3];
      if (!v5)
      {
        goto LABEL_19;
      }

      v6 = std::__shared_weak_count::lock(v5);
      if (!v6)
      {
        goto LABEL_19;
      }

      v7 = v6;
      v8 = v3[2];
      if (!v8)
      {
        goto LABEL_18;
      }

      (*(*v8 + 200))(&v13);
      if (!v14)
      {
        goto LABEL_18;
      }

      v9 = std::__shared_weak_count::lock(v14);
      if (v9)
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (!v10)
      {
        break;
      }

      v11 = (*(*v10 + 120))(v10);
      if (v9)
      {
        sub_1A8C0(v9);
      }

      sub_1A8C0(v7);
      if (v11 == a2)
      {
        return 1;
      }

LABEL_19:
      v3 = v3[1];
      if (v3 == v2)
      {
        return 0;
      }
    }

    if (v9)
    {
      sub_1A8C0(v9);
    }

LABEL_18:
    sub_1A8C0(v7);
    goto LABEL_19;
  }

  return 0;
}

void sub_139A38(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_1A8C0(v2);
  }

  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_139A68(uint64_t a1, int a2)
{
  sub_27A4();
  v65 = (*(qword_6E94F8 + 16))();
  v4 = a1;
  sub_A1DF4(buf, a1);
  v5 = *buf;
  v6 = *&buf[8];
  sub_4AE8C(buf);
  *v66 = v5;
  *&v66[8] = v6;
  v7 = v4;
  if (sub_134A80(v66))
  {
    v8 = *sub_5544(2);
    v9 = v8;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2567;
      v76 = 1024;
      v77 = a2;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring PolicyMute for J/K VP routes (incoming mute value = %d)", buf, 0x18u);
    }

    LOBYTE(a2) = *(v4 + 168);
  }

  else if (*(v4 + 112))
  {
    v10 = *(v4 + 144);
    v56 = *(v4 + 152);
    if (v10 != v56)
    {
      v55 = a2;
      v11 = *(v4 + 152);
      do
      {
        v12 = *(*(*v10 + 872) + 288);
        if (!sub_45168() && *(*v10 + 384) == 1986291046 && sub_BF6FC(*(v7 + 112)) == 1667657072)
        {
          v12 = sub_BF6FC(*(v7 + 112));
        }

        v64[0] = 0;
        v64[1] = 0;
        v63 = v64;
        v13 = sub_134B74(*(v7 + 112), v12, &v63);
        if (v13)
        {
          if (v13 == 2)
          {
            v48 = sub_5544(14);
            v49 = 1852793716;
            v50 = sub_468EC(1, *v48, *(v48 + 8));
            v51 = v50;
            if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 2589;
              _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Routing category info lookup failed.)", buf, 0x12u);
            }
          }

          else
          {
            v52 = sub_5544(14);
            v53 = sub_468EC(1, *v52, *(v52 + 8));
            v51 = v53;
            v49 = 1852797556;
            if (v53 && os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 2589;
              _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Routing category info lookup failed.)", buf, 0x12u);
              v49 = 1852797556;
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v49;
        }

        v14 = v64[0];
        if (!v64[0])
        {
          goto LABEL_24;
        }

        v15 = v64;
        do
        {
          v16 = v14;
          v17 = v15;
          v18 = v14[7];
          if (v18 >= 1667854445)
          {
            v15 = v14;
          }

          v14 = *&v14[2 * (v18 < 1667854445)];
        }

        while (v14);
        if (v15 == v64)
        {
          goto LABEL_24;
        }

        if (v18 < 1667854445)
        {
          v16 = v17;
        }

        if (v16[7] >= 1667854446)
        {
LABEL_24:
          v19 = 0;
        }

        else
        {
          v19 = (v15[8] & v55);
        }

        v20 = **(v7 + 112);
        v23 = *(v20 + 160);
        v21 = v20 + 160;
        v22 = v23;
        if (!v23)
        {
          goto LABEL_35;
        }

        v24 = *(*v10 + 384);
        v25 = v21;
        do
        {
          v26 = *(v22 + 32);
          v27 = v26 >= v24;
          v28 = v26 < v24;
          if (v27)
          {
            v25 = v22;
          }

          v22 = *(v22 + 8 * v28);
        }

        while (v22);
        if (v25 == v21)
        {
LABEL_35:
          v29 = "";
        }

        else if (*(v25 + 32) <= v24)
        {
          v29 = (v25 + 40);
        }

        else
        {
          v29 = "";
        }

        v30 = *v29;
        v61 = *v29;
        memset(v62, 0, 24);
        v32 = *(v29 + 1);
        v31 = *(v29 + 2);
        if (v31 != v32)
        {
          sub_3A644C(v62, (v31 - v32) >> 3);
        }

        if (v30 == 2)
        {
          v33 = v19;
        }

        else
        {
          v33 = 0;
        }

        if (v30)
        {
          v34 = v33;
        }

        else
        {
          v34 = v19;
        }

        v35 = *sub_5544(2);
        v36 = v35;
        if (v35)
        {
          v37 = v35;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v59 = *(*v10 + 384);
            sub_68108(&v60, &v59);
            if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v60;
            }

            else
            {
              v38 = v60.__r_.__value_.__r.__words[0];
            }

            v39 = v7;
            sub_A1DF4(buf, v7);
            v41 = *buf;
            v40 = *&buf[8];
            sub_4AE8C(buf);
            v57[0] = v41;
            v57[1] = v40;
            sub_879F8(&__p, v57);
            v42 = "unknown";
            v7 = v39;
            if (v12 <= 7)
            {
              v42 = off_6BD200[v12];
            }

            v43 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v44 = __p.__r_.__value_.__r.__words[0];
            sub_53E8(buf, v42);
            v11 = v56;
            p_p = &__p;
            if (v43 < 0)
            {
              p_p = v44;
            }

            v46 = buf;
            if (v77 < 0)
            {
              v46 = *buf;
            }

            *v66 = 136316418;
            *&v66[4] = "VirtualAudio_PlugIn.mm";
            *&v66[12] = 1024;
            *&v66[14] = 2604;
            v67 = 1024;
            v68 = v34;
            v69 = 2080;
            v70 = v38;
            v71 = 2080;
            v72 = p_p;
            v73 = 2080;
            v74 = v46;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applying PolicyMute %d to VAD %s, category mode: current: %s, vad: %s", v66, 0x36u);
            if (SHIBYTE(v77) < 0)
            {
              operator delete(*buf);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }
          }
        }

        (*(**(*v10 + 872) + 232))(*(*v10 + 872), v34);
        if (v62[0])
        {
          operator delete(v62[0]);
        }

        sub_477A0(v64[0]);
        v10 += 8;
      }

      while (v10 != v11);
      LOBYTE(a2) = v55;
    }
  }

  sub_210C50(&v65);
  return a2 & 1;
}

uint64_t sub_13A194(uint64_t result, int a2)
{
  v2 = *(result + 8);
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
      v4 = *(v2 + 28);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_13A268(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 728788340;
  }

  else
  {
    v2 = 762342772;
  }

  *(result + 952) = v2;
  return result;
}

uint64_t sub_13A288(uint64_t a1)
{
  *a1 = off_6C1100;
  sub_477A0(*(a1 + 40));
  sub_477A0(*(a1 + 16));
  return a1;
}

void sub_13A300(uint64_t a1)
{
  sub_71E0C(*(a1 + 296));
  sub_70ABC(a1 + 312);

  sub_13AB3C(a1);
}

void sub_13A344(unint64_t a1)
{
  sub_13A37C(a1);

  operator delete();
}

unint64_t sub_13A37C(unint64_t a1)
{
  *a1 = off_6D0750;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 735) < 0)
    {
      sub_54A0(__p, *(a1 + 712), *(a1 + 720));
    }

    else
    {
      *__p = *(a1 + 712);
      v8 = *(a1 + 728);
    }

    v4 = __p;
    if (v8 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v10 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
    v11 = 1024;
    v12 = 270;
    v13 = 2080;
    v14 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Deleting DSPGraphChain_SpeakerProtectionHAL %s", buf, 0x1Cu);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *(a1 + 1224);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  sub_13A50C(a1);
  return a1;
}

void sub_13A4D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_13A4DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

unint64_t sub_13A50C(unint64_t a1)
{
  *a1 = off_6B6C10;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 735) < 0)
    {
      sub_54A0(__p, *(a1 + 712), *(a1 + 720));
    }

    else
    {
      *__p = *(a1 + 712);
      v7 = *(a1 + 728);
    }

    v4 = __p;
    if (v7 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "DSPGraphChain.cpp";
    v10 = 1024;
    v11 = 109;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Deleting DSPGraph chain %s", buf, 0x1Cu);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_4E0BC((a1 + 1192));
  sub_13ABB0(a1);
  return a1;
}

void sub_13A65C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

unint64_t sub_13A668(unint64_t a1)
{
  *a1 = off_6B89D0;
  sub_4EBC(a1);
  sub_140AD4(*(a1 + 128), *(a1 + 536));
  sub_140C30(*(a1 + 128));
  sub_F5768((a1 + 248));
  v2 = *(a1 + 640);
  v3 = *(a1 + 648);
  while (v2 != v3)
  {
    v4 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    if (v4)
    {
      sub_1A8C0(v4);
    }

    v2 += 2;
  }

  v5 = *(a1 + 664);
  v6 = *(a1 + 672);
  while (v5 != v6)
  {
    v7 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    if (v7)
    {
      sub_1A8C0(v7);
    }

    v5 += 2;
  }

  v8 = *(a1 + 784);
  if (v8)
  {
    sub_1A8C0(v8);
  }

  v9 = *(a1 + 768);
  if (v9)
  {
    sub_1A8C0(v9);
  }

  std::mutex::~mutex((a1 + 688));
  *buf = a1 + 664;
  sub_F5714(buf);
  *buf = a1 + 640;
  sub_F5714(buf);
  sub_65310((a1 + 616));
  sub_65310((a1 + 592));
  sub_128368((a1 + 544));
  sub_13C180(a1);
  return a1;
}

void sub_13A9F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_13AA2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x13AA38);
  }

  sub_1CC130(a1);
}

void *sub_13AA48(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_13AA8C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_13AA8C(void *a1)
{
  sub_13DCB8(a1);
  sub_13AB3C((a1 + 82));
  sub_13A300((a1 + 34));
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[24];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[20];
  if (v6)
  {
    sub_1A8C0(v6);
  }

  sub_65310(a1 + 15);
  v7 = a1[14];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return sub_13BFA8(a1);
}

void sub_13AB3C(uint64_t a1)
{
  v2 = *(a1 + 264);
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

  v4 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  std::recursive_mutex::~recursive_mutex((a1 + 168));
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

unint64_t sub_13ABB0(unint64_t a1)
{
  *a1 = off_6BFEC0;
  v2 = atomic_load((*(a1 + 360) + 16));
  if (v2)
  {
    sub_EB670(*(a1 + 360));
  }

  if (*(a1 + 796) == 1)
  {
    v3 = *(a1 + 832);
    v4 = *(a1 + 840);
    while (v3 != v4)
    {
      v5 = v3[1];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = *v3;
          if (*v3)
          {
            v48 = v3[2];
            v49 = *(v3 + 6);
            (*(*v8 + 344))(v8, &v48, a1);
          }

          sub_1A8C0(v7);
        }
      }

      v3 += 4;
    }

    v9 = *(a1 + 736);
    if (qword_6EB708 != -1)
    {
      dispatch_once(&qword_6EB708, &stru_6C0080);
    }

    if (off_6EB718)
    {
      off_6EB718(v9);
    }

    sub_65310((a1 + 856));
  }

  if ((*(*a1 + 56))(a1, 1685287015, 1668572518, 0))
  {
    sub_71224();
    std::recursive_mutex::lock(&stru_6E5C90);
    v10 = *(&xmmword_6E5CD0 + 1);
    if (*(&xmmword_6E5CD0 + 1))
    {
      v11 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
      v12 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v11 >> 47) ^ v11);
      v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
      v14 = vcnt_s8(*(&xmmword_6E5CD0 + 8));
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] > 1uLL)
      {
        v15 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
        if (v13 >= *(&xmmword_6E5CD0 + 1))
        {
          v15 = v13 % *(&xmmword_6E5CD0 + 1);
        }
      }

      else
      {
        v15 = v13 & (*(&xmmword_6E5CD0 + 1) - 1);
      }

      v16 = *(xmmword_6E5CD0 + 8 * v15);
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = *(&xmmword_6E5CD0 + 1) - 1;
          do
          {
            v19 = v17[1];
            if (v19 == v13)
            {
              if (v17[2] == a1)
              {
                v20 = v17[1];
                if (v14.u32[0] > 1uLL)
                {
                  if (v20 >= *(&xmmword_6E5CD0 + 1))
                  {
                    v20 %= *(&xmmword_6E5CD0 + 1);
                  }
                }

                else
                {
                  v20 &= v18;
                }

                v21 = *(xmmword_6E5CD0 + 8 * v20);
                do
                {
                  v22 = v21;
                  v21 = *v21;
                }

                while (v21 != v17);
                if (v22 == &qword_6E5CE0)
                {
                  goto LABEL_53;
                }

                v23 = v22[1];
                if (v14.u32[0] > 1uLL)
                {
                  if (v23 >= *(&xmmword_6E5CD0 + 1))
                  {
                    v23 %= *(&xmmword_6E5CD0 + 1);
                  }
                }

                else
                {
                  v23 &= v18;
                }

                if (v23 != v20)
                {
LABEL_53:
                  if (!*v17)
                  {
                    goto LABEL_54;
                  }

                  v24 = *(*v17 + 8);
                  if (v14.u32[0] > 1uLL)
                  {
                    if (v24 >= *(&xmmword_6E5CD0 + 1))
                    {
                      v24 %= *(&xmmword_6E5CD0 + 1);
                    }
                  }

                  else
                  {
                    v24 &= v18;
                  }

                  if (v24 != v20)
                  {
LABEL_54:
                    *(xmmword_6E5CD0 + 8 * v20) = 0;
                  }
                }

                v25 = *v17;
                if (*v17)
                {
                  v26 = *(v25 + 8);
                  if (v14.u32[0] > 1uLL)
                  {
                    if (v26 >= v10)
                    {
                      v26 %= v10;
                    }
                  }

                  else
                  {
                    v26 &= v18;
                  }

                  if (v26 != v20)
                  {
                    *(xmmword_6E5CD0 + 8 * v26) = v22;
                    v25 = *v17;
                  }
                }

                *v22 = v25;
                *v17 = 0;
                --qword_6E5CE8;
                sub_1E640C(1, v17);
                break;
              }
            }

            else
            {
              if (v14.u32[0] > 1uLL)
              {
                if (v19 >= *(&xmmword_6E5CD0 + 1))
                {
                  v19 %= *(&xmmword_6E5CD0 + 1);
                }
              }

              else
              {
                v19 &= v18;
              }

              if (v19 != v15)
              {
                break;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }
      }
    }

    std::recursive_mutex::unlock(&stru_6E5C90);
  }

  *(a1 + 448) = 0;
  v48 = (a1 + 48);
  LOBYTE(v49) = 1;
  sub_47BD8(a1 + 48);
  v28 = *(a1 + 24);
  v29 = *(a1 + 32);
  v27 = (a1 + 24);
  v30 = (v29 - v28) >> 3;
  v31 = 0xAAAAAAAAAAAAAAABLL * v30;
  if (v29 != v28)
  {
    if (v31 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = 0xAAAAAAAAAAAAAAABLL * v30;
    }

    v33 = 8;
    do
    {
      v34 = *v27;
      if (*(*v27 + v33))
      {
        sub_E933C();
        v35 = (*(**(v34 + v33) + 152))(*(v34 + v33));
        (*(qword_6EB0E0 + 112))(&qword_6EB0E0, v35);
      }

      v33 += 24;
      --v32;
    }

    while (v32);
  }

  sub_13E73C((a1 + 400));
  sub_13E73C((a1 + 424));
  sub_13E73C((a1 + 24));
  sub_47C90(a1 + 48);
  if (*(a1 + 880) && v29 != v28)
  {
    LODWORD(v36) = 0;
    do
    {
      sub_3C340C(*(a1 + 880), v36);
      v36 = (v36 + 1);
    }

    while (v31 > v36);
  }

  v48 = (a1 + 696);
  sub_13B574(a1, &v48);
  for (i = qword_6E9258; i != &qword_6E9250; i = i[1])
  {
    if (i[4] == a1)
    {
      i[4] = 0;
    }
  }

  sub_2C1CA4((a1 + 1184), 0);
  sub_13B960((a1 + 1176), 0);
  sub_13B8C8((a1 + 1168), 0);
  sub_13BB34((a1 + 1160), 0);
  v38 = *(a1 + 1144);
  if (v38)
  {
    CFRelease(v38);
  }

  sub_13E788(*(a1 + 1128));
  v48 = (a1 + 1096);
  sub_133AF0(&v48);
  v39 = *(a1 + 1080);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(a1 + 1072);
  if (v40)
  {
    sub_1A8C0(v40);
  }

  v41 = *(a1 + 1056);
  if (v41)
  {
    sub_1A8C0(v41);
  }

  sub_DDE50(a1 + 1008);
  v48 = (a1 + 984);
  sub_13BC48(&v48);
  sub_5D988((a1 + 968));
  sub_5D988((a1 + 952));
  std::recursive_mutex::~recursive_mutex((a1 + 888));
  v42 = *(a1 + 880);
  *(a1 + 880) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  sub_65310((a1 + 856));
  v48 = (a1 + 832);
  sub_13BC9C(&v48);
  v43 = *(a1 + 816);
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  sub_65310((a1 + 768));
  if (*(a1 + 767) < 0)
  {
    operator delete(*(a1 + 744));
  }

  if (*(a1 + 735) < 0)
  {
    operator delete(*(a1 + 712));
  }

  sub_477A0(*(a1 + 696));
  sub_914D8(a1 + 592);
  sub_914D8(a1 + 504);
  v48 = (a1 + 424);
  sub_13BD24(&v48);
  v48 = (a1 + 400);
  sub_13BD24(&v48);
  v44 = *(a1 + 384);
  if (v44)
  {
    sub_1A8C0(v44);
  }

  v45 = *(a1 + 368);
  if (v45)
  {
    sub_1A8C0(v45);
  }

  v48 = (a1 + 336);
  sub_F5714(&v48);
  sub_13AB3C(a1 + 48);
  v48 = (a1 + 24);
  sub_13BD24(&v48);
  v46 = *(a1 + 16);
  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

  return a1;
}

void *sub_13B284(void *a1)
{
  *a1 = off_6C3528;
  a1[12] = a1[11];
  a1[15] = a1[14];
  v2 = a1[9];
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  AudioUnitUninitialize(v3);
  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    a1[12] = v5;
    operator delete(v5);
  }

  sub_129378(a1 + 2);
  return a1;
}

uint64_t sub_13B31C(uint64_t a1)
{
  *a1 = off_6D88D0;
  v2 = *(a1 + 16);
  if (v2 && !*(a1 + 24))
  {
    AudioComponentInstanceDispose(v2);
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_13B37C(void *a1, unsigned int a2)
{
  v2 = a1[5];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = a1 + 5;
  v4 = a1[5];
  do
  {
    v5 = *(v4 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v3 = v4;
    }

    v4 = *(v4 + 8 * v7);
  }

  while (v4);
  if (v3 != a1 + 5 && *(v3 + 8) <= a2)
  {
    v10 = v3[1];
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
      v12 = v3;
      do
      {
        v11 = v12[2];
        v13 = *v11 == v12;
        v12 = v11;
      }

      while (!v13);
    }

    if (a1[4] == v3)
    {
      a1[4] = v11;
    }

    --a1[6];
    sub_75234(v2, v3);
    v14 = v3[6];
    if (v14)
    {
      sub_1A8C0(v14);
    }

    operator delete(v3);
  }

  else
  {
LABEL_9:
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "DSPProcessorManager.cpp";
      v18 = 1024;
      v19 = 234;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Tried to remove an instance that is not in the map", &v16, 0x12u);
    }
  }

  return 0;
}

void sub_13B510(uint64_t a1)
{
  sub_13B31C(a1);

  operator delete();
}

uint64_t sub_13B548(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_13B574(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 688);
  if (v2 != *a2)
  {
    do
    {
      v5 = v2[5];
      v6 = *sub_5544(25);
      v7 = v6;
      if (v6)
      {
        v8 = v6;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          mach_absolute_time();
          v9 = (*(*v5 + 152))(v5);
          v10 = __udivti3();
          *buf = 136315906;
          v22 = "DSPChain.mm";
          v23 = 1024;
          v24 = 2257;
          v25 = 2048;
          v26 = v10 / 0x3E8;
          v27 = 1024;
          v28 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Time(us): %lld: deleting instanceID: %u", buf, 0x22u);
        }
      }

      if (v5)
      {
        sub_E933C();
        v11 = (*(*v5 + 152))(v5);
        (*(qword_6EB0E0 + 112))(&qword_6EB0E0, v11);
      }

      else
      {
        v12 = *sub_5544(14);
        v13 = v12;
        if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v22 = "DSPChain.mm";
          v23 = 1024;
          v24 = 2266;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: NULL pointer instead of valid IDSPProcessorManagedInstance pointer found", buf, 0x12u);
        }
      }

      v14 = v2[1];
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
          v15 = v2[2];
          v16 = *v15 == v2;
          v2 = v15;
        }

        while (!v16);
      }

      v2 = v15;
    }

    while (v15 != *a2);
    v17 = *(a1 + 688);
    if (v17 != v15)
    {
      do
      {
        v18 = v17[1];
        v19 = v17;
        if (v18)
        {
          do
          {
            v20 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v20 = v19[2];
            v16 = *v20 == v19;
            v19 = v20;
          }

          while (!v16);
        }

        if (*(a1 + 688) == v17)
        {
          *(a1 + 688) = v20;
        }

        --*(a1 + 704);
        sub_75234(*(a1 + 696), v17);
        operator delete(v17);
        v17 = v20;
      }

      while (v20 != v15);
    }
  }
}

void sub_13B89C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_13B8C8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 160);
    if (v3)
    {
      *(v2 + 168) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 136);
    if (v4)
    {
      *(v2 + 144) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      *(v2 + 32) = v5;
      operator delete(v5);
    }

    v6 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v6;
      operator delete(v6);
    }

    operator delete();
  }

  return result;
}

uint64_t **sub_13B960(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = sub_5544(25);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v2;
      v12 = 136315650;
      v13 = "ADAMClient.cpp";
      v14 = 1024;
      v15 = 24;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disposing ADAM client %llu for Mic SPL", &v12, 0x1Cu);
    }

    v6 = *v2;
    if (qword_6EB708 != -1)
    {
      dispatch_once(&qword_6EB708, &stru_6BD028);
    }

    if (off_6EB718)
    {
      off_6EB718(v6);
    }

    v7 = v2[6];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = v2[4];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = v2[3];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = v2[2];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v2[1];
    if (v11)
    {
      CFRelease(v11);
    }

    operator delete();
  }

  return result;
}

void sub_13BB04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_13BB34(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_E933C();
    (*(**v2 + 152))();
    (*(qword_6EB0E0 + 112))();
    sub_914D8(v2 + 232);
    sub_914D8(v2 + 144);
    if (*(v2 + 136) == 1)
    {
      v3 = *(v2 + 128);
      ExtendedAudioBufferList_Destroy();
    }

    if (*(v2 + 120) == 1)
    {
      v4 = *(v2 + 112);
      ExtendedAudioBufferList_Destroy();
    }

    caulk::mach::semaphore::~semaphore((v2 + 96));
    std::mutex::~mutex((v2 + 24));
    v5 = *(v2 + 8);
    if (v5)
    {
      sub_1A8C0(v5);
    }

    operator delete();
  }

  return result;
}

void sub_13BC48(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_132938(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_13BC9C(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_13BD24(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_13E73C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_13BD78(caulk::semaphore *a1)
{
  if (*(a1 + 16) == 1)
  {
    caulk::semaphore::~semaphore(a1);
    *(a1 + 16) = 0;
  }

  result = caulk::semaphore::semaphore(a1, 0);
  *(result + 16) = 1;
  return result;
}

void sub_13BDB0(void *a1)
{
  if (a1[6])
  {
    sub_13BD78((a1 + 8));
    v2 = a1[7];
    a1[6] = 0;
    a1[7] = 0;
    if (v2)
    {
      sub_1A8C0(v2);
    }

    caulk::semaphore::timed_wait((a1 + 8), -1.0);
    __dmb(9u);
  }

  v3 = a1[13];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_13BE94((a1 + 5));
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_13BE3C(uint64_t a1)
{
  __dmb(0xBu);
  caulk::semaphore::signal((*(a1 + 40) + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_13BE94(uint64_t a1)
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

void sub_13BEF8(uint64_t a1)
{
  v5 = (a1 + 168);
  sub_761AC(&v5);
  std::recursive_mutex::~recursive_mutex((a1 + 104));
  sub_98A08(*(a1 + 88));
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t sub_13BFA8(uint64_t a1)
{
  *a1 = off_6BB180;
  sub_52588();
  sub_1DB7C8(&v17);
  sub_47BD8(&unk_6FC990);
  for (i = qword_6FC980; i != &qword_6FC978; i = i[1])
  {
    v3 = i[2];
    if (v3 && *(v3 + 16) == a1)
    {
      atomic_store(1u, (v3 + 56));
      v4 = i[1];
      if (v4 == &qword_6FC978)
      {
        goto LABEL_15;
      }

      do
      {
        v5 = v4[2];
        if (v5 && *(v5 + 16) == a1)
        {
          atomic_store(1u, (v5 + 56));
        }

        else
        {
          v6 = v4[3];
          v4[2] = 0;
          v4[3] = 0;
          v7 = i[3];
          i[2] = v5;
          i[3] = v6;
          if (v7)
          {
            sub_1A8C0(v7);
          }

          i = i[1];
        }

        v4 = v4[1];
      }

      while (v4 != &qword_6FC978);
      if (i != &qword_6FC978)
      {
LABEL_15:
        v8 = *(qword_6FC978 + 8);
        v9 = *i;
        *(v9 + 8) = v8;
        *v8 = v9;
        do
        {
          v10 = i[1];
          --qword_6FC988;
          v11 = i[3];
          if (v11)
          {
            sub_1A8C0(v11);
          }

          operator delete(i);
          i = v10;
        }

        while (v10 != &qword_6FC978);
      }

      break;
    }
  }

  sub_47C90(&unk_6FC990);
  sub_1DB63C(&v17);
  v12 = *(a1 + 56);
  if (v12)
  {
    do
    {
      v13 = *v12;
      v14 = v12[5];
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v15 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_13C180(unint64_t a1)
{
  *a1 = off_6C19A0;
  v25 = 1886216809;
  v27 = 0;
  v26 = 0uLL;
  sub_4625C(&v26, &v25, &v26, 1uLL);
  *v15 = v26;
  v16 = v27;
  strcpy(v17, "cwdv");
  v17[8] = 0;
  v18 = 3;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v21 = 44739242;
  v23 = 0;
  v24 = 0;
  __p = 0;
  (*(*a1 + 512))(&v26, a1, v15);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v20[0]);
  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v27)
  {
    v2 = *(&v26 + 1);
    v3 = *(*(&v26 + 1) + 24);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(v2 + 16);
        if (v6)
        {
          sub_4E890();
          v7 = sub_A82E4(v6);
          LODWORD(v15[0]) = 1768843845;
          *(v15 + 4) = qword_6EA868;
          sub_74D2C(v7, v15, sub_3233BC, a1);
        }

        sub_1A8C0(v5);
      }
    }
  }

  sub_65310(&v26);
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 408) == 1)
  {
    v8 = *(a1 + 400);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 384);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  if (*(a1 + 336) == 1 && *(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v15[0] = (a1 + 248);
  sub_F5714(v15);
  sub_477A0(*(a1 + 232));
  v10 = *(a1 + 216);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  sub_65310((a1 + 184));
  sub_13C480(a1 + 144);
  sub_13C544((a1 + 136));
  sub_13C4FC((a1 + 120));
  v11 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return sub_13BFA8(a1);
}

uint64_t sub_13C480(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (qword_6FCB80 != -1)
  {
    dispatch_once(&qword_6FCB80, &stru_6C1C18);
  }

  if (off_6FCB98)
  {
    off_6FCB98(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

caulk::concurrent::messenger **sub_13C4FC(caulk::concurrent::messenger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    caulk::concurrent::messenger::~messenger(v2);
    operator delete();
  }

  return a1;
}

void **sub_13C544(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_30BAFC(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_13C58C(uint64_t a1)
{
  *a1 = off_6B9528;
  v2 = sub_5544(1);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 112))(&__p, a1);
    v4 = v46 >= 0 ? &__p : __p.n128_u64[0];
    buf[0].n128_u32[0] = 136315650;
    *(buf[0].n128_u64 + 4) = "VirtualAudio_Device.cpp";
    buf[0].n128_u16[6] = 1024;
    *(&buf[0].n128_u32[3] + 2) = 543;
    buf[1].n128_u16[1] = 2080;
    *(buf[1].n128_u64 + 4) = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destructing VirtualAudio_Device: %s.", buf, 0x1Cu);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p.n128_u64[0]);
    }
  }

  if ((*(*a1 + 528))(a1))
  {
    v5 = sub_5544(1);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        buf[0].n128_u32[0] = 136315394;
        *(buf[0].n128_u64 + 4) = "VirtualAudio_Device.cpp";
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 545;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d IO must not be running.", buf, 0x12u);
      }
    }
  }

  v7 = atomic_load((a1 + 560));
  if (v7 == pthread_self() || (v8 = atomic_load((a1 + 664)), v8 == pthread_self()))
  {
    v9 = sub_5544(1);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        buf[0].n128_u32[0] = 136315394;
        *(buf[0].n128_u64 + 4) = "VirtualAudio_Device.cpp";
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 547;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d The IO monitor must not be held by this thread.", buf, 0x12u);
      }
    }
  }

  v11 = sub_5544(1);
  if (*(v11 + 8))
  {
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
      {
        (*(*a1 + 112))(&__p, a1);
        v13 = v46 >= 0 ? &__p : __p.n128_u64[0];
        buf[0].n128_u32[0] = 136315650;
        *(buf[0].n128_u64 + 4) = "VirtualAudio_Device.cpp";
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 549;
        buf[1].n128_u16[1] = 2080;
        *(buf[1].n128_u64 + 4) = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Tearing down VirtualAudio_Device: %s.", buf, 0x1Cu);
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }
    }
  }

  sub_13CFCC((a1 + 928), 0);
  v14 = *(a1 + 440);
  if (v14)
  {
    sub_13FC68(v14);
  }

  v15 = *(a1 + 784);
  if (v15)
  {
    sub_13D3BC(a1, v15);
    v16 = *(a1 + 784);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    *(a1 + 784) = 0;
  }

  memset(buf, 0, 24);
  sub_219EB0(a1, *(a1 + 792), buf);
  sub_219EB0(a1, *(a1 + 824), buf);
  sub_219EB0(a1, *(a1 + 832), buf);
  sub_219EB0(a1, *(a1 + 840), buf);
  v17 = *(a1 + 800);
  if (v17 != *(a1 + 808))
  {
    do
    {
      sub_219EB0(a1, *v17, buf);
      v18 = *(a1 + 808);
      v19 = v18 - (v17 + 1);
      if (v18 != v17 + 1)
      {
        memmove(v17, v17 + 1, v18 - (v17 + 1));
      }

      v20 = *(a1 + 800);
      v21 = (v17 + v19);
      *(a1 + 808) = v17 + v19;
      v17 = v20;
    }

    while (v20 != v21);
  }

  v22 = *(a1 + 848);
  if (v22 != *(a1 + 856))
  {
    do
    {
      sub_219EB0(a1, *v22, buf);
      v23 = *(a1 + 856);
      v24 = v23 - (v22 + 1);
      if (v23 != v22 + 1)
      {
        memmove(v22, v22 + 1, v23 - (v22 + 1));
      }

      v25 = *(a1 + 848);
      v26 = (v22 + v24);
      *(a1 + 856) = v22 + v24;
      v22 = v25;
    }

    while (v25 != v26);
  }

  sub_218AD4(buf);
  __p.n128_u64[0] = buf;
  sub_218D2C(&__p);
  __p = 0uLL;
  v27 = 1;
  v46 = 0;
  do
  {
    v28 = v27;
    v29 = (v27 & 1) == 0;
    if (v27)
    {
      v30 = 280;
    }

    else
    {
      v30 = 304;
    }

    if (v29)
    {
      v31 = 312;
    }

    else
    {
      v31 = 288;
    }

    v32 = (a1 + v30);
    v33 = *(a1 + v30);
    if (((*(a1 + v31) - v33) & 0x7FFFFFFF8) != 0)
    {
      v34 = 0;
      do
      {
        if (v34 >= (v32[1] - v33) >> 3)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(v33 + 8 * v34);
        }

        sub_163508(a1, v35);
        buf[0].n128_u64[0] = v35;
        sub_218C34(&__p, buf);
        if (buf[0].n128_u64[0])
        {
          (*(*buf[0].n128_u64[0] + 8))(buf[0].n128_u64[0]);
        }

        ++v34;
        v33 = *v32;
      }

      while (v34 < ((*(a1 + v31) - *v32) >> 3));
    }

    v27 = 0;
  }

  while ((v28 & 1) != 0);
  sub_218AD4(&__p);
  buf[0].n128_u64[0] = &__p;
  sub_218D2C(buf);
  v36 = *(a1 + 872);
  if (v36)
  {
    __p.n128_u64[0] = 0;
    strcpy(buf, "gwsobolg");
    buf[0].n128_u8[9] = 0;
    buf[0].n128_u16[5] = 0;
    sub_163594(v36, buf, 8, &__p);
    v37 = *(a1 + 944);
    *(a1 + 944) = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    (*(**(a1 + 872) + 80))(*(a1 + 872));
    v38 = *(a1 + 872);
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    *(a1 + 872) = 0;
  }

  sub_DDF68();
  sub_DDFE4(a1);
  sub_477A0(*(a1 + 968));
  v39 = *(a1 + 944);
  *(a1 + 944) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  sub_13CFCC((a1 + 928), 0);
  sub_477A0(*(a1 + 912));
  sub_477A0(*(a1 + 888));
  v40 = *(a1 + 848);
  if (v40)
  {
    *(a1 + 856) = v40;
    operator delete(v40);
  }

  v41 = *(a1 + 800);
  if (v41)
  {
    *(a1 + 808) = v41;
    operator delete(v41);
  }

  sub_42A4D8(a1 + 672);
  sub_42A4D8(a1 + 568);
  sub_42A4D8(a1 + 464);
  v42 = *(a1 + 448);
  if (v42)
  {
    sub_1A8C0(v42);
  }

  sub_477A0(*(a1 + 424));
  v43 = *(a1 + 400);
  if (v43)
  {
    CFRelease(v43);
  }

  sub_13D1EC(a1);
  return a1;
}

void sub_13CEDC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void **a21)
{
  if (a2)
  {
    a21 = &a18;
    sub_218D2C(&a21);
    JUMPOUT(0x13CF7CLL);
  }

  _Unwind_Resume(a1);
}

void sub_13CF4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_13CF5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x13CF64);
  }

  JUMPOUT(0x13CF78);
}

uint64_t sub_13CF84(uint64_t a1)
{
  *a1 = off_6B94E0;
  pthread_mutex_destroy((a1 + 24));
  return a1;
}

unsigned int **sub_13CFCC(unsigned int **result, unsigned int *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_4E890();
    v3 = *v2;
    v4 = *(v2 + 1);
    buf.mElement = v2[3];
    *&buf.mSelector = v4;
    v5 = sub_74D2C(v3, &buf, sub_21A308, v2);
    if (v5)
    {
      v6 = sub_5544(14);
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&v10, v5);
          v7 = *(v2 + 1);
          v8 = v2[3];
          sub_22CE0(&__p);
        }
      }
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 2));
    }

    operator delete();
  }

  return result;
}

void sub_13D1E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_13D1EC(uint64_t a1)
{
  *a1 = off_6D10D8;
  sub_13D3BC(a1, *(a1 + 216));
  v2 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_13D3BC(a1, *(a1 + 208));
  v3 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  (*(*a1 + 448))(a1);
  v4 = *(a1 + 328);
  if (v4)
  {
    *(a1 + 336) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 304);
  if (v5)
  {
    *(a1 + 312) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 280);
  if (v6)
  {
    *(a1 + 288) = v6;
    operator delete(v6);
  }

  sub_13E278((a1 + 256), 0);
  sub_13E110((a1 + 248), 0);
  v10 = (a1 + 224);
  sub_13F3F8(&v10);
  v7 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_42A4D8(a1 + 104);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return sub_13E5EC(a1);
}

uint64_t sub_13D3BC(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 56))(a2);
  if (result)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v13 = 0x676C6F6200000000;
      v14 = 0;
      result = (*(*a2 + 64))(a2, v6, &v13);
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);
      while (v7 != v8)
      {
        result = sub_15414(v7, &v13);
        if (result)
        {
          v9 = v7;
        }

        else
        {
          v9 = v8;
        }

        v7 += 6;
        if (v9 != v8)
        {
          if (v9 + 6 != v8)
          {
            v10 = v9;
            do
            {
              v11 = *(v10 + 3);
              v10 += 6;
              *v9 = v11;
              v9[2] = v9[8];
              *(v9 + 2) = *(v9 + 5);
              v12 = v9 + 12;
              v9 = v10;
            }

            while (v12 != v8);
            v9 = v10;
          }

          *(a1 + 64) = v9;
          break;
        }
      }

      v6 = (v6 + 1);
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_13D504(uint64_t a1)
{
  *a1 = off_6D6660;
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 24));
  sub_13E094();
  v6 = *(a1 + 16);
  v7 = (*(qword_6FD698 + 16))(&qword_6FD698);
  if (qword_6FD680)
  {
    v8 = &qword_6FD680;
    v9 = qword_6FD680;
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 >= v6;
      v12 = v10 < v6;
      if (v11)
      {
        v8 = v9;
      }

      v9 = *(v9 + 8 * v12);
    }

    while (v9);
    if (v8 != &qword_6FD680 && *(v8 + 8) <= v6)
    {
      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        v15 = v8;
        do
        {
          v14 = v15[2];
          v16 = *v14 == v15;
          v15 = v14;
        }

        while (!v16);
      }

      if (qword_6FD678 == v8)
      {
        qword_6FD678 = v14;
      }

      --qword_6FD688;
      sub_75234(qword_6FD680, v8);
      operator delete(v8);
    }
  }

  if (v7)
  {
    (*(qword_6FD698 + 24))(&qword_6FD698);
  }

  return a1;
}

void sub_13D6C0(uint64_t *a1)
{
  if (a1[5])
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315650;
        v8 = "VirtualAudio_DevicePropertyCache.cpp";
        v9 = 1024;
        v10 = 304;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Property cache at %p is being torn down while an active object is selected.", &v7, 0x1Cu);
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    sub_27A4();
    v2 = atomic_load(&qword_6E9558);
    if (v2 == pthread_self())
    {
      v5 = sub_5544(14);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v7 = 136315650;
          v8 = "VirtualAudio_DevicePropertyCache.cpp";
          v9 = 1024;
          v10 = 306;
          v11 = 2048;
          v12 = a1;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Property cache at %p is being torn down while the routing mutex is held.", &v7, 0x1Cu);
        }
      }
    }
  }

  sub_13E020(a1);
  sub_13D864(a1);
}

void sub_13D858(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_13D864(uint64_t *a1)
{
  v2 = sub_368114(a1);
  if (!v2 || (v3 = atomic_load((v2 + 96)), v3 != pthread_self()))
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315394;
        *&v24[4] = "VirtualAudio_DevicePropertyCache.cpp";
        *&v24[12] = 1024;
        *&v24[14] = 466;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Cache mutex not held by current thread.", v24, 0x12u);
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    sub_27A4();
    v4 = atomic_load(&qword_6E9558);
    if (v4 == pthread_self())
    {
      v21 = sub_5544(14);
      v22 = *v21;
      if (*v21)
      {
        if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
        {
          *v24 = 136315394;
          *&v24[4] = "VirtualAudio_DevicePropertyCache.cpp";
          *&v24[12] = 1024;
          *&v24[14] = 468;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is held by the current thread.", v24, 0x12u);
        }
      }
    }
  }

  if (a1[24])
  {
    v5 = a1 + 22;
    if (_os_feature_enabled_impl())
    {
      for (i = a1[23]; i != v5; i = i[1])
      {
        v7 = i[3];
        if (v7)
        {
          v8 = std::__shared_weak_count::lock(v7);
          if (v8)
          {
            v9 = v8;
            v10 = i[2];
            if (v10)
            {
              sub_164A14(i[4], (v10 + 40), sub_5264C, v10);
            }

            sub_1A8C0(v9);
          }
        }
      }

      v11 = v5;
    }

    else
    {
      *v24 = v24;
      *&v24[8] = v24;
      *&v24[16] = 0;
      if (a1[23] != v5)
      {
        operator new();
      }

      sub_65310(a1 + 22);
      if (sub_368114(a1))
      {
        operator new();
      }

      v12 = sub_5544(1);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "VirtualAudio_DevicePropertyCache.cpp";
        v27 = 1024;
        v28 = 501;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to unlock VirtualAudio_DevicePropertyManager cache mutex.", buf, 0x12u);
      }

      v23 = 0;
      for (j = *&v24[8]; j != v24; j = *(j + 8))
      {
        v15 = *(j + 24);
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = v16;
            v18 = *(j + 16);
            if (v18)
            {
              sub_164A14(*(j + 32), (v18 + 40), sub_5264C, v18);
            }

            sub_1A8C0(v17);
          }
        }
      }

      sub_36A47C(&v23);
      v11 = v24;
    }

    sub_65310(v11);
  }
}

void sub_13DCB8(void *a1)
{
  v2 = a1[11];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = a1[10]) == 0)
  {
LABEL_30:
    v16 = sub_5544(23);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "VirtualStream.cpp";
      v25 = 1024;
      v26 = 413;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d UnregisterAllPropertyListeners() underlying stream is nullptr", buf, 0x12u);
    }

LABEL_33:
    if (!v3)
    {
      return;
    }

    goto LABEL_34;
  }

  v5 = sub_1649DC((a1 + 34));
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (sub_1649DC((a1 + 34)) <= i)
      {
        v18 = sub_5544(14);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "StandardUtilities.h";
          v25 = 1024;
          v26 = 1024;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): Index out of range", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Index out of range");
      }

      sub_26C0((a1 + 34));
      v7 = a1[70];
      if ((i & 0x8000000000000000) != 0)
      {
        v13 = i;
        do
        {
          v14 = *v7;
          if (*v7)
          {
            do
            {
              v10 = v14;
              v14 = v14[1];
            }

            while (v14);
          }

          else
          {
            do
            {
              v10 = v7[2];
              v11 = *v10 == v7;
              v7 = v10;
            }

            while (v11);
          }

          v7 = v10;
        }

        while (!__CFADD__(v13++, 1));
      }

      else if (i)
      {
        v8 = i;
        do
        {
          v9 = v7[1];
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
              v10 = v7[2];
              v11 = *v10 == v7;
              v7 = v10;
            }

            while (!v11);
          }

          v7 = v10;
        }

        while (v8-- > 1);
      }

      else
      {
        v10 = a1[70];
      }

      v21 = v10[4];
      v22 = *(v10 + 10);
      sub_3174((a1 + 34));
      sub_164A14(v4, &v21, sub_1785E4, a1);
    }

    goto LABEL_33;
  }

LABEL_34:
  sub_1A8C0(v3);
}

double sub_13DFC8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 <= 5)
  {
    *a3 = *&aTrsnRsntmfsamf[4 * a2];
  }

  result = NAN;
  *(a3 + 4) = -3587560918;
  return result;
}

double sub_13DFF8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 <= 2)
  {
    *a3 = dword_5C72EC[a2];
  }

  result = NAN;
  *(a3 + 4) = -3587560918;
  return result;
}

void sub_13E020(uint64_t a1)
{
  if (*(a1 + 40))
  {
    memset(v1, 0, sizeof(v1));
    *(a1 + 72) = 1;
    sub_1636D4(a1, 0, v1);
    v2 = v1;
    sub_DECD0(&v2);
  }
}

void sub_13E078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_DECD0(&a12);
  _Unwind_Resume(a1);
}

void sub_13E094()
{
  if ((atomic_load_explicit(&qword_6FD6F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD6F0))
  {
    sub_449F70();

    __cxa_guard_release(&qword_6FD6F0);
  }
}

uint64_t *sub_13E110(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    if (v3 != v4)
    {
      do
      {
        sub_93F70(v2, *v3);
        sub_140D84(v3++, 0);
        v4 = *(v2 + 16);
      }

      while (v3 != v4);
      v3 = *(v2 + 8);
    }

    while (v4 != v3)
    {
      sub_140D84(--v4, 0);
    }

    *(v2 + 16) = v3;
    v5 = *(v2 + 72);
    if (v5)
    {
      sub_54C20(*v2, 1, *(v2 + 32), v5, (v2 + 48), *(v2 + 36));
      *(v2 + 72) = 0;
    }

    v6 = *(v2 + 104);
    if (v6)
    {
      sub_54C20(*v2, 0, *(v2 + 32), v6, (v2 + 80), *(v2 + 36));
      *(v2 + 104) = 0;
    }

    v7 = *(v2 + 80);
    if (v7)
    {
      *(v2 + 88) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 48);
    if (v8)
    {
      *(v2 + 56) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 8);
    if (v9)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 8);
      if (v10 != v9)
      {
        do
        {
          sub_140D84(--v10, 0);
        }

        while (v10 != v9);
        v11 = *(v2 + 8);
      }

      *(v2 + 16) = v9;
      operator delete(v11);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_13E278(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    if (v3 != v4)
    {
      do
      {
        sub_212408(v2, *v3);
        sub_3E0308(v3++);
        v4 = *(v2 + 16);
      }

      while (v3 != v4);
      v3 = *(v2 + 8);
    }

    while (v4 != v3)
    {
      sub_3E0308(--v4);
    }

    *(v2 + 16) = v3;
    v5 = *(v2 + 72);
    if (v5)
    {
      sub_54C20(*v2, 1, *(v2 + 32), v5, (v2 + 48), *(v2 + 36));
      *(v2 + 72) = 0;
    }

    v6 = *(v2 + 104);
    if (v6)
    {
      sub_54C20(*v2, 0, *(v2 + 32), v6, (v2 + 80), *(v2 + 36));
      *(v2 + 104) = 0;
    }

    v7 = *(v2 + 80);
    if (v7)
    {
      *(v2 + 88) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 48);
    if (v8)
    {
      *(v2 + 56) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 8);
    if (v9)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 8);
      if (v10 != v9)
      {
        do
        {
          sub_3E0308(--v10);
        }

        while (v10 != v9);
        v11 = *(v2 + 8);
      }

      *(v2 + 16) = v9;
      operator delete(v11);
    }

    operator delete();
  }

  return result;
}

double sub_13E3EC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v4)
  {
    v7 = *(a1 + 16);
    if (v5 >= (*(a1 + 24) - v7) >> 2)
    {
      v9 = sub_5544(14);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "VirtualAudio_Control.cpp";
        v14 = 1024;
        v15 = 588;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): Invalid control address index", &v12, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DE494(exception, "Invalid control address index");
    }

    v6 = (v7 + 4 * v5);
    goto LABEL_6;
  }

  if (a2 <= 0x25)
  {
    v6 = &a0dap1dapcimici[4 * a2 + 32];
LABEL_6:
    *a3 = *v6;
  }

  result = NAN;
  *(a3 + 4) = -3587560918;
  return result;
}

void sub_13E54C(void *a1)
{
  *a1 = off_6BBF88;
  sub_14099C(a1);

  operator delete();
}

void sub_13E5A4(unint64_t a1)
{
  sub_13A50C(a1);

  operator delete();
}

uint64_t sub_13E5EC(uint64_t a1)
{
  *a1 = off_6D37F0;
  v2 = atomic_load(byte_6FCF18);
  if ((v2 & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 8);
        v8 = 136315906;
        v9 = "HP_Object.cpp";
        v10 = 1024;
        v11 = 79;
        v12 = 1024;
        v13 = v7;
        v14 = 2048;
        v15 = a1;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HP_Object with ID %u at address %p is being destroyed by something other than the HP_ObjectDestroyer", &v8, 0x22u);
      }
    }
  }

  sub_4E890();
  sub_13EB84(*(a1 + 8));
  sub_2820();
  sub_13ED28(*(a1 + 8));
  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_13E730(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_13E73C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_1A8C0(v4);
    }
  }

  a1[1] = v2;
}

void sub_13E788(void *a1)
{
  if (a1)
  {
    sub_13E788(*a1);
    sub_13E788(a1[1]);
    sub_DD7C4((a1 + 6));

    operator delete(a1);
  }
}

void sub_13E7DC(uint64_t a1)
{
  sub_65310((a1 + 200));
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 104));
  if (*(a1 + 88))
  {
    v3 = *(a1 + 80);
    v4 = *(*(a1 + 72) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 88) = 0;
    if (v3 != (a1 + 72))
    {
      do
      {
        v6 = v3[1];
        v7 = v3[3];
        if (v7)
        {
          sub_1A8C0(v7);
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (a1 + 72));
    }
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t sub_13E8AC(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = sub_5544(17);
    v3 = sub_5544(25);
    v4 = 0;
    *v21 = 0x100000002;
    v5 = *(v2 + 8);
    while (1)
    {
      v6 = *&v21[v4];
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
      *v21 = 136315394;
      *&v21[4] = "OrientationIODelegate.cpp";
      *&v21[12] = 1024;
      *&v21[14] = 35;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Unexpectedly deleted while still registered for Device Orientatino Updates, unregistering", v21, 0x12u);
    }

    v8 = *(a1 + 104);
    v10 = (a1 + 24);
    v9 = *(a1 + 24);
    if (*(a1 + 47) >= 0)
    {
      v11 = (a1 + 24);
    }

    else
    {
      v11 = *(a1 + 24);
    }

    sub_8AA24(v21, v11);
    v12 = v8(*&v21[8]);
    sub_8AAAC(v21);
    if (v12)
    {
      v13 = sub_5544(17);
      v14 = sub_5544(25);
      v15 = 0;
      *v21 = 0x100000002;
      v16 = *(v13 + 8);
      while (1)
      {
        v17 = *&v21[v15];
        if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
        {
          break;
        }

        v15 += 4;
        if (v15 == 8)
        {
          goto LABEL_21;
        }
      }

      if ((v16 & v17) == 0)
      {
        v13 = v14;
      }

LABEL_21:
      v18 = *v13;
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 47) < 0)
        {
          v10 = *v10;
        }

        *v21 = 136315906;
        *&v21[4] = "OrientationIODelegate.cpp";
        *&v21[12] = 1024;
        *&v21[14] = 37;
        v22 = 1024;
        v23 = v12;
        v24 = 2080;
        v25 = v10;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed [%d] to unregister %s for Device Orientation Updates", v21, 0x22u);
      }
    }
  }

  sub_133C04(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  return a1;
}

void sub_13EB24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_13EB30(void *a1)
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
}

uint64_t sub_13EB84(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    sub_47BD8(&unk_709740);
    *buf = a1;
    *&v6[4] = 0;
    sub_34DF70(a1, 0);
    v3 = sub_5544(44);
    if (*(v3 + 8))
    {
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *v6 = "AudioObjectPropertyListenerManager.cpp";
          *&v6[8] = 1024;
          *&v6[10] = 310;
          v7 = 2048;
          v8 = a1;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Added device ID %lu to expired object list.", buf, 0x1Cu);
        }
      }
    }

    sub_47C90(&unk_709740);
    operator new();
  }

  return result;
}

void sub_13ECFC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_13ED28(unsigned int a1)
{
  sub_47BD8(&unk_6FCDC8);
  v2 = sub_23B090(&xmmword_6FCEE8, a1);
  if (v2)
  {
    v3 = v2;
    sub_47BD8(v2[3] + 24);
    v4 = *(&xmmword_6FCEE8 + 1);
    v5 = v3[1];
    v6 = vcnt_s8(*(&xmmword_6FCEE8 + 8));
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *(&xmmword_6FCEE8 + 1))
      {
        v5 %= *(&xmmword_6FCEE8 + 1);
      }
    }

    else
    {
      v5 &= *(&xmmword_6FCEE8 + 1) - 1;
    }

    v7 = *(xmmword_6FCEE8 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == &qword_6FCEF8)
    {
      goto LABEL_19;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *(&xmmword_6FCEE8 + 1))
      {
        v9 %= *(&xmmword_6FCEE8 + 1);
      }
    }

    else
    {
      v9 &= *(&xmmword_6FCEE8 + 1) - 1;
    }

    if (v9 != v5)
    {
LABEL_19:
      if (!*v3)
      {
        goto LABEL_20;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *(&xmmword_6FCEE8 + 1))
        {
          v10 %= *(&xmmword_6FCEE8 + 1);
        }
      }

      else
      {
        v10 &= *(&xmmword_6FCEE8 + 1) - 1;
      }

      if (v10 != v5)
      {
LABEL_20:
        *(xmmword_6FCEE8 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= v4)
        {
          v12 %= v4;
        }
      }

      else
      {
        v12 &= v4 - 1;
      }

      if (v12 != v5)
      {
        *(xmmword_6FCEE8 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --qword_6FCF00;
    sub_20B704(1, v3);
  }

  sub_47C90(&unk_6FCDC8);
}

void sub_13EEF0(uint64_t a1)
{
  v1 = sub_23B090((*(a1 + 8) + 288), **(a1 + 16));
  if (v1)
  {
    v2 = v1[3] + 24;

    sub_47C90(v2);
  }
}

uint64_t sub_13EF38(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_13EF68(uint64_t a1)
{
  *a1 = off_6D0D10;
  v2 = (a1 + 136);
  sub_13F058(&v2);
  sub_13EFE4(a1);

  operator delete();
}

uint64_t sub_13EFE4(uint64_t a1)
{
  *a1 = off_6D0BC0;
  sub_477A0(*(a1 + 112));
  if (*(a1 + 88) == 1)
  {
    sub_477A0(*(a1 + 56));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_13F058(void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_13F100(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_13F138(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

uint64_t sub_13F174(uint64_t a1)
{
  v2 = sub_5544(25);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 47) < 0)
        {
          sub_54A0(__p, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          *__p = *(a1 + 24);
          v9 = *(a1 + 40);
        }

        v4 = __p;
        if (v9 < 0)
        {
          v4 = __p[0];
        }

        *buf = 136315650;
        v11 = "SpeakerInterferenceMitigationIODelegate.cpp";
        v12 = 1024;
        v13 = 170;
        v14 = 2080;
        v15 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying speaker interference mitigation IO delegate for chain %s", buf, 0x1Cu);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_ECFE4(a1);
  v5 = *(a1 + 88);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  sub_133B84(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_13F2D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_13F2E8(void *a1)
{
  sub_13EB30(a1 + 1);

  operator delete(a1);
}

void sub_13F328(void *a1)
{
  *a1 = off_6D3288;
  sub_14099C(a1);

  operator delete();
}

void sub_13F37C(uint64_t a1)
{
  sub_13D504(a1);

  operator delete();
}

uint64_t *sub_13F3B4(uint64_t a1)
{
  sub_13E110((a1 + 248), 0);

  return sub_13E278((a1 + 256), 0);
}

void sub_13F3F8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_3E2894(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_13F44C(uint64_t a1)
{
  sub_13C58C(a1);

  operator delete();
}

uint64_t *sub_13F488(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  if (result[1] != *result)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      (*(**(v2 + 8 * v3) + 16))(*(v2 + 8 * v3));
      v5 = *v1;
      result = *(*v1 + 8 * v3);
      if (result)
      {
        result = (*(*result + 8))(result);
        v5 = *v1;
      }

      *(v5 + 8 * v3) = 0;
      v2 = *v1;
      v3 = ++v4;
    }

    while (v4 < ((v1[1] - *v1) >> 3));
  }

  v1[1] = v2;
  return result;
}

void sub_13FC50(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x13FC58);
  }

  sub_1CC130(a1);
}

void sub_13FC68(uint64_t a1)
{
  v2 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  if (*(v2 + 304))
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "VirtualAudio_DevicePropertyManager.cpp";
      v13 = 1024;
      v14 = 74;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Stale property caches were not cleared before property manager teardown", buf, 0x12u);
    }

    v5 = *(a1 + 320);
    if (v5 != (a1 + 328))
    {
      do
      {
        v6 = v5[4];
        v7 = v5[5];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_13D6C0(v6);
        if (v7)
        {
          sub_1A8C0(v7);
        }

        v8 = v5[1];
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
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
      }

      while (v9 != (a1 + 328));
    }
  }

  sub_ED818(buf, a1);
}

void sub_13FF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_13FFB0(uint64_t a1)
{
  sub_13FFE8(a1);

  operator delete();
}

uint64_t sub_13FFE8(uint64_t a1)
{
  *a1 = off_6B9B28;
  sub_1199A8(*(a1 + 328));
  sub_87980((a1 + 296));
  sub_87980((a1 + 272));
  sub_87980((a1 + 248));
  sub_87980((a1 + 224));
  v2 = *(a1 + 216);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  sub_42A4D8(a1 + 32);
  v7 = *(a1 + 16);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_1401A8(void *a1)
{
  *a1 = off_6B9370;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_140218(void *a1)
{
  sub_1402CC(a1);

  operator delete();
}

void sub_140250(uint64_t a1)
{
  *a1 = off_6DB8B0;
  v2 = (a1 + 80);
  sub_F5714(&v2);
  sub_13BFA8(a1);

  operator delete();
}

uint64_t sub_1402CC(void *a1)
{
  *a1 = off_6B9140;
  v2 = a1[12];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[12] = 0;

  return sub_13E5EC(a1);
}

uint64_t sub_14034C(uint64_t a1)
{
  *a1 = off_6C12E8;
  *(a1 + 80) = off_6C13B8;
  sub_140514(a1 + 104);
  if (*(a1 + 868) == 1)
  {
    v2 = *(a1 + 704);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 696);
        if (v5)
        {
          (*(*v5 + 256))(v5);
        }

        sub_1A8C0(v4);
      }
    }

    sub_3050B8(a1, 1);
  }

  v6 = *(a1 + 512);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 504);
      if (v9 && *(a1 + 729) == 1)
      {
        v16 = 0x676C6F6273706D65;
        v17 = 0;
        sub_164A14(v9, &v16, sub_305574, a1);
      }

      sub_1A8C0(v8);
    }
  }

  v10 = *(a1 + 872);
  if (v10)
  {
    CFRelease(v10);
  }

  std::recursive_mutex::~recursive_mutex((a1 + 800));
  v11 = *(a1 + 792);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(a1 + 760);
  if (v12)
  {
    *(a1 + 768) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 704);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  sub_477A0(*(a1 + 648));
  sub_477A0(*(a1 + 600));
  sub_4E0BC((a1 + 520));
  v14 = *(a1 + 512);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  return sub_1405C0(a1);
}

uint64_t sub_140514(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    sub_13BD78((result + 24));
    v2 = v1[2];
    v1[1] = 0;
    v1[2] = 0;
    if (v2)
    {
      sub_1A8C0(v2);
    }

    result = caulk::semaphore::timed_wait((v1 + 3), -1.0);
    __dmb(9u);
  }

  return result;
}

void sub_140568(uint64_t a1)
{
  __dmb(0xBu);
  caulk::semaphore::signal((*(a1 + 40) + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1405C0(void *a1)
{
  *a1 = off_6D0AD8;
  a1[10] = off_6D0B88;
  sub_140514((a1 + 13));
  sub_13A300((a1 + 19));
  sub_140658((a1 + 13));
  v2 = a1[12];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_13BFA8(a1);
}

uint64_t sub_140658(uint64_t a1)
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

void sub_1406BC(void *a1)
{
  sub_1406F4(a1);

  operator delete();
}

uint64_t sub_1406F4(void *a1)
{
  *a1 = off_6B9270;
  v2 = a1[12];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[12] = 0;

  return sub_13E5EC(a1);
}

void sub_1407CC(void *a1)
{
  sub_140804(a1);

  operator delete();
}

uint64_t sub_140804(void *a1)
{
  *a1 = off_6BD118;
  sub_13D3BC(a1, a1[13]);
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = a1[13];
    a1[13] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return sub_13E5EC(a1);
}

void sub_1408C0(uint64_t a1)
{
  *a1 = off_6C0E60;
  v1 = (a1 + 56);
  v2 = (a1 + 80);
  sub_140948(&v2);
  v2 = v1;
  sub_140948(&v2);

  operator delete();
}

void sub_140948(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1634B8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

unint64_t sub_14099C(void *a1)
{
  *a1 = off_6C31C0;
  v2 = a1[126];
  if (v2)
  {
    a1[127] = v2;
    operator delete(v2);
  }

  v3 = a1[123];
  if (v3)
  {
    a1[124] = v3;
    operator delete(v3);
  }

  sub_65310(a1 + 120);
  v4 = a1[119];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return sub_140A24(a1);
}

unint64_t sub_140A24(unint64_t a1)
{
  *a1 = off_6C4CF0;
  sub_51AF8(a1);
  sub_5D988((a1 + 920));
  sub_5D988((a1 + 904));
  v5 = (a1 + 880);
  sub_5DD9C(&v5);
  v5 = (a1 + 856);
  sub_5DD9C(&v5);
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 808);
  if (v3)
  {
    *(a1 + 816) = v3;
    operator delete(v3);
  }

  return sub_13A668(a1);
}

uint64_t sub_140AD4(uint64_t result, OSStatus (__cdecl *a2)(AudioObjectID, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  if (!result && a2)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "AggregateDeviceUtilities.cpp";
      v7 = 1024;
      v8 = 699;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to destroy a non-zero IO Proc ID using an invalid device ID", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to destroy a non-zero IO Proc ID using an invalid device ID");
  }

  if (result && a2)
  {

    return AudioDeviceDestroyIOProcID(result, a2);
  }

  return result;
}

void sub_140C30(uint64_t a1)
{
  outData = a1;
  if (a1)
  {
    sub_4E890();
    sub_13EB84(a1);
    *&inAddress.mSelector = 0x676C6F6264616767;
    inAddress.mElement = 0;
    ioDataSize = 4;
    v2 = sub_108B50();
    PropertyData = AudioObjectGetPropertyData(v2, &inAddress, 0, 0, &ioDataSize, &outData);
    if (PropertyData)
    {
      v4 = PropertyData;
      v5 = sub_5544(17);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v4);
          if (v9 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          *buf = 136315650;
          v14 = "AggregateDeviceUtilities.cpp";
          v15 = 1024;
          v16 = 629;
          v17 = 2080;
          v18 = v7;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d HAL returned error '%s' when attempting to destroy the aggregate device.", buf, 0x1Cu);
          if (v9 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

uint64_t sub_140D84(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_140DD0(result);

    operator delete();
  }

  return result;
}

uint64_t sub_140DD0(uint64_t a1)
{
  sub_54C20(*a1, 1, *(a1 + 48), *(a1 + 200), (a1 + 176), *(a1 + 53));
  *(a1 + 200) = 0;
  sub_54C20(*a1, 0, *(a1 + 48), *(a1 + 232), (a1 + 208), *(a1 + 53));
  *(a1 + 232) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 208);
  if (v4)
  {
    *(a1 + 216) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_140E88(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_140EB8(AudioObjectID a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, const void *a6)
{
  result = AudioObjectSetPropertyData(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    v8 = result;
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v18, a2->mSelector);
      v11 = v19;
      v12 = v18[0];
      sub_22170(__p, v8);
      v13 = v18;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v17 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315906;
      v21 = "AggregateDevice_CommonBase.cpp";
      v22 = 1024;
      v23 = 3650;
      v24 = 2080;
      v25 = v13;
      v26 = 2080;
      v27 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: AudioObjectSetPropertyData() for selector '%s' returned status '%s'.", buf, 0x26u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v8;
  }

  return result;
}

void sub_141050(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_141070(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t *a6)
{
  v8 = *a2;
  if (*a2 > 1818453109)
  {
    switch(v8)
    {
      case 1818453110:
        v12 = *a5;
        if (v12 == (*(*a1 + 64))(a1))
        {
          (*(*a1 + 240))(a1);
          goto LABEL_15;
        }

        v15 = sub_5544(14);
        v16 = *v15;
        if (!*v15 || !os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        v23 = 136315394;
        v24 = "HP_Control.cpp";
        v25 = 1024;
        v26 = 474;
        v17 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioLevelControlPropertyDecibelValue";
        break;
      case 1818456932:
        v13 = *a5;
        if (v13 == (*(*a1 + 64))(a1))
        {
          v10 = (*(*a1 + 272))(a1, *a6);
          goto LABEL_15;
        }

        v18 = sub_5544(14);
        v16 = *v18;
        if (!*v18 || !os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        v23 = 136315394;
        v24 = "HP_Control.cpp";
        v25 = 1024;
        v26 = 485;
        v17 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioLevelControlPropertyConvertScalarToDecibels";
        break;
      case 1818456950:
        v9 = *a5;
        if (v9 == (*(*a1 + 64))(a1))
        {
          (*(*a1 + 256))(a1);
LABEL_15:
          *a6 = v10;
          return;
        }

        v19 = sub_5544(14);
        v16 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315394;
          v24 = "HP_Control.cpp";
          v25 = 1024;
          v26 = 469;
          v17 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioLevelControlPropertyScalarValue";
          break;
        }

LABEL_38:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 561211770;
      default:
        goto LABEL_19;
    }

LABEL_37:
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v17, &v23, 0x12u);
    goto LABEL_38;
  }

  if (v8 == 1818453106)
  {
    v14 = *a5;
    if (v14 == (*(*a1 + 64))(a1))
    {
      *a6 = (*(*a1 + 224))(a1);
      *(a6 + 1) = (*(*a1 + 232))(a1);
      return;
    }

    v20 = sub_5544(14);
    v16 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "HP_Control.cpp";
      v25 = 1024;
      v26 = 479;
      v17 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioLevelControlPropertyDecibelRange";
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (v8 == 1818453107)
  {
    v11 = *a5;
    if (v11 == (*(*a1 + 64))(a1))
    {
      (*(*a1 + 280))(a1, *a6);
      goto LABEL_15;
    }

    v21 = sub_5544(14);
    v16 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "HP_Control.cpp";
      v25 = 1024;
      v26 = 490;
      v17 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioLevelControlPropertyConvertDecibelsToScalar";
      goto LABEL_37;
    }

    goto LABEL_38;
  }

LABEL_19:

  sub_1C9E18(a1, a2, a3, a4, a5, a6);
}

float sub_1415DC(uint64_t a1)
{
  v5 = 4;
  v6 = 0.0;
  v1 = *(a1 + 96);
  v3 = 0x676C6F62766F6C6DLL;
  v4 = 0;
  (*(*v1 + 40))(v1, &v3, 0, 0, &v5, &v6);
  return v6;
}

void sub_1416BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1416D8(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  sub_477A0(*(a1 + 80));
  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_141740(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v6 = v2[1];
      v5 = v2[2];
      v2[2] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v6;
    }
  }
}

uint64_t sub_1417D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_203290(result, a4);
  }

  return result;
}

void sub_14183C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_141858(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 32);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
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
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

void *sub_1419F0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  sub_CBA88(a1, *a2, (a2 + 8));
  return a1;
}

void sub_141A44(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v28 = &v28;
  v29 = &v28;
  v30 = 0;
  v26 = a2 + 8;
  if (v2 == a2 + 8)
  {
    *a1 = a1;
    a1[1] = a1;
    v21 = a1 + 2;
    goto LABEL_19;
  }

  do
  {
    v3 = v2;
    v4 = *(v2 + 24);
    v27 = v3;
    v34[0] = v34;
    v34[1] = v34;
    v34[2] = 0;
    if (v4 != v3 + 32)
    {
      sub_65234(&v35, v34);
      v5 = *(v4 + 48);
      if (v5 && *(v5 + 8) != -1)
      {
        v6 = *(v4 + 40);
        atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        operator new();
      }

      v22 = sub_5544(14);
      v23 = *v22;
      if (*v22)
      {
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RouteCache.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 320;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v31 = &v31;
    v32 = &v31;
    v33 = 0;
    sub_65310(v34);
    sub_65234(&v35, &v28);
    for (i = v32; i != &v31; i = i[1])
    {
      sub_88A00(buf, i + 2, "", 452);
      v8 = *(*buf + 144);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v8 != 1885433888)
      {
        sub_652A0();
      }
    }

    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    v9 = v37;
    if (v37)
    {
      v11 = v35;
      v10 = v36;
      v12 = *(v35 + 8);
      v13 = *v36;
      *(v13 + 8) = v12;
      *v12 = v13;
      v14 = *buf;
      *(*buf + 8) = v10;
      *v10 = v14;
      *(v11 + 8) = buf;
      *buf = v11;
      *&buf[16] = v9;
      v37 = 0;
    }

    sub_65310(&v35);
    sub_65310(&v31);
    sub_11DB30(&v28, buf);
    sub_65310(buf);
    v2 = *(v27 + 8);
  }

  while (v2 != v26);
  v15 = v30;
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (v15)
  {
    v17 = v28;
    v16 = v29;
    v18 = *(v28 + 8);
    v19 = *v29;
    *(v19 + 8) = v18;
    *v18 = v19;
    v20 = *a1;
    *(v20 + 8) = v16;
    *v16 = v20;
    *a1 = v17;
    *(v17 + 8) = a1;
    a1[2] = v15;
    v21 = &v30;
LABEL_19:
    *v21 = 0;
  }

  sub_65310(&v28);
}

void sub_141E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_65310(va1);
  sub_65310(va);
  _Unwind_Resume(a1);
}

uint64_t sub_141EC0(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_189A00();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    sub_262264(v5);
  }

  v12 = 0;
  v13 = 144 * v2;
  sub_141FEC(144 * v2, a2);
  v14 = 144 * v2 + 144;
  v6 = *(a1 + 8);
  v7 = 144 * v2 + *a1 - v6;
  sub_1479DC(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_1478E8(&v12);
  return v11;
}

__n128 sub_141FEC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v3 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v3;
  *(a1 + 72) = *(a2 + 9);
  v4 = a2 + 5;
  v5 = *(a2 + 10);
  *(a1 + 80) = v5;
  v6 = a1 + 80;
  v7 = *(a2 + 11);
  *(a1 + 88) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 9) = v4;
    *v4 = 0;
    *(a2 + 11) = 0;
  }

  else
  {
    *(a1 + 72) = v6;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v8 = *(a2 + 30);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 120) = v8;
  result = a2[8];
  *(a1 + 128) = result;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  return result;
}

void *sub_142090(void *a1, void *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a2;
  }

  v4 = a1;
  if (sub_87164(a1 + 2, a3))
  {
    v6 = 1;
LABEL_5:
    if (v6)
    {
      v7 = 0;
      v8 = v4;
      while (v8 != a2)
      {
        v8 = v8[1];
        if (v6 == ++v7)
        {
          v9 = v6;
          v7 = v6;
          goto LABEL_18;
        }
      }

      v9 = v6;
    }

    else
    {
      v9 = 0;
      v7 = 0;
      v8 = v4;
    }

LABEL_18:
    while (v8 != a2)
    {
      if (!sub_87164(v8 + 2, a3))
      {
        goto LABEL_23;
      }

      v6 *= 2;
      v4 = v8;
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = 0;
      v9 = -v6;
      if (-v6 > 1)
      {
        v10 = -v6;
      }

      else
      {
        v10 = 1;
      }

      while (v8 != a2)
      {
        v8 = *v8;
        if (v10 == ++v7)
        {
          v7 = v10;
          goto LABEL_18;
        }
      }
    }

    v8 = a2;
LABEL_23:
    v11 = v7 - v9 + v6;
    if (v11)
    {
      if (v11 == 1)
      {
        return v8;
      }

      else
      {
        do
        {
          v12 = v11 >> 1;
          v13 = v4;
          if (v11 != 1)
          {
            v14 = v12 + 1;
            v13 = v4;
            do
            {
              v13 = v13[1];
              --v14;
            }

            while (v14 > 1);
          }

          if (sub_87164(v13 + 2, a3))
          {
            v4 = v13[1];
            v12 = v11 + ~v12;
          }

          v11 = v12;
        }

        while (v12);
      }
    }
  }

  return v4;
}

void sub_14228C(uint64_t a1, uint64_t **a2, std::__shared_weak_count_vtbl **a3)
{
  v87 = *(a1 + 8);
  sub_27A4();
  v3 = atomic_load(&qword_6E9558);
  if (v3 != pthread_self())
  {
    v81 = sub_5544(14);
    v82 = sub_468EC(1, *v81, *(v81 + 8));
    v83 = v82;
    if (v82 && os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4381;
      _os_log_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is not held by this thread.", buf, 0x12u);
    }
  }

  v4 = *(v87 + 144);
  v5 = *(v87 + 152);
  if (v4 != v5)
  {
    v6 = (a3 + 1);
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }

      v8 = *v4;
      v9 = *(*v4 + 384);
      v10 = *(*v4 + 388);
      v11 = (a3 + 1);
      do
      {
        v12 = *(v7 + 28);
        v14 = v12 == v9;
        v13 = v12 < v9;
        if (v14)
        {
          v13 = *(v7 + 32) < v10;
        }

        v14 = !v13;
        if (v13)
        {
          v15 = 8;
        }

        else
        {
          v15 = 0;
        }

        if (v14)
        {
          v11 = v7;
        }

        v7 = *(v7 + v15);
      }

      while (v7);
      if (v11 == v6)
      {
        goto LABEL_27;
      }

      v16 = *(v11 + 7);
      v17 = *(v11 + 8) > v10;
      v14 = v16 == v9;
      v18 = v16 > v9;
      if (v14)
      {
        v18 = v17;
      }

      if (v18)
      {
        goto LABEL_27;
      }

      v19 = sub_DA5E8(v87 + 176, v9, v10);
      v20 = (*(*v8 + 544))(v8);
      v21 = atomic_load((v20 + 96));
      v22 = pthread_self();
      if (v87 + 184 == v19)
      {
        break;
      }

      if (v21 == v22)
      {
        goto LABEL_27;
      }

      v23 = atomic_load((v20 + 200));
      if (v23 == pthread_self())
      {
        goto LABEL_27;
      }

      v24 = sub_5544(14);
      v25 = sub_468EC(1, *v24, *(v24 + 8));
      v26 = v25;
      if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = v8[2];
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 4388;
        v98 = 1024;
        v99 = v27;
        v100 = 2048;
        v101 = v8;
        v28 = v26;
        v29 = "%25s:%-5d ASSERTION FAILURE: deviceRouteChangeInProgess is true, but the IO monitor for device ID %u (%p) is not held by this thread.";
LABEL_32:
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x22u);
      }

LABEL_33:

LABEL_27:
      v4 += 8;
      if (v4 == v5)
      {
        goto LABEL_34;
      }
    }

    if (v21 != v22)
    {
      v30 = atomic_load((v20 + 200));
      if (v30 != pthread_self())
      {
        goto LABEL_27;
      }
    }

    v31 = sub_5544(14);
    v32 = sub_468EC(1, *v31, *(v31 + 8));
    v26 = v32;
    if (!v32 || !os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v33 = v8[2];
    *buf = 136315906;
    *&buf[4] = "VirtualAudio_PlugIn.mm";
    *&buf[12] = 1024;
    *&buf[14] = 4389;
    v98 = 1024;
    v99 = v33;
    v100 = 2048;
    v101 = v8;
    v28 = v26;
    v29 = "%25s:%-5d ASSERTION FAILURE: deviceRouteChangeInProgess is false, but the IO monitor for device ID %u (%p) is held by this thread.";
    goto LABEL_32;
  }

LABEL_34:
  v35 = *a2;
  v34 = a2[1];
  if (*a2 != v34)
  {
    while (*(*v35 + 4) || **v35 != 1986291046)
    {
      v35 += 41;
      if (v35 == v34)
      {
        goto LABEL_38;
      }
    }
  }

  if (v34 == v35)
  {
LABEL_38:
    v36 = sub_5544(14);
    v37 = sub_468EC(1, *v36, *(v36 + 8));
    v38 = v37;
    if (v37)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 4395;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v40 = *(v87 + 216);
  LOBYTE(theDict) = 0;
  v95 = 0;
  if (*(v40 + 16) == 1)
  {
    sub_98A64(&theDict, *(v40 + 8));
    v95 = 1;
    if (theDict)
    {
      if (CFDictionaryGetCount(theDict))
      {
        v41 = *(v35 + 3);
        if (v41 <= 1987077986)
        {
          if (v41 == 1768057203)
          {
            goto LABEL_65;
          }

          v42 = 1919776355;
        }

        else
        {
          if (v41 == 1987077987 || v41 == 1987081833)
          {
            goto LABEL_65;
          }

          v42 = 1987081839;
        }

        if (v41 == v42)
        {
          goto LABEL_65;
        }

        v43 = *(v35 + 2);
        if (v43 > 1668313714)
        {
          if (v43 != 1668313715 && v43 != 1668703084)
          {
            v44 = 1668576377;
LABEL_60:
            if (v43 != v44)
            {
              goto LABEL_65;
            }
          }
        }

        else if (v43 != 1668301427 && v43 != 1668309362)
        {
          v44 = 1668313666;
          goto LABEL_60;
        }

        v45 = *sub_5544(2);
        v46 = v45;
        if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4407;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VP block was provided in a play and record category, but not in a chat mode! Please file a bug against Audio (New Bugs). Will need to figure out what app has a malformed session.", buf, 0x12u);
        }
      }
    }
  }

LABEL_65:
  if (*(v87 + 144) != *(v87 + 152))
  {
    v47 = *a2;
    v86 = a2[1];
    if (*a2 != v86)
    {
      do
      {
        v48 = *v47;
        v104[0] = off_6CDED0;
        v104[3] = v104;
        sub_9C674(buf, (v48 + 16), v104);
        sub_85148(v104);
        v92 = 0;
        v93 = 0;
        v91 = &v92;
        v49 = *buf;
        if (*buf != &buf[8])
        {
          do
          {
            v50 = std::__shared_weak_count::lock(v49[5]);
            v51 = v49[4];
            shared_owners = v51[8].__shared_owners_;
            v89 = v51[8].__vftable;
            v90 = shared_owners;
            if (shared_owners)
            {
              atomic_fetch_add_explicit(&shared_owners->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_5659C(&__p, &v89, "", 4421);
            v53 = v92;
            if (!v92)
            {
LABEL_76:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v54 = v53;
                v55 = v53[4];
                if (__p.__r_.__value_.__r.__words[0] >= v55)
                {
                  break;
                }

                v53 = *v54;
                if (!*v54)
                {
                  goto LABEL_76;
                }
              }

              if (v55 >= __p.__r_.__value_.__r.__words[0])
              {
                break;
              }

              v53 = v54[1];
              if (!v53)
              {
                goto LABEL_76;
              }
            }

            if (__p.__r_.__value_.__l.__size_)
            {
              sub_1A8C0(__p.__r_.__value_.__l.__size_);
            }

            if (v90)
            {
              std::__shared_weak_count::__release_weak(v90);
            }

            sub_1A8C0(v50);
            v56 = v49[1];
            if (v56)
            {
              do
              {
                v57 = v56;
                v56 = v56->__vftable;
              }

              while (v56);
            }

            else
            {
              do
              {
                v57 = v49[2];
                v14 = *v57 == v49;
                v49 = v57;
              }

              while (!v14);
            }

            v49 = v57;
          }

          while (v57 != &buf[8]);
          v58 = v91;
          if (v91 != &v92)
          {
            do
            {
              (*(*v58[4] + 232))(v58[4], v87 + 448, v47);
              v59 = v58[1];
              if (v59)
              {
                do
                {
                  v60 = v59;
                  v59 = *v59;
                }

                while (v59);
              }

              else
              {
                do
                {
                  v60 = v58[2];
                  v14 = *v60 == v58;
                  v58 = v60;
                }

                while (!v14);
              }

              v58 = v60;
            }

            while (v60 != &v92);
          }
        }

        sub_1199A8(v92);
        sub_4B0F4(*&buf[8]);
        v47 += 41;
      }

      while (v47 != v86);
    }
  }

  v92 = 0;
  v93 = 0;
  v91 = &v92;
  v62 = (a3 + 1);
  v61 = *a3;
  __p.__r_.__value_.__r.__words[0] = *(v87 + 176);
  v89 = v61;
  *buf = &v91;
  *&buf[8] = &v92;
  v96 = 0;
  if (v61 == (a3 + 1))
  {
    goto LABEL_135;
  }

  do
  {
    v63 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = sub_142F70(__p.__r_.__value_.__l.__data_, (v87 + 184), HIDWORD(v61->__get_deleter), v61->__on_zero_shared_weak);
    sub_142EA0(__p.__r_.__value_.__r.__words[0] == v63, &__p, &v89, buf, &v96);
    if (__p.__r_.__value_.__r.__words[0] == v87 + 184)
    {
      break;
    }

    v64 = v89;
    v89 = sub_142F70(v89, v62, *(__p.__r_.__value_.__r.__words[0] + 28), *(__p.__r_.__value_.__r.__words[0] + 32));
    sub_142EA0(v89 == v64, &__p, &v89, buf, &v96);
    v61 = v89;
  }

  while (v89 != v62);
  if (!v93)
  {
LABEL_135:
    v65 = *a3;
    if (*a3 != v62)
    {
      do
      {
        v66 = *(&v65->__get_deleter + 4);
        v89 = v66;
        v67 = sub_758D4(v66, SHIDWORD(v66), *(v87 + 144), *(v87 + 152));
        if (v67)
        {
          v68 = v67;
          v69 = sub_5544(2);
          if (*(v69 + 8))
          {
            v70 = *v69;
            if (v70)
            {
              v71 = v70;
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
              {
                v72 = *(v68 + 8);
                sub_68108(&__p, &v89);
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136316162;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 4441;
                v98 = 1024;
                v99 = v72;
                v100 = 2048;
                v101 = v68;
                v102 = 2080;
                v103 = p_p;
                _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEBUG, "%25s:%-5d Notifying device %u (%p) %s to prepare for route change", buf, 0x2Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          sub_143400(v68);
        }

        sub_147938(v87 + 176, v66, HIDWORD(v66));
        v74 = v65->~__shared_weak_count_0;
        if (v74)
        {
          do
          {
            on_zero_shared = v74;
            v74 = v74->~__shared_weak_count;
          }

          while (v74);
        }

        else
        {
          do
          {
            on_zero_shared = v65->__on_zero_shared;
            v14 = on_zero_shared->~__shared_weak_count == v65;
            v65 = on_zero_shared;
          }

          while (!v14);
        }

        v65 = on_zero_shared;
      }

      while (on_zero_shared != v62);
    }
  }

  v76 = *a2;
  v77 = a2[1];
LABEL_117:
  if (v76 != v77)
  {
    v78 = *v76 + 16;
    for (i = *(*v76 + 24); ; i = *(i + 8))
    {
      if (i == v78)
      {
        v76 += 41;
        goto LABEL_117;
      }

      if (sub_9C4E4(1886545251, (i + 16)))
      {
        break;
      }
    }

    v80 = *(v87 + 200);
    if (v80)
    {
      v80(*(v87 + 208));
    }
  }

  sub_477A0(v92);
  if (v95 == 1 && theDict)
  {
    CFRelease(theDict);
  }
}

uint64_t sub_142EA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_3AA604(a4, (*a2 + 28));
      v8 = *a2;
      v9 = *(*a2 + 8);
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

void *sub_142F70(void *a1, void *a2, unsigned int a3, unsigned int a4)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 7);
    v5 = v4 == a3;
    v6 = v4 < a3;
    if (v5)
    {
      v6 = *(a1 + 8) < a4;
    }

    if (!v6)
    {
      return a1;
    }

    v7 = 1;
LABEL_6:
    if (v7)
    {
      v8 = 0;
      v9 = a1;
      do
      {
        if (v9 == a2)
        {
          v12 = v7;
          goto LABEL_28;
        }

        v10 = v9[1];
        v11 = v9;
        if (v10)
        {
          do
          {
            v9 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v9 = v11[2];
            v5 = *v9 == v11;
            v11 = v9;
          }

          while (!v5);
        }

        ++v8;
      }

      while (v8 != v7);
      v12 = v7;
      v8 = v7;
    }

    else
    {
      v12 = 0;
      v8 = 0;
      v9 = a1;
    }

LABEL_28:
    while (v9 != a2)
    {
      v16 = *(v9 + 7);
      v5 = v16 == a3;
      v17 = v16 < a3;
      if (v5)
      {
        v17 = *(v9 + 8) < a4;
      }

      if (!v17)
      {
        break;
      }

      v7 *= 2;
      a1 = v9;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = 0;
      v12 = -v7;
      if (-v7 > 1)
      {
        v13 = -v7;
      }

      else
      {
        v13 = 1;
      }

      while (v9 != a2)
      {
        v14 = *v9;
        v15 = v9;
        if (*v9)
        {
          do
          {
            v9 = v14;
            v14 = v14[1];
          }

          while (v14);
        }

        else
        {
          do
          {
            v9 = v15[2];
            v5 = *v9 == v15;
            v15 = v9;
          }

          while (v5);
        }

        if (++v8 == v13)
        {
          v8 = v13;
          goto LABEL_28;
        }
      }
    }

    a2 = v9;
    v18 = v8 - v12 + v7;
    if (!v18)
    {
      return a1;
    }

    if (v18 != 1)
    {
      do
      {
        v19 = v18 >> 1;
        v20 = a1;
        if (v18 >= 2)
        {
          v21 = v18 >> 1;
          v22 = a1;
          do
          {
            v23 = v22[1];
            if (v23)
            {
              do
              {
                v20 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v20 = v22[2];
                v5 = *v20 == v22;
                v22 = v20;
              }

              while (!v5);
            }

            v22 = v20;
          }

          while (v21-- > 1);
        }

        v25 = *(v20 + 7);
        v5 = v25 == a3;
        v26 = v25 < a3;
        if (v5)
        {
          v26 = *(v20 + 8) < a4;
        }

        if (v26)
        {
          v27 = v20[1];
          if (v27)
          {
            do
            {
              a1 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              a1 = v20[2];
              v5 = *a1 == v20;
              v20 = a1;
            }

            while (!v5);
          }

          v19 = v18 + ~v19;
        }

        v18 = v19;
      }

      while (v19);
      return a1;
    }
  }

  return a2;
}

void sub_143178(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = "";
  if (!a2)
  {
    v5 = "un";
  }

  v18 = v5;
  do
  {
    v6 = v4;
    v7 = (*(*a1 + 88))(a1, v4 & 1);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        v10 = (*(*a1 + 96))(a1, v6 & 1, v9);
        if (v10)
        {
          v11 = v10;
          if (*(v10 + 616) != a2)
          {
            v12 = sub_5544(23);
            v13 = *v12;
            if (*v12)
            {
              if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
              {
                sub_23148(__p, (v11 + 8));
                v14 = __p;
                if (v20 < 0)
                {
                  v14 = __p[0];
                }

                v15 = "un";
                if (*(v11 + 616))
                {
                  v15 = "";
                }

                *buf = 136316162;
                v22 = "VirtualStream.cpp";
                v23 = 1024;
                v24 = 1042;
                v25 = 2080;
                v26 = v14;
                v27 = 2080;
                v28 = v15;
                v29 = 2080;
                v30 = v18;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Stream %s is currently flagged as %strustworthy, but it should be flagged as %strustworthy.", buf, 0x30u);
                if (v20 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }

        else
        {
          v16 = sub_5544(17);
          v17 = *v16;
          if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v22 = "AggregateDevice_CommonBase.cpp";
            v23 = 1024;
            v24 = 543;
            v25 = 1024;
            LODWORD(v26) = v9;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Stream index %u was not resolvable to a va::VirtualStream", buf, 0x18u);
          }
        }

        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }

    v4 = 1;
  }

  while ((v6 & 1) == 0);
}

uint64_t sub_143400(std::string::size_type a1)
{
  sub_27A4();
  v2 = atomic_load(&qword_6E9558);
  if (v2 != pthread_self())
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "VirtualAudio_Device.cpp";
      v25 = 1024;
      v26 = 733;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v23, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = atomic_load((a1 + 560));
  if (v3 == pthread_self() || (v4 = atomic_load((a1 + 664)), v4 == pthread_self()))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "VirtualAudio_Device.cpp";
      v25 = 1024;
      v26 = 734;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v23, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v13, "Precondition failure.");
  }

  *(a1 + 988) = 1;
  sub_27A4();
  v5 = atomic_load(&qword_6E9558);
  if (v5 != pthread_self())
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "VirtualAudio_Device.cpp";
      v25 = 1024;
      v26 = 146;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v23, 0x12u);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v22, "Precondition failure.");
  }

  v6 = (*(*a1 + 544))(a1);
  v7 = atomic_load((v6 + 96));
  if (v7 == pthread_self() || (v8 = atomic_load((v6 + 200)), v8 == pthread_self()))
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "VirtualAudio_Device.cpp";
      v25 = 1024;
      v26 = 147;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v23, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v16, "Precondition failure.");
  }

  v9 = *(a1 + 872);
  if (v9)
  {
    (*(*v9 + 192))(v9, 1);
  }

  sub_1481C0(a1, 0);

  return sub_14385C(a1, 1, 1);
}

uint64_t sub_14385C(std::string::size_type a1, int a2, int a3)
{
  sub_27A4();
  v6 = atomic_load(&qword_6E9558);
  if (v6 != pthread_self())
  {
    v50 = sub_5544(14);
    v51 = *v50;
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v61 = 1024;
      v62 = 178;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v7 = atomic_load((a1 + 560));
  v8 = pthread_self();
  if (a2)
  {
    if (v7 == v8 || (v9 = atomic_load((a1 + 664)), v9 == pthread_self()))
    {
      v10 = sub_5544(14);
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v61 = 1024;
          v62 = 187;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v12, "Precondition failure.");
    }
  }

  else if (v7 != v8)
  {
    v13 = atomic_load((a1 + 664));
    if (v13 != pthread_self())
    {
      v53 = sub_5544(14);
      v54 = *v53;
      if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        v61 = 1024;
        v62 = 189;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v55 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v55, "Precondition failure.");
    }
  }

  *(a1 + 936) = 1;
  v14 = std::uncaught_exceptions();
  v15 = *(a1 + 440);
  if (v15)
  {
    if ((*(v15 + 136) & 1) == 0)
    {
      v48 = sub_5544(14);
      v49 = *v48;
      if (*v48)
      {
        if (os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_DevicePropertyManager.cpp";
          v61 = 1024;
          v62 = 355;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VirtualAudio_DevicePropertyManager has not been initialized.", buf, 0x12u);
        }
      }
    }

    v16 = *(v15 + 32);
    __p.__r_.__value_.__r.__words[0] = v15 + 32;
    __p.__r_.__value_.__s.__data_[8] = (*(v16 + 16))(v15 + 32);
    if (*(v15 + 336))
    {
      v17 = sub_5544(1);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        std::to_string(&v59, *(v15 + 336));
        v19 = (v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v59 : v59.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_DevicePropertyManager.cpp";
        v61 = 1024;
        v62 = 366;
        v63 = 2080;
        v64[0] = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Found %s stale property caches (expected 0)", buf, 0x1Cu);
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }
      }

      sub_1855BC(v15 + 320);
    }

    sub_ED818(buf, v15);
  }

  LODWORD(v58[0]) = std::uncaught_exceptions();
  v58[1] = a1;
  if (a2)
  {
    sub_93D0C(a1 + 464);
  }

  LODWORD(v59.__r_.__value_.__l.__data_) = std::uncaught_exceptions();
  v59.__r_.__value_.__l.__size_ = a1;
  v59.__r_.__value_.__s.__data_[16] = a2;
  if (*(a1 + 872))
  {
    v20 = *(a1 + 248);
    if (a3)
    {
      if (*(v20 + 112) || *(v20 + 116))
      {
        v21 = sub_5544(1);
        v22 = sub_5544(32);
        v23 = 0;
        *buf = 0x100000002;
        v24 = *(v21 + 8);
        while (1)
        {
          v25 = *&buf[v23];
          if (((v24 & v25) != 0) != ((*(v22 + 8) & v25) != 0))
          {
            break;
          }

          v23 += 4;
          if (v23 == 8)
          {
            goto LABEL_40;
          }
        }

        if ((v24 & v25) == 0)
        {
          v21 = v22;
        }

LABEL_40:
        v31 = *v21;
        if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(a1 + 248);
          v34 = *(v32 + 8);
          v33 = *(v32 + 16);
          v56 = *(a1 + 384);
          sub_68108(&__p, &v56);
          v35 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v61 = 1024;
          v62 = 229;
          v63 = 1024;
          LODWORD(v64[0]) = (v33 - v34) >> 3;
          WORD2(v64[0]) = 2080;
          *(v64 + 6) = v35;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Internal configuration change request to stop %d IO proc(s) on VAD: '%s'.", buf, 0x22u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        (*(*a1 + 416))(a1);
      }
    }

    else
    {
      if (*(v20 + 116))
      {
        v26 = sub_5544(1);
        v27 = sub_5544(32);
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
            goto LABEL_50;
          }
        }

        if ((v29 & v30) == 0)
        {
          v26 = v27;
        }

LABEL_50:
        v36 = *v26;
        if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(*(a1 + 248) + 116);
          v56 = *(a1 + 384);
          sub_68108(&__p, &v56);
          v38 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v61 = 1024;
          v62 = 241;
          v63 = 1024;
          LODWORD(v64[0]) = v37;
          WORD2(v64[0]) = 2080;
          *(v64 + 6) = v38;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Internal configuration change request to stop %u null IO proc(s) on VAD: '%s'.", buf, 0x22u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        (*(*a1 + 592))(a1, 1);
        v20 = *(a1 + 248);
      }

      if (*(v20 + 112))
      {
        v39 = sub_5544(1);
        v40 = sub_5544(32);
        v41 = 0;
        *buf = 0x100000002;
        v42 = *(v39 + 8);
        while (1)
        {
          v43 = *&buf[v41];
          if (((v42 & v43) != 0) != ((*(v40 + 8) & v43) != 0))
          {
            break;
          }

          v41 += 4;
          if (v41 == 8)
          {
            goto LABEL_65;
          }
        }

        if ((v42 & v43) == 0)
        {
          v39 = v40;
        }

LABEL_65:
        v44 = *v39;
        if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(*(a1 + 248) + 112);
          v56 = *(a1 + 384);
          sub_68108(&__p, &v56);
          v46 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v61 = 1024;
          v62 = 250;
          v63 = 1024;
          LODWORD(v64[0]) = v45;
          WORD2(v64[0]) = 2080;
          *(v64 + 6) = v46;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Internal configuration change request to stop %u normal IO proc(s) on VAD: '%s'.", buf, 0x22u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        (*(*a1 + 592))(a1, 0);
      }
    }
  }

  sub_1443EC(&v59);
  sub_14436C(v58);
  result = std::uncaught_exceptions();
  if (result > v14)
  {
    *(a1 + 936) = 0;
  }

  return result;
}

uint64_t sub_14436C(uint64_t a1)
{
  if (std::uncaught_exceptions() > *a1)
  {
    v2 = *(*(a1 + 8) + 440);
    if (v2)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      sub_1850C0(v2);
    }
  }

  return a1;
}

void sub_1443D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_DECD0(va);
  sub_1CC130(a1);
}

uint64_t sub_1443EC(uint64_t a1)
{
  if (std::uncaught_exceptions() > *a1 && *(a1 + 16) == 1)
  {
    sub_9650C((*(a1 + 8) + 464));
  }

  return a1;
}

uint64_t sub_144444(void *a1, int a2)
{
  v2 = a1[1];
  if (v2 != a1)
  {
    while (2)
    {
      for (i = v2[4]; i != v2 + 3; i = i[1])
      {
        v6 = i[3];
        if (v6 != i + 4)
        {
          do
          {
            sub_88A00(&v12, v6 + 5, "", 315);
            v7 = *(v12 + 144);
            if (v13)
            {
              sub_1A8C0(v13);
            }

            if (v7 == a2)
            {
              return 1;
            }

            v8 = v6[1];
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
                v9 = v6[2];
                v10 = *v9 == v6;
                v6 = v9;
              }

              while (!v10);
            }

            v6 = v9;
          }

          while (v9 != i + 4);
        }
      }

      v2 = v2[1];
      if (v2 != a1)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

std::string *sub_144548(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  std::string::append(a1, "Reconfig Context: ", 0x12uLL);
  if (*(a2 + 324) == 1)
  {
    v4 = *(a2 + 320);
    if (v4 > 4)
    {
      v5 = "????";
    }

    else
    {
      v5 = off_6BA918[v4];
    }
  }

  else
  {
    v5 = "Unknown";
  }

  sub_53E8(&__p, v5);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Route Info: ", 0xEuLL);
  sub_108DF0(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_144688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1446C8(std::string *a1, unsigned int **a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  v4 = *a2;
  for (i = a2[1]; v4 != i; v4 += 36)
  {
    sub_1447B8(&__p, v4);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_144780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1447B8(std::string *a1, unsigned int *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ Device Type: ", 0xFuLL);
  sub_22170(&__p, *a2);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "[ Context ID: ", 0xEuLL);
  std::to_string(&__p, a2[1]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Reconfiguration Context: ", 0x1BuLL);
  v8 = a2[30];
  if (v8 > 4)
  {
    v9 = "????";
  }

  else
  {
    v9 = off_6BA918[v8];
  }

  sub_53E8(&__p, v9);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v10, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_144920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_144968(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_144A14(a1, v3, *(v5 + 7), *(v5 + 8));
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

    while (v7 != v4);
  }

  return a1;
}

uint64_t sub_144A14(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v4 = *sub_144AA4(a1, a2, &v7, &v6, a3, a4);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_144AA4(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned int a5, unsigned int a6)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_5;
  }

  v6 = *(a2 + 7);
  v7 = *(a2 + 8);
  v8 = v7 > a6;
  if (v6 != a5)
  {
    v8 = v6 > a5;
  }

  if (v8)
  {
LABEL_5:
    v9 = *a2;
    if (*a1 == a2)
    {
      v11 = a2;
LABEL_23:
      if (v9)
      {
        *a3 = v11;
        return v11 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v17 = a2;
      do
      {
        v11 = v17[2];
        v13 = *v11 == v17;
        v17 = v11;
      }

      while (v13);
    }

    v18 = *(v11 + 7);
    v13 = v18 == a5;
    v19 = v18 < a5;
    if (v13)
    {
      v19 = *(v11 + 8) < a6;
    }

    if (v19)
    {
      goto LABEL_23;
    }

    return sub_147A4C(a1, a3, a5, a6);
  }

  v12 = v7 < a6;
  v13 = v6 == a5;
  v14 = v6 < a5;
  if (v13)
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = a2[1];
    if (v15)
    {
      v16 = a2[1];
      do
      {
        a4 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      v20 = a2;
      do
      {
        a4 = v20[2];
        v13 = *a4 == v20;
        v20 = a4;
      }

      while (!v13);
    }

    if (a4 == a1 + 1)
    {
      goto LABEL_34;
    }

    v21 = *(a4 + 7);
    v13 = v21 == a5;
    v22 = v21 > a5;
    if (v13)
    {
      v22 = *(a4 + 8) > a6;
    }

    if (v22)
    {
LABEL_34:
      if (v15)
      {
        *a3 = a4;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }

      return a4;
    }

    return sub_147A4C(a1, a3, a5, a6);
  }

  *a3 = a2;
  *a4 = a2;
  return a4;
}

void *sub_144C08(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    sub_6ACD8();
  }

  *result = 0;
  result[1] = 16 * a3;
  result[2] = 16 * a3;
  result[3] = 0;
  return result;
}

BOOL sub_144C80(uint64_t a1, _DWORD **a2)
{
  if (*a2[14] == 1667396196 && *(*a2 + 4) >= 2uLL)
  {
    v3 = (*a2 + 6);
    while (1)
    {
      v4 = *v3;
      v5 = (*a2 + 4);
      v6 = v5 == v4;
      if (v5 == v4)
      {
        break;
      }

      sub_25704(v12, (v4 + 16), "", 635);
      v7 = *(*v12 + 144);
      if (*&v12[8])
      {
        sub_1A8C0(*&v12[8]);
      }

      v3 = (v4 + 8);
      if (v7 != 1885433888)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  v8 = sub_5544(20);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = "doesn't handle";
        *&v12[4] = "RoutingHandler.cpp";
        *v12 = 136315650;
        if (v6)
        {
          v10 = "handles";
        }

        *&v12[12] = 1024;
        *&v12[14] = 641;
        v13 = 2080;
        v14 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d RoutingHandler_Broadcast %s the given route.", v12, 0x1Cu);
      }
    }
  }

  return v6;
}

BOOL sub_144E0C(uint64_t a1, uint64_t a2)
{
  if (!sub_144C80(a1, a2))
  {
    return 0;
  }

  v3 = sub_86A50(*(a2 + 112) + 8, *(a2 + 12));
  v4 = 0;
  if (v3 & 0x100) != 0 && (v3)
  {
    sub_9C878(v24, (*a2 + 16));
    if (v25 < 2)
    {
      v4 = 0;
LABEL_38:
      sub_4B0F4(v24[1]);
      return v4;
    }

    sub_88A00(&v19, (v24[0] + 32), "", 53);
    (*(*v19 + 272))(&v21);
    if (v20)
    {
      sub_1A8C0(v20);
    }

    if (v23 == v25)
    {
      v5 = v22;
      if (v22 != &v21)
      {
        v6 = v24[0];
        while (1)
        {
          v7 = v5[3];
          if (!v7)
          {
            break;
          }

          v8 = std::__shared_weak_count::lock(v7);
          v9 = v8;
          if (!v8)
          {
            goto LABEL_18;
          }

          v10 = v5[2];
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v8);
          v11 = std::__shared_weak_count::lock(v9);
          v12 = 0;
          if (!v11)
          {
            v10 = 0;
          }

LABEL_19:
          v13 = v6[5];
          if (v13)
          {
            v14 = std::__shared_weak_count::lock(v13);
            if (v14)
            {
              v4 = v10 == v6[4];
              sub_1A8C0(v14);
              if (!v11)
              {
                goto LABEL_25;
              }

LABEL_24:
              sub_1A8C0(v11);
              goto LABEL_25;
            }
          }

          v4 = v10 == 0;
          if (v11)
          {
            goto LABEL_24;
          }

LABEL_25:
          if ((v12 & 1) == 0)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          if (v4)
          {
            v15 = v6[1];
            if (v15)
            {
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v16 = v6[2];
                v17 = *v16 == v6;
                v6 = v16;
              }

              while (!v17);
            }

            v5 = v5[1];
            v6 = v16;
            if (v5 != &v21)
            {
              continue;
            }
          }

          goto LABEL_37;
        }

        v9 = 0;
LABEL_18:
        v10 = 0;
        v11 = 0;
        v12 = 1;
        goto LABEL_19;
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

LABEL_37:
    sub_65310(&v21);
    goto LABEL_38;
  }

  return v4;
}

void sub_145020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  sub_4B0F4(a15);
  _Unwind_Resume(a1);
}

BOOL sub_145048(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 112);
  v3 = sub_5544(20);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        v5 = "doesn't handle";
        v8 = "RoutingHandler.cpp";
        v7 = 136315650;
        if (v2 == 1668246894)
        {
          v5 = "handles";
        }

        v9 = 1024;
        v10 = 658;
        v11 = 2080;
        v12 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d RoutingHandler_Multi %s the given route.", &v7, 0x1Cu);
      }
    }
  }

  return v2 == 1668246894;
}

uint64_t sub_145150(uint64_t a1, uint64_t a2)
{
  v3 = sub_86A50(*(a2 + 112) + 8, *(a2 + 12));
  v4 = *(*a2 + 24);
  v34 = a2;
  if (*(a2 + 8) != 1668509810)
  {
    sub_25704(buf, (v4 + 32), "", 65);
    (*(**buf + 272))(v42);
    size = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_25704(&__p, (v4 + 32), "", 64);
  (*(*__p.__r_.__value_.__l.__data_ + 272))(buf);
  sub_B0258(v42, buf);
  sub_65310(buf);
  size = __p.__r_.__value_.__l.__size_;
  if (__p.__r_.__value_.__l.__size_)
  {
LABEL_5:
    sub_1A8C0(size);
  }

  if ((*&v3 & ((v3 & 0x100) >> 8)) == 0)
  {
    goto LABEL_61;
  }

  if (v43 < 2)
  {
    goto LABEL_61;
  }

  v6 = *(*a2 + 24);
  if (*a2 + 16 == v6)
  {
    goto LABEL_61;
  }

LABEL_6:
  v33 = 0;
  v32 = 0;
  v7 = 1;
  do
  {
    v8 = *(v6 + 24);
    v9 = v42[1];
    v36[0] = *(v6 + 16);
    v36[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 40);
    v37 = *(v6 + 32);
    v38 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(v6 + 56);
    v39 = *(v6 + 48);
    v40 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
    }

    v41 = *(v6 + 64);
    if (v9 != v42)
    {
      while (1)
      {
        v12 = v9[3];
        if (v12)
        {
          v13 = std::__shared_weak_count::lock(v12);
          v14 = v13;
          if (v13)
          {
            v15 = v9[2];
            atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v13);
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
          v14 = 0;
        }

        if (v38)
        {
          v16 = std::__shared_weak_count::lock(v38);
          v17 = v16;
          if (v16)
          {
            v18 = v37;
            atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v16);
            if (v14)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v18 = 0;
            if (v14)
            {
LABEL_27:
              v19 = std::__shared_weak_count::lock(v14);
              if (!v19)
              {
                v15 = 0;
              }

              if (!v17)
              {
                goto LABEL_36;
              }

              goto LABEL_33;
            }
          }
        }

        else
        {
          v18 = 0;
          v17 = 0;
          if (v14)
          {
            goto LABEL_27;
          }
        }

        v15 = 0;
        v19 = 0;
        if (!v17)
        {
          goto LABEL_36;
        }

LABEL_33:
        v20 = std::__shared_weak_count::lock(v17);
        if (v20)
        {
          v21 = v15 == v18;
          sub_1A8C0(v20);
          if (!v19)
          {
            goto LABEL_38;
          }

LABEL_37:
          sub_1A8C0(v19);
          goto LABEL_38;
        }

LABEL_36:
        v21 = v15 == 0;
        if (v19)
        {
          goto LABEL_37;
        }

LABEL_38:
        if (v17)
        {
          std::__shared_weak_count::__release_weak(v17);
        }

        if (v14)
        {
          std::__shared_weak_count::__release_weak(v14);
        }

        if (!v21)
        {
          v9 = v9[1];
          if (v9 != v42)
          {
            continue;
          }
        }

        goto LABEL_46;
      }
    }

    v21 = 0;
LABEL_46:
    sub_84F9C(v36);
    sub_25704(buf, (v6 + 16), "", 75);
    v22 = *(*buf + 144);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v22 == 1885433888)
    {
      sub_25704(buf, (v6 + 32), "", 77);
      v23 = *(*buf + 144);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      v32 |= v23 == 1885888867;
      HIDWORD(v33) |= v23 != 1885888867;
    }

    else
    {
      sub_25704(buf, (v6 + 16), "", 86);
      v24 = *(*buf + 144);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      LODWORD(v33) = (v24 == 1885433443) | v33;
    }

    v7 &= v21;
    v6 = *(v6 + 8);
  }

  while (*v34 + 4 != v6);
  if (v7 & HIDWORD(v33))
  {
    v25 = *(*v34 + 4);
    if (v43 == v25 || (v26 = 0, v43 + 1 == v25) && ((v32 | v33) & 1) != 0)
    {
      v26 = 1;
    }
  }

  else
  {
LABEL_61:
    v26 = 0;
  }

  v27 = sub_5544(20);
  if (*(v27 + 8))
  {
    v28 = *v27;
    if (*v27)
    {
      if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
      {
        sub_109694(&__p, *v34);
        v29 = "doesn't handle";
        *&buf[4] = "RoutingHandler_SplitterPlayback_GenericConfig1.cpp";
        *&buf[12] = 1024;
        if (v26)
        {
          v29 = "handles";
        }

        *buf = 136315906;
        *&buf[14] = 100;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v45 = 2080;
        v46 = v29;
        v47 = 2080;
        v48 = p_p;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d RoutingHandler_SplitterPlayback %s the given route %s.", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_65310(v42);
  return v26;
}

void sub_1456A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_65310(va);
  _Unwind_Resume(a1);
}

uint64_t sub_145704(uint64_t a1, _DWORD *a2)
{
  v2 = *(*a2 + 24);
  if ((*a2 + 16) == v2)
  {
    goto LABEL_23;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    sub_25704(buf, v2 + 2, "", 150);
    sub_25704(&v20, v2 + 4, "", 151);
    v7 = *(*buf + 144);
    if (v7 == 1885433888)
    {
      v8 = *(v20 + 144);
      v9 = v8 == 1885888867;
      v10 = v8 != 1885888867;
      v11 = v9;
      v6 |= v11;
      v4 |= v10;
    }

    else
    {
      v5 |= v7 == 1885433443;
    }

    if (v21)
    {
      sub_1A8C0(v21);
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    v2 = v2[1];
  }

  while ((*a2 + 16) != v2);
  if ((v4 & 1) != 0 && ((v12 = *(*a2 + 32), v12 == 1) || (v6 & (v12 == 2)) != 0 || (v13 = a2[2], v14 = sub_DD858(), v13 == 1668705568) && v14 == 160 && *(*a2 + 32) == 2 || (v5 & 1) != 0 && *(*a2 + 32) == 2))
  {
    v15 = 1;
  }

  else
  {
LABEL_23:
    v15 = 0;
  }

  v16 = sub_5544(20);
  if (*(v16 + 8))
  {
    v17 = *v16;
    if (*v16)
    {
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = "doesn't handle";
        *&buf[4] = "RoutingHandler.cpp";
        *buf = 136315650;
        if (v15)
        {
          v18 = "handles";
        }

        *&buf[12] = 1024;
        *&buf[14] = 179;
        v23 = 2080;
        v24 = v18;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d RoutingHandler_Playback %s the given route.", buf, 0x1Cu);
      }
    }
  }

  return v15;
}

NSObject *sub_145968(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 32) < 2uLL || (v3 = (v2 + 16), v4 = *(v2 + 24), v4 == (v2 + 16)))
  {
    v19 = 0;
    goto LABEL_83;
  }

  v40 = 0;
  v41 = 0;
  v5 = 0;
  v39 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v6 = 0;
  v38 = 0;
  v7 = 0;
  do
  {
    sub_25704(buf, v4 + 2, "", 692);
    v8 = *(*buf + 144);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    sub_25704(buf, v4 + 4, "", 693);
    v9 = *(*buf + 144);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v8 == 1885433443)
    {
      ++v39;
LABEL_17:
      v13 = v7;
      goto LABEL_29;
    }

    if (v8 == 1885433888)
    {
      v10 = v4[5];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        v12 = v11;
        if (v11)
        {
          v36 = v4[4];
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v11);
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
        v12 = 0;
      }

      LODWORD(v40) = v40 + 1;
      if (v41)
      {
        std::__shared_weak_count::__release_weak(v41);
      }

      v13 = v7;
      v41 = v12;
      goto LABEL_29;
    }

    if (v8 != 1885629550)
    {
      goto LABEL_17;
    }

    ++HIDWORD(v40);
    if (v9 == 1885888867)
    {
      ++v37;
      goto LABEL_39;
    }

    v14 = v4[5];
    if (!v14)
    {
      v35 = 0;
      v13 = 0;
      if (!v7)
      {
        goto LABEL_29;
      }

LABEL_28:
      std::__shared_weak_count::__release_weak(v7);
      goto LABEL_29;
    }

    v15 = std::__shared_weak_count::lock(v14);
    v13 = v15;
    if (v15)
    {
      v35 = v4[4];
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v15);
      if (v7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v35 = 0;
      if (v7)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    if (v9 == 1886743662)
    {
      v16 = v4[3];
      if (v16)
      {
        v17 = std::__shared_weak_count::lock(v16);
        v18 = v17;
        if (v17)
        {
          v38 = v4[2];
          atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v17);
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
        v18 = 0;
      }

      ++v5;
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v7 = v13;
      v6 = v18;
    }

    else
    {
      v7 = v13;
    }

LABEL_39:
    v4 = v4[1];
  }

  while (v4 != v3);
  if (v6)
  {
    v20 = v6;
    if (v6->__shared_owners_ != -1)
    {
      v21 = std::__shared_weak_count::lock(v6);
      v22 = v21;
      if (*(v38 + 144) == 1885433888 && v7 && v7->__shared_owners_ != -1)
      {
        v23 = std::__shared_weak_count::lock(v7);
        if (v23)
        {
          v24 = *(v35 + 144);
          sub_1A8C0(v23);
        }

        else
        {
          v24 = 5313068;
        }

        sub_1A8C0(v22);
        v20 = v6;
        if (v24 == 1885433888)
        {
          if (v41)
          {
            std::__shared_weak_count::__release_weak(v41);
          }

          v19 = 0;
          v20 = v6;
          goto LABEL_80;
        }
      }

      else
      {
        sub_1A8C0(v21);
        v20 = v6;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v19 = 0;
  if (v37 + 1 == HIDWORD(v40) && v5 == 1)
  {
    v25 = v41;
    if (v40 <= 1 && v39 <= 1)
    {
      if (!v40)
      {
        goto LABEL_72;
      }

      if (v41)
      {
        v26 = std::__shared_weak_count::lock(v41);
        if (v26)
        {
          v27 = v36;
        }

        else
        {
          v27 = 0;
        }

        if (!v7)
        {
LABEL_68:
          v29 = v27 == 0;
          goto LABEL_69;
        }
      }

      else
      {
        v27 = 0;
        v26 = 0;
        if (!v7)
        {
          goto LABEL_68;
        }
      }

      v28 = std::__shared_weak_count::lock(v7);
      if (!v28)
      {
        goto LABEL_68;
      }

      v29 = v27 == v35;
      sub_1A8C0(v28);
LABEL_69:
      if (v26)
      {
        sub_1A8C0(v26);
      }

      if (!v29)
      {
        v30 = sub_5544(20);
        v19 = *v30;
        if (*v30)
        {
          if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "RoutingHandler.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 734;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d playback port does not match call output port", buf, 0x12u);
          }

          v19 = 0;
        }
      }

      else
      {
LABEL_72:
        v19 = (&dword_0 + 1);
      }
    }
  }

  else
  {
    v25 = v41;
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v6)
  {
LABEL_80:
    std::__shared_weak_count::__release_weak(v20);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_83:
  v31 = sub_5544(20);
  if (*(v31 + 8))
  {
    v32 = *v31;
    if (*v31)
    {
      if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        v33 = "doesn't handle";
        *&buf[4] = "RoutingHandler.cpp";
        *buf = 136315650;
        if (v19)
        {
          v33 = "handles";
        }

        *&buf[12] = 1024;
        *&buf[14] = 738;
        v43 = 2080;
        v44 = v33;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d RoutingHandler_Call %s the given route.", buf, 0x1Cu);
      }
    }
  }

  return v19;
}