void sub_19B6EDE50(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6EDEE4;
  v7[3] = &unk_1E7534FF0;
  v7[4] = *(a1 + 32);
  v7[5] = a2;
  v8 = a3;
  sub_19B420C9C(v6, v7);
}

uint64_t sub_19B6EDEE4(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = result;
    v5 = objc_msgSend_clientDevices(*(result + 32), a2, a3);
    result = objc_msgSend_count(v5, v6, v7);
    if (result)
    {
      v8 = *(v4 + 40);
      v9 = *(v4 + 48);

      return MEMORY[0x1EEE66B58](v3, sel_updateClientDeviceWithHidDevice_added_, v8);
    }
  }

  return result;
}

uint64_t sub_19B6EE040(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = result;
    objc_msgSend_delegate(*(result + 32), a2, a3);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v7 = objc_msgSend_delegate(v3, v5, v6);
      v8 = *(v4 + 40);
      v9 = *(v4 + 48);

      return MEMORY[0x1EEE66B58](v7, sel_monitorUpdateForDevice_added_, v8);
    }
  }

  return result;
}

void sub_19B6EE2A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    if (objc_msgSend_hidDevice(*(a1 + 40), a2, a3))
    {
      objc_msgSend_delegate(*(a1 + 48), v9, v10);
      if (objc_opt_respondsToSelector())
      {
        if (objc_msgSend_delegateQueue(*(a1 + 48), v11, v12))
        {
          v15 = objc_msgSend_delegateQueue(*(a1 + 48), v13, v14);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_19B6EE374;
          block[3] = &unk_1E7535040;
          block[4] = a6;
          block[5] = v6;
          block[6] = *(a1 + 40);
          dispatch_async(v15, block);
        }
      }
    }
  }
}

void sub_19B6EE374(uint64_t a1, const char *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  memset(v30, 0, sizeof(v30));
  if (objc_msgSend_length(*(a1 + 32), a2, a3) < 0x81)
  {
    v14 = *(a1 + 32);
    v15 = objc_msgSend_length(v14, v4, v5);
    objc_msgSend_getBytes_length_(v14, v16, v30, v15);
    v19 = objc_msgSend_delegate(*(a1 + 40), v17, v18);
    v20 = *(a1 + 48);
    v23 = objc_msgSend_length(*(a1 + 32), v21, v22);
    objc_msgSend_inputReportForDevice_report_length_(v19, v24, v20, v30, v23);
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
    }

    v6 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v9 = objc_msgSend_length(*(a1 + 32), v7, v8);
      *buf = 134218240;
      v27 = v9;
      v28 = 2048;
      v29 = 128;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "[CLHidManager], HID report length %lu exceeds %zu byte maximum", buf, 0x16u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
      }

      objc_msgSend_length(*(a1 + 32), v11, v12);
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLHidManager activateClientDevice:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_19B6EED90(uint64_t a1)
{
  sub_19B780E7C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6F0310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6F04F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6F06E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6F0974()
{
  result = os_log_create("com.apple.locationd.Motion", "Health");
  qword_1EAFE2A00 = result;
  return result;
}

void ***sub_19B6F09A4(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    sub_19B688964(&v3);
    return MEMORY[0x19EAE76F0](v2, 0x20C40960023A9);
  }

  return result;
}

void sub_19B6F1438(uint64_t a1, CLConnectionMessage **a2)
{
  v38 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v5 = Weak;
    if (Weak[3])
    {
      v6 = *a2;
      if (v6)
      {
        v7 = MEMORY[0x1E695DFD8];
        v8 = objc_opt_class();
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
        DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v6, v12);
        v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
        v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v16, @"CMDeviceImpactData");
        if (v15)
        {
          if (qword_1EAFE2AF8 != -1)
          {
            dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
          }

          v18 = qword_1EAFE2B00;
          if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67240192;
            v37 = objc_msgSend_intValue(v15, v19, v20);
            _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[CMDeviceImpactManager] Error occurred while trying to retrieve device impact update: CMErrorDomain Code %{public}d", buf, 8u);
          }

          v21 = sub_19B420058();
          if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2AF8 != -1)
            {
              dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
            }

            v34 = 67240192;
            v35 = objc_msgSend_intValue(v15, v22, v23);
            v24 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceImpactManager init]_block_invoke", "CoreLocation: %s\n", v24);
            if (v24 != buf)
            {
LABEL_16:
              free(v24);
            }
          }
        }

        else
        {
          v25 = v17;
          if (v17)
          {
            v27 = v5[3];
            v26 = v5[4];
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = sub_19B6F1894;
            v32[3] = &unk_1E7532C30;
            objc_copyWeak(&v33, (a1 + 32));
            v32[4] = v25;
            v32[5] = v27;
            objc_msgSend_addOperationWithBlock_(v26, v28, v32);
            objc_destroyWeak(&v33);
            goto LABEL_19;
          }

          if (qword_1EAFE2AF8 != -1)
          {
            dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
          }

          v30 = qword_1EAFE2B00;
          if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "[CMDeviceImpactManager] Failed to parse kCLConnectionMessageDeviceImpactUpdate message", buf, 2u);
          }

          v31 = sub_19B420058();
          if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2AF8 != -1)
            {
              dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
            }

            LOWORD(v34) = 0;
            v24 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDeviceImpactManager init]_block_invoke", "CoreLocation: %s\n", v24);
            if (v24 != buf)
            {
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

LABEL_19:
  v29 = *MEMORY[0x1E69E9840];
}

id sub_19B6F1894(uint64_t a1)
{
  result = objc_loadWeak((a1 + 48));
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

void sub_19B6F1D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  v18 = *(v16 - 32);
  if (v18)
  {
    sub_19B41FFEC(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6F1D60(uint64_t a1, CLConnectionMessage **a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v4, v9, v5, v6, v7, v8, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
    if (qword_1EAFE2AF8 != -1)
    {
      dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
    }

    v12 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMDeviceImpactArray");
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[CMDeviceImpactManager] query completed, impacts = %{public}@", buf, 0xCu);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || (*(v14 + 152) & 1) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }

      objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v16, @"CMDeviceImpactArray");
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceImpactManager queryDeviceImpactsWithCompletion:]_block_invoke", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = *(a1 + 32);
    v19 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v15, @"CMDeviceImpactArray");
    result = (*(v18 + 16))(v18, v19);
  }

  else
  {
    if (qword_1EAFE2AF8 != -1)
    {
      dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
    }

    v21 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "[CMDeviceImpactManager] query failed", buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }

      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDeviceImpactManager queryDeviceImpactsWithCompletion:]_block_invoke", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    result = (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_19B6F249C(uint64_t a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 24);
  if (!v3)
  {
    v9 = @"kCLConnectionMessageSubscribeKey";
    v10[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
    sub_19B5D379C();
  }

  _Block_release(v3);

  v4 = _Block_copy(*(a1 + 48));
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(v6 + 24) = v4;
  result = v5[1];
  *(*v5 + 4) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6F25C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6F28A8(uint64_t result, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 24))
  {
    v3 = @"kCLConnectionMessageSubscribeKey";
    v4[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
    sub_19B5D379C();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6F29C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6F2D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  v18 = *(v16 - 32);
  if (v18)
  {
    sub_19B41FFEC(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6F2DB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_19B6F30A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"TimeOffset";
  v4 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(a1 + 48));
  v8[1] = @"PeakAcceleration";
  v9[0] = v4;
  v9[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v5, v6, *(a1 + 56));
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v9, v8, 2);
  sub_19B67D694();
}

void sub_19B6F31F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6F321C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

os_log_t sub_19B6F3240()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceImpact");
  qword_1EAFE2B00 = result;
  return result;
}

void *sub_19B6F32E4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6F3340((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6F3340(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6F3398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6F3630(uint64_t a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_1F0E342D8;
  objc_msgSend_invalidate(*(a1 + 48), a2, a3);

  sub_19B6F37F4(a1 + 80, *(a1 + 88));
  sub_19B6F3854(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

_BYTE *sub_19B6F36B4@<X0>(_DWORD *a1@<X1>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x20uLL, "%d", *a1);
  result = sub_19B428B50(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6F3734(uint64_t a1, const char *a2)
{
  sub_19B6F38EC(a1, a2);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6F376C(uint64_t a1, int a2, void *a3)
{
  result = sub_19B6EC8DC(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

os_log_t sub_19B6F37BC()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

void sub_19B6F37F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B6F37F4(a1, *a2);
    sub_19B6F37F4(a1, a2[1]);
    sub_19B654634((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_19B6F3854(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B6F3854(a1, *a2);
    sub_19B6F3854(a1, a2[1]);
    sub_19B65568C((a2 + 4));

    operator delete(a2);
  }
}

void sub_19B6F38B4(uint64_t a1, const char *a2)
{
  sub_19B6F38EC(a1, a2);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6F38EC(uint64_t a1, const char *a2)
{
  *a1 = &unk_1F0E32D08;
  v3 = (a1 + 8);
  objc_msgSend_forget_(*(a1 + 16), a2, *(a1 + 8));

  objc_msgSend_invalidate(*v3, v4, v5);
  *v3 = 0;
  *(a1 + 16) = 0;
  return a1;
}

BOOL sub_19B6F395C()
{
  v0 = objc_autoreleasePoolPush();
  sub_19B6F39A4();
  v1 = qword_1EAFE3B20 != 0;
  objc_msgSend_showCalibrationAlert(qword_1EAFE3B20, v2, v3);
  objc_autoreleasePoolPop(v0);
  return v1;
}

void sub_19B6F39A4()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE39E8)
  {
    goto LABEL_2;
  }

  qword_1EAFE39E8 = dlopen("/System/Library/PrivateFrameworks/CompassUI.framework/CompassUI", 1);
  if (qword_1EAFE39E8)
  {
    qword_1EAFE3B20 = NSClassFromString(&cfstr_Cuicalibration.isa);
    if (!qword_1EAFE3B20)
    {
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E29CC0);
      }

      v1 = qword_1ED71C7E0;
      if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_FAULT, "Could not load CUICalibrationClass from CompassUI framework", buf, 2u);
      }

      v2 = sub_19B420058();
      if ((*(v2 + 160) & 0x80000000) == 0 || (*(v2 + 164) & 0x80000000) == 0 || (*(v2 + 168) & 0x80000000) == 0 || *(v2 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7D0 == -1)
        {
LABEL_22:
          v5 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLClientLoadCompassUIIfNecessary(void)", "CoreLocation: %s\n", v5);
          if (v5 != buf)
          {
            free(v5);
          }

          goto LABEL_2;
        }

LABEL_28:
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E29CC0);
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E29CC0);
    }

    v3 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unable to load CompassUI framework", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

LABEL_2:
  v0 = *MEMORY[0x1E69E9840];
}

void sub_19B6F3C6C()
{
  v0 = objc_autoreleasePoolPush();
  sub_19B6F39A4();
  objc_msgSend_dismissCalibrationAlert(qword_1EAFE3B20, v1, v2);

  objc_autoreleasePoolPop(v0);
}

os_log_t sub_19B6F3CB4()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED71C7E0 = result;
  return result;
}

BOOL sub_19B6F404C(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 35)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 19083328;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 33);
    *(a2 + 33) = v6 | (v5 << 8);
    *a4 = 35;
  }

  return a3 > 34;
}

BOOL sub_19B6F40F8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 35)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 35 && v5[3] == 1)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      v6 = a4 + 33;
      *(a1 + 40) = *(v5 + 29);
      if (a4 < -32)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F41EC(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 41)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 49);
    if (*(a1 + 50))
    {
      v7 |= 2u;
    }

    *a2 = 36253760;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    *(a2 + 33) = *(a1 + 44);
    *(a2 + 37) = *(a1 + 48);
    *(a2 + 38) = v7;
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 39);
    *(a2 + 39) = v6 | (v5 << 8);
    *a4 = 41;
  }

  return a3 > 40;
}

BOOL sub_19B6F42C0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 41)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 41 && v5[3] == 2)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      *(a1 + 40) = *(v5 + 29);
      *(a1 + 44) = *(v5 + 33);
      *(a1 + 48) = v5[37];
      v6 = v5[38];
      v7 = a4 + 39;
      *(a1 + 49) = v6 & 1;
      *(a1 + 50) = (v6 & 2) != 0;
      if (a4 < -38)
      {
        v12 = 0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = *v5++;
          v9 = (v9 + v11) % 0xFF;
          v8 = (v9 + v8) % 0xFF;
          --v10;
        }

        while (v10);
        v12 = v9 | (v8 << 8);
      }

      v14 = *(v7 + a2);
      *(a1 + 16) = v14;
      return v14 == v12;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F43D8(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 19)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 101920832;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 20);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 17);
    *(a2 + 17) = v6 | (v5 << 8);
    *a4 = 19;
  }

  return a3 > 18;
}

BOOL sub_19B6F446C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 19)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 19 && v5[3] == 6)
    {
      *(a1 + 8) = *(v5 + 5);
      v6 = a4 + 17;
      *(a1 + 20) = *(v5 + 13);
      if (a4 < -16)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4548(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 40)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 203960384;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 20);
    *(a2 + 17) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 28);
    *(a2 + 25) = *(a1 + 32);
    *(a2 + 29) = *(a1 + 36);
    *(a2 + 33) = *(a1 + 40);
    *(a2 + 37) = *(a1 + 44);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 38);
    *(a2 + 38) = v6 | (v5 << 8);
    *a4 = 40;
  }

  return a3 > 39;
}

