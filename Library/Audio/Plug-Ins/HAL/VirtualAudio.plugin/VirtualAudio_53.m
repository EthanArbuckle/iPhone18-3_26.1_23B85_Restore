void sub_4AD9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  sub_73C20(va);
  std::condition_variable::~condition_variable((v16 - 216));
  std::mutex::~mutex((v16 - 168));
  _Unwind_Resume(a1);
}

unint64_t sub_4ADAD0(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_542F0(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = *sub_5544(14);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v14, v3);
        v11 = *v1;
        v12 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  v9 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v9 = 0;
  }

  return v9 | (v3 << 32);
}

void sub_4ADC90(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4ADCC0(caulk::build::detail *a1)
{
  if ((caulk::build::detail::get_kind(a1) & 1) == 0)
  {
    goto LABEL_27;
  }

  strcpy(buf, "Sjnitpni");
  buf[9] = 0;
  *&buf[10] = 0;
  if (!(*(*a1 + 16))(a1, buf))
  {
    goto LABEL_27;
  }

  sub_4AE8BC(buf, a1, COERCE_DOUBLE(1869968496));
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v2 = v25[4];
  v3 = __p;
  if (v25[4])
  {
    v3 = buf;
  }

  v4 = *v3;
  if (v25[4])
  {
    v5 = *&buf[8];
  }

  else
  {
    v5 = 0;
  }

  v6 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  if (__p[0])
  {
    operator delete(__p[0]);
    if ((v2 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (*buf)
    {
      operator delete(*buf);
    }

    goto LABEL_14;
  }

  if (v2)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v5 == v4)
  {
    strcpy(buf, "Sjnitpni");
    buf[9] = 0;
    *&buf[10] = 0;
    v7 = sub_147610(a1);
    v8 = *sub_5544(18);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 128))(__p, a1);
        v11 = v19 >= 0 ? __p : __p[0];
        *buf = 136315906;
        *&buf[4] = "Device_HAL_Common.mm";
        *&buf[12] = 1024;
        *&buf[14] = 878;
        v24 = 2080;
        *v25 = v11;
        *&v25[8] = 1024;
        *&v25[10] = v7;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enabling injection stream property on device %s. status: %u", buf, 0x22u);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (!v7)
    {
      v12 = (*(*a1 + 120))(a1);
      *buf = off_6DAE38;
      *&buf[8] = sub_4AF71C;
      *&v25[4] = buf;
      sub_4AE934(v12, 0x6F757470u, &v20, buf);
      sub_4AF380(buf);
      v4 = v20;
    }
  }

  if (v4)
  {
    v21 = v4;
    operator delete(v4);
  }

LABEL_27:
  v13 = 0;
  *buf = 256;
  do
  {
    sub_4AE074(a1, buf[v13++]);
  }

  while (v13 != 2);
  strcpy(buf, "nartbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v14 = sub_59410(a1);
  *(&v16 + 1) = v15;
  *&v16 = v14;
  if (((v16 >> 32) & 0x1FFFFFFFFLL) == 0x1626C746ELL)
  {
    strcpy(buf, "SxEatpni");
    buf[9] = 0;
    *&buf[10] = 0;
    LODWORD(v20) = 0;
    sub_163594(a1, buf, 4, &v20);
  }

  return 1;
}

void sub_4AE028(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_4AE074(os_unfair_lock_s *a1, int a2)
{
  v4 = 68;
  if (a2)
  {
    v4 = 74;
  }

  v5 = &a1[v4];
  if (*&a1[v4]._os_unfair_lock_opaque != *&a1[v4 + 2]._os_unfair_lock_opaque)
  {
    v48 = sub_5544(14);
    v49 = sub_468EC(1, *v48, *(v48 + 8));
    v50 = v49;
    if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v51 = "input";
      *&inAddress[4] = "Device_HAL_Common.mm";
      *inAddress = 136315650;
      if (a2)
      {
        v51 = "output";
      }

      *&inAddress[12] = 1024;
      *&inAddress[14] = 830;
      v75 = 2080;
      *v76 = v51;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE:  %s streams already created", inAddress, 0x1Cu);
    }
  }

  os_unfair_lock_opaque = a1[67]._os_unfair_lock_opaque;
  if (a2)
  {
    v7 = 1869968496;
  }

  else
  {
    v7 = 1768845428;
  }

  *inAddress = 1937009955;
  *&inAddress[4] = v7;
  *&inAddress[8] = 0;
  outDataSize[0] = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(os_unfair_lock_opaque, inAddress, 0, 0, outDataSize);
  if (outDataSize[0] >= 4)
  {
    v66[1] = v66;
    ioDataSize = outDataSize[0] & 0xFFFFFFFC;
    v9 = 4 * (outDataSize[0] >> 2);
    __chkstk_darwin(PropertyDataSize);
    v10 = v66 - ((v9 + 15) & 0x1FFFFFFF0);
    v72.mSelector = 1937009955;
    v72.mScope = v7;
    v72.mElement = 0;
    PropertyData = AudioObjectGetPropertyData(a1[67]._os_unfair_lock_opaque, &v72, 0, 0, &ioDataSize, v10);
    if (PropertyData)
    {
      v52 = sub_5544(14);
      v53 = sub_468EC(1, *v52, *(v52 + 8));
      v54 = v53;
      if (v53)
      {
        v55 = v53;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_22170(outDataSize, v72.mScope);
          v56 = v71 >= 0 ? outDataSize : *outDataSize;
          *inAddress = 136315650;
          *&inAddress[4] = "Device_HAL_Common.mm";
          *&inAddress[12] = 1024;
          *&inAddress[14] = 841;
          v75 = 2080;
          *v76 = v56;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: AudioObjectGetPropertyData(kAudioDevicePropertyStreams, '%s') failed.", inAddress, 0x1Cu);
          if (v71 < 0)
          {
            operator delete(*outDataSize);
          }
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = PropertyData;
    }

    if (v9 != ioDataSize)
    {
      v62 = sub_5544(14);
      v63 = sub_468EC(1, *v62, *(v62 + 8));
      v64 = v63;
      if (v63 && os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *inAddress = 136315906;
        *&inAddress[4] = "Device_HAL_Common.mm";
        *&inAddress[12] = 1024;
        *&inAddress[14] = 843;
        v75 = 1024;
        *v76 = ioDataSize;
        *&v76[4] = 1024;
        *&v76[6] = v9;
        _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a size of %u while we expected %u", inAddress, 0x1Eu);
      }

      v65 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v65, "The HAL returned a size of %u while we expected %u");
    }

    if (ioDataSize >= 4)
    {
      v13 = 0;
      v14 = ioDataSize >> 2;
      v15 = "input";
      if (a2)
      {
        v15 = "output";
      }

      v69 = v15;
      *&v12 = 136316674;
      v67 = v12;
      v68 = v66 - ((v9 + 15) & 0x1FFFFFFF0);
      do
      {
        if (!*&v10[4 * v13])
        {
          v58 = sub_5544(14);
          v59 = sub_468EC(1, *v58, *(v58 + 8));
          v60 = v59;
          if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *inAddress = 136315906;
            *&inAddress[4] = "Device_HAL_Common.mm";
            *&inAddress[12] = 1024;
            *&inAddress[14] = 849;
            v75 = 2080;
            *v76 = v69;
            *&v76[8] = 1024;
            v77 = v13;
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned kAudioObjectUnknown for %s index %u.", inAddress, 0x22u);
          }

          v61 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v61, "The HAL returned kAudioObjectUnknown for %s index %u.");
        }

        (*(*&a1->_os_unfair_lock_opaque + 472))(inAddress, a1);
        v17 = *&v5[2]._os_unfair_lock_opaque;
        v16 = *&v5[4]._os_unfair_lock_opaque;
        if (v17 >= v16)
        {
          v19 = *&v5->_os_unfair_lock_opaque;
          v20 = v17 - *&v5->_os_unfair_lock_opaque;
          v21 = v20 >> 4;
          v22 = (v20 >> 4) + 1;
          if (v22 >> 60)
          {
            sub_189A00();
          }

          v23 = v16 - v19;
          if (v23 >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            sub_1DC690(v24);
          }

          *(16 * v21) = *inAddress;
          v18 = 16 * v21 + 16;
          *inAddress = 0;
          *&inAddress[8] = 0;
          memcpy(0, v19, v20);
          v25 = *&v5->_os_unfair_lock_opaque;
          *&v5->_os_unfair_lock_opaque = 0;
          *&v5[2]._os_unfair_lock_opaque = v18;
          *&v5[4]._os_unfair_lock_opaque = 0;
          if (v25)
          {
            operator delete(v25);
          }

          v26 = *&inAddress[8];
          *&v5[2]._os_unfair_lock_opaque = v18;
          if (v26)
          {
            sub_1A8C0(v26);
            v18 = *&v5[2]._os_unfair_lock_opaque;
          }
        }

        else
        {
          *v17 = *inAddress;
          v18 = (v17 + 1);
          *&v5[2]._os_unfair_lock_opaque = v18;
        }

        (*(**(v18 - 16) + 80))(*(v18 - 16));
        v27 = *(*&v5[2]._os_unfair_lock_opaque - 16);
        strcpy(inAddress, "spatbolg");
        inAddress[9] = 0;
        *&inAddress[10] = 0;
        v28 = sub_59410(v27);
        v30 = v29;
        v31 = sub_5544(18);
        v32 = sub_5544(23);
        v33 = 0;
        *(&v35 + 1) = v30;
        *&v35 = v28;
        v34 = v35 >> 32;
        *inAddress = 0x100000002;
        v36 = *(v31 + 8);
        while (1)
        {
          v37 = *&inAddress[v33];
          if (((v36 & v37) != 0) != ((*(v32 + 8) & v37) != 0))
          {
            break;
          }

          v33 += 4;
          if (v33 == 8)
          {
            goto LABEL_35;
          }
        }

        if ((v36 & v37) == 0)
        {
          v31 = v32;
        }

LABEL_35:
        v38 = *v31;
        v39 = v38;
        if (v38)
        {
          v40 = v38;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v10;
            v42 = v14;
            v43 = *&v41[4 * v13];
            v44 = *(*&v5[2]._os_unfair_lock_opaque - 16);
            sub_23148(outDataSize, a1 + 2);
            v45 = outDataSize;
            if (v71 < 0)
            {
              v45 = *outDataSize;
            }

            if (v34)
            {
              v46 = (v34 & 0x100000000) == 0;
            }

            else
            {
              v46 = 1;
            }

            *inAddress = v67;
            v47 = "tapstream";
            if (v46)
            {
              v47 = "";
            }

            *&inAddress[4] = "Device_HAL_Common.mm";
            *&inAddress[12] = 1024;
            *&inAddress[14] = 858;
            v75 = 2080;
            *v76 = v69;
            *&v76[8] = 1024;
            v77 = v43;
            v78 = 2048;
            v79 = v44;
            v80 = 2080;
            v81 = v45;
            v82 = 2080;
            v83 = v47;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created %s stream with ID %u (%p) for device %s, %s", inAddress, 0x40u);
            if (v71 < 0)
            {
              operator delete(*outDataSize);
            }

            v14 = v42;
            v10 = v68;
          }
        }

        ++v13;
      }

      while (v13 != v14);
    }
  }
}

double sub_4AE8BC(uint64_t a1, uint64_t a2, double a3)
{
  v9 = 1937009955;
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

void sub_4AE934(AudioObjectID a1, AudioObjectPropertyScope a2, uint64_t a3, uint64_t a4)
{
  v39[0].mSelector = 1937009955;
  v39[0].mScope = a2;
  v39[0].mElement = 0;
  v8 = sub_5544(14);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v57.__cv_.__sig = *&v39[0].mSelector;
        *v57.__cv_.__opaque = v39[0].mElement;
        sub_22CE0(&v58);
      }
    }
  }

  buf = v39[0];
  if (!AudioObjectHasProperty(a1, &buf))
  {
    v32 = *sub_5544(14);
    v33 = v32;
    if (v32)
    {
      v34 = v32;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v57.__cv_.__sig = *&v39[0].mSelector;
        *v57.__cv_.__opaque = v39[0].mElement;
        sub_22CE0(&v58);
      }
    }

    v4 = 2003332927;
    goto LABEL_72;
  }

  memset(v58.__m_.__opaque, 0, sizeof(v58.__m_.__opaque));
  v57.__cv_.__sig = 1018212795;
  memset(v57.__cv_.__opaque, 0, sizeof(v57.__cv_.__opaque));
  v58.__m_.__sig = 850045863;
  v50 = 0;
  sub_745E8(v49, a1, v39, &v57, &v58, &v50);
  v45 = a1;
  v46 = v39[0];
  v47 = 0;
  v48 = 0;
  sub_4AF400(v43, &v45);
  if (!v44)
  {
    v11 = *(a4 + 24);
    if (!v11)
    {
      sub_46A74();
    }

    if ((*(*v11 + 48))(v11, v43, a3))
    {
      v12 = sub_5544(14);
      if (*(v12 + 8))
      {
        v13 = *v12;
        if (v13)
        {
          v14 = v13;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            buf.mSelector = 136315650;
            *&buf.mScope = "HALPropertySynchronizer.h";
            v52 = 1024;
            v53 = 322;
            v54 = 1024;
            *v55 = a1;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
          }

          goto LABEL_60;
        }
      }

      goto LABEL_61;
    }
  }

  v15 = 2000;
  do
  {
    sub_4AF400(v41, &v45);
    if (v42)
    {
      v16 = 1;
      v4 = v42;
      goto LABEL_51;
    }

    v17 = *(a4 + 24);
    if (!v17)
    {
      sub_46A74();
    }

    if ((*(*v17 + 48))(v17, v41, a3))
    {
      v16 = 16;
      goto LABEL_51;
    }

    if (v15 > 0)
    {
      v18.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v19 = sub_5544(14);
      if (*(v19 + 8))
      {
        v20 = *v19;
        if (v20)
        {
          v21 = v20;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            buf.mSelector = 136315906;
            *&buf.mScope = "HALPropertySynchronizer.h";
            v52 = 1024;
            v53 = 354;
            v54 = 2080;
            *v55 = "with timeout";
            *&v55[8] = 1024;
            v56 = a1;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
          }
        }
      }

      sub_27A4();
      LOBYTE(__p.mSelector) = sub_2E6B08();
      *&buf.mSelector = &v58;
      LOBYTE(buf.mElement) = 1;
      std::mutex::lock(&v58);
      v22.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
      while (1)
      {
        if ((v50 & 1) != 0 || v22.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
        {
LABEL_43:
          if (LOBYTE(buf.mElement) == 1)
          {
            std::mutex::unlock(*&buf.mSelector);
          }

          sub_1DB4C4(&__p);
          v16 = 0;
          v15 += (std::chrono::system_clock::now().__d_.__rep_ - v18.__d_.__rep_) / -1000;
          goto LABEL_51;
        }

        v23.__d_.__rep_ = v22.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
        if (v23.__d_.__rep_ >= 1)
        {
          break;
        }

LABEL_42:
        if (std::chrono::steady_clock::now().__d_.__rep_ >= v22.__d_.__rep_)
        {
          goto LABEL_43;
        }
      }

      std::chrono::steady_clock::now();
      v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v24.__d_.__rep_)
      {
        v25 = 0;
        goto LABEL_40;
      }

      if (v24.__d_.__rep_ < 1)
      {
        if (v24.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v25 = 0x8000000000000000;
          goto LABEL_40;
        }
      }

      else if (v24.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_38;
      }

      v25 = 1000 * v24.__d_.__rep_;
LABEL_38:
      if (v25 > (v23.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v26.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_41:
        std::condition_variable::__do_timed_wait(&v57, &buf, v26);
        std::chrono::steady_clock::now();
        goto LABEL_42;
      }

LABEL_40:
      v26.__d_.__rep_ = v25 + v23.__d_.__rep_;
      goto LABEL_41;
    }

    v27 = *sub_5544(14);
    v28 = v27;
    if (v27)
    {
      v29 = v27;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v39[1] = v39[0];
        sub_22CE0(&__p);
      }
    }

    v16 = 1;
    v4 = 2003329396;
LABEL_51:
    if (v41[0])
    {
      v41[1] = v41[0];
      operator delete(v41[0]);
    }
  }

  while (!v16);
  if (v16 == 16)
  {
    v30 = sub_5544(14);
    if (*(v30 + 8))
    {
      v31 = *v30;
      if (v31)
      {
        v14 = v31;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __p = v39[0];
          sub_22CE0(v41);
        }

LABEL_60:
      }
    }

LABEL_61:
    v4 = 0;
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  sub_73C20(v49);
  std::condition_variable::~condition_variable(&v57);
  std::mutex::~mutex(&v58);
  if (v4)
  {
LABEL_72:
    v35 = sub_5544(14);
    v36 = sub_468EC(1, *v35, *(v35 + 8));
    v37 = v36;
    if (v36)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315906;
        *&buf.mScope = "Device_HAL_Common.mm";
        v52 = 1024;
        v53 = 88;
        v54 = 1024;
        *v55 = a1;
        *&v55[4] = 1024;
        *&v55[6] = v4;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not enable stream in device %d, error = %u", &buf, 0x1Eu);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not enable stream in device %d, error = %u");
  }
}

uint64_t sub_4AF380(uint64_t a1)
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

void sub_4AF400(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_127F10(&v15, a2, buf, v4, *(a2 + 24));
  v5 = v15;
  if (v15)
  {
    v6 = *sub_5544(14);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v14, v5);
        v11 = *v3;
        v12 = *(v3 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v18 == 1)
  {
    memset(buf, 0, sizeof(buf));
    v20 = 0;
    v9 = v16;
    sub_46980(buf, v16, v17, (v17 - v16) >> 2);
    v10 = v20;
    *a1 = *buf;
    *(a1 + 16) = v10;
    *(a1 + 24) = v5;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v5;
  }
}

void sub_4AF61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4AF688(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6DAE38;
  a2[1] = v2;
  return result;
}

uint64_t sub_4AF738(uint64_t a1, double a2)
{
  inData = a2;
  sub_4DFC0(a1);
  v4 = sub_5544(18);
  v5 = sub_5544(37);
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
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (*(*a1 + 120))(a1);
      buf.mSelector = 136315906;
      *&buf.mScope = "Device_HAL_Common.mm";
      v78 = 1024;
      v79 = 417;
      v80 = 2048;
      v81 = *&a2;
      v82 = 1024;
      LODWORD(v83) = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronously setting sample rate to %f Hz on physical device %u.", &buf, 0x22u);
    }
  }

  kdebug_trace();
  v13 = *(a1 + 268);
  *&v66.mSelector = 0x676C6F626E737274;
  v66.mElement = 0;
  v14 = sub_5544(14);
  if (*(v14 + 8))
  {
    v15 = *v14;
    if (v15)
    {
      v16 = v15;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v88.__cv_.__sig = *&v66.mSelector;
        *v88.__cv_.__opaque = v66.mElement;
        sub_22CE0(&v89);
      }
    }
  }

  buf = v66;
  if (AudioObjectHasProperty(v13, &buf))
  {
    memset(v89.__m_.__opaque, 0, sizeof(v89.__m_.__opaque));
    v89.__m_.__sig = 850045863;
    memset(v88.__cv_.__opaque, 0, sizeof(v88.__cv_.__opaque));
    v88.__cv_.__sig = 1018212795;
    v76 = 0;
    sub_745E8(v75, v13, &v66, &v88, &v89, &v76);
    v71 = v13;
    v72 = v66;
    v73 = 0;
    v74 = 0;
    buf = v66;
    if (!sub_66E40(v13, &buf))
    {
      v22 = 1852797029;
      v29 = *sub_5544(14);
      v24 = v29;
      if (v29)
      {
        v25 = v29;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v69 = v66;
          sub_22CE0(__p);
        }

        goto LABEL_37;
      }

LABEL_38:

LABEL_39:
      sub_73C20(v75);
      std::condition_variable::~condition_variable(&v88);
      std::mutex::~mutex(&v89);
      goto LABEL_40;
    }

    v17 = COERCE_DOUBLE(sub_4B06A4(&v71));
    if (!v18 && inData == v17)
    {
      v45 = sub_5544(14);
      if (*(v45 + 8))
      {
        v46 = *v45;
        if (v46)
        {
          v24 = v46;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            buf.mSelector = 136315650;
            *&buf.mScope = "HALPropertySynchronizer.h";
            v78 = 1024;
            v79 = 294;
            v80 = 1024;
            LODWORD(v81) = v13;
LABEL_101:
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
            goto LABEL_107;
          }

          goto LABEL_107;
        }
      }

      goto LABEL_108;
    }

    v19 = sub_5544(14);
    if (*(v19 + 8))
    {
      v20 = *v19;
      if (v20)
      {
        v21 = v20;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v69 = v66;
          sub_22CE0(__p);
        }
      }
    }

    buf = v66;
    v22 = AudioObjectSetPropertyData(v13, &buf, 0, 0, 8u, &inData);
    if (v22)
    {
      v23 = *sub_5544(14);
      v24 = v23;
      if (v23)
      {
        v25 = v23;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v22);
          v68 = v66;
          sub_22CE0(&v69);
        }

