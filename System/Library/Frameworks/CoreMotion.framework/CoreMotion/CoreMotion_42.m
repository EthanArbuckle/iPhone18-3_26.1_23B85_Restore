void sub_19B5F3A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F3A54(const __CFString *a1, const __CFString *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 != CFStringGetTypeID())
  {
    goto LABEL_101;
  }

  memset(&v56, 0, sizeof(v56));
  sub_19B4318A4(a1, &v56);
  v5 = CFGetTypeID(a2);
  if (v5 == CFDictionaryGetTypeID())
  {
    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
    }

    v6 = qword_1EAFE2B60;
    if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
    {
      v7 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
      v8 = v56.__r_.__value_.__r.__words[0];
      Count = CFDictionaryGetCount(a2);
      v10 = &v56;
      if (v7 < 0)
      {
        v10 = v8;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = Count;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "\t%s = <dictionary (%ld entries)>:", buf, 0x16u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B58 != -1)
      {
        dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
      }

      v12 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
      v13 = v56.__r_.__value_.__r.__words[0];
      v14 = CFDictionaryGetCount(a2);
      v15 = &v56;
      if (v12 < 0)
      {
        v15 = v13;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v15;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v14;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    CFDictionaryApplyFunction(a2, sub_19B5F3A54, 0);
    goto LABEL_99;
  }

  v17 = CFGetTypeID(a2);
  if (v17 == CFArrayGetTypeID())
  {
    v18.length = CFArrayGetCount(a2);
    *&buf[8] = 0uLL;
    v19 = &v56;
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v56.__r_.__value_.__r.__words[0];
    }

    *buf = v19;
    v18.location = 0;
    CFArrayApplyFunction(a2, v18, sub_19B5F4510, buf);
    goto LABEL_99;
  }

  v20 = CFGetTypeID(a2);
  if (v20 == CFStringGetTypeID())
  {
    memset(&__p, 0, sizeof(__p));
    if (sub_19B4318A4(a2, &__p))
    {
      if (qword_1EAFE2B58 != -1)
      {
        dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
      }

      v21 = qword_1EAFE2B60;
      if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
      {
        v22 = &v56;
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = v56.__r_.__value_.__r.__words[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = p_p;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "\t%s = %s", buf, 0x16u);
      }

      v24 = sub_19B420058();
      if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B58 != -1)
        {
          dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
        }

        v25 = &v56;
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v25 = v56.__r_.__value_.__r.__words[0];
        }

        v26 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v26 = __p.__r_.__value_.__r.__words[0];
        }

        *v57 = 136315394;
        *&v57[4] = v25;
        v58 = 2080;
        v59 = v26;
        v27 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_99;
  }

  v28 = CFGetTypeID(a2);
  if (v28 == CFNumberGetTypeID())
  {
    *v57 = 0;
    if (!sub_19B444EE4(a2, v57))
    {
      goto LABEL_99;
    }

    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
    }

    v29 = qword_1EAFE2B60;
    if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
    {
      v30 = &v56;
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v56.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = *v57;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEBUG, "\t%s = %0.6f", buf, 0x16u);
    }

    v31 = sub_19B420058();
    if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
    }

    v32 = &v56;
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = v56.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v32;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = *v57;
    v33 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v33);
    if (v33 == buf)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v34 = CFGetTypeID(a2);
  if (v34 == CFBooleanGetTypeID())
  {
    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
    }

    v35 = qword_1EAFE2B60;
    if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
    {
      v36 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
      v37 = v56.__r_.__value_.__r.__words[0];
      Value = CFBooleanGetValue(a2);
      v39 = &v56;
      if (v36 < 0)
      {
        v39 = v37;
      }

      *buf = 136315394;
      *&buf[4] = v39;
      *&buf[12] = 1024;
      *&buf[14] = Value;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEBUG, "\t%s = %d", buf, 0x12u);
    }

    v40 = sub_19B420058();
    if (*(v40 + 160) <= 1 && *(v40 + 164) <= 1 && *(v40 + 168) <= 1 && !*(v40 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
    }

    v41 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
    v42 = v56.__r_.__value_.__r.__words[0];
    v43 = CFBooleanGetValue(a2);
    v44 = &v56;
    if (v41 < 0)
    {
      v44 = v42;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v44;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v43;
    v33 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v33);
  }

  else
  {
    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
    }

    v45 = qword_1EAFE2B60;
    if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
    {
      v46 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
      v47 = v56.__r_.__value_.__r.__words[0];
      v48 = CFGetTypeID(a2);
      v49 = &v56;
      if (v46 < 0)
      {
        v49 = v47;
      }

      *buf = 136315394;
      *&buf[4] = v49;
      *&buf[12] = 2048;
      *&buf[14] = v48;
      _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEBUG, "\t%s = <unhandled value type %lu>", buf, 0x16u);
    }

    v50 = sub_19B420058();
    if (*(v50 + 160) <= 1 && *(v50 + 164) <= 1 && *(v50 + 168) <= 1 && !*(v50 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
    }

    v51 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
    v52 = v56.__r_.__value_.__r.__words[0];
    v53 = CFGetTypeID(a2);
    v54 = &v56;
    if (v51 < 0)
    {
      v54 = v52;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v54;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v53;
    v33 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v33);
  }

  if (v33 != buf)
  {
LABEL_98:
    free(v33);
  }

LABEL_99:
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

LABEL_101:
  v55 = *MEMORY[0x1E69E9840];
}

void sub_19B5F44A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F4510(uint64_t a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_19B5F3A54(v4, a1);
  ++*(a2 + 8);

  CFRelease(v4);
}

void sub_19B5F4598(uint64_t a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_19B5F369C(v4, a1, *(a2 + 16));
  ++*(a2 + 8);

  CFRelease(v4);
}

os_log_t sub_19B5F4624()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED71C7F0 = result;
  return result;
}

os_log_t sub_19B5F4654()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EAFE2B60 = result;
  return result;
}

uint64_t sub_19B5F4684(uint64_t a1)
{
  *a1 = &unk_1F0E34578;
  pthread_mutex_destroy(*(a1 + 8));
  v4 = *(a1 + 8);
  v5 = *(v4 + 104);
  if (v5)
  {
    free(v5);
    v4 = *(a1 + 8);
    *(v4 + 104) = 0;
  }

  objc_msgSend_assertInside(*(v4 + 64), v2, v3);

  v6 = *(a1 + 8);
  if (v6)
  {
    MEMORY[0x19EAE76F0](v6, 0x10B0C4016A090D5);
  }

  return a1;
}

void sub_19B5F471C(uint64_t a1)
{
  sub_19B5F4684(a1);

  JUMPOUT(0x19EAE76F0);
}

pthread_t sub_19B5F4754(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  if (pthread_mutex_lock(*(a1 + 8)))
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v12 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "error == 0";
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v13 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v14 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "error == 0";
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_50;
  }

  result = pthread_self();
  v5 = *(a1 + 8);
  v6 = *(v5 + 72);
  if (v6 < 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v15 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "info->fCount >= 0";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v16 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "info->fCount >= 0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v17 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "info->fCount >= 0";
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_50;
  }

  v7 = *(v5 + 80);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v18 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v19 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v20 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_50:
    abort_report_np();
  }

  if (v7 != result)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v9 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v10 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_50;
  }

LABEL_17:
  *(v5 + 72) = v6 + 1;
  *(v5 + 80) = result;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5F504C(uint64_t a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  v4 = *(a1 + 8);
  v5 = *(v4 + 72);
  if (v5 <= 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v9 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "info->fCount > 0";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v10 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "info->fCount > 0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "info->fCount > 0";
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_27:
    abort_report_np();
  }

  v6 = v5 - 1;
  *(v4 + 72) = v6;
  if (!v6)
  {
    *(v4 + 80) = 0;
  }

  result = pthread_mutex_unlock(v4);
  if (result)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v12 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "error == 0";
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v13 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v14 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "error == 0";
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_27;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F5518(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  return *(*(a1 + 8) + 72) == v3;
}

BOOL sub_19B5F5558(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  v4 = *(*(a1 + 8) + 80);
  return v4 == pthread_self();
}

BOOL sub_19B5F5598(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  v4 = *(*(a1 + 8) + 80);
  return v4 != pthread_self();
}

void sub_19B5F55E0(uint64_t a1, char a2, int a3, char a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = sub_19B43CCBC(a1, a3);
  v8 = *(v7 + 8);
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 272) = 0;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  *(v7 + 224) = 0;
  *(v7 + 273) = v8;
  *v7 = &unk_1F0E32138;
  *(v7 + 200) = &unk_1F0E321A8;
  *(v7 + 276) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = -1;
  *(v7 + 292) = a4;
  *(v7 + 296) = 1127481344;
  v9 = sub_19B42AD98();
  *buf = sub_19B43D788(v9, (a1 + 24));
  sub_19B6B3FAC(a1 + 304, buf, a1 + 16, (a1 + 32), a2);
}

void sub_19B5F5840(_Unwind_Exception *a1)
{
  sub_19B6B48D4((v1 + 304));
  sub_19B5D3E20(v2);
  sub_19B760468(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5F5870(void *a1)
{
  *a1 = &unk_1F0E32138;
  v2 = a1 + 25;
  a1[25] = &unk_1F0E321A8;
  sub_19B5F5A00(a1);
  sub_19B6B48D4(a1 + 38);
  sub_19B5D3E20(v2);

  return sub_19B760468(a1);
}

void sub_19B5F5904(void *a1)
{
  sub_19B5F5870(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5F593C(uint64_t a1)
{
  sub_19B5F5870((a1 - 200));

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5F5978(uint64_t a1)
{
  sub_19B6B49F4(a1 + 304);
  *(a1 + 276) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = -1;
  *(a1 + 296) = 1127481344;
  v2 = *(a1 + 16);
  sub_19B4431A8(a1 + 200);
  v3 = *(a1 + 24);
  sub_19B442D78(a1 + 200);
  sub_19B442F50(a1 + 200);
  v4 = *(a1 + 32);
  sub_19B5D3F2C(a1 + 200);
  v6 = 2;
  return sub_19B4453D4(a1, &v6);
}

void *sub_19B5F5A00(uint64_t a1)
{
  sub_19B5D3E78((a1 + 200));
  if (*(a1 + 225) == 1)
  {
    v2 = sub_19B442E70();
    sub_19B445814(v2);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC((a1 + 200));

  return sub_19B423148((a1 + 200));
}

void sub_19B5F5A5C(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    if (*(a1 + 292) != a2)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28FA0);
      }

      v3 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 292);
        *buf = 67240192;
        v10 = v4;
        _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "North reference overridden as %{public}d by first client", buf, 8u);
      }

      v5 = sub_19B420058();
      if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E28FA0);
        }

        v8 = *(a1 + 292);
        v6 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService9Axis::useNorthRef(BOOL)", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }
    }
  }

  else
  {
    *(a1 + 292) = a2;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B5F5C44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v28 = *(a2 + 8);
  *v27.i64 = v4;
  v45 = *(a2 + 16);
  sub_19B6B4D2C(a1 + 304, &v28, &v27, &v45, a2);
  v6 = *(a1 + 320);
  v7 = *(a1 + 344);
  v9 = *(a1 + 328);
  v8 = *(a1 + 336);
  if (*(a1 + 480) <= 0.0)
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v10 = *(a1 + 656) - (v7 * (v9 + v9) - v6 * (v8 + v8));
    v11 = *(a1 + 660) - (-(v7 * (v6 + v6)) - v9 * (v8 + v8));
    v12 = *(a1 + 664) - (v6 * (v6 + v6) + -1.0 + v9 * (v9 + v9));
  }

  v5.i64[0] = *(a1 + 460);
  v5.i32[2] = *(a1 + 468);
  v26 = v5;
  v29 = 0uLL;
  v28 = -1.0;
  v13 = sub_19B41E130(&v29, v5);
  v38 = 0;
  v37 = 0;
  v28 = *a2;
  v13.i32[1] = HIDWORD(v28);
  v13.f32[0] = v6;
  *&v14 = v9;
  *&v15 = v8;
  *&v16 = v7;
  v27.i64[0] = __PAIR64__(v14, v13.u32[0]);
  v27.i64[1] = __PAIR64__(v16, v15);
  sub_19B41E130(&v27, v13);
  v17 = v26;
  v29 = v27;
  v30 = v10;
  v31 = v11;
  v17.i32[3] = *(a1 + 276);
  v32 = v12;
  v33 = v17;
  v34 = *(a1 + 280);
  v39 = *(a1 + 288);
  v18 = sub_19B6B6210((a1 + 304));
  v19 = *(a1 + 296);
  v35 = v18;
  v36 = v19;
  v40 = 1;
  if (*(a1 + 313))
  {
    v20 = 8;
  }

  else
  {
    v20 = 0;
  }

  if (*(a1 + 252))
  {
    v21 = 16;
  }

  else
  {
    v21 = 0;
  }

  v22 = v20 | v21;
  if (*(a1 + 312))
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  if (*(a1 + 315))
  {
    v24 = 0x2000;
  }

  else
  {
    v24 = 0;
  }

  v41 = v23 | v24 | v22;
  if (*(a1 + 292))
  {
    v25 = 15;
  }

  else
  {
    v25 = 7;
  }

  v42 = v25;
  v44 = 0;
  v43 = *(a2 + 22);
  sub_19B41FA70(a1, &v28);
}

void sub_19B5F5E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v5 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = v2;
  sub_19B6B63C0(a1 + 304, &v5, &v4, &v3, a2);
}

void sub_19B5F5EE0(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 56);
  v23 = *(a2 + 40);
  v24 = v4;
  v5 = *(a2 + 88);
  v25 = *(a2 + 72);
  v26 = v5;
  v6 = *(a2 + 24);
  *v22 = *(a2 + 8);
  *&v22[16] = v6;
  if ((sub_19B421620() & 0x10) != 0 && (DWORD2(v23) - 1) <= 4)
  {
    DWORD2(v23) = dword_19B7B7EB8[DWORD2(v23) - 1];
  }

  buf[0] = *(a1 + 272);
  v7 = sub_19B6B85E0(a1 + 304, v22, buf, (a1 + 292), a2);
  memset(v21, 0, 12);
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (*(a1 + 313) == 1)
  {
    v11 = *(a1 + 680);
    *v21 = v11;
    *(v21 + 4) = vcvt_f32_f64(*(a1 + 688));
    v10 = v11;
    v9 = *(v21 + 1);
    v8 = *&v21[1];
  }

  if (*(a1 + 8) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28FA0);
    }

    v12 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 272);
      *buf = 134219008;
      v38 = v10;
      v39 = 2048;
      v40 = v9;
      v41 = 2048;
      v42 = v8;
      v43 = 1024;
      v44 = v13;
      v45 = 1024;
      v46 = v7;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "correctedCompassExt, %.3f, %.3f, %.3f, %u, %u", buf, 0x2Cu);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28FA0);
      }

      v15 = *(a1 + 272);
      v27 = 134219008;
      v28 = v10;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v8;
      v33 = 1024;
      v34 = v15;
      v35 = 1024;
      v36 = v7;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService9Axis::feedCompassData(const CLCompass_Type::Sample *)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  if (v7)
  {
    v17 = sub_19B43A6F0();
    (*(*v17 + 64))(v17, 1, v21);
  }

  v18 = DWORD2(v23);
  *(a1 + 288) = DWORD2(v23);
  *(a1 + 296) = v23;
  if (v18 <= 0)
  {
    *(a1 + 276) = 0;
    *(a1 + 280) = 0;
  }

  else
  {
    if ((sub_19B421620() & 0x10) != 0)
    {
      *(a1 + 284) = *&v22[20];
      v19 = *&v22[12];
    }

    else
    {
      *(a1 + 284) = *&v22[8];
      v19 = *v22;
    }

    *(a1 + 276) = v19;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B5F7BB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_19B508A70();
}

void sub_19B5F7BF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F81EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  sub_19B508C60(va);
  _Unwind_Resume(a1);
}

os_log_t sub_19B5F82BC()
{
  result = os_log_create("com.apple.locationd.Motion", "Fall");
  qword_1EAFE29B0 = result;
  return result;
}

BOOL sub_19B5F8330()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

void sub_19B5F83A4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71C998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71C998))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71CA30, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71C998);
  }

  if (qword_1ED71C9A0 != -1)
  {
    dispatch_once(&qword_1ED71C9A0, &unk_1F0E3A420);
  }

  if (byte_1ED71CA47 < 0)
  {
    v2 = xmmword_1ED71CA30;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71CA30;
    *(a1 + 16) = unk_1ED71CA40;
  }
}

const __CFDictionary *sub_19B5F848C()
{
  v20[2] = *MEMORY[0x1E69E9840];
  result = _CFCopyServerVersionDictionary();
  if (result || (result = _CFCopySystemVersionDictionary()) != 0)
  {
    v1 = result;
    sub_19B444AA4(v19, result);
    CFRelease(v1);
    memset(&v18, 0, sizeof(v18));
    memset(&v17, 0, sizeof(v17));
    memset(&__p, 0, sizeof(__p));
    if (!sub_19B5EC7FC(v19, *MEMORY[0x1E695E1F0], &v17))
    {
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        v17.__r_.__value_.__l.__size_ = 6;
        v2 = v17.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v17.__r_.__value_.__s + 23) = 6;
        v2 = &v17;
      }

      strcpy(v2, "<name>");
    }

    if (!sub_19B5EC7FC(v19, *MEMORY[0x1E695E208], &v18))
    {
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        v18.__r_.__value_.__l.__size_ = 9;
        v3 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v18.__r_.__value_.__s + 23) = 9;
        v3 = &v18;
      }

      strcpy(v3, "<version>");
    }

    if (!sub_19B5EC7FC(v19, *MEMORY[0x1E695E1E8], &__p))
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      strcpy(p_p, "<build>");
    }

    sub_19B5F8820(&v17.__r_.__value_.__l.__data_, &v18.__r_.__value_.__l.__data_, &v14);
    v5 = std::string::append(&v14, "/", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v15, v7, size);
    v10 = v9->__r_.__value_.__r.__words[0];
    v20[0] = v9->__r_.__value_.__l.__size_;
    *(v20 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (byte_1ED71CA47 < 0)
    {
      operator delete(xmmword_1ED71CA30);
    }

    *&xmmword_1ED71CA30 = v10;
    *(&xmmword_1ED71CA30 + 1) = v20[0];
    *(&xmmword_1ED71CA30 + 15) = *(v20 + 7);
    byte_1ED71CA47 = v11;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    result = sub_19B445384(v19);
  }

  else
  {
    if (byte_1ED71CA47 < 0)
    {
      *(&xmmword_1ED71CA30 + 1) = 6;
      v13 = xmmword_1ED71CA30;
    }

    else
    {
      v13 = &xmmword_1ED71CA30;
      byte_1ED71CA47 = 6;
    }

    strcpy(v13, "<null>");
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5F8798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  sub_19B445384((v34 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5F8820@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_19B50FF5C(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void sub_19B5F88EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71C9A8, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_1ED71C9A8);
    a1 = v3;
    if (v4)
    {
      __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71CA48, &dword_19B41C000);
      __cxa_guard_release(&qword_1ED71C9A8);
      a1 = v3;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5F8A24;
  block[3] = &unk_1E75327D8;
  block[4] = a1;
  if (qword_1ED71C9B0 != -1)
  {
    dispatch_once(&qword_1ED71C9B0, block);
  }

  if (byte_1ED71CA5F < 0)
  {
    sub_19B4C5138(a2, xmmword_1ED71CA48, *(&xmmword_1ED71CA48 + 1));
  }

  else
  {
    *a2 = xmmword_1ED71CA48;
    *(a2 + 16) = unk_1ED71CA58;
  }
}

double sub_19B5F8A24()
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 128;
  if (sysctlbyname("hw.model", v6, &v5, 0, 0))
  {
    v0 = "";
  }

  else
  {
    v0 = v6;
  }

  sub_19B428B50(&v3, v0);
  if (byte_1ED71CA5F < 0)
  {
    operator delete(xmmword_1ED71CA48);
  }

  result = *&v3;
  xmmword_1ED71CA48 = v3;
  unk_1ED71CA58 = v4;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5F8AE4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71C9B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71C9B8))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71CA60, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71C9B8);
  }

  if (qword_1ED71C9C0 != -1)
  {
    dispatch_once(&qword_1ED71C9C0, &unk_1F0E3A440);
  }

  if (byte_1ED71CA77 < 0)
  {
    v2 = xmmword_1ED71CA60;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71CA60;
    *(a1 + 16) = unk_1ED71CA70;
  }
}