BOOL sub_19B6F460C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 40)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 40 && v5[3] == 12)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 20) = *(v5 + 13);
      *(a1 + 24) = *(v5 + 17);
      *(a1 + 28) = *(v5 + 21);
      *(a1 + 32) = *(v5 + 25);
      *(a1 + 36) = *(v5 + 29);
      *(a1 + 40) = *(v5 + 33);
      *(a1 + 44) = v5[37];
      v6 = a4 + 38;
      if (a4 < -37)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4718(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 20)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 303312960;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 20);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 18);
    *(a2 + 18) = v6 | (v5 << 8);
    *a4 = 20;
  }

  return a3 > 19;
}

BOOL sub_19B6F47AC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 20)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 20 && v5[3] == 18)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 20) = *(v5 + 13);
      v6 = a4 + 18;
      if (a4 < -17)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4888(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 35)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 52637760;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 33);
    *(a2 + 33) = v6 | (v5 << 8);
    *a4 = 35;
  }

  return a3 > 34;
}

BOOL sub_19B6F4934(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 35)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 35 && v5[3] == 3)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      v6 = a4 + 33;
      *(a1 + 40) = *(v5 + 29);
      if (a4 < -32)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4A28(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 72)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 71839808;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    *(a2 + 33) = *(a1 + 44);
    *(a2 + 37) = *(a1 + 48);
    *(a2 + 41) = *(a1 + 52);
    *(a2 + 45) = *(a1 + 56);
    *(a2 + 49) = *(a1 + 60);
    *(a2 + 53) = *(a1 + 64);
    *(a2 + 57) = *(a1 + 68);
    *(a2 + 58) = *(a1 + 72);
    *(a2 + 62) = *(a1 + 76);
    *(a2 + 66) = *(a1 + 80);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 70);
    *(a2 + 70) = v6 | (v5 << 8);
    *a4 = 72;
  }

  return a3 > 71;
}

BOOL sub_19B6F4B24(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 72)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 72 && v5[3] == 4)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      *(a1 + 40) = *(v5 + 29);
      *(a1 + 44) = *(v5 + 33);
      *(a1 + 48) = *(v5 + 37);
      *(a1 + 52) = *(v5 + 41);
      *(a1 + 56) = *(v5 + 45);
      *(a1 + 60) = *(v5 + 49);
      *(a1 + 64) = *(v5 + 53);
      *(a1 + 68) = v5[57];
      *(a1 + 72) = *(v5 + 58);
      *(a1 + 76) = *(v5 + 62);
      v6 = a4 + 70;
      *(a1 + 80) = *(v5 + 66);
      if (a4 < -69)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4C68(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 24)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 186134592;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 22);
    *(a2 + 22) = v6 | (v5 << 8);
    *a4 = 24;
  }

  return a3 > 23;
}

BOOL sub_19B6F4D04(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 24)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 24 && v5[3] == 11)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = v5[21];
      v6 = a4 + 22;
      if (a4 < -21)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4DE8(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 102)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 90583104;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    *(a2 + 33) = *(a1 + 44);
    *(a2 + 37) = *(a1 + 48);
    *(a2 + 41) = *(a1 + 52);
    *(a2 + 45) = *(a1 + 56);
    *(a2 + 49) = *(a1 + 60);
    *(a2 + 53) = *(a1 + 64);
    *(a2 + 57) = *(a1 + 68);
    *(a2 + 61) = *(a1 + 72);
    *(a2 + 65) = *(a1 + 76);
    *(a2 + 69) = *(a1 + 80);
    *(a2 + 73) = *(a1 + 84);
    *(a2 + 74) = *(a1 + 88);
    *(a2 + 78) = *(a1 + 92);
    *(a2 + 82) = *(a1 + 96);
    *(a2 + 86) = *(a1 + 100);
    *(a2 + 90) = *(a1 + 104);
    *(a2 + 94) = *(a1 + 108);
    *(a2 + 98) = *(a1 + 112);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 100);
    *(a2 + 100) = v6 | (v5 << 8);
    *a4 = 102;
  }

  return a3 > 101;
}

BOOL sub_19B6F4F24(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 102)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 102 && v5[3] == 5)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      *(a1 + 40) = *(v5 + 29);
      *(a1 + 44) = *(v5 + 33);
      *(a1 + 48) = *(v5 + 37);
      *(a1 + 52) = *(v5 + 41);
      *(a1 + 56) = *(v5 + 45);
      *(a1 + 60) = *(v5 + 49);
      *(a1 + 64) = *(v5 + 53);
      *(a1 + 68) = *(v5 + 57);
      *(a1 + 72) = *(v5 + 61);
      *(a1 + 76) = *(v5 + 65);
      *(a1 + 80) = *(v5 + 69);
      *(a1 + 84) = v5[73];
      *(a1 + 88) = *(v5 + 74);
      *(a1 + 92) = *(v5 + 78);
      *(a1 + 96) = *(v5 + 82);
      *(a1 + 100) = *(v5 + 86);
      *(a1 + 104) = *(v5 + 90);
      *(a1 + 108) = *(v5 + 94);
      *(a1 + 112) = *(v5 + 49);
      v6 = a4 + 100;
      if (a4 < -99)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F50A8(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 31)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 270479424;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 29);
    *(a2 + 29) = v6 | (v5 << 8);
    *a4 = 31;
  }

  return a3 > 30;
}

BOOL sub_19B6F514C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 31)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 31 && v5[3] == 16)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      v6 = a4 + 29;
      *(a1 + 36) = *(v5 + 25);
      if (a4 < -28)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