LABEL_37:

        goto LABEL_38;
      }

      goto LABEL_38;
    }

    v47 = COERCE_DOUBLE(sub_4B06A4(&v71));
    if (!v48 && inData == v47)
    {
      v61 = sub_5544(14);
      if (*(v61 + 8))
      {
        v62 = *v61;
        if (v62)
        {
          v24 = v62;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            buf.mSelector = 136315650;
            *&buf.mScope = "HALPropertySynchronizer.h";
            v78 = 1024;
            v79 = 322;
            v80 = 1024;
            LODWORD(v81) = v13;
            goto LABEL_101;
          }

LABEL_107:
          v22 = 0;
          goto LABEL_38;
        }
      }

LABEL_108:
      v22 = 0;
      goto LABEL_39;
    }

    v49 = 2000;
LABEL_68:
    v50 = COERCE_DOUBLE(sub_4B06A4(&v71));
    v22 = v51;
    if (v51)
    {
      goto LABEL_39;
    }

    if (inData == v50)
    {
      v63 = sub_5544(14);
      if ((*(v63 + 8) & 1) == 0)
      {
        goto LABEL_108;
      }

      v64 = *v63;
      if (!v64)
      {
        goto LABEL_108;
      }

      v24 = v64;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v69 = v66;
        sub_22CE0(__p);
      }

      goto LABEL_107;
    }

    if (v49 <= 0)
    {
      v22 = 2003329396;
      v65 = *sub_5544(14);
      v24 = v65;
      if (!v65)
      {
        goto LABEL_38;
      }

      v25 = v65;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v69 = v66;
        sub_22CE0(__p);
      }

      goto LABEL_37;
    }

    v52.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v53 = sub_5544(14);
    if (*(v53 + 8))
    {
      v54 = *v53;
      if (v54)
      {
        v55 = v54;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v78 = 1024;
          v79 = 354;
          v80 = 2080;
          v81 = "with timeout";
          v82 = 1024;
          LODWORD(v83) = v13;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v89;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v89);
    v56.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v76 & 1) != 0 || v56.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_93:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v49 += (std::chrono::system_clock::now().__d_.__rep_ - v52.__d_.__rep_) / -1000;
        goto LABEL_68;
      }

      v57.__d_.__rep_ = v56.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v57.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_92:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v56.__d_.__rep_)
      {
        goto LABEL_93;
      }
    }

    std::chrono::steady_clock::now();
    v58.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v58.__d_.__rep_)
    {
      v59 = 0;
      goto LABEL_90;
    }

    if (v58.__d_.__rep_ < 1)
    {
      if (v58.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v59 = 0x8000000000000000;
        goto LABEL_90;
      }
    }

    else if (v58.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v59 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_88;
    }

    v59 = 1000 * v58.__d_.__rep_;
LABEL_88:
    if (v59 > (v57.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v60.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_91:
      std::condition_variable::__do_timed_wait(&v88, &buf, v60);
      std::chrono::steady_clock::now();
      goto LABEL_92;
    }

LABEL_90:
    v60.__d_.__rep_ = v59 + v57.__d_.__rep_;
    goto LABEL_91;
  }

  v26 = *sub_5544(14);
  v27 = v26;
  if (v26)
  {
    v28 = v26;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v88.__cv_.__sig = *&v66.mSelector;
      *v88.__cv_.__opaque = v66.mElement;
      sub_22CE0(&v89);
    }
  }

  v22 = 2003332927;
LABEL_40:
  kdebug_trace();
  if (v22)
  {
    v30 = sub_5544(18);
    v31 = sub_5544(37);
    v32 = 0;
    *&buf.mSelector = 0x100000002;
    v33 = *(v30 + 8);
    while (1)
    {
      v34 = *(&buf.mSelector + v32);
      if (((v33 & v34) != 0) != ((*(v31 + 8) & v34) != 0))
      {
        break;
      }

      v32 += 4;
      if (v32 == 8)
      {
        goto LABEL_47;
      }
    }

    if ((v33 & v34) == 0)
    {
      v30 = v31;
    }

LABEL_47:
    v35 = *v30;
    v36 = v35;
    if (v35)
    {
      v37 = v35;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v89, v22);
        v38 = v89.__m_.__opaque[15];
        sig = v89.__m_.__sig;
        v40 = inData;
        v41 = *(a1 + 268);
        (*(*a1 + 128))(&v88, a1);
        v42 = &v89;
        if (v38 < 0)
        {
          v42 = sig;
        }

        if (v88.__cv_.__opaque[15] >= 0)
        {
          v43 = &v88;
        }

        else
        {
          v43 = v88.__cv_.__sig;
        }

        buf.mSelector = 136316418;
        *&buf.mScope = "Device_HAL_Common.mm";
        v78 = 1024;
        v79 = 429;
        v80 = 2080;
        v81 = v42;
        v82 = 2048;
        v83 = v40;
        v84 = 1024;
        v85 = v41;
        v86 = 2080;
        v87 = v43;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' setting sample rate to %f Hz on HAL device %u with UID %s", &buf, 0x36u);
        if (v88.__cv_.__opaque[15] < 0)
        {
          operator delete(v88.__cv_.__sig);
        }

        if (v89.__m_.__opaque[15] < 0)
        {
          operator delete(v89.__m_.__sig);
        }
      }
    }
  }

  return v22;
}

void sub_4B0568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, AudioObjectPropertySelector a27)
{
  sub_73C20(&a27);
  std::condition_variable::~condition_variable((v28 - 232));
  std::mutex::~mutex((v28 - 184));
  _Unwind_Resume(a1);
}

uint64_t sub_4B06A4(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  sub_1FE35C(&v12, a1, &buf, v2, *(a1 + 24));
  v3 = v12;
  if (v12)
  {
    v4 = *sub_5544(14);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v11, v3);
        v8 = *v1;
        v9 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v14)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_4B0874(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_4B08A4(uint64_t a1)
{
  sub_4DFC0(a1);
  sub_4E890();
  sub_13EB84(*(a1 + 268));

  return sub_4B08E8(a1);
}

unsigned __int8 *sub_4B08E8(uint64_t a1)
{
  v9[0] = 0;
  v10 = 0;
  sub_4B09F8(0);
  while (1)
  {
    std::mutex::lock((a1 + 320));
    if (!*(a1 + 400))
    {
      std::mutex::unlock((a1 + 320));
      return sub_240CCC(v9);
    }

    v2 = *(a1 + 392);
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    if (v3)
    {
      break;
    }

    std::mutex::unlock((a1 + 320));
    if (!v4)
    {
      return sub_240CCC(v9);
    }

    v5 = 0;
    v7 = v4;
    v8 = 0;
LABEL_8:
    sub_4B0AE8(a1, &v7);
    if (v3)
    {
      sub_1A8C0(v5);
      sub_1A8C0(v5);
    }
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock((a1 + 320));
  if (v4)
  {
    v7 = v4;
    v8 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = v3;
    goto LABEL_8;
  }

  sub_1A8C0(v3);
  return sub_240CCC(v9);
}

void sub_4B09C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_1A8C0(v4);
    sub_1A8C0(v4);
  }

  sub_240CCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4B09F8(uint64_t a1)
{
  if (a1 && !sub_52604(a1))
  {
    v2 = sub_5544(14);
    v3 = sub_468EC(1, *v2, *(v2 + 8));
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "PortManager.h";
      v7 = 1024;
      v8 = 245;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Client mutex is not owned by the current thread", &v5, 0x12u);
    }
  }

  result = sub_809C0();
  atomic_fetch_add((result + 656), 1u);
  return result;
}

void sub_4B0AE8(uint64_t a1, unint64_t *a2)
{
  v4 = a2[1];
  v59[0] = *a2;
  v59[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_4B13EC(a1, v59);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  v6 = buf;
  if (!v5)
  {
    v40 = sub_5544(14);
    v41 = sub_468EC(1, *v40, *(v40 + 8));
    v42 = v41;
    if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v61 = "Device_HAL_Common.mm";
      v62 = 1024;
      v63 = 622;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v7 = *(*a2 + 200);
  if (v7)
  {
    v8 = *(*a2 + 192);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = v9;
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v7);
      sub_1A8C0(v10);
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        sub_1A8C0(v11);
        std::__shared_weak_count::__release_weak(v10);
        if (v8 != a1)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }

      v17 = v10;
    }

    else
    {
      v17 = v7;
    }

    std::__shared_weak_count::__release_weak(v17);
  }

  if (a1)
  {
LABEL_10:
    v12 = sub_5544(14);
    v13 = sub_468EC(1, *v12, *(v12 + 8));
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *a2;
        if (*(*a2 + 303) < 0)
        {
          sub_54A0(__p, *(v16 + 280), *(v16 + 288));
          v16 = *a2;
        }

        else
        {
          *__p = *(v16 + 280);
          v58 = *(v16 + 296);
        }

        if (v58 >= 0)
        {
          v44 = __p;
        }

        else
        {
          v44 = __p[0];
        }

        v45 = *(v16 + 200);
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v6 = *(*a2 + 200);
          v52[0] = *(*a2 + 192);
          v52[1] = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_5659C(&v53, v52, "", 628);
          v46 = v55;
          (*(*v53 + 128))(v55);
          if (v56 < 0)
          {
            v46 = v55[0];
          }
        }

        else
        {
          v46 = "NULL";
        }

        (*(*a1 + 128))(v50, a1);
        if (v51 >= 0)
        {
          v47 = v50;
        }

        else
        {
          v47 = v50[0];
        }

        *buf = 136316162;
        v61 = "Device_HAL_Common.mm";
        v62 = 1024;
        v63 = 628;
        v64 = 2080;
        v65 = v44;
        v66 = 2080;
        v67 = v46;
        v68 = 2080;
        v69 = v47;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Port (%s) is owned by an unexpected physical device (owner: %s, expected: %s).", buf, 0x30u);
        if (v51 < 0)
        {
          operator delete(v50[0]);
        }

        if (v45)
        {
          if (v56 < 0)
          {
            operator delete(v55[0]);
          }

          if (v54)
          {
            sub_1A8C0(v54);
          }

          if (v6)
          {
            std::__shared_weak_count::__release_weak(v6);
          }

          std::__shared_weak_count::__release_weak(v45);
        }

        if (SHIBYTE(v58) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v48 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v48, "Port (%s) is owned by an unexpected physical device (owner: %s, expected: %s).");
  }

LABEL_18:
  std::mutex::lock((a1 + 320));
  v18 = a1 + 384;
  v19 = *(a1 + 392);
  if (v19 == (a1 + 384))
  {
    goto LABEL_62;
  }

  v20 = *a2;
  while (v19[2] != v20)
  {
    v19 = v19[1];
    if (v19 == v18)
    {
      goto LABEL_62;
    }
  }

  if (v19 == v18)
  {
    goto LABEL_62;
  }

  v21 = v19[3];
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_241E28(v18, v19);
  v22 = *(a1 + 424);
  if (!v22)
  {
LABEL_29:
    v23 = 0x9DDFEA08EB382D69 * ((8 * (v20 & 0x1FFFFFFF) + 8) ^ HIDWORD(v20));
    v24 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v23 >> 47) ^ v23);
    v25 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
    v26 = *(a1 + 416);
    if (!*&v26)
    {
      goto LABEL_50;
    }

    v27 = vcnt_s8(v26);
    v27.i16[0] = vaddlv_u8(v27);
    if (v27.u32[0] > 1uLL)
    {
      v28 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
      if (v25 >= *&v26)
      {
        v28 = v25 % *&v26;
      }
    }

    else
    {
      v28 = v25 & (*&v26 - 1);
    }

    v34 = *(*(a1 + 408) + 8 * v28);
    if (!v34 || (v35 = *v34) == 0)
    {
LABEL_50:
      operator new();
    }

    while (1)
    {
      v36 = v35[1];
      if (v36 == v25)
      {
        if (v35[2] == v20)
        {
          v37 = 0;
          goto LABEL_58;
        }
      }

      else
      {
        if (v27.u32[0] > 1uLL)
        {
          if (v36 >= *&v26)
          {
            v36 %= *&v26;
          }
        }

        else
        {
          v36 &= *&v26 - 1;
        }

        if (v36 != v28)
        {
          goto LABEL_50;
        }
      }

      v35 = *v35;
      if (!v35)
      {
        goto LABEL_50;
      }
    }
  }

  while (v22[2] != v20)
  {
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  v29 = *sub_5544(18);
  v30 = v29;
  if (v29)
  {
    v31 = v29;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *a2;
      if (*(*a2 + 303) < 0)
      {
        sub_54A0(__p, *(v32 + 280), *(v32 + 288));
      }

      else
      {
        v33 = v32 + 280;
        *__p = *v33;
        v58 = *(v33 + 16);
      }

      v38 = __p;
      if (v58 < 0)
      {
        v38 = __p[0];
      }

      *buf = 136315650;
      v61 = "Device_HAL_Common.mm";
      v62 = 1024;
      v63 = 644;
      v64 = 2080;
      v65 = v38;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Port %s was unregistered multiple times. Skipping redundant unregistration and teardown.", buf, 0x1Cu);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v37 = 1;
LABEL_58:
  if (v21)
  {
    sub_1A8C0(v21);
  }

  if ((v37 & 1) == 0)
  {
LABEL_62:
    std::mutex::unlock((a1 + 320));
    v39 = a2[1];
    v49[0] = *a2;
    v49[1] = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_4B145C(v49);
    if (v39)
    {
      sub_1A8C0(v39);
    }
  }

  else
  {
    std::mutex::unlock((a1 + 320));
  }
}

void sub_4B12F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v30)
  {
    sub_1A8C0(v30);
  }

  std::mutex::unlock(v29 + 5);
  _Unwind_Resume(a1);
}

BOOL sub_4B13EC(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 320));
  v4 = a1 + 384;
  v5 = *(a1 + 392);
  if (v5 == a1 + 384)
  {
LABEL_4:
    v5 = a1 + 384;
  }

  else
  {
    while (*(v5 + 16) != *a2)
    {
      v5 = *(v5 + 8);
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }
  }

  v6 = v5 != v4;
  std::mutex::unlock((a1 + 320));
  return v6;
}

unsigned __int8 *sub_4B145C(void *a1)
{
  v33[0] = 0;
  v34 = 0;
  sub_4B09F8(0);
  v2 = (*(**a1 + 152))();
  (*(**a1 + 88))();
  if ((*(**a1 + 152))())
  {
    v17 = sub_5544(14);
    v18 = sub_468EC(1, *v17, *(v17 + 8));
    v19 = v18;
    if (v18)
    {
      v20 = v18;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *a1;
        if (*(*a1 + 303) < 0)
        {
          sub_54A0(__p, *(v21 + 280), *(v21 + 288));
        }

        else
        {
          v22 = v21 + 280;
          *__p = *v22;
          v32 = *(v22 + 16);
        }

        v29 = __p;
        if (v32 < 0)
        {
          v29 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "Device_HAL_Common.mm";
        *&buf[12] = 1024;
        *&buf[14] = 513;
        v36 = 2080;
        v37 = v29;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Port %s is connected after teardown", buf, 0x1Cu);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if ((*(**a1 + 160))())
  {
    v23 = sub_5544(14);
    v24 = sub_468EC(1, *v23, *(v23 + 8));
    v25 = v24;
    if (v24)
    {
      v26 = v24;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *a1;
        if (*(*a1 + 303) < 0)
        {
          sub_54A0(__p, *(v27 + 280), *(v27 + 288));
        }

        else
        {
          v28 = v27 + 280;
          *__p = *v28;
          v32 = *(v28 + 16);
        }

        v30 = __p;
        if (v32 < 0)
        {
          v30 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "Device_HAL_Common.mm";
        *&buf[12] = 1024;
        *&buf[14] = 514;
        v36 = 2080;
        v37 = v30;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Port %s is routable after teardown", buf, 0x1Cu);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if (v2 != (*(**a1 + 152))())
  {
    v3 = sub_5544(18);
    v4 = sub_5544(9);
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
        if ((v6 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_12;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

    if (*(v3 + 8))
    {
LABEL_12:
      v8 = *v3;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = *a1;
          if (*(*a1 + 303) < 0)
          {
            sub_54A0(__p, *(v10 + 280), *(v10 + 288));
          }

          else
          {
            v11 = v10 + 280;
            *__p = *v11;
            v32 = *(v11 + 16);
          }

          v12 = __p;
          if (v32 < 0)
          {
            v12 = __p[0];
          }

          *&buf[4] = "Device_HAL_Common.mm";
          *&buf[12] = 1024;
          v13 = "dis";
          *buf = 136315906;
          *&buf[14] = 519;
          if (!v2)
          {
            v13 = "";
          }

          v36 = 2080;
          v37 = v12;
          v38 = 2080;
          v39 = v13;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Port %s is now %sconnected", buf, 0x26u);
          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

LABEL_24:
    if (((*(**a1 + 152))() & 1) == 0)
    {
      (*(**a1 + 288))(*a1);
    }

    v14 = sub_809C0();
    v15 = a1[1];
    *buf = *a1;
    *&buf[8] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_257CE8(v14, buf);
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return sub_240CCC(v33);
}

void sub_4B1998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_240CCC(va);
  _Unwind_Resume(a1);
}

void sub_4B1A08(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      sub_1A8C0(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_4B1A68(uint64_t a1, UInt32 a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 8) = 0;
  v10 = (a1 + 8);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *(a1 + 96) = 850045863;
  *a1 = off_6C17D8;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = a1 + 216;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 232;
  *(a1 + 240) = a1 + 232;
  *(a1 + 248) = 0;
  *(a1 + 256) = sub_315E70();
  *(a1 + 260) = 0;
  *(a1 + 264) = 0;
  *a1 = off_6DAAD0;
  *(a1 + 268) = a2;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 850045863;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = a1 + 384;
  *(a1 + 392) = a1 + 384;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 1065353216;
  if (*(a3 + 23) < 0)
  {
    sub_54A0((a1 + 448), *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 464) = *(a3 + 2);
    *(a1 + 448) = v11;
  }

  if (*(a4 + 23) < 0)
  {
    sub_54A0((a1 + 472), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 488) = *(a4 + 2);
    *(a1 + 472) = v12;
  }

  v69 = &off_6DACD8;
  cf = 0;
  ioDataSize = a2;
  __p = 0x676C6F626D756964;
  LODWORD(v74) = 0;
  sub_12794C(buf, &ioDataSize, &__p, 0, 0);
  LOBYTE(__p) = 0;
  v75 = 0;
  if (v81[10] & 1) != 0 && (v13 = *&v81[2], *&v81[2] = 0, __p = &off_6DACD8, v74 = v13, v75 = 1, sub_8AAAC((&v79 + 4)), (v75))
  {
    v14 = v74;
    v74 = 0;
    inAddress = &off_6DACD8;
    inAddress_8 = v14;
  }

  else
  {
    sub_224064(&inAddress, cf);
    inAddress = &off_6DACD8;
    if ((v75 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_8AAAC(&__p);
LABEL_12:
  sub_48540((a1 + 496), inAddress_8);
  sub_8AAAC(&inAddress);
  sub_8AAAC(&v69);
  *(a1 + 520) = [CiderService IsSimulatedDevice:*(a1 + 268), v69];
  *(a1 + 524) = a5;
  if (!a2)
  {
    v44 = sub_5544(14);
    v45 = sub_468EC(1, *v44, *(v44 + 8));
    v46 = v45;
    if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v79 = "Device_HAL_Common.mm";
      v80 = 1024;
      *v81 = 112;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inPhysicalDeviceID passed as 0.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inPhysicalDeviceID passed as 0.");
LABEL_67:
  }

  v15 = *(a3 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a3 + 1);
  }

  if (!v15)
  {
    v48 = sub_5544(14);
    v49 = sub_468EC(1, *v48, *(v48 + 8));
    v50 = v49;
    if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v79 = "Device_HAL_Common.mm";
      v80 = 1024;
      *v81 = 113;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): uid passed as NULL.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "uid passed as NULL.");
    goto LABEL_67;
  }

  LODWORD(v69) = -2;
  ioDataSize = 4;
  inAddress = *"kniobolg";
  LODWORD(inAddress_8) = 0;
  PropertyData = AudioObjectGetPropertyData(*(a1 + 268), &inAddress, 0, 0, &ioDataSize, &v69);
  if (PropertyData)
  {
    v51 = *sub_5544(18);
    v52 = v51;
    if (v51)
    {
      v53 = v51;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, PropertyData);
        v54 = v76 >= 0 ? &__p : __p;
        v55 = *(a3 + 23) >= 0 ? a3 : *a3;
        *buf = 136315906;
        v79 = "Device_HAL_Common.mm";
        v80 = 1024;
        *v81 = 121;
        *&v81[4] = 2080;
        *&v81[6] = v54;
        *&v81[14] = 2080;
        *&v81[16] = v55;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' reading hog mode status from physical device with UID %s", buf, 0x26u);
        if (v76 < 0)
        {
          operator delete(__p);
        }
      }
    }

    v56 = sub_5544(14);
    v57 = sub_468EC(1, *v56, *(v56 + 8));
    v41 = v57;
    if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v79 = "Device_HAL_Common.mm";
      v80 = 1024;
      *v81 = 122;
      v42 = "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to read hog mode status.";
      goto LABEL_57;
    }

LABEL_58:

    v43 = __cxa_allocate_exception(0x10uLL);
    *v43 = &off_6DDDD0;
    v43[2] = PropertyData;
  }

  if (ioDataSize != 4)
  {
    v58 = sub_5544(14);
    v59 = sub_468EC(1, *v58, *(v58 + 8));
    v60 = v59;
    if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v79 = "Device_HAL_Common.mm";
      v80 = 1024;
      *v81 = 123;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned an oddly sized value", buf, 0x12u);
    }

    v61 = __cxa_allocate_exception(0x10uLL);
    v62 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(v61, "The HAL returned an oddly sized value");
    goto LABEL_93;
  }

  if (v69 != -1)
  {
    if (getpid() != v69)
    {
      v17 = *sub_5544(18);
      v18 = v17;
      if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 268);
        if (*(a3 + 23) >= 0)
        {
          v20 = a3;
        }

        else
        {
          v20 = *a3;
        }

        *buf = 136316162;
        v79 = "Device_HAL_Common.mm";
        v80 = 1024;
        *v81 = 136;
        *&v81[4] = 1024;
        *&v81[6] = v69;
        *&v81[10] = 1024;
        *&v81[12] = v19;
        *&v81[16] = 2080;
        *&v81[18] = v20;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d process %u has hog mode on device %u with UID %s", buf, 0x28u);
      }

      v21 = *sub_5544(14);
      v22 = v21;
      if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v79 = "Device_HAL_Common.mm";
        v80 = 1024;
        *v81 = 137;
        v23 = "%25s:%-5d ASSERTION FAILURE: Another process has hog mode on a HAL device";
        v24 = v22;
        v25 = OS_LOG_TYPE_ERROR;
        v26 = 18;
LABEL_36:
        _os_log_impl(&dword_0, v24, v25, v23, buf, v26);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    v64 = sub_5544(14);
    v65 = sub_468EC(1, *v64, *(v64 + 8));
    v66 = v65;
    if (v65 && os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v67 = *(a1 + 268);
      if (*(a3 + 23) >= 0)
      {
        v68 = a3;
      }

      else
      {
        v68 = *a3;
      }

      *buf = 136315906;
      v79 = "Device_HAL_Common.mm";
      v80 = 1024;
      *v81 = 142;
      *&v81[4] = 1024;
      *&v81[6] = v67;
      *&v81[10] = 2080;
      *&v81[12] = v68;
      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Mediaserverd already has hog mode on AudioObjectID %u with UID \\%s\\"", buf, 0x22u);
    }

    v61 = __cxa_allocate_exception(0x10uLL);
    v62 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(v61, "Mediaserverd already has hog mode on AudioObjectID %u with UID %s");
LABEL_93:
    __cxa_throw(v61, v63, v62);
  }

  PropertyData = AudioObjectSetPropertyData(*(a1 + 268), &inAddress, 0, 0, 4u, &v69);
  if (PropertyData)
  {
    v39 = sub_5544(14);
    v40 = sub_468EC(1, *v39, *(v39 + 8));
    v41 = v40;
    if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v79 = "Device_HAL_Common.mm";
      v80 = 1024;
      *v81 = 129;
      v42 = "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to take hog mode.";
LABEL_57:
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, v42, buf, 0x12u);
      goto LABEL_58;
    }

    goto LABEL_58;
  }

  v27 = *sub_5544(18);
  v22 = v27;
  if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 268);
    if (*(a3 + 23) >= 0)
    {
      v29 = a3;
    }

    else
    {
      v29 = *a3;
    }

    *buf = 136316162;
    v79 = "Device_HAL_Common.mm";
    v80 = 1024;
    *v81 = 131;
    *&v81[4] = 1024;
    *&v81[6] = v28;
    *&v81[10] = 2080;
    *&v81[12] = v29;
    *&v81[20] = 1024;
    *&v81[22] = v69;
    v23 = "%25s:%-5d took hog mode on device %u with UID %s (our pid = %u)";
    v24 = v22;
    v25 = OS_LOG_TYPE_DEBUG;
    v26 = 40;
    goto LABEL_36;
  }

LABEL_37:

  if (*(a1 + 520) == 1)
  {
    v30 = *sub_5544(18);
    v31 = v30;
    if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 268);
      if (*(a3 + 23) >= 0)
      {
        v33 = a3;
      }

      else
      {
        v33 = *a3;
      }

      *buf = 136315906;
      v79 = "Device_HAL_Common.mm";
      v80 = 1024;
      *v81 = 149;
      *&v81[4] = 1024;
      *&v81[6] = v32;
      *&v81[10] = 2080;
      *&v81[12] = v33;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Detected that device %u with UID %s is simulated by ADS", buf, 0x22u);
    }
  }

  v34 = *sub_5544(18);
  v35 = v34;
  if (v34)
  {
    v36 = v34;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      sub_23148(&__p, v10);
      if (v76 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315650;
      v79 = "Device_HAL_Common.mm";
      v80 = 1024;
      *v81 = 152;
      *&v81[4] = 2080;
      *&v81[6] = p_p;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created physical device %s.", buf, 0x1Cu);
      if (v76 < 0)
      {
        operator delete(__p);
      }
    }
  }

  return a1;
}