void sub_19B5F8BCC()
{
  sub_19B5FD090(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFStringGetTypeID())
    {
      v4 = CFURLCreateWithFileSystemPath(v1, v2, kCFURLPOSIXPathStyle, 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFBundleCreate(v1, v4);
        if (v6)
        {
          v7 = v6;
          ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v6, *MEMORY[0x1E695E500]);
          if (ValueForInfoDictionaryKey)
          {
            v9 = ValueForInfoDictionaryKey;
            v10 = CFGetTypeID(ValueForInfoDictionaryKey);
            if (v10 == CFStringGetTypeID())
            {
              sub_19B431834(v9, &__p);
              if (byte_1ED71CA60[23] < 0)
              {
                operator delete(*byte_1ED71CA60);
              }

              *byte_1ED71CA60 = __p;
            }
          }

          CFRelease(v2);
          v2 = v5;
        }

        else
        {
          v7 = v5;
        }

        CFRelease(v2);
        v2 = v7;
      }
    }

    CFRelease(v2);
  }
}

void sub_19B5F8D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F8D44(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71C9C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71C9C8))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71CA78, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71C9C8);
  }

  if (qword_1ED71C9D0 != -1)
  {
    dispatch_once(&qword_1ED71C9D0, &unk_1F0E3A460);
  }

  if (byte_1ED71CA8F < 0)
  {
    v2 = xmmword_1ED71CA78;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71CA78;
    *(a1 + 16) = unk_1ED71CA88;
  }
}

uint64_t sub_19B5F8E2C()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      sub_19B431834(CFProperty, &v6);
      if (byte_1ED71CA8F < 0)
      {
        operator delete(xmmword_1ED71CA78);
      }

      xmmword_1ED71CA78 = v6;
      unk_1ED71CA88 = v7;
      CFRelease(v5);
    }

    return IOObjectRelease(v3);
  }

  return result;
}

BOOL sub_19B5F8EE8()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  if (qword_1ED71CA28 != -1)
  {
    dispatch_once(&qword_1ED71CA28, &unk_1F0E3A5C0);
  }

  return byte_1ED71C978 == 1;
}

uint64_t sub_19B5F8F74()
{
  if (qword_1ED71C9E8 != -1)
  {
    dispatch_once(&qword_1ED71C9E8, &unk_1F0E3A4C0);
  }

  return byte_1ED71C972;
}

uint64_t sub_19B5F8FBC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (qword_1ED71C9E0 != -1)
  {
    dispatch_once(&qword_1ED71C9E0, &unk_1F0E3A4A0);
  }

  if (byte_1ED71C971 == 1)
  {
    v3 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
    result = objc_msgSend_isiOSAppOnMac(v3, v4, v5);
  }

  else
  {
    result = 0;
  }

  byte_1ED71C972 = result;
  return result;
}

uint64_t sub_19B5F9028()
{
  if (qword_1ED71CA00 != -1)
  {
    dispatch_once(&qword_1ED71CA00, &unk_1F0E3A520);
  }

  return byte_1ED71C975;
}

void sub_19B5F9070()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      byte_1ED71C975 = CFBooleanGetValue(v1) != 0;
LABEL_16:
      CFRelease(v1);
      goto LABEL_17;
    }
  }

  if (qword_1EAFE2B38 != -1)
  {
    dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
  }

  v3 = qword_1EAFE2B40;
  if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "unexpected MGCopyAnswer answer", buf, 2u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B38 != -1)
    {
      dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLPlatformInfo::supportsCrudeProx()_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (v1)
  {
    goto LABEL_16;
  }

LABEL_17:
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B5F9308()
{
  if (qword_1ED71C988 != -1)
  {
    dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
  }

  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  result = 1;
  if (((dword_1ED71C97C - 139) > 0x34 || ((1 << (dword_1ED71C97C + 117)) & 0x1FFFFFE000001DLL) == 0) && (dword_1ED71C97C - 233) >= 8 && (dword_1ED71C97C - 78) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19B5F93B8()
{
  if (qword_1ED71C9D8 != -1)
  {
    dispatch_once(&qword_1ED71C9D8, &unk_1F0E3A480);
  }

  if (byte_1ED71C970)
  {
    return 1;
  }

  if (qword_1ED71CA18 != -1)
  {
    dispatch_once(&qword_1ED71CA18, &unk_1F0E3A580);
  }

  return BYTE3(qword_1ED71CA20) & 1;
}

uint64_t sub_19B5F943C()
{
  if (qword_1ED71CA08 != -1)
  {
    dispatch_once(&qword_1ED71CA08, &unk_1F0E3A540);
  }

  return byte_1ED71C976;
}

uint64_t sub_19B5F9484(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
  v6 = objc_msgSend_processName(v3, v4, v5);
  result = objc_msgSend_compare_(v6, v7, @"locationd");
  byte_1ED71C976 = result == 0;
  return result;
}

void sub_19B5F94C4(uint64_t a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"IOPropertyMatch";
  v10[0] = &unk_1F0E6A200;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v2);
  if (MatchingService)
  {
    byte_1ED71C977 = 1;
    IOObjectRelease(MatchingService);
  }

  else
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E3A5E0);
    }

    v4 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Compass service missing", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E3A5E0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLPlatformInfo::supportsCompass()_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B5F972C()
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  return dword_1ED71C97C == 204;
}

os_log_t sub_19B5F97DC()
{
  result = os_log_create("com.apple.locationd.Utility", "Utility");
  qword_1EAFE2B40 = result;
  return result;
}

void sub_19B5F980C()
{
  v0 = objc_autoreleasePoolPush();
  byte_1ED71C978 = 0;
  v1 = *MEMORY[0x1E695E898];
  v2 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", *MEMORY[0x1E695E898]);
  if (v2)
  {
    v3 = v2;
    CFAutorelease(v2);
    v4 = CFGetTypeID(v3);
    if (v4 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v3))
      {
        v5 = CFPreferencesCopyValue(@"FProgramNumber", @"com.apple.demo-settings", @"mobile", v1);
        if (v5)
        {
          v6 = v5;
          CFAutorelease(v5);
          v7 = CFGetTypeID(v6);
          if (v7 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
            {
              byte_1ED71C978 = valuePtr == 5;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v0);
}

os_log_t sub_19B5F9920()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

os_log_t sub_19B5FC3A0()
{
  result = os_log_create("com.apple.locationd.Motion", "Swimming");
  qword_1EAFE2980 = result;
  return result;
}

void sub_19B5FC534(void *a1@<X8>)
{
  if (qword_1ED71CA90 != -1)
  {
    dispatch_once_f(&qword_1ED71CA90, 0, sub_19B5FC3D0);
  }

  v2 = *(qword_1ED71CA98 + 144);
  *a1 = *(qword_1ED71CA98 + 136);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void *sub_19B5FC5A8(void *a1)
{
  *a1 = &unk_1F0E33090;
  v2 = a1[18];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B60DA60(a1);
}

void sub_19B5FC608(void *a1)
{
  sub_19B5FC5A8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5FC644(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5FC680(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E37550))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B5FCC64(int a1@<W0>, std::string *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 == 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28240);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
    {
      v15.__r_.__value_.__r.__words[0] = 0x304020100;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "no mutable store path for type, %{public}d", &v15, 8u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v15, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28240);
    }

    v16[0] = 0x304020100;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
    goto LABEL_36;
  }

  if (a1)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28240);
    }

    v10 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v15.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v15.__r_.__value_.__r.__words[0]) = a1;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "could not get mutable store path for type, %{public}d", &v15, 8u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v15, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28240);
    }

    LODWORD(v16[0]) = 67240192;
    HIDWORD(v16[0]) = a1;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
LABEL_36:
    if (v9 != &v15)
    {
      free(v9);
    }

LABEL_38:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_39;
  }

  sub_19B428B50(__p, "root");
  sub_19B432230(__p, &v15);
  sub_19B428B50(v16, "/Library/Caches/locationd/");
  if ((v17 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v16[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = v16[1];
  }

  v6 = std::string::append(&v15, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B5FD03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5FD090(std::string *a1@<X8>)
{
  sub_19B432654(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework", 0x31uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_19B5FD0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5FE8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v26, v25);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5FE900(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = CLConnectionMessage::name(*a2);
  if (*(v5 + 23) >= 0)
  {
    v7 = objc_msgSend_stringWithUTF8String_(v4, v6, v5);
  }

  else
  {
    v7 = objc_msgSend_stringWithUTF8String_(v4, v6, *v5);
  }

  v8 = v7;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v9, v14, v10, v11, v12, v13, 0);
  if (*a2)
  {
    CLConnectionMessage::getDictionaryOfClasses(*a2, v15);
  }

  v16 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v16, sel__handleDaemonMessage_data_, v8);
}

void sub_19B5FE9F8(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A38 != -1)
  {
    dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
  }

  v2 = qword_1EAFE2A40;
  if (os_log_type_enabled(qword_1EAFE2A40, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2049;
    v9 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client connection interrupt, self:%{private}p}", v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_19B5FEBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5FF128(uint64_t a1)
{
  objc_loadWeak((*(a1 + 32) + 32));
  result = objc_opt_respondsToSelector();
  if (result)
  {
    Weak = objc_loadWeak((*(a1 + 32) + 32));
    v4 = objc_loadWeak((*(a1 + 32) + 40));
    v5 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](Weak, sel_distributedSensingManager_didFailToSubscribeToVehicleState_, v4);
  }

  return result;
}

uint64_t sub_19B5FF1A8(uint64_t a1)
{
  objc_loadWeak((*(a1 + 32) + 32));
  result = objc_opt_respondsToSelector();
  if (result)
  {
    Weak = objc_loadWeak((*(a1 + 32) + 32));
    v4 = objc_loadWeak((*(a1 + 32) + 40));
    v5 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](Weak, sel_distributedSensingManager_didUpdateVehicleState_, v4);
  }

  return result;
}

uint64_t sub_19B5FF29C(uint64_t result)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 8))
  {
    v1 = result;
    sub_19B428B50(&__p, "DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
    v4 = *(v1 + 32);
    CLConnectionClient::setHandlerForMessage();
    if (v6 < 0)
    {
      operator delete(__p);
    }

    v7 = @"kCLConnectionMessageSubscribeKey";
    v8[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v8, &v7, 1);
    sub_19B5FFA44();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5FF3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v22)
  {
    sub_19B41FFEC(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5FF440(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonMessage_data_, @"DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
}

uint64_t sub_19B5FF564(uint64_t result)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 8))
  {
    v1 = result;
    sub_19B428B50(&__p, "DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
    v4 = *(v1 + 32);
    CLConnectionClient::setHandlerForMessage();
    if (v6 < 0)
    {
      operator delete(__p);
    }

    v7 = @"kCLConnectionMessageSubscribeKey";
    v8[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v8, &v7, 1);
    sub_19B5FFA44();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5FF6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v22)
  {
    sub_19B41FFEC(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5FF708(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonMessage_data_, @"DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
}

void sub_19B5FF8F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5FF964;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_sync(v2, block);
}

os_log_t sub_19B5FFA14()
{
  result = os_log_create("com.apple.locationd.Motion", "DistributedSensing");
  qword_1EAFE2A40 = result;
  return result;
}

void sub_19B5FFAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B600060(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0x3F80000000000000;
  sub_19B41E130((a1 + 28), 0);
  *(a1 + 44) = xmmword_19B7B7E30;
  sub_19B41E130((a1 + 44), xmmword_19B7B7E30);
  v2 = 0;
  *(a1 + 64) = 0xA000000000;
  *(a1 + 10320) = 0xFFFFFFFFLL;
  *(a1 + 10328) = 0;
  *(a1 + 1352) = 0xA000000000;
  *(a1 + 10336) = 0u;
  *(a1 + 10376) = 0x200000000;
  *(a1 + 10400) = 0x200000000;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  do
  {
    if (v2 > 2)
    {
      v3 = sub_19B6001C0(v5, v2, v2);
      if (v2 > 5)
      {
        *v3 = 952607315;
      }

      else
      {
        *v3 = 980151802;
      }
    }

    else
    {
      *sub_19B6001C0(v5, v2, v2) = 944879383;
    }

    ++v2;
  }

  while (v2 != 9);
  sub_19B60054C(a1 + 10684, v5);
  return a1;
}

uint64_t sub_19B6001C0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 9>::operator()(size_t, size_t) [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 9>::operator()(size_t, size_t) [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1 + 4 * (9 * a3 + a2);
}

uint64_t sub_19B60054C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v31 = *MEMORY[0x1E69E9840];
LABEL_2:
  v6 = v5++;
  v7 = v5;
  while (1)
  {
    v8 = sub_19B6066E8(a2, v6, v7);
    v9 = v8 - sub_19B6066E8(a2, v7, v6);
    if (v9 <= 0.0)
    {
      v9 = -v9;
    }

    if (v9 > 1.0e-16)
    {
      break;
    }

    if (++v7 == 9)
    {
      v4 = v6 > 6;
      if (v5 != 8)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }
  }

  if (!v4)
  {
    goto LABEL_32;
  }

LABEL_10:
  v10 = 9;
  v11 = 8;
  while (1)
  {
    v12 = v11;
    v13 = sub_19B6066E8(a2, v11, v11);
    v14 = v10;
    if (v10 <= 8)
    {
      do
      {
        v15 = *sub_19B606A74(a1 + 36, v12, v14);
        v16 = *sub_19B606A74(a1 + 36, v12, v14);
        v13 = v13 + (-(v15 * v16) * *sub_19B606DFC(a1, v14++));
      }

      while (v14 != 9);
    }

    *sub_19B606DFC(a1, v12) = v13;
    if (*sub_19B606DFC(a1, v12) <= 0.0)
    {
      break;
    }

    if (!v12)
    {
      result = 1;
      goto LABEL_34;
    }

    v17 = v10 - 2;
    do
    {
      v18 = v17;
      v19 = sub_19B6066E8(a2, v17, v12);
      v20 = v10;
      if (v10 <= 8)
      {
        do
        {
          v21 = *sub_19B606A74(a1 + 36, v18, v20);
          v22 = *sub_19B606A74(a1 + 36, v12, v20);
          v19 = v19 + (-(v21 * v22) * *sub_19B606DFC(a1, v20++));
        }

        while (v20 != 9);
      }

      v23 = v19 / *sub_19B606DFC(a1, v12);
      *sub_19B606A74(a1 + 36, v18, v12) = v23;
      v17 = v18 - 1;
    }

    while (v18);
    v11 = v12 - 1;
    v10 = v12;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
  }

  v24 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v30 = v12;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", buf, 0xCu);
  }

  v25 = sub_19B420058();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v26 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMFactoredMatrix<float, 9>::factor(const CMMatrix<T, N, N> &) [T = float, N = 9]", "CoreLocation: %s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

LABEL_32:
  result = 0;
LABEL_34:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_19B600908(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 1352) = 0;
  *(a1 + 10376) = 0;
  *(a1 + 10400) = 0;
  memset(v3, 0, 32);
  *&v3[32] = 0x3F80000000000000;
  sub_19B41E130(&v3[24], 0);
  v4 = xmmword_19B7B7E30;
  sub_19B41E130(&v4, xmmword_19B7B7E30);
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = *&v3[12];
  *(a1 + 24) = *&v3[20];
  *(a1 + 28) = *&v3[24];
  *(a1 + 44) = v4;
  *a1 = 0;
  result = 0.0;
  *(a1 + 10336) = 0u;
  return result;
}

void sub_19B6009AC(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = sub_19B600A78(a2, i);
    v6 = sub_19B5BC0F0(a1 + 4, i);
    *v6 = v5 + *v6;
    v7 = sub_19B600A78(a2, i + 3);
    v8 = sub_19B5BC0F0(a1 + 16, i);
    *v8 = v7 + *v8;
  }

  v9 = *(a2 + 32);
  v15 = *(a2 + 24);
  v16 = v9;
  *v10.i64 = sub_19B66C264(&v14, &v15);
  *(a1 + 28) = sub_19B66BF70(&v14, (a1 + 28), v10);
  *(a1 + 32) = v11;
  *(a1 + 36) = v12;
  *(a1 + 40) = v13;
}

float sub_19B600A78(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 9>::operator[](const size_t) const [T = float, N = 9]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 4 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B600C70(uint64_t a1, float32x2_t *a2, float *a3, uint64_t a4, float a5, float a6)
{
  v10 = 0;
  v48 = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  do
  {
    v11 = v11 + (a2->f32[v10] * a2->f32[v10]);
    ++v10;
  }

  while (v10 != 3);
  if (sqrtf(v11) <= 0.000001)
  {
    goto LABEL_22;
  }

  v12 = 0;
  v13 = 0.0;
  do
  {
    v13 = v13 + (a3[v12] * a3[v12]);
    ++v12;
  }

  while (v12 != 3);
  if (sqrtf(v13) <= 0.000001)
  {
LABEL_22:
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v29 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Unexpected 0 accel magnitude.", buf, 2u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      LOWORD(v38[0]) = 0;
      v31 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::relativeGravityUpdate(const CMVector3d &, const CMVector3d &, float, float, uint64_t, BOOL)", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      *v15.i32 = *v15.i32 + (a2->f32[v14] * a2->f32[v14]);
      ++v14;
    }

    while (v14 != 3);
    v16 = 0;
    v17 = *a2;
    v18 = 0.0;
    do
    {
      v18 = v18 + (a3[v16] * a3[v16]);
      ++v16;
    }

    while (v16 != 3);
    *v15.i32 = sqrtf(*v15.i32);
    v33 = v15;
    v19 = a2[1].f32[0] / *v15.i32;
    v20 = sqrtf(v18);
    v21 = sub_19B66C1A4((a1 + 28), *a3 / v20, a3[1] / v20, a3[2] / v20);
    v22 = 0;
    v40 = vsub_f32(vdiv_f32(v17, vdup_lane_s32(v33, 0)), __PAIR64__(LODWORD(v23), LODWORD(v21)));
    v41 = v19 - v24;
    v46 = 0u;
    memset(v47, 0, sizeof(v47));
    v44 = 0u;
    v45 = 0u;
    *buf = 0u;
    v43 = 0u;
    LODWORD(v35) = 0;
    *(&v35 + 1) = v24;
    *(&v35 + 2) = -v23;
    *(&v35 + 3) = -v24;
    LODWORD(v36) = 0;
    *(&v36 + 4) = __PAIR64__(LODWORD(v23), LODWORD(v21));
    *(&v36 + 3) = -v21;
    v37 = 0;
    do
    {
      *(&v35 + v22) = *(&v35 + v22) + *(&v35 + v22);
      v22 += 4;
    }

    while (v22 != 36);
    v25 = 0;
    v38[0] = v35;
    v38[1] = v36;
    v39 = v37;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v27 = sub_19B601068(v38, v25, i);
        *sub_19B6013F4(buf, v25, i + 6) = v27;
      }

      ++v25;
    }

    while (v25 != 3);
    if (a5 == 0.0)
    {
      a5 = (a4 - *(a1 + 10352)) * 0.000001;
    }

    v28 = ((0.0000009617 / a5) + 0.021638) + ((0.0000009617 / a5) + 0.021638);
    if (v28 < a6)
    {
      v28 = a6;
    }

    *v34 = v28;
    *&v34[1] = v28;
    *&v34[2] = v28;
    sub_19B601780(&v35, (a1 + 10504), buf, v34, &v40);
    sub_19B6009AC(a1, &v35);
    *(a1 + 10352) = a4;
  }

  v32 = *MEMORY[0x1E69E9840];
}