std::string *sub_19B6F5238(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,Accelerometer,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20lf", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24));
  result = sub_19B43212C(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *sub_19B6F52D8(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,Gyro,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f,subType,%d,sampleNum%%3,%d,triggerEnabled,%d,triggerOn,%d", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24), *(a1 + 44), *(a1 + 48), *(a1 + 49), *(a1 + 50));
  result = sub_19B43212C(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *sub_19B6F5390(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,GyroTemperature,temperature,%f", *(a1 + 8), *(a1 + 20));
  result = sub_19B43212C(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *sub_19B6F5418(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,GyroBias,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,variance.x,%20.20f,variance.y,%20.20f,variance.z,%20.20f,doingBiasEstimation,%d", *(a1 + 8), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44));
  result = sub_19B43212C(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *sub_19B6F54D0(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,GyroDt,dt,%20.20f", *(a1 + 8), *(a1 + 20));
  result = sub_19B43212C(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *sub_19B6F5558(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,Magnetometer,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20lf", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24));
  result = sub_19B43212C(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *sub_19B6F55F8(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,Compass,magneticHeading,%20.20f,trueHeading,%20.20f,accuracy,%20.20f,magneticField.x,%20.20f,magneticField.y,%20.20f,magneticField.z,%20.20f,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,level,%d,magnitude,%20.20f,inclination,%20.20f,horizontal,%20.20f,timestamp,%20.20f", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 24));
  result = sub_19B43212C(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *sub_19B6F56E8(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,CompassAlignment,compassJustAlignedToStableField,%d,timestamp,%20.20f", *(a1 + 8), *(a1 + 32), *(a1 + 24));
  result = sub_19B43212C(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *sub_19B6F5778(uint64_t a1, std::string *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 112);
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,DeviceMotion,q.x,%20.20f,q.y,%20.20f,q.z,%20.20f,q.w,%20.20f,userAccel.x,%20.20f,userAccel.y,%20.20f,userAccel.z,%20.20f,rotationRate.x,%20.20f,rotationRate.y,%20.20f,rotationRate.z,%20.20f,magneticField.x,%20.20f,magneticField.y,%20.20f,magneticField.z,%20.20f,magneticFieldCalibrationLevel,%d,heading,%.3f,trueheading,%.3f,accuracy,%.3f,variant,%d,mode,%d,clientID,%#02x,biasEstimation,%d,yawCorrection,%d,gravityCorrection,%d,courseCorrection,%d,visualLocalizationCorrection,%d,initialized,%d,accelSaturated,%d,gyroSaturated,%d,compassCalibration,%d,gyroCalibration,%d,course,%d,gmm,%d,north,%d,visualLocalization,%d,timestamp,%20.20f", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 84), *(a1 + 88), *(a1 + 92), *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 108), (v3 >> 4) & 1, (v3 >> 3) & 1, (v3 >> 2) & 1, (v3 >> 5) & 1, (v3 >> 6) & 1, (v3 >> 8) & 1, (v3 >> 1) & 1, v3 & 1, (v3 >> 10) & 1, (v3 >> 9) & 1, (v3 >> 11) & 1, (v3 >> 12) & 1, (v3 >> 13) & 1, (v3 >> 14) & 1, *(a1 + 24));
  result = sub_19B43212C(a2, __str);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *sub_19B6F58F4(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,PressureFiltered,pressure,%20.20f,temperature,%20.20f,timestamp,%20.20lf", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 24));
  result = sub_19B43212C(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6F5BB4(_Unwind_Exception *a1)
{
  v5 = *(v3 + 904);
  *(v3 + 904) = 0;
  if (v5)
  {
    *(v5 + 5928) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  v6 = *(v1 + 37760);
  *(v1 + 37760) = 0;
  if (v6)
  {
    *(v6 + 7576) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  sub_19B6F68C8((v1 + 37744), 0);
  v7 = *(v1 + v2);
  *(v1 + v2) = 0;
  if (v7)
  {
    v8 = *(v7 + 96);
    if (v8)
    {
      *(v8 + 10912) = 0u;
    }

    MEMORY[0x19EAE76F0]();
  }

  sub_19B69ACA4((v1 + 27784));
  sub_19B69AD20(v1 + 24);
  _Unwind_Resume(a1);
}

void sub_19B6F5C84(uint64_t a1, unsigned int a2)
{
  sub_19B68F590(a1, a2);
  if (!*(a1 + 37736) || (*(a1 + 17) & 1) == 0)
  {

    sub_19B6F5E40(a1);
  }
}

uint64_t sub_19B6F5CE0(uint64_t a1)
{
  v2 = (a1 + 36864);
  v3 = *(a1 + 37736);
  v2[109] = 0;
  if (v3)
  {
    v4 = *(v3 + 96);
    if (v4)
    {
      *(v4 + 10912) = 0u;
    }

    MEMORY[0x19EAE76F0]();
  }

  v5 = v2[112];
  v2[112] = 0;
  if (v5)
  {
    *(v5 + 7576) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  v6 = v2[113];
  v2[113] = 0;
  if (v6)
  {
    *(v6 + 5928) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  sub_19B6F68C8((a1 + 37744), 0);
  v7 = v2[113];
  v2[113] = 0;
  if (v7)
  {
    *(v7 + 5928) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  v8 = v2[112];
  v2[112] = 0;
  if (v8)
  {
    *(v8 + 7576) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  sub_19B6F68C8((a1 + 37744), 0);
  v9 = v2[109];
  v2[109] = 0;
  if (v9)
  {
    v10 = *(v9 + 96);
    if (v10)
    {
      *(v10 + 10912) = 0u;
    }

    MEMORY[0x19EAE76F0]();
  }

  sub_19B69ACA4((a1 + 27784));
  sub_19B69AD20(a1 + 24);
  return a1;
}

void sub_19B6F5E40(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 36864);
  v3 = *(a1 + 37736);
  v2[109] = 0;
  if (v3)
  {
    v4 = *(v3 + 96);
    if (v4)
    {
      *(v4 + 10912) = 0u;
    }

    MEMORY[0x19EAE76F0]();
  }

  if (*(a1 + 16) == 1)
  {
    v5 = v2[112];
    v2[112] = 0;
    if (v5)
    {
      *(v5 + 7576) = 0u;
      MEMORY[0x19EAE76F0]();
    }

    sub_19B6F68C8((a1 + 37744), 0);
    operator new();
  }

  v6 = v2[113];
  v2[113] = 0;
  if (v6)
  {
    *(v6 + 5928) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  operator new();
}

void sub_19B6F64B4(int a1, unint64_t a2, uint64_t a3)
{
  v3 = a3 + 36864;
  if (*(a3 + 37760))
  {
    v5 = a1;
    sub_19B711744(*(a3 + 37736), *(a3 + 37752), *(a3 + 37753), a1, a2);
    if (*(v3 + 888) == 1)
    {
      v6 = *(v3 + 880);

      sub_19B664EF4(v6, v5, a2);
    }
  }
}

void sub_19B6F653C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1 + 37736;
  v7 = (a1 + 16082);
  if (sub_19B691794(a1, a3))
  {
    sub_19B710758(*v6, a3);
  }

  if (*v7 == 1)
  {
    if (*(*v6 + 112) == 2)
    {
      v8 = 2500000;
    }

    else
    {
      v8 = 5000000;
    }
  }

  else
  {
    v8 = 7500000;
  }

  if (sub_19B691AC8(a1, a2, a3, v8))
  {
    if (*v7 == 1)
    {
      sub_19B71095C(*v6, a3);
    }

    else if (*(v6 + 16) == 1)
    {
      v9 = *(v6 + 8);
      if (v9)
      {
        sub_19B66510C(v9, a3);
      }
    }
  }

  if (v7[4] == 1 && *v7 == 1)
  {
    v10 = *v6;

    sub_19B710B60(v10, a3);
  }
}

void sub_19B6F6664(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29CE0);
  }

  v8 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240704;
    v14 = a2;
    v15 = 1026;
    v16 = a3;
    v17 = 2050;
    v18 = a4;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[HeadTrackingService] JBLMs, %{public}d, limitMs, %{public}d, timestampUs, %{public}llu", buf, 0x18u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29CE0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingService::feedJBLChangedEventAndThreshold(uint16_t, uint16_t, uint64_t)", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (*(a1 + 16))
  {
    v11 = *(a1 + 37736);
    if (v11)
    {
      sub_19B710D64(v11, a2 > a3, a4);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6F6898()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t *sub_19B6F68C8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = 0;
    *(v2 + 10912) = 0u;
    while (1)
    {
      v4 = *(v2 + v3 + 10904);
      *(v2 + v3 + 10904) = 0;
      if (v4)
      {
        MEMORY[0x19EAE76F0](v4, 0x1000C40FF89C88ELL);
      }

      v3 -= 8;
      if (v3 == -24)
      {

        JUMPOUT(0x19EAE76F0);
      }
    }
  }

  return result;
}

uint64_t sub_19B6F69DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0E2B0A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_19B6F6A10(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E345D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_19B6F6B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B6F6BB8(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
  }

  v14 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMFitnessMachineInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B6F6DE0(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMFitnessMachine client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFitnessMachineInternal init]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B6F716C(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = @"CMFitnessMachineDataRecord";
  v4[0] = v2;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B6F3270();
}

void sub_19B6F7250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6F727C(uint64_t a1, CLConnectionMessage **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0)
  {
    v10 = DictionaryOfClasses;
    if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage"))
    {
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
      }

      v11 = qword_1EAFE2830;
      if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"CMErrorMessage");
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "Error feeding fitness machine data, %@", buf, 0xCu);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
        }

        objc_msgSend_objectForKeyedSubscript_(v10, v14, @"CMErrorMessage");
LABEL_23:
        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMFitnessMachineInternal _feedFitnessMachineData:]_block_invoke", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
    }

    v15 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Error feeding fitness machine data", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
      }

      goto LABEL_23;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6F776C(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D570 = result;
  return result;
}

os_log_t sub_19B6F77A4()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

void sub_19B6F7A90(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_delegate(*(a1 + 32), a2, a3);
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_msgSend_delegateQueue(v3, v6, v7);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6F7B40;
      block[3] = &unk_1E7535040;
      block[4] = v3;
      block[5] = a2;
      block[6] = a3;
      dispatch_async(v8, block);
    }
  }
}

uint64_t sub_19B6F7B40(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v4, sel_eventUpdateForDevice_event_, v5);
}

void sub_19B6F7CFC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    *(a4 + 8) = *(a3 + 40) * 0.0174532924;
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v5 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
    {
      v6 = *(a4 + 8) * 57.2957802;
      *buf = 134217984;
      v12 = v6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Received geomagnetic model, declination [deg],%f", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      v10 = *(a4 + 8) * 57.2957802;
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLInertialOdometryNotifier::GeomagneticModelClient::onGeomagneticModelNotification(int, const CLGeomagneticModelProvider_Type::Notification &, const CLGeomagneticModelProvider_Type::NotificationData &, void *)", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6F7F00()
{
  if (qword_1ED71D588 != -1)
  {
    dispatch_once(&qword_1ED71D588, &unk_1F0E29D40);
  }

  return qword_1ED71D580;
}

BOOL sub_19B6F7F48()
{
  v6 = *MEMORY[0x1E69E9840];
  result = +[CMOdometryManager isAvailable]_0();
  if (result)
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v1 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "Creating InertialOdometry notifier", buf, 2u);
    }

    v2 = sub_19B420058();
    if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      v3 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static CLInertialOdometryNotifier *CLInertialOdometryNotifier::instance()_block_invoke", "CoreLocation: %s\n", v3);
      if (v3 != buf)
      {
        free(v3);
      }
    }

    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6F8254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v21, 0xB0C40BC2CC919);
  sub_19B42C54C(v20, 0);
  v24 = *v22;
  *v22 = 0;
  if (v24)
  {
    sub_19B6F94A0(v24);
  }

  v18[4] = &unk_1F0E3B758;
  v25 = v18[6];
  if (v25)
  {
    sub_19B41FFEC(v25);
  }

  sub_19B674784(v18);
  MEMORY[0x19EAE76F0](v18, v19);
  _Unwind_Resume(a1);
}

void sub_19B6F8310(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A88 != -1)
  {
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
  }

  v3 = qword_1EAFE2A90;
  if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLInertialOdometryNotifier::CLInertialOdometryNotifier()_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void *sub_19B6F8508(uint64_t a1)
{
  *a1 = &unk_1F0E3B0D8;
  *(a1 + 32) = &unk_1F0E3B128;
  dispatch_release(*(a1 + 88));
  *(a1 + 88) = 0;
  sub_19B42C54C((a1 + 80), 0);
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    sub_19B6F94A0(v2);
  }

  *(a1 + 32) = &unk_1F0E3B758;
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return sub_19B674784(a1);
}

void sub_19B6F85D4(uint64_t a1)
{
  sub_19B6F8508(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6F860C(uint64_t a1)
{
  sub_19B6F8508(a1 - 32);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6F8648(uint64_t *a1, int a2, double *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v3 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unrecognized notification", &buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLInertialOdometryNotifier::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v5);
      if (v5 != &buf)
      {
        free(v5);
      }
    }
  }

  else if (sub_19B77C96C((a1 + 4)))
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v8 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a3;
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "Minimum inertial odometry update interval changed to %{public}f", &buf, 0xCu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      v29 = *a3;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLInertialOdometryNotifier::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v11);
      if (v11 != &buf)
      {
        free(v11);
      }
    }

    v12 = rint(*a3 * 1000000.0);
    if (*a3 < 0.0)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    sub_19B4238F4(a1[5], v13);
    v14 = *a3;
    v15 = a1[11];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v31 = sub_19B6F9330;
    v32 = &unk_1E7535180;
    v33 = a1;
    v34 = v14;
    dispatch_async(v15, &buf);
    v16 = *a3;
    v17 = a1[9];
    sub_19B421798();
    if (v16 <= 0.0)
    {
      v17[1] = 0;
      if (v17[2])
      {
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
        }

        v23 = qword_1EAFE2A90;
        if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_INFO, "Unregistering for geomagnetic model updates", &buf, 2u);
        }

        v24 = sub_19B420058();
        if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE2A88 != -1)
          {
            dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
          }

          v26 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLInertialOdometryNotifier::GeomagneticModelClient::unregisterForGeomagneticModelNotification()", "CoreLocation: %s\n", v26);
          if (v26 != &buf)
          {
            free(v26);
          }
        }

        objc_msgSend_unregister_forNotification_(*(v17[2] + 16), v25, *(v17[2] + 8), 0);
      }
    }

    else
    {
      if (!v17[2])
      {
        v18 = *v17;
        sub_19B43DA50();
      }

      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      v19 = qword_1EAFE2A90;
      if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "Registering for geomagnetic model updates", &buf, 2u);
      }

      v20 = sub_19B420058();
      if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
        }

        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLInertialOdometryNotifier::GeomagneticModelClient::registerForGeomagneticModelNotification()", "CoreLocation: %s\n", v22);
        if (v22 != &buf)
        {
          free(v22);
        }
      }

      objc_msgSend_register_forNotification_registrationInfo_(*(v17[2] + 16), v21, *(v17[2] + 8), 0, 0);
    }

    v27 = *a3;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_19B6F8D40(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A88 != -1)
  {
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
  }

  v3 = qword_1EAFE2A90;
  if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 1);
    *buf = 67240192;
    v10 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "pong,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v8 = *(a2 + 1);
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLInertialOdometryNotifier::visitPong(const CMInertialOdometryReport::Pong *)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6F8F10(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A88 != -1)
  {
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
  }

  v4 = qword_1EAFE2A90;
  if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = *(a1 + 56);
    v7 = mach_absolute_time();
    v8 = sub_19B41E070(v7);
    v9 = *(a2 + 9);
    v10 = *(a2 + 13);
    v11 = *(a2 + 17);
    v12 = *(a2 + 21);
    v13 = *(a2 + 25);
    v14 = *(a2 + 29);
    v15 = *(a2 + 33);
    v16 = *(a2 + 41);
    v17 = *(a2 + 49);
    v18 = *(a2 + 57);
    v19 = *(a2 + 65);
    v20 = *(a2 + 73);
    v21 = *(a2 + 101);
    *buf = 134352896;
    *&buf[4] = v5;
    *&buf[12] = 2050;
    *&buf[14] = v6;
    *&buf[22] = 2050;
    *&buf[24] = v8;
    *v44 = 2050;
    *&v44[2] = v9;
    *&v44[10] = 2050;
    *&v44[12] = v10;
    *&v44[20] = 2050;
    *&v44[22] = v11;
    *&v44[30] = 2050;
    *&v44[32] = v12;
    *v45 = 2050;
    *&v45[2] = v13;
    *&v45[10] = 2050;
    *&v45[12] = v14;
    *&v45[20] = 2050;
    *&v45[22] = v15;
    *&v45[30] = 2050;
    v46 = v16;
    v47 = 2050;
    v48 = v17;
    v49 = 2050;
    v50 = v18;
    v51 = 2050;
    v52 = v19;
    v53 = 2050;
    v54 = v20;
    v55 = 1026;
    v56 = v21;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,aopTimestamp,%{public}llu,reportTimestamp,%{public}f,machTimeNow,%{public}f,posX,%{public}f,posY,%{public}f,posZ,%{public}f,dvCumsumX,%{public}f,dvCumsumY,%{public}f,dvCumsumZ,%{public}f,tsPosRollover,%{public}llu,tsVelRollover,%{public}llu,tsDeltaPosXUnavailable,%{public}llu,tsDeltaPosYUnavailable,%{public}llu,tsDeltaPosZUnavailable,%{public}llu,tsDMReinit,%{public}llu,displacingState,%{public}u", buf, 0x9Eu);
  }

  v22 = sub_19B420058();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v23 = *(a2 + 1);
    v24 = *(a1 + 56);
    v25 = mach_absolute_time();
    sub_19B41E070(v25);
    v30 = *(a2 + 9);
    v31 = *(a2 + 13);
    v32 = *(a2 + 17);
    v33 = *(a2 + 21);
    v34 = *(a2 + 25);
    v35 = *(a2 + 29);
    v36 = *(a2 + 33);
    v37 = *(a2 + 41);
    v38 = *(a2 + 49);
    v39 = *(a2 + 57);
    v40 = *(a2 + 65);
    v41 = *(a2 + 73);
    v42 = *(a2 + 101);
    v26 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLInertialOdometryNotifier::visitInertialOdometry(const CMInertialOdometryReport::InertialOdometry *)", "CoreLocation: %s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  *buf = *(a1 + 56);
  *&buf[8] = *(a2 + 1);
  *&buf[16] = *(a2 + 9);
  *v44 = *(a2 + 25);
  *&v44[8] = *(a2 + 33);
  *&v44[24] = *(a2 + 49);
  *v45 = *(a2 + 65);
  *&v45[16] = *(a2 + 81);
  v27 = *(a2 + 97) - *(*(a1 + 72) + 8);
  *&v46 = v27;
  BYTE4(v46) = *(a2 + 101);
  result = sub_19B41DF08(a1, 0, buf, 112);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6F9330(uint64_t a1, const char *a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v10[0] = @"CMInertialOdometryUpdateInterval";
  v11[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(a1 + 40));
  v10[1] = @"CMPedestrianFenceClientIdentifier";
  v6 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v4, v5);
  v11[1] = objc_msgSend_processName(v6, v7, v8);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v11, v10, 2);
  sub_19B6F9514();
}

void sub_19B6F9444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6F9470()
{
  result = os_log_create("com.apple.locationd.Motion", "InertialOdometry");
  qword_1EAFE2A90 = result;
  return result;
}

void sub_19B6F94A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B6F9588(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6F95E4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6F95E4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6F963C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B6F96F4(void *a1)
{
  *a1 = &unk_1F0E32308;
  sub_19B6F97B0(a1, 0, 0);
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    MEMORY[0x19EAE76F0](v2, 0x1000C401A3E59F5);
  }

  return sub_19B674784(a1);
}

void sub_19B6F9778(void *a1)
{
  sub_19B6F96F4(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6F97B0(uint64_t a1, int a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_66;
  }

  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
  }

  v5 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v22 = a3;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "CMCallHandednessService Spectators, %zd", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMCallHandednessService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (a3 == 1)
  {
    if (sub_19B4249E4())
    {
      *(a1 + 48) = 0;
      operator new();
    }

    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
    }

    v15 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "#Warning No accelerometer; not starting CMCallHandedness detection!", buf, 2u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      }

      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessService::startDetection()", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
    }

    v18 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = 1;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "CMCallHandednessService started, %zd", buf, 0xCu);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 == -1)
      {
LABEL_63:
        v14 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMCallHandednessService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v14);
LABEL_64:
        if (v14 != buf)
        {
          free(v14);
        }

        goto LABEL_66;
      }

LABEL_69:
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      goto LABEL_63;
    }
  }

  else if (a3)
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
    }

    v12 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "CMCallHandednessService expects only 1 client", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CMCallHandednessService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v14);
      goto LABEL_64;
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      v8 = sub_19B4249E4();
      sub_19B426A14(v8, 0, *(a1 + 40));
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(a1 + 40) = 0;
    }

    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
    }

    v10 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "CMCallHandednessService stopped, %zd", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 == -1)
      {
        goto LABEL_63;
      }

      goto LABEL_69;
    }
  }