void sub_4B265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  if (*(v17 + 519) < 0)
  {
    operator delete(*(v17 + 496));
  }

  if (*(v17 + 495) < 0)
  {
    operator delete(*v19);
  }

  if (*(v17 + 471) < 0)
  {
    operator delete(*(v17 + 448));
  }

  sub_4B27BC(v17 + 408);
  sub_87980(v18);
  std::mutex::~mutex((v17 + 320));
  a17 = (v17 + 296);
  sub_F5714(&a17);
  a17 = (v17 + 272);
  sub_F5714(&a17);
  sub_318020(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_4B27BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        sub_1A8C0(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_4B2820(uint64_t a1)
{
  *a1 = off_6DAAD0;
  std::mutex::lock((a1 + 320));
  v2 = a1 + 384;
  v3 = *(a1 + 392);
  if (v3 != a1 + 384)
  {
    do
    {
      v4 = *(a1 + 424);
      if (v4)
      {
        while (v4[2] != *(v3 + 16))
        {
          v4 = *v4;
          if (!v4)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
LABEL_5:
        v5 = sub_5544(18);
        v6 = sub_5544(24);
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
            goto LABEL_11;
          }
        }

        if ((v8 & v9) == 0)
        {
          v5 = v6;
        }

LABEL_11:
        v10 = *v5;
        v11 = v10;
        if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = *(v3 + 16);
          *buf = 136315650;
          *&buf[4] = "Device_HAL_Common.mm";
          *&buf[12] = 1024;
          *&buf[14] = 165;
          *&buf[18] = 2048;
          *&buf[20] = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Port at %p was not torn down by the device, adding it to the removed port list", buf, 0x1Cu);
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
    v3 = *(a1 + 392);
  }

  if (v3 == v2)
  {
    goto LABEL_36;
  }

  do
  {
    v13 = *(v3 + 16);
    v14 = 0x9DDFEA08EB382D69 * ((8 * (v13 & 0x1FFFFFFF) + 8) ^ HIDWORD(v13));
    v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ (v14 >> 47) ^ v14);
    v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
    v17 = *(a1 + 416);
    if (!*&v17)
    {
      goto LABEL_34;
    }

    v18 = vcnt_s8(v17);
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      v19 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
      if (v16 >= *&v17)
      {
        v19 = v16 % *&v17;
      }
    }

    else
    {
      v19 = v16 & (*&v17 - 1);
    }

    v20 = *(*(a1 + 408) + 8 * v19);
    if (!v20 || (v21 = *v20) == 0)
    {
LABEL_34:
      operator new();
    }

    while (1)
    {
      v22 = v21[1];
      if (v22 == v16)
      {
        break;
      }

      if (v18.u32[0] > 1uLL)
      {
        if (v22 >= *&v17)
        {
          v22 %= *&v17;
        }
      }

      else
      {
        v22 &= *&v17 - 1;
      }

      if (v22 != v19)
      {
        goto LABEL_34;
      }

LABEL_33:
      v21 = *v21;
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    if (v21[2] != v13)
    {
      goto LABEL_33;
    }

    v3 = *(v3 + 8);
  }

  while (v3 != v2);
LABEL_36:
  std::mutex::unlock((a1 + 320));
  std::mutex::lock((a1 + 320));
  __src = 0;
  v61 = 0;
  v62 = 0;
  v23 = *(a1 + 432);
  if (v23)
  {
    if (!(v23 >> 60))
    {
      *&buf[32] = &__src;
      sub_1DC690(v23);
    }

    sub_189A00();
  }

  v24 = *(a1 + 424);
  while (v24)
  {
    v25 = v24;
    v24 = *v24;
    sub_4B3138(buf, (a1 + 408), v25);
    v26 = *buf;
    v27 = v61;
    if (v61 >= v62)
    {
      v29 = __src;
      v30 = v61 - __src;
      v31 = (v61 - __src) >> 4;
      v32 = v31 + 1;
      if ((v31 + 1) >> 60)
      {
        sub_189A00();
      }

      v33 = v62 - __src;
      if ((v62 - __src) >> 3 > v32)
      {
        v32 = v33 >> 3;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFF0)
      {
        v34 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      *&buf[32] = &__src;
      if (v34)
      {
        sub_1DC690(v34);
      }

      *(16 * v31) = *(*buf + 16);
      v28 = 16 * v31 + 16;
      v26[2] = 0;
      v26[3] = 0;
      memcpy(0, v29, v30);
      v35 = __src;
      v36 = v62;
      __src = 0;
      v61 = v28;
      v62 = 0;
      *&buf[16] = v35;
      *&buf[24] = v36;
      *buf = v35;
      *&buf[8] = v35;
      sub_A0650(buf);
    }

    else
    {
      *v61 = *(*buf + 16);
      v28 = (v27 + 16);
      v26[2] = 0;
      v26[3] = 0;
    }

    v61 = v28;
    sub_4B1A08(1, v26);
  }

  if (__src != v61)
  {
    v37 = atomic_load(qword_70A338);
    if (v37 != pthread_self())
    {
      v38 = *sub_5544(14);
      v39 = v38;
      if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ObjectDestructionManager.h";
        *&buf[12] = 1024;
        *&buf[14] = 72;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronously deleting objects from outside of a managed ObjectDestruction event", buf, 0x12u);
      }
    }

    v40 = __src;
    if (__src != v61)
    {
      do
      {
        *buf = *v40;
        *v40 = 0;
        *(v40 + 1) = 0;
        sub_241E80(buf);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        v41 = v61;
        if (v40 + 16 != v61)
        {
          do
          {
            v42 = *(v40 + 1);
            *(v40 + 2) = 0;
            *(v40 + 3) = 0;
            v43 = *(v40 + 1);
            *v40 = v42;
            if (v43)
            {
              sub_1A8C0(v43);
            }

            v44 = v40 + 16;
            v45 = v40 + 32;
            v40 += 16;
          }

          while (v45 != v41);
          v41 = v61;
          v40 = v44;
        }

        while (v41 != v40)
        {
          v46 = *(v41 - 1);
          if (v46)
          {
            sub_1A8C0(v46);
          }

          v41 -= 16;
        }

        v61 = v40;
        v47 = __src == v40;
        v40 = __src;
      }

      while (!v47);
    }
  }

  *buf = &__src;
  sub_72C14(buf);
  std::mutex::unlock((a1 + 320));
  sub_F5768((a1 + 272));
  sub_F5768((a1 + 296));
  LODWORD(__src) = *(a1 + 268);
  strcpy(buf, "kniobolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v48 = sub_A2458(&__src, buf, 0, 0);
  *(&v51 + 1) = v49;
  *&v51 = v48;
  v50 = v51 >> 32;
  if ((v50 & 0x100000000) != 0 && getpid() == v50)
  {
    LODWORD(__src) = -1;
    v52 = *(a1 + 268);
    strcpy(buf, "kniobolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v53 = AudioObjectSetPropertyData(v52, buf, 0, 0, 4u, &__src);
    v54 = *sub_5544(18);
    v55 = v54;
    if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      if (v53)
      {
        v56 = "Failed to";
      }

      else
      {
        v56 = "Successfully";
      }

      v57 = *(a1 + 268);
      v58 = (a1 + 448);
      if (*(a1 + 471) < 0)
      {
        v58 = *v58;
      }

      *buf = 136316162;
      *&buf[4] = "Device_HAL_Common.mm";
      *&buf[12] = 1024;
      *&buf[14] = 187;
      *&buf[18] = 2080;
      *&buf[20] = v56;
      *&buf[28] = 1024;
      *&buf[30] = v57;
      *&buf[34] = 2080;
      *&buf[36] = v58;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s reset hog mode on device %u with UID %s", buf, 0x2Cu);
    }
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  sub_4B27BC(a1 + 408);
  sub_87980((a1 + 384));
  std::mutex::~mutex((a1 + 320));
  *buf = a1 + 296;
  sub_F5714(buf);
  *buf = a1 + 272;
  sub_F5714(buf);
  sub_318020(a1);
  return a1;
}

void sub_4B3094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

uint64_t sub_4B3138(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
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

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
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
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
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
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
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
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_4B3274(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 24);
  memset(&v11, 0, sizeof(v11));
  std::string::append(&v11, "{ ", 2uLL);
  v5 = (a1 + 16);
  if (v4 != (a1 + 16))
  {
    while (1)
    {
      v6 = v4[2];
      v7 = v4[3];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_23148(__p, v6 + 2);
      v8 = (v13 & 0x80u) == 0 ? __p : __p[0];
      v9 = (v13 & 0x80u) == 0 ? v13 : __p[1];
      std::string::append(&v11, v8, v9);
      if ((v13 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p[0]);
      if (v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      v4 = v4[1];
      if (v4 == v5)
      {
        goto LABEL_17;
      }

      std::string::append(&v11, ", ", 2uLL);
    }

    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_1A8C0(v7);
    goto LABEL_13;
  }

LABEL_17:
  std::string::append(&v11, " }", 2uLL);
  v10 = std::string::insert(&v11, 0, "Destroying core object(s): ", 0x1BuLL);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_4B33C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B3418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = qword_70A338;
  if (atomic_load(qword_70A338))
  {
    v6 = atomic_load(qword_70A338);
    if (v6 != pthread_self())
    {
      v16 = sub_5544(14);
      v17 = sub_468EC(1, *v16, *(v16 + 8));
      v18 = v17;
      if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ObjectDestructionManager.h";
        v21 = 1024;
        v22 = 124;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mExecutionThread has been set outside of this command's execution", buf, 0x12u);
      }
    }
  }

  v7 = atomic_load(v4);
  if (v7 == pthread_self())
  {
    v8 = sub_5544(14);
    v9 = sub_5544(16);
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
        goto LABEL_10;
      }
    }

    if ((v11 & v12) == 0)
    {
      v8 = v9;
    }

LABEL_10:
    v13 = *v8;
    v14 = v13;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ObjectDestructionManager.h";
      v21 = 1024;
      v22 = 127;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Called recursively", buf, 0x12u);
    }
  }

  v19[0] = off_6DAD70;
  v19[1] = v4;
  v19[3] = v19;
  sub_51FD0(buf, 0, v19);
  sub_4C70(v19);
  atomic_store(pthread_self(), v4);
  sub_4B36B0(v4, (a1 + 16), 0);
  sub_21991C(a2, 1920099684);
  return sub_53BA4(buf);
}

void sub_4B366C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B36B0(unint64_t *a1, void *a2, int a3)
{
  if (a2[2])
  {
    if (a3)
    {
      v4 = sub_68E60();
      *buf = buf;
      *&buf[8] = buf;
      *&buf[16] = 0;
      v5 = a2[2];
      if (v5)
      {
        v7 = *a2;
        v6 = a2[1];
        v8 = *(*a2 + 8);
        v9 = *v6;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = *buf;
        *(*buf + 8) = v6;
        *v6 = v10;
        *(v7 + 8) = buf;
        *buf = v7;
        *&buf[16] = v5;
        a2[2] = 0;
      }

      v11 = v4;
      operator new();
    }

    v12 = atomic_load(a1);
    if (v12 != pthread_self())
    {
      v13 = *sub_5544(14);
      v14 = v13;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ObjectDestructionManager.h";
        *&buf[12] = 1024;
        *&buf[14] = 72;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronously deleting objects from outside of a managed ObjectDestruction event", buf, 0x12u);
      }
    }

    while (a2[2])
    {
      v15 = a2[1];
      *buf = *(v15 + 16);
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      sub_241E80(buf);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      sub_241E28(a2, v15);
    }
  }
}

void sub_4B3944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B3978(uint64_t a1)
{
  v1 = a1;
  sub_8703C();
  operator new();
}

void sub_4B3AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  sub_87980(&a10);
  sub_242030(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4B3B54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6DAD70;
  a2[1] = v2;
  return result;
}

void sub_4B3BE8(uint64_t *a1)
{
  sub_4B3C20(a1);

  operator delete();
}

uint64_t *sub_4B3C20(uint64_t *a1)
{
  v2 = a1 + 2;
  if (a1[4])
  {
    v3 = sub_5544(14);
    v4 = sub_5544(16);
    v5 = 0;
    *__p = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&__p[v5];
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
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = a1[3];
        memset(&v18, 0, sizeof(v18));
        std::string::append(&v18, "{ ", 2uLL);
        if (v11 != v2)
        {
          while (1)
          {
            v12 = v11[2];
            v13 = v11[3];
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_23148(__p, v12 + 2);
            v14 = SBYTE3(v21) >= 0 ? __p : *__p;
            v15 = SBYTE3(v21) >= 0 ? BYTE3(v21) : *&__p[8];
            std::string::append(&v18, v14, v15);
            if ((SBYTE3(v21) & 0x80000000) == 0)
            {
              break;
            }

            operator delete(*__p);
            if (v13)
            {
              goto LABEL_21;
            }

LABEL_22:
            v11 = v11[1];
            if (v11 == v2)
            {
              goto LABEL_26;
            }

            std::string::append(&v18, ", ", 2uLL);
          }

          if (!v13)
          {
            goto LABEL_22;
          }

LABEL_21:
          sub_1A8C0(v13);
          goto LABEL_22;
        }

LABEL_26:
        std::string::append(&v18, " }", 2uLL);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v18;
        }

        else
        {
          v16 = v18.__r_.__value_.__r.__words[0];
        }

        *__p = 136315650;
        *&__p[4] = "ObjectDestructionManager.h";
        *&__p[12] = 1024;
        *&__p[14] = 115;
        v20 = 2080;
        v21 = v16;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Destructor called without an intervening call to Execute. Contained objects (%s) will be leaked!.", __p, 0x1Cu);
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_87980(v2);
  return a1;
}

void sub_4B3E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1CC130(exception_object);
}