float sub_19B601068(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 3;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3>::operator()(size_t, size_t) const [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 3;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3>::operator()(size_t, size_t) const [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  result = *(a1 + 4 * (3 * a3 + a2));
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6013F4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 3;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 3, 9>::operator()(size_t, size_t) [T = float, M = 3, N = 9]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 3, 9>::operator()(size_t, size_t) [T = float, M = 3, N = 9]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1 + 4 * (3 * a3 + a2);
}

void sub_19B601780(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v50 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  while (1)
  {
    v10 = 0;
    v11 = -1;
    do
    {
      v12 = sub_19B606FF4(a3, v9, v10);
      v13 = v11;
      if (v10)
      {
        do
        {
          v14 = sub_19B606FF4(a3, v9, v13);
          v12 = v12 + (v14 * *sub_19B606A74((a2 + 9), v13--, v10));
        }

        while (v13 != -1);
      }

      v49[v10] = v12;
      v48[v10] = v12 * *sub_19B606DFC(a2, v10);
      ++v10;
      ++v11;
    }

    while (v10 != 9);
    v15 = sub_19B5D6144(a4, v9);
    v16 = v15 + (v49[0] * v48[0]);
    if (v16 <= 0.0)
    {
      break;
    }

    v17 = 1.0 / v16;
    *a2 = *a2 * ((1.0 / v16) * sub_19B5D6144(a4, v9));
    for (i = 1; i != 9; ++i)
    {
      v19 = v49[i];
      v20 = v16 + (v19 * v48[i]);
      if (v20 <= 0.0)
      {
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
        }

        v33 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v47 = v9;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
          }

          v44 = 134217984;
          v45 = v9;
          v35 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 9>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 9, P = 3UL]", "CoreLocation: %s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_29;
      }

      v21 = -(v19 * v17);
      v17 = 1.0 / v20;
      v22 = sub_19B606DFC(a2, i);
      v23 = 0;
      *v22 = (v16 * (1.0 / v20)) * *v22;
      do
      {
        v24 = *sub_19B606A74((a2 + 9), v23, i);
        v25 = v48[v23];
        v26 = sub_19B606A74((a2 + 9), v23, i);
        v27 = v48[i];
        *v26 = v24 + (v25 * v21);
        v48[v23++] = v25 + (v27 * v24);
      }

      while (i != v23);
      v16 = v20;
    }

    v28 = 0;
    v29 = v17 * sub_19B5D6144(a5, v9);
    do
    {
      v30 = v48[v28];
      v31 = sub_19B607380(&v41, v28);
      *v31 = *v31 + (v29 * v30);
      ++v28;
    }

    while (v28 != 9);
    if (++v9 == 3)
    {
      v32 = v42;
      *a1 = v41;
      *(a1 + 16) = v32;
      *(a1 + 32) = v43;
      goto LABEL_29;
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
  }

  v37 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v47 = v9;
    _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v38 = sub_19B420058();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v44 = 134217984;
    v45 = v9;
    v39 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 9>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 9, P = 3UL]", "CoreLocation: %s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
LABEL_29:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_19B601CE8(uint64_t a1, float a2, float a3)
{
  v6 = 0;
  *&v11[0] = *(a1 + 16);
  DWORD2(v11[0]) = *(a1 + 24);
  do
  {
    *(v11 + v6) = -*(v11 + v6);
    v6 += 4;
  }

  while (v6 != 12);
  v7 = 0;
  v12 = *&v11[0];
  v13 = DWORD2(v11[0]);
  memset(v11, 0, 108);
  do
  {
    *sub_19B6013F4(v11, v7, v7 + 3) = 1065353216;
    ++v7;
  }

  while (v7 != 3);
  v8 = (((a2 * 0.021638) * a2) + (a2 * 0.0000009617)) + (((a2 * 0.021638) * a2) + (a2 * 0.0000009617));
  if (v8 <= ((a2 * a3) * a2))
  {
    v8 = (a2 * a3) * a2;
  }

  *v10 = v8;
  *&v10[1] = v8;
  *&v10[2] = v8;
  sub_19B601780(v9, (a1 + 10504), v11, v10, &v12);
  sub_19B6009AC(a1, v9);
}

uint64_t sub_19B601E04(uint64_t a1, float32x2_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v104 = *MEMORY[0x1E69E9840];
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v10.f32[0] = sub_19B66BFF4(a2 + 3, 0);
  *buf = v10.i32[0];
  *&buf[4] = v11;
  *&buf[8] = v12;
  *&buf[12] = v13;
  v14 = 0;
  v84.i32[0] = sub_19B66BF70(a1 + 28, buf, v10);
  v84.i32[1] = v15;
  v85 = v16;
  v86 = v17;
  do
  {
    v18 = sub_19B5D6144(a3 + 20, v14);
    v19 = v18 - sub_19B5D6144(a2, v14);
    *sub_19B5BC0F0(&v81, v14) = v19;
    *sub_19B602590(v87, v14, v14) = 1065353216;
    *sub_19B602590(v87, v14 + 3, v14 + 6) = 1065353216;
    ++v14;
  }

  while (v14 != 3);
  v20.f32[0] = sub_19B66C1A4(&v84, v81, v82, v83);
  v81 = v20.f32[0];
  v82 = v21;
  v83 = v22;
  v23.f32[0] = sub_19B66BFF4(a2 + 3, v20);
  *buf = v23.i32[0];
  *&buf[4] = v24;
  *&buf[8] = v25;
  *&buf[12] = v26;
  v27.f32[0] = sub_19B66BF70(a3, buf, v23);
  v80.i64[0] = __PAIR64__(v28, v27.u32[0]);
  v80.i64[1] = __PAIR64__(v30, v29);
  v31.f32[0] = sub_19B66BF70(&v84, v80.f32, v27);
  *buf = v31.i32[0];
  *&buf[4] = v32;
  *&buf[8] = v33;
  *&buf[12] = v34;
  v35.f32[0] = sub_19B66BFF4(&v84, v31);
  v90 = v35.i32[0];
  v91 = __PAIR64__(v37, v36);
  v92[0] = v38;
  v39 = sub_19B66BF70(buf, &v90, v35);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v80.i64[0] = __PAIR64__(LODWORD(v40), LODWORD(v39));
  v80.i64[1] = __PAIR64__(LODWORD(v44), LODWORD(v42));
  v46 = sub_19B66C31C(&v80);
  v47 = 0;
  *v79 = v46;
  v79[1] = v48;
  v79[2] = v49;
  v50 = 0.0;
  do
  {
    v50 = v50 + (*&v79[v47] * *&v79[v47]);
    ++v47;
  }

  while (v47 != 3);
  *(a1 + 10360) = vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(((v39 * v41) - (v45 * v43)) + ((v39 * v41) - (v45 * v43)), (((v43 * v43) + (v39 * v39)) * -2.0) + 1.0)), COERCE_UNSIGNED_INT(sqrtf(v50))), 0xC2652EE142652EE1);
  v51 = ((v39 * v45) + (v41 * v43)) + ((v39 * v45) + (v41 * v43));
  v52 = -1.0;
  v53 = v51 <= -1.0;
  v54 = v51 < 1.0 || v51 <= -1.0;
  if (v51 >= 1.0)
  {
    v53 = 1;
  }

  if (!v54)
  {
    v52 = 1.0;
  }

  if (v53)
  {
    v51 = v52;
  }

  v55 = 0;
  *(a1 + 10368) = asinf(v51) * 57.296;
  do
  {
    v56 = *sub_19B5BC0F0(&v81, v55);
    *sub_19B60291C(v89, v55) = v56;
    v57 = sub_19B5D6144(v79, v55);
    *sub_19B60291C(v89, v55 + 3) = v57;
    ++v55;
  }

  while (v55 != 3);
  v58 = 0;
  v59 = 0.0;
  do
  {
    v59 = v59 + (*(&v81 + v58) * *(&v81 + v58));
    v58 += 4;
  }

  while (v58 != 12);
  if (sqrtf(v59) <= 0.04 && *(a1 + 10360) <= 4.0)
  {
    *(a1 + 10344) = a5;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v64 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v65 = *(a1 + 10344);
      *buf = 134217984;
      *&buf[4] = v65;
      _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_DEFAULT, "[CMRelDMSensorFusionMekf] Converged to anchor, fLastConvergedToAnchorTimestamp: %llu ... .", buf, 0xCu);
    }

    v66 = sub_19B420058();
    if (*(v66 + 160) > 1 || *(v66 + 164) > 1 || *(v66 + 168) > 1 || *(v66 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v67 = *(a1 + 10344);
      v90 = 134217984;
      v91 = v67;
      goto LABEL_42;
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v60 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v61 = *(a1 + 10344);
      *buf = 134218240;
      *&buf[4] = v61;
      *&buf[12] = 2048;
      *&buf[14] = a5;
      _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_DEFAULT, "[CMRelDMSensorFusionMekf] NOT-Converged to anchor, fLastConvergedToAnchorTimestamp: %llu, timestamp: %llu.", buf, 0x16u);
    }

    v62 = sub_19B420058();
    if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v63 = *(a1 + 10344);
      v90 = 134218240;
      v91 = v63;
      LOWORD(v92[0]) = 2048;
      *(v92 + 2) = a5;
LABEL_42:
      v68 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMSensorFusionMekf::anchorMeasurementUpdate(const State &, const AnchorData &, BOOL, uint64_t)", "CoreLocation: %s\n", v68);
      if (v68 != buf)
      {
        free(v68);
      }
    }
  }

  v69 = atan2f(*(a3 + 36), *(a3 + 44));
  if (v69 <= 0.0)
  {
    v69 = -v69;
  }

  v75[0] = *(a3 + 32);
  v75[1] = v75[0];
  v75[2] = v75[0];
  v76 = (((((((v69 * 57.296) * 0.01817) + (((v69 * 57.296) * (v69 * 57.296)) * 0.00008261)) + 1.285) * 0.00030462) + (((((v69 * 57.296) * 0.050494) + (((v69 * 57.296) * (v69 * 57.296)) * 0.001676)) + 0.41393) * 0.00030462)) * 0.25) + 0.0002514;
  v77 = v76;
  v78 = v76;
  if (a4)
  {
    v94 = *(a1 + 10716);
    v70 = *(a1 + 10700);
    *buf = *(a1 + 10684);
    *&buf[16] = v70;
    v100 = *(a1 + 10800);
    v101 = *(a1 + 10816);
    v102 = *(a1 + 10832);
    v103 = *(a1 + 10848);
    v96 = *(a1 + 10736);
    v97 = *(a1 + 10752);
    v98 = *(a1 + 10768);
    v99 = *(a1 + 10784);
    v95 = *(a1 + 10720);
    sub_19B602B14(&v90, buf, v87, v75, v89);
    sub_19B6009AC(a1, &v90);
    *(a1 + 44) = *(a1 + 28);
  }

  else
  {
    sub_19B602B14(&v90, (a1 + 10504), v87, v75, v89);
    sub_19B6009AC(a1, &v90);
  }

  result = sub_19B6060E4((a1 + 1352), *(a1 + 1354) - 1);
  if (a1 + 4 != result)
  {
    v72 = *(a1 + 4);
    *(result + 8) = *(a1 + 12);
    *result = v72;
    v73 = *(a1 + 16);
    *(result + 20) = *(a1 + 24);
    *(result + 12) = v73;
    *(result + 24) = *(a1 + 28);
    *(result + 40) = *(a1 + 44);
  }

  v74 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B602590(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 6)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 6;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 6, 9>::operator()(size_t, size_t) [T = float, M = 6, N = 9]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 6, 9>::operator()(size_t, size_t) [T = float, M = 6, N = 9]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1 + 4 * (a2 + 6 * a3);
}

uint64_t sub_19B60291C(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 6)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 6;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 6>::operator[](const size_t) [T = float, N = 6]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 + 4 * a2;
}

void sub_19B602B14(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v50 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  while (1)
  {
    v10 = 0;
    v11 = -1;
    do
    {
      v12 = sub_19B607578(a3, v9, v10);
      v13 = v11;
      if (v10)
      {
        do
        {
          v14 = sub_19B607578(a3, v9, v13);
          v12 = v12 + (v14 * *sub_19B606A74((a2 + 9), v13--, v10));
        }

        while (v13 != -1);
      }

      v49[v10] = v12;
      v48[v10] = v12 * *sub_19B606DFC(a2, v10);
      ++v10;
      ++v11;
    }

    while (v10 != 9);
    v15 = sub_19B607904(a4, v9);
    v16 = v15 + (v49[0] * v48[0]);
    if (v16 <= 0.0)
    {
      break;
    }

    v17 = 1.0 / v16;
    *a2 = *a2 * ((1.0 / v16) * sub_19B607904(a4, v9));
    for (i = 1; i != 9; ++i)
    {
      v19 = v49[i];
      v20 = v16 + (v19 * v48[i]);
      if (v20 <= 0.0)
      {
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
        }

        v33 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v47 = v9;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
          }

          v44 = 134217984;
          v45 = v9;
          v35 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 9>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 9, P = 6UL]", "CoreLocation: %s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_29;
      }

      v21 = -(v19 * v17);
      v17 = 1.0 / v20;
      v22 = sub_19B606DFC(a2, i);
      v23 = 0;
      *v22 = (v16 * (1.0 / v20)) * *v22;
      do
      {
        v24 = *sub_19B606A74((a2 + 9), v23, i);
        v25 = v48[v23];
        v26 = sub_19B606A74((a2 + 9), v23, i);
        v27 = v48[i];
        *v26 = v24 + (v25 * v21);
        v48[v23++] = v25 + (v27 * v24);
      }

      while (i != v23);
      v16 = v20;
    }

    v28 = 0;
    v29 = v17 * sub_19B607904(a5, v9);
    do
    {
      v30 = v48[v28];
      v31 = sub_19B607380(&v41, v28);
      *v31 = *v31 + (v29 * v30);
      ++v28;
    }

    while (v28 != 9);
    if (++v9 == 6)
    {
      v32 = v42;
      *a1 = v41;
      *(a1 + 16) = v32;
      *(a1 + 32) = v43;
      goto LABEL_29;
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
  }

  v37 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v47 = v9;
    _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v38 = sub_19B420058();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v44 = 134217984;
    v45 = v9;
    v39 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 9>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 9, P = 6UL]", "CoreLocation: %s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
LABEL_29:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_19B60307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf] Already initialized", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMSensorFusionMekf::initialize(const IMUData &, const IMUData &, const Pose &, uint64_t)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = *(a4 + 8);
    *(a1 + 4) = *a4;
    v12 = (a1 + 4);
    *(a1 + 12) = v11;
    *(a1 + 20) = 0;
    *(a1 + 28) = *(a4 + 12);
    *(a1 + 44) = *(a4 + 12);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *buf = 0u;
    v16 = 0u;
    do
    {
      if (v10 > 2)
      {
        v13 = sub_19B6001C0(buf, v10, v10);
        if (v10 > 5)
        {
          *v13 = 983545103;
        }

        else
        {
          *v13 = 992204554;
        }
      }

      else
      {
        *sub_19B6001C0(buf, v10, v10) = 1008981770;
      }

      ++v10;
    }

    while (v10 != 9);
    sub_19B60054C(a1 + 10504, buf);
    sub_19B603328((a1 + 64), v12, a5);
    *a1 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B603328(unsigned __int16 *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_19B606300(a1 + 644, a2);
  v6 = a1[1];
  v7 = *(a1 + 1);
  v8 = *a1;
  if (v8 + v6 >= v7)
  {
    v9 = *(a1 + 1);
  }

  else
  {
    v9 = 0;
  }

  *&a1[4 * (v8 + v6 - v9) + 4] = a3;
  if (v7 <= v6)
  {
    if (v8 + 1 < v7)
    {
      LOWORD(v7) = 0;
    }

    *a1 = v8 + 1 - v7;
  }

  else
  {
    a1[1] = v6 + 1;
  }

  return result;
}