LABEL_66:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6FA184(float32x2_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a1[2].i32[0];
  v5 = *a1;
  v13 = a1[1];
  v14 = v4;
  result = sub_19B72A4D4(*(a2 + 32), &v13, v5);
  if (result)
  {
    v7 = result == *(a2 + 48);
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = result;
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
    }

    v9 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, "Sending CMCallHandedness notification.", buf, 2u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CMCallHandednessService::onAccelerometerData(const CLAccelerometer::Sample *, void *)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    *buf = v8;
    v16 = *a1;
    result = sub_19B4455DC(a2, 0, buf, 16);
    *(a2 + 48) = v8;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B6FA398()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

CLLocationInternalClient_CoreMotion *sub_19B6FA3C8()
{
  result = objc_alloc_init(CLLocationInternalClient_CoreMotion);
  qword_1ED71D598 = result;
  return result;
}

void sub_19B6FA3F0()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v0 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_ERROR, "#Spi, Interrupted", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion connection]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6FA58C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v2 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "#Spi, Invalidated", buf, 2u);
  }

  v3 = sub_19B420058();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion connection]_block_invoke", "CoreLocation: %s\n", v4);
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

void sub_19B6FA778(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v8 = a2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "#Spi, Error with synchronous proxy, error: %@", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion synchronousRemoteObject]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B6FA990(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v8 = a2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "#Spi, Error with asynchronous proxy, error: %@", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion asynchronousRemoteObject]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B6FAC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FAD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FAD34(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FAE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FAEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FAFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FB180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_19B6FB1A4(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B6FB37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B6FB3A4(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_19B6FB4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB4C8(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 40) = a3;
    return *(*(result[4] + 8) + 40);
  }

  return result;
}

void sub_19B6FB5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB5D0(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 40) = a3;
    return *(*(result[4] + 8) + 40);
  }

  return result;
}

void sub_19B6FB69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB6B4(void *result, uint64_t a2, uint64_t a3)
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

void sub_19B6FB7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB7C0(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 40) = a3;
      return *(*(result[4] + 8) + 40);
    }
  }

  return result;
}

void sub_19B6FB890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB8A8(void *result, uint64_t a2, uint64_t a3)
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

void sub_19B6FB978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB990(void *result, uint64_t a2, uint64_t a3)
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

void sub_19B6FBBE0(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "#Spi, Couldn't set location default!", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setLocationDefaultForKey:value:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B6FBE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B6FBEA8(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v6 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2114;
    v13 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Spi, getLocationDefaultForKey, , error:%{public, location:escape_only}@}", v9, 0x1Cu);
  }

  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6FC14C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      v4 = result;
      v5 = objc_alloc(MEMORY[0x1E695DFE8]);
      result = objc_msgSend_initWithName_(v5, v6, a3);
      *(*(*(v4 + 32) + 8) + 40) = result;
    }
  }

  return result;
}

void sub_19B6FC1E0(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "#Spi, setPrivateMode failed", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setPrivateMode:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B6FC428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FC440(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

void sub_19B6FC500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FC598(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetLocationServicesEnabled failed", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setLocationServicesEnabled:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B6FC7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FC800(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3 == 1;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FC90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FC924(void *result, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetAuthorizationPromptMapDisplayEnabled failed", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setAuthorizationPromptMapDisplayEnabled:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    result = a2;
    *(*(v3[4] + 8) + 40) = result;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6FCB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FCBAC(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FCD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FCD48(uint64_t result, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLSetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v5 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLSetClientTransientAuthorizationInfo failed", "{msg%{public}.0s:#Spi, CLSetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }

    result = objc_msgSend_copy(a2, v6, v7);
    *(*(*(v3 + 32) + 8) + 40) = result;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6FCFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FCFFC(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v6 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLGetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v10, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v7 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLGetClientTransientAuthorizationInfo failed", "{msg%{public}.0s:#Spi, CLGetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    if (*(a1 + 40))
    {
      **(a1 + 40) = a2;
    }
  }

  result = objc_msgSend_copy(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 40) = result;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6FD298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FD2B0(uint64_t a1, uint64_t a2, double a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v6 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalChangeClientAuthorizationTime failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v7 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalChangeClientAuthorizationTime failed", "{msg%{public}.0s:#Spi, CLInternalChangeClientAuthorizationTime failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }

    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B6FD52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FD544(void *result, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalTriggerExpiredAuthorizationPurge failed, error:%{public, location:escape_only}@}", &v7, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v5 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalTriggerExpiredAuthorizationPurge failed", "{msg%{public}.0s:#Spi, CLInternalTriggerExpiredAuthorizationPurge failed, error:%{public, location:escape_only}@}", &v7, 0x1Cu);
    }

    result = a2;
    *(*(v3[4] + 8) + 40) = result;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6FD730(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetGestureServiceEnabled failed", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setGestureServiceEnabled:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B6FD980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FD998(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_19B6FDA98(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FDB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FDB98(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FDE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

_BYTE **sub_19B6FDE74(_BYTE **result, void *a2, char a3)
{
  v3 = result;
  if (a2)
  {
    result = a2;
    *(*(v3[5] + 1) + 40) = result;
  }

  else
  {
    *result[6] = a3;
    *(*(result[4] + 1) + 24) = 1;
  }

  return result;
}

void sub_19B6FE0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FE350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FE5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FE814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FE908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FE920(void *result, uint64_t a2, uint64_t a3)
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

void sub_19B6FEADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_19B6FEB0C(void *a1, void *a2, char a3)
{
  result = a2;
  *(*(a1[4] + 8) + 40) = result;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void sub_19B6FECDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B6FED00(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B6FEEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_19B6FEECC(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B6FF064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B6FF088(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B6FF210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_19B6FF234(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B6FF36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FF384(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = objc_msgSend_getBytes_length_(a3, a2, *(result + 40), 156);
    *(*(*(v3 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FF4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_19B6FF4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = *(a1 + 40);
    result = *a3;
    v5 = *(a3 + 16);
    *v3 = *a3;
    v3[1] = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FF8B8(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "#Spi,RouteHintError,Couldn't set map-matching route hint!", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setMapMatchingRouteHint:count:routingType:stepType:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B6FFC3C(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "#Spi,CLTR,TrackRunHintError,Couldn't set track run hint!", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setTrackRunHint:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B700030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B70004C(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryTypeBitSet,failed", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion getAccessoryTypeBitSet]_block_invoke", "CoreLocation: %s\n", v6);
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

void sub_19B700468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B700484(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryPASCDTransmissionState,failed", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion getAccessoryPASCDTransmissionState]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    a3 = 4;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B7008D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7008FC(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v3 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "#Spi,getOdometryBatchedLocations,returned with error", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion getOdometryBatchedLocations]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  else
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v8 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v17 = objc_msgSend_count(a3, v9, v10);
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "#Spi,getOdometryBatchedLocations,received data count,%{public}lu", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      objc_msgSend_count(a3, v12, v13);
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion getOdometryBatchedLocations]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    *(*(*(a1 + 32) + 8) + 40) = a3;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B700E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7010C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7011B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7011C8(uint64_t a1, uint64_t a2, char a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 48);
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Getting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v9, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v6 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v7 = *(a1 + 48);
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v7;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Getting status bar enabled for entity class failed", "{msg%{public}.0s:Getting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v9, 0x1Cu);
    }
  }

  else
  {
    **(a1 + 40) = a3;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B701420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B701438(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

void sub_19B701558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B701574(uint64_t a1, const char *a2, void *a3)
{
  if (a2)
  {
    a3 = objc_msgSend_array(MEMORY[0x1E695DEC8], a2, a3);
  }

  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B701674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B70168C(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = objc_msgSend_getBytes_length_(a3, a2, *(result + 40), 320);
    *(*(*(v3 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B7017C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7018F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7019D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B701AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B701AC4(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B701BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B701F54(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(result + 48);
  **(result + 40) = a4;
  *v9 = a5;
  v10 = *(result + 64);
  **(result + 56) = a6;
  *v10 = a7;
  v11 = *(result + 80);
  **(result + 72) = a8;
  *v11 = a9;
  **(result + 88) = a3;
  *(*(*(result + 32) + 8) + 40) = a2;
  return result;
}

uint64_t sub_19B701F90(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(result + 48);
  **(result + 40) = a4;
  *v9 = a5;
  v10 = *(result + 64);
  **(result + 56) = a6;
  *v10 = a7;
  v11 = *(result + 80);
  **(result + 72) = a8;
  *v11 = a9;
  **(result + 88) = a3;
  *(*(*(result + 32) + 8) + 40) = a2;
  return result;
}

void sub_19B702094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B7020AC(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 48);
  **(result + 40) = a3;
  *v4 = a4;
  *(*(*(result + 32) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B702178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B70228C(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B702398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B7023B0(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B7024C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B7024E0(void *result, void *a2, int a3, int a4)
{
  v6 = result;
  if (a2)
  {
    result = a2;
    *(*(v6[4] + 8) + 40) = result;
  }

  v7 = v6[5];
  if (v7)
  {
    *v7 = a3;
  }

  v8 = v6[6];
  if (v8)
  {
    *v8 = a4;
  }

  return result;
}

void sub_19B7025E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7026EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B702704(uint64_t a1, void *a2, void *a3)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (a2)
  {
    result = a2;
    **(a1 + 40) = result;
  }

  return result;
}

void sub_19B702828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B702840(uint64_t a1, void *a2, void *a3)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (a2)
  {
    result = a2;
    **(a1 + 40) = result;
  }

  return result;
}

void sub_19B702980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B70299C(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B702AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B702AE4(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B702C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B702FD8(uint64_t result, double a2, double a3, uint64_t a4, char a5)
{
  *(*(*(result + 32) + 8) + 24) = a5;
  v5 = *(result + 40);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_19B703178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B703190(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 24) = a3;
    return CFRetain(*(*(result[4] + 8) + 24));
  }

  return result;
}

void sub_19B7032A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B70356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B70383C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B703854(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B703934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B70394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "#Spi, TimeSyncWithReplyBlock failed", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion timeSyncMachTimeStamp:oscarTimeStamp:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    **(a1 + 40) = a3;
    **(a1 + 48) = a4;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B703BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B703DE4(uint64_t result, uint64_t a2, double a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B703ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B703EEC(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B703FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B703FF4(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t CLCopyAppsUsingLocation()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyAppsUsingLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyAppsUsingLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyAppsUsingLocation(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CLCopyActiveClientsUsingLocation()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyActiveClientsUsingLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyActiveClientsUsingLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  active = objc_msgSend_copyActiveClientsUsingLocation(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return active;
}

uint64_t CLCopyInternalState()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyInternalState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyInternalState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyInternalState(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void CLSetLocationDefault(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B41C000, "CL: CLSetLocationDefault", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = a1;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetLocationDefault, event:%{public, location:escape_only}s, key:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v8 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v6, v7);
  objc_msgSend_setLocationDefaultForKey_value_(v8, v9, a1, a2);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t CLCopyZaxisStats()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyZaxisStats", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyZaxisStats, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyZaxisStats(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CLCopyTechnologiesInUse()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyTechnologiesInUse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyTechnologiesInUse, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyTechnologiesInUse(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

id CLCopyGnssBandsInUse()
{
  v32 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyGnssBandsInUse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v0, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyGnssBandsInUse, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyGnssBandsInUse(v4, v5, v6);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v10 = 0;
      v11 = Count & 0x7FFFFFFF;
      do
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        v14 = valuePtr & 0xF00;
        v15 = (v14 - 256) >> 8;
        v16 = v15 > 7;
        v17 = (1 << v15) & 0x8B;
        if (v16 || v17 == 0)
        {
          if ((valuePtr & 0xF00) != 0)
          {
            if (qword_1ED71C7D0 != -1)
            {
              dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
            }

            v22 = qword_1ED71C7E0;
            if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67240192;
              *&buf[4] = v14;
              _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "Invalid bandUse,%{public}d", buf, 8u);
            }

            v23 = sub_19B420058();
            if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C7D0 != -1)
              {
                dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
              }

              v29 = 67240192;
              v30 = v14;
              v24 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 0, "CFArrayRef CLCopyGnssBandsInUse(void)", "CoreLocation: %s\n", v24);
              if (v24 != buf)
              {
                free(v24);
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
            v19 = xmmword_19B7BCCA0;
            break;
          case 2u:
            *buf = 2;
            v19 = xmmword_19B7BCC90;
            break;
          case 1u:
            *buf = 1;
            v19 = xmmword_19B7BCCB0;
            break;
          default:
            memset(&buf[8], 0, 20);
            goto LABEL_20;
        }

        *&buf[8] = v19;
LABEL_20:
        v20 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v13, buf, "{CLGnssBandInfo=iddi}");
        objc_msgSend_addObject_(v8, v21, v20);
LABEL_21:
        ++v10;
      }

      while (v11 != v10);
    }

    CFRelease(v7);
  }

  os_activity_scope_leave(&state);
  v25 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CLGetLocationDefault(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLGetLocationDefault", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v2, &v11);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = a1;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetLocationDefault, event:%{public, location:escape_only}s, key:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  LocationDefaultForKey = objc_msgSend_getLocationDefaultForKey_(v6, v7, a1);
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return LocationDefaultForKey;
}

uint64_t sub_19B704E68()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyActivityAlarms", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyActivityAlarms, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyActivityAlarms(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CLGetPipelinedCache()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLGetPipelinedCaches", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetPipelinedCaches, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  PipelinedCache = objc_msgSend_getPipelinedCache(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return PipelinedCache;
}

uint64_t CLGetMotionSensorLogs()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLGetMotionSensorLogs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetMotionSensorLogs, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  MotionSensorLogs = objc_msgSend_getMotionSensorLogs(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return MotionSensorLogs;
}

uint64_t CLGetAccessoryMotionSensorLogs()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLGetAccessoryMotionSensorLogs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetAccessoryMotionSensorLogs, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  AccessoryMotionSensorLogs = objc_msgSend_getAccessoryMotionSensorLogs(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return AccessoryMotionSensorLogs;
}

uint64_t CLApplyArchivedAuthorizationDecisions(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLApplyArchivedAuthorizationDecisions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v2, &v11);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLApplyArchivedAuthorizationDecisions, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  v8 = objc_msgSend_applyArchivedAuthorizationDecisions_(v6, v7, a1);
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CLGetArchivedAuthorizationDecisions(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLGetArchivedAuthorizationDecisions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v2, &v11);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetArchivedAuthorizationDecisions, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  ArchivedAuthorizationDecisionsWithError = objc_msgSend_getArchivedAuthorizationDecisionsWithError_(v6, v7, a1);
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return ArchivedAuthorizationDecisionsWithError;
}

uint64_t CLStartStopAdvertisingBeacon(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B41C000, "CL: CLStartStopAdvertisingBeacon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2113;
    v21 = a1;
    v22 = 2114;
    v23 = a2;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLStartStopAdvertisingBeacon, event:%{public, location:escape_only}s, region:%{private, location:escape_only}@, power:%{public, location:escape_only}@}", buf, 0x30u);
  }

  v8 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v6, v7);
  started = objc_msgSend_startStopAdvertisingBeacon_power_(v8, v9, a1, a2);
  os_activity_scope_leave(&v13);
  v11 = *MEMORY[0x1E69E9840];
  return started;
}

uint64_t CLPingDaemon()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLPingDaemon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPingDaemon, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_pingDaemon(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void CLPassKitNotifyPayment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B41C000, "CL: CLPassKitNotifyPassUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v6, &v13);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v7 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPassKitNotifyPassUsage, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v10 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v8, v9);
  objc_msgSend_notifyPassKitPayment_transaction_info_(v10, v11, a1, a2, a3);
  os_activity_scope_leave(&v13);
  v12 = *MEMORY[0x1E69E9840];
}

void CLWeatherNotifyForecast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B41C000, "CL: CLWeatherNotifyForecastUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v8 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289282;
    v56 = 2082;
    v57 = "";
    v58 = 2082;
    v59 = "activity";
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLWeatherNotifyForecastUsage, event:%{public, location:escape_only}s}", &buf, 0x1Cu);
  }

  v9 = MEMORY[0x1E695DEC8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v17 = objc_msgSend_arrayWithObjects_(v9, v16, v10, v11, v12, v13, v14, v15, 0);
  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  v20 = objc_msgSend_initWithDictionary_copyItems_(v18, v19, a1, 1);
  v41 = a5;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v21, &v48, v54, 16);
  if (v24)
  {
    obj = a1;
    v43 = *v49;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v49 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v22, &v44, v53, 16);
        if (!v27)
        {
          goto LABEL_18;
        }

        v28 = 0;
        v29 = *v45;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v45 != v29)
            {
              objc_enumerationMutation(v17);
            }

            v31 = *(*(&v44 + 1) + 8 * j);
            objc_msgSend_objectForKeyedSubscript_(v20, v22, v26);
            v28 |= objc_opt_isKindOfClass();
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v22, &v44, v53, 16);
        }

        while (v27);
        if ((v28 & 1) == 0)
        {
LABEL_18:
          objc_msgSend_removeObjectForKey_(v20, v22, v26);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v48, v54, 16);
    }

    while (v24);
  }

  v32 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v22, v23);
  objc_msgSend_coordinate(v41, v33, v34);
  v36 = v35;
  objc_msgSend_coordinate(v41, v37, v38);
  objc_msgSend_notifyWeatherForecast_airQualityConditions_hourlyForecasts_dailyForecasts_latitude_longitude_(v32, v39, v20, MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v36);

  os_activity_scope_leave(&state);
  v40 = *MEMORY[0x1E69E9840];
}

uint64_t CLGetClientTransientAuthorizationInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B41C000, "CL: CLGetClientTransientAuthorizationInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v7 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetClientTransientAuthorizationInfo, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v10 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v8, v9);
  TemporaryAuthorizationStatusForBundleId_orBundlePath_error = objc_msgSend_getTemporaryAuthorizationStatusForBundleId_orBundlePath_error_(v10, v11, a1, a2, a3);
  os_activity_scope_leave(&v15);
  v13 = *MEMORY[0x1E69E9840];
  return TemporaryAuthorizationStatusForBundleId_orBundlePath_error;
}

uint64_t CLSetClientTransientAuthorizationInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B41C000, "CL: CLSetClientTransientAuthorizationInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v7 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetClientTransientAuthorizationInfo, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v10 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v8, v9);
  v12 = objc_msgSend_setTemporaryAuthorizationStatusForBundleId_orBundlePath_statusData_(v10, v11, a1, a2, a3);
  os_activity_scope_leave(&v15);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_19B706118(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_setGestureServiceEnabled_, a1);
}

uint64_t sub_19B706158(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getGestureServiceEnabled_, a1);
}

uint64_t CLInternalPerformMigration()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLInternalPerformMigration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalPerformMigration, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_performMigration(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CLGetStatusBarIconState()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLGetStatusBarIconState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v0, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetStatusBarIconState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  StatusBarIconState = objc_msgSend_getStatusBarIconState(v4, v5, v6);
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v8 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = StatusBarIconState;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "CLStatusBarIconState received an icon stateu of %d", buf, 8u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v14 = 67109120;
    v15 = StatusBarIconState;
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLStatusBarIconState CLGetStatusBarIconState()", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
  return StatusBarIconState;
}

void CLSetMapMatchingRouteHint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B41C000, "CL: CLSetMapMatchingRouteHint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v9 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v26 = 0;
    *&v26[4] = 2082;
    *&v26[6] = "";
    v27 = 2082;
    v28 = "activity";
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetMapMatchingRouteHint, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }
  }

  v10 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *v26 = a4;
    *&v26[8] = 1024;
    *&v26[10] = a1;
    v27 = 1024;
    LODWORD(v28) = a2;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d,stepType,%d", buf, 0x18u);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v19 = 134218496;
    v20 = a4;
    v21 = 1024;
    v22 = a1;
    v23 = 1024;
    v24 = a2;
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSetMapMatchingRouteHint(CLClientLocationRouteHintType, CLClientLocationRouteHintType, CLMapsRouteHint *, int)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v12, v13);
  objc_msgSend_setMapMatchingRouteHint_count_routingType_stepType_(v15, v16, a3, a4, a1, a2);
  os_activity_scope_leave(&state);
  v17 = *MEMORY[0x1E69E9840];
}

void CLSetRouteHintsForMapMatching(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B41C000, "CL: CLSetRouteHintsForMapMatching", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v7 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v22 = 0;
    *&v22[4] = 2082;
    *&v22[6] = "";
    v23 = 2082;
    v24 = "activity";
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetRouteHintsForMapMatching, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }
  }

  v8 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *v22 = a3;
    *&v22[8] = 1024;
    *&v22[10] = a1;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d", buf, 0x12u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v17 = 134218240;
    v18 = a3;
    v19 = 1024;
    v20 = a1;
    v12 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSetRouteHintsForMapMatching(CLClientLocationRouteHintType, CLMapsRouteHint *, int)", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v13 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v10, v11);
  objc_msgSend_setMapMatchingRouteHint_count_routingType_stepType_(v13, v14, a2, a3, a1, a1);
  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x1E69E9840];
}

void CLSetTrackRunHint(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLSetTrackRunHint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v26 = 0;
    *&v26[4] = 2082;
    *&v26[6] = "";
    v27 = 2082;
    v28 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetTrackRunHint, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }
  }

  v4 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    *buf = 134349569;
    *v26 = v5;
    *&v26[8] = 1025;
    *&v26[10] = v6;
    v27 = 1025;
    LODWORD(v28) = v7;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "TrackRunHint,CLSetTrackRunHint,received,MCTime,%{public}.1lf,lane,%{private}d,notification,%{private}d", buf, 0x18u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    v19 = 134349569;
    v20 = v11;
    v21 = 1025;
    v22 = v12;
    v23 = 1025;
    v24 = v13;
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSetTrackRunHint(CLTrackRunHint *)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v9, v10);
  objc_msgSend_setTrackRunHint_(v15, v16, a1);
  os_activity_scope_leave(&state);
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t CLGetAccessoryTypeBitSet()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v0 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEBUG, "CLGetAccessoryTypeBitSet", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "int32_t CLGetAccessoryTypeBitSet()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  result = objc_msgSend_getAccessoryTypeBitSet(v5, v6, v7);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CLGetAccessoryPASCDTransmissionState()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v0 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEBUG, "CLGetAccessoryPASCDTransmissionState", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLClientPASCDTransmissionState CLGetAccessoryPASCDTransmissionState()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  result = objc_msgSend_getAccessoryPASCDTransmissionState(v5, v6, v7);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B707210(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getGyroCalibrationDatabaseBiasFit_atTemperature_, a1);
}

uint64_t sub_19B707260(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_insertGyroCalibrationDatabaseBiasEstimateIfValid_temperature_variance_timestamp_, v4);
}

uint64_t sub_19B7072F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_gyroCalibrationDatabaseWipe, v4);
}