uint64_t sub_4B3EFC(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v11[0] = off_6DACF8;
  v11[1] = v3;
  v11[2] = v2;
  v11[3] = v11;
  sub_51FD0(v12, 0, v11);
  sub_4C70(v11);
  v4 = (*(**a1 + 152))();
  v5 = (*(**a1 + 80))();
  if (v5)
  {
    if (v4 != (*(**a1 + 152))())
    {
      v6 = sub_809C0();
      v7 = *a1;
      v8 = a1[1];
      v10[0] = v7;
      v10[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_257CE8(v6, v10);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    sub_52C88(&v13);
  }

  sub_53BA4(v12);
  return v5;
}

void sub_4B4088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  sub_53BA4(&a15);
  _Unwind_Resume(a1);
}

void sub_4B40C0(uint64_t a1)
{
  v2 = sub_5544(18);
  v3 = sub_5544(9);
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
      goto LABEL_7;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_7:
  v7 = *v2;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 8);
      if (*(v10 + 303) < 0)
      {
        sub_54A0(__dst, *(v10 + 280), *(v10 + 288));
        v10 = *(a1 + 8);
      }

      else
      {
        *__dst = *(v10 + 280);
        v23 = *(v10 + 296);
      }

      if (v23 >= 0)
      {
        v11 = __dst;
      }

      else
      {
        v11 = __dst[0];
      }

      v12 = *(v10 + 200);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v13 = *(a1 + 8);
        v14 = *(v13 + 200);
        v17[0] = *(v13 + 192);
        v17[1] = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_5659C(&v18, v17, "", 482);
        (*(*v18 + 128))(__p);
        if (v21 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "Device_HAL_Common.mm";
        *&buf[12] = 1024;
        *&buf[14] = 482;
        *&buf[18] = 2080;
        *&buf[20] = v11;
        v25 = 2080;
        v26 = v15;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Initialization failed for port %s of device %s. The port has not been registered and will be queued for destruction.", buf, 0x26u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (v19)
        {
          sub_1A8C0(v19);
        }

        if (v14)
        {
          std::__shared_weak_count::__release_weak(v14);
        }

        std::__shared_weak_count::__release_weak(v12);
      }

      else
      {
        *buf = 136315906;
        *&buf[4] = "Device_HAL_Common.mm";
        *&buf[12] = 1024;
        *&buf[14] = 482;
        *&buf[18] = 2080;
        *&buf[20] = v11;
        v25 = 2080;
        v26 = "NULL";
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Initialization failed for port %s of device %s. The port has not been registered and will be queued for destruction.", buf, 0x26u);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  v16 = *(a1 + 16);
  __dst[0] = *(a1 + 8);
  __dst[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_4B145C(__dst);
  if (v16)
  {
    sub_1A8C0(v16);
  }

  if (*(a1 + 8))
  {
    *buf = buf;
    *&buf[8] = buf;
    operator new();
  }
}

void sub_4B44C8(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_1A8C0(v2);
  }

  operator delete(__p);
}

void sub_4B4508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A8C0(v1);
  }
}

uint64_t sub_4B4518(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_6DACF8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_4B45BC(void *a1)
{
  *a1 = off_6DACF8;
  v1 = a1[2];
  if (v1)
  {
    sub_1A8C0(v1);
  }

  operator delete();
}

void *sub_4B4628(void *a1)
{
  *a1 = off_6DACF8;
  v2 = a1[2];
  if (v2)
  {
    sub_1A8C0(v2);
  }

  return a1;
}

void sub_4B4674(void *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  std::mutex::lock((a2 + 320));
  v3 = *(a2 + 392);
  if (v3 != a2 + 384)
  {
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  std::mutex::unlock((a2 + 320));
}

void sub_4B4770(void *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  strcpy(v5, "cwdv");
  v5[8] = 0;
  v6 = 3;
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v9 = 44739242;
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_161C7C(a1, a2, &v2);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v8[0]);
  if (v2)
  {
    v3 = v2;
    operator delete(v2);
  }
}

void sub_4B480C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_46934(va);
  _Unwind_Resume(a1);
}

void sub_4B4820(uint64_t a1, std::__shared_weak_count *a2)
{
  if (!a2->__vftable)
  {
    v21 = sub_5544(14);
    v22 = sub_468EC(1, *v21, *(v21 + 8));
    v23 = v22;
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_HAL_Common.mm";
      v49 = 1024;
      v50 = 588;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  shared_owners = a2->__shared_owners_;
  v47[0] = a2->__vftable;
  v47[1] = shared_owners;
  if (shared_owners)
  {
    atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_4B13EC(a1, v47);
  if (shared_owners)
  {
    sub_1A8C0(shared_owners);
  }

  if (v5)
  {
    v25 = a2;
    v26 = sub_5544(14);
    v27 = sub_468EC(1, *v26, *(v26 + 8));
    v28 = v27;
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = *v25;
      *buf = 136315906;
      *&buf[4] = "Device_HAL_Common.mm";
      v49 = 1024;
      v50 = 592;
      v51 = 2048;
      v52 = v29;
      v53 = 2048;
      v54 = a1;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Port at %p has already been registered to device at %p", buf, 0x26u);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v30, "Port at %p has already been registered to device at %p");
  }

  std::mutex::lock((a1 + 320));
  v6 = *(a1 + 424);
  if (v6)
  {
    while (v6[2] != a2->__vftable)
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    sub_4B3138(buf, (a1 + 408), v6);
    if (*buf)
    {
      sub_4B1A08(SBYTE2(v50), *buf);
    }
  }

LABEL_13:
  std::mutex::unlock((a1 + 320));
  v7 = a2->__shared_owners_;
  v46[0] = a2->__vftable;
  v46[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_4B3EFC(v46);
  if (v7)
  {
    sub_1A8C0(v7);
  }

  if (v8)
  {
    v9 = a2->__vftable[5].~__shared_weak_count;
    if (v9)
    {
      on_zero_shared_weak = a2->__vftable[4].__on_zero_shared_weak;
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v11 = std::__shared_weak_count::lock(v9);
      if (v11)
      {
        v12 = v11;
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_weak(v9);
        sub_1A8C0(v12);
        v13 = std::__shared_weak_count::lock(v12);
        if (v13)
        {
          sub_1A8C0(v13);
          std::__shared_weak_count::__release_weak(v12);
          if (on_zero_shared_weak != a1)
          {
            goto LABEL_22;
          }

          goto LABEL_31;
        }

        v20 = v12;
      }

      else
      {
        v20 = v9;
      }

      std::__shared_weak_count::__release_weak(v20);
    }

    if (a1)
    {
LABEL_22:
      v14 = a2;
      v15 = sub_5544(14);
      v16 = sub_468EC(1, *v15, *(v15 + 8));
      v17 = v16;
      if (v16)
      {
        v18 = v16;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v14->__vftable;
          if (SHIBYTE(v14->__vftable[7].__on_zero_shared) < 0)
          {
            sub_54A0(__dst, v19[7].~__shared_weak_count, v19[7].~__shared_weak_count_0);
            v19 = v14->__vftable;
          }

          else
          {
            *__dst = *&v19[7].~__shared_weak_count;
            on_zero_shared = v19[7].__on_zero_shared;
          }

          if (SHIBYTE(on_zero_shared) >= 0)
          {
            v31 = __dst;
          }

          else
          {
            v31 = __dst[0];
          }

          v32 = v19[5].~__shared_weak_count;
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v36 = v14->__vftable[4].__on_zero_shared_weak;
            v14 = v14->__vftable[5].~__shared_weak_count;
            v39[0] = v36;
            v39[1] = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_5659C(&v40, v39, "", 614);
            v33 = v42;
            (*(*v40 + 128))(v42);
            if (v43 < 0)
            {
              v33 = v42[0];
            }
          }

          else
          {
            v33 = "NULL";
          }

          (*(*a1 + 128))(__p, a1);
          if (v38 >= 0)
          {
            v34 = __p;
          }

          else
          {
            v34 = __p[0];
          }

          *buf = 136316162;
          *&buf[4] = "Device_HAL_Common.mm";
          v49 = 1024;
          v50 = 614;
          v51 = 2080;
          v52 = v31;
          v53 = 2080;
          v54 = v33;
          v55 = 2080;
          v56 = v34;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Port (%s) is owned by an unexpected physical device (owner: %s, expected: %s)", buf, 0x30u);
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }

          if (v32)
          {
            if (v43 < 0)
            {
              operator delete(v42[0]);
            }

            if (v41)
            {
              sub_1A8C0(v41);
            }

            if (v14)
            {
              std::__shared_weak_count::__release_weak(v14);
            }

            std::__shared_weak_count::__release_weak(v32);
          }

          if (SHIBYTE(on_zero_shared) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      v35 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v35, "Port (%s) is owned by an unexpected physical device (owner: %s, expected: %s)");
    }

LABEL_31:
    std::mutex::lock((a1 + 320));
    operator new();
  }
}

void sub_4B4E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15)
  {
    sub_1A8C0(a15);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  std::__shared_weak_count::__release_weak(v28);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_4B4F1C(uint64_t a1, int a2, AudioObjectPropertyScope a3, int a4)
{
  v60 = 1;
  sub_4AE8BC(buf, a1, COERCE_DOUBLE(1768845428));
  __p = 0uLL;
  v63 = 0;
  mSelector_low = LOBYTE(buf[2].mSelector);
  p_p = &__p;
  if (LOBYTE(buf[2].mSelector))
  {
    p_p = buf;
  }

  v10 = *&p_p->mSelector;
  v11 = *&buf[0].mElement;
  if (!LOBYTE(buf[2].mSelector))
  {
    v11 = 0;
  }

  v12 = *&p_p[1].mScope;
  *&p_p->mSelector = 0;
  *&p_p->mElement = 0;
  *&p_p[1].mScope = 0;
  v57 = v10;
  v58 = v11;
  v59 = v12;
  if (__p)
  {
    operator delete(__p);
    if ((mSelector_low & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!mSelector_low)
  {
    goto LABEL_11;
  }

  if (*&buf[0].mSelector)
  {
    operator delete(*&buf[0].mSelector);
  }

LABEL_11:
  v13 = *sub_5544(18);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 128))(&__p, a1);
      v16 = v63 >= 0 ? &__p : __p;
      buf[0].mSelector = 136316162;
      *&buf[0].mScope = "Device_HAL_Common.mm";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 704;
      HIWORD(buf[1].mScope) = 2080;
      *&buf[1].mElement = v16;
      LOWORD(buf[2].mScope) = 1024;
      *(&buf[2].mScope + 2) = (v58 - v57) >> 2;
      HIWORD(buf[2].mElement) = 2080;
      *&buf[3].mSelector = "Enabling";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Device %s has %d input streams before %s tapstream", buf, 0x2Cu);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(__p);
      }
    }
  }

  if (a2 == 2 && (*(a1 + 520) & 1) != 0)
  {
    v17 = *(a1 + 268);
    strcpy(buf, "#mtsptuo");
    BYTE1(buf[0].mElement) = 0;
    HIWORD(buf[0].mElement) = 0;
    LODWORD(__p) = 0;
    AudioObjectGetPropertyDataSize(v17, buf, 0, 0, &__p);
    if (__p <= 3)
    {
      v18 = *sub_5544(18);
      v19 = v18;
      if (v18)
      {
        v20 = v18;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          (*(*a1 + 128))(&__p, a1);
          v21 = v63 >= 0 ? &__p : __p;
          buf[0].mSelector = 136315650;
          *&buf[0].mScope = "Device_HAL_Common.mm";
          LOWORD(buf[1].mSelector) = 1024;
          *(&buf[1].mSelector + 2) = 715;
          HIWORD(buf[1].mScope) = 2080;
          *&buf[1].mElement = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Simulated device %s has no output stream to tap -- skipping tapstream enablement", buf, 0x1Cu);
          if (SHIBYTE(v63) < 0)
          {
            operator delete(__p);
          }
        }
      }

      goto LABEL_96;
    }

    v22 = v57;
    if (v57 == v58)
    {
LABEL_35:
      v27 = *sub_5544(18);
      if (!v27)
      {
        v28 = 0;
        a2 = 1;
        goto LABEL_54;
      }

      v28 = v27;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        (*(*a1 + 128))(&__p, a1);
        v29 = v63 >= 0 ? &__p : __p;
        buf[0].mSelector = 136315650;
        *&buf[0].mScope = "Device_HAL_Common.mm";
        LOWORD(buf[1].mSelector) = 1024;
        *(&buf[1].mSelector + 2) = 738;
        HIWORD(buf[1].mScope) = 2080;
        *&buf[1].mElement = v29;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Overriding stream count change waiting policy for device %s: simulated devices must wait for stream count change", buf, 0x1Cu);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(__p);
        }
      }

      a2 = 1;
    }

    else
    {
      while (1)
      {
        LODWORD(__p) = *v22;
        strcpy(buf, "spatbolg");
        BYTE1(buf[0].mElement) = 0;
        HIWORD(buf[0].mElement) = 0;
        v23 = sub_542F0(&__p, buf, 0, 0);
        *(&v26 + 1) = v24;
        *&v26 = v23;
        v25 = v26 >> 32;
        if ((v25 & 0x100000000) != 0)
        {
          if (v25)
          {
            break;
          }
        }

        if (++v22 == v58)
        {
          goto LABEL_35;
        }
      }

      v30 = *sub_5544(18);
      if (!v30)
      {
        v28 = 0;
        a2 = 2;
        goto LABEL_54;
      }

      v28 = v30;
      a2 = 2;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        (*(*a1 + 128))(&__p, a1);
        if (v63 >= 0)
        {
          v31 = &__p;
        }

        else
        {
          v31 = __p;
        }

        buf[0].mSelector = 136315650;
        *&buf[0].mScope = "Device_HAL_Common.mm";
        LOWORD(buf[1].mSelector) = 1024;
        *(&buf[1].mSelector + 2) = 730;
        HIWORD(buf[1].mScope) = 2080;
        *&buf[1].mElement = v31;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Simulated device %s has already posted tapstream -- we still need to enable HAL tapstream control", buf, 0x1Cu);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(__p);
        }

        a2 = 2;
      }
    }

LABEL_54:
  }

  if (!a4)
  {
    buf[0].mSelector = 1952542820;
    buf[0].mScope = a3;
    buf[0].mElement = 0;
    if (!(*(*a1 + 16))(a1, buf))
    {
      goto LABEL_96;
    }

    buf[0].mSelector = 1952542820;
    buf[0].mScope = a3;
    buf[0].mElement = 0;
    v39 = sub_147610(a1);
    v40 = *sub_5544(18);
    v41 = v40;
    if (v40)
    {
      v42 = v40;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 128))(&__p, a1);
        v43 = "Enabling";
        if (!v60)
        {
          v43 = "Disabling";
        }

        *&buf[0].mScope = "Device_HAL_Common.mm";
        v44 = __p;
        buf[0].mSelector = 136316162;
        LOWORD(buf[1].mSelector) = 1024;
        if (v63 >= 0)
        {
          v44 = &__p;
        }

        *(&buf[1].mSelector + 2) = 747;
        HIWORD(buf[1].mScope) = 2080;
        *&buf[1].mElement = v43;
        LOWORD(buf[2].mScope) = 2080;
        *(&buf[2].mScope + 2) = v44;
        HIWORD(buf[3].mSelector) = 1024;
        buf[3].mScope = v39;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s reference stream property on device %s. status: %u", buf, 0x2Cu);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (a2 == 1)
    {
      v54 = (*(*a1 + 120))(a1);
      *&buf[0].mSelector = off_6DAE38;
      *&buf[0].mElement = sub_4AF71C;
      *&buf[2].mSelector = buf;
      sub_4AE934(v54, 0x696E7074u, &v57, buf);
    }

    else
    {
      if (a2)
      {
        goto LABEL_96;
      }

      v45 = (*(*a1 + 120))(a1);
      *&buf[0].mSelector = off_6DADF0;
      *&buf[2].mSelector = buf;
      sub_4AE934(v45, 0x696E7074u, &v57, buf);
    }

    goto LABEL_95;
  }

  inData = 1;
  buf[0].mSelector = 1668575852;
  buf[0].mScope = a3;
  buf[0].mElement = 0;
  if ((*(*a1 + 16))(a1, buf))
  {
    LODWORD(__p) = 1668575852;
    *(&__p + 4) = a3;
    sub_2C4188(buf, a1);
    mSelector = buf[0].mSelector;
    if (buf[0].mSelector || (buf[2].mElement & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = mSelector;
    }

    __p = 0uLL;
    v63 = 0;
    v33 = *&buf[0].mElement;
    sub_46980(&__p, *&buf[0].mElement, *&buf[1].mScope, (*&buf[1].mScope - *&buf[0].mElement) >> 2);
    if (v33)
    {
      operator delete(v33);
    }

    v34 = __p;
    if (__p != *(&__p + 1))
    {
      v35 = __p;
      while (1)
      {
        LODWORD(__p) = *v35;
        buf[0].mSelector = 1668047219;
        buf[0].mScope = a3;
        buf[0].mElement = 0;
        v36 = sub_542F0(&__p, buf, 0, 0);
        v38 = v36;
        if (v36)
        {
          goto LABEL_101;
        }

        if ((v37 & 1) == 0)
        {
          v38 = 0;
LABEL_101:
          v55 = __cxa_allocate_exception(0x10uLL);
          *v55 = &off_6DDDD0;
          v55[2] = v38;
        }

        if (v36 == 0x6576697300000000)
        {
          break;
        }

        if (++v35 == *(&v34 + 1))
        {
          goto LABEL_91;
        }
      }

      *&inAddress.mSelector = 0x676C6F626263766CLL;
      inAddress.mElement = 0;
      v46 = AudioObjectSetPropertyData(*v35, &inAddress, 0, 0, 4u, &inData);
      v47 = *sub_5544(18);
      v48 = v47;
      if (v47)
      {
        v49 = v47;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = inData;
          (*(*a1 + 128))(&__p, a1);
          v51 = "Enabling";
          if (!v50)
          {
            v51 = "Disabling";
          }

          *&buf[0].mScope = "Device_HAL_Common.mm";
          v52 = __p;
          buf[0].mSelector = 136316162;
          LOWORD(buf[1].mSelector) = 1024;
          if (v63 >= 0)
          {
            v52 = &__p;
          }

          *(&buf[1].mSelector + 2) = 798;
          HIWORD(buf[1].mScope) = 2080;
          *&buf[1].mElement = v51;
          LOWORD(buf[2].mScope) = 2080;
          *(&buf[2].mScope + 2) = v52;
          HIWORD(buf[3].mSelector) = 1024;
          buf[3].mScope = v46;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s reference stream control on device %s. status: %u", buf, 0x2Cu);
          if (SHIBYTE(v63) < 0)
          {
            operator delete(__p);
          }
        }
      }
    }

LABEL_91:
    if (v34)
    {
      operator delete(v34);
    }
  }

  if (a2 == 1)
  {
    v53 = (*(*a1 + 120))(a1);
    *&buf[0].mSelector = off_6DAE38;
    *&buf[0].mElement = sub_4AF71C;
    *&buf[2].mSelector = buf;
    sub_4AE934(v53, 0x696E7074u, &v57, buf);
LABEL_95:
    sub_4AF380(buf);
  }

LABEL_96:
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }
}

void sub_4B5A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (v23)
  {
    operator delete(v23);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_4B5B30(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 0;
  }

  v3 = *a2 + 4;
  do
  {
    v4 = *(v3 - 4);
    v10.mElement = 0;
    v11 = v4;
    *&v10.mSelector = 0x676C6F6274617073;
    v5 = sub_542F0(&v11, &v10, 0, 0);
    *(&v7 + 1) = v6;
    *&v7 = v5;
    result = ((v7 >> 32) >> 32) & (HIDWORD(v5) != 0);
    if (result)
    {
      break;
    }

    v9 = v3 == v2;
    v3 += 4;
  }

  while (!v9);
  return result;
}

uint64_t sub_4B5C4C(os_unfair_lock_s *a1)
{
  v2 = 0;
  v3 = 4;
  do
  {
    v4 = v2;
    os_unfair_lock_opaque = a1[67]._os_unfair_lock_opaque;
    v6 = (v2 & 1) == 0;
    if (v2)
    {
      v7 = 74;
    }

    else
    {
      v7 = 68;
    }

    v8 = &a1[v7];
    if (v6)
    {
      v9 = 1768845428;
    }

    else
    {
      v9 = 1869968496;
    }

    inAddress.mSelector = 1937009955;
    inAddress.mScope = v9;
    inAddress.mElement = 0;
    outDataSize[0] = 0;
    AudioObjectGetPropertyDataSize(os_unfair_lock_opaque, &inAddress, 0, 0, outDataSize);
    v10 = outDataSize[0];
    if (outDataSize[0] > 3)
    {
      v11 = *v8;
      v12 = v8[1];
      if (*v8 == v12)
      {
        sub_4AE074(a1, v4 & 1);
        v3 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v11 = *v8;
      v12 = v8[1];
    }

    v13 = (v12 - v11) >> 4;
    if (v12 != v11 && v13 != outDataSize[0] >> 2)
    {
      *outDataSize = 0;
      v24 = 0;
      v25 = 0;
      sub_4B5F10(outDataSize, v11, v12, v13);
      sub_F5768(v8);
      (*(*&a1->_os_unfair_lock_opaque + 440))(a1);
      if (v10 >= 4)
      {
        sub_4AE074(a1, v4 & 1);
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      sub_4B5F10(&v20, *outDataSize, v24, (v24 - *outDataSize) >> 4);
      v18 = 0uLL;
      v19 = 0;
      sub_4B5F10(&v18, v20, v21, (v21 - v20) >> 4);
      v15 = sub_68E60();
      v18 = 0uLL;
      v19 = 0;
      v16 = v15;
      operator new();
    }

LABEL_19:
    v2 = 1;
  }

  while ((v4 & 1) == 0);
  sub_F7240(a1);
  return v3;
}

void sub_4B5EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a11;
  sub_F5714(&a21);
  a21 = &a15;
  sub_F5714(&a21);
  a21 = &a18;
  sub_F5714(&a21);
  _Unwind_Resume(a1);
}

void sub_4B5F10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      sub_1DC690(a4);
    }

    sub_189A00();
  }
}

