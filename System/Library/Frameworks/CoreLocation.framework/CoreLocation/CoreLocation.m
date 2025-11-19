os_log_t sub_19B8747F8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B874828()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B874858()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B874888()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B8748B8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B8748E8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B874918()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B874948()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B874978()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B8749A8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B8749D8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B874A08()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B874A38()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B874A68()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

void *sub_19B874A98(void *a1, CFDictionaryRef theDict)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E6BFF8;
  a1[1] = 0;
  v3 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  a1[1] = MutableCopy;
  if (!MutableCopy)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v5 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair(CFDictionaryRef)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

void *sub_19B874C9C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_19B890AD4();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_19B874D40(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 240);
  pthread_mutex_lock(v4);
  if (!*(a1 + 225))
  {
    v5 = *(a1 + 328);
    v6 = v5[2];
    if (v6)
    {
      v7 = *(*v5 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = mach_continuous_time() - v7;
    if (v6)
    {
      v9 = v8 > 0x37E11D600;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      v10 = *(a1 + 328);
      goto LABEL_27;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "Location callback block not executed in a timely manner!", buf, 2u);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLClientInvokeCallback(CLClientRef, CLClientEvent, id)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    if (*(*(a1 + 328) + 16) < 0xBuLL)
    {
LABEL_27:
      operator new();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 328) + 16);
      *buf = 68289538;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = a2;
      v24 = 2050;
      v25 = v15;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Discarding message for event because of too many unprocessed messages, event:%{public}d, count:%{public}lu}", buf, 0x22u);
    }
  }

  result = pthread_mutex_unlock(v4);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8750CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void sub_19B8750F8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_19B87518C(void *a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  pthread_mutex_lock(v4);
  if (*(*(a1[4] + 8) + 24) != 1)
  {
    goto LABEL_62;
  }

  v5 = a1[6];
  if (_CFIsDeallocating())
  {
    goto LABEL_62;
  }

  CFRetain(v5);
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v7, v11);
  sub_19B874A98(&v38, DictionaryOfClasses);
  v13 = 0;
  while (1)
  {
    v14 = CLConnectionMessage::name(v7);
    v15 = strlen(off_1E753CE18[v13]);
    v16 = *(v14 + 23);
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (v15 == v14[1])
    {
      if (v15 == -1)
      {
        sub_19B890B7C();
      }

      v14 = *v14;
      goto LABEL_12;
    }

LABEL_13:
    if (++v13 == 26)
    {
      v17 = CLConnectionMessage::name(v7);
      if (*(v17 + 23) < 0)
      {
        sub_19B874C9C(&__dst, *v17, *(v17 + 8));
      }

      else
      {
        v18 = *v17;
        v37 = *(v17 + 16);
        __dst = v18;
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v21 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        p_dst = &__dst;
        if (v37 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        *&buf[4] = p_dst;
        _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_FAULT, "Got unhandled message %s from daemon", buf, 0xCu);
      }

      v23 = sub_19B87DD40();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
        }

        v24 = &__dst;
        if (v37 < 0)
        {
          v24 = __dst;
        }

        v39 = 136315138;
        v40 = v24;
        v25 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void _CLClientHandleMessage(CLClientRef, std::shared_ptr<CLConnectionMessage>)", "CoreLocation: %s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      if (SHIBYTE(v37) < 0)
      {
        v26 = __dst;
LABEL_58:
        operator delete(v26);
        goto LABEL_59;
      }

      goto LABEL_59;
    }
  }

  if (v15 != v16)
  {
    goto LABEL_13;
  }

LABEL_12:
  if (memcmp(v14, off_1E753CE18[v13], v15))
  {
    goto LABEL_13;
  }

  v19 = CLConnectionMessage::name(v7);
  if (*(v19 + 23) < 0)
  {
    sub_19B874C9C(buf, *v19, *(v19 + 8));
  }

  else
  {
    v20 = *v19;
    v42 = *(v19 + 16);
    *buf = v20;
  }

  v27 = CLConnectionMessage::name(v7);
  if (*(v27 + 23) < 0 && *(v27 + 8) == 28 && (**v27 == 0x656E6E6F434C436BLL ? (v28 = *(*v27 + 8) == 0x73654D6E6F697463) : (v28 = 0), v28 ? (v29 = *(*v27 + 16) == 0x61636F4C65676173) : (v29 = 0), v29 ? (v30 = *(*v27 + 24) == 1852795252) : (v30 = 0), v30) || (v31 = CLConnectionMessage::name(v7), *(v31 + 23) < 0) && *(v31 + 8) == 39 && !memcmp(*v31, "kCLConnectionMessageCompensatedLocation", 0x27uLL) || (v32 = CLConnectionMessage::name(v7), *(v32 + 23) < 0) && *(v32 + 8) == 45 && !memcmp(*v32, "kCLConnectionMessageSignificantLocationChange", 0x2DuLL))
  {
    v33 = CLConnectionMessage::name(v7);
    sub_19B87D694(&v38, "kCLClientEventKey", v33);
  }

  sub_19B874D40(v5, dword_19BA89190[v13]);
  if (SHIBYTE(v42) < 0)
  {
    v26 = *buf;
    goto LABEL_58;
  }

LABEL_59:
  sub_19B8756F0(&v38);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  CFRelease(v5);
LABEL_62:
  result = pthread_mutex_unlock(v4);
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B87566C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_19B8756F0(&a22);
  if (v31)
  {
    sub_19B8750F8(v31);
  }

  sub_19B888D7C(&a12);
  _Unwind_Resume(a1);
}