uint64_t sub_19B707320(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getGyroCalibrationDatabaseNumTemperatures_, a1);
}

uint64_t sub_19B707360(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_configure_, a1);
}

uint64_t CLGetOdometryBatchedLocations()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v0 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "CLGetOdometryBatchedLocations", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "NSDictionary *CLGetOdometryBatchedLocations()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  result = objc_msgSend_getOdometryBatchedLocations(v5, v6, v7);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CLGetControlPlaneStatusReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x1E69E9840];
  v16 = _os_activity_create(&dword_19B41C000, "CL: CLGetControlPlaneStatusReport", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v17 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = "activity";
    v32 = 1026;
    v33 = a1;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetControlPlaneStatusReport, event:%{public, location:escape_only}s, clear:%{public}d}", buf, 0x22u);
  }

  v20 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v18, v19);
  ControlPlaneStatusReportClear_startTime_endTime_latitude_longitude_altitude_accuracy_status = objc_msgSend_getControlPlaneStatusReportClear_startTime_endTime_latitude_longitude_altitude_accuracy_status_(v20, v21, a1, a2, a3, a4, a5, a6, a7, a8);
  os_activity_scope_leave(&state);
  v23 = *MEMORY[0x1E69E9840];
  return ControlPlaneStatusReportClear_startTime_endTime_latitude_longitude_altitude_accuracy_status;
}

uint64_t CLGetEmergencyLocationSettingsVersionInfo(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B41C000, "CL: CLGetEmergencyLocationSettingsVersion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetEmergencyLocationSettingsVersion, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v6, v7);
  EmergencyLocationSettingsCompatibilityVersion_andContentVersion = objc_msgSend_getEmergencyLocationSettingsCompatibilityVersion_andContentVersion_(v8, v9, a1, a2);
  os_activity_scope_leave(&v13);
  v11 = *MEMORY[0x1E69E9840];
  return EmergencyLocationSettingsCompatibilityVersion_andContentVersion;
}

uint64_t CLDeleteCurrentEmergencyLocationAsset()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLDeleteCurrentEmergencyLocationAsset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLDeleteCurrentEmergencyLocationAsset, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_deleteCurrentEmergencyLocationAsset(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CLCopyNearbyAssetSettings()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyNearbyAssetSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyNearbyAssetSettings, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyNearbyAssetSettings(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CLCopyNearbyAssetSettingsOfAccessoryFile(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLCopyNearbyAssetSettingsOfAccessoryFile", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v2, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyNearbyAssetSettingsOfAccessoryFile, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (a1)
  {
    v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
    a1 = objc_msgSend_copyNearbyAssetSettingsOfAccessoryFile_(v6, v7, a1);
  }

  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t CLCopyRoutineAssetSettings(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B41C000, "CL: CLCopyRoutineAssetSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyRoutineAssetSettings, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v6, v7);
  v10 = objc_msgSend_copyRoutineAssetSettingsWithCompatibilityVersion_contentVersion_(v8, v9, a1, a2);
  os_activity_scope_leave(&v13);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t CLShouldDisplayEEDUI()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLShouldDisplayEEDUI", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v0, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLShouldDisplayEEDUI, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  shouldDisplayEEDUI = objc_msgSend_shouldDisplayEEDUI(v4, v5, v6);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return shouldDisplayEEDUI;
}

uint64_t CLGetEEDCloakingKey(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getEEDCloakingKey_, a1);
}

uint64_t CLGetEEDEmergencyContactNames(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getEEDEmergencyContactNames_, a1);
}

uint64_t CLInternalSetPinnedLocationAuthorization(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLInternalSetPinnedLocationAuthorization", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v2, &v11);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetPinnedLocationAuthorization, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  v8 = objc_msgSend_setPinnedLocationAuthorization_(v6, v7, a1);
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CLInternalGetPinnedLocationAuthorizationState(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLInternalGetPinnedLocationAuthorizationState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v2, &v11);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetPinnedLocationAuthorizationState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  PinnedLocationAuthorizationState = objc_msgSend_getPinnedLocationAuthorizationState_(v6, v7, a1);
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return PinnedLocationAuthorizationState;
}

uint64_t sub_19B708260(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_gyroCalibrationDatabaseSupportsMiniCalibration_, a1);
}