void sub_19B6033A0(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v7 = *(a1 + 66);
    if (*(a1 + 66))
    {
      *(a1 + 10320) = 0xFFFFFFFFLL;
      *(a1 + 10328) = 0;
      if (v7 <= 0x32)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 - 50;
      }

      v10 = a1 + 72;
      v11 = v7 - 1;
      v12 = v7 - 1 + *(a1 + 64);
      v13 = *(a1 + 68);
      if (v12 < v13)
      {
        v13 = 0;
      }

      v14 = *(v10 + 8 * (v12 - v13));
      if (v14 <= a4)
      {
        if (v14 + 10000 > a4)
        {
          goto LABEL_58;
        }

        if ((v14 + 500000.0) <= a4)
        {
          goto LABEL_86;
        }

        *(a1 + 10328) = 1;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }

        v24 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 64) + *(a1 + 66) - 1;
          v26 = *(a1 + 68);
          if (v25 < v26)
          {
            v26 = 0;
          }

          v27 = *(v10 + 8 * (v25 - v26));
          *buf = 134349312;
          *&buf[4] = a4;
          *&buf[12] = 2050;
          *&buf[14] = v27;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf][hasValidStateAtAnchorTime] Anchor time is ahead of current state time. anchorTime=%{public}llu, newestStateTime=%{public}llu", buf, 0x16u);
        }

        v28 = sub_19B420058();
        if (*(v28 + 160) <= 1 && *(v28 + 164) <= 1 && *(v28 + 168) <= 1 && !*(v28 + 152))
        {
          goto LABEL_86;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }

        v29 = *(a1 + 64) + *(a1 + 66) - 1;
        v30 = *(a1 + 68);
        if (v29 < v30)
        {
          v30 = 0;
        }

        v63 = *(v10 + 8 * (v29 - v30));
      }

      else
      {
        if (*sub_19B607AFC((a1 + 64), v9) <= a4)
        {
          v31 = *(a1 + 66) - 1;
          v32 = v31 + *(a1 + 64);
          v33 = *(a1 + 68);
          if (v32 < v33)
          {
            v33 = 0;
          }

          v34 = *(a1 + 1354) - vcvtps_u32_f32((*(v10 + 8 * (v32 - v33)) - a4) / 5000.0) + 2;
          if (v34 >= v31)
          {
            v35 = *(a1 + 66) - 1;
          }

          else
          {
            v35 = v34;
          }

          while (v35 + 1 > v9)
          {
            v36 = sub_19B607AFC((a1 + 64), v35--);
            if (*v36 <= a4)
            {
              v37 = a4 - *sub_19B607AFC((a1 + 64), v35 + 1);
              if (v37 <= *sub_19B607AFC((a1 + 64), v35 + 2) - a4)
              {
                v11 = v35 + 1;
              }

              else
              {
                v11 = v35 + 2;
              }

              goto LABEL_58;
            }
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
          }

          v39 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            v40 = *(a1 + 64) + *(a1 + 66) - 1;
            v41 = *(a1 + 68);
            if (v40 < v41)
            {
              v41 = 0;
            }

            v42 = *(v10 + 8 * (v40 - v41));
            *buf = 134349312;
            *&buf[4] = a4;
            *&buf[12] = 2050;
            *&buf[14] = v42;
            _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf][hasValidStateAtAnchorTime] Failed to find a valid state idx. anchorTime=%{public}llu, newestStateTime=%{public}llu", buf, 0x16u);
          }

          v43 = sub_19B420058();
          if ((*(v43 + 160) & 0x80000000) != 0 && (*(v43 + 164) & 0x80000000) != 0 && (*(v43 + 168) & 0x80000000) != 0 && !*(v43 + 152))
          {
            goto LABEL_86;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
          }

          v44 = *(a1 + 64) + *(a1 + 66) - 1;
          v45 = *(a1 + 68);
          if (v44 < v45)
          {
            v45 = 0;
          }

          v46 = *(v10 + 8 * (v44 - v45));
          v47 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMSensorFusionMekf::StateHistory::hasValidStateAtAnchorTime(uint64_t)", "CoreLocation: %s\n");
LABEL_84:
          if (v47 != buf)
          {
            free(v47);
          }

LABEL_86:
          if (*(a1 + 10328) == 1)
          {
            v50 = *(a1 + 10404);
            v51 = *(a1 + 10400) + *(a1 + 10402);
            if (v51 < v50)
            {
              v50 = 0;
            }

            v52 = (a1 + 48 * (v51 - v50) + 10408);
            v53 = *a2;
            v54 = *(a2 + 32);
            v52[1] = *(a2 + 16);
            v52[2] = v54;
            *v52 = v53;
            v55 = *(a1 + 10402);
            v56 = *(a1 + 10404);
            if (v56 <= v55)
            {
              v57 = *(a1 + 10400) + 1;
              if (v57 < v56)
              {
                LOWORD(v56) = 0;
              }

              *(a1 + 10400) = v57 - v56;
            }

            else
            {
              *(a1 + 10402) = v55 + 1;
            }

            v58 = *(a1 + 10378);
            v59 = *(a1 + 10380);
            v60 = *(a1 + 10376);
            if (v60 + v58 >= v59)
            {
              v61 = *(a1 + 10380);
            }

            else
            {
              v61 = 0;
            }

            *(a1 + 8 * (v60 + v58 - v61) + 10384) = a4;
            if (v59 <= v58)
            {
              if (v60 + 1 < v59)
              {
                LOWORD(v59) = 0;
              }

              *(a1 + 10376) = v60 + 1 - v59;
            }

            else
            {
              *(a1 + 10378) = v58 + 1;
            }
          }

          goto LABEL_102;
        }

        v15 = *sub_19B607AFC((a1 + 64), v9) - a4;
        if (v15 >> 4 < 0x271)
        {
          v11 = 0;
LABEL_58:
          *(a1 + 10320) = v11;
          *(a1 + 10376) = 0;
          *(a1 + 10400) = 0;
          v38 = sub_19B6045F8(a1 + 64, v11);
          sub_19B601E04(a1, v38, a2, (a3 & 0xFFFFFFFD) == 1, a4);
          *(a1 + 10336) = a4;
          goto LABEL_102;
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }

        v48 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          *&buf[4] = a4;
          *&buf[12] = 2050;
          *&buf[14] = v15;
          _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_DEFAULT, "[CMRelDMSensorFusionMekf][hasValidStateAtAnchorTime] Anchor is too old. anchorTime=%{public}llu, deltaT%{public}llu", buf, 0x16u);
        }

        v49 = sub_19B420058();
        if (*(v49 + 160) <= 1 && *(v49 + 164) <= 1 && *(v49 + 168) <= 1 && !*(v49 + 152))
        {
          goto LABEL_86;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }
      }

      v47 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMSensorFusionMekf::StateHistory::hasValidStateAtAnchorTime(uint64_t)", "CoreLocation: %s\n");
      goto LABEL_84;
    }
  }

  v16 = 0;
  v17 = *(a2 + 28);
  *(a1 + 4) = *(a2 + 20);
  *(a1 + 12) = v17;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = *a2;
  *(a1 + 44) = *a2;
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  memset(buf, 0, sizeof(buf));
  do
  {
    v18 = *(a2 + 32);
    v19 = *(a2 + 16);
    if (v16 < 6)
    {
      v19 = 0.0009;
    }

    if (v16 >= 3)
    {
      v20 = v19;
    }

    else
    {
      v20 = *(a2 + 32);
    }

    *sub_19B6001C0(buf, v16, v16) = v20;
    ++v16;
  }

  while (v16 != 9);
  sub_19B60054C(a1 + 10504, buf);
  *(a1 + 64) = 0;
  *(a1 + 1352) = 0;
  sub_19B603328((a1 + 64), (a1 + 4), a4);
  *a1 = 1;
  *(a1 + 10336) = a4;
  *(a1 + 10344) = a4;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
  }

  v21 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = a4;
    _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "[CMRelDMSensorFusionMekf][feedAnchorData] Initialize with anchor. anchorTime=%{public}llu", buf, 0xCu);
  }

  v22 = sub_19B420058();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v23 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMSensorFusionMekf::feedAnchorData(const AnchorData &, TrackingScheme, uint64_t)", "CoreLocation: %s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

LABEL_102:
  v62 = *MEMORY[0x1E69E9840];
}

void sub_19B603D8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, double a6, float a7)
{
  v13 = *(a2 + 48);
  if (v13 && (v14 = *(a3 + 48)) != 0)
  {
    v15 = ((*(a2 + 52) + *(a3 + 52)) * 9.8067) * 9.8067;
    if (a4 == 2 && (v13 == 1 ? (v16 = v14 == 1) : (v16 = 0), v16))
    {
      v17 = a6;
      sub_19B601CE8(a1, v17, ((*(a2 + 52) + *(a3 + 52)) * 9.8067) * 9.8067);
    }

    else
    {
      if (a4 == 1)
      {
        return;
      }

      v17 = a6;
    }

    sub_19B600C70(a1, (a2 + 12), (a3 + 12), a5, v17, v15);
  }

  else if (a7 > 0.0 && a4 != 1)
  {
    v19 = a6;
    sub_19B600C70(a1, (a2 + 24), (a3 + 24), a5, v19, a7);
    if (a4 == 2)
    {

      sub_19B601CE8(a1, v19, a7);
    }
  }
}

void sub_19B603EEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, double a6, float a7)
{
  sub_19B603D8C(a1, a2, a3, a4, a5, a6, a7);
  sub_19B603328((a1 + 64), (a1 + 4), a5);

  sub_19B603F54(a1, (a4 & 0xFFFFFFFD) == 1, a5);
}

void sub_19B603F54(uint64_t a1, int a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 0x2000);
  if (*(a1 + 10378))
  {
    if ((v6 = *(a1 + 8 * *(a1 + 10376) + 10384), v6 >= a3) && (v6 - a3) >> 3 < 0x271 || a3 >= v6 && (a3 - v6) >> 3 <= 0x270)
    {
      sub_19B601E04(a1, (a1 + 4), a1 + 48 * *(a1 + 10400) + 10408, a2, v6);
      *(a1 + 10336) = a3;
      v7 = v3[1093];
      if (v7)
      {
        v8 = v3[1092] + 1;
        v9 = *(a1 + 10380);
        if (v8 < v9)
        {
          LOWORD(v9) = 0;
        }

        v3[1092] = v8 - v9;
        v3[1093] = v7 - 1;
      }

      v10 = v3[1105];
      if (v10)
      {
        v11 = v3[1104] + 1;
        v12 = *(a1 + 10404);
        if (v11 < v12)
        {
          LOWORD(v12) = 0;
        }

        v3[1104] = v11 - v12;
        v3[1105] = v10 - 1;
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v13 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v18 = a3;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf] Consumed cached anchor. timestamp %llu", buf, 0xCu);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }

        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMSensorFusionMekf::processCachedAnchorMeasurements(BOOL, uint64_t)", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B6041DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v4 = *(a2 + 8);
    *(a1 + 4) = *a2;
    v5 = (a1 + 4);
    *(a1 + 12) = v4;
    *(a1 + 28) = *(a2 + 12);
    v6 = *(a2 + 12);
    *(a1 + 64) = 0;
    v7 = a1 + 64;
    *(v7 - 20) = v6;
    *(v7 + 1288) = 0;
    v8 = *MEMORY[0x1E69E9840];

    sub_19B603328(v7, v5, a3);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v9 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Must be initialized before bleeding to zero", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::bleedToZero(const Pose &, uint64_t)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

void sub_19B6043EC(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v2 = *(a1 + 1354);
    if (v2 >= 0x28)
    {
      v3 = v2 - 40;
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_19B6045F8(a1 + 64, v3);
    *buf = *(v4 + 24);
    v5.f32[0] = sub_19B66BFF4((v4 + 40), *buf);
    v20[0] = v5.f32[0];
    v20[1] = v6;
    v20[2] = v7;
    v20[3] = v8;
    v9.f32[0] = sub_19B66BF70(a1 + 44, v20, v5);
    v21[0] = v9.i32[0];
    v21[1] = v10;
    v21[2] = v11;
    v21[3] = v12;
    *(a1 + 44) = sub_19B66BF70(v21, buf, v9);
    *(a1 + 48) = v13;
    *(a1 + 52) = v14;
    *(a1 + 56) = v15;
    *(a1 + 64) = 0;
    *(a1 + 1352) = 0;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v16 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Must be initialized before entering 1-IMU tracking mode", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      LOWORD(v21[0]) = 0;
      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::enter1IMUTracking()", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6045F8(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1290) <= a2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[StateHistory::getState] Invalid idx, returning latest index.", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const State &CMRelDMSensorFusionMekf::StateHistory::getState(size_t) const", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    result = sub_19B6060E4((a1 + 1288), *(a1 + 1290) - 1);
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];
    v4 = (a1 + 1288);

    return sub_19B6060E4(v4, a2);
  }

  return result;
}

void sub_19B604800(uint64_t a1, uint64_t a2, int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v5 = *(a1 + 1354);
    v6 = v5 - 160;
    if (v5 < 0xA0)
    {
      v6 = 0;
    }

    v7 = v5 - 1;
    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = sub_19B6045F8(a1 + 64, v8);
    v10 = sub_19B604A8C(a2, v9, v9 + 5);
    v12 = v11;
    v14 = v13;
    v15 = sub_19B606534(a2);
    v16 = sub_19B66C1A4(v15, v10, v12, v14);
    v29 = v17;
    v30 = v16;
    v19 = v18;
    v20 = sub_19B606380(a2);
    v21 = 0;
    v22 = v19 + v20[1].f32[0];
    *buf = vadd_f32(__PAIR64__(v29, LODWORD(v30)), *v20);
    v32 = v22;
    do
    {
      *&buf[v21] = -*&buf[v21];
      v21 += 4;
    }

    while (v21 != 12);
    *(a1 + 4) = sub_19B66C1A4(&v9[3], *buf, *&buf[4], v32);
    *(a1 + 8) = v23;
    *(a1 + 12) = v24;
    *(a1 + 64) = 0;
    *(a1 + 1352) = 0;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v25 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Must be initialized before exiting 1-IMU tracking mode", buf, 2u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::exit1IMUTracking(const BodyFaceTransform &, BOOL)", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

float sub_19B604A8C(uint64_t a1, float *a2, float32x2_t *a3)
{
  v6 = sub_19B606380(a1);
  v26 = sub_19B66BFF4(a3, v7);
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v11 = *v6 + sub_19B66C1A4(&v26, *a2, a2[1], a2[2]);
  v13 = v6[1] + v12;
  v15 = v14 + v6[2];
  v16 = sub_19B606534(a1);
  v26 = sub_19B66BFF4(v16, v17);
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v21 = sub_19B66C1A4(&v26, v11, v13, v15);
  v22 = 0;
  *v30 = v21;
  v30[1] = v23;
  v30[2] = v24;
  do
  {
    *&v30[v22] = -*&v30[v22];
    ++v22;
  }

  while (v22 != 3);
  return *v30;
}

float *sub_19B604B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_19B601068(a1, i, 0);
      v9 = v8 * sub_19B601068(a2, 0, j);
      *sub_19B5D68B8(a3, i, j) = v9;
      for (k = 1; k != 3; ++k)
      {
        v11 = sub_19B601068(a1, i, k);
        v12 = sub_19B601068(a2, k, j);
        result = sub_19B5D68B8(a3, i, j);
        *result = *result + (v11 * v12);
      }
    }
  }

  return result;
}

uint64_t sub_19B604C58(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 9, 12>::operator()(size_t, size_t) [T = float, M = 9, N = 12]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 0xC)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 12;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 9, 12>::operator()(size_t, size_t) [T = float, M = 9, N = 12]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1 + 4 * (9 * a3 + a2);
}

uint64_t sub_19B604FE4(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 0xC)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 12;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 12>::operator[](const size_t) [T = float, N = 12]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 + 4 * a2;
}

