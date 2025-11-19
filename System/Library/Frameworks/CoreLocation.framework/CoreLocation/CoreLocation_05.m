BOOL sub_19B92E3C4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92E430(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92E430(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const long &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92E6C8(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B87D70C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92E734(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_19B87D70C(a1, a2, a3);
}

BOOL sub_19B92E78C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92E7F8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92E7F8(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 896))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = Copy != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B92EA90(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B92EB64(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92EBD0(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92EBD0(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695E4D0];
  if (!*a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  CFRetain(*v5);
  if (v6)
  {
    (*(*a1 + 928))(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v8 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      v11 = _os_log_send_and_compose_impl();
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const BOOL &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  result = v6 != 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92EE78(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92EEE4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92EEE4(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v10);
      if (v10 != valuePtr)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92F188(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92F1F4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92F1F4(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const short &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92F48C(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92F4F8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92F4F8(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v10);
      if (v10 != valuePtr)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92F79C(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92F808(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92F808(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92FAA0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92FB0C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92FB0C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92FDA4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92FE10(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92FE10(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const long &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B9300A8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B930114(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B930114(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const double &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B9303AC(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B930418(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B930418(uint64_t a1, const __CFString *a2, char *cStr)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const char *)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B9306B8(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (a3[23] >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = sub_19B930418(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_19B930730(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_19B930418(a1, a2, a3);
}

uint64_t sub_19B930744(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B930818(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B930884(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B930884(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 928))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = Copy != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B930B1C(uint64_t a1, uint64_t a2, const void *a3)
{
  arg = 0;
  if ((*(*a1 + 912))(a1, a2, &arg))
  {
    CFAutorelease(arg);
    v6 = CFGetTypeID(arg);
    if (v6 == CFArrayGetTypeID())
    {
      Mutable = arg;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      CFAutorelease(Mutable);
      CFArrayAppendValue(Mutable, arg);
    }

    v8 = CFGetTypeID(a3);
    if (v8 == CFArrayGetTypeID())
    {
      v11.length = CFArrayGetCount(a3);
      v11.location = 0;
      CFArrayAppendArray(Mutable, a3, v11);
    }

    else
    {
      CFArrayAppendValue(Mutable, a3);
    }
  }

  else
  {
    Mutable = a3;
  }

  return (*(*a1 + 896))(a1, a2, Mutable);
}

uint64_t sub_19B930CB8(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v4 = (*(*a1 + 864))(a1, v3);
  CFRelease(v3);
  return v4;
}

uint64_t sub_19B930D64(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
  }

  else
  {
    Count = 1;
  }

  CFRelease(cf);
  return Count;
}

BOOL sub_19B930EB0(uint64_t a1, CFDataRef *a2)
{
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(a1 + 8), kCFPropertyListXMLFormat_v1_0, 0, 0);
  *a2 = Data;
  return Data != 0;
}

uint64_t sub_19B930F00(uint64_t a1, CFTypeRef *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  error = 0;
  if (v4)
  {
    v5 = v4;
    if (!CFWriteStreamOpen(v4))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v11 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "could not open write stream", buf, 2u);
      }

      v12 = sub_19B87DD40();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_54;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      *v23 = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v13);
      if (v13 == buf)
      {
        goto LABEL_54;
      }

LABEL_53:
      free(v13);
LABEL_54:
      v7 = 0;
LABEL_55:
      CFRelease(v5);
      if (error)
      {
        CFRelease(error);
      }

      goto LABEL_57;
    }

    v6 = CFPropertyListWrite(*(a1 + 8), v5, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    if (!error && v6)
    {
      *a2 = CFWriteStreamCopyProperty(v5, *MEMORY[0x1E695E900]);
      CFWriteStreamClose(v5);
      v7 = 1;
      goto LABEL_55;
    }

    if (error)
    {
      Code = CFErrorGetCode(error);
      if (error)
      {
        Domain = CFErrorGetDomain(error);
        goto LABEL_34;
      }
    }

    else
    {
      Code = 0;
    }

    Domain = @"unknown error";
LABEL_34:
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v16 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(Domain, buf);
      v17 = v32 >= 0 ? buf : *buf;
      *v23 = 134349314;
      *&v23[4] = Code;
      v24 = 2082;
      v25 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_FAULT, "could not write data, error code, %{public}ld, error domain, %{public}s", v23, 0x16u);
      if (v32 < 0)
      {
        operator delete(*buf);
      }
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    sub_19B929670(Domain, v23);
    if (v26 >= 0)
    {
      v19 = v23;
    }

    else
    {
      v19 = *v23;
    }

    v27 = 134349314;
    v28 = Code;
    v29 = 2082;
    v30 = v19;
    v13 = _os_log_send_and_compose_impl();
    if (v26 < 0)
    {
      operator delete(*v23);
    }

    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v13);
    if (v13 == buf)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
  }

  v8 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "could not create write stream", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    *v23 = 0;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v7 = 0;
LABEL_57:
  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL sub_19B93149C(void *a1, const __CFData *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  error = 0;
  v5 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 1uLL, 0, &error);
  if (v5)
  {
    v6 = a1[1];
    if (v6)
    {
      CFRelease(v6);
    }

    a1[1] = v5;
    (*(*a1 + 848))(a1);
    goto LABEL_35;
  }

  if (!error)
  {
    Code = 0;
    goto LABEL_9;
  }

  Code = CFErrorGetCode(error);
  if (!error)
  {
LABEL_9:
    Domain = @"unknown error";
    goto LABEL_10;
  }

  Domain = CFErrorGetDomain(error);
LABEL_10:
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
  }

  v9 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    if (Domain)
    {
      sub_19B929670(Domain, __p);
      if (v26 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 134349314;
      *&buf[4] = Code;
      v18 = 2082;
      v19 = v10;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 134349314;
      *&buf[4] = Code;
      v18 = 2082;
      v19 = "unknown error";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
    }
  }

  v11 = sub_19B87DD40();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    if (Domain)
    {
      sub_19B929670(Domain, buf);
      if (v20 >= 0)
      {
        v12 = buf;
      }

      else
      {
        v12 = *buf;
      }
    }

    else
    {
      v12 = "unknown error";
    }

    v21 = 134349314;
    v22 = Code;
    v23 = 2082;
    v24 = v12;
    v13 = _os_log_send_and_compose_impl();
    if (Domain && v20 < 0)
    {
      operator delete(*buf);
    }

    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::deserialize(const CFDataRef)", "CoreLocation: %s\n", v13);
    if (v13 != __p)
    {
      free(v13);
    }
  }

LABEL_35:
  if (error)
  {
    CFRelease(error);
  }

  result = v5 != 0;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B93184C(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  (*(*a1 + 800))(a1, __p);
  if (qword_1EAFE47C8 != -1)
  {
    dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
  }

  v1 = qword_1EAFE47D0;
  if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
  {
    v2 = __p;
    if (v8 < 0)
    {
      v2 = __p[0];
    }

    *buf = 136315138;
    v12 = v2;
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v3 = sub_19B87DD40();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
    }

    v4 = __p;
    if (v8 < 0)
    {
      v4 = __p[0];
    }

    v9 = 136315138;
    v10 = v4;
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLNameValuePair::print() const", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B931A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B931A9C(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 8);
  if (v4 && CFDictionaryGetCount(v4))
  {
    memset(&context, 0, sizeof(context));
    CFDictionaryApplyFunction(*(a1 + 8), sub_19B931B70, &context);
    std::string::operator=(a2, &context);
    if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(context.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = 8;
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = 8;
    }

    strcpy(a2, "<empty>\n");
  }
}

void sub_19B931B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B931B70(const __CFString *a1, const __CFString *a2, std::string *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    memset(&__p, 0, sizeof(__p));
    sub_19B92C864(a1, &__p);
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v9 = __p.__r_.__value_.__r.__words[0];
      Count = CFDictionaryGetCount(a2);
      p_p = &__p;
      if (v8 < 0)
      {
        p_p = v9;
      }

      snprintf(__str, 0x100uLL, "%s = <dictionary (%ld entries)>:\n", p_p, Count);
      v12 = strlen(__str);
      std::string::append(a3, __str, v12);
      CFDictionaryApplyFunction(a2, sub_19B931B70, a3);
    }

    else
    {
      v16 = CFGetTypeID(a2);
      if (v16 == CFArrayGetTypeID())
      {
        v17.length = CFArrayGetCount(a2);
        v18 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        *&context.__r_.__value_.__l.__data_ = v18;
        context.__r_.__value_.__r.__words[2] = a3;
        v17.location = 0;
        CFArrayApplyFunction(a2, v17, sub_19B932A6C, &context);
      }

      else
      {
        v19 = CFGetTypeID(a2);
        if (v19 == CFStringGetTypeID())
        {
          memset(&context, 0, sizeof(context));
          if (sub_19B92C864(a2, &context))
          {
            v20 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = __p.__r_.__value_.__r.__words[0];
            }

            p_context = &context;
            if ((context.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_context = context.__r_.__value_.__r.__words[0];
            }

            snprintf(__str, 0x100uLL, "%s = %s\n", v20, p_context);
          }

          v22 = strlen(__str);
          std::string::append(a3, __str, v22);
          if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(context.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v23 = CFGetTypeID(a2);
          if (v23 == CFNumberGetTypeID())
          {
            context.__r_.__value_.__r.__words[0] = 0;
            if (sub_19B92C4EC(a2, &context))
            {
              v24 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v24 = __p.__r_.__value_.__r.__words[0];
              }

              snprintf(__str, 0x100uLL, "%s = %0.6f\n", v24, *&context.__r_.__value_.__l.__data_);
            }

            v25 = strlen(__str);
            std::string::append(a3, __str, v25);
          }

          else
          {
            v26 = CFGetTypeID(a2);
            if (v26 == CFBooleanGetTypeID())
            {
              CFBooleanGetValue(a2);
              snprintf(__str, 0x100uLL, "%s = %d\n");
            }

            else
            {
              CFGetTypeID(a2);
              snprintf(__str, 0x100uLL, "%s = <unhandled value type %lu>\n");
            }

            v27 = strlen(__str);
            std::string::append(a3, __str, v27);
          }
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    snprintf(__str, 0x100uLL, "type ID does not match - %lu vs %lu\n", v13, TypeID);
    v15 = strlen(__str);
    std::string::append(a3, __str, v15);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_19B931EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B931F28(const __CFString *a1, const __CFString *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 != CFStringGetTypeID())
  {
    goto LABEL_101;
  }

  memset(&v56, 0, sizeof(v56));
  sub_19B92C864(a1, &v56);
  v5 = CFGetTypeID(a2);
  if (v5 == CFDictionaryGetTypeID())
  {
    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
    }

    v6 = qword_1EAFE47D0;
    if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
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
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "\t%s = <dictionary (%ld entries)>:", buf, 0x16u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE47C8 != -1)
      {
        dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
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
      sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    CFDictionaryApplyFunction(a2, sub_19B931F28, 0);
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
    CFArrayApplyFunction(a2, v18, sub_19B9329E4, buf);
    goto LABEL_99;
  }

  v20 = CFGetTypeID(a2);
  if (v20 == CFStringGetTypeID())
  {
    memset(&__p, 0, sizeof(__p));
    if (sub_19B92C864(a2, &__p))
    {
      if (qword_1EAFE47C8 != -1)
      {
        dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
      }

      v21 = qword_1EAFE47D0;
      if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
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
        _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "\t%s = %s", buf, 0x16u);
      }

      v24 = sub_19B87DD40();
      if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE47C8 != -1)
        {
          dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
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
        sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v27);
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
    if (!sub_19B92C4EC(a2, v57))
    {
      goto LABEL_99;
    }

    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
    }

    v29 = qword_1EAFE47D0;
    if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
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
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEBUG, "\t%s = %0.6f", buf, 0x16u);
    }

    v31 = sub_19B87DD40();
    if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
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
    sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v33);
    if (v33 == buf)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v34 = CFGetTypeID(a2);
  if (v34 == CFBooleanGetTypeID())
  {
    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
    }

    v35 = qword_1EAFE47D0;
    if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
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
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "\t%s = %d", buf, 0x12u);
    }

    v40 = sub_19B87DD40();
    if (*(v40 + 160) <= 1 && *(v40 + 164) <= 1 && *(v40 + 168) <= 1 && !*(v40 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
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
    sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v33);
  }

  else
  {
    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
    }

    v45 = qword_1EAFE47D0;
    if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
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
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "\t%s = <unhandled value type %lu>", buf, 0x16u);
    }

    v50 = sub_19B87DD40();
    if (*(v50 + 160) <= 1 && *(v50 + 164) <= 1 && *(v50 + 168) <= 1 && !*(v50 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
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
    sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v33);
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

void sub_19B932978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9329E4(uint64_t a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_19B931F28(v4, a1);
  ++*(a2 + 8);

  CFRelease(v4);
}

void sub_19B932A6C(uint64_t a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_19B931B70(v4, a1, *(a2 + 16));
  ++*(a2 + 8);

  CFRelease(v4);
}

os_log_t sub_19B932AF8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

os_log_t sub_19B932B28()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

os_log_t sub_19B932B58()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EAFE47D0 = result;
  return result;
}

os_log_t sub_19B9342E4()
{
  result = os_log_create("com.apple.locationd.Position", "Position");
  qword_1EAFE4770 = result;
  return result;
}

BOOL sub_19B934314()
{
  v0 = objc_autoreleasePoolPush();
  sub_19B93435C();
  v1 = qword_1EAFE5B58 != 0;
  [qword_1EAFE5B58 showCalibrationAlert];
  objc_autoreleasePoolPop(v0);
  return v1;
}

void sub_19B93435C()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE5100)
  {
    goto LABEL_2;
  }

  qword_1EAFE5100 = dlopen("/System/Library/PrivateFrameworks/CompassUI.framework/CompassUI", 1);
  if (qword_1EAFE5100)
  {
    qword_1EAFE5B58 = NSClassFromString(&cfstr_Cuicalibration.isa);
    if (!qword_1EAFE5B58)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6C430);
      }

      v1 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_FAULT, "Could not load CUICalibrationClass from CompassUI framework", buf, 2u);
      }

      v2 = sub_19B87DD40();
      if ((*(v2 + 160) & 0x80000000) == 0 || (*(v2 + 164) & 0x80000000) == 0 || (*(v2 + 168) & 0x80000000) == 0 || *(v2 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 == -1)
        {
LABEL_22:
          v5 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "void CLClientLoadCompassUIIfNecessary(void)", "CoreLocation: %s\n", v5);
          if (v5 != buf)
          {
            free(v5);
          }

          goto LABEL_2;
        }

LABEL_28:
        dispatch_once(&qword_1ED519088, &unk_1F0E6C430);
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6C430);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "Unable to load CompassUI framework", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

LABEL_2:
  v0 = *MEMORY[0x1E69E9840];
}

void sub_19B934624()
{
  v0 = objc_autoreleasePoolPush();
  sub_19B93435C();
  [qword_1EAFE5B58 dismissCalibrationAlert];

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_19B93466C(uint64_t a1)
{
  *a1 = &unk_1F0E6C460;
  pthread_mutex_destroy(*(a1 + 8));
  v2 = *(a1 + 8);
  v3 = *(v2 + 104);
  if (v3)
  {
    free(v3);
    v2 = *(a1 + 8);
    *(v2 + 104) = 0;
  }

  [*(v2 + 64) assertInside];

  v4 = *(a1 + 8);
  if (v4)
  {
    MEMORY[0x19EAE98C0](v4, 0x10B0C4016A090D5);
  }

  return a1;
}

void sub_19B934704(uint64_t a1)
{
  sub_19B93466C(a1);

  JUMPOUT(0x19EAE98C0);
}

BOOL sub_19B93477C(uint64_t a1)
{
  [*(*(a1 + 8) + 64) assertInside];
  v2 = *(*(a1 + 8) + 80);
  return v2 == pthread_self();
}

BOOL sub_19B9347BC(uint64_t a1)
{
  [*(*(a1 + 8) + 64) assertInside];
  v2 = *(*(a1 + 8) + 80);
  return v2 != pthread_self();
}

os_log_t sub_19B934804()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

uint64_t sub_19B934A5C(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___CLMapsXPCServiceManager;
  qword_1ED519168 = [objc_msgSendSuper2(&v2 allocWithZone_];
  return [qword_1ED519168 createConnection];
}

uint64_t sub_19B935280(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v10 = [a2 code];
    v11 = 2114;
    v12 = [a2 domain];
    v13 = 2113;
    v14 = [a2 localizedDescription];
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService synchronous map data query returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v5 = sub_19B87DD40();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    [a2 code];
    [a2 domain];
    [a2 localizedDescription];
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B9354D8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v10 = [a2 code];
    v11 = 2114;
    v12 = [a2 domain];
    v13 = 2113;
    v14 = [a2 localizedDescription];
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService asynchronous map data query returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v5 = sub_19B87DD40();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    [a2 code];
    [a2 domain];
    [a2 localizedDescription];
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B935730(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = mach_continuous_time();
  v5 = (sub_19B994BF4(v4) - *(*(*(a1 + 40) + 8) + 24)) * 1000.0;
  if (v5 > 200.0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v6 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v7 = [a2 count];
      }

      else
      {
        v7 = -1;
      }

      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      *buf = 67241729;
      v21 = v7;
      v22 = 1026;
      v23 = a2 == 0;
      v24 = 2050;
      v25 = v5;
      v26 = 2053;
      v27 = v8;
      v28 = 2053;
      v29 = v9;
      v30 = 2050;
      v31 = v10;
      v32 = 1026;
      v33 = v11;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned data,roadCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,syncCall,%{public}d", buf, 0x3Cu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      if (a2)
      {
        [a2 count];
      }

      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B935A1C(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = mach_continuous_time();
  v5 = (sub_19B994BF4(v4) - *(*(*(a1 + 40) + 8) + 24)) * 1000.0;
  if (v5 > 200.0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v6 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v7 = [a2 count];
      }

      else
      {
        v7 = -1;
      }

      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      *buf = 67241729;
      v21 = v7;
      v22 = 1026;
      v23 = a2 == 0;
      v24 = 2050;
      v25 = v5;
      v26 = 2053;
      v27 = v8;
      v28 = 2053;
      v29 = v9;
      v30 = 2050;
      v31 = v10;
      v32 = 1026;
      v33 = v11;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned Basic style building data,buildingCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,syncCall,%{public}d", buf, 0x3Cu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      if (a2)
      {
        [a2 count];
      }

      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B935D08(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = mach_continuous_time();
  v5 = (sub_19B994BF4(v4) - *(*(*(a1 + 40) + 8) + 24)) * 1000.0;
  if (v5 > 200.0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v6 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v7 = [a2 count];
      }

      else
      {
        v7 = -1;
      }

      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      *buf = 67241729;
      v21 = v7;
      v22 = 1026;
      v23 = a2 == 0;
      v24 = 2050;
      v25 = v5;
      v26 = 2053;
      v27 = v8;
      v28 = 2053;
      v29 = v9;
      v30 = 2050;
      v31 = v10;
      v32 = 1026;
      v33 = v11;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned Extended style building data,buildingCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,syncCall,%{public}d", buf, 0x3Cu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      if (a2)
      {
        [a2 count];
      }

      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B936290(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 40) = a2;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v8 = [a2 code];
    v9 = 2114;
    v10 = [a2 domain];
    v11 = 2113;
    v12 = [a2 localizedDescription];
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    [a2 code];
    [a2 domain];
    [a2 localizedDescription];
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager clearMemoryAndExitHelperProcessCleanly]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B936740(uint64_t a1)
{
  result = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_onTimerFire_ selector:0 userInfo:0 repeats:900.0];
  *(*(a1 + 32) + 8) = result;
  return result;
}

void sub_19B936D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B936D48(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 40) = a2;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v8 = [a2 code];
    v9 = 2114;
    v10 = [a2 domain];
    v11 = 2113;
    v12 = [a2 localizedDescription];
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    [a2 code];
    [a2 domain];
    [a2 localizedDescription];
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager releaseMapHelperServiceOSTransaction]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B93720C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 40) = a2;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v8 = [a2 code];
    v9 = 2114;
    v10 = [a2 domain];
    v11 = 2113;
    v12 = [a2 localizedDescription];
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    [a2 code];
    [a2 domain];
    [a2 localizedDescription];
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager cancelRoadDataRequest]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B93761C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B937634(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v10 = [a2 code];
    v11 = 2114;
    v12 = [a2 domain];
    v13 = 2113;
    v14 = [a2 localizedDescription];
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService synchronous map data query returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v5 = sub_19B87DD40();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    [a2 code];
    [a2 domain];
    [a2 localizedDescription];
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager constructRouteFromLocation:roadID:clRoadID:projection:toLocation:toRoadID:toCLRoadID:toProjection:maxRouteLength:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:iOSTime:familiarityData:useMapsAPIForIntersectionQuery:withReply:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B93788C(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = mach_continuous_time();
  v5 = sub_19B994BF4(v4) - *(*(*(a1 + 40) + 8) + 24);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v6 = v5 * 1000.0;
  v7 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 48);
    if (a2)
    {
      v9 = [a2 count];
    }

    else
    {
      v9 = -1;
    }

    *buf = 67240960;
    v16 = v8;
    v17 = 1026;
    v18 = v9;
    v19 = 1026;
    v20 = a2 == 0;
    v21 = 2050;
    v22 = v6;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned constructRouteFromLocation call,useMapsAPIForIntersectionQuery,%{public}d,roadCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf", buf, 0x1Eu);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v11 = *(a1 + 48);
    if (a2)
    {
      [a2 count];
    }

    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager constructRouteFromLocation:roadID:clRoadID:projection:toLocation:toRoadID:toCLRoadID:toProjection:maxRouteLength:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:iOSTime:familiarityData:useMapsAPIForIntersectionQuery:withReply:]_block_invoke", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B937DA0(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 40) = a2;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v8 = [a2 code];
    v9 = 2114;
    v10 = [a2 domain];
    v11 = 2113;
    v12 = [a2 localizedDescription];
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    [a2 code];
    [a2 domain];
    [a2 localizedDescription];
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager stopConstructRouteFromLocation]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B937FF4()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

uint64_t sub_19B93866C(uint64_t a1, const __CFString *a2, char a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = sub_19B87B468(a1);
  *v8 = &unk_1F0E6C548;
  *(v8 + 16) = 0;
  *(v8 + 3) = 0u;
  v9 = (v8 + 3);
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[10] = a4;
  v8[11] = -1;
  *(v8 + 96) = a3;
  sub_19B87B468(v8 + 13);
  *(a1 + 104) = &unk_1F0E6C910;
  sub_19B87B468((a1 + 120));
  *(a1 + 120) = &unk_1F0E6C910;
  *(a1 + 72) = a2;
  CFRetain(a2);
  CFRetain(*(a1 + 80));
  sub_19B929670(*(a1 + 80), &v59);
  if (v60 >= 0)
  {
    v10 = &v59;
  }

  else
  {
    v10 = v59;
  }

  v11 = getpwnam(v10);
  if (v11)
  {
    *(a1 + 88) = *&v11->pw_uid;
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v12 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v13 = &v59;
      if (v60 < 0)
      {
        v13 = v59;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "could not read user %{public}s uid/gid", buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }

      v15 = &v59;
      if (v60 < 0)
      {
        v15 = v59;
      }

      LODWORD(v61.__r_.__value_.__l.__data_) = 136446210;
      *(v61.__r_.__value_.__r.__words + 4) = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLPreferences::CLPreferences(CFStringRef, BOOL, CFStringRef)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  if (SHIBYTE(v60) < 0)
  {
    sub_19B874C9C(__dst, v59, *(&v59 + 1));
  }

  else
  {
    *__dst = v59;
    v57 = v60;
  }

  sub_19B953254(__dst, &v58);
  v17 = std::string::append(&v58, "/Library/Preferences/", 0x15uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_19B929670(a2, &v53);
  if ((v55 & 0x80u) == 0)
  {
    v19 = &v53;
  }

  else
  {
    v19 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v20 = v55;
  }

  else
  {
    v20 = v54;
  }

  v21 = std::string::append(&v61, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  sub_19B8759E8(&__p, ".plist");
  if ((v52 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v52 & 0x80u) == 0)
  {
    v24 = v52;
  }

  else
  {
    v24 = v51;
  }

  v25 = std::string::append(buf, p_p, v24);
  v26 = v25->__r_.__value_.__r.__words[0];
  v62[0] = v25->__r_.__value_.__l.__size_;
  *(v62 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v9);
  }

  v28 = v62[0];
  *(a1 + 24) = v26;
  *(a1 + 32) = v28;
  *(a1 + 39) = *(v62 + 7);
  *(a1 + 47) = v27;
  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    sub_19B874C9C(v48, v59, *(&v59 + 1));
  }

  else
  {
    *v48 = v59;
    v49 = v60;
  }

  sub_19B953400(v48, &v58);
  v29 = std::string::append(&v58, "/", 1uLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  sub_19B929670(a2, &v53);
  if ((v55 & 0x80u) == 0)
  {
    v31 = &v53;
  }

  else
  {
    v31 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v32 = v55;
  }

  else
  {
    v32 = v54;
  }

  v33 = std::string::append(&v61, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  sub_19B8759E8(&__p, ".plist");
  if ((v52 & 0x80u) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p;
  }

  if ((v52 & 0x80u) == 0)
  {
    v36 = v52;
  }

  else
  {
    v36 = v51;
  }

  v37 = std::string::append(buf, v35, v36);
  v38 = v37->__r_.__value_.__r.__words[0];
  v62[0] = v37->__r_.__value_.__l.__size_;
  *(v62 + 7) = *(&v37->__r_.__value_.__r.__words[1] + 7);
  v39 = HIBYTE(v37->__r_.__value_.__r.__words[2]);
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v40 = v62[0];
  *(a1 + 48) = v38;
  *(a1 + 56) = v40;
  *(a1 + 63) = *(v62 + 7);
  *(a1 + 71) = v39;
  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  v41 = getpwnam("root");
  v45 = 0;
  if (v41)
  {
    v42 = v41;
    pw_uid = v41->pw_uid;
    if (pw_uid == getuid())
    {
      pw_gid = v42->pw_gid;
      if (pw_gid == getgid())
      {
        v45 = 1;
      }
    }
  }

  *(a1 + 16) = v45;
  sub_19B938E40(a1);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  v46 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B938CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_19B8756F0(v65);
  sub_19B8756F0(v64);
  if (*(v63 + 71) < 0)
  {
    operator delete(*(v63 + 48));
  }

  if (*(v63 + 47) < 0)
  {
    operator delete(*v66);
  }

  sub_19B8756F0(v63);
  _Unwind_Resume(a1);
}

BOOL sub_19B938E40(uint64_t a1)
{
  os_unfair_lock_lock(&unk_1EAFE5B38);
  v2 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_7;
    }

    v2 = *v2;
    goto LABEL_6;
  }

  if (*(a1 + 71))
  {
LABEL_6:
    sub_19B927F3C((a1 + 120), v2);
  }

LABEL_7:
  v3 = CFPreferencesSynchronize(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E898]);
  if (*(a1 + 16) == 1)
  {
    sub_19B938FCC(a1, 0);
  }

  os_unfair_lock_unlock(&unk_1EAFE5B38);
  return v3 != 0;
}

void *sub_19B938EFC(uint64_t a1)
{
  *a1 = &unk_1F0E6C548;
  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 80));
  sub_19B8756F0((a1 + 120));
  sub_19B8756F0((a1 + 104));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return sub_19B8756F0(a1);
}

void sub_19B938F94(uint64_t a1)
{
  sub_19B938EFC(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B938FCC(char *a1, int a2)
{
  v65 = *MEMORY[0x1E69E9840];
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

    if (!stat(v5, &v51) && (v51.st_uid != *(v2 + 22) || v51.st_gid != *(v2 + 23) || (~v51.st_mode & 0x1B6) != 0))
    {
      p_info = CLLocationManagerInternal.info;
      if (qword_1ED519058 != -1)
      {
        goto LABEL_90;
      }

      while (1)
      {
        v7 = off_1ED519060;
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEFAULT))
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
          *(&buf[0].st_ino + 6) = v51.st_uid;
          HIWORD(buf[0].st_uid) = 1024;
          buf[0].st_gid = v9;
          LOWORD(buf[0].st_rdev) = 1024;
          *(&buf[0].st_rdev + 2) = v51.st_gid;
          *(&buf[0].st_rdev + 3) = 1024;
          LODWORD(buf[0].st_atimespec.tv_sec) = v10;
          WORD2(buf[0].st_atimespec.tv_sec) = 1024;
          *(&buf[0].st_atimespec.tv_sec + 6) = v51.st_mode;
          WORD1(buf[0].st_atimespec.tv_nsec) = 1024;
          HIDWORD(buf[0].st_atimespec.tv_nsec) = 438;
          _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", buf, 0x30u);
        }

        v11 = sub_19B87DD40();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[11] != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }

          if (v2[47] < 0)
          {
            v3 = *v3;
          }

          v12 = *(v2 + 22);
          v13 = *(v2 + 23);
          v52 = 136316674;
          v53 = v3;
          v54 = 1024;
          st_uid = v51.st_uid;
          v56 = 1024;
          *v57 = v12;
          *&v57[4] = 1024;
          *&v57[6] = v51.st_gid;
          v58 = 1024;
          v59 = v13;
          v60 = 1024;
          st_mode = v51.st_mode;
          v62 = 1024;
          v63 = 438;
          LODWORD(v49) = 48;
          v14 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v14);
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

        v18 = v17;
        v19 = [-[__CFString pathComponents](v17 "pathComponents")] - 1;
        if (v19 < 2)
        {
LABEL_34:
          CFRelease(v18);
          break;
        }

        v20 = v18;
        while (1)
        {
          v20 = [(__CFString *)v20 stringByDeletingLastPathComponent:v48];
          if (([(__CFString *)v20 isEqualToString:@"/var"]& 1) == 0 && ([(__CFString *)v20 isEqualToString:@"/tmp"]& 1) == 0 && !lstat([(__CFString *)v20 fileSystemRepresentation], buf) && (buf[0].st_mode & 0xF000) == 0xA000)
          {
            break;
          }

          if (--v19 <= 1)
          {
            goto LABEL_34;
          }
        }

        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
        }

        v46 = off_1ED519060;
        p_info = &off_19BA89000;
        v3 = "assert";
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }
        }

        v47 = off_1ED519060;
        if (os_signpost_enabled(off_1ED519060))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_signpost_emit_with_name_impl(&dword_19B873000, v47, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }
        }

        v2 = off_1ED519060;
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v49 = 392;
        v50 = "setFileAttributes";
        v48 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLPreferences.mm";
        abort_report_np();