os_log_t sub_19B7082A0()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED71C7E0 = result;
  return result;
}

void *sub_19B7082D0(void *a1)
{
  *a1 = &unk_1F0E33DF0;
  sub_19B43B734(a1, 0, 0);
  v2 = a1[5];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

uint64_t sub_19B708344(uint64_t a1)
{
  result = IOHIDEventGetType();
  if (result == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    result = IOHIDEventGetIntegerValue();
    if (IntegerValue == 65289 && result == 1)
    {
      v4 = IOHIDEventGetIntegerValue() == 0;
      TimeStamp = IOHIDEventGetTimeStamp();
      sub_19B41E070(TimeStamp);
      v6 = v4;
      return sub_19B41DF08(a1, 0, &v6, 1);
    }
  }

  return result;
}

void sub_19B708E28(void *a1)
{
  sub_19B7082D0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B708E64()
{
  if (qword_1ED71D5A8 != -1)
  {
    dispatch_once(&qword_1ED71D5A8, &unk_1F0E29DC0);
  }

  return qword_1ED71D5A0;
}

void sub_19B708EAC()
{
  v26 = *MEMORY[0x1E69E9840];
  v0 = sub_19B420D84();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = 0;
  v3 = sub_19B438CCC(v1, "EnableMagnetometerCoexistenceCompensation", &v19);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  if ((v3 & 1) == 0)
  {
    v19 = 1;
  }

  sub_19B420D84();
  if (*(qword_1ED71C908 + 16) != 1)
  {
    sub_19B5DEA54();
  }

  v4 = sub_19B65EF28();
  if (!v4)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
    }

    v11 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "#Warning CPAS data response was invaild.", buf, 2u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) <= 1 && *(v12 + 164) <= 1 && *(v12 + 168) <= 1 && !*(v12 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 == -1)
    {
LABEL_48:
      LOWORD(v20) = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLMagnetometerCoexistenceNotifier::create()", "CoreLocation: %s\n", v15);
LABEL_49:
      if (v15 != buf)
      {
        free(v15);
      }

      goto LABEL_51;
    }

LABEL_74:
    dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
    goto LABEL_48;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_51;
  }

  Length = CFDataGetLength(v4);
  BytePtr = CFDataGetBytePtr(v4);
  if (!BytePtr)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
    }

    v13 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "#Warning CPAS data is NULL", buf, 2u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_74;
  }

  if (Length >= 2)
  {
    v7 = *BytePtr;
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
    }

    v8 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v7;
      v25[0] = 2048;
      *&v25[1] = Length;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "cpas version is %u, length is %ld bytes", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || (*(v9 + 152) & 1) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
      }

      v20 = 67109376;
      v21 = v7;
      v22 = 2048;
      v23 = Length;
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLMagnetometerCoexistenceNotifier::create()", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if (v7 == 5 && Length == 76)
    {
      operator new();
    }

    if (v7 == 6 && Length == 76)
    {
      operator new();
    }

    if (v7 == 10 && Length == 76)
    {
      operator new();
    }

    if (v7 == 11 && Length == 28)
    {
      operator new();
    }

    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
    }

    v17 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v7;
      v25[0] = 2048;
      *&v25[1] = Length;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_INFO, "Warning: cpas data was found but did not match any versions. version (%u) length (%ld)", buf, 0x12u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
      }

      v20 = 67109376;
      v21 = v7;
      v22 = 2048;
      v23 = Length;
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLMagnetometerCoexistenceNotifier::create()", "CoreLocation: %s\n", v15);
      goto LABEL_49;
    }
  }

LABEL_51:
  if (!qword_1ED71D5A0)
  {
    operator new();
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B7098A0(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x19EAE76F0](v3, v2);
  _Unwind_Resume(a1);
}

void sub_19B709920(void *a1)
{
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B709958(uint64_t a1, float *__src)
{
  if (*(a1 + 8))
  {
    v4 = 0;
    while (*(a1 + v4 * 4 + 20) == __src[v4 + 1] && *(a1 + v4 * 4 + 24) == __src[v4 + 2] && *(a1 + v4 * 4 + 28) == __src[v4 + 3] && *(a1 + v4 * 4 + 32) == __src[v4 + 4] && *(a1 + v4 * 4 + 36) == __src[v4 + 5] && *(a1 + v4 * 4 + 40) == __src[v4 + 6])
    {
      v4 += 6;
      if (v4 == 48)
      {
        v5 = 0;
        while (*(a1 + 212 + v5 * 4) == __src[v5 + 49])
        {
          if (++v5 == 7)
          {
            if (*(a1 + 240) == __src[56])
            {
              v18 = 0;
              v19 = a1 + 244;
              v20 = (__src + 57);
LABEL_19:
              v21 = 0;
              while (*(v19 + v21) == v20[v21])
              {
                if (++v21 == 18)
                {
                  ++v18;
                  v20 += 18;
                  v19 += 18;
                  if (v18 != 3)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_17;
                }
              }
            }

            goto LABEL_14;
          }
        }

        break;
      }
    }

LABEL_14:
    if ((*(a1 + 8) & 2) != 0)
    {
      v6 = *(a1 + 12);
      v7 = sub_19B709B5C(a1 + 16, v6).f32[0];
      v9 = v8;
      v11 = v10;
      v12 = sub_19B709B5C(__src, v6).f32[0];
      v13 = *a1;
      v22[0] = v12 - v7;
      v22[1] = v14 - v9;
      v22[2] = v15 - v11;
      (*(*v13 + 32))(v13, v22);
    }
  }

  else
  {
    v16 = *a1;
    (*(**a1 + 24))();
  }

LABEL_17:
  *(a1 + 8) |= 1u;
  memcpy((a1 + 16), __src, 0x11AuLL);
  return sub_19B709CB8(a1);
}

float32x2_t sub_19B709B5C(uint64_t a1, float a2)
{
  v2 = 0;
  v3 = *(a1 + 224);
  while (1)
  {
    v4 = *(a1 + 196 + 4 * v2);
    if ((v3 + v4) > a2)
    {
      break;
    }

    if (++v2 == 6)
    {
      v4 = *(a1 + 220);
      break;
    }
  }

  v5 = ((a2 - v4) / (v3 + v3)) + 0.5;
  if (v5 <= 0.0)
  {
    v11 = a1 + 24 * v2;
    v12 = *(v11 + 24);
    v13 = *(v11 + 12) * a2;
    v14 = *(v11 + 4);
    v15 = *(v11 + 16);
  }

  else
  {
    if (v5 < 1.0)
    {
      v6 = a1 + 24 * v2;
      v7 = (((*(v6 + 36) * a2) + *(v6 + 48)) * 0.017453) - (((*(v6 + 12) * a2) + *(v6 + 24)) * 0.017453);
      v8 = vdup_n_s32(0x3C8EFA35u);
      v9 = vmul_f32(vadd_f32(vmul_n_f32(*(v6 + 4), a2), *(v6 + 16)), v8);
      return vadd_f32(v9, vmul_n_f32(vsub_f32(vmul_f32(vadd_f32(vmul_n_f32(*(v6 + 28), a2), *(v6 + 40)), v8), v9), v5 * (v5 * ((v5 * -2.0) + 3.0))));
    }

    v16 = a1 + 24 * v2;
    v17 = *(v16 + 48);
    v18 = *(v16 + 36) * a2;
    v14 = *(v16 + 28);
    v15 = *(v16 + 40);
  }

  return vmul_f32(vadd_f32(vmul_n_f32(v14, a2), v15), vdup_n_s32(0x3C8EFA35u));
}

uint64_t sub_19B709CB8(uint64_t result)
{
  if (*(result + 8) & 2) != 0 && (*(result + 8))
  {
    v1 = result;
    v2 = *(result + 12);
    v5.n128_u64[0] = sub_19B709B5C(result + 16, v2);
    v10[0] = v5.n128_u32[0];
    v10[1] = v4;
    v10[2] = v3;
    v5.n128_f32[0] = (v2 + -2.0) * 0.25;
    if (v5.n128_f32[0] >= 0.0)
    {
      v6 = v5.n128_f32[0];
      if (v5.n128_f32[0] < 0x11)
      {
        *&v7 = v6;
        v8 = v5.n128_f32[0] - v6;
        v9 = &v1[v6];
        LOBYTE(v7) = v9[244];
        LOBYTE(v3) = v9[245];
        v5.n128_f32[0] = v7 + (v8 * (v3 - v7));
        goto LABEL_9;
      }

      v5.n128_u8[0] = v1[261];
    }

    else
    {
      v5.n128_u8[0] = v1[244];
    }

    v5.n128_f32[0] = v5.n128_u32[0];
LABEL_9:
    v5.n128_f32[0] = v5.n128_f32[0] * 0.00017453;
    return (*(**v1 + 16))(*v1, v10, v2 < 20.0, v5);
  }

  return result;
}

uint64_t sub_19B709DB0(uint64_t a1, float a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 == 3.4028e38)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29DE0);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v10 = 0x47EFFFFFE0000000;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: temperature != 3.40282347e+38F, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMNonlinearTemperatureFit.cpp, line 83,temperature,%f.", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29DE0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMNonlinearTemperatureFit::feedGyroTemperature(float)", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  *(a1 + 8) |= 2u;
  *(a1 + 12) = a2;
  result = sub_19B709CB8(a1);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

int64x2_t *sub_19B70A498(int64x2_t *a1, __int8 a2)
{
  a1->i32[0] = 0;
  a1->i64[1] = 0xBFF0000000000000;
  a1[1] = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[2].i8[0] = a2;
  a1[2].i64[1] = 0;
  sub_19B5D5B20(a1[3].i64);
  a1[375].i64[1] = 0x7FF8000000000000;
  a1[376].i64[0] = 0x7FF8000000000000;
  a1[376].i8[8] = 0;
  if (a1[2].i8[0] == 1)
  {
    operator new();
  }

  a1[373].i64[1] = sub_19B70A5DC;
  a1[374].i64[0] = a1;
  return a1;
}

void sub_19B70A56C(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x19EAE76F0](v4, 0x10E0C408232E938);
  *(v1 + 5976) = 0u;
  sub_19B6F68C8(v2, 0);
  _Unwind_Resume(a1);
}

double sub_19B70A5B4(int a1, unint64_t a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    *a3 = a1;
  }

  result = a2 * 0.000001;
  *(a3 + 8) = result;
  return result;
}

void sub_19B70A5DC(int a1, uint64_t a2, int *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a3 + 32) == 1)
  {
    sub_19B664EF4(*(a3 + 5), a1, a2);
  }

  v6 = *a3;
  if (a1)
  {
    if (v6 == 1)
    {
      *a3 = 3;
      *(a3 + 1) = a2 * 0.000001;
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
      }

      v7 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v14 = a2 * 0.000001;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[CMAccessoryActivity] Walking. time %f\n", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 == -1)
        {
LABEL_25:
          v11 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryActivity::stepDetectorCallback(BOOL, uint64_t)", "CoreLocation: %s\n", v11);
          if (v11 != buf)
          {
            free(v11);
          }

          goto LABEL_27;
        }

LABEL_28:
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
        goto LABEL_25;
      }
    }
  }

  else if (v6 == 3)
  {
    *a3 = 1;
    *(a3 + 1) = a2 * 0.000001;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
    }

    v9 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v14 = a2 * 0.000001;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, "[CMAccessoryActivity] Not walking. time %f\n", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }
  }

LABEL_27:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B70A928(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a1 + 6024))
  {
    v26 = *(a2 + 8);
    v27 = *(a2 + 16);
    v6.f32[0] = sub_19B447000((a2 + 32));
    v8 = v7 + *(a2 + 28);
    v6.i32[1] = v9;
    v28 = vadd_f32(*(a2 + 20), v6);
    v29 = v8;
    v30 = xmmword_19B7BCD20;
    v31 = vdup_n_s32(0x3A03126Fu);
    v32 = 0xBF80000000000000;
    v33 = *(a2 + 32);
    v10 = sub_19B5D6F10(a1 + 48, &v26, *a2);
    v12 = v11;
    *(a1 + 6008) = v10;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
    }

    v13 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v39 = v10;
      v40 = 2048;
      v41 = v12;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "[CMAccessoryActivity] Start impulse start %f, end, %f.\n", buf, 0x16u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
      }

      v34 = 134218240;
      v35 = v10;
      v36 = 2048;
      v37 = v12;
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryActivity::feedImuSampleToStep(const AccessoryActivity::ImuData *const)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    v16 = *(a1 + 6008);
    *(a1 + 6008) = 0x7FF8000000000000;
    *(a1 + 6016) = 0x7FF8000000000000;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
    }

    v17 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v39 = v16;
      v40 = 2048;
      v41 = v12;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[CMAccessoryActivity] End impulse start %f, end, %f.\n", buf, 0x16u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
      }

      v34 = 134218240;
      v35 = v16;
      v36 = 2048;
      v37 = v12;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryActivity::feedImuSampleToStep(const AccessoryActivity::ImuData *const)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    *(a1 + 16) = v16;
    *(a1 + 24) = v12;
    v20 = *(a1 + 40);
    if (v20)
    {
      sub_19B667230(v20, a2);
    }

    v21 = *(a1 + 16);
    *a3 = *a1;
    *(a3 + 16) = v21;
  }

  else
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
    }

    v22 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[CMAccessoryActivity] headsetOrientation is not set. Do nothing.", buf, 2u);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
      }

      v26.i16[0] = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "AccessoryActivity::ActivityPacket CMAccessoryActivity::feedIMUData(const AccessoryActivity::ImuData *const)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    *a3 = 0;
    *(a3 + 8) = xmmword_19B7BCD10;
    *(a3 + 24) = 0x7FF8000000000000;
  }

  v25 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B70AED0()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