void sub_19B6051DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  v154 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v9.f32[0] = sub_19B66C1A4((a1 + 28), *a3, *(a3 + 4), *(a3 + 8));
    v11 = (*(a2 + 8) - v10) * a5;
    v9.i32[1] = v12;
    *__dst[0].f32 = vmul_n_f32(vsub_f32(*a2, v9), a5);
    __dst[0].f32[2] = v11;
    *v13.i64 = sub_19B66C264(buf, __dst[0].f32);
    *(a1 + 28) = sub_19B66BF70(buf, (a1 + 28), v13);
    *(a1 + 32) = v14;
    *(a1 + 36) = v15;
    *(a1 + 40) = v16;
    v17.f32[0] = sub_19B66C1A4((a1 + 44), *a3, *(a3 + 4), *(a3 + 8));
    v17.i32[1] = v19;
    v151[0] = vmul_n_f32(vneg_f32(v17), a5);
    *&v151[1] = -(v18 * a5);
    *v20.i64 = sub_19B66C264(__dst, v151);
    *(a1 + 44) = sub_19B66BF70(__dst, (a1 + 44), v20);
    *(a1 + 48) = v21;
    *(a1 + 52) = v22;
    *(a1 + 56) = v23;
    v24 = vmul_f32(*(a3 + 12), vdup_n_s32(0x411CE80Au));
    v25 = *(a3 + 20) * 9.8067;
    v26 = v24.f32[1];
    v145 = v24.f32[0];
    if (a4)
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    else
    {
      v30 = 0;
      v31 = *(a2 + 16);
      v32 = *(a2 + 8);
      v33 = *(a2 + 12);
      v35 = *(a1 + 20);
      v34 = *(a1 + 24);
      v36 = -v32;
      v37 = *(a2 + 4);
      v38 = -(*a2 * v34);
      v40 = *(a1 + 12);
      v39 = *(a1 + 16);
      v41 = (*a2 * v35) - (v37 * v39);
      v43 = *(a1 + 4);
      v42 = *(a1 + 8);
      v44 = (v37 * v40) - (v32 * v42);
      v45 = (v32 * v43) - (*a2 * v40);
      v46 = (*a2 * v45) - (v37 * v44);
      buf[0].i64[0] = __PAIR64__((v32 * v44) - (*a2 * ((*a2 * v42) - (v37 * v43))), (v37 * ((*a2 * v42) - (v37 * v43))) - (v32 * v45));
      buf[0].f32[2] = v46;
      do
      {
        buf[0].f32[v30] = -buf[0].f32[v30];
        ++v30;
      }

      while (v30 != 3);
      v47 = vmul_f32(v31, vdup_n_s32(0x411CE80Au));
      v48.f32[0] = v38 + (v32 * v39);
      v49 = v33 * 9.8067;
      v50 = buf[0].f32[0] - (((v35 * v36) + (v37 * v34)) + ((v35 * v36) + (v37 * v34)));
      v48.f32[1] = v41;
      v51 = vadd_f32(v48, v48);
      v52 = *&buf[0].i32[1];
      v53 = sub_19B66C1A4((a1 + 28), v24.f32[0], v24.f32[1], v25);
      v55.i32[1] = v54;
      v56.i64[0] = *(a1 + 20);
      v57 = *(a1 + 4);
      v58 = vdupq_laneq_s32(v57, 3);
      v59 = vextq_s8(vextq_s8(v58, v58, 4uLL), v56, 0xCuLL);
      v59.f32[3] = v50 - (v49 - v53);
      *(a1 + 4) = vaddq_f32(v57, vmulq_n_f32(v59, a5));
      *(a1 + 20) = vadd_f32(*v56.i8, vmul_n_f32(vsub_f32(vsub_f32(v52, v51), vsub_f32(v47, v55)), a5));
    }

    memset(__src, 0, sizeof(__src));
    v60 = *a2;
    buf[0].i32[0] = 0;
    v61 = *(a2 + 4);
    buf[0].i32[1] = v61.i32[1];
    *&buf[0].u32[2] = vneg_f32(v61);
    buf[1].i32[0] = 0;
    *(buf[1].i64 + 4) = __PAIR64__(v61.u32[0], LODWORD(v60));
    buf[1].f32[3] = -v60;
    buf[2].i32[0] = 0;
    if ((a4 & 1) == 0)
    {
      for (i = 0; i != 3; ++i)
      {
        *sub_19B6001C0(__src, i, i + 3) = 1065353216;
      }

      v63 = sub_19B66C1A4((a1 + 28), v145, v26, v25);
      __dst[0].i32[0] = 0;
      __dst[0].f32[1] = v65;
      __dst[0].f32[2] = -*&v64;
      __dst[0].f32[3] = -v65;
      __dst[1].i32[0] = 0;
      *(__dst[1].i64 + 4) = __PAIR64__(v64, LODWORD(v63));
      __dst[1].f32[3] = -v63;
      __dst[2].i32[0] = 0;
      sub_19B604B68(buf, buf, v151);
      do
      {
        for (j = 0; j != 3; ++j)
        {
          v67 = -sub_19B601068(v151, i - 3, j);
          *sub_19B6001C0(__src, i, j) = v67;
        }

        for (k = 0; k != 3; ++k)
        {
          v69 = sub_19B601068(buf, i - 3, k) * -2.0;
          *sub_19B6001C0(__src, i, k + 3) = v69;
        }

        for (m = 0; m != 3; ++m)
        {
          v71 = sub_19B601068(__dst, i - 3, m);
          *sub_19B6001C0(__src, i, m + 6) = v71 + v71;
        }

        ++i;
      }

      while (i != 6);
    }

    for (n = 6; n != 9; ++n)
    {
      for (ii = 0; ii != 3; ++ii)
      {
        v74 = -sub_19B601068(buf, n - 6, ii);
        *sub_19B6001C0(__src, n, ii + 6) = v74;
      }
    }

    v75 = 0;
    memset(v148, 0, sizeof(v148));
    v149 = 0;
    do
    {
      *sub_19B6001C0(v148, v75, v75) = 1065353216;
      ++v75;
    }

    while (v75 != 9);
    memcpy(buf, __src, 0x144uLL);
    for (jj = 0; jj != 81; ++jj)
    {
      buf[0].f32[jj] = buf[0].f32[jj] * a5;
    }

    for (kk = 0; kk != 81; ++kk)
    {
      *(v148 + kk) = sub_19B607D14(buf, kk) + *(v148 + kk);
    }

    for (mm = 0; mm != 9; ++mm)
    {
      for (nn = 0; nn != 9; ++nn)
      {
        v80 = sub_19B6066E8(__src, mm, 0);
        v81 = v80 * sub_19B6066E8(__src, 0, nn);
        *sub_19B6001C0(v151, mm, nn) = v81;
        for (i1 = 1; i1 != 9; ++i1)
        {
          v83 = sub_19B6066E8(__src, mm, i1);
          v84 = sub_19B6066E8(__src, i1, nn);
          v85 = sub_19B6001C0(v151, mm, nn);
          *v85 = *v85 + (v83 * v84);
        }
      }
    }

    for (i2 = 0; i2 != 324; i2 += 4)
    {
      *(v151 + i2) = ((a5 * 0.5) * a5) * *(v151 + i2);
    }

    memcpy(__dst, v151, 0x144uLL);
    for (i3 = 0; i3 != 81; ++i3)
    {
      *(v148 + i3) = sub_19B607D14(__dst, i3) + *(v148 + i3);
    }

    memset(__dst, 0, sizeof(__dst));
    sub_19B66D368((a1 + 28), buf[0].f32, 1.0);
    v88 = 0;
    v89 = *(a1 + 16);
    LODWORD(v151[0]) = 0;
    v90 = *(a1 + 20);
    HIDWORD(v151[0]) = v90.i32[1];
    v151[1] = vneg_f32(v90);
    LODWORD(v151[2]) = 0;
    *(&v151[2] + 1) = v89;
    LODWORD(v151[3]) = v90.i32[0];
    *(&v151[3] + 1) = -v89;
    LODWORD(v151[4]) = 0;
    do
    {
      if ((a4 & 1) == 0)
      {
        v91 = 0;
        *sub_19B604C58(__dst, v88 + 3, v88) = -1082130432;
        do
        {
          v92 = sub_19B601068(buf, v88, v91);
          *sub_19B604C58(__dst, v88 + 3, v91 + 3) = v92;
          v93 = sub_19B601068(v151, v88, v91);
          *sub_19B604C58(__dst, v88 + 3, v91 + 6) = v93 + v93;
          ++v91;
        }

        while (v91 != 3);
      }

      *sub_19B604C58(__dst, v88 + 6, v88 + 6) = 1056964608;
      *sub_19B604C58(__dst, v88 + 6, v88 + 9) = -1090519040;
      ++v88;
    }

    while (v88 != 3);
    v94 = 0;
    v95 = *(a2 + 20) * 9.8067;
    v96 = vdup_n_s32(0x411CE80Au);
    v151[0] = vmul_f32(*(a2 + 12), v96);
    *&v151[1] = v95;
    v97 = *(a3 + 20) * 9.8067;
    *v152 = vmul_f32(*(a3 + 12), v96);
    *&v152[8] = v97;
    v98 = (a5 * 0.021638) + 0.0000009617;
    do
    {
      v99 = sub_19B5D6144(v151, v94) * 0.0001;
      v100 = v98 + ((v99 * sub_19B5D6144(v151, v94)) * a5);
      *sub_19B604FE4(buf, v94) = v100;
      v101 = sub_19B5D6144(v152, v94) * 0.0001;
      v102 = v98 + ((v101 * sub_19B5D6144(v152, v94)) * a5);
      *sub_19B604FE4(buf, v94 + 3) = v102;
      v103 = (sub_19B5D6144(a2 + 36, v94) / 50.0) + 0.000000019496;
      v104 = sub_19B5D6144(a2, v94) * 0.0004;
      v105 = v103 + ((v104 * sub_19B5D6144(a2, v94)) * a5);
      *sub_19B604FE4(buf, v94 + 6) = v105;
      v106 = (sub_19B5D6144(a3 + 36, v94) / 50.0) + 0.000000019496;
      v107 = sub_19B5D6144(a3, v94) * 0.0004;
      v108 = v106 + ((v107 * sub_19B5D6144(a3, v94)) * a5);
      *sub_19B604FE4(buf, v94 + 9) = v108;
      ++v94;
    }

    while (v94 != 3);
    v109 = 0;
    v110 = vmulq_n_f32(buf[1], a5);
    v111 = vmulq_n_f32(buf[2], a5);
    *(a1 + 10864) = vmulq_n_f32(buf[0], a5);
    *(a1 + 10880) = v110;
    *(a1 + 10896) = v111;
    do
    {
      v112 = 8;
      do
      {
        for (i4 = 0; i4 != v112; ++i4)
        {
          v114 = *sub_19B6001C0(v148, v109, i4);
          v115 = *sub_19B606A74(a1 + 10540, i4, v112);
          v116 = sub_19B6001C0(v148, v109, v112);
          *v116 = *v116 + (v114 * v115);
        }

        --v112;
      }

      while (v112);
      ++v109;
    }

    while (v109 != 9);
    for (i5 = 8; ; --i5)
    {
      v118 = 0;
      *(v151 + i5) = 0;
      v119 = 0.0;
      do
      {
        v120 = *sub_19B6001C0(v148, i5, v118);
        v121 = v120 * *sub_19B6001C0(v148, i5, v118);
        v119 = v119 + (v121 * *sub_19B606DFC(a1 + 10504, v118));
        *(v151 + i5) = v119;
        ++v118;
      }

      while (v118 != 9);
      for (i6 = 0; i6 != 12; ++i6)
      {
        v123 = *sub_19B604C58(__dst, i5, i6);
        v124 = v123 * *sub_19B604C58(__dst, i5, i6);
        v119 = v119 + (v124 * sub_19B607F0C(a1 + 10864, i6));
        *(v151 + i5) = v119;
      }

      if (v119 <= 0.0)
      {
        break;
      }

      if (!i5)
      {
        do
        {
          v143 = *(v151 + i5);
          *sub_19B606DFC(a1 + 10504, i5++) = v143;
        }

        while (i5 != 9);
        goto LABEL_93;
      }

      for (i7 = 0; i7 != i5; ++i7)
      {
        v126 = 0;
        v127 = 0.0;
        do
        {
          v128 = *sub_19B6001C0(v148, i7, v126);
          v129 = v128 * *sub_19B606DFC(a1 + 10504, v126);
          v127 = v127 + (v129 * *sub_19B6001C0(v148, i5, v126++));
        }

        while (v126 != 9);
        for (i8 = 0; i8 != 12; ++i8)
        {
          v131 = *sub_19B604C58(__dst, i7, i8);
          v132 = v131 * sub_19B607F0C(a1 + 10864, i8);
          v127 = v127 + (v132 * *sub_19B604C58(__dst, i5, i8));
        }

        v133 = 0;
        *sub_19B606A74(a1 + 10540, i7, i5) = v127 / v119;
        do
        {
          v134 = *sub_19B606A74(a1 + 10540, i7, i5);
          v135 = *sub_19B6001C0(v148, i5, v133);
          v136 = sub_19B6001C0(v148, i7, v133);
          *v136 = *v136 - (v134 * v135);
          ++v133;
        }

        while (v133 != 9);
        for (i9 = 0; i9 != 12; ++i9)
        {
          v138 = *sub_19B606A74(a1 + 10540, i7, i5);
          v139 = *sub_19B604C58(__dst, i5, i9);
          v140 = sub_19B604C58(__dst, i7, i9);
          *v140 = *v140 - (v138 * v139);
        }
      }
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v141 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      buf[0].i32[0] = 134217984;
      *(buf[0].i64 + 4) = i5;
      _os_log_impl(&dword_19B41C000, v141, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", buf, 0xCu);
    }

    v142 = sub_19B420058();
    if (*(v142 + 160) > 1 || *(v142 + 164) > 1 || *(v142 + 168) > 1 || *(v142 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      *v152 = 134217984;
      *&v152[4] = i5;
      v29 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMFactoredMatrix<float, 9>::thorntonTemporalUpdate(CMMatrix<T, N, N> &, CMMatrix<T, N, M> &, const CMVector<T, M> &) [T = float, N = 9, M = 12UL]", "CoreLocation: %s\n");
LABEL_90:
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v27 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Must be initialized before propagating", buf, 2u);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      __dst[0].i16[0] = 0;
      v29 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::propagate(const IMUData &, const IMUData &, float, BOOL)", "CoreLocation: %s\n");
      goto LABEL_90;
    }
  }

LABEL_93:
  v144 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6060B4()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t sub_19B6060E4(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMRelDM::State>::operator[](const size_t) const [T = CMRelDM::State]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[28 * (v4 - v5) + 4];
}

uint64_t sub_19B606300(unsigned __int16 *a1, uint64_t *a2)
{
  v3 = *(a1 + 1);
  v4 = *a1 + a1[1];
  if (v4 < v3)
  {
    v3 = 0;
  }

  result = sub_19B7389C0(&a1[28 * (v4 - v3) + 4], a2);
  v6 = a1[1];
  v7 = *(a1 + 1);
  if (v7 <= v6)
  {
    v8 = *a1 + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *a1 = v8 - v7;
  }

  else
  {
    a1[1] = v6 + 1;
  }

  return result;
}

uint64_t sub_19B606380(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 28) & 1) == 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v2 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[BodyFaceTransform] BodyFaceTransform has not been set.", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const CMVector3d &CMRelDM::BodyFaceTransform::r_fb() const", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B606534(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 28) & 1) == 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v2 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[BodyFaceTransform] BodyFaceTransform has not been set.", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const CMOQuaternion &CMRelDM::BodyFaceTransform::q_bf() const", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1 + 12;
}