LABEL_90:
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }

      v21 = v2 + 24;
      if (v2[47] < 0)
      {
        v21 = *v15;
      }

      if (!lstat(v21, &v51))
      {
        v23 = v2 + 24;
        if (v2[47] < 0)
        {
          v23 = *v15;
        }

        if (lchmod(v23, 0x1B6u))
        {
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }

          v24 = off_1ED519060;
          if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
          {
            v25 = v2 + 24;
            if (v2[47] < 0)
            {
              v25 = *v15;
            }

            v26 = *__error();
            v27 = __error();
            v28 = strerror(*v27);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v25;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v26;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v28;
            _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_FAULT, "could not lchmod %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v29 = sub_19B87DD40();
          if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED519058 != -1)
            {
              dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
            }

            v30 = v2 + 24;
            if (v2[47] < 0)
            {
              v30 = *v15;
            }

            v31 = *__error();
            v32 = __error();
            v33 = strerror(*v32);
            v52 = 136446722;
            v53 = v30;
            v54 = 1026;
            st_uid = v31;
            v56 = 2082;
            *v57 = v33;
            v34 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v34);
            if (v34 != buf)
            {
              free(v34);
            }
          }
        }

        v35 = v2 + 24;
        if (v2[47] < 0)
        {
          v35 = *v15;
        }

        if (lchown(v35, *(v2 + 22), *(v2 + 23)))
        {
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }

          v36 = off_1ED519060;
          if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
          {
            v37 = v2 + 24;
            if (v2[47] < 0)
            {
              v37 = *v15;
            }

            v38 = *__error();
            v39 = __error();
            v40 = strerror(*v39);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v37;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v38;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v40;
            _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_FAULT, "could not lchown %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v41 = sub_19B87DD40();
          if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED519058 != -1)
            {
              dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
            }

            if (v2[47] < 0)
            {
              v15 = *v15;
            }

            v42 = *__error();
            v43 = __error();
            v44 = strerror(*v43);
            v52 = 136446722;
            v53 = v15;
            v54 = 1026;
            st_uid = v42;
            v56 = 2082;
            *v57 = v44;
            v45 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v45);
            if (v45 != buf)
            {
              free(v45);
            }
          }
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

const __CFArray *sub_19B939954(CFStringRef *a1)
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

uint64_t sub_19B939A14(CFStringRef *a1, CFStringRef key)
{
  CFPreferencesSetValue(key, 0, a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  data = (*a1)[26].data;

  return (data)(a1);
}

CFIndex sub_19B939A98(uint64_t a1)
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

CFIndex sub_19B939AF0(uint64_t a1, CFStringRef key)
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

uint64_t sub_19B939B6C()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serialize(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B939D0C()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B939EAC()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::deserialize(const CFDataRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19B93A04C(const __CFString *a1, uint64_t a2)
{
  cf = 0;
  if ((*(*a2 + 912))(a2, a1, &cf))
  {
    sub_19B931F28(a1, cf);
    CFRelease(cf);
  }
}

void sub_19B93A0CC(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47C8 != -1)
  {
    dispatch_once(&qword_1EAFE47C8, &unk_1F0E6CD08);
  }

  if (!os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_26;
  }

  os_unfair_lock_lock(&unk_1EAFE5B38);
  if ((*(*(a1 + 120) + 856))(a1 + 120) >= 1)
  {
    sub_19B93184C(a1 + 120);
  }

  os_unfair_lock_unlock(&unk_1EAFE5B38);
  v2 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  v3 = v2;
  if (!v2 || !CFArrayGetCount(v2))
  {
    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6CD08);
    }

    v7 = qword_1EAFE47D0;
    if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "\t<empty>", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE47C8 != -1)
      {
        dispatch_once(&qword_1EAFE47C8, &unk_1F0E6CD08);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual void CLPreferences::print() const", "CoreLocation: %s\n", v9);
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
  CFArrayApplyFunction(v3, v14, sub_19B93A04C, a1);
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

  sub_19B93184C(v4);
}

void sub_19B93A41C()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual void CLPreferences::merge(const CLPreferences &, BOOL)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B93A5B8()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::loadFromFile(const char *)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B93A758()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B93A8F8()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToBinaryFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19B93AA98(uint64_t a1, CFStringRef key, CFPropertyListRef value)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v5 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v6 = v27;
      sub_19B929670(key, v27);
      if (v30 < 0)
      {
        v6 = *v27;
      }

      sub_19B929670(*(a1 + 72), v25);
      v7 = v26;
      v8 = v25[0];
      sub_19B929670(*(a1 + 80), __p);
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
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", buf, 0x20u);
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

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }

      sub_19B929670(key, v25);
      if (v26 >= 0)
      {
        v12 = v25;
      }

      else
      {
        v12 = v25[0];
      }

      sub_19B929670(*(a1 + 72), __p);
      v13 = v24;
      v14 = __p[0];
      sub_19B929670(*(a1 + 80), v21);
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

      sub_19B885924("Generic", 1, 0, 0, "virtual void CLPreferences::setInternal(const CFStringRef, const CFTypeRef)", "CoreLocation: %s\n", v17);
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

void sub_19B93AE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B93AEC8(uint64_t a1, const __CFString *a2, void *a3)
{
  os_unfair_lock_lock(&unk_1EAFE5B38);
  v6 = sub_19B876498(a1 + 120, a2, a3);
  os_unfair_lock_unlock(&unk_1EAFE5B38);
  if (v6)
  {
    return 1;
  }

  v7 = CFPreferencesCopyValue(a2, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  *a3 = v7;
  if (v7)
  {
    return 1;
  }

  return sub_19B876498(a1 + 104, a2, a3);
}

void sub_19B93AF94()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }
    }

    v1 = off_1ED519060;
    if (os_signpost_enabled(off_1ED519060))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }
    }

    v2 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }
}

void sub_19B93B1C4(void *a1)
{
  sub_19B8756F0(a1);

  JUMPOUT(0x19EAE98C0);
}

os_log_t sub_19B93B1FC()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

os_log_t sub_19B93B22C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EAFE47D0 = result;
  return result;
}

BOOL sub_19B93B274()
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

void sub_19B93B2E8(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED5191A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5191A0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519220, &dword_19B873000);
    __cxa_guard_release(&qword_1ED5191A0);
  }

  if (qword_1ED5191A8 != -1)
  {
    dispatch_once(&qword_1ED5191A8, &unk_1F0E6CD98);
  }

  if (byte_1ED519237 < 0)
  {
    v2 = xmmword_1ED519220;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519220;
    *(a1 + 16) = unk_1ED519230;
  }
}

const __CFDictionary *sub_19B93B3D0()
{
  v20[2] = *MEMORY[0x1E69E9840];
  result = _CFCopyServerVersionDictionary();
  if (result || (result = _CFCopySystemVersionDictionary()) != 0)
  {
    v1 = result;
    sub_19B874A98(v19, result);
    CFRelease(v1);
    memset(&v18, 0, sizeof(v18));
    memset(&v17, 0, sizeof(v17));
    memset(&__p, 0, sizeof(__p));
    if (!sub_19B92B084(v19, *MEMORY[0x1E695E1F0], &v17))
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

    if (!sub_19B92B084(v19, *MEMORY[0x1E695E208], &v18))
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

    if (!sub_19B92B084(v19, *MEMORY[0x1E695E1E8], &__p))
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

    sub_19B93B764(&v17.__r_.__value_.__l.__data_, &v18.__r_.__value_.__l.__data_, &v14);
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
    if (byte_1ED519237 < 0)
    {
      operator delete(xmmword_1ED519220);
    }

    *&xmmword_1ED519220 = v10;
    *(&xmmword_1ED519220 + 1) = v20[0];
    *(&xmmword_1ED519220 + 15) = *(v20 + 7);
    byte_1ED519237 = v11;
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

    result = sub_19B8756F0(v19);
  }

  else
  {
    if (byte_1ED519237 < 0)
    {
      *(&xmmword_1ED519220 + 1) = 6;
      v13 = xmmword_1ED519220;
    }

    else
    {
      v13 = &xmmword_1ED519220;
      byte_1ED519237 = 6;
    }

    strcpy(v13, "<null>");
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B93B6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
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

  sub_19B8756F0((v34 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_19B93B764@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

  result = sub_19B8D78C0(a3, v6 + v5);
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

void sub_19B93B830(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED5191B0, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_1ED5191B0);
    a1 = v3;
    if (v4)
    {
      __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519238, &dword_19B873000);
      __cxa_guard_release(&qword_1ED5191B0);
      a1 = v3;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B93B968;
  block[3] = &unk_1E753CEF0;
  block[4] = a1;
  if (qword_1ED5191B8 != -1)
  {
    dispatch_once(&qword_1ED5191B8, block);
  }

  if (byte_1ED51924F < 0)
  {
    sub_19B874C9C(a2, xmmword_1ED519238, *(&xmmword_1ED519238 + 1));
  }

  else
  {
    *a2 = xmmword_1ED519238;
    *(a2 + 16) = unk_1ED519248;
  }
}

double sub_19B93B968()
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

  sub_19B8759E8(&v3, v0);
  if (byte_1ED51924F < 0)
  {
    operator delete(xmmword_1ED519238);
  }

  result = *&v3;
  xmmword_1ED519238 = v3;
  unk_1ED519248 = v4;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B93BA28(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED5191C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5191C0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519250, &dword_19B873000);
    __cxa_guard_release(&qword_1ED5191C0);
  }

  if (qword_1ED5191C8 != -1)
  {
    dispatch_once(&qword_1ED5191C8, &unk_1F0E6CDB8);
  }

  if (byte_1ED519267 < 0)
  {
    v2 = xmmword_1ED519250;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519250;
    *(a1 + 16) = unk_1ED519260;
  }
}

void sub_19B93BB10()
{
  sub_19B953A8C(&__p);
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
              sub_19B929670(v9, &__p);
              if (byte_1ED519250[23] < 0)
              {
                operator delete(*byte_1ED519250);
              }

              *byte_1ED519250 = __p;
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

void sub_19B93BC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B93BC88(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED5191D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5191D0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519268, &dword_19B873000);
    __cxa_guard_release(&qword_1ED5191D0);
  }

  if (qword_1ED5191D8 != -1)
  {
    dispatch_once(&qword_1ED5191D8, &unk_1F0E6CDD8);
  }

  if (byte_1ED51927F < 0)
  {
    v2 = xmmword_1ED519268;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519268;
    *(a1 + 16) = unk_1ED519278;
  }
}

uint64_t sub_19B93BD70()
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
      sub_19B929670(CFProperty, &v6);
      if (byte_1ED51927F < 0)
      {
        operator delete(xmmword_1ED519268);
      }

      xmmword_1ED519268 = v6;
      unk_1ED519278 = v7;
      CFRelease(v5);
    }

    return IOObjectRelease(v3);
  }

  return result;
}