void ***sub_4B5FC0(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1;
    sub_F5714(&v2);
    operator delete();
  }

  return result;
}

void sub_4B601C(uint64_t a1)
{
  v1 = a1;
  sub_8703C();
  operator new();
}

void sub_4B61D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __p = &a13;
    sub_F5714(&__p);
    operator delete(v13);
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_4B6548(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_F5768((a1 + 8));

  sub_21991C(a2, 1920099684);
}

void sub_4B658C(void **a1)
{
  v2 = a1 + 1;
  sub_F5714(&v2);

  operator delete(a1);
}

void sub_4B6604(uint64_t a1, void *a2)
{
  *a2 = off_6DAE80;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  sub_4B5F10((a2 + 1), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 4);
}

void sub_4B66C8(uint64_t a1)
{
  *a1 = off_6DAE80;
  v1 = (a1 + 8);
  sub_F5714(&v1);

  operator delete();
}

uint64_t sub_4B6740(uint64_t a1)
{
  *a1 = off_6DAE80;
  v3 = (a1 + 8);
  sub_F5714(&v3);
  return a1;
}

__CFArray *sub_4B6798(uint64_t a1, int a2)
{
  v29[0] = 1936941859;
  v29[1] = a2;
  v29[2] = 0;
  if (a2 == 1768845428)
  {
    v4 = @"input source ID";
  }

  else
  {
    v4 = @"output destination ID";
  }

  v5 = @"output destination name";
  if (a2 == 1768845428)
  {
    v5 = @"input source name";
  }

  v21 = v5;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v28 = 257;
  v6 = (*(*a1 + 32))(a1, v29, 0, 0);
  v7 = v6;
  v8 = v6 >> 2;
  v9 = __chkstk_darwin(v6);
  v11 = (&v20 - v10);
  v26 = v12;
  (*(*a1 + 40))(a1, v29, 0, 0, &v26, &v20 - v10, v9);
  v20 = &v20;
  if (v26 != v7)
  {
    v16 = sub_5544(14);
    v17 = sub_468EC(1, *v16, *(v16 + 8));
    v18 = v17;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "Device_HAL_Common.mm";
      v31 = 1024;
      *v32 = 1029;
      *&v32[4] = 1024;
      *&v32[6] = v7;
      LOWORD(v33[0]) = 1024;
      *(v33 + 2) = v26;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Expected %u bytes, got %u bytes instead", buf, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Expected %u bytes, got %u bytes instead");
  }

  if (v7 >= 4)
  {
    do
    {
      v25 = 0;
      *buf = v11;
      *&buf[8] = 4;
      *&v32[2] = &v25;
      v33[0] = 8;
      v24[0] = 1819501422;
      v24[1] = a2;
      v24[2] = 0;
      v26 = 32;
      (*(*a1 + 40))(a1, v24, 0, 0, &v26, buf);
      v22 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v23 = 257;
      sub_A1CA4(&v22, v4, *v11);
      v13 = v22;
      if (HIBYTE(v23) == 1 && v25 && v22)
      {
        CFDictionarySetValue(v22, v21, v25);
        v13 = v22;
      }

      if (Mutable && HIBYTE(v28) == 1)
      {
        CFArrayAppendValue(Mutable, v13);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      sub_A1D30(&v22);
      ++v11;
      --v8;
    }

    while (v8);
  }

  if (Mutable)
  {
    CFRetain(Mutable);
    v14 = Mutable;
  }

  else
  {
    v14 = 0;
  }

  sub_A0804(&Mutable);
  return v14;
}

void sub_4B6B50(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  sub_A0804(v2 - 160);
  _Unwind_Resume(a1);
}

CFNumberRef sub_4B6BA0(uint64_t a1, unsigned int a2)
{
  v10 = 4;
  valuePtr = 0;
  *buf = 1936945763;
  v13 = a2;
  (*(*a1 + 40))(a1, buf, 0, 0, &v10, &valuePtr);
  v3 = sub_5544(18);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, a2);
        if (v9 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *buf = 136315906;
        v13 = "Device_HAL_Common.mm";
        v14 = 1024;
        v15 = 1064;
        v16 = 2080;
        v17 = v6;
        v18 = 1024;
        v19 = valuePtr;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d retrieved data source (scope = %s) of %u", buf, 0x22u);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
}

uint64_t sub_4B6D4C(uint64_t a1, unsigned int a2, CFTypeRef cf)
{
  *cfa = cf;
  if (!cf)
  {
    goto LABEL_16;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!*cfa)
  {
LABEL_16:
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
  }

  v6 = sub_4A8F8(*cfa);
  CFRelease(*cfa);
  v16 = v6;
  v7 = sub_5544(18);
  if (*(v7 + 8))
  {
    v8 = *v7;
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, a2);
        if (v15 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *cfa = 136315906;
        *&cfa[4] = "Device_HAL_Common.mm";
        v18 = 1024;
        v19 = 1075;
        v20 = 2080;
        v21 = v10;
        v22 = 1024;
        v23 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d setting data source (scope = %s) to %u", cfa, 0x22u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  *cfa = 1936945763;
  *&cfa[4] = a2;
  *&cfa[8] = 0;
  return (*(*a1 + 48))(a1, cfa, 0, 0, 4, &v16);
}

uint64_t sub_4B6FF0(void *a1, uint64_t a2, AudioObjectPropertyScope a3)
{
  v22 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  inAddress.mSelector = 1936941859;
  inAddress.mScope = a3;
  inAddress.mElement = 0;
  sub_4DFC0(a2);
  result = AudioObjectHasProperty(*(a2 + 268), &inAddress);
  if (result)
  {
    v6 = (*(*a2 + 32))(a2, &inAddress, 0, 0);
    v7 = v6;
    v8 = __chkstk_darwin(v6);
    v10 = (v20 - v9);
    v27 = v11;
    result = (*(*a2 + 40))(a2, &inAddress, 0, 0, &v27, v20 - v9, v8);
    v20[1] = v20;
    if (v27 != v7)
    {
      v16 = sub_5544(14);
      v17 = sub_468EC(1, *v16, *(v16 + 8));
      v18 = v17;
      if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "Device_HAL_Common.mm";
        v32 = 1024;
        *v33 = 1107;
        *&v33[4] = 1024;
        *&v33[6] = v7;
        *v34 = 1024;
        *&v34[2] = v27;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Expected %u bytes, got %u bytes instead", buf, 0x1Eu);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Expected %u bytes, got %u bytes instead");
    }

    if (v7 >= 4)
    {
      *&v12 = 136316674;
      v21 = v12;
      v25 = *v10;
      v24 = 0;
      *buf = &v25;
      *&buf[8] = 4;
      *&v33[2] = &v24;
      *v34 = 8;
      v30[0] = 1819501422;
      v30[1] = a3;
      v30[2] = 0;
      v29 = 32;
      (*(*a2 + 40))(a2, v30, 0, 0, &v29, buf);
      v23 = v24;
      if (v24)
      {
        v13 = CFGetTypeID(v24);
        if (v13 != CFStringGetTypeID())
        {
          v15 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v15, "Could not construct");
        }

        v14 = v23;
      }

      else
      {
        v14 = 0;
      }

      sub_48540(&v26, v14);
      if (v23)
      {
        CFRelease(v23);
      }

      operator new();
    }
  }

  return result;
}

void sub_4B7644(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  *(v2 - 248) = *(v2 - 336);
  sub_72C14((v2 - 248));
  _Unwind_Resume(a1);
}

uint64_t sub_4B77B0(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(*a1 + 320))(a1);
  if ((result & 0x100000000) != 0 || a3)
  {
    sub_15DD68();
  }

  return result;
}

void sub_4B7C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_24EBDC(v38);
  std::__shared_weak_count::~__shared_weak_count(v37);
  operator delete(v40);
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  _Unwind_Resume(a1);
}

void sub_4B7D08(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DAEF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4B8404(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x4B8320);
}

void sub_4B8444(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DB018;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4B84E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DAF30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4B8940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint8_t buf, uint64_t a18)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B8A94(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_318678(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_1A8C0(*(&v4 + 1));
  }

  return v3;
}

void sub_4B8AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B8C30(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_4B8C70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DB050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4B90C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint8_t buf, uint64_t a18)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B9234(uint64_t a1)
{
  sub_4B9270((a1 - 80));

  operator delete();
}

void *sub_4B9270(void *a1)
{
  *a1 = off_6DB188;
  a1[10] = off_6DB258;
  v2 = sub_5544(1);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "SplitterMasterVolumeControl.cpp";
    v8 = 1024;
    v9 = 70;
    v10 = 2048;
    v11 = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroyed master volume (%p)", &v6, 0x1Cu);
  }

  v4 = a1[64];
  if (v4)
  {
    a1[65] = v4;
    operator delete(v4);
  }

  sub_1405C0(a1);
  return a1;
}

void sub_4B9394(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

std::string *sub_4B93C4@<X0>(const void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&v11, __str);
  v4 = std::string::insert(&v11, 0, "addr: ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v12, "; ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v14 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v14 >= 0)
  {
    v9 = HIBYTE(v14);
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, " ]", 2uLL);
}

void sub_4B9520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B95A0()
{
  v0 = sub_5544(1);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315394;
      v3 = "SplitterMasterVolumeControl.cpp";
      v4 = 1024;
      v5 = 271;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Request to reconfigure master volume control", &v2, 0x12u);
    }
  }
}

void sub_4B965C()
{
  v0 = sub_5544(1);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315394;
      v3 = "SplitterMasterVolumeControl.cpp";
      v4 = 1024;
      v5 = 264;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Request to reconfigure master volume control", &v2, 0x12u);
    }
  }
}

uint64_t sub_4B9718(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SplitterMasterVolumeControl.cpp";
      v22 = 1024;
      *v23 = 339;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if (*a2 == 1987013741)
  {
    *&v20.mSelector = 0x676C6F6277736D76;
    v20.mElement = 0;
    *buf = *a2;
    *&buf[8] = *(a2 + 8);
    *&v23[2] = a3;
    *&v23[10] = a4;
    sub_185D3C(a1 + 19, &v20.mSelector, buf);
    v8 = a1[64];
    for (i = a1[65]; v8 != i; ++v8)
    {
      sub_4E890();
      sub_74D2C(*v8, &v20, sub_4B99D8, a1);
      v10 = sub_5544(19);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = *v8;
        sub_22170(__p, 0x77736D76u);
        v13 = __p;
        if (v19 < 0)
        {
          v13 = __p[0];
        }

        *buf = 136316162;
        *&buf[4] = "SplitterMasterVolumeControl.cpp";
        v22 = 1024;
        *v23 = 357;
        *&v23[4] = 2048;
        *&v23[6] = a1;
        *&v23[14] = 1024;
        *&v23[16] = v12;
        v24 = 2080;
        v25 = v13;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p RemovePropertyListener() succeeded. device: %u; selector: '%s'.", buf, 0x2Cu);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 1;
}

uint64_t sub_4B99D8(int a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SplitterMasterVolumeControl.cpp";
      v29 = 1024;
      v30 = 393;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inNumberAddresses is 0.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inNumberAddresses is 0.");
  }

  if (!a4)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SplitterMasterVolumeControl.cpp";
      v29 = 1024;
      v30 = 394;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inClientData is NULL]: inClientData is NULL.", buf, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v19, "inClientData is NULL.");
  }

  if (!a3)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SplitterMasterVolumeControl.cpp";
      v29 = 1024;
      v30 = 395;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inAddresses is NULL]: inAddresses is NULL.", buf, 0x12u);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v22, "inAddresses is NULL.");
  }

  v6 = 0;
  v7 = a2;
  do
  {
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
        goto LABEL_11;
      }
    }

    if ((v11 & v12) == 0)
    {
      v8 = v9;
    }

LABEL_11:
    v13 = *v8;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, *(a3 + 12 * v6));
      v14 = __p;
      if (v27 < 0)
      {
        v14 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "SplitterMasterVolumeControl.cpp";
      v29 = 1024;
      v30 = 401;
      v31 = 2080;
      v32 = v14;
      v33 = 1024;
      v34 = a1;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received notification (%s) from audio device with ID %u", buf, 0x22u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = (a3 + 12 * v6);
    if (v15[1] == qword_709020 && *v15 == 2004053366 && v15[2] == HIDWORD(qword_709020))
    {
      sub_68E60();
      operator new();
    }

    ++v6;
  }

  while (v6 != v7);
  return 0;
}

void sub_4B9E50(_DWORD *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 512);
  for (i = *(*a1 + 520); v3 != i; ++v3)
  {
    v5 = *v3;
    if (*v3 == a1[2])
    {
      v16[0] = *v3;
      buf.mSelector = 2004053366;
      *&buf.mScope = qword_709020;
      v6 = sub_2CAA28(v16, &buf, 0, 0);
      *(&v9 + 1) = v7;
      *&v9 = v6;
      v8 = v9 >> 32;
      if ((v8 & 0x100000000) != 0)
      {
        v10 = sub_5544(18);
        v11 = sub_5544(29);
        v12 = 0;
        *&buf.mSelector = 0x100000002;
        v13 = *(v10 + 8);
        while (1)
        {
          v14 = *(&buf.mSelector + v12);
          if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
          {
            break;
          }

          v12 += 4;
          if (v12 == 8)
          {
            goto LABEL_10;
          }
        }

        if ((v13 & v14) == 0)
        {
          v10 = v11;
        }

LABEL_10:
        v15 = *v10;
        if (v15)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            buf.mSelector = 136316162;
            *&buf.mScope = "SplitterMasterVolumeControl.cpp";
            v20 = 1024;
            v21 = 380;
            v22 = 2048;
            v23 = v2;
            v24 = 2048;
            v25 = *&v8;
            v26 = 1024;
            v27 = v5;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Master volume (%p) updated to %f for device %u", &buf, 0x2Cu);
          }
        }

        *(v2 + 500) = v8;
        v17 = 2004053366;
        v18 = qword_709020;
        sub_6FF5C(v2 + 152, &v17);
      }
    }
  }

  operator delete();
}

uint64_t sub_4BA2F8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SplitterMasterVolumeControl.cpp";
      v15 = 1024;
      *v16 = 291;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if (*a2 == 1987013741)
  {
    v12 = 0x676C6F6277736D76;
    v13 = 0;
    *buf = *a2;
    *&buf[8] = *(a2 + 8);
    *&v16[2] = a3;
    v17 = a4;
    sub_17C118(a1 + 152, &v12, buf);
  }

  return 1;
}

void sub_4BA6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4BA6DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v26 = sub_5544(14);
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v37 = *(a2 + 2);
      sub_22CE0(inData);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v28 = sub_5544(14);
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      v34 = *a2;
      v38 = *(a2 + 2);
      sub_22CE0(inData);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    *v29 = &off_6DDDD0;
    v29[2] = 1970171760;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
  {
    v30 = sub_5544(14);
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      v35 = *a2;
      v39 = *(a2 + 2);
      sub_22CE0(inData);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    *v31 = &off_6DDDD0;
    v31[2] = 561211770;
  }

  if (*a2 == 1987013741 || *a2 == 1986817377)
  {
    v13 = *a6;
    inData[0] = *a6;
    v14 = sub_5544(1);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      buf.mSelector = 136315906;
      *&buf.mScope = "SplitterMasterVolumeControl.cpp";
      v42 = 1024;
      v43 = 228;
      v44 = 2048;
      v45 = a1;
      v46 = 2048;
      v47 = v13;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Request to set master volume (%p) %f", &buf, 0x26u);
    }

    if (vabds_f32(*(a1 + 500), v13) >= 0.001)
    {
      v16 = *(a1 + 512);
      for (i = *(a1 + 520); v16 != i; ++v16)
      {
        v18 = *v16;
        buf.mSelector = 2004053366;
        *&buf.mScope = qword_709020;
        v19 = AudioObjectSetPropertyData(v18, &buf, 0, 0, 4u, inData);
        if (v19)
        {
          v25 = __cxa_allocate_exception(0x10uLL);
          *v25 = &off_6DDDD0;
          v25[2] = v19;
        }

        *(a1 + 500) = inData[0];
        v20 = sub_5544(1);
        v21 = *v20;
        if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 500);
          v23 = *v16;
          buf.mSelector = 136316162;
          *&buf.mScope = "SplitterMasterVolumeControl.cpp";
          v42 = 1024;
          v43 = 237;
          v44 = 2048;
          v45 = a1;
          v46 = 2048;
          v47 = v22;
          v48 = 1024;
          v49 = v23;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applied master volume (%p) %f to %u", &buf, 0x2Cu);
        }
      }
    }
  }

  else
  {
    v24 = sub_5544(1);
    if (*v24)
    {
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *a2;
        v36 = *(a2 + 2);
        sub_22CE0(inData);
      }
    }
  }
}

void sub_4BADE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4BAEB4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5, _DWORD *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v26 = *a2;
      v29 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v12 = *a5;
  result = (*(*a1 + 32))(a1, a2, a3, a4);
  if (v12 != result)
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      v30 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  v14 = *a2;
  if (*a2 > 1986817376)
  {
    if (v14 == 1987013741 || v14 == 1986817377)
    {
      *a6 = *(a1 + 500);
      return result;
    }

    goto LABEL_13;
  }

  if (v14 != 1986225518)
  {
    if (v14 == 1986229104)
    {
      *a6 = 1;
      return result;
    }

LABEL_13:
    result = sub_5544(1);
    if (*result)
    {
      result = os_log_type_enabled(*result, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v25 = *a2;
        v28 = *(a2 + 2);
        sub_22CE0(__p);
      }
    }

    return result;
  }

  v16 = *(a1 + 512);
  v17 = *(a1 + 520);
  if (v16 == v17)
  {
LABEL_21:
    LODWORD(v19) = 0;
  }

  else
  {
    while (1)
    {
      __p[0] = *v16;
      strcpy(&buf, "necvbolg");
      BYTE1(buf.mElement) = 0;
      HIWORD(buf.mElement) = 0;
      result = sub_542F0(__p, &buf, 0, 0);
      *(&v20 + 1) = v18;
      *&v20 = result;
      v19 = v20 >> 32;
      if ((v19 & 0x100000000) == 0)
      {
        LODWORD(v19) = 1;
      }

      if (v19)
      {
        break;
      }

      if (++v16 == v17)
      {
        goto LABEL_21;
      }
    }
  }

  *a6 = v19;
  *a5 = 4;
  return result;
}