void sub_19B70AF00(_BYTE *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    if (*a1)
    {
      v5 = "open";
    }

    else
    {
      v5 = "closed";
    }

    *buf = 136315138;
    v18 = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Cover %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
    }

    if (*a1)
    {
      v7 = "open";
    }

    else
    {
      v7 = "closed";
    }

    v15 = 136315138;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass::onCoverState(const BOOL *, void *)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (*a1 == 1)
  {
    if (*(a2 + 56) && *(a2 + 48) == 1)
    {
      *(a2 + 28) = 0;
      (*(*a2 + 56))(a2);
      objc_msgSend_unregister_forNotification_(*(*(a2 + 40) + 16), v9, *(*(a2 + 40) + 8), 0);
      *(a2 + 64) = 1;
      v10 = *(a2 + 56);
      Current = CFAbsoluteTimeGetCurrent();
      CFRunLoopTimerSetNextFireDate(v10, Current + 3.0);
    }

    *(a2 + 72) = CFAbsoluteTimeGetCurrent();
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B70BAAC;
    block[3] = &unk_1E75327D8;
    block[4] = a2;
    dispatch_async(global_queue, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_19B70B1E0(uint64_t a1, const char *a2, __int128 *a3, uint64_t a4)
{
  sub_19B6780D4(a1, a2, a3);
  v7 = *a2;
  v8 = a3[1];
  v16 = *a3;
  v17 = v8;
  v9 = a3[3];
  v18 = a3[2];
  v19 = v9;
  if (!v7)
  {
    v10 = sub_19B420D84();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v11[2] = sub_19B70BA68;
    v11[3] = &unk_1E7534F88;
    v11[4] = a4;
    sub_19B420C9C(v10, v11);
  }
}

void *sub_19B70B29C(uint64_t a1)
{
  *a1 = &unk_1F0E31818;
  if (*(a1 + 88))
  {
    CFRunLoopTimerInvalidate(*(a1 + 56));
    CFRelease(*(a1 + 56));
    *(a1 + 56) = 0;
    if (qword_1EAFE3A80 != -1)
    {
      dispatch_once(&qword_1EAFE3A80, &unk_1F0E29DA0);
    }

    sub_19B426A14(qword_1EAFE3AA0, 0, *(a1 + 88));
    v2 = *(a1 + 88);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    *(a1 + 88) = 0;
  }

  if (*(a1 + 96))
  {
    v3 = sub_19B4498B4();
    sub_19B426A14(v3, 0, *(a1 + 96));
    v4 = *(a1 + 96);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(a1 + 96) = 0;
  }

  if (*(a1 + 112))
  {
    v5 = sub_19B677074();
    sub_19B426A14(v5, 4, *(a1 + 112));
    v6 = *(a1 + 112);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return sub_19B674784(a1);
}

void sub_19B70B46C(uint64_t a1)
{
  sub_19B70B29C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B70B4A4(uint64_t a1, int a2, double *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v4 = *a3;
    if (*a3 <= 0.0)
    {
      *(a1 + 28) = 0;
      (*(*a1 + 56))(a1, v4);
      objc_msgSend_unregister_forNotification_(*(*(a1 + 40) + 16), v6, *(*(a1 + 40) + 8), 0);
      *(a1 + 48) = 0;
    }

    else
    {
      if (qword_1EAFE3A80 != -1)
      {
        dispatch_once(&qword_1EAFE3A80, &unk_1F0E29DA0);
      }

      if (!*(a1 + 88))
      {
        context.version = 0;
        context.info = a1;
        memset(&context.retain, 0, 24);
        v5 = CFRunLoopTimerCreate(*MEMORY[0x1E695E480], 1.79769313e308, 1.79769313e308, 0, 0, sub_19B70B7B8, &context);
        *(a1 + 56) = v5;
        if (v5)
        {
          sub_19B420D84();
          CFRunLoopAddTimer(*qword_1ED71C908, *(a1 + 56), *MEMORY[0x1E695E8D0]);
        }

        else
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
          }

          v7 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Could not create timer", buf, 2u);
          }

          v8 = sub_19B420058();
          if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
            }

            v9 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLCompass::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v9);
            if (v9 != buf)
            {
              free(v9);
            }
          }
        }

        if (qword_1EAFE3A80 != -1)
        {
          dispatch_once(&qword_1EAFE3A80, &unk_1F0E29DA0);
        }

        *(a1 + 72) = (*(*qword_1EAFE3AA0 + 56))(qword_1EAFE3AA0);
      }

      *(a1 + 48) = 1;
      if ((*(a1 + 64) & 1) == 0)
      {
        sub_19B70B7F0(a1);
      }
    }

    v10 = *(a1 + 32);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B70B7B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    result = sub_19B70B7F0(a2);
  }

  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_19B70B7F0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 83) == 1)
  {
    v2 = *(a1 + 84);
  }

  else
  {
    v2 = *(a1 + 72) > 0.0 && CFAbsoluteTimeGetCurrent() - *(a1 + 72) < 432000.0;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
  }

  v3 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 83);
    *buf = 67109376;
    v12 = v2 & 1;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Cover attached,%d,forced,%d", buf, 0xEu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
    }

    v10 = *(a1 + 83);
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompass::startCompass()", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  objc_msgSend_register_forNotification_registrationInfo_(*(*(a1 + 40) + 16), v6, *(*(a1 + 40) + 8), 0, 0);
  result = (*(*a1 + 48))(a1, v2 & 1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B70BA68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 96) > 0.0)
  {
    v2[28] = 1;
  }

  return (*(*v2 + 72))(v2, a1 + 40);
}

uint64_t sub_19B70BAAC(uint64_t a1)
{
  if (qword_1EAFE3A80 != -1)
  {
    dispatch_once(&qword_1EAFE3A80, &unk_1F0E29DA0);
  }

  v2 = *(*qword_1EAFE3AA0 + 48);
  v3 = *(a1 + 32) + 72;

  return v2();
}

uint64_t sub_19B70C16C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_walking(*(a1 + 32), a2, a3))
  {
    v6 = *(a1 + 40);
    v7 = objc_msgSend_endDate(*(a1 + 32), v4, v5);
    started = objc_msgSend_startDate(*(a1 + 32), v8, v9);
    objc_msgSend_timeIntervalSinceDate_(v7, v11, started);
    v13 = v12;
    objc_msgSend_trueWalkInBout(v6, v14, v15);
    v19 = v13 + v18;

    return objc_msgSend_setTrueWalkInBout_(v6, v16, v17, v19);
  }

  else
  {
    v21 = objc_msgSend_running(*(a1 + 32), v4, v5);
    v24 = *(a1 + 40);
    if (v21)
    {
      v25 = objc_msgSend_endDate(*(a1 + 32), v22, v23);
      v28 = objc_msgSend_startDate(*(a1 + 32), v26, v27);
      objc_msgSend_timeIntervalSinceDate_(v25, v29, v28);
      v31 = v30;
      objc_msgSend_trueRunInBout(v24, v32, v33);
      v37 = v31 + v36;
      v38 = v24;
    }

    else
    {
      objc_msgSend_setTrueWalkInBout_(*(a1 + 40), v22, v23, 0.0);
      v38 = *(a1 + 40);
      v37 = 0.0;
    }

    return objc_msgSend_setTrueRunInBout_(v38, v34, v35, v37);
  }
}

uint64_t sub_19B70C26C(uint64_t a1, const char *a2, uint64_t a3)
{
  Object = objc_msgSend_lastObject(*(a1 + 32), a2, a3);
  result = objc_msgSend_isSameStateAs_(Object, v5, *(a1 + 40));
  if (result)
  {
    result = objc_msgSend_isTimeFromActivity_toActivity_withinLimitForAttribute_(CMMotionActivityFiltering, v7, Object, *(a1 + 40), *(a1 + 64));
    if (result)
    {
      v10 = objc_msgSend_endDate(*(a1 + 40), v8, v9);
      objc_msgSend_timeIntervalSinceReferenceDate(v10, v11, v12);
      objc_msgSend_setEndTime_(Object, v13, v14);
      (*(*(a1 + 56) + 16))();
      if ((objc_msgSend_walking(*(a1 + 40), v15, v16) & 1) == 0 && !objc_msgSend_running(*(a1 + 40), v17, v18))
      {
        return 1;
      }

      objc_msgSend_trueRunInBout(*(a1 + 48), v17, v18);
      v20 = v19;
      objc_msgSend_trueWalkInBout(*(a1 + 48), v21, v22);
      v24 = v23;
      objc_msgSend_trueRunInBout(*(a1 + 48), v25, v26);
      v28 = v20 / (v24 + v27);
      objc_msgSend_trueWalkInBout(*(a1 + 48), v29, v30);
      v32 = v31;
      objc_msgSend_trueRunInBout(*(a1 + 48), v33, v34);
      if (v28 <= dbl_19B7BCD50[v32 + v37 >= 3600.0])
      {
        v38 = objc_msgSend_motionActivity(Object, v35, v36);
        if (v28 >= 0.1)
        {
          *v38 = 8;
          v40 = 1;
          goto LABEL_11;
        }

        v40 = 0;
        v41 = 4;
      }

      else
      {
        v38 = objc_msgSend_motionActivity(Object, v35, v36);
        v40 = 0;
        v41 = 8;
      }

      *v38 = v41;
LABEL_11:
      objc_msgSend_setIsRunWalk_(Object, v39, v40);
      return 1;
    }
  }

  return result;
}

void *sub_19B70C470(void *a1)
{
  *a1 = &unk_1F0E32888;
  sub_19B70C518(a1, 0, 0);
  v2 = a1[5];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

void sub_19B70C4E0(void *a1)
{
  sub_19B70C470(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B70C518(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      v7 = sub_19B42CAAC();
      sub_19B42C428(v7);
    }

    if (a3)
    {
      v5 = sub_19B44FEF4;
      v6 = a1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    sub_19B42D100(v4, v5, v6);
  }
}

void sub_19B70C69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

void sub_19B70C7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B70C7F8(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    if (objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage"))
    {
      v5 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v4, @"CMErrorMessage");
      v6 = MEMORY[0x1E696ABC0];
      v9 = objc_msgSend_integerValue(v5, v7, v8);
      v11 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v10, @"CMErrorDomain", v9, 0);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      v12 = qword_1EAFE2A70;
      if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v11;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Failed with error %{public}@", buf, 0xCu);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A68 == -1)
        {
LABEL_20:
          v16 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMContextConfigurationManager connect]_block_invoke", "CoreLocation: %s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }

          goto LABEL_22;
        }

LABEL_27:
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v14 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Failed with unknown internal error.", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B70CB00(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v6 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      v15 = objc_msgSend_UTF8String(v5, v7, v8);
      v16 = 1026;
      v17 = getpid();
      v18 = 2050;
      v19 = Weak;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "Client connection interrupt, %{public}s, %{public}d, %{public}p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      objc_msgSend_UTF8String(v5, v10, v11);
      getpid();
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMContextConfigurationManager connect]_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_19B70D098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B70D0C4(uint64_t a1, CLConnectionMessage **a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!*a2 || (Dictionary = CLConnectionMessage::getDictionary(*a2)) == 0)
  {
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v18 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "Unable to parse response.", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMContextConfigurationManager writeContextConfiguration:withHandler:]_block_invoke", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v22 = *(a1 + 32);
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v20, @"CMErrorDomain", 103, 0);
    v17 = *(v22 + 16);
    goto LABEL_30;
  }

  v5 = Dictionary;
  v6 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v4, @"CMErrorMessage");
  if (v6)
  {
    v8 = v6;
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v9 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v8;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Error in writeContextConfiguration: %@", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMContextConfigurationManager writeContextConfiguration:withHandler:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = objc_msgSend_intValue(v8, v11, v12);
    objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"CMErrorDomain", v15, 0);
LABEL_17:
    v17 = *(*(a1 + 32) + 16);
LABEL_30:
    result = v17();
    v24 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!objc_msgSend_objectForKeyedSubscript_(v5, v7, @"CMReturnCode"))
  {
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v27 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_msgSend_description(v5, v28, v29);
      *buf = 136446210;
      v42 = objc_msgSend_UTF8String(v30, v31, v32);
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "Unable to parse message (%{public}s) for query response", buf, 0xCu);
    }

    v33 = sub_19B420058();
    if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      v37 = objc_msgSend_description(v5, v35, v36);
      objc_msgSend_UTF8String(v37, v38, v39);
      v40 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMContextConfigurationManager writeContextConfiguration:withHandler:]_block_invoke", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v34, @"CMErrorDomain", 103, 0);
    goto LABEL_17;
  }

  v25 = *(*(a1 + 32) + 16);
  v26 = *MEMORY[0x1E69E9840];

  return v25();
}