uint64_t sub_19B93BE2C()
{
  if (qword_1ED5191E0 != -1)
  {
    dispatch_once(&qword_1ED5191E0, &unk_1F0E6CDF8);
  }

  return dword_1ED519184;
}

void sub_19B93BE74()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  v0 = 7381266;
  switch(dword_1ED519180)
  {
    case 1:
    case 198:
    case 199:
    case 200:
    case 201:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
      v0 = 33562886;
      break;
    case 2:
    case 5:
    case 19:
    case 20:
    case 52:
    case 53:
    case 60:
    case 61:
    case 158:
    case 159:
    case 160:
    case 162:
    case 163:
    case 164:
    case 165:
    case 192:
    case 202:
    case 203:
    case 204:
      v0 = 532482;
      break;
    case 3:
    case 43:
    case 148:
      break;
    case 4:
      v0 = 8454;
      break;
    case 6:
    case 166:
    case 167:
      goto LABEL_39;
    case 7:
    case 10:
    case 13:
    case 14:
    case 29:
    case 31:
    case 33:
    case 35:
    case 44:
    case 46:
    case 48:
    case 62:
    case 64:
    case 76:
    case 134:
    case 136:
    case 144:
    case 146:
    case 154:
    case 156:
    case 193:
    case 195:
    case 205:
    case 207:
    case 209:
    case 211:
    case 213:
    case 215:
    case 217:
    case 219:
    case 220:
    case 221:
    case 223:
    case 225:
    case 227:
    case 229:
    case 231:
    case 241:
    case 242:
    case 244:
    case 246:
    case 248:
    case 250:
    case 252:
    case 254:
    case 257:
      v0 = 7905558;
      break;
    case 8:
    case 11:
    case 12:
    case 15:
    case 16:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 54:
    case 55:
    case 56:
      v0 = 8236319;
      break;
    case 9:
    case 17:
    case 18:
      v0 = 16624927;
      break;
    case 21:
      v0 = 4202498;
      break;
    case 30:
    case 32:
    case 34:
    case 36:
    case 45:
    case 47:
    case 49:
    case 63:
    case 65:
    case 77:
    case 135:
    case 137:
    case 145:
    case 155:
    case 157:
    case 194:
    case 196:
    case 197:
    case 210:
    case 212:
    case 214:
    case 216:
    case 218:
    case 222:
    case 224:
    case 226:
    case 228:
    case 230:
    case 232:
    case 255:
    case 256:
    case 258:
      v0 = 16624923;
      break;
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
      v0 = 37789954;
      break;
    case 50:
    case 51:
    case 74:
    case 75:
    case 81:
    case 82:
    case 83:
    case 84:
    case 89:
    case 90:
    case 95:
    case 96:
      v0 = 37789962;
      break;
    case 57:
    case 58:
    case 59:
      v0 = 8234271;
      break;
    case 66:
    case 67:
    case 85:
    case 86:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 94:
    case 97:
    case 98:
      v0 = 38120715;
      break;
    case 68:
    case 69:
    case 70:
    case 78:
    case 79:
    case 80:
    case 139:
    case 141:
    case 142:
    case 143:
      v0 = 41788703;
      break;
    case 71:
    case 72:
    case 73:
      v0 = 41790751;
      break;
    case 99:
    case 100:
    case 103:
    case 104:
    case 107:
    case 108:
    case 111:
    case 112:
    case 116:
    case 117:
    case 120:
    case 121:
    case 126:
    case 127:
    case 130:
    case 131:
      v0 = 38314250;
      break;
    case 101:
    case 102:
    case 105:
    case 106:
    case 109:
    case 110:
    case 113:
    case 114:
    case 115:
    case 118:
    case 119:
    case 122:
    case 123:
    case 124:
    case 125:
    case 128:
    case 129:
    case 132:
    case 133:
    case 280:
      v0 = 38645003;
      break;
    case 149:
      v0 = 4235530;
      break;
    case 150:
    case 151:
    case 152:
    case 153:
      v0 = 41226;
      break;
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
      v0 = 108899615;
      break;
    case 206:
    case 208:
    case 243:
    case 245:
    case 247:
    case 249:
    case 251:
    case 253:
      v0 = 83733787;
      break;
    default:
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
      }

      v1 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_FAULT))
      {
        if (qword_1ED519198 != -1)
        {
          dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
        }

        *buf = 67174657;
        v6 = dword_1ED519180;
        _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_FAULT, "unknown hardware type %{private}d", buf, 8u);
      }

      v2 = sub_19B87DD40();
      if ((*(v2 + 160) & 0x80000000) == 0 || (*(v2 + 164) & 0x80000000) == 0 || (*(v2 + 168) & 0x80000000) == 0 || (v0 = *(v2 + 152), *(v2 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
        }

        if (qword_1ED519198 != -1)
        {
          dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
        }

        v3 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "CLPlatformInfo::Provider CLPlatformInfo::getProviders()_block_invoke", "CoreLocation: %s\n", v3);
        if (v3 != buf)
        {
          free(v3);
        }

LABEL_39:
        v0 = 0;
      }

      break;
  }

  dword_1ED519184 = v0;
  v4 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B93C1F4()
{
  if (sub_19B93C294() || sub_19B93C330() || sub_19B93C3A8())
  {
    return 1;
  }

  return sub_19B93C440();
}

uint64_t sub_19B93C23C()
{
  if ((sub_19B93C4B4() & 1) != 0 || (sub_19B93C588() & 1) != 0 || sub_19B93C1F4() || sub_19B93C6C4() && !sub_19B93C3A8())
  {
    return 1;
  }

  return sub_19B93C614();
}

BOOL sub_19B93C294()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if ((dword_1ED519180 - 82) > 0x14 || ((1 << (dword_1ED519180 - 82)) & 0x1FFFD5) == 0)
  {
    return (dword_1ED519180 - 150) < 4;
  }

  return result;
}

BOOL sub_19B93C330()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return (dword_1ED519180 - 103) < 4;
}

BOOL sub_19B93C3A8()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if ((dword_1ED519180 - 107) >= 0x1B && (dword_1ED519180 - 178) >= 8)
  {
    return dword_1ED519180 == 280;
  }

  return result;
}

BOOL sub_19B93C440()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return dword_1ED519180 == 187;
}

uint64_t sub_19B93C4B4()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if (dword_1ED519180 > 134)
  {
    if (((dword_1ED519180 - 135) > 0xA || ((1 << (dword_1ED519180 + 121)) & 0x405) == 0) && dword_1ED519180 != 210 && dword_1ED519180 != 212)
    {
      return 0;
    }
  }

  else if ((dword_1ED519180 - 34) > 0x2E || ((1 << (dword_1ED519180 - 34)) & 0x700000008001) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19B93C588()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 139) < 0x3B) & (0x48000000005001DuLL >> (dword_1ED519180 + 117));
}

uint64_t sub_19B93C614()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if (((dword_1ED519180 - 174) > 0x3A || ((1 << (dword_1ED519180 + 82)) & 0x44400000001D003) == 0) && dword_1ED519180 != 251 && dword_1ED519180 != 253)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19B93C6C4()
{
  if (sub_19B93C724() & 1) != 0 || (sub_19B93C7AC() & 1) != 0 || sub_19B93C838() || sub_19B93C8D0() || (sub_19B93C944() & 1) != 0 || (sub_19B93C9F0())
  {
    return 1;
  }

  return sub_19B93CA78();
}

uint64_t sub_19B93C724()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 168) < 0x29) & (0x1400000000FuLL >> (dword_1ED519180 + 88));
}

uint64_t sub_19B93C7AC()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 172) < 0x2F) & (0x440001000033uLL >> (dword_1ED519180 + 84));
}

BOOL sub_19B93C838()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if ((dword_1ED519180 - 234) > 0xB || ((1 << (dword_1ED519180 + 22)) & 0xA03) == 0)
  {
    return (dword_1ED519180 - 178) < 2;
  }

  return result;
}

BOOL sub_19B93C8D0()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return dword_1ED519180 == 233;
}

uint64_t sub_19B93C944()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if (((dword_1ED519180 - 216) > 0x2A || ((1 << (dword_1ED519180 + 40)) & 0x58280304441) == 0) && (dword_1ED519180 - 180) >= 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19B93C9F0()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 182) < 0x3A) & (0x300000000000003uLL >> (dword_1ED519180 + 74));
}

uint64_t sub_19B93CA78()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 184) < 0x39) & (0x10000000000000BuLL >> (dword_1ED519180 + 72));
}

BOOL sub_19B93CB00()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  if (qword_1ED519218 != -1)
  {
    dispatch_once(&qword_1ED519218, &unk_1F0E6CEE8);
  }

  return byte_1ED51917C == 1;
}

void sub_19B93CB8C()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPhone"))
    {
      byte_1ED519178 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t sub_19B93CBFC()
{
  result = sub_19B93C23C();
  if (result)
  {
    if ((sub_19B93C4B4() & 1) != 0 || (sub_19B93C588() & 1) != 0 || sub_19B93C1F4() && !sub_19B93C294() && !sub_19B93C330())
    {
      if (qword_1ED5191E8 != -1)
      {
        dispatch_once(&qword_1ED5191E8, &unk_1F0E6CE18);
      }

      if (byte_1ED519178)
      {
        return 1;
      }
    }

    if (sub_19B93C6C4() && !sub_19B93C3A8())
    {
      return 1;
    }

    else
    {

      return sub_19B93C614();
    }
  }

  return result;
}

uint64_t sub_19B93CCA4()
{
  if (qword_1ED5191F0 != -1)
  {
    dispatch_once(&qword_1ED5191F0, &unk_1F0E6CE38);
  }

  return byte_1ED519179;
}

void sub_19B93CCEC()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1)
    {
      byte_1ED519179 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t sub_19B93CD70()
{
  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  if (dword_1ED519180 > 23)
  {
    if (dword_1ED519180 > 45)
    {
      if ((dword_1ED519180 - 46) < 2)
      {
        return -54;
      }

      if ((dword_1ED519180 - 62) < 2)
      {
        return -51;
      }

      if (dword_1ED519180 == 148)
      {
        return -56;
      }
    }

    else
    {
      if (dword_1ED519180 > 25)
      {
        if ((dword_1ED519180 - 26) >= 2)
        {
          if (dword_1ED519180 == 31)
          {
            return -53;
          }

          if (dword_1ED519180 != 43)
          {
            return -59;
          }
        }

        return -56;
      }

      if (dword_1ED519180 == 24)
      {
        return -57;
      }

      if (dword_1ED519180 == 25)
      {
        return -54;
      }
    }

    return -59;
  }

  if (dword_1ED519180 <= 12)
  {
    if ((dword_1ED519180 - 7) < 4)
    {
      return -56;
    }

    return -59;
  }

  if ((dword_1ED519180 - 13) >= 6)
  {
    if (dword_1ED519180 == 22)
    {
      return -58;
    }

    if (dword_1ED519180 != 23)
    {
      return -59;
    }

    return -56;
  }

  return -57;
}

void sub_19B93CE8C()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"IOPropertyMatch";
  v8[0] = &unk_1F0E8CD20;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v0);
  if (MatchingService)
  {
    byte_1ED51917B = 1;
    IOObjectRelease(MatchingService);
  }

  else
  {
    if (qword_1EAFE4748 != -1)
    {
      dispatch_once(&qword_1EAFE4748, &unk_1F0E6CF08);
    }

    v2 = qword_1EAFE4750;
    if (os_log_type_enabled(qword_1EAFE4750, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "Compass service missing", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4748 != -1)
      {
        dispatch_once(&qword_1EAFE4748, &unk_1F0E6CF08);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLPlatformInfo::supportsCompass()_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B93D090()
{
  result = os_log_create("com.apple.locationd.Utility", "Utility");
  qword_1EAFE4740 = result;
  return result;
}

void sub_19B93D0C0()
{
  v0 = objc_autoreleasePoolPush();
  byte_1ED51917C = 0;
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
              byte_1ED51917C = valuePtr == 5;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v0);
}

os_log_t sub_19B93D1D4()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE4750 = result;
  return result;
}

uint64_t sub_19B93D204(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v17[0] = *a2;
  v17[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B917A10(a1, v17, a3);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  *a1 = &unk_1F0E6CF58;
  *(a1 + 120) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 136) = _Q1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0xBFF0000000000000;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 467) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 334) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0xBFF0000000000000;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 1;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 608) = xmmword_19BA89490;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0x3FF0000000000000;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0xBFF0000000000000;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = _Q1;
  *(a1 + 752) = 256;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 816) = 0;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 600) = sub_19B93C1F4();
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
  }

  v10 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 600);
    *buf = 67240192;
    v21 = v11;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "CLMM,skipRMSECheckForScalingEntryThresholds,%{public}d", buf, 8u);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v13 = *(a1 + 600);
    v18 = 67240192;
    v19 = v13;
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLScoredMapMatcher::CLScoredMapMatcher(CLMapGeometryPtr, const std::string &)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B93D520(_Unwind_Exception *a1)
{
  v3 = *(v1 + 560);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
  }

  sub_19B9D3858(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B93D56C(uint64_t a1)
{
  *a1 = &unk_1F0E6CF58;
  v2 = *(a1 + 560);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  return sub_19B9D3858(a1);
}

void sub_19B93D5DC(uint64_t a1)
{
  sub_19B93D56C(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B93D614(uint64_t a1)
{
  *(a1 + 568) = 1;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 584) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v7 = _Q0;
  *v8 = 0xBFF0000000000000;
  v10[15] = 0;
  LODWORD(v10[16]) = 0;
  memset(&v10[10], 0, 34);
  memset(&v10[17], 0, 75);
  memset(&v10[27], 0, 56);
  memset(&v8[8], 0, 80);
  memset(v10, 0, 78);
  v9 = 0u;
  v10[34] = 0xBFF0000000000000;
  *(a1 + 168) = *v8;
  *(a1 + 152) = 0uLL;
  *(a1 + 136) = _Q0;
  *(a1 + 120) = 0uLL;
  *(a1 + 232) = *&v8[64];
  *(a1 + 216) = *&v8[48];
  *(a1 + 200) = *&v8[32];
  *(a1 + 184) = *&v8[16];
  std::string::operator=((a1 + 248), &v8[80]);
  memcpy((a1 + 272), v10, 0x118uLL);
  *(a1 + 592) = 0;
  *(a1 + 736) = v7;
  *(a1 + 752) = 256;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*&v8[80]);
  }
}

void sub_19B93D784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B93D7A0(uint64_t a1, uint64_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 840) == 1)
  {
    *a2 = 0x4066800000000000;
  }

  else
  {
    if (*(a1 + 776) != 1 || *(a1 + 808) == 1 && ((v5 = *(a1 + 792), v5 <= 15.0) || v5 <= *(a1 + 800) * 0.5))
    {
      result = 0;
      goto LABEL_22;
    }

    *a2 = 0x4066800000000000;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v6 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 776);
        v8 = *(a1 + 792);
        v9 = *(a1 + 800);
        v10 = *a2;
        *buf = 67240960;
        v19 = v7;
        v20 = 2050;
        v21 = v8;
        v22 = 2050;
        v23 = v9;
        v24 = 2050;
        v25 = v10;
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,holdCourseEngaged,%{public}d,fabsCourseDiffWithPriorSnap,%{public}.1lf,rawCourseUnc,%{public}.1lf,newCourseUnc,%{public}.1f", buf, 0x26u);
      }

      v11 = sub_19B87DD40();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v14 = *(a1 + 776);
        v15 = *(a1 + 792);
        v16 = *(a1 + 800);
        v17 = *a2;
        v12 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::shouldOverrideCourseUnc(double &)", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }

  result = 1;
LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B93DA44(uint64_t a1, uint64_t a2)
{
  v138 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = *(a1 + 128);
  v7 = sub_19BA0C01C((a1 + 608), *(a1 + 176), *(a1 + 184), *(a2 + 56), *(a2 + 64), *(a2 + 72));
  *(a1 + 840) = 0;
  v8 = *(a2 + 192);
  if (v8 > 179.0)
  {
    *(a1 + 840) = 1;
  }

  v9 = *(a2 + 104);
  if (v8 > 0.0 || v9 < 0.0)
  {
    v11 = *(a2 + 192);
  }

  else
  {
    v10 = *(a2 + 96);
    if (v10 >= 0.0)
    {
      v11 = 1.0;
      if (v10 <= 15.0)
      {
        v11 = 4.0;
        if (v10 <= 10.0)
        {
          v11 = 10.0;
          if (v10 <= 8.0)
          {
            v11 = 15.0;
            if (v10 <= 5.0)
            {
              if (v10 <= 3.0)
              {
                v11 = 25.0;
                if (v10 <= 2.5)
                {
                  v11 = dbl_19BA89360[v10 > 1.0];
                }
              }

              else
              {
                v11 = 19.9;
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = 180.0;
    }

    *(a2 + 192) = v11;
  }

  v12 = vabdd_f64(v4, v5);
  if (v9 >= 0.0 || v11 <= 0.0 || *(a2 + 96) >= 0.001 || v12 >= 2.2 || (v13 = *(a1 + 224), v13 < 0.0) || (v58 = *(a1 + 312), v58 <= 0.0) || v58 >= 90.0)
  {
    if (v9 < 0.0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(a2 + 104) = v13;
    v9 = v13;
  }

  if (v8 > 179.0)
  {
    if (*(a1 + 652) == 1)
    {
      v9 = *(a1 + 424);
      *(a2 + 104) = v9;
      v11 = 29.9;
    }

    else if (v12 >= 2.2 || (v9 = *(a1 + 224), v9 < 0.0) || (v115 = *(a1 + 312), v115 <= 0.0) || v115 >= 90.0)
    {
      *(a2 + 104) = 0xBFF0000000000000;
      v11 = -1.0;
      v9 = -1.0;
    }

    else
    {
      *(a2 + 104) = v9;
      if (v115 >= 29.9)
      {
        v11 = v115;
      }

      else
      {
        v11 = 29.9;
      }
    }

    *(a2 + 192) = v11;
    *(a1 + 848) = v9;
    *(a1 + 856) = v11;
  }

LABEL_30:
  v14 = *(a2 + 96);
  v15 = 12.0;
  if (v11 < 12.0 && (v11 > 0.0 ? (_NF = v14 < 2.0) : (_NF = 0), _NF) || ((v15 = 6.5, v11 > 0.0) ? (v17 = v11 < 6.5) : (v17 = 0), v17))
  {
    *(a2 + 192) = v15;
    v11 = v15;
  }

  v18 = v4 - v5;
  if (v9 >= 0.0 && v11 > 0.0 && v11 < 30.0)
  {
    v34 = *(a1 + 224);
    if (v34 >= 0.0 && v18 != 0.0)
    {
      v35 = fmod(v9 - v34, 360.0);
      if (v35 < 0.0)
      {
        v35 = v35 + 360.0;
      }

      if (v35 > 180.0)
      {
        v35 = v35 + -360.0;
      }

      if (fabs(v35 / v18) > 45.0)
      {
        *(a2 + 192) = 0x403E000000000000;
        v11 = 30.0;
      }
    }
  }

  v19 = v7;
  if ((*(a1 + 776) & 1) == 0 && *(a1 + 384) == 1 && v18 != 0.0 && v12 < 1.4 && v9 >= 0.0 && v14 < 5.0 && v19 < 5.0)
  {
    v36 = *(a1 + 224);
    if (v36 >= 0.0)
    {
      v37 = *(a1 + 312);
      if (v37 > 0.0 && v37 <= 29.9)
      {
        v38 = fmod(v9 - v36, 360.0);
        if (v38 < 0.0)
        {
          v38 = v38 + 360.0;
        }

        if (v38 > 180.0)
        {
          v38 = v38 + -360.0;
        }

        v39 = fabs(v38 / v18);
        if (v39 > 135.0)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            v40 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v41 = *(a2 + 8);
              v42 = *(a1 + 224);
              v44 = *(a2 + 96);
              v43 = *(a2 + 104);
              *buf = 134350080;
              *&buf[4] = v41;
              *&buf[12] = 2050;
              *&buf[14] = v43;
              *&buf[22] = 2050;
              *&buf[24] = v42;
              v130 = 2050;
              v131 = v44;
              v132 = 2050;
              v133 = v39;
              _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,high course rate,course,%{public}.1lf,priorCourse,%{public}.1lf,speed,%{public}.1lf,fabsCourseRate,%{public}.1lf", buf, 0x34u);
            }

            v6 = sub_19B87DD40();
            if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
              }

              v45 = *(a2 + 8);
              v46 = *(a1 + 224);
              v48 = *(a2 + 96);
              v47 = *(a2 + 104);
              *v120 = 134350080;
              *&v120[4] = v45;
              *&v120[12] = 2050;
              *&v120[14] = v47;
              *&v120[22] = 2050;
              *&v120[24] = v46;
              v121 = 2050;
              v122 = v48;
              v123 = 2050;
              v124 = v39;
              v49 = _os_log_send_and_compose_impl();
              v6 = sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v49);
              if (v49 != buf)
              {
                free(v49);
              }
            }
          }

          v9 = *(a1 + 224);
          *(a2 + 104) = v9;
          v11 = *(a1 + 312);
          *(a2 + 192) = v11;
          *(a1 + 848) = v9;
          *(a1 + 856) = v11;
        }
      }
    }
  }

  if (v9 < 0.0)
  {
    goto LABEL_44;
  }

  v50 = *(a2 + 96);
  if (v11 <= 0.0 || v11 >= 20.0 || v50 <= 5.0)
  {
    v51 = *(a1 + 736);
    if (v51 >= 0.0)
    {
      v52 = fmod(v9 - v51, 360.0);
      if (v52 < 0.0)
      {
        v52 = v52 + 360.0;
      }

      if (v52 > 180.0)
      {
        v52 = v52 + -360.0;
      }

      if (fabs(v52) < 30.0 && v50 < 5.0)
      {
        v88 = *(a1 + 744);
        if (v88 < v11)
        {
          *(a2 + 192) = v88;
        }
      }

      else
      {
        __asm { FMOV            V0.2D, #-1.0 }

        *(a1 + 736) = _Q0;
      }
    }
  }

  else
  {
    *(a1 + 736) = v9;
    *(a1 + 744) = v11;
  }

  v89 = *(a1 + 224);
  if (v89 < 0.0 || vabdd_f64(*(a2 + 8), *(a1 + 128)) >= 2.2)
  {
LABEL_44:
    *(a1 + 752) = 0;
    goto LABEL_45;
  }

  v90 = fmod(v9 - v89, 360.0);
  if (v90 < 0.0)
  {
    v90 = v90 + 360.0;
  }

  if (v90 > 180.0)
  {
    v90 = v90 + -360.0;
  }

  v91 = fabs(v90);
  if (*(a1 + 752))
  {
    if (v91 >= 8.0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v91 > 14.0)
  {
    *(a1 + 752) = 1;
  }

LABEL_45:
  if (*(a1 + 652) != 1 || v12 > 4.9)
  {
    *(a1 + 776) = 0;
    *(a1 + 780) = 0;
    *(a1 + 784) = 0;
    *(a1 + 808) = 0;
    *(a1 + 792) = 0u;
    goto LABEL_254;
  }

  v20 = sub_19B93EFE4(v6, *(a1 + 780), *(a1 + 777));
  if (v20 >= 11.1000001)
  {
    v21 = v20;
  }

  else
  {
    v21 = 11.1;
  }

  *buf = 0;
  *v120 = 0;
  sub_19BA0BE88((a1 + 608), v120, buf, &v119, *(a1 + 408), *(a1 + 416), *(a2 + 72), *(a2 + 56), *(a2 + 64), *(a2 + 72));
  v22 = *(a1 + 424);
  v23 = *v120 * *v120 + *buf * *buf;
  v24 = sqrtf(v23);
  v25 = *buf;
  v26 = *v120;
  v27 = atan2f(v25, v26);
  v28 = v22 * -0.0174532925;
  v29 = sinf(v27 + v28) * v24;
  v30 = fabsf(v29);
  v31 = (v21 * 0.5) + 7.5;
  if (*(a1 + 777) == 1 && v30 < v31)
  {
    goto LABEL_117;
  }

  v32 = *(a1 + 760);
  if (v32 == 1)
  {
    v33 = v29 <= -v31;
    v31 = 7.5;
LABEL_112:
    if (!v33 && v29 < v31)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

  if (v32 == 2)
  {
    v33 = v29 <= -7.5;
    goto LABEL_112;
  }

LABEL_116:
  if (v30 >= ((v21 * 0.5) * 0.5))
  {
    v60 = 0;
    goto LABEL_118;
  }

LABEL_117:
  v60 = 1;
LABEL_118:
  v61 = *(a2 + 104);
  v62 = 0.0;
  if (v61 >= 0.0)
  {
    v63 = fmod(v61 - v22, 360.0);
    if (v63 < 0.0)
    {
      v63 = v63 + 360.0;
    }

    if (v63 > 180.0)
    {
      v63 = v63 + -360.0;
    }

    v62 = fabs(v63);
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v64 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v65 = *(a2 + 192);
      v66 = *(a1 + 424);
      v68 = *(a2 + 96);
      v67 = *(a2 + 104);
      *buf = 134350592;
      *&buf[4] = v67;
      *&buf[12] = 2050;
      *&buf[14] = v65;
      *&buf[22] = 2050;
      *&buf[24] = v66;
      v130 = 2050;
      v131 = v68;
      v132 = 2050;
      v133 = v29;
      v134 = 1026;
      v135 = v60;
      v136 = 2050;
      v137 = v21;
      _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEBUG, "CLMM,course,%{public}.1lf,courseUnc,%{public}.1lf,lastSnapCourse,%{public}.1lf,speed,%{public}.1lf,acrossTrack,%{public}.1f,onRoad,%{public}d,widthUsed,%{public}.1lf", buf, 0x44u);
    }

    v69 = sub_19B87DD40();
    if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v70 = *(a2 + 192);
      v71 = *(a1 + 424);
      v73 = *(a2 + 96);
      v72 = *(a2 + 104);
      *v120 = 134350592;
      *&v120[4] = v72;
      *&v120[12] = 2050;
      *&v120[14] = v70;
      *&v120[22] = 2050;
      *&v120[24] = v71;
      v121 = 2050;
      v122 = v73;
      v123 = 2050;
      v124 = v29;
      v125 = 1026;
      v126 = v60;
      v127 = 2050;
      v128 = v21;
      v74 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v74);
      if (v74 != buf)
      {
        free(v74);
      }
    }
  }

  if (*(a2 + 228))
  {
    v75 = 1;
  }

  else
  {
    v76 = *(a2 + 96);
    v75 = v76 >= 0.0 && v76 < 0.35;
  }

  v77 = sub_19B93CBFC();
  v78 = *(a2 + 96);
  if (v77 && *(a2 + 184) > 0.0 && v75 && v78 < 0.002 && v78 >= 0.0)
  {
    v75 = *(a2 + 228) | (v12 >= 1.1) | (v19 <= 0.7);
  }

  if (v12 >= 3.0)
  {
    v79 = (v62 > 135.0) & ~v75;
  }

  else
  {
    v79 = 0;
  }

  if (v62 > 30.0)
  {
    v80 = v60;
  }

  else
  {
    v80 = 0;
  }

  if (v80 != 1 || (v79 & 1) != 0 || (*(a2 + 229) & 1) != 0 || (*(a1 + 816) & 1) != 0 || (v82 = *(a1 + 824) - *(a1 + 832), v82 < 0.0) || v82 >= 30.0)
  {
    if (*(a1 + 776) == 1)
    {
      if (v78 > 3.0 || v79 & 1 | (((v60 | v75) & 1) == 0))
      {
        v81 = 0;
        *(a1 + 776) = 0;
        *(a1 + 780) = 0;
        *(a1 + 784) = 0;
        *(a1 + 808) = 0;
        *(a1 + 792) = 0u;
      }

      else
      {
        v81 = 1;
      }
    }

    else if (v60 && (v78 < 1.5 || v19 < 1.5))
    {
      v81 = 1;
      *(a1 + 776) = 1;
    }

    else
    {
      v81 = 0;
    }

    if ((v75 & (*(a2 + 192) >= 30.0)) == 1)
    {
      *(a1 + 776) = 1;
    }

    else if ((v81 & 1) == 0 && *(a2 + 228) == 1)
    {
      v92 = *(a2 + 96);
      if ((v92 < 0.0 || v92 < 0.35) && *(a1 + 384) == 1 && v12 < 2.2 && v62 > 30.0)
      {
        *(a1 + 776) = 1;
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v116 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            *&buf[4] = v62;
            _os_log_impl(&dword_19B873000, v116, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse,engaged,large course diff when static,fabsCourseDiffWithPriorSnap,%{public}.1lf", buf, 0xCu);
          }

          v117 = sub_19B87DD40();
          if (*(v117 + 160) > 1 || *(v117 + 164) > 1 || *(v117 + 168) > 1 || *(v117 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            *v120 = 134349056;
            *&v120[4] = v62;
            v118 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v118);
            if (v118 != buf)
            {
              free(v118);
            }
          }
        }
      }
    }

    if (sub_19B93CBFC())
    {
      if ((*(a1 + 776) & 1) == 0 && v12 < 1.1 && *(a2 + 184) > 0.0)
      {
        v93 = *(a2 + 96);
        if (v93 >= 0.0 && v93 < 5.0 && v19 < 5.0 && !((*(a2 + 104) < 0.0) | v79 & 1) && v62 >= 135.0)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            v94 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349056;
              *&buf[4] = v62;
              _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse,engaged,large course diff at slow speed within one second,fabsCourseDiffWithPriorSnap,%{public}.1lf", buf, 0xCu);
            }

            v95 = sub_19B87DD40();
            if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
              }

              *v120 = 134349056;
              *&v120[4] = v62;
              v96 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v96);
              if (v96 != buf)
              {
                free(v96);
              }
            }
          }

          v97 = *(a1 + 224);
          *(a2 + 104) = v97;
          v98 = *(a1 + 312);
          *(a2 + 192) = v98;
          *(a1 + 848) = v97;
          *(a1 + 856) = v98;
        }
      }
    }
  }

  else
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v83 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v84 = *(a1 + 824) - *(a1 + 832);
        *buf = 134349056;
        *&buf[4] = v84;
        _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_DEBUG, "CLMM,detected course swing after a recent dismount,intervalSinceDismount,%{public}.1lf", buf, 0xCu);
      }

      v85 = sub_19B87DD40();
      if (*(v85 + 160) > 1 || *(v85 + 164) > 1 || *(v85 + 168) > 1 || *(v85 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v86 = *(a1 + 824) - *(a1 + 832);
        *v120 = 134349056;
        *&v120[4] = v86;
        v87 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v87);
        if (v87 != buf)
        {
          free(v87);
        }
      }
    }

    *(a1 + 776) = 1;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v99 = off_1EAFE4708;
    v100 = v19;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v101 = *(a1 + 776);
      v102 = *(a2 + 96);
      *buf = 67240704;
      *&buf[4] = v101;
      *&buf[8] = 2050;
      *&buf[10] = v102;
      *&buf[18] = 2050;
      *&buf[20] = v100;
      _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse,engaged,%{public}d,speed,%{public}.1lf,distance,%{public}.1lf", buf, 0x1Cu);
    }

    v103 = sub_19B87DD40();
    if (*(v103 + 160) > 1 || *(v103 + 164) > 1 || *(v103 + 168) > 1 || *(v103 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v104 = *(a1 + 776);
      v105 = *(a2 + 96);
      *v120 = 67240704;
      *&v120[4] = v104;
      *&v120[8] = 2050;
      *&v120[10] = v105;
      *&v120[18] = 2050;
      *&v120[20] = v100;
      v106 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v106);
      if (v106 != buf)
      {
        free(v106);
      }
    }
  }

  if (*(a1 + 776) == 1)
  {
    *(a1 + 808) = *(a2 + 104) >= 0.0;
    *(a1 + 792) = v62;
    *(a1 + 800) = *(a2 + 192);
    *(a2 + 104) = *(a1 + 424);
    *(a2 + 192) = 0x403DE66666666666;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v107 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v108 = *(a2 + 104);
        v109 = *(a2 + 192);
        *buf = 134349568;
        *&buf[4] = v108;
        *&buf[12] = 2050;
        *&buf[14] = v109;
        *&buf[22] = 2050;
        *&buf[24] = v62;
        _os_log_impl(&dword_19B873000, v107, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse,using prior snap,course,%{public}.1lf,courseUnc,%{public}.1lf,fabsCourseDiff,%{public}.1lf", buf, 0x20u);
      }

      v110 = sub_19B87DD40();
      if (*(v110 + 160) > 1 || *(v110 + 164) > 1 || *(v110 + 168) > 1 || *(v110 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v111 = *(a2 + 104);
        v112 = *(a2 + 192);
        *v120 = 134349568;
        *&v120[4] = v111;
        *&v120[12] = 2050;
        *&v120[14] = v112;
        *&v120[22] = 2050;
        *&v120[24] = v62;
        v113 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v113);
        if (v113 != buf)
        {
          free(v113);
        }
      }
    }
  }

LABEL_254:
  v114 = *MEMORY[0x1E69E9840];
}

float sub_19B93EFE4(uint64_t a1, unsigned int a2, int a3)
{
  result = 1.0;
  if ((a2 & 0xFFFFFFFE) != 8)
  {
    result = 7.4;
    if (a3)
    {
      result = 5.55;
    }

    if (a2 <= 7)
    {
      v4 = &unk_19BA8BB48;
      if (a3)
      {
        v4 = &unk_19BA8BB28;
      }

      return v4[a2];
    }
  }

  return result;
}

uint64_t sub_19B93F034(uint64_t a1, uint64_t a2, int a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v6 = fabs(*(a2 + 240));
  v7 = *(a1 + 360);
  v8 = *(a2 + 232);
  if (v6 < 25.0 || a3 != 0)
  {
    if (v8 > 12)
    {
      if (v8 <= 16)
      {
        if ((v8 - 15) >= 2)
        {
          if (v8 != 13)
          {
            if (v8 != 14)
            {
              goto LABEL_26;
            }

            goto LABEL_18;
          }

LABEL_25:
          v12 = 1;
          goto LABEL_27;
        }

LABEL_21:
        v12 = 3;
        goto LABEL_27;
      }

      if ((v8 - 17) < 4)
      {
LABEL_23:
        v12 = 4;
        goto LABEL_27;
      }

LABEL_26:
      v12 = 10;
      goto LABEL_27;
    }

LABEL_12:
    if (v8 > 2)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_28;
    }

    if (v8 <= 2)
    {
      v10 = 0;
      v11 = 0;
      v12 = -1;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v8 <= 7)
  {
    goto LABEL_12;
  }

  if (v8 > 0x14)
  {
    goto LABEL_24;
  }

  if (((1 << v8) & 0x1E000) != 0)
  {
    goto LABEL_21;
  }

  if (((1 << v8) & 0x1E0000) != 0)
  {
    goto LABEL_23;
  }

  if (((1 << v8) & 0x1800) == 0)
  {
LABEL_24:
    if ((v8 - 8) < 3)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

LABEL_18:
  v12 = 2;
LABEL_27:
  v10 = 1;
  v11 = 1;
LABEL_28:
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v13 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 648);
      *buf = 67240448;
      *v106 = v14;
      *&v106[4] = 1026;
      *&v106[6] = v14 + v12;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "CLMM,varFactorCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0xEu);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v100 = *(a1 + 648) + v12;
      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  *(a1 + 648) = (*(a1 + 648) + v12) & ~((*(a1 + 648) + v12) >> 31);
  v17 = *(a2 + 192);
  v18 = *(a2 + 104);
  if (v17 <= 0.0 || v18 < 0.0)
  {
    if (v18 >= 0.0)
    {
      v22 = 0;
      LOBYTE(v21) = 1;
    }

    else
    {
      LOBYTE(v21) = 0;
      v22 = 0;
    }

    goto LABEL_86;
  }

  if (v17 >= 180.0)
  {
    LOBYTE(v21) = 0;
LABEL_59:
    v22 = 1;
    goto LABEL_86;
  }

  v19 = *(a2 + 96);
  if (v19 <= 0.0 && (*(a2 + 228) & 1) != 0)
  {
LABEL_58:
    LOBYTE(v21) = 1;
    goto LABEL_59;
  }

  if (a3)
  {
    if (v6 > 67.5)
    {
      if (v19 > 8.33333333 || v17 < 20.0)
      {
        v21 = 6;
      }

      else
      {
        v21 = 4;
      }

      goto LABEL_72;
    }

    goto LABEL_58;
  }

  if (v17 < 20.0 || v19 > 8.33333333)
  {
    if (v6 > 67.5)
    {
      v21 = 18;
      goto LABEL_72;
    }

    if (v6 > 45.0)
    {
LABEL_69:
      v21 = 6;
      goto LABEL_72;
    }

    if (v6 > 30.0)
    {
      goto LABEL_71;
    }

    if (v6 > 20.0)
    {
      v21 = 1;
      goto LABEL_72;
    }
  }

  if (v6 > 67.5)
  {
    goto LABEL_69;
  }

  if (v6 > 45.0)
  {
LABEL_71:
    v21 = 2;
    goto LABEL_72;
  }

  v21 = 1;
  if (v6 <= 30.0)
  {
    goto LABEL_59;
  }

LABEL_72:
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 648);
      *buf = 67240448;
      *v106 = v24;
      *&v106[4] = 1026;
      *&v106[6] = v24 + v21;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMM,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0xEu);
    }

    v25 = sub_19B87DD40();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v101 = *(a1 + 648) + v21;
      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  *(a1 + 648) += v21;
  LOBYTE(v21) = 1;
  v22 = 1;
  v10 = 1;
  v11 = 1;
LABEL_86:
  v27 = *(a2 + 80);
  v28 = *(a2 + 200);
  if (v28 > 0.0)
  {
    v29 = *(a2 + 208);
    if (v29 > 0.0)
    {
      v27 = sqrt(v29 / 2.45 * (v29 / 2.45) + v28 / 2.45 * (v28 / 2.45));
    }
  }

  if (v27 >= 10.0)
  {
    v30 = v27;
  }

  else
  {
    v30 = 10.0;
  }

  if (v30 >= 50.0)
  {
    v31 = 1;
  }

  else
  {
    v31 = v11;
  }

  if ((v31 & 1) == 0)
  {
    if (fabs(*(a2 + 256)) <= 75.0 && fabs(*(a2 + 248)) <= 150.0)
    {
      v11 = 0;
    }

    else
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v32 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a1 + 648);
          *buf = 67240448;
          *v106 = v33;
          *&v106[4] = 1026;
          *&v106[6] = v33 + 1;
          _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLMM,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0xEu);
        }

        v34 = sub_19B87DD40();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v102 = *(a1 + 648) + 1;
          v35 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }
      }

      ++*(a1 + 648);
      v10 = 1;
      v11 = 1;
    }
  }

  v36 = *(a1 + 128);
  v37 = *(a2 + 8) - v36;
  if (v36 == 0.0)
  {
    v37 = 0.0;
  }

  if (v37 >= 0.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0.0;
  }

  if (v38 <= 4.9)
  {
    if (v38 <= 75.0)
    {
      goto LABEL_121;
    }
  }

  else if (v38 <= 75.0 && (*(a2 + 228) & 1) != 0)
  {
LABEL_121:
    v39 = *(a1 + 384);
    v40 = 10000.0;
    if (v39 == 1 && *(a1 + 481) == 1)
    {
      v41 = 40000.0;
      if (a3)
      {
        v41 = 10000.0;
      }

      if (*(a2 + 361))
      {
        v40 = v41;
      }

      else
      {
        v40 = 10000.0;
      }
    }

    v42 = *(a2 + 256) * *(a2 + 256) + *(a2 + 248) * *(a2 + 248);
    if (v42 > v40)
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v43 = off_1EAFE4708;
        v44 = sqrt(v40);
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          *v106 = v44;
          *&v106[8] = 1026;
          *&v106[10] = a3;
          _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,distance > %{public}.0lfm,Intersection,%{public}d", buf, 0x12u);
        }

        v45 = sub_19B87DD40();
        if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v46 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v46);
          if (v46 != buf)
          {
            free(v46);
          }
        }
      }

      LOBYTE(v21) = 0;
      v47 = (a1 + 652);
      *(a1 + 652) = 0;