uint64_t sub_4BB344(uint64_t a1, uint64_t *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      v14 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v3 = *a2;
  result = 4;
  if (*a2 > 1986817376)
  {
    v5 = v3 == 1986817377;
    v6 = 1987013741;
  }

  else
  {
    v5 = v3 == 1986225518;
    v6 = 1986229104;
  }

  if (!v5 && v3 != v6)
  {
    v8 = sub_5544(1);
    if (*v8)
    {
      result = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v11 = *a2;
        v13 = *(a2 + 2);
        sub_22CE0(__p);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_4BB5D0(void *a1, uint64_t *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v20 = *a2;
      v22 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v4 = *a2;
  if (*a2 > 1986817376)
  {
    v5 = v4 == 1987013741 || v4 == 1986817377;
    if (!v5)
    {
LABEL_17:
      v11 = sub_5544(1);
      if (*v11)
      {
        result = os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v19 = *a2;
          v21 = *(a2 + 2);
          sub_22CE0(__p);
        }

        return result;
      }

      return 0;
    }

    v6 = a1[64];
    v7 = a1[65];
    if (v6 == v7)
    {
      return 0;
    }

    v8 = v6 + 4;
    do
    {
      v9 = *(v8 - 4);
      buf.mSelector = 2004053366;
      *&buf.mScope = qword_709020;
      result = sub_66E40(v9, &buf);
      if (result)
      {
        break;
      }

      v5 = v8 == v7;
      v8 += 4;
    }

    while (!v5);
  }

  else
  {
    if (v4 != 1986225518)
    {
      if (v4 == 1986229104)
      {
        return 0;
      }

      goto LABEL_17;
    }

    v12 = a1[64];
    v13 = a1[65];
    if (v12 == v13)
    {
      return 1;
    }

    else
    {
      v14 = v12 + 4;
      do
      {
        v15 = *(v14 - 4);
        strcpy(&buf, "necvbolg");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        result = sub_66E40(v15, &buf);
        v16 = !result || v14 == v13;
        v14 += 4;
      }

      while (!v16);
    }
  }

  return result;
}

BOOL sub_4BB918(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 > 1986817376)
  {
    if (v3 > 2004053365)
    {
      if (v3 == 2021027692)
      {
        return 0;
      }

      if (v3 != 2004053366)
      {
        goto LABEL_36;
      }
    }

    else if (v3 != 1986817377 && v3 != 1987013741)
    {
      goto LABEL_36;
    }

    v7 = *(a1 + 512);
    v8 = *(a1 + 520);
    if (v7 == v8)
    {
      return 0;
    }

    for (i = v7 + 4; ; i += 4)
    {
      v10 = *(i - 4);
      inAddress.mSelector = 2004053366;
      *&inAddress.mScope = qword_709020;
      if (AudioObjectHasProperty(v10, &inAddress))
      {
        break;
      }

      v22.mSelector = 1987013741;
      *&v22.mScope = qword_709028;
      HasProperty = AudioObjectHasProperty(v10, &v22);
      v4 = HasProperty == 0;
      result = HasProperty != 0;
      if (!v4 || i == v8)
      {
        return result;
      }
    }

    return 1;
  }

  if (v3 <= 1986225517)
  {
    v4 = v3 == 1064725619 || v3 == 1684633187;
    if (v4)
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (v3 != 1986225518)
  {
    if (v3 == 1986229104)
    {
      return 1;
    }

LABEL_36:
    v19 = sub_5544(1);
    if (*v19)
    {
      result = os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v20 = *a2;
        v21 = a2[2];
        sub_22CE0(&v22);
      }

      return result;
    }

    return 0;
  }

  v13 = *(a1 + 512);
  v14 = *(a1 + 520);
  if (v13 == v14)
  {
    return 0;
  }

  v15 = v13 + 4;
  do
  {
    v16 = *(v15 - 4);
    *&inAddress.mSelector = 0x676C6F627663656ELL;
    inAddress.mElement = 0;
    v17 = AudioObjectHasProperty(v16, &inAddress);
    v4 = v17 == 0;
    result = v17 != 0;
    v18 = !v4 || v15 == v14;
    v15 += 4;
  }

  while (!v18);
  return result;
}

void sub_4BBBCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4BBBE4(void *a1)
{
  sub_4B9270(a1);

  operator delete();
}

void sub_4BBC20(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != (a1 + 8))
  {
    do
    {
      v3 = v2[3];
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = v2[2];
          if (v6)
          {
            v13 = 0;
            v7 = *(v6 + 200);
            v10[0] = *(v6 + 192);
            v10[1] = v7;
            if (v7)
            {
              atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_5659C(&v11, v10, "", 57);
            v8 = 0x696E7074696E6A45;
            v9 = 0;
            sub_163594(v11, &v8, 4, &v13);
            if (v12)
            {
              sub_1A8C0(v12);
            }

            if (v7)
            {
              std::__shared_weak_count::__release_weak(v7);
            }
          }

          sub_1A8C0(v5);
        }
      }

      v2 = v2[1];
    }

    while (v2 != v1);
  }
}

void sub_4BBD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_1A8C0(a15);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_1A8C0(v15);
  _Unwind_Resume(a1);
}

void sub_4BBD44(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != (a1 + 8))
  {
    do
    {
      v3 = v2[3];
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = v2[2];
          if (v6)
          {
            v13 = 1;
            v7 = *(v6 + 200);
            v10[0] = *(v6 + 192);
            v10[1] = v7;
            if (v7)
            {
              atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_5659C(&v11, v10, "", 42);
            v8 = 0x696E7074696E6A45;
            v9 = 0;
            sub_163594(v11, &v8, 4, &v13);
            if (v12)
            {
              sub_1A8C0(v12);
            }

            if (v7)
            {
              std::__shared_weak_count::__release_weak(v7);
            }
          }

          sub_1A8C0(v5);
        }
      }

      v2 = v2[1];
    }

    while (v2 != v1);
  }
}

void sub_4BBE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_1A8C0(a15);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_1A8C0(v15);
  _Unwind_Resume(a1);
}

void sub_4BBE68(uint64_t a1)
{
  sub_65310((a1 + 8));

  operator delete();
}

void sub_4BBEEC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DB2E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4BBF60(void *a1)
{
  *a1 = off_6BF930;
  sub_13BFA8(a1);

  operator delete();
}

uint64_t sub_4BBFD4(uint64_t a1)
{
  result = pthread_cond_broadcast((a1 + 88));
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v5 = "CAGuard.cpp";
      v6 = 1024;
      v7 = 320;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::NotifyAll: failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v3;
  }

  return result;
}

uint64_t sub_4BC0D8(uint64_t a1)
{
  result = pthread_cond_signal((a1 + 88));
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v5 = "CAGuard.cpp";
      v6 = 1024;
      v7 = 302;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Notify: failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v3;
  }

  return result;
}

uint64_t sub_4BC1DC(uint64_t a1, unint64_t a2)
{
  mach_absolute_time();
  v4 = __udivti3();
  if (a2 <= v4)
  {
    return 1;
  }

  v5 = *(*a1 + 64);

  return v5(a1, a2 - v4);
}

BOOL sub_4BC270(uint64_t a1, unint64_t a2)
{
  v4 = pthread_self();
  v5 = atomic_load((a1 + 16));
  if (!pthread_equal(v4, v5))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CAGuard.cpp";
      v15 = 1024;
      v16 = 130;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::WaitFor: A thread has to have locked a guard be for it can wait", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1;
LABEL_13:
  }

  v6 = a2 / 0x3B9ACA00;
  v7 = a2 % 0x3B9ACA00;
  if (a2 < 0x3B9ACA00)
  {
    v6 = 0;
    v7 = a2;
  }

  v12.tv_sec = v6;
  v12.tv_nsec = v7;
  atomic_store(0, (a1 + 16));
  v8 = pthread_cond_timedwait_relative_np((a1 + 88), (a1 + 24), &v12);
  v9 = v8;
  if (v8 && v8 != 60)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CAGuard.cpp";
      v15 = 1024;
      v16 = 169;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::WaitFor: Wait got an error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v9;
    goto LABEL_13;
  }

  atomic_store(pthread_self(), (a1 + 16));
  return v9 == 60;
}

pthread_t sub_4BC498(uint64_t a1)
{
  v2 = pthread_self();
  v3 = atomic_load((a1 + 16));
  if (!pthread_equal(v2, v3))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAGuard.cpp";
      v10 = 1024;
      v11 = 88;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Wait: A thread has to have locked a guard before it can wait", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1;
LABEL_10:
  }

  atomic_store(0, (a1 + 16));
  v4 = pthread_cond_wait((a1 + 88), (a1 + 24));
  if (v4)
  {
    v7 = v4;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAGuard.cpp";
      v10 = 1024;
      v11 = 97;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Wait: Could not wait for a signal", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v7;
    goto LABEL_10;
  }

  result = pthread_self();
  atomic_store(result, (a1 + 16));
  return result;
}

void sub_4BC660(uint64_t a1)
{
  sub_4BC698(a1);

  operator delete();
}

uint64_t sub_4BC698(uint64_t a1)
{
  *a1 = off_6DB3E8;
  pthread_cond_destroy((a1 + 88));

  return sub_13CF84(a1);
}

uint64_t sub_4BC6F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C9430(a1, a2);
  *v3 = off_6DB3E8;
  v4 = pthread_cond_init((v3 + 88), 0);
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAGuard.cpp";
      v10 = 1024;
      v11 = 66;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::CAGuard: Could not init the cond var", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v6;
  }

  return a1;
}

uint64_t sub_4BC83C(uint64_t a1)
{
  v1 = *(a1 + 536);
  v2 = *(v1 + 168);
  if (v2 == *(v1 + 176))
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_4BC860(uint64_t a1, unsigned int a2)
{
  if (a2 != 1819306350)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_AOP_Aspen.cpp";
      v14 = 1024;
      v15 = 298;
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
      v13 = "Device_AOP_Aspen.cpp";
      v14 = 1024;
      v15 = 299;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_4BCAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4BCB18(double a1)
{
  v2 = sub_5544(18);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "Device_AOP_Aspen.cpp";
    v13 = 1024;
    v14 = 366;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Requested to set sample rate synchronously for AOP Device %f", &v11, 0x1Cu);
  }

  v4 = fabs(a1);
  if (v4 < 16000.0)
  {
    v4 = 16000.0;
  }

  if (v4 < 1.0)
  {
    v4 = 1.0;
  }

  if (fabs(a1 + -16000.0) > fabs(v4 * 2.22044605e-16))
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "Device_AOP_Aspen.cpp";
      v13 = 1024;
      v14 = 372;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = sub_5544(18);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "Device_AOP_Aspen.cpp";
    v13 = 1024;
    v14 = 373;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Ignoring sample rate change for AOP Device because it is fixed at 16k and is not settable", &v11, 0x12u);
  }

  return 0;
}

void sub_4BCD68(void *a1)
{
  if (sub_310A30())
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    sub_CE168();
    v3 = 5;
    strcpy(v2, "Codec");
    sub_CDEB8(a1, v2);
  }
}

uint64_t sub_4BCDCC(AudioObjectID a1, uint64_t a2, UInt32 a3, const void *a4, _DWORD *a5)
{
  v10 = sub_5544(14);
  if ((*(v10 + 8) & 1) != 0 && *v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    v53.__cv_.__sig = *a2;
    *v53.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v54);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v54.__m_.__opaque, 0, sizeof(v54.__m_.__opaque));
    v54.__m_.__sig = 850045863;
    memset(v53.__cv_.__opaque, 0, sizeof(v53.__cv_.__opaque));
    v53.__cv_.__sig = 1018212795;
    v45 = 0;
    sub_745E8(v44, a1, a2, &v53, &v54, &v45);
    v39 = a1;
    v40 = *a2;
    v41 = *(a2 + 8);
    v42 = a3;
    v43 = a4;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v16 = sub_5544(14);
      v15 = 1852797029;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v11 = sub_4BDB4C(&v39);
    if (!HIDWORD(v11) && *a5 == v11)
    {
      v12 = sub_5544(14);
      if ((*(v12 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v13 = *v12;
      if (!*v12 || !os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v47 = 1024;
      v48 = 294;
      v49 = 1024;
      LODWORD(v50) = a1;
LABEL_13:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_66:
      v15 = 0;
LABEL_67:
      sub_73C20(v44);
      std::condition_variable::~condition_variable(&v53);
      std::mutex::~mutex(&v54);
      return v15;
    }

    v17 = sub_5544(14);
    if ((*(v17 + 8) & 1) != 0 && *v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
    {
      v36 = *a2;
      v37 = *(a2 + 8);
      sub_22CE0(__p);
    }

    buf = *a2;
    v15 = AudioObjectSetPropertyData(a1, &buf, a3, a4, 4u, a5);
    if (v15)
    {
      v18 = sub_5544(14);
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v15);
        v34 = *a2;
        v35 = *(a2 + 8);
        sub_22CE0(&v36);
      }

      goto LABEL_67;
    }

    v19 = sub_4BDB4C(&v39);
    if (!HIDWORD(v19) && *a5 == v19)
    {
      v20 = sub_5544(14);
      if ((*(v20 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v13 = *v20;
      if (!*v20 || !os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v47 = 1024;
      v48 = 322;
      v49 = 1024;
      LODWORD(v50) = a1;
      goto LABEL_13;
    }

    v21 = 2000;
LABEL_35:
    v22 = sub_4BDB4C(&v39);
    v15 = HIDWORD(v22);
    if (HIDWORD(v22))
    {
      goto LABEL_67;
    }

    if (*a5 == v22)
    {
      v31 = sub_5544(14);
      if ((*(v31 + 8) & 1) != 0 && *v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_66;
    }

    if (v21 <= 0)
    {
      v33 = sub_5544(14);
      v15 = 2003329396;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v23.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v24 = sub_5544(14);
    if (*(v24 + 8))
    {
      v25 = *v24;
      if (*v24)
      {
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v47 = 1024;
          v48 = 354;
          v49 = 2080;
          v50 = "with timeout";
          v51 = 1024;
          v52 = a1;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v54;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v54);
    v26.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v45 & 1) != 0 || v26.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_59:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v21 += (std::chrono::system_clock::now().__d_.__rep_ - v23.__d_.__rep_) / -1000;
        goto LABEL_35;
      }

      v27.__d_.__rep_ = v26.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v27.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_58:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v26.__d_.__rep_)
      {
        goto LABEL_59;
      }
    }

    std::chrono::steady_clock::now();
    v28.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v28.__d_.__rep_)
    {
      v29 = 0;
      goto LABEL_56;
    }

    if (v28.__d_.__rep_ < 1)
    {
      if (v28.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v29 = 0x8000000000000000;
        goto LABEL_56;
      }
    }

    else if (v28.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v29 = 1000 * v28.__d_.__rep_;
LABEL_54:
    if (v29 > (v27.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v30.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_57:
      std::condition_variable::__do_timed_wait(&v53, &buf, v30);
      std::chrono::steady_clock::now();
      goto LABEL_58;
    }

LABEL_56:
    v30.__d_.__rep_ = v29 + v27.__d_.__rep_;
    goto LABEL_57;
  }

  v14 = sub_5544(14);
  v15 = 2003332927;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    v53.__cv_.__sig = *a2;
    *v53.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v54);
  }

  return v15;
}

void sub_4BD858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v15 - 216));
  std::mutex::~mutex((v15 - 168));
  _Unwind_Resume(a1);
}

void sub_4BD904(uint64_t *a1)
{
  if (*a1 == a1[1])
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_AOP_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 313;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): No datasources found in the transducer database!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  v9 = 0x696E707450444573;
  v10 = 0;
  sub_4BCD68(buf);
  v2 = *&buf[8];
  if (*&buf[8])
  {
    v3 = std::__shared_weak_count::lock(*&buf[8]);
    v4 = *buf;
    std::__shared_weak_count::__release_weak(v2);
    if (v3 && v4)
    {
      if ((*(*v4 + 16))(v4, &v9))
      {
        memset(buf, 0, sizeof(buf));
        sub_46980(buf, *a1, a1[1], (a1[1] - *a1) >> 2);
        v5 = *buf;
        (*(*v4 + 48))(v4, &v9, 0, 0, (*&buf[8] - *buf) & 0xFFFFFFFC, *buf);
        if (v5)
        {
          operator delete(v5);
        }
      }
    }

    else if (!v3)
    {
      return;
    }

    sub_1A8C0(v3);
  }
}