os_log_t sub_19B70D680()
{
  result = os_log_create("com.apple.locationd.Motion", "ContextConfiguration");
  qword_1EAFE2A70 = result;
  return result;
}

void sub_19B70E0EC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        sub_19B7127D0(*(a1 + 108));
        v9 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EUserInteractedWithDevice]", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B70E368(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        sub_19B7127D0(*(a1 + 108));
        v9 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::ESrcMoved]", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B70E5E4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        sub_19B7127D0(*(a1 + 108));
        v9 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EAuxHasBeenStatic]", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B70E860(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        sub_19B7127D0(*(a1 + 108));
        v9 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EStandToSit]", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B70EADC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        sub_19B7127D0(*(a1 + 108));
        v9 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EJBLBackBelowLimit]", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B70ED58(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        sub_19B7127D0(*(a1 + 108));
        v9 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EDetectedFace]", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B70EFD4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 24);
    if ((*(v3 + 16082) & 1) == 0 && (*(a1 + 89) != 1 || (*(a1 + 112) | 2) != 3))
    {
      sub_19B69141C(v3);
      *(a1 + 108) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v5 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 112) - 1;
        if (v6 > 3)
        {
          v7 = "kUnknown";
        }

        else
        {
          v7 = off_1E7535660[v6];
        }

        *buf = 136315138;
        v22 = *&v7;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking disabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v9 = *(a1 + 112) - 1;
        if (v9 <= 3)
        {
          v10 = off_1E7535660[v9];
        }

        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EWalking]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      if (*(a1 + 56) && *(a1 + 112) == 3)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v12 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v13 = (*a2 - *(a1 + 56)) * 0.000001;
          *buf = 134217984;
          v22 = v13;
          _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between stand and disable: %f seconds", buf, 0xCu);
        }

        v14 = sub_19B420058();
        if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v20 = (*a2 - *(a1 + 56)) * 0.000001;
          v15 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EWalking]", "CoreLocation: %s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }

        v16 = (*a2 - *(a1 + 56)) * 0.000001;
        v18 = *(a1 + 264);
        v17 = *(a1 + 272);
        if (v17 <= v16)
        {
          v17 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        if (v18 >= v16)
        {
          v18 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        *(a1 + 264) = v18;
        *(a1 + 272) = v17;
        *(a1 + 280) = v16 + *(a1 + 280);
        ++*(a1 + 288);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_19B70F41C(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 24);
    if ((*(v3 + 16082) & 1) == 0 && (*(a1 + 89) != 1 || (*(a1 + 112) | 2) != 3))
    {
      sub_19B69141C(v3);
      *(a1 + 108) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v5 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 112) - 1;
        if (v6 > 3)
        {
          v7 = "kUnknown";
        }

        else
        {
          v7 = off_1E7535660[v6];
        }

        *buf = 136315138;
        v22 = *&v7;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking disabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v9 = *(a1 + 112) - 1;
        if (v9 <= 3)
        {
          v10 = off_1E7535660[v9];
        }

        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EJBLExceededLimit]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      if (*(a1 + 56) && *(a1 + 112) == 3)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v12 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v13 = (*a2 - *(a1 + 56)) * 0.000001;
          *buf = 134217984;
          v22 = v13;
          _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between stand and disable: %f seconds", buf, 0xCu);
        }

        v14 = sub_19B420058();
        if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v20 = (*a2 - *(a1 + 56)) * 0.000001;
          v15 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EJBLExceededLimit]", "CoreLocation: %s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }

        v16 = (*a2 - *(a1 + 56)) * 0.000001;
        v18 = *(a1 + 264);
        v17 = *(a1 + 272);
        if (v17 <= v16)
        {
          v17 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        if (v18 >= v16)
        {
          v18 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        *(a1 + 264) = v18;
        *(a1 + 272) = v17;
        *(a1 + 280) = v16 + *(a1 + 280);
        ++*(a1 + 288);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_19B70F864(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 24);
    if ((*(v3 + 16082) & 1) == 0 && (*(a1 + 89) != 1 || (*(a1 + 112) | 2) != 3))
    {
      sub_19B69141C(v3);
      *(a1 + 108) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v5 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 112) - 1;
        if (v6 > 3)
        {
          v7 = "kUnknown";
        }

        else
        {
          v7 = off_1E7535660[v6];
        }

        *buf = 136315138;
        v22 = *&v7;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking disabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v9 = *(a1 + 112) - 1;
        if (v9 <= 3)
        {
          v10 = off_1E7535660[v9];
        }

        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EInVehicle]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      if (*(a1 + 56) && *(a1 + 112) == 3)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v12 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v13 = (*a2 - *(a1 + 56)) * 0.000001;
          *buf = 134217984;
          v22 = v13;
          _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between stand and disable: %f seconds", buf, 0xCu);
        }

        v14 = sub_19B420058();
        if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v20 = (*a2 - *(a1 + 56)) * 0.000001;
          v15 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EInVehicle]", "CoreLocation: %s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }

        v16 = (*a2 - *(a1 + 56)) * 0.000001;
        v18 = *(a1 + 264);
        v17 = *(a1 + 272);
        if (v17 <= v16)
        {
          v17 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        if (v18 >= v16)
        {
          v18 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        *(a1 + 264) = v18;
        *(a1 + 272) = v17;
        *(a1 + 280) = v16 + *(a1 + 280);
        ++*(a1 + 288);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B70FCAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *result = &unk_1F0E37F50;
  *(result + 8) = 9;
  *(result + 16) = 512;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 90) = 1;
  *(result + 96) = a5;
  *(result + 104) = a6;
  *(result + 108) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = xmmword_19B7B7510;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 168) = xmmword_19B7B7510;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 200) = xmmword_19B7B7510;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 232) = xmmword_19B7B7510;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0x7FEFFFFFFFFFFFFFLL;
  *(result + 272) = xmmword_19B7BCD90;
  *(result + 288) = 0;
  *(result + 296) = 0x7FEFFFFFFFFFFFFFLL;
  *(result + 304) = xmmword_19B7BCD90;
  *(result + 320) = 0;
  *(result + 328) = 0x7FEFFFFFFFFFFFFFLL;
  *(result + 336) = xmmword_19B7BCD90;
  *(result + 352) = 0;
  *(result + 360) = 0x7FF8000000000000;
  *(result + 368) = 0x404E000000000000;
  *(result + 376) = xmmword_19B7BCDA0;
  if (a5)
  {
    if (a6)
    {
      *(a5 + 10912) = sub_19B70FD9C;
      *(a5 + 10920) = result;
    }
  }

  return result;
}

void sub_19B70FD9C(int a1, unint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      goto LABEL_55;
    }

    *(a3 + 73) = 0;
    *(a3 + 56) = a2;
    *(a3 + 64) = 0;
    sub_19B69AAAC(*(a3 + 24), a2);
    v6 = (a3 + 120);
    v5 = *(a3 + 120);
    ++*(a3 + 132);
    if (!v5)
    {
      goto LABEL_55;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v8 = (a2 - *v6) * 0.000001;
      *buf = 134217984;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between sitting and standing: %f seconds", buf, 0xCu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v30 = (a2 - *v6) * 0.000001;
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::sitStandDetectorCallback(TransitionState, uint64_t)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v11 = 256;
    v12 = 248;
    v13 = 240;
    v14 = 232;
    goto LABEL_50;
  }

  v15 = *(a3 + 24);
  if (*(v15 + 16082))
  {
    if (*(a3 + 112) != 2 || *(a3 + 88) == 1)
    {
      *(a3 + 108) = 4;
      *(a3 + 64) = a2;
      *buf = a2;
      sub_19B79A0E8(a3, 7, buf);
    }
  }

  else
  {
    if (*(a3 + 73) == 1)
    {
      sub_19B690B4C(v15, 1);
    }

    v17 = *(a3 + 56);
    if (v17)
    {
      v18 = a2 - v17;
      if (a2 > v17 && v18 <= 0x3D08FF)
      {
        *(a3 + 80) = a2;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v19 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          *&buf[4] = (v18 * 0.000001);
          v33 = 2050;
          v34 = 0x4010000000000000;
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Back to back sit-stand transitions. dt, %{public}.3f, windowSize, %{public}.3f", buf, 0x16u);
        }

        v20 = sub_19B420058();
        if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v16 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::sitStandDetectorCallback(TransitionState, uint64_t)", "CoreLocation: %s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }
    }
  }

  v6 = (a3 + 56);
  v21 = *(a3 + 56);
  ++*(a3 + 128);
  *(a3 + 120) = a2;
  if (v21)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v22 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v23 = (a2 - *v6) * 0.000001;
      *buf = 134217984;
      *&buf[4] = v23;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between standing and sitting: %f seconds", buf, 0xCu);
    }

    v24 = sub_19B420058();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v31 = (a2 - *v6) * 0.000001;
      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::sitStandDetectorCallback(TransitionState, uint64_t)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    v11 = 224;
    v12 = 216;
    v13 = 208;
    v14 = 200;
LABEL_50:
    v26 = (a2 - *v6) * 0.000001;
    v27 = *(a3 + v13);
    if (v27 <= v26)
    {
      v27 = (a2 - *v6) * 0.000001;
    }

    *(a3 + v13) = v27;
    v28 = *(a3 + v14);
    if (v28 >= v26)
    {
      v28 = v26;
    }

    *(a3 + v14) = v28;
    *(a3 + v12) = v26 + *(a3 + v12);
    ++*(a3 + v11);
  }

LABEL_55:
  v29 = *MEMORY[0x1E69E9840];
}

void sub_19B710554(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 112) != 2 || *(a1 + 88) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received user interacted with device event. timestampUs, %llu", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedUserInteractedWithDeviceEvent(uint64_t)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    *(a1 + 108) = 1;
    *buf = a2;
    sub_19B79A0E8(a1, 2, buf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B710758(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 112) != 2 || *(a1 + 88) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received srcMoved event. timestampUs, %llu", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedSrcMovedEvent(uint64_t)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    *(a1 + 108) = 2;
    *buf = a2;
    sub_19B79A0E8(a1, 3, buf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B71095C(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 112) != 2 || *(a1 + 88) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received auxHasBeenStatic event. timestampUs, %llu", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedAuxHasBeenStaticEvent(uint64_t)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    *(a1 + 108) = 3;
    *buf = a2;
    sub_19B79A0E8(a1, 4, buf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B710B60(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 112) != 2 || *(a1 + 88) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received DetectedFace event. timestampUs, %llu", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedDetectedFaceEvent(uint64_t)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    *(a1 + 108) = 6;
    *buf = a2;
    sub_19B79A0E8(a1, 10, buf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B710D64(uint64_t a1, int a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(*(a1 + 24) + 16082) & 1) == 0)
    {
      *(a1 + 112) = 2;
      *buf = a3;
      sub_19B79A0E8(a1, 5, buf);
      v13 = a3;
      v14 = *(a1 + 360);
      if (v14 <= a3)
      {
        if (v13 - v14 > 18000.0)
        {
          *(a1 + 360) = v13;
          v14 = a3;
        }

        v15 = *(a1 + 368);
        v16 = v14 + v15;
        if (v16 >= v13)
        {
          v21 = *(a1 + 376) + 1;
        }

        else
        {
          v17 = *(a1 + 376);
          v18 = *(a1 + 384);
          v19 = *(a1 + 388);
          do
          {
            v20 = v16;
            if (v17 < v18)
            {
              v18 = v17;
            }

            if (v17 > v19)
            {
              v19 = v17;
            }

            v16 = v15 + v16;
            v17 = 0;
          }

          while (v16 < v13);
          *(a1 + 384) = v18;
          *(a1 + 388) = v19;
          v21 = 1;
          *(a1 + 360) = v20;
        }

        *(a1 + 376) = v21;
        ++*(a1 + 380);
      }

      goto LABEL_65;
    }

    if (*(a1 + 88) == 1)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v5 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] JBL back over limit while waiting to re-enable.", buf, 2u);
      }

      v6 = sub_19B420058();
      if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
      {
        goto LABEL_65;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 == -1)
      {
LABEL_60:
        v24 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedBTJitterBufferLatencyEvent(BOOL, uint64_t)", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }

LABEL_65:
        *(a1 + 88) = 0;
        goto LABEL_66;
      }
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v22 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] JBL back over limit received while already not tracking.", buf, 2u);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
      {
        goto LABEL_65;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 == -1)
      {
        goto LABEL_60;
      }
    }

    dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    goto LABEL_60;
  }

  if (*(*(a1 + 24) + 16082) && *(a1 + 112) == 2)
  {
    if (*(a1 + 90) != 1)
    {
      *(a1 + 108) = 5;
      *buf = a3;
      sub_19B79A0E8(a1, 9, buf);
      goto LABEL_66;
    }

    *(a1 + 88) = 1;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] JBL went under limit, transition to waiting to re-enable.", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

LABEL_38:
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedBTJitterBufferLatencyEvent(BOOL, uint64_t)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v9 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v10 = *(*(a1 + 24) + 16082) ^ 1;
      *buf = 67109376;
      *&buf[4] = 0;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received JBL event but taking no action. exceededThreshold,%d isTrackingEnabled,%d", buf, 0xEu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v26 = *(*(a1 + 24) + 16082) ^ 1;
      goto LABEL_38;
    }
  }

LABEL_66:
  v25 = *MEMORY[0x1E69E9840];
}