LABEL_269:
      v88 = *a2;
      v89 = *(a2 + 16);
      v90 = *(a2 + 32);
      *(a1 + 168) = *(a2 + 48);
      *(a1 + 152) = v90;
      *(a1 + 136) = v89;
      *(a1 + 120) = v88;
      v91 = *(a2 + 64);
      v92 = *(a2 + 80);
      v93 = *(a2 + 96);
      *(a1 + 232) = *(a2 + 112);
      *(a1 + 216) = v93;
      *(a1 + 200) = v92;
      *(a1 + 184) = v91;
      std::string::operator=((a1 + 248), (a2 + 128));
      memcpy((a1 + 272), (a2 + 152), 0x118uLL);
      *(a1 + 384) = v21;
      goto LABEL_270;
    }

    v47 = (a1 + 652);
    if ((*(a1 + 652) & v39) == 1 && *(a2 + 232) > 13.0)
    {
      v58 = *(a1 + 216);
      v59 = v58 <= 0.0 ? *(a2 + 96) : (v58 + *(a2 + 96)) * 0.5;
      if (sub_19BA0C01C((a1 + 608), *(a1 + 272), *(a1 + 280), *(a2 + 152), *(a2 + 160), *(a2 + 72)) - v38 * v59 > 100.0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v60 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v61 = *(a1 + 648);
            *buf = 67240448;
            *v106 = v61;
            *&v106[4] = 2050;
            *&v106[6] = v61 + 18.0;
            _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_DEBUG, "CLMM,jumpDistanceCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}.0f", buf, 0x12u);
          }

          v62 = sub_19B87DD40();
          if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            v103 = *(a1 + 648) + 18.0;
            v63 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v63);
            if (v63 != buf)
            {
              free(v63);
            }
          }
        }

        *(a1 + 648) += 18;
        v10 = 1;
        v11 = 1;
      }
    }

    v64 = fabs(v7);
    if (*v47 == 1)
    {
      v65 = *(a2 + 232);
      if (v65 <= 70.0)
      {
        if (*(a1 + 648) < 18)
        {
          if (*(a2 + 265) != 1 || (v75 = v27 * 3.5, fabs(*(a2 + 256)) <= v75))
          {
            if (v65 >= 6.5)
            {
              v79 = 1;
            }

            else
            {
              v79 = v11;
            }

            if ((v79 & 1) == 0)
            {
              *(a1 + 648) = 0;
              if (*(a1 + 96) == 1)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
                }

                v80 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v81 = *(a1 + 648);
                  *buf = 67240192;
                  *v106 = v81;
                  _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_DEBUG, "CLMM,reseting offRoadCount,%{public}d", buf, 8u);
                }

                v82 = sub_19B87DD40();
                if (*(v82 + 160) > 1 || *(v82 + 164) > 1 || *(v82 + 168) > 1 || *(v82 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
                  }

                  v99 = *(a1 + 648);
                  v83 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v83);
                  if (v83 != buf)
                  {
                    free(v83);
                  }
                }
              }
            }

            goto LABEL_263;
          }

          if (*(a1 + 96) != 1)
          {
            goto LABEL_210;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v76 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v77 = *(a2 + 256);
            *buf = 134349312;
            *v106 = v77;
            *&v106[8] = 2050;
            *&v106[10] = v75;
            _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,isAmbiguous,1,acrossTrack,%{public}.1lf,acrossTrackThreshold,%{public}.1lf", buf, 0x16u);
          }

          v78 = sub_19B87DD40();
          if (*(v78 + 160) <= 1 && *(v78 + 164) <= 1 && *(v78 + 168) <= 1 && !*(v78 + 152))
          {
LABEL_210:
            *v47 = 0;
LABEL_263:
            if (*(a1 + 841))
            {
              v21 = *v47;
              if (v21 != 1 || (*(a2 + 265) & 1) != 0 || fabs(*(a2 + 256)) > 10.0)
              {
                *(a1 + 841) = 0;
              }
            }

            else
            {
              *(a1 + 841) = sub_19B9407E0(a1, a2, v21, v22, v10, v42, 400.0, 0.5, v30, v6, v64);
              LOBYTE(v21) = *(a1 + 652);
            }

            goto LABEL_269;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v98 = *(a2 + 256);
        }

        else
        {
          if (*(a1 + 96) != 1)
          {
            goto LABEL_210;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v70 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v71 = *(a1 + 648);
            *buf = 67240448;
            *v106 = v71;
            *&v106[4] = 2050;
            *&v106[6] = 0x4032000000000000;
            _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,offRoadCount,%{public}d,threshold,%{public}.0f", buf, 0x12u);
          }

          v72 = sub_19B87DD40();
          if (*(v72 + 160) <= 1 && *(v72 + 164) <= 1 && *(v72 + 168) <= 1 && !*(v72 + 152))
          {
            goto LABEL_210;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v97 = *(a1 + 648);
        }
      }

      else
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_210;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v66 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v67 = *(a2 + 232);
          *buf = 134349312;
          *v106 = v67;
          *&v106[8] = 2050;
          *&v106[10] = 0x4051800000000000;
          _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,varFactor,%{public}.1lf,threshold,%{public}.1lf", buf, 0x16u);
        }

        v68 = sub_19B87DD40();
        if (*(v68 + 160) <= 1 && *(v68 + 164) <= 1 && *(v68 + 168) <= 1 && !*(v68 + 152))
        {
          goto LABEL_210;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v96 = *(a2 + 232);
      }

      v73 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v73);
      if (v73 != buf)
      {
        free(v73);
      }

      goto LABEL_210;
    }

    if (*(a2 + 348))
    {
      v69 = 7.5;
      if (v27 <= 7.5)
      {
        goto LABEL_247;
      }
    }

    else
    {
      v69 = 35.0;
      v74 = 1225.0;
      if (v30 >= 30.0 || (*(a1 + 600) & 1) != 0)
      {
LABEL_248:
        v84 = sub_19B9407E0(a1, a2, v21, v22, v10, v42, v74, v69, v30, v6, v64);
        *(a1 + 652) = v84;
        if (v84)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            v85 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_DEBUG, "CLMM,startSnapping", buf, 2u);
            }

            v86 = sub_19B87DD40();
            if (*(v86 + 160) > 1 || *(v86 + 164) > 1 || *(v86 + 168) > 1 || *(v86 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
              }

              v87 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v87);
              if (v87 != buf)
              {
                free(v87);
              }
            }
          }

          *(a1 + 648) = 0;
        }

        goto LABEL_263;
      }

      if (v27 <= 7.5)
      {
        v69 = 13.5;
        goto LABEL_247;
      }
    }

    v69 = 20.0;
LABEL_247:
    v74 = 400.0;
    goto LABEL_248;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v48 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v49 = *(a2 + 228);
      *buf = 134349824;
      *v106 = v38;
      *&v106[8] = 2050;
      *&v106[10] = 0x401399999999999ALL;
      v107 = 2050;
      v108 = 0x4052C00000000000;
      v109 = 1026;
      v110 = v49;
      _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,timeout,dT,%{public}.1lf,threshold1,%{public}.1lf,threshold2,%{public}.1lf,static,%{public}d", buf, 0x26u);
    }

    v50 = sub_19B87DD40();
    if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v104 = *(a2 + 228);
      v51 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v51);
      if (v51 != buf)
      {
        free(v51);
      }
    }
  }

  v47 = (a1 + 652);
  *(a1 + 652) = 0;
  v52 = *a2;
  v53 = *(a2 + 16);
  v54 = *(a2 + 32);
  *(a1 + 168) = *(a2 + 48);
  *(a1 + 152) = v54;
  *(a1 + 136) = v53;
  *(a1 + 120) = v52;
  v55 = *(a2 + 64);
  v56 = *(a2 + 80);
  v57 = *(a2 + 96);
  *(a1 + 232) = *(a2 + 112);
  *(a1 + 216) = v57;
  *(a1 + 200) = v56;
  *(a1 + 184) = v55;
  std::string::operator=((a1 + 248), (a2 + 128));
  memcpy((a1 + 272), (a2 + 152), 0x118uLL);
  *(a1 + 384) = 0;