void *sub_19B8756F0(void *a1)
{
  *a1 = &unk_1F0E6BFF8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_19B875740(uint64_t a1, unint64_t a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1ED519110 != -1)
  {
    dispatch_once(&qword_1ED519110, &unk_1F0E6B570);
  }

  if (!(qword_1ED519108 + Current * 100.0))
  {
    atomic_fetch_or_explicit(&qword_1ED519140, a2, memory_order_relaxed);
  }

  add_explicit = atomic_fetch_add_explicit(&qword_1ED519138, 1uLL, memory_order_relaxed);
  if (add_explicit >= 0x5DC1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B890914;
    block[3] = &unk_1E753CEF0;
    block[4] = add_explicit;
    if (qword_1ED519118 != -1)
    {
      dispatch_once(&qword_1ED519118, block);
    }
  }

  if (Current > *&qword_1ED519120 + 240.0)
  {
    qword_1ED519120 = *&Current;
    if (a1)
    {
      v6 = *(a1 + 240);
      block[6] = v6;
      pthread_mutex_lock(v6);
      v11 = 257;
      __swp(v7, &qword_1ED519138);
      __swp(&qword_1ED519138, &qword_1ED519140);
      if (v7 >= 2)
      {
        v13[0] = @"kCLConnectionMessageTotalFunctionCallsKey";
        v14[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
        v13[1] = @"kCLConnectionMessageFunctionBitmapKey";
        v14[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:&qword_1ED519138];
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
        sub_19B87B468(v12);
        sub_19B87D0EC(v12, "kCLConnectionMessageTotalFunctionCallsKey", [v8 objectForKeyedSubscript:@"kCLConnectionMessageTotalFunctionCallsKey"]);
        sub_19B87D0EC(v12, "kCLConnectionMessageFunctionBitmapKey", [v8 objectForKeyedSubscript:@"kCLConnectionMessageFunctionBitmapKey"]);
        sub_19B87B6CC(a1, "kCLConnectionMessageCollectMetricsForFunction", v12);
        sub_19B8756F0(v12);
      }

      pthread_mutex_unlock(v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B8759AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_19B890AB0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_19B8759E8(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B890AD4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_19B875AA0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 40) + 240);
  pthread_mutex_lock(v3);
  v4 = *(a1 + 40);
  v5 = *(v4 + 248);
  v6 = *(v4 + 264);
  v7 = *(v4 + 280);
  v8 = *(v4 + 225);
  v9 = *(v4 + 328);
  v10 = *v9;
  v12 = **v9;
  v11 = (*v9)[1];
  *(v12 + 8) = v11;
  *v11 = v12;
  v9[2] = (v9[2] - 1);
  operator delete(v10);
  if (!v8)
  {
    if (v6)
    {
      v13 = *(*(a1 + 40) + 272);
      if (v13)
      {
        v13(v6);
      }
    }
  }

  pthread_mutex_unlock(v3);
  if (!v8)
  {
    if (v5)
    {
      v5(*(a1 + 40), *(a1 + 48), v6, *(a1 + 32));
    }

    if (v6 && v7)
    {
      v7(v6);
    }
  }

  CFRelease(*(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

void sub_19B875BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B875BBC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 manager];

  return MEMORY[0x1EEE66B58](v3, sel_onClientEvent_supportInfo_);
}

uint64_t sub_19B875C24(uint64_t a1, const __CFString *a2, uint64_t *a3, int a4)
{
  v39 = *MEMORY[0x1E69E9840];
  cf = 0;
  result = (*(*a1 + 912))(a1, a2, &cf);
  if (!result)
  {
    goto LABEL_47;
  }

  *a3 = 0;
  v8 = CFGetTypeID(cf);
  if (v8 == CFArrayGetTypeID())
  {
    v9 = a4 & ~(a4 >> 31);
    if (CFArrayGetCount(cf) > v9)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v9);
LABEL_46:
      *a3 = ValueAtIndex;
      CFRetain(ValueAtIndex);
      CFRelease(cf);
      result = 1;
      goto LABEL_47;
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v18 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v19 = SBYTE3(v34);
      v20 = *__p;
      Count = CFArrayGetCount(cf);
      v22 = __p;
      if (v19 < 0)
      {
        v22 = v20;
      }

      *buf = 136446722;
      *v36 = v22;
      *&v36[8] = 1026;
      *&v36[10] = v9;
      v37 = 2050;
      v38 = Count;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "specified index is out of range for key %{public}s (%{public}d of %{public}ld)", buf, 0x1Cu);
      if (SBYTE3(v34) < 0)
      {
        operator delete(*__p);
      }
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    sub_19B929670(a2, v29);
    v24 = v30;
    v25 = v29[0];
    v26 = CFArrayGetCount(cf);
    v27 = v29;
    if (v24 < 0)
    {
      v27 = v25;
    }

    *__p = 136446722;
    *&__p[4] = v27;
    *&__p[12] = 1026;
    *&__p[14] = v9;
    v33 = 2050;
    v34 = v26;
    v17 = _os_log_send_and_compose_impl();
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  else
  {
    if (a4 < 1)
    {
      ValueAtIndex = cf;
      goto LABEL_46;
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v11 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v12 = CFGetTypeID(cf);
      sub_19B929670(a2, __p);
      v13 = (v34 & 0x80000000) == 0 ? __p : *__p;
      *buf = 67240706;
      *v36 = a4;
      *&v36[4] = 2050;
      *&v36[6] = v12;
      v37 = 2082;
      v38 = v13;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "specified index %{public}d not applicable to type %{public}lu for key %{public}s", buf, 0x1Cu);
      if (SBYTE3(v34) < 0)
      {
        operator delete(*__p);
      }
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v15 = CFGetTypeID(cf);
    sub_19B929670(a2, v29);
    if (v30 >= 0)
    {
      v16 = v29;
    }

    else
    {
      v16 = v29[0];
    }

    *__p = 67240706;
    *&__p[4] = a4;
    *&__p[8] = 2050;
    *&__p[10] = v15;
    v33 = 2082;
    v34 = v16;
    v17 = _os_log_send_and_compose_impl();
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::copyInternal(CFStringRef, CFTypeRef &, int) const", "CoreLocation: %s\n", v17);
  if (v17 != buf)
  {
    free(v17);
  }

LABEL_43:
  CFRelease(cf);
  result = *a3;
  if (*a3)
  {
    CFRelease(result);
    result = 0;
  }

LABEL_47:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B876140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B876178(uint64_t a1, const char *a2, _DWORD *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B8761EC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B8761EC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B8765C0(cf, a3);
    if ((v6 & 1) == 0)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v7 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL sub_19B876498(uint64_t a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  v5 = Value;
  *a3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v5 != 0;
}

uint64_t CLClientGetAuthorizationStatusAndCorrectiveCompensation(CFDictionaryRef theDict, _DWORD *a2, _BYTE *a3, _BYTE *a4)
{
  sub_19B874A98(v11, theDict);
  v10 = 0;
  v9 = 0;
  if (sub_19B876178(v11, "kCLConnectionMessageStatusKey", &v10) && sub_19B8767CC(v11, "kCLConnectionMessageCompensationKey", &v9) && sub_19B8767CC(v11, "kCLConnectionMessageAuthorizedForWidgetUpdatesKey", &v9 + 1))
  {
    *a2 = v10;
    *a3 = v9;
    *a4 = HIBYTE(v9);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_19B8756F0(v11);
  return v7;
}

void sub_19B8765AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8765C0(const void *a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt32Type, a2))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v5 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v6 = sub_19B87DD40();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v7 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, int &)", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  buf[0] = 0;
  v8 = CFGetTypeID(a1);
  if (v8 != CFBooleanGetTypeID())
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  result = sub_19B876AEC(a1, buf);
  if (result)
  {
    *a2 = buf[0];
LABEL_17:
    result = 1;
  }

LABEL_20:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8767CC(uint64_t a1, const char *a2, BOOL *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B876840(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B876840(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B876AEC(cf, a3);
    if ((v6 & 1) == 0)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v7 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, BOOL &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B876AEC(const void *a1, BOOL *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID() && v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  *a2 = CFBooleanGetValue(a1) != 0;
  return 1;
}

uint64_t sub_19B876B98()
{
  result = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  qword_1ED519108 = result;
  return result;
}

os_log_t sub_19B876BC8()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

os_log_t sub_19B876BF8()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

os_log_t sub_19B876C28()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

os_log_t sub_19B876C58()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

uint64_t CLClientCreateWithBundleIdentifierAndPathWithWebsiteOnSilo()
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED5190F0 != -1)
  {
    dispatch_once_f(&qword_1ED5190F0, 0, sub_19B87AAF4);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    bzero((Instance + 16), 0x180uLL);
    operator new();
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2050;
    v8 = 0;
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client allocated, client:%{public}p}", buf, 0x1Cu);
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B8779B4()
{
  if (qword_1ED5191F8 != -1)
  {
    dispatch_once(&qword_1ED5191F8, &unk_1F0E6CE58);
  }

  return byte_1ED51917A;
}

void sub_19B8779FC()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1))
    {
      v3 = 4;
    }

    else
    {
      v3 = sub_19B877B30();
    }

    dword_1ED519180 = v3;

    CFRelease(v1);
  }

  else
  {
    dword_1ED519180 = sub_19B877B30();
  }
}

void sub_19B877A90()
{
  if (sub_19B8779B4())
  {
    qword_1ED519130 = dispatch_workloop_create_inactive("ClientsCohortWorkLoop");
    dispatch_set_qos_class_fallback();
    v0 = qword_1ED519130;

    dispatch_activate(v0);
  }
}

uint64_t sub_19B877AF0()
{
  result = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  byte_1ED51917A = result == 0;
  return result;
}

uint64_t sub_19B877B30()
{
  v19 = *MEMORY[0x1E69E9840];
  if (MGIsDeviceOfType())
  {
    result = 2;
  }

  else
  {
    v17 = 1244490093;
    *buf = xmmword_19BA8A970;
    if (MGIsDeviceOfType() & 1) != 0 || (v12 = 1377801277, *v11 = xmmword_19BA8A984, (MGIsDeviceOfType()))
    {
      result = 5;
    }

    else if (MGIsDeviceOfType())
    {
      result = 19;
    }

    else if (MGIsDeviceOfType() & 1) != 0 || (v17 = 1839812531, *buf = xmmword_19BA8A998, (MGIsDeviceOfType()) || (MGIsDeviceOfType())
    {
      result = 20;
    }

    else if (MGIsDeviceOfType())
    {
      result = 52;
    }

    else
    {
      v17 = -435113336;
      *buf = xmmword_19BA8A9AC;
      if (MGIsDeviceOfType())
      {
        result = 53;
      }

      else
      {
        v17 = -1997581659;
        *buf = xmmword_19BA8A9C0;
        if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
        {
          result = 158;
        }

        else
        {
          v17 = -1441055153;
          *buf = xmmword_19BA8A9D4;
          if (MGIsDeviceOfType())
          {
            result = 159;
          }

          else if (MGIsDeviceOfType())
          {
            result = 160;
          }

          else if (MGIsDeviceOfType())
          {
            result = 3;
          }

          else if (MGIsDeviceOfType())
          {
            result = 6;
          }

          else
          {
            v17 = 1602014129;
            *buf = xmmword_19BA8A9E8;
            if (MGIsDeviceOfType())
            {
              result = 7;
            }

            else
            {
              v17 = -810116762;
              *buf = xmmword_19BA8A9FC;
              if (MGIsDeviceOfType())
              {
                result = 8;
              }

              else
              {
                v17 = -1195351767;
                *buf = xmmword_19BA8AA10;
                if (MGIsDeviceOfType())
                {
                  result = 9;
                }

                else if (MGIsDeviceOfType())
                {
                  result = 10;
                }

                else if (MGIsDeviceOfType())
                {
                  result = 11;
                }

                else
                {
                  v17 = 1789837692;
                  *buf = xmmword_19BA8AA24;
                  if (MGIsDeviceOfType())
                  {
                    result = 13;
                  }

                  else
                  {
                    v17 = 48355600;
                    *buf = xmmword_19BA8AA38;
                    if (MGIsDeviceOfType())
                    {
                      result = 14;
                    }

                    else
                    {
                      v17 = -1239654590;
                      *buf = xmmword_19BA8AA4C;
                      if (MGIsDeviceOfType())
                      {
                        result = 15;
                      }

                      else
                      {
                        v17 = -679691073;
                        *buf = xmmword_19BA8AA60;
                        if (MGIsDeviceOfType())
                        {
                          result = 16;
                        }

                        else
                        {
                          v17 = -1579092758;
                          *buf = xmmword_19BA8AA74;
                          if (MGIsDeviceOfType())
                          {
                            result = 17;
                          }

                          else
                          {
                            v17 = 1430379884;
                            *buf = xmmword_19BA8AA88;
                            if (MGIsDeviceOfType())
                            {
                              result = 18;
                            }

                            else if (MGIsDeviceOfType())
                            {
                              result = 21;
                            }

                            else
                            {
                              v17 = -798153473;
                              *buf = xmmword_19BA8AA9C;
                              if (MGIsDeviceOfType())
                              {
                                result = 22;
                              }

                              else
                              {
                                v17 = -776721724;
                                *buf = xmmword_19BA8AAB0;
                                if (MGIsDeviceOfType())
                                {
                                  result = 23;
                                }

                                else
                                {
                                  v17 = -1403227947;
                                  *buf = xmmword_19BA8AAC4;
                                  if (MGIsDeviceOfType())
                                  {
                                    result = 24;
                                  }

                                  else
                                  {
                                    v17 = 729118884;
                                    *buf = xmmword_19BA8AAD8;
                                    if (MGIsDeviceOfType())
                                    {
                                      result = 25;
                                    }

                                    else
                                    {
                                      v17 = 1046806126;
                                      *buf = xmmword_19BA8AAEC;
                                      if (MGIsDeviceOfType() & 1) != 0 || (v12 = -188760945, *v11 = xmmword_19BA8AB00, (MGIsDeviceOfType()))
                                      {
                                        result = 26;
                                      }

                                      else
                                      {
                                        v17 = -489993439;
                                        *buf = xmmword_19BA8AB14;
                                        if (MGIsDeviceOfType())
                                        {
                                          result = 27;
                                        }

                                        else
                                        {
                                          v17 = 886875686;
                                          *buf = xmmword_19BA8AB28;
                                          if (MGIsDeviceOfType())
                                          {
                                            result = 28;
                                          }

                                          else
                                          {
                                            v17 = -1639077591;
                                            *buf = xmmword_19BA8AB3C;
                                            if (MGIsDeviceOfType())
                                            {
                                              result = 29;
                                            }

                                            else
                                            {
                                              v17 = 338555555;
                                              *buf = xmmword_19BA8AB50;
                                              if (MGIsDeviceOneOfType())
                                              {
                                                result = 30;
                                              }

                                              else
                                              {
                                                v17 = 1032708406;
                                                *buf = xmmword_19BA8AB64;
                                                if (MGIsDeviceOfType())
                                                {
                                                  result = 31;
                                                }

                                                else
                                                {
                                                  v17 = 729903963;
                                                  *buf = xmmword_19BA8AB78;
                                                  if (MGIsDeviceOfType())
                                                  {
                                                    result = 32;
                                                  }

                                                  else
                                                  {
                                                    v17 = 1278131292;
                                                    *buf = xmmword_19BA8AB8C;
                                                    if (MGIsDeviceOfType())
                                                    {
                                                      result = 33;
                                                    }

                                                    else
                                                    {
                                                      v17 = -1841712216;
                                                      *buf = xmmword_19BA8ABA0;
                                                      if (MGIsDeviceOfType())
                                                      {
                                                        result = 34;
                                                      }

                                                      else
                                                      {
                                                        v17 = 1275676051;
                                                        *buf = xmmword_19BA8ABB4;
                                                        if (MGIsDeviceOfType())
                                                        {
                                                          result = 35;
                                                        }

                                                        else
                                                        {
                                                          v17 = 1908474541;
                                                          *buf = xmmword_19BA8ABC8;
                                                          if (MGIsDeviceOfType())
                                                          {
                                                            result = 36;
                                                          }

                                                          else
                                                          {
                                                            v17 = -1022451852;
                                                            *buf = xmmword_19BA8ABDC;
                                                            if (MGIsDeviceOfType())
                                                            {
                                                              result = 62;
                                                            }

                                                            else
                                                            {
                                                              v17 = 1729782187;
                                                              *buf = xmmword_19BA8ABF0;
                                                              if (MGIsDeviceOfType())
                                                              {
                                                                result = 63;
                                                              }

                                                              else if (MGIsDeviceOfType())
                                                              {
                                                                result = 37;
                                                              }

                                                              else
                                                              {
                                                                v17 = 368885834;
                                                                *buf = xmmword_19BA8AC04;
                                                                if (MGIsDeviceOfType())
                                                                {
                                                                  result = 38;
                                                                }

                                                                else
                                                                {
                                                                  v17 = -414334491;
                                                                  *buf = xmmword_19BA8AC18;
                                                                  if (MGIsDeviceOfType())
                                                                  {
                                                                    result = 39;
                                                                  }

                                                                  else if (MGIsDeviceOfType())
                                                                  {
                                                                    result = 40;
                                                                  }

                                                                  else
                                                                  {
                                                                    v17 = -526227167;
                                                                    *buf = xmmword_19BA8AC2C;
                                                                    if (MGIsDeviceOfType())
                                                                    {
                                                                      result = 41;
                                                                    }

                                                                    else
                                                                    {
                                                                      v17 = -1509831889;
                                                                      *buf = xmmword_19BA8AC40;
                                                                      if (MGIsDeviceOfType())
                                                                      {
                                                                        result = 42;
                                                                      }

                                                                      else
                                                                      {
                                                                        v17 = 1960366092;
                                                                        *buf = xmmword_19BA8AC54;
                                                                        if (MGIsDeviceOfType())
                                                                        {
                                                                          result = 43;
                                                                        }

                                                                        else
                                                                        {
                                                                          v17 = -2114570942;
                                                                          *buf = xmmword_19BA8AC68;
                                                                          if (MGIsDeviceOfType())
                                                                          {
                                                                            result = 148;
                                                                          }

                                                                          else
                                                                          {
                                                                            v17 = -1527788847;
                                                                            *buf = xmmword_19BA8AC7C;
                                                                            if (MGIsDeviceOfType())
                                                                            {
                                                                              result = 44;
                                                                            }

                                                                            else
                                                                            {
                                                                              v17 = 1532898719;
                                                                              *buf = xmmword_19BA8AC90;
                                                                              if (MGIsDeviceOfType())
                                                                              {
                                                                                result = 45;
                                                                              }

                                                                              else
                                                                              {
                                                                                v17 = 996646949;
                                                                                *buf = xmmword_19BA8ACA4;
                                                                                if (MGIsDeviceOfType())
                                                                                {
                                                                                  result = 46;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v17 = -563086000;
                                                                                  *buf = xmmword_19BA8ACB8;
                                                                                  if (MGIsDeviceOfType())
                                                                                  {
                                                                                    result = 47;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v17 = 659506830;
                                                                                    *buf = xmmword_19BA8ACCC;
                                                                                    if (MGIsDeviceOfType())
                                                                                    {
                                                                                      result = 48;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v17 = 213746202;
                                                                                      *buf = xmmword_19BA8ACE0;
                                                                                      if (MGIsDeviceOfType())
                                                                                      {
                                                                                        result = 49;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v17 = 289690957;
                                                                                        *buf = xmmword_19BA8ACF4;
                                                                                        if (MGIsDeviceOfType())
                                                                                        {
                                                                                          result = 50;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v17 = 586720268;
                                                                                          *buf = xmmword_19BA8AD08;
                                                                                          if (MGIsDeviceOfType())
                                                                                          {
                                                                                            result = 51;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v17 = -350584140;
                                                                                            *buf = xmmword_19BA8AD1C;
                                                                                            if (MGIsDeviceOfType())
                                                                                            {
                                                                                              result = 54;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v17 = 368778837;
                                                                                              *buf = xmmword_19BA8AD30;
                                                                                              if (MGIsDeviceOfType())
                                                                                              {
                                                                                                result = 55;
                                                                                              }

                                                                                              else if (MGIsDeviceOfType())
                                                                                              {
                                                                                                result = 56;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v17 = -1418383976;
                                                                                                *buf = xmmword_19BA8AD44;
                                                                                                if (MGIsDeviceOfType())
                                                                                                {
                                                                                                  result = 57;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v17 = -1213485500;
                                                                                                  *buf = xmmword_19BA8AD58;
                                                                                                  if (MGIsDeviceOfType())
                                                                                                  {
                                                                                                    result = 58;
                                                                                                  }

                                                                                                  else if (MGIsDeviceOfType())
                                                                                                  {
                                                                                                    result = 59;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v17 = 1425254930;
                                                                                                    *buf = xmmword_19BA8AD6C;
                                                                                                    if (MGIsDeviceOfType())
                                                                                                    {
                                                                                                      result = 60;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v17 = 1899561076;
                                                                                                      *buf = xmmword_19BA8AD80;
                                                                                                      if (MGIsDeviceOfType())
                                                                                                      {
                                                                                                        result = 61;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v17 = -199226823;
                                                                                                        *buf = xmmword_19BA8AD94;
                                                                                                        if (MGIsDeviceOfType() & 1) != 0 || (v12 = 1412427398, *v11 = xmmword_19BA8ADA8, (MGIsDeviceOfType()))
                                                                                                        {
                                                                                                          result = 64;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v17 = -1283070668;
                                                                                                          *buf = xmmword_19BA8ADBC;
                                                                                                          if (MGIsDeviceOfType() & 1) != 0 || (v12 = 160260070, *v11 = xmmword_19BA8ADD0, (MGIsDeviceOfType()))
                                                                                                          {
                                                                                                            result = 65;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v17 = 1711910369;
                                                                                                            *buf = xmmword_19BA8ADE4;
                                                                                                            if (MGIsDeviceOfType())
                                                                                                            {
                                                                                                              result = 66;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v17 = -1282800328;
                                                                                                              *buf = xmmword_19BA8ADF8;
                                                                                                              if (MGIsDeviceOfType())
                                                                                                              {
                                                                                                                result = 67;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v17 = 897736383;
                                                                                                                *buf = xmmword_19BA8AE0C;
                                                                                                                if (MGIsDeviceOfType())
                                                                                                                {
                                                                                                                  result = 68;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v17 = -453987047;
                                                                                                                  *buf = xmmword_19BA8AE20;
                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                  {
                                                                                                                    result = 69;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v17 = 450980336;
                                                                                                                    *buf = xmmword_19BA8AE34;
                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                    {
                                                                                                                      result = 70;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v17 = 414393924;
                                                                                                                      *buf = xmmword_19BA8AE48;
                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                      {
                                                                                                                        result = 71;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v17 = -996295886;
                                                                                                                        *buf = xmmword_19BA8AE5C;
                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                        {
                                                                                                                          result = 72;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v17 = -337121064;
                                                                                                                          *buf = xmmword_19BA8AE70;
                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                          {
                                                                                                                            result = 73;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v17 = -2092955395;
                                                                                                                            *buf = xmmword_19BA8AE84;
                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                            {
                                                                                                                              result = 74;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v17 = 674998600;
                                                                                                                              *buf = xmmword_19BA8AE98;
                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                              {
                                                                                                                                result = 75;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v17 = 317289457;
                                                                                                                                *buf = xmmword_19BA8AEAC;
                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                {
                                                                                                                                  result = 76;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v17 = 401945557;
                                                                                                                                  *buf = xmmword_19BA8AEC0;
                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                  {
                                                                                                                                    result = 77;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v17 = -232427879;
                                                                                                                                    *buf = xmmword_19BA8AED4;
                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                    {
                                                                                                                                      result = 78;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v17 = -427474227;
                                                                                                                                      *buf = xmmword_19BA8AEE8;
                                                                                                                                      if (MGIsDeviceOfType() & 1) != 0 || (v12 = 1477534141, *v11 = xmmword_19BA8AEFC, (MGIsDeviceOfType()))
                                                                                                                                      {
                                                                                                                                        result = 79;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v17 = -1843102369;
                                                                                                                                        *buf = xmmword_19BA8AF10;
                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                        {
                                                                                                                                          result = 80;
                                                                                                                                        }

                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                        {
                                                                                                                                          result = 81;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v17 = 470738981;
                                                                                                                                          *buf = xmmword_19BA8AF24;
                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                          {
                                                                                                                                            result = 82;
                                                                                                                                          }

                                                                                                                                          else if (MGIsDeviceOfType())
                                                                                                                                          {
                                                                                                                                            result = 83;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v17 = 710807826;
                                                                                                                                            *buf = xmmword_19BA8AF38;
                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                            {
                                                                                                                                              result = 84;
                                                                                                                                            }

                                                                                                                                            else if (MGIsDeviceOfType())
                                                                                                                                            {
                                                                                                                                              result = 85;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v17 = 1860682089;
                                                                                                                                              *buf = xmmword_19BA8AF4C;
                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                              {
                                                                                                                                                result = 86;
                                                                                                                                              }

                                                                                                                                              else if (MGIsDeviceOfType())
                                                                                                                                              {
                                                                                                                                                result = 87;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v17 = -2085056298;
                                                                                                                                                *buf = xmmword_19BA8AF60;
                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                {
                                                                                                                                                  result = 88;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v17 = 2146530832;
                                                                                                                                                  *buf = xmmword_19BA8AF74;
                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                  {
                                                                                                                                                    result = 89;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v17 = -1742178852;
                                                                                                                                                    *buf = xmmword_19BA8AF88;
                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                    {
                                                                                                                                                      result = 90;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v17 = 617174804;
                                                                                                                                                      *buf = xmmword_19BA8AF9C;
                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                      {
                                                                                                                                                        result = 91;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v17 = 1330813729;
                                                                                                                                                        *buf = xmmword_19BA8AFB0;
                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                        {
                                                                                                                                                          result = 92;
                                                                                                                                                        }

                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                        {
                                                                                                                                                          result = 93;
                                                                                                                                                        }

                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                        {
                                                                                                                                                          result = 94;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v17 = 152704997;
                                                                                                                                                          *buf = xmmword_19BA8AFC4;
                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                          {
                                                                                                                                                            result = 95;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v17 = -338255497;
                                                                                                                                                            *buf = xmmword_19BA8AFD8;
                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                            {
                                                                                                                                                              result = 96;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v17 = -1040127899;
                                                                                                                                                              *buf = xmmword_19BA8AFEC;
                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                              {
                                                                                                                                                                result = 97;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v17 = 283967174;
                                                                                                                                                                *buf = xmmword_19BA8B000;
                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                {
                                                                                                                                                                  result = 98;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v17 = 1530707451;
                                                                                                                                                                  *buf = xmmword_19BA8B014;
                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                  {
                                                                                                                                                                    result = 99;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v17 = -871113647;
                                                                                                                                                                    *buf = xmmword_19BA8B028;
                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                    {
                                                                                                                                                                      result = 100;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v17 = 483476120;
                                                                                                                                                                      *buf = xmmword_19BA8B03C;
                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                      {
                                                                                                                                                                        result = 101;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v17 = 1472775220;
                                                                                                                                                                        *buf = xmmword_19BA8B050;
                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                        {
                                                                                                                                                                          result = 102;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v17 = 56502976;
                                                                                                                                                                          *buf = xmmword_19BA8B064;
                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                          {
                                                                                                                                                                            result = 103;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v17 = 282158961;
                                                                                                                                                                            *buf = xmmword_19BA8B078;
                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                            {
                                                                                                                                                                              result = 104;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v17 = 1282132887;
                                                                                                                                                                              *buf = xmmword_19BA8B08C;
                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                              {
                                                                                                                                                                                result = 105;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v17 = -961843768;
                                                                                                                                                                                *buf = xmmword_19BA8B0A0;
                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                {
                                                                                                                                                                                  result = 106;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v17 = 1326690998;
                                                                                                                                                                                  *buf = xmmword_19BA8B0B4;
                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                  {
                                                                                                                                                                                    result = 107;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v17 = -441172408;
                                                                                                                                                                                    *buf = xmmword_19BA8B0C8;
                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                    {
                                                                                                                                                                                      result = 108;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v17 = -126099363;
                                                                                                                                                                                      *buf = xmmword_19BA8B0DC;
                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                      {
                                                                                                                                                                                        result = 109;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v17 = 1756484512;
                                                                                                                                                                                        *buf = xmmword_19BA8B0F0;
                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                        {
                                                                                                                                                                                          result = 110;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v17 = 763775061;
                                                                                                                                                                                          *buf = xmmword_19BA8B104;
                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                          {
                                                                                                                                                                                            result = 111;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v17 = -1092155788;
                                                                                                                                                                                            *buf = xmmword_19BA8B118;
                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                            {
                                                                                                                                                                                              result = 112;
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v17 = -557458837;
                                                                                                                                                                                              *buf = xmmword_19BA8B12C;
                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                              {
                                                                                                                                                                                                result = 113;
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v17 = -63049871;
                                                                                                                                                                                                *buf = xmmword_19BA8B140;
                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                {
                                                                                                                                                                                                  result = 114;
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v17 = 1730000236;
                                                                                                                                                                                                  *buf = xmmword_19BA8B154;
                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                  {
                                                                                                                                                                                                    result = 115;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v17 = 406601745;
                                                                                                                                                                                                    *buf = xmmword_19BA8B168;
                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                    {
                                                                                                                                                                                                      result = 116;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v17 = 1530338216;
                                                                                                                                                                                                      *buf = xmmword_19BA8B17C;
                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                      {
                                                                                                                                                                                                        result = 117;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v17 = -1930811061;
                                                                                                                                                                                                        *buf = xmmword_19BA8B190;
                                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                                        {
                                                                                                                                                                                                          result = 118;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v17 = 1654218604;
                                                                                                                                                                                                          *buf = xmmword_19BA8B1A4;
                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                          {
                                                                                                                                                                                                            result = 119;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v17 = -182498503;
                                                                                                                                                                                                            *buf = xmmword_19BA8B1B8;
                                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                                            {
                                                                                                                                                                                                              result = 124;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v17 = -2030489149;
                                                                                                                                                                                                              *buf = xmmword_19BA8B1CC;
                                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                                              {
                                                                                                                                                                                                                result = 120;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v17 = 841005628;
                                                                                                                                                                                                                *buf = xmmword_19BA8B1E0;
                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  result = 121;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v17 = 223445260;
                                                                                                                                                                                                                  *buf = xmmword_19BA8B1F4;
                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    result = 122;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v17 = 1219348060;
                                                                                                                                                                                                                    *buf = xmmword_19BA8B208;
                                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      result = 123;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v17 = -1384522500;
                                                                                                                                                                                                                      *buf = xmmword_19BA8B21C;
                                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        result = 125;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v17 = -782763850;
                                                                                                                                                                                                                        *buf = xmmword_19BA8B230;
                                                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          result = 126;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v17 = 1815762806;
                                                                                                                                                                                                                          *buf = xmmword_19BA8B244;
                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            result = 127;
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v17 = -1897771119;
                                                                                                                                                                                                                            *buf = xmmword_19BA8B258;
                                                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              result = 128;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v17 = -652049476;
                                                                                                                                                                                                                              *buf = xmmword_19BA8B26C;
                                                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                result = 129;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v17 = 373548423;
                                                                                                                                                                                                                                *buf = xmmword_19BA8B280;
                                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  result = 130;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v17 = -1921398171;
                                                                                                                                                                                                                                  *buf = xmmword_19BA8B294;
                                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    result = 131;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v17 = 2140507472;
                                                                                                                                                                                                                                    *buf = xmmword_19BA8B2A8;
                                                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      result = 132;
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v17 = -936391310;
                                                                                                                                                                                                                                      *buf = xmmword_19BA8B2BC;
                                                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        result = 133;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v17 = 2030516999;
                                                                                                                                                                                                                                        *buf = xmmword_19BA8B2D0;
                                                                                                                                                                                                                                        *v11 = xmmword_19BA8B2E4;
                                                                                                                                                                                                                                        v12 = -1276010597;
                                                                                                                                                                                                                                        if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          result = 134;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v17 = -762483149;
                                                                                                                                                                                                                                          *buf = xmmword_19BA8B2F8;
                                                                                                                                                                                                                                          *v11 = xmmword_19BA8B30C;
                                                                                                                                                                                                                                          v12 = -1926937532;
                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            result = 135;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v17 = -1902732724;
                                                                                                                                                                                                                                            *buf = xmmword_19BA8B320;
                                                                                                                                                                                                                                            *v11 = xmmword_19BA8B334;
                                                                                                                                                                                                                                            v12 = -342357580;
                                                                                                                                                                                                                                            if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              result = 136;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v17 = 300442574;
                                                                                                                                                                                                                                              *buf = xmmword_19BA8B348;
                                                                                                                                                                                                                                              *v11 = xmmword_19BA8B35C;
                                                                                                                                                                                                                                              v12 = -1294188889;
                                                                                                                                                                                                                                              if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = 137;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = 138;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                v17 = -61007701;
                                                                                                                                                                                                                                                *buf = xmmword_19BA8B370;
                                                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  result = 139;
                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  result = 140;
                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  v17 = -235416490;
                                                                                                                                                                                                                                                  *buf = xmmword_19BA8B384;
                                                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    result = 141;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v17 = -820493242;
                                                                                                                                                                                                                                                    *buf = xmmword_19BA8B398;
                                                                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      result = 143;
                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v17 = -1157300313;
                                                                                                                                                                                                                                                      *buf = xmmword_19BA8B3AC;
                                                                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        result = 144;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v17 = -2132668294;
                                                                                                                                                                                                                                                        *buf = xmmword_19BA8B3C0;
                                                                                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 145;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 146;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 147;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 149;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 150;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v17 = 1737149739;
                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B3D4;
                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            result = 151;
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v17 = 1577888303;
                                                                                                                                                                                                                                                            *buf = xmmword_19BA8B3E8;
                                                                                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              result = 152;
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v17 = -1918230744;
                                                                                                                                                                                                                                                              *buf = xmmword_19BA8B3FC;
                                                                                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                result = 153;
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v17 = 1126727276;
                                                                                                                                                                                                                                                                *buf = xmmword_19BA8B410;
                                                                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  result = 154;
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v17 = 300130091;
                                                                                                                                                                                                                                                                  *buf = xmmword_19BA8B424;
                                                                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    result = 155;
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v17 = 343814884;
                                                                                                                                                                                                                                                                    *buf = xmmword_19BA8B438;
                                                                                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      result = 156;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v17 = -1675932945;
                                                                                                                                                                                                                                                                      *buf = xmmword_19BA8B44C;
                                                                                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = 157;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = 161;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = 162;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = 166;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        v17 = -1840391155;
                                                                                                                                                                                                                                                                        *buf = xmmword_19BA8B460;
                                                                                                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          result = 167;
                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          v17 = -121925081;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B474;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            goto LABEL_503;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1071957977;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B488;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 168;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 438437663;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B49C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 169;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1575123478;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B4B0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 170;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -382792827;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B4C4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 171;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 123138233;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B4D8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 172;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 681511593;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B4EC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 173;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 169342588;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B500;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 174;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 175;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 713503427;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B514;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 176;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1632750650;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B528;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 177;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1820426635;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B53C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 178;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -937652876;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B550;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 179;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1874287171;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B564;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            goto LABEL_375;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -781324731;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B578;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 181;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1214880059;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B58C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 182;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 426359977;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B5A0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 183;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1354433901;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B5B4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 184;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1021543808;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B5C8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 185;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 186;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 187;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1459208360;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B5DC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 188;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 189;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 431774303;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B5F0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
LABEL_375:
                                                                                                                                                                                                                                                                            result = 180;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 190;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 191;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 163;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 192;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 164;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 165;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 345196535;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B604;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 193;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 440949464;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B618;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 194;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 688565114;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B62C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 195;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -493418906;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B640;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 196;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 197;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -584398440;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B654;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 202;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 203;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -879476163;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B668;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 204;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -695298128;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B67C;
                                                                                                                                                                                                                                                                          *v11 = xmmword_19BA8B690;
                                                                                                                                                                                                                                                                          v12 = 804488105;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 205;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1614584579;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B6A4;
                                                                                                                                                                                                                                                                          *v11 = xmmword_19BA8B6B8;
                                                                                                                                                                                                                                                                          v12 = 324288768;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 206;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 460218192;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B6CC;
                                                                                                                                                                                                                                                                          *v11 = xmmword_19BA8B6E0;
                                                                                                                                                                                                                                                                          v12 = 2144905009;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 207;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 127894440;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B6F4;
                                                                                                                                                                                                                                                                          *v11 = xmmword_19BA8B708;
                                                                                                                                                                                                                                                                          v12 = 1070997468;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 208;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 372777383;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B71C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 209;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -858079590;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B730;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 210;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -212523443;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B744;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 211;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 646100384;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B758;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 212;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -340360463;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B76C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 213;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1605231531;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B780;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 214;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 215;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 216;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -545612308;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B794;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 217;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1178062702;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B7A8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 218;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 958549802;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B7BC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 219;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1377540371;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B7D0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 220;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1047119348;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B7E4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 221;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1346985080;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B7F8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 222;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 223;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 224;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1243071412;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B80C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 225;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 2017356181;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B820;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 226;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 227;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 228;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1231738393;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B834;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 229;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 164967128;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B848;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 230;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 231;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 232;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1431778695;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B85C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 233;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 533419158;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B870;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 234;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1106979518;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B884;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 235;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -609570151;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B898;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 236;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -874769875;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B8AC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 237;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1223847566;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B8C0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 238;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 185580364;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B8D4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 239;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1379821877;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B8E8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 240;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 241;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1878025452;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B8FC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 242;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1725957070;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B910;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 243;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 538967431;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B924;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 244;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 2060712151;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B938;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 245;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 802516499;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B94C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 246;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1919324456;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B960;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 247;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1127969586;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B974;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 248;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1292009573;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B988;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 249;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1656760039;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B99C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 250;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -2071977621;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B9B0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 251;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -543210860;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B9C4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 252;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1597604211;
                                                                                                                                                                                                                                                                          *buf = xmmword_19BA8B9D8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 253;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
LABEL_503:
                                                                                                                                                                                                                                                                            result = 142;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (qword_1ED519190 != -1)
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (sub_19B93B274())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 1;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 254;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            v17 = -12497897;
                                                                                                                                                                                                                                                                            *buf = xmmword_19BA8B9EC;
                                                                                                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              result = 255;
                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              v17 = -518121279;
                                                                                                                                                                                                                                                                              *buf = xmmword_19BA8BA00;
                                                                                                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                result = 256;
                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                v17 = -773054213;
                                                                                                                                                                                                                                                                                *buf = xmmword_19BA8BA14;
                                                                                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  result = 257;
                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  v17 = -1204420428;
                                                                                                                                                                                                                                                                                  *buf = xmmword_19BA8BA28;
                                                                                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    result = 258;
                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    if ((MGIsDeviceOfType() & 1) == 0)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      v2 = MGCopyAnswer();
                                                                                                                                                                                                                                                                                      if (v2)
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        if (qword_1EAFE4738 != -1)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v3 = qword_1EAFE4740;
                                                                                                                                                                                                                                                                                        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          *buf = 138477827;
                                                                                                                                                                                                                                                                                          *&buf[4] = v2;
                                                                                                                                                                                                                                                                                          _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "unknown HW model %{private}@; file radar to CoreMotion Factory | 1.0", buf, 0xCu);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v4 = sub_19B87DD40();
                                                                                                                                                                                                                                                                                        if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          bzero(buf, 0x65CuLL);
                                                                                                                                                                                                                                                                                          if (qword_1EAFE4738 != -1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                          *v11 = 138477827;
                                                                                                                                                                                                                                                                                          *&v11[4] = v2;
                                                                                                                                                                                                                                                                                          v8 = _os_log_send_and_compose_impl();
                                                                                                                                                                                                                                                                                          sub_19B885924("Generic", 1, 0, 0, "static CLPlatformInfo::Hardware CLPlatformInfo::queryEmbeddedSystemHardware()", "CoreLocation: %s\n", v8);
                                                                                                                                                                                                                                                                                          if (v8 != buf)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            free(v8);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        CFRelease(v2);
                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        if (qword_1EAFE4738 != -1)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v5 = qword_1EAFE4740;
                                                                                                                                                                                                                                                                                        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          sub_19B929670(@"HWModelStr", buf);
                                                                                                                                                                                                                                                                                          v6 = v18 >= 0 ? buf : *buf;
                                                                                                                                                                                                                                                                                          *v11 = 136380675;
                                                                                                                                                                                                                                                                                          *&v11[4] = v6;
                                                                                                                                                                                                                                                                                          _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "unknown HW model %{private}s; file radar to CoreMotion Factory | 1.0", v11, 0xCu);
                                                                                                                                                                                                                                                                                          if (v18 < 0)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            operator delete(*buf);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v7 = sub_19B87DD40();
                                                                                                                                                                                                                                                                                        if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          result = 0;
                                                                                                                                                                                                                                                                                          goto LABEL_6;
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        bzero(buf, 0x65CuLL);
                                                                                                                                                                                                                                                                                        if (qword_1EAFE4738 != -1)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        sub_19B929670(@"HWModelStr", v11);
                                                                                                                                                                                                                                                                                        if (v13 >= 0)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          v9 = v11;
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          v9 = *v11;
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v14 = 136380675;
                                                                                                                                                                                                                                                                                        v15 = v9;
                                                                                                                                                                                                                                                                                        v10 = _os_log_send_and_compose_impl();
                                                                                                                                                                                                                                                                                        if (v13 < 0)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          operator delete(*v11);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        sub_19B885924("Generic", 1, 0, 0, "static CLPlatformInfo::Hardware CLPlatformInfo::queryEmbeddedSystemHardware()", "CoreLocation: %s\n", v10);
                                                                                                                                                                                                                                                                                        if (v10 != buf)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          free(v10);
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                      result = 0;
                                                                                                                                                                                                                                                                                      goto LABEL_6;
                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                    result = 280;
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
        }
      }
    }
  }

LABEL_6:
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B87AAF4()
{
  qword_1ED5190E8 = 0;
  result = _CFRuntimeRegisterClass();
  qword_1ED5190E8 = result;
  return result;
}

uint64_t sub_19B87AB28()
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 0;
  v1 = dword_1ED519180;
  switch(dword_1ED519180)
  {
    case 0:
    case 281:
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
      }

      v8 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v11 = v1;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "Unsupported HW type %d; file a radar to CoreMotion Factory | 1.0", buf, 8u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
      {
        goto LABEL_20;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_18;
    case 2:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 37:
    case 38:
    case 40:
    case 41:
    case 43:
    case 52:
    case 81:
    case 83:
    case 85:
    case 87:
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
      }

      v4 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v11 = v1;
        _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "Old hardware,%d is not supported", buf, 8u);
      }

      v5 = sub_19B87DD40();
      if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4738 != -1)
        {
LABEL_44:
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
        }

LABEL_18:
        v6 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "static CLPlatformInfo::MotionProviders CLPlatformInfo::motionProviders()", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }

LABEL_20:
      result = 0;
      break;
    case 6:
    case 60:
    case 61:
    case 204:
      result = 4;
      break;
    case 24:
    case 25:
    case 27:
    case 28:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 78:
    case 79:
    case 80:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 168:
    case 170:
    case 171:
    case 172:
    case 173:
    case 176:
    case 177:
    case 233:
      result = 31;
      break;
    case 26:
      result = 15;
      break;
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 62:
    case 63:
    case 64:
    case 65:
    case 76:
    case 77:
    case 134:
    case 135:
    case 136:
    case 137:
    case 144:
    case 145:
    case 146:
    case 147:
    case 154:
    case 155:
    case 156:
    case 157:
    case 161:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
      result = 23;
      break;
    case 39:
    case 42:
    case 148:
    case 149:
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
      result = 6;
      break;
    case 50:
    case 51:
    case 66:
    case 67:
    case 74:
    case 75:
    case 82:
    case 84:
    case 86:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 150:
    case 151:
    case 152:
    case 153:
      if (qword_1ED519200 != -1)
      {
        dispatch_once(&qword_1ED519200, &unk_1F0E6CE78);
      }

      v2 = byte_1ED51917B == 0;
      v3 = 22;
      goto LABEL_24;
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 280:
      if (qword_1ED519200 != -1)
      {
        dispatch_once(&qword_1ED519200, &unk_1F0E6CE78);
      }

      v2 = byte_1ED51917B == 0;
      v3 = 54;
LABEL_24:
      if (v2)
      {
        result = v3;
      }

      else
      {
        result = v3 + 1;
      }

      break;
    case 169:
    case 174:
    case 175:
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
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
      result = 63;
      break;
    default:
      break;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B87B384(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B87C064(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B87B3F0(uint64_t a1, char **a2, void *a3)
{
  sub_19B8759E8(__p, *a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B87B44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B87B468(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E6BFF8;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a1[1] = Mutable;
  if (!Mutable)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v3 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B87B65C(CFMutableDictionaryRef *a1, const void *a2, const void *a3)
{
  CFDictionarySetValue(a1[1], a2, a3);
  v4 = *(*a1 + 106);

  return v4(a1);
}

uint64_t sub_19B87B6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 240);
  pthread_mutex_lock(v5);
  if (!*(a1 + 225))
  {
    v7 = *(a3 + 8);
    sub_19B87B83C();
  }

  return pthread_mutex_unlock(v5);
}

void sub_19B87B794(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  if (a3)
  {
    sub_19B8750F8(a3);
  }

  if (a6)
  {
    sub_19B8750F8(a6);
  }

  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B87B7CC(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B87B90C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void *sub_19B87B8B0(void *a1, char **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B87B3F0((a1 + 3), a2, a3);
  return a1;
}

BOOL sub_19B87B90C(uint64_t a1, const __CFString *a2, _BYTE *a3)
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
    (*(*a1 + 896))(a1, a2, v6);
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

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const BOOL &)", "CoreLocation: %s\n", v11);
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

uint64_t sub_19B87BBB4()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  return qword_1ED519188;
}

uint64_t sub_19B87BBFC()
{
  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  switch(dword_1ED519180)
  {
    case 8:
    case 9:
    case 11:
    case 12:
    case 15:
    case 16:
    case 17:
    case 18:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 30:
    case 32:
    case 36:
    case 44:
    case 45:
    case 47:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 63:
    case 65:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 77:
    case 78:
    case 79:
    case 80:
      return result;
    case 10:
    case 13:
    case 14:
    case 19:
    case 20:
    case 21:
    case 29:
    case 31:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 46:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 60:
    case 61:
    case 62:
    case 64:
    case 66:
    case 67:
    case 74:
    case 75:
    case 76:
      goto LABEL_8;
    default:
      if (((dword_1ED519180 - 139) > 0x34 || ((1 << (dword_1ED519180 + 117)) & 0x1FFFFFE000001DLL) == 0) && (dword_1ED519180 - 233) >= 8)
      {
LABEL_8:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_19B87BDD0(void *a1)
{
  v2 = a1[30];
  v6 = v2;
  pthread_mutex_lock(v2);
  v7 = 257;
  v3 = a1[45];
  if (a1[46])
  {
    v4 = a1[46];
  }

  else
  {
    v4 = a1[45];
  }

  if (([&unk_1F0E8CC70 containsObject:v4] & 1) != 0 || !sub_19B87BF68())
  {
    v8 = 0;
    vproc_swap_integer();
  }

  return pthread_mutex_unlock(v2);
}

void sub_19B87BF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void *sub_19B87BF98(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessagePausesLocationUpdatesAutomaticallyKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessagePausesLocationUpdatesAutomatically", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B87C028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

BOOL sub_19B87C064(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a3);
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

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const int &)", "CoreLocation: %s\n", v10);
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

uint64_t sub_19B87C3A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

uint64_t sub_19B87C770(uint64_t a1, char **a2, void *a3)
{
  sub_19B8759E8(__p, *a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B87C7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B87C7E8(void *a1, char **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B87C770((a1 + 3), a2, a3);
  return a1;
}

os_log_t sub_19B87C8B8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87C8E8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87C918()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87C948()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87C978()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87C9A8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87C9D8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CA08()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CA38()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CA68()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CA98()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CAC8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CAF8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CB28()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CB58()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CB88()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CBB8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

os_log_t sub_19B87CBE8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED519090 = result;
  return result;
}

void sub_19B87D030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_activity_scope_state_s state)
{
  objc_sync_exit(v21);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t sub_19B87D0EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

uint64_t CLClientStartLocationUpdatesWithDynamicAccuracyReductionAndAlteredAccessoryLocations_0(uint64_t a1, int a2, int a3, int a4, double a5)
{
  v14 = a5;
  v9 = *(a1 + 240);
  v12[3] = v9;
  pthread_mutex_lock(v9);
  v13 = 257;
  if (*(a1 + 392))
  {
    entr_act_modify();
  }

  else
  {
    entr_act_begin();
    *(a1 + 392) |= 1u;
  }

  entr_act_set();
  entr_act_set();
  sub_19B87B468(v12);
  LOBYTE(v11) = 1;
  sub_19B87B7CC(v12, "kCLConnectionMessageSubscribeKey", &v11);
  v11 = a2;
  sub_19B87B384(v12, "kCLConnectionMessageDesiredAccuracyKey", &v11);
  sub_19B87D390(v12, "kCLConnectionMessageDistanceFilterKey", &v14);
  LOBYTE(v11) = a3 != 0;
  sub_19B87B7CC(v12, "kCLConnectionMessageDynamicAccuracyReductionKey", &v11);
  LOBYTE(v11) = a4 != 0;
  sub_19B87B7CC(v12, "kCLConnectionMessageAlteredAccessoryLocationsKey", &v11);
  sub_19B87B6CC(a1, "kCLConnectionMessageLocation", v12);
  sub_19B8756F0(v12);
  return pthread_mutex_unlock(v9);
}

void sub_19B87D334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B8756F0(va);
  sub_19B888D7C(va1);
  _Unwind_Resume(a1);
}

BOOL sub_19B87D390(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B87D3FC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B87D3FC(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, a3);
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

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const double &)", "CoreLocation: %s\n", v10);
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

BOOL sub_19B87D694(uint64_t a1, const char *a2, char *a3)
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

  v7 = sub_19B87D70C(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_19B87D70C(uint64_t a1, const __CFString *a2, char *cStr)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
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

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const char *)", "CoreLocation: %s\n", v10);
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

uint64_t sub_19B87DBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetAuthorizationStatus", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetAuthorizationStatus, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

CLLocationInternalClient *sub_19B87DD18()
{
  result = objc_alloc_init(CLLocationInternalClient);
  qword_1ED5192F8 = result;
  return result;
}

uint64_t sub_19B87DD40()
{
  if (qword_1ED5192C8 != -1)
  {
    dispatch_once(&qword_1ED5192C8, &unk_1F0E6DA48);
  }

  return qword_1ED5192C0;
}

void sub_19B87DD88(uint64_t a1)
{
  v2 = sub_19B87DE14();
  v3 = *(a1 + 32);
  v4 = *(v3 + 312);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B87DE58;
  v5[3] = &unk_1E753CC40;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

uint64_t sub_19B87DE14()
{
  v0 = [NSClassFromString(&cfstr_Uiapplication.isa) performSelector:sel_sharedApplication];
  if (v0)
  {
    return [v0 performSelector:sel_applicationState];
  }

  else
  {
    return 3;
  }
}

uint64_t sub_19B87DE58(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  pthread_mutex_lock(v2);
  v3 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    v3[18] = 1;
  }

  CFRelease(v3);
  return pthread_mutex_unlock(v2);
}

void sub_19B87DEC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

long double sub_19B87E164(double a1, double a2, double a3, double a4)
{
  if (sub_19B87E218(a1, a2, a3, a4))
  {

    return sub_19BA0B914(a1, a2, a3, a4);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    sub_19B87E29C(&v11, &v10, &v9, a1, a2, 0.0, a3, a4, 0.0);
    return sqrt(v10 * v10 + v11 * v11);
  }
}

BOOL sub_19B87E218(double a1, double a2, double a3, double a4)
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v4 = a4 - a2;
  if (v4 <= 180.0)
  {
    if (v4 < -180.0)
    {
      v4 = v4 + 360.0;
    }
  }

  else
  {
    v4 = v4 + -360.0;
  }

  v5 = v4;
  if (v4 < 0)
  {
    v5 = -v5;
  }

  v6 = a3 - a1;
  if (v6 < 0)
  {
    v6 = a1 - a3;
  }

  return v6 > 2 || v5 > 2;
}

double sub_19B87E29C(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = 360.0;
  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  if (a8 < 0.0)
  {
    a8 = a8 + 360.0;
  }

  v15 = a8 - a5;
  if (v15 > 180.0)
  {
    v14 = -360.0;
LABEL_8:
    v15 = v15 + v14;
    goto LABEL_9;
  }

  if (v15 < -180.0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v16 = (a7 - a4) * 0.0174532925;
  v17 = (a6 + a9) * 0.5;
  v18 = v15 * 0.0174532925;
  v19 = __sincos_stret((a4 + a7) * 0.0174532925 * 0.5);
  v20 = sqrt(v19.__sinval * -0.00669437999 * v19.__sinval + 1.0);
  *a1 = v16 * (v17 + 6335439.33 / (v20 * (v20 * v20)));
  *a2 = v19.__cosval * (v17 + 6378137.0 / v20) * v18;
  result = a9 - a6;
  *a3 = a9 - a6;
  return result;
}

void sub_19B87E3CC(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UTF8String];
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client woken up by Core Location, name:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void *CLClientRequestAuthorization(void *a1, int a2)
{
  sub_19B87B468(v5);
  sub_19B87EBF4(a1, a2, v5);
  return sub_19B8756F0(v5);
}

uint64_t sub_19B87EBF4(void *a1, int a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a1[30];
  v21[2] = v6;
  pthread_mutex_lock(v6);
  v22 = 257;
  v21[0] = 0;
  if (a1[45])
  {
    v7 = 1;
  }

  else
  {
    v7 = a1[46] != 0;
  }

  if (v7 | ((dyld_program_sdk_at_least() & 1) == 0))
  {
    goto LABEL_45;
  }

  if (a2 == 3)
  {
    if (dyld_program_sdk_at_least())
    {
      v9 = @"NSLocationAlwaysAndWhenInUseUsageDescription";
      if ([objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
      {
        v12 = @"NSLocationWhenInUseUsageDescription";
        if ([objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
        {
          goto LABEL_45;
        }
      }

      else
      {
        v12 = @"NSLocationWhenInUseUsageDescription";
      }

      v11 = @"This app has attempted to access privacy-sensitive data without a usage description. The app's Info.plist must contain both “%@” and “%@” keys with string values explaining to the user how the app uses this data";
LABEL_30:
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, v9, v12];
      goto LABEL_31;
    }

    v8 = @"NSLocationAlwaysUsageDescription";
    if ([objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
    {
      goto LABEL_45;
    }

LABEL_27:
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This app has attempted to access privacy-sensitive data without a usage description. The app's Info.plist must contain an “%@” key with a string value explaining to the user how the app uses this data", v8];
LABEL_31:
    if (v16)
    {
      NSLog(&stru_1F0E6F280.isa, v16);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v17 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        v26 = a2;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "Missing UsageDescription key for requested authorization: %{public}d", buf, 8u);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
        }

        v23 = 67240192;
        v24 = a2;
        v15 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLClientRequestAuthorization(CLClientRef, CLClientAuthorizationStatus, CLNameValuePair &)", "CoreLocation: %s\n", v15);
LABEL_43:
        if (v15 != buf)
        {
          free(v15);
        }

        goto LABEL_45;
      }
    }

    goto LABEL_45;
  }

  if (a2 == 4)
  {
    v8 = @"NSLocationWhenInUseUsageDescription";
    if ([objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
    {
      goto LABEL_45;
    }

    sub_19B87F9E8(a3, "kCLConnectionMessagePurposeIdentifierKey", v21);
    if (v21[0])
    {
      v9 = @"NSLocationAuthorizationPurposeDescriptionDictionary";
      v10 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
      if (v10 && [v10 objectForKey:v21[0]])
      {
        goto LABEL_45;
      }

      v11 = @"This app has attempted to access privacy-sensitive data without a usage description. The app's Info.plist must contain an “%@” key with a dictionary containing usage descriptions, and purposeKey “%@” must be present in it explaining to the user how the app uses this data";
      v12 = v21[0];
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v26 = a2;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "Invalid requested authorization: %{public}d", buf, 8u);
  }

  v14 = sub_19B87DD40();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v23 = 67240192;
    v24 = a2;
    v15 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLClientRequestAuthorization(CLClientRef, CLClientAuthorizationStatus, CLNameValuePair &)", "CoreLocation: %s\n", v15);
    goto LABEL_43;
  }

LABEL_45:
  *buf = a2;
  sub_19B87B384(a3, "kCLConnectionMessageStatusKey", buf);
  sub_19B87B6CC(a1, "kCLConnectionMessageRequestAuthorization", a3);
  result = pthread_mutex_unlock(v6);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B87F100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

uint64_t CLCopyTechnologiesInUse()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyTechnologiesInUse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyTechnologiesInUse, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_19B87F328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CLClientGetLocation(uint64_t a1, const __CFDictionary *a2, _OWORD *a3)
{
  v6 = *(a1 + 240);
  v20[3] = v6;
  pthread_mutex_lock(v6);
  v21 = 257;
  if (a3)
  {
    sub_19B874A98(v20, a2);
    *v18 = xmmword_19BA8A700;
    *&v18[16] = unk_19BA8A710;
    memset(v19, 0, 28);
    v15 = xmmword_19BA8A6C0;
    *v16 = unk_19BA8A6D0;
    *&v16[16] = xmmword_19BA8A6E0;
    v17 = unk_19BA8A6F0;
    *v14 = xmmword_19BA8A6A0;
    *&v14[16] = unk_19BA8A6B0;
    v13 = 0;
    sub_19B87F504(v14, v20);
    if (*(a1 + 20) == 3 && sub_19B8767CC(v20, "IsFitnessMatch", &v13) && !v13 && (*&v18[4] != 0.0 || *&v18[12] != 0.0 || *&v18[20] != -1.0))
    {
      *&v14[4] = *&v18[4];
      DWORD1(v19[0]) = DWORD2(v19[0]);
      *&v16[12] = *&v18[20];
    }

    if (*&v14[20] >= 0.0)
    {
      v8 = *&v18[16];
      a3[6] = *v18;
      a3[7] = v8;
      a3[8] = v19[0];
      *(a3 + 140) = *(v19 + 12);
      v9 = *v16;
      a3[2] = v15;
      a3[3] = v9;
      v10 = v17;
      a3[4] = *&v16[16];
      a3[5] = v10;
      v11 = *&v14[16];
      v7 = 1;
      *a3 = *v14;
      a3[1] = v11;
    }

    else
    {
      v7 = 0;
    }

    sub_19B8756F0(v20);
  }

  else
  {
    v7 = 0;
  }

  pthread_mutex_unlock(v6);
  return v7;
}

uint64_t sub_19B87F504(_OWORD *a1, uint64_t a2)
{
  a1[6] = xmmword_19BA8A700;
  a1[7] = unk_19BA8A710;
  a1[8] = xmmword_19BA8A720;
  *(a1 + 140) = *(&xmmword_19BA8A720 + 12);
  a1[2] = xmmword_19BA8A6C0;
  a1[3] = unk_19BA8A6D0;
  a1[4] = xmmword_19BA8A6E0;
  a1[5] = unk_19BA8A6F0;
  *a1 = xmmword_19BA8A6A0;
  a1[1] = unk_19BA8A6B0;
  theData = 0;
  v16 = 0;
  v4 = sub_19B87F9E8(a2, "Locations", &theData);
  result = 0;
  if (v4)
  {
    v6 = sub_19B876178(a2, "LocationCount", &v16);
    result = 0;
    if (v6)
    {
      if (v16 >= 1)
      {
        BytePtr = CFDataGetBytePtr(theData);
        v8 = &BytePtr[156 * v16];
        v9 = *(v8 - 140);
        *a1 = *(v8 - 156);
        a1[1] = v9;
        v10 = *(v8 - 108);
        v11 = *(v8 - 76);
        v12 = *(v8 - 124);
        a1[4] = *(v8 - 92);
        a1[5] = v11;
        a1[2] = v12;
        a1[3] = v10;
        v13 = *(v8 - 44);
        v14 = *(v8 - 28);
        v15 = *(v8 - 60);
        *(a1 + 140) = *(v8 - 1);
        a1[7] = v13;
        a1[8] = v14;
        a1[6] = v15;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_19B87F61C(uint64_t a1, uint64_t a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (a3)
    {
      v5 = *(a1 + 88);
      v6 = *(a2 + 88);
      v7 = v5 == -1.0 && v6 == -1.0;
      v8 = v7 || vabdd_f64(v5 + *(a1 + 76), v6 + *(a2 + 76)) < 2.22044605e-16;
    }

    else
    {
      v8 = *(a1 + 76) == *(a2 + 76);
    }

    if (*(a1 + 4) != *(a2 + 4) || *(a1 + 12) != *(a2 + 12) || *(a1 + 20) != *(a2 + 20) || *(a1 + 28) != *(a2 + 28) || *(a1 + 36) != *(a2 + 36) || *(a1 + 44) != *(a2 + 44) || *(a1 + 60) != *(a2 + 60) || *(a1 + 96) != *(a2 + 96) || !v8)
    {
      result = 0;
      goto LABEL_40;
    }

    v11 = *(a1 + 124);
    v12 = *(a2 + 124);
    v7 = v11 == v12;
    v13 = v11 != v12;
    if (!v7 || *(a1 + 132) == *(a2 + 132))
    {
      result = !v13;
      goto LABEL_40;
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v14 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v15 = *(a1 + 4);
      v16 = *(a1 + 12);
      v17 = *(a1 + 132);
      v18 = *(a2 + 4);
      v19 = *(a2 + 12);
      v20 = *(a2 + 132);
      *buf = 134546945;
      v31 = v15;
      v32 = 2053;
      v33 = v16;
      v34 = 1024;
      v35 = v17;
      v36 = 2053;
      v37 = v18;
      v38 = 2053;
      v39 = v19;
      v40 = 1024;
      v41 = v20;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_FAULT, "CLCommonCompareLocationEqualityClient compared two coordinates that were identical other than their reference frames: (%{sensitive}lf, %{sensitive}lf, %d) (%{sensitive}lf, %{sensitive}lf, %d)", buf, 0x36u);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v24 = *(a1 + 4);
      v25 = *(a1 + 12);
      v26 = *(a1 + 132);
      v27 = *(a2 + 4);
      v28 = *(a2 + 12);
      v29 = *(a2 + 132);
      v22 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "Boolean CLCommonCompareLocationEqualityClientWithTimeCheck(const CLClientLocation *, const CLClientLocation *, BOOL)", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    if (!*(a1 + 132))
    {
      result = 1;
      goto LABEL_40;
    }

    v9 = *(a2 + 132) == 0;
  }

  else
  {
    v9 = (a1 | a2) == 0;
  }

  result = v9;
LABEL_40:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B87F9C0(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

uint64_t sub_19B87F9E8(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B87FA5C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B87FA5C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  *a3 = 0;
  v4 = (*(*a1 + 904))(a1);
  if (v4 && *a3)
  {
    CFAutorelease(*a3);
  }

  return v4;
}

uint64_t CLClientStopLocationUpdates_0(uint64_t a1)
{
  v2 = *(a1 + 240);
  v5[3] = v2;
  pthread_mutex_lock(v2);
  v6 = 257;
  if (*(a1 + 392))
  {
    entr_act_end();
    *(a1 + 392) &= ~1u;
  }

  sub_19B87B468(v5);
  v4 = 0;
  sub_19B87B7CC(v5, "kCLConnectionMessageSubscribeKey", &v4);
  sub_19B87B6CC(a1, "kCLConnectionMessageLocation", v5);
  sub_19B8756F0(v5);
  return pthread_mutex_unlock(v2);
}

void sub_19B87FE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void *sub_19B87FE94(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageTrackRunInfoEnabled", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B87FF24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *CLClientSetAllowsMapCorrection(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageAllowsMapCorrectionKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageAllowsMapCorrection", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B87FFDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void sub_19B88011C(uint64_t a1)
{
  *a1 = &unk_1F0E6EE40;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_19B880238((a1 + 40));
}

void sub_19B8801D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B880238(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E6C460;
  operator new();
}

void *sub_19B880390(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageActivityTypeKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  *(a1 + 20) = a2;
  sub_19B87B6CC(a1, "kCLConnectionMessageActivityType", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88042C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void sub_19B880454(int a1, NSObject **cf)
{
  CFRetain(cf);
  v3 = cf[39];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8804D8;
  block[3] = &unk_1E753CEF0;
  block[4] = cf;
  dispatch_async(v3, block);
}

uint64_t sub_19B8804D8(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(*(result + 32) + 225))
  {
    v1 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_INFO, "received client did become active notification", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLClientHandleDidBecomeActiveNotification(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    v5 = *(*(v1 + 32) + 240);
    v9 = v5;
    pthread_mutex_lock(v5);
    v10 = 257;
    v6 = *(v1 + 32);
    v6[18] = 1;
    if (v6[24] && !v6[25])
    {
      sub_19B874D40(v6, 13);
      v6 = *(v1 + 32);
    }

    CFRelease(v6);
    result = pthread_mutex_unlock(v5);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8806EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B880AF4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = MEMORY[0x19EAE95D0]();
    result = MEMORY[0x19EAE98C0](v3, 0xB0C40BC2CC919);
  }

  *(a1 + 8) = 0;
  return result;
}

void *sub_19B880EA0(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(a1 + 384);
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v8 = 0;
      v9 = 0;
      v10 = v6 + 1;
      do
      {
        v9 ^= v7 << (v8 & 0x18);
        v11 = *v10++;
        v7 = v11;
        v8 += 8;
      }

      while (v11);
    }
  }

  entr_act_modify();
  sub_19B87B468(v14);
  v13 = 1;
  sub_19B87B7CC(v14, "kCLConnectionMessageSubscribeKey", &v13);
  if (a2)
  {
    sub_19B87D390(v14, "kCLConnectionMessageSLCDistanceKey", a2);
  }

  if (a3)
  {
    sub_19B87B384(v14, "kCLConnectionMessageSLCPowerBudgetKey", a3);
  }

  sub_19B87B6CC(a1, "kCLConnectionMessageSignificantLocationChange", v14);
  return sub_19B8756F0(v14);
}

void sub_19B880F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void sub_19B881308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  objc_sync_exit(v11);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void *CLClientStartHeadingUpdates(uint64_t a1, int a2, double a3)
{
  if ((*(a1 + 392) & 2) != 0)
  {
    entr_act_modify();
  }

  else
  {
    entr_act_begin();
    *(a1 + 392) |= 2u;
  }

  entr_act_set();
  v6 = *MEMORY[0x1E6985C68];
  if (a3 > 0.0)
  {
    v6 = a3;
  }

  *(a1 + 32) = v6;
  *(a1 + 40) = a2;
  if ((a2 - 1) <= 3)
  {
    *(a1 + 48) = qword_19BA89248[a2 - 1];
  }

  if (!*(a1 + 24))
  {
    *(a1 + 24) = 257;
    *(a1 + 144) = 0xBFF0000000000000;
  }

  sub_19B87B468(v9);
  v8 = 1;
  sub_19B87B7CC(v9, "kCLConnectionMessageSubscribeKey", &v8);
  sub_19B87D390(v9, "kCLConnectionMessageHeadingFilterKey", (a1 + 32));
  sub_19B87B6CC(a1, "kCLConnectionMessageHeading", v9);
  return sub_19B8756F0(v9);
}

void sub_19B88148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88195C()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_getLocationForBundleID_orBundlePath_dynamicAccuracyReductionEnabled_allowsAlteredAccessoryLocations_location_);
}

uint64_t CLClientRetrieveLocationWithDynamicAccuracyReductionAndAlteredAccessoryLocations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = a4;
  if (a1)
  {
    v6 = *(a1 + 360);
    v5 = *(a1 + 368);
  }

  v7 = sub_19B88195C();
  v8 = *(a4 + 4);
  v9 = v8 != 0.0;
  v10 = *(a4 + 12);
  if (v10 == 0.0)
  {
    v9 = 0;
  }

  if (*(a4 + 20) >= 0.0 && !v9)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a4 + 20);
      *buf = 68290307;
      v18 = 2082;
      v17 = 0;
      v19 = "";
      v20 = 1026;
      v21 = v8 != 0.0;
      v22 = 1026;
      v23 = v10 != 0.0;
      v24 = 2050;
      v25 = v12;
      v26 = 1040;
      v27 = 8;
      v28 = 2101;
      v29 = &v15;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#NullIsland Received a latitude or longitude from getLocationForBundleID that was exactly zero, latIsNonzero:%{public}hhd, lonIsNonzero:%{public}hhd, hAcc:%{public}f, location:%{sensitive, location:CLClientLocation}.*P}", buf, 0x38u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_19B881C8C(void *a1, uint64_t a2)
{
  v4 = a1[5];
  pthread_mutex_lock(v4);
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v5 = a1[6];
    if (!_CFIsDeallocating())
    {
      CFRetain(v5);
      v6 = *a2;
      v7 = *(a2 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v5 + 24))
      {
        cf = 0;
        Dictionary = CLConnectionMessage::getDictionary(v6);
        sub_19B874A98(v11, Dictionary);
        sub_19B87F9E8(v11, "kCLConnectionMessageHeadingDataKey", &cf);
        if (cf)
        {
          v9 = CFGetTypeID(cf);
          if (v9 == CFDataGetTypeID())
          {
            v13.location = 0;
            v13.length = 88;
            CFDataGetBytes(cf, v13, (v5 + 56));
            if (*(v5 + 25))
            {
              if (*(v5 + 96) < 0.0)
              {
                *(v5 + 25) = 0;
                sub_19B874D40(v5, 13);
                *(v5 + 144) = *(v5 + 104);
              }
            }

            else if (*(v5 + 136) >= *(v5 + 152) || *(v5 + 104) - *(v5 + 144) > 15.0 && *(v5 + 96) >= 0.0)
            {
              *(v5 + 25) = 1;
              CLClientShowHeadingCalibration(v5, 0);
            }

            sub_19B874D40(v5, 12);
          }
        }

        sub_19B8756F0(v11);
      }

      if (v7)
      {
        sub_19B8750F8(v7);
      }

      CFRelease(v5);
    }
  }

  return pthread_mutex_unlock(v4);
}

void sub_19B881E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    sub_19B8750F8(v9);
  }

  sub_19B888D7C(&a9);
  _Unwind_Resume(a1);
}

uint64_t CLClientInvalidate(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 240);
  v9[6] = v2;
  pthread_mutex_lock(v2);
  v10 = 257;
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    v16 = a1;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalidating client, client:%{public}p}", buf, 0x1Cu);
  }

  CLClientShowHeadingCalibration(a1, 0);
  CFRetain(a1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B882740;
  v9[3] = &unk_1E753CEF0;
  v9[4] = a1;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
  v4 = *(a1 + 336);
  if (v4)
  {
    (*(v4 + 16))();
    _Block_release(*(a1 + 336));
    *(a1 + 336) = 0;
  }

  if (*(a1 + 320))
  {
    v5 = MEMORY[0x19EAE95D0]();
    MEMORY[0x19EAE98C0](v5, 0xB0C40BC2CC919);
    *(a1 + 320) = 0;
  }

  if (*(a1 + 264))
  {
    v6 = *(a1 + 280);
    if (v6)
    {
      v6();
    }
  }

  bzero((a1 + 256), 0x28uLL);
  *(a1 + 225) = 1;
  result = pthread_mutex_unlock(v2);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B882050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_19B890AB0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLClientShowHeadingCalibration(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 160);
  pthread_mutex_lock((a1 + 160));
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 25) != 0;
    v7 = *(a1 + 24);
    v8 = *(a1 + 18) != 0;
    *buf = 68290050;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 1026;
    v20 = a2 != 0;
    v21 = 1026;
    v22 = v6;
    v23 = 1026;
    v24 = v8;
    v25 = 1026;
    v26 = v7 != 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLClientShowHeadingCalibration, showHeadingCal:%{public}hhd, isHeadingCalibrated:%{public}hhd, isApplicationActive:%{public}hhd, isUpdatingHeading:%{public}hhd}", buf, 0x2Au);
  }

  if ((sub_19B882524() & 0x10) != 0)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (!*(a1 + 18))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_INFO, "Application inactive, will not show heading calibration", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "Boolean CLClientShowHeadingCalibration(CLClientRef, Boolean)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 25) || !*(a1 + 24))
  {
LABEL_9:
    if (*(a1 + 224))
    {
      sub_19B934624();
      *(a1 + 224) = 0;
    }

    goto LABEL_11;
  }

  if (*(a1 + 224))
  {
LABEL_11:
    v9 = 1;
    goto LABEL_25;
  }

  v9 = 1;
  if (sub_19B934314())
  {
    *(a1 + 224) = 1;
  }

LABEL_25:
  pthread_mutex_unlock(v4);
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_19B8824F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B882524()
{
  if (qword_1ED519208 != -1)
  {
    dispatch_once(&qword_1ED519208, &unk_1F0E6CE98);
  }

  return qword_1ED519210;
}

void sub_19B882740(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, *(a1 + 32));
  v3 = *(a1 + 32);

  CFRelease(v3);
}

void sub_19B882780(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2050;
    v26 = a1;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client about to be destroyed, client:%{public}p}", buf, 0x1Cu);
  }

  if (!*(a1 + 225))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "client->fInvalidated";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLClient needs to be invalidated first before destroying., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }
    }

    v16 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "client->fInvalidated";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLClient needs to be invalidated first before destroying.", "{msg%{public}.0s:CLClient needs to be invalidated first before destroying., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "client->fInvalidated";
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLClient needs to be invalidated first before destroying., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_46:
    abort_report_np();
    __break(1u);
  }

  pthread_mutex_destroy((a1 + 160));

  *(a1 + 232) = 0;
  v3 = *(a1 + 384);
  if (v3)
  {
    free(v3);
    *(a1 + 384) = 0;
  }

  v4 = *(a1 + 360);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 360) = 0;
  }

  v5 = *(a1 + 368);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 368) = 0;
  }

  v6 = *(a1 + 312);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 312) = 0;
  }

  if (*(a1 + 264))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "!client->fContext.info";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:client->fContext should be NULL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }
    }

    v19 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "!client->fContext.info";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "client->fContext should be NULL", "{msg%{public}.0s:client->fContext should be NULL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }
    }

    v20 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "!client->fContext.info";
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:client->fContext should be NULL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_46;
  }

  v7 = *(a1 + 344);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 344) = 0;
  }

  v8 = *(a1 + 352);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 352) = 0;
  }

  v9 = *(a1 + 328);
  if (v9)
  {
    if (v9[2])
    {
      v10 = v9[1];
      v11 = *(*v9 + 8);
      v12 = *v10;
      *(v12 + 8) = v11;
      *v11 = v12;
      v9[2] = 0;
      if (v10 != v9)
      {
        do
        {
          v13 = v10[1];
          operator delete(v10);
          v10 = v13;
        }

        while (v13 != v9);
      }
    }

    MEMORY[0x19EAE98C0](v9, 0x1020C4062D53EE8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B882D70(pthread_mutex_t *a1)
{
  pthread_mutex_destroy(a1);

  free(a1);
}

void sub_19B882FB4()
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  v0 = 0;
  v1 = dword_1ED519180;
  switch(dword_1ED519180)
  {
    case 0:
    case 281:
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
      }

      v19 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_ERROR))
      {
        *buf = 67174657;
        LODWORD(v26) = v1;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "Unsupported HW type %{private}d; file a radar to CoreMotion Factory | 1.0", buf, 8u);
      }

      v20 = sub_19B87DD40();
      if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
      {
        goto LABEL_16;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        goto LABEL_103;
      }

      goto LABEL_14;
    case 2:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 37:
    case 38:
    case 40:
    case 41:
    case 43:
    case 52:
    case 81:
    case 83:
    case 85:
    case 87:
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
      }

      v2 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v26) = v1;
        _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "Old hardware,%d is not supported", buf, 8u);
      }

      v3 = sub_19B87DD40();
      if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4738 != -1)
        {
LABEL_103:
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
        }

LABEL_14:
        v4 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "CLPlatformInfo::MotionCapabilities CLPlatformInfo::queryMotionCaps()", "CoreLocation: %s\n", v4);
        if (v4 != buf)
        {
          free(v4);
        }
      }

LABEL_16:
      v0 = 0;
      break;
    case 24:
    case 25:
    case 27:
    case 28:
      v15 = 1586033086;
      goto LABEL_56;
    case 26:
      v9 = 0x134E88F1BELL;
      goto LABEL_87;
    case 29:
      v0 = 1115734017;
      break;
    case 30:
    case 31:
    case 32:
      v18 = 1115734017;
      goto LABEL_59;
    case 33:
    case 217:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 255:
    case 256:
      v5 = 1530;
      goto LABEL_20;
    case 34:
    case 195:
    case 196:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 218:
    case 229:
    case 230:
    case 231:
    case 232:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 257:
    case 258:
      v5 = 13818;
LABEL_20:
      v6 = v5 & 0xFFFFFFFF0000FFFFLL | 0x628C0000;
      goto LABEL_21;
    case 35:
    case 36:
    case 64:
    case 65:
      v16 = -3702;
      goto LABEL_81;
    case 39:
    case 42:
      v0 = 0x50022CA9C00ELL;
      break;
    case 44:
      v16 = -15942;
LABEL_81:
      v0 = v16 | 0x42880000u;
      break;
    case 45:
      v0 = 1116271034;
      break;
    case 46:
    case 62:
    case 161:
      v0 = 1653129658;
      break;
    case 47:
    case 63:
      v18 = 1653129658;
LABEL_59:
      v0 = v18 | 0x3000;
      break;
    case 48:
    case 193:
      v7 = 1088;
      v8 = 0x26289C1BALL;
      goto LABEL_24;
    case 49:
    case 194:
    case 197:
    case 210:
      v12 = 62970;
      goto LABEL_50;
    case 50:
    case 51:
      v9 = 0x5002ACA9C00ELL;
      goto LABEL_87;
    case 54:
    case 55:
      v15 = 2127327678;
LABEL_56:
      v0 = v15 | 0x202005300000000;
      break;
    case 56:
    case 57:
    case 58:
    case 59:
      v0 = 0x20300537E8C71BELL;
      break;
    case 60:
    case 61:
    case 204:
      v0 = 0x400000000;
      break;
    case 66:
    case 67:
    case 74:
    case 75:
      v9 = 0x486ABCA9C00ELL;
      goto LABEL_87;
    case 68:
    case 69:
    case 71:
    case 72:
      v14 = 0x24300537E8C35BELL;
      goto LABEL_73;
    case 70:
    case 73:
      v11 = 0x80537E8C31BELL;
      goto LABEL_75;
    case 76:
    case 146:
    case 147:
      v12 = 49594;
LABEL_50:
      v6 = v12 & 0xFFFFFFFF0000FFFFLL | 0x62890000;
LABEL_21:
      v0 = v6 & 0xFFFF0000FFFFFFFFLL | 0x200000000;
      break;
    case 77:
    case 145:
      v14 = 0x26289F5FALL;
LABEL_73:
      v0 = v14 - 1024;
      break;
    case 78:
    case 79:
    case 80:
    case 142:
      v11 = 0x537E8C35BELL;
LABEL_75:
      v0 = v11 & 0xFFFFFFFFFFFFLL | 0x243000000000000;
      break;
    case 82:
    case 84:
      v9 = 0x4F6ABCA9C00ELL;
      goto LABEL_87;
    case 86:
    case 88:
      v0 = 0x2496ABCA9C00ELL;
      break;
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
      v9 = 0x496ABCA9C01ELL;
      goto LABEL_87;
    case 95:
    case 96:
    case 97:
    case 98:
      v0 = 0x612496ABCA9C01ELL;
      break;
    case 99:
    case 100:
    case 101:
    case 102:
      v0 = 0xE12696ABCA9C05ELL;
      break;
    case 103:
    case 104:
    case 105:
    case 106:
      v0 = 0xE12696ABCAA005ELL;
      break;
    case 107:
    case 108:
    case 109:
    case 110:
      v10 = 0x496ABCA9C05ELL;
      goto LABEL_33;
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 280:
      v10 = 0x696ABCAA005ELL;
LABEL_33:
      v0 = v10 & 0xFFFFFFFFFFFFLL | 0xE16000000000000;
      break;
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
      v0 = 0x2E16696ABCAA005ELL;
      break;
    case 134:
    case 135:
    case 136:
    case 137:
      v13 = 1653208570;
      goto LABEL_47;
    case 138:
    case 139:
    case 140:
    case 141:
    case 143:
      v0 = 0x24B00537E8C35BELL;
      break;
    case 144:
    case 254:
      v0 = 0x2628C31BALL;
      break;
    case 148:
      v0 = 0x136E8C408ELL;
      break;
    case 149:
      v9 = 0x122C8C010ELL;
      goto LABEL_87;
    case 150:
    case 151:
    case 152:
    case 153:
      v9 = 0x406ABCA9C00ELL;
LABEL_87:
      v0 = v9 & 0xFFFFFFFFFFFFLL | 0x2000000000000;
      break;
    case 154:
    case 155:
    case 156:
    case 157:
      v13 = 1653356026;
LABEL_47:
      v0 = (v13 & 0xFFFF0000FFFFFFFFLL | 0x200000000) - 64;
      break;
    case 168:
    case 169:
    case 170:
    case 171:
      v0 = 0x27B00537E8C35BELL;
      break;
    case 172:
    case 173:
    case 176:
    case 177:
      v17 = 0x27B00537E8C35BELL;
      goto LABEL_79;
    case 174:
    case 175:
    case 234:
    case 235:
    case 236:
    case 237:
      v0 = 0x27700537E8C35FELL;
      break;
    case 178:
    case 179:
    case 180:
    case 181:
      v0 = 0x27700537E8C37FELL;
      break;
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
    case 238:
    case 239:
    case 240:
      v7 = 2560;
      v8 = 0x27700537E8C35FELL;
LABEL_24:
      v0 = v8 | v7;
      break;
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
      v0 = 554434570;
      break;
    case 233:
      v17 = 0x24B00537E8C35BELL;
LABEL_79:
      v0 = v17 | 0x40;
      break;
    default:
      break;
  }

  if (qword_1ED519070 != -1)
  {
    dispatch_once(&qword_1ED519070, &unk_1F0E6CF28);
  }

  v21 = qword_1ED519068;
  if (os_log_type_enabled(qword_1ED519068, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v26 = "OverrideMotionCapEclipseService";
    _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v22 = sub_19B87DD40();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519070 != -1)
    {
      dispatch_once(&qword_1ED519070, &unk_1F0E6CF28);
    }

    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLMotionDefaultsWrite<BOOL>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = BOOL]", "CoreLocation: %s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  qword_1ED519210 = v0;
  v24 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B883C10()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  qword_1ED519068 = result;
  return result;
}

uint64_t CLClientGetHeading(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  v15[3] = v4;
  pthread_mutex_lock(v4);
  v16 = 257;
  sub_19B87B468(v15);
  if (a2)
  {
    v5 = *(a1 + 72);
    *a2 = *(a1 + 56);
    *(a2 + 16) = v5;
    v6 = *(a1 + 88);
    v7 = *(a1 + 104);
    v8 = *(a1 + 120);
    *(a2 + 80) = *(a1 + 136);
    *(a2 + 48) = v7;
    *(a2 + 64) = v8;
    *(a2 + 32) = v6;
    v9 = 0.0;
    if (*(a1 + 140) != 1)
    {
      v9 = *(a1 + 48);
    }

    if (*(a1 + 40) < 1)
    {
      goto LABEL_16;
    }

    v10 = v9 + *(a2 + 24);
    v11 = 360.0;
    if (v10 >= 360.0)
    {
      v10 = v10 + -360.0;
    }

    else if (v10 < 0.0)
    {
      v10 = v10 + 360.0;
    }

    *(a2 + 24) = v10;
    v12 = *(a2 + 32);
    if (v12 < 0.0)
    {
      goto LABEL_16;
    }

    v13 = v9 + v12;
    if (v13 >= 360.0)
    {
      v11 = -360.0;
    }

    else if (v13 >= 0.0)
    {
      goto LABEL_15;
    }

    v13 = v13 + v11;
LABEL_15:
    *(a2 + 32) = v13;
LABEL_16:
    a2 = 1;
  }

  sub_19B8756F0(v15);
  pthread_mutex_unlock(v4);
  return a2;
}

void sub_19B883D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

id CLCopyGnssBandsInUse()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyGnssBandsInUse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v0, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyGnssBandsInUse, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = 0;
      v6 = Count & 0x7FFFFFFF;
      do
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        v8 = valuePtr & 0xF00;
        v9 = (v8 - 256) >> 8;
        v10 = v9 > 7;
        v11 = (1 << v9) & 0x8B;
        if (v10 || v11 == 0)
        {
          if ((valuePtr & 0xF00) != 0)
          {
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
            }

            v14 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
            {
              *buf = 67240192;
              *&buf[4] = v8;
              _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "Invalid bandUse,%{public}d", buf, 8u);
            }

            v15 = sub_19B87DD40();
            if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED519088 != -1)
              {
                dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
              }

              v21 = 67240192;
              v22 = v8;
              v16 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "CFArrayRef CLCopyGnssBandsInUse(void)", "CoreLocation: %s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }
          }

          goto LABEL_21;
        }

        memset(buf, 0, 32);
        *&buf[24] = valuePtr & 0xF00;
        switch(valuePtr)
        {
          case 4u:
            *buf = 4;
            v13 = xmmword_19BA8CE00;
            break;
          case 2u:
            *buf = 2;
            v13 = xmmword_19BA8CDF0;
            break;
          case 1u:
            *buf = 1;
            v13 = xmmword_19BA8CE10;
            break;
          default:
            memset(&buf[8], 0, 20);
            goto LABEL_20;
        }

        *&buf[8] = v13;
LABEL_20:
        [v3 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", buf, "{CLGnssBandInfo=iddi}")}];
LABEL_21:
        ++v5;
      }

      while (v6 != v5);
    }

    CFRelease(v2);
  }

  os_activity_scope_leave(&state);
  v17 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_19B884254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B884280(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    *buf = 136315138;
    v19 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "#CLGNSSStateQueryAssertion,client,message,%s", buf, 0xCu);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) < 0)
    {
      v9 = *v8;
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLGNSSStateQueryAssertionResponseInternal::CLGNSSStateQueryAssertionResponseInternal(dispatch_queue_t, const char *, NSDictionary *, CLGNSSStateQueryAssertionResponseCallback)_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (*(v3 + 8))
  {
    v11 = CLConnectionMessage::name(*a2);
    if (*(v11 + 23) < 0 && *(v11 + 8) == 53 && !memcmp(*v11, "kCLConnectionMessageCLGNSSStateQueryAssertionResponse", 0x35uLL))
    {
      v12 = *(v3 + 8);
      Dictionary = CLConnectionMessage::getDictionary(*a2);
      (*(v12 + 16))(v12, Dictionary, 0);
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,#warning,client,noRegisteredCallback", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLGNSSStateQueryAssertionResponseInternal::CLGNSSStateQueryAssertionResponseInternal(dispatch_queue_t, const char *, NSDictionary *, CLGNSSStateQueryAssertionResponseCallback)_block_invoke", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void *sub_19B884630(uint64_t a1, int a2)
{
  v5 = a2;
  sub_19B87B468(v4);
  sub_19B87B384(v4, "kCLConnectionMessagePlaceInferenceFidelityPolicyKey", &v5);
  sub_19B87B6CC(a1, "kCLConnectionMessagePlaceInference", v4);
  return sub_19B8756F0(v4);
}

void sub_19B884698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B8846AC(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

uint64_t sub_19B8846FC()
{
  if (qword_1ED5191E8 != -1)
  {
    dispatch_once(&qword_1ED5191E8, &unk_1F0E6CE18);
  }

  return byte_1ED519178;
}

void *sub_19B884C9C(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 + 1;
      do
      {
        v7 ^= v5 << (v6 & 0x18);
        v9 = *v8++;
        v5 = v9;
        v6 += 8;
      }

      while (v9);
    }
  }

  entr_act_modify();
  sub_19B87B468(v12);
  v11 = 1;
  sub_19B87B7CC(v12, "kCLConnectionMessageSubscribeKey", &v11);
  if (a2)
  {
    sub_19B87B384(v12, "kCLConnectionMessageSignificantLocationVisitTypeKey", a2);
  }

  sub_19B87B6CC(a1, "kCLConnectionMessageSignificantLocationVisit", v12);
  return sub_19B8756F0(v12);
}

void sub_19B884D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void sub_19B8851A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  objc_sync_exit(v9);
  os_activity_scope_leave(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8853C4()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_copyMonitoredRegionsForBundleIdentifier_orBundlePath_);
}

uint64_t sub_19B88540C(void *a1)
{
  if (a1)
  {
    v2 = a1[30];
    v10 = v2;
    pthread_mutex_lock(v2);
    LOWORD(v11) = 257;
    v4 = a1[45];
    v3 = a1[46];
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {
      CFRetain(v3);
    }

    pthread_mutex_unlock(v2);
    v5 = sub_19B8853C4();
    if (v5)
    {
      sub_19B874A98(v9, v5);
      sub_19B87B468(v8);
      sub_19B87B468(v7);
      sub_19B92BD80(v9, "kCLConnectionMessageBeaconRegionKey", v8);
      sub_19B92BD80(v9, "kCLConnectionMessageCircularRegionKey", v7);
      v9[2] = 0;
      v10 = 0;
      v11 = 0;
      sub_19B929744(v8);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  return 0;
}

void sub_19B8856A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_19B8756F0(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B885738(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "#Spi, Invalidated", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient connection]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *(a1 + 32);
  objc_sync_enter(v5);

  *(*(a1 + 32) + 8) = 0;
  result = objc_sync_exit(v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B885924(const char *a1, int a2, int a3, signed int a4, const char *a5, char *a6, ...)
{
  va_start(va, a6);
  v12 = sub_19B87DD40();
  if (a3)
  {
    return sub_19B98D318(v12, a1, a2, a4, a5, a6, va);
  }

  else
  {
    return sub_19B885B60(v12, a1, a2, a4, a5, a6, va);
  }
}

void sub_19B8859A4(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v8 = a2;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "#Spi, Error with synchronous proxy, error: %@", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient synchronousRemoteObject]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B885B60(uint64_t a1, const char *a2, int a3, signed int a4, const char *a5, const char *a6, va_list a7, ...)
{
  v79 = *MEMORY[0x1E69E9840];
  v13 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  v14 = vsnprintf(__str, 0x1FFuLL, a6, a7);
  if ((v14 & 0x80000000) == 0)
  {
    if (v14 >= 0x1FF)
    {
      operator new[]();
    }

    v15 = v14 - 1;
    if (__str[v15] != 10)
    {
      __assert_rtn("vlog", "CLLog.mm", 173, "'\\n' == buffer[fullContentLength - 1]");
    }

    if (v14 >= 2)
    {
      v15 = v15;
      v16 = __str;
      do
      {
        if (*v16 == 10)
        {
          *v16 = 32;
        }

        ++v16;
        --v15;
      }

      while (v15);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (*(a1 + 152) == 1)
    {
      v18 = *(a1 + 200);
      v19 = sub_19B8B5220(a4);
      fprintf(v18, "%s,%s,Time,%08.3f,Function,%s,", v19, a2, Current, a5);
      fputs(__str, *(a1 + 200));
    }

    else
    {
      v20 = *(a1 + 184);
      if (v20 && *(a1 + 160) >= a4)
      {
        v21 = sub_19B8B5220(a4);
        fprintf(v20, "%s,%s,Time,%08.3f,Function,%s,", v21, a2, Current, a5);
        fputs(__str, *(a1 + 184));
        if (*(a1 + 172) >= a4)
        {
          sub_19B98D58C(a1, 3, *(a1 + 184));
        }

        v49[1] = v13;
        (*(*v13 + 16))(v13);
        v50 = 256;
        if (*(a1 + 12) >= 1)
        {
          v22 = *(a1 + 184);
          if (v22)
          {
            v23 = *(a1 + 151);
            if (v23 < 0)
            {
              v23 = *(a1 + 136);
            }

            if (v23)
            {
              v24 = *(a1 + 79);
              if (v24 < 0)
              {
                v24 = *(a1 + 64);
              }

              if (v24)
              {
                v49[0] = 0;
                fgetpos(v22, v49);
                if (v49[0] >= *(a1 + 12))
                {
                  v76 = v13;
                  (*(*v13 + 16))(v13);
                  v77 = 256;
                  sub_19B8759E8(__p, ".log");
                  v25 = sub_19BA4F4E0();
                  sub_19BA4F174((a1 + 56), a1 + 80, __p, v25, &v75);
                  if (SHIBYTE(v52) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v75.__r_.__value_.__l.__size_;
                  }

                  v27 = &v73;
                  sub_19B8D78C0(&v73, size + 4);
                  if (v74 < 0)
                  {
                    v27 = v73;
                  }

                  if (size)
                  {
                    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v28 = &v75;
                    }

                    else
                    {
                      v28 = v75.__r_.__value_.__r.__words[0];
                    }

                    memmove(v27, v28, size);
                  }

                  strcpy(v27 + size, ".bz2");
                  sub_19B98E450(a1);
                  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v29 = &v75;
                  }

                  else
                  {
                    v29 = v75.__r_.__value_.__r.__words[0];
                  }

                  v30 = getuid();
                  v31 = getgid();
                  sub_19B8B6834(v29, v30, v31);
                  v33 = (a1 + 128);
                  v34 = (a1 + 128);
                  if (*(a1 + 151) < 0)
                  {
                    v34 = *v33;
                  }

                  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v35 = &v75;
                  }

                  else
                  {
                    v35 = v75.__r_.__value_.__r.__words[0];
                  }

                  rename(v34, v35, v32);
                  if (v36)
                  {
                    v37 = SHIBYTE(v74);
                    v38 = v73;
                    v39 = __error();
                    v40 = &v73;
                    if (v37 < 0)
                    {
                      v40 = v38;
                    }

                    syslog(3, "%s,%s,Failed to move aside log file %s (%d)\n", "ERROR", "CLLog", v40, *v39);
                  }

                  if (*(a1 + 151) < 0)
                  {
                    v33 = *v33;
                  }

                  sub_19B98DE08(a1, v33);
                  if (*(a1 + 103) < 0)
                  {
                    sub_19B874C9C(&__dst, *(a1 + 80), *(a1 + 88));
                  }

                  else
                  {
                    __dst = *(a1 + 80);
                    v72 = *(a1 + 96);
                  }

                  if (*(a1 + 79) < 0)
                  {
                    sub_19B874C9C(&v69, *(a1 + 56), *(a1 + 64));
                  }

                  else
                  {
                    v69 = *(a1 + 56);
                    v70 = *(a1 + 72);
                  }

                  v41 = *(a1 + 16);
                  v67[0] = 0;
                  v67[1] = v67;
                  v67[2] = 0x2020000000;
                  v68 = 0;
                  v61[0] = MEMORY[0x1E69E9820];
                  v61[1] = 3321888768;
                  v61[2] = sub_19B98E4D0;
                  v61[3] = &unk_1F0E6DAA0;
                  v61[5] = a1;
                  if (SHIBYTE(v72) < 0)
                  {
                    sub_19B874C9C(&v62, __dst, *(&__dst + 1));
                  }

                  else
                  {
                    v62 = __dst;
                    v63 = v72;
                  }

                  v61[4] = v67;
                  v66 = v41;
                  if (SHIBYTE(v70) < 0)
                  {
                    sub_19B874C9C(&v64, v69, *(&v69 + 1));
                  }

                  else
                  {
                    v64 = v69;
                    v65 = v70;
                  }

                  v42 = *(a1 + 208);
                  __p[0] = MEMORY[0x1E69E9820];
                  __p[1] = 3321888768;
                  v52 = sub_19B98E8A8;
                  v53 = &unk_1F0E6DAD8;
                  v60 = v41;
                  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_19B874C9C(&v55, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v55 = v75;
                  }

                  if (SHIBYTE(v74) < 0)
                  {
                    sub_19B874C9C(&v56, v73, *(&v73 + 1));
                  }

                  else
                  {
                    v56 = v73;
                    v57 = v74;
                  }

                  if (SHIBYTE(v70) < 0)
                  {
                    sub_19B874C9C(&v58, v69, *(&v69 + 1));
                  }

                  else
                  {
                    v58 = v69;
                    v59 = v70;
                  }

                  v54 = v61;
                  dispatch_async(v42, __p);
                  if (SHIBYTE(v59) < 0)
                  {
                    operator delete(v58);
                  }

                  if (SHIBYTE(v57) < 0)
                  {
                    operator delete(v56);
                  }

                  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v55.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v65) < 0)
                  {
                    operator delete(v64);
                  }

                  if (SHIBYTE(v63) < 0)
                  {
                    operator delete(v62);
                  }

                  _Block_object_dispose(v67, 8);
                  if (SHIBYTE(v70) < 0)
                  {
                    operator delete(v69);
                  }

                  if (SHIBYTE(v72) < 0)
                  {
                    operator delete(__dst);
                  }

                  if (SHIBYTE(v74) < 0)
                  {
                    operator delete(v73);
                  }

                  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v75.__r_.__value_.__l.__data_);
                  }

                  (*(*v13 + 24))(v13);
                }
              }
            }
          }
        }

        (*(*v13 + 24))(v13);
      }

      v43 = *(a1 + 192);
      if (v43 && *(a1 + 164) >= a4)
      {
        v44 = sub_19B8B5220(a4);
        fprintf(v43, "%s,%s,Time,%08.3f,", v44, a2, Current);
        fputs(__str, *(a1 + 192));
      }

      if ((!a3 || *(a1 + 176)) && *(a1 + 168) >= a4)
      {
        if (a4)
        {
          v45 = 5;
        }

        else
        {
          v45 = 3;
        }

        syslog(v45, "%s", __str);
      }
    }
  }

  result = (*(*v13 + 24))(v13);
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8863A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, char a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Block_object_dispose(&a63, 8);
  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  sub_19B888D7C(&a79);
  sub_19B888D7C(&a20);
  if (v79)
  {
    MEMORY[0x19EAE98A0](v79, 0x1000C8077774924);
  }

  sub_19B888D7C(&a15);
  _Unwind_Resume(a1);
}

pthread_t sub_19B886504(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 8) + 64) assertInside];
  if (pthread_mutex_lock(*(a1 + 8)))
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
    }

    v10 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "error == 0";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v11 = off_1ED519060;
    if (os_signpost_enabled(off_1ED519060))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v12 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "error == 0";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_50;
  }

  result = pthread_self();
  v3 = *(a1 + 8);
  v4 = *(v3 + 72);
  if (v4 < 0)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
    }

    v13 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "info->fCount >= 0";
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v14 = off_1ED519060;
    if (os_signpost_enabled(off_1ED519060))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "info->fCount >= 0";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v15 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "info->fCount >= 0";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_50;
  }

  v5 = *(v3 + 80);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
    }

    v16 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v17 = off_1ED519060;
    if (os_signpost_enabled(off_1ED519060))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v18 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_50:
    abort_report_np();
  }

  if (v5 != result)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v7 = off_1ED519060;
    if (os_signpost_enabled(off_1ED519060))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v8 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_50;
  }

LABEL_17:
  *(v3 + 72) = v4 + 1;
  *(v3 + 80) = result;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B886DFC(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 8) + 64) assertInside];
  v2 = *(a1 + 8);
  v3 = *(v2 + 72);
  if (v3 <= 0)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "info->fCount > 0";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v8 = off_1ED519060;
    if (os_signpost_enabled(off_1ED519060))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "info->fCount > 0";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v9 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "info->fCount > 0";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_27:
    abort_report_np();
  }

  v4 = v3 - 1;
  *(v2 + 72) = v4;
  if (!v4)
  {
    *(v2 + 80) = 0;
  }

  result = pthread_mutex_unlock(v2);
  if (result)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
    }

    v10 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "error == 0";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v11 = off_1ED519060;
    if (os_signpost_enabled(off_1ED519060))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C4F8);
      }
    }

    v12 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "error == 0";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_27;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CLClientIsLocationServicesEnabled()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLClientIsLocationServicesEnabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v0, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v10 = 0;
    *&v10[4] = 2082;
    *&v10[6] = "";
    v11 = 2082;
    v12 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLClientIsLocationServicesEnabled, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (pthread_main_np() == 1 && sub_19B87BF68())
  {
    if (qword_1ED519100 != -1)
    {
      dispatch_once(&qword_1ED519100, &unk_1F0E6B550);
    }

    v2 = qword_1ED5190F8;
    if (os_log_type_enabled(qword_1ED5190F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *v10 = "__delegate_identifier__:Performance Diagnostics__:::____message__:";
    }
  }

  if (!sub_19B8883C8())
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#Warning CLInternalGetLocationServicesEnabled failed: could not reach daemon", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "Boolean CLClientIsLocationServicesEnabled(CLClientRef)", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  os_activity_scope_leave(&state);
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B88760C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  pthread_mutex_lock(v2);
  v3 = *(a1 + 32);
  v3[18] = 0;
  CFRelease(v3);
  return pthread_mutex_unlock(v2);
}

void sub_19B887668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void sub_19B88767C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_INFO, "received client will resign active notification", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v9 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLClientHandleWillResignActiveNotification(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  CFRetain(a2);
  v6 = a2[39];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B88760C;
  block[3] = &unk_1E753CEF0;
  block[4] = a2;
  dispatch_async(v6, block);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B887888(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryTypeBitSet,failed", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getAccessoryTypeBitSet]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    a3 = -1;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B887A4C(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLClientInterruptionHandler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    *buf = 68289538;
    v10 = 0;
    *v11 = 2082;
    *&v11[2] = "";
    v12 = 2082;
    v13 = "activity";
    v14 = 2050;
    v15 = v4;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLClientInterruptionHandler, event:%{public, location:escape_only}s, client:%{public}p}", buf, 0x26u);
  }

  v5 = a1[6];
  *v11 = v5;
  pthread_mutex_lock(v5);
  *&v11[8] = 257;
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v6 = a1[5];
    if (!_CFIsDeallocating())
    {
      CFRetain(v6);
      sub_19B874D40(v6, 32);
      CFRelease(v6);
    }
  }

  pthread_mutex_unlock(v5);
  os_activity_scope_leave(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B887BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_19B890AB0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLGetAccessoryTypeBitSet()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEBUG, "CLGetAccessoryTypeBitSet", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "int32_t CLGetAccessoryTypeBitSet()", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  result = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B888024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CLSetMapMatchingRouteHint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLSetMapMatchingRouteHint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v22 = 0;
    *&v22[4] = 2082;
    *&v22[6] = "";
    v23 = 2082;
    v24 = "activity";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetMapMatchingRouteHint, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *v22 = a4;
    *&v22[8] = 1024;
    *&v22[10] = a1;
    v23 = 1024;
    LODWORD(v24) = a2;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d,stepType,%d", buf, 0x18u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v15 = 134218496;
    v16 = a4;
    v17 = 1024;
    v18 = a1;
    v19 = 1024;
    v20 = a2;
    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLSetMapMatchingRouteHint(CLClientLocationRouteHintType, CLClientLocationRouteHintType, CLMapsRouteHint *, int)", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&state);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t CLClientGetError(void *a1, _DWORD *a2)
{
  v3 = [objc_msgSend(a1 objectForKey:{@"kCLConnectionMessageErrorKey", "intValue"}];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
  return 1;
}

uint64_t sub_19B8883C8()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_getLocationServicesEnabled_);
}

CFStringRef sub_19B888C90(CFStringRef theString)
{
  if (qword_1EAFE5B30)
  {
    CFRelease(qword_1EAFE5B30);
    qword_1EAFE5B30 = 0;
  }

  result = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
  qword_1EAFE5B30 = result;
  return result;
}

CFStringRef sub_19B888CDC(CFStringRef theString)
{
  if (qword_1EAFE5B40)
  {
    CFRelease(qword_1EAFE5B40);
    qword_1EAFE5B40 = 0;
  }

  result = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
  qword_1EAFE5B40 = result;
  return result;
}

uint64_t CLClientGetTypeID()
{
  if (qword_1ED5190F0 != -1)
  {
    dispatch_once_f(&qword_1ED5190F0, 0, sub_19B87AAF4);
  }

  return qword_1ED5190E8;
}

uint64_t *sub_19B888D7C(uint64_t *a1)
{
  if (*(a1 + 17) == 1)
  {
    if (a1[2])
    {
      pthread_mutex_unlock(a1[1]);
    }

    else
    {
      v2 = *a1;
      (*(**a1 + 24))();
    }

    *(a1 + 17) = 0;
  }

  return a1;
}

uint64_t CLClientCreateWithBundleIdentifierAndPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLClientCreateWithBundleIdentifierAndPath", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = a4;
    v22 = 2114;
    v23 = a5;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLClientCreateWithBundleIdentifierAndPath, event:%{public, location:escape_only}s, effectiveBundleIdentifier:%{public, location:escape_only}@, effectiveBundlePath:%{public, location:escape_only}@}", buf, 0x30u);
  }

  v9 = [objc_alloc(MEMORY[0x1E69AD370]) initWithCurrentRunLoopAndIdentifier:@"CLClient-runloop"];
  v10 = CLClientCreateWithBundleIdentifierAndPathWithWebsiteOnSilo();
  os_activity_scope_leave(&v13);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_19B888FB0(uint64_t a1)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_19B87E3CC;
  handler[3] = &unk_1E753CC68;
  handler[4] = *(a1 + 32);
  xpc_set_event_stream_handler("com.apple.locationd-events", MEMORY[0x1E69E96A0], handler);
}

CFStringRef sub_19B889030(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    return CFStringCreateWithFormat(v2, 0, @"<CLClient %p [%p]>", v1, v2);
  }

  return result;
}

void *sub_19B889078(uint64_t a1, const __CFString *a2)
{
  v4 = *(a1 + 240);
  v8[1] = v4;
  pthread_mutex_lock(v4);
  v9 = 257;
  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  v6 = *(a1 + 344);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 344) = 0;
  }

  *(a1 + 344) = Copy;
  pthread_mutex_unlock(v4);
  sub_19B87B468(v8);
  sub_19B87C3A4(v8, "kCLConnectionMessagePurposeKey", a2);
  sub_19B87B6CC(a1, "kCLConnectionMessagePurpose", v8);
  return sub_19B8756F0(v8);
}

void sub_19B889138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

CFTypeRef sub_19B88915C(void *a1)
{
  v1 = a1[44];
  if (!v1)
  {
    if (a1[45])
    {
      return a1[43];
    }

    v4 = a1[46];
    if (v4)
    {
      v1 = sub_19B8B8308(v4, @"NSLocationUsageDescription");
      if (!v1)
      {
        return a1[43];
      }
    }

    else
    {
      MainBundle = CFBundleGetMainBundle();
      if (!MainBundle)
      {
        return a1[43];
      }

      ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"NSLocationUsageDescription");
      if (!ValueForInfoDictionaryKey)
      {
        return a1[43];
      }

      v1 = ValueForInfoDictionaryKey;
      CFRetain(ValueForInfoDictionaryKey);
    }

    v7 = CFGetTypeID(v1);
    if (v7 == CFStringGetTypeID())
    {
      a1[44] = v1;
      return v1;
    }

    CFRelease(v1);
    return a1[43];
  }

  return v1;
}

uint64_t sub_19B889210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:a2 forKeyedSubscript:@"kCLConnectionMessageHandoffTagKey"];
  [v6 setObject:a3 forKeyedSubscript:@"kCLConnectionMessageUUIDKey"];
  v8 = *(a1 + 232);
  return sub_19B890C98(a1, "kCLConnectionMessageChangeFencesStateMatchingHandoffTags", v6);
}

uint64_t sub_19B8892F0(uint64_t result, CLConnectionMessage **a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *(result + 40);
  if (*a2)
  {
    if (!v4)
    {
      return result;
    }

    v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v6 = [CLConnectionMessage::getDictionaryOfClasses(v3 v5)];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B889478;
    v11[3] = &unk_1E753CD08;
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    v11[4] = v6;
    v11[5] = v8;
    v9 = v11;
    v10 = v7;
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    v10 = *(result + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B889418;
    v12[3] = &unk_1E753CCE0;
    v12[4] = v4;
    v9 = v12;
  }

  return [v10 async:v9];
}

uint64_t sub_19B889418(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void *sub_19B88948C(void *a1, uint64_t a2, int a3)
{
  sub_19B87B468(v7);
  sub_19B87D0EC(v7, "kCLConnectionMessagePurposeIdentifierKey", a2);
  sub_19B87EBF4(a1, a3, v7);
  return sub_19B8756F0(v7);
}

uint64_t CLClientRequestTemporaryPrecise(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:a3 forKeyedSubscript:@"kCLConnectionMessagePurposeIdentifierKey"];
  [v6 setObject:a2 forKeyedSubscript:@"kCLConnectionMessagePurposeKey"];
  v8 = *(a1 + 232);
  return sub_19B890C98(a1, "kCLConnectionMessageRequestTemporaryPrecise", v6);
}

uint64_t sub_19B8895EC(uint64_t result, CLConnectionMessage **a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *(result + 40);
  if (*a2)
  {
    if (!v4)
    {
      return result;
    }

    v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v6 = [CLConnectionMessage::getDictionaryOfClasses(v3 v5)];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B889774;
    v11[3] = &unk_1E753CD08;
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    v11[4] = v6;
    v11[5] = v8;
    v9 = v11;
    v10 = v7;
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    v10 = *(result + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B889714;
    v12[3] = &unk_1E753CCE0;
    v12[4] = v4;
    v9 = v12;
  }

  return [v10 async:v9];
}

uint64_t sub_19B889714(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t sub_19B889788(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCLConnectionMessageSubscribeKey"];
  v4 = *(a1 + 232);
  return sub_19B890C98(a1, "kCLConnectionMessageLocationPush", v2);
}

uint64_t sub_19B889848(uint64_t result, CLConnectionMessage **a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *(result + 40);
  if (*a2)
  {
    if (!v4)
    {
      return result;
    }

    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v3, v7);
    v9 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageErrorKey"];
    v10 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessagePushTokenKey"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_19B889A04;
    v15[3] = &unk_1E753CD30;
    v11 = *(v2 + 32);
    v12 = *(v2 + 40);
    v15[5] = v9;
    v15[6] = v12;
    v15[4] = v10;
    v13 = v15;
    v14 = v11;
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    v14 = *(result + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_19B8899A0;
    v16[3] = &unk_1E753CCE0;
    v16[4] = v4;
    v13 = v16;
  }

  return [v14 async:v13];
}

uint64_t sub_19B8899A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

void *sub_19B889A1C(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 0;
  sub_19B87B7CC(v4, "kCLConnectionMessageSubscribeKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessageLocationPush", v4);
  return sub_19B8756F0(v4);
}

void sub_19B889A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

uint64_t CLClientSetCallback(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  pthread_mutex_lock(v4);
  *(a1 + 248) = a2;
  return pthread_mutex_unlock(v4);
}

os_log_t sub_19B889B04()
{
  result = os_log_create("com.apple.runtime-issues", "CoreLocation");
  qword_1ED5190F8 = result;
  return result;
}

uint64_t CLClientIsAuthorizationPromptMapDisplayEnabled()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLClientIsAuthorizationPromptMapDisplayEnabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v0, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLClientIsAuthorizationPromptMapDisplayEnabled, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (!sub_19B9BDCE8())
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "#Warning CLInternalGetAuthorizationPromptMapDisplayEnabled failed: could not reach daemon", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "Boolean CLClientIsAuthorizationPromptMapDisplayEnabled()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  os_activity_scope_leave(&state);
  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B889DD4(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  v2 = dword_19BA89270[a2];
  sub_19B87BBB4();
  return (sub_19B93BE2C() >> v2) & 1;
}

uint64_t sub_19B889E20()
{
  result = CLClientIsLocationServicesEnabled();
  if (result)
  {
    sub_19B87BBB4();
    return (sub_19B93BE2C() >> 8) & 1;
  }

  return result;
}

uint64_t CLClientIsHeadingAvailable()
{
  v0 = sub_19B87AB28();
  if (v0)
  {
    sub_19B87BBB4();
  }

  return v0 & 1;
}

uint64_t CLClientShutdownDaemon()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v6 = "CLClientShutdownDaemon";
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "CLClient is deprecated. Will be obsolete soon. (%{public}s)", buf, 0xCu);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientShutdownDaemon(CLClientRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  result = sub_19B9BE64C();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CLClientLogDump(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v11 = "CLClientLogDump";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "CLClient is deprecated. Will be obsolete soon. (%{public}s)", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientLogDump(CLClientRef, const char *, Boolean)", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (a2)
  {
    v6 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a2, 0x8000100u, *MEMORY[0x1E695E498]);
    v7 = sub_19B9BE6AC();
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v7 = sub_19B9BE6AC();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CLClientGetClientDictionary(uint64_t a1)
{
  v2 = *(a1 + 240);
  pthread_mutex_lock(v2);
  if (!*(a1 + 225))
  {
    operator new();
  }

  pthread_mutex_unlock(v2);
  return 0;
}

void sub_19B88A3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  sub_19B8750F8(v21);
  sub_19B888D7C(&a13);
  _Unwind_Resume(a1);
}

uint64_t CLClientRetrievePrecisionPermission(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_19B9BE048(*(a1 + 360), *(a1 + 368), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t CLClientRetrieveAuthorizationStatus(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_19B87DBA8(*(a1 + 360), *(a1 + 368), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t CLClientRetrieveAuthorizationStatusForIdentity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!(a1 | a2))
  {
    a1 = qword_1EAFE5B30;
    a2 = qword_1EAFE5B40;
  }

  return sub_19B87DBA8(a1, a2, a3);
}

void *sub_19B88A4D4(uint64_t a1, int a2)
{
  sub_19B87B468(v6);
  v5 = a2;
  sub_19B87B384(v6, "kCLConnectionMessageEnabledKey", &v5);
  sub_19B87B6CC(a1, "kCLConnectionMessageIsActuallyAWatchKitExtension", v6);
  return sub_19B8756F0(v6);
}

void sub_19B88A540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientSetProxyForRemoteClient(uint64_t a1, int a2)
{
  sub_19B87B468(v6);
  v5 = a2;
  sub_19B87B384(v6, "kCLConnectionMessageEnabledKey", &v5);
  sub_19B87B6CC(a1, "kCLConnectionMessageProxyForRemoteClient", v6);
  return sub_19B8756F0(v6);
}

void sub_19B88A5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientStopHeadingUpdates(uint64_t a1)
{
  if ((*(a1 + 392) & 2) != 0)
  {
    entr_act_end();
    *(a1 + 392) &= ~2u;
  }

  if (!*(a1 + 24))
  {
    CLClientShowHeadingCalibration(a1, 0);
  }

  *(a1 + 24) = 0;
  sub_19B87B468(v9);
  v8 = 0;
  sub_19B87B7CC(v9, "kCLConnectionMessageSubscribeKey", &v8);
  sub_19B87B6CC(a1, "kCLConnectionMessageHeading", v9);
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 96) = _Q0;
  *(a1 + 140) = -1;
  return sub_19B8756F0(v9);
}

void sub_19B88A698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B88A6C0(uint64_t a1)
{
  v2 = *(a1 + 384);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      v5 = 0;
      v6 = v2 + 1;
      do
      {
        v5 ^= v3 << (v4 & 0x18);
        v7 = *v6++;
        v3 = v7;
        v4 += 8;
      }

      while (v7);
    }
  }

  entr_act_modify();
  sub_19B87B468(v10);
  v9 = 0;
  sub_19B87B7CC(v10, "kCLConnectionMessageSubscribeKey", &v9);
  sub_19B87B6CC(a1, "kCLConnectionMessageSignificantLocationChange", v10);
  return sub_19B8756F0(v10);
}

void sub_19B88A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B88A790(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 0;
  sub_19B87B7CC(v4, "kCLConnectionMessagePlaceInferenceStopKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessagePlaceInferenceStop", v4);
  return sub_19B8756F0(v4);
}

void sub_19B88A7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B88A810(uint64_t a1)
{
  v2 = *(a1 + 384);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      v5 = 0;
      v6 = v2 + 1;
      do
      {
        v5 ^= v3 << (v4 & 0x18);
        v7 = *v6++;
        v3 = v7;
        v4 += 8;
      }

      while (v7);
    }
  }

  entr_act_modify();
  sub_19B87B468(v10);
  v9 = 0;
  sub_19B87B7CC(v10, "kCLConnectionMessageSubscribeKey", &v9);
  sub_19B87B6CC(a1, "kCLConnectionMessageSignificantLocationVisit", v10);
  return sub_19B8756F0(v10);
}

void sub_19B88A8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B88A8E0(uint64_t a1)
{
  v2 = *(a1 + 384);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      v5 = 0;
      v6 = v2 + 1;
      do
      {
        v5 ^= v3 << (v4 & 0x18);
        v7 = *v6++;
        v3 = v7;
        v4 += 8;
      }

      while (v7);
    }
  }

  entr_act_modify();
  sub_19B87B468(v9);
  sub_19B87B6CC(a1, "kCLConnectionMessageSignificantLocationVisitState", v9);
  return sub_19B8756F0(v9);
}

uint64_t sub_19B88A994(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = [a2 type];
  result = sub_19B889DD4(v4, v4);
  if (result)
  {
    sub_19B87B468(v23);
    sub_19B88AB18(v23, a2);
    v22 = 1;
    sub_19B87B7CC(v23, "kCLConnectionMessageSubscribeKey", &v22);
    v6 = *(a1 + 384);
    if (v6 && (v7 = *v6, *v6))
    {
      v8 = 0;
      v9 = 0;
      v10 = v6 + 1;
      do
      {
        v9 ^= v7 << (v8 & 0x18);
        v11 = *v10++;
        v7 = v11;
        v8 += 8;
      }

      while (v11);
    }

    else
    {
      v9 = 0;
    }

    v12 = [objc_msgSend(a2 "identifier")];
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = 0;
        v15 = v12 + 1;
        do
        {
          v9 ^= v13 << (v14 & 0x18);
          v16 = *v15++;
          v13 = v16;
          v14 += 8;
        }

        while (v16);
      }
    }

    v17 = [objc_msgSend(a2 "onBehalfOfBundleId")];
    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        v19 = 0;
        v20 = v17 + 1;
        do
        {
          v9 ^= v18 << (v19 & 0x18);
          v21 = *v20++;
          v18 = v21;
          v19 += 8;
        }

        while (v21);
      }
    }

    entr_act_modify();
    sub_19B87B6CC(a1, "kCLConnectionMessageRegionMonitoring", v23);
    sub_19B8756F0(v23);
    return 1;
  }

  return result;
}

void sub_19B88AB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void sub_19B88AB18(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  sub_19B87C3A4(a1, "kCLConnectionMessageNameKey", [a2 identifier]);
  if ([a2 onBehalfOfBundleId])
  {
    sub_19B87C3A4(a1, "kCLConnectionMessageOnBehalfOfKey", [a2 onBehalfOfBundleId]);
  }

  buf[0] = [a2 notifyOnEntry];
  sub_19B87B7CC(a1, "kCLConnectionMessageNotifyOnEntryKey", buf);
  buf[0] = [a2 notifyOnExit];
  sub_19B87B7CC(a1, "kCLConnectionMessageNotifyOnExitKey", buf);
  buf[0] = [a2 conservativeEntry];
  sub_19B87B7CC(a1, "kCLConnectionMessageConservativeEntry", buf);
  buf[0] = [a2 emergency];
  sub_19B87B7CC(a1, "kCLConnectionMessageEmergencyKey", buf);
  v4 = [objc_msgSend(a2 "deviceId")];
  if (v4)
  {
    v5 = [v4 UTF8String];
  }

  else
  {
    v5 = "";
  }

  sub_19B92E6C8(a1, "kCLConnectionMessageDeviceIDKey", v5);
  if ([a2 handoffTag])
  {
    v6 = [objc_msgSend(a2 "handoffTag")];
  }

  else
  {
    v6 = "";
  }

  sub_19B92E6C8(a1, "kCLConnectionMessageHandoffTagKey", v6);
  *buf = [a2 type];
  sub_19B87B384(a1, "kCLConnectionMessageRegionTypeKey", buf);
  v7 = [a2 type];
  if (v7 <= 1)
  {
    if (!v7)
    {
      *buf = [a2 definitionMask];
      sub_19B87B384(a1, "kCLConnectionMessageRegionDefinitionKey", buf);
      v15 = [objc_msgSend(a2 "UUID")];
      if (v15)
      {
        sub_19B87C3A4(a1, "kCLConnectionMessageProximityUUIDKey", v15);
      }

      else
      {
        sub_19B92E6C8(a1, "kCLConnectionMessageProximityUUIDKey", "");
      }

      *buf = [objc_msgSend(a2 "major")];
      sub_19B92D79C(a1, "kCLConnectionMessageMajorKey", buf);
      *buf = [objc_msgSend(a2 "minor")];
      sub_19B92D79C(a1, "kCLConnectionMessageMinorKey", buf);
      buf[0] = [a2 notifyEntryStateOnDisplay];
      v14 = "kCLConnectionMessageNotifyEntryStateOnDisplayKey";
      goto LABEL_29;
    }

    if (v7 != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if (v7 == 2)
  {
    v16 = [a2 vertices];
    v23 = [v16 count];
    v22 = 0;
    v17 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v22];
    if (!v22)
    {
      v20 = v17;
      sub_19B87B384(a1, "kCLConnectionMessagePolygonalVerticesCountKey", &v23);
      sub_19B87D0EC(a1, "kCLConnectionMessagePolygonalVerticesKey", v20);
      *buf = [a2 referenceFrame];
      sub_19B87B384(a1, "kCLConnectionMessageReferenceFrameKey", buf);
      buf[0] = [a2 allowMonitoringWhileNearby];
      v14 = "kCLConnectionMessageMonitoringNearby";
      goto LABEL_29;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v25[0]) = 2082;
      *(v25 + 2) = "";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Unable to encode vertices for polygonal region}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }
    }

    v19 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v25[0]) = 2082;
      *(v25 + 2) = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to encode vertices for polygonal region", "{msg%{public}.0s:Unable to encode vertices for polygonal region}", buf, 0x12u);
    }
  }

  else if (v7 == 3)
  {
LABEL_15:
    [a2 center];
    *buf = v8;
    v25[0] = v9;
    sub_19B87D390(a1, "kCLConnectionMessageLatitudeKey", buf);
    [a2 center];
    *buf = v10;
    v25[0] = v11;
    sub_19B87D390(a1, "kCLConnectionMessageLongitudeKey", v25);
    [a2 radius];
    *buf = v12;
    sub_19B87D390(a1, "kCLConnectionMessageRadiusKey", buf);
    [a2 desiredAccuracy];
    *buf = v13;
    sub_19B87D390(a1, "kCLConnectionMessageDesiredAccuracyKey", buf);
    *buf = [a2 referenceFrame];
    sub_19B87B384(a1, "kCLConnectionMessageReferenceFrameKey", buf);
    buf[0] = [a2 allowMonitoringWhileNearby];
    sub_19B87B7CC(a1, "kCLConnectionMessageMonitoringNearby", buf);
    buf[0] = [a2 isLowPower];
    v14 = "kCLConnectionMessageLowPowerFenceKey";
LABEL_29:
    sub_19B87B7CC(a1, v14, buf);
  }

LABEL_30:
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B88B04C(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = [a2 type];
  result = sub_19B889DD4(v4, v4);
  if (result)
  {
    sub_19B87B468(v23);
    sub_19B88AB18(v23, a2);
    v22 = 0;
    sub_19B87B7CC(v23, "kCLConnectionMessageSubscribeKey", &v22);
    v6 = *(a1 + 384);
    if (v6 && (v7 = *v6, *v6))
    {
      v8 = 0;
      v9 = 0;
      v10 = v6 + 1;
      do
      {
        v9 ^= v7 << (v8 & 0x18);
        v11 = *v10++;
        v7 = v11;
        v8 += 8;
      }

      while (v11);
    }

    else
    {
      v9 = 0;
    }

    v12 = [objc_msgSend(a2 "identifier")];
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = 0;
        v15 = v12 + 1;
        do
        {
          v9 ^= v13 << (v14 & 0x18);
          v16 = *v15++;
          v13 = v16;
          v14 += 8;
        }

        while (v16);
      }
    }

    v17 = [objc_msgSend(a2 "onBehalfOfBundleId")];
    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        v19 = 0;
        v20 = v17 + 1;
        do
        {
          v9 ^= v18 << (v19 & 0x18);
          v21 = *v20++;
          v18 = v21;
          v19 += 8;
        }

        while (v21);
      }
    }

    entr_act_modify();
    sub_19B87B6CC(a1, "kCLConnectionMessageRegionMonitoring", v23);
    sub_19B8756F0(v23);
    return 1;
  }

  return result;
}