float sub_19B6066E8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 9>::operator()(size_t, size_t) const [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 9>::operator()(size_t, size_t) const [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  result = *(a1 + 4 * (9 * a3 + a2));
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B606A74(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 9>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 9]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 9>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 9]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_19B606DFC(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 9>::DiagonalMatrix::operator()(size_t) [T = float, N = 9]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 + 4 * a2;
}

float sub_19B606FF4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 3;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3, 9>::operator()(size_t, size_t) const [T = float, M = 3, N = 9]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3, 9>::operator()(size_t, size_t) const [T = float, M = 3, N = 9]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  result = *(a1 + 4 * (3 * a3 + a2));
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B607380(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 9>::operator[](const size_t) [T = float, N = 9]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 + 4 * a2;
}

float sub_19B607578(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 6)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 6;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 6, 9>::operator()(size_t, size_t) const [T = float, M = 6, N = 9]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 9;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 6, 9>::operator()(size_t, size_t) const [T = float, M = 6, N = 9]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  result = *(a1 + 4 * (a2 + 6 * a3));
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B607904(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 6)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 6;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 6>::operator[](const size_t) const [T = float, N = 6]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 4 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B607AFC(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<unsigned long long>::operator[](const size_t) const [T = unsigned long long]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[4 * (v4 - v5) + 4];
}

float sub_19B607D14(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 0x51)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 81;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 9>::operator[](size_t) const [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 4 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B607F0C(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 0xC)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 12;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 12>::operator[](const size_t) const [T = float, N = 12]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 4 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B608104(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = sub_19B6BC5A4(1.536);
  *(a1 + 4) = sub_19B6BC5A4(20.48);
  sub_19B7978BC(a1 + 8);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  *(a1 + 2208) = 0x8000000000;
  *(a1 + 2728) = 0x8000000000;
  *(a1 + 3248) = 0x8000000000;
  *(a1 + 3768) = 0x8000000000;
  *(a1 + 5832) = 0x300000000;
  *(a1 + 6008) = 0x8000000000;
  *(a1 + 6528) = 0x8000000000;
  *(a1 + 7048) = 0x8000000000;
  *(a1 + 7568) = 0;
  *(a1 + 4800) = 0x8000000000;
  *(a1 + 7576) = 0;
  *(a1 + 7592) = 0;
  *(a1 + 7584) = 0;
  do
  {
    v5 = v3 + v4;
    if (v5 >= 0x80)
    {
      v6 = -1024;
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 4808 + v6 + 8 * v5) = v2;
    if (v3 > 0x7F)
    {
      if (v4 >= 0x7Fu)
      {
        v7 = -128;
      }

      else
      {
        v7 = 0;
      }

      v4 += v7 + 1;
      *(a1 + 4800) = v4;
    }

    else
    {
      *(a1 + 4802) = ++v3;
    }

    v2 += 20000;
  }

  while (v2 != 2560000);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
  }

  v8 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMAccessoryWalkingDetector] Instantiating Walk Detector.", buf, 2u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryWalkingDetector::CMAccessoryWalkingDetector()", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B608394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v328 = *MEMORY[0x1E69E9840];
  v299 = sub_19B66BFF4(v8 + 7, v11);
  v300 = COERCE_DOUBLE(__PAIR64__(v13, v12));
  *v301 = v14;
  v15.f32[0] = sub_19B66C1A4(&v299, v9[3], v9[4], v9[5]);
  v16 = v15.i32[0];
  v18 = v17;
  v20 = v19;
  v299 = sub_19B66BFF4(v5, v15);
  v300 = COERCE_DOUBLE(__PAIR64__(v22, v21));
  *v301 = v23;
  v24 = sub_19B66C1A4(&v299, *v9, v9[1], v9[2]);
  v26 = v25;
  v28 = v27;
  v29 = *(v10 + 3770);
  v30 = *(v10 + 3768);
  if (*(v10 + 3770))
  {
    v31 = v10 + 3776;
    v32 = v29 + v30 - 1;
    v33 = *(v10 + 3772);
    if (v32 < v33)
    {
      v33 = 0;
    }

    if (*(v31 + 8 * (v32 - v33)) > v7 + 1000000)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
      }

      v34 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v35 = *(v10 + 3768) + *(v10 + 3770) - 1;
        v36 = *(v10 + 3772);
        if (v35 < v36)
        {
          v36 = 0;
        }

        v37 = *(v31 + 8 * (v35 - v36));
        v299 = 3.8522e-34;
        v300 = (v37 * 0.000001);
        *v301 = 2048;
        *&v301[2] = (v7 * 0.000001);
        v302 = 2048;
        v303 = ((v37 - v7) * 0.000001);
        _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_INFO, "[CMAccessoryWalkingDetector], dataBuffers reset due to timestamp going backwards. PreviousTS, %.3f seconds, currentTS, %.3f seconds, gap, %.3f seconds", &v299, 0x20u);
      }

      v38 = sub_19B420058();
      if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
      {
        bzero(&v299, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
        }

        v39 = *(v10 + 3768) + *(v10 + 3770) - 1;
        v40 = *(v10 + 3772);
        if (v39 < v40)
        {
          v40 = 0;
        }

        v41 = *(v31 + 8 * (v39 - v40));
        LODWORD(__src[0]) = 134218496;
        *(__src + 4) = (v41 * 0.000001);
        WORD2(__src[1]) = 2048;
        *(&__src[1] + 6) = (v7 * 0.000001);
        HIWORD(__src[2]) = 2048;
        *&__src[3] = ((v41 - v7) * 0.000001);
        v42 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryWalkingDetector::resetBuffersIfTimeWentFarBackward(const uint64_t)", "CoreLocation: %s\n", v42);
        if (v42 != &v299)
        {
          free(v42);
        }
      }

      LODWORD(v30) = 0;
      LODWORD(v29) = 0;
      *(v10 + 2208) = 0;
      *(v10 + 2728) = 0;
      *(v10 + 3248) = 0;
      *(v10 + 3768) = 0;
      *(v10 + 6008) = 0;
      *(v10 + 6528) = 0;
      *(v10 + 7048) = 0;
    }
  }

  v43 = v10 + 3776;
  v44 = v30;
  v45 = v30 + v29;
  v46 = *(v10 + 3772);
  if (v45 - 1 >= v46)
  {
    v47 = *(v10 + 3772);
  }

  else
  {
    v47 = 0;
  }

  if (v29 && *(v43 + 8 * (v45 - 1 - v47)) >= v7)
  {
    ++*(v10 + 7568);
    goto LABEL_314;
  }

  v48 = *(v10 + 2210);
  v49 = *(v10 + 2212);
  v50 = *(v10 + 2208);
  if (v50 + v48 >= v49)
  {
    v51 = *(v10 + 2212);
  }

  else
  {
    v51 = 0;
  }

  *(v10 + 4 * (v50 + v48 - v51) + 2216) = v16;
  if (v49 <= v48)
  {
    if (v50 + 1 < v49)
    {
      LOWORD(v49) = 0;
    }

    *(v10 + 2208) = v50 + 1 - v49;
  }

  else
  {
    *(v10 + 2210) = v48 + 1;
  }

  v52 = *(v10 + 2730);
  v53 = *(v10 + 2732);
  v54 = *(v10 + 2728);
  if (v54 + v52 >= v53)
  {
    v55 = *(v10 + 2732);
  }

  else
  {
    v55 = 0;
  }

  *(v10 + 4 * (v54 + v52 - v55) + 2736) = v18;
  if (v53 <= v52)
  {
    if (v54 + 1 < v53)
    {
      LOWORD(v53) = 0;
    }

    *(v10 + 2728) = v54 + 1 - v53;
  }

  else
  {
    *(v10 + 2730) = v52 + 1;
  }

  v56 = *(v10 + 3250);
  v57 = *(v10 + 3252);
  v58 = *(v10 + 3248);
  if (v58 + v56 >= v57)
  {
    v59 = *(v10 + 3252);
  }

  else
  {
    v59 = 0;
  }

  *(v10 + 4 * (v58 + v56 - v59) + 3256) = v20 + 1.0;
  if (v57 <= v56)
  {
    if (v58 + 1 < v57)
    {
      LOWORD(v57) = 0;
    }

    *(v10 + 3248) = v58 + 1 - v57;
  }

  else
  {
    *(v10 + 3250) = v56 + 1;
  }

  v60 = (v10 + 3768);
  if (v45 >= v46)
  {
    v61 = v46;
  }

  else
  {
    v61 = 0;
  }

  *(v43 + 8 * (v45 - v61)) = v7;
  if (v46 <= v29)
  {
    v62 = v30 + 1;
    if (v44 + 1 >= v46)
    {
      v63 = v46;
    }

    else
    {
      v63 = 0;
    }

    LOWORD(v30) = v62 - v63;
    *v60 = v30;
  }

  else
  {
    LOWORD(v29) = v29 + 1;
    *(v10 + 3770) = v29;
  }

  v64 = *(v10 + 6010);
  v65 = *(v10 + 6012);
  v66 = (v10 + 6016);
  v67 = *(v10 + 6008);
  if (v67 + v64 >= v65)
  {
    v68 = *(v10 + 6012);
  }

  else
  {
    v68 = 0;
  }

  v66[v67 + v64 - v68] = v28;
  v251 = (v10 + 2728);
  v252 = (v10 + 2208);
  v250 = (v10 + 3248);
  if (v65 <= v64)
  {
    if (v67 + 1 < v65)
    {
      LOWORD(v65) = 0;
    }

    *(v10 + 6008) = v67 + 1 - v65;
  }

  else
  {
    *(v10 + 6010) = v64 + 1;
  }

  v69 = *(v10 + 6530);
  v70 = *(v10 + 6532);
  v71 = (v10 + 6536);
  v72 = *(v10 + 6528);
  if (v72 + v69 >= v70)
  {
    v73 = *(v10 + 6532);
  }

  else
  {
    v73 = 0;
  }

  v71[v72 + v69 - v73] = v24;
  if (v70 <= v69)
  {
    if (v72 + 1 < v70)
    {
      LOWORD(v70) = 0;
    }

    *(v10 + 6528) = v72 + 1 - v70;
  }

  else
  {
    *(v10 + 6530) = v69 + 1;
  }

  v74 = *(v10 + 7050);
  v75 = *(v10 + 7052);
  v76 = (v10 + 7056);
  v77 = *(v10 + 7048);
  if (v77 + v74 >= v75)
  {
    v78 = *(v10 + 7052);
  }

  else
  {
    v78 = 0;
  }

  v76[v77 + v74 - v78] = v26;
  if (v75 <= v74)
  {
    if (v77 + 1 < v75)
    {
      LOWORD(v75) = 0;
    }

    *(v10 + 7048) = v77 + 1 - v75;
  }

  else
  {
    *(v10 + 7050) = v74 + 1;
  }

  if (v29)
  {
    v79 = v29 + v30 - 1;
    v80 = v79 >= v46 ? v46 : 0;
    v81 = *(v43 + 8 * (v79 - v80));
    v82 = sub_19B607AFC((v10 + 3768), 0);
    LODWORD(v83) = *(v10 + 3770);
    if ((v81 - *v82 - 2540001) < 0xFFFFFFFFFFD8EFFFLL || v83 == 128)
    {
      if (v83 < 2)
      {
        v84 = 0;
      }

      else
      {
        v84 = 0;
        v85 = 1;
        do
        {
          v86 = *sub_19B607AFC((v10 + 3768), v85);
          v87 = v85 - 1;
          v88 = sub_19B607AFC((v10 + 3768), v87);
          if (v86 - *v88 > v84)
          {
            v84 = v86 - *v88;
          }

          v83 = *(v10 + 3770);
          v85 = v87 + 2;
        }

        while (v85 < v83);
      }

      BYTE14(v254) = v84 > 0x493E0;
      v89 = *(v10 + 2210);
      v90.f32[0] = v89;
      v90.f32[1] = v84;
      v91 = vdiv_f32(v90, 0x497424004023D70ALL);
      v249 = v91.f32[0];
      *&v255[12] = v91;
      v255[8] = v83 < 0x80;
      if (v83 <= 0x7F)
      {
        memset(__src, 0, 24);
        if (v83)
        {
          v92 = 0;
          do
          {
            v93 = *sub_19B607AFC((v10 + 3768), v92);
            v94 = (v93 - *sub_19B607AFC((v10 + 3768), 0));
            v95 = __src[1];
            if (__src[1] >= __src[2])
            {
              v97 = __src[0];
              v98 = __src[1] - __src[0];
              v99 = (__src[1] - __src[0]) >> 2;
              v100 = v99 + 1;
              if ((v99 + 1) >> 62)
              {
                sub_19B5BE690();
              }

              v101 = __src[2] - __src[0];
              if ((__src[2] - __src[0]) >> 1 > v100)
              {
                v100 = v101 >> 1;
              }

              v102 = v101 >= 0x7FFFFFFFFFFFFFFCLL;
              v103 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v102)
              {
                v103 = v100;
              }

              if (v103)
              {
                sub_19B4C4FA8(__src, v103);
              }

              v104 = (4 * v99);
              v105 = &v104[-((__src[1] - __src[0]) >> 2)];
              *v104 = v94;
              v96 = v104 + 1;
              memcpy(v105, v97, v98);
              v106 = __src[0];
              __src[0] = v105;
              __src[1] = v96;
              __src[2] = 0;
              if (v106)
              {
                operator delete(v106);
              }
            }

            else
            {
              *__src[1] = v94;
              v96 = v95 + 4;
            }

            __src[1] = v96;
            ++v92;
          }

          while (v92 < *(v10 + 3770));
          v107 = __src[0];
        }

        else
        {
          v96 = 0;
          v107 = 0;
        }

        v293[0] = 0;
        __p = 0;
        v293[1] = 0;
        sub_19B609EBC(&__p, v107, v96, (v96 - v107) >> 2);
        sub_19B609B7C(v10, &__p, v252, 2);
        if (__p)
        {
          v293[0] = __p;
          operator delete(__p);
        }

        v291[0] = 0;
        v290 = 0;
        v291[1] = 0;
        sub_19B609EBC(&v290, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, &v290, v251, 2);
        if (v290)
        {
          v291[0] = v290;
          operator delete(v290);
        }

        v288 = 0;
        v287 = 0;
        v289 = 0;
        sub_19B609EBC(&v287, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, &v287, v250, 2);
        if (v287)
        {
          v288 = v287;
          operator delete(v287);
        }

        v285 = 0;
        v284 = 0;
        v286 = 0;
        sub_19B609EBC(&v284, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, &v284, (v10 + 6008), 1);
        if (v284)
        {
          v285 = v284;
          operator delete(v284);
        }

        v281 = 0;
        v282 = 0;
        v283 = 0;
        sub_19B609EBC(&v281, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, &v281, (v10 + 6528), 1);
        if (v281)
        {
          v282 = v281;
          operator delete(v281);
        }

        memset(v256, 0, 24);
        sub_19B609EBC(v256, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, v256, (v10 + 7048), 1);
        if (v256[0])
        {
          v256[1] = v256[0];
          operator delete(v256[0]);
        }

        v108 = *sub_19B607AFC((v10 + 3768), 0);
        *(v10 + 3768) = 0;
        if (*(v10 + 4804) != *(v10 + 3772))
        {
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E288C0);
          }

          v242 = off_1ED71C828;
          if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
          {
            *&v243 = *(v10 + 3772);
            v244 = *(v10 + 4804);
            v299 = 3.8521e-34;
            v300 = v243;
            *v301 = 2048;
            *&v301[2] = v244;
            _os_log_impl(&dword_19B41C000, v242, OS_LOG_TYPE_FAULT, "Assertion failed: rhs.capacity() == capacity(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 70,capacity,%zu,%zu.", &v299, 0x16u);
          }

          v245 = sub_19B420058();
          if ((*(v245 + 160) & 0x80000000) == 0 || (*(v245 + 164) & 0x80000000) == 0 || (*(v245 + 168) & 0x80000000) == 0 || *(v245 + 152))
          {
            bzero(&v299, 0x65CuLL);
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E288C0);
            }

            v246 = *(v10 + 3772);
            v247 = *(v10 + 4804);
            v295 = 134218240;
            v296 = v246;
            v297 = 2048;
            v298 = v247;
            v248 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CMQueue<unsigned long long>::deepCopy(const CMQueue<T> &) [T = unsigned long long]", "CoreLocation: %s\n", v248);
            if (v248 != &v299)
            {
              free(v248);
            }
          }
        }

        v43 = v10 + 3776;
        if (*(v10 + 4802))
        {
          v109 = 0;
          do
          {
            v110 = sub_19B607AFC((v10 + 4800), v109);
            v111 = *(v10 + 3770);
            v112 = *(v10 + 3772);
            v113 = *(v10 + 3768);
            if (v113 + v111 >= v112)
            {
              v114 = *(v10 + 3772);
            }

            else
            {
              v114 = 0;
            }

            *(v10 + 3776 + 8 * (v113 + v111 - v114)) = *v110;
            if (v112 <= v111)
            {
              if (v113 + 1 < v112)
              {
                LOWORD(v112) = 0;
              }

              *v60 = v113 + 1 - v112;
            }

            else
            {
              *(v10 + 3770) = v111 + 1;
            }

            ++v109;
          }

          while (v109 < *(v10 + 4802));
          if (*(v10 + 4802))
          {
            v115 = 0;
            do
            {
              v116 = sub_19B607AFC((v10 + 3768), v115);
              *v116 += v108;
              ++v115;
            }

            while (v115 < *(v10 + 4802));
          }
        }

        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v89 = *(v10 + 2210);
      }

      __src[0] = 0x10000000000;
      __p = 0x10000000000;
      v290 = 0x10000000000;
      if (v89)
      {
        v117 = 0;
        do
        {
          v118 = sub_19B5BFE1C(v252, v117);
          sub_19B5BE78C(__src, v118);
          v119 = sub_19B5BFE1C(v251, v117);
          sub_19B5BE78C(&__p, v119);
          v120 = sub_19B5BFE1C(v250, v117);
          sub_19B5BE78C(&v290, v120);
          ++v117;
          v121 = *(v10 + 2210);
        }

        while (v117 < v121);
        if (v121 > 0xFF)
        {
LABEL_181:
          sub_19B797A04(v10 + 8, &v287, __src);
          sub_19B797A04(v10 + 8, &v284, &__p);
          sub_19B797A04(v10 + 8, &v281, &v290);
          sub_19B6BC784(*v10, *(v10 + 4), &v287);
          v148 = v147;
          sub_19B6BC784(*v10, *(v10 + 4), &v284);
          v150 = v148 + v149;
          *&v253 = v150;
          sub_19B6BC784(*v10, *(v10 + 4), &v281);
          v152 = v151 / v150;
          *(&v253 + 1) = v151;
          *(&v253 + 2) = v151 / v150;
          sub_19B6BC99C(*v10, *(v10 + 4), &v281);
          *(&v253 + 3) = v153;
          v154 = *(v10 + 6010);
          v155 = 0.0;
          v156 = 0.0;
          if (*(v10 + 6010))
          {
            do
            {
              v157 = *v66++;
              v156 = v156 + fabsf(v157);
              --v154;
            }

            while (v154);
            v156 = v156 * 57.2957795 * 20000.0 / 1000000.0;
          }

          *&v254 = v156;
          v158 = *(v10 + 6530);
          if (*(v10 + 6530))
          {
            v159 = 0.0;
            do
            {
              v160 = *v71++;
              v159 = v159 + fabsf(v160);
              --v158;
            }

            while (v158);
            v155 = v159 * 57.2957795 * 20000.0 / 1000000.0;
          }

          *(&v254 + 1) = v155;
          v161 = *(v10 + 7050);
          if (*(v10 + 7050))
          {
            v162 = 0.0;
            do
            {
              v163 = *v76++;
              v162 = v162 + fabsf(v163);
              --v161;
            }

            while (v161);
            v164 = v162 * 57.2957795 * 20000.0 / 1000000.0;
          }

          else
          {
            v164 = 0.0;
          }

          v165 = 0;
          *(&v254 + 2) = v164;
          if (v84 <= 0x493E0 && v249 >= 15.0 && v150 > 1.8)
          {
            v166 = v152 <= 0.4 || v153 <= 0.25;
            v167 = v166 || v156 < 5.0;
            if (!v167 && v156 <= 120.0)
            {
              v170 = v164 >= 0.0 && v155 >= 5.0;
              v165 = v170 && v155 <= 80.0;
            }
          }

          WORD6(v254) = v165;
          v171 = *(v10 + 5834);
          if (v171 == 3)
          {
            for (i = 1; i < v171; ++i)
            {
              v165 &= *(sub_19B609F38((v10 + 5832), i) + 28);
              BYTE13(v254) = v165;
              v171 = *(v10 + 5834);
            }
          }

          v173 = *(v10 + 3768) + *(v10 + 3770) - 1;
          v174 = *(v10 + 3772);
          if (v173 < v174)
          {
            v174 = 0;
          }

          *v255 = *(v43 + 8 * (v173 - v174));
          *&v255[20] = *(v10 + 7568);
          v175 = *(v10 + 5836);
          v176 = v10 + 5840;
          v177 = v171 + *(v10 + 5832);
          if (v177 < v175)
          {
            v175 = 0;
          }

          v178 = v176 + 56 * (v177 - v175);
          *(v178 + 48) = *&v255[16];
          v179 = v254;
          *v178 = v253;
          *(v178 + 16) = v179;
          *(v178 + 32) = *v255;
          v180 = *(v10 + 5834);
          v181 = *(v10 + 5836);
          if (v181 <= v180)
          {
            v182 = *(v10 + 5832) + 1;
            if (v182 >= v181)
            {
              v183 = *(v10 + 5836);
            }

            else
            {
              v183 = 0;
            }

            *(v10 + 5832) = v182 - v183;
          }

          else
          {
            LOWORD(v180) = v180 + 1;
            *(v10 + 5834) = v180;
          }

          v184 = *(v10 + 7576);
          if (v184 && v180 == 3 && *(v10 + 7584))
          {
            v185 = *(v10 + 5832) + 2;
            if (v185 < v181)
            {
              v181 = 0;
            }

            v184(*(v176 + 56 * (v185 - v181) + 29), *(v176 + 56 * (v185 - v181) + 32));
          }

          v186 = *(v10 + 7592);
          if (v186)
          {
            sub_19B5E779C(v186, &v253);
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
          }

          v187 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
          {
            v299 = 3.8536e-34;
            v300 = *&v253;
            *v301 = 2048;
            *&v301[2] = *(&v253 + 1);
            v302 = 2048;
            v303 = *(&v253 + 2);
            v304 = 2048;
            v305 = *(&v253 + 3);
            v306 = 2048;
            v307 = *&v254;
            v308 = 2048;
            v309 = *(&v254 + 1);
            v310 = 2048;
            v311 = *(&v254 + 2);
            v312 = 1024;
            v313 = BYTE12(v254);
            v314 = 1024;
            v315 = BYTE13(v254);
            v316 = 1024;
            v317 = BYTE14(v254);
            v318 = 2048;
            v319 = *v255;
            v320 = 1024;
            v321 = v255[8];
            v322 = 2048;
            v323 = *&v255[12];
            v324 = 2048;
            v325 = *&v255[16];
            v326 = 1024;
            v327 = *&v255[20];
            _os_log_impl(&dword_19B41C000, v187, OS_LOG_TYPE_INFO, "[CMAccessoryWalkingDetector],pedEnergyPlane,%f,pedEnergyZ,%f,pedEnergyZByPlane,%f,pedEnergyZPeak,%f,thetaRollFaceDeg,%f,thetaPitchFaceDeg,%f,thetaYawFaceDeg,%f,isWalkingRaw,%d,isWalkingFiltered,%d,isMissingSamples,%d,timestamp,%lld,isInterpolated,%d,dataRate,%f,maxSampleDeltaInSecond,%f,reversedTimestampCounts,%d", &v299, 0x84u);
          }

          v188 = sub_19B420058();
          if (*(v188 + 160) > 1 || *(v188 + 164) > 1 || *(v188 + 168) > 1 || *(v188 + 152))
          {
            bzero(&v299, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
            }

            LODWORD(v256[0]) = 134221568;
            *(v256 + 4) = *&v253;
            WORD2(v256[1]) = 2048;
            *(&v256[1] + 6) = *(&v253 + 1);
            HIWORD(v256[2]) = 2048;
            *&v256[3] = *(&v253 + 2);
            v257 = 2048;
            v258 = *(&v253 + 3);
            v259 = 2048;
            v260 = *&v254;
            v261 = 2048;
            v262 = *(&v254 + 1);
            v263 = 2048;
            v264 = *(&v254 + 2);
            v265 = 1024;
            v266 = BYTE12(v254);
            v267 = 1024;
            v268 = BYTE13(v254);
            v269 = 1024;
            v270 = BYTE14(v254);
            v271 = 2048;
            v272 = *v255;
            v273 = 1024;
            v274 = v255[8];
            v275 = 2048;
            v276 = *&v255[12];
            v277 = 2048;
            v278 = *&v255[16];
            v279 = 1024;
            v280 = *&v255[20];
            v189 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryWalkingDetector::processData()", "CoreLocation: %s\n", v189);
            if (v189 != &v299)
            {
              free(v189);
            }
          }

          v190 = *(v10 + 5832) + *(v10 + 5834) - 1;
          v191 = *(v10 + 5836);
          if (v190 < v191)
          {
            v191 = 0;
          }

          if (*(v176 + 56 * (v190 - v191) + 30) == 1)
          {
            *v252 = 0;
            *v251 = 0;
            *(v10 + 6008) = 0;
            *v250 = 0;
            *v60 = 0;
            *(v10 + 6528) = 0;
            *(v10 + 7048) = 0;
          }

          else
          {
            v192 = *(v10 + 2210);
            if (v192 >= 0x41)
            {
              v193 = (v192 - 64);
              v194 = *(v10 + 2208);
              v195 = *(v10 + 2212);
              do
              {
                if (v192)
                {
                  v196 = v194 + 1;
                  if (v196 >= v195)
                  {
                    v197 = v195;
                  }

                  else
                  {
                    v197 = 0;
                  }

                  v198 = v196 - v197;
                  v194 = v198;
                  *(v10 + 2208) = v198;
                  LOWORD(v192) = v192 - 1;
                  *(v10 + 2210) = v192;
                }

                else
                {
                  LOWORD(v192) = 0;
                }

                --v193;
              }

              while (v193);
            }

            v199 = *(v10 + 2730);
            if (v199 >= 0x41)
            {
              v200 = (v199 - 64);
              v201 = *(v10 + 2728);
              v202 = *(v10 + 2732);
              do
              {
                if (v199)
                {
                  v203 = v201 + 1;
                  if (v203 >= v202)
                  {
                    v204 = v202;
                  }

                  else
                  {
                    v204 = 0;
                  }

                  v205 = v203 - v204;
                  v201 = v205;
                  *(v10 + 2728) = v205;
                  LOWORD(v199) = v199 - 1;
                  *(v10 + 2730) = v199;
                }

                else
                {
                  LOWORD(v199) = 0;
                }

                --v200;
              }

              while (v200);
            }

            v206 = *(v10 + 3250);
            if (v206 >= 0x41)
            {
              v207 = (v206 - 64);
              v208 = *(v10 + 3248);
              v209 = *(v10 + 3252);
              do
              {
                if (v206)
                {
                  v210 = v208 + 1;
                  if (v210 >= v209)
                  {
                    v211 = v209;
                  }

                  else
                  {
                    v211 = 0;
                  }

                  v212 = v210 - v211;
                  v208 = v212;
                  *(v10 + 3248) = v212;
                  LOWORD(v206) = v206 - 1;
                  *(v10 + 3250) = v206;
                }

                else
                {
                  LOWORD(v206) = 0;
                }

                --v207;
              }

              while (v207);
            }

            v213 = *(v10 + 3770);
            if (v213 >= 0x41)
            {
              v214 = (v213 - 64);
              v215 = *(v10 + 3768);
              v216 = *(v10 + 3772);
              do
              {
                if (v213)
                {
                  v217 = v215 + 1;
                  if (v217 >= v216)
                  {
                    v218 = v216;
                  }

                  else
                  {
                    v218 = 0;
                  }

                  v219 = v217 - v218;
                  v215 = v219;
                  *(v10 + 3768) = v219;
                  LOWORD(v213) = v213 - 1;
                  *(v10 + 3770) = v213;
                }

                else
                {
                  LOWORD(v213) = 0;
                }

                --v214;
              }

              while (v214);
            }

            v220 = *(v10 + 6010);
            if (v220 >= 0x41)
            {
              v221 = (v220 - 64);
              v222 = *(v10 + 6008);
              v223 = *(v10 + 6012);
              do
              {
                if (v220)
                {
                  v224 = v222 + 1;
                  if (v224 >= v223)
                  {
                    v225 = v223;
                  }

                  else
                  {
                    v225 = 0;
                  }

                  v226 = v224 - v225;
                  v222 = v226;
                  *(v10 + 6008) = v226;
                  LOWORD(v220) = v220 - 1;
                  *(v10 + 6010) = v220;
                }

                else
                {
                  LOWORD(v220) = 0;
                }

                --v221;
              }

              while (v221);
            }

            v227 = *(v10 + 6530);
            if (v227 >= 0x41)
            {
              v228 = (v227 - 64);
              v229 = *(v10 + 6528);
              v230 = *(v10 + 6532);
              do
              {
                if (v227)
                {
                  v231 = v229 + 1;
                  if (v231 >= v230)
                  {
                    v232 = v230;
                  }

                  else
                  {
                    v232 = 0;
                  }

                  v233 = v231 - v232;
                  v229 = v233;
                  *(v10 + 6528) = v233;
                  LOWORD(v227) = v227 - 1;
                  *(v10 + 6530) = v227;
                }

                else
                {
                  LOWORD(v227) = 0;
                }

                --v228;
              }

              while (v228);
            }

            v234 = *(v10 + 7050);
            if (v234 >= 0x41)
            {
              v235 = (v234 - 64);
              v236 = *(v10 + 7048);
              v237 = *(v10 + 7052);
              do
              {
                if (v234)
                {
                  v238 = v236 + 1;
                  if (v238 >= v237)
                  {
                    v239 = v237;
                  }

                  else
                  {
                    v239 = 0;
                  }

                  v240 = v238 - v239;
                  v236 = v240;
                  *(v10 + 7048) = v240;
                  LOWORD(v234) = v234 - 1;
                  *(v10 + 7050) = v234;
                }

                else
                {
                  LOWORD(v234) = 0;
                }

                --v235;
              }

              while (v235);
            }
          }

          *(v10 + 7568) = 0;
          goto LABEL_314;
        }

        v122 = v290;
        v123 = __p;
        v124 = LOWORD(__src[0]);
        v125 = HIDWORD(__src[0]);
        v126 = HIDWORD(__p);
        v127 = HIDWORD(v290);
        v128 = WORD1(__src[0]);
        v129 = WORD1(__p);
        v130 = WORD1(v290);
      }

      else
      {
        v130 = 0;
        v129 = 0;
        v128 = 0;
        v124 = 0;
        v123 = 0;
        v122 = 0;
        v121 = 0;
        v127 = 256;
        v126 = 256;
        v125 = 256;
      }

      v131 = v121 - 256;
      do
      {
        v132 = v124 + v128;
        if (v132 >= v125)
        {
          v133 = v125;
        }

        else
        {
          v133 = 0;
        }

        *(&__src[1] + v132 - v133) = 0;
        if (v125 <= v128)
        {
          v134 = v124 + 1;
          if (v134 >= v125)
          {
            v135 = v125;
          }

          else
          {
            v135 = 0;
          }

          v136 = v134 - v135;
          v124 = v136;
          LOWORD(__src[0]) = v136;
        }

        else
        {
          WORD1(__src[0]) = ++v128;
        }

        v137 = v123 + v129;
        if (v137 >= v126)
        {
          v138 = v126;
        }

        else
        {
          v138 = 0;
        }

        *(v293 + v137 - v138) = 0;
        if (v126 <= v129)
        {
          v139 = v123 + 1;
          if (v139 >= v126)
          {
            v140 = v126;
          }

          else
          {
            v140 = 0;
          }

          v141 = v139 - v140;
          v123 = v141;
          LOWORD(__p) = v141;
        }

        else
        {
          WORD1(__p) = ++v129;
        }

        v142 = v122 + v130;
        if (v142 >= v127)
        {
          v143 = v127;
        }

        else
        {
          v143 = 0;
        }

        *(v291 + v142 - v143) = 0;
        if (v127 <= v130)
        {
          v144 = v122 + 1;
          if (v144 >= v127)
          {
            v145 = v127;
          }

          else
          {
            v145 = 0;
          }

          v146 = v144 - v145;
          v122 = v146;
          LOWORD(v290) = v146;
        }

        else
        {
          WORD1(v290) = ++v130;
        }

        v102 = __CFADD__(v131++, 1);
      }

      while (!v102);
      goto LABEL_181;
    }
  }