LABEL_270:
  result = *v47;
  v95 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B9407E0(uint64_t a1, uint64_t a2, char a3, char a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a5 & 1) != 0 || (*(a2 + 265))
  {
    return 0;
  }

  result = 0;
  if ((*(a1 + 385) & 1) == 0 && a6 < a7)
  {
    result = 0;
    if (fabs(*(a2 + 256)) < a8 && a9 < 101.0)
    {
      v13 = *(a2 + 232);
      if (v13 < 3.0)
      {
        result = 0;
        v14 = *(a1 + 352);
        if (v14 >= 3.0)
        {
          return result;
        }

        if (*(a2 + 96) <= 1.67)
        {
          return result;
        }

        result = 0;
        if (*(a1 + 216) <= 1.67)
        {
          return result;
        }

        if (*(a2 + 104) < 0.0)
        {
          return result;
        }

        result = 0;
        if (*(a1 + 224) < 0.0 || a10 >= 30.0 || a11 >= 30.0)
        {
          return result;
        }

        if ((a3 & 1) == 0 || (a4 & 1) == 0 || *(a2 + 192) >= 20.0)
        {
          v15 = *(a2 + 180);
          v16 = 3.0;
LABEL_23:
          if (v15 > v16)
          {
            return 1;
          }

          result = 0;
          if (v13 < 1.0 && v14 < 1.0)
          {
            return v15 > 1.1 || v15 == 0.0;
          }

          return result;
        }

        if (a10 < 40.0)
        {
          v15 = *(a2 + 180);
          v16 = 2.5;
          goto LABEL_23;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_19B940928(uint64_t a1, uint64_t a2, uint64_t *a3, double *a4, double *a5, double *a6, double *a7, uint64_t a8, char a9)
{
  v47 = *MEMORY[0x1E69E9840];
  *a8 = 0;
  *(a8 + 16) = 0;
  v16 = sub_19BA0BE88((a1 + 608), (a8 + 40), (a8 + 32), (a8 + 48), *(a3 + 4), *(a3 + 5), a4[9], a4[7], a4[8], a4[9]);
  if (!*a3)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#Warning CLMM, NULL road", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v18 = _os_log_send_and_compose_impl();
      v16 = sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::calculateScoreAndVarFactor(CLMapDataUtil::CovarInvDet &, const struct CLMapGeometry::DistanceQueryResult &, const CLMapCrumb &, double &, double &, double &, CLMapDataUtil::MapMatcherScore &, BOOL)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v19 = *a3;
  v20 = *(a3 + 6);
  v22 = *(a8 + 32);
  v21 = *(a8 + 40);
  if (v21 == 0.0 && v22 == 0.0)
  {
    *a5 = 0.0;
    v23 = 0.0;
    goto LABEL_47;
  }

  if (a9)
  {
    v24 = 80.0;
  }

  else
  {
    v24 = sub_19B93EFE4(v16, *(*&v19 + 20), *(*&v19 + 16));
  }

  v25 = v21 * v21 + v22 * v22;
  v26 = sqrtf(v25);
  v27 = v22;
  v28 = v21;
  v29 = atan2f(v27, v28);
  v30 = v20 * 0.0174532925;
  v31 = __sincosf_stret(v29 - v30);
  v32 = v26 * v31.__cosval;
  v33 = v26 * v31.__sinval;
  if (*(a1 + 753) == 1)
  {
    v34 = v24 * 0.5;
    v35 = fabsf(v33);
    if (*(*&v19 + 16) == 1)
    {
      if (v35 >= v34)
      {
        v36 = -v34;
        if (v33 < 0.0)
        {
          v36 = v24 * 0.5;
        }

LABEL_44:
        *a7 = v36;
        v33 = v33 + v36;
        goto LABEL_45;
      }

LABEL_38:
      v40 = -v35;
      if (v33 < 0.0)
      {
        v40 = v35;
      }

      goto LABEL_40;
    }

    v37 = *(a1 + 768);
    v38 = a4[1];
    if (v37 == 0.0 || vabdd_f64(v38, v37) > 120.0)
    {
      v39 = sub_19B96CF60(a4[7], a4[8]);
      *(a1 + 760) = v39;
      *(a1 + 768) = v38;
      if (v39)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v39 = *(a1 + 760);
      if (v39)
      {
LABEL_29:
        if (v39 != 2 || v33 <= 0.0)
        {
          if (v33 >= 0.0)
          {
LABEL_45:
            v42 = atan2f(v33, v32);
            *(a8 + 32) = vcvtq_f64_f32(vmul_n_f32(__sincosf_stret(v42 + v30), sqrtf((v32 * v32) + (v33 * v33))));
            goto LABEL_46;
          }

          if (v35 >= v34)
          {
            *a7 = v34;
            v33 = v34 + v33;
            goto LABEL_45;
          }

          v41 = v35;
LABEL_41:
          *a7 = v41;
          v33 = 0.0;
          goto LABEL_45;
        }

        if (v33 >= v34)
        {
          *a7 = -v34;
          v33 = v33 - v34;
          goto LABEL_45;
        }

        v40 = -v35;
LABEL_40:
        v41 = v40;
        goto LABEL_41;
      }
    }

    v36 = v24 * 0.25;
    if (v35 >= (v24 * 0.25))
    {
      if (v33 >= 0.0)
      {
        v36 = -v36;
      }

      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_46:
  *a5 = v32;
  v23 = v33;
LABEL_47:
  *a6 = v23;
  if (*(a2 + 40) == 1)
  {
    v43 = fmod(a4[13] - v20, 360.0);
    if (v43 < 0.0)
    {
      v43 = v43 + 360.0;
    }

    if (v43 > 180.0)
    {
      v43 = v43 + -360.0;
    }

    *(a8 + 56) = fabs(v43);
  }

  sub_19B9C1C60(a2, a8);
  v44 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B940DBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 229);
  v7 = *(a2 + 8);
  if (*(a1 + 816) != v6 || *(a1 + 832) == 0.0)
  {
    *(a1 + 832) = v7;
    *(a1 + 816) = v6;
  }

  *(a1 + 824) = v7;
  ++*(a1 + 100);
  (*(*v4 + 48))(v4, a2, 450.0);
  v52 = &v52;
  v53 = &v52;
  v54 = 0;
  v47 = (a1 + 552);
  if (*(a1 + 552))
  {
    v8 = *(a2 + 8) - *(a1 + 592);
    if (v8 <= 5.0 && ((*(*v4 + 72))(v4, &v52, v47, *(a1 + 568), 1, *(a1 + 576), v8 * ((*(a2 + 96) + *(a1 + 584)) * 0.5)) & 1) == 0)
    {
      (*(*a1 + 40))(a1);
      v15 = 0;
      ++*(a1 + 108);
      goto LABEL_72;
    }
  }

  sub_19B93DA44(a1, a2);
  sub_19B9C138C(a1 + 656, a2, *(a1 + 752));
  v9.n128_u64[0] = *(a2 + 80);
  v10 = *(a2 + 200);
  if (v10 > 0.0)
  {
    v11 = *(a2 + 208);
    if (v11 > 0.0)
    {
      v9.n128_f64[0] = sqrt(v11 / 2.45 * (v11 / 2.45) + v10 / 2.45 * (v10 / 2.45));
    }
  }

  v12 = v9.n128_f64[0] * 4.0;
  v9.n128_u64[0] = 0x4052C00000000000;
  if (v12 >= 75.0)
  {
    v9.n128_f64[0] = v12;
    if (v12 > 249.9999)
    {
      v9.n128_u64[0] = 0x406F3FFF2E48E8A7;
    }
  }

  v49 = &v49;
  v50 = &v49;
  v51 = 0;
  v13 = (*(*v4 + 64))(v4, &v49, a2, 1, v9);
  v15 = v13;
  if ((v13 & 1) == 0)
  {
    (*(*a1 + 40))(a1);
    ++*(a1 + 108);
    goto LABEL_71;
  }

  v46 = v13;
  v16 = v50;
  if (v50 == &v49)
  {
    goto LABEL_68;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0.0;
  *&v14 = 0;
  v48 = v14;
  v22 = 0.0;
  v23 = &v49;
  do
  {
    if (*(v16[2] + 17))
    {
      goto LABEL_51;
    }

    v55 = 0.0;
    v56 = 0;
    v57 = 0;
    v58 = 0x3FF0000000000000;
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    sub_19B940928(a1, a1 + 656, v16 + 2, a2, v64, &v63, &v62, &v55, 0);
    v24 = *(v16 + 37);
    v25 = *v47;
    if (*v47)
    {
      v26 = *v16[2];
      if (*v25 == v26)
      {
        goto LABEL_27;
      }

      v27 = v53;
      if (v53 != &v52)
      {
        v28 = 0;
        do
        {
          if (v27[2] == v26)
          {
            v28 |= *(v27 + 24) == *(v16 + 36);
          }

          v27 = v27[1];
        }

        while (v27 != &v52);
        if (v28)
        {
LABEL_27:
          v29 = 1;
          v30 = v55;
          if (v24)
          {
            goto LABEL_32;
          }

LABEL_31:
          v30 = v30 / 10.0;
          goto LABEL_32;
        }
      }

      v29 = 0;
      v30 = v55 / 500.0;
      if ((v24 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v29 = 1;
      v30 = v55;
    }

LABEL_32:
    *(&v31 + 1) = *(&v48 + 1);
    *&v31 = *&v48 + v55;
    v48 = v31;
    v32 = (v25 == 0) | v24;
    if (v30 > v22)
    {
      v33 = v30;
    }

    else
    {
      v33 = v22;
    }

    if (v30 > v22)
    {
      v34 = v29;
    }

    else
    {
      v34 = v20;
    }

    if (v30 <= v22)
    {
      v32 = v18;
    }

    v35 = (v25 == 0) | v24;
    v36 = v30 <= v21;
    if (v30 <= v21)
    {
      v22 = v33;
    }

    else
    {
      v23 = v16;
      v22 = v21;
    }

    if (v30 <= v21)
    {
      v20 = v34;
    }

    else
    {
      v21 = v30;
    }

    if (v36)
    {
      v18 = v32;
    }

    else
    {
      v19 = v29;
    }

    if (!v36)
    {
      v17 = v35;
    }

LABEL_51:
    v16 = v16[1];
  }

  while (v16 != &v49);
  if (v23 != &v49)
  {
    sub_19B9DEB0C(a2, v23 + 2);
    v37 = v21 * 500.0;
    if (v19)
    {
      v37 = v21;
    }

    v38 = v22 * 500.0;
    if (v20)
    {
      v38 = v22;
    }

    if ((v17 & 1) == 0)
    {
      v37 = v37 * 10.0;
    }

    if ((v18 & 1) == 0)
    {
      v38 = v38 * 10.0;
    }

    *&v39.f64[0] = v48;
    v39.f64[1] = v38;
    *(a2 + 176) = vcvt_f32_f64(vdivq_f64(vdupq_lane_s64(*&v37, 0), v39));
    v41 = v23[2];
    v40 = v23[3];
    v15 = v46;
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 552) = v41;
    v42 = *(a1 + 560);
    *(a1 + 560) = v40;
    if (v42)
    {
      sub_19B8750F8(v42);
    }

    *(a1 + 568) = *(v23 + 36);
    *(a1 + 576) = v23[8];
    *(a1 + 584) = *(a2 + 96);
    *(a1 + 592) = *(a2 + 8);
    v63 = 0;
    v64[0] = 0.0;
    v62 = 0;
    v55 = 0.0;
    v56 = 0;
    v57 = 0;
    v58 = 0x3FF0000000000000;
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    sub_19B940928(a1, a1 + 656, v23 + 2, a2, v64, &v63, &v62, &v55, 0);
    *(a2 + 288) = *(a2 + 152);
    *(a2 + 304) = *(a2 + 168);
    v43 = sub_19B93F034(a1, a2, 0);
    *(a2 + 264) = v43;
    if ((v43 & 1) == 0)
    {
      ++*(a1 + 104);
    }

    goto LABEL_71;
  }

LABEL_68:
  *(a2 + 152) = *(a2 + 56);
  *(a2 + 168) = *(a2 + 104);
  v44 = *(a1 + 560);
  *v47 = 0;
  *(a1 + 560) = 0;
  if (v44)
  {
    sub_19B8750F8(v44);
  }

  ++*(a1 + 104);
  v15 = v46;
LABEL_71:
  sub_19B916DC0(&v49);
LABEL_72:
  sub_19B941414(&v52);
  if (v5)
  {
    sub_19B8750F8(v5);
  }

  return v15;
}

void sub_19B941388(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_19B916DC0(va);
  sub_19B941414(va1);
  if (a3)
  {
    sub_19B8750F8(a3);
  }

  _Unwind_Resume(a1);
}

os_log_t sub_19B9413E4()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B941414(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[5];
        if (v6)
        {
          sub_19B8750F8(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_19B9415F0(void *a1@<X8>)
{
  if (qword_1ED519280 != -1)
  {
    dispatch_once_f(&qword_1ED519280, 0, sub_19B94148C);
  }

  v2 = *(qword_1ED519288 + 144);
  *a1 = *(qword_1ED519288 + 136);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void *sub_19B941664(void *a1)
{
  *a1 = &unk_1F0E6D050;
  v2 = a1[18];
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  return sub_19B938EFC(a1);
}

void sub_19B9416C4(void *a1)
{
  sub_19B941664(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B941700(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B94173C(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6D470))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B9425E0(uint64_t a1)
{
  [*(a1 + 32) setIdentityToken:*(a1 + 40)];
  [*(a1 + 32) setStorageToken:0];
  v2 = *(a1 + 32);

  return [v2 manageConnection];
}

uint64_t sub_19B942864(uint64_t a1)
{
  [*(a1 + 32) destroyConnection];
  v2 = *(a1 + 32);

  return [v2 tearDown];
}

uint64_t sub_19B942AB4(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 40))
  {
    v1 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(v1 + 32) UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      v8[0] = 2082;
      *&v8[1] = "";
      v9 = 2082;
      v10 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }
    }

    v4 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v5 = [*(v1 + 32) UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      v8[0] = 2082;
      *&v8[1] = "";
      v9 = 2082;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession destroying connection (dealloc)", "{msg%{public}.0s:#serviceSession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_19B943C68();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B942CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B943210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B943298(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession Default handler received message, self:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v4;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession Default handler received message", "{msg%{public}.0s:#serviceSession Default handler received message, self:%{public}p}", buf, 0x1Cu);
    }

    v7 = a2[1];
    v9 = *a2;
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v4 handleMessage:&v9];
    if (v10)
    {
      sub_19B8750F8(v10);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B943468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B943808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B943A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, os_activity_scope_state_s state)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void *sub_19B943CD4(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B943D30((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B943D30(uint64_t a1, char *a2)
{
  sub_19B8759E8(__p, a2);
  MEMORY[0x19EAE95E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B943D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B943E10(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B943E6C((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B943E6C(uint64_t a1, char *a2, void *a3)
{
  sub_19B8759E8(__p, a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B943EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B944988()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  qword_1ED519290 = v0;

  return [v0 setDateFormat:@"yyyy, MM, dd, HH, mm, ss.SSS"];
}

os_log_t sub_19B944F20()
{
  result = os_log_create("com.apple.locationd.Position", "Gathering");
  qword_1EAFE4710 = result;
  return result;
}

os_log_t sub_19B948AD4()
{
  result = os_log_create("com.apple.locationd.Position", "Emergency");
  qword_1EAFE4718 = result;
  return result;
}

uint64_t sub_19B948B04(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = _Q0;
  *(a1 + 56) = xmmword_19BA89720;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0xBFF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 87) = 0;
  if ([a2 timestamp])
  {
    [objc_msgSend(a2 "timestamp")];
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D500);
    }

    v10 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLGeoMapLocation,loc timestamp is unexpectedly nil,setting fiOSTime to -1.0", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || (v9 = -1.0, *(v11 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D500);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLGeoMapLocation::CLGeoMapLocation(const CLTripSegmentLocation * _Nonnull)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }

      v9 = -1.0;
    }
  }

  *a1 = v9;
  [a2 latitude];
  *(a1 + 8) = v13;
  [a2 longitude];
  *(a1 + 16) = v14;
  [a2 course];
  *(a1 + 32) = v15;
  [a2 courseAccuracy];
  *(a1 + 40) = v16;
  [a2 speed];
  *(a1 + 48) = v17;
  [a2 speedAccuracy];
  *(a1 + 56) = v18;
  [a2 altitude];
  *(a1 + 64) = v19;
  [a2 altitudeAccuracy];
  *(a1 + 72) = v20;
  [a2 horizontalAccuracy];
  *(a1 + 24) = v21;
  *(a1 + 88) = [a2 locType];
  *(a1 + 96) = [a2 referenceFrame];
  *(a1 + 92) = [a2 isOriginalLocationType];
  *(a1 + 93) = [a2 isInertialIntegrated];
  *(a1 + 94) = [a2 isLinearInterpolated];
  *(a1 + 100) = [a2 signalEnvironmentType];
  v22 = *MEMORY[0x1E69E9840];
  return a1;
}

BOOL sub_19B948DC0(uint64_t a1, void *a2)
{
  sub_19B8EBC04((a1 + 40));
  if ([a2 count])
  {
    v4 = 0;
    do
    {
      if (v4)
      {
        v5 = [a2 objectAtIndexedSubscript:v4 - 1];
      }

      else
      {
        v5 = 0;
      }

      sub_19B948E5C(a1, v5, [a2 objectAtIndexedSubscript:v4++]);
    }

    while ([a2 count] > v4);
  }

  return *(a1 + 40) != *(a1 + 48);
}

uint64_t sub_19B948E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_19B94948C();
  }

  return 0;
}

void sub_19B948EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B948EFC(uint64_t a1, uint64_t a2, int a3, int a4, double a5, double a6)
{
  v7 = *(a1 + 40);
  for (i = *(a1 + 48); v7 != i; ++v7)
  {
    v13 = *v7;
    if (*v7)
    {
      v14 = *v13;
      if (*v13 > a6)
      {
        return *a2 != *(a2 + 8);
      }

      if (v14 > a5 || a3 != 0)
      {
        if (v14 >= a6 && a4 == 0)
        {
          return *a2 != *(a2 + 8);
        }

        if (v14 >= a5 && v14 <= a6)
        {
          sub_19B8EAB68(a2, v7);
        }
      }
    }
  }

  return *a2 != *(a2 + 8);
}

void sub_19B948FAC(uint64_t a1, uint64_t *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D500);
  }

  v4 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 120);
    v6 = *(a1 + 128);
    v7 = *(a1 + 136);
    v8 = *(a1 + 144);
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(a1 + 104);
    v13 = *(a1 + 112);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 65);
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    v21 = *(a1 + 88);
    v22 = *(a1 + 96);
    if (*(a2 + 23) >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    *buf = 134353667;
    v47 = v9;
    v48 = 1026;
    v49 = v5;
    v50 = 2053;
    v51 = v6;
    v52 = 2053;
    v53 = v7;
    v54 = 2050;
    v55 = v8;
    v56 = 2050;
    v57 = v14;
    v58 = 2053;
    v59 = v10;
    v60 = 2053;
    v61 = v11;
    v62 = 2050;
    v63 = v12;
    v64 = 2050;
    v65 = v13;
    v66 = 2050;
    v67 = v15;
    v68 = 2050;
    v69 = v16;
    v70 = 1026;
    v71 = v17;
    v72 = 1026;
    v73 = v18;
    v74 = 2050;
    v75 = v19;
    v76 = 2050;
    v77 = v20;
    v78 = 2050;
    v79 = v21;
    v80 = 1026;
    v81 = v22;
    v82 = 2082;
    v83 = v23;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,%{public}.1lf,type,%{public}d,rawLL,%{sensitive}.8lf,%{sensitive}.8lf,rawCourse,%{public}.3lf,speed,%{public}.3lf,snapLL,%{sensitive}.8lf,%{sensitive}.8lf,snapCourse,%{public}.3lf,ratio,%{public}.6lf,projection,%{public}.6lf,score,%{public}.12lf,valid,%{public}d,forward,%{public}d,deltaN,%{public}.3lf,deltaE,%{public}.3lf,deltaCourse,%{public}.3lf,original,%{public}d,str,%{public}s", buf, 0xB0u);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D500);
    }

    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    v27 = *(a1 + 136);
    v28 = *(a1 + 144);
    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    v33 = *(a1 + 104);
    v34 = *(a1 + 112);
    v35 = *(a1 + 48);
    v36 = *(a1 + 56);
    v37 = *(a1 + 64);
    v38 = *(a1 + 65);
    v39 = *(a1 + 72);
    v40 = *(a1 + 80);
    v41 = *(a1 + 88);
    v42 = *(a1 + 96);
    if (*(a2 + 23) < 0)
    {
      v43 = *a2;
    }

    v44 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapSnapData::outputDebugLog(const std::string &) const", "CoreLocation: %s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

CLTripSegmentLocation *sub_19B94934C(uint64_t a1, int a2)
{
  v4 = -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:]([CLTripSegmentLocation alloc], "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:", [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:*(a1 + 16)], *(a1 + 120), *(a1 + 24), *(a1 + 32), -1.0, *(a1 + 40), -1.0, *(a1 + 104), -1.0, -1.0, 0xBFF0000000000000);
  [(CLTripSegmentLocation *)v4 setSignalEnvironmentType:*(a1 + 168)];
  if (*a1)
  {
    [(CLTripSegmentLocation *)v4 setMapsRoadClass:*(*a1 + 20)];
    [(CLTripSegmentLocation *)v4 setMapsFormOfWay:*(*a1 + 24)];
  }

  [(CLTripSegmentLocation *)v4 setRawLatitude:*(a1 + 128)];
  [(CLTripSegmentLocation *)v4 setRawLongitude:*(a1 + 136)];
  if (a2)
  {
    [(CLTripSegmentLocation *)v4 setCourseAccuracy:*(a1 + 144)];
    [(CLTripSegmentLocation *)v4 setSpeedAccuracy:*(a1 + 112)];
    [(CLTripSegmentLocation *)v4 setAltitude:*(a1 + 48)];
    [(CLTripSegmentLocation *)v4 setAltitudeAccuracy:*(a1 + 56)];
  }

  return v4;
}

os_log_t sub_19B94945C()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void *sub_19B9494F8(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6D530;
  sub_19B948B04((a1 + 3), *a2);
  return a1;
}

void sub_19B949578(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6D530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

id *sub_19B9495D4(id *a1)
{
  if (*a1)
  {

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_19B94960C(id *a1, int a2, double *a3, double *a4, double *a5, int a6, double a7, double a8, double a9)
{
  *a3 = a7;
  *a4 = a8;
  *a5 = a9;
  if (a2 == 2)
  {
    return 2;
  }

  v28 = v14;
  v29 = v13;
  v30 = v12;
  v31 = v11;
  v32 = v9;
  v33 = v10;
  result = sub_19B8DFD64(a7, a8);
  if (result)
  {
    result = [MEMORY[0x1E69A1E80] isLocationShiftRequiredForCoordinate:{a7, a8}];
    if (result)
    {
      v26 = a7;
      v27 = a8;
      v25 = a9;
      if (!*a1)
      {
        *a1 = objc_alloc_init(MEMORY[0x1E69A1E80]);
      }

      if (a6 < 1)
      {
        return 1;
      }

      else
      {
        while (![*a1 shiftCoordinate:&v26 accuracy:&v25 shiftedCoordinate:a7 shiftedAccuracy:{a8, a9}])
        {
          if (!--a6)
          {
            return 1;
          }
        }

        v24 = v27;
        *a3 = v26;
        *a4 = v24;
        *a5 = v25;
        return 2;
      }
    }
  }

  return result;
}

BOOL sub_19B949720(float64x2_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = 0.0;
  v18 = 0.0;
  v16 = 0.0;
  result = sub_19BA0BE88(a1, &v17, &v18, &v16, a6, a7, 0.0, a8, a9, 0.0);
  if (result)
  {
    return sub_19BA0C1C0(a1->f64, a2, a3, &v15, a4, a5, 0.0, v17, v18, v16);
  }

  return result;
}

uint64_t sub_19B949838(uint64_t a1, void *a2, void *a3, void *a4)
{
  v423 = *MEMORY[0x1E69E9840];
  v8 = [a3 count];
  v9 = [a2 count];
  v10 = 0;
  if (v8 < 2)
  {
    goto LABEL_515;
  }

  v11 = v9;
  if (v9 < 2)
  {
    goto LABEL_515;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v227 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v227, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Origin is not set.", __p, 2u);
      }

      v228 = sub_19B87DD40();
      if ((*(v228 + 160) & 0x80000000) == 0 || (*(v228 + 164) & 0x80000000) == 0 || (*(v228 + 168) & 0x80000000) == 0 || *(v228 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v412[0]) = 0;
        v229 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v229);
        if (v229 != __p)
        {
          free(v229);
        }
      }
    }

    v10 = 0;
    goto LABEL_515;
  }

  v392 = a4;
  v12 = (a1 + 152);
  *(a1 + 160) = *(a1 + 152);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  if (*(a1 + 232) == 1)
  {
    *(a1 + 232) = 0;
  }

  if (*(a1 + 296) == 1)
  {
    *(a1 + 296) = 0;
  }

  if (*(a1 + 392) == 1)
  {
    *(a1 + 392) = 0;
  }

  if (*(a1 + 408) == 1)
  {
    *(a1 + 408) = 0;
  }

  if (*(a1 + 464) == 1)
  {
    *(a1 + 464) = 0;
  }

  *(a1 + 144) = 0;
  *(a1 + 376) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0x10000000000000;
  v13 = *(a1 + 504);
  if (v13)
  {
    *(a1 + 512) = v13;
    operator delete(v13);
  }

  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  v14 = sub_19B8D8C34(a2, a3);
  if (v15)
  {
    *(a1 + 368) = v14;
    *(a1 + 377) = 1;
  }

  v16 = v11 + v8;
  v17 = *(a1 + 152);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 168) - v17) >> 4) < v11 + v8)
  {
    if (v16 <= 0x333333333333333)
    {
      v18 = *(a1 + 160) - v17;
      *&__p[32] = a1 + 152;
      sub_19B94FA38(v16);
    }

    sub_19B8B8A40();
  }

  v396 = 0;
  v398 = v11;
  v391 = v8;
  v19 = 0;
  v20 = (a1 + 72);
  memset(v400, 0, sizeof(v400));
  v401 = 1065353216;
  __asm { FMOV            V0.2D, #-1.0 }

  v394 = _Q0;
  do
  {
    v26 = [a2 objectAtIndexedSubscript:v19];
    [v26 horizontalAccuracy];
    if (v27 < 0.0)
    {
      if (*a1 != 1)
      {
        goto LABEL_513;
      }

      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v230 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
      {
        [v26 horizontalAccuracy];
        *__p = 134349056;
        *&__p[4] = v231;
        _os_log_impl(&dword_19B873000, v230, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Negative horizontal uncertainty. horizontalUncertainty, %{public}.1f.", __p, 0xCu);
      }

      v232 = sub_19B87DD40();
      if (*(v232 + 160) <= 1 && *(v232 + 164) <= 1 && *(v232 + 168) <= 1 && !*(v232 + 152))
      {
        goto LABEL_513;
      }

      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      [v26 horizontalAccuracy];
      LODWORD(v412[0]) = 134349056;
      *(v412 + 4) = v233;
      v234 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v234);
LABEL_511:
      if (v234 != __p)
      {
        free(v234);
      }

      goto LABEL_513;
    }

    if (*(a1 + 232) != 1)
    {
      goto LABEL_26;
    }

    [objc_msgSend(v26 "timestamp")];
    if ((*(a1 + 232) & 1) == 0)
    {
      sub_19B94F954();
    }

    v29 = v28;
    if (v28 <= *(a1 + 176))
    {
      if (*a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v51 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          if ((*(a1 + 232) & 1) == 0)
          {
            sub_19B94F954();
          }

          v52 = *(a1 + 176);
          *__p = 134349312;
          *&__p[4] = v52;
          *&__p[12] = 2050;
          *&__p[14] = v29;
          _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Location sample timestamp does not increase, skipping, previousTime, %{public}.2f, currentTime, %{public}.2f", __p, 0x16u);
        }

        v53 = sub_19B87DD40();
        if ((*(v53 + 160) & 0x80000000) == 0 || (*(v53 + 164) & 0x80000000) == 0 || (*(v53 + 168) & 0x80000000) == 0 || *(v53 + 152))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          if ((*(a1 + 232) & 1) == 0)
          {
            sub_19B94F954();
          }

          v54 = *(a1 + 176);
          LODWORD(v412[0]) = 134349312;
          *(v412 + 4) = v54;
          WORD6(v412[0]) = 2050;
          *(v412 + 14) = v29;
          v55 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v55);
          goto LABEL_253;
        }
      }
    }

    else
    {
LABEL_26:
      memset(v412, 0, sizeof(v412));
      *v413 = 0x100000000;
      *&v413[8] = v394;
      if (!sub_19B8D8100(v412, v26, *(a1 + 48), *(a1 + 56)))
      {
        goto LABEL_259;
      }

      if (*(a1 + 144))
      {
        if ((*(a1 + 232) & 1) == 0)
        {
          if (*a1 == 1)
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            v274 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              *__p = 0;
              _os_log_impl(&dword_19B873000, v274, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Last consumed measurement is not initialized in forward propagation loop.", __p, 2u);
            }

            v275 = sub_19B87DD40();
            if ((*(v275 + 160) & 0x80000000) == 0 || (*(v275 + 164) & 0x80000000) == 0 || (*(v275 + 168) & 0x80000000) == 0 || *(v275 + 152))
            {
              bzero(__p, 0x65CuLL);
              if (qword_1EAFE4758 == -1)
              {
                goto LABEL_389;
              }

              goto LABEL_559;
            }
          }

LABEL_513:
          v10 = 0;
          goto LABEL_514;
        }

        v30 = *v20;
        if (*v20 != *(a1 + 176))
        {
          if (*a1 != 1)
          {
            goto LABEL_513;
          }

          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v276 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            if ((*(a1 + 232) & 1) == 0)
            {
              sub_19B94F954();
            }

            v277 = *v20;
            v278 = *(a1 + 176);
            *__p = 134349312;
            *&__p[4] = v277;
            *&__p[12] = 2050;
            *&__p[14] = v278;
            _os_log_impl(&dword_19B873000, v276, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Timestamp of estimated state %{public}.3f is not equal to timestamp of last consumed measurement, %{public}.3f.", __p, 0x16u);
          }

          v279 = sub_19B87DD40();
          if ((*(v279 + 160) & 0x80000000) != 0 && (*(v279 + 164) & 0x80000000) != 0 && (*(v279 + 168) & 0x80000000) != 0 && !*(v279 + 152))
          {
            goto LABEL_513;
          }

          bzero(__p, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          if ((*(a1 + 232) & 1) == 0)
          {
            sub_19B94F954();
          }

          v280 = *v20;
          v281 = *(a1 + 176);
          *v411 = 134349312;
          *&v411[4] = v280;
          *&v411[12] = 2050;
          *&v411[14] = v281;
          v234 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v234);
          goto LABEL_511;
        }

        v31 = *v412;
        v405[0] = v396;
        v404[0] = v396;
        sub_19B8D794C(a3, v405, v404, v30, *v412);
        v396 = v404[0];
        v32 = v405[0];
        [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v405[0]), "cfAbsTimestamp"), "timeIntervalSinceReferenceDate"}];
        v34 = v33;
        [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v396), "cfAbsTimestamp"), "timeIntervalSinceReferenceDate"}];
        v36 = v35;
        v37 = sub_19B8D9804(a3, v32, v396);
        v38 = v37;
        v39 = HIBYTE(v37);
        if (v34 >= v30 && v34 <= v31 && v36 >= v31 && (HIBYTE(v37) & v37 & 1) != 0)
        {
          sub_19B94DC44(a1, a3, v32, 1, *(a1 + 72));
          sub_19B94DC44(a1, a3, v396, 0, *v412);
          v40 = *(a1 + 312);
          v41 = __sincos_stret(*(a1 + 320));
          v42 = v40 * v41.__cosval;
          v43 = v40 * v41.__sinval;
          for (i = *(a1 + 304) + 1; i < *(a1 + 328); ++i)
          {
            v45 = [a3 objectAtIndexedSubscript:i];
            v46 = [objc_msgSend(v45 "deltaPosition_m")];
            v47 = 0.0;
            v48 = 0.0;
            if (v46)
            {
              [objc_msgSend(v45 "deltaPosition_m")];
              v47 = v49;
              [objc_msgSend(v45 "deltaPosition_m")];
              v48 = v50;
            }

            v42 = v42 + v47;
            v43 = v43 + v48;
            v40 = v40 + hypot(v47, v48);
          }

          v112 = *(a1 + 336);
          v113 = __sincos_stret(*(a1 + 344));
          *&v408 = vcvt_f32_f64(vsubq_f64(*(v412 + 8), *(a1 + 80)));
          *&v114 = v42 + v112 * v113.__cosval;
          *&v115 = v43 + v112 * v113.__sinval;
          *&v417 = __PAIR64__(v115, v114);
          sub_19B8D7F58(&v417, &v408);
          v117 = v116;
          *(a1 + 384) = v116;
          *(a1 + 392) = 1;
          if (*(a1 + 1))
          {
            ++*(a1 + 472);
            v119 = __sincos_stret(v116);
            v118.f64[0] = v119.__cosval;
            v118.f64[1] = v119.__sinval;
            *(a1 + 480) = vaddq_f64(v118, *(a1 + 480));
            if (*(a1 + 408) == 1)
            {
              v120 = *(a1 + 400);
              v121 = __sincos_stret(v117);
              cosval = v121.__cosval;
              sinval = v121.__sinval;
              *__p = cosval;
              *&__p[4] = sinval;
              v124 = __sincos_stret(v120);
              v125 = v124.__cosval;
              v126 = v124.__sinval;
              *v411 = v125;
              *&v411[4] = v126;
              sub_19B8D7F58(__p, v411);
              v128 = fabs(v127);
              if (*(a1 + 496) < v128)
              {
                *(a1 + 496) = v128;
              }
            }

            *(a1 + 400) = *(a1 + 384);
            *(a1 + 408) = *(a1 + 392);
          }

          v129 = sqrtf(vaddv_f32(vmul_f32(*&v408, *&v408)));
          v130 = v129;
          v131 = sqrtf((*&v417 * *&v417) + (*(&v417 + 1) * *(&v417 + 1)));
          v132 = v131;
          if (v129 > 100.0)
          {
            if (*(a1 + 464) == 1)
            {
              if (*(a1 + 392) != 1)
              {
LABEL_562:
                sub_19B94F954();
              }

              v133 = *(a1 + 456);
              v134 = __sincos_stret(*(a1 + 384));
              v135 = v134.__cosval;
              v136 = v134.__sinval;
              *__p = v135;
              *&__p[4] = v136;
              v137 = __sincos_stret(v133);
              v138 = v137.__cosval;
              v139 = v137.__sinval;
              *v411 = v138;
              *&v411[4] = v139;
              sub_19B8D7F58(__p, v411);
              v141 = fabs(v140);
              if (*(a1 + 448) > v141)
              {
                v141 = *(a1 + 448);
              }

              *(a1 + 448) = v141;
            }

            *(a1 + 456) = *(a1 + 384);
            *(a1 + 464) = *(a1 + 392);
            if (v131 > 2.2204e-16)
            {
              if (v129 <= v131)
              {
                v142 = v131;
              }

              else
              {
                v142 = v129;
              }

              if (v129 >= v131)
              {
                v143 = v131;
              }

              else
              {
                v143 = v129;
              }

              v144 = v142 / v143;
              if (*(a1 + 440) > v144)
              {
                v144 = *(a1 + 440);
              }

              *(a1 + 440) = v144;
            }
          }

          v145 = 1.0;
          if (v131 > 2.2204e-16)
          {
            v145 = v130 / v132;
            if (v130 / v132 > 1.0)
            {
              v145 = 1.0;
            }
          }

          *&v146 = v40 + v112;
          *(a1 + 416) = v145;
          v147 = 2.22044605e-16;
          if (v40 + v112 <= 2.22044605e-16)
          {
            v148 = 1;
          }

          else
          {
            v147 = v132 / *&v146;
            *&v146 = 0x3FD3333333333333;
            v148 = v147 > 0.3;
          }

          *(a1 + 2) = v148;
          if ((*(a1 + 392) & 1) == 0)
          {
            if (*a1 == 1)
            {
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
              }

              v284 = qword_1EAFE4760;
              if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
              {
                *__p = 0;
                _os_log_impl(&dword_19B873000, v284, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Course offset is not initialized.", __p, 2u);
              }

              v285 = sub_19B87DD40();
              if ((*(v285 + 160) & 0x80000000) == 0 || (*(v285 + 164) & 0x80000000) == 0 || (*(v285 + 168) & 0x80000000) == 0 || *(v285 + 152))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1EAFE4758 == -1)
                {
LABEL_389:
                  *v411 = 0;
                  v234 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v234);
                  goto LABEL_511;
                }

LABEL_559:
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                goto LABEL_389;
              }
            }

            goto LABEL_513;
          }

          v156 = *(a1 + 304);
          if ((*(a1 + 376) & 1) == 0)
          {
            *(a1 + 352) = v156;
            v147 = *(a1 + 312);
            *(a1 + 360) = v147;
            *(a1 + 376) = 1;
          }

          *&v411[16] = 0;
          *v411 = 0x3FF0000000000000uLL;
          *&v411[24] = 0x3FF0000000000000;
          while (v156 <= *(a1 + 328))
          {
            v157 = [a3 objectAtIndexedSubscript:{v156, v147, *&v146}];
            v158 = [objc_msgSend(v157 "deltaPosition_m")];
            if (v158)
            {
              [objc_msgSend(v157 "deltaPosition_m")];
              v160 = v159;
              [objc_msgSend(v157 "deltaPosition_m")];
              v162 = v161;
              v399 = xmmword_19BA8BCA0;
            }

            else
            {
              v399 = xmmword_19BA8BC90;
              v160 = 0.0;
              v162 = 0.0;
            }

            v163 = *(a1 + 424);
            if (v163)
            {
              v164 = sub_19B950A2C(v163, v156);
              if (v164)
              {
                *(a1 + 384) = v164[3];
                *(a1 + 392) = 1;
              }
            }

            v165 = *(a1 + 432);
            if (v165)
            {
              if ((*(a1 + 2) & 1) == 0)
              {
                v166 = sub_19B950A2C(v165, v156);
                if (v166)
                {
                  v167 = v166[3];
                  if (v167 > 1.0)
                  {
                    v167 = 1.0;
                  }

                  *(a1 + 416) = v167;
                }
              }
            }

            v168 = 0.0;
            if (v158)
            {
              if ((*(a1 + 392) & 1) == 0)
              {
                goto LABEL_562;
              }

              v168 = atan2(v162, v160) + *(a1 + 384);
            }

            [objc_msgSend(v157 "cfAbsTimestamp")];
            v170 = v169;
            if (v156 == *(a1 + 304))
            {
              v171 = *(a1 + 312);
            }

            else
            {
              v171 = sqrt(v162 * v162 + v160 * v160);
            }

            if (v156 == *(a1 + 328))
            {
              v171 = *(a1 + 336);
            }

            v172 = *(a1 + 416) * v171;
            v417 = v399;
            v173 = __sincos_stret(v168);
            *&v408 = -(v172 * v173.__sinval);
            *(&v408 + 1) = v173.__cosval * v172;
            v409 = v173.__cosval;
            v410 = v173.__sinval;
            sub_19B94F27C(a1 + 120, v411, &v408, &v417);
            v174.f64[0] = v173.__cosval * v172;
            v174.f64[1] = v173.__sinval * v172;
            *(a1 + 80) = vaddq_f64(v174, *(a1 + 80));
            *(a1 + 72) = v170;
            if (*(a1 + 232) == 1)
            {
              v175 = *(a1 + 216);
              *(a1 + 96) = *(a1 + 208);
              *(a1 + 104) = v175;
              v176 = *(a1 + 224);
            }

            else
            {
              if (*a1 == 1)
              {
                if (qword_1EAFE4758 != -1)
                {
                  dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                }

                v177 = qword_1EAFE4760;
                if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                {
                  *__p = 0;
                  _os_log_impl(&dword_19B873000, v177, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[forwardPropagate with IO] LastConsumedMeasurement is not initialized.", __p, 2u);
                }

                v178 = sub_19B87DD40();
                if ((*(v178 + 160) & 0x80000000) == 0 || (*(v178 + 164) & 0x80000000) == 0 || (*(v178 + 168) & 0x80000000) == 0 || *(v178 + 152))
                {
                  bzero(__p, 0x65CuLL);
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                  }

                  LOWORD(v406) = 0;
                  v179 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::forwardPropagate(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable)", "CoreLocation: %s\n", v179);
                  if (v179 != __p)
                  {
                    free(v179);
                  }
                }
              }

              *(a1 + 96) = 0x100000000;
              *(a1 + 104) = 0xBFF0000000000000;
              v176 = -1.0;
            }

            *(a1 + 112) = v176;
            v180 = *(a1 + 160);
            v181 = *(a1 + 168);
            if (v180 >= v181)
            {
              v185 = 0xCCCCCCCCCCCCCCCDLL * ((v180 - *v12) >> 4);
              v186 = v185 + 1;
              if (v185 + 1 > 0x333333333333333)
              {
                goto LABEL_560;
              }

              v187 = 0xCCCCCCCCCCCCCCCDLL * ((v181 - *v12) >> 4);
              if (2 * v187 > v186)
              {
                v186 = 2 * v187;
              }

              if (v187 >= 0x199999999999999)
              {
                v188 = 0x333333333333333;
              }

              else
              {
                v188 = v186;
              }

              *&__p[32] = a1 + 152;
              if (v188)
              {
                sub_19B94FA38(v188);
              }

              v189 = 80 * v185;
              *__p = 0;
              *&__p[8] = v189;
              *&__p[24] = 0;
              v191 = *(a1 + 88);
              v190 = *(a1 + 104);
              *v189 = *v20;
              *(v189 + 16) = v191;
              *(v189 + 32) = v190;
              *(v189 + 48) = *(a1 + 120);
              *(v189 + 56) = *(a1 + 128);
              *(v189 + 64) = *(a1 + 136);
              *(v189 + 72) = 0;
              *&__p[16] = 80 * v185 + 80;
              sub_19B94F9A0((a1 + 152), __p);
              v184 = *(a1 + 160);
              if (*__p)
              {
                operator delete(*__p);
              }
            }

            else
            {
              v182 = *v20;
              v146 = *(a1 + 88);
              v183 = *(a1 + 104);
              *(v180 + 16) = v146;
              *(v180 + 32) = v183;
              *v180 = v182;
              *(v180 + 48) = *(a1 + 120);
              *(v180 + 56) = *(a1 + 128);
              v147 = *(a1 + 136);
              *(v180 + 64) = v147;
              *(v180 + 72) = 0;
              v184 = v180 + 80;
            }

            *(a1 + 160) = v184;
            ++v156;
          }

          sub_19B94D6A8(a1, v412);
          v192 = *(a1 + 72);
          v193 = *(a1 + 160);
          *(v193 - 80) = v192;
          *(v193 - 8) = 1;
          *__p = *(a1 + 80);
          v194 = *(a1 + 120);
          v195 = *(a1 + 128);
          v196 = *(a1 + 136);
          *v411 = a1 + 72;
          v197 = sub_19B94FADC(v400, v192);
        }

        else
        {
          if (*a1 == 1)
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            v69 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
            {
              if ((*(a1 + 232) & 1) == 0)
              {
                sub_19B94F954();
              }

              v70 = *(a1 + 176);
              *__p = 134349824;
              *&__p[4] = *&v412[0];
              *&__p[12] = 2050;
              *&__p[14] = v70;
              *&__p[22] = 1024;
              *&__p[24] = v38;
              *&__p[28] = 1024;
              *&__p[30] = v39;
              _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] There is no inertialOdometry sample between consecutive location samples. timestamp of coming location sample %{public}.3f, timestamp of consumed location sample %{public}.3f.areThereEnoughValidIOSamples,%d,isIODistanceLongEnough,%d.", __p, 0x22u);
            }

            v71 = sub_19B87DD40();
            if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
            {
              bzero(__p, 0x65CuLL);
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
              }

              if ((*(a1 + 232) & 1) == 0)
              {
                sub_19B94F954();
              }

              v72 = *(a1 + 176);
              *v411 = 134349824;
              *&v411[4] = *&v412[0];
              *&v411[12] = 2050;
              *&v411[14] = v72;
              *&v411[22] = 1024;
              *&v411[24] = v38;
              *&v411[28] = 1024;
              *&v411[30] = v39;
              v73 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v73);
              if (v73 != __p)
              {
                free(v73);
              }
            }
          }

          v74 = 0;
          v75 = *v412;
          v409 = 0.0;
          v408 = 0x3FF0000000000000uLL;
          v410 = 1.0;
          *&v406 = (v75 - *v20) * 4.0 * ((v75 - *v20) * 4.0);
          *(&v406 + 1) = v406;
          v76 = 1;
          do
          {
            v77 = v76;
            v78 = *sub_19B8D7BD0(&v408, v74, 0);
            v79 = *(a1 + 136);
            v80 = sub_19B8D7BD0(&v408, v74, 1uLL);
            *v80 = *v80 + v78 * v79;
            *sub_19B8D7BD0(v411, v74, 1uLL) = 0;
            *sub_19B8D7BD0(v411, v74, 0) = 0;
            v81 = sub_19B8D7BD0(v411, v74, v74);
            v76 = 0;
            *v81 = 0x3FF0000000000000;
            v74 = 1;
          }

          while ((v77 & 1) != 0);
          for (j = 1; ; --j)
          {
            v83 = 0;
            *(&v417 + j) = 0;
            v84 = 1;
            v85 = 0.0;
            do
            {
              v86 = v84;
              v87 = *sub_19B8D7BD0(&v408, j, v83);
              v88 = *sub_19B8D7BD0(&v408, j, v83);
              v89 = *sub_19B95063C(a1 + 120, v83);
              v90 = *sub_19B8D7BD0(v411, j, v83);
              v91 = *sub_19B8D7BD0(v411, j, v83);
              v92 = sub_19B950834(&v406, v83);
              v84 = 0;
              v85 = v85 + v87 * v88 * v89 + v90 * v91 * v92;
              *(&v417 + j) = v85;
              v83 = 1;
            }

            while ((v86 & 1) != 0);
            if (v85 <= 0.0)
            {
              break;
            }

            if (!j)
            {
              *(a1 + 120) = v417;
              goto LABEL_209;
            }

            v93 = 0;
            v94 = 0.0;
            v95 = 1;
            do
            {
              v96 = v95;
              v97 = *sub_19B8D7BD0(&v408, 0, v93);
              v98 = *sub_19B95063C(a1 + 120, v93);
              v99 = *sub_19B8D7BD0(&v408, j, v93);
              v100 = *sub_19B8D7BD0(v411, 0, v93);
              v101 = sub_19B950834(&v406, v93);
              v102 = sub_19B8D7BD0(v411, j, v93);
              v95 = 0;
              v94 = v94 + v97 * v98 * v99 + v100 * v101 * *v102;
              v93 = 1;
            }

            while ((v96 & 1) != 0);
            v103 = 0;
            *sub_19B9502B4(a1 + 136, 0, j) = v94 / v85;
            v104 = 1;
            do
            {
              v105 = v104;
              v106 = *sub_19B9502B4(a1 + 136, 0, j);
              v107 = *sub_19B8D7BD0(&v408, j, v103);
              v108 = sub_19B8D7BD0(&v408, 0, v103);
              *v108 = *v108 - v106 * v107;
              v109 = *sub_19B9502B4(a1 + 136, 0, j);
              v110 = *sub_19B8D7BD0(v411, j, v103);
              v111 = sub_19B8D7BD0(v411, 0, v103);
              v104 = 0;
              *v111 = *v111 - v109 * v110;
              v103 = 1;
            }

            while ((v105 & 1) != 0);
          }

          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
          }

          v153 = off_1ED519060;
          if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
          {
            *__p = 134217984;
            *&__p[4] = j;
            _os_log_impl(&dword_19B873000, v153, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", __p, 0xCu);
          }

          v154 = sub_19B87DD40();
          if (*(v154 + 160) > 1 || *(v154 + 164) > 1 || *(v154 + 168) > 1 || *(v154 + 152))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1ED519058 != -1)
            {
              dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
            }

            LODWORD(v414) = 134217984;
            *(&v414 + 4) = j;
            v155 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "void CMFactoredMatrix<double, 2>::thorntonTemporalUpdate(CMMatrix<T, N, N> &, const CMVector<T, N> &) [T = double, N = 2]", "CoreLocation: %s\n", v155);
            if (v155 != __p)
            {
              free(v155);
            }
          }