void sub_4BDB18(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_4BDB4C(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_542F0(a1, &buf, v2, *(a1 + 24));
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

void sub_4BDCF8(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_4BDD18(uint64_t a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  mSelector = a2->mSelector;
  if (a2->mSelector <= 1684370275)
  {
    if (mSelector == 1651664739)
    {
      *a5 = 4;
      v17 = *(a1 + 548);
LABEL_20:
      *a6 = v17;
      return;
    }

    if (mSelector == 1684365924)
    {
      *a5 = 4;
      v12 = *(a1 + 544) == 2;
      goto LABEL_17;
    }

LABEL_12:

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (mSelector == 1684370276)
  {
    *a5 = 4;
    v12 = *(a1 + 544) == 1;
LABEL_17:
    v17 = v12;
    goto LABEL_20;
  }

  if (mSelector != 1885631346)
  {
    goto LABEL_12;
  }

  v13 = *a5;
  if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
  {
    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v20 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 561211770;
  }

  sub_4BCD68(buf);
  v14 = *&buf[8];
  if (*&buf[8])
  {
    v15 = std::__shared_weak_count::lock(*&buf[8]);
    v16 = *buf;
    std::__shared_weak_count::__release_weak(v14);
    if (v15 && v16)
    {
      strcpy(buf, "trsnbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*v16 + 40))(v16, buf, a3, a4, a5, a6);
    }

    else if (!v15)
    {
      return;
    }

    sub_1A8C0(v15);
  }
}

void sub_4BE0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4BE0D8(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 2003332927;
LABEL_22:
    exception[2] = v12;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      v17 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 561211770;
    goto LABEL_22;
  }

  result = 0;
  mSelector = a2->mSelector;
  if (a2->mSelector > 1684370275)
  {
    if (mSelector == 1684370276)
    {
      return result;
    }

    if (mSelector == 1885631346)
    {
      return 8;
    }
  }

  else if (mSelector == 1651664739 || mSelector == 1684365924)
  {
    return result;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

void sub_4BE42C(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_4BE468(uint64_t a1, UInt32 a2, __int128 *a3)
{
  *sub_4B1A68(a1, a2, a3, a3, 0) = off_6DB458;
  *(a1 + 536) = sub_46AC8C();
  *(a1 + 544) = 0;
  *(a1 + 548) = 0;
  return a1;
}

uint64_t sub_4BE4D8(uint64_t a1, unsigned int a2)
{
  if (a2 != 1885891433)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_Hawking_Aspen.cpp";
      v14 = 1024;
      v15 = 87;
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
      v13 = "Device_Hawking_Aspen.cpp";
      v14 = 1024;
      v15 = 88;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_4BE6AC(uint64_t *a1)
{
  sub_4ADCC0(a1);
  v2 = a1[11];
  v3.__m_.__sig = a1[10];
  *v3.__m_.__opaque = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_4BF7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, AudioObjectPropertySelector a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_73C20(&a63);
  std::condition_variable::~condition_variable((v63 - 232));
  std::mutex::~mutex((v63 - 184));
  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_4BFA28(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_127F10(&v13, a2, buf, v4, *(a2 + 24));
  v5 = v13;
  if (v13)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v5);
        v9 = *v3;
        v10 = *(v3 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v16 == 1)
  {
    memset(buf, 0, sizeof(buf));
    v18 = 0;
    v7 = v14;
    sub_46980(buf, v14, v15, (v15 - v14) >> 2);
    v8 = v18;
    *a1 = *buf;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v5;
  }
}

void sub_4BFC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_4BFC68(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

void sub_4BFCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_FC3EC(*(a5 + 8), 5) & 1) == 0)
  {
    v76 = sub_5544(14);
    v77 = *v76;
    if (*v76 && os_log_type_enabled(*v76, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 124;
      _os_log_impl(&dword_0, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((sub_FC3EC(*(a5 + 8), 6) & 1) == 0)
  {
    v79 = sub_5544(14);
    v80 = *v79;
    if (*v79 && os_log_type_enabled(*v79, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 125;
      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

    v81 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v81, "Precondition failure.");
  }

  v6 = sub_14BD5C(a5, 5);
  v103 = a5;
  v7 = sub_14BD5C(a5, 6);
  v98 = v6;
  sub_25704(&v119, v6, "", 130);
  v95 = v7;
  sub_25704(&v117, (v7 + 16), "", 131);
  v8 = v119;
  v94 = *(v119 + 144);
  v9 = v117;
  v10 = *(v117 + 144);
  v11 = sub_DD858();
  if (sub_1192CC(v11) == 3 && (v10 == 1885892727 || v10 == 1886613611 || v10 == 1886745455) || *(a2 + 192) == 1)
  {
    sub_FC3EC(*(v103 + 8), 9);
  }

  if (v10 == 1886613611)
  {
    sub_FC3EC(*(v103 + 8), 4);
  }

  sub_CE168();
  sub_53E8(__p, "Baseband Voice");
  sub_CDEB8(buf, __p);
  v12 = *&buf[8];
  if (*&buf[8])
  {
    if (std::__shared_weak_count::lock(*&buf[8]))
    {
      v13 = *buf;
    }

    else
    {
      v13 = 0;
    }

    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v13 = 0;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (!v13)
  {
    v53 = sub_5544(14);
    v54 = *v53;
    if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 147;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [basebandDevice is NULL]: could not get baseband device", __p, 0x12u);
    }

    v55 = __cxa_allocate_exception(0x10uLL);
    *v55 = &off_6DDDD0;
    v55[2] = 2003329396;
  }

  v97 = v10;
  (*(*a1 + 40))(a1, a3);
  strcpy(__p, "crscbolg");
  __p[9] = 0;
  *&__p[10] = 0;
  sub_301F70(__p);
  v115[1] = 0;
  v115[0] = 0;
  v116 = 0;
  v14 = v8[25];
  if (!v14 || (v15 = v8[24], atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed), v16 = std::__shared_weak_count::lock(v14), std::__shared_weak_count::__release_weak(v14), !v16) || !v15)
  {
    v62 = sub_5544(14);
    v63 = *v62;
    if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
    {
      (*(*v8 + 144))(buf, v8);
      v64 = SBYTE7(v125);
      v65 = *buf;
      sub_22170(&v105, v94);
      v66 = buf;
      if (v64 < 0)
      {
        v66 = v65;
      }

      if (v106 >= 0)
      {
        v67 = &v105;
      }

      else
      {
        v67 = v105;
      }

      *__p = 136315906;
      *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 163;
      *&__p[18] = 2080;
      *&__p[20] = v66;
      v122 = 2080;
      v123 = v67;
      _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [inputControlDevice is NULL]: could not get device for port \\%s\\ (type: '%s').", __p, 0x26u);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105);
      }

      if (SBYTE7(v125) < 0)
      {
        operator delete(*buf);
      }
    }

    v68 = __cxa_allocate_exception(0x10uLL);
    *v68 = &off_6DDDD0;
    v68[2] = 2003329396;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  memset(v114, 0, sizeof(v114));
  (*(*v15 + 128))(&v111, v15);
  if (v113 < 0)
  {
    if (v112 != 5)
    {
      if (v112 != 11)
      {
        goto LABEL_34;
      }

      v17 = v111;
LABEL_30:
      v18 = *v17;
      v19 = *(v17 + 3);
      if (v18 != 0x206C617469676944 || v19 != 0x63694D206C617469)
      {
        goto LABEL_34;
      }

LABEL_43:
      (*(*a1 + 48))(a1, a3);
      sub_2FB328(__p, v8, a2, v98[7], *(a2 + 12));
      if (v115[0])
      {
        v115[1] = v115[0];
        operator delete(v115[0]);
      }

      *v115 = *__p;
      v116 = *&__p[16];
      v23 = v120;
      *buf = v8;
      *&buf[8] = v120;
      if (v120)
      {
        atomic_fetch_add_explicit(&v120->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_301DE0(__p, v115, buf);
      sub_16B928(v114, *__p, *&__p[8], (*&__p[8] - *__p) >> 2);
      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      *buf = v9;
      *&buf[8] = v118;
      if (v118)
      {
        atomic_fetch_add_explicit(&v118->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*a1 + 56))(__p);
      if (*&__p[8])
      {
        v99 = std::__shared_weak_count::lock(*&__p[8]);
        if (v99)
        {
          v21 = *__p;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v99 = 0;
        v21 = 0;
      }

      sub_1A8C0(v16);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_weak(*&__p[8]);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_weak(*&buf[8]);
      }

      if (!v21)
      {
        v59 = sub_5544(14);
        v60 = *v59;
        if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 177;
          _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [inputIODevice is NULL]: could not get codec input device", __p, 0x12u);
        }

        v61 = __cxa_allocate_exception(0x10uLL);
        *v61 = &off_6DDDD0;
        v61[2] = 2003329396;
      }

LABEL_69:
      sub_2FBAF8(v21, 0, *(a2 + 12), *(a2 + 184), v98[7], a3);
      if (sub_34C924(*(v119 + 192), *(v119 + 200)))
      {
        *__p = v21;
        *&__p[8] = v99;
        if (v99)
        {
          atomic_fetch_add_explicit(&v99->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "dAvebolg");
        buf[9] = 0;
        *&buf[10] = 0;
        sub_3024F0(__p, buf);
        if (v99)
        {
          std::__shared_weak_count::__release_weak(v99);
        }
      }

      sub_147688();
      v25 = v119;
      if (byte_6E6560 == 1)
      {
        v26 = *(v119 + 200);
        *buf = *(v119 + 192);
        *&buf[8] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_5659C(__p, buf, "", 205);
        sub_300DD0(1, *__p);
        if (*&__p[8])
        {
          sub_1A8C0(*&__p[8]);
        }

        if (v26)
        {
          std::__shared_weak_count::__release_weak(v26);
        }
      }

      *__p = v25;
      *&__p[8] = v120;
      if (v120)
      {
        atomic_fetch_add_explicit(&v120->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_FC464(v115, __p, v21);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_weak(*&__p[8]);
      }

      v27 = v117;
      v28 = *(v117 + 200);
      if (!v28 || (v29 = *(v117 + 192), atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed), v30 = std::__shared_weak_count::lock(v28), std::__shared_weak_count::__release_weak(v28), !v30) || !v29)
      {
        v69 = sub_5544(14);
        v70 = *v69;
        if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
        {
          (*(*v27 + 144))(buf, v27);
          v71 = SBYTE7(v125);
          v72 = *buf;
          sub_22170(&v105, v97);
          v73 = buf;
          if (v71 < 0)
          {
            v73 = v72;
          }

          if (v106 >= 0)
          {
            v74 = &v105;
          }

          else
          {
            v74 = v105;
          }

          *__p = 136315906;
          *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 217;
          *&__p[18] = 2080;
          *&__p[20] = v73;
          v122 = 2080;
          v123 = v74;
          _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [outputControlDevice is NULL]: could not get device for port \\%s\\ (type: '%s').", __p, 0x26u);
          if (SHIBYTE(v106) < 0)
          {
            operator delete(v105);
          }

          if (SBYTE7(v125) < 0)
          {
            operator delete(*buf);
          }
        }

        v75 = __cxa_allocate_exception(0x10uLL);
        *v75 = &off_6DDDD0;
        v75[2] = 2003329396;
      }

      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v97 > 1886545250)
      {
        if (v97 == 1886545251)
        {
          sub_CE168();
          sub_53E8(__p, "Speaker");
          sub_CDEB8(buf, __p);
          v34 = *&buf[8];
          if (*&buf[8])
          {
            v35 = std::__shared_weak_count::lock(*&buf[8]);
            if (v35)
            {
              v36 = *buf;
              sub_1A8C0(v35);
            }

            else
            {
              v36 = 0;
            }

            std::__shared_weak_count::__release_weak(v34);
          }

          else
          {
            v36 = 0;
          }

          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v101 = v30;
          v100 = v29;
          if (v36)
          {
            v101 = v30;
            v100 = v29;
            if (sub_3E7F7C(v36))
            {
              v39 = *a2;
              operator new();
            }
          }
        }

        else
        {
          v101 = v30;
          v100 = v29;
          if (v97 == 1886680175)
          {
            if (v94 == 1886680169)
            {
              operator new();
            }

            v91 = sub_5544(14);
            v92 = *v91;
            if (*v91 && os_log_type_enabled(*v91, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 226;
              _os_log_impl(&dword_0, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Invalid input route encountered when attempting to set TTY output route", __p, 0x12u);
            }

            v93 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v93, "Invalid input route encountered when attempting to set TTY output route");
          }
        }
      }

      else if (v97 == 1885892706)
      {
        v31 = *(v27 + 200);
        if (v31)
        {
          v32 = *(v27 + 192);
          atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v33 = std::__shared_weak_count::lock(v31);
          sub_1A8C0(v30);
          std::__shared_weak_count::__release_weak(v31);
          v101 = v33;
          if (v33)
          {
            v100 = v32;
            if (v32)
            {
              goto LABEL_117;
            }
          }
        }

        else
        {
          sub_1A8C0(v30);
          v101 = 0;
        }

        v37 = sub_5544(14);
        v38 = *v37;
        if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 260;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Failed to set outputIODevice.", __p, 0x12u);
        }

        v100 = 0;
      }

      else
      {
        v101 = v30;
        v100 = v29;
        if (v97 == 1885892727)
        {
          v101 = v30;
          v100 = v29;
          if (*(v27 + 304) == 1752709424)
          {
            sub_4F5668(v29, 4);
            v101 = v30;
            v100 = v29;
          }
        }
      }

LABEL_117:
      v40 = (*(*v29 + 240))(v29, v97);
      v109 = 0x6F7574706D757465;
      v110 = v40;
      if ((*(*v29 + 24))(v29, &v109))
      {
        operator new();
      }

      sub_2FBAF8(v100, 1, *(a2 + 12), *(a2 + 184), *(v95 + 56), a3);
      if (!sub_FC3EC(*(v103 + 8), 3))
      {
        v108[0] = v108;
        v108[1] = v108;
        v108[2] = 0;
        v107[0] = v107;
        v107[1] = v107;
        v107[2] = 0;
        if (v21 != v100)
        {
          if (v120)
          {
            atomic_fetch_add_explicit(&v120->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          operator new();
        }

        if (v120)
        {
          atomic_fetch_add_explicit(&v120->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      sub_CE168();
      sub_53E8(__p, "Codec");
      sub_CDEB8(buf, __p);
      v41 = *&buf[8];
      if (*&buf[8])
      {
        v42 = std::__shared_weak_count::lock(*&buf[8]);
        if (v42)
        {
          v43 = *buf;
        }

        else
        {
          v43 = 0;
        }

        std::__shared_weak_count::__release_weak(v41);
      }

      else
      {
        v43 = 0;
        v42 = 0;
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if (v43)
        {
          goto LABEL_141;
        }
      }

      else if (v43)
      {
        goto LABEL_141;
      }

      sub_CE168();
      sub_53E8(__p, "Receiver");
      sub_CDEB8(buf, __p);
      v44 = *&buf[8];
      if (*&buf[8])
      {
        if (std::__shared_weak_count::lock(*&buf[8]))
        {
          v43 = *buf;
        }

        else
        {
          v43 = 0;
        }

        if (!v42)
        {
          goto LABEL_136;
        }
      }

      else
      {
        v43 = 0;
        if (!v42)
        {
          goto LABEL_136;
        }
      }

      sub_1A8C0(v42);
LABEL_136:
      if (v44)
      {
        std::__shared_weak_count::__release_weak(v44);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (!v43)
      {
        v56 = sub_5544(14);
        v57 = *v56;
        if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 279;
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [hacDevice is NULL]: could not get owning device for HAC", __p, 0x12u);
        }

        v58 = __cxa_allocate_exception(0x10uLL);
        *v58 = &off_6DDDD0;
        v58[2] = 2003329396;
      }

LABEL_141:
      v45 = sub_14BD5C(v103, 3);
      sub_25704(buf, (v45 + 16), "", 282);
      if (v97 != 1886545251)
      {
        v82 = sub_5544(14);
        v83 = *v82;
        if (*v82 && os_log_type_enabled(*v82, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 287;
          _os_log_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Detected presence of HAC connection in a non-Receiver route. Database error?", __p, 0x12u);
        }

        v84 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v84, "Detected presence of HAC connection in a non-Receiver route. Database error?");
LABEL_238:
      }

      v46 = *(*buf + 200);
      if (v46)
      {
        v47 = *(*buf + 192);
        atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v48 = std::__shared_weak_count::lock(v46);
        v49 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_weak(v46);
          sub_1A8C0(v49);
          goto LABEL_148;
        }

        std::__shared_weak_count::__release_weak(v46);
      }

      else
      {
        v49 = 0;
      }

      v47 = 0;
LABEL_148:
      if (v101)
      {
        atomic_fetch_add_explicit(&v101->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v49)
      {
        v50 = std::__shared_weak_count::lock(v49);
        if (!v50)
        {
          v47 = 0;
        }
      }

      else
      {
        v47 = 0;
        v50 = 0;
      }

      if (v101 && (v51 = std::__shared_weak_count::lock(v101)) != 0)
      {
        v52 = v47 == v100;
        sub_1A8C0(v51);
        if (!v50)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v52 = v47 == 0;
        if (!v50)
        {
LABEL_161:
          if (v101)
          {
            std::__shared_weak_count::__release_weak(v101);
          }

          if (v49)
          {
            std::__shared_weak_count::__release_weak(v49);
          }

          if (v52)
          {
            if (*(*buf + 144) == 1885888867)
            {
              if (!sub_FC3EC(*(v103 + 8), 2))
              {
                (*(*v43 + 240))(v43, 1885888867);
                operator new();
              }

              v89 = sub_5544(14);
              v90 = *v89;
              if (*v89)
              {
                if (os_log_type_enabled(*v89, OS_LOG_TYPE_ERROR))
                {
                  *__p = 136315394;
                  *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
                  *&__p[12] = 1024;
                  *&__p[14] = 296;
                  _os_log_impl(&dword_0, v90, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal route: both HAC and ANC are present in route. Database error?", __p, 0x12u);
                }
              }

              v84 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v84, "Illegal route: both HAC and ANC are present in route. Database error?");
            }

            else
            {
              v87 = sub_5544(14);
              v88 = *v87;
              if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 293;
                _os_log_impl(&dword_0, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal route: HAC connection's destination port type is not HAC. Database error?", __p, 0x12u);
              }

              v84 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v84, "Illegal route: HAC connection's destination port type is not HAC. Database error?");
            }
          }

          else
          {
            v85 = sub_5544(14);
            v86 = *v85;
            if (*v85 && os_log_type_enabled(*v85, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "RoutingHandler_Call_GenericConfig2.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 290;
              _os_log_impl(&dword_0, v86, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal route: HAC and downlink connections' destination devices do not match. Database error?", __p, 0x12u);
            }

            v84 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v84, "Illegal route: HAC and downlink connections' destination devices do not match. Database error?");
          }

          goto LABEL_238;
        }
      }

      sub_1A8C0(v50);
      goto LABEL_161;
    }

    if (*v111 == 1701080899 && *(v111 + 4) == 99)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (v113 != 5)
    {
      if (v113 != 11)
      {
        goto LABEL_34;
      }

      v17 = &v111;
      goto LABEL_30;
    }

    if (v111 == 1701080899 && BYTE4(v111) == 99)
    {
      goto LABEL_43;
    }
  }

LABEL_34:
  v99 = v16;
  v21 = v15;
  if (v94 != 1886216820)
  {
    sub_CE1E4(__p, v15, v8, a2, v98[7], *(a2 + 12));
    if (v115[0])
    {
      v115[1] = v115[0];
      operator delete(v115[0]);
    }

    *v115 = *__p;
    v116 = *&__p[16];
    v99 = v16;
    v21 = v15;
  }

  goto LABEL_69;
}

void sub_4C51F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, uint64_t a57, uint64_t a58, uint64_t a59, char *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a56)
  {
    sub_1A8C0(a56);
  }

  sub_4C631C(a60);
  sub_477A0(a63);
  sub_25AE44(&a65);
  if (STACK[0x238])
  {
    sub_1A8C0(STACK[0x238]);
  }

  if (STACK[0x248])
  {
    sub_1A8C0(STACK[0x248]);
  }

  sub_25AE44(&STACK[0x250]);
  sub_25AE44(&STACK[0x2C0]);
  sub_65310(&STACK[0x330]);
  sub_65310(&STACK[0x348]);
  if (a35)
  {
    sub_1A8C0(a35);
  }

  if (a24)
  {
    sub_1A8C0(a24);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (STACK[0x388])
  {
    operator delete(STACK[0x388]);
  }

  if (a32)
  {
    sub_1A8C0(a32);
  }

  if (a21)
  {
    sub_1A8C0(a21);
  }

  v66 = STACK[0x3A0];
  if (STACK[0x3A0])
  {
    STACK[0x3A8] = v66;
    operator delete(v66);
  }

  if (a26)
  {
    sub_1A8C0(a26);
  }

  if (STACK[0x3C8])
  {
    sub_1A8C0(STACK[0x3C8]);
  }

  if (STACK[0x3D8])
  {
    sub_1A8C0(STACK[0x3D8]);
  }

  _Unwind_Resume(a1);
}

void sub_4C5F50(void *a1, int a2)
{
  if (a2)
  {
    sub_128368(&STACK[0x440]);
    __cxa_begin_catch(a1);
    v3 = LODWORD(STACK[0x514]);
    v4 = STACK[0x518];
    if (v3)
    {
      sub_140AD4(v3, v4);
    }

    else if (!v4)
    {
      v5 = sub_5544(14);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x5B0]) = 136315394;
          STACK[0x5B4] = "AggregateDevice_Call.cpp";
          LOWORD(STACK[0x5BC]) = 1024;
          LODWORD(STACK[0x5BE]) = 508;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Somehow, we have a valid IO proc ID, but not a valid aggregate device ID.", &STACK[0x5B0], 0x12u);
        }
      }
    }

    sub_140C30(LODWORD(STACK[0x514]));
    __cxa_rethrow();
  }

  JUMPOUT(0x4C61B4);
}

void sub_4C6054()
{
  __cxa_end_catch();
  sub_3D2F88(&STACK[0x470]);
  JUMPOUT(0x4C6064);
}

void sub_4C6180(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  if (STACK[0x3C8])
  {
    sub_1A8C0(STACK[0x3C8]);
  }

  if (STACK[0x3D8])
  {
    sub_1A8C0(STACK[0x3D8]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4C61BC(uint64_t result, int a2)
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_4C631C(char *a1)
{
  if (a1)
  {
    sub_4C631C(*a1);
    sub_4C631C(*(a1 + 1));
    sub_C31F4(*(a1 + 17));
    sub_C31F4(*(a1 + 14));
    v3 = (a1 + 80);
    sub_1084A8(&v3);
    v3 = (a1 + 56);
    sub_1084A8(&v3);
    v2 = *(a1 + 6);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(a1);
  }
}

void sub_4C63AC(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_C31F4(*(a2 + 136));
    sub_C31F4(*(a2 + 112));
    v4 = (a2 + 80);
    sub_1084A8(&v4);
    v4 = (a2 + 56);
    sub_1084A8(&v4);
    v3 = *(a2 + 48);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_4C6440()
{
  sub_310AF4();
  *v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *v9 = 0;
  v0 = sub_106F10();
  v9[4] = (v0 > 0xFFu) & v0;
  v9[5] = 1;
  *&v9[6] = 0;
  v10 = 0;
  v11 = 16777473;
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = 0;
  v15 = 0;
  v16 = -1044381696;
  v17 = 1;
  v18 = -1044381696;
  v19 = 1;
  v20 = 0;
  v21 = 1;
  v22 = -1056964608;
  v23 = 1;
  v24 = -1033371648;
  v25 = 1;
  v26 = 0;
  v27 = 1;
  v28 = -1033371648;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = -1044381696;
  v33 = 1;
  v34 = 0;
  v35 = 1;
  v36 = -1033371648;
  v37 = 1;
  v38 = 0;
  v39 = 1;
  v40 = -1033371648;
  v41 = 1;
  v42 = -1055916032;
  v43 = 1;
  v44 = -1033371648;
  v45 = 1;
  v46 = 0;
  v47 = 1;
  v48 = -1055916032;
  v49 = 1;
  v50 = -1033371648;
  v51 = 1;
  v52 = -1055916032;
  v53 = 1;
  v54 = -1033371648;
  v55 = 1;
  v56 = 0;
  v57 = 1;
  v58 = -1055916032;
  v59 = 1;
  v60 = -1043333120;
  v61 = 1;
  v62 = 0x40000000;
  v63 = 1;
  v64 = 16777472;
  v65 = 0;
  v66 = 1;
  v67 = 0;
  v68 = 1;
  v69 = 1103626240;
  v70 = 1;
  v71 = 0;
  v72 = 1;
  v73 = 1094713344;
  v74 = 1;
  v75 = 1094713344;
  v76 = 1;
  v77 = 1094713344;
  v78 = 1;
  v79 = -1061158912;
  v80 = 1;
  v81 = 1107296256;
  v82 = 1;
  v83 = 1107296256;
  v84 = 1;
  v85 = 1092616192;
  v86 = 1;
  v87 = 0;
  v88 = 1;
  v89 = 0;
  v90 = 1;
  v91 = 16777472;
  v92[0] = 0;
  v92[72] = 0;
  v92[80] = 0;
  v92[120] = 0;
  v92[128] = 0;
  v92[200] = 0;
  v92[208] = 0;
  v92[248] = 0;
  LOBYTE(v93) = 0;
  v94 = 0;
  LOBYTE(v95) = 0;
  v96 = 0;
  LOBYTE(v97) = 0;
  v98 = 0;
  LOBYTE(v99) = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
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
  v125 = 1;
  v126 = 0;
  v127 = 0;
  LOBYTE(v128) = 0;
  v129 = 0;
  LOBYTE(v130) = 0;
  v131 = 0;
  LOBYTE(v132) = 0;
  v133 = 0;
  LOBYTE(v134) = 0;
  v135 = 0;
  v136 = 0;
  LOBYTE(v137) = 0;
  v138 = 0;
  LOBYTE(v139) = 0;
  v140 = 0;
  LOBYTE(v141) = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  LOBYTE(v147) = 0;
  v148 = 0;
  LOBYTE(v149) = 0;
  v150 = 0;
  LOBYTE(v151) = 0;
  v152 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  LOBYTE(__p) = 0;
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v168 = 256;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 1;
  v5 = 2;
  LODWORD(__src) = 1;
  sub_1F8148(v6, &__src, &__src + 4, 1uLL);
  *&__src = 0x200000001;
  sub_1F8148(&v7[1], &__src, &__src + 8, 2uLL);
  *v9 = 0x101010101000100;
  *&v9[12] = 257;
  v11 = 16843008;
  v60 = -1047527424;
  v61 = 1;
  v69 = 1103101952;
  v70 = 1;
  v75 = 0;
  v76 = 1;
  v77 = 0;
  v78 = 1;
  v73 = 0;
  v74 = 1;
  v89 = 1090519040;
  v90 = 1;
  v79 = -1040187392;
  v80 = 1;
  v62 = 0;
  v63 = 1;
  v91 = 16843009;
  if ((v94 & 1) == 0)
  {
    v94 = 1;
  }

  v93 = 1836282987;
  if ((v96 & 1) == 0)
  {
    v96 = 1;
  }

  v95 = 2;
  if ((v98 & 1) == 0)
  {
    v98 = 1;
  }

  v97 = 2;
  if ((v100 & 1) == 0)
  {
    v100 = 1;
  }

  v99 = 4;
  if ((v138 & 1) == 0)
  {
    v138 = 1;
  }

  v137 = 2;
  if ((v142 & 1) == 0)
  {
    v142 = 1;
  }

  v141 = 2;
  if ((v140 & 1) == 0)
  {
    v140 = 1;
  }

  v139 = 2;
  v128 = 18;
  v129 = 1;
  v130 = 3;
  v131 = 1;
  v132 = 12;
  v133 = 1;
  v134 = 18;
  v135 = 1;
  v136 = 257;
  v147 = 18;
  v148 = 1;
  v149 = 18;
  v150 = 1;
  v151 = 10;
  v152 = 1;
  v153 = 5;
  v154 = 1;
  sub_30F70C(&__src, 92);
  if (v161 == 1)
  {
    if (SHIBYTE(v160) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v160 = v184;
  }

  else
  {
    __p = __src;
    v160 = v184;
    v161 = 1;
  }

  v14 = 257;
  sub_53E8(&v180, "");
  sub_30F188(__dst);
  sub_53E8(&v182, off_6E4C30);
  sub_53E8(&v177, "AU");
  sub_53E8(&v176, "VAD");
  sub_1E15A0(&__src, &v180, __dst, &v182, &v177, &v176);
  sub_1E1830(v92, &__src);
  if (v188 < 0)
  {
    operator delete(v187);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (SHIBYTE(v184) < 0)
  {
    operator delete(__src);
  }

  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v179) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v181) < 0)
  {
    operator delete(v180);
  }

  LODWORD(v177.__r_.__value_.__l.__data_) = 1;
  v181 = 0;
  v180 = 0uLL;
  sub_4625C(&v180, &v177, v177.__r_.__value_.__r.__words + 4, 1uLL);
  v182.__r_.__value_.__r.__words[0] = 0x200000001;
  __dst[1] = 0;
  v179 = 0;
  __dst[0] = 0;
  sub_4625C(__dst, &v182, &v182.__r_.__value_.__l.__size_, 2uLL);
  sub_4A51DC(&__src);
}

void sub_4C6C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4C6CD4(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  while (dword_5C75B8[v2] != a2)
  {
    if (++v2 == 8)
    {
      v3 = sub_5544(18);
      v4 = sub_5544(28);
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
          goto LABEL_11;
        }
      }

      if ((v6 & v7) == 0)
      {
        v3 = v4;
      }

LABEL_11:
      v9 = *v3;
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, a2);
        v10 = v16 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "Device_AirPlay_Aspen.cpp";
        v18 = 1024;
        v19 = 218;
        v20 = 2080;
        v21 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_AirPlay_Aspen.cpp";
          v18 = 1024;
          v19 = 219;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
    }
  }

  return 0;
}

void sub_4C6F20(uint64_t a1)
{
  sub_4ADCC0(a1);
  if (!(*(*a1 + 88))(a1, 1))
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "Device_AirPlay_Aspen.cpp";
      v49 = 1024;
      v50 = 124;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): AirPlay audio device has no output streams.", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "AirPlay audio device has no output streams.");
  }

  v2 = 0;
  while (dword_5C75B8[v2] != *(a1 + 532))
  {
    if (++v2 == 8)
    {
      v3 = sub_5544(14);
      v4 = *v3;
      if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v45, *(a1 + 532));
        if (v47 >= 0)
        {
          v5 = &v45;
        }

        else
        {
          v5 = v45;
        }

        buf.mSelector = 136315650;
        *&buf.mScope = "Device_AirPlay_Aspen.cpp";
        v49 = 1024;
        v50 = 125;
        v51 = 2080;
        v52 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): AirPlay audio device has incorrect port type %s", &buf, 0x1Cu);
        if (v47 < 0)
        {
          operator delete(v45);
        }
      }

      v6 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v6, "AirPlay audio device has incorrect port type %s");
    }
  }

  v43 = 0;
  v44 = 1;
  v41 = 0x676C6F626C6E616DLL;
  v42 = 0;
  if (((*(*a1 + 16))(a1, &v41) & 1) == 0)
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&v45, 0x6C6E616Du);
      v28 = v47 >= 0 ? &v45 : v45;
      buf.mSelector = 136315650;
      *&buf.mScope = "Device_AirPlay_Aspen.cpp";
      v49 = 1024;
      v50 = 129;
      v51 = 2080;
      v52 = v28;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): AirPlay audio device does not have property %s", &buf, 0x1Cu);
      if (v47 < 0)
      {
        operator delete(v45);
      }
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v29, "AirPlay audio device does not have property %s");
  }

  v40 = 16;
  (*(*a1 + 40))(a1, &v41, 0, 0, &v40, &v43);
  v38 = 0x6F7574706374726CLL;
  v39 = 0;
  if (!(*(*a1 + 16))(a1, &v38))
  {
    goto LABEL_17;
  }

  v7 = (*(*a1 + 32))(a1, &v38, 0, 0);
  v8 = v7;
  if (!v7)
  {
    v30 = sub_5544(14);
    v31 = *v30;
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "Device_AirPlay_Aspen.cpp";
      v49 = 1024;
      v50 = 142;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): AirPlay audio device returned control list size of 0", &buf, 0x12u);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "AirPlay audio device returned control list size of 0");
  }

  v9 = v7 >> 2;
  v10 = __chkstk_darwin(v7);
  v12 = (v33 - v11);
  v40 = v8 & 0xFFFFFFFC;
  (*(*a1 + 40))(a1, &v38, v8, 0, &v40, v33 - v11, v10);
  *&inAddress.mSelector = 0x6F757470636C6173;
  inAddress.mElement = 0;
  if (v8 <= 3)
  {
LABEL_17:
    sub_15DCEC();
  }

  v33[1] = v33;
  while (1)
  {
    if (!AudioObjectHasProperty(*v12, &inAddress))
    {
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v45, 0x636C6173u);
        v20 = v47 >= 0 ? &v45 : v45;
        buf.mSelector = 136315650;
        *&buf.mScope = "Device_AirPlay_Aspen.cpp";
        v49 = 1024;
        v50 = 155;
        v51 = 2080;
        v52 = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): AirPlay audio device does not have property %s", &buf, 0x1Cu);
        if (v47 < 0)
        {
          operator delete(v45);
        }
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v21, "AirPlay audio device does not have property %s");
    }

    LODWORD(v45) = *v12;
    strcpy(&buf, "salcptuo");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v13 = sub_542F0(&v45, &buf, 0, 0);
    v15 = v13;
    if (v13)
    {
      goto LABEL_41;
    }

    if ((v14 & 1) == 0)
    {
      break;
    }

    if (v13 == 0x766C6D6500000000)
    {
      v16 = *(a1 + 88);
      v45 = *(a1 + 80);
      v46 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
      }

      v36 = 1869968496;
      v35 = 0;
      v34 = 0;
      v37 = 74;
      sub_4C7DA4();
    }

    if (v13 == 0x6D75746500000000)
    {
      v17 = *(a1 + 88);
      v45 = *(a1 + 80);
      v46 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
      }

      v36 = 1869968496;
      v35 = 0;
      v34 = 0;
      v37 = 74;
      sub_4C7DA4();
    }

    ++v12;
    if (!--v9)
    {
      goto LABEL_17;
    }
  }

  v15 = 0;