LABEL_314:
  v241 = *MEMORY[0x1E69E9840];
}

void sub_19B609AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = STACK[0xF20];
  if (STACK[0xF20])
  {
    STACK[0xF28] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_19B609B7C(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, int a4)
{
  v8 = a3[1];
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (v8)
  {
    sub_19B4C4F6C(&v45, v8);
  }

  v9 = 0;
  *a3 = 0;
  if (*(a1 + 4802))
  {
    v10 = 0;
    if (*(a1 + 4802) >= 0x80u)
    {
      v11 = 128;
    }

    else
    {
      v11 = *(a1 + 4802);
    }

    v12 = a4 + 1;
    while (1)
    {
      v13 = *sub_19B607AFC((a1 + 4800), v10);
      __p = 0;
      v43 = 0;
      v44 = 0;
      sub_19B609EBC(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
      v39 = 0;
      v40 = 0;
      v41 = 0;
      sub_19B609EBC(&v39, v45, v46, (v46 - v45) >> 2);
      v14 = __p;
      v15 = v39;
      v16 = v40 - v39;
      v17 = (v40 - v39) >> 2;
      if (v17 <= a4)
      {
        v18 = (v40 - v39) >> 2;
      }

      else
      {
        v18 = v12;
      }

      v19 = v13;
      v20 = v39;
      if (*__p >= v13)
      {
        goto LABEL_19;
      }

      v21 = (v16 << 30) - 0x100000000;
      if (*(__p + (v21 >> 30)) <= v19)
      {
        break;
      }

      if (v17 < 1)
      {
        LODWORD(v22) = 0;
      }

      else
      {
        v22 = 0;
        v23 = (v16 >> 2) & 0x7FFFFFFF;
        while (*(__p + v22) < v19)
        {
          if (v23 == ++v22)
          {
            v22 = (v40 - v39) >> 2;
            break;
          }
        }
      }

      if (v18 < 1)
      {
        v24 = 0.0;
      }

      else
      {
        v29 = 0;
        v30 = (v22 - (v18 >> 1)) & ~((v22 - (v18 >> 1)) >> 31);
        v31 = v30 + v18;
        if (v30 + v18 > v17)
        {
          v30 = v17 - v18;
        }

        v32 = v30 + v18;
        if (v31 < v17)
        {
          LODWORD(v17) = v31;
        }

        v33 = v17 - v18;
        v34 = v32;
        v24 = 0.0;
        v35 = v33;
        do
        {
          v36 = 1.0;
          v37 = v29;
          v38 = v33;
          do
          {
            if (v37)
            {
              v36 = (v36 * (v19 - *(__p + v38))) / (*(__p + v35) - *(__p + v38));
            }

            ++v38;
            --v37;
          }

          while (v38 < v34);
          v24 = v24 + (*&v39[4 * v35++] * v36);
          ++v29;
        }

        while (v35 < v34);
      }

LABEL_20:
      v25 = a3[1];
      v26 = *(a3 + 1);
      v27 = *a3;
      if (v27 + v25 >= v26)
      {
        v28 = *(a3 + 1);
      }

      else
      {
        v28 = 0;
      }

      *&a3[2 * (v27 + v25 - v28) + 4] = v24;
      if (v26 <= v25)
      {
        if (v27 + 1 < v26)
        {
          LOWORD(v26) = 0;
        }

        *a3 = v27 + 1 - v26;
        if (!v15)
        {
          goto LABEL_30;
        }
      }

      else
      {
        a3[1] = v25 + 1;
        if (!v15)
        {
          goto LABEL_30;
        }
      }

      v40 = v15;
      operator delete(v15);
      v14 = __p;
LABEL_30:
      if (v14)
      {
        v43 = v14;
        operator delete(v14);
      }

      if (++v10 == v11)
      {
        v9 = v45;
        goto LABEL_48;
      }
    }

    v20 = &v39[4 * (v21 >> 32)];
LABEL_19:
    v24 = *v20;
    goto LABEL_20;
  }

LABEL_48:
  if (v9)
  {
    v46 = v9;
    operator delete(v9);
  }
}

void sub_19B609E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B609E8C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t sub_19B609EBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B4C4F6C(result, a4);
  }

  return result;
}

void sub_19B609F1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B609F38(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E288C0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E288C0);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<DistViewDetection>::operator[](const size_t) const [T = DistViewDetection]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[28 * (v4 - v5) + 4];
}

id *sub_19B60A1A4(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = RMConnectionClient;
    v11 = objc_msgSendSuper2(&v16, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 4, a2);
      objc_storeStrong(a1 + 3, a3);
      objc_setProperty_nonatomic_copy(a1, v12, v10, 48);
      v13 = objc_opt_new();
      v14 = a1[7];
      a1[7] = v13;

      *(a1 + 8) = 1;
    }
  }

  return a1;
}

void sub_19B60A280(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v2 = *(a1 + 56);
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v26, v32, 16);
    if (!v4)
    {
      v6 = v2;
LABEL_31:

      goto LABEL_32;
    }

    v5 = v4;
    v6 = 0;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        if (v9 && *(v9 + 24))
        {
          v10 = v9;
          v11 = v6;
          v6 = v10;
        }

        else
        {
          if (qword_1EAFE2ED8 != -1)
          {
            dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
          }

          v12 = qword_1EAFE2EE0;
          if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEFAULT))
          {
            if (v9)
            {
              v13 = *(v9 + 8);
            }

            else
            {
              v13 = 0;
            }

            *buf = 138412290;
            v31 = v13;
            v14 = v12;
            _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "Sending cached message %@", buf, 0xCu);
          }

          v15 = *(a1 + 16);
          if (v9)
          {
            v16 = *(v9 + 8);
            v17 = *(v9 + 16);
          }

          else
          {
            v16 = 0;
            v17 = 0;
          }

          v11 = v15;
          sub_19B5DFD80(v11, v16, v17);
        }

        ++v8;
      }

      while (v5 != v8);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v18, &v26, v32, 16);
      v5 = v19;
    }

    while (v19);

    if (v6)
    {
      if (qword_1EAFE2ED8 != -1)
      {
        dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
      }

      v20 = qword_1EAFE2EE0;
      if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "Restoring the streaming channel", buf, 2u);
      }

      v21 = v6[1];
      v22 = v6[3];
      v23 = v6[2];
      v24 = v21;
      sub_19B60A584(a1, v24, v23, v22);

      goto LABEL_31;
    }
  }

LABEL_32:
  v25 = *MEMORY[0x1E69E9840];
}

id sub_19B60A530()
{
  if (qword_1EAFE2ED8 != -1)
  {
    dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
  }

  v1 = qword_1EAFE2EE0;

  return v1;
}

void sub_19B60A584(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (*(a1 + 40))
    {
      v24 = sub_19B60A530();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *v29 = 68289539;
        *&v29[8] = 2082;
        *&v29[10] = "";
        v30 = 2082;
        v31 = "assert";
        v32 = 2081;
        v33 = "!self.streamingDataCallback";
        _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Stream requested while one is already present, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v29, 0x26u);
      }

      v25 = sub_19B60A530();
      if (os_signpost_enabled(v25))
      {
        *v29 = 68289539;
        *&v29[8] = 2082;
        *&v29[10] = "";
        v30 = 2082;
        v31 = "assert";
        v32 = 2081;
        v33 = "!self.streamingDataCallback";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Stream requested while one is already present", "{msg%{public}.0s:Stream requested while one is already present, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v29, 0x26u);
      }

      v26 = sub_19B60A530();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *v29 = 68289539;
        *&v29[8] = 2082;
        *&v29[10] = "";
        v30 = 2082;
        v31 = "assert";
        v32 = 2081;
        v33 = "!self.streamingDataCallback";
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Stream requested while one is already present, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v29, 0x26u);
      }

      abort_report_np();
    }

    objc_setProperty_nonatomic_copy(a1, v11, v10, 40);
    v12 = *(a1 + 16);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_19B60AAB8;
    v27[3] = &unk_1E75332B8;
    v27[4] = a1;
    v13 = v10;
    v28 = v13;
    sub_19B5E0B54(v12, v8, v9, v27);
    v14 = *(a1 + 56);
    v15 = [RMConnectionClientCachedMessage alloc];
    v16 = v8;
    v17 = v9;
    v18 = v13;
    if (v15)
    {
      *v29 = v15;
      *&v29[8] = RMConnectionClientCachedMessage;
      v19 = objc_msgSendSuper2(v29, sel_init);
      v15 = v19;
      if (v19)
      {
        objc_storeStrong(&v19->_name, a2);
        objc_storeStrong(&v15->_data, a3);
        v20 = _Block_copy(v18);
        streamingCallback = v15->_streamingCallback;
        v15->_streamingCallback = v20;
      }
    }

    objc_msgSend_addObject_(v14, v22, v15);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_19B60A904(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (*(a1 + 8))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        objc_storeWeak((v2 + 24), 0);
        v3 = *(a1 + 16);
        if (v3)
        {
          objc_storeWeak((v3 + 16), 0);
          v4 = *(a1 + 16);
        }

        else
        {
          v4 = 0;
        }

        sub_19B5DFC00(v4);
        v5 = *(a1 + 16);
        *(a1 + 16) = 0;
      }

      v6 = *(a1 + 24);
      v9 = objc_msgSend_UTF8String(v6, v7, v8);
      mach_service = xpc_connection_create_mach_service(v9, *(a1 + 32), 0);

      v10 = [RMConnectionEndpoint alloc];
      v11 = *(a1 + 32);
      v12 = sub_19B5DF83C(v10, mach_service, v11);
      v13 = *(a1 + 16);
      *(a1 + 16) = v12;

      v14 = *(a1 + 16);
      if (v14 && (objc_storeWeak((v14 + 16), a1), (v15 = *(a1 + 16)) != 0))
      {
        objc_storeWeak((v15 + 24), a1);
        v16 = *(a1 + 16);
      }

      else
      {
        v16 = 0;
      }

      sub_19B5DFCA4(v16);
    }

    else
    {
      if (qword_1EAFE2ED8 != -1)
      {
        dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
      }

      v17 = qword_1EAFE2EE0;
      if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "Trying to connect after invalidation", buf, 2u);
      }
    }
  }
}