LABEL_209:
          *(a1 + 72) = v75;
          if (*(a1 + 232) == 1)
          {
            v198 = *(a1 + 216);
            *(a1 + 96) = *(a1 + 208);
            *(a1 + 104) = v198;
            v199 = *(a1 + 224);
          }

          else
          {
            if (*a1 == 1)
            {
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
              }

              v200 = qword_1EAFE4760;
              if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
              {
                *__p = 0;
                _os_log_impl(&dword_19B873000, v200, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[forwardPropagate ZOH] LastConsumedMeasurement is not initialized.", __p, 2u);
              }

              v201 = sub_19B87DD40();
              if ((*(v201 + 160) & 0x80000000) == 0 || (*(v201 + 164) & 0x80000000) == 0 || (*(v201 + 168) & 0x80000000) == 0 || *(v201 + 152))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1EAFE4758 != -1)
                {
                  dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                }

                *v411 = 0;
                v202 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::forwardPropagate(const CFAbsoluteTime)", "CoreLocation: %s\n", v202);
                if (v202 != __p)
                {
                  free(v202);
                }
              }
            }

            *(a1 + 96) = 0x100000000;
            *(a1 + 104) = 0xBFF0000000000000;
            v199 = -1.0;
          }

          *(a1 + 112) = v199;
          v203 = *(a1 + 160);
          v204 = *(a1 + 168);
          if (v203 >= v204)
          {
            v208 = 0xCCCCCCCCCCCCCCCDLL * ((v203 - *v12) >> 4);
            v209 = v208 + 1;
            if (v208 + 1 > 0x333333333333333)
            {
LABEL_560:
              sub_19B8B8A40();
            }

            v210 = 0xCCCCCCCCCCCCCCCDLL * ((v204 - *v12) >> 4);
            if (2 * v210 > v209)
            {
              v209 = 2 * v210;
            }

            if (v210 >= 0x199999999999999)
            {
              v211 = 0x333333333333333;
            }

            else
            {
              v211 = v209;
            }

            *&__p[32] = a1 + 152;
            if (v211)
            {
              sub_19B94FA38(v211);
            }

            v224 = 80 * v208;
            *__p = 0;
            *&__p[8] = v224;
            *&__p[24] = 0;
            v226 = *(a1 + 88);
            v225 = *(a1 + 104);
            *v224 = *v20;
            *(v224 + 16) = v226;
            *(v224 + 32) = v225;
            *(v224 + 48) = *(a1 + 120);
            *(v224 + 56) = *(a1 + 128);
            *(v224 + 64) = *(a1 + 136);
            *(v224 + 72) = 0;
            *&__p[16] = 80 * v208 + 80;
            sub_19B94F9A0((a1 + 152), __p);
            v207 = *(a1 + 160);
            if (*__p)
            {
              operator delete(*__p);
            }
          }

          else
          {
            v205 = *v20;
            v206 = *(a1 + 104);
            *(v203 + 16) = *(a1 + 88);
            *(v203 + 32) = v206;
            *v203 = v205;
            *(v203 + 48) = *(a1 + 120);
            *(v203 + 56) = *(a1 + 128);
            *(v203 + 64) = *(a1 + 136);
            *(v203 + 72) = 0;
            v207 = v203 + 80;
          }

          *(a1 + 160) = v207;
          sub_19B94D6A8(a1, v412);
          *(*(a1 + 160) - 8) = 1;
          *__p = *(a1 + 80);
          v194 = *(a1 + 120);
          v195 = *(a1 + 128);
          v196 = *(a1 + 136);
          *v411 = a1 + 72;
          v197 = sub_19B94FADC(v400, *(a1 + 72));
        }

        *(v197 + 3) = *__p;
        *(v197 + 5) = v194;
        *(v197 + 6) = v195;
        *(v197 + 7) = v196;
      }

      else
      {
        *&v411[8] = 0;
        *&v411[16] = 0;
        *v411 = *(&v412[1] + 1) * *(&v412[1] + 1) * 0.5;
        *&v411[24] = *v411;
        if (sub_19B94EDC0(&v408, v411))
        {
          v56 = v409;
          *(a1 + 72) = v412[0];
          v57 = *v413;
          *(a1 + 88) = *&v412[1];
          *(a1 + 96) = v57;
          *(a1 + 104) = *&v413[8];
          *(a1 + 120) = v408;
          *(a1 + 136) = v56;
          *(a1 + 144) = 1;
          v58 = *(a1 + 160);
          v59 = *(a1 + 168);
          if (v58 >= v59)
          {
            v149 = 0xCCCCCCCCCCCCCCCDLL * ((v58 - *v12) >> 4);
            v150 = v149 + 1;
            if (v149 + 1 > 0x333333333333333)
            {
              sub_19B8B8A40();
            }

            v151 = 0xCCCCCCCCCCCCCCCDLL * ((v59 - *v12) >> 4);
            if (2 * v151 > v150)
            {
              v150 = 2 * v151;
            }

            if (v151 >= 0x199999999999999)
            {
              v152 = 0x333333333333333;
            }

            else
            {
              v152 = v150;
            }

            *&__p[32] = a1 + 152;
            if (v152)
            {
              sub_19B94FA38(v152);
            }

            v212 = 80 * v149;
            *__p = 0;
            *&__p[8] = v212;
            *&__p[24] = 0;
            v214 = *(a1 + 88);
            v213 = *(a1 + 104);
            *v212 = *v20;
            *(v212 + 16) = v214;
            *(v212 + 32) = v213;
            *(v212 + 48) = *(a1 + 120);
            *(v212 + 56) = *(a1 + 128);
            *(v212 + 64) = *(a1 + 136);
            *(v212 + 72) = 1;
            *&__p[16] = 80 * v149 + 80;
            sub_19B94F9A0((a1 + 152), __p);
            v63 = *(a1 + 160);
            if (*__p)
            {
              operator delete(*__p);
            }

            v62 = *(a1 + 136);
          }

          else
          {
            v60 = *v20;
            v61 = *(a1 + 104);
            *(v58 + 16) = *(a1 + 88);
            *(v58 + 32) = v61;
            *v58 = v60;
            *(v58 + 48) = *(a1 + 120);
            *(v58 + 56) = *(a1 + 128);
            v62 = *(a1 + 136);
            *(v58 + 64) = v62;
            *(v58 + 72) = 1;
            v63 = v58 + 80;
          }

          *(a1 + 160) = v63;
          *__p = *(a1 + 80);
          v215 = *(a1 + 120);
          v216 = *(a1 + 128);
          *&v417 = a1 + 72;
          v217 = sub_19B94FADC(v400, *(a1 + 72));
          *(v217 + 3) = *__p;
          *(v217 + 5) = v215;
          *(v217 + 6) = v216;
          *(v217 + 7) = v62;
          v218 = *(a1 + 296);
          v219 = v412[1];
          *(a1 + 240) = v412[0];
          *(a1 + 256) = v219;
          *(a1 + 272) = *v413;
          *(a1 + 288) = *&v413[16];
          if ((v218 & 1) == 0)
          {
            *(a1 + 296) = 1;
          }

          v220 = *(a1 + 232);
          v221 = v412[1];
          *(a1 + 176) = v412[0];
          *(a1 + 192) = v221;
          *(a1 + 208) = *v413;
          *(a1 + 224) = *&v413[16];
          if ((v220 & 1) == 0)
          {
            *(a1 + 232) = 1;
          }

          if (*a1 == 1)
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            v222 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 134349056;
              *&__p[4] = *(&v412[1] + 1);
              _os_log_impl(&dword_19B873000, v222, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Forward state initialized successfully. horizontalUncertainty, %{public}.1f.", __p, 0xCu);
            }

            v223 = sub_19B87DD40();
            if (*(v223 + 160) > 1 || *(v223 + 164) > 1 || *(v223 + 168) > 1 || *(v223 + 152))
            {
              bzero(__p, 0x65CuLL);
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
              }

              *v411 = 134349056;
              *&v411[4] = *(&v412[1] + 1);
              v55 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v55);
LABEL_253:
              if (v55 != __p)
              {
                free(v55);
              }
            }
          }
        }

        else
        {
          if (*a1 == 1)
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            v64 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              *__p = 134349056;
              *&__p[4] = *(&v412[1] + 1);
              _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[initializePositionState] Forward state initialization failed. horizontalUncertainty, %{public}.1f.", __p, 0xCu);
            }

            v65 = sub_19B87DD40();
            if ((*(v65 + 160) & 0x80000000) == 0 || (*(v65 + 164) & 0x80000000) == 0 || (*(v65 + 168) & 0x80000000) == 0 || *(v65 + 152))
            {
              bzero(__p, 0x65CuLL);
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
              }

              LODWORD(v417) = 134349056;
              *(&v417 + 4) = *(&v412[1] + 1);
              v66 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::initializePositionState(const CLPTSUtility::LocationInNWU &, std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &)", "CoreLocation: %s\n", v66);
              if (v66 != __p)
              {
                free(v66);
              }
            }
          }

          if (*a1 == 1)
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            v67 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              *__p = 134349056;
              *&__p[4] = *(&v412[1] + 1);
              _os_log_impl(&dword_19B873000, v67, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Forward state initialization failed. horizontalUncertainty, %{public}.1f.", __p, 0xCu);
            }

            v68 = sub_19B87DD40();
            if ((*(v68 + 160) & 0x80000000) == 0 || (*(v68 + 164) & 0x80000000) == 0 || (*(v68 + 168) & 0x80000000) == 0 || *(v68 + 152))
            {
              bzero(__p, 0x65CuLL);
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
              }

              *v411 = 134349056;
              *&v411[4] = *(&v412[1] + 1);
              v55 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v55);
              goto LABEL_253;
            }
          }
        }
      }
    }