LABEL_41:
  v22 = __cxa_allocate_exception(0x10uLL);
  *v22 = &off_6DDDD0;
  v22[2] = v15;
}

void sub_4C7E70(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_4C7EB0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DBCA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4C7F24(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v16 = 2003332927;
LABEL_19:
    exception[2] = v16;
  }

  if (!a6)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v19 = *&a2->mSelector;
      v21 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v16 = 561211770;
    goto LABEL_19;
  }

  if (a2->mSelector == 1064725619)
  {
    *a6 = 0.0;
    v12 = sub_5544(18);
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v24 = "Device_AirPlay_Aspen.cpp";
        v25 = 1024;
        v26 = 102;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d KnowableVolumeLevels is 0", buf, 0x12u);
      }
    }
  }

  else
  {

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_4C82A0(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 2003332927;
LABEL_16:
    exception[2] = v11;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *&a2->mSelector;
      v16 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 561211770;
    goto LABEL_16;
  }

  if (a2->mSelector == 1064725619)
  {
    return 4;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_4C85CC(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  if (a2->mSelector == 1064725619)
  {
    return a2->mScope == 1869968496;
  }

  sub_4DFC0(a1);
  return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
}

void sub_4C8634(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_4C8670(uint64_t a1, UInt32 a2, __int128 *a3)
{
  *sub_4B1A68(a1, a2, a3, a3, 0) = off_6DBAB8;
  v10.mElement = 0;
  v11 = a2;
  *&v10.mSelector = 0x676C6F6261707074;
  v5 = sub_542F0(&v11, &v10, 0, 0);
  if (v5 || (v6 & 1) == 0)
  {
    v8 = v5;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v8;
  }

  *(a1 + 532) = HIDWORD(v5);
  sub_4B4F1C(a1, 1, 0x6F757470u, 0);
  return a1;
}

void sub_4C8778(CFArrayRef *a1, signed int *a2, signed int *a3, CFArrayRef *a4, uint64_t *a5)
{
  if (*a4)
  {
    v5 = a2;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    if (a2 != a3)
    {
      while (1)
      {
        v6 = *v5;
        LOBYTE(cf) = 0;
        v88 = 0;
        v7 = *a4;
        if (!*a4)
        {
          goto LABEL_37;
        }

        Count = CFArrayGetCount(*a4);
        v9 = Count;
        v10 = *a4;
        if (!*a4)
        {
          break;
        }

        v11 = CFArrayGetCount(*a4);
        if (v9)
        {
          goto LABEL_8;
        }

LABEL_37:
        v84 = CFStringCreateWithBytes(0, "trim_gain_data_source_id", 24, 0x8000100u, 0);
        if (!v84)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        *valuePtr = v6;
        v83 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
        if (!v83)
        {
          v61 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v61, "Could not construct");
        }

        sub_3EC9AC(buf, v84, &v83);
        v82 = CFStringCreateWithBytes(0, "trim_gain_db", 12, 0x8000100u, 0);
        if (!v82)
        {
          v62 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v62, "Could not construct");
        }

        LOBYTE(v79) = 0;
        v80 = 0;
        v22 = v88;
        if (v88 == 1)
        {
          v23 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v79 = v23;
          v80 = 1;
        }

        __p[0] = 0;
        __p[1] = 0;
        v78 = 0;
        sub_326328(__p, *a5, a5[1], (a5[1] - *a5) >> 2);
        if (v22)
        {
          if (!v79)
          {
            v67 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v67, "Could not construct");
          }

          v24 = sub_4A4DC(v79, "trim_gain_db");
          if (!v24)
          {
            goto LABEL_157;
          }

          v25 = v24;
          CFRetain(v24);
          v26 = CFGetTypeID(v25);
          if (v26 != CFNumberGetTypeID())
          {
            CFRelease(v25);
LABEL_157:
            valuePtr[0] = 0;
            valuePtr[8] = 0;
            sub_1EC054();
          }

          v94 = v25;
        }

        else
        {
          *valuePtr = 0;
          v94 = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
          if (!v94)
          {
            v66 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v66, "Could not construct");
          }
        }

        for (i = __p[0]; i != __p[1]; ++i)
        {
          v28 = *i;
          if (v6 == 1936550243 && v28 == 1)
          {
            *valuePtr = 0;
            v81 = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
            if (!v81)
            {
              v68 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v68, "Could not construct");
            }

            goto LABEL_72;
          }

          if (v6 == 1718446435 && v28 == 2)
          {
            *valuePtr = 0;
            v81 = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
            if (!v81)
            {
              v69 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v69, "Could not construct");
            }

            goto LABEL_72;
          }
        }

        v30 = *sub_5544(14);
        v31 = v30;
        if (v30)
        {
          v32 = v30;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(v92, v6);
            v33 = v92;
            if (v93 < 0)
            {
              v33 = v92[0];
            }

            *valuePtr = 136315650;
            *&valuePtr[4] = "FDRUtils.mm";
            *&valuePtr[12] = 1024;
            *&valuePtr[14] = 52;
            *&valuePtr[18] = 2080;
            *&valuePtr[20] = v33;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No mic repairs detected for '%s' - Using syscfg trim gains", valuePtr, 0x1Cu);
            if (v93 < 0)
            {
              operator delete(v92[0]);
            }
          }
        }

        v34 = v94;
        if (v94)
        {
          CFRetain(v94);
        }

        v81 = v34;
LABEL_72:
        if (v94)
        {
          CFRelease(v94);
        }

        sub_3EC9AC(&buf[16], v82, &v81);
        v92[0] = CFStringCreateWithBytes(0, "mic_filter_id", 13, 0x8000100u, 0);
        if (!v92[0])
        {
          v63 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v63, "Could not construct");
        }

        if ((v22 & 1) == 0)
        {
          sub_1EC054();
        }

        v35 = cf;
        if (!cf)
        {
          v64 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v64, "Could not construct");
        }

        v76 = 0;
        v36 = sub_379E24(cf, "mic_filter_id");
        if (v36)
        {
          v37 = v36;
          CFRetain(v36);
          v38 = CFGetTypeID(v37);
          if (v38 == CFNumberGetTypeID())
          {
            CFRetain(v37);
            v94 = v37;
            CFRelease(v37);
            goto LABEL_82;
          }

          CFRelease(v37);
        }

        v94 = 0;
        v76 = 0;
LABEL_82:
        sub_3EC9AC(&v96, v92[0], &v94);
        v75 = CFStringCreateWithBytes(0, "mic_resonant_frequency", 22, 0x8000100u, 0);
        if (!v75)
        {
          v65 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v65, "Could not construct");
        }

        v39 = sub_11E34(v35, "mic_resonant_frequency");
        if (!v39)
        {
          goto LABEL_87;
        }

        v40 = v39;
        CFRetain(v39);
        v41 = CFGetTypeID(v40);
        if (v41 != CFNumberGetTypeID())
        {
          CFRelease(v40);
LABEL_87:
          v40 = 0;
          v74 = 0;
          goto LABEL_88;
        }

        CFRetain(v40);
        v74 = v40;
        CFRelease(v40);
LABEL_88:
        sub_3EC9AC(v97, v75, &v74);
        v85[0] = buf;
        v85[1] = 4;
        v42 = sub_69CE8(v85);
        v43 = v42;
        v86 = v42;
        v44 = v90;
        if (v90 >= v91)
        {
          v46 = (v90 - v89) >> 3;
          if ((v46 + 1) >> 61)
          {
            sub_189A00();
          }

          v47 = (v91 - v89) >> 2;
          if (v47 <= v46 + 1)
          {
            v47 = v46 + 1;
          }

          if (v91 - v89 >= 0x7FFFFFFFFFFFFFF8)
          {
            v48 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v47;
          }

          v99 = &v89;
          if (v48)
          {
            sub_1DB8DC(v48);
          }

          *valuePtr = 0;
          *&valuePtr[8] = 8 * v46;
          *&valuePtr[24] = 0;
          **&valuePtr[8] = v43;
          v86 = 0;
          *&valuePtr[16] = 8 * v46 + 8;
          sub_76010(&v89, valuePtr);
          v45 = v90;
          sub_760C0(valuePtr);
        }

        else
        {
          *v90 = v42;
          v45 = v44 + 1;
          v86 = 0;
        }

        v49 = 0;
        v90 = v45;
        do
        {
          v50 = v97[v49 + 1];
          if (v50)
          {
            CFRelease(v50);
          }

          v51 = v97[v49];
          if (v51)
          {
            CFRelease(v51);
          }

          v49 -= 2;
        }

        while (v49 != -8);
        if (v40)
        {
          CFRelease(v40);
        }

        if (v75)
        {
          CFRelease(v75);
        }

        if (v94)
        {
          CFRelease(v94);
        }

        if (v76)
        {
          CFRelease(v76);
        }

        if (v92[0])
        {
          CFRelease(v92[0]);
        }

        if (v81)
        {
          CFRelease(v81);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v79)
        {
          CFRelease(v79);
        }

        if (v82)
        {
          CFRelease(v82);
        }

        if (v83)
        {
          CFRelease(v83);
        }

        if (v84)
        {
          CFRelease(v84);
        }

        if (v88 == 1 && cf)
        {
          CFRelease(cf);
        }

        if (++v5 == a3)
        {
          goto LABEL_137;
        }
      }

      v11 = 0;
      if (!Count)
      {
        goto LABEL_37;
      }

LABEL_8:
      v12 = 0;
      while (1)
      {
        if (v7 == v10 && v12 == v11)
        {
          goto LABEL_37;
        }

        sub_233E00(valuePtr, v7, v12);
        if (!*valuePtr)
        {
          v59 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v59, "Could not construct");
        }

        v13 = sub_A4CB8(*valuePtr, "trim_gain_data_source_id");
        if (v13)
        {
          v14 = sub_113A0(v13);
          if ((v14 & 0x100000000) != 0)
          {
            break;
          }
        }

LABEL_34:
        if (*valuePtr)
        {
          CFRelease(*valuePtr);
        }

        if (++v12 == v9)
        {
          goto LABEL_37;
        }
      }

      v15 = v14;
      if (v6 == v14)
      {
        goto LABEL_133;
      }

      v16 = 0;
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      if (v6 > 1768778034)
      {
        if (v6 == 1768778035)
        {
          LODWORD(v92[0]) = 1296646963;
          sub_1DFEA0(buf, v92, v92 + 1);
          goto LABEL_24;
        }

        if (v6 == 1768778036)
        {
          LODWORD(v92[0]) = 1296646964;
          sub_1DFEA0(buf, v92, v92 + 1);
          goto LABEL_24;
        }
      }

      else
      {
        if (v6 == 1768778033)
        {
          LODWORD(v92[0]) = 1296646961;
          sub_1DFEA0(buf, v92, v92 + 1);
          goto LABEL_24;
        }

        if (v6 == 1768778034)
        {
          LODWORD(v92[0]) = 1296646962;
          sub_1DFEA0(buf, v92, v92 + 1);
LABEL_24:
          v16 = *&buf[8];
          if (*&buf[8])
          {
            v17 = &buf[8];
            v18 = *&buf[8];
            do
            {
              v19 = v18;
              v20 = v17;
              v21 = *(v18 + 28);
              if (v21 >= v15)
              {
                v17 = v18;
              }

              v18 = *(v18 + 8 * (v21 < v15));
            }

            while (v18);
            if (v17 != &buf[8])
            {
              if (v21 < v15)
              {
                v19 = v20;
              }

              if (*(v19 + 7) <= v15)
              {
                sub_477A0(*&buf[8]);
LABEL_133:
                v52 = *valuePtr;
                if (*valuePtr)
                {
                  CFRetain(*valuePtr);
                  cf = v52;
                  v88 = 1;
                  if (*valuePtr)
                  {
                    CFRelease(*valuePtr);
                  }
                }

                else
                {
                  cf = 0;
                  v88 = 1;
                }

                goto LABEL_37;
              }
            }
          }
        }
      }

      sub_477A0(v16);
      goto LABEL_34;
    }

LABEL_137:
    v53 = sub_76110(&v89);
    *a1 = v53;
    v54 = *sub_5544(14);
    v55 = v54;
    if (v54)
    {
      v56 = v54;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = CFCopyDescription(v53);
        v92[0] = v57;
        sub_1267C(valuePtr, v57);
        if (v57)
        {
          CFRelease(v57);
        }

        v58 = valuePtr;
        if (valuePtr[23] < 0)
        {
          v58 = *valuePtr;
        }

        *buf = 136315650;
        *&buf[4] = "FDRUtils.mm";
        *&buf[12] = 1024;
        *&buf[14] = 181;
        *&buf[18] = 2080;
        *&buf[20] = v58;
        _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FDR Sorted TrimGains ArrayRef: %s", buf, 0x1Cu);
        if ((valuePtr[23] & 0x80000000) != 0)
        {
          operator delete(*valuePtr);
        }
      }
    }

    *buf = &v89;
    sub_761AC(buf);
  }

  else
  {
    *a1 = 0;
  }
}