void sub_19B60AAB8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_19B60ABA4(*(a1 + 32));
  if (objc_msgSend_code(v3, v4, v5) == -3 && ((v6 = *(a1 + 32)) == 0 ? (v7 = 0) : (v7 = *(v6 + 16)), sub_19B5E179C(v7)))
  {
    if (qword_1EAFE2ED8 != -1)
    {
      dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
    }

    v8 = qword_1EAFE2EE0;
    if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "#Warning The streaming connection has been interrupted", v9, 2u);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_19B60ABA4(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (qword_1EAFE2ED8 != -1)
    {
      dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
    }

    v2 = qword_1EAFE2EE0;
    if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Stopping the streaming session", v4, 2u);
    }

    sub_19B5E0ABC(*(a1 + 16));
    objc_setProperty_nonatomic_copy(a1, v3, 0, 40);
  }
}

void sub_19B60AC5C(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    sub_19B60ABA4(a1);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = *(a1 + 56);
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v14, v18, 16);
    if (v4)
    {
      v6 = v4;
      v7 = 0;
      v8 = *v15;
      while (2)
      {
        v9 = 0;
        v10 = v7;
        v7 += v6;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v2);
          }

          v11 = *(*(&v14 + 1) + 8 * v9);
          if (v11 && *(v11 + 24))
          {

            objc_msgSend_removeObjectAtIndex_(*(a1 + 56), v12, v10, v14);
            goto LABEL_13;
          }

          ++v10;
          ++v9;
        }

        while (v6 != v9);
        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v14, v18, 16);
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_19B60AD88(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    *(a1 + 8) = 0;
    v4 = *(a1 + 64);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    objc_msgSend_removeAllObjects(*(a1 + 56), v2, v3);
    objc_setProperty_nonatomic_copy(a1, v6, 0, 48);
    sub_19B60AC5C(a1);
    sub_19B5DFC00(*(a1 + 16));
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

void sub_19B60AE14(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_19B60AE24(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B60AEA4;
  block[3] = &unk_1E75332E0;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_19B60AEA4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
LABEL_20:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!v2[2])
  {
    if (v2[8])
    {
      v2[9] *= 2;
      v4 = *(a1 + 32);
      if (v4 && *(v4 + 72) >= 0x81uLL)
      {
        *(v4 + 72) = 128;
      }

      if (qword_1EAFE2ED8 != -1)
      {
        dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
      }

      v5 = qword_1EAFE2EE0;
      if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 32);
        if (v7)
        {
          v7 = *(v7 + 72);
        }

        v15 = 134217984;
        v16 = v7;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "Connection still invalid, next reconnection attempt will be in %lu seconds", &v15, 0xCu);
      }

      v8 = *(a1 + 32);
      if (v8 && (objc_setProperty_nonatomic_copy(v8, v6, 0, 40), (v9 = *(a1 + 32)) != 0))
      {
        v10 = *(v9 + 64);
        v11 = 1000000000 * *(v9 + 72);
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v12 = v10;
      v13 = dispatch_time(0, v11);
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    goto LABEL_20;
  }

  v3 = *MEMORY[0x1E69E9840];

  sub_19B60AE14(v2, 0);
}

void sub_19B60B668(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (qword_1EAFE2ED8 != -1)
    {
      dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
    }

    v2 = qword_1EAFE2EE0;
    if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v4[0]) = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Reconnection attempt", v4, 2u);
    }

    if (!*(v1 + 16))
    {
      sub_19B60A904(v1);
      sub_19B60A280(v1);
      v3 = sub_19B5E17D8(*(v1 + 16));
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = sub_19B60AE24;
      v4[3] = &unk_1E75332E0;
      v4[4] = v1;
      xpc_connection_send_barrier(v3, v4);
    }
  }
}

uint64_t sub_19B60B8EC()
{
  v0 = os_log_create("com.apple.RelativeMotion", "ConnectionClient");
  v1 = qword_1EAFE2EE0;
  qword_1EAFE2EE0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_19B60BFA4()
{
  if (qword_1ED71CAB8 != -1)
  {
    dispatch_once(&qword_1ED71CAB8, &unk_1F0E290E0);
  }

  return qword_1ED71CAB0;
}

void sub_19B60C0A0(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B60C0D8(uint64_t a1, int a2, double *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v18) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryMonitor] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryMonitor::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    sub_19B750AC4(a1);
    if (*a3 <= 0.0)
    {
      v9 = &unk_1F0E6A498;
    }

    else
    {
      v9 = &unk_1F0E6A480;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v10 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v11 = *a3;
      *buf = 134349314;
      v18 = v11;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "[AccessoryMonitor] Setting update interval to %{public}f, reportInterval %{public}@", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
      }

      v16 = *a3;
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryMonitor::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    (*(**(a1 + 32) + 16))(*(a1 + 32), @"ReportInterval", v9);
    v14 = *a3;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B60C48C()
{
  v10 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 1)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v0 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      buf = 134349312;
      *buf_4 = 0;
      v8 = 2048;
      v9 = 0;
      _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "[AccessoryMonitor] invalid message: empty message %{public}p (%zd)", &buf, 0x16u);
    }

    v1 = sub_19B420058();
    if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
      }

LABEL_21:
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryMonitor::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v4);
      if (v4 != &buf)
      {
        free(v4);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v2 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      buf = 67240192;
      *buf_4 = IOHIDEventGetType();
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "[AccessoryMonitor] unexpected event type %{public}u", &buf, 8u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
      }

      IOHIDEventGetType();
      goto LABEL_21;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B60D34C(uint64_t a1, const char *a2)
{
  v20[8] = *MEMORY[0x1E69E9840];
  v19[0] = @"productID";
  v20[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *(a1 + 40));
  v19[1] = @"averageTemperature";
  v20[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v3, *(*(a1 + 32) + 13));
  v19[2] = @"minTemperature";
  v20[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v4, *(*(a1 + 32) + 14));
  v19[3] = @"maxTemperature";
  v20[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, *(*(a1 + 32) + 15));
  v19[4] = @"biasTemperature";
  v20[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, *(*(a1 + 32) + 16));
  v19[5] = @"deltaAverageTemperature";
  v20[5] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, (*(*(a1 + 32) + 13) - *(*(a1 + 32) + 16)));
  v19[6] = @"deltaMinTemperature";
  v20[6] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, (*(*(a1 + 32) + 14) - *(*(a1 + 32) + 16)));
  v19[7] = @"deltaMaxTemperature";
  v20[7] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, (*(*(a1 + 32) + 15) - *(*(a1 + 32) + 16)));
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v20, v19, 8);
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
  }

  v12 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v18 = v11;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[AccessoryMonitor] Sending analytics: \n%{private}@", buf, 0xCu);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryMonitor::onMonitorEvent(const uint8_t *const, const size_t, const CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_19B60D648(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!sub_19B43EE18(*(a1 + 32)))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v5 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[AccessoryMonitor] onAccessoryStatusUpdate error. No service ref.", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) != 0 && (*(v6 + 164) & 0x80000000) != 0 && (*(v6 + 168) & 0x80000000) != 0 && !*(v6 + 152))
    {
      goto LABEL_34;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
LABEL_31:
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryMonitor::onServiceConnection()", "CoreLocation: %s\n");
LABEL_32:
      if (v4 != buf)
      {
        free(v4);
      }

      goto LABEL_34;
    }

LABEL_39:
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    goto LABEL_31;
  }

  if (!sub_19B750BBC(a1, 0, "GYRO18CLAccessoryMonitor", 4uLL))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v7 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "[AccessoryNotifier] onAccessoryStatusUpdate - Failed to ping", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) != 0 && (*(v8 + 164) & 0x80000000) != 0 && (*(v8 + 168) & 0x80000000) != 0 && !*(v8 + 152))
    {
      goto LABEL_34;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryMonitor] onAccessoryStatusUpdate - Accessory ping sent.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryMonitor::onServiceConnection()", "CoreLocation: %s\n");
    goto LABEL_32;
  }

LABEL_34:
  v9 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B60DA2C()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void *sub_19B60DA60(uint64_t a1)
{
  *a1 = &unk_1F0E33A28;
  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 80));
  sub_19B445384((a1 + 120));
  sub_19B445384((a1 + 104));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return sub_19B445384(a1);
}

void sub_19B60DAF8(uint64_t a1)
{
  sub_19B60DA60(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B60DB30(char *a1, int a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if ((a1[96] & 1) == 0)
  {
    v2 = a1;
    if (!a2)
    {
      goto LABEL_24;
    }

    v3 = (a1 + 24);
    v4 = a1[47];
    v5 = a1 + 24;
    if (v4 < 0)
    {
      v5 = *v3;
    }

    if (!stat(v5, &v60) && (v60.st_uid != *(v2 + 22) || v60.st_gid != *(v2 + 23) || (~v60.st_mode & 0x1B6) != 0))
    {
      p_vtable = CMDeviceOrientationManager.vtable;
      if (qword_1ED71C820 != -1)
      {
        goto LABEL_90;
      }

      while (1)
      {
        v7 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v3;
          if (v2[47] < 0)
          {
            v8 = *v3;
          }

          v9 = *(v2 + 22);
          v10 = *(v2 + 23);
          buf[0].st_dev = 136316674;
          *&buf[0].st_mode = v8;
          WORD2(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 6) = v60.st_uid;
          HIWORD(buf[0].st_uid) = 1024;
          buf[0].st_gid = v9;
          LOWORD(buf[0].st_rdev) = 1024;
          *(&buf[0].st_rdev + 2) = v60.st_gid;
          *(&buf[0].st_rdev + 3) = 1024;
          LODWORD(buf[0].st_atimespec.tv_sec) = v10;
          WORD2(buf[0].st_atimespec.tv_sec) = 1024;
          *(&buf[0].st_atimespec.tv_sec + 6) = v60.st_mode;
          WORD1(buf[0].st_atimespec.tv_nsec) = 1024;
          HIDWORD(buf[0].st_atimespec.tv_nsec) = 438;
          _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", buf, 0x30u);
        }

        v11 = sub_19B420058();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (p_vtable[260] != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }

          if (v2[47] < 0)
          {
            v3 = *v3;
          }

          v12 = *(v2 + 22);
          v13 = *(v2 + 23);
          v61 = 136316674;
          v62 = v3;
          v63 = 1024;
          st_uid = v60.st_uid;
          v65 = 1024;
          *v66 = v12;
          *&v66[4] = 1024;
          *&v66[6] = v60.st_gid;
          v67 = 1024;
          v68 = v13;
          v69 = 1024;
          st_mode = v60.st_mode;
          v71 = 1024;
          v72 = 438;
          LODWORD(v58) = 48;
          v14 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }

LABEL_24:
        v15 = (v2 + 24);
        v16 = v2 + 24;
        if (v2[47] < 0)
        {
          v16 = *v15;
        }

        v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v16, 0x8000100u);
        if (!v17)
        {
          break;
        }

        v20 = v17;
        v21 = objc_msgSend_pathComponents(v17, v18, v19);
        v26 = objc_msgSend_count(v21, v22, v23) - 1;
        if (v26 < 2)
        {
LABEL_34:
          CFRelease(v20);
          break;
        }

        PathComponent = v20;
        while (1)
        {
          PathComponent = objc_msgSend_stringByDeletingLastPathComponent(PathComponent, v24, v25, v57, v58, v59);
          if ((objc_msgSend_isEqualToString_(PathComponent, v28, @"/var") & 1) == 0 && (objc_msgSend_isEqualToString_(PathComponent, v24, @"/tmp") & 1) == 0)
          {
            v29 = objc_msgSend_fileSystemRepresentation(PathComponent, v24, v25);
            if (!lstat(v29, buf) && (buf[0].st_mode & 0xF000) == 0xA000)
            {
              break;
            }
          }

          if (--v26 <= 1)
          {
            goto LABEL_34;
          }
        }

        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
        }

        v55 = off_1ED71C828;
        p_vtable = "sE";
        v3 = "assert";
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }
        }

        v56 = off_1ED71C828;
        if (os_signpost_enabled(off_1ED71C828))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v56, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }
        }

        v2 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v58 = 392;
        v59 = "setFileAttributes";
        v57 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLPreferences.mm";
        abort_report_np();
LABEL_90:
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }

      v30 = v2 + 24;
      if (v2[47] < 0)
      {
        v30 = *v15;
      }

      if (!lstat(v30, &v60))
      {
        v32 = v2 + 24;
        if (v2[47] < 0)
        {
          v32 = *v15;
        }

        if (lchmod(v32, 0x1B6u))
        {
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }

          v33 = off_1ED71C828;
          if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
          {
            v34 = v2 + 24;
            if (v2[47] < 0)
            {
              v34 = *v15;
            }

            v35 = *__error();
            v36 = __error();
            v37 = strerror(*v36);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v34;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v35;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v37;
            _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "could not lchmod %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v38 = sub_19B420058();
          if ((*(v38 + 160) & 0x80000000) == 0 || (*(v38 + 164) & 0x80000000) == 0 || (*(v38 + 168) & 0x80000000) == 0 || *(v38 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
            }

            v39 = v2 + 24;
            if (v2[47] < 0)
            {
              v39 = *v15;
            }

            v40 = *__error();
            v41 = __error();
            v42 = strerror(*v41);
            v61 = 136446722;
            v62 = v39;
            v63 = 1026;
            st_uid = v40;
            v65 = 2082;
            *v66 = v42;
            v43 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v43);
            if (v43 != buf)
            {
              free(v43);
            }
          }
        }

        v44 = v2 + 24;
        if (v2[47] < 0)
        {
          v44 = *v15;
        }

        if (lchown(v44, *(v2 + 22), *(v2 + 23)))
        {
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }

          v45 = off_1ED71C828;
          if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
          {
            v46 = v2 + 24;
            if (v2[47] < 0)
            {
              v46 = *v15;
            }

            v47 = *__error();
            v48 = __error();
            v49 = strerror(*v48);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v46;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v47;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v49;
            _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_FAULT, "could not lchown %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v50 = sub_19B420058();
          if ((*(v50 + 160) & 0x80000000) == 0 || (*(v50 + 164) & 0x80000000) == 0 || (*(v50 + 168) & 0x80000000) == 0 || *(v50 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
            }

            if (v2[47] < 0)
            {
              v15 = *v15;
            }

            v51 = *__error();
            v52 = __error();
            v53 = strerror(*v52);
            v61 = 136446722;
            v62 = v15;
            v63 = 1026;
            st_uid = v51;
            v65 = 2082;
            *v66 = v53;
            v54 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v54);
            if (v54 != buf)
            {
              free(v54);
            }
          }
        }
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

const __CFArray *sub_19B60E4B8(CFStringRef *a1)
{
  v2 = *MEMORY[0x1E695E8B0];
  result = CFPreferencesCopyKeyList(a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    v4 = result;
    CFPreferencesSetMultiple(0, result, a1[9], a1[10], v2);
    CFRelease(v4);
    data = (*a1)[26].data;

    return (data)(a1);
  }

  return result;
}

uint64_t sub_19B60E578(CFStringRef *a1, CFStringRef key)
{
  CFPreferencesSetValue(key, 0, a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  data = (*a1)[26].data;

  return (data)(a1);
}

CFIndex sub_19B60E5FC(uint64_t a1)
{
  v1 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  CFRelease(v2);
  return Count;
}

CFIndex sub_19B60E654(uint64_t a1, CFStringRef key)
{
  v2 = CFPreferencesCopyValue(key, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 1;
  }

  CFRelease(v3);
  return Count;
}

uint64_t sub_19B60E6D0()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serialize(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B60E870()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B60EA10()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::deserialize(const CFDataRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19B60EBB0(const __CFString *a1, uint64_t a2)
{
  cf = 0;
  if ((*(*a2 + 912))(a2, a1, &cf))
  {
    sub_19B5F3A54(a1, cf);
    CFRelease(cf);
  }
}

void sub_19B60EC30(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2B58 != -1)
  {
    dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A698);
  }

  if (!os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_26;
  }

  os_unfair_lock_lock(&unk_1ED71C8F0);
  if ((*(*(a1 + 120) + 856))(a1 + 120) >= 1)
  {
    sub_19B5F3378(a1 + 120);
  }

  os_unfair_lock_unlock(&unk_1ED71C8F0);
  v2 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  v3 = v2;
  if (!v2 || !CFArrayGetCount(v2))
  {
    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A698);
    }

    v7 = qword_1EAFE2B60;
    if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "\t<empty>", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B58 != -1)
      {
        dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A698);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLPreferences::print() const", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }

    goto LABEL_26;
  }

  v14.length = CFArrayGetCount(v3);
  v14.location = 0;
  CFArrayApplyFunction(v3, v14, sub_19B60EBB0, a1);
  CFRelease(v3);
  v5 = *(a1 + 104);
  v4 = a1 + 104;
  if ((*(v5 + 856))(v4) < 1)
  {
LABEL_26:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = *MEMORY[0x1E69E9840];

  sub_19B5F3378(v4);
}

void sub_19B60EF80()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLPreferences::merge(const CLPreferences &, BOOL)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B60F11C()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::loadFromFile(const char *)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B60F2BC()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B60F45C()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToBinaryFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19B60F5FC(uint64_t a1, CFStringRef key, CFPropertyListRef value)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v6 = v27;
      sub_19B431834(key, v27);
      if (v30 < 0)
      {
        v6 = *v27;
      }

      sub_19B431834(*(a1 + 72), v25);
      v7 = v26;
      v8 = v25[0];
      sub_19B431834(*(a1 + 80), __p);
      v9 = v25;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (v24 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446722;
      v33 = v6;
      v34 = 2082;
      v35 = v9;
      v36 = 2082;
      v37 = v10;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", buf, 0x20u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(*v27);
      }
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }

      sub_19B431834(key, v25);
      if (v26 >= 0)
      {
        v12 = v25;
      }

      else
      {
        v12 = v25[0];
      }

      sub_19B431834(*(a1 + 72), __p);
      v13 = v24;
      v14 = __p[0];
      sub_19B431834(*(a1 + 80), v21);
      v15 = __p;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v22 >= 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      *v27 = 136446722;
      *&v27[4] = v12;
      v28 = 2082;
      v29 = v15;
      v30 = 2082;
      v31 = v16;
      v17 = _os_log_send_and_compose_impl();
      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLPreferences::setInternal(const CFStringRef, const CFTypeRef)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = *MEMORY[0x1E69E9840];
  }

  else
  {
    CFPreferencesSetValue(key, value, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
    v19 = *(*a1 + 848);
    v20 = *MEMORY[0x1E69E9840];

    v19(a1);
  }
}