LABEL_259:
    ++v19;
  }

  while (v19 != v398);
  v235 = *(a1 + 160);
  if (0xCCCCCCCCCCCCCCCDLL * ((v235 - *(a1 + 152)) >> 4) <= 1)
  {
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v236 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v236, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] Not enough forward estimation, returned false", __p, 2u);
      }

      v237 = sub_19B87DD40();
      if ((*(v237 + 160) & 0x80000000) == 0 || (*(v237 + 164) & 0x80000000) == 0 || (*(v237 + 168) & 0x80000000) == 0 || *(v237 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 == -1)
        {
          goto LABEL_499;
        }

LABEL_576:
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
LABEL_499:
        LOWORD(v412[0]) = 0;
        v381 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::backPropagate(const std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v381);
        if (v381 != __p)
        {
          free(v381);
        }
      }
    }

LABEL_501:
    if (*a1 != 1)
    {
      goto LABEL_513;
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v382 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v382, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Backpropagation failed.", __p, 2u);
    }

    v383 = sub_19B87DD40();
    if ((*(v383 + 160) & 0x80000000) != 0 && (*(v383 + 164) & 0x80000000) != 0 && (*(v383 + 168) & 0x80000000) != 0 && !*(v383 + 152))
    {
      goto LABEL_513;
    }

    bzero(__p, 0x65CuLL);
    if (qword_1EAFE4758 == -1)
    {
LABEL_510:
      LOWORD(v412[0]) = 0;
      v234 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v234);
      goto LABEL_511;
    }

LABEL_556:
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    goto LABEL_510;
  }

  if ((*(v235 - 8) & 1) == 0)
  {
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v272 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v272, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] last forward estimate is not corrected, returned false", __p, 2u);
      }

      v273 = sub_19B87DD40();
      if ((*(v273 + 160) & 0x80000000) == 0 || (*(v273 + 164) & 0x80000000) == 0 || (*(v273 + 168) & 0x80000000) == 0 || *(v273 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 == -1)
        {
          goto LABEL_499;
        }

        goto LABEL_576;
      }
    }

    goto LABEL_501;
  }

  v238 = *(v235 - 80);
  v239 = sub_19B950ADC(v400[0], v400[1], v238);
  if (!v239)
  {
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v282 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v282, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] key for initialization does not exist, returned false", __p, 2u);
      }

      v283 = sub_19B87DD40();
      if ((*(v283 + 160) & 0x80000000) == 0 || (*(v283 + 164) & 0x80000000) == 0 || (*(v283 + 168) & 0x80000000) == 0 || *(v283 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 == -1)
        {
          goto LABEL_499;
        }

        goto LABEL_576;
      }
    }

    goto LABEL_501;
  }

  v241 = v239[3];
  v240 = v239[4];
  v242 = 0.0;
  v243 = v239[6];
  v244 = v239[7];
  v245 = v239[5] + 0.0 + v244 * v243 * v244;
  v246 = v244 * v243 + 0.0;
  v247 = v243 * v244 + 0.0;
  v248 = v243 + 0.0;
  *&v417 = v245;
  *(&v417 + 1) = v247;
  v418 = v246;
  v419 = v248;
  if ((*(a1 + 64) & 1) == 0)
  {
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v286 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v286, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] origin is not set, returned false", __p, 2u);
      }

      v287 = sub_19B87DD40();
      if ((*(v287 + 160) & 0x80000000) == 0 || (*(v287 + 164) & 0x80000000) == 0 || (*(v287 + 168) & 0x80000000) == 0 || *(v287 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 == -1)
        {
          goto LABEL_499;
        }

        goto LABEL_576;
      }
    }

    goto LABEL_501;
  }

  v249 = 0;
  v251 = *(v235 - 48);
  v250 = *(v235 - 40);
  v252 = *(v235 - 56);
  *__p = v245;
  *&__p[8] = v247;
  v253 = 1;
  *&__p[16] = v246;
  *&__p[24] = v248;
  do
  {
    v254 = v253;
    v255 = sub_19B94FF2C(__p, v249, v249);
    v253 = 0;
    v242 = v242 + v255;
    v249 = 1;
  }

  while ((v254 & 1) != 0);
  v256 = sub_19B8D8410(*(v235 - 52), v252, v238, sqrt(v242), v241, v240, *(a1 + 48), *(a1 + 56), v251, v250);
  [v392 addObject:v256];

  v257 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 160) - *(a1 + 152)) >> 4);
  if (v257 >= 2)
  {
    v288 = (v257 - 2);
    v289 = 0uLL;
    while (2)
    {
      v290 = 0;
      v291 = v288 + 1;
      v406 = v289;
      v407 = v289;
      v292 = *v12 + 80 * (v288 + 1);
      v293 = -*(v292 + 64);
      v412[0] = v289;
      v412[1] = v289;
      v294 = 1;
      do
      {
        v295 = v294;
        *__p = *(v292 + 48);
        if (*sub_19B94F084(__p, v290) <= 0.0)
        {
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
          }

          v376 = off_1ED519060;
          if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
          {
            *__p = 134217984;
            *&__p[4] = v290;
            _os_log_impl(&dword_19B873000, v376, OS_LOG_TYPE_DEBUG, "non-invertible matrix, D(%zu) <= 0 non-positive definite matrix!", __p, 0xCu);
          }

          v377 = sub_19B87DD40();
          if (*(v377 + 160) > 1 || *(v377 + 164) > 1 || *(v377 + 168) > 1 || *(v377 + 152))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1ED519058 != -1)
            {
              dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
            }

            *v411 = 134217984;
            *&v411[4] = v290;
            v378 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CMFactoredMatrix<double, 2>::inverse(CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v378);
            if (v378 != __p)
            {
              free(v378);
            }
          }

          if (*a1 != 1)
          {
            goto LABEL_501;
          }

          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v379 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *__p = 0;
            _os_log_impl(&dword_19B873000, v379, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] matrix inversion failed, returned false", __p, 2u);
          }

          v380 = sub_19B87DD40();
          if ((*(v380 + 160) & 0x80000000) != 0 && (*(v380 + 164) & 0x80000000) != 0 && (*(v380 + 168) & 0x80000000) != 0 && !*(v380 + 152))
          {
            goto LABEL_501;
          }

          bzero(__p, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            goto LABEL_576;
          }

          goto LABEL_499;
        }

        *__p = *(v292 + 48);
        v296 = *sub_19B94F084(__p, v290);
        v297 = sub_19B8D7BD0(v412, v290, v290);
        v294 = 0;
        *v297 = 1.0 / v296;
        v290 = 1;
      }

      while ((v295 & 1) != 0);
      v298 = v241;
      *__p = 0x3FF0000000000000;
      *&__p[8] = v293;
      *&__p[16] = xmmword_19BA8BCB0;
      v408 = xmmword_19BA8BCC0;
      v409 = v293;
      v410 = 1.0;
      *v411 = sub_19B94F70C(v412, &v408);
      *&v411[8] = v299;
      *&v411[16] = v300;
      *&v411[24] = v301;
      *&v406 = sub_19B94F70C(__p, v411);
      *(&v406 + 1) = v302;
      *&v407 = v303;
      *(&v407 + 1) = v304;
      v305 = *v12 + 80 * v288;
      memset(v411, 0, 32);
      if (*(v305 + 72) != 1)
      {
        v309 = *(v305 + 56);
        v310 = *(v305 + 64);
        *v411 = *(v305 + 48) + 0.0 + v310 * v309 * v310;
        *&v411[8] = v309 * v310 + 0.0;
        *&v411[16] = v310 * v309 + 0.0;
        *&v411[24] = v309 + 0.0;
        v397 = *(v305 + 8);
        v395 = *(v305 + 16);
LABEL_443:
        *&v408 = sub_19B94F70C(v411, &v406);
        *(&v408 + 1) = v311;
        v409 = v312;
        v410 = v313;
        *&v414 = v408;
        *(&v414 + 1) = v312;
        v415 = v311;
        v416 = v313;
        v314 = (*v12 + 80 * v291);
        v405[0] = sub_19B94F808(&v417, v314[6] + 0.0 + v314[8] * v314[7] * v314[8], v314[7] * v314[8] + 0.0, v314[8] * v314[7] + 0.0, v314[7] + 0.0);
        v405[1] = v315;
        v405[2] = v316;
        v405[3] = v317;
        v404[0] = sub_19B94F70C(&v408, v405);
        v404[1] = v318;
        v404[2] = v319;
        v404[3] = v320;
        v403[0] = sub_19B94F70C(v404, &v414);
        v403[1] = v321;
        v403[2] = v322;
        v403[3] = v323;
        v324 = sub_19B94F808(v403, *v411, *&v411[8], *&v411[16], *&v411[24]);
        v326 = v325;
        v328 = v327;
        v330 = v329;
        v331 = *v12 + 80 * v291;
        v332 = v240 - *(v331 + 16);
        v402[0] = v298 - *(v331 + 8);
        v402[1] = v332;
        v333 = sub_19B94F874(&v408, v402);
        v335 = v334;
        v336 = 0;
        v337 = *v305;
        v338 = *(v305 + 24);
        *&v417 = v324;
        *(&v417 + 1) = v326;
        v418 = v328;
        v419 = v330;
        v393 = *(v305 + 32);
        v390 = *(v305 + 40);
        *__p = v324;
        *&__p[8] = v326;
        v339 = 0.0;
        v340 = 1;
        *&__p[16] = v328;
        *&__p[24] = v330;
        do
        {
          v341 = v340;
          v342 = sub_19B94FF2C(__p, v336, v336);
          v340 = 0;
          v339 = v339 + v342;
          v336 = 1;
        }

        while ((v341 & 1) != 0);
        if (*&v417 < 0.0 || v419 < 0.0 || (v418 >= *(&v417 + 1) ? (v343 = v418 - *(&v417 + 1)) : (v343 = -(v418 - *(&v417 + 1))), v343 > 0.00100000005 || v339 <= 0.0))
        {
          v344 = 10.0;
          if (*a1 == 1)
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            v345 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              v346 = *v305;
              *__p = 134219008;
              *&__p[4] = v346;
              *&__p[12] = 2048;
              *&__p[14] = v417;
              *&__p[22] = 2048;
              *&__p[24] = v419;
              *&__p[32] = 2048;
              *&__p[34] = v418;
              v421 = 2048;
              v422 = *(&v417 + 1);
              _os_log_impl(&dword_19B873000, v345, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] updated covariance is not positive definite, reporting a default value. timestamp,%.2f,diagonals,%.2f,%.2f,off-diagonals,%.2f,%.2f.", __p, 0x34u);
            }

            v347 = sub_19B87DD40();
            if ((*(v347 + 160) & 0x80000000) == 0 || (*(v347 + 164) & 0x80000000) == 0 || (*(v347 + 168) & 0x80000000) == 0 || *(v347 + 152))
            {
              bzero(__p, 0x65CuLL);
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
              }

              v348 = *v305;
              LODWORD(v412[0]) = 134219008;
              *(v412 + 4) = v348;
              WORD6(v412[0]) = 2048;
              *(v412 + 14) = v417;
              WORD3(v412[1]) = 2048;
              *(&v412[1] + 1) = v419;
              *v413 = 2048;
              *&v413[2] = v418;
              *&v413[10] = 2048;
              *&v413[12] = *(&v417 + 1);
              v349 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::backPropagate(const std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v349);
              if (v349 != __p)
              {
                free(v349);
              }
            }
          }
        }

        else
        {
          v344 = sqrt(v339);
        }

        v240 = v395 + v335;
        v350 = v344;
        v241 = v397 + v333;
        v351 = sub_19B8D8410(*(v305 + 28), v338, v337, v350, v397 + v333, v240, *(a1 + 48), *(a1 + 56), v393, v390);
        v352 = [v392 lastObject];
        [(CLTripSegmentLocation *)v351 latitude];
        v354 = v353;
        [(CLTripSegmentLocation *)v351 longitude];
        v356 = v355;
        [v352 latitude];
        v358 = v357;
        [v352 longitude];
        [v352 setCourse:{sub_19BA0C44C((a1 + 8), v354, v356, v358, v359)}];
        [v352 course];
        v361 = v360 <= 0.0;
        v362 = -1.0;
        if (!v361)
        {
          v362 = 10.0;
        }

        [v352 setCourseAccuracy:v362];
        [(CLTripSegmentLocation *)v351 latitude];
        v364 = v363;
        [(CLTripSegmentLocation *)v351 longitude];
        v366 = v365;
        [v352 latitude];
        v368 = v367;
        [v352 longitude];
        v370 = sub_19BA0C01C((a1 + 8), v364, v366, v368, v369, 0.0);
        [objc_msgSend(v352 "timestamp")];
        if (v371 > 0.0)
        {
          [(CLTripSegmentLocation *)v351 setSpeed:v370 / v371];
          [(CLTripSegmentLocation *)v351 speed];
          v373 = v372;
          v374 = -1.0;
          if (v373 >= 0.0)
          {
            [(CLTripSegmentLocation *)v351 speed];
            v361 = v375 > 10.0;
            v374 = 0.3;
            if (v361)
            {
              v374 = -1.0;
            }
          }

          [(CLTripSegmentLocation *)v351 setSpeedAccuracy:v374];
        }

        [v392 addObject:v351];

        v361 = v288-- < 1;
        v289 = 0uLL;
        if (v361)
        {
          goto LABEL_311;
        }

        continue;
      }

      break;
    }

    v306 = sub_19B950ADC(v400[0], v400[1], *v305);
    if (v306)
    {
      v397 = v306[3];
      v395 = v306[4];
      v307 = v306[6];
      v308 = v306[7];
      *v411 = v306[5] + 0.0 + v307 * v308 * v308;
      *&v411[8] = v307 * v308 + 0.0;
      *&v411[16] = *&v411[8];
      *&v411[24] = v307 + 0.0;
      goto LABEL_443;
    }

    if (*a1 != 1)
    {
      goto LABEL_501;
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v388 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v388, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] key during back propagation does not exist , returned false", __p, 2u);
    }

    v389 = sub_19B87DD40();
    if ((*(v389 + 160) & 0x80000000) != 0 && (*(v389 + 164) & 0x80000000) != 0 && (*(v389 + 168) & 0x80000000) != 0 && !*(v389 + 152))
    {
      goto LABEL_501;
    }

    bzero(__p, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      goto LABEL_576;
    }

    goto LABEL_499;
  }

LABEL_311:
  if (*(a1 + 376) == 1)
  {
    if (*(a1 + 352))
    {
      if (*(a1 + 377) == 1)
      {
        sub_19B94E1C8(a1, a3, v392);
        if (*a1 == 1)
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v258 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0;
            _os_log_impl(&dword_19B873000, v258, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Open loop propagation for HEAD performed.", __p, 2u);
          }

          v259 = sub_19B87DD40();
          if (*(v259 + 160) > 1 || *(v259 + 164) > 1 || *(v259 + 168) > 1 || *(v259 + 152))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            LOWORD(v412[0]) = 0;
            v260 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v260);
            if (v260 != __p)
            {
              free(v260);
            }
          }
        }
      }
    }
  }

  [v392 sortUsingComparator:&unk_1F0E6D590];
  if (*a1 == 1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v261 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v261, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] reconstructedLocation array elements are now in ascending temporal order.", __p, 2u);
    }

    v262 = sub_19B87DD40();
    if (*(v262 + 160) > 1 || *(v262 + 164) > 1 || *(v262 + 168) > 1 || *(v262 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      LOWORD(v412[0]) = 0;
      v263 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v263);
      if (v263 != __p)
      {
        free(v263);
      }
    }
  }

  v264 = *(a1 + 328);
  [objc_msgSend(objc_msgSend(a3 objectAtIndex:{v264), "cfAbsTimestamp"), "timeIntervalSinceReferenceDate"}];
  if ((*(a1 + 232) & 1) == 0)
  {
    if (*a1 != 1)
    {
      goto LABEL_513;
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v386 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v386, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Last consumed measurement is still not initialized even after propagation loop.", __p, 2u);
    }

    v387 = sub_19B87DD40();
    if ((*(v387 + 160) & 0x80000000) != 0 && (*(v387 + 164) & 0x80000000) != 0 && (*(v387 + 168) & 0x80000000) != 0 && !*(v387 + 152))
    {
      goto LABEL_513;
    }

    bzero(__p, 0x65CuLL);
    if (qword_1EAFE4758 == -1)
    {
      goto LABEL_510;
    }

    goto LABEL_556;
  }

  if (v265 > *(a1 + 176) && v264 < v391)
  {
    sub_19B94E7A8(a1, a3, v392);
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v266 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v266, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Open loop propagation for TAIL performed.", __p, 2u);
      }

      v267 = sub_19B87DD40();
      if (*(v267 + 160) > 1 || *(v267 + 164) > 1 || *(v267 + 168) > 1 || *(v267 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v412[0]) = 0;
        v268 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v268);
        if (v268 != __p)
        {
          free(v268);
        }
      }
    }
  }

  if (*a1 == 1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v269 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v269, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Returned true. Pedestrian trajectory smoothing performed successfully.", __p, 2u);
    }

    v270 = sub_19B87DD40();
    if (*(v270 + 160) > 1 || *(v270 + 164) > 1 || *(v270 + 168) > 1 || *(v270 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      LOWORD(v412[0]) = 0;
      v271 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v271);
      if (v271 != __p)
      {
        free(v271);
      }
    }
  }

  v10 = 1;
LABEL_514:
  sub_19B94FA90(v400);
LABEL_515:
  v384 = *MEMORY[0x1E69E9840];
  return v10;
}